@interface AAPCommandFilterNonRestricted
- (void)performWithCompletion:(id)completion;
@end

@implementation AAPCommandFilterNonRestricted

- (void)performWithCompletion:(id)completion
{
  appIds = [(AAPCommandFilterNonRestricted *)self appIds];
  v47 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [appIds count]);
  if (objc_msgSend_isEqualToString_([(AAPCommandFilterNonRestricted *)self executionEnvironment]))
  {
    v6 = +[FBSOpenApplicationService dashboardService];
  }

  else
  {
    v6 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  }

  v7 = v6;
  v8 = &AFSiriLogContextPlugin;
  if (v6)
  {
    completionCopy = completion;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = [appIds countByEnumeratingWithState:&v49 objects:v66 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      v43 = SAAppsAppRestrictionReasonNOT_FOUNDValue;
      v46 = SAAppsAppRestrictionReasonRESTRICTEDValue;
      v44 = *v50;
      v45 = v7;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(appIds);
          }

          v13 = *(*(&v49 + 1) + 8 * i);
          v48 = 1;
          if ([(FBSOpenApplicationService *)v7 canOpenApplication:v13 reason:&v48])
          {
            v14 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
            {
              v15 = objc_opt_class();
              *buf = 136315906;
              v55 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
              v56 = 2114;
              v57 = v15;
              v58 = 2048;
              selfCopy7 = self;
              v60 = 2112;
              v61 = v13;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can be launched - filtering", buf, 0x2Au);
            }
          }

          else if (v48 == 4)
          {
            v20 = [NSMutableArray arrayWithCapacity:1];
            v21 = [+[LSApplicationProxy applicationProxyForIdentifier:](LSApplicationProxy applicationProxyForIdentifier:{v13), "isRestricted"}];
            v22 = *v8;
            v23 = os_log_type_enabled(*v8, OS_LOG_TYPE_INFO);
            if (v21)
            {
              v24 = v46;
              if (v23)
              {
                v25 = objc_opt_class();
                *buf = 136315906;
                v55 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
                v56 = 2114;
                v57 = v25;
                v58 = 2048;
                selfCopy7 = self;
                v60 = 2112;
                v61 = v13;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched because it is restricted - not filtering", buf, 0x2Au);
                v24 = v46;
              }
            }

            else
            {
              v24 = v43;
              if (v23)
              {
                v26 = objc_opt_class();
                v27 = appIds;
                v28 = v8;
                v29 = v48;
                v30 = FBSOpenApplicationErrorCodeToString();
                *buf = 136316418;
                v55 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
                v56 = 2114;
                v57 = v26;
                v58 = 2048;
                selfCopy7 = self;
                v60 = 2112;
                v61 = v13;
                v62 = 2048;
                v63 = v29;
                v8 = v28;
                appIds = v27;
                v64 = 2112;
                v65 = v30;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) (restricted) - not filtering", buf, 0x3Eu);
                v24 = v43;
              }
            }

            [(NSMutableArray *)v20 addObject:v24];
            [(NSMutableDictionary *)v47 setObject:[(NSMutableArray *)v20 copy] forKey:v13];
            v11 = v44;
            v7 = v45;
          }

          else
          {
            if (v48 != 5)
            {
              v33 = *v8;
              if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
              {
                v39 = objc_opt_class();
                v40 = v48;
                v41 = FBSOpenApplicationErrorCodeToString();
                *buf = 136316418;
                v55 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
                v56 = 2114;
                v57 = v39;
                v58 = 2048;
                selfCopy7 = self;
                v60 = 2112;
                v61 = v13;
                v62 = 2048;
                v63 = v40;
                v64 = 2112;
                v65 = v41;
                _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) - bailing", buf, 0x3Eu);
              }

              completion = completionCopy;
              goto LABEL_32;
            }

            v16 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
            {
              v17 = objc_opt_class();
              v18 = v48;
              v19 = FBSOpenApplicationErrorCodeToString();
              *buf = 136316418;
              v55 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
              v56 = 2114;
              v57 = v17;
              v58 = 2048;
              selfCopy7 = self;
              v60 = 2112;
              v61 = v13;
              v62 = 2048;
              v63 = v18;
              v11 = v44;
              v7 = v45;
              v64 = 2112;
              v65 = v19;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) - not filtering", buf, 0x3Eu);
            }

            v53 = v46;
            [(NSMutableDictionary *)v47 setObject:[NSArray forKey:"arrayWithObjects:count:" arrayWithObjects:1 count:?], v13];
          }
        }

        v10 = [appIds countByEnumeratingWithState:&v49 objects:v66 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v31 = objc_alloc_init(SAAppsGetRestrictedAppsResponse);
    [v31 setAppToItsRestrictionsMap:v47];
    [v31 setRestrictedApps:{-[NSMutableDictionary allKeys](v47, "allKeys")}];
    completion = completionCopy;
  }

  else
  {
    v32 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_12364(self, appIds, v32);
    }

LABEL_32:
    v31 = objc_alloc_init(SACommandFailed);
  }

  dictionary = [v31 dictionary];

  v35 = *v8;
  v36 = os_log_type_enabled(*v8, OS_LOG_TYPE_INFO);
  if (completion)
  {
    if (v36)
    {
      v37 = objc_opt_class();
      *buf = 136315906;
      v55 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
      v56 = 2114;
      v57 = v37;
      v58 = 2048;
      selfCopy7 = self;
      v60 = 2112;
      v61 = dictionary;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> sending response = %@", buf, 0x2Au);
    }

    (*(completion + 2))(completion, dictionary);
  }

  else if (v36)
  {
    v38 = objc_opt_class();
    *buf = 136315906;
    v55 = "[AAPCommandFilterNonRestricted performWithCompletion:]";
    v56 = 2114;
    v57 = v38;
    v58 = 2048;
    selfCopy7 = self;
    v60 = 2112;
    v61 = dictionary;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> no completion block - dropping response = %@", buf, 0x2Au);
  }
}

@end