@interface NSCoder(Sanitization)
- (id)fp_sanitizer;
- (uint64_t)fp_checkProviderIdentifier:()Sanitization;
@end

@implementation NSCoder(Sanitization)

- (id)fp_sanitizer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo = [self userInfo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [userInfo objectForKey:@"FPXPCSanitizerKey"];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)fp_checkProviderIdentifier:()Sanitization
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  fp_sanitizer = [self fp_sanitizer];
  if (fp_sanitizer && (v6 = fp_sanitizer, [v4 fp_toProviderID], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "fp_sanitizer"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "providerIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "fp_toProviderID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "isEqualToString:", v10), v10, v9, v8, v7, v6, (v11 & 1) == 0))
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(NSCoder(Sanitization) *)v4 fp_checkProviderIdentifier:self, v13];
    }

    v14 = MEMORY[0x1E696AEC0];
    fp_sanitizer2 = [self fp_sanitizer];
    providerIdentifier = [fp_sanitizer2 providerIdentifier];
    v17 = [v14 stringWithFormat:@"Got invalid provider identifier %@ from coder for extension %@", v4, providerIdentifier];

    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A250];
    v23 = *MEMORY[0x1E696A278];
    v24[0] = v17;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v21 = [v18 errorWithDomain:v19 code:4101 userInfo:v20];
    [self failWithError:v21];

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)fp_checkProviderIdentifier:()Sanitization .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 fp_sanitizer];
  v6 = [v5 providerIdentifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Got invalid provider identifier %@ from coder for extension %@", &v7, 0x16u);
}

@end