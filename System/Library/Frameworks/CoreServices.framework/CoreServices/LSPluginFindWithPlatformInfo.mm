@interface LSPluginFindWithPlatformInfo
@end

@implementation LSPluginFindWithPlatformInfo

void ___LSPluginFindWithPlatformInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = _LSGetPlugin(*(a1 + 32), a3);
  if (!v7)
  {
    v23 = _LSDefaultLog(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_2();
    }

    goto LABEL_32;
  }

  v8 = v7;
  v9 = *(a1 + 400);
  if ((v9 + 1) >= 2 && *(v7 + 20) != v9)
  {
    return;
  }

  v25 = 0;
  v10 = (v7 + 4);
  v11 = _LSContainerGet(*(a1 + 32), *(v7 + 4));
  if (!v11)
  {
    v23 = _LSDefaultLog(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_1();
    }

LABEL_32:

    return;
  }

  v12 = _LSContainerCheckState(*(a1 + 32), *v10, v11, &v25, 0);
  if (_LSGetNSErrorFromOSStatusImpl(v12, 0, 0, "_LSPluginFindWithPlatformInfo_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSPluginBundle.mm", 624) && v25 == 1)
  {
    v14 = *(a1 + 404);
    if (!v14 || v14 == v8[3] || v14 == v8[43] || v14 == v8[44])
    {
      v15 = *(a1 + 408);
      if (!v15 || v15 == v8[55])
      {
        if (*(a1 + 412) != 1 || (v16 = *(a1 + 32), v17 = *(*(a1 + 40) + 8), obj = *(v17 + 40), v18 = _LSPluginCheckExtensionPoint(v16, a3, v8, &obj), objc_storeStrong((v17 + 40), obj), v18))
        {
          if (*(a1 + 413) != 1 || _LSPluginIsValid(*(a1 + 32), a3, v8, 0, 0, 0))
          {
            v19 = v8[42];
            v20 = (v19 >> 2) & 1;
            v21 = *(a1 + 414);
            if ((v21 & 1) != 0 || (v19 & 4) == 0)
            {
              v22 = *(*(a1 + 48) + 8);
              if (!*(v22 + 24))
              {
                *(v22 + 24) = a3;
                *(*(*(a1 + 56) + 8) + 24) = v8;
              }

              *(*(*(a1 + 64) + 8) + 24) = a3;
              *(*(*(a1 + 72) + 8) + 24) = v8;
            }

            if (v20 == v21)
            {
              *(*(*(a1 + 48) + 8) + 24) = 0;
              *(*(*(a1 + 56) + 8) + 24) = 0;
              *a4 = 1;
            }
          }
        }
      }
    }
  }
}

uint64_t ___LSPluginFindWithPlatformInfo_block_invoke(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, _BYTE *a5)
{
  v6 = a3[1];
  if (v6)
  {
    v9 = result;
    v10 = *(result + 64);
    if ((v10 + 1) < 2 || a3[5] == v10)
    {
      result = _LSContainerGet(*(result + 32), v6);
      if (result)
      {
        v13 = 0;
        v11 = _LSContainerCheckState(*(v9 + 32), a3[1], result, &v13, 0);
        result = _LSGetNSErrorFromOSStatusImpl(v11, 0, 0, "_LSPluginFindWithPlatformInfo_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSPluginBundle.mm", 594);
        if (result)
        {
          v12 = v13 == 1;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          result = _LSAliasMatchesPath_NoIO(*(v9 + 32), *a3, *(v9 + 40), 0);
          if (result)
          {
            if (*(v9 + 68) != 1 || (result = _LSPluginIsValid(*(v9 + 32), a2, a3, 0, 0, 0), result))
            {
              *(*(*(v9 + 48) + 8) + 24) = a2;
              *(*(*(v9 + 56) + 8) + 24) = a3;
              *a5 = 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_11(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2_11(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end