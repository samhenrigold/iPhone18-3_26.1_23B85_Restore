void sub_1A7B671EC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/usr/local/bin/netdiagnose stop packetcapture"];
  [v2 UTF8String];
  IMPerformSystem();
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 136315138;
    v15 = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "%s: netdiagnose stop packetcapture", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: netdiagnose stop packetcapture", v5, v6, v7, v8, v9, *(a1 + 32));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: netdiagnose stop packetcapture", v10, v11, v12, v13, *(a1 + 32));
      }
    }
  }
}

void sub_1A7B67358(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 136315138;
    v16 = v5;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "%s: sysdiagnose finished", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"IDSNetworkingLogDump", @"IDS", @"%s: sysdiagnose finished", v6, v7, v8, v9, v10, *(a1 + 32));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSNetworkingLogDump", @"%s: sysdiagnose finished", v11, v12, v13, v14, *(a1 + 32));
      }
    }
  }
}

void sub_1A7B677AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connectionDidClose:*(a1 + 32)];
  }
}

void sub_1A7B68014(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 32) didReceiveData:*(a1 + 40)];
  }
}

void sub_1A7B680F0(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 40))
  {
    handler[7] = v1;
    handler[8] = v2;
    v5 = dispatch_source_create(MEMORY[0x1E69E96F8], *(v3 + 56), 0, *(v3 + 32));
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7B681B8;
    handler[3] = &unk_1E77E0818;
    handler[4] = v8;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(*(*(a1 + 32) + 40));
  }
}

void sub_1A7B68A1C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7B685A8);
  }

  _Unwind_Resume(a1);
}

void sub_1A7B68B34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 48))
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9730], *(v2 + 56), 0, *(v2 + 32));
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7B68CE4;
    handler[3] = &unk_1E77E0818;
    handler[4] = v6;
    dispatch_source_set_event_handler(v7, handler);
    v2 = *(a1 + 32);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Resuming write source", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    *(*(a1 + 32) + 88) = 1;
    dispatch_resume(*(*(a1 + 32) + 48));
  }
}

void *sub_1A7B68DD4(void *a1)
{
  [*(a1[4] + 24) addObject:a1[5]];
  result = a1[4];
  if (!*(result + 6) || (*(result + 88) & 1) == 0)
  {
    result = [result _setupWriteSource];
  }

  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

uint64_t sub_1A7B691B4(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[IDSServerBag sharedInstance];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ids-use-%@-portion", v1];
  v4 = [v2 objectForKey:v3 ofClass:objc_opt_class()];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = arc4random();
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"use%@", v1];
  v9 = IMGetDomainBoolForKeyWithDefaultValue();

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    *buf = 138413058;
    v24 = v1;
    if (v9)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v26 = v12;
    v25 = 2112;
    if (v7 <= (v6 * 4294967300.0))
    {
      v11 = @"YES";
    }

    v27 = 2112;
    v28 = v11;
    v29 = 2048;
    v30 = v6;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "IDS Ramped Feature use%@: %@ (coin flip: %@, chance: %f)", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IDS Ramped Feature use%@: %@ (coin flip: %@, chance: %f)", v13, v14, v15, v16, v17, v1);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDS Ramped Feature use%@: %@ (coin flip: %@, chance: %f)", v18, v19, v20, v21, v1);
      }
    }
  }

  return v9;
}

uint64_t sub_1A7B69448(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = a1;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDS Ramped Feature use%s: os feature flag enabled; checking ramp", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDS Ramped Feature use%s: os feature flag enabled; checking ramp", v4, v5, v6, v7, v8, a1);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDS Ramped Feature use%s: os feature flag enabled; checking ramp", v9, v10, v11, v12, a1);
        }
      }
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
    v14 = sub_1A7B691B4(v13);
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = a1;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "IDS Ramped Feature use%s: os feature flag disabled; not checking ramp", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDS Ramped Feature use%s: os feature flag disabled; not checking ramp", v16, v17, v18, v19, v20, a1);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDS Ramped Feature use%s: os feature flag disabled; not checking ramp", v21, v22, v23, v24, a1);
        }
      }
    }

    return 0;
  }

  return v14;
}

uint64_t sub_1A7B69680(void *a1, uint64_t a2, void *a3, void *a4, __CFString *a5, char a6)
{
  v115 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    if (a2)
    {
      v15 = @"YES";
    }

    *buf = 138412546;
    v110 = v11;
    v111 = 2112;
    v112 = v15;
    _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: default value: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v21 = a2 ? @"YES" : @"NO";
    v108 = v21;
    _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: default value: %@", v16, v17, v18, v19, v20, v11);
    if (_IDSShouldLog(0))
    {
      v108 = v21;
      _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: default value: %@", v22, v23, v24, v25, v11);
    }
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"use%s", a5, v108];
  v27 = MEMORY[0x1AC562F80](@"com.apple.ids", v26);
  if (v27)
  {
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v27 BOOLValue];
      v30 = @"NO";
      *buf = 138412802;
      v110 = v11;
      v111 = 2112;
      if (v29)
      {
        v30 = @"YES";
      }

      v112 = v26;
      v113 = 2112;
      v114 = v30;
      _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: from defaults (ignoring feature flag, forced experiments, and server experiments): %@=%@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        [v27 BOOLValue];
        _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: from defaults (ignoring feature flag, forced experiments, and server experiments): %@=%@", v31, v32, v33, v34, v35, v11);
        if (_IDSShouldLog(0))
        {
          [v27 BOOLValue];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: from defaults (ignoring feature flag, forced experiments, and server experiments): %@=%@", v36, v37, v38, v39, v11);
        }
      }
    }

    a2 = [v27 BOOLValue];
  }

  else if (a6)
  {
    if (v13)
    {
      v40 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v110 = v11;
        _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: has forcedExperiments.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: has forcedExperiments.", v41, v42, v43, v44, v45, v11);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: has forcedExperiments.", v46, v47, v48, v49, v11);
          }
        }
      }

      v50 = [v13 objectForKey:v11];
      v51 = v50;
      if (v50)
      {
        a2 = [v50 BOOLValue];
        v52 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = @"NO";
          *buf = 138412802;
          v110 = v11;
          v111 = 2112;
          if (a2)
          {
            v53 = @"YES";
          }

          v112 = v11;
          v113 = 2112;
          v114 = v53;
          _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: using forced value: %@=%@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: using forced value: %@=%@", v54, v55, v56, v57, v58, v11);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: using forced value: %@=%@", v59, v60, v61, v62, v11);
            }
          }
        }
      }

      else
      {
        v85 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = @"NO";
          *buf = 138412802;
          v110 = v11;
          v111 = 2112;
          if (a2)
          {
            v86 = @"YES";
          }

          v112 = v11;
          v113 = 2112;
          v114 = v86;
          _os_log_impl(&dword_1A7AD9000, v85, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: using default value %@=%@ (ignoring value from server)", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: using default value %@=%@ (ignoring value from server)", v87, v88, v89, v90, v91, v11);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: using default value %@=%@ (ignoring value from server)", v92, v93, v94, v95, v11);
            }
          }
        }
      }
    }

    else
    {
      v73 = [v12 objectForKey:v11];
      v51 = v73;
      if (v73)
      {
        a2 = [v73 BOOLValue];
        v74 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = @"NO";
          *buf = 138412802;
          v110 = v11;
          v111 = 2112;
          if (a2)
          {
            v75 = @"YES";
          }

          v112 = v11;
          v113 = 2112;
          v114 = v75;
          _os_log_impl(&dword_1A7AD9000, v74, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: using session experiment value from server: %@=%@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: using session experiment value from server: %@=%@", v76, v77, v78, v79, v80, v11);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: using session experiment value from server: %@=%@", v81, v82, v83, v84, v11);
            }
          }
        }
      }

      else
      {
        v96 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = @"NO";
          *buf = 138412802;
          v110 = v11;
          v111 = 2112;
          if (a2)
          {
            v97 = @"YES";
          }

          v112 = v11;
          v113 = 2112;
          v114 = v97;
          _os_log_impl(&dword_1A7AD9000, v96, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: using default value %@=%@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: using default value %@=%@", v98, v99, v100, v101, v102, v11);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: using default value %@=%@", v103, v104, v105, v106, v11);
            }
          }
        }
      }
    }
  }

  else
  {
    v63 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v110 = v11;
      v111 = 2080;
      v112 = a5;
      v113 = 2112;
      v114 = v11;
      _os_log_impl(&dword_1A7AD9000, v63, OS_LOG_TYPE_DEFAULT, "IDSGLShouldExperimentBeEnabled[%@]: feature flag %s disabled, so %@=NO", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDSGLShouldExperimentBeEnabled[%@]: feature flag %s disabled, so %@=NO", v64, v65, v66, v67, v68, v11);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSGLShouldExperimentBeEnabled[%@]: feature flag %s disabled, so %@=NO", v69, v70, v71, v72, v11);
        }
      }
    }

    a2 = 0;
  }

  return a2;
}

uint64_t sub_1A7B6A940(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2[2] < 4)
  {
    return -1;
  }

  *a3 = 0;
  v6 = **a2;
  if (IDSSimpleUInt16List_HasItem(*(a1 + 32) + 1288, v6))
  {
    *a3 = 1;
    return (bswap32(*(*a2 + 2)) >> 16) + 4;
  }

  else if ((v6 & 0xC0) != 0)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = __rev16(v6);
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "unknown packet, %04x", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v13 = __rev16(v6);
      _IDSLogTransport(@"GL", @"IDS", @"unknown packet, %04x", v8, v9, v10, v11, v12, v13);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"unknown packet, %04x", v14, v15, v16, v17, v13);
      }
    }

    return -2;
  }

  else
  {
    if (a2[2] < 20)
    {
      return -1;
    }

    return (bswap32(*(*a2 + 2)) >> 16) + 20;
  }
}

double sub_1A7B6C638(uint64_t a1, uint64_t a2, const void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v46 = a2;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "prefixCount: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"prefixCount: %d", v7, v8, v9, v10, v11, a2);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"prefixCount: %d", v12, v13, v14, v15, a2);
      }
    }
  }

  if (a2 >= 1 && (v16 = IDSNAT64PrefixCreate(a3, a2, *(a1 + 48))) != 0)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 48);
      *buf = 67109376;
      v46 = a2;
      v47 = 1024;
      v48 = v18;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "receive %d nat64 prefix for if:%d", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"receive %d nat64 prefix for if:%d", v19, v20, v21, v22, v23, a2);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"receive %d nat64 prefix for if:%d", v24, v25, v26, v27, a2);
      }
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1A7B6C9E4;
    v41[3] = &unk_1E77E0B70;
    v44 = *(a1 + 48);
    v28 = *(a1 + 40);
    v41[4] = *(a1 + 32);
    v43 = v16;
    v42 = v28;
    IDSTransportThreadAddBlock(v41);
  }

  else
  {
    *(*(a1 + 32) + 1568) = 0;
    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 48);
      *buf = 67109120;
      v46 = v31;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "nw_nat64_copy_prefixes_async failed for if:%d.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"nw_nat64_copy_prefixes_async failed for if:%d.", v32, v33, v34, v35, v36, *(a1 + 48));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"nw_nat64_copy_prefixes_async failed for if:%d.", v37, v38, v39, v40, *(a1 + 48));
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A7B6C9E4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "set nat64 prefix for if:%d in cache.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"set nat64 prefix for if:%d in cache.", v4, v5, v6, v7, v8, *(a1 + 56));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"set nat64 prefix for if:%d in cache.", v9, v10, v11, v12, *(a1 + 56));
      }
    }
  }

  IDSNAT64PrefixCacheSetPrefixes(*(*(a1 + 32) + 216), *(a1 + 48));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1A7B700C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A7B7015C;
  v5[3] = &unk_1E77E0250;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  IDSTransportThreadAddBlock(v5);
}

void sub_1A7B7016C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A7B70200;
  v5[3] = &unk_1E77E0250;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  IDSTransportThreadAddBlock(v5);
}

void sub_1A7B70D74(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  if (*(a1 + 100) == 1 && (v2 == 0.0 || *(a1 + 96) == 10))
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 96);
      *buf = 134218240;
      *v36 = v4;
      *&v36[8] = 1024;
      *&v36[10] = v5;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "initiator: allocateRequestTime: %f, IDSRadioAccessTechnology_Unknown: %u", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"initiator: allocateRequestTime: %f, IDSRadioAccessTechnology_Unknown: %u", v6, v7, v8, v9, v10, *(a1 + 72));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"initiator: allocateRequestTime: %f, IDSRadioAccessTechnology_Unknown: %u", v11, v12, v13, v14, *(a1 + 72));
      }
    }
  }

  else
  {
    v15 = (v2 * 1000.0);
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 96);
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 67110146;
      *v36 = 402;
      *&v36[4] = 2112;
      *&v36[6] = v18;
      v37 = 1024;
      v38 = v15;
      v39 = 1024;
      v40 = v17;
      v41 = 2112;
      v42 = v19;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "report AWD allocator event %d for request %@, duration %u ms, RAT: %u, serverSoftwareVersion: %@", buf, 0x28u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v33 = *(a1 + 96);
        v34 = *(a1 + 40);
        v32 = v15;
        _IDSLogTransport(@"GL", @"IDS", @"report AWD allocator event %d for request %@, duration %u ms, RAT: %u, serverSoftwareVersion: %@", v20, v21, v22, v23, v24, 402);
        if (_IDSShouldLog(0))
        {
          v33 = *(a1 + 96);
          v34 = *(a1 + 40);
          v32 = v15;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"report AWD allocator event %d for request %@, duration %u ms, RAT: %u, serverSoftwareVersion: %@", v25, v26, v27, v28, 402);
        }
      }
    }

    v29 = *(*(a1 + 48) + 1608);
    if (v29)
    {
      v30 = *(v29 + 16);
      if (v30)
      {
        LOBYTE(v31) = *(a1 + 100);
        (*(v30 + 16))(v30, 402, *(a1 + 80), *(a1 + 88), *(a1 + 96), v15, *(a1 + 56), *(a1 + 64), v31, *(a1 + 40), v32, v33, v34);
      }
    }
  }
}

id sub_1A7B714AC(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:12];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0xCuLL, [v2 mutableBytes]))
  {
    v3 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1482C();
    }

    v4 = 0;
  }

  else
  {
    [*(a1 + 32) deriveAES128CTRKeys:v2];
    v4 = v2;
  }

  return v4;
}

void sub_1A7B71580(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a5)
    {
      [*(a1 + 32) _updateCandidatePair:*(a1 + 40) newLocalPort:a5];
    }

    v6 = *(*(a1 + 48) + 16);

    v6();
  }

  else
  {
    v9 = *(a1 + 32);
    if (*(v9 + 2089) == 1)
    {
      v10 = *(v9 + 2240);
      v11 = (a1 + 40);
      v12 = [*(a1 + 40) linkUniqueName];
      v13 = [v10 objectForKeyedSubscript:v12];

      if (*v11 == v13)
      {
        if (a4)
        {
          [*(a1 + 32) _markLinkAsUsed:?];
        }

        [*(a1 + 32) _reportNoSessionState:? errorCode:?];
        v59 = [*(a1 + 40) linkEngine];
        v60 = [*(a1 + 40) linkUniqueName];
        [v59 linkDidFail:v60 errorCode:699 isRecoverable:a3 shouldReconnect:a4];
      }

      else
      {
        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          *buf = 138412546;
          v65 = v15;
          v66 = 2112;
          v67 = v13;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "ignoring NWLink connection error because it is for a different candidate pair:\n- old: %@\n- new: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"ignoring NWLink connection error because it is for a different candidate pair:\n- old: %@\n- new: %@", v16, v17, v18, v19, v20, *(a1 + 40));
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"ignoring NWLink connection error because it is for a different candidate pair:\n- old: %@\n- new: %@", v21, v22, v23, v24, *(a1 + 40));
            }
          }
        }
      }
    }

    else
    {
      if ((a3 & 1) == 0)
      {
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = (&_IDSStunCandidatePairStateStrings)[[*(a1 + 40) state]];
          v27 = *(a1 + 40);
          *buf = 136315650;
          v65 = v26;
          v66 = 2080;
          v67 = off_1EB2B43B8;
          v68 = 2112;
          v69 = v27;
          _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v28 = [*(a1 + 40) state];
            _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.", v29, v30, v31, v32, v33, (&_IDSStunCandidatePairStateStrings)[v28]);
            if (_IDSShouldLog(0))
            {
              v34 = [*(a1 + 40) state];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.", v35, v36, v37, v38, (&_IDSStunCandidatePairStateStrings)[v34]);
            }
          }
        }

        [*(a1 + 40) setState:2];
      }

      if (a4)
      {
        v39 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "QR connection(H2) to the QR server failed - reconnecting...", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"QR connection(H2) to the QR server failed - reconnecting...", v40, v41, v42, v43, v44, v61);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"QR connection(H2) to the QR server failed - reconnecting...", v45, v46, v47, v48, v62);
            }
          }
        }

        [*(a1 + 32) _handleRemapping:*(a1 + 40) errorCode:699 reconnectQUIC:1];
      }

      else
      {
        v49 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "QR connection(H2) to the QR server failed - do not reconnect", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"QR connection(H2) to the QR server failed - do not reconnect", v50, v51, v52, v53, v54, v61);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"QR connection(H2) to the QR server failed - do not reconnect", v55, v56, v57, v58, v63);
            }
          }
        }
      }
    }
  }
}

id sub_1A7B71F9C(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:12];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0xCuLL, [v2 mutableBytes]))
  {
    v3 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1482C();
    }

    v4 = 0;
  }

  else
  {
    [*(a1 + 32) deriveAES128CTRKeys:v2];
    v4 = v2;
  }

  return v4;
}

void sub_1A7B72070(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      [*(a1 + 32) setState:{0, a4}];
    }

    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v8 = *(a1 + 40);
    if (*(v8 + 2089) == 1)
    {
      v9 = *(v8 + 2240);
      v10 = (a1 + 32);
      v11 = [*(a1 + 32) linkUniqueName];
      v12 = [v9 objectForKeyedSubscript:v11];

      if (*v10 == v12)
      {
        if (a4)
        {
          [*(a1 + 40) _markLinkAsUsed:?];
        }

        [*(a1 + 40) _reportNoSessionState:? errorCode:?];
        v58 = [*(a1 + 32) linkEngine];
        v59 = [*(a1 + 32) linkUniqueName];
        [v58 linkDidFail:v59 errorCode:699 isRecoverable:a3 shouldReconnect:a4];
      }

      else
      {
        v13 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          *buf = 138412546;
          v64 = v14;
          v65 = 2112;
          v66 = v12;
          _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "ignoring NWLink connection error because it is for a different candidate pair:\n- old: %@\n- new: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"ignoring NWLink connection error because it is for a different candidate pair:\n- old: %@\n- new: %@", v15, v16, v17, v18, v19, *(a1 + 32));
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"ignoring NWLink connection error because it is for a different candidate pair:\n- old: %@\n- new: %@", v20, v21, v22, v23, *(a1 + 32));
            }
          }
        }
      }
    }

    else
    {
      if ((a3 & 1) == 0)
      {
        v24 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = (&_IDSStunCandidatePairStateStrings)[[*(a1 + 32) state]];
          v26 = *(a1 + 32);
          *buf = 136315650;
          v64 = v25;
          v65 = 2080;
          v66 = off_1EB2B43B8;
          v67 = 2112;
          v68 = v26;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v27 = [*(a1 + 32) state];
            _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.", v28, v29, v30, v31, v32, (&_IDSStunCandidatePairStateStrings)[v27]);
            if (_IDSShouldLog(0))
            {
              v33 = [*(a1 + 32) state];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.", v34, v35, v36, v37, (&_IDSStunCandidatePairStateStrings)[v33]);
            }
          }
        }

        [*(a1 + 32) setState:2];
      }

      if (a4)
      {
        v38 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "QR connection to the QR server failed - reconnecting...", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"QR connection to the QR server failed - reconnecting...", v39, v40, v41, v42, v43, v60);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"QR connection to the QR server failed - reconnecting...", v44, v45, v46, v47, v61);
            }
          }
        }

        [*(a1 + 40) _handleRemapping:*(a1 + 32) errorCode:699 reconnectQUIC:1];
      }

      else
      {
        v48 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "QR connection to the QR server failed - do not reconnect", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"QR connection to the QR server failed - do not reconnect", v49, v50, v51, v52, v53, v60);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"QR connection to the QR server failed - do not reconnect", v54, v55, v56, v57, v62);
            }
          }
        }
      }
    }
  }
}

void sub_1A7B74590(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7B73B50);
  }

  _Unwind_Resume(a1);
}

void sub_1A7B75424(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) candidatePairToken];
  [v2 _sendQUICAllocbindRequest:v3 isRealloc:objc_msgSend(*(a1 + 40) inResponseToNoSessionState:"isRealloc") shouldConnectLinkFirst:0 isPendingInResponseToNoSessionState:{0, objc_msgSend(*(a1 + 40), "pendingNoSessionStateAllocbind")}];
}

void sub_1A7B777B4(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 1512))
  {
    v3 = [*(v2 + 2208) objectForKeyedSubscript:?];
    v4 = v3;
    if (v3 && ([v3 linkEngine], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [v4 linkEngine];
      v7 = [v6 tag];
    }

    else
    {
      v7 = &stru_1F1AC8480;
    }
  }

  else
  {
    v7 = &stru_1F1AC8480;
  }

  v8 = GLUtilLinkTypeMaskToString(*(a1 + 44));
  ShouldSetRemoteInterfacePreference = GLUtilShouldSetRemoteInterfacePreference(*(a1 + 40), *(*(a1 + 32) + 1794));
  v10 = +[IDSFoundationLog GlobalLink];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (ShouldSetRemoteInterfacePreference)
  {
    if (v11)
    {
      if (*(*(a1 + 32) + 1794))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138412802;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "startNewAllocationFromInterface[%@]: [%@]: setting remote interface preference (reduceCellularUsage: %@)", buf, 0x20u);
    }

    PreferredRemoteInterface = GLUtilGetPreferredRemoteInterface(*(a1 + 44));
  }

  else
  {
    if (v11)
    {
      if (*(*(a1 + 32) + 1794))
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      *buf = 138412802;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "startNewAllocationFromInterface[%@]: [%@]: not setting remote interface preference (reduceCellularUsage: %@)", buf, 0x20u);
    }

    PreferredRemoteInterface = 0;
  }

  PreferredLocalInterface = GLUtilGetPreferredLocalInterface(*(a1 + 44));
  v16 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 1512);
    v19 = *(v17 + 1688);
    *buf = 138413058;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "startNewAllocationFromInterface[%@]: set up new QR link [%@], accepted session %@, ids-session-id %@.", buf, 0x2Au);
  }

  v20 = *(a1 + 32);
  v21 = v20[201];
  if (v21)
  {
    v22 = *(v21 + 8);
    if (v22)
    {
      HIDWORD(v25) = PreferredRemoteInterface;
      LOWORD(v25) = 0;
      v23 = (*(v22 + 16))(v22, v20[211], 0, v20[189], 1, 0xFFFFLL, 0, 0, 0, 0, v25, PreferredLocalInterface);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1A7B77B0C;
      v26[3] = &unk_1E77E0250;
      v26[4] = *(a1 + 32);
      v27 = v23;
      v24 = v23;
      IDSTransportThreadAddBlock(v26);
    }
  }
}

void sub_1A7B77B0C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 1576);
  if (v2 || (v3 = objc_alloc_init(MEMORY[0x1E695DF70]), v4 = *(a1 + 32), v5 = *(v4 + 1576), *(v4 + 1576) = v3, v5, (v2 = *(*(a1 + 32) + 1576)) != 0))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      CFArrayAppendValue(v2, v6);
    }
  }

  v7 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1576);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "_requestNewTwoWayQRAllocation: targeted allocation request IDs: %@", &v9, 0xCu);
  }
}

double sub_1A7B78820()
{
  v0 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_DEFAULT, "configureGLExperiments: started capturing quality metrics", v11, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"configureGLExperiments: started capturing quality metrics", v2, v3, v4, v5, v6, *v11);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"configureGLExperiments: started capturing quality metrics", v7, v8, v9, v10, *v11);
    }
  }

  return result;
}

void sub_1A7B7CACC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "_connectWithSessionInfo%@: IDSGlobalLinkSession SessionInfoDict: %@", &v5, 0x16u);
  }
}

void sub_1A7B7CB88(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:*MEMORY[0x1E696A578]];
    v8 = [v6 errorWithDomain:@"GlobalLink" code:a2 userInfo:v7];

    v9 = im_primary_queue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A7BD0030;
    v11[3] = &unk_1E77DD0F0;
    v12 = v8;
    v13 = v5;
    v10 = v8;
    dispatch_async(v9, v11);
  }
}

void sub_1A7B7CCCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) candidatePairToken];
  [v2 _sendQUICAllocbindRequest:v3 isRealloc:0 inResponseToNoSessionState:0 shouldConnectLinkFirst:0 isPendingInResponseToNoSessionState:{objc_msgSend(*(a1 + 40), "pendingNoSessionStateAllocbind")}];
}

void sub_1A7B7CD3C(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) local];
  v3 = [v2 radioAccessTechnology];

  v4 = *(a1 + 40);
  v5 = [*(*(a1 + 48) + 224) allValues];
  LODWORD(v4) = GLUtilHasRelayCandidatePairSucceededOrConnected(v4, v5, v3);

  if (v4)
  {
    v6 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = (&_IDSStunTransportStrings)[*(a1 + 72)];
      v14 = 138412802;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      v18 = 2080;
      v19 = IDSRadioAccessTechnologyToString(v3);
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "session %@ is connected to QR, skip [%s] attempt with RAT %s.", &v14, 0x20u);
    }
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 84);
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);

    [v9 _connectWithSessionInfo:v10 interfaceAddress:0 joinSession:v11 allocbindFailover:0 completionHandler:v12 withLocalInterfacePreference:v13];
  }
}

void sub_1A7B81DBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_1A7B81E00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) isP2P] && (WeakRetained[1545] & 1) == 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [(__CFDictionary *)Mutable setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"report-p2p-session-key"];
    [WeakRetained sendStatsRequest:Mutable];
    WeakRetained[1545] = 1;
  }
}

void sub_1A7B82B78(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Register plugin: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Register plugin: %@", v8, v9, v10, v11, v12, v5);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"Register plugin: %@", v13, v14, v15, v16, v5);
      }
    }
  }

  v17 = [*(a1 + 32) isQUIC];
  v18 = *(a1 + 40);
  if (v17)
  {
    [v18 sendQUICPluginRegistrationRequestWithOptions:v6];
  }

  else
  {
    [v18 sendQRPluginRegistrationRequest:0 options:v6];
  }
}

void sub_1A7B84808(uint64_t a1)
{
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "building quality report...", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"building quality report...", v3, v4, v5, v6, v7, v17);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"building quality report...", v8, v9, v10, v11, v18);
      }
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A7B849A0;
  v20[3] = &unk_1E77E0DA0;
  v12 = *(a1 + 32);
  *&v13 = *(a1 + 40);
  *(&v13 + 1) = *(a1 + 48);
  v19 = v13;
  v14 = *(a1 + 32);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v21 = v19;
  v22 = v16;
  [v12 generateReportWithCompletionHandler:v20];
}

void sub_1A7B849A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7B84A90;
  v10[3] = &unk_1E77E0D78;
  v11 = v3;
  *&v4 = *(a1 + 32);
  *(&v4 + 1) = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  IDSTransportThreadAddBlock(v10);
}

uint64_t sub_1A7B84A90(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v3)
  {
    v4 = *v31;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v31 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v6;
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "quality report event: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"quality report event: %@", v8, v9, v10, v11, v12, v6);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"quality report event: %@", v13, v14, v15, v16, v6);
            }
          }
        }

        [*(a1 + 40) link:*(a1 + 48) didAddQREvent:v6];
      }

      v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v3);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "stopping quality measurements...", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"stopping quality measurements...", v18, v19, v20, v21, v22, v28);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stopping quality measurements...", v23, v24, v25, v26, v29);
      }
    }
  }

  [*(a1 + 56) stopWithCompletionHandler:&unk_1F1AAA400];
  return [*(a1 + 48) _callDisconnectCompletionHandler:*(a1 + 64)];
}

double sub_1A7B84D5C()
{
  v0 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1A7AD9000, v0, OS_LOG_TYPE_DEFAULT, "stopped quality measurements", v11, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"stopped quality measurements", v2, v3, v4, v5, v6, *v11);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"stopped quality measurements", v7, v8, v9, v10, *v11);
    }
  }

  return result;
}

void sub_1A7B854F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1A7B85520(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    [WeakRetained _sendSyntheticPacket:v6 candidatePair:v4];
  }
}

uint64_t sub_1A7B867A0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "session connected message timed out for receiver, disconnect %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"session connected message timed out for receiver, disconnect %@.", v4, v5, v6, v7, v8, *(a1 + 32));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session connected message timed out for receiver, disconnect %@.", v9, v10, v11, v12, *(a1 + 32));
      }
    }
  }

  return [*(a1 + 40) _sendUnallocbindRequest:*(a1 + 48) stunMessage:0 reason:9];
}

void sub_1A7B89A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *sub_1A7B89A98()
{
  qword_1EB2BBCC0 = *MEMORY[0x1AC5631C0]("kSymptomDiagnosticActionProbePacketCapture", @"SymptomDiagnosticReporter");
  result = MEMORY[0x1AC5631C0]("kSymptomDiagnosticActionProbeDuration", @"SymptomDiagnosticReporter");
  qword_1EB2BBCC8 = *result;
  return result;
}

void sub_1A7B89AF4(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) snapshotWithSignature:*(a1 + 40) delay:0 events:0 payload:*(a1 + 48) actions:&unk_1F1AAA440 reply:*(a1 + 64)])
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "SymptomReporter: Sent snapshot for signature %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"SymptomReporter: Sent snapshot for signature %@", v4, v5, v6, v7, v8, *(a1 + 40));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"SymptomReporter: Sent snapshot for signature %@", v9, v10, v11, v12, *(a1 + 40));
      }
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "SymptomReporter: Failed to send snapshot for signature %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"SymptomReporter: Failed to send snapshot for signature %@", v15, v16, v17, v18, v19, *(a1 + 40));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"SymptomReporter: Failed to send snapshot for signature %@", v20, v21, v22, v23, *(a1 + 40));
        }
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_1A7B89D40(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v2;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "SymptomReporter: got response from diagnosticReporter - %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"SymptomReporter: got response from diagnosticReporter - %@", v4, v5, v6, v7, v8, v2);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"SymptomReporter: got response from diagnosticReporter - %@", v9, v10, v11, v12, v2);
      }
    }
  }
}

uint64_t sub_1A7B8A4C4(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) qrSessionID];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "disconnect session with qrSessionID=%@ for goaway.", &v5, 0xCu);
  }

  [*(a1 + 32) reset];
  return [*(a1 + 40) _updateLinksForSession:*(a1 + 32)];
}

void sub_1A7B8A59C(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "disconnect session %@ for goaway.", buf, 0xCu);
  }

  [*(a1 + 40) setIsDisconnecting:0];
  v4 = [*(a1 + 40) state];
  if (v4 < 5)
  {
    [*(a1 + 48) _sendUnallocbindRequest:*(a1 + 32) stunMessage:0 reason:4];
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = (&_IDSStunCandidatePairStateStrings)[v4];
      *buf = 138412546;
      v18 = v6;
      v19 = 2080;
      v20 = v7;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "candidate pair %@ is already disconnecting [%s], ignore.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"candidate pair %@ is already disconnecting [%s], ignore.", v8, v9, v10, v11, v12, *(a1 + 32));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"candidate pair %@ is already disconnecting [%s], ignore.", v13, v14, v15, v16, *(a1 + 32));
      }
    }
  }
}

void sub_1A7B8A79C(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 1608);
  if (v1 && *(v1 + 8))
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = *(*(a1 + 32) + 1688);
      *buf = 67109378;
      v27 = v4;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "request new allocation with type %d for goaway indication (ids-session-id:%@).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"request new allocation with type %d for goaway indication (ids-session-id:%@).", v6, v7, v8, v9, v10, *(a1 + 48));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"request new allocation with type %d for goaway indication (ids-session-id:%@).", v11, v12, v13, v14, *(a1 + 48));
      }
    }

    v15 = *(a1 + 32);
    v16 = *(*(v15 + 1608) + 8);
    v17 = *(v15 + 1688);
    v18 = [*(a1 + 40) sessionID];
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = *(a1 + 68);
    v22 = *(a1 + 64);
    v23 = [*(a1 + 40) relaySessionToken];
    LOWORD(v25) = 0;
    v24 = (*(v16 + 16))(v16, v17, 0, v18, v19, 4, v20, v21, v22, v23, v25, 0);
  }
}

uint64_t sub_1A7B8C15C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 144);
  v11[4] = *(a1 + 128);
  v11[5] = v1;
  v2 = *(a1 + 176);
  v11[6] = *(a1 + 160);
  v11[7] = v2;
  v3 = *(a1 + 80);
  v11[0] = *(a1 + 64);
  v11[1] = v3;
  v4 = *(a1 + 112);
  v11[2] = *(a1 + 96);
  v11[3] = v4;
  v5 = *(a1 + 272);
  v10[4] = *(a1 + 256);
  v10[5] = v5;
  v6 = *(a1 + 304);
  v10[6] = *(a1 + 288);
  v10[7] = v6;
  v7 = *(a1 + 208);
  v10[0] = *(a1 + 192);
  v10[1] = v7;
  v8 = *(a1 + 240);
  v10[2] = *(a1 + 224);
  v10[3] = v8;
  return [*(a1 + 32) _processReallocIndication:*(a1 + 40) fromDevice:*(a1 + 48) localIfIndex:*(a1 + 328) localAddress:v11 remoteAddress:v10 candidatePairToken:*(a1 + 56) arrivalTime:*(a1 + 320)];
}

void sub_1A7B8D854(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sessionID];
  if (v2)
  {
    v3 = tokenForStunCandidatePair(*(a1 + 48), *(a1 + 56), v2);
    v4 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 40) + 1688);
      v6 = [*(a1 + 32) sessionID];
      v7 = [*(a1 + 32) linkID];
      v10 = 138413058;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Realloc Done: Send unallocbind for IDSSessionID: %@ QRSessionID: %@ and %@, linkID: %d", &v10, 0x26u);
    }

    v8 = [*(a1 + 32) isQUIC];
    v9 = *(a1 + 40);
    if (v8)
    {
      [v9 _sendQUICUnallocbindRequest:v3 reason:3];
    }

    else
    {
      [v9 _sendUnallocbindRequest:v3 stunMessage:0 reason:3];
    }

    [*(a1 + 32) stopSessionConnectedTimer];
  }

  else
  {
    v3 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "invalid sessionID, return", &v10, 2u);
    }
  }
}

void sub_1A7B90410(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _sendStunMessage:*(a1 + 40) candidatePair:*(a1 + 48)] == -2 && *(a1 + 56) == 1)
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 48) candidatePairToken];
      *buf = 138412546;
      v23 = v3;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "warning: allocbind request %@ for %@ exceeds MTU size", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v5 = *(a1 + 40);
        v20 = [*(a1 + 48) candidatePairToken];
        _IDSLogTransport(@"GL", @"IDS", @"warning: allocbind request %@ for %@ exceeds MTU size", v6, v7, v8, v9, v10, v5);

        if (_IDSShouldLog(0))
        {
          v11 = *(a1 + 40);
          v21 = [*(a1 + 48) candidatePairToken];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"warning: allocbind request %@ for %@ exceeds MTU size", v12, v13, v14, v15, v11);
        }
      }
    }

    v16 = GLUCreateQRStunMessageEvent(*(a1 + 40), 36, *(a1 + 48), *(*(a1 + 32) + 1920), 0.0);
    if (v16)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = objc_loadWeakRetained((*(a1 + 32) + 64));
        [v19 link:*(a1 + 32) didAddQREvent:v16];
      }
    }
  }
}

void sub_1A7B995F8(uint64_t a1)
{
  v2 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "[U+1] now that remote device version is received, processing incoming ConnectionData", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processCommandConnectionData:*(a1 + 32) candidatePairToken:*(a1 + 40)];
}

void *sub_1A7B9A700(uint64_t a1)
{
  result = [*(a1 + 32) _sendNowConnectionDataWithRemovedAddressList:*(a1 + 40)];
  *(*(a1 + 32) + 1880) = 0;
  return result;
}

void sub_1A7B9B294(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7B9B304;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7B9B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak(va);
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(a1);
}

void sub_1A7B9B520(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _flushPacketLogTick];
    WeakRetained = v2;
  }
}

void sub_1A7B9C0CC(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7B9C13C;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7B9D74C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7B9D67CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A7B9D780(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A7B9D838;
  v2[3] = &unk_1E77E0FF0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  IDSTransportThreadAddBlock(v2);
}

void sub_1A7B9D838(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _handleAllocbindFailoverTimerWithTransportScoreCards:*(a1 + 40) failoverTimerOnCandidatePair:*(a1 + 48) onInterface:*(a1 + 56)];
}

void sub_1A7B9D890(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _handleAllocbindFailoverTimerWithTransportScoreCards:*(a1 + 40) failoverTimerOnCandidatePair:0 onInterface:*(a1 + 48)];
}

void sub_1A7B9E974(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7B9E678);
  }

  _Unwind_Resume(a1);
}

void sub_1A7B9F510(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7B9F450);
  }

  _Unwind_Resume(a1);
}

void sub_1A7BA0650(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 1608);
  if (v2)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      LOWORD(v21) = 0;
      v5 = (*(v4 + 16))(v4, *(v1 + 1688), 0, 0, 2, 0xFFFFLL, 0, 0, 0, 0, v21, 0);
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) address];
        v8 = *(*(a1 + 32) + 1688);
        *buf = 138412802;
        v25 = v7;
        v26 = 2112;
        v27 = v5;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "request self allocation for [%@], requestID %@, ids-sesion-id %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v9 = [*(a1 + 40) address];
        _IDSLogTransport(@"GL", @"IDS", @"request self allocation for [%@], requestID %@, ids-sesion-id %@", v10, v11, v12, v13, v14, v9);

        if (_IDSShouldLog(0))
        {
          v15 = [*(a1 + 40) address];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"request self allocation for [%@], requestID %@, ids-sesion-id %@", v16, v17, v18, v19, v15);
        }
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1A7BA08B4;
      v22[3] = &unk_1E77E0250;
      v22[4] = *(a1 + 32);
      v23 = v5;
      v20 = v5;
      IDSTransportThreadAddBlock(v22);
    }
  }
}

void sub_1A7BA08B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1632);
  if (v3 || (v4 = objc_alloc_init(MEMORY[0x1E695DF70]), v5 = *(a1 + 32), v6 = *(v5 + 1632), *(v5 + 1632) = v4, v6, v2 = *(a1 + 32), (v3 = *(v2 + 1632)) != 0))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      CFArrayAppendValue(v3, v7);
      v2 = *(a1 + 32);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7BA0988;
  v8[3] = &unk_1E77E0250;
  v8[4] = v2;
  v9 = *(a1 + 40);
  IDSTransportThreadAddBlockAfter(v8, 10.0);
}

void sub_1A7BA2A48(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v46 = a2;
  v3 = [*(a1 + 32) linkMetrics];
  [v3 sendBindingRequest];

  [*(a1 + 40) _setLinkMetricsAttributesForCandidatePair:*(a1 + 32)];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __str[6] = v4;
  __str[7] = v4;
  __str[4] = v4;
  __str[5] = v4;
  __str[2] = v4;
  __str[3] = v4;
  __str[0] = v4;
  __str[1] = v4;
  v61[6] = v4;
  v61[7] = v4;
  v61[4] = v4;
  v61[5] = v4;
  v61[2] = v4;
  v61[3] = v4;
  v61[0] = v4;
  v61[1] = v4;
  v5 = [*(a1 + 32) local];
  v6 = [v5 address];

  v7 = [*(a1 + 32) remote];
  v45 = [v7 external];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = *(*(a1 + 40) + 1424);
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v9)
  {
    v10 = *v51;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        v13 = [v12 address];
        v14 = [v13 sa];

        if (IsSameSA(v14, v6) && [v12 clat46] && *(v6 + 1) == 2)
        {
          v15 = [*(a1 + 32) local];
          [v15 setIsCLAT46:1];

          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = [*(a1 + 32) local];
  v17 = [v16 isCellularStunCandidate];

  if (v17)
  {
    v18 = [*(a1 + 32) local];
    [v18 setCellularSlicingFlags:*(*(a1 + 40) + 1601)];
  }

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = SAToIPPortString(__str, 0x80uLL, v6);
    v21 = SAToIPPortString(v61, 0x80uLL, v45);
    *buf = 138412802;
    v55 = v46;
    v56 = 2080;
    v57 = v20;
    v58 = 2080;
    v59 = v21;
    _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "send binding request %@ for %s-%s.", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      SAToIPPortString(__str, 0x80uLL, v6);
      SAToIPPortString(v61, 0x80uLL, v45);
      _IDSLogTransport(@"GL", @"IDS", @"send binding request %@ for %s-%s.", v22, v23, v24, v25, v26, v46);
      if (_IDSShouldLog(0))
      {
        SAToIPPortString(__str, 0x80uLL, v6);
        SAToIPPortString(v61, 0x80uLL, v45);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"send binding request %@ for %s-%s.", v27, v28, v29, v30, v46);
      }
    }
  }

  [*(a1 + 40) _sendStunMessage:v46 candidatePair:*(a1 + 32)];
  if (!*(a1 + 56))
  {
    [*(a1 + 32) setState:1];
    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 48);
      v33 = (&_IDSStunCandidatePairStateStrings)[*(a1 + 56)];
      *buf = 136315650;
      v55 = v33;
      v56 = 2080;
      v57 = off_1EB2B43B0;
      v58 = 2112;
      v59 = v32;
      _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.", v34, v35, v36, v37, v38, (&_IDSStunCandidatePairStateStrings)[*(a1 + 56)]);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.", v39, v40, v41, v42, (&_IDSStunCandidatePairStateStrings)[*(a1 + 56)]);
        }
      }
    }
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_1A7BA2FB8;
  v47[3] = &unk_1E77E1068;
  v43 = *(a1 + 48);
  v47[4] = *(a1 + 40);
  v48 = v43;
  v49 = v46;
  v44 = v46;
  IDSTransportThreadAddBlockAfter(v47, 1.0);
}

void sub_1A7BA2FD8(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 blob];
    v6 = *(a1 + 32);
    *buf = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "p2p negotiation blob: %@ for:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = [v3 blob];
      _IDSLogTransport(@"GL", @"IDS", @"p2p negotiation blob: %@ for:%@", v8, v9, v10, v11, v12, v7);

      if (_IDSShouldLog(0))
      {
        v13 = [v3 blob];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"p2p negotiation blob: %@ for:%@", v14, v15, v16, v17, v13);
      }
    }
  }

  v18 = [*(a1 + 40) QUICConnectionIDs];
  if (!v18)
  {
    v18 = objc_alloc_init(IDSQUICConnectionIDs);
    v19 = [*(*(a1 + 48) + 2136) copy];
    v25 = v19;
    v20 = [(IDSQUICConnectionIDs *)v18 generateLocalIDs:&v25];
    v21 = v25;

    [*(*(a1 + 48) + 2136) addObjectsFromArray:v20];
    [*(a1 + 40) setQUICConnectionIDs:v18];
  }

  v22 = [v3 blob];
  if (v22)
  {
    CFDictionarySetValue(*(a1 + 56), @"ids-stun-attribute-tle-p2p-blob", v22);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E15C30();
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSQUICConnectionIDs localAVCConnectionID](v18, "localAVCConnectionID")}];
  if (v23)
  {
    CFDictionarySetValue(*(a1 + 56), @"ids-stun-attribute-tle-p2p-connection-id-avc", v23);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E15CB8();
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSQUICConnectionIDs localIDSConnectionID](v18, "localIDSConnectionID")}];
  if (v24)
  {
    CFDictionarySetValue(*(a1 + 56), @"ids-stun-attribute-tle-p2p-connection-id-ids", v24);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E15D40();
  }

  [*(a1 + 64) setTransactionID:0 attributes:*(a1 + 56)];
  [*(a1 + 64) setStartTime:ids_monotonic_time()];
  (*(*(a1 + 72) + 16))();
}

void sub_1A7BA38B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A7BA396C;
  v6[3] = &unk_1E77E10E0;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = v3;
  IDSTransportThreadAddBlock(v6);
}

void sub_1A7BA396C(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v54 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "getting p2p negotiation from candidate pair %@...", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"getting p2p negotiation from candidate pair %@...", v4, v5, v6, v7, v8, *(a1 + 32));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"getting p2p negotiation from candidate pair %@...", v9, v10, v11, v12, *(a1 + 32));
      }
    }
  }

  v13 = [*(a1 + 32) p2pNegotiation];

  if (v13)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = [v15 p2pNegotiation];
      *buf = 138412546;
      v54 = v15;
      v55 = 2112;
      v56 = v16;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "p2p negotiation exists for candidate pair %@: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v17 = *(a1 + 32);
        v51 = [v17 p2pNegotiation];
        _IDSLogTransport(@"GL", @"IDS", @"p2p negotiation exists for candidate pair %@: %@", v18, v19, v20, v21, v22, v17);

        if (_IDSShouldLog(0))
        {
          v23 = *(a1 + 32);
          v52 = [v23 p2pNegotiation];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"p2p negotiation exists for candidate pair %@: %@", v24, v25, v26, v27, v23);
        }
      }
    }

    v28 = *(a1 + 48);
    v29 = [*(a1 + 32) p2pNegotiation];
    (*(v28 + 16))(v28, v29);
  }

  else
  {
    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      *buf = 138412290;
      v54 = v31;
      _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "creating p2p negotiation for candidate pair %@...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"creating p2p negotiation for candidate pair %@...", v32, v33, v34, v35, v36, *(a1 + 32));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"creating p2p negotiation for candidate pair %@...", v37, v38, v39, v40, *(a1 + 32));
        }
      }
    }

    v29 = [*(a1 + 40) beginNegotiation];
    [*(a1 + 32) setP2pNegotiation:v29];
    v41 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v29;
      _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "p2p negotiation: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"p2p negotiation: %@", v42, v43, v44, v45, v46, v29);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"p2p negotiation: %@", v47, v48, v49, v50, v29);
        }
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1A7BA548C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2 == 1)
  {
    sub_1A7E14640(a1);
    JUMPOUT(0x1A7BA5070);
  }

  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7BA55D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1A7BA55F0(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1 + 80;
  v3 = [*(*(*(a1 + 80) + 8) + 40) linkMetrics];
  [v3 sendBindingResponse];

  [*(a1 + 32) _setLinkMetricsAttributesForCandidatePair:*(*(*v2 + 8) + 40)];
  v4 = *(*(*(a1 + 88) + 8) + 40);
  v5 = [*(a1 + 40) transactionID];
  [v4 setTransactionID:v5 attributes:*(a1 + 48)];

  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 88) + 8) + 40);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 138412802;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "send binding response %@ for %@-%@.", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v26 = *(a1 + 56);
      _IDSLogTransport(@"GL", @"IDS", @"send binding response %@ for %@-%@.", v10, v11, v12, v13, v14, *(*(*(a1 + 88) + 8) + 40));
      if (_IDSShouldLog(0))
      {
        v26 = *(a1 + 56);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"send binding response %@ for %@-%@.", v15, v16, v17, v18, *(*(*(a1 + 88) + 8) + 40));
      }
    }
  }

  v19 = *(a1 + 32);
  v20 = *(*(*(a1 + 88) + 8) + 40);
  v21 = *(a1 + 352);
  v22 = *(a1 + 72);
  v23 = [*(*(*(a1 + 80) + 8) + 40) local];
  HIDWORD(v26) = [v23 mtu];
  LOWORD(v26) = -1;
  [v19 _sendStunMessage:v20 sourceIfIndex:v21 source:a1 + 96 destination:a1 + 224 stunTransport:2 glLinkProtocol:0 token:v22 linkID:v26 delegatedLinkID:? MTULimit:?];

  result = [*(*(*(a1 + 80) + 8) + 40) triggeredCheckTime];
  if (v25 == 0.0)
  {
    [*(*(*(a1 + 80) + 8) + 40) setTriggeredCheckTime:ids_monotonic_time()];
    return [*(a1 + 32) _startStunCheck:*(a1 + 72)];
  }

  return result;
}

void sub_1A7BA5890(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "p2p info for binding response: %@, %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"p2p info for binding response: %@, %@", v8, v9, v10, v11, v12, v5);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"p2p info for binding response: %@, %@", v13, v14, v15, v16, v5);
      }
    }
  }

  if (v5)
  {
    CFDictionarySetValue(*(a1 + 32), @"ids-stun-attribute-tle-p2p-blob", v5);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "localAVCConnectionID")}];
    if (v17)
    {
      CFDictionarySetValue(*(a1 + 32), @"ids-stun-attribute-tle-p2p-connection-id-avc", v17);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E15CB8();
    }

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "localIDSConnectionID")}];
    if (v18)
    {
      CFDictionarySetValue(*(a1 + 32), @"ids-stun-attribute-tle-p2p-connection-id-ids", v18);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E15D40();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1A7BA6044(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7BA6120;
  v8[3] = &unk_1E77E11D0;
  v9 = *(a1 + 32);
  v10 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v6 = *(a1 + 48);
  v11 = v4;
  v12 = v6;
  v13 = v5;
  v7 = v3;
  IDSTransportThreadAddBlock(v8);
}

void sub_1A7BA6120(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) receiveBlob:*(a1 + 48)];
  [*(a1 + 32) setP2pNegotiatedKeys:v2];

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 72);
    v5 = [*(a1 + 32) p2pNegotiatedKeys];
    v6 = *(a1 + 32);
    *buf = 134218498;
    v60 = v4;
    v61 = 2112;
    v62 = v5;
    v63 = 2112;
    v64 = v6;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "_receiveP2PNegotiationBlob[%llu]: p2p negotiated keys:%@ candidatePair:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v7 = *(a1 + 72);
      v51 = [*(a1 + 32) p2pNegotiatedKeys];
      _IDSLogTransport(@"GL", @"IDS", @"_receiveP2PNegotiationBlob[%llu]: p2p negotiated keys:%@ candidatePair:%@", v8, v9, v10, v11, v12, v7);

      if (_IDSShouldLog(0))
      {
        v13 = *(a1 + 72);
        v52 = [*(a1 + 32) p2pNegotiatedKeys];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_receiveP2PNegotiationBlob[%llu]: p2p negotiated keys:%@ candidatePair:%@", v14, v15, v16, v17, v13);
      }
    }
  }

  v18 = [*(a1 + 32) p2pNegotiatedKeys];

  if (v18)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 72);
      v21 = *(a1 + 80);
      *buf = 134218240;
      v60 = v20;
      v61 = 1024;
      LODWORD(v62) = v21;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "_receiveP2PNegotiationBlob[%llu]: p2p negotiated AVC connection ID: %08x", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_receiveP2PNegotiationBlob[%llu]: p2p negotiated AVC connection ID: %08x", v22, v23, v24, v25, v26, *(a1 + 72));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_receiveP2PNegotiationBlob[%llu]: p2p negotiated AVC connection ID: %08x", v27, v28, v29, v30, *(a1 + 72));
        }
      }
    }

    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 72);
      v33 = *(a1 + 84);
      *buf = 134218240;
      v60 = v32;
      v61 = 1024;
      LODWORD(v62) = v33;
      _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "_receiveP2PNegotiationBlob[%llu]: p2p negotiated IDS connection ID: %08x", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"_receiveP2PNegotiationBlob[%llu]: p2p negotiated IDS connection ID: %08x", v34, v35, v36, v37, v38, *(a1 + 72));
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"_receiveP2PNegotiationBlob[%llu]: p2p negotiated IDS connection ID: %08x", v39, v40, v41, v42, *(a1 + 72));
        }
      }
    }

    v43 = [*(a1 + 32) QUICConnectionIDs];
    if (!v43)
    {
      v43 = objc_alloc_init(IDSQUICConnectionIDs);
      v44 = [*(*(a1 + 56) + 2136) copy];
      v58 = v44;
      v45 = [(IDSQUICConnectionIDs *)v43 generateLocalIDs:&v58];
      v46 = v58;

      [*(*(a1 + 56) + 2136) addObjectsFromArray:v45];
      [*(a1 + 32) setQUICConnectionIDs:v43];
    }

    [(IDSQUICConnectionIDs *)v43 setRemoteAVCConnectionID:*(a1 + 80)];
    [(IDSQUICConnectionIDs *)v43 setRemoteIDSConnectionID:*(a1 + 84)];
    v47 = *(a1 + 32);
    v48 = *(a1 + 72);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1A7BA6640;
    v53[3] = &unk_1E77E11A8;
    v57 = v48;
    v49 = *(a1 + 56);
    v56 = *(a1 + 64);
    v54 = *(a1 + 40);
    v55 = v43;
    v50 = v43;
    [v49 setUpP2PQUICPodConnectionsForCandidatePair:v47 attemptID:v48 completionHandler:v53];
  }
}

void sub_1A7BA6640(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7BA66F8;
  v4[3] = &unk_1E77E1180;
  v9 = a2;
  v3 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  IDSTransportThreadAddBlock(v4);
}

void sub_1A7BA66F8(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 56);
      *buf = 134217984;
      v25 = v3;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "_receiveP2PNegotiationBlob[%llu]: set up p2p qpod connections", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v9 = (a1 + 56);
        _IDSLogTransport(@"GL", @"IDS", @"_receiveP2PNegotiationBlob[%llu]: set up p2p qpod connections", v4, v5, v6, v7, v8, *(a1 + 56));
        if (_IDSShouldLog(0))
        {
          v14 = @"_receiveP2PNegotiationBlob[%llu]: set up p2p qpod connections";
LABEL_14:
          _IDSLogV(0, @"IDSFoundation", @"GL", v14, v10, v11, v12, v13, *v9);
        }
      }
    }
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      *buf = 134217984;
      v25 = v16;
      _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "_receiveP2PNegotiationBlob[%llu]: failed to set up p2p qpod connections", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v9 = (a1 + 56);
        _IDSLogTransport(@"GL", @"IDS", @"_receiveP2PNegotiationBlob[%llu]: failed to set up p2p qpod connections", v17, v18, v19, v20, v21, *(a1 + 56));
        if (_IDSShouldLog(0))
        {
          v14 = @"_receiveP2PNegotiationBlob[%llu]: failed to set up p2p qpod connections";
          goto LABEL_14;
        }
      }
    }
  }

  v22 = *(a1 + 48);
  v23 = [*(a1 + 32) blob];
  (*(v22 + 16))(v22, v23, *(a1 + 40));
}

void sub_1A7BA7680(uint64_t a1, void *a2, void *a3)
{
  v140 = *MEMORY[0x1E69E9840];
  v130 = a2;
  v131 = a3;
  *(*(*(a1 + 64) + 8) + 24) = a1 + 80;
  *(*(*(a1 + 72) + 8) + 24) = a1 + 208;
  v133 = a1;
  v5 = *(a1 + 32);
  a1 += 32;
  isRelayStunCandidatePair = objc_msgSend_isRelayStunCandidatePair(v5);
  v7 = *(*(a1 + 8) + 48);
  v8 = [*a1 local];
  v9 = [v8 address];
  v10 = [*a1 remote];
  v11 = [v10 address];
  v12 = [*a1 sessionID];
  v13 = [*a1 kindSuffix];
  v14 = [*a1 local];
  LOBYTE(v127) = [v14 isCellularStunCandidate];
  if (isRelayStunCandidatePair)
  {
    v15 = [v7 connectionInfoForLocalAddress:v9 remoteAddress:v11 clientUniquePID:0 sessionID:v12 type:0 isRelay:1 protocolStackSuffix:v13 isCellular:v127];

    v16 = *(*(v133 + 40) + 48);
    v17 = [*(v133 + 32) local];
    v18 = [v17 address];
    v19 = [*(v133 + 32) remote];
    v20 = [v19 address];
    v21 = [*(v133 + 32) sessionID];
    v22 = [*(v133 + 32) kindSuffix];
    v23 = [*(v133 + 32) local];
    LOBYTE(v128) = [v23 isCellularStunCandidate];
    [v16 connectionInfoForLocalAddress:v18 remoteAddress:v20 clientUniquePID:0 sessionID:v21 type:7 isRelay:1 protocolStackSuffix:v22 isCellular:v128];
  }

  else
  {
    v15 = [v7 connectionInfoForLocalAddress:v9 remoteAddress:v11 clientUniquePID:0 sessionID:v12 type:0 isRelay:0 protocolStackSuffix:v13 isCellular:v127];

    v24 = *(*(v133 + 40) + 48);
    v17 = [*(v133 + 32) local];
    v25 = [v17 address];
    v19 = [*(v133 + 32) remote];
    v26 = [v19 address];
    v21 = [*(v133 + 32) sessionID];
    v22 = [*(v133 + 32) kindSuffix];
    v23 = [*(v133 + 32) local];
    LOBYTE(v129) = [v23 isCellularStunCandidate];
    [v24 connectionInfoForLocalAddress:v25 remoteAddress:v26 clientUniquePID:0 sessionID:v21 type:9 isRelay:0 protocolStackSuffix:v22 isCellular:v129];
  }
  v27 = ;

  v28 = GLUtilConnectionDictionaryForNWConnectionInfo(v15, 1);
  v29 = [*(v133 + 32) connections];
  [v29 setObject:v28 forKeyedSubscript:@"udp"];

  v30 = GLUtilConnectionDictionaryForNWConnectionInfo(v27, [*(v133 + 40) _shouldUseP2PTLE]);
  v31 = [*(v133 + 32) connections];
  [v31 setObject:v30 forKeyedSubscript:@"qpod"];

  v32 = [*(v133 + 32) state];
  if (v32 <= 2)
  {
    v33 = v32;
    [*(v133 + 32) setState:3];
    [*(v133 + 40) _notifyLinkEngineCandidatePairDidConnect:*(v133 + 32)];
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = (&_IDSStunCandidatePairStateStrings)[v33];
      v36 = *(v133 + 48);
      *buf = 136315650;
      v135 = v35;
      v136 = 2080;
      v137 = off_1EB2B43C0;
      v138 = 2112;
      v139 = v36;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.", v37, v38, v39, v40, v41, (&_IDSStunCandidatePairStateStrings)[v33]);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.", v42, v43, v44, v45, (&_IDSStunCandidatePairStateStrings)[v33]);
        }
      }
    }
  }

  v46 = v133;
  if (*(v133 + 350) == 1)
  {
    v47 = +[IDSStunConnectionDataController sharedInstance];
    v48 = [v47 deliveryStatus:*(*(v133 + 40) + 1640)] == 1;

    v46 = v133;
    if (v48)
    {
      [*(v133 + 40) _sendConnectionDataWithRemovedAddressList:0];
      v46 = v133;
    }
  }

  v50 = *(v46 + 40);
  v49 = (v46 + 40);
  v51 = tokenForStunCandidatePair(*(*(v49[3] + 8) + 24), *(*(v49[4] + 8) + 24), *(v50 + 1640));
  v52 = *(*v49 + 224);
  if (!v52 || !v51 || !CFDictionaryGetValue(v52, v51))
  {
    v53 = v133;
    v54 = *(v133 + 56);
    if (v54)
    {
      v132 = v54;
    }

    else
    {
      v132 = [*(v133 + 32) local];
      v53 = v133;
    }

    v55 = [*(v53 + 32) remote];
    v56 = [v55 radioAccessTechnology];

    v57 = [*(v53 + 32) remote];
    v58 = [v57 mtu];

    v125 = *(*(*(v133 + 72) + 8) + 24);
    v59 = [IDSStunCandidate candidateWithType:"candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:" transport:2 radioAccessTechnology:1 mtu:v56 index:v58 address:0xFFFFFFFFLL external:?];
    v60 = v59;
    v61 = v133;
    if (*(v133 + 348))
    {
      [v59 setLinkFlags:?];
      v61 = v133;
    }

    if (*(v61 + 344))
    {
      [v60 setDataSoMask:?];
      v61 = v133;
    }

    v62 = *(*(v61 + 40) + 1464);
    if (v62)
    {
      v63 = [v62 indexOfObject:v60];
      if (v63 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v64 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v135 = v60;
          _os_log_impl(&dword_1A7AD9000, v64, OS_LOG_TYPE_DEFAULT, "failed to find stored remote candidate %@, this should NOT happen.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to find stored remote candidate %@, this should NOT happen.", v65, v66, v67, v68, v69, v60);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to find stored remote candidate %@, this should NOT happen.", v70, v71, v72, v73, v60);
            }
          }
        }
      }

      else
      {
        v84 = [*(*(v133 + 40) + 1464) objectAtIndex:v63];

        v60 = v84;
      }

      v85 = v133;
      if (*(v133 + 348))
      {
        [v60 setLinkFlags:?];
        v85 = v133;
      }

      if (*(v85 + 344))
      {
        [v60 setDataSoMask:?];
        v85 = v133;
      }

      v87 = *(v85 + 40);
      v86 = (v85 + 40);
      v88 = [IDSStunCandidatePair candidatePairWithLocalCandidate:v132 remoteCandidate:v60 sessionID:*(v87 + 1640) delegate:?];
      v89 = GLUtilConnectionDictionaryForNWConnectionInfo(v15, 1);
      v90 = [v88 connections];
      [v90 setObject:v89 forKeyedSubscript:@"udp"];

      v91 = GLUtilConnectionDictionaryForNWConnectionInfo(v27, [*v86 _shouldUseP2PTLE]);
      v92 = [v88 connections];
      [v92 setObject:v91 forKeyedSubscript:@"qpod"];

      [v88 setState:3];
      [*v86 registerP2PCandidatePairWithLinkEngine:v88];
      [*v86 _notifyLinkEngineCandidatePairDidConnect:*(v133 + 32)];
      v93 = [*(v133 + 32) linkUUID];
      [v88 setLinkUUID:v93];

      if ([*(v133 + 32) isNominated])
      {
        [v88 setIsNominated:1];
      }

      [v88 setLastIncomingPacketTime:*(v133 + 336)];
      v94 = v133;
      if (!*(*(v133 + 40) + 224))
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v96 = *(v133 + 40);
        v97 = *(v96 + 224);
        *(v96 + 224) = Mutable;

        v94 = v133;
      }

      v98 = v88;
      if (v98)
      {
        CFDictionarySetValue(*(*(v94 + 40) + 224), v51, v98);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E15FDC();
      }

      v99 = [*(*(v133 + 40) + 224) allValues];
      v100 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = [v99 count];
        *buf = 138412802;
        v135 = v98;
        v136 = 2048;
        v137 = v101;
        v138 = 2112;
        v139 = v99;
        _os_log_impl(&dword_1A7AD9000, v100, OS_LOG_TYPE_DEFAULT, "add valid pair %@, #total:%lu.\n(%@).", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [v99 count];
          _IDSLogTransport(@"GL", @"IDS", @"add valid pair %@, #total:%lu.\n(%@).", v102, v103, v104, v105, v106, v98);
          if (_IDSShouldLog(0))
          {
            [v99 count];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"add valid pair %@, #total:%lu.\n(%@).", v107, v108, v109, v110, v98);
          }
        }
      }

      [*(v133 + 40) _setChannelToCandidatePair:v98 localAddress:objc_msgSend(v132 remoteAddress:"address") channelNumber:{objc_msgSend(v60, "external"), 0}];
      [*(v133 + 40) _notifyCandidatePairConnected:v51];
      v111 = *(v133 + 40);
      v112 = [*(v133 + 32) local];
      v113 = [v111 _interfaceNameForInterfaceIndexIncludingVPN:{objc_msgSend(v112, "index")}];

      v114 = *(*(v133 + 40) + 2160);
      if (v114 && [v114 isEqualToIgnoringCase:v113])
      {
        [*(v133 + 40) _discardNonSlicedP2PCandidatePairs];
      }

      if ([v98 isNominated] && (objc_msgSend(v98, "isActive") & 1) == 0)
      {
        v115 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v135 = v98;
          _os_log_impl(&dword_1A7AD9000, v115, OS_LOG_TYPE_DEFAULT, "candidate pair %@ is already nominated.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"candidate pair %@ is already nominated.", v116, v117, v118, v119, v120, v98);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"candidate pair %@ is already nominated.", v121, v122, v123, v124, v98);
            }
          }
        }

        [*(v133 + 40) _updateDefaultCandidatePair:v98];
        [*(v133 + 40) _notifyDefaultUnderlyingLinkChanged:v51 error:0];
      }

      [*(v133 + 40) _selectBetterDefaultCandidatePair:v98];
    }

    else
    {
      v74 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v74, OS_LOG_TYPE_DEFAULT, "remote candidates list is nil; not processing binding response", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"remote candidates list is nil; not processing binding response", v75, v76, v77, v78, v79, v125);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"remote candidates list is nil; not processing binding response", v80, v81, v82, v83, v126);
          }
        }
      }
    }
  }
}

void sub_1A7BA8744(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A7BA87D0;
  v4[3] = &unk_1E77E0250;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  IDSTransportThreadAddBlock(v4);
}

void sub_1A7BA87D0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _sendConnectionDataWithRemovedAddressList:0];
  [v2 _notifyCandidatePairDisconnected:*(a1 + 40) withReason:13];
}

void sub_1A7BAA35C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x1A7BA9F4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A7BABD60(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7BABC74);
  }

  _Unwind_Resume(a1);
}

void sub_1A7BAC038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak(va);
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(a1);
}

void sub_1A7BAC058(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setupRelayConnectionForNetworkAddressChanges];
    v3 = v2[269];
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = +[IDSFoundationLog GlobalLink];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v2[269];
        v7 = 134217984;
        v8 = v5;
        _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "delay set up new QR link canceled on timer: %p", &v7, 0xCu);
      }

      v6 = v2[269];
      v2[269] = 0;
    }
  }
}

void sub_1A7BAEE40(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7BAEA2CLL);
  }

  _Unwind_Resume(a1);
}

id sub_1A7BAF07C(__CFString *a1, uint64_t a2)
{
  v3 = @"unknown";
  if (a1)
  {
    v3 = a1;
  }

  v4 = v3;
  v5 = v4;
  if (*(a2 + 272) == 1)
  {
    v6 = @".p2p";
  }

  else if (*(a2 + 266))
  {
    v6 = @".vr";
  }

  else
  {
    v6 = @".relay";
  }

  v7 = [(__CFString *)v4 stringByAppendingString:v6];

  return v7;
}

uint64_t sub_1A7BAF110(uint64_t a1, char a2, char a3, void *a4, uint64_t a5)
{
  v9 = a4;
  if (*(a1 + 1304) == 1)
  {
    v10 = *(a5 + 288);
    if (!v10)
    {
      v11 = (a5 + 288);
LABEL_6:
      v12 = sub_1A7BAF07C(*(a1 + 1272), a5);
      v10 = [v9 packetLogIDWithLinkID:a2 delegatedLinkID:a3 protocolStack:v12 connectionID:*(a1 + 1296)];

      *v11 = v10;
    }
  }

  else
  {
    v10 = *(a5 + 296);
    if (!v10)
    {
      v11 = (a5 + 296);
      goto LABEL_6;
    }
  }

  return v10;
}

void sub_1A7BB1CB8(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (*(v2 + 1664) == 2)
  {
    [*(v2 + 224) allValues];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v3 = v40 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v4)
    {
      v5 = *v40;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v40 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v39 + 1) + 8 * i);
          v8 = [v7 sessionID];
          if ([v8 isEqualToString:*(a1[4] + 1512)])
          {
            v9 = [v7 state] == 3;

            if (v9)
            {
              v24 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v26 = _IDSLinkStateStrings[*(a1[4] + 1664)];
                *buf = 136315650;
                v44 = v26;
                v45 = 2112;
                v46 = v7;
                v47 = 2080;
                v48 = off_1EB2B43C0;
                _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "skip TCP/TCP-SSL relay set up, GL state [%s], candidatePair %@ in state: %s", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"skip TCP/TCP-SSL relay set up, GL state [%s], candidatePair %@ in state: %s", v27, v28, v29, v30, v31, _IDSLinkStateStrings[*(a1[4] + 1664)]);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"skip TCP/TCP-SSL relay set up, GL state [%s], candidatePair %@ in state: %s", v32, v33, v34, v35, _IDSLinkStateStrings[*(a1[4] + 1664)]);
                }
              }

              goto LABEL_27;
            }
          }

          else
          {
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = im_primary_queue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A7BB20EC;
    block[3] = &unk_1E77E1248;
    v12 = a1[5];
    v11 = a1[6];
    block[4] = a1[4];
    v38 = v11;
    v37 = v12;
    dispatch_async(v10, block);

LABEL_27:
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = _IDSLinkStateStrings[*(a1[4] + 1664)];
      *buf = 136315138;
      v44 = v14;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "skip TCP/TCP-SSL relay set up, GL state [%s].", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"skip TCP/TCP-SSL relay set up, GL state [%s].", v15, v16, v17, v18, v19, _IDSLinkStateStrings[*(a1[4] + 1664)]);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"skip TCP/TCP-SSL relay set up, GL state [%s].", v20, v21, v22, v23, _IDSLinkStateStrings[*(a1[4] + 1664)]);
        }
      }
    }
  }
}

void sub_1A7BB20EC(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1[4] + 1608);
  if (v1 && *(v1 + 8))
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (&_IDSStunTransportStrings)[a1[6]];
      v5 = a1[4];
      v6 = *(v5 + 1512);
      v7 = *(v5 + 1688);
      *buf = 136315650;
      v22 = v4;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "set up %s session: %@, ids-session-id: %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"set up %s session: %@, ids-session-id: %@.", v8, v9, v10, v11, v12, (&_IDSStunTransportStrings)[a1[6]]);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"set up %s session: %@, ids-session-id: %@.", v13, v14, v15, v16, (&_IDSStunTransportStrings)[a1[6]]);
      }
    }

    v17 = (*(*(*(a1[4] + 1608) + 8) + 16))(*(*(a1[4] + 1608) + 8), *(a1[4] + 1688), 0, a1[5]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A7BB2340;
    v19[3] = &unk_1E77E0250;
    v19[4] = a1[4];
    v20 = v17;
    v18 = v17;
    IDSTransportThreadAddBlock(v19);
  }
}

double sub_1A7BB2340(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 1576);
  if (v2 || (v3 = objc_alloc_init(MEMORY[0x1E695DF70]), v4 = *(a1 + 32), v5 = *(v4 + 1576), *(v4 + 1576) = v3, v5, (v2 = *(*(a1 + 32) + 1576)) != 0))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      CFArrayAppendValue(v2, v6);
    }
  }

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1576);
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "_requestNonUDPRelayAllocation: targeted allocation request IDs: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"GL", @"IDS", @"_requestNonUDPRelayAllocation: targeted allocation request IDs: %@", v10, v11, v12, v13, v14, *(*(a1 + 32) + 1576));
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"_requestNonUDPRelayAllocation: targeted allocation request IDs: %@", v15, v16, v17, v18, *(*(a1 + 32) + 1576));
    }
  }

  return result;
}

void sub_1A7BB3484(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 130);
  if (*(v1 + 130))
  {
    if ((v2 & 0x80) != 0 || *(v1 + 1440) <= v2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *(v1 + 8 * *(v1 + 130) + 232);
      v5 = v4;
      if (v4 && [v4 isQUIC]&& [v5 state]== 4)
      {
        v6 = objc_alloc_init(IDSQRProtoGetMaterialRequest);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = *(a1 + 40);
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v17 + 1) + 8 * i) unsignedLongLongValue];
              v13 = objc_alloc_init(IDSQRProtoMaterialOwner);
              [(IDSQRProtoMaterialOwner *)v13 setParticipantId:v12];
              [(IDSQRProtoMaterialOwner *)v13 addMaterialType:*(a1 + 48)];
              [(IDSQRProtoGetMaterialRequest *)v6 addMaterialOwners:v13];
            }

            v9 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
          }

          while (v9);
        }

        v14 = [IDSQRProtoMessage alloc];
        v22 = @"gl-option-materials-request-key";
        v23 = v6;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v16 = [(IDSQRProtoMessage *)v14 initWithType:27 candidatePair:v5 options:v15];

        [v5 sendQUICGetMaterialRequest:v16];
LABEL_18:

        goto LABEL_21;
      }
    }

    v6 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(&v6->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, &v6->super.super.super, OS_LOG_TYPE_DEFAULT, "requestMaterialsForSession: no QUIC link candidate pair", buf, 2u);
    }

    goto LABEL_18;
  }

  v5 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "requestMaterialsForSession: no active QUIC link", buf, 2u);
  }

LABEL_21:
}

void sub_1A7BBDDBC(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (GLUtilShouldSetRemoteInterfacePreference(*(a1 + 40), *(*(a1 + 32) + 1794)))
  {
    PreferredRemoteInterface = GLUtilGetPreferredRemoteInterface(*(a1 + 44));
  }

  else
  {
    PreferredRemoteInterface = 0;
  }

  PreferredLocalInterface = GLUtilGetPreferredLocalInterface(*(a1 + 44));
  v4 = GLUtilLinkTypeMaskToString(*(a1 + 44));
  v5 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 1512);
    v8 = *(v6 + 1688);
    *buf = 138412802;
    v18 = v4;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "set up new QR link [%@], accepted session %@, ids-session-id %@.", buf, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = v9[201];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      HIDWORD(v14) = PreferredRemoteInterface;
      LOWORD(v14) = 0;
      v12 = (*(v11 + 16))(v11, v9[211], 0, v9[189], 1, 0xFFFFLL, 0, 0, 0, 0, v14, PreferredLocalInterface);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A7BBDF98;
      v15[3] = &unk_1E77E0250;
      v15[4] = *(a1 + 32);
      v16 = v12;
      v13 = v12;
      IDSTransportThreadAddBlock(v15);
    }
  }
}

void sub_1A7BBDF98(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 1576);
  if (v2 || (v3 = objc_alloc_init(MEMORY[0x1E695DF70]), v4 = *(a1 + 32), v5 = *(v4 + 1576), *(v4 + 1576) = v3, v5, (v2 = *(*(a1 + 32) + 1576)) != 0))
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      CFArrayAppendValue(v2, v6);
    }
  }

  v7 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 1576);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "_requestNewTwoWayQRAllocation: targeted allocation request IDs: %@", &v9, 0xCu);
  }
}

void sub_1A7BBE380(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sessionInfoDict];
  [v2 connectWithSessionInfo:v3 interfaceAddress:0 joinSession:1 completionHandler:*(*(a1 + 32) + 80) withLocalInterfacePreference:0];
}

uint64_t sub_1A7BBEB20(uint64_t a1)
{
  [*(a1 + 32) reset];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _updateLinksForSession:v3];
}

void sub_1A7BBEB5C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "_convergeSharedSessions: Try to gather the participant list from the final qr session.", v8, 2u);
    }

    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) sessionID];
    [v5 link:v6 didFinishConvergenceForRelaySessionID:v7];
  }
}

void *sub_1A7BBF2A8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "_convergeSharedSessions: disconnect candidatePairToken %@ for convergence.", &v8, 0xCu);
  }

  result = [*(a1 + 40) isDisconnecting];
  if ((result & 1) == 0)
  {
    v5 = [*(a1 + 40) isQUIC];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    if (v5)
    {
      return [v6 _sendQUICUnallocbindRequest:v7 reason:6];
    }

    else
    {
      return [v6 _sendUnallocbindRequest:v7 stunMessage:0 reason:6];
    }
  }

  return result;
}

void sub_1A7BBF394(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "_convergeSharedSessions: Try to gather the participant list from the final qr session.", v8, 2u);
    }

    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) sessionID];
    [v5 link:v6 didFinishConvergenceForRelaySessionID:v7];
  }
}

void sub_1A7BC0584(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) remote];
  v3 = [v2 external];
  v4 = *(*(a1 + 40) + 1608);
  if (v4 && *(v4 + 8))
  {
    v5 = *(v3 + 4);
    v6 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 40) + 1688);
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "request shared allocation for ids-session-id %@.", buf, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = *(*(v8 + 1608) + 8);
    v10 = *(v8 + 1688);
    v11 = [*(a1 + 32) sessionID];
    v12 = ids_monotonic_time();
    v13 = *(a1 + 48);
    v14 = [*(a1 + 32) relaySessionToken];
    LOWORD(v16) = 0;
    v15 = (*(v9 + 16))(v9, v10, 0, v11, 3, 2, v12, v13, v5, v14, v16, 0);
  }
}

void sub_1A7BC1900(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithUnsignedLongLong:{objc_msgSend(a2, "unsignedLongLongValue")}];
  [v4 setObject:v6 forKey:v7];
}

uint64_t sub_1A7BC1E04(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) candidatePairToken];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "Sending allocbind for candidate pair reconnect: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _sendQUICAllocbindRequest:*(a1 + 48) isRealloc:*(a1 + 56) inResponseToNoSessionState:*(a1 + 57) shouldConnectLinkFirst:*(a1 + 58) isPendingInResponseToNoSessionState:*(a1 + 59)];
}

uint64_t sub_1A7BC56F8(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "session connected message timed out for receiver, disconnect %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"session connected message timed out for receiver, disconnect %@.", v4, v5, v6, v7, v8, *(a1 + 32));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session connected message timed out for receiver, disconnect %@.", v9, v10, v11, v12, *(a1 + 32));
      }
    }
  }

  return [*(a1 + 40) _sendQUICUnallocbindRequest:*(a1 + 48) reason:9];
}

void sub_1A7BC8594(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7BC81D0);
  }

  _Unwind_Resume(a1);
}

void sub_1A7BC85DC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) qrSessionID];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "disconnect session with qrSessionID=%@ for goaway.", &v5, 0xCu);
  }

  [*(a1 + 32) reset];
  v4 = [*(a1 + 32) linkEngine];
  [v4 scheduleUpdate];
}

void sub_1A7BC86C4(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "disconnect session %@ for goaway.", buf, 0xCu);
  }

  [*(a1 + 40) setIsDisconnecting:0];
  v4 = [*(a1 + 40) state];
  if (v4 < 5)
  {
    [*(a1 + 48) _sendQUICUnallocbindRequest:*(a1 + 32) reason:4];
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = (&_IDSStunCandidatePairStateStrings)[v4];
      *buf = 138412546;
      v18 = v6;
      v19 = 2080;
      v20 = v7;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "candidate pair %@ is already disconnecting [%s], ignore.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"candidate pair %@ is already disconnecting [%s], ignore.", v8, v9, v10, v11, v12, *(a1 + 32));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"candidate pair %@ is already disconnecting [%s], ignore.", v13, v14, v15, v16, *(a1 + 32));
      }
    }
  }
}

void sub_1A7BC88C0(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 1608);
  if (v1 && *(v1 + 8))
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = *(*(a1 + 32) + 1688);
      *buf = 67109378;
      v27 = v4;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "request new allocation with type %d for goaway indication (ids-session-id:%@).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"request new allocation with type %d for goaway indication (ids-session-id:%@).", v6, v7, v8, v9, v10, *(a1 + 48));
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"request new allocation with type %d for goaway indication (ids-session-id:%@).", v11, v12, v13, v14, *(a1 + 48));
      }
    }

    v15 = *(a1 + 32);
    v16 = *(*(v15 + 1608) + 8);
    v17 = *(v15 + 1688);
    v18 = [*(a1 + 40) sessionID];
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = *(a1 + 68);
    v22 = *(a1 + 64);
    v23 = [*(a1 + 40) relaySessionToken];
    LOWORD(v25) = 0;
    v24 = (*(v16 + 16))(v16, v17, 0, v18, v19, 4, v20, v21, v22, v23, v25, 0);
  }
}

void sub_1A7BCC1A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) candidatePairToken];
  [v2 _sendQUICAllocbindRequest:v3 isRealloc:*(a1 + 48) inResponseToNoSessionState:*(a1 + 49) shouldConnectLinkFirst:0 isPendingInResponseToNoSessionState:*(a1 + 50)];
}

void sub_1A7BCC20C(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = objc_alloc_init(IDSQRProtoPluginControlRequest);
  [(IDSQRProtoPluginControlRequest *)v6 setPluginName:v5];

  v7 = [v10 objectForKeyedSubscript:@"gl-option-plugin-operation"];
  v8 = v7;
  if (v7)
  {
    -[IDSQRProtoPluginControlRequest setPluginOperation:](v6, "setPluginOperation:", [v7 intValue]);
  }

  v9 = [v10 objectForKeyedSubscript:@"gl-option-plugin-raw-public-key"];
  if (v9)
  {
    [(IDSQRProtoPluginControlRequest *)v6 setPluginClientRawPublicKey:v9];
  }

  [*(a1 + 32) addObject:v6];
}

uint64_t sub_1A7BCC2FC(uint64_t a1)
{
  [*(a1 + 32) _sendProtoMessage:*(a1 + 40) candidatePair:*(a1 + 48)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) transactionID];

  return [v2 addProtoRequest:v3];
}

void *sub_1A7BCC358(uint64_t a1)
{
  v102 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) state];
  if (result > 1)
  {
    return result;
  }

  [*(a1 + 40) _removeProtoRequest:*(a1 + 64) status:0];
  [*(a1 + 32) removeProtoRequest:*(a1 + 64)];
  [*(a1 + 32) setState:2];
  v3 = *(a1 + 40);
  if (*(v3 + 2089) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(v3 + 2240);
    v6 = [v4 linkUniqueName];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v4 == v7)
    {
      v8 = [*(a1 + 32) linkEngine];
      v9 = [*(a1 + 32) linkUniqueName];
      [v8 linkDidFail:v9 errorCode:7 isRecoverable:0 shouldReconnect:0];
    }
  }

  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (&_IDSStunCandidatePairStateStrings)[*(a1 + 72)];
    v12 = *(a1 + 48);
    *buf = 136315650;
    v97 = v11;
    v98 = 2080;
    v99 = off_1EB2B43B8;
    v100 = 2112;
    v101 = v12;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "update state (%s->%s) for %@.", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update state (%s->%s) for %@.", v13, v14, v15, v16, v17, (&_IDSStunCandidatePairStateStrings)[*(a1 + 72)]);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update state (%s->%s) for %@.", v18, v19, v20, v21, (&_IDSStunCandidatePairStateStrings)[*(a1 + 72)]);
      }
    }
  }

  v22 = +[IDSFoundationLog GlobalLink];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 32) candidatePairToken];
    *buf = 138412290;
    v97 = v23;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "Disconnecting QUIC connection %@ after allocbind timed out", buf, 0xCu);
  }

  v24 = *(*(a1 + 40) + 48);
  v25 = [*(a1 + 32) sessionID];
  v26 = [*(a1 + 32) local];
  v27 = [v26 address];
  v28 = [*(a1 + 32) remote];
  [v24 disconnectWithSessionID:v25 localAddress:v27 remoteAddress:objc_msgSend(v28 waitTime:"external") final:{0, 5.0}];

  v29 = *(a1 + 40);
  if (v29[247])
  {
    [*(*(a1 + 40) + 1976) invalidate];
    v29 = *(a1 + 40);
  }

  v30 = [v29 _hasCandidatePairInState:3 anotherState:4 relayCandidatePairsOnly:0 excludeSelfAlloc:0];
  if (((v30 | [*(a1 + 40) _hasConnectingRelayCandidatePair]) & 1) == 0)
  {
    v31 = _Block_copy(*(*(a1 + 40) + 80));
    v32 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(*(a1 + 40) + 1688);
      if (*(a1 + 96))
      {
        v34 = "realloc";
      }

      else
      {
        v34 = "allocbind";
      }

      v35 = *(a1 + 80);
      *buf = 138412802;
      v97 = v33;
      v98 = 2080;
      v99 = v34;
      v100 = 2048;
      v101 = v35;
      _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "Connect to QR server for IDSSessionID: %@, proto message type %s timed out after %lf seconds.", buf, 0x20u);
    }

    v36 = [*(a1 + 32) local];
    v37 = *(a1 + 40);
    v38 = [*(a1 + 32) sessionID];
    v39 = [v37 getAllocBindErrorCodeForSessionID:v38];

    v40 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = (&_IDSStunTransportStrings)[[v36 transport]];
      *buf = 136315394;
      v97 = v41;
      v98 = 1024;
      LODWORD(v99) = 7;
      _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "report session setup failure (%s, %d).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v42 = [v36 transport];
        _IDSLogTransport(@"GL", @"IDS", @"report session setup failure (%s, %d).", v43, v44, v45, v46, v47, (&_IDSStunTransportStrings)[v42]);
        if (_IDSShouldLog(0))
        {
          v48 = [v36 transport];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"report session setup failure (%s, %d).", v49, v50, v51, v52, (&_IDSStunTransportStrings)[v48]);
        }
      }
    }

    GLUtilReportAWDClientTimerEvent(305, 7, *(a1 + 32), *(*(a1 + 40) + 1480), *(*(a1 + 40) + 1444), 0.0);
    v53 = GLUCreateQRClientTimeEvent(305, v39, *(a1 + 32), *(*(a1 + 40) + 1920), 0.0);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    v55 = objc_opt_respondsToSelector();

    if (v55)
    {
      v56 = objc_loadWeakRetained((*(a1 + 40) + 64));
      [v56 link:*(a1 + 40) didAddQREvent:v53];
    }

    v57 = +[IDSFoundationLog GlobalLink];
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [*(a1 + 32) participantID];
      v59 = [*(a1 + 32) relaySessionToken];
      v60 = [v59 base64EncodedStringWithOptions:0];
      *buf = 134218242;
      v97 = v58;
      v98 = 2112;
      v99 = v60;
      _os_log_impl(&dword_1A7AD9000, v57, OS_LOG_TYPE_DEFAULT, "failed participant:[%16llX], token:[%@]", buf, 0x16u);
    }

    if (v31)
    {
      v61 = MEMORY[0x1E696ABC0];
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Allocbind timed out." forKey:*MEMORY[0x1E696A578]];
      v63 = [v61 errorWithDomain:@"GlobalLink" code:7 userInfo:v62];

      v64 = im_primary_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A7BCCE4C;
      block[3] = &unk_1E77DD0F0;
      v95 = v31;
      v65 = v63;
      v94 = v65;
      dispatch_async(v64, block);

      if (*(*(a1 + 40) + 96) == 6)
      {
        v66 = +[IDSFoundationLog GlobalLink];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v66, OS_LOG_TYPE_DEFAULT, "QUIC Allocbind timed out. - gathering ABC with packet capture", buf, 2u);
        }

        [*(a1 + 40) _triggerSymptomsWithType:@"IDSQuickRelayShared" subType:@"FailedToConnect" subTypeContext:@"QUICAllocbindTimedout" duration:15];
      }
    }

    else
    {
      v67 = objc_loadWeakRetained((*(a1 + 40) + 64));
      v68 = objc_opt_respondsToSelector();

      if ((v68 & 1) == 0)
      {
LABEL_40:

        goto LABEL_41;
      }

      v65 = objc_loadWeakRetained((*(a1 + 40) + 64));
      [v65 link:*(a1 + 40) didFailToConnectOverCloud:0 cbuuid:*(*(a1 + 40) + 1640)];
    }

    goto LABEL_40;
  }

LABEL_41:
  if (*(a1 + 97) == 1)
  {
    v69 = ids_monotonic_time();
    [*(a1 + 56) startTime];
    *&v69 = ((v69 - v70) * 1000.0);
    GLUtilReportAWDClientTimerEvent(308, 23, *(a1 + 32), *(*(a1 + 40) + 1480), *(*(a1 + 40) + 1444), *&v69);
    v71 = GLUCreateQRClientTimeEvent(308, 23, *(a1 + 32), *(*(a1 + 40) + 1920), *&v69);
    v72 = objc_loadWeakRetained((*(a1 + 40) + 64));
    v73 = objc_opt_respondsToSelector();

    if (v73)
    {
      v74 = objc_loadWeakRetained((*(a1 + 40) + 64));
      [v74 link:*(a1 + 40) didAddQREvent:v71];
    }

    if ([*(a1 + 40) _isExtIPDiscoveryDone])
    {
      v75 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v75, OS_LOG_TYPE_DEFAULT, "discard self allocate candidate pairs", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"discard self allocate candidate pairs", v76, v77, v78, v79, v80, v91);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"discard self allocate candidate pairs", v81, v82, v83, v84, v92);
        }
      }

      [*(a1 + 40) _discardSelfAllocateCandidatePairs];
    }

    [*(a1 + 40) _sendConnectionDataWithRemovedAddressList:0];
  }

  else
  {
    v85 = [*(a1 + 32) linkMetrics];
    [v85 allocBindRequestTimeOut];

    v86 = *(a1 + 80);
    GLUtilReportAWDStunMessageEventWithType(*(a1 + 88), 7, *(a1 + 32), v86);
    v87 = *(a1 + 80);
    v71 = GLUCreateQRStunMessageEventWithType(*(a1 + 88), 7, *(a1 + 32), 0, v87);
    if (v71)
    {
      v88 = objc_loadWeakRetained((*(a1 + 40) + 64));
      v89 = objc_opt_respondsToSelector();

      if (v89)
      {
        v90 = objc_loadWeakRetained((*(a1 + 40) + 64));
        [v90 link:*(a1 + 40) didAddQREvent:v71];
      }
    }
  }

  return [*(a1 + 40) _reportAWDAllocateTime];
}

void sub_1A7BCDA2C(uint64_t a1)
{
  if ([*(a1 + 32) state] != 6)
  {
    v2 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "unallocbind request timed out.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"unallocbind request timed out.", v3, v4, v5, v6, v7, *v32);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"unallocbind request timed out.", v8, v9, v10, v11, *v32);
        }
      }
    }

    [*(a1 + 40) _removeProtoRequest:*(a1 + 48) status:0];
    [*(a1 + 32) removeProtoRequest:*(a1 + 48)];
    v12 = *(*(a1 + 40) + 1352);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 48)];
    [v12 removeObjectForKey:v13];

    [*(a1 + 40) _notifyCandidatePairDisconnected:*(a1 + 32) withReason:*(a1 + 60)];
    v14 = *(a1 + 40);
    if (v14[1844] == 1)
    {
      [v14 _destroyVirtualRelayLinksForCandidatePair:*(a1 + 32) withReason:*(a1 + 60)];
      v14 = *(a1 + 40);
    }

    v15 = [v14 _hasCandidatePairInState:3 anotherState:4 relayCandidatePairsOnly:0 excludeSelfAlloc:0];
    v16 = *(a1 + 40);
    if (*(v16 + 1664) == 5)
    {
      [v16 _discardCandidatePairsWithOption:0 isReinitiating:0];
      if ((v15 & 1) == 0)
      {
        [*(a1 + 40) _notifyLinkDisconnectedWithError:8 reason:*(a1 + 60)];
      }
    }

    else if ((v15 & 1) == 0 && [*(v16 + 1640) isEqualToString:@"12345678-7654-DADA-DADA-DADADADADADA"])
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "no more underlying link is connected.", v32, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"no more underlying link is connected.", v18, v19, v20, v21, v22, *v32);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"no more underlying link is connected.", v23, v24, v25, v26, *v32);
          }
        }
      }

      [*(a1 + 40) disconnectWithCompletionHandler:0 isReinitiating:0];
    }

    v27 = stunMessageTypeFromProtoMessageType(*(a1 + 56), 0);
    GLUtilReportAWDStunMessageEventWithType(v27, 8, *(a1 + 32), 0.0);
    v28 = GLUCreateQRStunMessageEventWithType(v27, 8, *(a1 + 32), 0, 0.0);
    if (v28)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        v31 = objc_loadWeakRetained((*(a1 + 40) + 64));
        [v31 link:*(a1 + 40) didAddQREvent:v28];
      }
    }
  }
}

void sub_1A7BD0044()
{
  v0 = qword_1EB2B89F0;
  qword_1EB2B89F0 = &unk_1F1B20B10;

  v1 = [MEMORY[0x1E69A60F0] sharedInstance];
  byte_1EB2B89F8 = [v1 isInternalInstall];
}

uint64_t IDSQRProtoPluginControlIndicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          v38 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v38 & 0x7F) << v27;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_56:
        *(a1 + 24) = v33;
      }

      else
      {
        if (v13 == 15)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v39 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v39 & 0x7F) << v21;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_52:
          v35 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            v40 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v40 & 0x7F) << v14;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_60:
          v35 = 8;
        }

        *(a1 + v35) = v20;
      }

LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoAllocBindStaleLinkReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        *(a1 + 16) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoSessionInfoRequestReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v69) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v69 & 0x7F) << v5;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          a1[68] |= 0x20u;
          while (1)
          {
            LOBYTE(v69) = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v69 & 0x7F) << v48;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              LOBYTE(v54) = 0;
              goto LABEL_107;
            }
          }

          v54 = (v50 != 0) & ~[a2 hasError];
LABEL_107:
          a1[64] = v54;
          goto LABEL_125;
        }

        if (v13 == 4)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          a1[68] |= 8u;
          while (1)
          {
            LOBYTE(v69) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v69 & 0x7F) << v22;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_119;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_119:
          v61 = 44;
LABEL_124:
          *&a1[v61] = v21;
          goto LABEL_125;
        }

LABEL_100:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_125;
      }

      if (v13 == 1)
      {
        if ((v12 & 7) == 2)
        {
          v69 = 0xAAAAAAAAAAAAAAAALL;
          v70 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v35 = [a2 position];
            if (v35 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              v71 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v71 & 0x7F) << v36;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                goto LABEL_72;
              }
            }

            [a2 hasError];
LABEL_72:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
          while (1)
          {
            LOBYTE(v69) = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v69 & 0x7F) << v63;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              goto LABEL_138;
            }
          }

          [a2 hasError];
LABEL_138:
          PBRepeatedUInt32Add();
        }

        goto LABEL_125;
      }

      if (v13 != 2)
      {
        goto LABEL_100;
      }

      v14 = objc_alloc_init(IDSQRProtoSubscribedStream);
      [a1 addSubscribedStreams:v14];
      v69 = 0xAAAAAAAAAAAAAAAALL;
      v70 = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !IDSQRProtoSubscribedStreamReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_125:
      v62 = [a2 position];
      if (v62 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 7)
    {
      if (v13 == 8)
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        a1[68] |= 1u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v69 & 0x7F) << v55;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_111;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v57;
        }

LABEL_111:
        v61 = 32;
        goto LABEL_124;
      }

      if (v13 == 16)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        a1[68] |= 2u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v69 & 0x7F) << v28;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_123;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v30;
        }

LABEL_123:
        v61 = 36;
        goto LABEL_124;
      }
    }

    else
    {
      if (v13 == 6)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        a1[68] |= 4u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v69 & 0x7F) << v42;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v44;
        }

LABEL_105:
        v61 = 40;
        goto LABEL_124;
      }

      if (v13 == 7)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        a1[68] |= 0x10u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v69 & 0x7F) << v15;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_115:
        v61 = 48;
        goto LABEL_124;
      }
    }

    goto LABEL_100;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPutMaterialRequestReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(IDSQRProtoMaterial);
        [a1 addMaterials:v13];
        v16[0] = 0xAAAAAAAAAAAAAAAALL;
        v16[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7BD5728()
{
  v0 = objc_alloc_init(IDSPushHandler);
  v1 = qword_1ED5DF718;
  qword_1ED5DF718 = v0;
}

uint64_t sub_1A7BD5834()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1EB2B85C8;
  qword_1EB2B85C8 = v0;

  return pthread_mutex_init(&stru_1EB2BBCE0, 0);
}

uint64_t (*sub_1A7BD5F4C())(void, void, void, void)
{
  result = MEMORY[0x1AC5631C0]("PLLogRegisteredEvent", @"PowerLog");
  off_1EB2BBD20 = result;
  return result;
}

double sub_1A7BD6CD4(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, a1[4]);
  }

  [a1[4] handler:a1[5] pushTokenChanged:a1[6]];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, a1[4]);
    }
  }

  return result;
}

uint64_t sub_1A7BD7500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double sub_1A7BD7518(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, a1[4]);
  }

  [a1[4] handler:a1[5] pushTokenChanged:*(*(a1[6] + 8) + 40)];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, a1[4]);
    }
  }

  return result;
}

void sub_1A7BD7838(uint64_t a1, void *a2)
{
  if (([a2 containsObject:*(a1 + 32)] & 1) == 0)
  {
    v3 = [*(a1 + 40) apsConnection];
    [v3 subscribeToChannel:*(a1 + 32) forTopic:*(a1 + 48)];
  }
}

double sub_1A7BD7DFC(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, a1[4]);
  }

  [a1[4] handler:a1[5] pushTokenChanged:a1[6]];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, a1[4]);
    }
  }

  return result;
}

void sub_1A7BD8660(uint64_t a1, void *a2, int a3, void *a4)
{
  v214 = *MEMORY[0x1E69E9840];
  v145 = a2;
  v141 = a4;
  if (!v141 || !a3)
  {
    [*(*(a1 + 32) + 48) lock];
    if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 40), "containsObject:", *(a1 + 40)))
    {
      v9 = 1;
    }

    else
    {
      v9 = [*(*(a1 + 32) + 32) containsObject:*(a1 + 40)];
    }

    [*(*(a1 + 32) + 48) unlock];
    v10 = objc_alloc_init(MEMORY[0x1E69A6100]);
    [v10 setContext:*(a1 + 48)];
    v146 = v10;
    if (v9)
    {
      v11 = objc_opt_class();
      v142 = sub_1A7B0A150(v11, v145, @"c");
      v12 = objc_opt_class();
      v144 = sub_1A7B0A150(v12, v145, @"sP");
      if (!v142)
      {
        v39 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 56);
          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "Received message with no command: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Received message with no command: %@", v41, v42, v43, v44, *(a1 + 56));
        }

        state.opaque[0] = _os_activity_create(&dword_1A7AD9000, "Dropping push without command", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        memset(buf, 170, 16);
        os_activity_scope_enter(state.opaque[0], buf);
        os_activity_scope_leave(buf);
        cut_arc_os_release();

        goto LABEL_144;
      }

      if ([v142 integerValue] == 160)
      {
        v200 = _os_activity_create(&dword_1A7AD9000, "Incoming storage pending push", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
        state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
        os_activity_scope_enter(v200, &state);
        v13 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v142;
          _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Received offline pending message for topic %@ with command %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Received offline pending message for topic %@ with command %@", v15, v16, v17, v18, *(a1 + 40));
        }

        [*(*(a1 + 32) + 48) lock];
        if ([*(*(a1 + 32) + 16) count])
        {
          v19 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v20 = *(*(a1 + 32) + 16);
          v21 = [v20 countByEnumeratingWithState:&v195 objects:v208 count:16];
          if (v21)
          {
            v22 = *v196;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v196 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v195 + 1) + 8 * i);
                if ([*(a1 + 32) _validateHandler:v24 withSelector:sel_handler_receivedOfflineMessagePendingForTopic_messageContext_ topic:*(a1 + 40) command:0])
                {
                  v25 = [*(*(a1 + 32) + 16) objectForKey:v24];
                  [v19 setObject:v25 forKey:v24];
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v195 objects:v208 count:16];
            }

            while (v21);
          }
        }

        else
        {
          v90 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            v91 = NSStringFromSelector(sel_handler_receivedOfflineMessagePendingForTopic_messageContext_);
            v92 = *(a1 + 40);
            v93 = *(a1 + 48);
            *buf = 138413058;
            *&buf[4] = v91;
            *&buf[12] = 2112;
            *&buf[14] = v92;
            v210 = 2112;
            v211 = 0;
            v212 = 2112;
            v213 = v93;
            _os_log_impl(&dword_1A7AD9000, v90, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", buf, 0x2Au);
          }

          if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog(0))
          {
            v19 = 0;
            goto LABEL_106;
          }

          v20 = NSStringFromSelector(sel_handler_receivedOfflineMessagePendingForTopic_messageContext_);
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", v94, v95, v96, v97, v20);
          v19 = 0;
        }

LABEL_106:
        [*(*(a1 + 32) + 48) unlock];
        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        v98 = v19;
        v99 = [v98 countByEnumeratingWithState:&v191 objects:v207 count:16];
        if (v99)
        {
          v100 = *v192;
          do
          {
            for (j = 0; j != v99; ++j)
            {
              if (*v192 != v100)
              {
                objc_enumerationMutation(v98);
              }

              v102 = *(*(&v191 + 1) + 8 * j);
              v103 = [*(*(a1 + 32) + 16) objectForKey:v102];
              v104 = [v103 queue];
              v187[0] = MEMORY[0x1E69E9820];
              v187[1] = 3221225472;
              v187[2] = sub_1A7BD9F50;
              v187[3] = &unk_1E77E1580;
              v105 = *(a1 + 32);
              v106 = *(a1 + 40);
              v187[4] = v102;
              v187[5] = v105;
              v188 = v106;
              v189 = v146;
              v190 = *(a1 + 48);
              dispatch_async(v104, v187);
            }

            v99 = [v98 countByEnumeratingWithState:&v191 objects:v207 count:16];
          }

          while (v99);
        }

        [v98 count];
        os_activity_scope_leave(&state);
        cut_arc_os_release();

LABEL_144:
LABEL_145:
        v8 = v146;
        goto LABEL_146;
      }

      if ([v142 integerValue] == 165)
      {
        v200 = _os_activity_create(&dword_1A7AD9000, "Incoming storage empty push", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
        state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
        os_activity_scope_enter(v200, &state);
        v53 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = *(a1 + 40);
          *buf = 138412546;
          *&buf[4] = v54;
          *&buf[12] = 2112;
          *&buf[14] = v142;
          _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "Received offline storage empty message for topic %@ with command %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Received offline storage empty message for topic %@ with command %@", v55, v56, v57, v58, *(a1 + 40));
        }

        v59 = objc_opt_class();
        v143 = sub_1A7B0A150(v59, v145, @"scU");
        [*(*(a1 + 32) + 48) lock];
        if ([*(*(a1 + 32) + 16) count])
        {
          v60 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v61 = *(*(a1 + 32) + 16);
          v62 = [v61 countByEnumeratingWithState:&v183 objects:v206 count:16];
          if (v62)
          {
            v63 = *v184;
            do
            {
              for (k = 0; k != v62; ++k)
              {
                if (*v184 != v63)
                {
                  objc_enumerationMutation(v61);
                }

                v65 = *(*(&v183 + 1) + 8 * k);
                if ([*(a1 + 32) _validateHandler:v65 withSelector:sel_handler_receivedNoStorageResponseForTopic_identifier_messageContext_ topic:*(a1 + 40) command:0])
                {
                  v66 = [*(*(a1 + 32) + 16) objectForKey:v65];
                  [v60 setObject:v66 forKey:v65];
                }
              }

              v62 = [v61 countByEnumeratingWithState:&v183 objects:v206 count:16];
            }

            while (v62);
          }
        }

        else
        {
          v107 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = NSStringFromSelector(sel_handler_receivedNoStorageResponseForTopic_identifier_messageContext_);
            v109 = *(a1 + 40);
            v110 = *(a1 + 48);
            *buf = 138413058;
            *&buf[4] = v108;
            *&buf[12] = 2112;
            *&buf[14] = v109;
            v210 = 2112;
            v211 = 0;
            v212 = 2112;
            v213 = v110;
            _os_log_impl(&dword_1A7AD9000, v107, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", buf, 0x2Au);
          }

          if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog(0))
          {
            v60 = 0;
            goto LABEL_125;
          }

          v61 = NSStringFromSelector(sel_handler_receivedNoStorageResponseForTopic_identifier_messageContext_);
          _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", v111, v112, v113, v114, v61);
          v60 = 0;
        }

LABEL_125:
        [*(*(a1 + 32) + 48) unlock];
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v123 = v60;
        v124 = [v123 countByEnumeratingWithState:&v179 objects:v205 count:16];
        if (v124)
        {
          v125 = *v180;
          do
          {
            for (m = 0; m != v124; ++m)
            {
              if (*v180 != v125)
              {
                objc_enumerationMutation(v123);
              }

              v127 = *(*(&v179 + 1) + 8 * m);
              v128 = [*(*(a1 + 32) + 16) objectForKey:v127];
              v129 = [v128 queue];
              v174[0] = MEMORY[0x1E69E9820];
              v174[1] = 3221225472;
              v174[2] = sub_1A7BDA11C;
              v174[3] = &unk_1E77E15A8;
              v130 = *(a1 + 32);
              v131 = *(a1 + 40);
              v174[4] = v127;
              v174[5] = v130;
              v175 = v131;
              v176 = v143;
              v177 = v146;
              v178 = *(a1 + 48);
              dispatch_async(v129, v174);
            }

            v124 = [v123 countByEnumeratingWithState:&v179 objects:v205 count:16];
          }

          while (v124);
        }

        [v123 count];
        os_activity_scope_leave(&state);
        cut_arc_os_release();

        goto LABEL_144;
      }

      v200 = _os_activity_create(&dword_1A7AD9000, "Incoming message push", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
      state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
      os_activity_scope_enter(v200, &state);
      v75 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v76;
        *&buf[12] = 2112;
        *&buf[14] = v142;
        _os_log_impl(&dword_1A7AD9000, v75, OS_LOG_TYPE_DEFAULT, "Received message for topic %@ with command %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Received message for topic %@ with command %@", v77, v78, v79, v80, *(a1 + 40));
      }

      if (_os_feature_enabled_impl())
      {
        v81 = [*(a1 + 48) topic];
        v82 = [v81 isEqualToString:@"com.apple.private.alloy.facetime.multi"];

        if (v82)
        {
          [*(a1 + 48) identifier];
          kdebug_trace();
        }
      }

      [*(*(a1 + 32) + 48) lock];
      if ([*(*(a1 + 32) + 16) count])
      {
        v83 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        v172 = 0u;
        v173 = 0u;
        v170 = 0u;
        v171 = 0u;
        v84 = *(*(a1 + 32) + 16);
        v85 = [v84 countByEnumeratingWithState:&v170 objects:v204 count:16];
        if (v85)
        {
          v86 = *v171;
          do
          {
            for (n = 0; n != v85; ++n)
            {
              if (*v171 != v86)
              {
                objc_enumerationMutation(v84);
              }

              v88 = *(*(&v170 + 1) + 8 * n);
              if ([*(a1 + 32) _validateHandler:v88 withSelector:sel_handler_didReceiveMessage_forTopic_fromID_messageContext_ topic:*(a1 + 40) command:v142])
              {
                v89 = [*(*(a1 + 32) + 16) objectForKey:v88];
                [v83 setObject:v89 forKey:v88];
              }
            }

            v85 = [v84 countByEnumeratingWithState:&v170 objects:v204 count:16];
          }

          while (v85);
        }
      }

      else
      {
        v115 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          v116 = NSStringFromSelector(sel_handler_didReceiveMessage_forTopic_fromID_messageContext_);
          v117 = *(a1 + 40);
          v118 = *(a1 + 48);
          *buf = 138413058;
          *&buf[4] = v116;
          *&buf[12] = 2112;
          *&buf[14] = v117;
          v210 = 2112;
          v211 = v142;
          v212 = 2112;
          v213 = v118;
          _os_log_impl(&dword_1A7AD9000, v115, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", buf, 0x2Au);
        }

        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog(0))
        {
          v83 = 0;
          goto LABEL_134;
        }

        v84 = NSStringFromSelector(sel_handler_didReceiveMessage_forTopic_fromID_messageContext_);
        _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", v119, v120, v121, v122, v84);
        v83 = 0;
      }

LABEL_134:
      [*(*(a1 + 32) + 48) unlock];
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v132 = v83;
      v133 = [v132 countByEnumeratingWithState:&v166 objects:v203 count:16];
      if (v133)
      {
        v134 = *v167;
        do
        {
          for (ii = 0; ii != v133; ++ii)
          {
            if (*v167 != v134)
            {
              objc_enumerationMutation(v132);
            }

            v136 = *(*(&v166 + 1) + 8 * ii);
            v137 = [*(*(a1 + 32) + 16) objectForKey:v136];
            v138 = [v137 queue];
            v160[0] = MEMORY[0x1E69E9820];
            v160[1] = 3221225472;
            v160[2] = sub_1A7BDA2EC;
            v160[3] = &unk_1E77E15D0;
            v139 = *(a1 + 32);
            v160[4] = v136;
            v160[5] = v139;
            v161 = v145;
            v162 = *(a1 + 40);
            v163 = v144;
            v164 = v146;
            v165 = *(a1 + 48);
            dispatch_async(v138, v160);
          }

          v133 = [v132 countByEnumeratingWithState:&v166 objects:v203 count:16];
        }

        while (v133);
      }

      v140 = [v132 count] == 0;
      if (!v140)
      {
        [*(a1 + 32) _powerLogIncomingMessage:v145 command:v142 topic:*(a1 + 40)];
      }

      os_activity_scope_leave(&state);
      cut_arc_os_release();

      goto LABEL_144;
    }

    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 40);
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "Recieved message for unknown topic: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"Recieved message for unknown topic: %@", v28, v29, v30, v31, *(a1 + 40));
    }

    v200 = _os_activity_create(&dword_1A7AD9000, "Dropping push with unknown command", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v200, &state);
    [*(*(a1 + 32) + 48) lock];
    if ([*(*(a1 + 32) + 16) count])
    {
      v32 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v33 = *(*(a1 + 32) + 16);
      v34 = [v33 countByEnumeratingWithState:&v156 objects:v202 count:16];
      if (v34)
      {
        v35 = *v157;
        do
        {
          for (jj = 0; jj != v34; ++jj)
          {
            if (*v157 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v156 + 1) + 8 * jj);
            if ([*(a1 + 32) _validateHandler:v37 withSelector:sel_handler_didReceiveMessage_forUnknownTopic_messageContext_ topic:*(a1 + 40) command:0])
            {
              v38 = [*(*(a1 + 32) + 16) objectForKey:v37];
              [v32 setObject:v38 forKey:v37];
            }
          }

          v34 = [v33 countByEnumeratingWithState:&v156 objects:v202 count:16];
        }

        while (v34);
      }
    }

    else
    {
      v45 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = NSStringFromSelector(sel_handler_didReceiveMessage_forUnknownTopic_messageContext_);
        v47 = *(a1 + 40);
        v48 = *(a1 + 48);
        *buf = 138413058;
        *&buf[4] = v46;
        *&buf[12] = 2112;
        *&buf[14] = v47;
        v210 = 2112;
        v211 = 0;
        v212 = 2112;
        v213 = v48;
        _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", buf, 0x2Au);
      }

      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog(0))
      {
        v32 = 0;
        goto LABEL_73;
      }

      v33 = NSStringFromSelector(sel_handler_didReceiveMessage_forUnknownTopic_messageContext_);
      _IDSLogV(0, @"IDSFoundation", @"IDSPushHandler", @"No incoming push handler for selector: %@    topic: %@   command: %@   context: %@", v49, v50, v51, v52, v33);
      v32 = 0;
    }

LABEL_73:
    [*(*(a1 + 32) + 48) unlock];
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v67 = v32;
    v68 = [v67 countByEnumeratingWithState:&v152 objects:v201 count:16];
    if (v68)
    {
      v69 = *v153;
      do
      {
        for (kk = 0; kk != v68; ++kk)
        {
          if (*v153 != v69)
          {
            objc_enumerationMutation(v67);
          }

          v71 = *(*(&v152 + 1) + 8 * kk);
          v72 = [*(*(a1 + 32) + 16) objectForKey:v71];
          v73 = [v72 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1A7BDA4BC;
          block[3] = &unk_1E77E15A8;
          v74 = *(a1 + 32);
          block[4] = v71;
          block[5] = v74;
          v148 = v145;
          v149 = *(a1 + 40);
          v150 = v146;
          v151 = *(a1 + 48);
          dispatch_async(v73, block);
        }

        v68 = [v67 countByEnumeratingWithState:&v152 objects:v201 count:16];
      }

      while (v68);
    }

    [v67 count];
    os_activity_scope_leave(&state);
    cut_arc_os_release();

    goto LABEL_145;
  }

  v7 = [MEMORY[0x1E69A60E0] daemon];
  v8 = v7;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E18408();
    v8 = v7;
  }

LABEL_146:
}

double sub_1A7BD9F50(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, a1[4]);
  }

  [a1[4] handler:a1[5] receivedOfflineMessagePendingForTopic:a1[6] messageContext:a1[7]];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, a1[4]);
    }
  }

  return result;
}

double sub_1A7BDA11C(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, a1[4]);
  }

  [a1[4] handler:a1[5] receivedNoStorageResponseForTopic:a1[6] identifier:a1[7] messageContext:a1[8]];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, a1[4]);
    }
  }

  return result;
}

double sub_1A7BDA2EC(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, a1[4]);
  }

  [a1[4] handler:a1[5] didReceiveMessage:a1[6] forTopic:a1[7] fromID:a1[8] messageContext:a1[9]];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, a1[4]);
    }
  }

  return result;
}

double sub_1A7BDA4BC(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, a1[4]);
  }

  [a1[4] handler:a1[5] didReceiveMessage:a1[6] forUnknownTopic:a1[7] messageContext:a1[8]];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, a1[4]);
    }
  }

  return result;
}

double sub_1A7BDAC58(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEBUG, "Making handler call to %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(1))
  {
    _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Making handler call to %@", v4, v5, v6, v7, *(a1 + 32));
  }

  [*(a1 + 32) handler:*(a1 + 40) isConnectedChanged:*(a1 + 48)];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Call to %@ completed", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(1))
    {
      _IDSLogV(1, @"IDSFoundation", @"IDSPushHandler", @"Call to %@ completed", v11, v12, v13, v14, *(a1 + 32));
    }
  }

  return result;
}

id sub_1A7BDB8F4(uint64_t a1)
{
  if (qword_1EB2BBD38 != -1)
  {
    sub_1A7E18470();
  }

  v2 = qword_1EB2BBD30;

  return v2;
}

void sub_1A7BDB938()
{
  v0 = MEMORY[0x1AC5631C0]("CKRecordZoneDefaultName", @"CloudKit");
  if (v0)
  {
    v1 = *v0;

    objc_storeStrong(&qword_1EB2BBD30, v1);
  }
}

id sub_1A7BDB988(uint64_t a1)
{
  if (qword_1EB2BBD48 != -1)
  {
    sub_1A7E18484();
  }

  v2 = qword_1EB2BBD40;

  return v2;
}

void sub_1A7BDB9CC()
{
  v0 = MEMORY[0x1AC5631C0]("CKOwnerDefaultName", @"CloudKit");
  if (v0)
  {
    v1 = *v0;

    objc_storeStrong(&qword_1EB2BBD40, v1);
  }
}

id sub_1A7BDBA1C(uint64_t a1)
{
  if (qword_1EB2BBD58 != -1)
  {
    sub_1A7E18498();
  }

  v2 = qword_1EB2BBD50;

  return v2;
}

void sub_1A7BDBA60()
{
  v0 = MEMORY[0x1AC5631C0]("CKErrorDomain", @"CloudKit");
  if (v0)
  {
    v1 = *v0;

    objc_storeStrong(&qword_1EB2BBD50, v1);
  }
}

uint64_t sub_1A7BDBAF4()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBD60 = result;
  return result;
}

uint64_t sub_1A7BDBC34()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBD70 = result;
  return result;
}

uint64_t sub_1A7BDBCD0()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBD80 = result;
  return result;
}

uint64_t sub_1A7BDBDC0()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBD90 = result;
  return result;
}

uint64_t sub_1A7BDBE5C()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBDA0 = result;
  return result;
}

uint64_t sub_1A7BDBEF8()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBDB0 = result;
  return result;
}

uint64_t sub_1A7BDBF94()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBDC0 = result;
  return result;
}

uint64_t sub_1A7BDC080()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBDD0 = result;
  return result;
}

uint64_t sub_1A7BDC1A8()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBDE0 = result;
  return result;
}

uint64_t sub_1A7BDC298()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBDF0 = result;
  return result;
}

uint64_t sub_1A7BDC348()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE00 = result;
  return result;
}

uint64_t sub_1A7BDC3E4()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE10 = result;
  return result;
}

uint64_t sub_1A7BDC4F4()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE20 = result;
  return result;
}

uint64_t sub_1A7BDC6CC()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE30 = result;
  return result;
}

uint64_t sub_1A7BDC884()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE40 = result;
  return result;
}

uint64_t sub_1A7BDC9FC()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE50 = result;
  return result;
}

uint64_t sub_1A7BDCAC8()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE60 = result;
  return result;
}

uint64_t sub_1A7BDCBB8()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE70 = result;
  return result;
}

uint64_t sub_1A7BDCC78()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE80 = result;
  return result;
}

uint64_t sub_1A7BDCD40()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBE90 = result;
  return result;
}

uint64_t sub_1A7BDCE0C()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBEA0 = result;
  return result;
}

uint64_t sub_1A7BDCED8()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBEB0 = result;
  return result;
}

uint64_t sub_1A7BDCFA4()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBEC0 = result;
  return result;
}

uint64_t sub_1A7BDD040()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBED0 = result;
  return result;
}

uint64_t (*sub_1A7BDDDD4())(void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMWCreateSessionSeed", @"MessageProtection");
  off_1EB2BBEE0 = result;
  return result;
}

uint64_t (*sub_1A7BDDE04())(void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMWCreateSessionSalt", @"MessageProtection");
  off_1EB2BBEF0 = result;
  return result;
}

void sub_1A7BDE684()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = qword_1EB2BBF10;
  qword_1EB2BBF10 = v0;
}

void sub_1A7BE0134(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7BDFF84);
  }

  _Unwind_Resume(a1);
}

id IDSLinkHBHDeriveHKDFSha256Keys(void *a1, void *a2, unint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  *&v22[16] = -21846;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v10;
  *v22 = v10;
  v11 = [v7 length];
  v12 = [v9 length];
  v13 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:64];
  if (v11 != 20 || v12 != 12)
  {
    v15 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1880C();
    }

    goto LABEL_16;
  }

  qmemcpy(&v21, "QR-HBH-KDF", 10);
  v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  v15 = v14;
  if (!v14)
  {
    v17 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E187D0();
    }

    goto LABEL_16;
  }

  [v14 getUUIDBytes:&v21 | 0xA];
  *&v22[10] = bswap64(a3);
  [v9 bytes];
  if (CCKDFParametersCreateHkdf())
  {
    v16 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E186F0();
    }

LABEL_15:

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  [v7 bytes];
  [v13 mutableBytes];
  [v13 length];
  v18 = CCDeriveKey();
  CCKDFParametersDestroy();
  if (v18)
  {
    v16 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18760();
    }

    goto LABEL_15;
  }

  v19 = v13;
LABEL_17:

  return v19;
}

id IDSHBHEncryptDataWithKey(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 && v5)
  {
    v7 = objc_alloc_init(PSIDSLinkHBHEncryptedPayload);
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:12];
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0xCuLL, [v8 mutableBytes]))
    {
      v9 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E188D0();
      }

      v10 = 0;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a2];
      v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:16];
      [v6 bytes];
      [v6 length];
      [v8 bytes];
      v12 = [v9 mutableBytes];
      v15 = [v11 mutableBytes];
      if (CCCryptorGCMOneshotEncrypt())
      {
        v13 = [IDSFoundationLog RealTimeEncryptionController:a2];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E18940();
        }

        v10 = 0;
      }

      else
      {
        [(PSIDSLinkHBHEncryptedPayload *)v7 setInitializationVector:v8, a2, v12, v15, 16];
        [(PSIDSLinkHBHEncryptedPayload *)v7 setCipherText:v9];
        [(PSIDSLinkHBHEncryptedPayload *)v7 setAuthenticationTag:v11];
        v10 = [(PSIDSLinkHBHEncryptedPayload *)v7 data];
      }
    }
  }

  else
  {
    v7 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18848(v6, a1, &v7->super.super);
    }

    v10 = 0;
  }

  return v10;
}

NSObject *IDSHBHDecryptDataWithKey(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a1 length:a2];
    v8 = [[PSIDSLinkHBHEncryptedPayload alloc] initWithData:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [(PSIDSLinkHBHEncryptedPayload *)v8 initializationVector];
      v11 = [v10 length];

      if (v11 == 12)
      {
        v12 = [(PSIDSLinkHBHEncryptedPayload *)v9 authenticationTag];
        v13 = [v12 length];

        if (v13 == 16)
        {
          v14 = [(PSIDSLinkHBHEncryptedPayload *)v9 cipherText];
          v15 = [v14 length];

          v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v15];
          v17 = [(PSIDSLinkHBHEncryptedPayload *)v9 initializationVector];
          [v17 bytes];

          v18 = [(PSIDSLinkHBHEncryptedPayload *)v9 cipherText];
          [v18 bytes];

          v19 = [(PSIDSLinkHBHEncryptedPayload *)v9 authenticationTag];
          v20 = [v19 bytes];

          [v6 bytes];
          [v6 length];
          v24 = [v16 mutableBytes];
          if (!CCCryptorGCMOneshotDecrypt())
          {
            v16 = v16;
            v22 = v16;
            goto LABEL_20;
          }

          v21 = [IDSFoundationLog RealTimeEncryptionController:v15];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E18B0C();
          }
        }

        else
        {
          v16 = +[IDSFoundationLog RealTimeEncryptionController];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E18A7C(v9);
          }
        }
      }

      else
      {
        v16 = +[IDSFoundationLog RealTimeEncryptionController];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E189EC(v9);
        }
      }
    }

    else
    {
      v16 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E18B7C();
      }
    }

    v22 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A7E189B0();
  }

  v22 = 0;
LABEL_21:

  return v22;
}

void sub_1A7BE1A9C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void *IDSOSChannelManagerCreate(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v2)
  {
    if (!os_channel_attr_create())
    {
LABEL_15:
      IDSOSChannelManagerDestroy(v2);
      return 0;
    }

    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      v5 = "os_channel_attr_set";
      while (!os_channel_attr_set())
      {
        ++v4;
        v3 += 16;
        if (v4 >= *(a1 + 8))
        {
          goto LABEL_7;
        }
      }

      goto LABEL_14;
    }

LABEL_7:
    if (*(a1 + 16) && *(a1 + 24) && os_channel_attr_set_key())
    {
      v5 = "os_channel_attr_set_key";
    }

    else
    {
      extended = os_channel_create_extended();
      *v2 = extended;
      if (extended)
      {
        os_channel_attr_destroy();
        return v2;
      }

      v5 = "os_channel_create_extended";
    }

LABEL_14:
    perror(v5);
    os_channel_attr_destroy();
    goto LABEL_15;
  }

  return v2;
}

void IDSOSChannelManagerDestroy(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      os_channel_destroy();
    }

    free(a1);
  }
}

uint64_t sub_1A7BE5614()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
  v1 = [v0 BOOLForKey:@"IDSClearStateOnLaunch"];

  return v1;
}

void sub_1A7BE5664(uint64_t a1, uint64_t a2, int a3)
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
  v5 = v4;
  if (a3)
  {
    [v4 setBool:1 forKey:@"IDSClearStateOnLaunch"];
  }

  else
  {
    [v4 removeObjectForKey:@"IDSClearStateOnLaunch"];
  }
}

void sub_1A7BE56E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (_IDSRunningInDaemon(v5, v3))
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
    [v4 setObject:v5 forKey:@"FTMessageDeliveryServerTimestamp"];
  }
}

void sub_1A7BE5758(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (_IDSRunningInDaemon(v5, v3))
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
    [v4 setObject:v5 forKey:@"FTMessageDeliveryServerTimestampReceivedDate"];
  }
}

id sub_1A7BE57D0()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ids"];
  v1 = [v0 objectForKey:@"ComingOnlineEnabledDiceRoll"];

  return v1;
}

void sub_1A7BE5834(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [[v3 alloc] initWithSuiteName:@"com.apple.ids"];
  [v5 setObject:v4 forKey:@"ComingOnlineEnabledDiceRoll"];
}

uint64_t IDSQRProtoTestTestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7BE72A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A7E1A380(a2);
  }
}

void sub_1A7BE7398(uint64_t a1)
{
  v2 = [*(a1 + 32) serverSignature];
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"CachedSignature", v2, *(a1 + 48), *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  v5 = [*(a1 + 32) serverCerts];
  CFPreferencesSetValue(@"CacheCertificate", v5, *(a1 + 48), v3, v4);

  v6 = [*(a1 + 32) signedBag];
  CFPreferencesSetValue(@"CachedBag", v6, *(a1 + 48), v3, v4);

  v7 = MEMORY[0x1E696AD98];
  v8 = [*(a1 + 32) loadDate];
  [v8 timeIntervalSinceReferenceDate];
  CFPreferencesSetValue(@"Date", [v7 numberWithDouble:?], *(a1 + 48), v3, v4);

  v9 = MEMORY[0x1E696AD98];
  [*(a1 + 32) timeToLive];
  CFPreferencesSetValue(@"CacheTime", [v9 numberWithDouble:?], *(a1 + 48), v3, v4);
  CFPreferencesSynchronize(*(a1 + 48), v3, v4);
  v10 = *(a1 + 40);

  sub_1A7E1A1EC(v10);
}

void sub_1A7BE778C(uint64_t a1)
{
  v2 = [*(a1 + 32) handleExternalLoadTaskQueue];
  [v2 enqueueExecutionWithTarget:*(a1 + 32) afterDelay:0.2];
}

uint64_t IDSQRProtoPeerPublishedStreamReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        if ((v12 & 7) == 2)
        {
          v35[0] = 0xAAAAAAAAAAAAAAAALL;
          v35[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v21 = [a2 position];
            if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v36 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v36 & 0x7F) << v22;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v35[0] & 0x7F) << v28;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt32Add();
        }
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v35[0] & 0x7F) << v13;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_48:
        *(a1 + 32) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7BE8800()
{
  v0 = objc_alloc_init(IDSNWPathUtils);
  v1 = qword_1EB2B85A0;
  qword_1EB2B85A0 = v0;
}

void sub_1A7BE8D60(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _updateSlicedInterfaceName:a2];
  if ([*(a1 + 32) isSlicedCellularInterface:? forSession:?])
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_1A7BE91C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7BE91F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1A7BE9210(uint64_t a1, nw_interface_t interface)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:nw_interface_get_name(interface) encoding:4];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = +[IDSFoundationLog NWPathUtils];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface Name: %@", &v9, 0xCu);
  }

  return 1;
}

uint64_t IDSQRProtoH3EndToEndChannelUnRegisterIndicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t (*sub_1A7BEE9F0())(void, void, void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPVerifyAndExposeMessage", @"MessageProtection");
  off_1EB2B87D8 = result;
  return result;
}

uint64_t (*sub_1A7BEEA20())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPCopyProtectedMsgHash", @"MessageProtection");
  off_1EB2B8868 = result;
  return result;
}

uint64_t (*sub_1A7BEEA50())(void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPFICopyProtClass", @"MessageProtection");
  off_1EB2B8848 = result;
  return result;
}

uint64_t (*sub_1A7BEEA80())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPFIUpdateProtClass", @"MessageProtection");
  off_1EB2B8838 = result;
  return result;
}

uint64_t (*sub_1A7BEEAB0())(void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPFIPurgeFromKeychain", @"MessageProtection");
  off_1EB2BBF18 = result;
  return result;
}

uint64_t (*sub_1A7BEEAE0())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPFullIdentityCreateFromData", @"MessageProtection");
  off_1EB2B8828 = result;
  return result;
}

uint64_t (*sub_1A7BEEB10())(void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPFullIdentityCreate", @"MessageProtection");
  off_1EB2BBF28 = result;
  return result;
}

uint64_t (*sub_1A7BEEB40())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPFullIdentityCreateWithProtClass", @"MessageProtection");
  off_1EB2BBF38 = result;
  return result;
}

uint64_t (*sub_1A7BEEB70())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPPublicIdentityCopyFromPrivate", @"MessageProtection");
  off_1EB2B8808 = result;
  return result;
}

uint64_t (*sub_1A7BEEBA0())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPFIAppendSerialization", @"MessageProtection");
  off_1EB2B8858 = result;
  return result;
}

uint64_t (*sub_1A7BEEBD0())(void, void, void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPSignAndProtectMessage", @"MessageProtection");
  off_1EB2B87E8 = result;
  return result;
}

uint64_t (*sub_1A7BEEC00())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPPublicIdentityCreateFromData", @"MessageProtection");
  off_1EB2B87F8 = result;
  return result;
}

uint64_t (*sub_1A7BEEC30())(void, void, void)
{
  result = MEMORY[0x1AC5631C0]("SecMPPIAppendSerialization", @"MessageProtection");
  off_1EB2B8818 = result;
  return result;
}

void sub_1A7BEF280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A7BEF2B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [(os_unfair_lock_s *)v7 setLoadedContents:v5];
    v8 = [(os_unfair_lock_s *)v7 contentProvider];
    v9 = [v8 loadOverrideValuesIfPresent];
    v10 = [v9 mutableCopy];
    [(os_unfair_lock_s *)v7 setOverrideValues:v10];

    os_unfair_lock_unlock(v7 + 2);
    if (!a3)
    {
      v11 = im_primary_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A7BEF3DC;
      block[3] = &unk_1E77E0818;
      v13 = v7;
      dispatch_async(v11, block);
    }
  }
}

void sub_1A7BEF3DC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) config];
  v3 = [v2 logCategory];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [v4 config];
    v7 = 138543618;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ posted finished loading note {config: %@}", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"_kIDSServerBagFinishedLoadingNotification" object:*(a1 + 32)];
}

void sub_1A7BF02BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A7BF0B50(uint64_t a1)
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!qword_1EB2BBC18)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_1A7BF0C74;
    v3[4] = &unk_1E77DD328;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/Transparency.framework/Transparency";
    qword_1EB2BBC18 = _sl_dlopen();
  }

  if (!qword_1EB2BBC18)
  {
    sub_1A7E1AC10(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("KTVerifierResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A7E1AB94();
  }

  qword_1EB2BBBD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A7BF0C74(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB2BBC18 = result;
  return result;
}

uint64_t IDSQRProtoSessionInfoIndicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v58) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v14 > 14)
        {
          if (v14 == 15)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 104) |= 1u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v58 & 0x7F) << v38;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                v44 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v44 = 0;
            }

            else
            {
              v44 = v40;
            }

LABEL_94:
            *(a1 + 56) = v44;
            goto LABEL_121;
          }

          if (v14 == 16)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 104) |= 2u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v58 & 0x7F) << v24;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_98:
            *(a1 + 64) = v30;
            goto LABEL_121;
          }
        }

        else
        {
          if (v14 == 5)
          {
            v23 = objc_alloc_init(IDSQRProtoUnAllocBindLeaveInfo);
            [a1 addLeftParticipants:v23];
            v58 = 0xAAAAAAAAAAAAAAAALL;
            v59 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !IDSQRProtoUnAllocBindLeaveInfoReadFrom(v23, a2))
            {
LABEL_124:

              return 0;
            }

            goto LABEL_63;
          }

          if (v14 == 6)
          {
            v23 = objc_alloc_init(IDSQRProtoParticipantUpdateParticipantModeInfo);
            [a1 addUpdatedParticipants:v23];
            v58 = 0xAAAAAAAAAAAAAAAALL;
            v59 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !IDSQRProtoParticipantUpdateParticipantModeInfoReadFrom(v23, a2))
            {
              goto LABEL_124;
            }

            goto LABEL_63;
          }
        }
      }

      else if (v14 > 2)
      {
        if (v14 == 3)
        {
          if (v13 != 2)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                v50 = [a2 data];
                [v50 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v58 & 0x7F) << v45;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v11 = v46++ >= 9;
              if (v11)
              {
                goto LABEL_118;
              }
            }

            [a2 hasError];
LABEL_118:
            PBRepeatedUInt64Add();
            goto LABEL_121;
          }

          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v31 = [a2 position];
            if (v31 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v32 = 0;
            v33 = 0;
            v34 = 0;
            while (1)
            {
              v60 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v60 & 0x7F) << v32;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                goto LABEL_78;
              }
            }

            [a2 hasError];
LABEL_78:
            PBRepeatedUInt64Add();
          }

LABEL_90:
          PBReaderRecallMark();
          goto LABEL_121;
        }

        if (v14 == 4)
        {
          v23 = objc_alloc_init(IDSQRProtoAllocBindJoinInfo);
          [a1 addJoinedParticipants:v23];
          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !IDSQRProtoAllocBindJoinInfoReadFrom(v23, a2))
          {
            goto LABEL_124;
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v23 = objc_alloc_init(IDSQRProtoPeerPublishedStream);
          [a1 addPeerPublishedStreams:v23];
          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !IDSQRProtoPeerPublishedStreamReadFrom(v23, a2))
          {
            goto LABEL_124;
          }

LABEL_63:
          PBReaderRecallMark();

          goto LABEL_121;
        }

        if (v14 == 2)
        {
          if (v13 != 2)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v58 & 0x7F) << v51;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                goto LABEL_120;
              }
            }

            [a2 hasError];
LABEL_120:
            PBRepeatedUInt32Add();
            goto LABEL_121;
          }

          v58 = 0xAAAAAAAAAAAAAAAALL;
          v59 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_90;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v60 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v60 & 0x7F) << v17;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_35;
              }
            }

            [a2 hasError];
LABEL_35:
            PBRepeatedUInt32Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_121:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoPluginControlRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_52:
          v31 = 28;
          goto LABEL_53;
        }

        if (v13 != 4)
        {
LABEL_25:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = PBReaderReadData();
        v15 = 8;
      }

      else
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v35 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v35 & 0x7F) << v18;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_48:
          v31 = 24;
LABEL_53:
          *(a1 + v31) = v24;
          goto LABEL_54;
        }

        if (v13 != 2)
        {
          goto LABEL_25;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL IDSAWDLogShouldSubmitHotShipQuickRelayMetricWithDate(int a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v7 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:@"GMT"];
  [v6 setTimeZone:v7];
  v8 = [v6 components:112 fromDate:v4];

  v9 = [v8 day];
  v10 = [v8 hour];
  v11 = [v8 minute];
  if (v10 == 23 && v11 > 54)
  {
    v12 = 0;
  }

  else
  {
    v13 = (v9 & 0x8000000000000001) == 1;
    if (a1)
    {
      v13 = (v9 & 1) == 0;
    }

    if (v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11 < 6;
    }

    v12 = !v14 && v13;
  }

  return v12;
}

BOOL IDSAWDLogShouldSubmitHotShipQuickRelayMetric(int a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  ShouldSubmitHotShipQuickRelayMetricWithDate = IDSAWDLogShouldSubmitHotShipQuickRelayMetricWithDate(a1, v2);

  return ShouldSubmitHotShipQuickRelayMetricWithDate;
}

void sub_1A7BF4C94()
{
  v0 = objc_alloc_init(IDSAWDLogging);
  v1 = qword_1ED5DF720;
  qword_1ED5DF720 = v0;
}

void sub_1A7BF6CB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) candidatePairToken];
  [v2 _sendQUICRegisterRequest:v3 withOptions:*(a1 + 48)];
}

void sub_1A7BF6D14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) candidatePairToken];
  [v2 _sendQUICRegisterRequest:v3 withOptions:*(a1 + 48)];
}

void sub_1A7BF79FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) copy];
  [v1 _sendQUICRegisterAckRequest:v2 withOptions:v3];
}

void sub_1A7BF9280(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7BF919CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A7BFB2D8(uint64_t a1)
{
  v2 = +[IDSFoundationLog GFTGL];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "[U+1] now that remote device version is received, processing incoming RelayInterfaceInfo", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processCommandRelayInterfaceInfo:*(a1 + 32) candidatePairToken:*(a1 + 40)];
}

void sub_1A7BFC468(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A7BFC504;
  v2[3] = &unk_1E77E0250;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  IDSTransportThreadAddBlock(v2);
}

void sub_1A7BFC504(uint64_t a1)
{
  v3 = [*(a1 + 32) object];
  v2 = [*(a1 + 40) candidatePairToken];
  [v3 _sendUnallocbindRequest:v2 stunMessage:0 reason:13];
}

void sub_1A7BFC578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) sessionID];
  [v1 _setupNewQRLinkIfNecessary:v2];
}

void *sub_1A7BFCCE4(void *result)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(result[4] + 1608);
  if (v1 && *(v1 + 8))
  {
    v2 = result;
    v3 = +[IDSFoundationLog GFTGL];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2[4] + 1688);
      *buf = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "request new QR session for group %@.", buf, 0xCu);
    }

    return (*(*(*(v2[4] + 1608) + 8) + 16))(*(*(v2[4] + 1608) + 8), *(v2[4] + 1688), 0, 0);
  }

  return result;
}

void sub_1A7C01274(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A7C01310;
  v2[3] = &unk_1E77E0250;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  IDSTransportThreadAddBlock(v2);
}

void sub_1A7C01310(uint64_t a1)
{
  v3 = [*(a1 + 32) object];
  v2 = [*(a1 + 40) candidatePairToken];
  [v3 _sendUnallocbindRequest:v2 stunMessage:0 reason:13];
}

void sub_1A7C01384(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) sessionID];
  [v1 _setupNewQRLinkIfNecessary:v2];
}

uint64_t IDSQRProtoTestResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C026A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A7C026BC()
{
  result = CUTWeakLinkClass();
  qword_1EB2BBF48 = result;
  return result;
}

uint64_t sub_1A7C026EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7C02704(uint64_t a1, void *a2)
{
  if (![a2 response])
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) getTapToRadarURL];
    v3 = [qword_1EB2BBF48 defaultWorkspace];
    [v3 openURL:v4 configuration:0 completionHandler:&unk_1F1AAAB80];
  }
}

void sub_1A7C06D9C(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (qword_1EB2B8A10 != -1)
  {
    sub_1A7E1B58C();
  }

  if (qword_1EB2B8A18 != -1)
  {
    sub_1A7E1B5A0();
  }

  if (qword_1EB2B8A20 && qword_1EB2B8A28)
  {
    v4 = [v3 objectForKeyedSubscript:?];
    v5 = [v4 BOOLValue];

    v6 = *(a1 + 32);
    v7 = [v3 objectForKeyedSubscript:qword_1EB2B8A28];
    if (v5)
    {
      (*(v6 + 16))(v6, v7, 0);
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSAutoBugCaptureErrorDomain" code:-300 userInfo:v3];
      (*(v6 + 16))(v6, v7, v12);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"Failed to weak link SymptomDiagnosticReporter symbol";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 errorWithDomain:@"IDSAutoBugCaptureErrorDomain" code:-100 userInfo:v10];
    (*(v8 + 16))(v8, 0, v11);
  }
}

void sub_1A7C06F70()
{
  v0 = MEMORY[0x1AC5631C0]("kSymptomDiagnosticReplySuccess", @"SymptomDiagnosticReporter");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB2B8A20, v1);
}

void sub_1A7C06FC0()
{
  v0 = MEMORY[0x1AC5631C0]("kSymptomDiagnosticReplySessionID", @"SymptomDiagnosticReporter");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB2B8A28, v1);
}

void sub_1A7C07020()
{
  if (+[IDSAutoBugCapture isSupported])
  {
    v0 = objc_alloc_init(CUTWeakLinkClass());
    v1 = qword_1EB2B87B8;
    qword_1EB2B87B8 = v0;
  }
}

id sub_1A7C071B0(void *a1, void *a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v23[0] = @"t";
  v23[1] = @"sP";
  v23[2] = @"tP";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v6 = [v3 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [v7 objectForKeyedSubscript:{v12, v18}];
        if (![v5 containsObject:v12])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = sub_1A7C071B0(v13, v4);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_16;
            }

            v14 = sub_1A7C09240(v13, v4);
          }

          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = IDSLoggableDescriptionForHandleOnService(v13, v4);
LABEL_15:
          v15 = v14;
          [v6 setObject:v14 forKeyedSubscript:v12];

          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = IDSLoggableDescriptionForTokenOnService(v13, v4);
          goto LABEL_15;
        }

        [v6 setObject:@"<redacted>" forKeyedSubscript:v12];
LABEL_16:

        ++v11;
      }

      while (v9 != v11);
      v16 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = v16;
    }

    while (v16);
  }

  return v6;
}

id sub_1A7C09240(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  if ([v4 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = sub_1A7C09240(v6, v3);
        goto LABEL_7;
      }

LABEL_8:

      if ([v4 count] <= ++v5)
      {
        goto LABEL_9;
      }
    }

    v7 = sub_1A7C071B0(v6, v3);
LABEL_7:
    v8 = v7;
    [v4 setObject:v7 atIndexedSubscript:v5];

    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

uint64_t IDSQRProtoH3EndToEndChannelUnRegisterE2EChannelUnRegisterReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoH3EndToEndChannelRegisterResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfo);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !IDSQRProtoH3EndToEndChannelRegisterE2EChannelInfoReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C0AC44(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C0ACB4;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

void sub_1A7C0B420(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = sub_1A7C0B490;
  v1[3] = &unk_1E77E0138;
  v1[4] = *(a1 + 32);
  IDSTransportThreadAddBlock(v1);
}

uint64_t IDSQRProtoDiagnosticIndicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_52:
          *(a1 + 32) = v31;
        }

        else
        {
          if (v13 != 15)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_53;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 8) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_53:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}