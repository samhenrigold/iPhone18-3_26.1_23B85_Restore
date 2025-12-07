@interface NSData
@end

@implementation NSData

uint64_t __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 length];
    v6 = [*(a1 + 40) length];
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "failed to encrypt data due to invalid key (plaintext length = %lu, key length = %lu)", &v8, 0x16u);
  }

  return 0;
}

uint64_t __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 length];
    v7 = [*(a1 + 40) length];
    v9[0] = 67109632;
    v9[1] = v3;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "failed to encrypt data with CC error: %d (plaintext length = %lu, key length = %lu)", v9, 0x1Cu);
  }

  return 0;
}

uint64_t __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 length];
    v6 = [*(a1 + 40) length];
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "failed to decrypt data due to invalid key (ciphertext length = %lu, key length = %lu)", &v8, 0x16u);
  }

  return 0;
}

uint64_t __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 length];
    v7 = [*(a1 + 40) length];
    v9[0] = 67109632;
    v9[1] = v3;
    v10 = 2048;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "failed to decrypt data with CC error: %d (ciphertext length = %lu, key length = %lu)", v9, 0x1Cu);
  }

  return 0;
}

@end