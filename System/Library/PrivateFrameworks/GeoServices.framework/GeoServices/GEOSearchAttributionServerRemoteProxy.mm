@interface GEOSearchAttributionServerRemoteProxy
- (GEOSearchAttributionServerRemoteProxy)init;
- (id)_attributionManifest;
@end

@implementation GEOSearchAttributionServerRemoteProxy

- (GEOSearchAttributionServerRemoteProxy)init
{
  v13.receiver = self;
  v13.super_class = GEOSearchAttributionServerRemoteProxy;
  v2 = [(GEOSearchAttributionServerRemoteProxy *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_attributionManifestLock._os_unfair_lock_opaque = 0;
    v4 = geo_dispatch_queue_create_with_workloop_qos();
    attributionQueue = v3->_attributionQueue;
    v3->_attributionQueue = v4;

    objc_initWeak(&location, v3);
    v6 = GEOSearchAttributionManifestUpdatedDarwinNotificationName;
    v7 = v3->_attributionQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__GEOSearchAttributionServerRemoteProxy_init__block_invoke;
    v10[3] = &unk_1E7070108;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(v6, &v3->_attributionManifestUpdatedToken, v7, v10);
    v8 = v3;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)_attributionManifest
{
  selfCopy = self;
  v47 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_attributionManifestLock);
  attributionManifest = selfCopy->_attributionManifest;
  if (!attributionManifest)
  {
    v4 = [GEOFilePaths pathFor:30];
    if ([v4 length])
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4];
      v6 = [[GEOSearchAttributionManifest alloc] initWithData:v5];
      v7 = selfCopy->_attributionManifest;
      selfCopy->_attributionManifest = v6;

      v8 = selfCopy->_attributionManifest;
      if (v8)
      {
        v28 = v5;
        v29 = v4;
        v30 = selfCopy;
        context = objc_autoreleasePoolPush();
        v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v27 = v8;
        obj = [(GEOSearchAttributionManifest *)v8 searchAttributionSources];
        v33 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v33)
        {
          v32 = *v42;
          do
          {
            v10 = 0;
            do
            {
              if (*v42 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = v10;
              v11 = *(*(&v41 + 1) + 8 * v10);
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              localizedAttributions = [(GEOSearchAttributionSource *)v11 localizedAttributions];
              v12 = [localizedAttributions countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v12)
              {
                v13 = v12;
                v36 = *v38;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v38 != v36)
                    {
                      objc_enumerationMutation(localizedAttributions);
                    }

                    v15 = 0;
                    v16 = *(*(&v37 + 1) + 8 * i);
                    if (v16)
                    {
                      while (1)
                      {
                        [(GEOLocalizedAttribution *)v16 _readLogoURLs];
                        if (v15 >= [v16[6] count])
                        {
                          break;
                        }

                        [(GEOLocalizedAttribution *)v16 _readLogoURLs];
                        v17 = [v16[6] objectAtIndex:v15];
                        v18 = [v9 member:v17];
                        if (v18)
                        {
                          logoURLs = [(GEOLocalizedAttribution *)v16 logoURLs];
                          [logoURLs replaceObjectAtIndex:v15 withObject:v18];
                        }

                        else
                        {
                          [v9 addObject:v17];
                        }

                        ++v15;
                      }
                    }

                    v20 = 0;
                    if (v16)
                    {
                      while (1)
                      {
                        [(GEOLocalizedAttribution *)v16 _readSnippetLogoURLs];
                        if (v20 >= [v16[7] count])
                        {
                          break;
                        }

                        [(GEOLocalizedAttribution *)v16 _readSnippetLogoURLs];
                        v21 = [v16[7] objectAtIndex:v20];
                        v22 = [v9 member:v21];
                        if (v22)
                        {
                          snippetLogoURLs = [(GEOLocalizedAttribution *)v16 snippetLogoURLs];
                          [snippetLogoURLs replaceObjectAtIndex:v20 withObject:v22];
                        }

                        else
                        {
                          [v9 addObject:v21];
                        }

                        ++v20;
                      }
                    }
                  }

                  v13 = [localizedAttributions countByEnumeratingWithState:&v37 objects:v45 count:16];
                }

                while (v13);
              }

              v10 = v34 + 1;
            }

            while (v34 + 1 != v33);
            v33 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v33);
        }

        objc_autoreleasePoolPop(context);
        v4 = v29;
        selfCopy = v30;
        v8 = v27;
        v5 = v28;
      }
    }

    attributionManifest = selfCopy->_attributionManifest;
  }

  v24 = attributionManifest;
  os_unfair_lock_unlock(&selfCopy->_attributionManifestLock);

  return v24;
}

@end