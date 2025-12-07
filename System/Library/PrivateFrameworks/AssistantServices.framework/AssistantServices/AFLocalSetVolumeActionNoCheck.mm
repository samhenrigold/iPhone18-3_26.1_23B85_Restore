@interface AFLocalSetVolumeActionNoCheck
@end

@implementation AFLocalSetVolumeActionNoCheck

void ___AFLocalSetVolumeActionNoCheck_block_invoke(uint64_t a1, __CFError *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextDaemon;
  if (a2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "_AFLocalSetVolumeActionNoCheck_block_invoke";
      v13 = 2112;
      v14 = a2;
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Media Remote error %@", &v11, 0x16u);
    }

    v5 = objc_alloc(MEMORY[0x1E69C7778]);
    Code = CFErrorGetCode(a2);
    if ((Code - 17) > 3)
    {
      v7 = MEMORY[0x1E69C8070];
    }

    else
    {
      v7 = qword_1E7347F20[Code - 17];
    }

    v8 = [v5 initWithErrorCode:*v7];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "_AFLocalSetVolumeActionNoCheck_block_invoke";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Media Remote reported success", &v11, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x1E69C7788]);
  }

  v9 = v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, 0);
  }
}

@end