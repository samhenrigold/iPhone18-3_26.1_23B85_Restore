void traceMessagePayloadIfKeyExists(uint64_t a1, void *a2)
{
  v4 = RWIMessageTraceLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [a2 objectForKeyedSubscript:@"__argument"];
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 objectForKeyedSubscript:a1];
        if (v7)
        {
          v8 = v7;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
            v10 = RWIMessageTraceLog(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              traceMessagePayloadIfKeyExists_cold_1(v9, v10);
            }
          }
        }
      }
    }
  }
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_273C9F858(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _RWITCPConnection;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_273CA0210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_273CA0470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned char>::vector[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:sn200100](a1, a2);
  }

  return a1;
}

void std::vector<unsigned char>::__vallocate[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2082;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

BOOL auditTokenHasEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CBECE8];
  v5 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  v7 = v6;
  if (v6)
  {
    *token.val = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, v3, &token);
    v9 = v8;
    if (*token.val)
    {
      NSLog(&cfstr_UnableToGetEnt.isa, v3, *token.val);
      CFRelease(*token.val);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v8)
      {
        v10 = 0;
LABEL_12:
        CFRelease(v7);
        goto LABEL_13;
      }

      v11 = CFGetTypeID(v8);
      v10 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
    }

    CFRelease(v9);
    goto LABEL_12;
  }

  NSLog(&cfstr_UnableToCreate.isa, v3);
  v10 = 0;
LABEL_13:

  return v10;
}

uint64_t RWIAutomationAvailabilityFromString(void *a1, uint64_t *a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"WIRAutomationAvailabilityNotAvailable"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WIRAutomationAvailabilityAvailable"])
  {
    v4 = 1;
  }

  else
  {
    if (![v3 isEqualToString:@"WIRAutomationAvailabilityUnknown"])
    {
      v5 = 0;
      goto LABEL_8;
    }

    v4 = 2;
  }

  *a2 = v4;
  v5 = 1;
LABEL_8:

  return v5;
}

__CFString *RWINSStringFromAutomationAvailability(uint64_t a1)
{
  v1 = @"WIRAutomationAvailabilityNotAvailable";
  if (a1 == 1)
  {
    v1 = @"WIRAutomationAvailabilityAvailable";
  }

  if (a1 == 2)
  {
    return @"WIRAutomationAvailabilityUnknown";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromRWIDebuggerAvailability(uint64_t a1)
{
  v1 = @"Not Debuggable";
  if (a1 == 1)
  {
    v1 = @"Debuggable (Not Visible)";
  }

  if (a1 == 2)
  {
    return @"Debuggable (Visible)";
  }

  else
  {
    return v1;
  }
}

void sub_273CA2590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

id RWIDefaultLog(uint64_t a1)
{
  if (RWIDefaultLog_onceToken != -1)
  {
    RWIDefaultLog_cold_1();
  }

  v2 = RWIDefaultLog_defaultLog;

  return v2;
}

void __RWIDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.WebInspector", "default");
  v1 = RWIDefaultLog_defaultLog;
  RWIDefaultLog_defaultLog = v0;
}

id RWIMessageTraceLog(uint64_t a1)
{
  if (RWIMessageTraceLog_onceToken != -1)
  {
    RWIMessageTraceLog_cold_1();
  }

  v2 = RWIMessageTraceLog_messageTraceLog;

  return v2;
}

void __RWIMessageTraceLog_block_invoke()
{
  v0 = os_log_create("com.apple.WebInspector", "message-trace");
  v1 = RWIMessageTraceLog_messageTraceLog;
  RWIMessageTraceLog_messageTraceLog = v0;
}

id RWIMessageDumpStateLog(uint64_t a1)
{
  if (RWIMessageDumpStateLog_onceToken != -1)
  {
    RWIMessageDumpStateLog_cold_1();
  }

  v2 = RWIMessageDumpStateLog_dumpStateLog;

  return v2;
}

void __RWIMessageDumpStateLog_block_invoke()
{
  v0 = os_log_create("com.apple.WebInspector", "dump-state");
  v1 = RWIMessageDumpStateLog_dumpStateLog;
  RWIMessageDumpStateLog_dumpStateLog = v0;
}

void *Inspector::toJSONObjectArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v4 = objc_opt_class();
  WTF::JSONImpl::Array::create(v4);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v17 objects:v21 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v18;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(this);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v4), v10}];
        }

        v11 = *a2;
        if (v10)
        {
          objc_msgSend_toJSONObject(v10);
          v10 = v16;
        }

        v12 = *(v11 + 28);
        if (v12 == *(v11 + 24))
        {
          if (v12 + (v12 >> 1) <= v12 + 1)
          {
            v13 = v12 + 1;
          }

          else
          {
            v13 = v12 + (v12 >> 1);
          }

          if (v13 <= 0x10)
          {
            v14 = 16;
          }

          else
          {
            v14 = v13;
          }

          WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v11 + 16, v14);
          v12 = *(v11 + 28);
          v15 = (*(v11 + 16) + 8 * v12);
        }

        else
        {
          v15 = (*(v11 + 16) + 8 * v12);
        }

        *v15 = v10;
        *(v11 + 28) = v12 + 1;
        v16 = 0;
        v9 = v9 + 1;
      }

      while (v6 != v9);
      result = [(Inspector *)this countByEnumeratingWithState:&v17 objects:v21 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

_DWORD **WTF::Ref<WTF::JSONImpl::Array,WTF::RawPtrTraits<WTF::JSONImpl::Array>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Array>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v2;
    }
  }

  return a1;
}

void *Inspector::toJSONStringArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v4 = objc_opt_class();
  WTF::JSONImpl::Array::create(v4);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v21 objects:v26 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v22;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(this);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v4), v10}];
        }

        v11 = *a2;
        MEMORY[0x2743DB520](&v20, v10);
        WTF::JSONImpl::Value::create(&v25, &v20, v12);
        v14 = *(v11 + 28);
        if (v14 == *(v11 + 24))
        {
          v15 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v11 + 16), v14 + 1, &v25);
          v14 = *(v11 + 28);
          v16 = *(v11 + 16);
          v17 = *v15;
          *v15 = 0;
        }

        else
        {
          v16 = *(v11 + 16);
          v17 = v25;
          v25 = 0;
        }

        *(v16 + 8 * v14) = v17;
        *(v11 + 28) = v14 + 1;
        v18 = v25;
        v25 = 0;
        if (v18)
        {
          if (*v18 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v18;
          }
        }

        v19 = v20;
        v20 = 0;
        if (v19)
        {
          if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v19, v13);
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      result = [(Inspector *)this countByEnumeratingWithState:&v21 objects:v26 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void *Inspector::toJSONIntegerArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v4 = objc_opt_class();
  WTF::JSONImpl::Array::create(v4);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v17 objects:v22 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v18;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(this);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v4), v10}];
        }

        v11 = *a2;
        WTF::JSONImpl::Value::create(&v21, [v10 intValue]);
        v12 = *(v11 + 28);
        if (v12 == *(v11 + 24))
        {
          v13 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v11 + 16), v12 + 1, &v21);
          v12 = *(v11 + 28);
          v14 = *(v11 + 16);
          v15 = *v13;
          *v13 = 0;
        }

        else
        {
          v14 = *(v11 + 16);
          v15 = v21;
          v21 = 0;
        }

        *(v14 + 8 * v12) = v15;
        *(v11 + 28) = v12 + 1;
        v16 = v21;
        v21 = 0;
        if (v16)
        {
          if (*v16 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v16;
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      result = [(Inspector *)this countByEnumeratingWithState:&v17 objects:v22 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void *Inspector::toJSONDoubleArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v4 = objc_opt_class();
  WTF::JSONImpl::Array::create(v4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v24 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v20;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(this);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v4), v10}];
        }

        v11 = *a2;
        v12 = [v10 doubleValue];
        WTF::JSONImpl::Value::create(&v23, v12, v13);
        v14 = *(v11 + 28);
        if (v14 == *(v11 + 24))
        {
          v15 = WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>((v11 + 16), v14 + 1, &v23);
          v14 = *(v11 + 28);
          v16 = *(v11 + 16);
          v17 = *v15;
          *v15 = 0;
        }

        else
        {
          v16 = *(v11 + 16);
          v17 = v23;
          v23 = 0;
        }

        *(v16 + 8 * v14) = v17;
        *(v11 + 28) = v14 + 1;
        v18 = v23;
        v23 = 0;
        if (v18)
        {
          if (*v18 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v18;
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v24 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void *Inspector::toJSONStringArrayArray@<X0>(Inspector *this@<X0>, uint64_t *a2@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"array"}];
  }

  v4 = objc_opt_class();
  WTF::JSONImpl::Array::create(v4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v23 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v20;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(this);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v4), v10}];
        }

        v11 = *a2;
        Inspector::toJSONStringArray(v10, &v18);
        v12 = v18;
        v18 = 0;
        v13 = *(v11 + 28);
        if (v13 == *(v11 + 24))
        {
          if (v13 + (v13 >> 1) <= v13 + 1)
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = v13 + (v13 >> 1);
          }

          if (v14 <= 0x10)
          {
            v15 = 16;
          }

          else
          {
            v15 = v14;
          }

          WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v11 + 16, v15);
          v13 = *(v11 + 28);
          v16 = (*(v11 + 16) + 8 * v13);
        }

        else
        {
          v16 = (*(v11 + 16) + 8 * v13);
        }

        *v16 = v12;
        *(v11 + 28) = v13 + 1;
        v17 = v18;
        v18 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            WTF::JSONImpl::Value::operator delete();
          }

          else
          {
            --*v17;
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      result = [(Inspector *)this countByEnumeratingWithState:&v19 objects:v23 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void *Inspector::toObjCStringArray(WTF::JSONImpl::ArrayBase **a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(*a1 + 7);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      WTF::JSONImpl::ArrayBase::get(&v14, *a1);
      WTF::JSONImpl::Value::asString(&v15, v14);
      v6 = v14;
      v14 = 0;
      if (v6)
      {
        if (*v6 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v6;
        }
      }

      v7 = v15;
      if (v15 || ([MEMORY[0x277CBEAD8] raise:v5 format:@"array should contain objects of type 'String'"], (v7 = v15) != 0))
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        MEMORY[0x2743DB4B0](&v14, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v14 = &stru_2882B1C88;
        v12 = &stru_2882B1C88;
      }

      [v3 addObject:{v14, v14}];
      v10 = v14;
      v14 = 0;
      if (v10)
      {
      }

      v11 = v15;
      v15 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      ++v4;
    }

    while (v2 != v4);
  }

  return v3;
}

void sub_273CA35A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *Inspector::toObjCIntegerArray(WTF::JSONImpl::ArrayBase **a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(*a1 + 7);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2];
  if (v2)
  {
    for (i = 0; v2 != i; ++i)
    {
      WTF::JSONImpl::ArrayBase::get(&v8, *a1);
      v5 = WTF::JSONImpl::Value::asInteger(v8);
      v6 = v8;
      v8 = 0;
      if (v6)
      {
        if (*v6 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
          if ((v5 & 0x100000000) == 0)
          {
LABEL_11:
            Inspector::toObjCIntegerArray();
          }

          goto LABEL_8;
        }

        --*v6;
      }

      if ((v5 & 0x100000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_8:
      [v3 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v5)}];
    }
  }

  return v3;
}

uint64_t WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 29))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = WTF::fastMalloc((8 * a2));
    *(v3 + 8) = v2;
    *v3 = v6;
    memcpy(v6, v4, 8 * v5);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unint64_t WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 3) <= a3)
  {
    v10 = *(a1 + 2);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 2);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::enable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] enableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CA3980(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA3A0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::disable(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] disableWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CA3BE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA3C6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getMatchedStylesForNode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char *a5)
{
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = a1;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke_2;
    v15[3] = &__block_descriptor_48_e17_v32__0__8__16__24l;
    v15[4] = a1;
    v15[5] = a2;
    LOBYTE(v17) = 0;
    v10 = a4[1];
    if (v10 == 1)
    {
      LOBYTE(v17) = *a4;
    }

    v14 = 0;
    if (a5[1] == 1)
    {
      v14 = *a5;
      v11 = &v14;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = &v17;
    }

    else
    {
      v12 = 0;
    }

    return [*(a1 + 16) getMatchedStylesForNodeWithErrorCallback:v16 successCallback:v15 nodeId:a3 includePseudo:v12 includeInherited:v11];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CA3EA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA3F2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getMatchedStylesForNodeEliONSt3__18optionalIbEES4__block_invoke_2(WTF::JSONImpl::Object *a1, Inspector **a2, Inspector **a3, Inspector **a4)
{
  v104 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v98, a1);
  v80 = a2;
  if (a2)
  {
    v5 = *a2;
    if (!*a2)
    {
      v78 = @"matchedCSSRules";
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
      v5 = *a2;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v6 = [(Inspector *)v5 countByEnumeratingWithState:&v94 objects:v103 count:16];
    if (v6)
    {
      v7 = *v95;
      v8 = *MEMORY[0x277CBE660];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v95 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v94 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = MEMORY[0x277CBEAD8];
            v12 = objc_opt_class();
            v78 = NSStringFromClass(v12);
            v79 = v10;
            [v11 raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@"}];
          }
        }

        v6 = [(Inspector *)v5 countByEnumeratingWithState:&v94 objects:v103 count:16];
      }

      while (v6);
    }
  }

  if (a3)
  {
    v13 = *a3;
    if (!*a3)
    {
      v78 = @"pseudoElements";
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
      v13 = *a3;
    }

    v93 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    v14 = [(Inspector *)v13 countByEnumeratingWithState:&v90 objects:v102 count:16];
    if (v14)
    {
      v15 = *v91;
      v16 = *MEMORY[0x277CBE660];
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v91 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v90 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = MEMORY[0x277CBEAD8];
            v20 = objc_opt_class();
            v78 = NSStringFromClass(v20);
            v79 = v18;
            [v19 raise:v16 format:{@"array should contain objects of type '%@', found bad value: %@"}];
          }
        }

        v14 = [(Inspector *)v13 countByEnumeratingWithState:&v90 objects:v102 count:16];
      }

      while (v14);
    }
  }

  if (a4)
  {
    v21 = *a4;
    if (!*a4)
    {
      v78 = @"inherited";
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
      v21 = *a4;
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v22 = [(Inspector *)v21 countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v22)
    {
      v23 = *v87;
      v24 = *MEMORY[0x277CBE660];
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v87 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v86 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v27 = MEMORY[0x277CBEAD8];
            v28 = objc_opt_class();
            v78 = NSStringFromClass(v28);
            v79 = v26;
            [v27 raise:v24 format:{@"array should contain objects of type '%@', found bad value: %@"}];
          }
        }

        v22 = [(Inspector *)v21 countByEnumeratingWithState:&v86 objects:v101 count:16];
      }

      while (v22);
    }
  }

  if (v80)
  {
    v29 = v98;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v85 = v99[0];
    Inspector::toJSONObjectArray(*v80, &v83);
    v30 = v83;
    v83 = 0;
    v84 = v30;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v29 + 2, &v85, &v84, v99);
    if (v100 == 1)
    {
      v38 = *(v29 + 9);
      if (v38 == *(v29 + 8))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v29 + 3), &v85);
      }

      else
      {
        v39 = v29[3];
        v40 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(v85, 2u, memory_order_relaxed);
        }

        v41 = *(v29 + 9);
        *(v39 + 8 * v38) = v40;
        *(v29 + 9) = v41 + 1;
      }
    }

    v42 = v84;
    v84 = 0;
    if (v42)
    {
      Inspector::toJSONObjectArray(v42, v31, v32, v33, v34, v35, v36, v37, v78, v79);
    }

    v43 = v83;
    v83 = 0;
    if (v43)
    {
      if (*v43 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v43;
      }
    }

    v44 = v85;
    v85 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v31);
    }
  }

  if (a3)
  {
    v45 = v98;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v85 = v99[0];
    Inspector::toJSONObjectArray(*a3, &v83);
    v46 = v83;
    v83 = 0;
    v84 = v46;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v45 + 2, &v85, &v84, v99);
    if (v100 == 1)
    {
      v54 = *(v45 + 9);
      if (v54 == *(v45 + 8))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v45 + 3), &v85);
      }

      else
      {
        v55 = v45[3];
        v56 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(v85, 2u, memory_order_relaxed);
        }

        v57 = *(v45 + 9);
        *(v55 + 8 * v54) = v56;
        *(v45 + 9) = v57 + 1;
      }
    }

    v58 = v84;
    v84 = 0;
    if (v58)
    {
      Inspector::toJSONObjectArray(v58, v47, v48, v49, v50, v51, v52, v53, v78, v79);
    }

    v59 = v83;
    v83 = 0;
    if (v59)
    {
      if (*v59 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v59;
      }
    }

    v60 = v85;
    v85 = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v47);
    }
  }

  if (a4)
  {
    v61 = v98;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v85 = v99[0];
    Inspector::toJSONObjectArray(*a4, &v83);
    v62 = v83;
    v83 = 0;
    v84 = v62;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v61 + 2, &v85, &v84, v99);
    if (v100 == 1)
    {
      v70 = *(v61 + 9);
      if (v70 == *(v61 + 8))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v61 + 3), &v85);
      }

      else
      {
        v71 = v61[3];
        v72 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(v85, 2u, memory_order_relaxed);
        }

        v73 = *(v61 + 9);
        *(v71 + 8 * v70) = v72;
        *(v61 + 9) = v73 + 1;
      }
    }

    v74 = v84;
    v84 = 0;
    if (v74)
    {
      Inspector::toJSONObjectArray(v74, v63, v64, v65, v66, v67, v68, v69, v78, v79);
    }

    v75 = v83;
    v83 = 0;
    if (v75)
    {
      if (*v75 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v75;
      }
    }

    v76 = v85;
    v85 = 0;
    if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v76, v63);
    }
  }

  Inspector::BackendDispatcher::sendResponse();
  result = v98;
  v98 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getInlineStylesForNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e13_v24__0__8__16l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getInlineStylesForNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA4884(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA4910(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher22getInlineStylesForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void **a2, void **a3)
{
  WTF::JSONImpl::Object::create(&v43, a1);
  if (a2 && !*a2)
  {
    v37 = @"inlineStyle";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  if (a3 && !*a3)
  {
    v37 = @"attributesStyle";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  if (a2)
  {
    v5 = v43;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v42 = v44[0];
    if (*a2)
    {
      objc_msgSend_toJSONObject(*a2);
      v6 = v38;
    }

    else
    {
      v6 = 0;
    }

    v39 = 0;
    v41 = v6;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v42, &v41, v44);
    if (v45 == 1)
    {
      v14 = *(v5 + 9);
      if (v14 == *(v5 + 8))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v42);
      }

      else
      {
        v15 = v5[3];
        v16 = v42;
        if (v42)
        {
          atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
        }

        v17 = *(v5 + 9);
        *(v15 + 8 * v14) = v16;
        *(v5 + 9) = v17 + 1;
      }
    }

    v18 = v41;
    v41 = 0;
    if (v18)
    {
      Inspector::toJSONObjectArray(v18, v7, v8, v9, v10, v11, v12, v13, v37, 0);
    }

    v19 = v39;
    v38 = 0;
    if (v19)
    {
      if (*v19 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v19;
      }
    }

    v20 = v42;
    v42 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v7);
    }
  }

  if (a3)
  {
    v21 = v43;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v42 = v44[0];
    if (*a3)
    {
      objc_msgSend_toJSONObject(*a3);
      v22 = v38;
    }

    else
    {
      v22 = 0;
    }

    v40 = 0;
    v41 = v22;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v21 + 2, &v42, &v41, v44);
    if (v45 == 1)
    {
      v30 = *(v21 + 9);
      if (v30 == *(v21 + 8))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v21 + 3), &v42);
      }

      else
      {
        v31 = v21[3];
        v32 = v42;
        if (v42)
        {
          atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
        }

        v33 = *(v21 + 9);
        *(v31 + 8 * v30) = v32;
        *(v21 + 9) = v33 + 1;
      }
    }

    v34 = v41;
    v41 = 0;
    if (v34)
    {
      Inspector::toJSONObjectArray(v34, v23, v24, v25, v26, v27, v28, v29, v37, 0);
    }

    if (v40)
    {
      if (*v40 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v40;
      }
    }

    v35 = v42;
    v42 = 0;
    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v23);
    }
  }

  Inspector::BackendDispatcher::sendResponse();
  result = v43;
  v43 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getComputedStyleForNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getComputedStyleForNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA4E04(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA4E90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"computedStyle";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getFontDataForNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolCSSFont_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getFontDataForNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA5314(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA53A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher18getFontDataForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"primaryFont";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getAllStyleSheets(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] getAllStyleSheetsWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CA56F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA5784(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getAllStyleSheetsEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"headers";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getStyleSheet(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e38_v16__0__RWIProtocolCSSStyleSheetBody_8l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] getStyleSheetWithErrorCallback:v14 successCallback:v13 styleSheetId:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CA5C74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA5D34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher13getStyleSheetElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"styleSheet";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getStyleSheetText(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] getStyleSheetTextWithErrorCallback:v14 successCallback:v13 styleSheetId:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CA60F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA61B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"text"}];
  }

  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  MEMORY[0x2743DB520](&v7, a2);
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v7);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v6);
}

_DWORD *WTF::JSONImpl::ObjectBase::setString(WTF::JSONImpl::ObjectBase *this, const WTF::String *a2, const WTF::String *a3)
{
  WTF::JSONImpl::Value::create(&v10, a3, a2);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, &v11);
  if (v12 == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setStyleSheetText(id *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke;
    v22[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v22[4] = this;
    v22[5] = a2;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke_2;
    v21[3] = &__block_descriptor_48_e5_v8__0l;
    v21[4] = this;
    v21[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v10 = v23;
    v23 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v23;
      v23 = 0;
      if (v12)
      {
      }
    }

    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v20 = &stru_2882B1C88;
    }

    v15 = v23;
    v23 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v23;
      v23 = 0;
      if (v17)
      {
      }
    }

    return [this[2] setStyleSheetTextWithErrorCallback:v22 successCallback:v21 styleSheetId:v10 text:v15];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v23);
  }
}

void sub_273CA6610(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA66F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17setStyleSheetTextElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setStyleText(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v19[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v19[4] = a1;
    v19[5] = a2;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v18[3] = &__block_descriptor_48_e29_v16__0__RWIProtocolCSSStyle_8l;
    v18[4] = a1;
    v18[5] = a2;
    v8 = [(RWIProtocolJSONObject *)[RWIProtocolCSSStyleId alloc] initWithJSONObject:a3];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    v11 = *a4;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v20, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v20 = &stru_2882B1C88;
      v17 = &stru_2882B1C88;
    }

    v13 = v20;
    v20 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v20;
      v20 = 0;
      if (v15)
      {
      }
    }

    return [*(a1 + 16) setStyleTextWithErrorCallback:v19 successCallback:v18 styleId:v9 text:v13];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v20);
  }
}

void sub_273CA6964(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA6A24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher12setStyleTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"style";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setRuleSelector(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v19[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v19[4] = a1;
    v19[5] = a2;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v18[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolCSSRule_8l;
    v18[4] = a1;
    v18[5] = a2;
    v8 = [(RWIProtocolJSONObject *)[RWIProtocolCSSRuleId alloc] initWithJSONObject:a3];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    v11 = *a4;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v20, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v20 = &stru_2882B1C88;
      v17 = &stru_2882B1C88;
    }

    v13 = v20;
    v20 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v20;
      v20 = 0;
      if (v15)
      {
      }
    }

    return [*(a1 + 16) setRuleSelectorWithErrorCallback:v19 successCallback:v18 ruleId:v9 selector:v13];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v20);
  }
}

void sub_273CA6E1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA6EDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher15setRuleSelectorElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"rule";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::setGroupingHeaderText(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v19[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v19[4] = a1;
    v19[5] = a2;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v18[3] = &__block_descriptor_48_e32_v16__0__RWIProtocolCSSGrouping_8l;
    v18[4] = a1;
    v18[5] = a2;
    v8 = [(RWIProtocolJSONObject *)[RWIProtocolCSSRuleId alloc] initWithJSONObject:a3];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    v11 = *a4;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v20, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v20 = &stru_2882B1C88;
      v17 = &stru_2882B1C88;
    }

    v13 = v20;
    v20 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v20;
      v20 = 0;
      if (v15)
      {
      }
    }

    return [*(a1 + 16) setGroupingHeaderTextWithErrorCallback:v19 successCallback:v18 ruleId:v9 headerText:v13];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v20);
  }
}

void sub_273CA72D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA7394(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher21setGroupingHeaderTextElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"grouping";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::createStyleSheet(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] createStyleSheetWithErrorCallback:v14 successCallback:v13 frameId:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CA7758(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA7818(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16createStyleSheetElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"styleSheetId"}];
  }

  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  MEMORY[0x2743DB520](&v7, a2);
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v7);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v6);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::addRule(id *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke;
    v22[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v22[4] = this;
    v22[5] = a2;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke_2;
    v21[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolCSSRule_8l;
    v21[4] = this;
    v21[5] = a2;
    v8 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v10 = v23;
    v23 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v23;
      v23 = 0;
      if (v12)
      {
      }
    }

    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v23 = &stru_2882B1C88;
      v20 = &stru_2882B1C88;
    }

    v15 = v23;
    v23 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v23;
      v23 = 0;
      if (v17)
      {
      }
    }

    return [this[2] addRuleWithErrorCallback:v22 successCallback:v21 styleSheetId:v10 selector:v15];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v23);
  }
}

void sub_273CA7B90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA7C70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher7addRuleElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"rule";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getSupportedCSSProperties(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] getSupportedCSSPropertiesWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CA7FC8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA8054(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher25getSupportedCSSPropertiesEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"cssProperties";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::getSupportedSystemFontFamilyNames(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] getSupportedSystemFontFamilyNamesWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CA84D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA855C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher33getSupportedSystemFontFamilyNamesEl_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v20 = @"fontFamilyNames";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  Inspector::toJSONStringArray(a2, &v21);
  v4 = v21;
  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v17;
    }
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorCSSBackendDispatcher::forcePseudoState(uint64_t a1, uint64_t a2, uint64_t a3, WTF::JSONImpl::ArrayBase **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a1;
    v12[5] = a2;
    v8 = *a4;
    *a4 = 0;
    v14 = v8;
    v9 = Inspector::toObjCStringArray(&v14);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v10;
      }
    }

    return [*(a1 + 16) forcePseudoStateWithErrorCallback:v13 successCallback:v12 nodeId:a3 forcedPseudoClasses:v9];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CA88F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA8998(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher16forcePseudoStateEliON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

atomic_uint *Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(id *this, uint64_t a2, const WTF::String *a3)
{
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = this;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = this;
    v12[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      v7 = *(v6 + 8);
      v8 = *(v6 + 4) | (((*(v6 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v7 = 0;
      v8 = 0x100000000;
    }

    v9 = &qword_279EAA820;
    v10 = 48;
    while ((WTF::operator==(v7, v8, *(v9 - 2), *(v9 - 1)) & 1) == 0)
    {
      v9 += 3;
      v10 -= 24;
      if (!v10)
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v14);
      }
    }

    return [this[2] setLayoutContextTypeChangedModeWithErrorCallback:v13 successCallback:v12 mode:*v9];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CA8C0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA8C9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorCSSBackendDispatcher31setLayoutContextTypeChangedModeElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getDocument(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e28_v16__0__RWIProtocolDOMNode_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] getDocumentWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CA8E70(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA8EFC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11getDocumentEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"root";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestChildNodes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke;
    v11[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke_2;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a1;
    v10[5] = a2;
    LODWORD(v12) = 0;
    if (*(a4 + 4) == 1)
    {
      LODWORD(v12) = *a4;
      v8 = &v12;
    }

    else
    {
      v8 = 0;
    }

    return [*(a1 + 16) requestChildNodesWithErrorCallback:v11 successCallback:v10 nodeId:a3 depth:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v12);
  }
}

void sub_273CA9284(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA9310(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17requestChildNodesEliONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestAssignedSlot(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e9_v16__0_i8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] requestAssignedSlotWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA94EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA9578(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::JSONImpl::ObjectBase *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19requestAssignedSlotEli_block_invoke_2(WTF::JSONImpl::Object *a1, unsigned int *a2)
{
  WTF::JSONImpl::Object::create(v6, a1);
  if (a2)
  {
    v4 = v6[0];
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v5 = v6[1];
    WTF::JSONImpl::ObjectBase::setInteger(v4, &v5, *a2);
    Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

_DWORD *WTF::JSONImpl::ObjectBase::setInteger(WTF::JSONImpl::ObjectBase *this, atomic_uint **a2, WTF::JSONImpl::Value *a3)
{
  WTF::JSONImpl::Value::create(&v10, a3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, &v11);
  if (v12 == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestAssignedNodes(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] requestAssignedNodesWithErrorCallback:v8 successCallback:v7 slotElementId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CA98AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA9938(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20requestAssignedNodesEli_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v20 = @"assignedNodeIds";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  Inspector::toJSONIntegerArray(a2, &v21);
  v4 = v21;
  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v17;
    }
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::querySelector(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e9_v16__0_i8l;
    v15[4] = this;
    v15[5] = a2;
    v8 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v17;
      v17 = 0;
      if (v12)
      {
      }
    }

    return [this[2] querySelectorWithErrorCallback:v16 successCallback:v15 nodeId:a3 selector:v10];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CA9D00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CA9DC0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::JSONImpl::ObjectBase *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13querySelectorEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, unsigned int *a2)
{
  WTF::JSONImpl::Object::create(v6, a1);
  if (a2)
  {
    v4 = v6[0];
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v5 = v6[1];
    WTF::JSONImpl::ObjectBase::setInteger(v4, &v5, *a2);
    Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  result = v6[0];
  v6[0] = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::querySelectorAll(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v15[4] = this;
    v15[5] = a2;
    v8 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v17;
      v17 = 0;
      if (v12)
      {
      }
    }

    return [this[2] querySelectorAllWithErrorCallback:v16 successCallback:v15 nodeId:a3 selector:v10];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CAA088(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAA148(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16querySelectorAllEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v20 = @"nodeIds";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  Inspector::toJSONIntegerArray(a2, &v21);
  v4 = v21;
  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v17;
    }
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setNodeName(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e8_v12__0i8l;
    v15[4] = this;
    v15[5] = a2;
    v8 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v17;
      v17 = 0;
      if (v12)
      {
      }
    }

    return [this[2] setNodeNameWithErrorCallback:v16 successCallback:v15 nodeId:a3 name:v10];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CAA510(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAA5D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11setNodeNameEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  WTF::JSONImpl::Object::create(v6, a1);
  v3 = v6[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v6[1];
  WTF::JSONImpl::ObjectBase::setInteger(v3, &v5, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v6);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setNodeValue(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = this;
    v15[5] = a2;
    v8 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v17;
      v17 = 0;
      if (v12)
      {
      }
    }

    return [this[2] setNodeValueWithErrorCallback:v16 successCallback:v15 nodeId:a3 value:v10];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CAA874(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAA934(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setNodeValueEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::removeNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] removeNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CAAB10(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAAB9C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher10removeNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setAttributeValue(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e5_v8__0l;
    v23[4] = this;
    v23[5] = a2;
    v10 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v12 = v25;
    v25 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = v25;
      v25 = 0;
      if (v14)
      {
      }
    }

    v15 = *a5;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v17 = v25;
    v25 = 0;
    if (v17)
    {
      v18 = v17;
      v19 = v25;
      v25 = 0;
      if (v19)
      {
      }
    }

    return [this[2] setAttributeValueWithErrorCallback:v24 successCallback:v23 nodeId:a3 name:v12 value:v17];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CAAE68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAAF48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17setAttributeValueEliRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setAttributesAsText(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  if (objc_opt_respondsToSelector())
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke;
    v25[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v25[4] = this;
    v25[5] = a2;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke_2;
    v24[3] = &__block_descriptor_48_e5_v8__0l;
    v24[4] = this;
    v24[5] = a2;
    v10 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v26, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v26 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v12 = v26;
    v26 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = v26;
      v26 = 0;
      if (v14)
      {
      }
    }

    v26 = 0;
    v15 = *a5;
    if (*a5)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }

      v17 = v23;
      v23 = 0;
      if (v17)
      {
        v18 = v17;
        v19 = v23;
        v26 = v17;
        v23 = 0;
        if (v19)
        {
        }
      }

      else
      {
        v26 = 0;
      }

      if (*a5)
      {
        v20 = &v26;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    return [this[2] setAttributesAsTextWithErrorCallback:v25 successCallback:v24 nodeId:a3 text:v12 name:{v20, v23}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v26);
  }
}

void sub_273CAB224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAB314(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher19setAttributesAsTextEliRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::removeAttribute(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = this;
    v15[5] = a2;
    v8 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v17;
      v17 = 0;
      if (v12)
      {
      }
    }

    return [this[2] removeAttributeWithErrorCallback:v16 successCallback:v15 nodeId:a3 name:v10];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CAB564(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAB624(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15removeAttributeEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getSupportedEventNames(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] getSupportedEventNamesWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CAB7F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAB884(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getSupportedEventNamesEl_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v20 = @"eventNames";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  Inspector::toJSONStringArray(a2, &v21);
  v4 = v21;
  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v17;
    }
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getDataBindingsForNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getDataBindingsForNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CABBD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CABC64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher22getDataBindingsForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"dataBindings";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getAssociatedDataForNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e9_v16__0__8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getAssociatedDataForNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CAC0E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAC174(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::JSONImpl::ObjectBase *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getAssociatedDataForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (a2)
  {
    if (!*a2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"associatedData"}];
    }

    v4 = v6;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v5 = v7;
    MEMORY[0x2743DB520](&v7, *a2);
    WTF::JSONImpl::ObjectBase::setString(v4, &v5, &v7);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  }

  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getEventListenersForNode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke;
    v11[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke_2;
    v10[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v10[4] = a1;
    v10[5] = a2;
    LOBYTE(v12) = 0;
    if (a4[1] == 1)
    {
      LOBYTE(v12) = *a4;
      v8 = &v12;
    }

    else
    {
      v8 = 0;
    }

    return [*(a1 + 16) getEventListenersForNodeWithErrorCallback:v11 successCallback:v10 nodeId:a3 includeAncestors:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v12);
  }
}

void sub_273CAC45C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAC4E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24getEventListenersForNodeEliONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  WTF::JSONImpl::Object::create(&v36, a1);
  if (!a2)
  {
    v27 = @"listeners";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v3)
  {
    v4 = *v33;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          v27 = NSStringFromClass(v9);
          v28 = v7;
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@"}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v3);
  }

  v10 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v37;
  Inspector::toJSONObjectArray(a2, &v29);
  v11 = v29;
  v29 = 0;
  v30 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v31, &v30, &v37);
  if (v38 == 1)
  {
    v19 = *(v10 + 9);
    if (v19 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v31);
    }

    else
    {
      v20 = v10[3];
      v21 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
      }

      v22 = *(v10 + 9);
      *(v20 + 8 * v19) = v21;
      *(v10 + 9) = v22 + 1;
    }
  }

  v23 = v30;
  v30 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23, v12, v13, v14, v15, v16, v17, v18, v27, v28);
  }

  v24 = v29;
  v29 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v31;
  v31 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v12);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v36);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setEventListenerDisabled(id *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [this[2] setEventListenerDisabledWithErrorCallback:v10 successCallback:v9 eventListenerId:a3 disabled:a4];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CAC974(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CACA00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24setEventListenerDisabledElib_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setBreakpointForEventListener(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (objc_opt_respondsToSelector())
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v17[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v17[4] = a1;
    v17[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v16[3] = &__block_descriptor_48_e5_v8__0l;
    v16[4] = a1;
    v16[5] = a2;
    v18 = 0;
    if (*a4)
    {
      v8 = [RWIProtocolDebuggerBreakpointOptions alloc];
      v15 = *a4;
      *a4 = 0;
      v9 = [(RWIProtocolJSONObject *)v8 initWithJSONObject:&v15];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      v18 = v10;
      v12 = v15;
      v15 = 0;
      if (v12)
      {
        if (*v12 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v12;
        }
      }

      if (*a4)
      {
        v13 = &v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    return [*(a1 + 16) setBreakpointForEventListenerWithErrorCallback:v17 successCallback:v16 eventListenerId:a3 options:{v13, v15}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v18);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CACD04(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher29setBreakpointForEventListenerEliON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::removeBreakpointForEventListener(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] removeBreakpointForEventListenerWithErrorCallback:v8 successCallback:v7 eventListenerId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CACEE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CACF6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher32removeBreakpointForEventListenerEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getAccessibilityPropertiesForNode(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e47_v16__0__RWIProtocolDOMAccessibilityProperties_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getAccessibilityPropertiesForNodeWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CAD148(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAD1D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher33getAccessibilityPropertiesForNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"properties";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getOuterHTML(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getOuterHTMLWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CAD52C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAD5B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12getOuterHTMLEli_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  WTF::JSONImpl::Object::create(&v6, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"outerHTML"}];
  }

  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  MEMORY[0x2743DB520](&v7, a2);
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v7);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v7);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v6);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setOuterHTML(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = this;
    v15[5] = a2;
    v8 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v10 = v17;
    v17 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = v17;
      v17 = 0;
      if (v12)
      {
      }
    }

    return [this[2] setOuterHTMLWithErrorCallback:v16 successCallback:v15 nodeId:a3 outerHTML:v10];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CAD8C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAD984(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher12setOuterHTMLEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::insertAdjacentHTML(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e5_v8__0l;
    v23[4] = this;
    v23[5] = a2;
    v10 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v12 = v25;
    v25 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = v25;
      v25 = 0;
      if (v14)
      {
      }
    }

    v15 = *a5;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v17 = v25;
    v25 = 0;
    if (v17)
    {
      v18 = v17;
      v19 = v25;
      v25 = 0;
      if (v19)
      {
      }
    }

    return [this[2] insertAdjacentHTMLWithErrorCallback:v24 successCallback:v23 nodeId:a3 position:v12 html:v17];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CADC50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CADD30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher18insertAdjacentHTMLEliRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::performSearch(uint64_t a1, uint64_t a2, atomic_uint **a3, WTF::JSONImpl::ArrayBase **a4, _BYTE *a5)
{
  if (objc_opt_respondsToSelector())
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke;
    v30[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v30[4] = a1;
    v30[5] = a2;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke_2;
    v29[3] = &__block_descriptor_48_e21_v20__0__NSString_8i16l;
    v29[4] = a1;
    v29[5] = a2;
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v31, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v31 = &stru_2882B1C88;
      v27 = &stru_2882B1C88;
    }

    v12 = v31;
    v31 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = v31;
      v31 = 0;
      if (v14)
      {
      }
    }

    v31 = 0;
    v15 = *a4;
    if (*a4)
    {
      *a4 = 0;
      v28 = v15;
      v31 = Inspector::toObjCIntegerArray(&v28);
      v23 = v28;
      v28 = 0;
      if (v23)
      {
        Inspector::toJSONObjectArray(v23, v16, v17, v18, v19, v20, v21, v22, v28, v29[0]);
      }
    }

    LOBYTE(v28) = 0;
    if (a5[1] == 1)
    {
      LOBYTE(v28) = *a5;
      v24 = &v28;
    }

    else
    {
      v24 = 0;
    }

    if (*a4)
    {
      v25 = &v31;
    }

    else
    {
      v25 = 0;
    }

    return [*(a1 + 16) performSearchWithErrorCallback:v30 successCallback:v29 query:v12 nodeIds:v25 caseSensitive:{v24, v28}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v31);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAE0C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13performSearchElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, WTF::JSONImpl::Value *a3)
{
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"searchId"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v8, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v8);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v8);
  v6 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  WTF::JSONImpl::ObjectBase::setInteger(v6, &v9, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getSearchResults(id *this, uint64_t a2, atomic_uint **a3, uint64_t a4, uint64_t a5)
{
  if (objc_opt_respondsToSelector())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke;
    v18[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v18[4] = this;
    v18[5] = a2;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke_2;
    v17[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v17[4] = this;
    v17[5] = a2;
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v19, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v19 = &stru_2882B1C88;
      v16 = &stru_2882B1C88;
    }

    v12 = v19;
    v19 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = v19;
      v19 = 0;
      if (v14)
      {
      }
    }

    return [this[2] getSearchResultsWithErrorCallback:v18 successCallback:v17 searchId:v12 fromIndex:a4 toIndex:a5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v19);
  }
}

void sub_273CAE42C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAE4EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16getSearchResultsElRKN3WTF6StringEii_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v20 = @"nodeIds";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  Inspector::toJSONIntegerArray(a2, &v21);
  v4 = v21;
  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v20, v21);
  }

  v17 = v21;
  v21 = 0;
  if (v17)
  {
    if (*v17 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v17;
    }
  }

  v18 = v23;
  v23 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::discardSearchResults(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] discardSearchResultsWithErrorCallback:v14 successCallback:v13 searchId:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CAE8AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAE96C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher20discardSearchResultsElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::requestNode(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e8_v12__0i8l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] requestNodeWithErrorCallback:v14 successCallback:v13 objectId:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CAEBB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAEC74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11requestNodeElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  WTF::JSONImpl::Object::create(v6, a1);
  v3 = v6[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v6[1];
  WTF::JSONImpl::ObjectBase::setInteger(v3, &v5, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v6);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setInspectModeEnabled(uint64_t a1, uint64_t a2, uint64_t a3, RWIProtocolDOMGridOverlayConfig **a4, RWIProtocolDOMFlexOverlayConfig **a5, void *a6)
{
  if (objc_opt_respondsToSelector())
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke;
    v35[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v35[4] = a1;
    v35[5] = a2;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke_2;
    v34[3] = &__block_descriptor_48_e5_v8__0l;
    v34[4] = a1;
    v34[5] = a2;
    v36 = 0;
    if (*a4)
    {
      v12 = [RWIProtocolDOMHighlightConfig alloc];
      v33 = *a4;
      *a4 = 0;
      v13 = [(RWIProtocolJSONObject *)v12 initWithJSONObject:&v33];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      v36 = v14;
      v16 = v33;
      v33 = 0;
      if (v16)
      {
        if (LODWORD(v16->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v16->super.super.isa);
        }
      }
    }

    v33 = 0;
    if (*a5)
    {
      v17 = [RWIProtocolDOMGridOverlayConfig alloc];
      v32 = *a5;
      *a5 = 0;
      v18 = [(RWIProtocolJSONObject *)v17 initWithJSONObject:&v32];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      v21 = v32;
      v32 = 0;
      v33 = v19;
      if (v21)
      {
        if (LODWORD(v21->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v21->super.super.isa);
        }
      }
    }

    v32 = 0;
    if (*a6)
    {
      v22 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v31 = *a6;
      *a6 = 0;
      v23 = [(RWIProtocolJSONObject *)v22 initWithJSONObject:&v31];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      v26 = v31;
      v31 = 0;
      v32 = v24;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v26;
        }
      }

      if (*a6)
      {
        v27 = &v32;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    if (*a4)
    {
      v28 = &v36;
    }

    else
    {
      v28 = 0;
    }

    if (*a5)
    {
      v29 = &v33;
    }

    else
    {
      v29 = 0;
    }

    return [*(a1 + 16) setInspectModeEnabledWithErrorCallback:v35 successCallback:v34 enabled:a3 highlightConfig:v28 gridOverlayConfig:v29 flexOverlayConfig:{v27, v31, v32, v33}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v36);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAF0F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher21setInspectModeEnabledElbON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_SA__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, RWIProtocolDOMRGBAColor **a7, void *a8, _BYTE *a9)
{
  if (objc_opt_respondsToSelector())
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke;
    v34[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v34[4] = a1;
    v34[5] = a2;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke_2;
    v33[3] = &__block_descriptor_48_e5_v8__0l;
    v33[4] = a1;
    v33[5] = a2;
    v35 = 0;
    if (*a7)
    {
      v17 = [RWIProtocolDOMRGBAColor alloc];
      v32 = *a7;
      *a7 = 0;
      v18 = [(RWIProtocolJSONObject *)v17 initWithJSONObject:&v32];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      v35 = v19;
      v21 = v32;
      v32 = 0;
      if (v21)
      {
        if (LODWORD(v21->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v21->super.super.isa);
        }
      }
    }

    v32 = 0;
    if (*a8)
    {
      v22 = [RWIProtocolDOMRGBAColor alloc];
      v31 = *a8;
      *a8 = 0;
      v23 = [(RWIProtocolJSONObject *)v22 initWithJSONObject:&v31];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      v26 = v31;
      v31 = 0;
      v32 = v24;
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v26;
        }
      }
    }

    LOBYTE(v31) = 0;
    if (a9[1] == 1)
    {
      LOBYTE(v31) = *a9;
      v27 = &v31;
    }

    else
    {
      v27 = 0;
    }

    v28 = &v35;
    if (!*a7)
    {
      v28 = 0;
    }

    v29 = &v32;
    if (!*a8)
    {
      v29 = 0;
    }

    return [*(a1 + 16) highlightRectWithErrorCallback:v34 successCallback:v33 x:a3 y:a4 width:a5 height:a6 color:v28 outlineColor:v29 usePageCoordinates:{v27, v31, v32}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v35);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAF4DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightRectEliiiiON3WTF6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEESA_ONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightQuad(uint64_t a1, uint64_t a2, WTF::JSONImpl::ArrayBase **a3, RWIProtocolDOMRGBAColor **a4, void *a5, _BYTE *a6)
{
  if (objc_opt_respondsToSelector())
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke;
    v32[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v32[4] = a1;
    v32[5] = a2;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke_2;
    v31[3] = &__block_descriptor_48_e5_v8__0l;
    v31[4] = a1;
    v31[5] = a2;
    v12 = *a3;
    *a3 = 0;
    v33 = v12;
    v13 = Inspector::toObjCIntegerArray(&v33);
    v14 = v33;
    v33 = 0;
    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v14;
      }
    }

    v33 = 0;
    if (*a4)
    {
      v15 = [RWIProtocolDOMRGBAColor alloc];
      v30 = *a4;
      *a4 = 0;
      v16 = [(RWIProtocolJSONObject *)v15 initWithJSONObject:&v30];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      v33 = v17;
      v19 = v30;
      v30 = 0;
      if (v19)
      {
        if (LODWORD(v19->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v19->super.super.isa);
        }
      }
    }

    v30 = 0;
    if (*a5)
    {
      v20 = [RWIProtocolDOMRGBAColor alloc];
      v29 = *a5;
      *a5 = 0;
      v21 = [(RWIProtocolJSONObject *)v20 initWithJSONObject:&v29];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      v24 = v29;
      v29 = 0;
      v30 = v22;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v24;
        }
      }
    }

    LOBYTE(v29) = 0;
    if (a6[1] == 1)
    {
      LOBYTE(v29) = *a6;
      v25 = &v29;
    }

    else
    {
      v25 = 0;
    }

    if (*a4)
    {
      v26 = &v33;
    }

    else
    {
      v26 = 0;
    }

    if (*a5)
    {
      v27 = &v30;
    }

    else
    {
      v27 = 0;
    }

    return [*(a1 + 16) highlightQuadWithErrorCallback:v32 successCallback:v31 quad:v13 color:v26 outlineColor:v27 usePageCoordinates:v25];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v33);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAF8F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightQuadElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS1_6RefPtrINS3_6ObjectENS5_ISC_EENS7_ISC_EEEESG_ONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightSelector(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5, RWIProtocolDOMFlexOverlayConfig **a6, RWIProtocolDOMFlexOverlayConfig ***a7)
{
  if (objc_opt_respondsToSelector())
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke;
    v46[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v46[4] = a1;
    v46[5] = a2;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke_2;
    v45[3] = &__block_descriptor_48_e5_v8__0l;
    v45[4] = a1;
    v45[5] = a2;
    v14 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v47, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v47 = &stru_2882B1C88;
      v41 = &stru_2882B1C88;
    }

    v16 = v47;
    v47 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v47;
      v47 = 0;
      if (v18)
      {
      }
    }

    v47 = 0;
    v19 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v44, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }

      v21 = v44;
      v44 = 0;
      if (v21)
      {
        v22 = v21;
        v23 = v44;
        v47 = v21;
        v44 = 0;
        if (v23)
        {
        }
      }

      else
      {
        v47 = 0;
      }
    }

    v24 = [(RWIProtocolJSONObject *)[RWIProtocolDOMHighlightConfig alloc] initWithJSONObject:a5];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    v44 = 0;
    if (*a6)
    {
      v27 = [RWIProtocolDOMGridOverlayConfig alloc];
      v43 = *a6;
      *a6 = 0;
      v28 = [(RWIProtocolJSONObject *)v27 initWithJSONObject:&v43];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      v31 = v43;
      v43 = 0;
      v44 = v29;
      if (v31)
      {
        if (LODWORD(v31->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v31->super.super.isa);
        }
      }
    }

    v43 = 0;
    v32 = *a7;
    if (*a7)
    {
      v33 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v42 = *a7;
      *a7 = 0;
      v34 = [(RWIProtocolJSONObject *)v33 initWithJSONObject:&v42];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      v37 = v42;
      v42 = 0;
      v43 = v35;
      if (v37)
      {
        if (*v37 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v37;
        }
      }

      v32 = &v43;
      if (!*a7)
      {
        v32 = 0;
      }
    }

    if (*a4)
    {
      v38 = &v47;
    }

    else
    {
      v38 = 0;
    }

    if (*a6)
    {
      v39 = &v44;
    }

    else
    {
      v39 = 0;
    }

    return [*(a1 + 16) highlightSelectorWithErrorCallback:v46 successCallback:v45 selectorString:v16 frameId:v38 highlightConfig:v25 gridOverlayConfig:v39 flexOverlayConfig:v32];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v47);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CAFE0C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightSelectorElRKN3WTF6StringES4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEEONS1_6RefPtrIS7_S9_SB_EESG__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightNode(uint64_t a1, uint64_t a2, int *a3, atomic_uint **a4, uint64_t a5, RWIProtocolDOMFlexOverlayConfig **a6, RWIProtocolDOMFlexOverlayConfig ***a7)
{
  if (objc_opt_respondsToSelector())
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke;
    v42[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v42[4] = a1;
    v42[5] = a2;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke_2;
    v41[3] = &__block_descriptor_48_e5_v8__0l;
    v41[4] = a1;
    v41[5] = a2;
    v40 = 0;
    if (*(a3 + 4) == 1)
    {
      v40 = *a3;
    }

    v43 = 0;
    v14 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v39, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }

      v16 = v39;
      v39 = 0;
      if (v16)
      {
        v17 = v16;
        v18 = v39;
        v43 = v16;
        v39 = 0;
        if (v18)
        {
        }
      }

      else
      {
        v43 = 0;
      }
    }

    v19 = [(RWIProtocolJSONObject *)[RWIProtocolDOMHighlightConfig alloc] initWithJSONObject:a5];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    v39 = 0;
    if (*a6)
    {
      v22 = [RWIProtocolDOMGridOverlayConfig alloc];
      v38 = *a6;
      *a6 = 0;
      v23 = [(RWIProtocolJSONObject *)v22 initWithJSONObject:&v38];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      v26 = v38;
      v38 = 0;
      v39 = v24;
      if (v26)
      {
        if (LODWORD(v26->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v26->super.super.isa);
        }
      }
    }

    v38 = 0;
    v27 = *a7;
    if (*a7)
    {
      v28 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v37 = *a7;
      *a7 = 0;
      v29 = [(RWIProtocolJSONObject *)v28 initWithJSONObject:&v37];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      v32 = v37;
      v37 = 0;
      v38 = v30;
      if (v32)
      {
        if (*v32 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v32;
        }
      }

      v27 = &v38;
      if (!*a7)
      {
        v27 = 0;
      }
    }

    if (*(a3 + 4))
    {
      v33 = &v40;
    }

    else
    {
      v33 = 0;
    }

    if (*a4)
    {
      v34 = &v43;
    }

    else
    {
      v34 = 0;
    }

    if (*a6)
    {
      v35 = &v39;
    }

    else
    {
      v35 = 0;
    }

    return [*(a1 + 16) highlightNodeWithErrorCallback:v42 successCallback:v41 nodeId:v33 objectId:v34 highlightConfig:v20 gridOverlayConfig:v35 flexOverlayConfig:{v27, v37, v38, v39}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v43);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB02B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13highlightNodeElONSt3__18optionalIiEERKN3WTF6StringEONS5_3RefINS5_8JSONImpl6ObjectENS5_12RawPtrTraitsISB_EENS5_21DefaultRefDerefTraitsISB_EEEEONS5_6RefPtrISB_SD_SF_EESK__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightNodeList(uint64_t a1, uint64_t a2, WTF::JSONImpl::ArrayBase **a3, uint64_t a4, RWIProtocolDOMFlexOverlayConfig **a5, void *a6)
{
  if (objc_opt_respondsToSelector())
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke;
    v34[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v34[4] = a1;
    v34[5] = a2;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke_2;
    v33[3] = &__block_descriptor_48_e5_v8__0l;
    v33[4] = a1;
    v33[5] = a2;
    v12 = *a3;
    *a3 = 0;
    v35 = v12;
    v13 = Inspector::toObjCIntegerArray(&v35);
    v14 = v35;
    v35 = 0;
    if (v14)
    {
      if (*v14 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v14;
      }
    }

    v15 = [(RWIProtocolJSONObject *)[RWIProtocolDOMHighlightConfig alloc] initWithJSONObject:a4];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    v35 = 0;
    if (*a5)
    {
      v18 = [RWIProtocolDOMGridOverlayConfig alloc];
      v32 = *a5;
      *a5 = 0;
      v19 = [(RWIProtocolJSONObject *)v18 initWithJSONObject:&v32];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      v35 = v20;
      v22 = v32;
      v32 = 0;
      if (v22)
      {
        if (LODWORD(v22->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v22->super.super.isa);
        }
      }
    }

    v32 = 0;
    if (*a6)
    {
      v23 = [RWIProtocolDOMFlexOverlayConfig alloc];
      v31 = *a6;
      *a6 = 0;
      v24 = [(RWIProtocolJSONObject *)v23 initWithJSONObject:&v31];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      v27 = v31;
      v31 = 0;
      v32 = v25;
      if (v27)
      {
        if (*v27 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v27;
        }
      }

      if (*a6)
      {
        v28 = &v32;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    if (*a5)
    {
      v29 = &v35;
    }

    else
    {
      v29 = 0;
    }

    return [*(a1 + 16) highlightNodeListWithErrorCallback:v34 successCallback:v33 nodeIds:v13 highlightConfig:v16 gridOverlayConfig:v29 flexOverlayConfig:v28];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v35);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB06CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17highlightNodeListElON3WTF3RefINS1_8JSONImpl5ArrayENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONS2_INS3_6ObjectENS5_ISB_EENS7_ISB_EEEEONS1_6RefPtrISB_SC_SD_EESI__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::hideHighlight(id *this, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke;
    v6[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v6[4] = this;
    v6[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke_2;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = this;
    v5[5] = a2;
    return [this[2] hideHighlightWithErrorCallback:v6 successCallback:v5];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v7);
  }
}

void sub_273CB08A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB092C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightFrame(uint64_t a1, uint64_t a2, atomic_uint **a3, RWIProtocolDOMRGBAColor **a4, void *a5)
{
  if (objc_opt_respondsToSelector())
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke;
    v32[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v32[4] = a1;
    v32[5] = a2;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke_2;
    v31[3] = &__block_descriptor_48_e5_v8__0l;
    v31[4] = a1;
    v31[5] = a2;
    v10 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v33, v10);
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v11);
      }
    }

    else
    {
      v33 = &stru_2882B1C88;
      v28 = &stru_2882B1C88;
    }

    v12 = v33;
    v33 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = v33;
      v33 = 0;
      if (v14)
      {
      }
    }

    v33 = 0;
    if (*a4)
    {
      v15 = [RWIProtocolDOMRGBAColor alloc];
      v30 = *a4;
      *a4 = 0;
      v16 = [(RWIProtocolJSONObject *)v15 initWithJSONObject:&v30];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      v33 = v17;
      v19 = v30;
      v30 = 0;
      if (v19)
      {
        if (LODWORD(v19->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v19->super.super.isa);
        }
      }
    }

    v30 = 0;
    if (*a5)
    {
      v20 = [RWIProtocolDOMRGBAColor alloc];
      v29 = *a5;
      *a5 = 0;
      v21 = [(RWIProtocolJSONObject *)v20 initWithJSONObject:&v29];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      v24 = v29;
      v29 = 0;
      v30 = v22;
      if (v24)
      {
        if (*v24 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v24;
        }
      }

      if (*a5)
      {
        v25 = &v30;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    if (*a4)
    {
      v26 = &v33;
    }

    else
    {
      v26 = 0;
    }

    return [*(a1 + 16) highlightFrameWithErrorCallback:v32 successCallback:v31 frameId:v12 contentColor:v26 contentOutlineColor:v25];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v33);
  }
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB0D64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::showGridOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a1;
    v12[5] = a2;
    v8 = [(RWIProtocolJSONObject *)[RWIProtocolDOMGridOverlayConfig alloc] initWithJSONObject:a4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    return [*(a1 + 16) showGridOverlayWithErrorCallback:v13 successCallback:v12 nodeId:a3 gridOverlayConfig:v9];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CB0F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB0FF8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::hideGridOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke;
    v9[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v9[4] = a1;
    v9[5] = a2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke_2;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = a1;
    v8[5] = a2;
    LODWORD(v10) = 0;
    if (*(a3 + 4) == 1)
    {
      LODWORD(v10) = *a3;
      v6 = &v10;
    }

    else
    {
      v6 = 0;
    }

    return [*(a1 + 16) hideGridOverlayWithErrorCallback:v9 successCallback:v8 nodeId:v6];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v10);
  }
}

void sub_273CB11F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB1280(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::showFlexOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a1;
    v12[5] = a2;
    v8 = [(RWIProtocolJSONObject *)[RWIProtocolDOMFlexOverlayConfig alloc] initWithJSONObject:a4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    return [*(a1 + 16) showFlexOverlayWithErrorCallback:v13 successCallback:v12 nodeId:a3 flexOverlayConfig:v9];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CB1488(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB1514(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::hideFlexOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke;
    v9[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v9[4] = a1;
    v9[5] = a2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke_2;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = a1;
    v8[5] = a2;
    LODWORD(v10) = 0;
    if (*(a3 + 4) == 1)
    {
      LODWORD(v10) = *a3;
      v6 = &v10;
    }

    else
    {
      v6 = 0;
    }

    return [*(a1 + 16) hideFlexOverlayWithErrorCallback:v9 successCallback:v8 nodeId:v6];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v10);
  }
}

void sub_273CB1710(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB179C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  WTF::JSONImpl::Object::create(&v2, a1);
  Inspector::BackendDispatcher::sendResponse();
  result = v2;
  v2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::pushNodeByPathToFrontend(id *this, uint64_t a2, atomic_uint **a3)
{
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke;
    v14[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v14[4] = this;
    v14[5] = a2;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke_2;
    v13[3] = &__block_descriptor_48_e8_v12__0i8l;
    v13[4] = this;
    v13[5] = a2;
    v6 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v15 = &stru_2882B1C88;
      v12 = &stru_2882B1C88;
    }

    v8 = v15;
    v15 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = v15;
      v15 = 0;
      if (v10)
      {
      }
    }

    return [this[2] pushNodeByPathToFrontendWithErrorCallback:v14 successCallback:v13 path:v8];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v15);
  }
}

void sub_273CB19E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB1AA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  WTF::JSONImpl::Object::create(v6, a1);
  v3 = v6[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v6[1];
  WTF::JSONImpl::ObjectBase::setInteger(v3, &v5, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v6);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::resolveNode(id *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  if (objc_opt_respondsToSelector())
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke;
    v17[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v17[4] = this;
    v17[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke_2;
    v16[3] = &__block_descriptor_48_e40_v16__0__RWIProtocolRuntimeRemoteObject_8l;
    v16[4] = this;
    v16[5] = a2;
    v18 = 0;
    v8 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }

      v10 = v15;
      v15 = 0;
      if (v10)
      {
        v11 = v10;
        v12 = v15;
        v18 = v10;
        v15 = 0;
        if (v12)
        {
        }
      }

      else
      {
        v18 = 0;
      }

      if (*a4)
      {
        v13 = &v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    return [this[2] resolveNodeWithErrorCallback:v17 successCallback:v16 nodeId:a3 objectGroup:{v13, v15}];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v18);
  }
}

void sub_273CB1D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  MEMORY[0x2743DB520](&v2);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v2);
}

void sub_273CB1E18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  WTF::JSONImpl::Object::create(&v24, a1);
  if (!a2)
  {
    v19 = @"object";
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  v3 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v25;
  if (a2)
  {
    objc_msgSend_toJSONObject(a2);
    v4 = v20;
  }

  else
  {
    v4 = 0;
  }

  v21 = 0;
  v22 = v4;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v3 + 2, &v23, &v22, &v25);
  if (v26 == 1)
  {
    v12 = *(v3 + 9);
    if (v12 == *(v3 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v3 + 3), &v23);
    }

    else
    {
      v13 = v3[3];
      v14 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v15 = *(v3 + 9);
      *(v13 + 8 * v12) = v14;
      *(v3 + 9) = v15 + 1;
    }
  }

  v16 = v22;
  v22 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16, v5, v6, v7, v8, v9, v10, v11, v19, 0);
  }

  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v17 = v23;
  v23 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v5);
  }

  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v24);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getAttributes(id *this, uint64_t a2, uint64_t a3)
{
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [this[2] getAttributesWithErrorCallback:v8 successCallback:v7 nodeId:a3];
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB2178(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}