uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isEligibleForReceivingZelkova()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "BOOL isEligibleForReceivingZelkova(void)";
    v4 = 1024;
    v5 = 1;
    _os_log_impl(&dword_26455D000, v0, OS_LOG_TYPE_DEFAULT, "%s, isEligible, %d", &v2, 0x12u);
  }

  return 1;
}

__CFString *initiatorEligiblityStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B65480[a1 - 1];
  }
}

id _SMSafeArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] array];
  v14 = &a9;
  v11 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  while (v11 != 1)
  {
    [v10 addObject:?];
    do
    {
LABEL_4:
      v12 = v14++;
      v11 = *v12;
    }

    while (!*v12);
  }

  return v10;
}

id _SMMultiErrorCreate(void *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v19 = [a1 copy];
    v1 = [v19 flatten];
    v2 = [MEMORY[0x277CBEB18] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v1;
    v3 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v29;
      v20 = *v29;
      do
      {
        v6 = 0;
        v21 = v4;
        do
        {
          if (*v29 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v28 + 1) + 8 * v6);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v6;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v8 = v7;
            v9 = [v8 countByEnumeratingWithState:&v24 objects:v38 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v25;
              do
              {
                v12 = 0;
                do
                {
                  if (*v25 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v35 = "NSError * _Nonnull _SMMultiErrorCreate(NSArray *__strong _Nonnull)";
                      v36 = 1024;
                      v37 = 53;
                      _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "All parameters must be NSError or nil. (in %s:%d)", buf, 0x12u);
                    }
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v2 addObject:v8];
                  }

                  ++v12;
                }

                while (v10 != v12);
                v10 = [v8 countByEnumeratingWithState:&v24 objects:v38 count:16];
              }

              while (v10);
            }

            v5 = v20;
            v4 = v21;
            v6 = v23;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v35 = "NSError * _Nonnull _SMMultiErrorCreate(NSArray *__strong _Nonnull)";
                v36 = 1024;
                v37 = 59;
                _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "All parameters must be NSError or nil. (in %s:%d)", buf, 0x12u);
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v2 addObject:v7];
            }
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v4);
    }

    if ([v2 count] < 2)
    {
      v17 = [v2 firstObject];
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v32[0] = *MEMORY[0x277CCA450];
      v32[1] = @"SMDetailedErrorsKey";
      v33[0] = @"Multiple errors occurred.";
      v33[1] = v2;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v17 = [v15 errorWithDomain:@"SMErrorDomain" code:9 userInfo:v16];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_2645BA710(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

id SMErrorConnectionCreate(const char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = MEMORY[0x277CCA9B8];
  v20 = *MEMORY[0x277CCA450];
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a1);
  v16 = [v14 stringWithFormat:@"connection failure while servicing %@, %@", v15, v12];
  v21[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v18 = [v13 errorWithDomain:@"SMErrorDomain" code:8 userInfo:v17];

  return v18;
}

void sub_2645BBDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2645BCD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645BD590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645BDF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645BE460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645BE984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645BF06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645BFFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C0C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C12B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C17E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C1E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C2A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C4D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C52F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645C6014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645CA870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645CADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645CBF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645CC50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2645CE28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _RTRequireInitializer(uint64_t a1, SEL aSelector)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(aSelector);
  v5 = [v3 stringWithFormat:@"%@ requires the use of the initializer: %@", a1, v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

id _RTErrorInvalidParameterCreate(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %@", a1, *MEMORY[0x277CCA450]];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v2];

  return v3;
}

os_log_t _rt_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.CoreRoutine", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}