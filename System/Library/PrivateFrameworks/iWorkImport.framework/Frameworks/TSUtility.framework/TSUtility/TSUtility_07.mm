id sub_2770F91BC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 dateFormatterFromTemplate12Hour:@"hhmma" template24Hour:@"HHmm" withDateFormatter:v8];
  v11 = SFUMainBundle();
  v12 = [v11 localizedStringForKey:@"Yesterday value:%@" table:{&stru_28862C2A0, @"TSUtility"}];

  v13 = [a1 p_stringWithString:v12 lowercase:a5 dateFormatter:v8];

  v14 = MEMORY[0x277CCACA8];
  v15 = [v10 stringFromDate:v9];

  v16 = [v14 stringWithFormat:v13, v15];

  return v16;
}

id sub_2770F92E8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [a1 dateFormatterFromTemplate12Hour:@"eeehhmma" template24Hour:@"eeeHHmm" withDateFormatter:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

id sub_2770F936C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [a1 dateFormatterFromTemplate12Hour:@"MMMdhhmma" template24Hour:@"MMMdHHmm" withDateFormatter:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

id sub_2770F93F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  }

  v9 = v8;
  [v8 setLocalizedDateFormatFromTemplate:@"Mdy"];
  v10 = [v9 stringFromDate:v5];

  return v10;
}

id sub_2770F9484(void *a1)
{
  v2 = [a1 dateFormatterFromTemplate12Hour:@"MMMMddyyyyhhmma" template24Hour:@"MMMMddyyyyHHmm" withDateFormatter:0];
  v3 = [v2 stringFromDate:a1];

  return v3;
}

id sub_2770F94EC(void *a1)
{
  v2 = [a1 dateFormatterFromTemplate12Hour:@"MMMdyhhmma" template24Hour:@"MMMdyHHmm" withDateFormatter:0];
  v3 = [v2 stringFromDate:a1];

  return v3;
}

id sub_2770F9554(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  }

  v13 = v12;
  if ([a1 p_localeUses24HourTimeCycle])
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  [v13 setLocalizedDateFormatFromTemplate:v14];

  return v13;
}

BOOL sub_2770F95F8()
{
  v0 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v1 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"j" options:0 locale:v0];
  v2 = [v1 rangeOfString:@"a"] == 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

BOOL sub_2770F9678(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    [a1 timeIntervalSince1970];
    v6 = v5;
    [v4 timeIntervalSince1970];
    v8 = v6 == v7 || vabdd_f64(v6, v7) < fabs(v7 * 1.0e-10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_2770F96FC(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v9 = [a5 locale];
    v10 = [v8 lowercaseStringWithLocale:v9];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

BOOL sub_2770F9780(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    if ([a1 isEqual:v4])
    {
      v5 = 1;
    }

    else
    {
      [a1 timeIntervalSinceReferenceDate];
      v7 = v6;
      [v4 timeIntervalSinceReferenceDate];
      v5 = 1;
      v9 = v7 == floor(v8) || v7 == v8;
      if (!v9 && vabdd_f64(v7, v8) >= 0.001)
      {
        v5 = floor(v7) == v8;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_2770F98E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 encodedLength];
  if (v5 == [v4 encodedLength])
  {
    v6 = [v3 decodedLength];
    v7 = v6 == [v4 decodedLength];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

TSUEncodedBlockInfoWithDecodedLengthInternal *TSUEncodedBlockInfoCreate(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v2 = [[TSUEncodedBlockInfoInternal alloc] initWithEncodedLength:a1];
  }

  else
  {
    v2 = [[TSUEncodedBlockInfoWithDecodedLengthInternal alloc] initWithEncodedLength:a1 decodedLength:a2];
  }

  return v2;
}

void sub_2770F9D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770F9D18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770F9D30(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_2770FA028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770FA040(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

intptr_t sub_2770FA39C(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

intptr_t sub_2770FA4E4(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

uint64_t sub_2770FA53C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 readToBuffer:a2 size:a3];

  return v6;
}

char *sub_2770FA5F4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 offset];
  [v3 seekToOffset:v4 + a2];
  v5 = [v3 offset] - v4;

  return v5;
}

void sub_2770FA6B8(void *a1)
{
  v1 = a1;
  [v1 seekToOffset:0];
}

void sub_2770FA780(void *a1)
{
  cf = a1;
  [cf close];
  CFRelease(cf);
}

uint64_t sub_2770FA84C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770FA890()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770FA8D4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770FA918()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

TSUSandboxedURL *sub_2770FA960(uint64_t a1)
{
  v1 = [[TSUSandboxedURL alloc] initWithURL:a1];

  return v1;
}

void sub_2770FAAF8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a2;
  v5 = [v3 defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_p_didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:v4];
  [v5 addObserver:*(a1 + 32) selector:sel_p_didEnterBackground_ name:*MEMORY[0x277D76660] object:v4];
}

void sub_2770FB158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770FB170(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2770FB188(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void sub_2770FB308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770FB320(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void sub_2770FB4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770FB4E4(void *a1)
{
  v2 = [*(a1[4] + 8) objectsForKeys:a1[5] notFoundMarker:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_2770FB804()
{
  v0 = objc_alloc_init(TSUStdioLogSink);
  v1 = qword_280A63E80;
  qword_280A63E80 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770FB8D8(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v11 = a3;
  v12 = a6;
  if (*(a1 + 40))
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770FB9FC;
    block[3] = &unk_27A703AF0;
    block[4] = v14;
    v20 = v13;
    v21 = v11;
    v23 = a4;
    v25 = a2;
    v26 = a5;
    v16 = v12;
    v17 = *(a1 + 40);
    v22 = v16;
    v24 = v17;
    v18 = v13;
    dispatch_async(v15, block);
  }
}

void sub_2770FB9FC(uint64_t a1)
{
  v10 = [*(*(a1 + 32) + 16) stringFromDate:*(a1 + 40)];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processIdentifier];

  if (*(a1 + 48))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@", *(a1 + 48)];
  }

  else
  {
    v6 = &stru_28862C2A0;
  }

  v7 = *(a1 + 80) - 1;
  if (v7 > 4)
  {
    v8 = &stru_28862C2A0;
  }

  else
  {
    v8 = off_27A703B38[v7];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@[%d] %@ %@ %s:%d %@", v10, v3, v5, v8, v6, *(a1 + 64), *(a1 + 84), *(a1 + 56)];
  fprintf(*(a1 + 72), "%s\n", [v9 UTF8String]);
  if (*(a1 + 80) <= 2)
  {
    fflush(*(a1 + 72));
  }
}

void sub_2770FBC8C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a2;
  v5 = [v3 defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_p_didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:v4];
  [v5 addObserver:*(a1 + 32) selector:sel_p_didEnterBackground_ name:*MEMORY[0x277D76660] object:v4];
}

void sub_2770FC344(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = TSUCheckedDynamicCast(v6, v15);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = (*(v8 + 16))(v8, v7);
      if (!v9)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]_block_invoke"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUAssetColorMap.m"];
        [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:74 isFatal:0 description:"invalid nil value for '%{public}s'", "convertedKey"];

        +[TSUAssertionHandler logBacktraceThrottled];
        v9 = 0;
      }
    }

    else
    {
      v9 = v7;
    }

    v12 = objc_opt_class();
    v13 = TSUCheckedDynamicCast(v12, v5);
    if (v13)
    {
      v14 = [*(a1 + 32) TSUColorFromColorArray:v13];
      if (v14)
      {
        [*(a1 + 40) setObject:v14 forKeyedSubscript:v9];
      }

      else
      {
        NSLog(@"Failed to map color for: %@ array: %@", v15, v13);
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TSUAssetColorMap.m" lineNumber:87 description:{@"Expected an NSArray, found %@ : %@", objc_opt_class(), v5}];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TSUAssetColorMap.m" lineNumber:92 description:{@"Expected an NSString key, found %@ : %@", objc_opt_class(), v15}];
  }
}

uint64_t TSUUnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

uint64_t TSUUnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

uint64_t TSUUnfairLock.__deallocating_deinit()
{
  MEMORY[0x277CA7060](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void TSUUnfairLock.withLock<A>(block:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

uint64_t TSUUnfairRecursiveLock.__allocating_init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init(v1, &v3);
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

uint64_t TSUUnfairRecursiveLock.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = swift_slowAlloc();
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init(v1, &v3);
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

uint64_t TSUUnfairRecursiveLock.deinit()
{
  pthread_mutex_destroy(*(v0 + 16));
  MEMORY[0x277CA7060](*(v0 + 16), -1, -1);
  return v0;
}

uint64_t TSUUnfairRecursiveLock.__deallocating_deinit()
{
  pthread_mutex_destroy(*(v0 + 16));
  MEMORY[0x277CA7060](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t TSUUnfairRecursiveLock.withLock<A>(block:)(void (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v4 = pthread_mutex_lock(v3);
  a1(v4);
  return pthread_mutex_unlock(v3);
}

uint64_t variable initialization expression of TSUAtomicVar.lock()
{
  type metadata accessor for TSUUnfairLock();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

uint64_t variable initialization expression of TSUAtomicDictionaryVar.lock()
{
  type metadata accessor for TSUUnfairLock();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

__n128 sub_2770FCAB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2770FCAC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2770FCAE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2770FCB44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2770FCB64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2770FCBDC(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *sub_2770FCC4C(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

void sub_2770FCD34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Int __swiftcall IndexSet.nthIndex(_:)(Swift::Int a1)
{
  v2 = sub_277115994();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_277115984();
  sub_2770FCEB8(v6, a1, v8);
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = sub_2771159D4();
  v9(v8, v2);
  return v10;
}

uint64_t sub_2770FCEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_277115994();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *(v7 + 16);
  if (a2 < 0)
  {
    v13(&v16 - v11, a1, v6);
    sub_2771159C4();
    sub_2770FD234(&qword_280A63240, MEMORY[0x277CC9A38]);
    v14 = 0;
    do
    {
      --v14;
      sub_277115A54();
    }

    while (v14 > a2);
    v10 = v12;
  }

  else
  {
    v13(v10, a1, v6);
    if (a2)
    {
      sub_2771159C4();
      sub_2770FD234(&qword_280A63238, MEMORY[0x277CC9A50]);
      do
      {
        sub_277115C14();
        --a2;
      }

      while (a2);
    }
  }

  return (*(v7 + 32))(a3, v10, v6);
}

Swift::Bool __swiftcall IndexSet.intersects(integersIn:)(_NSRange integersIn)
{
  v1 = __OFADD__(integersIn.location, integersIn.length);
  integersIn.length += integersIn.location;
  if (v1)
  {
    __break(1u);
  }

  else if (integersIn.length >= integersIn.location)
  {
    return MEMORY[0x28211E310]();
  }

  __break(1u);
  return MEMORY[0x28211E310]();
}

BOOL IndexSet.intersects(_:)(uint64_t a1)
{
  v2 = sub_2771159C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  (*(v3 + 16))(v6, v1, v2);
  sub_2770FD234(&qword_280A63230, MEMORY[0x277CC9A58]);
  sub_277115CC4();
  v9 = sub_277115CD4();
  (*(v3 + 8))(v8, v2);
  return (v9 & 1) == 0;
}

uint64_t IndexSet.init(integersIn:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  v3 = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  else if (v3 >= a1)
  {
    return MEMORY[0x28211E300]();
  }

  __break(1u);
  return MEMORY[0x28211E300]();
}

uint64_t sub_2770FD234(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2771159C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TSULogEnsureCreated(_:_:_:)(uint64_t a1, uint64_t a2, void **a3, dispatch_once_t *a4)
{
  v6 = sub_277115AB4();
  v7 = sub_2770C13C8(v6, a3, a4);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(v11, &v10);
  sub_2770FD32C();
  swift_dynamicCast();
  return v9;
}

_OWORD *sub_2770FD31C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2770FD32C()
{
  result = qword_280A63248[0];
  if (!qword_280A63248[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280A63248);
  }

  return result;
}

uint64_t sub_2770FD378()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUDefaultCat_log_t, &TSUDefaultCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuDefault = v3;
  return result;
}

uint64_t *OS_os_log.tsuDefault.unsafeMutableAddressor()
{
  if (qword_280A63020 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuDefault;
}

uint64_t (*static OS_os_log.tsuDefault.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280A63020 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2770FD5A8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUErrorCat_log_t, &TSUErrorCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuError = v3;
  return result;
}

uint64_t *OS_os_log.tsuError.unsafeMutableAddressor()
{
  if (qword_280A63028 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuError;
}

uint64_t (*static OS_os_log.tsuError.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63028 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FD7D0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUWarningCat_log_t, &TSUWarningCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuWarning = v3;
  return result;
}

uint64_t *OS_os_log.tsuWarning.unsafeMutableAddressor()
{
  if (qword_280A63030 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuWarning;
}

uint64_t (*static OS_os_log.tsuWarning.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63030 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FD9FC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUAssertCat_log_t, &TSUAssertCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuAssert = v3;
  return result;
}

uint64_t *OS_os_log.tsuAssert.unsafeMutableAddressor()
{
  if (qword_280A63038 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuAssert;
}

uint64_t (*static OS_os_log.tsuAssert.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63038 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FDC24()
{
  result = sub_2770FDC44();
  static OS_os_log.tsuPerformance = result;
  return result;
}

uint64_t sub_2770FDC44()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUPerformanceCat_log_t, &TSUPerformanceCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuPerformance.unsafeMutableAddressor()
{
  if (qword_280A63040 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuPerformance;
}

uint64_t (*static OS_os_log.tsuPerformance.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63040 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FDE64()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUAlertCat_log_t, &TSUAlertCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuAlert = v3;
  return result;
}

uint64_t *OS_os_log.tsuAlert.unsafeMutableAddressor()
{
  if (qword_280A63048 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuAlert;
}

uint64_t (*static OS_os_log.tsuAlert.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63048 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FE08C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUStatusHUDCat_log_t, &TSUStatusHUDCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuStatusHUD = v3;
  return result;
}

uint64_t *OS_os_log.tsuStatusHUD.unsafeMutableAddressor()
{
  if (qword_280A63050 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuStatusHUD;
}

uint64_t (*static OS_os_log.tsuStatusHUD.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FE2B8()
{
  result = sub_2770FE2D8();
  static OS_os_log.tsuDocumentLifecycle = result;
  return result;
}

uint64_t sub_2770FE2D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUDocumentLifecycleCat_log_t, &TSUDocumentLifecycleCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuDocumentLifecycle.unsafeMutableAddressor()
{
  if (qword_280A63058 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuDocumentLifecycle;
}

uint64_t (*static OS_os_log.tsuDocumentLifecycle.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63058 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FE4F8()
{
  result = sub_2770FE518();
  static OS_os_log.tsuApplicationLifecycle = result;
  return result;
}

uint64_t sub_2770FE518()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUApplicationLifecycleCat_log_t, &TSUApplicationLifecycleCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuApplicationLifecycle.unsafeMutableAddressor()
{
  if (qword_280A63060 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuApplicationLifecycle;
}

uint64_t (*static OS_os_log.tsuApplicationLifecycle.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63060 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FE738()
{
  result = sub_2770FE758();
  static OS_os_log.tsuDragAndDrop = result;
  return result;
}

uint64_t sub_2770FE758()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUDragAndDropCat_log_t, &TSUDragAndDropCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuDragAndDrop.unsafeMutableAddressor()
{
  if (qword_280A63068 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuDragAndDrop;
}

uint64_t (*static OS_os_log.tsuDragAndDrop.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63068 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FE978()
{
  result = sub_2770FE998();
  static OS_os_log.tsuPersistenceData = result;
  return result;
}

uint64_t sub_2770FE998()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUPersistenceDataMaterializationCat_log_t, &TSUPersistenceDataMaterializationCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuPersistenceData.unsafeMutableAddressor()
{
  if (qword_280A63070 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuPersistenceData;
}

uint64_t (*static OS_os_log.tsuPersistenceData.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63070 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FEBB8()
{
  result = sub_2770FEBD8();
  static OS_os_log.tsuPersistenceDocumentDataWatcher = result;
  return result;
}

uint64_t sub_2770FEBD8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUPersistenceDocumentDataWatcherCat_log_t, &TSUPersistenceDocumentDataWatcherCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuPersistenceDocumentDataWatcher.unsafeMutableAddressor()
{
  if (qword_280A63078 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuPersistenceDocumentDataWatcher;
}

uint64_t (*static OS_os_log.tsuPersistenceDocumentDataWatcher.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63078 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FEDF8()
{
  result = sub_2770FEE18();
  static OS_os_log.tsuPersistenceSerialization = result;
  return result;
}

uint64_t sub_2770FEE18()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUPersistenceSerializationCat_log_t, &TSUPersistenceSerializationCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuPersistenceSerialization.unsafeMutableAddressor()
{
  if (qword_280A63080 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuPersistenceSerialization;
}

uint64_t (*static OS_os_log.tsuPersistenceSerialization.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63080 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FF038()
{
  result = sub_2770FF058();
  static OS_os_log.tsuClassworkActivity = result;
  return result;
}

uint64_t sub_2770FF058()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUClassworkActivityCat_log_t, &TSUClassworkActivityCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuClassworkActivity.unsafeMutableAddressor()
{
  if (qword_280A63088 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuClassworkActivity;
}

uint64_t (*static OS_os_log.tsuClassworkActivity.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63088 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FF278()
{
  result = sub_2770FF298();
  static OS_os_log.tsuActivityStreamSummaryViewModel = result;
  return result;
}

uint64_t sub_2770FF298()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUActivityStreamSummaryViewModelCat_log_t, &TSUActivityStreamSummaryViewModelCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuActivityStreamSummaryViewModel.unsafeMutableAddressor()
{
  if (qword_280A63090 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuActivityStreamSummaryViewModel;
}

uint64_t (*static OS_os_log.tsuActivityStreamSummaryViewModel.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63090 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FF4B8()
{
  result = sub_2770FF4D8();
  static OS_os_log.tsuActivityStreamTransformationManager = result;
  return result;
}

uint64_t sub_2770FF4D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUActivityStreamTransformationManagerLogCat_log_t, &TSUActivityStreamTransformationManagerLogCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuActivityStreamTransformationManager.unsafeMutableAddressor()
{
  if (qword_280A63098 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuActivityStreamTransformationManager;
}

uint64_t (*static OS_os_log.tsuActivityStreamTransformationManager.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63098 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FF6F8()
{
  result = sub_2770FF718();
  static OS_os_log.tsuActivityStreamViewModel = result;
  return result;
}

uint64_t sub_2770FF718()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUActivityStreamViewModelLogCat_log_t, &TSUActivityStreamViewModelLogCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuActivityStreamViewModel.unsafeMutableAddressor()
{
  if (qword_280A630A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuActivityStreamViewModel;
}

uint64_t (*static OS_os_log.tsuActivityStreamViewModel.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FF938()
{
  result = sub_2770FF958();
  static OS_os_log.tsuActivityStreamViewSettings = result;
  return result;
}

uint64_t sub_2770FF958()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUActivityStreamViewSettingsCat_log_t, &TSUActivityStreamViewSettingsCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuActivityStreamViewSettings.unsafeMutableAddressor()
{
  if (qword_280A630A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuActivityStreamViewSettings;
}

uint64_t (*static OS_os_log.tsuActivityStreamViewSettings.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FFB78()
{
  result = sub_2770FFB98();
  static OS_os_log.tsuActivityStreamViewModelLoader = result;
  return result;
}

uint64_t sub_2770FFB98()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUActivityStreamViewModelLoaderLogCat_log_t, &TSUActivityStreamViewModelLoaderLogCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuActivityStreamViewModelLoader.unsafeMutableAddressor()
{
  if (qword_280A630B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuActivityStreamViewModelLoader;
}

uint64_t (*static OS_os_log.tsuActivityStreamViewModelLoader.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FFDB8()
{
  result = sub_2770FFDD8();
  static OS_os_log.tsuActivityStreamThumbnailing = result;
  return result;
}

uint64_t sub_2770FFDD8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUActivityStreamThumbnailingLogCat_log_t, &TSUActivityStreamThumbnailingLogCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuActivityStreamThumbnailing.unsafeMutableAddressor()
{
  if (qword_280A630B8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuActivityStreamThumbnailing;
}

uint64_t (*static OS_os_log.tsuActivityStreamThumbnailing.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2770FFFF8()
{
  result = sub_277100018();
  static OS_os_log.tsuCollaborationActivity = result;
  return result;
}

uint64_t sub_277100018()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationActivityCat_log_t, &TSUCollaborationActivityCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationActivity.unsafeMutableAddressor()
{
  if (qword_280A630C0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationActivity;
}

uint64_t (*static OS_os_log.tsuCollaborationActivity.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277100238()
{
  result = sub_277100258();
  static OS_os_log.tsuCollaborationAuthentication = result;
  return result;
}

uint64_t sub_277100258()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationAuthenticationCat_log_t, &TSUCollaborationAuthenticationCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationAuthentication.unsafeMutableAddressor()
{
  if (qword_280A630C8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationAuthentication;
}

uint64_t (*static OS_os_log.tsuCollaborationAuthentication.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277100478()
{
  result = sub_277100498();
  static OS_os_log.tsuCollaborationBackgroundSync = result;
  return result;
}

uint64_t sub_277100498()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationBackgroundSyncCat_log_t, &TSUCollaborationBackgroundSyncCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationBackgroundSync.unsafeMutableAddressor()
{
  if (qword_280A630D0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationBackgroundSync;
}

uint64_t (*static OS_os_log.tsuCollaborationBackgroundSync.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771006B8()
{
  result = sub_2771006D8();
  static OS_os_log.tsuCollaborationBackgroundTaskManager = result;
  return result;
}

uint64_t sub_2771006D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationBackgroundTaskManagerCat_log_t, &TSUCollaborationBackgroundTaskManagerCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationBackgroundTaskManager.unsafeMutableAddressor()
{
  if (qword_280A630D8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationBackgroundTaskManager;
}

uint64_t (*static OS_os_log.tsuCollaborationBackgroundTaskManager.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771008F8()
{
  result = sub_277100918();
  static OS_os_log.tsuCollaborationCommand = result;
  return result;
}

uint64_t sub_277100918()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationCommandCat_log_t, &TSUCollaborationCommandCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationCommand.unsafeMutableAddressor()
{
  if (qword_280A630E0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationCommand;
}

uint64_t (*static OS_os_log.tsuCollaborationCommand.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277100B38()
{
  result = sub_277100B58();
  static OS_os_log.tsuCollaborationCommandHistoryAsyncTransform = result;
  return result;
}

uint64_t sub_277100B58()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationCommandHistoryAsyncTransformCat_log_t, &TSUCollaborationCommandHistoryAsyncTransformCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationCommandHistoryAsyncTransform.unsafeMutableAddressor()
{
  if (qword_280A630E8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationCommandHistoryAsyncTransform;
}

uint64_t (*static OS_os_log.tsuCollaborationCommandHistoryAsyncTransform.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277100D78()
{
  result = sub_277100D98();
  static OS_os_log.tsuCollaborationCommandVerbose = result;
  return result;
}

uint64_t sub_277100D98()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationCommandVerboseCat_log_t, &TSUCollaborationCommandVerboseCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationCommandVerbose.unsafeMutableAddressor()
{
  if (qword_280A630F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationCommandVerbose;
}

uint64_t (*static OS_os_log.tsuCollaborationCommandVerbose.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277100FB8()
{
  result = sub_277100FD8();
  static OS_os_log.tsuCollaborationDocumentWarningsManager = result;
  return result;
}

uint64_t sub_277100FD8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationDocumentWarningsManagerCat_log_t, &TSUCollaborationDocumentWarningsManagerCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationDocumentWarningsManager.unsafeMutableAddressor()
{
  if (qword_280A630F8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationDocumentWarningsManager;
}

uint64_t (*static OS_os_log.tsuCollaborationDocumentWarningsManager.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A630F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771011F8()
{
  result = sub_277101218();
  static OS_os_log.tsuCollaborationFeebackService = result;
  return result;
}

uint64_t sub_277101218()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationFeebackServiceCat_log_t, &TSUCollaborationFeebackServiceCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationFeebackService.unsafeMutableAddressor()
{
  if (qword_280A63100 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationFeebackService;
}

uint64_t (*static OS_os_log.tsuCollaborationFeebackService.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63100 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277101438()
{
  result = sub_277101458();
  static OS_os_log.tsuCollaborationFogSyncManager = result;
  return result;
}

uint64_t sub_277101458()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationFogSyncManagerCat_log_t, &TSUCollaborationFogSyncManagerCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationFogSyncManager.unsafeMutableAddressor()
{
  if (qword_280A63108 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationFogSyncManager;
}

uint64_t (*static OS_os_log.tsuCollaborationFogSyncManager.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63108 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277101678()
{
  result = sub_277101698();
  static OS_os_log.tsuCollaborationICloudRequest = result;
  return result;
}

uint64_t sub_277101698()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationICloudRequestCat_log_t, &TSUCollaborationICloudRequestCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationICloudRequest.unsafeMutableAddressor()
{
  if (qword_280A63110 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationICloudRequest;
}

uint64_t (*static OS_os_log.tsuCollaborationICloudRequest.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63110 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771018B8()
{
  result = sub_2771018D8();
  static OS_os_log.tsuCollaborationInitialization = result;
  return result;
}

uint64_t sub_2771018D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationInitializationCat_log_t, &TSUCollaborationInitializationCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationInitialization.unsafeMutableAddressor()
{
  if (qword_280A63118 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationInitialization;
}

uint64_t (*static OS_os_log.tsuCollaborationInitialization.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277101AF8()
{
  result = sub_277101B18();
  static OS_os_log.tsuCollaborationLobby = result;
  return result;
}

uint64_t sub_277101B18()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationLobbyCat_log_t, &TSUCollaborationLobbyCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationLobby.unsafeMutableAddressor()
{
  if (qword_280A63120 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationLobby;
}

uint64_t (*static OS_os_log.tsuCollaborationLobby.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63120 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277101D38()
{
  result = sub_277101D58();
  static OS_os_log.tsuCollaborationMailbox = result;
  return result;
}

uint64_t sub_277101D58()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationMailboxCat_log_t, &TSUCollaborationMailboxCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationMailbox.unsafeMutableAddressor()
{
  if (qword_280A63128 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationMailbox;
}

uint64_t (*static OS_os_log.tsuCollaborationMailbox.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63128 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277101F78()
{
  result = sub_277101F98();
  static OS_os_log.tsuCollaborationMailboxUpload = result;
  return result;
}

uint64_t sub_277101F98()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationMailboxUploadCat_log_t, &TSUCollaborationMailboxUploadCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationMailboxUpload.unsafeMutableAddressor()
{
  if (qword_280A63130 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationMailboxUpload;
}

uint64_t (*static OS_os_log.tsuCollaborationMailboxUpload.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63130 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771021B8()
{
  result = sub_2771021D8();
  static OS_os_log.tsuCollaborationManager = result;
  return result;
}

uint64_t sub_2771021D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationManagerCat_log_t, &TSUCollaborationManagerCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationManager.unsafeMutableAddressor()
{
  if (qword_280A63138 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationManager;
}

uint64_t (*static OS_os_log.tsuCollaborationManager.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63138 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771023F8()
{
  result = sub_277102418();
  static OS_os_log.tsuCollaborationModelVerification = result;
  return result;
}

uint64_t sub_277102418()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationModelVerificationCat_log_t, &TSUCollaborationModelVerificationCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationModelVerification.unsafeMutableAddressor()
{
  if (qword_280A63140 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationModelVerification;
}

uint64_t (*static OS_os_log.tsuCollaborationModelVerification.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277102638()
{
  result = sub_277102658();
  static OS_os_log.tsuCollaborationNetworkHealth = result;
  return result;
}

uint64_t sub_277102658()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationNetworkHealthCat_log_t, &TSUCollaborationNetworkHealthCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationNetworkHealth.unsafeMutableAddressor()
{
  if (qword_280A63148 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationNetworkHealth;
}

uint64_t (*static OS_os_log.tsuCollaborationNetworkHealth.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277102878()
{
  result = sub_277102898();
  static OS_os_log.tsuCollaborationOperationalTransform = result;
  return result;
}

uint64_t sub_277102898()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationOperationalTransformCat_log_t, &TSUCollaborationOperationalTransformCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationOperationalTransform.unsafeMutableAddressor()
{
  if (qword_280A63150 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationOperationalTransform;
}

uint64_t (*static OS_os_log.tsuCollaborationOperationalTransform.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277102AB8()
{
  result = sub_277102AD8();
  static OS_os_log.tsuCollaborationPauseResumeSync = result;
  return result;
}

uint64_t sub_277102AD8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationPauseResumeSyncCat_log_t, &TSUCollaborationPauseResumeSyncCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationPauseResumeSync.unsafeMutableAddressor()
{
  if (qword_280A63158 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationPauseResumeSync;
}

uint64_t (*static OS_os_log.tsuCollaborationPauseResumeSync.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277102CF8()
{
  result = sub_277102D18();
  static OS_os_log.tsuCollaborationPassword = result;
  return result;
}

uint64_t sub_277102D18()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationPasswordCat_log_t, &TSUCollaborationPasswordCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationPassword.unsafeMutableAddressor()
{
  if (qword_280A63160 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationPassword;
}

uint64_t (*static OS_os_log.tsuCollaborationPassword.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277102F38()
{
  result = sub_277102F58();
  static OS_os_log.tsuCollaborationPerformance = result;
  return result;
}

uint64_t sub_277102F58()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationPerformanceCat_log_t, &TSUCollaborationPerformanceCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationPerformance.unsafeMutableAddressor()
{
  if (qword_280A63168 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationPerformance;
}

uint64_t (*static OS_os_log.tsuCollaborationPerformance.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63168 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277103178()
{
  result = sub_277103198();
  static OS_os_log.tsuCollaborationSharingServices = result;
  return result;
}

uint64_t sub_277103198()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationSharingServicesCat_log_t, &TSUCollaborationSharingServicesCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationSharingServices.unsafeMutableAddressor()
{
  if (qword_280A63170 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationSharingServices;
}

uint64_t (*static OS_os_log.tsuCollaborationSharingServices.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771033B8()
{
  result = sub_2771033D8();
  static OS_os_log.tsuCollaborationSuspendResumeBacktrace = result;
  return result;
}

uint64_t sub_2771033D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationSuspendResumeBacktraceCat_log_t, &TSUCollaborationSuspendResumeBacktraceCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationSuspendResumeBacktrace.unsafeMutableAddressor()
{
  if (qword_280A63178 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationSuspendResumeBacktrace;
}

uint64_t (*static OS_os_log.tsuCollaborationSuspendResumeBacktrace.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771035F8()
{
  result = sub_277103618();
  static OS_os_log.tsuCollaborationSuspendResume = result;
  return result;
}

uint64_t sub_277103618()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationSuspendResumeCat_log_t, &TSUCollaborationSuspendResumeCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationSuspendResume.unsafeMutableAddressor()
{
  if (qword_280A63180 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationSuspendResume;
}

uint64_t (*static OS_os_log.tsuCollaborationSuspendResume.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277103838()
{
  result = sub_277103858();
  static OS_os_log.tsuCollaborationUploadDataManager = result;
  return result;
}

uint64_t sub_277103858()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationUploadDataManagerCat_log_t, &TSUCollaborationUploadDataManagerCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationUploadDataManager.unsafeMutableAddressor()
{
  if (qword_280A63188 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationUploadDataManager;
}

uint64_t (*static OS_os_log.tsuCollaborationUploadDataManager.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277103A78()
{
  result = sub_277103A98();
  static OS_os_log.tsuCollaborationUploadIndicator = result;
  return result;
}

uint64_t sub_277103A98()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUCollaborationUploadIndicatorCat_log_t, &TSUCollaborationUploadIndicatorCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuCollaborationUploadIndicator.unsafeMutableAddressor()
{
  if (qword_280A63190 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuCollaborationUploadIndicator;
}

uint64_t (*static OS_os_log.tsuCollaborationUploadIndicator.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277103CB8()
{
  result = sub_277103CD8();
  static OS_os_log.tsuFirstJoinPlacard = result;
  return result;
}

uint64_t sub_277103CD8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUFirstJoinPlacardCat_log_t, &TSUFirstJoinPlacardCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuFirstJoinPlacard.unsafeMutableAddressor()
{
  if (qword_280A63198 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuFirstJoinPlacard;
}

uint64_t (*static OS_os_log.tsuFirstJoinPlacard.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A63198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277103EF8()
{
  result = sub_277103F18();
  static OS_os_log.tsuTraceableResource = result;
  return result;
}

uint64_t sub_277103F18()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUTraceableResourceCat_log_t, &TSUTraceableResourceCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuTraceableResource.unsafeMutableAddressor()
{
  if (qword_280A631A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuTraceableResource;
}

uint64_t (*static OS_os_log.tsuTraceableResource.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277104138()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUTraceableResourceCat_log_t, &TSUTraceableResourceCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuTemplates = v3;
  return result;
}

uint64_t *OS_os_log.tsuTemplates.unsafeMutableAddressor()
{
  if (qword_280A631A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuTemplates;
}

uint64_t (*static OS_os_log.tsuTemplates.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277104360()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUIntentCat_log_t, &TSUIntentCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuIntents = v3;
  return result;
}

uint64_t *OS_os_log.tsuIntents.unsafeMutableAddressor()
{
  if (qword_280A631B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuIntents;
}

uint64_t (*static OS_os_log.tsuIntents.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277104588()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUAnalyticsCat_log_t, &TSUAnalyticsCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuAnalytics = v3;
  return result;
}

uint64_t *OS_os_log.tsuAnalytics.unsafeMutableAddressor()
{
  if (qword_280A631B8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuAnalytics;
}

uint64_t (*static OS_os_log.tsuAnalytics.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771047B4()
{
  result = sub_2771047D4();
  static OS_os_log.tsuPencilHover = result;
  return result;
}

uint64_t sub_2771047D4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUPencilHoverCat_log_t, &TSUPencilHoverCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuPencilHover.unsafeMutableAddressor()
{
  if (qword_280A631C0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuPencilHover;
}

uint64_t (*static OS_os_log.tsuPencilHover.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771049F4()
{
  result = sub_277104A14();
  static OS_os_log.tsuPencilTray = result;
  return result;
}

uint64_t sub_277104A14()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUPencilTrayCat_log_t, &TSUPencilTrayCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuPencilTray.unsafeMutableAddressor()
{
  if (qword_280A631C8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuPencilTray;
}

uint64_t (*static OS_os_log.tsuPencilTray.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277104C34()
{
  result = sub_277104C54();
  static OS_os_log.tsuHighlightGateway = result;
  return result;
}

uint64_t sub_277104C54()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUHighlightGatewayCat_log_t, &TSUHighlightGatewayCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuHighlightGateway.unsafeMutableAddressor()
{
  if (qword_280A631D0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuHighlightGateway;
}

uint64_t (*static OS_os_log.tsuHighlightGateway.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_277104E74()
{
  result = sub_277104E94();
  static OS_os_log.tsuInterleavedImageFormatter = result;
  return result;
}

uint64_t sub_277104E94()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUInterleavedImageFormatterCat_log_t, &TSUInterleavedImageFormatterCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuInterleavedImageFormatter.unsafeMutableAddressor()
{
  if (qword_280A631D8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuInterleavedImageFormatter;
}

uint64_t (*static OS_os_log.tsuInterleavedImageFormatter.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771050B4()
{
  result = sub_2771050D4();
  static OS_os_log.tsuUserNotifications = result;
  return result;
}

uint64_t sub_2771050D4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUUserNotifications_log_t, &TSUUserNotifications_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  swift_endAccess();
  return v3;
}

uint64_t *OS_os_log.tsuUserNotifications.unsafeMutableAddressor()
{
  if (qword_280A631E0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuUserNotifications;
}

uint64_t (*static OS_os_log.tsuUserNotifications.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2771052F4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_277115AB4();
  v1 = sub_2770C13C8(v0, &TSUMiniHintCat_log_t, &TSUMiniHintCat_init_token);

  sub_277115CB4();
  swift_unknownObjectRelease();
  sub_2770FD31C(&v5, &v4);
  sub_2770FD32C();
  swift_dynamicCast();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsuMiniHint = v3;
  return result;
}

uint64_t *OS_os_log.tsuMiniHint.unsafeMutableAddressor()
{
  if (qword_280A631E8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsuMiniHint;
}

id sub_277105474(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_277105500(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.tsuMiniHint.modify(uint64_t a1))(uint64_t)
{
  if (qword_280A631E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void *TSULogSink(_:_:file:line:format:args:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a5;
  v16 = a2;

  return sub_277105734(a10, v16, a3, a4, v13, a6, a7, a8, a9);
}

void sub_27710567C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_277115AB4();
  if (a4 >> 31)
  {
    __break(1u);
  }

  else
  {
    v12 = v11;
    sub_277115D14();
    v13 = sub_277115AB4();

    sub_2770C94BC(1, v12, a1, a4, v13, a8);
  }
}

void *sub_277105734(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v51 = a7;
  v52 = a8;
  v50 = a6;
  LODWORD(v49) = a5;
  v47 = a3;
  v48 = a4;
  v53 = a2;
  sub_277115D94();
  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = 0;
  v11 = v10 + 3;
  v10[4] = 0;
  v10[5] = 0;
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_26:
    v30 = sub_277115D84();
    v31 = v53;
    sub_277115AC4();

    sub_277115D14();
    v32 = sub_277115AB4();

    v33 = [v32 lastPathComponent];

    v34 = sub_277115AC4();
    v36 = v35;

    MEMORY[0x28223BE20](v37);
    v38 = v50;
    v49 = &v47;
    if ((v36 & 0x1000000000000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v36 & 0x2000000000000000) != 0)
    {
      v54[0] = v34;
      v54[1] = v36 & 0xFFFFFFFFFFFFFFLL;

      result = sub_277115AB4();
      if (!(v38 >> 31))
      {
        v40 = result;
        sub_277115D14();
        v46 = v38;
        v42 = sub_277115AB4();

        v43 = v54;
        v44 = v40;
        v45 = v46;
        goto LABEL_33;
      }

      __break(1u);
    }

    else
    {
      if ((v34 & 0x1000000000000000) == 0)
      {
        goto LABEL_39;
      }

      result = sub_277115AB4();
      if (!(v38 >> 31))
      {
        v40 = result;
        sub_277115D14();
        v41 = v38;
        v42 = sub_277115AB4();

        v43 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v44 = v40;
        v45 = v41;
LABEL_33:
        sub_2770C94BC(1, v44, v43, v45, v42, v30);

        swift_bridgeObjectRelease_n();

        goto LABEL_34;
      }
    }

    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = a1 + 32;
  while (1)
  {
    sub_277105B40((v14 + 40 * v13), *(v14 + 40 * v13 + 24));
    v15 = sub_277115E34();
    v16 = *v11;
    v17 = *(v15 + 16);
    v18 = __OFADD__(*v11, v17);
    v19 = *v11 + v17;
    if (v18)
    {
      break;
    }

    v20 = v10[4];
    if (v20 >= v19)
    {
      goto LABEL_18;
    }

    if (v20 + 0x4000000000000000 < 0)
    {
      goto LABEL_37;
    }

    v21 = v10[5];
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    v10[4] = v19;
    if ((v19 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_38;
    }

    v22 = v15;
    v23 = swift_slowAlloc();
    v24 = v23;
    v10[5] = v23;
    if (v21)
    {
      if (v23 != v21 || v23 >= &v21[8 * v16])
      {
        memmove(v23, v21, 8 * v16);
      }

      sub_277115D74();
      v15 = v22;
LABEL_18:
      v24 = v10[5];
      if (!v24)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v15 = v22;
    if (!v24)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v26 = *(v15 + 16);
    if (v26)
    {
      v27 = (v15 + 32);
      v28 = *v11;
      while (1)
      {
        v29 = *v27++;
        *&v24[8 * v28] = v29;
        v28 = *v11 + 1;
        if (__OFADD__(*v11, 1))
        {
          break;
        }

        *v11 = v28;
        if (!--v26)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v13 == v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  sub_277115D04();

  swift_bridgeObjectRelease_n();
LABEL_34:
}

void *sub_277105B40(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t RandomAccessCollection.lowerBound(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a1;
  v46 = a2;
  v35 = a5;
  v47 = a4;
  v6 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v33 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v36 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  sub_277115BD4();
  v49 = v5;
  sub_277115C04();
  v48 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = *(AssociatedConformanceWitness + 8);
  if ((sub_277115AA4() & 1) == 0)
  {
    v40 = (v7 + 8);
    v41 = (v7 + 16);
    v38 = (v36 + 32);
    v39 = (v36 + 8);
    v26 = v43;
    do
    {
      sub_277115BC4();
      sub_277115BB4();
      v27 = sub_277115C24();
      v28 = v14;
      v29 = AssociatedTypeWitness;
      (*v41)(v26);
      (v27)(v50, 0);
      LOBYTE(v27) = v45(v26);
      (*v40)(v26, v29);
      if (v27)
      {
        v30 = v37;
        sub_277115BF4();
        v31 = *v39;
        (*v39)(v28, v9);
        v31(v19, v9);
        (*v38)(v19, v30, v9);
      }

      else
      {
        (*v39)(v17, v9);
        (*v38)(v17, v28, v9);
      }

      v14 = v28;
    }

    while ((sub_277115AA4() & 1) == 0);
  }

  v20 = v37;
  sub_277115C04();
  v21 = sub_277115A74();
  v22 = v36;
  v23 = *(v36 + 8);
  v23(v20, v9);
  v23(v17, v9);
  if (v21)
  {
    v24 = v35;
    (*(v22 + 32))(v35, v19, v9);
    v25 = 0;
  }

  else
  {
    v23(v19, v9);
    v25 = 1;
    v24 = v35;
  }

  return (*(v22 + 56))(v24, v25, 1, v9);
}

uint64_t RandomAccessCollection.binarySearch<A>(_:sortKey:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v44 = a8;
  v45 = a7;
  v46 = a3;
  v47 = a1;
  v12 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v35 - v14;
  v39 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v12;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_277115C34();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = *(v16 - 8);
  MEMORY[0x28223BE20](v19);
  v24 = &v35 - v23;
  v49 = a4;
  v50 = a5;
  v42 = a2;
  v43 = a5;
  v51 = a6;
  v52 = v45;
  v53 = a2;
  v54 = v46;
  v55 = v47;
  RandomAccessCollection.lowerBound(where:)(sub_277106600, v48, a6, v21);
  if ((*(v22 + 48))(v21, 1, v16) == 1)
  {
    (*(v18 + 8))(v21, v17);
LABEL_6:
    v33 = 1;
    v32 = v44;
    return (*(v22 + 56))(v32, v33, 1, v16);
  }

  v35 = *(v22 + 32);
  v35(v24, v21, v16);
  v25 = sub_277115C24();
  v26 = v40;
  v27 = v37;
  v28 = AssociatedTypeWitness;
  (*(v40 + 16))(v37);
  (v25)(v56, 0);
  v29 = v36;
  v42(v27);
  (*(v26 + 8))(v27, v28);
  v30 = v43;
  LOBYTE(v25) = sub_277115AA4();
  (*(v39 + 8))(v29, v30);
  if ((v25 & 1) == 0)
  {
    (*(v22 + 8))(v24, v16);
    goto LABEL_6;
  }

  v31 = v44;
  v35(v44, v24, v16);
  v32 = v31;
  v33 = 0;
  return (*(v22 + 56))(v32, v33, 1, v16);
}

uint64_t sub_277106510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  v14 = sub_277115A74();
  (*(v9 + 8))(v12, a6);
  return v14 & 1;
}

uint64_t RandomAccessCollection<>.binarySearch(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return RandomAccessCollection.binarySearch<A>(_:sortKey:)(a1, sub_2771066C0, v12, a2, AssociatedTypeWitness, a3, a4, a5);
}

uint64_t sub_2771066C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t RandomAccessCollection<>.lowerBound(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return RandomAccessCollection.lowerBound(where:)(sub_2771067A0, v6, a3, a5);
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_277115E14();
  sub_277115A94();
  sub_277115E24();
  return (*(v4 + 8))(v6, a2);
}

uint64_t Sequence.unique<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v22 = a2;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_277115B14();
  if (sub_277115B34())
  {
    v17 = sub_277106C7C(v16, a4, a6);
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  v23 = v17;
  v18 = (*(v13 + 16))(v15, v7, a3);
  MEMORY[0x28223BE20](v18);
  *(&v21 - 8) = a3;
  *(&v21 - 7) = a4;
  *(&v21 - 6) = a5;
  *(&v21 - 5) = a6;
  *(&v21 - 4) = &v23;
  *(&v21 - 3) = a1;
  *(&v21 - 2) = v22;
  v19 = sub_277115AF4();

  return v19;
}

uint64_t sub_277106AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  v14(v11);
  sub_277115B64();
  v15 = sub_277115B54();
  (*(v9 + 8))(v13, a6);
  return v15 & 1;
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return Sequence.unique<A>(transform:)(sub_277107064, v8, a1, AssociatedTypeWitness, a2, a3);
}

uint64_t sub_277106C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_277115B34())
  {
    sub_277115CF4();
    v15 = sub_277115CE4();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_277115B34();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_277115B24();
    sub_277115B04();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_277115D24();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_277115A44();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_277115AA4();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_277107064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

char *sub_2771070EC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  (*(*(*(v3 + 80) - 8) + 32))(&v2[*(v3 + 104)], a1);
  return v2;
}

char *TSULinkedList.Node.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t TSULinkedList.Node.__deallocating_deinit()
{
  TSULinkedList.Node.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

char *TSULinkedList.append(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-v6];
  type metadata accessor for TSULinkedList.Node(0, v4, v8, v9);
  (*(v5 + 16))(v7, a1, v4);
  v10 = sub_2771070EC(v7);
  swift_beginAccess();
  *(v10 + 2) = v2[3];

  v11 = v2[3];
  if (v11)
  {
    *(v11 + 24) = v10;
  }

  v2[3] = v10;

  swift_beginAccess();
  v12 = v2[2];
  if (!v12)
  {

    v12 = v10;
  }

  v2[2] = v12;
  return v10;
}

uint64_t TSULinkedList.remove(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(v1 + 16) = *(a1 + 24);
  }

  result = swift_beginAccess();
  v6 = *(v1 + 24);
  if (v6 && v6 == a1)
  {
    *(v1 + 24) = *(a1 + 16);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(v7 + 16) = *(a1 + 16);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    *(v8 + 24) = *(a1 + 24);
  }

  return result;
}

uint64_t TSULinkedList.removeHead()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {

    TSULinkedList.remove(_:)(v2);
  }

  return v1;
}

uint64_t TSULinkedList.removeTail()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1)
  {

    TSULinkedList.remove(_:)(v2);
  }

  return v1;
}

uint64_t TSULinkedList.deinit()
{

  return v0;
}

uint64_t TSULinkedList.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27710765C()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t TSULinkedList.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v3 = *(a1 + 16);
    v4 = *(v3 - 8);
    (*(v4 + 16))(a2, *v2 + *(**v2 + 104), v3);
    (*(v4 + 56))(a2, 0, 1, v3);
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1, *(a1 + 16));
  }

  return sub_2771077A4(v2);
}

uint64_t sub_2771077A4(uint64_t *a1)
{
  if (*a1)
  {
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t sub_277107850@<X0>(uint64_t *a1@<X8>)
{
  v2 = TSULinkedList.makeIterator()();

  *a1 = v2;
  return result;
}

uint64_t sub_2771078A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_277110210(v2, a1, a2);

  return v3;
}

uint64_t sub_277107964(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_277107A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_277107A58(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_277107AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t TSUCellCoord.init<A, B>(column:row:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a6 + 8) + 64))(&v13 + 2, a4);
  v11 = *(&v13 + 2);
  (*(*(a5 + 8) + 64))(&v13, a3);
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v11 | (v13 << 32);
}

{
  v35 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = *(*(v35 + 8) + 64);
  v34 = a2;
  v35 = a4;
  v17(&v37, a4);
  v33 = v37;
  (*(v12 + 16))(v16, a1, a3);
  if (sub_277115C94() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_277115E04(), v18 = v32, sub_277115DE4(), v19 = sub_277115A84(), result = (*(v12 + 8))(v18, a3), (v19))
  {
    if (sub_277115C84() <= 15)
    {
      goto LABEL_13;
    }

    v31 = a1;
    v36 = -1;
    v21 = sub_277115C94();
    v22 = sub_277115C84();
    if (v21)
    {
      if (v22 <= 16)
      {
        goto LABEL_11;
      }

      sub_277108114();
      v23 = v32;
      sub_277115C64();
      v24 = sub_277115A74();
      (*(v12 + 8))(v23, a3);
      a1 = v31;
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a1 = v31;
      if (v22 < 17)
      {
LABEL_12:
        sub_277115C74();
        goto LABEL_13;
      }

      sub_277108114();
      v25 = v32;
      sub_277115C64();
      v26 = sub_277115A74();
      (*(v12 + 8))(v25, a3);
      if ((v26 & 1) == 0)
      {
LABEL_13:
        v29 = sub_277115C74();
        (*(*(v35 - 8) + 8))(v34);
        v30 = *(v12 + 8);
        v30(a1, a3);
        v30(v16, a3);
        return v33 & 0xFFFF0000FFFFFFFFLL | (v29 << 32);
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    sub_277115E04();
    v27 = v32;
    sub_277115DE4();
    v28 = sub_277115A64();
    (*(v12 + 8))(v27, a3);
    a1 = v31;
    if (v28)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_277108114()
{
  result = qword_280A633D0;
  if (!qword_280A633D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A633D0);
  }

  return result;
}

unint64_t TSUCellCoord.init<A, B>(column:row:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = *(v11 + 16);
  v31 = a2;
  v17(&v28 - v15, a2, a4);
  if (sub_277115C94() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_277115E04(), sub_277115DE4(), v18 = sub_277115A84(), result = (*(v11 + 8))(v14, a4), (v18))
  {
    v29 = a3;
    if (sub_277115C84() > 31)
    {
      *(&v33 + 2) = -1;
      v20 = sub_277115C94();
      v21 = sub_277115C84();
      if (v20)
      {
        if (v21 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          sub_277115E04();
          sub_277115DE4();
          v22 = sub_277115A64();
          (*(v11 + 8))(v14, a4);
          if ((v22 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else if (v21 < 33)
      {
LABEL_11:
        sub_277115C74();
        goto LABEL_12;
      }

      sub_277108598();
      sub_277115C64();
      v23 = sub_277115A74();
      (*(v11 + 8))(v14, a4);
      if (v23)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v24 = sub_277115C74();
    v25 = *(v11 + 8);
    v25(v16, a4);
    v26 = v29;
    v27 = v32;
    (*(*(v30 + 8) + 64))(&v33, v29);
    v25(v31, a4);
    (*(*(v26 - 8) + 8))(v27, v26);
    return v24 | (v33 << 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_277108598()
{
  result = qword_280A633D8[0];
  if (!qword_280A633D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A633D8);
  }

  return result;
}

uint64_t static TSUCellCoord.!= infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if ((HIWORD(a1) & 1) != (HIWORD(a2) & 1))
  {
    v2 = 1;
  }

  else
  {
    v2 = HIBYTE(a1) & 1 ^ HIBYTE(a2) & 1;
  }

  if ((a1 & 0xFFFFFFFFFFFFLL) == (a2 & 0xFFFFFFFFFFFFLL))
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t TSULRUCache.onEviction.getter()
{
  v1 = *(v0 + 24);
  sub_2771086CC(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_2771086CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t TSULRUCache.onEviction.setter(uint64_t a1, uint64_t a2)
{
  result = sub_277108714(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_277108714(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t TSULRUCache.init(maxSize:onEviction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v11 = TSUOrderedDict.init()(a4, a5, a6);
  v13 = v12;
  result = sub_277108714(a2, a3);
  *a7 = v11;
  a7[1] = v13;
  a7[3] = 0;
  a7[4] = 0;
  a7[2] = a1;
  return result;
}

uint64_t TSULRUCache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = *(a2 + 16);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = sub_277115C34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *(a2 + 32);
  v17 = a1;
  TSUOrderedDict.subscript.getter(v5, v8, v16, &v24 - v14);
  v18 = *(v8 - 8);
  if ((*(v18 + 48))(v15, 1, v8) == 1)
  {
    (*(v10 + 8))(v15, v9);
    return (*(v18 + 56))(v27, 1, 1, v8);
  }

  else
  {
    v20 = v27;
    (*(v18 + 32))(v27, v15, v8);
    v21 = v26;
    (*(v25 + 16))(v26, v17, v5);
    (*(v18 + 16))(v13, v20, v8);
    v22 = *(v18 + 56);
    v22(v13, 0, 1, v8);
    v23 = type metadata accessor for TSUOrderedDict(0, v5, v8, v16);
    TSUOrderedDict.subscript.setter(v13, v21, v23);
    return (v22)(v20, 0, 1, v8);
  }
}

uint64_t TSULRUCache.subscript.setter(void (*a1)(char *, char *, uint64_t), void *a2, uint64_t a3)
{
  sub_277108E88(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_277115C34();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*TSULRUCache.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = sub_277115C34();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v9[5] = v13;
  v15 = *(a3 + 16);
  v9[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v9[7] = v16;
  if (v7)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v9[8] = v18;
  (*(v17 + 16))();
  TSULRUCache.subscript.getter(a2, a3, v14);
  return sub_277108CE4;
}

void sub_277108CE4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_277108E88(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_277108E88((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

Swift::Void __swiftcall TSULRUCache.removeAll()()
{
  type metadata accessor for TSUOrderedDict(0, v0[2], v0[3], v0[4]);

  TSUOrderedDict.removeAll()();
}

uint64_t sub_277108E88(void (*a1)(char *, char *, uint64_t), void *a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a1;
  v42 = a3;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = sub_277115C34();
  v38 = *(v44 - 8);
  v8 = MEMORY[0x28223BE20](v44);
  v10 = &v37 - v9;
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_277115C34();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v39 = v22;
  (*(v22 + 16))(&v37 - v20, v45, v6);
  (*(v13 + 16))(v16, v46, v12);
  v23 = *(v42 + 32);
  v45 = type metadata accessor for TSUOrderedDict(0, v6, v5, v23);
  TSUOrderedDict.subscript.setter(v16, v21, v45);
  v24 = v5;
  v25 = v6;
  v26 = *v4;
  v27 = v4[1];
  v46 = v23;
  result = TSUOrderedDict.count.getter(v26, v27, v6, v24, v23);
  v29 = v4[2];
  if (v29 < result)
  {
    v41 = (v40 + 4);
    v42 = (v39 + 4);
    ++v39;
    ++v40;
    ++v38;
    do
    {
      v30 = v24;
      TSUOrderedDict.removeFirst()(v45, v10);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
      {
        (*v38)(v10, v44);
      }

      else
      {
        v31 = v29;
        v32 = *(TupleTypeMetadata2 + 48);
        (*v42)(v19, v10, v25);
        v33 = &v10[v32];
        v34 = v19;
        v35 = v43;
        v24 = v30;
        (*v41)(v43, v33, v30);
        v36 = v4[3];
        if (v36)
        {
          v36(v34, v35);
          v24 = v30;
        }

        (*v40)(v35, v24);
        (*v39)(v34, v25);
        v19 = v34;
        v29 = v31;
      }

      result = TSUOrderedDict.count.getter(*v4, v4[1], v25, v24, v46);
    }

    while (v29 < result);
  }

  return result;
}

uint64_t sub_2771092F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_277109330(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_277109348(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27710935C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2771093A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL static TSUCellRect.== infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 ^ a2) >> 32 == 0;
  if (a2 != a4)
  {
    v4 = 0;
  }

  v5 = (HIBYTE(a1) & 1) != ((a3 & 0x100000000000000) == 0) && v4;
  v6 = (HIWORD(a1) & 1) != ((a3 & 0x1000000000000) == 0) && v5;
  return (a1 & 0xFFFFFFFFFFFFLL) == (a3 & 0xFFFFFFFFFFFFLL) && v6;
}

uint64_t static TSUCellRect.!= infix(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 ^ a2) >> 32 != 0;
  if (a2 != a4)
  {
    v4 = 1;
  }

  v5 = (HIBYTE(a1) & 1) == ((a3 & 0x100000000000000) == 0) || v4;
  if ((HIWORD(a1) & 1) != ((a3 & 0x1000000000000) == 0))
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if ((a1 & 0xFFFFFFFFFFFFLL) == (a3 & 0xFFFFFFFFFFFFLL))
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t TSUCellRect.enumerateCoordinatesUsingBlock(_:)(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v7 = sub_2771095CC(a3 & 0x101FFFFFFFFFFFFLL);
  result = sub_2771095E8(a3, a4);
  if (result < v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (v7 == result)
  {
    return result;
  }

  v10 = sub_277109600(a3 & 0x101FFFFFFFFFFFFLL);
  result = sub_277109624(a3 & 0x101FFFFFFFFFFFFLL, a4);
  if (result >= v10)
  {
    v11 = result;
    while (v7 < v9)
    {
      v12 = v7 + 1;
      v13 = v10;
      while (v11 != v13)
      {
        v14 = v13 + 1;
        v15 = sub_277109644(v13, v7);
        result = a1(v15, &v16);
        v13 = v14;
        if (v16)
        {
          return result;
        }
      }

      ++v7;
      if (v12 == v9)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2771095CC(uint64_t result)
{
  if ((result & 0xFFFF00000000) != 0x7FFF00000000 && result == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2771095E8(int a1, uint64_t a2)
{
  if (a1 == 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return (HIDWORD(a2) + a1);
  }
}

uint64_t sub_277109600(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (a1 != 0x7FFFFFFF && (a1 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    LOWORD(v1) = 0;
  }

  return v1;
}

uint64_t sub_277109624(uint64_t a1, __int16 a2)
{
  if (WORD2(a1) == 0x7FFF)
  {
    return 0x7FFF;
  }

  else
  {
    return (WORD2(a1) + a2);
  }
}

uint64_t TSUCellRect.enumerateRowsUsingBlock(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = sub_2771095CC(a3 & 0x101FFFFFFFFFFFFLL);
  result = sub_2771095E8(v5, a4);
  v9 = result;
  if (result < v7)
  {
    __break(1u);
  }

  else
  {
    for (result = v7; v9 != result; result = v10)
    {
      v10 = (result + 1);
      a1();
    }
  }

  return result;
}

uint64_t TSUCellRect.enumerateColumnsUsingBlock(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, __int16 a4)
{
  v7 = sub_277109600(a3 & 0x101FFFFFFFFFFFFLL);
  result = sub_277109624(a3 & 0x101FFFFFFFFFFFFLL, a4);
  v9 = result;
  if (result < v7)
  {
    __break(1u);
  }

  else
  {
    for (result = v7; v9 != result; result = v10)
    {
      v10 = (result + 1);
      a1();
    }
  }

  return result;
}

Swift::String __swiftcall TSULocalizedString(_:value:comment:locale:)(Swift::String _, Swift::String value, Swift::String comment, TSULocale_optional *locale)
{
  if (locale)
  {
    v4 = locale;
    v5 = sub_277115AB4();
    v6 = sub_277115AB4();
    v7 = sub_277115AB4();
    v8 = [(TSULocale_optional *)v4 localizedStringForKey:v5 value:v6 table:v7];

    v9 = sub_277115AC4();
    v11 = v10;
  }

  else
  {
    v12 = [objc_opt_self() tsu_resourcesBundle];
    v13 = sub_277115AB4();
    v14 = sub_277115AB4();
    v15 = sub_277115AB4();
    v8 = [v12 localizedStringForKey:v13 value:v14 table:v15];

    v9 = sub_277115AC4();
    v11 = v16;
  }

  v17 = v9;
  v18 = v11;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall TSULocalizedString(_:table:value:locale:)(Swift::String _, Swift::String table, Swift::String value, TSULocale_optional *locale)
{
  if (locale)
  {
    v4 = locale;
    v5 = sub_277115AB4();
    v6 = sub_277115AB4();
    v7 = sub_277115AB4();
    v8 = [(TSULocale_optional *)v4 localizedStringForKey:v5 value:v6 table:v7];

    v9 = sub_277115AC4();
    v11 = v10;
  }

  else
  {
    v12 = [objc_opt_self() tsu_resourcesBundle];
    v13 = sub_277115AB4();
    v14 = sub_277115AB4();
    v15 = sub_277115AB4();
    v8 = [v12 localizedStringForKey:v13 value:v14 table:v15];

    v9 = sub_277115AC4();
    v11 = v16;
  }

  v17 = v9;
  v18 = v11;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void TSUDateParser.date(from:)(uint64_t a2@<X8>)
{
  v3 = v2;
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = sub_277115974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_277109E40(&qword_280A63460, &qword_277139A00);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  if (v18)
  {
    v19 = sub_277115AB4();
  }

  else
  {
    v19 = 0;
  }

  v30[0] = 0;
  v20 = [v3 newDateFromString:v19 successfulFormatString:v30];

  v21 = v30[0];
  if (v20)
  {
    sub_277115964();
    v22 = v21;

    (*(v6 + 56))(v15, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v15, 1, 1, v5);
    v23 = v21;
  }

  sub_277109E88(v15, v17);
  sub_277109EF8(v17, v12);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_277109F68(v17);
    sub_277109F68(v12);
    v24 = sub_277109E40(&qword_280A63468, &qword_277139A08);
    (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    v25 = sub_277109E40(&qword_280A63468, &qword_277139A08);
    v26 = (a2 + *(v25 + 48));
    (*(v6 + 16))(a2, v8, v5);
    if (v21)
    {
      v27 = sub_277115AC4();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xE000000000000000;
    }

    (*(v6 + 8))(v8, v5);
    sub_277109F68(v17);
    *v26 = v27;
    v26[1] = v29;
    (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
  }
}

uint64_t sub_277109E40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_277109E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_277109E40(&qword_280A63460, &qword_277139A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_277109EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_277109E40(&qword_280A63460, &qword_277139A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_277109F68(uint64_t a1)
{
  v2 = sub_277109E40(&qword_280A63460, &qword_277139A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TSUDateParser.date(from:preferredFormat:tryAggressiveFormats:)(void *a2@<X1>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v38[1] = *MEMORY[0x277D85DE8];
  v9 = sub_277115974();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_277109E40(&qword_280A63460, &qword_277139A00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v34[-v19];
  if (a2)
  {
    a2 = sub_277115AB4();
  }

  if (a4)
  {
    v21 = sub_277115AB4();
  }

  else
  {
    v21 = 0;
  }

  v22 = a6;
  v38[0] = 0;
  v23 = [v36 newDateFromString:a2 preferredFormatString:v21 successfulFormatString:v38 tryAggressiveFormats:v35 & 1];

  v24 = v38[0];
  if (v23)
  {
    sub_277115964();
    v25 = v24;

    (*(v10 + 56))(v18, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v18, 1, 1, v9);
    v26 = v24;
  }

  sub_277109E88(v18, v20);
  sub_277109EF8(v20, v15);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    sub_277109F68(v20);
    sub_277109F68(v15);
    v27 = sub_277109E40(&qword_280A63468, &qword_277139A08);
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  }

  else
  {
    v28 = v37;
    (*(v10 + 32))(v37, v15, v9);
    v29 = sub_277109E40(&qword_280A63468, &qword_277139A08);
    v30 = (v22 + *(v29 + 48));
    (*(v10 + 16))(v22, v28, v9);
    if (v24)
    {
      v31 = sub_277115AC4();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    (*(v10 + 8))(v37, v9);
    sub_277109F68(v20);
    *v30 = v31;
    v30[1] = v33;
    (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
  }
}

uint64_t TSUCellCoordType.init(integerLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, a1, AssociatedTypeWitness);
  (*(a3 + 48))(v9, a2, a3);
  return (*(v7 + 8))(a1, AssociatedTypeWitness);
}

uint64_t TSUCellCoordType.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v17 = a6;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v17 - v14;
  (*(v10 + 16))(v12, a1, a3);
  swift_getAssociatedConformanceWitness();
  sub_277115CA4();
  (*(a4 + 48))(v15, a2, a4);
  return (*(v10 + 8))(a1, a3);
}

uint64_t TSUCellCoordType.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a5;
  v36 = a6;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_277115C34();
  v30 = *(v13 - 8);
  v31 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v23 = *(v9 + 16);
  v35 = a1;
  v24 = a1;
  v25 = v33;
  v23(v11, v24, a3);
  v32 = a4;
  swift_getAssociatedConformanceWitness();
  sub_277115B94();
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v35, a3);
    (*(v30 + 8))(v16, v31);
    v26 = 1;
    v27 = v36;
  }

  else
  {
    (*(v17 + 32))(v22, v16, AssociatedTypeWitness);
    (*(v17 + 16))(v20, v22, AssociatedTypeWitness);
    v28 = v36;
    (*(v32 + 48))(v20, v25);
    (*(v9 + 8))(v35, a3);
    (*(v17 + 8))(v22, AssociatedTypeWitness);
    v26 = 0;
    v27 = v28;
  }

  return (*(*(v25 - 8) + 56))(v27, v26, 1, v25);
}

uint64_t TSUCellCoordType.magnitude.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(a2 + 64))(a1, a2);
  swift_getAssociatedConformanceWitness();
  sub_277115BA4();
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t TSUCellCoordType.description.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(a2 + 64))(a1, a2);
  swift_getAssociatedConformanceWitness();
  v8 = sub_277115DC4();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t TSUCellCoordType.distance(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a1;
  v16[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = *(a3 + 64);
  v13(a2, a3);
  v13(a2, a3);
  swift_getAssociatedConformanceWitness();
  sub_277115C54();
  v14 = *(v7 + 8);
  v14(v10, AssociatedTypeWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t TSUCellCoordType.advanced(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  (*(a3 + 64))(a2, a3);
  swift_getAssociatedConformanceWitness();
  sub_277115C44();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return (*(a3 + 48))(v11, a2, a3);
}

uint64_t static TSUCellCoordType.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = *(a4 + 64);
  v13(a3, a4);
  v13(a3, a4);
  swift_getAssociatedConformanceWitness();
  v14 = sub_277115AA4();
  v15 = *(v7 + 8);
  v15(v10, AssociatedTypeWitness);
  v15(v12, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t static TSUCellCoordType.== infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a2;
  v44 = *(*(a6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42[2] = v42 - v10;
  swift_getAssociatedTypeWitness();
  v42[1] = *(*(swift_getAssociatedConformanceWitness() + 24) + 16);
  v11 = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](v11);
  v47 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_checkMetadataState();
  v48 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v45 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - v17;
  (*(a5 + 64))(a3, a5);
  LODWORD(a5) = sub_277115C94();
  if ((a5 ^ sub_277115C94()))
  {
    v19 = sub_277115C94();
    v20 = sub_277115C84();
    v42[0] = a6;
    v21 = sub_277115C84();
    if (v19)
    {
      v22 = v47;
      if (v21 < v20)
      {
        (*(v47 + 16))(v46, v49, a4);
        v23 = v45;
LABEL_11:
        sub_277115C64();
        v28 = sub_277115AA4();
        v31 = *(v48 + 8);
        v31(v23, v14);
LABEL_12:
        v31(v18, v14);
        return v28 & 1;
      }

      swift_getAssociatedConformanceWitness();
      sub_277115E04();
      v32 = v45;
      sub_277115DE4();
      v33 = sub_277115A84();
      v34 = v48;
      v44 = *(v48 + 8);
      v44(v32, v14);
      v35 = v46;
      if (v33)
      {
        (*(v34 + 16))(v32, v18, v14);
        sub_277115C64();
        v28 = sub_277115AA4();
        (*(v22 + 8))(v35, a4);
        v44(v18, v14);
        return v28 & 1;
      }

      v44(v18, v14);
LABEL_19:
      v28 = 0;
      return v28 & 1;
    }

    v29 = v47;
    if (v20 >= v21)
    {
      swift_getAssociatedConformanceWitness();
      sub_277115E04();
      v36 = v46;
      sub_277115DE4();
      v37 = v49;
      v38 = sub_277115A84();
      (*(v29 + 8))(v36, a4);
      v39 = v48;
      if (v38)
      {
        (*(v29 + 16))(v36, v37, a4);
        v40 = v45;
        sub_277115C64();
        v28 = sub_277115AA4();
        v31 = *(v39 + 8);
        v31(v40, v14);
        goto LABEL_12;
      }

      (*(v48 + 8))(v18, v14);
      goto LABEL_19;
    }

    v26 = v48;
    (*(v48 + 16))(v45, v18, v14);
    v30 = v46;
    sub_277115C64();
    v28 = sub_277115AA4();
    (*(v29 + 8))(v30, a4);
  }

  else
  {
    v24 = sub_277115C84();
    v25 = v49;
    if (v24 >= sub_277115C84())
    {
      (*(v47 + 16))(v46, v25, a4);
      v23 = v45;
      goto LABEL_11;
    }

    v26 = v48;
    (*(v48 + 16))(v45, v18, v14);
    v27 = v46;
    sub_277115C64();
    v28 = sub_277115AA4();
    (*(v47 + 8))(v27, a4);
  }

  (*(v26 + 8))(v18, v14);
  return v28 & 1;
}

{
  v54 = a1;
  swift_getAssociatedTypeWitness();
  v49 = *(*(swift_getAssociatedConformanceWitness() + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47[2] = v47 - v10;
  v47[1] = *(*(a6 + 24) + 16);
  v11 = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](v11);
  v51 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_checkMetadataState();
  v53 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v52 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v47 - v17;
  (*(a5 + 64))(a3, a5);
  LODWORD(a3) = sub_277115C94();
  if ((a3 ^ sub_277115C94()))
  {
    v19 = sub_277115C94();
    v20 = sub_277115C84();
    v47[0] = v18;
    v21 = sub_277115C84();
    if (v19)
    {
      if (v21 < v20)
      {
        v22 = v53;
        v23 = v47[0];
        (*(v53 + 16))(v52, v47[0], v14);
        v24 = v50;
        sub_277115C64();
        v25 = sub_277115AA4();
        (*(v51 + 8))(v24, a4);
        (*(v22 + 8))(v23, v14);
        return v25 & 1;
      }

      swift_getAssociatedConformanceWitness();
      sub_277115E04();
      v35 = v50;
      sub_277115DE4();
      v36 = v54;
      v37 = sub_277115A84();
      v38 = v51;
      (*(v51 + 8))(v35, a4);
      v39 = v52;
      if ((v37 & 1) == 0)
      {
        (*(v53 + 8))(v47[0], v14);
        v25 = 0;
        return v25 & 1;
      }

      (*(v38 + 16))(v35, v36, a4);
      sub_277115C64();
      v31 = v47[0];
      v25 = sub_277115AA4();
      v32 = *(v53 + 8);
      v32(v39, v14);
LABEL_12:
      v32(v31, v14);
      return v25 & 1;
    }

    if (v20 < v21)
    {
      (*(v51 + 16))(v50, v54, a4);
      v30 = v52;
      sub_277115C64();
      v31 = v47[0];
      v25 = sub_277115AA4();
      v32 = *(v53 + 8);
      v32(v30, v14);
      goto LABEL_12;
    }

    swift_getAssociatedConformanceWitness();
    sub_277115E04();
    v41 = v52;
    sub_277115DE4();
    v42 = v47[0];
    v43 = sub_277115A84();
    v44 = v53;
    v45 = *(v53 + 8);
    v45(v41, v14);
    if (v43)
    {
      (*(v44 + 16))(v41, v42, v14);
      v46 = v50;
      sub_277115C64();
      v25 = sub_277115AA4();
      (*(v51 + 8))(v46, a4);
      v45(v42, v14);
    }

    else
    {
      v45(v42, v14);
      v25 = 0;
    }
  }

  else
  {
    v26 = v54;
    v27 = sub_277115C84();
    if (v27 >= sub_277115C84())
    {
      v33 = v53;
      (*(v53 + 16))(v52, v18, v14);
      v34 = v50;
      sub_277115C64();
      v25 = sub_277115AA4();
      (*(v51 + 8))(v34, a4);
      (*(v33 + 8))(v18, v14);
    }

    else
    {
      (*(v51 + 16))(v50, v26, a4);
      v28 = v52;
      sub_277115C64();
      v25 = sub_277115AA4();
      v29 = *(v53 + 8);
      v29(v28, v14);
      v29(v18, v14);
    }
  }

  return v25 & 1;
}

uint64_t static TSUCellCoordType.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = *(a4 + 64);
  v13(a3, a4);
  v13(a3, a4);
  swift_getAssociatedConformanceWitness();
  v14 = sub_277115A74();
  v15 = *(v7 + 8);
  v15(v10, AssociatedTypeWitness);
  v15(v12, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t sub_27710C30C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(char *, char *, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  v21[1] = a1;
  v22 = a4;
  v23 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v17 = *(a3 + 64);
  v17(a2, a3);
  v17(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22(v14, v11, AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 24) + 8));
  v19 = *(v8 + 8);
  v19(v11, AssociatedTypeWitness);
  v19(v14, AssociatedTypeWitness);
  return (*(a3 + 48))(v16, a2, a3);
}

uint64_t static TSUCellCoordType.* infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[0] = a1;
  v19[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = *(a3 + 64);
  v16(a2, a3);
  v16(a2, a3);
  swift_getAssociatedConformanceWitness();
  sub_277115B74();
  v17 = *(v7 + 8);
  v17(v10, AssociatedTypeWitness);
  v17(v13, AssociatedTypeWitness);
  return (*(a3 + 48))(v15, a2, a3);
}

uint64_t static TSUCellCoordType.*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12[-v8];
  (*(a4 + 64))(a3, a4);
  v10 = (*(a4 + 80))(v12, a3, a4);
  swift_getAssociatedConformanceWitness();
  sub_277115B84();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v10(v12, 0);
}

uint64_t (*TSURowIndexType.rawIndex.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = (*(a3 + 24))(a2, a3);
  return sub_27710C8F8;
}

uint64_t (*sub_27710CA0C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_27710E424;
}

uint64_t sub_27710CA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_27710E384(&qword_280A63470, type metadata accessor for TSUModelRowIndex, &protocol conformance descriptor for TSUModelRowIndex);

  return TSUCellCoordType.init<A>(exactly:)(a1, a4, a2, v10, a3, a5);
}

uint64_t (*sub_27710CAF0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_27710CB1C;
}

uint64_t sub_27710CB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_27710E384(&qword_280A634B0, type metadata accessor for TSUViewRowIndex, &protocol conformance descriptor for TSUViewRowIndex);

  return TSUCellCoordType.init<A>(exactly:)(a1, a4, a2, v10, a3, a5);
}

_DWORD *sub_27710CBF8@<X0>(_DWORD *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*result - *v2);
  if (*result < *v2)
  {
    v3 = -(*v2 - *result);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_27710CCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_27710E384(&qword_280A634F0, type metadata accessor for TSUChromeRowIndex, &protocol conformance descriptor for TSUChromeRowIndex);

  return TSUCellCoordType.init<A>(exactly:)(a1, a4, a2, v10, a3, a5);
}

unsigned int *sub_27710CD78@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((v3 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_DWORD *sub_27710CD98(_DWORD *result, unsigned int *a2)
{
  v2 = *result * *a2;
  if ((v2 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unint64_t *sub_27710CDB8@<X0>(unint64_t *result@<X0>, unsigned int *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v3))
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = __CFADD__(v4, v3);
    v4 += v3;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = -v3;
  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4 >= v6;
  v4 -= v6;
  if (v5)
  {
LABEL_9:
    *a2 = v4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

unsigned int *sub_27710CE00(unsigned int *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, unint64_t *a6)
{
  v6 = *a4;
  v7 = *a6;
  if ((*a6 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v7))
    {
      __break(1u);
      goto LABEL_11;
    }

    v8 = __CFADD__(v6, v7);
    v6 += v7;
    if (!v8)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v9 = -v7;
  if (HIDWORD(v9))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v6 >= v9;
  v6 -= v9;
  if (v8)
  {
LABEL_9:
    *result = v6;
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

_DWORD *sub_27710CE50@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

_DWORD *sub_27710CE6C(_DWORD *result, _DWORD *a2)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

_DWORD *sub_27710CE88@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

_DWORD *sub_27710CEA4(_DWORD *result, _DWORD *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t (*TSUColumnIndexType.rawIndex.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = (*(a3 + 24))(a2, a3);
  return sub_27710CF60;
}

uint64_t (*sub_27710D068(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_27710E428;
}

uint64_t sub_27710D094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_27710E384(&qword_280A63530, type metadata accessor for TSUModelColumnIndex, &protocol conformance descriptor for TSUModelColumnIndex);

  return TSUCellCoordType.init<A>(exactly:)(a1, a4, a2, v10, a3, a5);
}

uint64_t (*sub_27710D154(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_27710D180;
}

uint64_t sub_27710D1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_27710E384(&qword_280A63570, type metadata accessor for TSUViewColumnIndex, &protocol conformance descriptor for TSUViewColumnIndex);

  return TSUCellCoordType.init<A>(exactly:)(a1, a4, a2, v10, a3, a5);
}

unsigned __int16 *sub_27710D25C@<X0>(unsigned __int16 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 - v3;
  v6 = v3 >= v4;
  v7 = v3 - v4;
  if (!v6)
  {
    v7 = -v5;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_27710D340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_27710E384(&qword_280A635B0, type metadata accessor for TSUChromeColumnIndex, &protocol conformance descriptor for TSUChromeColumnIndex);

  return TSUCellCoordType.init<A>(exactly:)(a1, a4, a2, v10, a3, a5);
}

unsigned __int16 *sub_27710D3DC@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((v3 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_WORD *sub_27710D3FC(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result * *a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unint64_t *sub_27710D41C@<X0>(unint64_t *result@<X0>, _WORD *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (v3 >> 16)
    {
      __break(1u);
      goto LABEL_9;
    }

    v4 += v3;
    v3 = HIWORD(v4);
    if ((v4 & 0x10000) == 0)
    {
LABEL_7:
      *a2 = v4;
      return result;
    }

    __break(1u);
  }

  v5 = -v3;
  if (v5 >> 16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 -= v5;
  if ((v4 & 0xFFFF0000) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

_WORD *sub_27710D46C(_WORD *result, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, unint64_t *a6)
{
  v6 = *a4;
  v7 = *a6;
  if ((*a6 & 0x8000000000000000) == 0)
  {
    if (v7 >> 16)
    {
      __break(1u);
      goto LABEL_9;
    }

    v6 += v7;
    v7 = HIWORD(v6);
    if ((v6 & 0x10000) == 0)
    {
LABEL_7:
      *result = v6;
      return 0;
    }

    __break(1u);
  }

  v8 = -v7;
  if (v8 >> 16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 -= v8;
  if ((v6 & 0xFFFF0000) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

unsigned __int16 *sub_27710D4C4@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result + *a2;
  if ((v3 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_WORD *sub_27710D4E4(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result + *a2;
  if ((v2 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unsigned __int16 *sub_27710D504@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result - *a2;
  if ((v3 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_WORD *sub_27710D524(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result - *a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t BinaryInteger.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(a5 + 64))(a3, a5);
  swift_getAssociatedConformanceWitness();
  sub_277115CA4();
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t sub_27710D68C(uint64_t a1)
{
  result = sub_27710E384(&qword_280A63470, type metadata accessor for TSUModelRowIndex, &protocol conformance descriptor for TSUModelRowIndex);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27710D6E4(void *a1)
{
  a1[1] = sub_27710E384(&qword_280A63478, type metadata accessor for TSUModelRowIndex, &protocol conformance descriptor for TSUModelRowIndex);
  a1[2] = sub_27710E384(&qword_280A63480, type metadata accessor for TSUModelRowIndex, &protocol conformance descriptor for TSUModelRowIndex);
  result = sub_27710E384(&qword_280A63488, type metadata accessor for TSUModelRowIndex, &protocol conformance descriptor for TSUModelRowIndex);
  a1[3] = result;
  return result;
}

uint64_t sub_27710D8EC(uint64_t a1)
{
  result = sub_27710E384(&qword_280A634B0, type metadata accessor for TSUViewRowIndex, &protocol conformance descriptor for TSUViewRowIndex);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27710D948(void *a1)
{
  a1[1] = sub_27710E384(&qword_280A634B8, type metadata accessor for TSUViewRowIndex, &protocol conformance descriptor for TSUViewRowIndex);
  a1[2] = sub_27710E384(&qword_280A634C0, type metadata accessor for TSUViewRowIndex, &protocol conformance descriptor for TSUViewRowIndex);
  result = sub_27710E384(&qword_280A634C8, type metadata accessor for TSUViewRowIndex, &protocol conformance descriptor for TSUViewRowIndex);
  a1[3] = result;
  return result;
}

uint64_t sub_27710DB14(uint64_t a1)
{
  result = sub_27710E384(&qword_280A634F0, type metadata accessor for TSUChromeRowIndex, &protocol conformance descriptor for TSUChromeRowIndex);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27710DB6C(void *a1)
{
  a1[1] = sub_27710E384(&qword_280A634F8, type metadata accessor for TSUChromeRowIndex, &protocol conformance descriptor for TSUChromeRowIndex);
  a1[2] = sub_27710E384(&qword_280A63500, type metadata accessor for TSUChromeRowIndex, &protocol conformance descriptor for TSUChromeRowIndex);
  result = sub_27710E384(&qword_280A63508, type metadata accessor for TSUChromeRowIndex, &protocol conformance descriptor for TSUChromeRowIndex);
  a1[3] = result;
  return result;
}

uint64_t sub_27710DD38(uint64_t a1)
{
  result = sub_27710E384(&qword_280A63530, type metadata accessor for TSUModelColumnIndex, &protocol conformance descriptor for TSUModelColumnIndex);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27710DD90(void *a1)
{
  a1[1] = sub_27710E384(&qword_280A63538, type metadata accessor for TSUModelColumnIndex, &protocol conformance descriptor for TSUModelColumnIndex);
  a1[2] = sub_27710E384(&qword_280A63540, type metadata accessor for TSUModelColumnIndex, &protocol conformance descriptor for TSUModelColumnIndex);
  result = sub_27710E384(&qword_280A63548, type metadata accessor for TSUModelColumnIndex, &protocol conformance descriptor for TSUModelColumnIndex);
  a1[3] = result;
  return result;
}

uint64_t sub_27710DF80(uint64_t a1)
{
  result = sub_27710E384(&qword_280A63570, type metadata accessor for TSUViewColumnIndex, &protocol conformance descriptor for TSUViewColumnIndex);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27710DFDC(void *a1)
{
  a1[1] = sub_27710E384(&qword_280A63578, type metadata accessor for TSUViewColumnIndex, &protocol conformance descriptor for TSUViewColumnIndex);
  a1[2] = sub_27710E384(&qword_280A63580, type metadata accessor for TSUViewColumnIndex, &protocol conformance descriptor for TSUViewColumnIndex);
  result = sub_27710E384(&qword_280A63588, type metadata accessor for TSUViewColumnIndex, &protocol conformance descriptor for TSUViewColumnIndex);
  a1[3] = result;
  return result;
}

uint64_t sub_27710E1A8(uint64_t a1)
{
  result = sub_27710E384(&qword_280A635B0, type metadata accessor for TSUChromeColumnIndex, &protocol conformance descriptor for TSUChromeColumnIndex);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27710E200(void *a1)
{
  a1[1] = sub_27710E384(&qword_280A635B8, type metadata accessor for TSUChromeColumnIndex, &protocol conformance descriptor for TSUChromeColumnIndex);
  a1[2] = sub_27710E384(&qword_280A635C0, type metadata accessor for TSUChromeColumnIndex, &protocol conformance descriptor for TSUChromeColumnIndex);
  result = sub_27710E384(&qword_280A635C8, type metadata accessor for TSUChromeColumnIndex, &protocol conformance descriptor for TSUChromeColumnIndex);
  a1[3] = result;
  return result;
}

uint64_t sub_27710E384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TSUOrderedDict.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TSUOrderedDict.ListElement(255, a3, a4, a5);
  v11 = type metadata accessor for TSULinkedList.Node(0, v8, v9, v10);

  return MEMORY[0x2821FB858](a2, a3, v11, a5);
}

uint64_t TSUOrderedDict.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TSUOrderedDict.ListElement(255, a1, a2, a3);
  v8 = type metadata accessor for TSULinkedList.Node(255, v5, v6, v7);
  swift_getTupleTypeMetadata2();
  v9 = sub_277115B14();
  sub_277110214(v9, a1, v8, a3);

  type metadata accessor for TSULinkedList(0, v5, v10, v11);
  return sub_27710765C();
}

uint64_t TSUOrderedDict.subscript.getter@<X0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v8 = type metadata accessor for TSUOrderedDict.ListElement(0, a3, a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  type metadata accessor for TSULinkedList.Node(0, v8, v12, v13);
  sub_277115A24();
  if (!v17)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v9 + 16))(v11, v17 + *(*v17 + 104), v8);

  v14 = *(a4 - 8);
  (*(v14 + 16))(a6, &v11[*(v8 + 44)], a4);
  (*(v9 + 8))(v11, v8);
  return (*(v14 + 56))(a6, 0, 1, a4);
}

uint64_t TSUOrderedDict.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a1;
  v7 = *(a3 + 16);
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  v12 = type metadata accessor for TSUOrderedDict.ListElement(0, v7, v10, v11);
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v43 = &v42 - v13;
  v53 = sub_277115C34();
  v14 = *(v53 - 8);
  v15 = MEMORY[0x28223BE20](v53);
  v17 = &v42 - v16;
  v46 = v10;
  v52 = *(v10 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v48 = &v42 - v21;
  sub_27710F000(a3);
  v49 = v4 + 8;
  v45 = v12;
  v24 = type metadata accessor for TSULinkedList.Node(0, v12, v22, v23);
  v55 = a2;
  v25 = v7;
  v47 = v24;
  v50 = v11;
  sub_277115A24();
  if (v57)
  {
    TSULinkedList.remove(_:)(v57);
  }

  v26 = v56;
  v27 = v53;
  (*(v14 + 16))(v17, v56, v53);
  v28 = v52;
  v29 = v46;
  if ((*(v52 + 48))(v17, 1, v46) == 1)
  {
    v30 = *(v14 + 8);
    v30(v17, v27);
    v32 = v54;
    v31 = v55;
    (*(v54 + 16))(v51, v55, v7);
    v57 = 0;
    sub_277115A14();
    sub_277115A34();
    (*(v32 + 8))(v31, v7);
    return (v30)(v26, v27);
  }

  else
  {
    v34 = v48;
    (*(v28 + 32))(v48, v17, v29);
    v35 = v28;
    v36 = *(v54 + 16);
    v37 = v29;
    v38 = v51;
    v36(v51, v55, v25);
    (*(v35 + 16))(v20, v34, v37);
    v39 = v43;
    sub_27710EF20(v38, v20, v25, v37, v50, v43);
    v40 = TSULinkedList.append(_:)(v39);
    (*(v44 + 8))(v39, v45);
    v41 = v55;
    v36(v38, v55, v25);
    v57 = v40;
    sub_277115A14();
    sub_277115A34();
    (*(v54 + 8))(v41, v25);
    (*(v14 + 8))(v56, v53);
    return (*(v52 + 8))(v48, v37);
  }
}

uint64_t sub_27710ED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TSUOrderedDict.ListElement(255, a3, a4, a5);
  type metadata accessor for TSULinkedList.Node(0, v9, v10, v11);
  v17[7] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v12 = sub_2771159E4();

  WitnessTable = swift_getWitnessTable();
  v15 = sub_27710F624(sub_277110B80, v17, v12, a3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  return v15;
}

Swift::Void __swiftcall TSUOrderedDict.removeAll()()
{
  v2 = v1;
  v3 = v0[2];
  v4 = v0[4];
  v5 = type metadata accessor for TSUOrderedDict.ListElement(255, v3, v0[3], v4);
  type metadata accessor for TSULinkedList(0, v5, v6, v7);
  v8 = sub_27710765C();

  *v2 = v8;
  v11 = type metadata accessor for TSULinkedList.Node(255, v5, v9, v10);
  swift_getTupleTypeMetadata2();
  v12 = sub_277115B14();
  v13 = sub_277110214(v12, v3, v11, v4);

  v2[1] = v13;
}

uint64_t sub_27710EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11 = type metadata accessor for TSUOrderedDict.ListElement(0, a3, a4, a5);
  v12 = *(*(a4 - 8) + 32);
  v13 = a6 + *(v11 + 44);

  return v12(v13, a2, a4);
}

uint64_t sub_27710F000(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TSUOrderedDict.ListElement(0, v2, *(v4 + 24), *(v4 + 32));
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  v11 = sub_277115C34();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  type metadata accessor for TSULinkedList(0, v7, v14, v15);
  result = sub_277115DD4();
  if ((result & 1) == 0)
  {
    v34 = sub_27710765C();
    type metadata accessor for TSULinkedList.Node(255, v7, v17, v18);
    v32 = sub_277115A14();
    sub_277115A04();
    v28[1] = *v1;
    v36 = TSULinkedList.makeIterator()();
    v31 = type metadata accessor for TSULinkedList.Iterator(0, v7, v19, v20);
    TSULinkedList.Iterator.next()(v31, v13);
    v33 = v1;
    v30 = v2;
    v21 = v8 + 48;
    v22 = *(v8 + 48);
    if (v22(v13, 1, v7) != 1)
    {
      v29 = *(v8 + 32);
      v23 = (v3 + 16);
      v24 = (v8 + 8);
      do
      {
        v29(v10, v13, v7);
        v25 = v21;
        v26 = v22;
        v27 = TSULinkedList.append(_:)(v10);
        (*v23)(v6, v10, v30);
        v35 = v27;
        sub_277115A34();
        (*v24)(v10, v7);
        TSULinkedList.Iterator.next()(v31, v13);
        v22 = v26;
        v21 = v25;
      }

      while (v22(v13, 1, v7) != 1);
    }

    *v33 = v34;
  }

  return result;
}

void (*TSUOrderedDict.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = a3[3];
  v10 = sub_277115C34();
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  v13 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v14 = malloc(v12);
  }

  v15 = v14;
  v8[5] = v14;
  v16 = a3[2];
  v8[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v8[7] = v17;
  v19 = *(v17 + 64);
  if (v13)
  {
    v8[8] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v17 + 64));
    v20 = malloc(v19);
  }

  v8[9] = v20;
  (*(v18 + 16))();
  TSUOrderedDict.subscript.getter(v16, v9, a3[4], v15);
  return sub_27710F510;
}

void sub_27710F510(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    TSUOrderedDict.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    TSUOrderedDict.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_27710F624(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_277115BE4();
  if (!v19)
  {
    return sub_277115B14();
  }

  v41 = v19;
  v45 = sub_277115D54();
  v32 = sub_277115D64();
  sub_277115D34();
  result = sub_277115BD4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_277115C24();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_277115D44();
      result = sub_277115C14();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27710FA5C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, char *a3@<X8>)
{
  v6 = a1[2];
  v7 = a1[3];
  v33 = a1[4];
  v8 = type metadata accessor for TSUOrderedDict.ListElement(0, v6, v7, v33);
  v34 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_27710F000(a1);
  v16 = a2(v15);
  if (v16)
  {
    v17 = *v16;
    v31 = v7;
    v18 = *(v17 + 104);
    v32 = a3;
    v19 = *(v12 + 16);
    v20 = v16;
    v19(v14, &v16[v18], v6);
    v35 = 0;
    type metadata accessor for TSULinkedList.Node(255, v8, v21, v22);
    sub_277115A14();
    sub_277115A34();
    v23 = v31;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v33 = *(TupleTypeMetadata2 + 48);
    v25 = v32;
    v19(v32, &v20[v18], v6);
    v26 = v34;
    (*(v34 + 16))(v11, &v20[v18], v8);

    (*(*(v23 - 8) + 16))(&v25[v33], &v11[*(v8 + 44)], v23);
    (*(v26 + 8))(v11, v8);
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v25, 0, 1, TupleTypeMetadata2);
  }

  else
  {
    v28 = swift_getTupleTypeMetadata2();
    v29 = *(*(v28 - 8) + 56);

    return v29(a3, 1, 1, v28);
  }
}

uint64_t TSUOrderedDict.Iterator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v9 = *(TupleTypeMetadata2 + 48);
    v10 = v4 + *(*v4 + 104);
    (*(*(v5 - 8) + 16))(a2, v10, v5);
    v11 = type metadata accessor for TSUOrderedDict.ListElement(0, v5, v6, a1[4]);
    (*(*(v6 - 8) + 16))(a2 + v9, v10 + *(v11 + 44), v6);
    (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 0, 1, TupleTypeMetadata2);
  }

  else
  {
    v12 = swift_getTupleTypeMetadata2();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  if (*v2)
  {
  }

  else
  {
    v13 = 0;
  }

  *v2 = v13;
}

uint64_t sub_27710FF9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = TSUOrderedDict.makeIterator()(*v1);

  *a1 = v3;
  return result;
}

uint64_t sub_27710FFE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_277110210(v2, a1, a2);

  return v3;
}

unint64_t sub_27711002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_277115A44();

  return sub_277110088(a1, v6, a2, a3);
}

unint64_t sub_277110088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_277115AA4();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_277110214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_277115B34())
  {
    sub_277115DB4();
    v13 = sub_277115DA4();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_277115B34();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_277115B24())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_277115D24();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_27711002C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_27711051C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_277110558(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_277110564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2771105AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_277110600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27711065C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2771106E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_2771108C4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t TSUAtomicPropertyWrapping.read<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(a3, a5);
  TSUUnfairLock.withLock<A>(block:)(a1);
}

uint64_t TSUAtomicPropertyWrapping.mutate(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *((*(a4 + 16))(a3, a4) + 16);
  os_unfair_lock_lock(v9);
  sub_277110D08(a1, a2, v4, a3, a4);
  os_unfair_lock_unlock(v9);
}

uint64_t sub_277110D08(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 40))(v10, a4, a5);
  a1(v8);
  return v7(v10, v5 != 0);
}

uint64_t TSUAtomicPropertyWrapping.safeValue.getter(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  v4 = *(a2 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v4(sub_277110E50, v7, AssociatedTypeWitness, a1, a2);
}

uint64_t TSUAtomicPropertyWrapping.safeValue.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2771124A4(a1, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

uint64_t sub_277110F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a2);
  return (*(a4 + 32))(v9, a3, a4);
}

void (*TSUAtomicPropertyWrapping.safeValue.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  TSUAtomicPropertyWrapping.safeValue.getter(a2, a3);
  return sub_277111160;
}

void sub_277111160(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_2771124A4(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_2771124A4((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t TSUAtomicVar.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TSUUnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  atomic_thread_fence(memory_order_acq_rel);
  *a3 = v6;
  v10 = type metadata accessor for TSUAtomicVar(0, a2, v8, v9);
  v11 = *(*(a2 - 8) + 32);
  v12 = a3 + *(v10 + 28);

  return v11(v12, a1, a2);
}

uint64_t TSUAtomicVar.wrappedValue.getter(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return TSUAtomicPropertyWrapping.safeValue.getter(a1, WitnessTable);
}

uint64_t TSUAtomicVar.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_277112574(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*TSUAtomicVar.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  WitnessTable = swift_getWitnessTable();
  TSUAtomicPropertyWrapping.safeValue.getter(a2, WitnessTable);
  return sub_2771115AC;
}

void sub_2771115AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    WitnessTable = swift_getWitnessTable();
    sub_2771124A4(v3, v7, WitnessTable);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v10 = swift_getWitnessTable();
    sub_2771124A4(v4, v7, v10);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2771117C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2771124A4(a1, a2, a3);
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

void (*sub_27711182C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a2;
  v8[2] = a3;
  *v8 = v3;
  v10 = *(a2 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  TSUAtomicPropertyWrapping.safeValue.getter(a2, a3);
  return sub_27711194C;
}

void sub_27711194C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v8 = *(*a1 + 8);
  v7 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    sub_2771124A4(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_2771124A4(*(*a1 + 48), v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t TSUAtomicDictionaryVar.init(wrappedValue:)()
{
  type metadata accessor for TSUUnfairLock();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = v1;
  atomic_thread_fence(memory_order_acq_rel);
  return v0;
}

uint64_t TSUAtomicDictionaryVar.unsafeValue.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TSUAtomicDictionaryVar.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for TSUAtomicDictionaryVar(0, a3, a4, a5);
  WitnessTable = swift_getWitnessTable();
  TSUAtomicPropertyWrapping.safeValue.getter(v5, WitnessTable);
  return v8;
}

uint64_t TSUAtomicDictionaryVar.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_2771125EC(a1, a2);
}

uint64_t (*TSUAtomicDictionaryVar.wrappedValue.modify(void *a1, uint64_t *a2))()
{
  a1[2] = a2;
  a1[3] = v2;
  a1[1] = TSUAtomicDictionaryVar.wrappedValue.getter(*v2, v2[1], a2[2], a2[3], a2[4]);
  return sub_277111BFC;
}

uint64_t sub_277111BFC(void *a1, char a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *a1 = v3;
    WitnessTable = swift_getWitnessTable();
    sub_2771124A4(a1, v4, WitnessTable);
  }

  else
  {
    *a1 = v3;
    v6 = swift_getWitnessTable();
    sub_2771124A4(a1, v4, v6);
  }
}

uint64_t TSUAtomicDictionaryVar.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for TSUAtomicDictionaryVar(0, a4, a5, a6);
  sub_277115C34();
  WitnessTable = swift_getWitnessTable();
  (*(WitnessTable + 16))(v6, WitnessTable);
  TSUUnfairLock.withLock<A>(block:)(sub_277112640);
}

uint64_t TSUAtomicDictionaryVar.subscript.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_277112674(a1, a2, a3);
  (*(*(a3[2] - 8) + 8))(a2);
  v6 = sub_277115C34();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_277111E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[1] = a1;
  v9 = sub_277115C34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  MEMORY[0x28223BE20](v11);
  (*(v15 + 16))(v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
  (*(v10 + 16))(v13, a3, v9);
  sub_277115A14();
  return sub_277115A34();
}

void (*TSUAtomicDictionaryVar.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t ***a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = a3[3];
  v11 = sub_277115C34();
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[5] = v14;
  v15 = a3[2];
  v9[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v9[7] = v16;
  if (v7)
  {
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(v16 + 64));
  }

  v9[8] = v18;
  (*(v17 + 16))();
  TSUAtomicDictionaryVar.subscript.getter(a2, *v3, v3[1], v15, v10, a3[4]);
  return sub_2771121B0;
}

void sub_2771121B0(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_277112674(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_277112674((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_2771122F8(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_277112344@<X0>(uint64_t *a1@<X8>)
{
  result = TSUAtomicDictionaryVar.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_277112370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2771124A4(a1, a2, a3);
}

void (*sub_2771123A8(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = v3;
  TSUAtomicPropertyWrapping.safeValue.getter(a2, a3);
  return sub_27711243C;
}

void sub_27711243C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[1] = *v2;
    v3 = (v2 + 1);
    v4 = v2[3];
    v5 = v2[4];
  }

  else
  {
    v4 = v2[3];
    v5 = v2[4];
    v3 = *a1;
  }

  sub_2771124A4(v3, v4, v5);

  free(v2);
}

uint64_t sub_2771124A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*(a3 + 16))(a2, a3) + 16);
  os_unfair_lock_lock(v7);
  sub_277110F1C(v3, a1, a2, a3);
  os_unfair_lock_unlock(v7);
}

uint64_t sub_277112574(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_2771124A4(a1, a2, WitnessTable);
}

uint64_t sub_2771125EC(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  WitnessTable = swift_getWitnessTable();
  return sub_2771124A4(&v5, a2, WitnessTable);
}

uint64_t sub_277112674(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(*v3 + 16);

  os_unfair_lock_lock(v7);
  sub_277111E48(v3, a2, a1, a3[2], a3[3], a3[4]);
  os_unfair_lock_unlock(v7);
}

uint64_t sub_277112728(uint64_t a1)
{
  result = type metadata accessor for TSUUnfairLock();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2771127B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_277112934(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_277112B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_277112BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Copy should never be nil.", a2, a3, a4, a5, a6, a7, a8, "[TSUSandboxedURL copyWithZone:]");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSandboxedURL copyWithZone:]"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:162 isFatal:1 description:"Copy should never be nil."];

  TSUCrashBreakpoint();
  abort();
}

void sub_277112C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Copy should never be nil.", a2, a3, a4, a5, a6, a7, a8, "[TSUNormalizedSandboxedURL copyWithZone:]");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNormalizedSandboxedURL copyWithZone:]"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSandboxedURL.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:215 isFatal:1 description:"Copy should never be nil."];

  TSUCrashBreakpoint();
  abort();
}

void sub_277112ED4()
{
  if (__cxa_guard_acquire(byte_280A63AC0))
  {
    *&v0.f64[0] = 0x8000000080000000;
    *&v0.f64[1] = 0x8000000080000000;
    xmmword_280A63AD0 = vnegq_f64(v0);

    __cxa_guard_release(byte_280A63AC0);
  }
}

void sub_2771130C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a line when there is no current point.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath lineToPoint:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath lineToPoint:]" file:sub_27706D3A0() lineNumber:615 isFatal:1 description:"Unable to add a line when there is no current point."];
  TSUCrashBreakpoint();
  abort();
}

void sub_277113138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a curve when there is no current point.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath curveToPoint:controlPoint:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath curveToPoint:controlPoint:]" file:sub_27706D3A0() lineNumber:621 isFatal:1 description:"Unable to add a curve when there is no current point."];
  TSUCrashBreakpoint();
  abort();
}

void sub_2771131B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a curve when there is no current point.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath curveToPoint:controlPoint1:controlPoint2:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath curveToPoint:controlPoint1:controlPoint2:]" file:sub_27706D3A0() lineNumber:635 isFatal:1 description:"Unable to add a curve when there is no current point."];
  TSUCrashBreakpoint();
  abort();
}

void sub_277113228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can not get the current point of an empty path.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath currentPoint]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath currentPoint]" file:sub_27706D3A0() lineNumber:1558 isFatal:1 description:"Can not get the current point of an empty path."];
  TSUCrashBreakpoint();
  abort();
}

void sub_2771132A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can not determine control point bounds for an empty path.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath controlPointBounds]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath controlPointBounds]" file:sub_27706D3A0() lineNumber:1567 isFatal:1 description:"Can not determine control point bounds for an empty path."];
  TSUCrashBreakpoint();
  abort();
}

void sub_277113430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Given index (%zd) must not be negative.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath lengthToElement:]");
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBezierPath lengthToElement:]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m"], 1823, 1, "Given index (%zd) must not be negative.", a1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m", 1823, a1);
  TSUCrashBreakpoint();
  abort();
}

void sub_2771135E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Missing extra segments.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath elementAtIndex:associatedPoints:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath elementAtIndex:associatedPoints:]" file:sub_27706D3A0() lineNumber:1862 isFatal:1 description:"Missing extra segments."];
  TSUCrashBreakpoint();
  abort();
}

void sub_277113774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a curve when there is no current point.", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath p_appendPointsInRange:fromBezierPath:countingSubpaths:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath p_appendPointsInRange:fromBezierPath:countingSubpaths:]" file:sub_27706D3A0() lineNumber:2057 isFatal:1 description:"Unable to add a curve when there is no current point."];
  TSUCrashBreakpoint();
  abort();
}

void sub_2771137EC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d angle1 should not be infinte or NaN (%f)", a3, a4, a5, a6, a7, a8, a9, "[TSUBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]" file:sub_27706D3A0() lineNumber:2214 isFatal:1 description:"angle1 should not be infinte or NaN (%f)", *&a1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m", 2214, *&a1];
  TSUCrashBreakpoint();
  abort();
}

void sub_277113874(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d angle2 should not be infinte or NaN (%f)", a3, a4, a5, a6, a7, a8, a9, "[TSUBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]" file:sub_27706D3A0() lineNumber:2215 isFatal:1 description:"angle2 should not be infinte or NaN (%f)", *&a1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPath.m", 2215, *&a1];
  TSUCrashBreakpoint();
  abort();
}

void sub_2771138FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_elementLength)", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath(TSUBezierPathDevicePrimitives) _addPathSegment:point:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath(TSUBezierPathDevicePrimitives) _addPathSegment:point:]" file:sub_27706D3A0() lineNumber:2618 isFatal:1 description:"sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_elementLength)"];
  TSUCrashBreakpoint();
  abort();
}

void sub_277113974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_head)", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath(TSUBezierPathDevicePrimitives) _addPathSegment:point:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath(TSUBezierPathDevicePrimitives) _addPathSegment:point:]" file:sub_27706D3A0() lineNumber:2609 isFatal:1 description:"sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_head)"];
  TSUCrashBreakpoint();
  abort();
}

void sub_2771139EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d sfr_extraSegments could not NSZoneRealloc. No memory", a2, a3, a4, a5, a6, a7, a8, "[TSUBezierPath(TSUBezierPathDevicePrimitives) _deviceCurveToPoint:controlPoint1:controlPoint2:elementLength:]");
  sub_27706D3BC();
  [TSUAssertionHandler handleFailureInFunction:"[TSUBezierPath(TSUBezierPathDevicePrimitives) _deviceCurveToPoint:controlPoint1:controlPoint2:elementLength:]" file:sub_27706D3A0() lineNumber:2683 isFatal:1 description:"sfr_extraSegments could not NSZoneRealloc. No memory"];
  TSUCrashBreakpoint();
  abort();
}

void sub_277113AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can't remove the first object of an empty array!", a2, a3, a4, a5, a6, a7, a8, "[NSArray(TSUAdditions) tsu_arrayByRemovingFirstObject]");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUAdditions) tsu_arrayByRemovingFirstObject]"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSArrayAdditions.m"], 245, 1, "Can't remove the first object of an empty array!");
  TSUCrashBreakpoint();
  abort();
}

void sub_277113E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d You should not add an observer for all notifications on the main thread because it's deadlock prone.", a2, a3, a4, a5, a6, a7, a8, "[NSNotificationCenter(TSUAdditions) tsu_addObserverForName:object:queue:usingBlock:]");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSNotificationCenter(TSUAdditions) tsu_addObserverForName:object:queue:usingBlock:]"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSNotificationCenter_TSUAdditions.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:13 isFatal:1 description:"You should not add an observer for all notifications on the main thread because it's deadlock prone."];

  TSUCrashBreakpoint();
  abort();
}

void sub_2771140D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Can't find an encoding for '%@'!", a2, a3, a4, a5, a6, a7, a8, "+[TSUStringEncodingHelper encodingForLocalizedName:]");
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUStringEncodingHelper encodingForLocalizedName:]"];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m"];
  [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:424 isFatal:1 description:"Can't find an encoding for '%@'!", a1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m", 424, a1];

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_27711427C()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUWidthLimitedQueue initWithLimit:name:targetQueue:]"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUWidthLimitedQueue.m"];
  [TSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:60 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

  return +[TSUAssertionHandler logBacktraceThrottled];
}

void sub_277114334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Attempting to use recursive queue methods in a non-recursive queue!", a2, a3, a4, a5, a6, a7, a8, "void TSUAssertIsRecursiveQueue()");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSUAssertIsRecursiveQueue()"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSURecursiveQueue.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:28 isFatal:1 description:"Attempting to use recursive queue methods in a non-recursive queue!"];

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_277114450()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipInflateReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:156 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

  return +[TSUAssertionHandler logBacktraceThrottled];
}

void sub_2771145F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Deprecated Controls", a2, a3, a4, a5, a6, a7, a8, "BOOL TSUEqualFormatStructs(TSUFormatStruct, TSUFormatStruct)");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUEqualFormatStructs(TSUFormatStruct, TSUFormatStruct)"}];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFormatStructUtilities.h"], 148, 1, "Deprecated Controls");
  TSUCrashBreakpoint();
  abort();
}

void sub_277114FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", a2, a3, a4, a5, a6, a7, a8, "[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:310 isFatal:1 description:"invalid nil value for '%{public}s'", "_streamReadChannelSourceHandler", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m", 310, "_streamReadChannelSourceHandler"];

  TSUCrashBreakpoint();
  abort();
}

void sub_2771151E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Write channel semaphore should not be initialized.", a2, a3, a4, a5, a6, a7, a8, "[TSUZipWriter p_writeChannel]");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter p_writeChannel]"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:110 isFatal:1 description:"Write channel semaphore should not be initialized."];

  TSUCrashBreakpoint();
  abort();
}

void sub_27711528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", a2, a3, a4, a5, a6, a7, a8, "[TSUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:157 isFatal:1 description:"Already closed."];

  TSUCrashBreakpoint();
  abort();
}

void sub_277115330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", a2, a3, a4, a5, a6, a7, a8, "[TSUZipWriter addDataImpl:queue:completion:]");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter addDataImpl:queue:completion:]"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:233 isFatal:1 description:"Already closed."];

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_2771153D4()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter addDataImpl:queue:completion:]_block_invoke_3"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:274 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

  return +[TSUAssertionHandler logBacktraceThrottled];
}

void sub_277115470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Trying to flush while closed.", a2, a3, a4, a5, a6, a7, a8, "[TSUZipWriter flushCurrentEntryWithQueue:completion:]_block_invoke");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter flushCurrentEntryWithQueue:completion:]_block_invoke"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:292 isFatal:1 description:"Trying to flush while closed."];

  TSUCrashBreakpoint();
  abort();
}

void sub_277115528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", a2, a3, a4, a5, a6, a7, a8, "[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]_block_invoke");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]_block_invoke"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:368 isFatal:1 description:"Already closed."];

  TSUCrashBreakpoint();
  abort();
}

void sub_2771155CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Shouldn't have closed twice.", a2, a3, a4, a5, a6, a7, a8, "[TSUZipWriter closeWithQueue:completion:]_block_invoke");
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipWriter closeWithQueue:completion:]_block_invoke"];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipWriter.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:461 isFatal:1 description:"Shouldn't have closed twice."];

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_277115828()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel processData:CRC:isDone:handler:]_block_invoke"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipReadChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:262 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

  return +[TSUAssertionHandler logBacktraceThrottled];
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x28211F860](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x2821F9A68](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}