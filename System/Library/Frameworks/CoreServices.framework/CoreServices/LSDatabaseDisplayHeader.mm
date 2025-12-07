@interface LSDatabaseDisplayHeader
@end

@implementation LSDatabaseDisplayHeader

void ___LSDatabaseDisplayHeader_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 12))
  {
    if (___LSDatabaseDisplayHeader_block_invoke_cold_1())
    {
      v6 = *(a1 + 40);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___LSDatabaseDisplayHeader_block_invoke_2;
      v7[3] = &unk_1E6A1B718;
      v10 = a2;
      v8 = v6;
      v9 = a3;
      [v8 withWarningColors:v7];
    }
  }
}

void ___LSDatabaseDisplayHeader_block_invoke_3(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0(a1);
  v4 = *(v3 + 32);
  OUTLINED_FUNCTION_0_9();
  if (!CSStoreGetUnit())
  {
    v5 = *(v3 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___LSDatabaseDisplayHeader_block_invoke_4;
    v13[3] = &unk_1E6A1B718;
    v16 = v2;
    v14 = v5;
    v15 = v1;
    [v14 withWarningColors:v13];
  }

  v6 = *(v3 + 32);
  v7 = *(v3 + 32);
  OUTLINED_FUNCTION_0_9();
  if (!CSStoreGetUnit())
  {
    v8 = *(v3 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___LSDatabaseDisplayHeader_block_invoke_5;
    v9[3] = &unk_1E6A1B718;
    v12 = v2;
    v10 = v8;
    v11 = v1;
    [v10 withWarningColors:v9];
  }
}

void ___LSDatabaseDisplayHeader_block_invoke_6(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0(a1);
  v4 = *(v3 + 32);
  OUTLINED_FUNCTION_0_9();
  if (!CSStoreGetUnit())
  {
    v5 = *(v3 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___LSDatabaseDisplayHeader_block_invoke_7;
    v6[3] = &unk_1E6A1B718;
    v9 = v2;
    v7 = v5;
    v8 = v1;
    [v7 withWarningColors:v6];
  }
}

BOOL ___LSDatabaseDisplayHeader_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 32);
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_0_9();
  return CSStoreGetUnit() == 0;
}

@end