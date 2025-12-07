@interface TLAlertTypeValidateConsistencyOfEnumeration
@end

@implementation TLAlertTypeValidateConsistencyOfEnumeration

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke()
{
  v61 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_2;
  v40[3] = &unk_1E8579270;
  v40[4] = &v41;
  v40[5] = &v49;
  v40[6] = &v45;
  v0 = MEMORY[0x1DA730160](v40);
  v0[2](v0, 0);
  v0[2](v0, 1);
  v0[2](v0, 2);
  v0[2](v0, 3);
  v0[2](v0, 4);
  v0[2](v0, 5);
  v0[2](v0, 6);
  v0[2](v0, 7);
  v0[2](v0, 8);
  v0[2](v0, 9);
  v0[2](v0, 10);
  v0[2](v0, 11);
  v0[2](v0, 12);
  v0[2](v0, 13);
  v0[2](v0, 14);
  v0[2](v0, 15);
  v0[2](v0, 16);
  v0[2](v0, 17);
  v0[2](v0, 18);
  v0[2](v0, 19);
  v0[2](v0, 20);
  v0[2](v0, 21);
  v0[2](v0, 22);
  v0[2](v0, 23);
  v0[2](v0, 24);
  v0[2](v0, 25);
  v0[2](v0, 26);
  v0[2](v0, 27);
  v0[2](v0, 28);
  v1 = (v0[2])(v0, 29);
  if (v50[3])
  {
    v3 = TLLogGeneral(v1, v2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);

    if (v4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/TLAlertType.m"];
      v9 = TLLogGeneral(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 lastPathComponent];
        v11 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v54 = "void _TLAlertTypeValidateConsistencyOfEnumeration(void)_block_invoke";
        v55 = 2113;
        v56 = v10;
        v57 = 2049;
        v58 = 229;
        v59 = 2113;
        v60 = v11;
        _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v7 = TLLogGeneral(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1();
      }
    }

    v14 = TLLogGeneral(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_2();
    }
  }

  if (v46[3] == 29)
  {
    v15 = 30;
  }

  else
  {
    v16 = TLLogGeneral(v1, v2);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/TLAlertType.m"];
      v22 = TLLogGeneral(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v20 lastPathComponent];
        v24 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v54 = "void _TLAlertTypeValidateConsistencyOfEnumeration(void)_block_invoke";
        v55 = 2113;
        v56 = v23;
        v57 = 2049;
        v58 = 232;
        v59 = 2113;
        v60 = v24;
        _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = TLLogGeneral(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1();
      }
    }

    v27 = TLLogGeneral(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_4();
    }

    v15 = v46[3] + 1;
  }

  if (v15 != v42[3])
  {
    v28 = TLLogGeneral(v1, v2);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);

    if (v29)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/TLAlertType.m"];
      v34 = TLLogGeneral(v32, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v32 lastPathComponent];
        v36 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v54 = "void _TLAlertTypeValidateConsistencyOfEnumeration(void)_block_invoke";
        v55 = 2113;
        v56 = v35;
        v57 = 2049;
        v58 = 233;
        v59 = 2113;
        v60 = v36;
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v32 = TLLogGeneral(v30, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1();
      }
    }

    v39 = TLLogGeneral(v37, v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_6();
    }
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

void *___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_2(void *result, uint64_t a2)
{
  ++*(*(result[4] + 8) + 24);
  v2 = *(result[5] + 8);
  v3 = *(v2 + 24);
  if (v3 >= a2)
  {
    v3 = a2;
  }

  *(v2 + 24) = v3;
  v4 = *(result[6] + 8);
  v5 = *(v4 + 24);
  if (v5 <= a2)
  {
    v5 = a2;
  }

  *(v4 + 24) = v5;
  return result;
}

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end