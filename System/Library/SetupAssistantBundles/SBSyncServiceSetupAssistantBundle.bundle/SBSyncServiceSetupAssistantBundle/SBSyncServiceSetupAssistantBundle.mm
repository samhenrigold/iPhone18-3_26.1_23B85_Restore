void sub_F14(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyAppleID];
  [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyAuthToken];
  v3 = [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyRealmUserID];
  v4 = [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyProfileID];
  [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyStatus];
  [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyHandles];
  if ([v3 length])
  {
    v4 = v3;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v17 = v2;
      v18 = 2048;
      v19 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Missing either the appleID [%p] or profileID[%p]", buf, 0x16u);
    }
  }

  else
  {
    v7 = IDSParseAuthDictionary();
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = [v7 objectForKey:IDSAuthenticationDictionaryKeyAppleID];
    if (v9)
    {
      CFDictionarySetValue(v8, kIDSServiceDefaultsAppleIDKey, v9);
    }

    CFDictionarySetValue(v8, kIDSServiceDefaultsAuthorizationIDKey, v4);
    v10 = [objc_msgSend(v7 objectForKey:{IDSAuthenticationDictionaryKeySelfHandle), "objectForKey:", @"uri"}];
    v11 = [v10 length];
    if (v10 && v11)
    {
      CFDictionarySetValue(v8, kIDSServiceDefaultsSelfHandleKey, v10);
    }

    v12 = objc_alloc_init(NSMutableArray);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_122C;
    v15[3] = &unk_4120;
    v15[4] = v12;
    v13 = [objc_msgSend(v7 objectForKey:{IDSAuthenticationDictionaryKeyHandles), "__imArrayByApplyingBlock:", v15}];
    if ([v12 count])
    {
      v14 = [v12 copy];
      if (v14)
      {
        CFDictionarySetValue(v8, kIDSServiceDefaultsInvisibleAliasesKey, v14);
      }
    }

    if ([v13 count])
    {
      if (v13)
      {
        CFDictionarySetValue(v8, kIDSServiceDefaultsVettedAliasesKey, v13);
      }
    }

    IDSiCloudSignIn();
  }
}

id sub_122C(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 objectForKey:{@"uri", "_stripFZIDPrefix"}];
  v5 = [objc_msgSend(a2 objectForKey:{@"status", "intValue"}];
  v6 = [a2 objectForKey:@"is-user-visible"];
  if (v6 && ([v6 BOOLValue] & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
  }

  if (v5 == 5051)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_12BC(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "... dispatching completion", buf, 2u);
  }

  if (*(*(a1 + 32) + 8))
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "... not dispatching completion, cancelled", v4, 2u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}