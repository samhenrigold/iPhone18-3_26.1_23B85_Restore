id RPNSOperatingSystemVersionToString(uint64_t *a1)
{
  v3 = *a1;
  if (*a1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v6[1] = v1;
    v7 = v2;
    v6[0] = 0;
    NSAppendPrintF(v6, "%d.%d.%d", v3, a1[1], a1[2]);
    v4 = v6[0];
  }

  return v4;
}

uint64_t formatSensitiveData(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E696AD60] stringWithCString:a1 encoding:4];
  v4 = v3;
  if (a2)
  {
    v5 = @"'%@'";
  }

  else
  {
    v5 = @"'%~@'";
  }

  [v3 appendString:v5];
  v6 = [v4 UTF8String];

  return v6;
}

BOOL shouldPrintSensitiveData(uint64_t a1, uint64_t a2)
{
  if (shouldPrintSensitiveData_onceToken != -1)
  {
    shouldPrintSensitiveData_cold_1();
  }

  return (shouldPrintSensitiveData_sensitive & 1) == 0;
}

void OUTLINED_FUNCTION_3_2(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, uint64_t a14)
{
  a11 = v15;
  a12 = v14;
  a13 = a1;
  a14 = a3;

  [(RPNWActivityMetrics *)a1 _withLock:?];
}

id RPErrorF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = NSErrorV();

  return v9;
}

id RPConnectionLog(uint64_t a1)
{
  if (RPConnectionLog_onceToken != -1)
  {
    RPConnectionLog_cold_1();
  }

  v2 = RPConnectionLog___logger;

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  [(RPNWActivityMetrics *)v9 _withLock:?];
}

void OUTLINED_FUNCTION_6_0(os_unfair_lock_s *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, int a14)
{
  a11 = v15;
  a12 = v14;
  a13 = a1;
  a14 = a3;

  [(RPNWActivityMetrics *)a1 _withLock:?];
}

void sub_1B6E886EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(*a1 + 40);
  *a5 = v6;

  return v6;
}

void OUTLINED_FUNCTION_4_0()
{

  _Block_object_dispose(v0, 8);
}

void sub_1B6E88898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6E88C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6E88CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6E88DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id RPDecodeNSError(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  CFDictionaryGetInt64Ranged();
  v31 = 0;
  v32 = 0;
  v22 = v1;
  v30 = v1;
  if (!v30)
  {
    v31 = 0;
    goto LABEL_6;
  }

  CFDictionaryGetTypeID();
  v31 = CFDictionaryGetTypedValue();
  if (!v31)
  {
LABEL_6:
    TypedValue = 0;
    v32 = 0;
    goto LABEL_7;
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v32 = TypedValue;
  if (TypedValue)
  {
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
  }

LABEL_7:
  v3 = 0;
  v33 = TypedValue;
  v4 = *MEMORY[0x1E696A768];
  v5 = 24;
  v23 = *MEMORY[0x1E696AA08];
  do
  {
    v6 = *(&v30 + v5);
    if (v6)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      CFStringGetTypeID();
      v8 = CFDictionaryGetTypedValue();
      CFStringGetTypeID();
      v9 = CFDictionaryGetTypedValue();
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      if (v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v4;
      }

      v12 = [v9 length];
      if (v3)
      {
        if (v12)
        {
          v28[0] = v23;
          v28[1] = @"cuErrorMsg";
          v29[0] = v3;
          v29[1] = v9;
          v13 = MEMORY[0x1E695DF20];
          v14 = v29;
          v15 = v28;
          v16 = 2;
        }

        else
        {
          v26 = v23;
          v27 = v3;
          v13 = MEMORY[0x1E695DF20];
          v14 = &v27;
          v15 = &v26;
          v16 = 1;
        }

        v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
        v19 = [v10 initWithDomain:v11 code:Int64Ranged userInfo:v18];

        v3 = v19;
      }

      else if (v12)
      {
        v24 = @"cuErrorMsg";
        v25 = v9;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v3 = [v10 initWithDomain:v11 code:Int64Ranged userInfo:v17];
      }

      else
      {
        v3 = [v10 initWithDomain:v11 code:Int64Ranged userInfo:0];
      }
    }

    v5 -= 8;
  }

  while (v5 != -8);
  for (i = 24; i != -8; i -= 8)
  {
  }

  return v3;
}

void *RPProcessIDToNameString(uint64_t a1)
{
  v7 = 0;
  NSAppendPrintF(&v7, "%#{pid}", a1);
  v1 = v7;
  v2 = [v1 rangeOfString:@":"];
  v3 = 0;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringWithRange:{0, v2}];
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

uint64_t sub_1B6E89D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6F22848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B6E89DC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B6F22848();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B6E89E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B6E89FB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B6E8A0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6F22998();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B6E8A14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6F22998();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B6E8A24C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1B6E8A2F0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v7 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B6E8A390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6F22848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B6E8A480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B6F22848();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B6E8A57C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B6E8A58C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6E8A5C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6E8A600()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6E8A638()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B6E8A688()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

Class initSFService()
{
  if (SharingLibrary_sOnce != -1)
  {
    initSFService_cold_1();
  }

  result = objc_getClass("SFService");
  classSFService = result;
  getSFServiceClass = SFServiceFunction;
  return result;
}

void *__SharingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  SharingLibrary_sLib = result;
  return result;
}

void sub_1B6E8FFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

nw_protocol_definition_t nwrapport_copy_protocol_definition()
{
  definition = nw_framer_create_definition("rapport-client-peer", 0, &__block_literal_global_51);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "registering rapport peer protocol", v2, 2u);
  }

  return definition;
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3010000000;
  v12[4] = 0;
  v12[5] = 0;
  v12[3] = "";
  v3 = nw_framer_message_create(v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __nwrapport_copy_protocol_definition_block_invoke_2;
  v7[3] = &unk_1E7C930F8;
  v10 = v13;
  v11 = v12;
  v4 = v2;
  v8 = v4;
  v5 = v3;
  v9 = v5;
  nw_framer_set_input_handler(v4, v7);
  nw_framer_set_output_handler(v4, &__block_literal_global_59);
  nw_framer_set_stop_handler(v4, &__block_literal_global_63);
  nw_framer_set_cleanup_handler(v4, &__block_literal_global_66);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);

  return 2;
}

void sub_1B6E90828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(*(v4 + 8) + 24);
  v6 = 16;
  v7 = MEMORY[0x1E69E9C10];
  do
  {
    if (v5)
    {
      break;
    }

    parse[0] = MEMORY[0x1E69E9820];
    parse[1] = 3221225472;
    parse[2] = __nwrapport_copy_protocol_definition_block_invoke_3;
    parse[3] = &unk_1E7C930D0;
    parse[5] = v4;
    parse[6] = 16;
    parse[4] = *(a1 + 56);
    if (!nw_framer_parse_input(v3, 0x10uLL, 0x10uLL, 0, parse))
    {
      goto LABEL_31;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [RPNWFramer controlCodeToString:*(*(*(a1 + 56) + 8) + 32)];
      v9 = *(*(*(a1 + 56) + 8) + 33);
      v10 = strerror(v9);
      v11 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315906;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v10;
      v26 = 2048;
      v27 = v11;
      _os_log_debug_impl(&dword_1B6E85000, v7, OS_LOG_TYPE_DEBUG, "Client RX framer msg header={%s error: %d (%s), length: %zu}", buf, 0x26u);
    }

    v5 = 0;
    v4 = *(a1 + 48);
  }

  while ((*(*(v4 + 8) + 24) & 1) == 0);
  v12 = nw_framer_connection_state_copy_object_value();
  v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v13)
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_1();
    }

    v14 = *(*(a1 + 56) + 8);
    if (!*(v14 + 32) && *(v14 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __nwrapport_copy_protocol_definition_block_invoke_2_cold_2();
      }

      nw_framer_deliver_input_no_copy(v3, *(*(*(a1 + 56) + 8) + 40), *(a1 + 40), 0);
      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_3();
    }

    v15 = *(a1 + 32);
    v16 = *(*(*(a1 + 56) + 8) + 33);
  }

  else
  {
    if (v13)
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_4();
    }

    if (*(*(*(a1 + 56) + 8) + 36) == 320017171)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __nwrapport_copy_protocol_definition_block_invoke_2_cold_6();
      }

      nw_framer_connection_state_set_object_value();
      nw_framer_mark_ready(*(a1 + 32));
      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_5();
    }

    v17 = *(*(a1 + 56) + 8);
    v16 = *(v17 + 33);
    if (!*(v17 + 33))
    {
      *(v17 + 33) = 53;
      v16 = *(*(*(a1 + 56) + 8) + 33);
    }

    v15 = *(a1 + 32);
  }

  nw_framer_mark_failed_with_error(v15, v16);
LABEL_30:
  *(*(*(a1 + 48) + 8) + 24) = 0;

  v6 = 0;
LABEL_31:

  return v6;
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke_3(void *a1, _OWORD *a2, unint64_t a3)
{
  if (!a2 || a1[6] > a3)
  {
    return 0;
  }

  *(*(a1[4] + 8) + 32) = *a2;
  v4 = a1[5];
  result = a1[6];
  *(*(v4 + 8) + 24) = 1;
  return result;
}

void __nwrapport_copy_protocol_definition_block_invoke_57(uint64_t a1, void *a2, uint64_t a3, size_t a4)
{
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __nwrapport_copy_protocol_definition_block_invoke_57_cold_1();
  }

  v6[0] = 0;
  v6[1] = a4;
  nw_framer_write_output(v5, v6, 0x10uLL);
  nw_framer_write_output_no_copy(v5, a4);
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __nwrapport_copy_protocol_definition_block_invoke_60_cold_1(v2);
  }

  [RPNWFramer writeControlOnFramer:v2 type:3 error:0 token:0];

  return 1;
}

void __nwrapport_copy_protocol_definition_block_invoke_64(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cleanup handler called for framer=%@", &v3, 0xCu);
  }
}

uint64_t RPCompanionLinkFlagsToShortString(__int16 a1, uint64_t a2)
{
  v2 = vdupq_n_s32(a1);
  *a2 = vuzp1_s8(vbsl_s8(vmovn_s32(vceqzq_s32(vandq_s8(v2, xmmword_1B6F2D290))), 0x68007000730075, 0x48005000530055), *v2.i8).u32[0];
  if ((a1 & 0x10) != 0)
  {
    v3 = 65;
  }

  else
  {
    v3 = 97;
  }

  *(a2 + 4) = v3;
  *(a2 + 5) = a1 & 0x20 ^ 0x77;
  v4 = vbsl_s8(vmovn_s32(vceqzq_s32(vandq_s8(v2, xmmword_1B6F2D2A0))), 0x750063006D006CLL, 0x550043004D004CLL);
  *(a2 + 6) = vuzp1_s8(v4, v4).u32[0];
  if ((a1 & 0x400) != 0)
  {
    v5 = 72;
  }

  else
  {
    v5 = 104;
  }

  *(a2 + 10) = v5;
  if ((a1 & 0x800) != 0)
  {
    v6 = 83;
  }

  else
  {
    v6 = 115;
  }

  *(a2 + 11) = v6;
  if ((a1 & 0x1000) != 0)
  {
    v7 = 84;
  }

  else
  {
    v7 = 116;
  }

  *(a2 + 12) = v7;
  *(a2 + 13) = 0;
  return a2;
}

__CFString *RPDeviceClassToString(int a1)
{
  v1 = @"Unknown";
  v2 = @"AudioAccessory";
  v3 = @"RealityDevice";
  v4 = @"Mac";
  if (a1 != 100)
  {
    v4 = @"Unknown";
  }

  if (a1 != 11)
  {
    v3 = v4;
  }

  if (a1 != 7)
  {
    v2 = v3;
  }

  v5 = @"Watch";
  if (a1 != 6)
  {
    v5 = @"Unknown";
  }

  if (a1 == 5)
  {
    v5 = @"FPGA";
  }

  if (a1 <= 6)
  {
    v2 = v5;
  }

  v6 = @"iPad";
  v7 = @"AppleTV";
  if (a1 != 4)
  {
    v7 = @"Unknown";
  }

  if (a1 != 3)
  {
    v6 = v7;
  }

  if (a1 == 2)
  {
    v1 = @"iPod";
  }

  if (a1 == 1)
  {
    v1 = @"iPhone";
  }

  if (a1 > 2)
  {
    v1 = v6;
  }

  if (a1 <= 4)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void RPEncodeNSError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = *MEMORY[0x1E696A768];
    v6 = 3;
    v17 = v4;
    while (1)
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = [v3 code];
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = -6700;
      }

      v10 = [v7 numberWithInteger:v9];
      [v17 setObject:v10 forKeyedSubscript:@"_ec"];

      v11 = [v3 domain];
      v12 = v11;
      if (v11 && ([v11 isEqual:v5] & 1) == 0)
      {
        [v17 setObject:v12 forKeyedSubscript:@"_ed"];
      }

      v13 = [v3 userInfo];
      CFStringGetTypeID();
      v14 = CFDictionaryGetTypedValue();
      if ([v14 length])
      {
        [v17 setObject:v14 forKeyedSubscript:@"_em"];
      }

      if (!v6)
      {
        break;
      }

      CFErrorGetTypeID();
      v15 = CFDictionaryGetTypedValue();

      if (!v15)
      {
        v3 = 0;
        break;
      }

      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v17 setObject:v16 forKeyedSubscript:@"_eu"];

      --v6;
      v17 = v16;
      v3 = v15;
    }

    v4 = v17;
  }
}

id RPNestedErrorF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = NSErrorNestedV();

  return v9;
}

id RPVersionToSourceVersionString(uint64_t a1)
{
  SourceVersionToCString();

  return 0;
}

id RPModelOSVersionToSourceVersionString(uint64_t a1, unsigned int *a2)
{
  v3 = GestaltProductTypeStringToDeviceClass();
  v4 = *a2;
  v5 = a2[2];
  v6 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 7000000;
LABEL_72:
    v9 = RPVersionToSourceVersionString(v7);
    goto LABEL_73;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 6800000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 6600000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 6500000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 6400000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 6300000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 6100000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 6000000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 5600000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 5500000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 5420000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 5300000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 5220000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLaterEx())
  {
    v7 = 5100000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 5000000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 4400000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 4300000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 4200000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 4100000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 4000000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 3400000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 3300000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 3200000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 3100000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    if (v3 == 100)
    {
      v7 = 3050000;
    }

    else
    {
      v7 = 3000000;
    }

    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 2600000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 2500000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 2400000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 2300000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 2200000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 2100000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 2000000;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v8 = -16080;
LABEL_71:
    v7 = v8 | 0x1D0000u;
    goto LABEL_72;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v8 = 19456;
    goto LABEL_71;
  }

  if (DeviceOSVersionAtOrLater())
  {
    v7 = 1900000;
    goto LABEL_72;
  }

  if (NADyFF4UGjtVGBmEW6h())
  {
    if (((v3 & 0xFFFFFFFD) == 1 || v3 == 2) && 10000 * v4 + 100 * v5 + v6 > 0x1FC33)
    {
      v7 = 1820000;
    }

    else
    {
      v7 = 1800000;
    }

    goto LABEL_72;
  }

  if (TN6sBSnEP2())
  {
    v7 = 1660000;
    goto LABEL_72;
  }

  if (wInTP56r94EFs9NAAi())
  {
    v7 = 1600000;
    goto LABEL_72;
  }

  v9 = 0;
LABEL_73:

  return v9;
}

void RPStringToOperatingSystemVersion(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = [a1 componentsSeparatedByString:@"."];
  v3 = [v8 count];
  if (v3)
  {
    v4 = v3;
    v5 = [v8 objectAtIndexedSubscript:0];
    *a2 = [v5 integerValue];

    if (v4 != 1)
    {
      v6 = [v8 objectAtIndexedSubscript:1];
      a2[1] = [v6 integerValue];

      if (v4 >= 3)
      {
        v7 = [v8 objectAtIndexedSubscript:2];
        a2[2] = [v7 integerValue];
      }
    }
  }
}

uint64_t __shouldPrintSensitiveData_block_invoke()
{
  if ((os_variant_has_internal_content() & 1) == 0)
  {
    shouldPrintSensitiveData_sensitive = 1;
  }

  result = CFPrefs_GetInt64();
  if (result)
  {
    shouldPrintSensitiveData_sensitive = 0;
  }

  return result;
}

void sub_1B6E932A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initLSApplicationWorkspace()
{
  if (MobileCoreServicesLibrary_sOnce != -1)
  {
    initLSApplicationWorkspace_cold_1();
  }

  result = objc_getClass("LSApplicationWorkspace");
  classLSApplicationWorkspace = result;
  getLSApplicationWorkspaceClass = LSApplicationWorkspaceFunction;
  return result;
}

void *__MobileCoreServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
  MobileCoreServicesLibrary_sLib = result;
  return result;
}

Class initIMUserNotification()
{
  if (IMFoundationLibrary_sOnce != -1)
  {
    initIMUserNotification_cold_1();
  }

  result = objc_getClass("IMUserNotification");
  classIMUserNotification = result;
  getIMUserNotificationClass = IMUserNotificationFunction;
  return result;
}

void *__IMFoundationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/IMFoundation.framework/IMFoundation", 2);
  IMFoundationLibrary_sLib = result;
  return result;
}

Class initIMUserNotificationCenter()
{
  if (IMFoundationLibrary_sOnce != -1)
  {
    initIMUserNotification_cold_1();
  }

  result = objc_getClass("IMUserNotificationCenter");
  classIMUserNotificationCenter = result;
  getIMUserNotificationCenterClass = IMUserNotificationCenterFunction;
  return result;
}

void sub_1B6E96A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

void sub_1B6E98510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6E99880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

const char *_StateToString(unsigned int a1)
{
  if (a1 > 0x1D)
  {
    return "?";
  }

  else
  {
    return off_1E7C93F58[a1];
  }
}

const char *RPDataLinkTypeToString(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "?";
  }

  else
  {
    return off_1E7C94188[a1];
  }
}

void sub_1B6EAE0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EAEB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *RPFrameTypeToString(int a1)
{
  if (a1 > 47)
  {
    if (a1 <= 63)
    {
      if (a1 == 48)
      {
        return "WatchIdentityRequest";
      }

      if (a1 == 49)
      {
        return "WatchIdentityResponse";
      }
    }

    else
    {
      switch(a1)
      {
        case '@':
          return "FriendIdentityRequest";
        case 'A':
          return "FriendIdentityResponse";
        case 'B':
          return "FriendIdentityUpdate";
      }
    }

    return "?";
  }

  else
  {
    result = "Invalid";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "NoOp";
        break;
      case 3:
        result = "PS_Start";
        break;
      case 4:
        result = "PS_Next";
        break;
      case 5:
        result = "PV_Start";
        break;
      case 6:
        result = "PV_Next";
        break;
      case 7:
        result = "U_OPACK";
        break;
      case 8:
        result = "E_OPACK";
        break;
      case 9:
        result = "P_OPACK";
        break;
      case 10:
        result = "PA_Req";
        break;
      case 11:
        result = "PA_Rsp";
        break;
      case 16:
        result = "SessionStartRequest";
        break;
      case 17:
        result = "SessionStartResponse";
        break;
      case 18:
        result = "SessionData";
        break;
      case 32:
        result = "FamilyIdentityRequest";
        break;
      case 33:
        result = "FamilyIdentityResponse";
        break;
      case 34:
        result = "FamilyIdentityUpdate";
        break;
      default:
        return "?";
    }
  }

  return result;
}

Class initMCProfileConnection()
{
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    initMCProfileConnection_cold_1();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass = MCProfileConnectionFunction;
  return result;
}

void *__ManagedConfigurationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib = result;
  return result;
}

id initValMCFeatureRemoteAppPairingAllowed(uint64_t a1)
{
  if (softLinkOnceMCFeatureRemoteAppPairingAllowed != -1)
  {
    initValMCFeatureRemoteAppPairingAllowed_cold_1();
  }

  v2 = constantValMCFeatureRemoteAppPairingAllowed;

  return v2;
}

void __initValMCFeatureRemoteAppPairingAllowed_block_invoke()
{
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    initMCProfileConnection_cold_1();
  }

  v0 = dlsym(ManagedConfigurationLibrary_sLib, "MCFeatureRemoteAppPairingAllowed");
  if (v0)
  {
    objc_storeStrong(&constantValMCFeatureRemoteAppPairingAllowed, *v0);
  }

  getMCFeatureRemoteAppPairingAllowed = MCFeatureRemoteAppPairingAllowedFunction;
}

void __RPConnectionLog_block_invoke()
{
  v0 = LogCategoryCopyOSLogHandle();
  v1 = RPConnectionLog___logger;
  RPConnectionLog___logger = v0;
}

void sub_1B6EC1800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC3414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC4FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  (*(a11 + 16))(a11, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC629C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC7ADC(_Unwind_Exception *a1)
{
  (*(v1 + 16))();
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC9204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13, a2, a3, a4, a5, a6, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC9474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6ECA0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13, a2, a3, a4, a5, a6, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *RPNearFieldTransactionStateDescription(uint64_t a1)
{
  v1 = @"Connected";
  if (a1 == 1)
  {
    v1 = @"Interrupted";
  }

  if (a1 == 2)
  {
    return @"Exchange Completed";
  }

  else
  {
    return v1;
  }
}

Class initSDRDiagnosticReporter()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  result = objc_getClass("SDRDiagnosticReporter");
  classSDRDiagnosticReporter = result;
  getSDRDiagnosticReporterClass = SDRDiagnosticReporterFunction;
  return result;
}

void *__SymptomDiagnosticReporterLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SymptomDiagnosticReporter.framework/SymptomDiagnosticReporter", 2);
  SymptomDiagnosticReporterLibrary_sLib = result;
  return result;
}

id initValkSymptomDiagnosticReplySuccess(uint64_t a1)
{
  if (softLinkOncekSymptomDiagnosticReplySuccess != -1)
  {
    initValkSymptomDiagnosticReplySuccess_cold_1();
  }

  v2 = constantValkSymptomDiagnosticReplySuccess;

  return v2;
}

void __initValkSymptomDiagnosticReplySuccess_block_invoke()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  v0 = dlsym(SymptomDiagnosticReporterLibrary_sLib, "kSymptomDiagnosticReplySuccess");
  if (v0)
  {
    objc_storeStrong(&constantValkSymptomDiagnosticReplySuccess, *v0);
  }

  getkSymptomDiagnosticReplySuccess = kSymptomDiagnosticReplySuccessFunction;
}

id initValkSymptomDiagnosticReplyReason(uint64_t a1)
{
  if (softLinkOncekSymptomDiagnosticReplyReason != -1)
  {
    initValkSymptomDiagnosticReplyReason_cold_1();
  }

  v2 = constantValkSymptomDiagnosticReplyReason;

  return v2;
}

void __initValkSymptomDiagnosticReplyReason_block_invoke()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  v0 = dlsym(SymptomDiagnosticReporterLibrary_sLib, "kSymptomDiagnosticReplyReason");
  if (v0)
  {
    objc_storeStrong(&constantValkSymptomDiagnosticReplyReason, *v0);
  }

  getkSymptomDiagnosticReplyReason = kSymptomDiagnosticReplyReasonFunction;
}

id initValkSymptomDiagnosticReplyReasonString(uint64_t a1)
{
  if (softLinkOncekSymptomDiagnosticReplyReasonString != -1)
  {
    initValkSymptomDiagnosticReplyReasonString_cold_1();
  }

  v2 = constantValkSymptomDiagnosticReplyReasonString;

  return v2;
}

void __initValkSymptomDiagnosticReplyReasonString_block_invoke()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  v0 = dlsym(SymptomDiagnosticReporterLibrary_sLib, "kSymptomDiagnosticReplyReasonString");
  if (v0)
  {
    objc_storeStrong(&constantValkSymptomDiagnosticReplyReasonString, *v0);
  }

  getkSymptomDiagnosticReplyReasonString = kSymptomDiagnosticReplyReasonStringFunction;
}

Class initSFDeviceDiscovery()
{
  if (SharingLibrary_sOnce_0 != -1)
  {
    initSFDeviceDiscovery_cold_1();
  }

  result = objc_getClass("SFDeviceDiscovery");
  classSFDeviceDiscovery = result;
  getSFDeviceDiscoveryClass = SFDeviceDiscoveryFunction;
  return result;
}

void *__SharingLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  SharingLibrary_sLib_0 = result;
  return result;
}

void sub_1B6EDBC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDBD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDBF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDBFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDC0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDC1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_TtC7Rapport27RPPairingReceiverController *RPCreatePairingReceiverController(void *a1)
{
  v1 = a1;
  v2 = [[_TtC7Rapport27RPPairingReceiverController alloc] initWithQueue:v1];

  return v2;
}

void sub_1B6EDFB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

const char *RPDataLinkTypeToString_0(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "?";
  }

  else
  {
    return off_1E7C94DD8[a1];
  }
}

Class initAVVCStartRecordSettings()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVCStartRecordSettings");
  classAVVCStartRecordSettings = result;
  getAVVCStartRecordSettingsClass = AVVCStartRecordSettingsFunction;
  return result;
}

void *__AVFAudioLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFAudio.framework/AVFAudio", 2);
  AVFAudioLibrary_sLib = result;
  return result;
}

Class initAVAudioFormat()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVAudioFormat");
  classAVAudioFormat = result;
  getAVAudioFormatClass = AVAudioFormatFunction;
  return result;
}

Class initAVVoiceController()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVoiceController");
  classAVVoiceController = result;
  getAVVoiceControllerClass = AVVoiceControllerFunction;
  return result;
}

Class initAVVCContextSettings()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVCContextSettings");
  classAVVCContextSettings = result;
  getAVVCContextSettingsClass = AVVCContextSettingsFunction;
  return result;
}

Class initAVVCPrepareRecordSettings()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVCPrepareRecordSettings");
  classAVVCPrepareRecordSettings = result;
  getAVVCPrepareRecordSettingsClass = AVVCPrepareRecordSettingsFunction;
  return result;
}

void sub_1B6EF75F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a12 + 16))(a12, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFA62C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__84(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B6EFB644(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFBFF0(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFC93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  (*(v30 + 16))(v30, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id RPStreamSessionLog(uint64_t a1)
{
  if (RPStreamSessionLog_onceToken != -1)
  {
    RPStreamSessionLog_cold_1();
  }

  v2 = RPStreamSessionLog___logger;

  return v2;
}

void sub_1B6EFE058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  (*(v22 + 16))(v22, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFEF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  (*(v38 + 16))(v38, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __RPStreamSessionLog_block_invoke()
{
  v0 = LogCategoryCopyOSLogHandle();
  v1 = RPStreamSessionLog___logger;
  RPStreamSessionLog___logger = v0;
}

Class initRTIDataPayload()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIDataPayload_cold_1();
  }

  result = objc_getClass("RTIDataPayload");
  classRTIDataPayload = result;
  getRTIDataPayloadClass = RTIDataPayloadFunction;
  return result;
}

void *__RemoteTextInputLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/RemoteTextInput.framework/RemoteTextInput", 2);
  RemoteTextInputLibrary_sLib = result;
  return result;
}

Class initRTIInputSystemDataPayload()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIDataPayload_cold_1();
  }

  result = objc_getClass("RTIInputSystemDataPayload");
  classRTIInputSystemDataPayload = result;
  _MergedGlobals = RTIInputSystemDataPayloadFunction;
  return result;
}

Class initRTIInputSystemSourceSession()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIDataPayload_cold_1();
  }

  result = objc_getClass("RTIInputSystemSourceSession");
  classRTIInputSystemSourceSession = result;
  off_1EE8AC1F8 = RTIInputSystemSourceSessionFunction;
  return result;
}

uint64_t sub_1B6F01D48()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97E7A0);
  __swift_project_value_buffer(v0, qword_1EB97E7A0);
  return sub_1B6F228F8();
}

uint64_t sub_1B6F01DC4()
{
  if (qword_1EB97C020 != -1)
  {
    swift_once();
  }

  v0 = sub_1B6F22908();

  return __swift_project_value_buffer(v0, qword_1EB97E7A0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B6F01F4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B6F01FA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B6F0203C()
{
  v1 = 0x614E656369766564;
  v2 = 0x5249656369766564;
  if (*v0 != 2)
  {
    v2 = 0x7550656369766564;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B6F020D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6F047D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6F02114(uint64_t a1)
{
  v2 = sub_1B6F023EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F02150(uint64_t a1)
{
  v2 = sub_1B6F023EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F0218C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B980, &qword_1B6F2F3A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F023EC();
  sub_1B6F22D38();
  LOBYTE(v13) = 0;
  sub_1B6F22C48();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1B6F22C48();
    v15 = *(v3 + 32);
    v13 = *(v3 + 32);
    v12 = 2;
    sub_1B6F02440(&v15, v11);
    sub_1B6F0249C();
    sub_1B6F22C58();
    sub_1B6F01FA0(v13, *(&v13 + 1));
    v13 = *(v3 + 48);
    v14 = v13;
    v12 = 3;
    sub_1B6F02440(&v14, v11);
    sub_1B6F22C58();
    sub_1B6F01FA0(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B6F023EC()
{
  result = qword_1EB97C028;
  if (!qword_1EB97C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97C028);
  }

  return result;
}

unint64_t sub_1B6F0249C()
{
  result = qword_1EB97B988;
  if (!qword_1EB97B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97B988);
  }

  return result;
}

double sub_1B6F024F0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1B6F04954(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_1B6F0254C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6564644165746164;
    if (a1 != 2)
    {
      v5 = 0x614E656369766564;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x614E796C696D6166;
    v2 = 0x5249656369766564;
    if (a1 != 7)
    {
      v2 = 0x7550656369766564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696669746E656469;
    if (a1 != 4)
    {
      v3 = 0x6D614E6E65766967;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B6F02694()
{
  v1 = *v0;
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](v1);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F026DC(uint64_t a1)
{
  v2 = *v1;
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](v2);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F02728@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B6F05A5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6F0275C(uint64_t a1)
{
  v2 = sub_1B6F04CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F02798(uint64_t a1)
{
  v2 = sub_1B6F04CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F027D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B990, &qword_1B6F2F3A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F04CEC();
  sub_1B6F22D38();
  LOBYTE(v16) = 0;
  sub_1B6F22C28();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v16 = *(v3 + 16);
    v17 = v9;
    v18 = 1;
    sub_1B6F04CB8(v16, v9);
    sub_1B6F0249C();
    sub_1B6F22C38();
    sub_1B6F04D40(v16, v17);
    v10 = type metadata accessor for RPPairingTemporaryIdentity(0);
    LOBYTE(v16) = 2;
    sub_1B6F22848();
    sub_1B6F04EBC(&qword_1EB97B998, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B6F22C58();
    LOBYTE(v16) = 3;
    sub_1B6F22C48();
    LOBYTE(v16) = 4;
    sub_1B6F22C48();
    LOBYTE(v16) = 5;
    sub_1B6F22C48();
    LOBYTE(v16) = 6;
    sub_1B6F22C48();
    v11 = (v3 + *(v10 + 44));
    v12 = v11[1];
    v16 = *v11;
    v17 = v12;
    v18 = 7;
    sub_1B6F01F4C(v16, v12);
    sub_1B6F22C58();
    sub_1B6F01FA0(v16, v17);
    v13 = (v3 + *(v10 + 48));
    v14 = v13[1];
    v16 = *v13;
    v17 = v14;
    v18 = 8;
    sub_1B6F01F4C(v16, v14);
    sub_1B6F22C58();
    sub_1B6F01FA0(v16, v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B6F02B54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1B6F22848();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B9A0, &qword_1B6F2F3B0);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RPPairingTemporaryIdentity(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_1B6F04CEC();
  v37 = v9;
  sub_1B6F22D28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  v14 = v35;
  v32 = v4;
  LOBYTE(v39) = 0;
  *v12 = sub_1B6F22BC8();
  *(v12 + 1) = v15;
  v40 = 1;
  sub_1B6F04D54();
  sub_1B6F22BD8();
  *(v12 + 1) = v39;
  LOBYTE(v39) = 2;
  sub_1B6F04EBC(&qword_1EB97B9B0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v16 = v32;
  v31 = 0;
  sub_1B6F22BF8();
  (*(v34 + 32))(&v12[v10[6]], v6, v16);
  LOBYTE(v39) = 3;
  v17 = v37;
  v18 = sub_1B6F22BE8();
  v19 = &v12[v10[7]];
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v39) = 4;
  v21 = sub_1B6F22BE8();
  v22 = &v12[v10[8]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v39) = 5;
  v24 = sub_1B6F22BE8();
  v25 = &v12[v10[9]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v39) = 6;
  v27 = sub_1B6F22BE8();
  v28 = &v12[v10[10]];
  *v28 = v27;
  v28[1] = v29;
  v40 = 7;
  sub_1B6F22BF8();
  *&v12[v10[11]] = v39;
  v40 = 8;
  sub_1B6F22BF8();
  (*(v14 + 8))(v17, v36);
  *&v12[v10[12]] = v39;
  sub_1B6F04DA8(v12, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return sub_1B6F04E0C(v12);
}

id sub_1B6F0339C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID;
  v10 = sub_1B6F22878();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], a3, v10);
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a3, v10);
  return v12;
}

uint64_t sub_1B6F03640()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7550726576726573;
  }
}

uint64_t sub_1B6F0368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7550726576726573 && a2 == 0xEF79654B63696C62;
  if (v6 || (sub_1B6F22C78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6F453A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6F22C78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B6F03784(uint64_t a1)
{
  v2 = sub_1B6F04E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F037C0(uint64_t a1)
{
  v2 = sub_1B6F04E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F0387C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B9C0, &qword_1B6F2F3B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F04E68();
  sub_1B6F22D38();
  v9 = *(v3 + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  v12 = *(v3 + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey);
  v13 = v9;
  v11[15] = 0;
  sub_1B6F01F4C(v12, v9);
  sub_1B6F0249C();
  sub_1B6F22C58();
  sub_1B6F01FA0(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1B6F22878();
    sub_1B6F04EBC(&qword_1EB97B9C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1B6F22C58();
  }

  return (*(v6 + 8))(v8, v5);
}

char *sub_1B6F03AA4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1B6F22878();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B9D0, &unk_1B6F2F3C0);
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F04E68();
  sub_1B6F22D28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v21 = 0;
    sub_1B6F04D54();
    v12 = v16;
    sub_1B6F22BF8();
    *&v18[OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey] = v20;
    LOBYTE(v20) = 1;
    sub_1B6F04EBC(&qword_1EB97B9D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B6F22BF8();
    v14 = v18;
    (*(v15 + 32))(&v18[OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID], v10, v4);
    v19.receiver = v14;
    v19.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v19, sel_init);
    (*(v11 + 8))(v9, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v6;
}

char *sub_1B6F03E04@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1B6F03AA4(a1, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1B6F03EA8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1B6F229F8();

  return v3;
}

id sub_1B6F03F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_deviceName];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_givenName];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_familyName];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pin];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pake];
  v24 = a9[1];
  *v23 = *a9;
  *(v23 + 1) = v24;
  v25 = a9[6];
  *(v23 + 5) = a9[5];
  *(v23 + 6) = v25;
  v26 = a9[4];
  *(v23 + 3) = a9[3];
  *(v23 + 4) = v26;
  *(v23 + 2) = a9[2];
  v28.receiver = v18;
  v28.super_class = v9;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_1B6F0405C()
{
  v1 = v0;
  sub_1B6F22B28();
  v2 = *(v0 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_deviceName);

  MEMORY[0x1B8C9DA10](8236, 0xE200000000000000);
  MEMORY[0x1B8C9DA10](*(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_givenName), *(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_givenName + 8));
  MEMORY[0x1B8C9DA10](8236, 0xE200000000000000);
  MEMORY[0x1B8C9DA10](*(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_familyName), *(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_familyName + 8));
  MEMORY[0x1B8C9DA10](8236, 0xE200000000000000);
  MEMORY[0x1B8C9DA10](*(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pin), *(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pin + 8));
  MEMORY[0x1B8C9DA10](0x3A444963202CLL, 0xE600000000000000);
  v3 = (v0 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pake);
  MEMORY[0x1B8C9DA10](v3[2], v3[3]);
  MEMORY[0x1B8C9DA10](0x3A444973202CLL, 0xE600000000000000);
  MEMORY[0x1B8C9DA10](v3[4], v3[5]);
  return v2;
}

id sub_1B6F041C8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B6F04324()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(RPClient) init];
  v0[20] = v2;
  [v2 setDispatchQueue_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B6F0447C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA08, qword_1B6F2F3D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6F046F4;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v2 getIdentitiesWithFlags:1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B6F0447C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1B6F04684;
  }

  else
  {
    v2 = sub_1B6F0458C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B6F0458C()
{
  v1 = *(v0 + 144);
  [*(v0 + 160) invalidate];
  if (v1 >> 62)
  {
    result = sub_1B6F22B88();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C9DAD0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1B6F04684()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B6F046F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA28, &qword_1B6F2F998);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1B6F05DA8();
    **(*(v4 + 64) + 40) = sub_1B6F22A98();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1B6F047D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1B6F22C78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B6F22C78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B6F22C78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B6F04954@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA30, &unk_1B6F2F9A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F023EC();
  sub_1B6F22D28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30) = 0;
  v9 = sub_1B6F22BE8();
  v25 = v10;
  LOBYTE(v30) = 1;
  v11 = sub_1B6F22BE8();
  v24 = v12;
  v22 = v11;
  LOBYTE(v26) = 2;
  v23 = sub_1B6F04D54();
  sub_1B6F22BF8();
  v21 = v30;
  v37 = 3;
  sub_1B6F22BF8();
  (*(v6 + 8))(v8, v5);
  v20 = *(&v36 + 1);
  v23 = v36;
  v14 = v24;
  v13 = v25;
  *&v26 = v9;
  *(&v26 + 1) = v25;
  v15 = v22;
  *&v27 = v22;
  *(&v27 + 1) = v24;
  v16 = v21;
  v28 = v21;
  v29 = v36;
  sub_1B6F05DF4(&v26, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v30 = v9;
  *(&v30 + 1) = v13;
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v34 = v23;
  v35 = v20;
  result = sub_1B6F05E2C(&v30);
  v18 = v27;
  *a2 = v26;
  a2[1] = v18;
  v19 = v29;
  a2[2] = v28;
  a2[3] = v19;
  return result;
}

uint64_t sub_1B6F04CB8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B6F01F4C(result, a2);
  }

  return result;
}

unint64_t sub_1B6F04CEC()
{
  result = qword_1EB97C030;
  if (!qword_1EB97C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97C030);
  }

  return result;
}

uint64_t sub_1B6F04D40(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B6F01FA0(result, a2);
  }

  return result;
}

unint64_t sub_1B6F04D54()
{
  result = qword_1EB97B9A8;
  if (!qword_1EB97B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97B9A8);
  }

  return result;
}

uint64_t sub_1B6F04DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6F04E0C(uint64_t a1)
{
  v2 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6F04E68()
{
  result = qword_1EB97C038[0];
  if (!qword_1EB97C038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C038);
  }

  return result;
}

uint64_t sub_1B6F04EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B6F04F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B6F05008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6F05050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B6F050D8(uint64_t a1)
{
  sub_1B6F051B8(319, &qword_1EB97BA10, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B6F051B8(319, &qword_1EB97BA18, MEMORY[0x1E6969080]);
    if (v2 <= 0x3F)
    {
      sub_1B6F22848();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B6F051B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B6F22AF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B6F0522C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6F05264(uint64_t a1, uint64_t a2)
{
  result = sub_1B6F22878();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingBonjourResolveResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingBonjourResolveResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6F05748()
{
  result = qword_1EB97C460[0];
  if (!qword_1EB97C460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C460);
  }

  return result;
}

unint64_t sub_1B6F057A0()
{
  result = qword_1EB97C670[0];
  if (!qword_1EB97C670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C670);
  }

  return result;
}

unint64_t sub_1B6F057F8()
{
  result = qword_1EB97C880[0];
  if (!qword_1EB97C880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C880);
  }

  return result;
}

unint64_t sub_1B6F05850()
{
  result = qword_1EB97C990;
  if (!qword_1EB97C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97C990);
  }

  return result;
}

unint64_t sub_1B6F058A8()
{
  result = qword_1EB97C998[0];
  if (!qword_1EB97C998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C998);
  }

  return result;
}

unint64_t sub_1B6F05900()
{
  result = qword_1EB97CA20;
  if (!qword_1EB97CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97CA20);
  }

  return result;
}

unint64_t sub_1B6F05958()
{
  result = qword_1EB97CA28[0];
  if (!qword_1EB97CA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97CA28);
  }

  return result;
}

unint64_t sub_1B6F059B0()
{
  result = qword_1EB97CAB0;
  if (!qword_1EB97CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97CAB0);
  }

  return result;
}

unint64_t sub_1B6F05A08()
{
  result = qword_1EB97CAB8[0];
  if (!qword_1EB97CAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97CAB8);
  }

  return result;
}

uint64_t sub_1B6F05A5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B6F45440 == a2;
  if (v3 || (sub_1B6F22C78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6F45460 == a2 || (sub_1B6F22C78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1B6F22C78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B6F22C78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_1B6F22C78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B6F22C78();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B6F05DA8()
{
  result = qword_1EB97BA20;
  if (!qword_1EB97BA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB97BA20);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B6F05EDC()
{
  v0 = sub_1B6F229C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F229A8();
  v4 = sub_1B6F229B8();
  result = (*(v1 + 8))(v3, v0);
  qword_1EB97CB48 = v4 / 8;
  return result;
}

uint64_t sub_1B6F05FBC()
{
  v0 = sub_1B6F22888();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6F228D8();
  __swift_allocate_value_buffer(v4, qword_1EB97CB58);
  __swift_project_value_buffer(v4, qword_1EB97CB58);
  (*(v1 + 104))(v3, *MEMORY[0x1E6969830], v0);
  sub_1B6F22898();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1B6F060DC()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97CB78);
  v1 = __swift_project_value_buffer(v0, qword_1EB97CB78);
  if (qword_1EB97CB90 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB97E7C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B6F061A4()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97E7C0);
  __swift_project_value_buffer(v0, qword_1EB97E7C0);
  return sub_1B6F228F8();
}

uint64_t sub_1B6F062BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id RPIRKRatchet.__allocating_init(starting:locallyPermanentSeed:sameAccountDevicesRevision:managedAccountsRevision:contactsRevision:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a6;
  v50 = a5;
  v44 = a4;
  v57 = a1;
  v60[1] = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v48);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B6F22998();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v7;
  v47 = objc_allocWithZone(v7);
  __src = a2;
  v60[0] = a3;
  v55 = a2;
  v56 = a3;
  sub_1B6F01F4C(a2, a3);
  sub_1B6F22988();
  v45 = v21;
  v46 = v19;
  v22 = *(v19 + 16);
  v23 = v21;
  v24 = v44;
  v49 = v18;
  v22(v17, v23, v18);
  __src = v24;
  __src = sub_1B6F106BC(&__src, v60);
  v60[0] = v25 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v60[0]);
  v26 = v43;
  sub_1B6F062BC(v17, &v14[*(v43 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v26 + 20)] = v24;
  v27 = v50;
  __src = v50;
  __src = sub_1B6F106BC(&__src, v60);
  v60[0] = v28 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v60[0]);
  v29 = v48;
  sub_1B6F062BC(v14, &v12[*(v48 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v12[*(v29 + 20)] = v27;
  v30 = v17;
  v31 = v52;
  __src = v52;
  __src = sub_1B6F106BC(&__src, v60);
  v60[0] = v32 & 0xFFFFFFFFFFFFFFLL;
  v33 = v53;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v60[0]);
  v34 = v51;
  sub_1B6F062BC(v12, v33 + *(v51 + 24), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v33 + *(v34 + 20)) = v31;
  (*(v46 + 8))(v45, v49);
  v35 = OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate;
  v36 = sub_1B6F22848();
  v37 = *(v36 - 8);
  v38 = v47;
  v39 = v57;
  (*(v37 + 16))(&v47[v35], v57, v36);
  sub_1B6F10828(v30, v38 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  sub_1B6F10828(v14, v38 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  sub_1B6F10828(v12, v38 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  sub_1B6F10828(v33, v38 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  v58.receiver = v38;
  v58.super_class = v54;
  v40 = objc_msgSendSuper2(&v58, sel_init);
  sub_1B6F01FA0(v55, v56);
  (*(v37 + 8))(v39, v36);
  return v40;
}

id RPIRKRatchet.init(starting:locallyPermanentSeed:sameAccountDevicesRevision:managedAccountsRevision:contactsRevision:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1B6F10890(a1, a2, a3, a4, a5, a6);
  sub_1B6F01FA0(a2, a3);
  return v8;
}

uint64_t RPIRKRatchet.DateRatchet.irk(for:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B6F22998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B6F0AEA4(a1, v11);
  if (!v2)
  {
    RPIRKRatchet.DateRatchet.key.getter(v8);
    v13 = sub_1B6F16738();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = type metadata accessor for RPIRKRatchet.IRK(0);
    sub_1B6F062BC(a1, a2 + *(v16 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
    result = sub_1B6F10828(v11, a2 + *(v16 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
    *a2 = v13;
    a2[1] = v15;
  }

  return result;
}

uint64_t static RPIRKRatchet.dateRatchetIRKData(fromPermanentIRK:for:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v68 = a2;
  v71[1] = *MEMORY[0x1E69E9840];
  v64 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6F22998();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B6F22848();
  MEMORY[0x1EEE9AC00](v20);
  v23 = *(v22 + 16);
  v54 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a3;
  v60 = v24;
  v58 = v22;
  v59 = v22 + 16;
  v57 = v23;
  v23();
  v56 = type metadata accessor for RPIRKRatchet(0);
  v53 = objc_allocWithZone(v56);
  __src = a1;
  v71[0] = v68;
  sub_1B6F01F4C(a1, v68);
  sub_1B6F22988();
  v67 = v16;
  v68 = v17;
  (*(v17 + 16))(v15, v19, v16);
  __src = 0;
  __src = sub_1B6F106BC(&__src, v71);
  v71[0] = v25 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v71[0]);
  v51 = v15;
  v26 = v50;
  sub_1B6F062BC(v15, &v12[*(v50 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v12[*(v26 + 20)] = 0;
  __src = 0;
  __src = sub_1B6F106BC(&__src, v71);
  v71[0] = v27 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v71[0]);
  v28 = v52;
  sub_1B6F062BC(v12, &v10[*(v52 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v10[*(v28 + 20)] = 0;
  __src = 0;
  __src = sub_1B6F106BC(&__src, v71);
  v71[0] = v29 & 0xFFFFFFFFFFFFFFLL;
  v30 = v55;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v71[0]);
  v31 = v61;
  sub_1B6F062BC(v10, v30 + *(v61 + 6), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v30 + *(v31 + 20)) = 0;
  v32 = *(v68 + 8);
  v61 = v19;
  v68 += 8;
  v52 = v32;
  v32(v19, v67);
  v34 = v53;
  v33 = v54;
  v35 = v60;
  v36 = v57;
  (v57)(&v53[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate], v54, v60);
  sub_1B6F10828(v51, v34 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  sub_1B6F10828(v12, v34 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  sub_1B6F10828(v10, v34 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  sub_1B6F10828(v30, v34 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  v69.receiver = v34;
  v69.super_class = v56;
  v37 = objc_msgSendSuper2(&v69, sel_init);
  (*(v58 + 8))(v33, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 64);
  v41 = v62;
  (v36)(v62, v63, v35);
  *(v41 + v39) = 4;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v42 = sub_1B6F228D8();
  v43 = __swift_project_value_buffer(v42, qword_1EB97CB58);
  (*(*(v42 - 8) + 16))(v41 + v40, v43, v42);
  swift_storeEnumTagMultiPayload();
  v45 = v65;
  v44 = v66;
  v46 = v37;
  (*((*MEMORY[0x1E69E7D40] & *v37) + 0x88))(v41);
  sub_1B6F12184(v41, type metadata accessor for RPIRKRatchet.IRKTarget);
  if (v44)
  {
  }

  else
  {
    v47 = v61;
    RPIRKRatchet.DateRatchet.key.getter(v61);
    sub_1B6F12184(v45, type metadata accessor for RPIRKRatchet.DateRatchet);
    v46 = sub_1B6F16738();

    (v52)(v47, v67);
  }

  return v46;
}

uint64_t RPIRKRatchet.DateRatchet.key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v2, v6, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_1B6F22998();
  v9 = *(*(v8 - 8) + 32);
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v10 = &qword_1EB97BA78;
        v11 = &qword_1B6F2FA00;
      }

      else
      {
        v10 = &qword_1EB97BA70;
        v11 = &qword_1B6F2F9F8;
      }
    }

    else
    {
      v10 = &qword_1EB97BA80;
      v11 = &qword_1B6F2FA08;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v10 = &qword_1EB97BA58;
      v11 = &qword_1B6F2F9E0;
    }

    else
    {
      v10 = &qword_1EB97BA50;
      v11 = &qword_1B6F2F9D8;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v10 = &qword_1EB97BA68;
    v11 = &qword_1B6F2F9F0;
  }

  else
  {
    v10 = &qword_1EB97BA60;
    v11 = &qword_1B6F2F9E8;
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v10, v11) + 48);
  v9(a1, v6, v8);
  return sub_1B6F12184(&v6[v12], type metadata accessor for RPIRKRatchet.DateRatchet.Source);
}

uint64_t sub_1B6F078A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B6F22998();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v14 = sub_1B6F228D8();
  __swift_project_value_buffer(v14, qword_1EB97CB58);
  result = sub_1B6F0AA98(v13);
  if (!v2)
  {
    sub_1B6F0AEA4(a1, v11);
    RPIRKRatchet.DateRatchet.key.getter(v7);
    v16 = sub_1B6F16738();
    v22 = v17;
    (*(v5 + 8))(v7, v4);
    sub_1B6F12184(v13, type metadata accessor for RPIRKRatchet.DateRatchet);
    v18 = type metadata accessor for RPIRKRatchet.IRK(0);
    v19 = v23;
    sub_1B6F062BC(a1, v23 + *(v18 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
    result = sub_1B6F10828(v11, v19 + *(v18 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
    v20 = v22;
    *v19 = v16;
    v19[1] = v20;
  }

  return result;
}

uint64_t RPIRKRatchet.ContactsRatchet.irk(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B6F22998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v15 = sub_1B6F228D8();
  __swift_project_value_buffer(v15, qword_1EB97CB58);
  result = sub_1B6F0AA98(v14);
  if (!v2)
  {
    sub_1B6F0AEA4(a1, v12);
    RPIRKRatchet.DateRatchet.key.getter(v8);
    v17 = sub_1B6F16738();
    v22 = v18;
    (*(v6 + 8))(v8, v5);
    sub_1B6F12184(v14, type metadata accessor for RPIRKRatchet.DateRatchet);
    v19 = type metadata accessor for RPIRKRatchet.IRK(0);
    sub_1B6F062BC(a1, a2 + *(v19 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
    result = sub_1B6F10828(v12, a2 + *(v19 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
    v20 = v22;
    *a2 = v17;
    a2[1] = v20;
  }

  return result;
}

uint64_t sub_1B6F07D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v8 = sub_1B6F228D8();
  __swift_project_value_buffer(v8, qword_1EB97CB58);
  result = sub_1B6F0AA98(v7);
  if (!v2)
  {
    sub_1B6F0AEA4(a1, a2);
    return sub_1B6F12184(v7, type metadata accessor for RPIRKRatchet.DateRatchet);
  }

  return result;
}

uint64_t RPIRKRatchet.IRK.keyData.getter()
{
  v1 = *v0;
  sub_1B6F01F4C(*v0, *(v0 + 8));
  return v1;
}

uint64_t RPIRKRatchet.IRK.description.getter()
{
  v3 = sub_1B6F227D8();
  MEMORY[0x1B8C9DA10](32, 0xE100000000000000);
  type metadata accessor for RPIRKRatchet.IRK(0);
  v0 = RPIRKRatchet.IRKTarget.description.getter();
  MEMORY[0x1B8C9DA10](v0);

  MEMORY[0x1B8C9DA10](23328, 0xE200000000000000);
  v1 = RPIRKRatchet.DateRatchet.description.getter();
  MEMORY[0x1B8C9DA10](v1);

  MEMORY[0x1B8C9DA10](93, 0xE100000000000000);
  return v3;
}

uint64_t sub_1B6F07F88()
{
  v3 = sub_1B6F227D8();
  MEMORY[0x1B8C9DA10](32, 0xE100000000000000);
  v0 = RPIRKRatchet.IRKTarget.description.getter();
  MEMORY[0x1B8C9DA10](v0);

  MEMORY[0x1B8C9DA10](23328, 0xE200000000000000);
  v1 = RPIRKRatchet.DateRatchet.description.getter();
  MEMORY[0x1B8C9DA10](v1);

  MEMORY[0x1B8C9DA10](93, 0xE100000000000000);
  return v3;
}

uint64_t sub_1B6F08078@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1B6F0811C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = v1;
  v3 = sub_1B6F228D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - v8;
  v9 = sub_1B6F22848();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  sub_1B6F062BC(v2, &v35 - v19, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48);
    sub_1B6F22828();
    return (*(v4 + 8))(&v20[v23], v3);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0) + 64);
    (*(v37 + 32))(v39, v20, v38);
    return (*(v4 + 8))(&v20[v23], v3);
  }

  sub_1B6F22828();
  sub_1B6F062BC(v2, v18, type metadata accessor for RPIRKRatchet.IRKTarget);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
    v40 = v18[*(v25 + 48)];
    v26 = &v18[*(v25 + 64)];
    v35 = *(v4 + 8);
    v35(v26, v3);
    (*(v37 + 8))(v18, v38);
  }

  else
  {
    v40 = *v18;
    v22 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48)];
    v35 = *(v4 + 8);
    v35(v22, v3);
  }

  v41 = v40;
  sub_1B6F062BC(v2, v15, type metadata accessor for RPIRKRatchet.IRKTarget);
  v27 = swift_getEnumCaseMultiPayload();
  v28 = *(v4 + 32);
  if (v27)
  {
    v29 = v36;
    if (v27 == 1)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
      v28(v7, &v15[*(v30 + 48)], v3);
    }

    else
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v28(v7, &v15[*(v32 + 64)], v3);
      (*(v37 + 8))(v15, v38);
    }
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v28(v7, &v15[*(v31 + 48)], v3);
    v29 = v36;
  }

  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48);
  v28(v29, v7, v3);
  sub_1B6F08628(v11, v29, v39);
  v34 = v35;
  v35(v29, v3);
  (*(v37 + 8))(v11, v38);
  return v34(&v20[v33], v3);
}

uint64_t sub_1B6F08628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43[1] = a2;
  v43[2] = a1;
  v44 = a3;
  v4 = sub_1B6F228B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA90, &qword_1B6F2FA18);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v43 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v43 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v43 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v43 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v25 = v43 - v24;
  v26 = *v3;
  if (v26 > 2)
  {
    if (*v3 <= 4u)
    {
      v27 = v22;
      if (v26 == 3)
      {
        (*(v5 + 104))(v7, *MEMORY[0x1E6969A78], v4);
        sub_1B6F228A8();
        (*(v5 + 8))(v7, v4);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1B6F22B28();

        v45 = 0xD000000000000018;
        v46 = 0x80000001B6F45620;
        sub_1B6F22848();
        sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v28 = sub_1B6F22C68();
        MEMORY[0x1B8C9DA10](v28);

        sub_1B6F16568(v45, v46, 0xD000000000000048, 0x80000001B6F45590, 219, v27, v44);
        v29 = v18;
      }

      else
      {
        (*(v5 + 104))(v7, *MEMORY[0x1E6969A78], v4);
        sub_1B6F228A8();
        (*(v5 + 8))(v7, v4);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_1B6F22B28();

        v45 = 0xD000000000000017;
        v46 = 0x80000001B6F45600;
        sub_1B6F22848();
        sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v41 = sub_1B6F22C68();
        MEMORY[0x1B8C9DA10](v41);

        sub_1B6F16568(v45, v46, 0xD000000000000048, 0x80000001B6F45590, 221, v27, v44);
        v29 = v15;
      }

      goto LABEL_15;
    }

    v32 = v22;
    if (v26 == 5)
    {
      (*(v5 + 104))(v7, *MEMORY[0x1E6969A10], v4);
      sub_1B6F228A8();
      (*(v5 + 8))(v7, v4);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1B6F22B28();

      v45 = 0xD000000000000016;
      v46 = 0x80000001B6F455E0;
      sub_1B6F22848();
      sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v33 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v33);

      sub_1B6F16568(v45, v46, 0xD000000000000048, 0x80000001B6F45590, 223, v32, v44);
      v29 = v12;
LABEL_15:
      sub_1B6F1224C(v29);
    }

    v21 = v23;
    (*(v5 + 104))(v7, *MEMORY[0x1E6969A48], v4);
    sub_1B6F228A8();
    (*(v5 + 8))(v7, v4);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B6F22B28();

    v45 = 0xD000000000000015;
    v46 = 0x80000001B6F45570;
    sub_1B6F22848();
    sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v42 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v42);

    v36 = v45;
    v37 = v44;
    v38 = v46;
    v39 = 225;
    v40 = v32;
LABEL_14:
    sub_1B6F16568(v36, v38, 0xD000000000000048, 0x80000001B6F45590, v39, v40, v37);
    v29 = v21;
    goto LABEL_15;
  }

  if (!*v3)
  {
    return sub_1B6F227F8();
  }

  v30 = v22;
  if (v26 != 1)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E6969A78], v4);
    sub_1B6F228A8();
    (*(v5 + 8))(v7, v4);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B6F22B28();

    v45 = 0xD000000000000018;
    v46 = 0x80000001B6F45640;
    sub_1B6F22848();
    sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v35 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v35);

    v36 = v45;
    v37 = v44;
    v38 = v46;
    v39 = 217;
    v40 = v30;
    goto LABEL_14;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E6969A68], v4);
  sub_1B6F228A8();
  (*(v5 + 8))(v7, v4);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1B6F22B28();

  v45 = 0xD000000000000016;
  v46 = 0x80000001B6F45660;
  sub_1B6F22848();
  sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v31 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v31);

  sub_1B6F16568(v45, v46, 0xD000000000000048, 0x80000001B6F45590, 215, v30, v44);
  sub_1B6F1224C(v25);
}

uint64_t RPIRKRatchet.IRKTarget.description.getter()
{
  v1 = v0;
  v2 = sub_1B6F22848();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6F062BC(v1, v8, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v15 = v8[*(v14 + 48)];
      v11 = &v8[*(v14 + 64)];
      (*(v3 + 32))(v5, v8, v2);
      v22 = 0;
      v23 = 0xE000000000000000;
      nullsub_1();
      v19[15] = v16;
      sub_1B6F122B4();
      sub_1B6F22838();
      MEMORY[0x1B8C9DA10](v20, v21);

      MEMORY[0x1B8C9DA10](11808, 0xE200000000000000);
      LOBYTE(v20) = v15;
      sub_1B6F22B68();
      v13 = v22;
      (*(v3 + 8))(v5, v2);
      goto LABEL_7;
    }

    v10 = *v8;
    v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48)];
    v22 = 0;
    v23 = 0xE000000000000000;
    v12 = 1954047342;
  }

  else
  {
    v10 = *v8;
    v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48)];
    v22 = 0;
    v23 = 0xE000000000000000;
    v12 = 1936287860;
  }

  MEMORY[0x1B8C9DA10](v12 & 0xFFFF0000FFFFFFFFLL | 0x2E00000000, 0xE500000000000000);
  LOBYTE(v20) = v10;
  sub_1B6F22B68();
  v13 = v22;
LABEL_7:
  v17 = sub_1B6F228D8();
  (*(*(v17 - 8) + 8))(v11, v17);
  return v13;
}

uint64_t RPIRKRatchet.DateResolution.hashValue.getter()
{
  v1 = *v0;
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](v1);
  return sub_1B6F22D18();
}

uint64_t RPIRKRatchet.LocallyPermanentRatchet.description.getter(uint64_t a1)
{
  v1 = sub_1B6F16738();
  sub_1B6F093BC(8, v1, v2, v7);
  v3 = v7[0];
  v4 = v7[1];
  v5 = sub_1B6F227D8();
  sub_1B6F01FA0(v3, v4);
  return v5;
}

uint64_t sub_1B6F093BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1B6F1043C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1B6F103D8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1B6F227B8();
    v15 = v14;
    result = sub_1B6F01FA0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t RPIRKRatchet.LocallyPermanentRatchet.irk(for:sameAccountDevicesRevision:managedAccountsRevision:contactsRevision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a4;
  v20 = a3;
  v21 = a1;
  v19 = a5;
  v24[1] = *MEMORY[0x1E69E9840];
  v18 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  __src = a2;
  __src = sub_1B6F106BC(&__src, v24);
  v24[0] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v24[0]);
  sub_1B6F062BC(v5, &v11[*(v9 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v11[*(v9 + 20)] = v17;
  v13 = v20;
  __src = v20;
  __src = sub_1B6F106BC(&__src, v24);
  v24[0] = v14 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v24[0]);
  v15 = v18;
  sub_1B6F062BC(v11, &v8[*(v18 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v8[*(v15 + 20)] = v13;
  RPIRKRatchet.ManagedAccountRatchet.irk(for:contactsRevision:)(v21, v22, v19);
  sub_1B6F12184(v8, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  return sub_1B6F12184(v11, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
}

uint64_t RPIRKRatchet.SameAccountRatchet.irk(for:managedAccountsRevision:contactsRevision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = a3;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src = a2;
  __src = sub_1B6F106BC(&__src, v16);
  v16[0] = v11 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v16[0]);
  sub_1B6F062BC(v4, &v10[*(v8 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v10[*(v8 + 20)] = a2;
  RPIRKRatchet.ManagedAccountRatchet.irk(for:contactsRevision:)(a1, v14, a4);
  return sub_1B6F12184(v10, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
}

uint64_t sub_1B6F09A68(uint64_t a1)
{
  v1 = sub_1B6F16738();
  sub_1B6F093BC(8, v1, v2, v7);
  v3 = v7[0];
  v4 = v7[1];
  v5 = sub_1B6F227D8();
  sub_1B6F01FA0(v3, v4);
  return v5;
}

uint64_t RPIRKRatchet.SameAccountRatchet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  sub_1B6F062BC(v1 + *(v8 + 24), v7, type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B6F10828(v7, v4, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1B6F22B28();
    v9 = sub_1B6F16738();
    sub_1B6F093BC(8, v9, v10, &v42);
    v11 = v42;
    v12 = v43;
    v13 = sub_1B6F227D8();
    v15 = v14;
    sub_1B6F01FA0(v11, v12);

    v42 = v13;
    v43 = v15;
    MEMORY[0x1B8C9DA10](0x41656D61739286E2, 0xAF28746E756F6363);
    v41 = *(v1 + *(v8 + 20));
    v16 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v16);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v17 = v42;
    sub_1B6F12184(v4, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  }

  else
  {
    v19 = *v7;
    v18 = v7[1];
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1B6F22B28();
    v20 = sub_1B6F16738();
    sub_1B6F093BC(8, v20, v21, &v42);
    v22 = v42;
    v23 = v43;
    v24 = sub_1B6F227D8();
    v26 = v25;
    sub_1B6F01FA0(v22, v23);

    v42 = v24;
    v43 = v26;
    MEMORY[0x1B8C9DA10](0x2853444920, 0xE500000000000000);
    v28 = sub_1B6F10EBC(8, v19, v18, v27);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = MEMORY[0x1B8C9D9E0](v28, v30, v32, v34);
    v37 = v36;

    MEMORY[0x1B8C9DA10](v35, v37);

    MEMORY[0x1B8C9DA10](0x1000000000000010, 0x80000001B6F45680);
    v41 = *(v1 + *(v8 + 20));
    v38 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v38);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    return v42;
  }

  return v17;
}

uint64_t RPIRKRatchet.ManagedAccountRatchet.irk(for:contactsRevision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a1;
  v32 = a3;
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B6F22998();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src = a2;
  __src = sub_1B6F106BC(&__src, v36);
  v36[0] = v16 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v36[0]);
  sub_1B6F062BC(v3, &v15[*(v13 + 24)], type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v15[*(v13 + 20)] = a2;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v17 = sub_1B6F228D8();
  __swift_project_value_buffer(v17, qword_1EB97CB58);
  v18 = v33;
  sub_1B6F0AA98(v12);
  v19 = v34;
  if (v18)
  {
    return sub_1B6F12184(v15, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  }

  sub_1B6F0AEA4(v34, v10);
  v20 = v29;
  RPIRKRatchet.DateRatchet.key.getter(v29);
  v21 = sub_1B6F16738();
  v22 = v10;
  v24 = v23;
  (*(v30 + 8))(v20, v31);
  sub_1B6F12184(v12, type metadata accessor for RPIRKRatchet.DateRatchet);
  sub_1B6F12184(v15, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  v25 = type metadata accessor for RPIRKRatchet.IRK(0);
  v26 = v32;
  sub_1B6F062BC(v19, v32 + *(v25 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
  result = sub_1B6F10828(v22, v26 + *(v25 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
  *v26 = v21;
  v26[1] = v24;
  return result;
}

uint64_t RPIRKRatchet.ManagedAccountRatchet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  sub_1B6F062BC(v1 + *(v8 + 24), v7, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B6F10828(v7, v4, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1B6F22B28();
    v9 = RPIRKRatchet.SameAccountRatchet.description.getter();
    v11 = v10;

    v38 = v9;
    v39 = v11;
    MEMORY[0x1B8C9DA10](0x1000000000000012, 0x80000001B6F456A0);
    v37 = *(v1 + *(v8 + 20));
    v12 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v12);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v13 = v38;
    sub_1B6F12184(v4, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  }

  else
  {
    v15 = *v7;
    v14 = v7[1];
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1B6F22B28();
    v16 = sub_1B6F16738();
    sub_1B6F093BC(8, v16, v17, &v38);
    v18 = v38;
    v19 = v39;
    v20 = sub_1B6F227D8();
    v22 = v21;
    sub_1B6F01FA0(v18, v19);

    v38 = v20;
    v39 = v22;
    MEMORY[0x1B8C9DA10](0x2853444920, 0xE500000000000000);
    v24 = sub_1B6F10EBC(8, v15, v14, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = MEMORY[0x1B8C9D9E0](v24, v26, v28, v30);
    v33 = v32;

    MEMORY[0x1B8C9DA10](v31, v33);

    MEMORY[0x1B8C9DA10](0x1000000000000013, 0x80000001B6F456C0);
    v37 = *(v1 + *(v8 + 20));
    v34 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v34);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    return v38;
  }

  return v13;
}

uint64_t sub_1B6F0A674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B6F22998();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = a4(0);
  *(a6 + *(v13 + 20)) = a2;
  return sub_1B6F10828(a3, a6 + *(v13 + 24), a5);
}

uint64_t RPIRKRatchet.ContactsRatchet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  sub_1B6F062BC(v1 + *(v8 + 24), v7, type metadata accessor for RPIRKRatchet.ContactsRatchet.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B6F10828(v7, v4, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1B6F22B28();
    v9 = RPIRKRatchet.ManagedAccountRatchet.description.getter();
    v11 = v10;

    v38 = v9;
    v39 = v11;
    MEMORY[0x1B8C9DA10](0x61746E6F639286E2, 0xAC00000028737463);
    v37 = *(v1 + *(v8 + 20));
    v12 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v12);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v13 = v38;
    sub_1B6F12184(v4, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  }

  else
  {
    v15 = *v7;
    v14 = v7[1];
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1B6F22B28();
    v16 = sub_1B6F16738();
    sub_1B6F093BC(8, v16, v17, &v38);
    v18 = v38;
    v19 = v39;
    v20 = sub_1B6F227D8();
    v22 = v21;
    sub_1B6F01FA0(v18, v19);

    v38 = v20;
    v39 = v22;
    MEMORY[0x1B8C9DA10](0x2853444920, 0xE500000000000000);
    v24 = sub_1B6F10EBC(8, v15, v14, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = MEMORY[0x1B8C9D9E0](v24, v26, v28, v30);
    v33 = v32;

    MEMORY[0x1B8C9DA10](v31, v33);

    MEMORY[0x1B8C9DA10](0x746E6F639286E229, 0xAD00002873746361);
    v37 = *(v1 + *(v8 + 20));
    v34 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v34);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    return v38;
  }

  return v13;
}

uint64_t sub_1B6F0AA98@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_1B6F22998();
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v26 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B6F22A38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0x72657665726F66;
  v35 = 0xE700000000000000;
  v7 = *(type metadata accessor for RPIRKRatchet.ContactsRatchet(0) + 20);
  v28 = v1;
  v32 = *(v1 + v7);
  v8 = v32;
  v9 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v9);

  sub_1B6F22A28();
  v10 = sub_1B6F22A18();
  v12 = v11;

  (*(v4 + 8))(v6, v3);
  v34 = v10;
  v35 = v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1B6F22B28();

  v32 = 0xD000000000000018;
  v33 = 0x80000001B6F45890;
  v36[3] = v8;
  v13 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v13);

  MEMORY[0x1B8C9DA10](34, 0xE100000000000000);
  v14 = v32;
  v15 = v33;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB10, &qword_1B6F2FE58);
  v17 = v31;
  sub_1B6F16568(v14, v15, 0xD000000000000048, 0x80000001B6F45590, 383, v16, v36);
  sub_1B6F04D40(v34, v35);

  if (!v17)
  {
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v36[0];
    v23 = v36[1];
    if (qword_1EB97CB40 != -1)
    {
      swift_once();
    }

    sub_1B6F229E8();
    sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1B6F10774();
    sub_1B6F229D8();
    sub_1B6F01FA0(v22, v23);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
    v25 = v29;
    (*(v20 + 32))(v29, v19, v30);
    sub_1B6F062BC(v21, v25 + v24, type metadata accessor for RPIRKRatchet.ContactsRatchet);
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RPIRKRatchet.DateRatchet(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B6F0AEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v202 = a2;
  v206 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v3 = MEMORY[0x1EEE9AC00](v206);
  v196 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v199 = &v188 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v195 = &v188 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v200 = &v188 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v194 = &v188 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v203 = &v188 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v193 = &v188 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v204 = &v188 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v192 = &v188 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v198 = &v188 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v191 = &v188 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v201 = &v188 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v197 = &v188 - v27;
  v208 = sub_1B6F22848();
  v28 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v210 = &v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v188 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v188 - v34;
  v36 = sub_1B6F228D8();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v188 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v211 = a1;
  v212 = &v188 - v41;
  sub_1B6F062BC(a1, v35, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = v37;
  v44 = *(v37 + 32);
  v207 = v28;
  if (EnumCaseMultiPayload > 1)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
    v44(v40, &v35[*(v46 + 64)], v36);
    (*(v28 + 8))(v35, v208);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v44(v40, &v35[*(v45 + 48)], v36);
  }

  v47 = v212;
  v44(v212, v40, v36);
  v48 = v210;
  v49 = v211;
  v50 = v209;
  sub_1B6F0811C(v210);
  if (v50)
  {
    return (*(v43 + 8))(v47, v36);
  }

  sub_1B6F062BC(v49, v33, type metadata accessor for RPIRKRatchet.IRKTarget);
  v52 = swift_getEnumCaseMultiPayload();
  v53 = v43;
  if (v52)
  {
    v54 = v207;
    if (v52 == 1)
    {
      v55 = *v33;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
      v57 = *(v53 + 8);
      v57(&v33[*(v56 + 48)], v36);
    }

    else
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v55 = v33[*(v59 + 48)];
      v57 = *(v53 + 8);
      v57(&v33[*(v59 + 64)], v36);
      (*(v54 + 8))(v33, v208);
    }
  }

  else
  {
    v55 = *v33;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v57 = *(v53 + 8);
    v57(&v33[*(v58 + 48)], v36);
    v54 = v207;
  }

  v60 = v205;
  if (v55 > 2)
  {
    if (v55 <= 4)
    {
      v61 = v212;
      if (v55 == 3)
      {
        sub_1B6F062BC(v205, v204, type metadata accessor for RPIRKRatchet.DateRatchet);
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 > 2)
        {
          if (v62 > 4)
          {
            if (v62 == 5)
            {
              v98 = &qword_1EB97BA58;
              v99 = &qword_1B6F2F9E0;
            }

            else
            {
              v98 = &qword_1EB97BA50;
              v99 = &qword_1B6F2F9D8;
            }
          }

          else
          {
            if (v62 == 3)
            {
              v211 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0) + 48);
              if (sub_1B6F0DEA4(v48))
              {
                (*(v54 + 8))(v48, v208);
                v57(v61, v36);
                sub_1B6F062BC(v60, v202, type metadata accessor for RPIRKRatchet.DateRatchet);
                v63 = v204;
LABEL_53:
                sub_1B6F12184(v63 + v211, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
                v92 = sub_1B6F22998();
                return (*(*(v92 - 8) + 8))(v63, v92);
              }

              v209 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
              sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds, &protocol conformance descriptor for RPIRKRatchet.DateOutOfRatchetBounds);
              v190 = swift_allocError();
              v176 = v175;
              v177 = v60;
              v178 = v208;
              (*(v54 + 16))(v175, v48, v208);
              sub_1B6F062BC(v177, v176 + *(v209 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
              swift_willThrow();
              (*(v54 + 8))(v48, v178);
              v57(v61, v36);
              v169 = v204;
LABEL_142:
              sub_1B6F12184(v169 + v211, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
              v184 = sub_1B6F22998();
              return (*(*(v184 - 8) + 8))(v169, v184);
            }

            v98 = &qword_1EB97BA60;
            v99 = &qword_1B6F2F9E8;
          }

          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(v98, v99);
          v147 = v204;
          sub_1B6F12184(v204 + *(v146 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
          v148 = sub_1B6F22998();
          (*(*(v148 - 8) + 8))(v147, v148);
          RPIRKRatchet.DateRatchet.resolution.getter(&v216);
          v149 = v216;
          goto LABEL_131;
        }

        v190 = 0;
        if (v62)
        {
          if (v62 == 1)
          {
            v95 = &qword_1EB97BA78;
            v96 = &qword_1B6F2FA00;
          }

          else
          {
            v95 = &qword_1EB97BA70;
            v96 = &qword_1B6F2F9F8;
          }
        }

        else
        {
          v95 = &qword_1EB97BA80;
          v96 = &qword_1B6F2FA08;
        }

        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(v95, v96);
        v118 = v204;
        sub_1B6F12184(v204 + *(v117 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v119 = sub_1B6F22998();
        (*(*(v119 - 8) + 8))(v118, v119);
        v120 = v193;
      }

      else
      {
        sub_1B6F062BC(v205, v203, type metadata accessor for RPIRKRatchet.DateRatchet);
        v85 = swift_getEnumCaseMultiPayload();
        if (v85 <= 2)
        {
          v190 = 0;
          if (v85)
          {
            if (v85 == 1)
            {
              v86 = &qword_1EB97BA78;
              v87 = &qword_1B6F2FA00;
            }

            else
            {
              v86 = &qword_1EB97BA70;
              v87 = &qword_1B6F2F9F8;
            }
          }

          else
          {
            v86 = &qword_1EB97BA80;
            v87 = &qword_1B6F2FA08;
          }
        }

        else
        {
          if (v85 > 4)
          {
            if (v85 == 5)
            {
              v101 = &qword_1EB97BA58;
              v102 = &qword_1B6F2F9E0;
            }

            else
            {
              v101 = &qword_1EB97BA50;
              v102 = &qword_1B6F2F9D8;
            }

            v154 = __swift_instantiateConcreteTypeFromMangledNameV2(v101, v102);
            v155 = v203;
            sub_1B6F12184(v203 + *(v154 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
            v156 = sub_1B6F22998();
            (*(*(v156 - 8) + 8))(v155, v156);
            RPIRKRatchet.DateRatchet.resolution.getter(&v217);
            v149 = v217;
LABEL_131:
            v157 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
            sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable, &protocol conformance descriptor for RPIRKRatchet.ResolutionUnavailable);
            swift_allocError();
            *v158 = v149;
            sub_1B6F062BC(v60, &v158[*(v157 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
            swift_willThrow();
            (*(v54 + 8))(v48, v208);
            v130 = v61;
            return (v57)(v130, v36);
          }

          v190 = 0;
          if (v85 != 3)
          {
            v139 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8) + 48);
            if (sub_1B6F0DEA4(v48))
            {
              (*(v54 + 8))(v48, v208);
              v57(v61, v36);
              sub_1B6F062BC(v60, v202, type metadata accessor for RPIRKRatchet.DateRatchet);
              v140 = v203;
              sub_1B6F12184(v203 + v139, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
              v141 = sub_1B6F22998();
              return (*(*(v141 - 8) + 8))(v140, v141);
            }

            v209 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
            sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds, &protocol conformance descriptor for RPIRKRatchet.DateOutOfRatchetBounds);
            v190 = swift_allocError();
            v180 = v179;
            v181 = *(v54 + 16);
            v211 = v139;
            v182 = v60;
            v183 = v208;
            v181(v179, v48, v208);
            sub_1B6F062BC(v182, v180 + *(v209 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
            swift_willThrow();
            (*(v54 + 8))(v48, v183);
            v57(v61, v36);
            v169 = v203;
            goto LABEL_142;
          }

          v86 = &qword_1EB97BA68;
          v87 = &qword_1B6F2F9F0;
        }

        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(v86, v87);
        v122 = v203;
        sub_1B6F12184(v203 + *(v121 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v123 = sub_1B6F22998();
        (*(*(v123 - 8) + 8))(v122, v123);
        v120 = v194;
      }

      v124 = v211;
      v125 = v190;
      sub_1B6F0E720(v211, v120);
      if (!v125)
      {
        sub_1B6F0AEA4(v124, v202);
        sub_1B6F12184(v120, type metadata accessor for RPIRKRatchet.DateRatchet);
      }

      (*(v54 + 8))(v48, v208);
      goto LABEL_117;
    }

    v209 = v53;
    v70 = v57;
    v71 = v212;
    if (v55 != 5)
    {
      v72 = v199;
      sub_1B6F062BC(v205, v199, type metadata accessor for RPIRKRatchet.DateRatchet);
      v88 = swift_getEnumCaseMultiPayload();
      if (v88 <= 2)
      {
        if (v88)
        {
          if (v88 == 1)
          {
            v89 = &qword_1EB97BA78;
            v90 = &qword_1B6F2FA00;
          }

          else
          {
            v89 = &qword_1EB97BA70;
            v90 = &qword_1B6F2F9F8;
          }
        }

        else
        {
          v89 = &qword_1EB97BA80;
          v90 = &qword_1B6F2FA08;
        }
      }

      else if (v88 > 4)
      {
        if (v88 != 5)
        {
          v211 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8) + 48);
          v100 = v48;
          goto LABEL_134;
        }

        v89 = &qword_1EB97BA58;
        v90 = &qword_1B6F2F9E0;
      }

      else if (v88 == 3)
      {
        v89 = &qword_1EB97BA68;
        v90 = &qword_1B6F2F9F0;
      }

      else
      {
        v89 = &qword_1EB97BA60;
        v90 = &qword_1B6F2F9E8;
      }

      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
      sub_1B6F12184(v72 + *(v142 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
      v143 = sub_1B6F22998();
      (*(*(v143 - 8) + 8))(v72, v143);
      v144 = v196;
      v145 = v211;
      sub_1B6F0E720(v211, v196);
      sub_1B6F0AEA4(v145, v202);
      sub_1B6F12184(v144, type metadata accessor for RPIRKRatchet.DateRatchet);
      (*(v54 + 8))(v48, v208);
      return v70(v212, v36);
    }

    v72 = v200;
    sub_1B6F062BC(v205, v200, type metadata accessor for RPIRKRatchet.DateRatchet);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 <= 2)
    {
      v189 = v70;
      if (v73)
      {
        if (v73 == 1)
        {
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
        }

        else
        {
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        }

        goto LABEL_121;
      }

      v74 = &qword_1EB97BA80;
      v75 = &qword_1B6F2FA08;
LABEL_120:
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
LABEL_121:
      sub_1B6F12184(v72 + *(v97 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
      v136 = sub_1B6F22998();
      (*(*(v136 - 8) + 8))(v72, v136);
      v137 = v195;
      v138 = v211;
      sub_1B6F0E720(v211, v195);
      sub_1B6F0AEA4(v138, v202);
      sub_1B6F12184(v137, type metadata accessor for RPIRKRatchet.DateRatchet);
      (*(v54 + 8))(v48, v208);
      return v189(v212, v36);
    }

    if (v73 <= 4)
    {
      v189 = v70;
      if (v73 == 3)
      {
        v74 = &qword_1EB97BA68;
        v75 = &qword_1B6F2F9F0;
      }

      else
      {
        v74 = &qword_1EB97BA60;
        v75 = &qword_1B6F2F9E8;
      }

      goto LABEL_120;
    }

    if (v73 == 5)
    {
      v211 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0) + 48);
      v48 = v210;
      v100 = v210;
      v71 = v212;
LABEL_134:
      if (sub_1B6F0DEA4(v100))
      {
        (*(v54 + 8))(v48, v208);
        v70(v71, v36);
        sub_1B6F062BC(v60, v202, type metadata accessor for RPIRKRatchet.DateRatchet);
        sub_1B6F12184(v72 + v211, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v159 = sub_1B6F22998();
        return (*(*(v159 - 8) + 8))(v72, v159);
      }

      v206 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
      sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds, &protocol conformance descriptor for RPIRKRatchet.DateOutOfRatchetBounds);
      v190 = swift_allocError();
      v161 = v160;
      v162 = v60;
      v163 = v208;
      (*(v54 + 16))(v160, v48, v208);
      sub_1B6F062BC(v162, v161 + *(v206 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
      swift_willThrow();
      (*(v54 + 8))(v48, v163);
      v70(v71, v36);
      v104 = v72 + v211;
      goto LABEL_137;
    }

    v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8) + 48);
    RPIRKRatchet.DateRatchet.resolution.getter(&v218);
    v151 = v218;
    v152 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable, &protocol conformance descriptor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v153 = v151;
    sub_1B6F062BC(v60, &v153[*(v152 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v54 + 8))(v210, v208);
    v70(v212, v36);
    v104 = v72 + v150;
LABEL_137:
    sub_1B6F12184(v104, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v164 = sub_1B6F22998();
    return (*(*(v164 - 8) + 8))(v72, v164);
  }

  if (!v55)
  {
    v76 = v54;
    v72 = v197;
    sub_1B6F062BC(v205, v197, type metadata accessor for RPIRKRatchet.DateRatchet);
    v77 = swift_getEnumCaseMultiPayload();
    if (v77 <= 2)
    {
      v67 = v212;
      if (!v77)
      {
        (*(v76 + 8))(v210, v208);
        v57(v67, v36);
        v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
        sub_1B6F062BC(v60, v202, type metadata accessor for RPIRKRatchet.DateRatchet);
        v104 = v72 + v103;
        goto LABEL_137;
      }

      if (v77 == 1)
      {
        v78 = &qword_1EB97BA78;
        v79 = &qword_1B6F2FA00;
      }

      else
      {
        v78 = &qword_1EB97BA70;
        v79 = &qword_1B6F2F9F8;
      }
    }

    else
    {
      v67 = v212;
      if (v77 > 4)
      {
        if (v77 == 5)
        {
          v78 = &qword_1EB97BA58;
          v79 = &qword_1B6F2F9E0;
        }

        else
        {
          v78 = &qword_1EB97BA50;
          v79 = &qword_1B6F2F9D8;
        }
      }

      else if (v77 == 3)
      {
        v78 = &qword_1EB97BA68;
        v79 = &qword_1B6F2F9F0;
      }

      else
      {
        v78 = &qword_1EB97BA60;
        v79 = &qword_1B6F2F9E8;
      }
    }

    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
    sub_1B6F12184(v72 + *(v110 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v111 = sub_1B6F22998();
    (*(*(v111 - 8) + 8))(v72, v111);
    RPIRKRatchet.DateRatchet.resolution.getter(&v213);
    v112 = v213;
    v113 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable, &protocol conformance descriptor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v114 = v112;
    sub_1B6F062BC(v60, &v114[*(v113 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v76 + 8))(v210, v208);
LABEL_113:
    v130 = v67;
    return (v57)(v130, v36);
  }

  if (v55 == 1)
  {
    v64 = v201;
    sub_1B6F062BC(v205, v201, type metadata accessor for RPIRKRatchet.DateRatchet);
    v65 = swift_getEnumCaseMultiPayload();
    if (v65 <= 2)
    {
      if (!v65)
      {
        v209 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
        v105 = v191;
        sub_1B6F0E720(v49, v191);
        v185 = v209;
        sub_1B6F0AEA4(v49, v202);
        sub_1B6F12184(v105, type metadata accessor for RPIRKRatchet.DateRatchet);
        (*(v54 + 8))(v48, v208);
        v57(v212, v36);
        v186 = v201;
        sub_1B6F12184(v201 + v185, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v187 = sub_1B6F22998();
        return (*(*(v187 - 8) + 8))(v186, v187);
      }

      v66 = v54;
      if (v65 == 1)
      {
        v211 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00) + 48);
        v91 = v212;
        if (sub_1B6F0DEA4(v48))
        {
          (*(v66 + 8))(v48, v208);
          v57(v91, v36);
          sub_1B6F062BC(v60, v202, type metadata accessor for RPIRKRatchet.DateRatchet);
          v63 = v201;
          goto LABEL_53;
        }

        v209 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
        sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds, &protocol conformance descriptor for RPIRKRatchet.DateOutOfRatchetBounds);
        v190 = swift_allocError();
        v166 = v165;
        v167 = v60;
        v168 = v208;
        (*(v66 + 16))(v165, v48, v208);
        sub_1B6F062BC(v167, v166 + *(v209 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
        swift_willThrow();
        (*(v66 + 8))(v48, v168);
        v57(v91, v36);
        v169 = v201;
        goto LABEL_142;
      }

      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
      v67 = v212;
    }

    else
    {
      v66 = v54;
      if (v65 > 4)
      {
        v67 = v212;
        if (v65 == 5)
        {
          v68 = &qword_1EB97BA58;
          v69 = &qword_1B6F2F9E0;
        }

        else
        {
          v68 = &qword_1EB97BA50;
          v69 = &qword_1B6F2F9D8;
        }
      }

      else
      {
        v67 = v212;
        if (v65 == 3)
        {
          v68 = &qword_1EB97BA68;
          v69 = &qword_1B6F2F9F0;
        }

        else
        {
          v68 = &qword_1EB97BA60;
          v69 = &qword_1B6F2F9E8;
        }
      }

      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
    }

    sub_1B6F12184(v64 + *(v115 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v126 = sub_1B6F22998();
    (*(*(v126 - 8) + 8))(v64, v126);
    RPIRKRatchet.DateRatchet.resolution.getter(&v214);
    v127 = v214;
    v128 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable, &protocol conformance descriptor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v129 = v127;
    sub_1B6F062BC(v60, &v129[*(v128 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v66 + 8))(v48, v208);
    goto LABEL_113;
  }

  v80 = v198;
  sub_1B6F062BC(v205, v198, type metadata accessor for RPIRKRatchet.DateRatchet);
  v81 = swift_getEnumCaseMultiPayload();
  v82 = v212;
  if (v81 > 2)
  {
    if (v81 > 4)
    {
      if (v81 == 5)
      {
        v83 = &qword_1EB97BA58;
        v84 = &qword_1B6F2F9E0;
      }

      else
      {
        v83 = &qword_1EB97BA50;
        v84 = &qword_1B6F2F9D8;
      }
    }

    else if (v81 == 3)
    {
      v83 = &qword_1EB97BA68;
      v84 = &qword_1B6F2F9F0;
    }

    else
    {
      v83 = &qword_1EB97BA60;
      v84 = &qword_1B6F2F9E8;
    }

    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
    sub_1B6F12184(v80 + *(v131 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v132 = sub_1B6F22998();
    (*(*(v132 - 8) + 8))(v80, v132);
    RPIRKRatchet.DateRatchet.resolution.getter(&v215);
    v133 = v215;
    v134 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable, &protocol conformance descriptor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v135 = v133;
    sub_1B6F062BC(v60, &v135[*(v134 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    goto LABEL_116;
  }

  if (!v81)
  {
    v93 = &qword_1EB97BA80;
    v94 = &qword_1B6F2FA08;
    goto LABEL_87;
  }

  if (v81 == 1)
  {
    v93 = &qword_1EB97BA78;
    v94 = &qword_1B6F2FA00;
LABEL_87:
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
    sub_1B6F12184(v80 + *(v106 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v107 = sub_1B6F22998();
    (*(*(v107 - 8) + 8))(v80, v107);
    v108 = v192;
    v109 = v211;
    sub_1B6F0E720(v211, v192);
    sub_1B6F0AEA4(v109, v202);
    sub_1B6F12184(v108, type metadata accessor for RPIRKRatchet.DateRatchet);
LABEL_116:
    (*(v207 + 8))(v48, v208);
LABEL_117:
    v130 = v212;
    return (v57)(v130, v36);
  }

  v211 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8) + 48);
  if (sub_1B6F0DEA4(v48))
  {
    (*(v207 + 8))(v48, v208);
    v57(v82, v36);
    sub_1B6F062BC(v60, v202, type metadata accessor for RPIRKRatchet.DateRatchet);
  }

  else
  {
    v209 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
    sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds, &protocol conformance descriptor for RPIRKRatchet.DateOutOfRatchetBounds);
    v190 = swift_allocError();
    v171 = v170;
    v172 = v207;
    v173 = v60;
    v174 = v208;
    (*(v207 + 16))(v170, v48, v208);
    sub_1B6F062BC(v173, v171 + *(v209 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v172 + 8))(v48, v174);
    v57(v212, v36);
  }

  sub_1B6F12184(v80 + v211, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v116 = sub_1B6F22998();
  return (*(*(v116 - 8) + 8))(v80, v116);
}

uint64_t sub_1B6F0D0B0()
{
  v1 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v0, v3, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
        v6 = &v3[v12[12]];
        v7 = *&v3[v12[16]];
        v26 = sub_1B6F0D3C8(*&v3[v12[20]], v0);
        v27 = v13;
        v9 = 119;
      }

      else
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
        v6 = &v3[v19[12]];
        v7 = *&v3[v19[16]];
        v26 = sub_1B6F0D3C8(*&v3[v19[20]], v0);
        v27 = v20;
        v9 = 100;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
      v6 = &v3[v5[12]];
      v7 = *&v3[v5[16]];
      v26 = sub_1B6F0D3C8(*&v3[v5[20]], v0);
      v27 = v8;
      v9 = 113;
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v6 = &v3[v17[12]];
      v7 = *&v3[v17[16]];
      v26 = sub_1B6F0D3C8(*&v3[v17[20]], v0);
      v27 = v18;
      v9 = 109;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
      v11 = *&v3[*(v10 + 64)];
      v6 = &v3[*(v10 + 48)];
      v26 = 121;
      v27 = 0xE100000000000000;
      v25 = v11;
LABEL_15:
      v21 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v21);

      v14 = v26;
      goto LABEL_16;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
    v6 = &v3[v15[12]];
    v7 = *&v3[v15[16]];
    v26 = sub_1B6F0D3C8(*&v3[v15[20]], v0);
    v27 = v16;
    v9 = 115;
LABEL_14:
    MEMORY[0x1B8C9DA10](v9, 0xE100000000000000);
    v25 = v7;
    goto LABEL_15;
  }

  v6 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48)];
  v14 = 102;
LABEL_16:
  sub_1B6F12184(v6, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v22 = sub_1B6F22998();
  (*(*(v22 - 8) + 8))(v3, v22);
  return v14;
}

uint64_t sub_1B6F0D3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  sub_1B6F062BC(a2, v6, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v14 = &qword_1EB97BA78;
        v15 = &qword_1B6F2FA00;
      }

      else
      {
        v14 = &qword_1EB97BA70;
        v15 = &qword_1B6F2F9F8;
      }
    }

    else
    {
      v14 = &qword_1EB97BA80;
      v15 = &qword_1B6F2FA08;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v14 = &qword_1EB97BA58;
      v15 = &qword_1B6F2F9E0;
    }

    else
    {
      v14 = &qword_1EB97BA50;
      v15 = &qword_1B6F2F9D8;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v14 = &qword_1EB97BA68;
    v15 = &qword_1B6F2F9F0;
  }

  else
  {
    v14 = &qword_1EB97BA60;
    v15 = &qword_1B6F2F9E8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  sub_1B6F10828(&v6[*(v16 + 48)], v10, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v17 = sub_1B6F22998();
  (*(*(v17 - 8) + 8))(v6, v17);
  sub_1B6F10828(v10, v12, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v18 = swift_getEnumCaseMultiPayload();
  sub_1B6F12184(v12, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  if (v18 == 3)
  {
    return 0;
  }

  v22 = 121;
  v23 = 0xE100000000000000;
  v21[1] = a1;
  v20 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v20);

  return v22;
}

uint64_t sub_1B6F0D698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v2, v6, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = &qword_1EB97BA78;
        v9 = &qword_1B6F2FA00;
      }

      else
      {
        v8 = &qword_1EB97BA70;
        v9 = &qword_1B6F2F9F8;
      }
    }

    else
    {
      v8 = &qword_1EB97BA80;
      v9 = &qword_1B6F2FA08;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v8 = &qword_1EB97BA58;
      v9 = &qword_1B6F2F9E0;
    }

    else
    {
      v8 = &qword_1EB97BA50;
      v9 = &qword_1B6F2F9D8;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v8 = &qword_1EB97BA68;
    v9 = &qword_1B6F2F9F0;
  }

  else
  {
    v8 = &qword_1EB97BA60;
    v9 = &qword_1B6F2F9E8;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  sub_1B6F10828(&v6[*(v10 + 48)], a1, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v11 = sub_1B6F22998();
  return (*(*(v11 - 8) + 8))(v6, v11);
}

uint64_t RPIRKRatchet.DateRatchet.description.getter()
{
  v0 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6F22998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6F0D698(v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B6F10828(v12, v5, type metadata accessor for RPIRKRatchet.ContactsRatchet);
      v53 = RPIRKRatchet.ContactsRatchet.description.getter();
      v54 = v26;
      v27 = sub_1B6F0D0B0();
      MEMORY[0x1B8C9DA10](v27);

      v28 = v53;
      sub_1B6F12184(v5, type metadata accessor for RPIRKRatchet.ContactsRatchet);
    }

    else
    {
      v49 = swift_projectBox();
      sub_1B6F062BC(v49, v2, type metadata accessor for RPIRKRatchet.DateRatchet);
      v53 = RPIRKRatchet.DateRatchet.description.getter();
      v54 = v50;
      v51 = sub_1B6F0D0B0();
      MEMORY[0x1B8C9DA10](v51);

      v28 = v53;
      sub_1B6F12184(v2, type metadata accessor for RPIRKRatchet.DateRatchet);
    }
  }

  else
  {
    v15 = *v12;
    v14 = v12[1];
    if (EnumCaseMultiPayload)
    {
      RPIRKRatchet.DateRatchet.key.getter(v9);
      v29 = sub_1B6F16738();
      v31 = v30;
      (*(v7 + 8))(v9, v6);
      sub_1B6F093BC(8, v29, v31, &v53);
      v32 = v53;
      v33 = v54;
      v34 = sub_1B6F227D8();
      v36 = v35;
      sub_1B6F01FA0(v32, v33);
      v53 = v34;
      v54 = v36;
      v24 = 0x286C61636F4C20;
      v25 = 0xE700000000000000;
    }

    else
    {
      RPIRKRatchet.DateRatchet.key.getter(v9);
      v16 = sub_1B6F16738();
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      sub_1B6F093BC(8, v16, v18, &v53);
      v19 = v53;
      v20 = v54;
      v21 = sub_1B6F227D8();
      v23 = v22;
      sub_1B6F01FA0(v19, v20);
      v53 = v21;
      v54 = v23;
      v24 = 0x2853444920;
      v25 = 0xE500000000000000;
    }

    MEMORY[0x1B8C9DA10](v24, v25);
    v38 = sub_1B6F10EBC(8, v15, v14, v37);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = MEMORY[0x1B8C9D9E0](v38, v40, v42, v44);
    v47 = v46;

    MEMORY[0x1B8C9DA10](v45, v47);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v48 = sub_1B6F0D0B0();
    MEMORY[0x1B8C9DA10](v48);

    return v53;
  }

  return v28;
}

uint64_t RPIRKRatchet.DateRatchet.resolution.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v2, v6, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
        v9 = 1;
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        v9 = 2;
      }
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08);
      v9 = 0;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
      v9 = 5;
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
      v9 = 6;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
    v9 = 3;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
    v9 = 4;
  }

  sub_1B6F12184(&v6[*(v8 + 48)], type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v10 = sub_1B6F22998();
  result = (*(*(v10 - 8) + 8))(v6, v10);
  *a1 = v9;
  return result;
}

BOOL sub_1B6F0DEA4(uint64_t a1)
{
  v3 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6F228B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 104);
  v10(v9, *MEMORY[0x1E6969A68], v6);
  *&v67 = a1;
  v68 = sub_1B6F228C8();
  v11 = *(v7 + 8);
  v11(v9, v6);
  v66 = v1;
  sub_1B6F062BC(v1, v5, type metadata accessor for RPIRKRatchet.DateRatchet);
  v12 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48)];
      v20 = 1;
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
      v19 = &v5[*(v18 + 48)];
      v20 = v68 == *&v5[*(v18 + 64)];
      goto LABEL_35;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
    v66 = *&v12[v14[16]];
    v15 = *&v12[v14[20]];
    v10(v9, *MEMORY[0x1E6969A78], v6);
    v41 = sub_1B6F228C8();
    v11(v9, v6);
    v17 = v41 / 2;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v66 = *&v12[v14[16]];
      v43 = *&v12[v14[20]];
      v10(v9, *MEMORY[0x1E6969A78], v6);
      v44 = sub_1B6F228C8();
      v11(v9, v6);
      v42 = v68 == v43 && v44 == v66;
LABEL_24:
      v20 = v42;
      v19 = &v12[v14[12]];
      goto LABEL_35;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
    v66 = *&v12[v14[16]];
    v15 = *&v12[v14[20]];
    v10(v9, *MEMORY[0x1E6969A78], v6);
    v16 = sub_1B6F228C8();
    v11(v9, v6);
    v17 = v16 / 4;
LABEL_18:
    v42 = v68 == v15 && v66 == v17;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
    v22 = *&v5[v21[20]];
    v64 = *&v5[v21[16]];
    v65 = v22;
    v10(v9, *MEMORY[0x1E6969A10], v6);
    v23 = sub_1B6F228C8();
    v11(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BAB8, &qword_1B6F2FA20);
    v24 = swift_allocObject();
    v67 = xmmword_1B6F2F9B0;
    *(v24 + 16) = xmmword_1B6F2F9B0;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1B6F22B28();
    v25 = RPIRKRatchet.DateRatchet.description.getter();
    v27 = v26;

    v70 = v25;
    v71 = v27;
    MEMORY[0x1B8C9DA10](0xD000000000000010, 0x80000001B6F456E0);
    v69 = v23;
    v28 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v28);

    v29 = v70;
    v30 = v71;
    v31 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 32) = v29;
    *(v24 + 40) = v30;
    sub_1B6F22CE8();

    v32 = swift_allocObject();
    *(v32 + 16) = v67;
    v70 = 0;
    v71 = 0xE000000000000000;
    v12 = v5;
    sub_1B6F22B28();
    v33 = RPIRKRatchet.DateRatchet.description.getter();
    v35 = v34;

    v70 = v33;
    v71 = v35;
    MEMORY[0x1B8C9DA10](0x59664F6B65657720, 0xEC00000020726165);
    v36 = v64;
    v69 = v64;
    v37 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v37);

    v38 = v70;
    v39 = v71;
    *(v32 + 56) = v31;
    *(v32 + 32) = v38;
    *(v32 + 40) = v39;
    sub_1B6F22CE8();

    v20 = v68 == v65 && v23 == v36;
    v19 = &v12[v21[12]];
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
    v46 = v5;
    v47 = *&v5[*(v45 + 64)];
    v64 = *&v12[*(v45 + 80)];
    v65 = v45;
    v10(v9, *MEMORY[0x1E6969A48], v6);
    v48 = sub_1B6F228C8();
    v11(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BAB8, &qword_1B6F2FA20);
    v49 = swift_allocObject();
    v67 = xmmword_1B6F2F9B0;
    *(v49 + 16) = xmmword_1B6F2F9B0;
    v70 = RPIRKRatchet.DateRatchet.description.getter();
    v71 = v50;
    MEMORY[0x1B8C9DA10](0x7961446574616420, 0xE900000000000020);
    v69 = v48;
    v51 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v51);

    v52 = v70;
    v53 = v71;
    v54 = MEMORY[0x1E69E6158];
    *(v49 + 56) = MEMORY[0x1E69E6158];
    *(v49 + 32) = v52;
    *(v49 + 40) = v53;
    sub_1B6F22CE8();

    v55 = swift_allocObject();
    *(v55 + 16) = v67;
    v70 = RPIRKRatchet.DateRatchet.description.getter();
    v71 = v56;
    MEMORY[0x1B8C9DA10](0x6559664F79616420, 0xEB00000000207261);
    v69 = v47;
    v57 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v57);

    v58 = v70;
    v59 = v71;
    *(v55 + 56) = v54;
    v12 = v46;
    *(v55 + 32) = v58;
    *(v55 + 40) = v59;
    sub_1B6F22CE8();

    v20 = v68 == v64 && v48 == v47;
    v19 = &v46[*(v65 + 48)];
  }

LABEL_35:
  sub_1B6F12184(v19, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v61 = sub_1B6F22998();
  (*(*(v61 - 8) + 8))(v12, v61);
  return v20;
}

uint64_t sub_1B6F0E720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v4 = sub_1B6F228B8();
  v164 = *(v4 - 8);
  v165 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v163 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1B6F22998();
  v167 = *(v169 - 8);
  v6 = MEMORY[0x1EEE9AC00](v169);
  v166 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v168 = &v156 - v8;
  v170 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  MEMORY[0x1EEE9AC00](v170);
  v171 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6F22848();
  v11 = *(v10 - 8);
  v174 = v10;
  v175 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v156 - v17;
  v19 = sub_1B6F228D8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v178 = &v156 - v24;
  sub_1B6F062BC(a1, v18, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v176 = v20;
  v26 = *(v20 + 32);
  if (EnumCaseMultiPayload > 1)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
    v26(v23, &v18[*(v28 + 64)], v19);
    (*(v175 + 8))(v18, v174);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v26(v23, &v18[*(v27 + 48)], v19);
  }

  v26(v178, v23, v19);
  sub_1B6F0811C(v177);
  if (v2)
  {
    return (*(v176 + 8))(v178, v19);
  }

  sub_1B6F062BC(a1, v16, type metadata accessor for RPIRKRatchet.IRKTarget);
  v30 = swift_getEnumCaseMultiPayload();
  v31 = v176;
  if (v30)
  {
    v32 = v173;
    if (v30 == 1)
    {
      v33 = *v16;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
      v35 = *(v31 + 8);
      v35(&v16[*(v34 + 48)], v19);
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v33 = v16[*(v37 + 48)];
      v35 = *(v31 + 8);
      v35(&v16[*(v37 + 64)], v19);
      (*(v175 + 8))(v16, v174);
    }
  }

  else
  {
    v33 = *v16;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v35 = *(v31 + 8);
    v35(&v16[*(v36 + 48)], v19);
    v32 = v173;
  }

  v38 = v177;
  if (!sub_1B6F0DEA4(v177))
  {
    v39 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
    sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds, &protocol conformance descriptor for RPIRKRatchet.DateOutOfRatchetBounds);
    swift_allocError();
    v41 = v40;
    v43 = v174;
    v42 = v175;
    (*(v175 + 16))(v40, v38, v174);
    sub_1B6F062BC(v32, v41 + *(v39 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v42 + 8))(v38, v43);
    return (v35)(v178, v19);
  }

  RPIRKRatchet.DateRatchet.resolution.getter(&v179);
  if (v179 == v33)
  {
    (*(v175 + 8))(v177, v174);
    v35(v178, v19);
    return sub_1B6F062BC(v32, v172, type metadata accessor for RPIRKRatchet.DateRatchet);
  }

  v44 = v171;
  sub_1B6F062BC(v32, v171, type metadata accessor for RPIRKRatchet.DateRatchet);
  v45 = swift_getEnumCaseMultiPayload();
  if (v45 <= 2)
  {
    v162 = 0;
    if (v45)
    {
      if (v45 == 1)
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
        v67 = *(v66 + 48);
        v68 = v167;
        v69 = *(v167 + 32);
        v158 = *(v44 + *(v66 + 64));
        v159 = (v167 + 32);
        v160 = v69;
        v161 = v67;
        v69(v168, v44, v169);
        v71 = v163;
        v70 = v164;
        v72 = v165;
        (*(v164 + 104))(v163, *MEMORY[0x1E6969A78], v165);
        v73 = v178;
        v74 = sub_1B6F228C8();
        (*(v70 + 8))(v71, v72);
        v74 /= 2;
        v75 = v166;
        v76 = v168;
        v77 = v158;
        sub_1B6F0F99C(v168, v74, v158);
        v78 = v76;
        v79 = v169;
        (*(v68 + 8))(v78, v169);
        (*(v175 + 8))(v177, v174);
        v35(v73, v19);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        v81 = v80[12];
        v82 = v80[16];
        v83 = v80[20];
        v84 = v172;
        v160(v172, v75, v79);
        v85 = swift_allocBox();
        sub_1B6F062BC(v173, v86, type metadata accessor for RPIRKRatchet.DateRatchet);
        *(v84 + v81) = v85;
        type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
        swift_storeEnumTagMultiPayload();
        *(v84 + v82) = v74;
      }

      else
      {
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        v127 = *(v126 + 48);
        v128 = v167;
        v129 = *(v167 + 32);
        v158 = *(v44 + *(v126 + 80));
        v159 = (v167 + 32);
        v160 = v129;
        v161 = v127;
        v129(v168, v44, v169);
        v131 = v163;
        v130 = v164;
        v132 = v165;
        (*(v164 + 104))(v163, *MEMORY[0x1E6969A78], v165);
        v133 = v178;
        v134 = sub_1B6F228C8();
        (*(v130 + 8))(v131, v132);
        v135 = v166;
        v136 = v168;
        v77 = v158;
        sub_1B6F0F99C(v168, v137 >> 2, v158);
        v138 = v136;
        v139 = v169;
        (*(v128 + 8))(v138, v169);
        (*(v175 + 8))(v177, v174);
        v35(v133, v19);
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
        v141 = v140[12];
        v142 = v140[16];
        v83 = v140[20];
        v84 = v172;
        v160(v172, v135, v139);
        v143 = swift_allocBox();
        sub_1B6F062BC(v173, v144, type metadata accessor for RPIRKRatchet.DateRatchet);
        *(v84 + v141) = v143;
        type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
        swift_storeEnumTagMultiPayload();
        *(v84 + v142) = v134 / 4;
      }

      *(v84 + v83) = v77;
    }

    else
    {
      v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
      v109 = v167;
      v108 = v168;
      v110 = *(v167 + 32);
      v159 = (v167 + 32);
      v160 = v110;
      v161 = v107;
      v110(v168, v44, v169);
      v112 = v163;
      v111 = v164;
      v113 = v165;
      (*(v164 + 104))(v163, *MEMORY[0x1E6969A68], v165);
      v114 = v178;
      v115 = sub_1B6F228C8();
      (*(v111 + 8))(v112, v113);
      v116 = v166;
      v117 = v115;
      sub_1B6F0F99C(v108, v115, v115);
      v118 = v108;
      v119 = v169;
      (*(v109 + 8))(v118, v169);
      (*(v175 + 8))(v177, v174);
      v35(v114, v19);
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
      v121 = *(v120 + 48);
      v122 = *(v120 + 64);
      v123 = v172;
      v160(v172, v116, v119);
      v124 = swift_allocBox();
      sub_1B6F062BC(v173, v125, type metadata accessor for RPIRKRatchet.DateRatchet);
      *(v123 + v121) = v124;
      type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v123 + v122) = v117;
    }

    goto LABEL_27;
  }

  if (v45 <= 4)
  {
    v162 = 0;
    if (v45 == 3)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
      v161 = *(v46 + 48);
      v157 = *(v44 + *(v46 + 80));
      v48 = v167;
      v47 = v168;
      v49 = *(v167 + 32);
      v158 = v167 + 32;
      v159 = v49;
      v49(v168, v44, v169);
      v51 = v163;
      v50 = v164;
      v52 = v165;
      (*(v164 + 104))(v163, *MEMORY[0x1E6969A78], v165);
      v53 = v178;
      v54 = sub_1B6F228C8();
      v160 = v54;
      (*(v50 + 8))(v51, v52);
      v55 = v166;
      v56 = v54;
      v57 = v157;
      sub_1B6F0F99C(v47, v56, v157);
      v58 = v169;
      (*(v48 + 8))(v47, v169);
      (*(v175 + 8))(v177, v174);
      v35(v53, v19);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
    }

    else
    {
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v161 = *(v145 + 48);
      v157 = *(v44 + *(v145 + 80));
      v147 = v167;
      v146 = v168;
      v148 = *(v167 + 32);
      v158 = v167 + 32;
      v159 = v148;
      v148(v168, v44, v169);
      v150 = v163;
      v149 = v164;
      v151 = v165;
      (*(v164 + 104))(v163, *MEMORY[0x1E6969A10], v165);
      v152 = v178;
      v153 = sub_1B6F228C8();
      v160 = v153;
      (*(v149 + 8))(v150, v151);
      v55 = v166;
      v154 = v153;
      v57 = v157;
      sub_1B6F0F99C(v146, v154, v157);
      v58 = v169;
      (*(v147 + 8))(v146, v169);
      (*(v175 + 8))(v177, v174);
      v35(v152, v19);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
    }

    v60 = v59[12];
    v61 = v59[16];
    v62 = v59[20];
    v63 = v172;
    v159(v172, v55, v58);
    v64 = swift_allocBox();
    sub_1B6F062BC(v173, v65, type metadata accessor for RPIRKRatchet.DateRatchet);
    *(v63 + v60) = v64;
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
    swift_storeEnumTagMultiPayload();
    *(v63 + v61) = v160;
    *(v63 + v62) = v57;
    goto LABEL_27;
  }

  if (v45 == 5)
  {
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
    v161 = *(v87 + 48);
    v157 = *(v44 + *(v87 + 80));
    v89 = v167;
    v88 = v168;
    v162 = 0;
    v90 = *(v167 + 32);
    v158 = v167 + 32;
    v159 = v90;
    v90(v168, v44, v169);
    v92 = v163;
    v91 = v164;
    v93 = v165;
    (*(v164 + 104))(v163, *MEMORY[0x1E6969A48], v165);
    v94 = v178;
    v95 = sub_1B6F228C8();
    v160 = v95;
    (*(v91 + 8))(v92, v93);
    v96 = v166;
    v97 = v95;
    v98 = v157;
    sub_1B6F0F99C(v88, v97, v157);
    v99 = v169;
    (*(v89 + 8))(v88, v169);
    (*(v175 + 8))(v177, v174);
    v35(v94, v19);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
    v101 = v100[12];
    v102 = v100[16];
    v103 = v100[20];
    v104 = v172;
    v159(v172, v96, v99);
    v105 = swift_allocBox();
    sub_1B6F062BC(v173, v106, type metadata accessor for RPIRKRatchet.DateRatchet);
    *(v104 + v101) = v105;
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
    swift_storeEnumTagMultiPayload();
    *(v104 + v102) = v160;
    *(v104 + v103) = v98;
LABEL_27:
    swift_storeEnumTagMultiPayload();
    return sub_1B6F12184(v171 + v161, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  }

  (*(v175 + 8))(v177, v174);
  v35(v178, v19);
  v155 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8) + 48);
  sub_1B6F062BC(v32, v172, type metadata accessor for RPIRKRatchet.DateRatchet);
  sub_1B6F12184(v44 + v155, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  return (*(v167 + 8))(v44, v169);
}

uint64_t sub_1B6F0F99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *&__src = a2;
  v4 = sub_1B6F106BC(&__src, &__src + 8);
  v6 = v5 & 0xFFFFFFFFFFFFFFLL;
  *&__src = a3;
  v7 = sub_1B6F106BC(&__src, &__src + 8);
  *&v14 = v4;
  *(&v14 + 1) = v6;
  v12 = MEMORY[0x1E6969080];
  v13 = MEMORY[0x1E6969078];
  *&__src = v7;
  *(&__src + 1) = v8 & 0xFFFFFFFFFFFFFFLL;
  v9 = __swift_project_boxed_opaque_existential_1Tm(&__src, MEMORY[0x1E6969080]);
  sub_1B6F104F0(*v9, v9[1], &v14);
  __swift_destroy_boxed_opaque_existential_1Tm(&__src);
  __src = v14;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6F10774();
  sub_1B6F229D8();
  return sub_1B6F01FA0(__src, *(&__src + 1));
}

id RPIRKRatchet.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RPIRKRatchet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPIRKRatchet(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6F0FD00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

unint64_t RPIRKRatchet.DateOutOfRatchetBounds.description.getter()
{
  v0 = sub_1B6F228B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6F228D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EB97CB58);
  (*(v5 + 16))(v7, v8, v4);
  v9 = *MEMORY[0x1E6969A68];
  v32 = v4;
  v10 = *(v1 + 104);
  v10(v3, v9, v0);
  v31 = v5;
  v26 = sub_1B6F228C8();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v12 = *MEMORY[0x1E6969A78];
  v10(v3, v12, v0);
  v13 = sub_1B6F228C8();
  v11(v3, v0);
  v27 = v13 / 2;
  v10(v3, v12, v0);
  v14 = sub_1B6F228C8();
  v11(v3, v0);
  v28 = v14 / 4;
  v10(v3, v12, v0);
  v29 = sub_1B6F228C8();
  v11(v3, v0);
  v10(v3, *MEMORY[0x1E6969A10], v0);
  v30 = sub_1B6F228C8();
  v11(v3, v0);
  v10(v3, *MEMORY[0x1E6969A48], v0);
  v15 = sub_1B6F228C8();
  v11(v3, v0);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1B6F22B28();

  v34 = 0xD000000000000017;
  v35 = 0x80000001B6F45720;
  sub_1B6F22848();
  sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v16 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v16);

  MEMORY[0x1B8C9DA10](31008, 0xE200000000000000);
  v33 = v26;
  v17 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v17);

  MEMORY[0x1B8C9DA10](115, 0xE100000000000000);
  v33 = v27;
  v18 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v18);

  MEMORY[0x1B8C9DA10](113, 0xE100000000000000);
  v33 = v28;
  v19 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v19);

  MEMORY[0x1B8C9DA10](109, 0xE100000000000000);
  v33 = v29;
  v20 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v20);

  MEMORY[0x1B8C9DA10](119, 0xE100000000000000);
  v33 = v30;
  v21 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v21);

  MEMORY[0x1B8C9DA10](100, 0xE100000000000000);
  v33 = v15;
  v22 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v22);

  MEMORY[0x1B8C9DA10](32, 0xE100000000000000);
  type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
  v23 = RPIRKRatchet.DateRatchet.description.getter();
  MEMORY[0x1B8C9DA10](v23);

  MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
  v24 = v34;
  (*(v31 + 8))(v7, v32);
  return v24;
}

uint64_t RPIRKRatchet.IRKUnavailable.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B6F22B28();

  MEMORY[0x1B8C9DA10](v1, v2);
  MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
  return 0x6176616E554B5249;
}

uint64_t sub_1B6F103D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B6F1043C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6F104F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1B6F227A8();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1B6F10628(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1B6F10628(v4, v5);
  }

  return sub_1B6F227A8();
}

uint64_t sub_1B6F10628(uint64_t a1, uint64_t a2)
{
  result = sub_1B6F226E8();
  if (!result || (result = sub_1B6F22708(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B6F226F8();
      return sub_1B6F227A8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6F106BC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1B6F10774()
{
  result = qword_1EB97BA40;
  if (!qword_1EB97BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BA40);
  }

  return result;
}

uint64_t sub_1B6F10828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1B6F10890(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v43 = a5;
  v49 = a1;
  v52[1] = *MEMORY[0x1E69E9840];
  v46 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B6F22998();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src = a2;
  v52[0] = a3;
  sub_1B6F01F4C(a2, a3);
  sub_1B6F22988();
  v42 = v19;
  v22 = *(v19 + 16);
  v44 = v18;
  v22(v17, v21, v18);
  v40 = a4;
  __src = a4;
  __src = sub_1B6F106BC(&__src, v52);
  v52[0] = v23 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v52[0]);
  v39 = v17;
  sub_1B6F062BC(v17, &v14[*(v12 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v12 + 20)] = v40;
  v24 = v43;
  __src = v43;
  __src = sub_1B6F106BC(&__src, v52);
  v52[0] = v25 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v52[0]);
  v26 = v41;
  sub_1B6F062BC(v14, &v11[*(v41 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v11[*(v26 + 20)] = v24;
  v27 = v47;
  __src = v47;
  __src = sub_1B6F106BC(&__src, v52);
  v52[0] = v28 & 0xFFFFFFFFFFFFFFLL;
  v29 = v45;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v52[0]);
  v30 = v46;
  sub_1B6F062BC(v11, v29 + *(v46 + 24), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v29 + *(v30 + 20)) = v27;
  (*(v42 + 8))(v21, v44);
  v31 = OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate;
  v32 = sub_1B6F22848();
  v33 = *(v32 - 8);
  v35 = v48;
  v34 = v49;
  (*(v33 + 16))(v48 + v31, v49, v32);
  sub_1B6F10828(v39, v35 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  sub_1B6F10828(v14, v35 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  sub_1B6F10828(v11, v35 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  sub_1B6F10828(v29, v35 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  v36 = type metadata accessor for RPIRKRatchet(0);
  v50.receiver = v35;
  v50.super_class = v36;
  v37 = objc_msgSendSuper2(&v50, sel_init);
  (*(v33 + 8))(v34, v32);
  return v37;
}

uint64_t sub_1B6F10EBC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1B6F22A68();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

id sub_1B6F10F58(void *a1)
{
  v156[1] = *MEMORY[0x1E69E9840];
  v138 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v2 = MEMORY[0x1EEE9AC00](v138);
  v140 = (&v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v139 = &v122 - v4;
  v137 = sub_1B6F228B8();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for RPIRKRatchet.IRK(0);
  v6 = MEMORY[0x1EEE9AC00](v132);
  v133 = (&v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v122 - v8);
  v146 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  MEMORY[0x1EEE9AC00](v146);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  MEMORY[0x1EEE9AC00](v143);
  v145 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v149 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6F22998();
  v150 = *(v16 - 8);
  v151 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6F22848();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v152 = (&v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v153 = &v122 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v122 - v28;
  v30 = [a1 deviceIRKData];
  if (!v30)
  {
    goto LABEL_13;
  }

  v126 = v11;
  v134 = v18;
  v127 = v9;
  v31 = v30;
  v32 = sub_1B6F227E8();
  v34 = v33;

  v35 = [a1 identifier];
  if (!v35)
  {
    sub_1B6F01FA0(v32, v34);
LABEL_13:
    v69 = [a1 description];
    v74 = sub_1B6F22A08();
    v76 = v75;

    sub_1B6F13790();
    swift_allocError();
    *v77 = v74;
    v77[1] = v76;
    swift_willThrow();
    return v69;
  }

  v141 = v32;
  v142 = v34;
  v36 = v35;
  v123 = sub_1B6F22A08();
  v125 = v37;

  v124 = a1;
  v38 = v22;
  v39 = [a1 type];
  sub_1B6F22828();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 64);
  v128 = v23;
  v44 = *(v23 + 16);
  v43 = (v23 + 16);
  v130 = v29;
  v45 = v29;
  v131 = v38;
  v46 = v44;
  v44(v21, v45, v38);
  v21[v41] = 5;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v47 = sub_1B6F228D8();
  v48 = __swift_project_value_buffer(v47, qword_1EB97CB58);
  (*(*(v47 - 8) + 16))(&v21[v42], v48, v47);
  v129 = v21;
  swift_storeEnumTagMultiPayload();
  v49 = v141;
  v50 = v142;
  v51 = v153;
  switch(v39)
  {
    case 1u:
      goto LABEL_8;
    case 0xFu:
      v79 = v124;
      v80 = [v124 dateAdded];
      if (!v80)
      {

        v69 = [v79 description];
        v101 = sub_1B6F22A08();
        v103 = v102;

        sub_1B6F13790();
        swift_allocError();
        *v104 = v101;
        v104[1] = v103;
        swift_willThrow();
        sub_1B6F01FA0(v49, v142);
        sub_1B6F12184(v129, type metadata accessor for RPIRKRatchet.IRKTarget);
        (*(v128 + 8))(v130, v131);
        return v69;
      }

      v81 = v80;
      sub_1B6F22818();

      v82 = v136;
      v83 = *(v136 + 104);
      v84 = v135;
      v85 = v137;
      v83(v135, *MEMORY[0x1E6969A78], v137);
      v153 = sub_1B6F228C8();
      v86 = *(v82 + 8);
      v86(v84, v85);
      v83(v84, *MEMORY[0x1E6969A68], v85);
      v87 = sub_1B6F228C8();
      v86(v84, v85);
      v49 = v141;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v89 = v139;
      v90 = &v139[v88[12]];
      v91 = v88[16];
      v92 = v88[20];
      v93 = v142;
      __src = v49;
      v156[0] = v142;
      sub_1B6F01F4C(v49, v142);
      sub_1B6F22988();
      v94 = v125;
      *v90 = v123;
      v90[1] = v94;
      type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v89 + v91) = v153;
      *(v89 + v92) = v87;
      swift_storeEnumTagMultiPayload();
      v95 = v140;
      v96 = v129;
      v97 = v148;
      sub_1B6F0AEA4(v129, v140);
      v67 = v131;
      if (v97)
      {
        sub_1B6F01FA0(v49, v93);
        sub_1B6F12184(v89, type metadata accessor for RPIRKRatchet.DateRatchet);
        v69 = *(v128 + 8);
        (v69)(v152, v67);
        sub_1B6F12184(v96, type metadata accessor for RPIRKRatchet.IRKTarget);
        (v69)(v130, v67);
        return v69;
      }

      v105 = v134;
      RPIRKRatchet.DateRatchet.key.getter(v134);
      v106 = sub_1B6F16738();
      v108 = v107;
      (*(v150 + 8))(v105, v151);
      sub_1B6F12184(v89, type metadata accessor for RPIRKRatchet.DateRatchet);
      v109 = v132;
      v110 = v133;
      sub_1B6F062BC(v96, v133 + *(v132 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
      sub_1B6F10828(v95, v110 + *(v109 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
      *v110 = v106;
      v110[1] = v108;
      sub_1B6F01F4C(v106, v108);
      sub_1B6F12184(v110, type metadata accessor for RPIRKRatchet.IRK);
      v98 = sub_1B6F227C8();
      sub_1B6F01FA0(v106, v108);
      (*(v128 + 8))(v152, v67);
      break;
    case 6u:
LABEL_8:

      v46(v51, v130, v131);
      v152 = type metadata accessor for RPIRKRatchet(0);
      v52 = objc_allocWithZone(v152);
      __src = v49;
      v156[0] = v50;
      sub_1B6F01F4C(v49, v50);
      v53 = v134;
      sub_1B6F22988();
      v54 = v149;
      v55 = *(v150 + 16);
      v140 = v46;
      v55(v149, v53, v151);
      __src = 0;
      __src = sub_1B6F106BC(&__src, v156);
      v156[0] = v56 & 0xFFFFFFFFFFFFFFLL;
      v139 = v43;
      if (qword_1EB97CB40 != -1)
      {
        swift_once();
      }

      sub_1B6F229E8();
      sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      sub_1B6F10774();
      v57 = v145;
      sub_1B6F229D8();
      sub_1B6F01FA0(__src, v156[0]);
      v58 = v54;
      v59 = v143;
      sub_1B6F062BC(v58, v57 + *(v143 + 24), type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
      type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v57 + *(v59 + 20)) = 0;
      __src = 0;
      __src = sub_1B6F106BC(&__src, v156);
      v156[0] = v60 & 0xFFFFFFFFFFFFFFLL;
      v61 = v147;
      sub_1B6F229D8();
      sub_1B6F01FA0(__src, v156[0]);
      v62 = v144;
      sub_1B6F062BC(v57, v61 + *(v144 + 24), type metadata accessor for RPIRKRatchet.SameAccountRatchet);
      type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v61 + *(v62 + 20)) = 0;
      __src = 0;
      __src = sub_1B6F106BC(&__src, v156);
      v156[0] = v63 & 0xFFFFFFFFFFFFFFLL;
      v64 = v126;
      sub_1B6F229D8();
      sub_1B6F01FA0(__src, v156[0]);
      v65 = v146;
      sub_1B6F062BC(v61, v64 + *(v146 + 24), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
      type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v64 + *(v65 + 20)) = 0;
      (*(v150 + 8))(v134, v151);
      v66 = v153;
      v67 = v131;
      v140(&v52[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate], v153, v131);
      sub_1B6F10828(v149, &v52[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
      sub_1B6F10828(v57, &v52[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
      sub_1B6F10828(v61, &v52[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts], type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
      sub_1B6F10828(v64, &v52[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts], type metadata accessor for RPIRKRatchet.ContactsRatchet);
      v154.receiver = v52;
      v154.super_class = v152;
      v68 = objc_msgSendSuper2(&v154, sel_init);
      v69 = (v128 + 8);
      v70 = *(v128 + 8);
      v70(v66, v67);
      v71 = v127;
      v72 = v129;
      v73 = v148;
      (*((*MEMORY[0x1E69E7D40] & *v68) + 0x80))(v129);
      if (v73)
      {

        sub_1B6F01FA0(v141, v142);
        sub_1B6F12184(v72, type metadata accessor for RPIRKRatchet.IRKTarget);
        v70(v130, v67);
        return v69;
      }

      v99 = *v71;
      v100 = v71[1];
      sub_1B6F01F4C(*v71, v100);
      sub_1B6F12184(v71, type metadata accessor for RPIRKRatchet.IRK);
      v98 = sub_1B6F227C8();
      sub_1B6F01FA0(v99, v100);

      v49 = v141;
      break;
    default:

      v98 = sub_1B6F227C8();
      v67 = v131;
      break;
  }

  v111 = qword_1EB97CB70;
  v112 = v98;
  if (v111 != -1)
  {
    swift_once();
  }

  v113 = sub_1B6F22908();
  __swift_project_value_buffer(v113, qword_1EB97CB78);
  v69 = v112;
  v114 = v124;
  v115 = sub_1B6F228E8();
  v116 = sub_1B6F22AA8();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v117 = 138412547;
    *(v117 + 4) = v114;
    *(v117 + 12) = 2113;
    *(v117 + 14) = v69;
    *v118 = v114;
    v118[1] = v69;
    v119 = v69;
    v120 = v114;
    _os_log_impl(&dword_1B6E85000, v115, v116, "%@: using ratcheted irk: %{private}@", v117, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB97BB70, &qword_1B6F2FE60);
    swift_arrayDestroy();
    v121 = v118;
    v49 = v141;
    MEMORY[0x1B8C9F270](v121, -1, -1);
    MEMORY[0x1B8C9F270](v117, -1, -1);
  }

  sub_1B6F01FA0(v49, v142);
  sub_1B6F12184(v129, type metadata accessor for RPIRKRatchet.IRKTarget);
  (*(v128 + 8))(v130, v67);
  return v69;
}

uint64_t sub_1B6F12184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6F12204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B6F1224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA90, &qword_1B6F2FA18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6F122B4()
{
  result = qword_1EB97BAA0;
  if (!qword_1EB97BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BAA0);
  }

  return result;
}

unint64_t sub_1B6F1234C()
{
  result = qword_1EB97BAC0;
  if (!qword_1EB97BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BAC0);
  }

  return result;
}

uint64_t sub_1B6F123A8(uint64_t a1)
{
  result = sub_1B6F22848();
  if (v2 <= 0x3F)
  {
    result = sub_1B6F22998();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for RPIRKRatchet.SameAccountRatchet(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for RPIRKRatchet.ContactsRatchet(319);
          if (v6 <= 0x3F)
          {
            return swift_updateClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B6F12608(uint64_t a1)
{
  result = type metadata accessor for RPIRKRatchet.IRKTarget(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RPIRKRatchet.DateRatchet(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B6F1269C(uint64_t a1)
{
  sub_1B6F12710(319);
  if (v1 <= 0x3F)
  {
    sub_1B6F1277C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B6F12710(uint64_t a1)
{
  if (!qword_1EB97BAC8)
  {
    sub_1B6F228D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB97BAC8);
    }
  }
}

void sub_1B6F1277C(uint64_t a1)
{
  if (!qword_1EB97BAD0)
  {
    sub_1B6F22848();
    sub_1B6F228D8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB97BAD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for RPIRKRatchet.DateResolution(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPIRKRatchet.DateResolution(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B6F12970(uint64_t a1)
{
  result = sub_1B6F22998();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_1B6F22998();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = a4(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_31Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_1B6F22998();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = a5(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1B6F12C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B6F22998();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6F12D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B6F12DF0(uint64_t a1)
{
  sub_1B6F12EC8(319);
  if (v1 <= 0x3F)
  {
    sub_1B6F12F3C(319);
    if (v2 <= 0x3F)
    {
      sub_1B6F12FB8(319);
      if (v3 <= 0x3F)
      {
        sub_1B6F130C4(319);
        if (v4 <= 0x3F)
        {
          sub_1B6F131C4(319);
          if (v5 <= 0x3F)
          {
            sub_1B6F132C0(319);
            if (v6 <= 0x3F)
            {
              sub_1B6F133C0(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B6F12EC8(uint64_t a1)
{
  if (!qword_1EB97BAD8)
  {
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB97BAD8);
    }
  }
}

void sub_1B6F12F3C(uint64_t a1)
{
  if (!qword_1EB97BAE0)
  {
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB97BAE0);
    }
  }
}

void sub_1B6F12FB8(uint64_t a1)
{
  if (!qword_1EB97BAE8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BAE8);
    }
  }
}

void sub_1B6F130C4(uint64_t a1)
{
  if (!qword_1EB97BAF0)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BAF0);
    }
  }
}

void sub_1B6F131C4(uint64_t a1)
{
  if (!qword_1EB97BAF8)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BAF8);
    }
  }
}

void sub_1B6F132C0(uint64_t a1)
{
  if (!qword_1EB97BB00)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BB00);
    }
  }
}

void sub_1B6F133C0(uint64_t a1)
{
  if (!qword_1EB97BB08)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BB08);
    }
  }
}

uint64_t sub_1B6F13528(uint64_t a1)
{
  result = type metadata accessor for RPIRKRatchet.ContactsRatchet(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6F135C8(uint64_t a1)
{
  result = type metadata accessor for RPIRKRatchet.DateRatchet(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6F1366C(uint64_t a1)
{
  result = sub_1B6F22848();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RPIRKRatchet.DateRatchet(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B6F136FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6F13744(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B6F13790()
{
  result = qword_1EB97BB18;
  if (!qword_1EB97BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BB18);
  }

  return result;
}

uint64_t sub_1B6F13808()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97D288);
  v1 = __swift_project_value_buffer(v0, qword_1EB97D288);
  v2 = sub_1B6F01DC4();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id RPPairingReceiverController.queue.getter()
{
  v1 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void RPPairingReceiverController.queue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RPPairingReceiverController.pairingValueUpdatedHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1B6E8A57C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1B6F13B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1B6F22A08();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

void sub_1B6F13CD0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_1B6F229F8();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

uint64_t RPPairingReceiverController.pairingValueUpdatedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B6F13D8C(v6, v7);
}

uint64_t sub_1B6F13D8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B6F13D9C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B6F15B30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B6E8A57C(v4, v5);
}

uint64_t sub_1B6F13E3C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B6F15AF8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B6E8A57C(v3, v4);
  return sub_1B6F13D8C(v8, v9);
}

uint64_t RPPairingReceiverController.pairingValueUIVisible.getter()
{
  v1 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RPPairingReceiverController.pairingValueUIVisible.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1B6F1415C();
}

uint64_t sub_1B6F140AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B6F14104(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1B6F1415C();
}

uint64_t sub_1B6F1415C()
{
  v1 = sub_1B6F22928();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6F22948();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  LOBYTE(v9) = v0[v9];
  v10 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v11 = *&v0[v10];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = v9;
  aBlock[4] = sub_1B6F15DA8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6F15F10;
  aBlock[3] = &block_descriptor_42;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v0;
  sub_1B6F22938();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1B6F15100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB50, &qword_1B6F2FE68);
  sub_1B6F15158();
  sub_1B6F22B18();
  MEMORY[0x1B8C9DA80](0, v8, v4, v13);
  _Block_release(v13);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

void sub_1B6F14410()
{
  v1 = sub_1B6F22958();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v6 = *&v0[v5];
  *v4 = v6;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1B6F22968();
  (*(v2 + 8))(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  v8 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx;
  if (*&v0[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx])
  {
    return;
  }

  sub_1B6F01F24();
  v9 = objc_allocWithZone(MEMORY[0x1E696B0B8]);

  v10 = sub_1B6F229F8();

  v11 = [v9 initWithMachServiceName:v10 options:0];

  v12 = *&v0[v8];
  *&v0[v8] = v11;

  v13 = *&v0[v8];
  if (v13)
  {
    [v13 rp:*&v0[v5] setQueue:?];
    v14 = *&v0[v8];
    if (v14)
    {
      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 interfaceWithProtocol_];
      [v16 setExportedInterface_];

      v18 = *&v0[v8];
      if (v18)
      {
        [v18 setExportedObject_];
        v19 = *&v0[v8];
        if (v19)
        {
          v20 = swift_allocObject();
          *(v20 + 16) = v0;
          v43 = sub_1B6F15BC8;
          v44 = v20;
          aBlock = MEMORY[0x1E69E9820];
          v40 = 1107296256;
          v41 = sub_1B6F15F10;
          v42 = &block_descriptor_30;
          v21 = _Block_copy(&aBlock);
          v22 = v19;
          v23 = v0;

          [v22 setInterruptionHandler_];
          _Block_release(v21);

          v24 = *&v0[v8];
          if (v24)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v23;
            v43 = sub_1B6F15CAC;
            v44 = v25;
            aBlock = MEMORY[0x1E69E9820];
            v40 = 1107296256;
            v41 = sub_1B6F15F10;
            v42 = &block_descriptor_36;
            v26 = _Block_copy(&aBlock);
            v27 = v23;
            v28 = v24;

            [v28 setInvalidationHandler_];
            _Block_release(v26);

            v29 = *&v0[v8];
            if (v29)
            {
              v30 = objc_opt_self();
              v31 = v29;
              v32 = [v30 interfaceWithProtocol_];
              [v31 setRemoteObjectInterface_];

              v33 = *&v0[v8];
              if (v33)
              {
                [v33 resume];
              }
            }
          }
        }
      }
    }
  }

  if (qword_1EB97D280 != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v34 = sub_1B6F22908();
  __swift_project_value_buffer(v34, qword_1EB97D288);
  v35 = sub_1B6F228E8();
  v36 = sub_1B6F22AA8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1B6E85000, v35, v36, "XPC started", v37, 2u);
    MEMORY[0x1B8C9F270](v37, -1, -1);
  }
}

void sub_1B6F148F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t (*RPPairingReceiverController.pairingValueUIVisible.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B6F149C0;
}

uint64_t sub_1B6F149C0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B6F1415C();
  }

  return result;
}

id RPPairingReceiverController.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  sub_1B6F14B44();
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = sub_1B6F22AD8();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id RPPairingReceiverController.init(coder:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  sub_1B6F14B44();
  *&v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = sub_1B6F22AD8();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

unint64_t sub_1B6F14B44()
{
  result = qword_1EB97BB40;
  if (!qword_1EB97BB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB97BB40);
  }

  return result;
}

id RPPairingReceiverController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void RPPairingReceiverController.init()()
{
  v1 = (v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible) = 0;
  *(v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx) = 0;
  sub_1B6F22B78();
  __break(1u);
}

id RPPairingReceiverController.__allocating_init(queue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id RPPairingReceiverController.init(queue:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  *&v2[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_1B6F14EEC()
{
  v1 = *(v0 + 16);
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6F22908();
  __swift_project_value_buffer(v2, qword_1EB97D288);
  v3 = sub_1B6F228E8();
  v4 = sub_1B6F22AC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B6E85000, v3, v4, "Starting pairing receiver controller", v5, 2u);
    MEMORY[0x1B8C9F270](v5, -1, -1);
  }

  sub_1B6F14410();
  v6 = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  if (v6)
  {
    v10[4] = sub_1B6F15204;
    v10[5] = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B6F148F4;
    v10[3] = &block_descriptor_24;
    v7 = _Block_copy(v10);
    v8 = v6;
    v9 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);

    sub_1B6F22B08();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB68, &qword_1B6F2FEB8);
    if (swift_dynamicCast())
    {
      [v10[0] startPairingReceiverController_];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B6F15100()
{
  result = qword_1EB97BB48;
  if (!qword_1EB97BB48)
  {
    sub_1B6F22928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BB48);
  }

  return result;
}

unint64_t sub_1B6F15158()
{
  result = qword_1EB97BB58;
  if (!qword_1EB97BB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB97BB50, &qword_1B6F2FE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BB58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1B6F15210(void *a1, const char *a2, ...)
{
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6F22908();
  __swift_project_value_buffer(v4, qword_1EB97D288);
  v5 = a1;
  oslog = sub_1B6F228E8();
  v6 = sub_1B6F22AB8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B6E85000, oslog, v6, a2, v7, 0xCu);
    sub_1B6F15B60(v8);
    MEMORY[0x1B8C9F270](v8, -1, -1);
    MEMORY[0x1B8C9F270](v7, -1, -1);
  }
}

uint64_t sub_1B6F153D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1B6F22928();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6F22948();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v14 = *&v3[v13];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6F15F10;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = v3;
  sub_1B6F22938();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1B6F15100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB50, &qword_1B6F2FE68);
  sub_1B6F15158();
  sub_1B6F22B18();
  MEMORY[0x1B8C9DA80](0, v12, v8, v16);
  _Block_release(v16);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

id sub_1B6F15658()
{
  v1 = *(v0 + 16);
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6F22908();
  __swift_project_value_buffer(v2, qword_1EB97D288);
  v3 = sub_1B6F228E8();
  v4 = sub_1B6F22AC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B6E85000, v3, v4, "Stopping pairing receiver controller", v5, 2u);
    MEMORY[0x1B8C9F270](v5, -1, -1);
  }

  result = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_1B6F157B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B6F157F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6F22958();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v10 = *(v2 + v9);
  *v8 = v10;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1B6F22968();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    v13 = v2 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler;
    result = swift_beginAccess();
    v14 = *v13;
    if (*v13)
    {
      v15 = *(v13 + 8);

      v14(a1, a2);
      return sub_1B6F13D8C(v14, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RPPairingReceiverController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B6F15AF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_1B6F15B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB97BB70, &qword_1B6F2FE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6F15BC8()
{
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v0 = sub_1B6F22908();
  __swift_project_value_buffer(v0, qword_1EB97D288);
  v1 = sub_1B6F228E8();
  v2 = sub_1B6F22AC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B6E85000, v1, v2, "XPC connection interrupted, restarting receiver controller", v3, 2u);
    MEMORY[0x1B8C9F270](v3, -1, -1);
  }

  RPPairingReceiverController.start()();
}

void sub_1B6F15CAC()
{
  v1 = *(v0 + 16);
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6F22908();
  __swift_project_value_buffer(v2, qword_1EB97D288);
  v3 = sub_1B6F228E8();
  v4 = sub_1B6F22AC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B6E85000, v3, v4, "XPC connection invalidated", v5, 2u);
    MEMORY[0x1B8C9F270](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx) = 0;
}

void sub_1B6F15DA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B6F14410();
  v3 = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  if (v3)
  {
    v7[4] = sub_1B6F148E8;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B6F148F4;
    v7[3] = &block_descriptor_45;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_1B6F22B08();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB68, &qword_1B6F2FEB8);
    if (swift_dynamicCast())
    {
      [v7[0] pairingValueUIVisibleUpdated_];
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1B6F15F34()
{
  result = qword_1EB97BBE0;
  if (!qword_1EB97BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BBE0);
  }

  return result;
}

unint64_t sub_1B6F15F88()
{
  v1 = sub_1B6F22788();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[4];
  v8 = (v7 + 8);
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      sub_1B6F22768();
      v17 = sub_1B6F22778();
      v19 = v18;
      (*v8)(v3, v1);
      v34 = v17;
      v35 = v19;
      MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
      v33 = v6;
      v20 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v20);

      v13 = v34;
      v14 = v35;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1B6F22B28();

      v21 = 0x20676E697373694DLL;
      v22 = 0xEF203A65756C6176;
    }

    else
    {
      sub_1B6F22768();
      v27 = sub_1B6F22778();
      v29 = v28;
      (*v8)(v3, v1);
      v34 = v27;
      v35 = v29;
      MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
      v33 = v6;
      v30 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v30);

      v13 = v34;
      v14 = v35;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1B6F22B28();

      v21 = 0x3A74756F656D6954;
      v22 = 0xE900000000000020;
    }

    v34 = v21;
    v35 = v22;
    goto LABEL_9;
  }

  if (*(v0 + 40))
  {
    sub_1B6F22768();
    v23 = sub_1B6F22778();
    v25 = v24;
    (*v8)(v3, v1);
    v34 = v23;
    v35 = v25;
    MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
    v33 = v6;
    v26 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v26);

    v13 = v34;
    v14 = v35;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1B6F22B28();

    v34 = 0xD000000000000010;
    v35 = 0x80000001B6F45AE0;
LABEL_9:
    MEMORY[0x1B8C9DA10](v5, v4);
    v15 = 23328;
    v16 = 0xE200000000000000;
    goto LABEL_10;
  }

  sub_1B6F22768();
  v9 = sub_1B6F22778();
  v11 = v10;
  (*v8)(v3, v1);
  v34 = v9;
  v35 = v11;
  MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
  v33 = v6;
  v12 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v12);

  v13 = v34;
  v14 = v35;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1B6F22B28();

  v34 = 0xD00000000000001BLL;
  v35 = 0x80000001B6F45B00;
  MEMORY[0x1B8C9DA10](v5, v4);
  v15 = 5972002;
  v16 = 0xE300000000000000;
LABEL_10:
  MEMORY[0x1B8C9DA10](v15, v16);
  MEMORY[0x1B8C9DA10](v13, v14);

  MEMORY[0x1B8C9DA10](93, 0xE100000000000000);
  return v34;
}

unint64_t sub_1B6F16380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BBE8, &qword_1B6F2FEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6F2F9B0;
  *(inited + 32) = sub_1B6F22A08();
  *(inited + 40) = v1;
  v2 = sub_1B6F15F88();
  v4 = 0x6C616E7265746E49;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xEF2E726F72726520;
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1B6F17C20(inited);
  swift_setDeallocating();
  sub_1B6F17D50(inited + 32, &qword_1EB97BBF0, &unk_1B6F2FEC8);
  return v6;
}

uint64_t sub_1B6F16464(uint64_t a1)
{
  v2 = sub_1B6F196E0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B6F164A0(uint64_t a1)
{
  v2 = sub_1B6F196E0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1B6F164EC()
{
  result = sub_1B6F15F88();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t sub_1B6F16568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a5;
  v21 = a1;
  v22 = a3;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v15, v14);
  v16 = *(a6 + 16);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    return (*(v17 + 32))(a7, v13, v16);
  }

  (*(v11 + 8))(v13, a6);
  sub_1B6F15F34();
  swift_allocError();
  v18 = v22;
  *v19 = v21;
  *(v19 + 8) = a2;
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  *(v19 + 32) = v23;
  *(v19 + 40) = 0;
  swift_willThrow();
}

uint64_t sub_1B6F1678C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = &a2[-result];
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = sub_1B6F106BC(result, a2);
      v5 = v7 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B6F22718();
      swift_allocObject();
      v6 = sub_1B6F226D8();
      if (v4 >= 0x7FFFFFFF)
      {
        sub_1B6F22798();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v4;
        v5 = v6 | 0x8000000000000000;
      }

      else
      {
        result = v4 << 32;
        v5 = v6 | 0x4000000000000000;
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6F16854()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 1701669236;
  v4 = 0x69546F4E656D6974;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}