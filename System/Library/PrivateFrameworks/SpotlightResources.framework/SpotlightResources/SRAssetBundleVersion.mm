@interface SRAssetBundleVersion
- (SRAssetBundleVersion)initWithBundleVersion:(id)version;
- (int64_t)compare:(id)compare;
@end

@implementation SRAssetBundleVersion

- (SRAssetBundleVersion)initWithBundleVersion:(id)version
{
  versionCopy = version;
  v9.receiver = self;
  v9.super_class = SRAssetBundleVersion;
  v6 = [(SRAssetBundleVersion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_version, version);
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  version = [compare version];
  version = self->_version;
  p_version = &self->_version;
  v7 = [(NSString *)version componentsSeparatedByString:@"."];
  v8 = [version componentsSeparatedByString:@"."];
  v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v9 setNumberStyle:1];
  v10 = [v7 count];
  v11 = [v8 count];
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = [v7 objectAtIndex:v13];
      v15 = [v9 numberFromString:v14];

      v16 = [v8 objectAtIndex:v13];
      v17 = [v9 numberFromString:v16];

      if (!v15)
      {
        break;
      }

      if (!v17)
      {
        v17 = SRLogCategoryAssets(v18);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [SRAssetBundleVersion compare:];
        }

        v19 = 1;
        goto LABEL_21;
      }

      v19 = [v15 compare:v17];

      if (v19)
      {
        goto LABEL_22;
      }

      if (v12 == ++v13)
      {
        goto LABEL_10;
      }
    }

    v22 = SRLogCategoryAssets(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(SRAssetBundleVersion *)p_version compare:v22, v23, v24, v25, v26, v27, v28];
    }

    v19 = -1;
LABEL_21:
  }

  else
  {
LABEL_10:
    v20 = [v7 count];
    if (v20 == [v8 count])
    {
      v19 = 0;
    }

    else
    {
      v21 = [v7 count];
      if (v21 < [v8 count])
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }
    }
  }

LABEL_22:

  return v19;
}

- (void)compare:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_1(&dword_1AE58E000, a2, a3, "Malformed bundle version %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end