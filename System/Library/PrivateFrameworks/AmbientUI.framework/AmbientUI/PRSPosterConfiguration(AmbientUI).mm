@interface PRSPosterConfiguration(AmbientUI)
- (NSObject)amui_getConfiguredDisplayNameWithError:()AmbientUI;
@end

@implementation PRSPosterConfiguration(AmbientUI)

- (NSObject)amui_getConfiguredDisplayNameWithError:()AmbientUI
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [self pr_loadOtherMetadataWithError:?];
  v6 = v5;
  if (v5)
  {
    displayNameLocalizationKey = [v5 displayNameLocalizationKey];
    if (!displayNameLocalizationKey)
    {
      v8 = AMUILogSwitcher(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(PRSPosterConfiguration(AmbientUI) *)self amui_getConfiguredDisplayNameWithError:v8];
      }
    }

    pr_posterProvider = [self pr_posterProvider];
    if (pr_posterProvider)
    {
      v10 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:pr_posterProvider error:a3];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 URL];

        v13 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithURL:v12];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 localizedStringForKey:displayNameLocalizationKey value:0 table:0];
          v16 = v15;
          if (v15)
          {
            v16 = v15;
            v17 = v16;
          }

          else
          {
            v18 = AMUILogSwitcher(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v20 = 138412802;
              v21 = displayNameLocalizationKey;
              v22 = 2112;
              v23 = v14;
              v24 = 2112;
              selfCopy = self;
              _os_log_error_impl(&dword_23F38B000, v18, OS_LOG_TYPE_ERROR, "Failed to load display name localization key %@ from bundle %@ for %@", &v20, 0x20u);
            }

            v17 = 0;
          }
        }

        else
        {
          v16 = AMUILogSwitcher(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [PRSPosterConfiguration(AmbientUI) amui_getConfiguredDisplayNameWithError:];
          }

          v17 = 0;
        }

        goto LABEL_29;
      }

      v12 = AMUILogSwitcher(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PRSPosterConfiguration(AmbientUI) amui_getConfiguredDisplayNameWithError:];
      }
    }

    else
    {
      v12 = AMUILogSwitcher(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PRSPosterConfiguration(AmbientUI) *)self amui_getConfiguredDisplayNameWithError:v12];
      }
    }

    v17 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (a3)
  {
    v5 = *a3;
    displayNameLocalizationKey = v5;
  }

  else
  {
    displayNameLocalizationKey = 0;
  }

  pr_posterProvider = AMUILogSwitcher(v5);
  if (os_log_type_enabled(pr_posterProvider, OS_LOG_TYPE_ERROR))
  {
    [PRSPosterConfiguration(AmbientUI) amui_getConfiguredDisplayNameWithError:];
  }

  v17 = 0;
LABEL_30:

  return v17;
}

- (void)amui_getConfiguredDisplayNameWithError:()AmbientUI .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "No display name localization key for configuration %@", &v2, 0xCu);
}

- (void)amui_getConfiguredDisplayNameWithError:()AmbientUI .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Missing poster provider from configuration %@", &v2, 0xCu);
}

@end