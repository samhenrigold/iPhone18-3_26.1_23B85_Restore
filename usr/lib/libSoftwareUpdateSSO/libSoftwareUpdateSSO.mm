id _MAClientLog(void *a1)
{
  v1 = a1;
  if (_MAClientLog_onceToken != -1)
  {
    _MAClientLog_cold_1();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = [_MAClientLog_clientLoggers objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [_MAClientLog_clientLoggers objectForKey:@"DEFAULT"];
  }

  v6 = v5;

  return v6;
}

NSObject *copyPersonID(void *a1, void *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = a1;
  if (MSUSSOIsAvailable(@"1205"))
  {
    if (v3)
    {
      v4 = [v3 valueForKey:@"stealthMode"];
      v5 = v4 == *MEMORY[0x29EDB8F00];
    }

    else
    {
      v5 = 0;
    }

    v8 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "copyPersonID";
      v26 = 1024;
      v27 = v5;
      _os_log_impl(&dword_298222000, v8, OS_LOG_TYPE_DEFAULT, "%s: Attempting to retrieve personID with interactivity level %d", buf, 0x12u);
    }

    v9 = @"0";
    if (v5)
    {
      v9 = @"1";
    }

    v22[0] = @"applicationIdentifier";
    v22[1] = @"environmentIdentifier";
    v23[0] = @"1205";
    v23[1] = @"APPLECONNECT.APPLE.COM";
    v22[2] = @"interactivity";
    v23[2] = v9;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v11 = [[SoftwareUpdateSSO alloc] initWithOptions:v10];
    v12 = [(SoftwareUpdateSSO *)v11 ssoIsSupported];
    v13 = _MAClientLog(@"SSO");
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_298222000, v14, OS_LOG_TYPE_DEFAULT, "SoftwareUpdateSSO supported. Attempting to read userInfo", buf, 2u);
      }

      v15 = [(SoftwareUpdateSSO *)v11 copyUserInfo];
      v14 = v15;
      if (v15)
      {
        v16 = [v15 objectForKeyedSubscript:@"personId"];
        if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = [v16 copy];
          if (v17)
          {
LABEL_35:

            goto LABEL_36;
          }
        }

        else
        {
          v18 = _MAClientLog(@"SSO");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v14;
            _os_log_impl(&dword_298222000, v18, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO was able to read the userinfo(%@) but got unexpected data type for personID", buf, 0xCu);
          }
        }

        v19 = _MAClientLog(@"SSO");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_298222000, v19, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO was able to read userInfo but unable to determine personID", buf, 2u);
        }

        if (a2)
        {
          [MEMORY[0x29EDB9FA0] errorWithDomain:@"SoftwareUpdateSSOError" code:2 userInfo:0];
          *a2 = v17 = 0;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_35;
      }

      v20 = _MAClientLog(@"SSO");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_298222000, v20, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO was unable to read the userInfo", buf, 2u);
      }

      if (a2)
      {
        [MEMORY[0x29EDB9FA0] errorWithDomain:@"SoftwareUpdateSSOError" code:1 userInfo:0];
        *a2 = v17 = 0;
LABEL_36:

        [(SoftwareUpdateSSO *)v11 invalidate];
        v6 = v17;

        v7 = v6;
        goto LABEL_37;
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_298222000, v14, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO not supported in this environment", buf, 2u);
    }

    v17 = 0;
    goto LABEL_36;
  }

  v6 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "copyPersonID";
    _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_ERROR, "%s: Not supported in this environment\n", buf, 0xCu);
  }

  v7 = 0;
LABEL_37:

  return v7;
}

uint64_t MSUSSOIsAvailable(void *a1)
{
  v13[3] = *MEMORY[0x29EDCA608];
  v12[0] = @"applicationIdentifier";
  v12[1] = @"environmentIdentifier";
  v13[0] = a1;
  v13[1] = @"APPLECONNECT.APPLE.COM";
  v12[2] = @"interactivity";
  v13[2] = @"0";
  v1 = MEMORY[0x29EDB8DC0];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v13 forKeys:v12 count:3];
  v4 = [SoftwareUpdateSSO alloc];

  v5 = [(SoftwareUpdateSSO *)v4 initWithOptions:v3];
  v6 = [(SoftwareUpdateSSO *)v5 ssoIsSupported];
  [(SoftwareUpdateSSO *)v5 invalidate];
  v7 = _MAClientLog(@"SSO");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_298222000, v7, OS_LOG_TYPE_DEFAULT, "MSUSSOIsAvailable: %@", &v10, 0xCu);
  }

  return v6;
}

id copyPersonalizationSSOToken(void *a1, void *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1;
  if (MSUSSOIsAvailable(@"1205"))
  {
    if (v3)
    {
      v4 = [v3 valueForKey:@"stealthMode"];
      v5 = v4 == *MEMORY[0x29EDB8F00];
    }

    else
    {
      v5 = 0;
    }

    v8 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v20) = v5;
      _os_log_impl(&dword_298222000, v8, OS_LOG_TYPE_DEFAULT, "Calling copyDawTokenAndUsername with interactivity level %d", buf, 8u);
    }

    v16 = 0;
    v9 = copyDawTokenAndUsername(@"1205", v5, &v16);
    v10 = v16;
    v6 = v10;
    if (v9 && v10)
    {
      v11 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
      v12 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
      v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@/%@", v6, @"1205"];
      [v11 setLength:{objc_msgSend(v13, "length") + 1}];
      [v13 getCString:objc_msgSend(v11 maxLength:"mutableBytes") encoding:{objc_msgSend(v11, "length"), 4}];
      [v12 setLength:{objc_msgSend(v9, "length") + 1}];
      [v9 getCString:objc_msgSend(v12 maxLength:"mutableBytes") encoding:{objc_msgSend(v12, "length"), 4}];
      [v11 appendBytes:objc_msgSend(v12 length:{"mutableBytes"), objc_msgSend(v12, "length") - 1}];
      v17 = @"ssodata";
      v18 = v11;
      v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v14 = _MAClientLog(@"SSO");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v9;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_298222000, v14, OS_LOG_TYPE_DEFAULT, "copyDawTokenAndUsername failed to return with a token (%@) or a username (%@)", buf, 0x16u);
      }

      if (a2)
      {
        [MEMORY[0x29EDB9FA0] errorWithDomain:@"SoftwareUpdateSSOError" code:1 userInfo:0];
        *a2 = v7 = 0;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v6 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "copyPersonalizationSSOToken";
      _os_log_impl(&dword_298222000, v6, OS_LOG_TYPE_ERROR, "%s: Not supported in this environment", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

NSObject *copyDawTokenAndUsername(void *a1, int a2, void *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = v5;
  v7 = @"177666";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = MSUSSOIsAvailable(v8);
  v10 = _MAClientLog(@"SSO");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_298222000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to get token", buf, 2u);
    }

    if (!v6)
    {
      v22 = 0;
      goto LABEL_30;
    }

    v12 = @"0";
    if (a2 == 1)
    {
      v12 = @"1";
    }

    if (a2 == 2)
    {
      v13 = @"2";
    }

    else
    {
      v13 = v12;
    }

    v14 = _MAClientLog(@"SSO");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_298222000, v14, OS_LOG_TYPE_DEFAULT, "Setting interactivity level to %@", buf, 0xCu);
    }

    v25[0] = @"applicationIdentifier";
    v25[1] = @"environmentIdentifier";
    v26[0] = v6;
    v26[1] = @"APPLECONNECT.APPLE.COM";
    v25[2] = @"interactivity";
    v26[2] = v13;
    v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v16 = [[SoftwareUpdateSSO alloc] initWithOptions:v15];
    v17 = [(SoftwareUpdateSSO *)v16 ssoIsSupported];
    v18 = _MAClientLog(@"SSO");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_298222000, v18, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO supported. Attempting to read token", buf, 2u);
      }

      v20 = [(SoftwareUpdateSSO *)v16 getDawToken];
      v21 = [(SoftwareUpdateSSO *)v16 userName];
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_298222000, v18, OS_LOG_TYPE_ERROR, "SoftwareUpdateSSO not supported in this environment", buf, 2u);
      }

      v21 = 0;
      v20 = 0;
    }

    [(SoftwareUpdateSSO *)v16 invalidate];
    if (a3 && v21)
    {
      v23 = v21;
      *a3 = v21;
    }

    v10 = v20;

    v22 = v10;
  }

  else
  {
    if (v11)
    {
      *buf = 136315138;
      v28 = "copyDawTokenAndUsername";
      _os_log_impl(&dword_298222000, v10, OS_LOG_TYPE_DEFAULT, "%s: Not supported in this environment", buf, 0xCu);
    }

    v22 = 0;
  }

LABEL_30:

  return v22;
}