@interface RDCustomProfile
+ (id)createContactProfile:(id)profile config:(id)config lang:(id)lang isJit:(BOOL)jit;
- (RDCustomProfile)initWithLanguage:(id)language assetPath:(id)path;
@end

@implementation RDCustomProfile

- (RDCustomProfile)initWithLanguage:(id)language assetPath:(id)path
{
  languageCopy = language;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = RDCustomProfile;
  v9 = [(RDCustomProfile *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_langugage, language);
    objc_storeStrong(&v10->_assetPath, path);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/mini.json", v10->_assetPath];
    v12 = sub_272373A4C(v11, languageCopy, 0);
    builder = v10->_builder;
    v10->_builder = v12;
  }

  return v10;
}

+ (id)createContactProfile:(id)profile config:(id)config lang:(id)lang isJit:(BOOL)jit
{
  v108 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  configCopy = config;
  langCopy = lang;
  v12 = sub_272373A4C(configCopy, langCopy, jit);
  v13 = langCopy;
  v14 = profileCopy;
  [v12 removeAllWords];
  v89 = 0;
  v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v14 options:1 error:&v89];
  v16 = v89;
  if (!v15)
  {
    v17 = sub_272374688();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v58 = [v16 description];
      uTF8String = [v58 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String;
      _os_log_error_impl(&dword_2721E4000, v17, OS_LOG_TYPE_ERROR, "Could not parse user profile: %s\n", buf, 0xCu);
    }

    goto LABEL_57;
  }

  if (![v15 count])
  {
    v17 = sub_272374688();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2721E4000, v17, OS_LOG_TYPE_ERROR, "Empty user profile JSON\n", buf, 2u);
    }

    goto LABEL_57;
  }

  v17 = [v15 objectForKeyedSubscript:@"userData"];
  v83 = configCopy;
  if (v17)
  {
    if (![&stru_2881908A8 length])
    {
LABEL_38:
      v44 = v12;
      v45 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_2723746DC;
        v105 = &unk_279E407D0;
        v106 = v44;
        v107 = 0;
        v46 = v44;
        [v45 enumerateKeysAndObjectsUsingBlock:buf];

        goto LABEL_42;
      }

      v67 = sub_272374688();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v68 = "Malformed UDG profile, exiting...\n";
LABEL_60:
        v69 = buf;
LABEL_61:
        _os_log_error_impl(&dword_2721E4000, v67, OS_LOG_TYPE_ERROR, v68, v69, 2u);
        goto LABEL_62;
      }

      goto LABEL_62;
    }

    v18 = sub_272374688();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      uTF8String2 = [&stru_2881908A8 UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String2;
      _os_log_error_impl(&dword_2721E4000, v18, OS_LOG_TYPE_ERROR, "Got simulated prior file from input: %s\n", buf, 0xCu);
    }

    v88 = v16;
    v19 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:&stru_2881908A8 options:0 error:&v88];
    v20 = v88;

    if (v19)
    {
      v87 = v20;
      v81 = v19;
      v21 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v19 options:0 error:&v87];
      v16 = v87;

      if (v21)
      {
        if ([v21 count])
        {
          v77 = v21;
          v79 = v15;
          v80 = v13;
          v22 = [v21 objectForKeyedSubscript:@"userData"];
          v78 = v17;
          v82 = v17;
          v23 = v22;
          array = [MEMORY[0x277CBEB18] array];
          v76 = v23;
          v24 = [v23 objectForKeyedSubscript:@"urn:contacts:com.apple.contact.people"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v67 = sub_272374688();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v68 = "Missing contact data in simulated priors file\n";
              goto LABEL_60;
            }

            goto LABEL_62;
          }

          v74 = v14;
          v75 = v12;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          obj = v24;
          v25 = [obj countByEnumeratingWithState:&v98 objects:buf count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v99;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v99 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v98 + 1) + 8 * i);
                v30 = [v29 objectForKey:{@"priorScore", v74, v75}];
                v31 = [v30 isEqual:&unk_28819E760];

                if (v31)
                {
                  v32 = [v29 objectForKey:@"index"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [array addObject:v32];
                  }
                }
              }

              v26 = [obj countByEnumeratingWithState:&v98 objects:buf count:16];
            }

            while (v26);
          }

          v33 = [v82 objectForKeyedSubscript:@"urn:contacts:com.apple.contact.people"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v67 = sub_272374688();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v103[0] = 0;
              v68 = "Missing user contact data in UDG file\n";
              v69 = v103;
              goto LABEL_61;
            }

            goto LABEL_62;
          }

          v97 = 0u;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          v85 = array;
          v34 = [v85 countByEnumeratingWithState:&v94 objects:v103 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v95;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v95 != v36)
                {
                  objc_enumerationMutation(v85);
                }

                v38 = *(*(&v94 + 1) + 8 * j);
                v90 = 0u;
                v91 = 0u;
                v92 = 0u;
                v93 = 0u;
                v39 = [v33 objectAtIndex:{objc_msgSend(v38, "integerValue", v74, v75)}];
                v40 = [v39 countByEnumeratingWithState:&v90 objects:v102 count:16];
                if (v40)
                {
                  v41 = v40;
                  v42 = *v91;
                  do
                  {
                    for (k = 0; k != v41; ++k)
                    {
                      if (*v91 != v42)
                      {
                        objc_enumerationMutation(v39);
                      }

                      [*(*(&v90 + 1) + 8 * k) setObject:&unk_28819E770 forKey:@"frequency"];
                    }

                    v41 = [v39 countByEnumeratingWithState:&v90 objects:v102 count:16];
                  }

                  while (v41);
                }
              }

              v35 = [v85 countByEnumeratingWithState:&v94 objects:v103 count:16];
            }

            while (v35);
          }

          v14 = v74;
          v12 = v75;
          v15 = v79;
          v13 = v80;
          v17 = v78;
          goto LABEL_38;
        }

        v62 = sub_272374688();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          uTF8String3 = [&stru_2881908A8 UTF8String];
          *buf = 136315138;
          *&buf[4] = uTF8String3;
          _os_log_error_impl(&dword_2721E4000, v62, OS_LOG_TYPE_ERROR, "Empty simulated priors JSON at %s\n", buf, 0xCu);
        }
      }

      else
      {
        v62 = sub_272374688();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          uTF8String4 = [&stru_2881908A8 UTF8String];
          v64 = [v16 description];
          uTF8String5 = [v64 UTF8String];
          *buf = 136315394;
          *&buf[4] = uTF8String4;
          *&buf[12] = 2080;
          *&buf[14] = uTF8String5;
          _os_log_error_impl(&dword_2721E4000, v62, OS_LOG_TYPE_ERROR, "Could not parse simulated priors info %s: %s\n", buf, 0x16u);
        }
      }
    }

    else
    {
      v70 = sub_272374688();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        uTF8String6 = [&stru_2881908A8 UTF8String];
        v72 = [v20 description];
        uTF8String7 = [v72 UTF8String];
        *buf = 136315394;
        *&buf[4] = uTF8String6;
        *&buf[12] = 2080;
        *&buf[14] = uTF8String7;
        _os_log_error_impl(&dword_2721E4000, v70, OS_LOG_TYPE_ERROR, "Could not read simulated priors info %s: %s\n", buf, 0x16u);
      }

      v16 = v20;
    }

LABEL_57:

    goto LABEL_58;
  }

  v47 = v16;
  allKeys = [v15 allKeys];
  firstObject = [allKeys firstObject];

  v50 = [v15 objectForKeyedSubscript:firstObject];
  v51 = v12;
  v52 = v50;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v67 = sub_272374688();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v68 = "Malformed Quasar profile, exiting...\n";
      goto LABEL_60;
    }

LABEL_62:

    exit(1);
  }

  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_272374D38;
  v105 = &unk_279E407F8;
  v106 = v51;
  v53 = v51;
  [v52 enumerateKeysAndObjectsUsingBlock:buf];

  v16 = v47;
LABEL_42:

  dataProfile = [v12 dataProfile];
  if (!dataProfile)
  {
LABEL_58:
    v67 = sub_272374688();
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v68 = "Could not get profile data\n";
    goto LABEL_60;
  }

  v55 = dataProfile;
  v56 = sub_272374688();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    v60 = [v55 length];
    *buf = 134217984;
    *&buf[4] = v60;
    _os_log_error_impl(&dword_2721E4000, v56, OS_LOG_TYPE_ERROR, "Switching to profile of %ld bytes\n", buf, 0xCu);
  }

  return v55;
}

@end