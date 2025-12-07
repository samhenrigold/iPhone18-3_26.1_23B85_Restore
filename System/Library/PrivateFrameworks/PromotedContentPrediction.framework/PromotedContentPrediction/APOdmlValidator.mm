@interface APOdmlValidator
+ (int64_t)permissionCheck:(id)check personalizedAdsEnabled:(BOOL)enabled trialKillswitch:(BOOL)killswitch;
@end

@implementation APOdmlValidator

+ (int64_t)permissionCheck:(id)check personalizedAdsEnabled:(BOOL)enabled trialKillswitch:(BOOL)killswitch
{
  killswitchCopy = killswitch;
  v79 = *MEMORY[0x277D85DE8];
  checkCopy = check;
  v8 = OdmlLogForCategory(5uLL);
  v9 = os_signpost_id_generate(v8);

  v10 = OdmlLogForCategory(5uLL);
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 134283521;
    v75 = [checkCopy count];
    _os_signpost_emit_with_name_impl(&dword_260ECB000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Permission Check", "%{private}lu", buf, 0xCu);
  }

  if (!enabled)
  {
    v20 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138412290;
      v75 = v21;
      v22 = v21;
      _os_log_impl(&dword_260ECB000, v20, OS_LOG_TYPE_DEFAULT, "[%@] Cannot rerank if Personalized Ads is disabled.", buf, 0xCu);
    }

    v23 = OdmlLogForCategory(5uLL);
    v24 = v23;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = [checkCopy count];
      *buf = 134283521;
      v75 = v25;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v24, OS_SIGNPOST_INTERVAL_END, v9, "Permission Check", "%{private}lu", buf, 0xCu);
    }

    v19 = &kAPOdmlPersonalizedAdsDisabled;
    goto LABEL_18;
  }

  if (killswitchCopy)
  {
    v13 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138412290;
      v75 = v14;
      v15 = v14;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_DEFAULT, "[%@] Reranking is disabled on Trial.", buf, 0xCu);
    }

    v16 = OdmlLogForCategory(5uLL);
    v17 = v16;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v18 = [checkCopy count];
      *buf = 134283521;
      v75 = v18;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v17, OS_SIGNPOST_INTERVAL_END, v9, "Permission Check", "%{private}lu", buf, 0xCu);
    }

    v19 = &kAPOdmlRerankingDisabledWithTrial;
    goto LABEL_18;
  }

  if ([MEMORY[0x277CCAC38] isInternalInstall])
  {
    v28 = [APOdmlDefaults BOOLForKey:@"ODMLAllowListDisabled"];
  }

  else
  {
    v28 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = checkCopy;
  v29 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (!v29)
  {
    goto LABEL_37;
  }

  v30 = v29;
  v31 = *v71;
  spid = v9;
  v68 = checkCopy;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v71 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(*(&v70 + 1) + 8 * i);
      odmlResponse = [v33 odmlResponse];

      if (!odmlResponse)
      {
        v49 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = objc_opt_class();
          *buf = 138412290;
          v75 = v50;
          v51 = v50;
          _os_log_impl(&dword_260ECB000, v49, OS_LOG_TYPE_DEFAULT, "[%@] ODML Response not found.", buf, 0xCu);
        }

        v52 = OdmlLogForCategory(5uLL);
        v53 = v52;
        checkCopy = v68;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
        {
          v54 = [obj count];
          *buf = 134283521;
          v75 = v54;
          _os_signpost_emit_with_name_impl(&dword_260ECB000, v53, OS_SIGNPOST_INTERVAL_END, spid, "Permission Check", "%{private}lu", buf, 0xCu);
        }

        v55 = &kAPOdmlRerankingResponseNotFound;
        goto LABEL_61;
      }

      odmlResponse2 = [v33 odmlResponse];
      odmlEnabled = [odmlResponse2 odmlEnabled];

      if ((odmlEnabled & 1) == 0)
      {
        v56 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = objc_opt_class();
          *buf = 138412290;
          v75 = v57;
          v58 = v57;
          _os_log_impl(&dword_260ECB000, v56, OS_LOG_TYPE_DEFAULT, "[%@] Reranking is disabled on the server.", buf, 0xCu);
        }

        v59 = OdmlLogForCategory(5uLL);
        v53 = v59;
        checkCopy = v68;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
        {
          v60 = [obj count];
          *buf = 134283521;
          v75 = v60;
          _os_signpost_emit_with_name_impl(&dword_260ECB000, v53, OS_SIGNPOST_INTERVAL_END, spid, "Permission Check", "%{private}lu", buf, 0xCu);
        }

        v55 = &kAPOdmlRerankingDisabledWithServer;
        goto LABEL_61;
      }

      if (!v28)
      {
        v40 = +[APOdmlAllowList sharedInstance];
        adamID = [v33 adamID];
        v42 = [v40 isAllowed:adamID];

        if (v42)
        {
          continue;
        }

        v61 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v62 = objc_opt_class();
          v63 = v62;
          adamID2 = [v33 adamID];
          *buf = 138412546;
          v75 = v62;
          v76 = 2112;
          v77 = adamID2;
          _os_log_impl(&dword_260ECB000, v61, OS_LOG_TYPE_DEFAULT, "[%@] Allowlist doesn't include %@.", buf, 0x16u);
        }

        v65 = OdmlLogForCategory(5uLL);
        v53 = v65;
        checkCopy = v68;
        if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
        {
          v66 = [obj count];
          *buf = 134283521;
          v75 = v66;
          _os_signpost_emit_with_name_impl(&dword_260ECB000, v53, OS_SIGNPOST_INTERVAL_END, spid, "Permission Check", "%{private}lu", buf, 0xCu);
        }

        v55 = &kAPOdmlRerankingNotPermittedErrorCode;
LABEL_61:

        v26 = *v55;
        goto LABEL_19;
      }

      v37 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        *buf = 138412290;
        v75 = v38;
        v39 = v38;
        _os_log_impl(&dword_260ECB000, v37, OS_LOG_TYPE_DEFAULT, "[%@] Allowlist is disabled and thus allowlist check will be bypassed.", buf, 0xCu);
      }
    }

    v30 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
    v9 = spid;
    checkCopy = v68;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_37:

  v43 = OdmlLogForCategory(5uLL);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = objc_opt_class();
    *buf = 138412290;
    v75 = v44;
    v45 = v44;
    _os_log_impl(&dword_260ECB000, v43, OS_LOG_TYPE_DEFAULT, "[%@] Reranking permission is granted. Reranking will start soon.", buf, 0xCu);
  }

  v46 = OdmlLogForCategory(5uLL);
  v47 = v46;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    v48 = [obj count];
    *buf = 134283521;
    v75 = v48;
    _os_signpost_emit_with_name_impl(&dword_260ECB000, v47, OS_SIGNPOST_INTERVAL_END, v9, "Permission Check", "%{private}lu", buf, 0xCu);
  }

  v19 = &kAPOdmlRerankingPermitted;
LABEL_18:
  v26 = *v19;
LABEL_19:

  return v26;
}

@end