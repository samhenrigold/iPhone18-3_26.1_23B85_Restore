@interface ExternalDownloadManifest
- (BOOL)_parsePropertyList:(id)list;
- (ExternalDownloadManifest)initWithPropertyList:(id)list;
- (ExternalDownloadManifest)initWithValidDownloads:(id)downloads invalidDownloads:(id)invalidDownloads;
- (void)dealloc;
@end

@implementation ExternalDownloadManifest

- (ExternalDownloadManifest)initWithPropertyList:(id)list
{
  v6.receiver = self;
  v6.super_class = ExternalDownloadManifest;
  v4 = [(ExternalDownloadManifest *)&v6 init];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(ExternalDownloadManifest *)v4 _parsePropertyList:list])
    {

      return 0;
    }
  }

  return v4;
}

- (ExternalDownloadManifest)initWithValidDownloads:(id)downloads invalidDownloads:(id)invalidDownloads
{
  v8.receiver = self;
  v8.super_class = ExternalDownloadManifest;
  v6 = [(ExternalDownloadManifest *)&v8 init];
  if (v6)
  {
    v6->_invalidDownloads = [invalidDownloads copy];
    v6->_validDownloads = [downloads copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ExternalDownloadManifest;
  [(ExternalDownloadManifest *)&v3 dealloc];
}

- (BOOL)_parsePropertyList:(id)list
{
  v36 = objc_alloc_init(NSMutableArray);
  v35 = objc_alloc_init(NSMutableArray);
  v4 = [list objectForKey:@"items"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v8 = @"metadata";
    v9 = @"bundle-identifier";
    v37 = *v39;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [v11 objectForKey:{v8, v32}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:v9];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v13)
            {
              v14 = v8;
              v15 = v9;
              v16 = v4;
              v17 = [LSApplicationProxy applicationProxyForIdentifier:v13];
              isInstalled = [v17 isInstalled];
              v19 = [objc_msgSend(v17 "applicationType")];
              profileValidated = [v17 profileValidated];
              if (!isInstalled || (v19 & profileValidated & 1) != 0)
              {
                v29 = [[Download alloc] initWithExternalManifestDictionary:v11];
                if ([(Download *)v29 valueForProperty:@"download_state.download_error"])
                {
                  v30 = v36;
                }

                else
                {
                  v30 = v35;
                }

                [(NSArray *)v30 addObject:v29];

                v4 = v16;
                v9 = v15;
                v8 = v14;
                v7 = v37;
              }

              else
              {
                v21 = +[SSLogConfig sharedDaemonConfig];
                if (!v21)
                {
                  v21 = +[SSLogConfig sharedConfig];
                }

                shouldLog = [v21 shouldLog];
                if ([v21 shouldLogToDisk])
                {
                  LODWORD(v23) = shouldLog | 2;
                }

                else
                {
                  LODWORD(v23) = shouldLog;
                }

                oSLogObject = [v21 OSLogObject];
                if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
                {
                  v23 = v23;
                }

                else
                {
                  v23 &= 2u;
                }

                v4 = v16;
                v9 = v15;
                v8 = v14;
                v7 = v37;
                if (v23)
                {
                  v25 = objc_opt_class();
                  v42 = 138412546;
                  v43 = v25;
                  v44 = 2112;
                  v45 = v13;
                  LODWORD(v33) = 22;
                  v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%@: Skipping download and install of: %@", &v42, v33);
                  if (v26)
                  {
                    v27 = v26;
                    v28 = [NSString stringWithCString:v26 encoding:4];
                    free(v27);
                    v32 = v28;
                    SSFileLog();
                  }
                }
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v6);
  }

  self->_invalidDownloads = v36;
  self->_validDownloads = v35;
  return 1;
}

@end