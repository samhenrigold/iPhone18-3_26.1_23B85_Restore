@interface LSBundleRemove
@end

@implementation LSBundleRemove

void ___LSBundleRemove_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(_LSBundleGet(*(a1 + 32), a3) + 172);
  if ((v6 & 0x400000000000) != 0)
  {
    _LSBundleSetFlags(*(a1 + 32), a3, v6 & 0xFFFFBFFFFFFFFFFFLL);
  }

  objc_autoreleasePoolPop(v5);
}

void ___LSBundleRemove_block_invoke_2(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  if (a3[42] == 14 && a3[76] == *(result + 344))
  {
    v9 = _LSAppProtectionLog(result);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      ___LSBundleRemove_block_invoke_2_cold_1(a2, v9);
    }

    _LSBundleSetMoreFlags(*(result + 32), a2, *(a3 + 189) & 0xFFCFFFFF);
    *a5 = 1;
  }
}

void ___LSBundleRemove_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 48))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      LSPluginAddInfoToPayloadDict(*(a1 + 32), v5, a3, 0, 0);
    }
  }

  v6 = *(a1 + 32);

  _LSPluginRemove(v6, a3);
}

void ___LSBundleRemove_block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Resetting locked/hidden flags for unit: %u", v2, 8u);
}

@end