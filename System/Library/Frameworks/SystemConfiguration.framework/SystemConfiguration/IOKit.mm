@interface IOKit
@end

@implementation IOKit

void ____wait_for_IOKit_to_quiesce_block_invoke()
{
  values[1] = *MEMORY[0x1E69E9840];
  qword_1EB591738 = "Waiting for IOKit to quiesce (or timeout)";
  v0 = SCDynamicStoreCreate(0, @"SCNetworkInterfaceCopyAll", 0, 0);
  if (!v0)
  {
    qword_1EB591738 = 0;
    return;
  }

  v1 = v0;
  values[0] = SCDynamicStoreKeyCreate(0, @"%@InterfaceNamer", @"Plugin:");
  v2 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
  v3 = SCDynamicStoreSetNotificationKeys(v1, v2, 0);
  CFRelease(v2);
  if (v3)
  {
    while (1)
    {
      v4 = SCDynamicStoreCopyValue(v1, values[0]);
      if (v4)
      {
        v5 = v4;
        TypeID = CFDictionaryGetTypeID();
        if (CFGetTypeID(v5) == TypeID && (CFDictionaryContainsKey(v5, @"*QUIET*") || CFDictionaryContainsKey(v5, @"*COMPLETE*") || CFDictionaryContainsKey(v5, @"*TIMEOUT*")))
        {
          CFRelease(v5);
          goto LABEL_19;
        }

        CFRelease(v5);
      }

      if (!SCDynamicStoreNotifyWait(v1))
      {
        break;
      }

      v7 = SCDynamicStoreCopyNotifiedKeys(v1);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = __log_SCNetworkConfiguration();
    v9 = _SC_syslog_os_log_mapping(5);
    if (!__SC_log_enabled(5, v8, v9))
    {
      goto LABEL_19;
    }

    v19 = _os_log_pack_size();
    v16 = values - ((MEMORY[0x1EEE9AC00](v19, v20, v21, v22, v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *__error();
    v18 = _os_log_pack_fill(v16, v19, v25, &dword_1AD2AD000, "SCDynamicStoreNotifyWait() failed: %s");
    goto LABEL_17;
  }

  v8 = __log_SCNetworkConfiguration();
  v9 = _SC_syslog_os_log_mapping(5);
  if (__SC_log_enabled(5, v8, v9))
  {
    v10 = _os_log_pack_size();
    v16 = values - ((MEMORY[0x1EEE9AC00](v10, v11, v12, v13, v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = *__error();
    v18 = _os_log_pack_fill(v16, v10, v17, &dword_1AD2AD000, "SCDynamicStoreSetNotificationKeys() failed: %s");
LABEL_17:
    v26 = v18;
    v27 = SCError();
    v28 = SCErrorString(v27);
    *v26 = 136315138;
    *(v26 + 4) = v28;
    __SC_log_send(5, v8, v9, v16);
  }

LABEL_19:
  qword_1EB591738 = 0;
  if (values[0])
  {
    CFRelease(values[0]);
  }

  CFRelease(v1);
}

@end