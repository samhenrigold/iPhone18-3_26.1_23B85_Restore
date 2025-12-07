@interface TVRCAddStateHandlerWithName
@end

@implementation TVRCAddStateHandlerWithName

_DWORD *___TVRCAddStateHandlerWithName_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 32) + 16))();
  v10 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:100 options:0 error:&v10];
  v4 = v10;
  v5 = v4;
  if (v4)
  {
    v6 = _TVRCGeneralLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 136315394;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Error serializing state data for %s: %@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, [v3 length] + 200, 0x1000040BEF03554uLL);
    if (v8)
    {
      __strlcpy_chk();
      *v8 = 1;
      v8[1] = [v3 length];
      memcpy(v8 + 50, [v3 bytes], objc_msgSend(v3, "length"));
    }
  }

  return v8;
}

@end