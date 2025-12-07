@interface LSBundleRecord(LNAdditions)
+ (id)platformToSDKMapping2024;
+ (id)platformToSDKMapping2025;
+ (uint64_t)bundle:()LNAdditions linkedOnOrAfter:;
+ (uint64_t)bundleLinkedOnOrAfter2024:()LNAdditions;
+ (uint64_t)bundleLinkedOnOrAfter2025:()LNAdditions;
- (BOOL)linkedOnOrAfter:()LNAdditions;
- (id)ln_linkedFrameworksWithError:()LNAdditions;
- (uint64_t)linkedOnOrAfter2024;
- (uint64_t)linkedOnOrAfter2025;
@end

@implementation LSBundleRecord(LNAdditions)

- (BOOL)linkedOnOrAfter:()LNAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  sDKVersion = [self SDKVersion];

  if (!sDKVersion)
  {
    v7 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [self bundleIdentifier];
      *v16 = 138543362;
      *&v16[4] = bundleIdentifier;
      _os_log_impl(&dword_18EF7E000, v7, OS_LOG_TYPE_DEFAULT, "No SDKVersion for %{public}@", v16, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(self, "platform")}];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  *v16 = 0u;
  v17 = 0u;
  sDKVersion2 = [self SDKVersion];
  MEMORY[0x193AD91A0](v16);

  memset(v15, 0, sizeof(v15));
  MEMORY[0x193AD91A0](v15, v7);
  v9 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    sDKVersion3 = [self SDKVersion];
    *buf = 138543618;
    *&buf[4] = sDKVersion3;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_18EF7E000, v9, OS_LOG_TYPE_INFO, "Comparing %{public}@ to %{public}@", buf, 0x16u);
  }

  *buf = *v16;
  *&buf[16] = v17;
  v11 = _LSVersionNumberCompare() != -1;
LABEL_9:

  return v11;
}

- (uint64_t)linkedOnOrAfter2025
{
  platformToSDKMapping2025 = [objc_opt_class() platformToSDKMapping2025];
  v4 = [self linkedOnOrAfter:platformToSDKMapping2025];

  return v4;
}

- (uint64_t)linkedOnOrAfter2024
{
  platformToSDKMapping2024 = [objc_opt_class() platformToSDKMapping2024];
  v4 = [self linkedOnOrAfter:platformToSDKMapping2024];

  return v4;
}

- (id)ln_linkedFrameworksWithError:()LNAdditions
{
  executableURL = [self executableURL];
  v5 = [executableURL ln_linkedFrameworksWithError:a3];

  return v5;
}

+ (id)platformToSDKMapping2025
{
  v3[10] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F02FF090;
  v2[1] = &unk_1F02FF0A8;
  v3[0] = @"26.0";
  v3[1] = @"26.0";
  v2[2] = &unk_1F02FF0C0;
  v2[3] = &unk_1F02FF0D8;
  v3[2] = @"26.0";
  v3[3] = @"26.0";
  v2[4] = &unk_1F02FF0F0;
  v2[5] = &unk_1F02FF108;
  v3[4] = @"26.0";
  v3[5] = @"26.0";
  v2[6] = &unk_1F02FF120;
  v2[7] = &unk_1F02FF138;
  v3[6] = @"26.0";
  v3[7] = @"26.0";
  v2[8] = &unk_1F02FF150;
  v2[9] = &unk_1F02FF168;
  v3[8] = @"26.0";
  v3[9] = @"26.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:10];

  return v0;
}

+ (id)platformToSDKMapping2024
{
  v3[10] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F02FF090;
  v2[1] = &unk_1F02FF0A8;
  v3[0] = @"15.0";
  v3[1] = @"18.0";
  v2[2] = &unk_1F02FF0C0;
  v2[3] = &unk_1F02FF0D8;
  v3[2] = @"18.0";
  v3[3] = @"18.0";
  v2[4] = &unk_1F02FF0F0;
  v2[5] = &unk_1F02FF108;
  v3[4] = @"18.0";
  v3[5] = @"18.0";
  v2[6] = &unk_1F02FF120;
  v2[7] = &unk_1F02FF138;
  v3[6] = @"18.0";
  v3[7] = @"18.0";
  v2[8] = &unk_1F02FF150;
  v2[9] = &unk_1F02FF168;
  v3[8] = @"2.0";
  v3[9] = @"2.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:10];

  return v0;
}

+ (uint64_t)bundle:()LNAdditions linkedOnOrAfter:
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v7 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v5 allowPlaceholder:0 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 linkedOnOrAfter:v6];
  }

  else
  {
    v10 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_18EF7E000, v10, OS_LOG_TYPE_ERROR, "Unable to create a bundle record for %{public}@: %{public}@", buf, 0x16u);
    }

    v9 = 1;
  }

  return v9;
}

+ (uint64_t)bundleLinkedOnOrAfter2025:()LNAdditions
{
  v4 = a3;
  platformToSDKMapping2025 = [self platformToSDKMapping2025];
  v6 = [self bundle:v4 linkedOnOrAfter:platformToSDKMapping2025];

  return v6;
}

+ (uint64_t)bundleLinkedOnOrAfter2024:()LNAdditions
{
  v4 = a3;
  platformToSDKMapping2024 = [self platformToSDKMapping2024];
  v6 = [self bundle:v4 linkedOnOrAfter:platformToSDKMapping2024];

  return v6;
}

@end