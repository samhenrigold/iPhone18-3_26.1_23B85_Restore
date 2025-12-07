@interface RPNWUtils
+ (BOOL)checkPid:(int)pid hasEntitlement:(id)entitlement;
+ (BOOL)shouldBypassPrefixBundleIDFromParameters:(id)parameters;
+ (id)_quicProtocolOptionsFromParameters:(id)parameters;
+ (id)createTokenForClient:(id)client;
+ (id)getBundleIDForPID:(int)d;
+ (id)publicKeyFromAgentClient:(id)client;
@end

@implementation RPNWUtils

+ (id)createTokenForClient:(id)client
{
  *uu = 0;
  v10 = 0;
  memset(out, 0, 37);
  clientCopy = client;
  nw_agent_client_get_uuid();
  uuid_unparse(uu, out);
  v4 = nw_agent_client_copy_parameters();

  if (v4)
  {
    pid = nw_parameters_get_pid();
  }

  else
  {
    pid = 0;
  }

  v6 = [NSString stringWithFormat:@"[pid:%d, id:%.8s]", pid, out];

  return v6;
}

+ (id)getBundleIDForPID:(int)d
{
  if (!d)
  {
    if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D9E8();
    }

    goto LABEL_11;
  }

  v3 = *&d;
  v17 = 0;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(d, 17, 1uLL, buffer, 56) != 56 || uuid_is_null(buffer))
  {
    if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D968(v3);
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v6 = [[NSUUID alloc] initWithUUIDBytes:buffer];
  if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D2F60, "+[RPNWUtils getBundleIDForPID:]", 30, "Looked up PID (%d) -> UUID (%@)", v3, v6);
  }

  v7 = [NSSet setWithObject:v6];
  defaultWorkspace = [(objc_class *)off_1001D2FD0() defaultWorkspace];
  v15 = 0;
  v9 = [defaultWorkspace bundleIdentifiersForMachOUUIDs:v7 error:&v15];
  v10 = v15;

  if (v10)
  {
    if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D2F60, "+[RPNWUtils getBundleIDForPID:]", 30, "bundleIdentifiersForMachOUUIDs failed for %@ [%@]", v6, v10);
    }
  }

  else
  {
    if ([v9 count])
    {
      v11 = [v9 objectForKeyedSubscript:v6];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [v9 objectForKeyedSubscript:v6];
        allObjects = [v13 allObjects];
        v4 = [allObjects objectAtIndex:0];

        if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D2F60, "+[RPNWUtils getBundleIDForPID:]", 30, "Looked up UUID (%@) -> bundleID (%@)", v6, v4);
        }

        goto LABEL_34;
      }
    }

    if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D9A8(v6);
    }
  }

  v4 = 0;
LABEL_34:

LABEL_12:

  return v4;
}

+ (BOOL)checkPid:(int)pid hasEntitlement:(id)entitlement
{
  v4 = *&pid;
  entitlementCopy = entitlement;
  if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D2F60, "+[RPNWUtils checkPid:hasEntitlement:]", 30, "checkPid: %d hasEntitlement: %@\n", v4, entitlementCopy);
  }

  memset(&task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 8;
  tn = 0;
  v6 = task_name_for_pid(mach_task_self_, v4, &tn);
  if (v6)
  {
    if (dword_1001D2F60 <= 90)
    {
      v7 = v6;
      if (dword_1001D2F60 != -1 || _LogCategory_Initialize())
      {
        sub_10010DA28(v7);
      }
    }

    goto LABEL_14;
  }

  v8 = task_info(tn, 0xFu, &task_info_out, &task_info_outCnt);
  if (v8)
  {
    if (dword_1001D2F60 <= 90)
    {
      v9 = v8;
      if (dword_1001D2F60 != -1 || _LogCategory_Initialize())
      {
        sub_10010DA68(v9);
      }
    }

    goto LABEL_14;
  }

  token = task_info_out;
  v12 = SecTaskCreateWithAuditToken(0, &token);
  if (v12)
  {
    v13 = v12;
    *token.val = 0;
    v14 = SecTaskCopyValueForEntitlement(v12, entitlementCopy, &token);
    v15 = *token.val;
    if (*token.val)
    {
      if (dword_1001D2F60 <= 90)
      {
        if (dword_1001D2F60 != -1 || (v16 = _LogCategory_Initialize(), v15 = *token.val, v16))
        {
          LogPrintF(&dword_1001D2F60, "+[RPNWUtils checkPid:hasEntitlement:]", 90, "SecTaskCopyValueForEntitlement %{public}@ error %{public}@", entitlementCopy, v15);
          v15 = *token.val;
        }
      }

      CFRelease(v15);
    }

    if (v14)
    {
      v17 = CFGetTypeID(v14);
      v10 = v17 == CFBooleanGetTypeID() && CFBooleanGetValue(v14) != 0;
      CFRelease(v14);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v13);
  }

  else
  {
    if (dword_1001D2F60 > 90)
    {
LABEL_14:
      LOBYTE(v10) = 0;
      goto LABEL_15;
    }

    if (dword_1001D2F60 != -1 || _LogCategory_Initialize())
    {
      sub_10010DAA8();
    }

    v10 = 0;
  }

  if (dword_1001D2F60 <= 30 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D2F60, "+[RPNWUtils checkPid:hasEntitlement:]", 30, "checkPid: %d hasEntitlement: %@ returns: %d\n", v4, entitlementCopy, v10);
  }

LABEL_15:

  return v10;
}

+ (id)publicKeyFromAgentClient:(id)client
{
  clientCopy = client;
  v5 = nw_agent_client_copy_parameters();
  if (v5)
  {
    v6 = [self _quicProtocolOptionsFromParameters:v5];
    if (v6)
    {
      v7 = nw_quic_options_copy_local_public_key();
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D2F60, "+[RPNWUtils publicKeyFromAgentClient:]", 90, "Failed to copy public key from options=%@, parameters=%@, agent_client=%@\n", v6, v5, clientCopy);
      }
    }

    else
    {
      if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D2F60, "+[RPNWUtils publicKeyFromAgentClient:]", 90, "Failed to find QUIC protocol options from parameters=%@, agent_client=%@\n", v5, clientCopy);
      }

      v8 = 0;
    }
  }

  else
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DADC(clientCopy);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_quicProtocolOptionsFromParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = nw_parameters_copy_default_protocol_stack(parametersCopy);
  v5 = v4;
  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000029BC;
    v13 = sub_100003174;
    v14 = 0;
    iterate_block[0] = _NSConcreteStackBlock;
    iterate_block[1] = 3221225472;
    iterate_block[2] = sub_100014BD0;
    iterate_block[3] = &unk_1001AAA68;
    iterate_block[4] = &v9;
    nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DB1C(parametersCopy);
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldBypassPrefixBundleIDFromParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = nw_parameters_copy_custom_options();
  v5 = v4;
  if (!v4)
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DC14(parametersCopy);
    }

    goto LABEL_20;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v4);
  if (!bytes_ptr)
  {
    if (dword_1001D2F60 <= 90)
    {
      if (dword_1001D2F60 != -1 || (bytes_ptr = _LogCategory_Initialize(), bytes_ptr))
      {
        sub_10010DBF8(bytes_ptr, v7, v8);
      }
    }

    goto LABEL_20;
  }

  v9 = bytes_ptr;
  length = xpc_data_get_length(v5);
  if (!length)
  {
    if (dword_1001D2F60 <= 90)
    {
      if (dword_1001D2F60 != -1 || (length = _LogCategory_Initialize(), length))
      {
        sub_10010DBDC(length, v11, v12);
      }
    }

LABEL_20:
    bOOLValue = 0;
    goto LABEL_26;
  }

  v13 = [[NSData alloc] initWithBytes:v9 length:length];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v14 = [NSArray arrayWithObjects:v22 count:3];
  v15 = [NSSet setWithArray:v14];

  v21 = 0;
  v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v15 fromData:v13 error:&v21];
  v17 = v21;
  if (v17)
  {
    if (dword_1001D2F60 <= 90 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DB5C(v17);
    }

    bOOLValue = 0;
  }

  else
  {
    if (dword_1001D2F60 <= 50 && (dword_1001D2F60 != -1 || _LogCategory_Initialize()))
    {
      sub_10010DB9C(v16);
    }

    v19 = [v16 objectForKeyedSubscript:@"shouldBypassPrefixBundleID"];
    bOOLValue = [v19 BOOLValue];
  }

LABEL_26:
  return bOOLValue;
}

@end