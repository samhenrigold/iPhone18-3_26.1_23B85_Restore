objc_class *getDemangledNameForClass(objc_class *Name)
{
  v8 = *MEMORY[0x277D85DE8];
  if (Name)
  {
    Name = class_getName(Name);
    if (Name)
    {
      v1 = Name;
      if (swift_demangle_hasSwiftCallingConvention())
      {
        SimplifiedDemangledName = swift_demangle_getSimplifiedDemangledName();
        if ((SimplifiedDemangledName - 1) < 0x3FF)
        {
          __s[SimplifiedDemangledName] = 0;
          v3 = strrchr(__s, 60);
          if (v3 && (v4 = v3 + 1, (v5 = strchr(v3 + 1, 62)) != 0))
          {
            Name = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v4 length:v5 - v4 encoding:4];
            if (Name)
            {
              goto LABEL_11;
            }
          }

          else
          {
            Name = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:__s];
            if (Name)
            {
              goto LABEL_11;
            }
          }
        }
      }

      Name = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v1 length:strlen(v1) encoding:4 freeWhenDone:0];
    }
  }

LABEL_11:

  return Name;
}

id CPAnalyticsLog()
{
  if (CPAnalyticsLog_onceToken != -1)
  {
    dispatch_once(&CPAnalyticsLog_onceToken, &__block_literal_global_288);
  }

  v1 = CPAnalyticsLog_log;

  return v1;
}

uint64_t __CPAnalyticsLog_block_invoke()
{
  CPAnalyticsLog_log = os_log_create("com.apple.photos.CPAnalytics", "Generic");

  return MEMORY[0x2821F96F8]();
}

void sub_242613D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}