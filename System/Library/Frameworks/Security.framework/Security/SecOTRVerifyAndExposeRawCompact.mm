@interface SecOTRVerifyAndExposeRawCompact
@end

@implementation SecOTRVerifyAndExposeRawCompact

void __SecOTRVerifyAndExposeRawCompact_locked_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = SecOTRPublicIdentityCopyFromPrivate(*MEMORY[0x1E695E480], *(*(a1 + 32) + 24), 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SecOTRVerifyAndExposeRawCompact_locked_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_74_12777;
  v7 = *(a1 + 32);
  v5 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = a2;
  v10 = v5;
  v11 = *(a1 + 64);
  SecOTRPIPerformWithSerializationString(v4, v6);
  if (v4)
  {
    CFRelease(v4);
  }
}

void __SecOTRVerifyAndExposeRawCompact_locked_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecOTRVerifyAndExposeRawCompact_locked_block_invoke_3;
  v3[3] = &__block_descriptor_tmp_73_12778;
  v2 = *(*(a1 + 32) + 32);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  SecOTRPIPerformWithSerializationString(v2, v3);
}

void __SecOTRVerifyAndExposeRawCompact_locked_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("OTR");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v5[10];
    v8 = v5[11];
    v9 = v5[13];
    v10 = v5[14];
    v18 = 134219522;
    v19 = v5;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "session[%p] failed to decrypt, session: %@, mk: %@, mpk: %@, tpk: %@, tk: %@, chose tktu: %@", &v18, 0x48u);
  }

  v11 = secLogObjForScope("OTR");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = 134219522;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = a2;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    v30 = 1024;
    LODWORD(v31) = v17;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "session[%p] failed to decrypt, mktu: %@, mpi: %@, tpi: %@, m: %@, tP: %@, tb: %hhx", &v18, 0x44u);
  }
}

@end