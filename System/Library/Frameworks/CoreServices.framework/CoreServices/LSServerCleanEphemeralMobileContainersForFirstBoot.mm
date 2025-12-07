@interface LSServerCleanEphemeralMobileContainersForFirstBoot
@end

@implementation LSServerCleanEphemeralMobileContainersForFirstBoot

void ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = _LSAliasGetPath(**(a1 + 40), *(a3 + 12));
  if (v5)
  {
    v17 = 0;
    v6 = [[FSNode alloc] initWithPath:v5 flags:0 error:&v17];
    v7 = v17;
    v8 = v7;
    if (!v6)
    {
      v9 = _LSDefaultLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke_cold_1();
      }

      goto LABEL_10;
    }

    v9 = +[FSNode rootVolumeNode];
    if (![(FSNode *)v6 isEqual:v9])
    {
      v10 = +[FSNode systemDataVolumeNode];
      if ([(FSNode *)v6 isEqual:v10])
      {
LABEL_7:

        goto LABEL_10;
      }

      v11 = +[FSNode prebootVolumeNode];
      if ([(FSNode *)v6 isEqual:v11])
      {

        goto LABEL_7;
      }

      v12 = +[FSNode userDataVolumeNode];
      v13 = [(FSNode *)v6 isEqual:v12];

      if (v13)
      {
        goto LABEL_11;
      }

      v15 = _LSDefaultLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "Marking container at %{public}@ for removal", buf, 0xCu);
      }

      v16 = *(a1 + 32);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      [v16 addObject:v9];
    }

LABEL_10:

LABEL_11:
  }
}

void ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_18162D000, v1, OS_LOG_TYPE_ERROR, "Could not create node for container with path %{public}@: %@", v2, 0x16u);
}

@end