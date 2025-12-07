@interface UNNotificationAttachment(Staging)
+ (id)_systemDirectoryURL;
+ (uint64_t)stagingActionForFileHandle:()Staging fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:servicingBundleIdentifier:error:;
@end

@implementation UNNotificationAttachment(Staging)

+ (id)_systemDirectoryURL
{
  if (_systemDirectoryURL_onceToken != -1)
  {
    +[UNNotificationAttachment(Staging) _systemDirectoryURL];
  }

  v2 = _systemDirectoryURL___systemDirectoryURL;

  return v2;
}

+ (uint64_t)stagingActionForFileHandle:()Staging fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:servicingBundleIdentifier:error:
{
  v67 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  unc_secureFileURL = [v11 unc_secureFileURL];
  if (v12 | v13)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (v12)
    {
      uns_clientBundleProxy = [v12 uns_clientBundleProxy];
    }

    else
    {
      uns_clientBundleProxy = v13;
    }

    v20 = uns_clientBundleProxy;
    bundleURL = [uns_clientBundleProxy bundleURL];
    if (unc_secureFileURL)
    {
      v62 = 2;
      [defaultManager getRelationship:&v62 ofDirectoryAtURL:bundleURL toItemAtURL:unc_secureFileURL error:0];
      if (!v62)
      {
        goto LABEL_35;
      }

      dataContainerURL = [v20 dataContainerURL];
      if (dataContainerURL)
      {
        v23 = dataContainerURL;
        *buf = 2;
        [defaultManager getRelationship:buf ofDirectoryAtURL:dataContainerURL toItemAtURL:unc_secureFileURL error:0];
        if (*buf)
        {
          v48 = a7;
          v49 = v23;
          log = v14;
          v53 = bundleURL;
          groupContainerURLs = [v20 groupContainerURLs];
          allValues = [groupContainerURLs allValues];

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v26 = allValues;
          v27 = [v26 countByEnumeratingWithState:&v56 objects:v63 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v57;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v57 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v56 + 1) + 8 * i);
                *&v60 = 2;
                [defaultManager getRelationship:&v60 ofDirectoryAtURL:v31 toItemAtURL:unc_secureFileURL error:0];
                if (!v60)
                {

                  v17 = 1;
                  v14 = log;
                  bundleURL = v53;
                  goto LABEL_43;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v56 objects:v63 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          bundleURL = v53;
          if (v48)
          {
            *v48 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
          }

          v17 = 0;
          v14 = log;
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      v60 = 0u;
      v61 = 0u;
      uns_clientAuditToken = [v12 uns_clientAuditToken];
      v33 = uns_clientAuditToken;
      if (uns_clientAuditToken)
      {
        objc_msgSend_realToken(uns_clientAuditToken);
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      if (v12)
      {
        [v11 fileDescriptor];
        *buf = v60;
        *&buf[16] = v61;
        if (!sandbox_check_by_audit_token())
        {
LABEL_35:
          v17 = 1;
LABEL_43:

          goto LABEL_44;
        }
      }

      if (v13)
      {
        [v12 processIdentifier];
        v34 = BSBundlePathForPID();
        v35 = v34;
        v36 = @"<unknown executable>";
        if (v34)
        {
          v36 = v34;
        }

        v37 = v36;

        v38 = *MEMORY[0x277CE2068];
        if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_FAULT))
        {
          v39 = v38;
          [unc_secureFileURL absoluteString];
          v40 = v54 = bundleURL;
          *buf = 138543874;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v54;
          *&buf[22] = 2114;
          *&buf[24] = v40;
          _os_log_fault_impl(&dword_270AA8000, v39, OS_LOG_TYPE_FAULT, "[System Notification Source] Copying not moving attachment to prevent notification service extension from effectively deleting this file it doesn't have access to. Connection process '%{public}@', Posting of behalf of notification source: '%{public}@', Attachment: '%{public}@'", buf, 0x20u);

          bundleURL = v54;
        }
      }

      else
      {
        v55 = bundleURL;
        currentConnection = [MEMORY[0x277CCAE80] currentConnection];
        [currentConnection processIdentifier];
        v42 = BSBundlePathForPID();
        v43 = v42;
        v44 = @"<unknown executable>";
        if (v42)
        {
          v44 = v42;
        }

        v37 = v44;

        v45 = *MEMORY[0x277CE2068];
        if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_FAULT))
        {
          loga = v45;
          bundleIdentifier = [v20 bundleIdentifier];
          absoluteString = [unc_secureFileURL absoluteString];
          *buf = 138544130;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = bundleIdentifier;
          *&buf[22] = 2114;
          *&buf[24] = absoluteString;
          v65 = 2114;
          v66 = v14;
          _os_log_fault_impl(&dword_270AA8000, loga, OS_LOG_TYPE_FAULT, "[Notification Service Extension] Copying not moving attachment to prevent system process from effectively deleting this file it doesn't have access to. Push notification service connection '%{public}@'. Notification service extension for bundle: '%{public}@', Attachment: '%{public}@', Effective Notifications Bundle ID: '%{public}@'", buf, 0x2Au);
        }

        bundleURL = v55;
      }
    }

    v17 = 0;
    goto LABEL_43;
  }

  v16 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_FAULT))
  {
    [UNNotificationAttachment(Staging) stagingActionForFileHandle:v16 fromLocalClientConnection:unc_secureFileURL orFromServiceExtensionOfBundleProxy:? servicingBundleIdentifier:? error:?];
  }

  v17 = 0;
LABEL_44:

  return v17;
}

+ (void)stagingActionForFileHandle:()Staging fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:servicingBundleIdentifier:error:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 absoluteString];
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_270AA8000, v3, OS_LOG_TYPE_FAULT, "Cannot stage attachment. Must provide either a connection or proxy, and not both. Attachment: '%{public}@'", &v5, 0xCu);
}

@end