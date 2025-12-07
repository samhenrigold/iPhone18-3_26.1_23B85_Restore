id PDULocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.PrivacyDisclosureUI"];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:0];

  return v4;
}

id getDescriptionForCategorySuffix(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [@"NSRegulatoryPrivacyDisclosure" stringByAppendingString:a2];
  v5 = lookupLocalizedString(v3, v4);

  return v5;
}

id lookupLocalizedString(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (platformSpecificSuffixes_once != -1)
  {
    lookupLocalizedString_cold_1();
  }

  v5 = platformSpecificSuffixes_suffixes;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v4 stringByAppendingString:{*(*(&v13 + 1) + 8 * v9), v13}];
      v11 = [v3 objectForKeyedSubscript:v10];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  return v11;
}

void PDURetrieveLocalizedTitlesAndDescriptions(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v18 = a2;
  if (a2)
  {
    a2 = [MEMORY[0x277CBEB18] array];
  }

  v19 = a3;
  if (a3)
  {
    v6 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v6 = 0;
  }

  v20 = v5;
  v7 = [v5 localizedInfoDictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [&unk_2871C00E0 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(&unk_2871C00E0);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = getDescriptionForCategorySuffix(v7, v12);
        if (v13)
        {
          v14 = [@"DISCLOSURE_TITLE_" stringByAppendingString:v12];
          v15 = PDULocalizedString(v14);

          [a2 addObject:v15];
          [v6 addObject:v13];
        }
      }

      v9 = [&unk_2871C00E0 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  if (v18)
  {
    v16 = a2;
    *v18 = a2;
  }

  if (v19)
  {
    v17 = v6;
    *v19 = v6;
  }
}

id PDUWelcomeTitleTextForAppRecord(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = [v1 URL];
  v4 = [v2 bundleWithURL:v3];

  v5 = [v4 localizedInfoDictionary];
  v6 = lookupLocalizedString(v5, @"NSRegulatoryPrivacyDisclosureTitle");
  if (!v6)
  {
    v7 = [v1 localizedName];
    v8 = PDULocalizedString(@"WELCOME_TITLE");
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v7];
  }

  return v6;
}

id PDULearnMoreDetailTextForAppRecord(void *a1)
{
  v1 = a1;
  v2 = PDULocalizedString(@"WELCOME_LEARN_MORE_DETAIL");
  v3 = MEMORY[0x277CCACA8];
  v4 = [v1 localizedName];

  v5 = [v3 stringWithFormat:v2, v4];

  return v5;
}

id PDULocalizedNameForAppRecord(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = [v1 URL];
  v4 = [v2 bundleWithURL:v3];

  v5 = [v4 localizedInfoDictionary];
  v6 = lookupLocalizedString(v5, @"NSRegulatoryPrivacyDisclosureName");
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v1 localizedName];
  }

  v9 = v8;

  return v9;
}

id PDUWelcomeDetailTextForAppRecord(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CCA8D8];
  v3 = [v1 URL];
  v4 = [v2 bundleWithURL:v3];

  v5 = [v4 localizedInfoDictionary];
  v6 = lookupLocalizedString(v5, @"NSRegulatoryPrivacyDisclosureSummary");
  if (!v6)
  {
    v6 = [v5 objectForKeyedSubscript:@"NSRegulatoryPrivacyDisclosureSummmary"];
  }

  v7 = [MEMORY[0x277CBEB18] array];
  if (v6 && [v6 length])
  {
    [v7 addObject:v6];
  }

  v8 = PDULearnMoreDetailTextForAppRecord(v1);
  [v7 addObject:v8];

  v9 = [v7 componentsJoinedByString:@"\n\n"];

  return v9;
}

BOOL PDUShouldShowLearnMoreScreen(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA8D8];
  v2 = [a1 URL];
  v3 = [v1 bundleWithURL:v2];

  v4 = [v3 localizedInfoDictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [&unk_2871C00E0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(&unk_2871C00E0);
      }

      v10 = getDescriptionForCategorySuffix(v4, *(*(&v14 + 1) + 8 * i));
      if (v10)
      {
        ++v7;
      }
    }

    v6 = [&unk_2871C00E0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v6);
  if (v7)
  {
    v11 = 1;
  }

  else
  {
LABEL_12:
    v12 = [v3 pdu_aboutPrivacyBundleID];
    v11 = v12 != 0;
  }

  return v11;
}

id PDULocalizedNameForBundle(void *a1)
{
  v1 = a1;
  v2 = [v1 localizedInfoDictionary];
  v3 = localizedNameForDictionary(v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v1 infoDictionary];
    v5 = localizedNameForDictionary(v6);
  }

  return v5;
}

id localizedNameForDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"CFBundleDisplayName"];
  if (!v2)
  {
    v2 = [v1 objectForKeyedSubscript:@"CFBundleName"];
  }

  return v2;
}

void __platformSpecificSuffixes_block_invoke()
{
  v4 = [MEMORY[0x277CBEB18] array];
  v0 = MGGetSInt32Answer();
  switch(v0)
  {
    case 6:
      v1 = @"_Watch";
      break;
    case 3:
      v1 = @"_iPad";
      break;
    case 1:
      v1 = @"_iPhone";
      break;
    default:
      goto LABEL_8;
  }

  [v4 addObject:v1];
LABEL_8:
  [v4 addObject:@"_iOS"];
  [v4 addObject:&stru_2871BEA18];
  v2 = [v4 copy];
  v3 = platformSpecificSuffixes_suffixes;
  platformSpecificSuffixes_suffixes = v2;
}

PDUDisclosureReviewViewController_iOS *PDUDisclosureReviewViewControllerForBundleWithVariant(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[PDUDisclosureReviewViewController_iOS alloc] initWithBundle:v3 variant:a2];

  return v4;
}

id PDUDisclosureReviewViewControllerForApplicationWithVariant(void *a1, uint64_t a2)
{
  v3 = a1;
  v14 = 0;
  v4 = [v3 findApplicationRecordWithError:&v14];
  v5 = v14;
  v7 = v5;
  if (v5)
  {
    v8 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      PDUDisclosureReviewViewControllerForApplicationWithVariant_cold_1(v3, v7, v8);
    }

    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCA8D8];
    v11 = [v4 URL];
    v12 = [v10 bundleWithURL:v11];

    v9 = PDUDisclosureReviewViewControllerForBundleWithVariant(v12, a2);
  }

  return v9;
}

BOOL PDUDoesApplicationSupportDisclosureReview()
{
  v0 = PDCCurrentRegulatoryDisclosureVersionForApplicationIdentity();
  v1 = v0 != 0;

  return v1;
}

id PDUAllApplicationsSupportingDisclosureReview()
{
  v33 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D412D0] isPreflightFeatureEnabled])
  {
    v0 = [MEMORY[0x277CBEB58] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v1 = PDCGlobalApplicationEnvironment();
    v2 = [v1 allApplications];

    v3 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v28;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v28 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v27 + 1) + 8 * i);
          v8 = [v7 regulatoryPrivacyDisclosureVersion];

          if (v8)
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v9 = [v7 identities];
            v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v24;
              do
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v24 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = PDCApplicationIdentityToLSApplicationIdentity();
                  [v0 addObject:v14];
                }

                v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v11);
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v4);
    }

    v22 = 0;
    v15 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Preferences" allowPlaceholder:0 error:&v22];
    v16 = v22;
    v18 = v16;
    if (v16)
    {
      v19 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI(v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        PDUAllApplicationsSupportingDisclosureReview_cold_1(v18, v19);
      }
    }

    else if (v15)
    {
      v20 = [v15 identities];
      [v0 addObjectsFromArray:v20];
    }
  }

  else
  {
    v0 = [MEMORY[0x277CBEB98] set];
  }

  return v0;
}

id PDUGetBundle(uint64_t a1)
{
  if (PDUGetBundle_once != -1)
  {
    PDUGetBundle_cold_1();
  }

  v2 = PDUGetBundle_result;

  return v2;
}

uint64_t __PDUGetBundle_block_invoke()
{
  PDUGetBundle_result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id PDUConvertColorString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2 == 6)
  {
    v10 = 0;
    HIDWORD(v9) = 0;
    if (sscanf([v1 cStringUsingEncoding:1], "%02x%02x%02x", &v10 + 4, &v10, &v9 + 4) == 3)
    {
      v4 = v10;
      v3 = HIDWORD(v10);
      v6 = 1.0;
      v5 = HIDWORD(v9);
      goto LABEL_7;
    }
  }

  else if (v2 == 8)
  {
    v9 = 0;
    v10 = 0;
    if (sscanf([v1 cStringUsingEncoding:1], "%02x%02x%02x%02x", &v10 + 4, &v10, &v9 + 4, &v9) == 4)
    {
      v4 = v10;
      v3 = HIDWORD(v10);
      v5 = HIDWORD(v9);
      v6 = v9 / 255.0;
LABEL_7:

      v7 = [MEMORY[0x277D75348] colorWithRed:v3 / 255.0 green:v4 / 255.0 blue:v5 / 255.0 alpha:v6];
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

uint64_t PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI(uint64_t a1, uint64_t a2)
{
  if (PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI_onceToken != -1)
  {
    PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI_cold_1();
  }

  return PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI_log;
}

id PDUWelcomeViewControllerForApplication(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = PDCGlobalConsentStoreInstance();
  v6 = PDUWelcomeViewControllerForApplicationWithConsentStore(v4, v3, v5);

  return v6;
}

PDUWelcomeViewController_iOS *PDUWelcomeViewControllerForApplicationWithConsentStore(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [[PDUWelcomeViewController_iOS alloc] initWithApplicationIdentity:v7 consentStore:v5];

  [(PDUWelcomeViewController_iOS *)v8 setDelegate:v6];

  return v8;
}

id stackForViews(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [objc_alloc(MEMORY[0x277D75A68]) initWithArrangedSubviews:v1];
    [v2 setAxis:1];
    [v2 setDistribution:0];
    [v2 setSpacing:1.17549435e-38];
    [v2 setLayoutMarginsRelativeArrangement:1];
    [v2 setPreservesSuperviewLayoutMargins:1];
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void fillViewWithNewSubview(void *a1, void *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  [v4 addSubview:v3];
  v18 = [v3 leadingAnchor];
  v19 = [v4 layoutMarginsGuide];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [v3 trailingAnchor];
  v15 = [v4 layoutMarginsGuide];
  v5 = [v15 trailingAnchor];
  v6 = [v14 constraintEqualToAnchor:v5];
  v20[1] = v6;
  v7 = [v3 topAnchor];
  v8 = [v4 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v20[2] = v9;
  v10 = [v3 bottomAnchor];

  v11 = [v4 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v20[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  [v4 addConstraints:v13];

  [v4 setNeedsLayout];
}

id PDUWelcomeTintColorForApplicationIdentity(void *a1)
{
  v1 = a1;
  v9 = 0;
  v2 = [v1 findApplicationRecordWithError:&v9];
  v3 = v9;
  v5 = v3;
  if (v3)
  {
    v6 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureUI(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      PDUDisclosureReviewViewControllerForApplicationWithVariant_cold_1(v1, v5, v6);
    }

    v7 = 0;
  }

  else
  {
    v7 = PDUWelcomeTintColorForApplicationRecord(v2);
  }

  return v7;
}

id PDUWelcomeTintColorForApplicationRecord(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = [a1 URL];
  v3 = [v1 bundleWithURL:v2];
  v4 = PDUWelcomeTintColorForBundle(v3);

  return v4;
}

id PDUWelcomeTintColorForBundle(uint64_t a1)
{
  v1 = [PDUAppDisclosureStyle styleWithBundle:a1];
  v2 = [v1 tintColor];

  return v2;
}

void PDUDisclosureReviewViewControllerForApplicationWithVariant_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_25F70A000, log, OS_LOG_TYPE_ERROR, "Attempt to locate app %@ failed: %@", &v3, 0x16u);
}

void PDUAllApplicationsSupportingDisclosureReview_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25F70A000, a2, OS_LOG_TYPE_ERROR, "Attempt to locate settings failed: %@", &v2, 0xCu);
}