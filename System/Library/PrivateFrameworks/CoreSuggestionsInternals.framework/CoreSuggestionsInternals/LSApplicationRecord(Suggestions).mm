@interface LSApplicationRecord(Suggestions)
+ (id)sg_applicationRecordForDefaultWebBrowser;
+ (id)sg_preferredApplicationRecordForURL:()Suggestions;
+ (id)sg_preferredApplicationRecordForUserActivityType:()Suggestions withTeamIdentifier:preferredBundleIdentifier:;
- (uint64_t)sg_isAppleBundleIdentifier;
@end

@implementation LSApplicationRecord(Suggestions)

- (uint64_t)sg_isAppleBundleIdentifier
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier hasPrefix:@"com.apple."];

  return v2;
}

+ (id)sg_applicationRecordForDefaultWebBrowser
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"http://"];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationRecord+Suggestions.m" lineNumber:112 description:@"HTTP URL should always construct"];
  }

  v10 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E98]) initWithURL:v4 error:&v10];
  v6 = v5;
  if (v5)
  {
    bundleRecord = [v5 bundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  bundleRecord = 0;
LABEL_7:

  return bundleRecord;
}

+ (id)sg_preferredApplicationRecordForURL:()Suggestions
{
  v3 = a3;
  v11 = 0;
  v4 = [MEMORY[0x277CC1E48] appLinksWithURL:v3 limit:1 includeLinksForCurrentApplication:1 error:&v11];
  v5 = v11;
  if (objc_msgSend_count(v4))
  {
    firstObject = [v4 firstObject];
    targetApplicationRecord = [firstObject targetApplicationRecord];
    goto LABEL_8;
  }

  v10 = v5;
  firstObject = [objc_alloc(MEMORY[0x277CC1E98]) initWithURL:v3 error:&v10];
  v8 = v10;

  if (!firstObject)
  {
    goto LABEL_6;
  }

  targetApplicationRecord = [firstObject bundleRecord];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    targetApplicationRecord = 0;
  }

  v5 = v8;
LABEL_8:

  return targetApplicationRecord;
}

+ (id)sg_preferredApplicationRecordForUserActivityType:()Suggestions withTeamIdentifier:preferredBundleIdentifier:
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 hasPrefix:@"com.apple."])
  {
    firstObject = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
  }

  else if (v8)
  {
    v11 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
    if (v11)
    {
      v55 = 0;
      v12 = [MEMORY[0x277CC1E70] applicationRecordsForUserActivityType:v11 limit:5 error:&v55];
      v13 = v55;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __130__LSApplicationRecord_Suggestions__sg_preferredApplicationRecordForUserActivityType_withTeamIdentifier_preferredBundleIdentifier___block_invoke;
      v53[3] = &unk_27894D5D0;
      v14 = v8;
      v54 = v14;
      v15 = [v12 _pas_filteredArrayWithTest:v53];
      v16 = sgEventsLogHandle();
      v44 = v13;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_msgSend_count(v12);
        v18 = objc_msgSend_count(v15);
        *buf = 134219010;
        v59 = v17;
        v60 = 2048;
        v61 = v18;
        v62 = 2112;
        v63 = v14;
        v64 = 2112;
        v65 = v12;
        v66 = 2112;
        v67 = v15;
        _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEFAULT, "Filtered event records from %tu to %tu filtering for teamIdentifier %@: %@ -> %@", buf, 0x34u);
      }

      if (objc_msgSend_count(v15) == 1 && ([v15 firstObject], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "applicationState"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isInstalled"), v20, v19, v21))
      {
        firstObject = [v15 firstObject];
      }

      else if (objc_msgSend_count(v15))
      {
        v43 = v15;
        if (v9)
        {
          v41 = v12;
          v42 = v11;
          v40 = v7;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v22 = v15;
          v23 = [v22 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v50;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v50 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v49 + 1) + 8 * i);
                applicationState = [v27 applicationState];
                if ([applicationState isInstalled])
                {
                  bundleIdentifier = [v27 bundleIdentifier];
                  v30 = [bundleIdentifier isEqualToString:v9];

                  if (v30)
                  {
                    firstObject = v27;

                    goto LABEL_36;
                  }
                }

                else
                {
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v24);
          }

          firstObject = 0;
LABEL_36:
          v7 = v40;
LABEL_38:
          v12 = v41;
          v11 = v42;
          v13 = v44;
        }

        else
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v31 = v15;
          v32 = [v31 countByEnumeratingWithState:&v45 objects:v56 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v46;
            v41 = v12;
            v42 = v11;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v46 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v45 + 1) + 8 * j);
                applicationState2 = [v36 applicationState];
                isInstalled = [applicationState2 isInstalled];

                if (isInstalled)
                {
                  firstObject = v36;

                  goto LABEL_38;
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v45 objects:v56 count:16];
              v12 = v41;
              v11 = v42;
              v13 = v44;
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          firstObject = 0;
        }

        v15 = v43;
      }

      else
      {
        firstObject = 0;
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end