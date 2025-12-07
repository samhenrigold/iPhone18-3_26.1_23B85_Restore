@interface AAPCommandCheckRestriction
- (void)performWithCompletion:(id)completion;
@end

@implementation AAPCommandCheckRestriction

- (void)performWithCompletion:(id)completion
{
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v40 = sub_C1E8;
  v41 = &unk_20748;
  selfCopy = self;
  completionCopy = completion;
  launchId = [(AAPCommandCheckRestriction *)self launchId];
  if (launchId)
  {
    v5 = launchId;
    if (objc_msgSend_isEqualToString_([(AAPCommandCheckRestriction *)self executionEnvironment]))
    {
      v6 = +[FBSOpenApplicationService dashboardService];
    }

    else
    {
      v6 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    }

    v9 = v6;
    v38 = 1;
    if ([(FBSOpenApplicationService *)v6 canOpenApplication:v5 reason:&v38])
    {
      v10 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        *buf = 136315906;
        v45 = "[AAPCommandCheckRestriction performWithCompletion:]";
        v46 = 2114;
        v47 = v11;
        v48 = 2048;
        selfCopy6 = self;
        v50 = 2112;
        v51 = v5;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can be launched", buf, 0x2Au);
      }

      v12 = SACommandSucceeded_ptr;
      goto LABEL_32;
    }

    if (!v9)
    {
      v14 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_12214(self, v5, v14);
      }

      goto LABEL_31;
    }

    if (v38 == 4)
    {
      v15 = [LSApplicationProxy applicationProxyForIdentifier:v5];
      if (v15)
      {
        v16 = v15;
        isRestricted = [v15 isRestricted];
        v13 = AFSiriLogContextPlugin;
        v18 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO);
        if (isRestricted)
        {
          if (v18)
          {
            v19 = objc_opt_class();
            v20 = v38;
            v21 = FBSOpenApplicationErrorCodeToString();
            isRestricted2 = [v16 isRestricted];
            *buf = 136316674;
            v45 = "[AAPCommandCheckRestriction performWithCompletion:]";
            v46 = 2114;
            v47 = v19;
            v48 = 2048;
            selfCopy6 = self;
            v50 = 2112;
            v51 = v5;
            v52 = 2048;
            v53 = v20;
            v54 = 2112;
            v55 = v21;
            v56 = 1024;
            v57 = isRestricted2;
            v23 = "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) restricted=%i";
            v24 = v13;
            v25 = 68;
LABEL_30:
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, v23, buf, v25);
          }
        }

        else if (v18)
        {
LABEL_28:
          v33 = objc_opt_class();
          v34 = v38;
          v35 = FBSOpenApplicationErrorCodeToString();
          *buf = 136316418;
          v45 = "[AAPCommandCheckRestriction performWithCompletion:]";
          v46 = 2114;
          v47 = v33;
          v48 = 2048;
          selfCopy6 = self;
          v50 = 2112;
          v51 = v5;
          v52 = 2048;
          v53 = v34;
          v54 = 2112;
          v55 = v35;
          v23 = "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@)";
          goto LABEL_29;
        }
      }

      else
      {
        v13 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
        {
          v30 = objc_opt_class();
          v31 = v38;
          v32 = FBSOpenApplicationErrorCodeToString();
          *buf = 136316418;
          v45 = "[AAPCommandCheckRestriction performWithCompletion:]";
          v46 = 2114;
          v47 = v30;
          v48 = 2048;
          selfCopy6 = self;
          v50 = 2112;
          v51 = v5;
          v52 = 2048;
          v53 = v31;
          v54 = 2112;
          v55 = v32;
          v23 = "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) (no app proxy)";
LABEL_29:
          v24 = v13;
          v25 = 62;
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v38 != 5)
      {
        v26 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
        {
          v27 = objc_opt_class();
          v28 = v38;
          v29 = FBSOpenApplicationErrorCodeToString();
          *buf = 136316418;
          v45 = "[AAPCommandCheckRestriction performWithCompletion:]";
          v46 = 2114;
          v47 = v27;
          v48 = 2048;
          selfCopy6 = self;
          v50 = 2112;
          v51 = v5;
          v52 = 2048;
          v53 = v28;
          v54 = 2112;
          v55 = v29;
          _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: <%{public}@:%p> app (%@) can not be launched with result=%li(%@) (could not determine)", buf, 0x3Eu);
        }

        goto LABEL_31;
      }

      v13 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    v12 = SACommandFailed_ptr;
LABEL_32:
    v8 = *v12;
    goto LABEL_33;
  }

  v7 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
  {
    sub_122C8(self, v7);
  }

  v8 = SACommandFailed;
LABEL_33:
  v36 = objc_alloc_init(v8);
  dictionary = [v36 dictionary];
  v40(v39, dictionary);
}

@end