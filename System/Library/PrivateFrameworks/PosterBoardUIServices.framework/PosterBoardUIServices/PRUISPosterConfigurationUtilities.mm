@interface PRUISPosterConfigurationUtilities
+ (id)titleStyleAttributesForConfiguration:(id)configuration error:(id *)error;
@end

@implementation PRUISPosterConfigurationUtilities

+ (id)titleStyleAttributesForConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v41 = 0;
  v6 = [configurationCopy pr_loadTitleStyleConfigurationWithError:&v41];
  v7 = v41;
  v8 = v7;
  if (v6)
  {
    pr_posterProvider = [configurationCopy pr_posterProvider];
    if (pr_posterProvider)
    {
      v40 = v8;
      v10 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:pr_posterProvider error:&v40];
      v11 = v40;

      v12 = [v10 URL];
      if (v12)
      {
        v13 = v12;

        v14 = [PRUISPosterTitleStyleAttributes alloc];
        role = [configurationCopy role];
        v16 = [(PRUISPosterTitleStyleAttributes *)v14 initWithPRPosterTitleStyleConfiguration:v6 extensionBundleURL:v13 role:role];

        v10 = v13;
      }

      else
      {
        v31 = PRUISLogCommon(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PRUISPosterConfigurationUtilities *)v11 titleStyleAttributesForConfiguration:v31 error:v32, v33, v34, v35, v36, v37];
        }

        v16 = 0;
        if (error && v11)
        {
          v38 = v11;
          v16 = 0;
          *error = v11;
        }
      }

      v8 = v11;
    }

    else
    {
      v10 = PRUISLogCommon(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterConfigurationUtilities *)configurationCopy titleStyleAttributesForConfiguration:v10 error:v25, v26, v27, v28, v29, v30];
      }

      v16 = 0;
    }
  }

  else
  {
    v17 = PRUISLogCommon(v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(PRUISPosterConfigurationUtilities *)v8 titleStyleAttributesForConfiguration:v17 error:v18, v19, v20, v21, v22, v23];
    }

    v16 = 0;
    if (error && v8)
    {
      v24 = v8;
      v16 = 0;
      *error = v8;
    }
  }

  return v16;
}

+ (void)titleStyleAttributesForConfiguration:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3(&dword_1CAE63000, a2, a3, "[PRUISPosterConfigurationUtilities] Unable to resolve extension bundle URL: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)titleStyleAttributesForConfiguration:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3(&dword_1CAE63000, a2, a3, "[PRUISPosterConfigurationUtilities] Missing poster provider from the poster configuration %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)titleStyleAttributesForConfiguration:(uint64_t)a3 error:(uint64_t)a4 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3(&dword_1CAE63000, a2, a3, "[PRUISPosterConfigurationUtilities] Unable to load title style configuration: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end