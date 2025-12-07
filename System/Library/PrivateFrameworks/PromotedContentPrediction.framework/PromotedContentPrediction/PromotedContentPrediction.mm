uint64_t sub_260ECC640(uint64_t a1)
{
  qword_280CCF568 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_260ECD418(void *a1)
{
  v2 = [a1 evaluationMetrics];
  v3 = [v2 count];

  if (v3 < 1)
  {
    v5 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = [a1 evaluationMetrics];
      v7 = [v6 featuresAtIndex:v4];

      v8 = [v7 featureValueForName:@"Identity_1"];
      v9 = [v8 multiArrayValue];
      v10 = [v9 objectAtIndexedSubscript:0];

      [v10 doubleValue];
      v5 = v5 + v11;

      ++v4;
    }

    while (v3 != v4);
  }

  v12 = MEMORY[0x277CCABB0];

  return [v12 numberWithDouble:v5 / v3];
}

id sub_260ECD52C(void *a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v4 = [a1 evaluationMetrics];
  v5 = [v4 count];

  if (v5 < 1)
  {
    v28 = 0;
  }

  else
  {
    v33 = 0;
    v6 = 0;
    v31 = v5;
    do
    {
      v7 = [a1 evaluationMetrics];
      v8 = [v7 featuresAtIndex:v6];

      v9 = [v8 featureValueForName:@"Identity_0"];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 multiArrayValue];
        v12 = [v11 objectAtIndexedSubscript:0];
        [v12 doubleValue];
        v14 = v13;
        v15 = [v11 count];

        v16 = [v11 count];
        v17 = [v32 featuresAtIndex:v6];
        v18 = [v17 featureValueForName:@"label_input_0"];
        v19 = v18;
        if (v18)
        {
          v20 = v14 + (v15 * v6);
          v21 = v20 + v16;
          if (v20 >= v21)
          {
            v21 = v14 + (v15 * v6);
          }

          v22 = a1;
          v23 = (v21 - v20);
          v24 = [v18 multiArrayValue];
          v25 = [v24 objectAtIndexedSubscript:0];

          v26 = [v25 intValue] == v23;
          a1 = v22;
          v5 = v31;
          if (v26)
          {
            v27 = v33 + 1;
          }

          else
          {
            v27 = v33;
          }

          v33 = v27;
        }
      }

      ++v6;
    }

    while (v5 != v6);
    v28 = v33;
  }

  v29 = [MEMORY[0x277CCABB0] numberWithInteger:v28 / v5];

  return v29;
}

BOOL sub_260ECDD48(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAppStoreVendable])
  {
    v3 = [v2 bundleIdentifier];
    if (v3)
    {
      v4 = [v2 bundleIdentifier];
      v5 = [v4 length] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_260ECDE4C()
{
  qword_280CCF580 = objc_alloc_init(APOdmlAssetManagerCoordinator);

  return MEMORY[0x2821F96F8]();
}

void sub_260ECE07C(uint64_t a1)
{
  if ([*(a1 + 32) respondToRefreshNotification])
  {
    v2 = *(a1 + 32);
    v3 = MEMORY[0x277CBEA60];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v4 = [v3 arrayWithObjects:{v5, 0}];
    [v2 refreshTrialClientForPlacementTypes:v4];
  }
}

void sub_260ECE534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_260ECE558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained trialClient];
  [v1 refresh];
}

void sub_260ECF438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_260ECF7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_260ECF9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_260ECFBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = APOdmlEspressoIOBufferController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_260ECFC4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 bufferPointer];
  if (v3)
  {

    free(v3);
  }

  else
  {
    v4 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_260ECB000, v4, OS_LOG_TYPE_ERROR, "Input buffer is released too early.", v5, 2u);
    }
  }
}

uint64_t *sub_260ECFE10(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_260ECFE88(a1, a2);
  }

  return a1;
}

void sub_260ECFE6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_260ECFE88(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_260ECFEDC(a1, a2);
  }

  sub_260ECFEC4();
}

void sub_260ECFEDC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_260ECFFB4();
}

void sub_260ECFF24(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_260ECFF80(exception, a1);
  __cxa_throw(exception, off_279AC5E88, MEMORY[0x277D825F0]);
}

std::logic_error *sub_260ECFF80(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_260ECFFB4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

id sub_260ED06E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v22[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v17 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65600 error:&v17];
  v8 = v17;
  if (v8)
  {
    v9 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v8;
      v11 = v10;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    if ([v5 unsignedLongValue])
    {
      v14 = 0;
      do
      {
        LODWORD(v13) = *(a3 + 4 * v14);
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
        [v7 setObject:v15 atIndexedSubscript:v14];

        ++v14;
      }

      while (v14 < [v5 unsignedLongValue]);
    }

    v12 = v7;
  }

  return v12;
}

id sub_260ED08B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v22[0] = &unk_28736F1B8;
  v22[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v17 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65600 error:&v17];
  v8 = v17;
  if (v8)
  {
    v9 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v8;
      v11 = v10;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    if ([v5 unsignedLongValue])
    {
      v14 = 0;
      do
      {
        LODWORD(v13) = *(a3 + 4 * v14);
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
        [v7 setObject:v15 atIndexedSubscript:v14];

        ++v14;
      }

      while (v14 < [v5 unsignedLongValue]);
    }

    v12 = v7;
  }

  return v12;
}

id sub_260ED0A80(uint64_t a1, uint64_t a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  v20[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v15 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v5 dataType:65600 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      v10 = v9;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    if ([v3 count])
    {
      v12 = 0;
      do
      {
        v13 = [v3 objectAtIndexedSubscript:v12];
        [v6 setObject:v13 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [v3 count]);
    }

    v11 = v6;
  }

  return v11;
}

id sub_260ED0C64(uint64_t a1, uint64_t a2, void *a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  v20[0] = &unk_28736F1B8;
  v20[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v15 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v5 dataType:65600 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      v10 = v9;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    if ([v3 count])
    {
      v12 = 0;
      do
      {
        v13 = [v3 objectAtIndexedSubscript:v12];
        [v6 setObject:v13 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [v3 count]);
    }

    v11 = v6;
  }

  return v11;
}

id sub_260ED0E50(uint64_t a1, uint64_t a2, void *a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{objc_msgSend(v3, "doubleValuesCount")}];
  v21[0] = &unk_28736F1B8;
  v21[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v16 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v5 dataType:65600 error:&v16];
  v7 = v16;
  if (v7)
  {
    v8 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v7;
      v10 = v9;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    if ([v3 doubleValuesCount])
    {
      v12 = 0;
      do
      {
        v13 = objc_alloc(MEMORY[0x277CCABB0]);
        [v3 doubleValueAtIndex:v12];
        v14 = [v13 initWithDouble:?];
        [v6 setObject:v14 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [v3 doubleValuesCount]);
    }

    v11 = v6;
  }

  return v11;
}

id sub_260ED1054(uint64_t a1, uint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{objc_msgSend(v3, "doubleValuesCount")}];
  v21[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v16 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v5 dataType:65600 error:&v16];
  v7 = v16;
  if (v7)
  {
    v8 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v7;
      v10 = v9;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@] Error creating multiarray: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    if ([v3 doubleValuesCount])
    {
      v12 = 0;
      do
      {
        v13 = objc_alloc(MEMORY[0x277CCABB0]);
        [v3 doubleValueAtIndex:v12];
        v14 = [v13 initWithDouble:?];
        [v6 setObject:v14 atIndexedSubscript:v12];

        ++v12;
      }

      while (v12 < [v3 doubleValuesCount]);
    }

    v11 = v6;
  }

  return v11;
}

id sub_260ED1250(void *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  if ([a1 count] >= 1)
  {
    v3 = 0;
    do
    {
      v4 = [a1 objectAtIndexedSubscript:v3];
      [v2 addObject:v4];

      ++v3;
    }

    while (v3 < [a1 count]);
  }

  v5 = [v2 copy];

  return v5;
}

void sub_260ED157C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 dictionary];
  (*(v4 + 16))(v4, v5, a3);
}

uint64_t sub_260ED16E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionary];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

void sub_260ED1734(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 dictionary];
  (*(v4 + 16))(v4, v5, a3);
}

uint64_t sub_260ED18EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 eventBody];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

uint64_t sub_260ED19E4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 dictionary];
  v6 = (*(v4 + 16))(v4, v5, a3);

  return v6;
}

uint64_t sub_260ED1AF0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 eventBody];
  v6 = (*(v4 + 16))(v4, v5, a3);

  return v6;
}

void sub_260ED1CF4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state])
  {
    v4 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 streamName];
      v9 = [v3 error];
      v10 = [v9 code];
      v11 = [v3 error];
      v12 = [v11 localizedDescription];
      v13 = 138478595;
      v14 = v5;
      v15 = 2114;
      v16 = v8;
      v17 = 2048;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_260ECB000, v4, OS_LOG_TYPE_ERROR, "[%{private}@] Stream %{public}@ failed with error %ld: %{public}@", &v13, 0x2Au);
    }
  }
}

BOOL sub_260ED1E60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 eventBody];
  (*(v3 + 16))(v3, v4, *(*(a1 + 40) + 8) + 24);

  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

uint64_t sub_260ED2C54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_260ED2CC8;
  v4[3] = &unk_279AC6160;
  v4[4] = v1;
  return [v2 loadPersistentStoresWithCompletionHandler:v4];
}

void sub_260ED2CC8(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 options];
    v28 = 138478083;
    v29 = v8;
    v30 = 2113;
    v31 = v10;
    _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "[%{private}@] NSPersistentStoreDescription: %{private}@", &v28, 0x16u);
  }

  v11 = OdmlLogForCategory(4uLL);
  v12 = v11;
  if (v6)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v28 = 138478083;
      v29 = v13;
      v30 = 2112;
      v31 = v6;
      v14 = v13;
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to load Core Data stack with error: %@", &v28, 0x16u);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5002 userInfo:0];
    v16 = MEMORY[0x277CBEAC0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "numLaunchesAttempted")}];
    v18 = [v16 dictionaryWithObject:v17 forKey:@"numberAttempts"];

    [APOdmlAnalyticsFeatureStorage sendEvent:v15 additionalDetails:v18];
    v19 = *(a1 + 32);
    v20 = v6;
    v21 = *(v19 + 24);
    *(v19 + 24) = v20;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v28 = 138477827;
      v29 = v22;
      v23 = v22;
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_DEFAULT, "[%{private}@] Successfully loaded Core Data stack", &v28, 0xCu);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5003 userInfo:0];
    v24 = MEMORY[0x277CBEAC0];
    v26 = *(a1 + 32);
    v25 = (a1 + 32);
    v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v26, "numLaunchesAttempted")}];
    v18 = [v24 dictionaryWithObject:v27 forKey:@"numberAttempts"];

    [APOdmlAnalyticsFeatureStorage sendEvent:v15 additionalDetails:v18];
    v21 = *v25;
    objc_sync_enter(v21);
    [*v25 setCoreDataIsInitialized:1];
    objc_sync_exit(v21);
  }
}

char *sub_260ED3158(void *a1)
{
  result = [a1 count];
  if (result >= 2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = [a1 exchangeObjectAtIndex:v4 withObjectAtIndex:v4 + arc4random_uniform(v3)];
      ++v4;
      --v3;
    }

    while (v3 != 1);
  }

  return result;
}

void sub_260ED3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_260ED35D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_260ED35EC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) value];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_260ED39E4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) value];

  return MEMORY[0x2821F96F8]();
}

void sub_260ED4114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_260ED4170(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_260ED4560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260ED45A0(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"Feature" inManagedObjectContext:*(a1 + 32)];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 setCreatedAt:v3];

  [v2 setDeploymentID:{objc_msgSend(*(a1 + 40), "deploymentID")}];
  v4 = [*(a1 + 40) experimentID];
  [v2 setExperimentID:v4];

  v5 = [*(a1 + 40) treatmentID];
  [v2 setTreatmentID:v5];

  [v2 setFeatureType:*(a1 + 48)];
  [v2 setValue:*(a1 + 56)];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  [v6 save:&obj];
  objc_storeStrong((v7 + 40), obj);
}

void sub_260ED4B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260ED4B94(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEAA8] date];
  v2 = [*(a1 + 32) createdAt];
  [v4 timeIntervalSinceDate:v2];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_260ED4C1C(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 8);
    obj = *(v3 + 40);
    [v2 save:&obj];
    objc_storeStrong((v3 + 40), obj);
  }
}

uint64_t sub_260ED4D68(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260ED4DF8;
  block[3] = &unk_279AC6188;
  block[4] = a1;
  if (qword_280CCF608 != -1)
  {
    dispatch_once(&qword_280CCF608, block);
  }

  return byte_280CCF590;
}

void sub_260ED4DF8(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v1 = [v2 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  byte_280CCF590 = v1 != 0;
}

void sub_260ED6BC4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_opt_class() translateFeatureKeyToDESKey:v4];
  if ([*(a1 + 32) containsObject:v3])
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:v4];
  }
}

void sub_260ED88D4(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_260EDAB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_260EDC520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_260EDCD48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = APOdmlEspressoFacade;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t *sub_260EDCE2C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_260EDCEA4(a1, a2);
  }

  return a1;
}

void sub_260EDCE88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_260EDCEA4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_260EDCEE0(a1, a2);
  }

  sub_260ECFEC4();
}

void sub_260EDCEE0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_260ECFFB4();
}

uint64_t *sub_260EDCF28(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_260ECFE88(result, a4);
  }

  return result;
}

void sub_260EDCF88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_260EDCFA4(uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_260EDCEA4(a1, a2);
  }

  return a1;
}

void sub_260EDD09C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_260EDE278(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 adamIDtoBundleID];
  [v7 setObject:v6 forKeyedSubscript:v5];
}

__CFString *sub_260EDE728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Counterfactual";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Runtime";
  }
}

__CFString *sub_260EDE754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"SLP";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"SRP";
  }
}

__CFString *sub_260EDE780(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279AC62C0[a3];
  }
}

void APOdmlSimulateCrash(uint64_t a1, void *a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = OdmlLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCAC38] processInfo];
  v7 = [v6 isRunningTests];

  if (v7)
  {
    v8 = OdmlLogForCategory(0xAuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "SimCrash called; we should exit at this point. If you see this log outside of the Unit Tests, Please file a radar...", &v9, 2u);
    }
  }

  else
  {
    getpid();
    SimulateCrash();
    if (a3)
    {
      exit(1);
    }
  }
}

uint64_t ADOdmlResponseV2ReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(ADFeature);
        [a1 addFeatures:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !ADFeatureReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        a1[20] |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        a1[16] = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_260EE0660(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1 appUsageVector];
  v4 = [objc_opt_class() keyForType:@"appUsageVector"];
  [v2 setObject:v3 forKey:v4];

  v5 = [a1 appDownloadVector];
  v6 = [objc_opt_class() keyForType:@"appDownloadVector"];
  [v2 setObject:v5 forKey:v6];

  v7 = [a1 installedAppVector];
  v8 = [objc_opt_class() keyForType:@"installedAppVector"];
  [v2 setObject:v7 forKey:v8];

  v9 = [a1 userQueryVector];
  [v2 setObject:v9 forKey:@"userQueryVector"];

  v10 = [v2 copy];

  return v10;
}

id sub_260EE07C4(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCAAB0];
  v2 = [a1 dictionaryRepresentation];
  v8 = 0;
  v3 = [v1 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "Failed to archive training row data %@", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_260EE08E4(void *a1)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1 onDeviceFeatures];
  [v2 setObject:v3 forKey:@"OnDeviceFeatures"];

  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v35[2] = objc_opt_class();
  v35[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v7 = [v5 setWithArray:v6];
  v8 = [a1 serverResponse];
  v30 = 0;
  v9 = [v4 unarchivedObjectOfClasses:v7 fromData:v8 error:&v30];
  v10 = v30;

  if (v10)
  {
    v11 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = v10;
      v13 = v12;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Failed to unarchive server response: %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v14 = [v9 featureValues];
    [v11 setValue:v14 forKey:@"ServerResponse"];

    v15 = [a1 adamID];

    if (v15)
    {
      v16 = [a1 adamID];
      [v11 setValue:v16 forKey:@"AdamID"];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "impressed")}];
    [v11 setValue:v17 forKey:@"Impressed"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "tapped")}];
    [v11 setValue:v18 forKey:@"Tapped"];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "dupe")}];
    [v11 setValue:v19 forKey:@"Dupe"];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "installed")}];
    [v11 setValue:v20 forKey:@"AppInstalled"];

    v21 = MEMORY[0x277CCABB0];
    if ([a1 hasErrorCode])
    {
      [a1 errorCode];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v21 numberWithDouble:v22];
    [v11 setValue:v23 forKey:@"rerankingErrorCode"];

    v24 = [a1 recordID];
    [v11 setValue:v24 forKey:@"InstanceID"];

    v25 = MEMORY[0x277CBEB38];
    v26 = [a1 adamID];
    v27 = [v25 dictionaryWithObjectsAndKeys:{v11, v26, 0}];

    [v2 setValue:v27 forKey:@"AdRecords"];
  }

  v28 = [v2 copy];

  return v28;
}

id sub_260EE2D28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [a1 objectForKey:a3];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFString *sub_260EE2D90(void *a1, uint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  v6 = [a1 mlDictionaryForJSON];
  v14 = 0;
  v7 = [v5 dataWithJSONObject:v6 options:v4 error:&v14];
  v8 = v14;

  if (v8)
  {
    v9 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      v11 = [a1 mlDictionaryForJSON];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "There was an error serializing the following dictionary into JSON (%@):\n%@", buf, 0x16u);
    }
  }

  if (v7)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v12 = @"{}";
  }

  return v12;
}

id sub_260EE2F10(void *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (!v4)
  {
    goto LABEL_55;
  }

  v5 = v4;
  v6 = *v39;
  while (2)
  {
    v7 = 0;
    do
    {
      if (*v39 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v38 + 1) + 8 * v7);
      v9 = [v3 objectForKey:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 stringValue];
      }

      else
      {
        objc_opt_class();
        v11 = @"UNKNOWN_KEY";
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        v10 = v8;
      }

      v11 = v10;
LABEL_11:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(__CFString *)v9 mlDictionaryForJSON];
LABEL_19:
        v13 = v12;
        v14 = v2;
        v15 = v13;
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(__CFString *)v9 APOdml_arrayForJSON];
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(__CFString *)v9 APOdml_dataStringForJSON];
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(__CFString *)v9 absoluteString];
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(__CFString *)v9 doubleValue];
        if (fabs(v16) == INFINITY)
        {
          v28 = OdmlLogForCategory(6uLL);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = objc_opt_class();
            *buf = 138412546;
            v43 = v9;
            v44 = 2112;
            v45 = v29;
            v30 = v29;
            _os_log_impl(&dword_260ECB000, v28, OS_LOG_TYPE_ERROR, "JSON array validation failed infinity check with the following value: %@ (%@).", buf, 0x16u);
          }

          [v2 setObject:@"∞" forKey:v11];
          goto LABEL_55;
        }

LABEL_27:
        v17 = v2;
        v18 = v9;
LABEL_28:
        [v17 setObject:v18 forKey:v11];
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v9;
        if ([(__CFString *)v13 isUndefined])
        {
          v14 = v2;
          v15 = @"UNDEFINED";
LABEL_20:
          [v14 setObject:v15 forKey:v11];
LABEL_21:

          goto LABEL_22;
        }

        v36 = v13;
        if ([(__CFString *)v13 type]== 2)
        {
          v33 = MEMORY[0x277CCABB0];
          [(__CFString *)v13 doubleValue];
          v20 = [v33 numberWithDouble:?];
LABEL_36:
          v21 = v20;
          [v2 setObject:v20 forKey:v11];

          v13 = v36;
          goto LABEL_21;
        }

        if ([(__CFString *)v13 type]== 5)
        {
          v34 = [(__CFString *)v13 multiArrayValue];
          v24 = [v34 arrayFromMultiarray];
          goto LABEL_44;
        }

        if ([(__CFString *)v13 type]== 7)
        {
          v34 = [(__CFString *)v13 sequenceValue];
          v24 = [v34 stringValues];
LABEL_44:
          v25 = [v24 APOdml_arrayForJSON];
          [v2 setObject:v25 forKey:v11];

          v13 = v36;
        }

        else
        {
          if ([(__CFString *)v13 type]!= 6)
          {
            if ([(__CFString *)v13 type]!= 3)
            {
              goto LABEL_21;
            }

            v20 = [(__CFString *)v13 stringValue];
            goto LABEL_36;
          }

          v34 = [(__CFString *)v13 dictionaryValue];
          v26 = [v34 mlDictionaryForJSON];
          [v2 setObject:v26 forKey:v11];

          v13 = v36;
        }

        goto LABEL_21;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v22 = OdmlLogForCategory(6uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = objc_opt_class();
          *buf = 138412546;
          v43 = v9;
          v44 = 2112;
          v45 = v23;
          v37 = v23;
          _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, "WARNING: Unable to serialize the following object into JSON.\n%@ (%@)", buf, 0x16u);
        }

        v17 = v2;
        v18 = @"INVALID";
        goto LABEL_28;
      }

      v35 = [(__CFString *)v9 dictionaryRepresentation];
      v19 = [v35 mlDictionaryForJSON];
      [v2 setObject:v19 forKey:v11];

LABEL_22:
      ++v7;
    }

    while (v5 != v7);
    v27 = [v3 countByEnumeratingWithState:&v38 objects:v46 count:16];
    v5 = v27;
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_55:

  return v2;
}

id sub_260EE37D4(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v4)
  {
    goto LABEL_29;
  }

  v6 = v4;
  v7 = *v25;
  v8 = 0x277CBE000uLL;
  *&v5 = 138412546;
  v23 = v5;
  while (2)
  {
    v9 = 0;
    do
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 APOdml_arrayForJSON];
LABEL_14:
        v12 = v11;
        [v2 addObject:{v11, v23}];

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 mlDictionaryForJSON];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 APOdml_dataStringForJSON];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 absoluteString];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 doubleValue];
        if (fabs(v13) == INFINITY)
        {
          v19 = OdmlLogForCategory(6uLL);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_opt_class();
            *buf = v23;
            v29 = v10;
            v30 = 2112;
            v31 = v20;
            v21 = v20;
            _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "JSON array validation failed infinity check with the following value: %@ (%@).", buf, 0x16u);
          }

          [v2 addObject:@"∞"];
          goto LABEL_29;
        }

LABEL_20:
        [v2 addObject:{v10, v23, v24}];
        goto LABEL_15;
      }

      v14 = v8;
      v15 = OdmlLogForCategory(6uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        *buf = v23;
        v29 = v10;
        v30 = 2112;
        v31 = v16;
        v17 = v16;
        _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "WARNING: Unable to serialize the following object into JSON.\n%@ (%@)", buf, 0x16u);
      }

      v8 = v14;
LABEL_15:
      ++v9;
    }

    while (v6 != v9);
    v18 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
    v6 = v18;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_29:

  return v2;
}

__CFString *sub_260EE3BB0(void *a1, uint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  v6 = [a1 APOdml_arrayForJSON];
  v14 = 0;
  v7 = [v5 dataWithJSONObject:v6 options:v4 error:&v14];
  v8 = v14;

  if (v8)
  {
    v9 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      v11 = [a1 APOdml_arrayForJSON];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "There was an error serializing the following array into JSON (%@):\n%@", buf, 0x16u);
    }
  }

  if (v7)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v12 = @"[]";
  }

  return v12;
}

void sub_260EE4CE4(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 64)];
  [APOdmlLogUtility logModelInputWithAdamID:v2 adamID:v3];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) objectAtIndexedSubscript:*(a1 + 64)];
  [v4 saveFeaturesFromResponse:v5];
}

void sub_260EE6304(uint64_t a1)
{
  v2 = +[APOdmlDatabaseConfiguration sharedInstance];
  v3 = [v2 isDaemonProcess];

  if ((v3 & 1) == 0)
  {
    v4 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
    v5 = [v4 assetManagerForPlacementType:*(a1 + 32) assetManagerType:*(a1 + 40)];
    v6 = [v5 currentMLModel];

    if (!v6)
    {
      v7 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_ERROR, "Unable to prewarm ML model", v8, 2u);
      }
    }
  }
}

BOOL sub_260EE68BC(void *a1)
{
  v2 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [v2 addCharactersInString:@"."];
  v3 = [v2 invertedSet];
  v4 = [a1 rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

uint64_t sub_260EE7FC8()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = qword_27FE60368;
  qword_27FE60368 = v0;

  [qword_27FE60368 setNumberStyle:1];
  v2 = qword_27FE60368;

  return MEMORY[0x2821F9670](v2, sel_setDecimalSeparator_);
}

uint64_t sub_260EE85C8(uint64_t a1)
{
  qword_280CCF570 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_260EE96DC()
{
  qword_280CCF540 = objc_alloc_init(APOdmlAllowList);

  return MEMORY[0x2821F96F8]();
}

uint64_t ADFeatureReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v22 = PBReaderReadString();
          if (v22)
          {
            [a1 addStringValue:v22];
          }

          goto LABEL_45;
        }

        if (v13 == 4)
        {
          v19 = PBReaderReadString();
          v20 = 32;
LABEL_35:
          v21 = *&a1[v20];
          *&a1[v20] = v19;

          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v19 = PBReaderReadString();
          v20 = 48;
          goto LABEL_35;
        }

        if (v13 == 2)
        {
          if ((v12 & 7) == 2)
          {
            v27[0] = 0;
            v27[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v15 = [a2 position];
              if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v28 = 0;
              v16 = [a2 position] + 8;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
              {
                v18 = [a2 data];
                [v18 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedDoubleAdd();
            }

            PBReaderRecallMark();
          }

          else
          {
            v27[0] = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedDoubleAdd();
          }

          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_260EEBA60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_260EEBE58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_260EEBE70(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) taskDeferred];

  if (v8)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
    }

    *a4 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) operationQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_260EEBF88;
    v11[3] = &unk_279AC63D0;
    v11[4] = *(a1 + 32);
    v12 = v7;
    v14 = a3;
    v13 = *(a1 + 40);
    [v10 addOperationWithBlock:v11];
  }
}

void sub_260EEBF88(uint64_t a1)
{
  [*(a1 + 32) runFeatureCalculator:*(a1 + 40)];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) validFeatureCalculators];
  v4 = [v3 count] - 1;

  if (v2 == v4)
  {
    v5 = [*(a1 + 32) operationQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_260EEC06C;
    v6[3] = &unk_279AC63A8;
    v6[4] = *(a1 + 32);
    v7 = *(a1 + 48);
    [v5 addOperationWithBlock:v6];
  }
}

uint64_t sub_260EEC06C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) calculatorErrors];
  v3 = [v2 count];

  v4 = OdmlLogForCategory(3uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 calculatorErrors];
      v12 = 138478083;
      v13 = v6;
      v14 = 2113;
      v15 = v9;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_ERROR, "[%{private}@] ERROR: Failed to calculate features with the following errors: %{private}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138477827;
    v13 = objc_opt_class();
    v10 = v13;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@] Successfully calculated all features.", &v12, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_260EEC5DC(uint64_t a1)
{
  v2 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v4 = [v2 assetManagerForPlacementType:objc_msgSend(*(a1 + 32) assetManagerType:{"placementType"), objc_msgSend(*(a1 + 32), "assetManagerType")}];

  v3 = [v4 doubleValueForFactor:@"LookbackWindow"];
  [v4 deleteExpiredFeaturesForName:@"appUsageVector" lookbackWindow:v3];
}

id sub_260EEE380(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = OdmlLogForCategory(5uLL);
  v7 = os_signpost_id_generate(v6);

  v8 = OdmlLogForCategory(5uLL);
  v9 = v8;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_260ECB000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ML Model Loading", &unk_260EFF3C5, buf, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBFF38]);
  if (a4)
  {
    v12 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138412290;
      v28 = v13;
      v14 = v13;
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_DEFAULT, "[%@] Current model is explicitly asked to perform prediction on CPU only.", buf, 0xCu);
    }

    [v11 setComputeUnits:0];
  }

  v26 = 0;
  v15 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 configuration:v11 error:&v26];
  v16 = v26;
  if (v16)
  {
    v17 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      *buf = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v16;
      v19 = v18;
      _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_ERROR, "[%@] Error reading compiled MLModel from URL %@", buf, 0x16u);
    }

    v20 = OdmlLogForCategory(5uLL);
    v21 = v20;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v21, OS_SIGNPOST_INTERVAL_END, v7, "ML Model Loading", &unk_260EFF3C5, buf, 2u);
    }

    v22 = 0;
  }

  else
  {
    v23 = OdmlLogForCategory(5uLL);
    v24 = v23;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v24, OS_SIGNPOST_INTERVAL_END, v7, "ML Model Loading", &unk_260EFF3C5, buf, 2u);
    }

    v22 = v15;
  }

  return v22;
}

void sub_260EEEA00(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_260EEEAB8;
  v4[3] = &unk_279AC68B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 addOperationWithBlock:v4];
}

void sub_260EEEAB8(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1 && ([*(a1 + 40) isEqualToDate:*(v2 + 32)] & 1) != 0)
  {
    objc_sync_exit(obj);

    v3 = [*(a1 + 32) shouldDefer];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 endBackgroundDeferralCheck];
      [*(a1 + 32) deferTask];
      v5 = *(a1 + 48);
      if (v5)
      {
        v6 = *(v5 + 16);

        v6();
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);

      [v4 _backgroundDeferralCheck:v8 completion:v9];
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }

    objc_sync_exit(obj);
  }
}

id OdmlLogForCategory(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    sub_260EF8100();
  }

  if (qword_280CCF598 != -1)
  {
    sub_260EF80EC();
  }

  v2 = qword_280CCF5A0[a1];

  return v2;
}

void sub_260EEEE84()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_260ECB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Initializing log categories.", v26, 2u);
  }

  v0 = os_log_create("com.apple.adplatforms", "AssetManager");
  v1 = qword_280CCF5A0[0];
  qword_280CCF5A0[0] = v0;

  v2 = os_log_create("com.apple.adplatforms", "Request");
  v3 = qword_280CCF5A8;
  qword_280CCF5A8 = v2;

  v4 = os_log_create("com.apple.adplatforms", "Vectors");
  v5 = qword_280CCF5B0;
  qword_280CCF5B0 = v4;

  v6 = os_log_create("com.apple.adplatforms", "FeatureCalculation");
  v7 = qword_280CCF5B8;
  qword_280CCF5B8 = v6;

  v8 = os_log_create("com.apple.adplatforms", "FeatureStorage");
  v9 = qword_280CCF5C0;
  qword_280CCF5C0 = v8;

  v10 = os_log_create("com.apple.adplatforms", "Response");
  v11 = qword_280CCF5C8;
  qword_280CCF5C8 = v10;

  v12 = os_log_create("com.apple.adplatforms", "Extensions");
  v13 = qword_280CCF5D0;
  qword_280CCF5D0 = v12;

  v14 = os_log_create("com.apple.adplatforms", "AllowList");
  v15 = qword_280CCF5D8;
  qword_280CCF5D8 = v14;

  v16 = os_log_create("com.apple.adplatforms", "Analytics");
  v17 = qword_280CCF5E0;
  qword_280CCF5E0 = v16;

  v18 = os_log_create("com.apple.adplatforms", "DODMLLogging");
  v19 = qword_280CCF5E8;
  qword_280CCF5E8 = v18;

  v20 = os_log_create("com.apple.adplatforms", "FatalError");
  v21 = qword_280CCF5F0;
  qword_280CCF5F0 = v20;

  v22 = os_log_create("com.apple.adplatforms", "APOdmlSearchResultsExtension");
  v23 = qword_280CCF5F8;
  qword_280CCF5F8 = v22;

  v24 = os_log_create("com.apple.adplatforms", "BiomeStorage");
  v25 = qword_280CCF600;
  qword_280CCF600 = v24;
}

uint64_t sub_260EF0150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260EF0168(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 error];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_260ECB000, v3, OS_LOG_TYPE_ERROR, "Failed to query TrainingRow data: %@", &v5, 0xCu);
    }
  }
}

void sub_260EF0240(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 eventBody];

  [v4 combineRecords:v5 andSaveTo:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_260EF02C8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [objc_opt_class() trainingRowsFromBiomeEvent:v5 recordID:v6 requiredFeatures:a1[5] andSaveTo:*(*(a1[6] + 8) + 40)];
}

void sub_260EF0830(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"_%ld", a3];
  v8 = [v4 stringByAppendingString:v7];

  [v6 setRowID:v8];
}

uint64_t sub_260EF09AC(uint64_t a1, void *a2)
{
  result = [a2 isValidRow:*(a1 + 32)];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);

    return MEMORY[0x2821F9670](v4, sel_addIndex_);
  }

  return result;
}

uint64_t sub_260EF0E18(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_260EF0EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBFF48];
  v4 = a3;
  v8 = 0;
  v5 = [[v3 alloc] initWithShape:&unk_28736F290 dataType:65600 error:&v8];
  [v5 setObject:v4 atIndexedSubscript:0];

  v6 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v5];

  return v6;
}

uint64_t sub_260EF1028(uint64_t a1)
{
  qword_280CCF578 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_260EF1454(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) listeningLock];
  [v2 lock];

  if (([*(a1 + 32) isListening] & 1) == 0)
  {
    v12 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = objc_opt_class();
      v13 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer startListening call while server is not listening; first attempt to launch the server.", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_260EF1754;
    v25 = &unk_279AC6188;
    v26 = v10;
    v11 = &v22;
    goto LABEL_12;
  }

  if ([*(a1 + 32) isListening] && (objc_msgSend(*(a1 + 32), "listeningError"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v14 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *&buf[4] = objc_opt_class();
      v15 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer startListening call while server is listening, and did not have an error on previous attempt.", buf, 0xCu);
    }

    v16 = [*(a1 + 32) listeningLock];
    [v16 unlock];
  }

  else if ([*(a1 + 32) isListening])
  {
    v4 = [*(a1 + 32) listeningError];

    if (v4)
    {
      v5 = OdmlLogForCategory(4uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        *&buf[4] = objc_opt_class();
        v6 = *&buf[4];
        _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer startListening call while server is listening, but had an error on previous attempt.", buf, 0xCu);
      }

      v7 = *(a1 + 32);
      v8 = [v7 modelURL];
      v9 = [v7 storeServerForModelURL:v8];
      [*(a1 + 32) setStoreServer:v9];

      v10 = *(a1 + 32);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = sub_260EF1798;
      v20 = &unk_279AC6188;
      v21 = v10;
      v11 = &v17;
LABEL_12:
      [v10 _startListening:{v11, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, *buf, *&buf[8]}];
    }
  }
}

void sub_260EF1754(uint64_t a1)
{
  v1 = [*(a1 + 32) listeningLock];
  [v1 unlock];
}

void sub_260EF1798(uint64_t a1)
{
  v1 = [*(a1 + 32) listeningLock];
  [v1 unlock];
}

void sub_260EF19E8(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 options];
    v19 = 138478083;
    v20 = v8;
    v21 = 2113;
    v22 = v10;
    _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "[%{private}@] NSPersistentStoreDescription: %{private}@", &v19, 0x16u);
  }

  [*(*(a1 + 32) + 16) startListening];
  v11 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v19 = 138477827;
    v20 = v12;
    v13 = v12;
    _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_DEFAULT, "[%{private}@] StoreServer began listening.", &v19, 0xCu);
  }

  [*(a1 + 32) setIsListening:1];
  [*(a1 + 32) setListeningError:v6];
  if (v6)
  {
    v14 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v19 = 138478083;
      v20 = v15;
      v21 = 2112;
      v22 = v6;
      v16 = v15;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%{private}@] StoreServer failed to initialize DB with error: %@", &v19, 0x16u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlFeatureStorageErrorDomain" code:5011 userInfo:0];
    [APOdmlAnalyticsFeatureStorage sendEvent:v17 additionalDetails:0];
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))();
  }
}

void sub_260EF20E4(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = OdmlLogForCategory(5uLL);
  v3 = [*(a1 + 32) ident];
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      LOWORD(v28) = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v2, OS_SIGNPOST_INTERVAL_END, v4, "GCD Overhead", &unk_260EFF3C5, &v28, 2u);
    }
  }

  if (![*(a1 + 40) count])
  {
    v16 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 40);
      v28 = 138412546;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v19 = v17;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: Rankable objects list %@ is empty or nil.", &v28, 0x16u);
    }

    v20 = *(a1 + 32);
    v21 = 2004;
    goto LABEL_18;
  }

  [*(a1 + 32) setOriginalAds:*(a1 + 40)];
  v5 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setRerankingStartDate:v5];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) isPersonalizedAdsEnabled];
  v8 = [*(a1 + 32) assetManager];
  v9 = [v8 BOOLeanValueForFactor:@"KillSwitch"];
  v10 = +[APOdmlValidator permissionCheck:personalizedAdsEnabled:trialKillswitch:](APOdmlValidator, "permissionCheck:personalizedAdsEnabled:trialKillswitch:", v6, v7, [v9 BOOLValue]);

  if (v10)
  {
    v22 = OdmlLogForCategory(5uLL);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v10 == 2003)
    {
      if (v23)
      {
        v24 = objc_opt_class();
        v28 = 138412290;
        v29 = v24;
        v25 = v24;
        v26 = "[%@] Reranking Error: Reranking not permitted.";
LABEL_16:
        _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, v26, &v28, 0xCu);
      }
    }

    else if (v23)
    {
      v27 = objc_opt_class();
      v28 = 138412290;
      v29 = v27;
      v25 = v27;
      v26 = "[%@] Reranking Error: Reranking not enabled.";
      goto LABEL_16;
    }

    v20 = *(a1 + 32);
    v21 = v10;
LABEL_18:
    [v20 _handleError:v21];
    return;
  }

  v11 = [*(a1 + 32) predictAndExplore:*(a1 + 40)];
  [*(a1 + 32) setRerankedAds:v11];

  v12 = *(a1 + 32);
  v13 = [v12 rerankedAds];
  LODWORD(v12) = [v12 sendRerankResponseIfAvailable:v13 error:0];

  if (v12)
  {
    v14 = [*(a1 + 32) rerankingStartDate];
    v15 = [MEMORY[0x277CBEAA8] date];
    [APOdmlAnalyticsReranking sendTimedEvent:0 statusSuccess:0 additionalDetails:0 startDate:v14 endDate:v15];
  }
}

void sub_260EF2620(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rerankedAds];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 32) rerankedAds];
    v5 = [v3 sendRerankResponseIfAvailable:v4 error:0];

    if (v5)
    {
      v19 = [*(a1 + 32) rerankingStartDate];
      v6 = [MEMORY[0x277CBEAA8] date];
      [APOdmlAnalyticsReranking sendTimedEvent:0 statusSuccess:0 additionalDetails:0 startDate:v19 endDate:v6];
    }
  }

  else
  {
    v7 = [*(a1 + 32) rerankerError];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v8 originalAds];
      v10 = [*(a1 + 32) rerankerError];
      LODWORD(v8) = [v8 sendRerankResponseIfAvailable:v9 error:v10];

      if (v8)
      {
        v11 = OdmlLogForCategory(5uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = objc_opt_class();
          v13 = *(a1 + 32);
          v14 = v12;
          v15 = [v13 rerankerError];
          *buf = 138412546;
          v21 = v12;
          v22 = 2048;
          v23 = [v15 code];
          _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: %ld.", buf, 0x16u);
        }

        v16 = [*(a1 + 32) rerankerError];
        v17 = [*(a1 + 32) rerankingStartDate];
        v18 = [MEMORY[0x277CBEAA8] date];
        [APOdmlAnalyticsReranking sendTimedEvent:v16 statusSuccess:0 additionalDetails:0 startDate:v17 endDate:v18];
      }
    }
  }
}

void sub_260EF28B0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rerankDispatchGroup];
  v3 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  v4 = dispatch_group_wait(v2, v3);

  v5 = OdmlLogForCategory(5uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_INFO, "[%@] Reranker failed to complete before SLA was reached", &v9, 0xCu);
    }

    [*(a1 + 32) rerankResponseTimeout];
  }

  else
  {
    if (v6)
    {
      v9 = 138412290;
      v10 = objc_opt_class();
      v8 = v10;
      _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_INFO, "[%@] Reranker completed before SLA was reached", &v9, 0xCu);
    }
  }
}

void sub_260EF3570()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.ap.reranking", attr);
  v2 = qword_280CCF530;
  qword_280CCF530 = v1;
}

void sub_260EF3638()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);

  v1 = dispatch_queue_create("com.apple.ap.rerankingTimeout", attr);
  v2 = qword_280CCF538;
  qword_280CCF538 = v1;
}

float accuracy_in_batch(uint64_t *a1, void *a2)
{
  get_espresso_buffer_shape(&v20);
  v4 = 0.0;
  if ((v21 - v20) >= 9)
  {
    v5 = *v20;
    if (*v20)
    {
      v6 = 0;
      v7 = 0;
      v8 = v20[1];
      v9 = *a1;
      do
      {
        v10 = (v9 + 4 * v7 * v8);
        if (v8 >= 2)
        {
          v12 = v10 + 1;
          v13 = *v10;
          v14 = 4 * v8 - 4;
          v11 = (v9 + 4 * v7 * v8);
          v15 = v10 + 1;
          do
          {
            v16 = *v15++;
            v17 = v16;
            if (v13 < v16)
            {
              v13 = v17;
              v11 = v12;
            }

            v12 = v15;
            v14 -= 4;
          }

          while (v14);
        }

        else
        {
          v11 = (v9 + 4 * v7 * v8);
        }

        if (((v11 - v10) >> 2) == llroundf(*(*a2 + 4 * v7)))
        {
          ++v6;
        }

        ++v7;
      }

      while (v7 != v5);
      v18 = v6;
    }

    else
    {
      v18 = 0.0;
    }

    v4 = v18 / v5;
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v4;
}

void print_espresso_buffer(char *a1@<X0>, float **a2@<X1>, std::string *a3@<X8>)
{
  get_espresso_buffer_shape(&v37);
  v6 = v37;
  v7 = 1;
  while (v6 != v38)
  {
    v8 = *v6;
    v6 += 2;
    v7 *= v8;
  }

  if (v7 >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = v7;
  }

  v10 = *a2;
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  sub_260EF3CE0(&v34, v11);
  sub_260EF3D98(&v37, &v31);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v31;
  }

  else
  {
    v12 = v31.__r_.__value_.__r.__words[0];
  }

  sub_260EF3CE0(v32, v12);
  if ((v33 & 0x80u) == 0)
  {
    v13 = v32;
  }

  else
  {
    v13 = v32[0];
  }

  if ((v33 & 0x80u) == 0)
  {
    v14 = v33;
  }

  else
  {
    v14 = v32[1];
  }

  v15 = std::string::append(&v34, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v35, ": ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_260EF3CE0(v26, "[");
  if (v7 <= 5)
  {
    v19 = "]";
  }

  else
  {
    v19 = "...]";
  }

  sub_260EF3CE0(v24, v19);
  sub_260EF3E58(v10, &v10[v9], v26, v24, &v28);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v28;
  }

  else
  {
    v20 = v28.__r_.__value_.__r.__words[0];
  }

  sub_260EF3CE0(__p, v20);
  if ((v30 & 0x80u) == 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if ((v30 & 0x80u) == 0)
  {
    v22 = v30;
  }

  else
  {
    v22 = __p[1];
  }

  v23 = std::string::append(&v36, v21, v22);
  *a3 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_260EF3BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v51 - 73) < 0)
  {
    operator delete(*(v51 - 96));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  v53 = *(v51 - 72);
  if (v53)
  {
    *(v51 - 64) = v53;
    operator delete(v53);
  }

  _Unwind_Resume(exception_object);
}

void *sub_260EF3CE0(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_260EDCE14();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_260EF3D98(unint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_260EF3CE0(v7, "(");
  sub_260EF3CE0(__p, ")");
  sub_260EF4178(v3, v4, v7, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_260EF3E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_260EF3E58(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  sub_260EF3CE0(__p, ", ");
  std::to_string(&v26, *a1);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::string::insert(&v26, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  a5->__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&a5->__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  for (i = a1 + 1; i != a2; ++i)
  {
    std::to_string(&v25, *i);
    if ((v28 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = __p[1];
    }

    v18 = std::string::insert(&v25, 0, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a5, v20, size);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  std::string::append(a5, v23, v24);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_260EF3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *nd_shape_to_5d_shape@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result[1] - *result;
  if (!v2)
  {
    *a2 = 1;
    goto LABEL_8;
  }

  v3 = result[1];
  *a2 = *(v3 - 8);
  if ((v2 >> 3) <= 1)
  {
LABEL_8:
    a2[1] = 1;
    goto LABEL_9;
  }

  a2[1] = *(v3 - 16);
  if (v2 == 16)
  {
LABEL_9:
    a2[2] = 1;
    goto LABEL_10;
  }

  a2[2] = *(v3 - 24);
  if ((v2 >> 3) <= 3)
  {
LABEL_10:
    v4 = 1;
    a2[3] = 1;
    goto LABEL_11;
  }

  a2[3] = *(v3 - 32);
  if (v2 == 32)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 - 40);
  }

LABEL_11:
  a2[4] = v4;
  a2[5] = v2 >> 3;
  return result;
}

void sub_260EF4178(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  sub_260EF3CE0(__p, ", ");
  std::to_string(&v26, *a1);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::string::insert(&v26, 0, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  a5->__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&a5->__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  for (i = a1 + 1; i != a2; ++i)
  {
    std::to_string(&v25, *i);
    if ((v28 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v28 & 0x80u) == 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = __p[1];
    }

    v18 = std::string::insert(&v25, 0, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a5, v20, size);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  std::string::append(a5, v23, v24);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_260EF4300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_260EF5A3C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v9 = @"errorSource";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"APODMLDESPluginErrorDomain" code:8034 userInfo:v6];

  return v7;
}

id sub_260EF5B2C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v9 = @"errorSource";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"APODMLDESPluginErrorDomain" code:8035 userInfo:v6];

  return v7;
}

id sub_260EF5C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v9 = @"errorSource";
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"APODMLDESPluginErrorDomain" code:8036 userInfo:v6];

  return v7;
}

id sub_260EF5D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"AppDownloadVector"])
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = &kAPODMLDESPluginBindADVInputFail;
LABEL_8:
    v6 = *v5;
LABEL_9:
    v7 = [v4 errorWithDomain:@"APODMLDESPluginErrorDomain" code:v6 userInfo:0];
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"AppInstalledVector"])
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = &kAPODMLDESPluginBindIAVInputFail;
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"AppUsageVector"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"appUsageVector"))
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = &kAPODMLDESPluginBindAUVInputFail;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"DupeFirstOrganic"])
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = &kAPODMLDESPluginBindDupeFirstOrganicInputFail;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"Installed"])
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = &kAPODMLDESPluginBindInstalledInputFail;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"pTTRLogit"])
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = &kAPODMLDESPluginBindPTTRInputFail;
    goto LABEL_8;
  }

  if (([v3 isEqualToString:@"Tapped"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Tap"))
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = &kAPODMLDESPluginBindLabelInputFail;
    goto LABEL_8;
  }

  v9 = [v3 isEqualToString:@"AppVector"];
  v10 = MEMORY[0x277CCA9B8];
  if (v9)
  {
    v4 = MEMORY[0x277CCA9B8];
    v6 = 8018;
    goto LABEL_9;
  }

  v12 = @"errorSource";
  v13[0] = v3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [v10 errorWithDomain:@"APODMLDESPluginErrorDomain" code:8018 userInfo:v11];

LABEL_10:

  return v7;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}