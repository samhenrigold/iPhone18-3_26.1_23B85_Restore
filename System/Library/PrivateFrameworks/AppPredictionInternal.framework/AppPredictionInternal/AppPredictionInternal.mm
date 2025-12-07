void sub_2263AE858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __atxlog_handle_default(uint64_t a1)
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v2 = __atxlog_handle_default_log;

  return v2;
}

void handleAmbientLightEvent(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v11 = a1;
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v11[6] >= 1.0)
    {
      v11[6] = Current;
      v5 = MEMORY[0x277CCABB0];
      IOHIDEventGetDoubleValue();
      v6 = [v5 numberWithDouble:?];
      v7 = MEMORY[0x277CCABB0];
      IOHIDEventGetDoubleValue();
      v8 = [v7 numberWithDouble:?];
      v9 = MEMORY[0x277CCABB0];
      IOHIDEventGetDoubleValue();
      v10 = [v9 numberWithDouble:?];
      [v11 addSampleWithXValue:v6 YValue:v8 ZValue:v10];
    }
  }
}

id __atxlog_handle_settings_actions(uint64_t a1)
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v2 = __atxlog_handle_settings_actions_log;

  return v2;
}

id __atxlog_handle_blending(uint64_t a1)
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v2 = __atxlog_handle_blending_log;

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

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 48) = v2;
  return memcpy((a1 + 56), (a2 + 56), 0xCFEuLL);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__85(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__89(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__91(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__92(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__93(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__95(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__96(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__101(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__102(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__103(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__106(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__107(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __atxlog_handle_app_library(uint64_t a1)
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v2 = __atxlog_handle_app_library_log;

  return v2;
}

id __atxlog_handle_heuristic(uint64_t a1)
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v2 = __atxlog_handle_heuristic_log;

  return v2;
}

void sub_2263AFE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ATXRestoreIsInProgress(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = restoreStateQueue(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ATXRestoreIsInProgress_block_invoke;
  block[3] = &unk_2785967D8;
  block[4] = &v5;
  dispatch_sync(v1, block);

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

id restoreStateQueue(uint64_t a1)
{
  if (restoreStateQueue_onceToken != -1)
  {
    restoreStateQueue_cold_1();
  }

  v2 = restoreStateQueue_instance;

  return v2;
}

id __atxlog_handle_backup(uint64_t a1)
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v2 = __atxlog_handle_backup_log;

  return v2;
}

id decodeSubGenresData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = MEMORY[0x277CCAAC8];
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
    v12 = 0;
    v7 = [v3 unarchivedObjectOfClasses:v6 fromData:v1 error:&v12];
    v8 = v12;

    objc_autoreleasePoolPop(v2);
    if (!v7)
    {
      v10 = __atxlog_handle_default(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        decodeSubGenresData_cold_1();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __atxlog_handle_hero(uint64_t a1)
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v2 = __atxlog_handle_hero_log;

  return v2;
}

id __atxlog_handle_app_install(uint64_t a1)
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v2 = __atxlog_handle_app_install_log;

  return v2;
}

id __atxlog_handle_xpc(uint64_t a1)
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v2 = __atxlog_handle_xpc_log;

  return v2;
}

id __atxlog_handle_timeline(uint64_t a1)
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v2 = __atxlog_handle_timeline_log;

  return v2;
}

__CFString *dateColumnNameForLaunchType(uint64_t a1)
{
  if (!a1)
  {
    return @"lastLaunchDate";
  }

  if (a1 == 1)
  {
    return @"lastSpotlightLaunchDate";
  }

  v2 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    dateColumnNameForLaunchType_cold_1();
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"launchType must be a valid _ATXLaunchType."];
  return 0;
}

void _ZN12_GLOBAL__N_110SimdVectorIDv8_ffE6resizeEm(char **a1, char *a2)
{
  v4 = a1[3];
  v5 = (a2 + 7) >> 3;
  v6 = *a1;
  v7 = a1[1];
  v8 = (v7 - *a1) >> 5;
  if (v5 <= v8)
  {
    if (v5 >= v8)
    {
      goto LABEL_15;
    }

    v18 = &v6[32 * v5];
    goto LABEL_14;
  }

  v9 = v5 - v8;
  v10 = a1[2];
  if (v5 - v8 <= (v10 - v7) >> 5)
  {
    bzero(a1[1], 32 * v9);
    v18 = &v7[32 * v9];
LABEL_14:
    a1[1] = v18;
    goto LABEL_15;
  }

  if ((a2 + 7) >> 62)
  {
    std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
  }

  v11 = v10 - v6;
  if (v11 >> 4 > v5)
  {
    v5 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v5;
  }

  _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v12, v8, a1);
  v13 = v28[0];
  bzero(v28[0], 32 * v9);
  v28[0] = &v13[32 * v9];
  v14 = a1[1] - *a1;
  v15 = &v27[-v14];
  memcpy(&v27[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  *(a1 + 1) = *v28;
  v28[0] = v16;
  v28[1] = v17;
  v26 = v16;
  v27 = v16;
  if (v16)
  {
    free(v16);
  }

LABEL_15:
  a1[3] = a2;
  if (v4 > a2)
  {
    v19 = a1[1] - *a1;
    if (a1[2] - *a1 > v19)
    {
      _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v19 >> 5, v19 >> 5, a1);
      v20 = v26;
      v21 = *a1;
      if ((v28[1] - v26) >= (a1[2] - *a1))
      {
        if (v28[0] != v27)
        {
          v28[0] = v28[0] + ((v27 - v28[0] + 31) & 0xFFFFFFFFFFFFFFE0);
        }
      }

      else
      {
        v22 = (a1[1] - v21);
        v23 = (v27 - v22);
        memcpy((v27 - v22), v21, v22);
        v20 = *a1;
        *a1 = v23;
        v24 = a1[2];
        *(a1 + 1) = *v28;
        v28[0] = v20;
        v28[1] = v24;
        v26 = v20;
        v27 = v20;
      }

      if (v20)
      {
        free(v20);
      }
    }

    v25 = a1[3];
    if (v25)
    {
      bzero(&(*a1)[4 * v25], a1[1] - &(*a1)[4 * v25]);
    }
  }
}

void sub_2263B2730(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2263B26FCLL);
}

void _ZN12_GLOBAL__N_110SimdVectorIDv8_ijE6resizeEm(char **a1, char *a2)
{
  v4 = a1[3];
  v5 = (a2 + 7) >> 3;
  v6 = *a1;
  v7 = a1[1];
  v8 = (v7 - *a1) >> 5;
  if (v5 <= v8)
  {
    if (v5 >= v8)
    {
      goto LABEL_15;
    }

    v18 = &v6[32 * v5];
    goto LABEL_14;
  }

  v9 = v5 - v8;
  v10 = a1[2];
  if (v5 - v8 <= (v10 - v7) >> 5)
  {
    bzero(a1[1], 32 * v9);
    v18 = &v7[32 * v9];
LABEL_14:
    a1[1] = v18;
    goto LABEL_15;
  }

  if ((a2 + 7) >> 62)
  {
    std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
  }

  v11 = v10 - v6;
  if (v11 >> 4 > v5)
  {
    v5 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v5;
  }

  _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v12, v8, a1);
  v13 = v28[0];
  bzero(v28[0], 32 * v9);
  v28[0] = &v13[32 * v9];
  v14 = a1[1] - *a1;
  v15 = &v27[-v14];
  memcpy(&v27[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  *(a1 + 1) = *v28;
  v28[0] = v16;
  v28[1] = v17;
  v26 = v16;
  v27 = v16;
  if (v16)
  {
    free(v16);
  }

LABEL_15:
  a1[3] = a2;
  if (v4 > a2)
  {
    v19 = a1[1] - *a1;
    if (a1[2] - *a1 > v19)
    {
      _ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(&v26, v19 >> 5, v19 >> 5, a1);
      v20 = v26;
      v21 = *a1;
      if ((v28[1] - v26) >= (a1[2] - *a1))
      {
        if (v28[0] != v27)
        {
          v28[0] = v28[0] + ((v27 - v28[0] + 31) & 0xFFFFFFFFFFFFFFE0);
        }
      }

      else
      {
        v22 = (a1[1] - v21);
        v23 = (v27 - v22);
        memcpy((v27 - v22), v21, v22);
        v20 = *a1;
        *a1 = v23;
        v24 = a1[2];
        *(a1 + 1) = *v28;
        v28[0] = v20;
        v28[1] = v24;
        v26 = v20;
        v27 = v20;
      }

      if (v20)
      {
        free(v20);
      }
    }

    v25 = a1[3];
    if (v25)
    {
      bzero(&(*a1)[4 * v25], a1[1] - &(*a1)[4 * v25]);
    }
  }
}

void sub_2263B2930(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2263B28FCLL);
}

void ATXUpdatePredictionsDefaultInterval(uint64_t a1)
{
  v2 = [MEMORY[0x277CEBCF8] shouldSkipExpensiveTask];
  if (v2)
  {
    v3 = __atxlog_handle_default(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXUpdatePredictions: Skipping prediction update since system is busy.", buf, 2u);
    }
  }

  else
  {
    v5 = +[_ATXGlobals sharedInstance];
    [v5 defaultPredictionRefreshRate];
    ATXUpdatePredictions(a1, v4);
  }
}

void ATXUpdatePredictions(uint64_t a1, double a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = os_transaction_create();
  v5 = v4;
  if (a1 == 20)
  {
    v11 = +[ATXFaceSuggestionServer sharedInstance];
    [v11 regenerateFaceGalleryConfigurationWithCompletion:&__block_literal_global_71];
  }

  else if (a1 == 13)
  {
    v6 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXUpdatePredictions: clearing ATXMagicalMomentsBlendingUpdater", buf, 2u);
    }

    v7 = objc_opt_new();
    [ATXMagicalMomentsBlendingUpdater updateBlendingLayerWithMagicalMomentsMap:v7];

    v9 = __atxlog_handle_default(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXUpdatePredictions: clearing ATXHeroAppBlendingUpdater", buf, 2u);
    }

    v10 = objc_opt_new();
    [ATXHeroAppBlendingUpdater updateBlendingLayerWithHeroAppPredictions:v10 currentLocation:0];
  }

  if (predictionUpdateDisabledByInternalSettings_onceToken != -1)
  {
    ATXUpdatePredictions_cold_1();
  }

  if (predictionUpdateDisabledByInternalSettings_disableCacheUpdateSetting == 1)
  {
    v12 = __atxlog_handle_default(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "ATXUpdatePredictions: Skipping cache refresh due to internal settings";
LABEL_18:
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }
  }

  else
  {
    buf[0] = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"displayDonationsOnLockscreen", *MEMORY[0x277CEBD00], buf);
    if (a1 == 5 && AppBooleanValue)
    {
      v12 = __atxlog_handle_default(AppBooleanValue);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "ATXUpdatePredictions: Skipping cache refresh for hero app w/ developer switch";
        goto LABEL_18;
      }
    }

    else
    {
      v15 = [MEMORY[0x277D42598] isClassCLocked];
      if (v15)
      {
        v16 = __atxlog_handle_default(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          ATXUpdatePredictions_cold_2(a1, v16);
        }

        v17 = MEMORY[0x277CBEAD8];
        v18 = *MEMORY[0x277CBE658];
        v19 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:a1];
        [v17 raise:v18 format:{@"ATXUpdatePredictions: Can not refresh predictions when class C locked! Reason: %@", v19}];
      }

      pthread_mutex_lock(&lock_0);
      v12 = _Block_copy(overrideBlock);
      v20 = pthread_mutex_unlock(&lock_0);
      if (v12)
      {
        (*(v12 + 16))(v12, a2);
      }

      else
      {
        v21 = 0;
        atomic_compare_exchange_strong(ATXUpdatePredictions_updateInProgress, &v21, 1u);
        if (v21)
        {
          v26 = __atxlog_handle_default(v20);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [ATXUpdatePredictionsReasons stringForUpdatePredictionsReason:a1];
            *buf = 138412290;
            v30 = v27;
            _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "ATXUpdatePredictions: Update in progress already, coalescing update with reason: %@", buf, 0xCu);
          }
        }

        else
        {
          v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_BACKGROUND, 0);
          v24 = dispatch_queue_create("ATXUpdatePredictions", v23);

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __ATXUpdatePredictions_block_invoke_31;
          block[3] = &__block_descriptor_48_e5_v8__0l;
          *&block[4] = a2;
          block[5] = a1;
          v25 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
          dispatch_async(v24, v25);
        }
      }
    }
  }
}

void sub_2263B39DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2263B3AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *ATXAppLaunchFromToString(uint64_t a1)
{
  v2 = @"AppLaunchSpotlight";
  if (a1 > 12)
  {
    v5 = @"unknown";
    if ((a1 - 22) >= 2)
    {
      v5 = @"AppLaunchSpotlight";
    }

    v6 = @"AppLaunchSiri";
    v7 = @"AppLaunchAppSwitcher";
    v8 = @"AppLaunchBreadCrumb";
    if (a1 != 21)
    {
      v8 = @"AppLaunchSpotlight";
    }

    if (a1 != 20)
    {
      v7 = v8;
    }

    if (a1 != 19)
    {
      v6 = v7;
    }

    if (a1 <= 21)
    {
      v5 = v6;
    }

    v9 = @"AppLaunchDock";
    v10 = @"AppLaunchNotification";
    v11 = @"AppLaunchBanner";
    if (a1 != 18)
    {
      v11 = @"AppLaunchSpotlight";
    }

    if (a1 != 17)
    {
      v10 = v11;
    }

    if (a1 != 16)
    {
      v9 = v10;
    }

    if (a1 == 15)
    {
      v2 = @"AppLaunchWidgetAppPred";
    }

    if (a1 == 14)
    {
      v2 = @"AppLaunchWidget";
    }

    if (a1 == 13)
    {
      v2 = @"AppLaunchSpotlightAppPred";
    }

    if (a1 > 15)
    {
      v2 = v9;
    }

    if (a1 <= 18)
    {
      v3 = v2;
    }

    else
    {
      v3 = v5;
    }
  }

  else if (a1 >= 0xB)
  {
    if (a1 == 12)
    {
      v3 = @"AppLaunchSpotlightSearch";
    }

    else
    {
      v3 = @"AppLaunchSpotlight";
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"AppLaunchPage%lu", a1];
  }

  return v3;
}

id __atxlog_handle_metrics(uint64_t a1)
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v2 = __atxlog_handle_metrics_log;

  return v2;
}

id __dispatch_async_txn_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  return objc_opt_self();
}

id sub_2263B47B8()
{
  v1 = OBJC_IVAR___ATXContextualEngine_suggestionStore;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_2263B480C(unint64_t a1)
{
  sub_2263B4904(a1);
  sub_2263B74F4(a1);
  v3 = *(v1 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_lock);
  os_unfair_lock_lock((v3 + 32));
  sub_2263B7A58((v3 + 16));
  os_unfair_lock_unlock((v3 + 32));

  result = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v4);
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2263B4930(unint64_t a1, uint64_t (*a2)(void *), unint64_t a3)
{
  ObjectType = swift_getObjectType();
  v27 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2268368D8())
  {
    v22 = a3;
    a3 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = 0;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x22AA7FDD0](v7, a1);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_29;
          }

          v9 = *(a1 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v26 = v9;
        if (sub_2263B5214(&v26, v24, ObjectType, a2))
        {
          sub_2268369E8();
          a3 = *(v27 + 16);
          sub_226836A18();
          sub_226836A28();
          sub_2268369F8();
          v8 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        ++v7;
        if (v11 == i)
        {
          a3 = MEMORY[0x277D84F90];
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_15:
    v12 = *(v24 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_actionToWidgetConverter);
    sub_2263B5030(0, &qword_28138F9A0, 0x277D42068);
    v13 = sub_226836558();

    v14 = [v12 convertSuggestions_];

    v15 = sub_226836568();
    v27 = a3;
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v22;
      if (!v16)
      {
        break;
      }

      goto LABEL_17;
    }

    v16 = sub_2268368D8();
    v17 = v22;
    if (!v16)
    {
      break;
    }

LABEL_17:
    a1 = 0;
    a3 = v15 & 0xC000000000000001;
    ObjectType = MEMORY[0x277D84F90];
    while (1)
    {
      if (a3)
      {
        v18 = MEMORY[0x22AA7FDD0](a1, v15);
      }

      else
      {
        if (a1 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v18 = *(v15 + 8 * a1 + 32);
      }

      v19 = v18;
      v20 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v26 = v18;
      v17(&v25, &v26);

      if (v25)
      {
        MEMORY[0x22AA7F970]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_226836588();
          v17 = v22;
        }

        sub_2268365A8();
        ObjectType = v27;
      }

      ++a1;
      if (v20 == v16)
      {
        goto LABEL_35;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  ObjectType = MEMORY[0x277D84F90];
LABEL_35:

  return ObjectType;
}

BOOL sub_2263B4C7C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_226836C08();
  MEMORY[0x22AA80040](a1);
  v4 = sub_226836C48();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t sub_2263B4D48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2263B4E14(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2263B4F20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2263B4E14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2267A414C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2268369C8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2263B4F20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_2263B4FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D90, &unk_226873270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2263B5030(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2263B51C8()
{
  result = qword_28138F9A0;
  if (!qword_28138F9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28138F9A0);
  }

  return result;
}

uint64_t sub_2263B5214(id *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v61 = a4;
  v62 = a3;
  v6 = sub_226836068();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = *a1;
  v17 = [*a1 clientModelSpecification];
  v18 = [v17 clientModelId];

  if (!v18)
  {
    sub_226836408();
    v18 = sub_2268363F8();
  }

  v19 = [objc_opt_self() clientModelTypeFromClientModelId_];

  if (!v19)
  {
    v21 = [v16 clientModelSpecification];
    v22 = [v21 clientModelId];

    v23 = sub_226836408();
    v25 = v24;

    v65[0] = v23;
    v65[1] = v25;
    MEMORY[0x28223BE20](v26);
    *(&v61 - 2) = v65;
    v27 = v66;
    LOBYTE(v23) = sub_2267B80E0(v61, (&v61 - 4), &unk_283995018);
    v20 = v27;

    if ((v23 & 1) == 0)
    {
      sub_226836018();
      v50 = v16;
      v51 = sub_226836038();
      v52 = sub_2268366E8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v66 = v27;
        v54 = v53;
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v65[0] = v56;
        *v54 = 136315394;
        v57 = sub_226836CA8();
        v59 = sub_2263B4D48(v57, v58, v65);

        *(v54 + 4) = v59;
        *(v54 + 12) = 2112;
        *(v54 + 14) = v50;
        *v55 = v50;
        v60 = v50;
        _os_log_impl(&dword_2263AA000, v51, v52, "%s: filtering out suggestion with unsupported client model id: %@", v54, 0x16u);
        sub_2263B4FC8(v55);
        MEMORY[0x22AA821D0](v55, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x22AA821D0](v56, -1, -1);
        MEMORY[0x22AA821D0](v54, -1, -1);
      }

      (*(v63 + 8))(v11, v64);
      return 0;
    }

LABEL_7:
    if ([*(a2 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_modeFilter) currentModeConfigurationAllowsSuggestion_])
    {
      return 1;
    }

    sub_226836018();
    v39 = v16;
    v40 = sub_226836038();
    v41 = sub_2268366E8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v66 = v20;
      v43 = v42;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65[0] = v45;
      *v43 = 136315394;
      v46 = sub_226836CA8();
      v48 = sub_2263B4D48(v46, v47, v65);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v39;
      *v44 = v39;
      v49 = v39;
      _os_log_impl(&dword_2263AA000, v40, v41, "%s: filtering out suggestion due to mode configuration: %@", v43, 0x16u);
      sub_2263B4FC8(v44);
      MEMORY[0x22AA821D0](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x22AA821D0](v45, -1, -1);
      MEMORY[0x22AA821D0](v43, -1, -1);
    }

    (*(v63 + 8))(v8, v64);
    return 0;
  }

  if (sub_2263B4C7C(v19, *(a2 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_allowedAmbientClientModelTypes)))
  {
    v20 = v66;
    goto LABEL_7;
  }

  sub_226836018();
  v29 = v16;
  v30 = sub_226836038();
  v31 = sub_2268366E8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v65[0] = v34;
    *v32 = 136315394;
    v35 = sub_226836CA8();
    v37 = sub_2263B4D48(v35, v36, v65);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v29;
    *v33 = v29;
    v38 = v29;
    _os_log_impl(&dword_2263AA000, v30, v31, "%s: filtering out suggestion with unsupported client model type: %@", v32, 0x16u);
    sub_2263B4FC8(v33);
    MEMORY[0x22AA821D0](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x22AA821D0](v34, -1, -1);
    MEMORY[0x22AA821D0](v32, -1, -1);
  }

  (*(v63 + 8))(v15, v64);
  return 0;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_2_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_2_11(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_2_13(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_0_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_2263B644C(_Unwind_Exception *a1)
{
  MEMORY[0x22AA80F00](v2, 0x1060C40D5FD4D19);

  _Unwind_Resume(a1);
}

pthread_mutex_t *proactive::pas::detail::RecursiveMutex::RecursiveMutex(pthread_mutex_t *this)
{
  v4 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init(this, &v3);
  pthread_mutexattr_destroy(&v3);
  return this;
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_1_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

id sub_2263B69C4()
{
  v1 = OBJC_IVAR___ATXContextualEngine_suggestionServer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2263B6A18()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_lock);
  os_unfair_lock_lock((v1 + 24));
  sub_2263B6A7C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_2263B6AA8(uint64_t a1, uint64_t a2)
{
  sub_226836988();
  (*(a2 + 40))(a1, a2);
  v4 = objc_allocWithZone(sub_226835D28());
  return sub_226835D08();
}

uint64_t *std::unique_ptr<proactive::pas::SynchronizedObject<anonymous namespace::HDGuardedData,proactive::pas::detail::RecursiveMutex>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    pthread_mutex_destroy((v2 + 8));

    JUMPOUT(0x22AA80F00);
  }

  return result;
}

void *_ZNSt3__114__split_bufferIDv8_fRN12_GLOBAL__N_120SimdAlignedAllocatorIS1_EEEC1EmmS5_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x40uLL, 32 * a2, 0x1000040E0EAB150uLL))
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v11, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v7 = memptr;
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[32 * a3];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = &v7[32 * a2];
  return a1;
}

id createInfoSuggestion(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x277D42040];
  v8 = a2;
  v9 = [v7 alloc];
  v10 = [v6 launchId];
  v11 = v10;
  if (!v10)
  {
    v11 = [v5 bundleId];
  }

  v12 = [v8 extensionBundleIdentifier];
  v13 = [v8 kind];
  v14 = [v8 atx_layoutOptions];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", objc_msgSend(v5, "hash")];
  v16 = [v9 initWithAppBundleIdentifier:v11 widgetBundleIdentifier:v12 widgetKind:v13 criterion:&stru_2839A6058 applicableLayouts:v14 suggestionIdentifier:v15 startDate:0 endDate:0 intent:v6 metadata:0 relevanceScore:0];

  if (!v10)
  {
  }

  return v16;
}

void sub_2263B6F40(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_226835268();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226836068();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 atxInfoSuggestionExecutableObject];
  if (v16)
  {
    v17 = v16;
    v40 = v11;
    v41 = v10;
    v42 = a3;
    v18 = *(a2 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_disabledHeuristicSourceIdentifiers);
    v19 = [v16 sourceIdentifier];
    v20 = sub_226836408();
    v22 = v21;

    LOBYTE(v18) = sub_2263B7360(v20, v22, v18);

    if (v18)
    {
      v23 = sub_2263B7458();
      v25 = v40;
      v24 = v41;
      (*(v40 + 16))(v14, v23, v41);
      v26 = v15;
      v27 = sub_226836038();
      v28 = sub_2268366E8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&dword_2263AA000, v27, v28, "ContextualEngineSuggestionStore: skipping disabled heuristic: %@", v29, 0xCu);
        sub_2263B4FC8(v30);
        MEMORY[0x22AA821D0](v30, -1, -1);
        MEMORY[0x22AA821D0](v29, -1, -1);
      }

      (*(v25 + 8))(v14, v24);
      v32 = 0;
    }

    else
    {
      sub_226835258();
      v33 = sub_226835238();
      v40 = v34;
      v41 = v33;
      (*(v7 + 8))(v9, v6);
      v35 = [v17 widgetBundleIdentifier];
      sub_226836408();

      v36 = [v17 appBundleIdentifier];
      sub_226836408();

      v37 = [v17 widgetKind];
      sub_226836408();

      [v17 intent];
      [v15 scoreSpecification];
      [v15 clientModelSpecification];
      v38 = objc_allocWithZone(sub_226835C18());
      v32 = sub_226835C08();
    }

    a3 = v42;
  }

  else
  {
    v32 = 0;
  }

  *a3 = v32;
}

uint64_t sub_2263B7360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_226836C08();
  sub_226836498();
  v6 = sub_226836C48();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_226836B58() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2263B7458()
{
  if (qword_2813905C8 != -1)
  {
    swift_once();
  }

  v0 = sub_226836068();

  return __swift_project_value_buffer(v0, qword_281390C20);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_2263B7520(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_226835268();
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226836068();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = *a1;
  v18 = [*a1 atxInfoSuggestionExecutableObject];
  if (v18)
  {
    v49 = v9;
    v50 = a3;
    v19 = *(a2 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_disabledHeuristicSourceIdentifiers);
    v20 = v18;
    v21 = [v18 sourceIdentifier];
    v22 = sub_226836408();
    v24 = v23;

    LOBYTE(v19) = sub_2263B7360(v22, v24, v19);

    if (v19)
    {
      v25 = v20;
      v26 = sub_2263B7458();
      v27 = v49;
      (*(v10 + 16))(v16, v26, v49);
      v28 = v17;
      v29 = sub_226836038();
      v30 = sub_2268366E8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_2263AA000, v29, v30, "ContextualEngineSuggestionStore: skipping disabled heuristic: %@", v31, 0xCu);
        sub_2263B4FC8(v32);
        MEMORY[0x22AA821D0](v32, -1, -1);
        MEMORY[0x22AA821D0](v31, -1, -1);
      }

      (*(v10 + 8))(v16, v27);
      v34 = 0;
    }

    else
    {
      sub_226835258();
      v42 = sub_226835238();
      v48 = v43;
      v49 = v42;
      (*(v51 + 8))(v8, v6);
      v44 = [v20 widgetBundleIdentifier];
      sub_226836408();

      v45 = [v20 appBundleIdentifier];
      sub_226836408();

      v46 = [v20 widgetKind];
      sub_226836408();

      [v20 intent];
      [v17 scoreSpecification];
      [v17 clientModelSpecification];
      v47 = objc_allocWithZone(sub_226835C18());
      v34 = sub_226835C08();
    }

    a3 = v50;
  }

  else
  {
    v35 = sub_2263B7458();
    (*(v10 + 16))(v12, v35, v9);
    v36 = v17;
    v37 = sub_226836038();
    v38 = sub_2268366C8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_2263AA000, v37, v38, "failed to get suggestions executable info from %@", v39, 0xCu);
      sub_2263B4FC8(v40);
      MEMORY[0x22AA821D0](v40, -1, -1);
      MEMORY[0x22AA821D0](v39, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v34 = 0;
  }

  *a3 = v34;
}

uint64_t sub_2263B7A58(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;

  a1[1] = v3;
  return result;
}

void *sub_2263B7B0C(uint64_t *a1, uint64_t a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  v8 = sub_226836068();
  MEMORY[0x28223BE20](v8);
  v10 = *a1;
  v11 = (*a1 & 0xC000000000000001) == 0;
  v56 = v12;
  v55 = v13;
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v19 = -1 << *(v10 + 32);
    v15 = v10 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v10 + 56);

    v17 = 0;
  }

  else
  {

    sub_2268368C8();
    sub_2267D2F1C();
    sub_2267D2FA0();
    result = sub_226836688();
    v10 = v70[4];
    v15 = v70[5];
    v16 = v70[6];
    v17 = v70[7];
    v18 = v70[8];
  }

  v57 = v16;
  v22 = (v16 + 64) >> 6;
  v61 = v70;
  v60 = v10;
  v58 = v22;
  while (v10 < 0)
  {
    v28 = sub_2268368F8();
    if (!v28)
    {
      return sub_2263B9C34(v10);
    }

    v68 = v28;
    sub_2267D2F1C();
    swift_dynamicCast();
    v27 = aBlock[0];
    v25 = v17;
    v26 = v18;
    if (!aBlock[0])
    {
      return sub_2263B9C34(v10);
    }

LABEL_19:
    v70[2] = sub_2267D0D78;
    v70[3] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v70[0] = sub_2267D0F60;
    v70[1] = &block_descriptor_28;
    v29 = _Block_copy(aBlock);
    v30 = [v27 remoteObjectProxyWithErrorHandler_];
    _Block_release(v29);
    sub_226836878();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A23F0, &qword_226874AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v45 = sub_2263B7458();
      v46 = v55;
      v47 = v54;
      v48 = v56;
      (*(v55 + 16))(v54, v45, v56);
      v49 = sub_226836038();
      v50 = sub_2268366C8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2263AA000, v49, v50, "ContextualSuggestionServer: error casting remote object to interface", v51, 2u);
        MEMORY[0x22AA821D0](v51, -1, -1);
        v52 = v60;
      }

      else
      {
        v52 = v10;
      }

      sub_2263B9C34(v52);

      return (*(v46 + 8))(v47, v48);
    }

    v62 = v27;
    v31 = v15;
    v32 = v5;
    v33 = v68;
    v34 = (*((*MEMORY[0x277D85000] & **(v59 + OBJC_IVAR____TtC21AppPredictionInternal26ContextualSuggestionServer_suggestionStore)) + 0xB0))();
    v35 = sub_2263B9870(v34);

    v36 = sub_226836628();
    v37 = *(v36 - 8);
    v38 = v63;
    (*(v37 + 56))(v63, 1, 1, v36);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v33;
    v39[5] = v35;
    v5 = v32;
    sub_2267ACD9C(v38, v32);
    LODWORD(v38) = (*(v37 + 48))(v32, 1, v36);

    if (v38 == 1)
    {
      sub_2263B9BCC(v32);
    }

    else
    {
      sub_226836618();
      (*(v37 + 8))(v32, v36);
    }

    v40 = v39[2];
    swift_unknownObjectRetain();

    v15 = v31;
    if (v40)
    {
      swift_getObjectType();
      v41 = sub_2268365D8();
      v43 = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = v62;
    sub_2263B9BCC(v63);
    if (v43 | v41)
    {
      v64 = 0;
      v65 = 0;
      v66 = v41;
      v67 = v43;
    }

    swift_task_create();

    v17 = v25;
    v18 = v26;
    v10 = v60;
    v22 = v58;
  }

  v23 = v17;
  v24 = v18;
  v25 = v17;
  if (v18)
  {
LABEL_15:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v10 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v27)
    {
      return sub_2263B9C34(v10);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      return sub_2263B9C34(v10);
    }

    v24 = *(v15 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2263B81EC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2263B82F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_contextStore);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = (*(*v1 + 216))();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v126 = sub_226836488();
  v127 = v4;
  v5 = sub_226836468();
  v128 = v5;
  v129 = v6;
  v117 = v6;
  v7 = sub_226836478();
  v130 = v7;
  v131 = v8;
  v118 = v8;
  if (qword_27D7A3850 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v9 = qword_27D7A3858;
    v10 = sub_2268363F8();
    LODWORD(v9) = [v9 BOOLForKey_];

    v112 = v3;
    if (v9)
    {
      break;
    }

    v125 = v2;
    sub_2263B916C(0, 3, 0);
    v25 = 0;
    v7 = 0;
    v26 = v125;
    v111 = (v3 + 32);
    while (1)
    {
      v27 = &v126 + 2 * v25;
      v28 = *v27;
      v29 = v27[1];

      v31 = sub_226836488() == v28 && v30 == v29;
      v119 = v28;
      if (!v31)
      {
        break;
      }

LABEL_29:
      v37 = *(v3 + 16);
      if (v37)
      {
        v121[0] = v2;
        sub_226836A08();
        v38 = v111;
        do
        {
          sub_2267B61B0(v38, v124);
          sub_2268369E8();
          sub_226836A18();
          sub_226836A28();
          sub_2268369F8();
          v38 += 5;
          --v37;
        }

        while (v37);
        v2 = MEMORY[0x277D84F90];
        v3 = v112;
      }

LABEL_33:
      v39 = objc_allocWithZone(sub_226835CA8());
LABEL_36:
      v47 = sub_226835C88();
LABEL_37:
      v125 = v26;
      v5 = *(v26 + 16);
      v48 = *(v26 + 24);
      v49 = v119;
      if (v5 >= v48 >> 1)
      {
        v61 = v47;
        sub_2263B916C((v48 > 1), v5 + 1, 1);
        v49 = v119;
        v47 = v61;
        v26 = v125;
      }

      ++v25;
      *(v26 + 16) = v5 + 1;
      v50 = (v26 + 24 * v5);
      v50[4] = v49;
      v50[5] = v29;
      v50[6] = v47;
      if (v25 == 3)
      {

        swift_arrayDestroy();
        if (*(v26 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23B0, qword_226873D30);
          v68 = sub_226836AB8();
        }

        else
        {
          v68 = MEMORY[0x277D84F98];
        }

        v121[0] = v68;

        sub_2263B93B0(v107, 1, v121);

        return v121[0];
      }
    }

    v32 = sub_226836B58();

    if (v32)
    {
      goto LABEL_29;
    }

    if (sub_226836478() == v119 && v33 == v29)
    {

LABEL_35:
      v40 = *&v116[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_lock];
      os_unfair_lock_lock(v40 + 8);

      os_unfair_lock_unlock(v40 + 8);
      v41 = type metadata accessor for BlendingContext();
      v121[0] = sub_2263B91B4();
      v42 = sub_2263B91C8(&qword_27D7A1B38, type metadata accessor for BlendingContext, &unk_2268733E0);
      sub_2263B6AA8(v41, v42);

      v43 = objc_allocWithZone(sub_226835C78());
      v44 = sub_226835C58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D70, &unk_226873820);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_226873280;
      *(v45 + 32) = v44;
      v46 = objc_allocWithZone(sub_226835CA8());
      goto LABEL_36;
    }

    v35 = sub_226836B58();

    if (v35)
    {
      goto LABEL_35;
    }

    if (sub_226836468() != v119 || v36 != v29)
    {
      v51 = sub_226836B58();

      if (v51)
      {
        goto LABEL_42;
      }

      goto LABEL_33;
    }

LABEL_42:
    v52 = *&v116[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_lock];
    os_unfair_lock_lock((v52 + 32));
    if (*(v52 + 16))
    {
      v53 = *(v52 + 16);
    }

    else
    {
      v53 = v2;
    }

    os_unfair_lock_unlock((v52 + 32));
    v121[0] = v2;
    v115 = v53;
    if (!(v53 >> 62))
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        goto LABEL_47;
      }

      goto LABEL_61;
    }

    v54 = sub_2268368D8();
    if (!v54)
    {
LABEL_61:

      v62 = type metadata accessor for BlendingContext();
      v121[0] = sub_2263B91B4();
      v63 = sub_2263B91C8(&qword_27D7A1B38, type metadata accessor for BlendingContext, &unk_2268733E0);
      sub_2263B6AA8(v62, v63);

      v64 = objc_allocWithZone(sub_226835C78());
      v65 = sub_226835C58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D70, &unk_226873820);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_226873280;
      *(v66 + 32) = v65;
      v67 = objc_allocWithZone(sub_226835CA8());
      v47 = sub_226835C88();
      goto LABEL_37;
    }

LABEL_47:
    v114 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_modeFilter;
    v2 = v53;
    v117 = v53 & 0xFFFFFFFFFFFFFF8;
    v118 = v53 & 0xC000000000000001;
    v3 = 4;
    while (1)
    {
      v55 = v3 - 4;
      if (v118)
      {
        v56 = MEMORY[0x22AA7FDD0](v3 - 4, v2);
      }

      else
      {
        if (v55 >= *(v117 + 16))
        {
          goto LABEL_102;
        }

        v56 = *(v2 + 8 * v3);
      }

      v57 = v56;
      v5 = v3 - 3;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      sub_226835C28();
      if (!v58 || (v59 = *&v116[v114], v60 = sub_2268363F8(), , LOBYTE(v59) = [v59 currentModeConfigurationAllowsBundleId_], v60, v2 = v115, (v59 & 1) != 0))
      {
        sub_2268369E8();
        sub_226836A18();
        sub_226836A28();
        sub_2268369F8();
      }

      else
      {
      }

      ++v3;
      if (v5 == v54)
      {
        v2 = MEMORY[0x277D84F90];
        v3 = v112;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    swift_once();
  }

  v110 = v5;
  v11 = sub_2267B82EC();
  v113 = v7;
  if (!v11)
  {
    v11 = sub_2267B6A0C();
  }

  v12 = v11;
  v13 = *(v3 + 16);
  v116 = v11;
  if (v13)
  {
    v125 = v2;
    sub_2267B7F8C(0, v13, 0);
    v14 = v125;
    v15 = v3 + 32;
    do
    {
      sub_22679CBC4(v15, v121);
      __swift_project_boxed_opaque_existential_1(v121, v122);
      sub_226836988();
      v16 = v122;
      v17 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v18 = (*(v17 + 40))(v16, v17);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(v121);
      v21 = v124[0];
      v22 = v124[1];
      v125 = v14;
      v3 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v3 >= v23 >> 1)
      {
        sub_2267B7F8C((v23 > 1), v3 + 1, 1);
        v14 = v125;
      }

      *(v14 + 16) = v3 + 1;
      v24 = (v14 + 32 * v3);
      v24[4] = v21;
      v24[5] = v22;
      v24[6] = v18;
      v24[7] = v20;
      v15 += 40;
      --v13;
    }

    while (v13);

    v12 = v116;
    if (*(v14 + 16))
    {
LABEL_65:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1CB0, &unk_226874170);
      v69 = sub_226836AB8();
      goto LABEL_68;
    }
  }

  else
  {

    if (*(v2 + 16))
    {
      goto LABEL_65;
    }
  }

  v69 = MEMORY[0x277D84F98];
LABEL_68:
  v70 = MEMORY[0x277D84F90];
  v121[0] = v69;

  sub_2267B7394(v71, 1, v121);

  v72 = v121[0];
  v73 = sub_226835C98();
  v2 = v73;
  v121[0] = v70;
  v120 = v73 & 0xFFFFFFFFFFFFFF8;
  if (v73 >> 62)
  {
    v5 = sub_2268368D8();
  }

  else
  {
    v5 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v74 = 0;
    v7 = v2 & 0xC000000000000001;
LABEL_72:
    v75 = v74;
    while (1)
    {
      if (v7)
      {
        v76 = MEMORY[0x22AA7FDD0](v75, v2);
      }

      else
      {
        if (v75 >= *(v120 + 16))
        {
          goto LABEL_104;
        }

        v76 = *(v2 + 8 * v75 + 32);
      }

      v77 = v76;
      v74 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_103;
      }

      v78 = sub_226835C68();
      v3 = sub_226835D18();
      v80 = v79;

      if (*(v72 + 16))
      {
        sub_2263B9740(v3, v80);
        v3 = v81;

        if (v3)
        {

          v82 = sub_226835C68();
          sub_226835D18();
          v3 = v83;

          v84 = objc_allocWithZone(sub_226835D28());
          sub_226835D08();
          sub_226835C48();
          v85 = objc_allocWithZone(sub_226835C78());
          sub_226835C58();

          MEMORY[0x22AA7F970]();
          if (*((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_226836588();
          }

          sub_2268365A8();
          v12 = v116;
          if (v74 != v5)
          {
            goto LABEL_72;
          }

          break;
        }
      }

      else
      {
      }

      ++v75;
      if (v74 == v5)
      {
        v12 = v116;
        break;
      }
    }
  }

  v86 = objc_allocWithZone(sub_226835CA8());
  v87 = sub_226835C88();
  v121[0] = MEMORY[0x277D84F90];
  sub_2263B916C(0, 3, 0);
  v88 = v121[0];
  v90 = v126;
  v89 = v127;
  v91 = *(v121[0] + 16);
  v92 = *(v121[0] + 24);
  v93 = v91 + 1;

  v94 = v87;
  if (v91 >= v92 >> 1)
  {
    v109 = v94;
    sub_2263B916C((v92 > 1), v91 + 1, 1);
    v94 = v109;
    v88 = v121[0];
  }

  *(v88 + 16) = v93;
  v95 = (v88 + 24 * v91);
  v95[4] = v90;
  v95[5] = v89;
  v95[6] = v94;
  v96 = *(v88 + 24);
  v97 = v91 + 2;
  v98 = v94;

  if (v93 >= v96 >> 1)
  {
    sub_2263B916C((v96 > 1), v97, 1);
    v88 = v121[0];
  }

  *(v88 + 16) = v97;
  v99 = (v88 + 24 * v93);
  v99[4] = v110;
  v99[5] = v117;
  v99[6] = v98;
  v101 = *(v88 + 16);
  v100 = *(v88 + 24);
  v102 = v98;

  if (v101 >= v100 >> 1)
  {
    sub_2263B916C((v100 > 1), v101 + 1, 1);
  }

  v103 = v121[0];
  *(v121[0] + 16) = v101 + 1;
  v104 = (v103 + 24 * v101);
  v104[4] = v113;
  v104[5] = v118;
  v104[6] = v102;
  swift_arrayDestroy();
  if (*(v103 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23B0, qword_226873D30);
    v105 = sub_226836AB8();
  }

  else
  {
    v105 = MEMORY[0x277D84F98];
  }

  v121[0] = v105;

  sub_2263B93B0(v106, 1, v121);

  return v121[0];
}

void *sub_2263B9024(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23C0, &unk_226873F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D60, &qword_226874A80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2263B916C(void *a1, int64_t a2, char a3)
{
  result = sub_2263B9024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2263B91C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2263B9210@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BlendingContext();
  sub_2263B9270(&qword_27D7A1B38, &unk_2268733E0);
  result = sub_2263B92B0(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2263B9270(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BlendingContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2263B92B0(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_226836438();
}

uint64_t sub_2263B9300()
{
  type metadata accessor for BlendingContext();
  sub_2263B9270(&qword_27D7A1B38, &unk_2268733E0);

  return sub_2263B6BB0();
}

void sub_2263B93B0(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_2263B9740(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_2267B7A28(v16, v5 & 1);
    v11 = sub_2263B9740(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_226836BA8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_2267B7744();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_226836968();
    MEMORY[0x22AA7F8E0](0xD00000000000001BLL, 0x80000002268CE560);
    sub_226836A48();
    MEMORY[0x22AA7F8E0](39, 0xE100000000000000);
    sub_226836A58();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_2263B9740(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_2267B7A28(v33, 1);
        v29 = sub_2263B9740(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_2263B9740(uint64_t a1, uint64_t a2)
{
  sub_226836C08();
  sub_226836498();
  v4 = sub_226836C48();

  return sub_2263B97B8(a1, a2, v4);
}

unint64_t sub_2263B97B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_226836B58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2263B9870(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      do
      {
LABEL_8:
        v9 = __clz(__rbit64(v4)) | (v6 << 6);
        v10 = (*(a1 + 48) + 16 * v9);
        v11 = v10[1];
        v12 = *(*(a1 + 56) + 8 * v9);
        v24[0] = *v10;
        v24[1] = v11;

        v13 = v12;
        v14 = sub_226836518();
        v16 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2263B9A84(0, v7[2] + 1, 1, v7);
        }

        v18 = v7[2];
        v17 = v7[3];
        if (v18 >= v17 >> 1)
        {
          v7 = sub_2263B9A84((v17 > 1), v18 + 1, 1, v7);
        }

        v4 &= v4 - 1;
        v7[2] = v18 + 1;
        v19 = &v7[3 * v18];
        v19[4] = v14;
        v19[5] = v16;
        v19[6] = v13;
      }

      while (v4);
    }
  }

  if (v7[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23B0, qword_226873D30);
    v20 = sub_226836AB8();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  v24[0] = v20;

  sub_2263B93B0(v21, 1, v24);

  return v24[0];
}

void *sub_2263B9A84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23C0, &unk_226873F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1D60, &qword_226874A80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2263B9BCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2263B9C3C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2263BA0A4;

  return sub_2263B9CD4(v4, v5, v6, v2, v3);
}

uint64_t sub_2263B9CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_2263B9CF4, 0, 0);
}

uint64_t sub_2263B9CF4()
{
  v1 = v0[18];
  sub_226835CA8();
  v2 = sub_226836348();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_2263B9F30;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A23F8, &unk_226874AB8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2263B9E40;
  v0[13] = &block_descriptor_35;
  v0[14] = v3;
  [v1 updateWith:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2263B9E40(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2263B9F30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2267D0FC8;
  }

  else
  {
    v2 = sub_2263BA040;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2263BA040()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2263BA0A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2263BB094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2263BB598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2263C064C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2263C0684()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2263C06D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C0708(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2263C0728()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C0770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C07A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C07E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C0818()
{
  v1 = sub_226835228();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2263C0918()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C0950()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C0988()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C09C0()
{
  MEMORY[0x22AA822A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C09F8()
{
  v1 = sub_226835E28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2263C0AD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2263C0B1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C0B64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C0B9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C0BDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2263C0C24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C0C5C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2263C0CCC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2263C0D18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C0D50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2263C0DA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2263C0DF0()
{
  MEMORY[0x22AA822A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C0E28()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2263C0E70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C0EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226835228();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2263C0F58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226835228();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2263C0FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for SportsDependencies(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2263C112C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226835228();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for SportsDependencies(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2263C124C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C1284()
{
  MEMORY[0x22AA822A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C12BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C12FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C1344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226835228();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2263C13F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226835228();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2263C149C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2263C1564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2263C1614()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C164C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A24A0, &qword_226875200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2263C16F4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2263C1740()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C1780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2268352F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2263C17EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2268352F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2263C1860()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C1898()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2263C18E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2263C1928()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C1974(uint64_t a1, uint64_t a2)
{
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2263C19E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2263C1A50()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2263C1A9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C1AD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2263C1B14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C1B58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2263C1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2263C1C50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for DetectedEntityContext.DetectedEntityType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t ATXPBTaskAgnosticBehaviorFeatureVectorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v452) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v452 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v452 & 0x7F) << v5;
        if ((v452 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          *(a1 + 1184) |= 0x10000u;
          v452 = 0;
          v13 = [a2 position] + 8;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
          {
            v401 = [a2 data];
            [v401 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__unlockTime;
          goto LABEL_745;
        case 2u:
          *(a1 + 1184) |= 0x10u;
          v452 = 0;
          v63 = [a2 position] + 8;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 8, v64 <= objc_msgSend(a2, "length")))
          {
            v329 = [a2 data];
            [v329 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__launchTimePopularity;
          goto LABEL_745;
        case 3u:
          *(a1 + 1184) |= 0x100u;
          v452 = 0;
          v265 = [a2 position] + 8;
          if (v265 >= [a2 position] && (v266 = objc_msgSend(a2, "position") + 8, v266 <= objc_msgSend(a2, "length")))
          {
            v431 = [a2 data];
            [v431 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__timeOfDayBucket;
          goto LABEL_745;
        case 4u:
          *(a1 + 1184) |= 0x200u;
          v452 = 0;
          v293 = [a2 position] + 8;
          if (v293 >= [a2 position] && (v294 = objc_msgSend(a2, "position") + 8, v294 <= objc_msgSend(a2, "length")))
          {
            v445 = [a2 data];
            [v445 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__timeOfDayPopularity;
          goto LABEL_745;
        case 5u:
          *(a1 + 1176) |= 0x8000000000000uLL;
          v452 = 0;
          v301 = [a2 position] + 8;
          if (v301 >= [a2 position] && (v302 = objc_msgSend(a2, "position") + 8, v302 <= objc_msgSend(a2, "length")))
          {
            v449 = [a2 data];
            [v449 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__coarseTimeOfDayPopularity;
          goto LABEL_745;
        case 6u:
          *(a1 + 1184) |= 8u;
          v452 = 0;
          v91 = [a2 position] + 8;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 8, v92 <= objc_msgSend(a2, "length")))
          {
            v343 = [a2 data];
            [v343 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__launchPopularity;
          goto LABEL_745;
        case 7u:
          *(a1 + 1184) |= 4u;
          v452 = 0;
          v23 = [a2 position] + 8;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
          {
            v309 = [a2 data];
            [v309 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__launchDayOfWeekPopularity;
          goto LABEL_745;
        case 8u:
          *(a1 + 1176) |= 0x40000000000000uLL;
          v452 = 0;
          v31 = [a2 position] + 8;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
          {
            v313 = [a2 data];
            [v313 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__dayOfWeekBucket;
          goto LABEL_745;
        case 9u:
          *(a1 + 1176) |= 0x80000000000000uLL;
          v452 = 0;
          v251 = [a2 position] + 8;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 8, v252 <= objc_msgSend(a2, "length")))
          {
            v424 = [a2 data];
            [v424 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__dayOfWeekPopularity;
          goto LABEL_745;
        case 0xAu:
          *(a1 + 1176) |= 0x800000000000000uLL;
          v452 = 0;
          v99 = [a2 position] + 8;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
          {
            v347 = [a2 data];
            [v347 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropyLaunchPopularity;
          goto LABEL_745;
        case 0xBu:
          *(a1 + 1176) |= 0x100000000000000uLL;
          v452 = 0;
          v287 = [a2 position] + 8;
          if (v287 >= [a2 position] && (v288 = objc_msgSend(a2, "position") + 8, v288 <= objc_msgSend(a2, "length")))
          {
            v442 = [a2 data];
            [v442 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropyDayOfWeekPopularity;
          goto LABEL_745;
        case 0xCu:
          *(a1 + 1176) |= 0x400000000000000uLL;
          v452 = 0;
          v297 = [a2 position] + 8;
          if (v297 >= [a2 position] && (v298 = objc_msgSend(a2, "position") + 8, v298 <= objc_msgSend(a2, "length")))
          {
            v447 = [a2 data];
            [v447 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropyDayOfWeekPopularityByDay;
          goto LABEL_745;
        case 0xDu:
          *(a1 + 1176) |= 0x200000000000000uLL;
          v452 = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v307 = [a2 data];
            [v307 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropyDayOfWeekPopularityByApp;
          goto LABEL_745;
        case 0xEu:
          *(a1 + 1176) |= 0x8000000000000000;
          v452 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v303 = [a2 data];
            [v303 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropyTrendingPopularity;
          goto LABEL_745;
        case 0xFu:
          *(a1 + 1176) |= 0x1000000000000000uLL;
          v452 = 0;
          v101 = [a2 position] + 8;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 8, v102 <= objc_msgSend(a2, "length")))
          {
            v348 = [a2 data];
            [v348 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropySSIDPopularity;
          goto LABEL_745;
        case 0x10u:
          *(a1 + 1176) |= 0x4000000000000000uLL;
          v452 = 0;
          v119 = [a2 position] + 8;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
          {
            v357 = [a2 data];
            [v357 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropySSIDPopularityBySSID;
          goto LABEL_745;
        case 0x11u:
          *(a1 + 1176) |= 0x2000000000000000uLL;
          v452 = 0;
          v209 = [a2 position] + 8;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 8, v210 <= objc_msgSend(a2, "length")))
          {
            v403 = [a2 data];
            [v403 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__entropySSIDPopularityByApp;
          goto LABEL_745;
        case 0x12u:
          *(a1 + 1184) |= 0x1000u;
          v452 = 0;
          v135 = [a2 position] + 8;
          if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 8, v136 <= objc_msgSend(a2, "length")))
          {
            v365 = [a2 data];
            [v365 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__totalNumberOfLaunches;
          goto LABEL_745;
        case 0x13u:
          *(a1 + 1168) |= 1uLL;
          v452 = 0;
          v207 = [a2 position] + 8;
          if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 8, v208 <= objc_msgSend(a2, "length")))
          {
            v402 = [a2 data];
            [v402 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__airplaneModePopularity;
          goto LABEL_745;
        case 0x14u:
          *(a1 + 1184) |= 0x400u;
          v452 = 0;
          v153 = [a2 position] + 8;
          if (v153 >= [a2 position] && (v154 = objc_msgSend(a2, "position") + 8, v154 <= objc_msgSend(a2, "length")))
          {
            v374 = [a2 data];
            [v374 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__totalNumberOfAirplaneModeLaunches;
          goto LABEL_745;
        case 0x15u:
          *(a1 + 1184) |= 0x8000u;
          v452 = 0;
          v257 = [a2 position] + 8;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 8, v258 <= objc_msgSend(a2, "length")))
          {
            v427 = [a2 data];
            [v427 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__trendingPopularity;
          goto LABEL_745;
        case 0x16u:
          *(a1 + 1184) |= 0x4000u;
          v452 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v306 = [a2 data];
            [v306 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__totalNumberOfTrendingLaunches;
          goto LABEL_745;
        case 0x17u:
          *(a1 + 1184) |= 0x80u;
          v452 = 0;
          v25 = [a2 position] + 8;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
          {
            v310 = [a2 data];
            [v310 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__sSIDPopularity;
          goto LABEL_745;
        case 0x18u:
          *(a1 + 1184) |= 0x2000u;
          v452 = 0;
          v125 = [a2 position] + 8;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 8, v126 <= objc_msgSend(a2, "length")))
          {
            v360 = [a2 data];
            [v360 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__totalNumberOfSSIDLaunches;
          goto LABEL_745;
        case 0x19u:
          *(a1 + 1184) |= 0x20u;
          v452 = 0;
          v41 = [a2 position] + 8;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
          {
            v318 = [a2 data];
            [v318 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__onWifi;
          goto LABEL_745;
        case 0x1Au:
          *(a1 + 1176) |= 0x10000000000000uLL;
          v452 = 0;
          v219 = [a2 position] + 8;
          if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 8, v220 <= objc_msgSend(a2, "length")))
          {
            v408 = [a2 data];
            [v408 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__coreMotionPopularity;
          goto LABEL_745;
        case 0x1Bu:
          *(a1 + 1184) |= 0x800u;
          v452 = 0;
          v223 = [a2 position] + 8;
          if (v223 >= [a2 position] && (v224 = objc_msgSend(a2, "position") + 8, v224 <= objc_msgSend(a2, "length")))
          {
            v410 = [a2 data];
            [v410 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__totalNumberOfCoreMotionLaunches;
          goto LABEL_745;
        case 0x1Cu:
          *(a1 + 1184) |= 1u;
          v452 = 0;
          v115 = [a2 position] + 8;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 8, v116 <= objc_msgSend(a2, "length")))
          {
            v355 = [a2 data];
            [v355 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__isDateInWeekendOnDevice;
          goto LABEL_745;
        case 0x1Du:
          *(a1 + 1168) |= 4uLL;
          v452 = 0;
          v241 = [a2 position] + 8;
          if (v241 >= [a2 position] && (v242 = objc_msgSend(a2, "position") + 8, v242 <= objc_msgSend(a2, "length")))
          {
            v419 = [a2 data];
            [v419 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__ambientLightTypePopularity;
          goto LABEL_745;
        case 0x1Eu:
          *(a1 + 1168) |= 2uLL;
          v452 = 0;
          v217 = [a2 position] + 8;
          if (v217 >= [a2 position] && (v218 = objc_msgSend(a2, "position") + 8, v218 <= objc_msgSend(a2, "length")))
          {
            v407 = [a2 data];
            [v407 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__ambientLightTypeLaunchPopularity;
          goto LABEL_745;
        case 0x1Fu:
          *(a1 + 1176) |= 0x2000000000000uLL;
          v452 = 0;
          v61 = [a2 position] + 8;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 8, v62 <= objc_msgSend(a2, "length")))
          {
            v328 = [a2 data];
            [v328 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appTimeOfDayLaunches;
          goto LABEL_745;
        case 0x20u:
          *(a1 + 1168) |= 8uLL;
          v452 = 0;
          v67 = [a2 position] + 8;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 8, v68 <= objc_msgSend(a2, "length")))
          {
            v331 = [a2 data];
            [v331 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appDayOfWeekLaunches;
          goto LABEL_745;
        case 0x21u:
          *(a1 + 1176) |= 0x1000000000000uLL;
          v452 = 0;
          v221 = [a2 position] + 8;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 8, v222 <= objc_msgSend(a2, "length")))
          {
            v409 = [a2 data];
            [v409 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appTimeAndDayOfWeekPopularity;
          goto LABEL_745;
        case 0x22u:
          *(a1 + 1176) |= 0x400000000000uLL;
          v452 = 0;
          v249 = [a2 position] + 8;
          if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 8, v250 <= objc_msgSend(a2, "length")))
          {
            v423 = [a2 data];
            [v423 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appPopularityGivenTimeAndDayOfWeek;
          goto LABEL_745;
        case 0x23u:
          *(a1 + 1176) |= 0x800000000000uLL;
          v452 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v308 = [a2 data];
            [v308 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appPopularityOfTimeAndDayOfWeekGivenApp;
          goto LABEL_745;
        case 0x24u:
          *(a1 + 1176) |= 0x4000000000000uLL;
          v452 = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v312 = [a2 data];
            [v312 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appTotalNumberOfTimeAndDayOfWeekLaunches;
          goto LABEL_745;
        case 0x25u:
          *(a1 + 1168) |= 0x4000000000000000uLL;
          v452 = 0;
          v65 = [a2 position] + 8;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
          {
            v330 = [a2 data];
            [v330 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesCoarseTimePowLocationForAppInContext;
          goto LABEL_745;
        case 0x26u:
          *(a1 + 1168) |= 0x8000000000000000;
          v452 = 0;
          v79 = [a2 position] + 8;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 8, v80 <= objc_msgSend(a2, "length")))
          {
            v337 = [a2 data];
            [v337 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesCoarseTimePowLocationInContext;
          goto LABEL_745;
        case 0x27u:
          *(a1 + 1168) |= 0x2000000000000000uLL;
          v452 = 0;
          v37 = [a2 position] + 8;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
          {
            v316 = [a2 data];
            [v316 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesCoarseTimePowLocationForApp;
          goto LABEL_745;
        case 0x28u:
          *(a1 + 1168) |= 0x1000000000000000uLL;
          v452 = 0;
          v45 = [a2 position] + 8;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
          {
            v320 = [a2 data];
            [v320 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesCoarseTimePowLocationForAllAppsAndContexts;
          goto LABEL_745;
        case 0x29u:
          *(a1 + 1176) |= 0x20000000000uLL;
          v452 = 0;
          v271 = [a2 position] + 8;
          if (v271 >= [a2 position] && (v272 = objc_msgSend(a2, "position") + 8, v272 <= objc_msgSend(a2, "length")))
          {
            v434 = [a2 data];
            [v434 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesSpecificTimeDowLocationForAppInContext;
          goto LABEL_745;
        case 0x2Au:
          *(a1 + 1176) |= 0x40000000000uLL;
          v452 = 0;
          v275 = [a2 position] + 8;
          if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 8, v276 <= objc_msgSend(a2, "length")))
          {
            v436 = [a2 data];
            [v436 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesSpecificTimeDowLocationInContext;
          goto LABEL_745;
        case 0x2Bu:
          *(a1 + 1176) |= 0x10000000000uLL;
          v452 = 0;
          v59 = [a2 position] + 8;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 8, v60 <= objc_msgSend(a2, "length")))
          {
            v327 = [a2 data];
            [v327 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesSpecificTimeDowLocationForApp;
          goto LABEL_745;
        case 0x2Cu:
          *(a1 + 1176) |= 0x8000000000uLL;
          v452 = 0;
          v279 = [a2 position] + 8;
          if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 8, v280 <= objc_msgSend(a2, "length")))
          {
            v438 = [a2 data];
            [v438 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesSpecificTimeDowLocationForAllAppsAndContexts;
          goto LABEL_745;
        case 0x2Du:
          *(a1 + 1176) |= 0x10uLL;
          v452 = 0;
          v285 = [a2 position] + 8;
          if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 8, v286 <= objc_msgSend(a2, "length")))
          {
            v441 = [a2 data];
            [v441 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket0ForApp;
          goto LABEL_745;
        case 0x2Eu:
          *(a1 + 1176) |= 0x8000uLL;
          v452 = 0;
          v299 = [a2 position] + 8;
          if (v299 >= [a2 position] && (v300 = objc_msgSend(a2, "position") + 8, v300 <= objc_msgSend(a2, "length")))
          {
            v448 = [a2 data];
            [v448 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket1ForApp;
          goto LABEL_745;
        case 0x2Fu:
          *(a1 + 1176) |= 0x200000uLL;
          v452 = 0;
          v167 = [a2 position] + 8;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 8, v168 <= objc_msgSend(a2, "length")))
          {
            v381 = [a2 data];
            [v381 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket2ForApp;
          goto LABEL_745;
        case 0x30u:
          *(a1 + 1176) |= 0x400000uLL;
          v452 = 0;
          v295 = [a2 position] + 8;
          if (v295 >= [a2 position] && (v296 = objc_msgSend(a2, "position") + 8, v296 <= objc_msgSend(a2, "length")))
          {
            v446 = [a2 data];
            [v446 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket3ForApp;
          goto LABEL_745;
        case 0x31u:
          *(a1 + 1176) |= 0x800000uLL;
          v452 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v319 = [a2 data];
            [v319 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket4ForApp;
          goto LABEL_745;
        case 0x32u:
          *(a1 + 1176) |= 0x1000000uLL;
          v452 = 0;
          v283 = [a2 position] + 8;
          if (v283 >= [a2 position] && (v284 = objc_msgSend(a2, "position") + 8, v284 <= objc_msgSend(a2, "length")))
          {
            v440 = [a2 data];
            [v440 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket5ForApp;
          goto LABEL_745;
        case 0x33u:
          *(a1 + 1176) |= 0x2000000uLL;
          v452 = 0;
          v173 = [a2 position] + 8;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 8, v174 <= objc_msgSend(a2, "length")))
          {
            v384 = [a2 data];
            [v384 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket6ForApp;
          goto LABEL_745;
        case 0x34u:
          *(a1 + 1176) |= 0x4000000uLL;
          v452 = 0;
          v51 = [a2 position] + 8;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
          {
            v323 = [a2 data];
            [v323 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket7ForApp;
          goto LABEL_745;
        case 0x35u:
          *(a1 + 1176) |= 0x8000000uLL;
          v452 = 0;
          v165 = [a2 position] + 8;
          if (v165 >= [a2 position] && (v166 = objc_msgSend(a2, "position") + 8, v166 <= objc_msgSend(a2, "length")))
          {
            v380 = [a2 data];
            [v380 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket8ForApp;
          goto LABEL_745;
        case 0x36u:
          *(a1 + 1176) |= 0x10000000uLL;
          v452 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v315 = [a2 data];
            [v315 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket9ForApp;
          goto LABEL_745;
        case 0x37u:
          *(a1 + 1176) |= 0x20uLL;
          v452 = 0;
          v289 = [a2 position] + 8;
          if (v289 >= [a2 position] && (v290 = objc_msgSend(a2, "position") + 8, v290 <= objc_msgSend(a2, "length")))
          {
            v443 = [a2 data];
            [v443 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket10ForApp;
          goto LABEL_745;
        case 0x38u:
          *(a1 + 1176) |= 0x40uLL;
          v452 = 0;
          v291 = [a2 position] + 8;
          if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 8, v292 <= objc_msgSend(a2, "length")))
          {
            v444 = [a2 data];
            [v444 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket11ForApp;
          goto LABEL_745;
        case 0x39u:
          *(a1 + 1176) |= 0x80uLL;
          v452 = 0;
          v55 = [a2 position] + 8;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
          {
            v325 = [a2 data];
            [v325 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket12ForApp;
          goto LABEL_745;
        case 0x3Au:
          *(a1 + 1176) |= 0x100uLL;
          v452 = 0;
          v267 = [a2 position] + 8;
          if (v267 >= [a2 position] && (v268 = objc_msgSend(a2, "position") + 8, v268 <= objc_msgSend(a2, "length")))
          {
            v432 = [a2 data];
            [v432 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket13ForApp;
          goto LABEL_745;
        case 0x3Bu:
          *(a1 + 1176) |= 0x200uLL;
          v452 = 0;
          v215 = [a2 position] + 8;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 8, v216 <= objc_msgSend(a2, "length")))
          {
            v406 = [a2 data];
            [v406 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket14ForApp;
          goto LABEL_745;
        case 0x3Cu:
          *(a1 + 1176) |= 0x400uLL;
          v452 = 0;
          v211 = [a2 position] + 8;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 8, v212 <= objc_msgSend(a2, "length")))
          {
            v404 = [a2 data];
            [v404 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket15ForApp;
          goto LABEL_745;
        case 0x3Du:
          *(a1 + 1176) |= 0x800uLL;
          v452 = 0;
          v27 = [a2 position] + 8;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
          {
            v311 = [a2 data];
            [v311 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket16ForApp;
          goto LABEL_745;
        case 0x3Eu:
          *(a1 + 1176) |= 0x1000uLL;
          v452 = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v314 = [a2 data];
            [v314 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket17ForApp;
          goto LABEL_745;
        case 0x3Fu:
          *(a1 + 1176) |= 0x2000uLL;
          v452 = 0;
          v121 = [a2 position] + 8;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 8, v122 <= objc_msgSend(a2, "length")))
          {
            v358 = [a2 data];
            [v358 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket18ForApp;
          goto LABEL_745;
        case 0x40u:
          *(a1 + 1176) |= 0x4000uLL;
          v452 = 0;
          v127 = [a2 position] + 8;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
          {
            v361 = [a2 data];
            [v361 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket19ForApp;
          goto LABEL_745;
        case 0x41u:
          *(a1 + 1176) |= 0x10000uLL;
          v452 = 0;
          v71 = [a2 position] + 8;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 8, v72 <= objc_msgSend(a2, "length")))
          {
            v333 = [a2 data];
            [v333 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket20ForApp;
          goto LABEL_745;
        case 0x42u:
          *(a1 + 1176) |= 0x20000uLL;
          v452 = 0;
          v39 = [a2 position] + 8;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
          {
            v317 = [a2 data];
            [v317 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket21ForApp;
          goto LABEL_745;
        case 0x43u:
          *(a1 + 1176) |= 0x40000uLL;
          v452 = 0;
          v277 = [a2 position] + 8;
          if (v277 >= [a2 position] && (v278 = objc_msgSend(a2, "position") + 8, v278 <= objc_msgSend(a2, "length")))
          {
            v437 = [a2 data];
            [v437 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket22ForApp;
          goto LABEL_745;
        case 0x44u:
          *(a1 + 1176) |= 0x80000uLL;
          v452 = 0;
          v49 = [a2 position] + 8;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
          {
            v322 = [a2 data];
            [v322 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket23ForApp;
          goto LABEL_745;
        case 0x45u:
          *(a1 + 1176) |= 0x100000uLL;
          v452 = 0;
          v177 = [a2 position] + 8;
          if (v177 >= [a2 position] && (v178 = objc_msgSend(a2, "position") + 8, v178 <= objc_msgSend(a2, "length")))
          {
            v386 = [a2 data];
            [v386 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTimeBucket24ForApp;
          goto LABEL_745;
        case 0x46u:
          *(a1 + 1176) |= 0x800000000uLL;
          v452 = 0;
          v85 = [a2 position] + 8;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 8, v86 <= objc_msgSend(a2, "length")))
          {
            v340 = [a2 data];
            [v340 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesOnDayOfWeekSundayForApp;
          goto LABEL_745;
        case 0x47u:
          *(a1 + 1176) |= 0x200000000uLL;
          v452 = 0;
          v269 = [a2 position] + 8;
          if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 8, v270 <= objc_msgSend(a2, "length")))
          {
            v433 = [a2 data];
            [v433 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesOnDayOfWeekMondayForApp;
          goto LABEL_745;
        case 0x48u:
          *(a1 + 1176) |= 0x2000000000uLL;
          v452 = 0;
          v263 = [a2 position] + 8;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 8, v264 <= objc_msgSend(a2, "length")))
          {
            v430 = [a2 data];
            [v430 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesOnDayOfWeekTuesdayForApp;
          goto LABEL_745;
        case 0x49u:
          *(a1 + 1176) |= 0x4000000000uLL;
          v452 = 0;
          v253 = [a2 position] + 8;
          if (v253 >= [a2 position] && (v254 = objc_msgSend(a2, "position") + 8, v254 <= objc_msgSend(a2, "length")))
          {
            v425 = [a2 data];
            [v425 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesOnDayOfWeekWednesdayForApp;
          goto LABEL_745;
        case 0x4Au:
          *(a1 + 1176) |= 0x1000000000uLL;
          v452 = 0;
          v73 = [a2 position] + 8;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 8, v74 <= objc_msgSend(a2, "length")))
          {
            v334 = [a2 data];
            [v334 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesOnDayOfWeekThursdayForApp;
          goto LABEL_745;
        case 0x4Bu:
          *(a1 + 1176) |= 0x100000000uLL;
          v452 = 0;
          v47 = [a2 position] + 8;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
          {
            v321 = [a2 data];
            [v321 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesOnDayOfWeekFridayForApp;
          goto LABEL_745;
        case 0x4Cu:
          *(a1 + 1176) |= 0x400000000uLL;
          v452 = 0;
          v93 = [a2 position] + 8;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 8, v94 <= objc_msgSend(a2, "length")))
          {
            v344 = [a2 data];
            [v344 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesOnDayOfWeekSaturdayForApp;
          goto LABEL_745;
        case 0x4Du:
          *(a1 + 1168) |= 0x200uLL;
          v452 = 0;
          v281 = [a2 position] + 8;
          if (v281 >= [a2 position] && (v282 = objc_msgSend(a2, "position") + 8, v282 <= objc_msgSend(a2, "length")))
          {
            v439 = [a2 data];
            [v439 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash0ForApp;
          goto LABEL_745;
        case 0x4Eu:
          *(a1 + 1168) |= 0x400uLL;
          v452 = 0;
          v105 = [a2 position] + 8;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
          {
            v350 = [a2 data];
            [v350 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash1ForApp;
          goto LABEL_745;
        case 0x4Fu:
          *(a1 + 1168) |= 0x800uLL;
          v452 = 0;
          v69 = [a2 position] + 8;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 8, v70 <= objc_msgSend(a2, "length")))
          {
            v332 = [a2 data];
            [v332 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash2ForApp;
          goto LABEL_745;
        case 0x50u:
          *(a1 + 1168) |= 0x1000uLL;
          v452 = 0;
          v185 = [a2 position] + 8;
          if (v185 >= [a2 position] && (v186 = objc_msgSend(a2, "position") + 8, v186 <= objc_msgSend(a2, "length")))
          {
            v390 = [a2 data];
            [v390 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash3ForApp;
          goto LABEL_745;
        case 0x51u:
          *(a1 + 1168) |= 0x2000uLL;
          v452 = 0;
          v139 = [a2 position] + 8;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 8, v140 <= objc_msgSend(a2, "length")))
          {
            v367 = [a2 data];
            [v367 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash4ForApp;
          goto LABEL_745;
        case 0x52u:
          *(a1 + 1168) |= 0x4000uLL;
          v452 = 0;
          v155 = [a2 position] + 8;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 8, v156 <= objc_msgSend(a2, "length")))
          {
            v375 = [a2 data];
            [v375 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash5ForApp;
          goto LABEL_745;
        case 0x53u:
          *(a1 + 1168) |= 0x8000uLL;
          v452 = 0;
          v187 = [a2 position] + 8;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 8, v188 <= objc_msgSend(a2, "length")))
          {
            v391 = [a2 data];
            [v391 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash6ForApp;
          goto LABEL_745;
        case 0x54u:
          *(a1 + 1168) |= 0x10000uLL;
          v452 = 0;
          v181 = [a2 position] + 8;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 8, v182 <= objc_msgSend(a2, "length")))
          {
            v388 = [a2 data];
            [v388 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash7ForApp;
          goto LABEL_745;
        case 0x55u:
          *(a1 + 1168) |= 0x20000uLL;
          v452 = 0;
          v137 = [a2 position] + 8;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 8, v138 <= objc_msgSend(a2, "length")))
          {
            v366 = [a2 data];
            [v366 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash8ForApp;
          goto LABEL_745;
        case 0x56u:
          *(a1 + 1168) |= 0x40000uLL;
          v452 = 0;
          v233 = [a2 position] + 8;
          if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 8, v234 <= objc_msgSend(a2, "length")))
          {
            v415 = [a2 data];
            [v415 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHash9ForApp;
          goto LABEL_745;
        case 0x57u:
          *(a1 + 1168) |= 0x4000000uLL;
          v452 = 0;
          v117 = [a2 position] + 8;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
          {
            v356 = [a2 data];
            [v356 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash0ForApp;
          goto LABEL_745;
        case 0x58u:
          *(a1 + 1168) |= 0x100000000uLL;
          v452 = 0;
          v229 = [a2 position] + 8;
          if (v229 >= [a2 position] && (v230 = objc_msgSend(a2, "position") + 8, v230 <= objc_msgSend(a2, "length")))
          {
            v413 = [a2 data];
            [v413 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash1ForApp;
          goto LABEL_745;
        case 0x59u:
          *(a1 + 1168) |= 0x200000000uLL;
          v452 = 0;
          v83 = [a2 position] + 8;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 8, v84 <= objc_msgSend(a2, "length")))
          {
            v339 = [a2 data];
            [v339 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash2ForApp;
          goto LABEL_745;
        case 0x5Au:
          *(a1 + 1168) |= 0x400000000uLL;
          v452 = 0;
          v255 = [a2 position] + 8;
          if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 8, v256 <= objc_msgSend(a2, "length")))
          {
            v426 = [a2 data];
            [v426 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash3ForApp;
          goto LABEL_745;
        case 0x5Bu:
          *(a1 + 1168) |= 0x800000000uLL;
          v452 = 0;
          v247 = [a2 position] + 8;
          if (v247 >= [a2 position] && (v248 = objc_msgSend(a2, "position") + 8, v248 <= objc_msgSend(a2, "length")))
          {
            v422 = [a2 data];
            [v422 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash4ForApp;
          goto LABEL_745;
        case 0x5Cu:
          *(a1 + 1168) |= 0x1000000000uLL;
          v452 = 0;
          v77 = [a2 position] + 8;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 8, v78 <= objc_msgSend(a2, "length")))
          {
            v336 = [a2 data];
            [v336 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash5ForApp;
          goto LABEL_745;
        case 0x5Du:
          *(a1 + 1168) |= 0x2000000000uLL;
          v452 = 0;
          v259 = [a2 position] + 8;
          if (v259 >= [a2 position] && (v260 = objc_msgSend(a2, "position") + 8, v260 <= objc_msgSend(a2, "length")))
          {
            v428 = [a2 data];
            [v428 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash6ForApp;
          goto LABEL_745;
        case 0x5Eu:
          *(a1 + 1168) |= 0x4000000000uLL;
          v452 = 0;
          v273 = [a2 position] + 8;
          if (v273 >= [a2 position] && (v274 = objc_msgSend(a2, "position") + 8, v274 <= objc_msgSend(a2, "length")))
          {
            v435 = [a2 data];
            [v435 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash7ForApp;
          goto LABEL_745;
        case 0x5Fu:
          *(a1 + 1168) |= 0x8000000000uLL;
          v452 = 0;
          v53 = [a2 position] + 8;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 8, v54 <= objc_msgSend(a2, "length")))
          {
            v324 = [a2 data];
            [v324 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash8ForApp;
          goto LABEL_745;
        case 0x60u:
          *(a1 + 1168) |= 0x10000000000uLL;
          v452 = 0;
          v129 = [a2 position] + 8;
          if (v129 >= [a2 position] && (v130 = objc_msgSend(a2, "position") + 8, v130 <= objc_msgSend(a2, "length")))
          {
            v362 = [a2 data];
            [v362 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash9ForApp;
          goto LABEL_745;
        case 0x61u:
          *(a1 + 1168) |= 0x8000000uLL;
          v452 = 0;
          v113 = [a2 position] + 8;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 8, v114 <= objc_msgSend(a2, "length")))
          {
            v354 = [a2 data];
            [v354 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash10ForApp;
          goto LABEL_745;
        case 0x62u:
          *(a1 + 1168) |= 0x10000000uLL;
          v452 = 0;
          v81 = [a2 position] + 8;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 8, v82 <= objc_msgSend(a2, "length")))
          {
            v338 = [a2 data];
            [v338 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash11ForApp;
          goto LABEL_745;
        case 0x63u:
          *(a1 + 1168) |= 0x20000000uLL;
          v452 = 0;
          v261 = [a2 position] + 8;
          if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 8, v262 <= objc_msgSend(a2, "length")))
          {
            v429 = [a2 data];
            [v429 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash12ForApp;
          goto LABEL_745;
        case 0x64u:
          *(a1 + 1168) |= 0x40000000uLL;
          v452 = 0;
          v205 = [a2 position] + 8;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 8, v206 <= objc_msgSend(a2, "length")))
          {
            v400 = [a2 data];
            [v400 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash13ForApp;
          goto LABEL_745;
        case 0x65u:
          *(a1 + 1168) |= 0x80000000uLL;
          v452 = 0;
          v107 = [a2 position] + 8;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
          {
            v351 = [a2 data];
            [v351 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHash14ForApp;
          goto LABEL_745;
        case 0x66u:
          *(a1 + 1176) |= 0x100000000000uLL;
          v452 = 0;
          v57 = [a2 position] + 8;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 8, v58 <= objc_msgSend(a2, "length")))
          {
            v326 = [a2 data];
            [v326 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appNumberOfSpecificGeohashesForApp;
          goto LABEL_745;
        case 0x67u:
          *(a1 + 1176) |= 0x80000000000uLL;
          v452 = 0;
          v231 = [a2 position] + 8;
          if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 8, v232 <= objc_msgSend(a2, "length")))
          {
            v414 = [a2 data];
            [v414 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appNumberOfCoarseGeohashesForApp;
          goto LABEL_745;
        case 0x68u:
          *(a1 + 1168) |= 0x40uLL;
          v452 = 0;
          v175 = [a2 position] + 8;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 8, v176 <= objc_msgSend(a2, "length")))
          {
            v385 = [a2 data];
            [v385 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appEntropyForTimeBuckets;
          goto LABEL_745;
        case 0x69u:
          *(a1 + 1168) |= 0x20uLL;
          v452 = 0;
          v133 = [a2 position] + 8;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
          {
            v364 = [a2 data];
            [v364 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appEntropyForSpecificGeoHash;
          goto LABEL_745;
        case 0x6Au:
          *(a1 + 1168) |= 0x10uLL;
          v452 = 0;
          v225 = [a2 position] + 8;
          if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 8, v226 <= objc_msgSend(a2, "length")))
          {
            v411 = [a2 data];
            [v411 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appEntropyForCoarseGeoHash;
          goto LABEL_745;
        case 0x6Bu:
          *(a1 + 1168) |= 0x40000000000uLL;
          v452 = 0;
          v243 = [a2 position] + 8;
          if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 8, v244 <= objc_msgSend(a2, "length")))
          {
            v420 = [a2 data];
            [v420 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHashForAppInContext;
          goto LABEL_745;
        case 0x6Cu:
          *(a1 + 1168) |= 0x100000uLL;
          v452 = 0;
          v75 = [a2 position] + 8;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 8, v76 <= objc_msgSend(a2, "length")))
          {
            v335 = [a2 data];
            [v335 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHashForAppInContext;
          goto LABEL_745;
        case 0x6Du:
          *(a1 + 1168) |= 0x400000uLL;
          v452 = 0;
          v89 = [a2 position] + 8;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 8, v90 <= objc_msgSend(a2, "length")))
          {
            v342 = [a2 data];
            [v342 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtDayOfWeekForApp;
          goto LABEL_745;
        case 0x6Eu:
          *(a1 + 1168) |= 0x200000000000uLL;
          v452 = 0;
          v87 = [a2 position] + 8;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 8, v88 <= objc_msgSend(a2, "length")))
          {
            v341 = [a2 data];
            [v341 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtTimeAndDayForAppInContext;
          goto LABEL_745;
        case 0x6Fu:
          *(a1 + 1168) |= 0x400000000000uLL;
          v452 = 0;
          v97 = [a2 position] + 8;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
          {
            v346 = [a2 data];
            [v346 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtTimeAndDayInContext;
          goto LABEL_745;
        case 0x70u:
          *(a1 + 1168) |= 0x100000000000uLL;
          v452 = 0;
          v111 = [a2 position] + 8;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 8, v112 <= objc_msgSend(a2, "length")))
          {
            v353 = [a2 data];
            [v353 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtTimeAndDayForApp;
          goto LABEL_745;
        case 0x71u:
          *(a1 + 1168) |= 0x200000uLL;
          v452 = 0;
          v203 = [a2 position] + 8;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 8, v204 <= objc_msgSend(a2, "length")))
          {
            v399 = [a2 data];
            [v399 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHashInContext;
          goto LABEL_745;
        case 0x72u:
          *(a1 + 1168) |= 0x80000uLL;
          v452 = 0;
          v169 = [a2 position] + 8;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 8, v170 <= objc_msgSend(a2, "length")))
          {
            v382 = [a2 data];
            [v382 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtCoarseGeoHashForApp;
          goto LABEL_745;
        case 0x73u:
          *(a1 + 1168) |= 0x80000000000uLL;
          v452 = 0;
          v201 = [a2 position] + 8;
          if (v201 >= [a2 position] && (v202 = objc_msgSend(a2, "position") + 8, v202 <= objc_msgSend(a2, "length")))
          {
            v398 = [a2 data];
            [v398 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHashInContext;
          goto LABEL_745;
        case 0x74u:
          *(a1 + 1168) |= 0x20000000000uLL;
          v452 = 0;
          v239 = [a2 position] + 8;
          if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 8, v240 <= objc_msgSend(a2, "length")))
          {
            v418 = [a2 data];
            [v418 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSpecificGeoHashForApp;
          goto LABEL_745;
        case 0x75u:
          *(a1 + 1176) |= 1uLL;
          v452 = 0;
          v237 = [a2 position] + 8;
          if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 8, v238 <= objc_msgSend(a2, "length")))
          {
            v417 = [a2 data];
            [v417 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesForAllAppsAndContextsDecayedAtCoarseContextRate;
          goto LABEL_745;
        case 0x76u:
          *(a1 + 1176) |= 2uLL;
          v452 = 0;
          v95 = [a2 position] + 8;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 8, v96 <= objc_msgSend(a2, "length")))
          {
            v345 = [a2 data];
            [v345 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesForAllAppsAndContextsDecayedAtSpecificContextRate;
          goto LABEL_745;
        case 0x77u:
          *(a1 + 1184) |= 2u;
          v452 = 0;
          v245 = [a2 position] + 8;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 8, v246 <= objc_msgSend(a2, "length")))
          {
            v421 = [a2 data];
            [v421 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__isLocationServicesDisabled;
          goto LABEL_745;
        case 0x78u:
          *(a1 + 1176) |= 0x40000000uLL;
          v452 = 0;
          v145 = [a2 position] + 8;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 8, v146 <= objc_msgSend(a2, "length")))
          {
            v370 = [a2 data];
            [v370 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTwoHourTimeBucketForAppInContext;
          goto LABEL_745;
        case 0x79u:
          *(a1 + 1176) |= 0x80000000uLL;
          v452 = 0;
          v147 = [a2 position] + 8;
          if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 8, v148 <= objc_msgSend(a2, "length")))
          {
            v371 = [a2 data];
            [v371 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTwoHourTimeBucketInContext;
          goto LABEL_745;
        case 0x7Au:
          *(a1 + 1176) |= 0x20000000uLL;
          v452 = 0;
          v235 = [a2 position] + 8;
          if (v235 >= [a2 position] && (v236 = objc_msgSend(a2, "position") + 8, v236 <= objc_msgSend(a2, "length")))
          {
            v416 = [a2 data];
            [v416 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInTwoHourTimeBucketForApp;
          goto LABEL_745;
        case 0x7Bu:
          *(a1 + 1176) |= 0x20000000000000uLL;
          v452 = 0;
          v213 = [a2 position] + 8;
          if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 8, v214 <= objc_msgSend(a2, "length")))
          {
            v405 = [a2 data];
            [v405 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__currentTimeBucketFromZeroToTwentyFour;
          goto LABEL_745;
        case 0x7Cu:
          *(a1 + 1168) |= 0x400000000000000uLL;
          v452 = 0;
          v189 = [a2 position] + 8;
          if (v189 >= [a2 position] && (v190 = objc_msgSend(a2, "position") + 8, v190 <= objc_msgSend(a2, "length")))
          {
            v392 = [a2 data];
            [v392 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHashForAppInContext;
          goto LABEL_745;
        case 0x7Du:
          *(a1 + 1168) |= 0x800000000000000uLL;
          v452 = 0;
          v179 = [a2 position] + 8;
          if (v179 >= [a2 position] && (v180 = objc_msgSend(a2, "position") + 8, v180 <= objc_msgSend(a2, "length")))
          {
            v387 = [a2 data];
            [v387 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHashInContext;
          goto LABEL_745;
        case 0x7Eu:
          *(a1 + 1168) |= 0x200000000000000uLL;
          v452 = 0;
          v227 = [a2 position] + 8;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 8, v228 <= objc_msgSend(a2, "length")))
          {
            v412 = [a2 data];
            [v412 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHashForApp;
          goto LABEL_745;
        case 0x7Fu:
          *(a1 + 1168) |= 0x800000000000uLL;
          v452 = 0;
          v195 = [a2 position] + 8;
          if (v195 >= [a2 position] && (v196 = objc_msgSend(a2, "position") + 8, v196 <= objc_msgSend(a2, "length")))
          {
            v395 = [a2 data];
            [v395 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash0ForApp;
          goto LABEL_745;
        case 0x80u:
          *(a1 + 1168) |= 0x1000000000000uLL;
          v452 = 0;
          v171 = [a2 position] + 8;
          if (v171 >= [a2 position] && (v172 = objc_msgSend(a2, "position") + 8, v172 <= objc_msgSend(a2, "length")))
          {
            v383 = [a2 data];
            [v383 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash1ForApp;
          goto LABEL_745;
        case 0x81u:
          *(a1 + 1168) |= 0x2000000000000uLL;
          v452 = 0;
          v103 = [a2 position] + 8;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 8, v104 <= objc_msgSend(a2, "length")))
          {
            v349 = [a2 data];
            [v349 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash2ForApp;
          goto LABEL_745;
        case 0x82u:
          *(a1 + 1168) |= 0x4000000000000uLL;
          v452 = 0;
          v151 = [a2 position] + 8;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 8, v152 <= objc_msgSend(a2, "length")))
          {
            v373 = [a2 data];
            [v373 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash3ForApp;
          goto LABEL_745;
        case 0x83u:
          *(a1 + 1168) |= 0x8000000000000uLL;
          v452 = 0;
          v109 = [a2 position] + 8;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
          {
            v352 = [a2 data];
            [v352 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash4ForApp;
          goto LABEL_745;
        case 0x84u:
          *(a1 + 1168) |= 0x10000000000000uLL;
          v452 = 0;
          v191 = [a2 position] + 8;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 8, v192 <= objc_msgSend(a2, "length")))
          {
            v393 = [a2 data];
            [v393 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash5ForApp;
          goto LABEL_745;
        case 0x85u:
          *(a1 + 1168) |= 0x20000000000000uLL;
          v452 = 0;
          v141 = [a2 position] + 8;
          if (v141 >= [a2 position] && (v142 = objc_msgSend(a2, "position") + 8, v142 <= objc_msgSend(a2, "length")))
          {
            v368 = [a2 data];
            [v368 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash6ForApp;
          goto LABEL_745;
        case 0x86u:
          *(a1 + 1168) |= 0x40000000000000uLL;
          v452 = 0;
          v123 = [a2 position] + 8;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
          {
            v359 = [a2 data];
            [v359 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash7ForApp;
          goto LABEL_745;
        case 0x87u:
          *(a1 + 1168) |= 0x80000000000000uLL;
          v452 = 0;
          v197 = [a2 position] + 8;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 8, v198 <= objc_msgSend(a2, "length")))
          {
            v396 = [a2 data];
            [v396 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash8ForApp;
          goto LABEL_745;
        case 0x88u:
          *(a1 + 1168) |= 0x100000000000000uLL;
          v452 = 0;
          v143 = [a2 position] + 8;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 8, v144 <= objc_msgSend(a2, "length")))
          {
            v369 = [a2 data];
            [v369 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtZoom7GeoHash9ForApp;
          goto LABEL_745;
        case 0x89u:
          *(a1 + 1168) |= 0x80uLL;
          v452 = 0;
          v199 = [a2 position] + 8;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 8, v200 <= objc_msgSend(a2, "length")))
          {
            v397 = [a2 data];
            [v397 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appEntropyForZoom7GeoHash;
          goto LABEL_745;
        case 0x8Au:
          *(a1 + 1176) |= 0x200000000000uLL;
          v452 = 0;
          v159 = [a2 position] + 8;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 8, v160 <= objc_msgSend(a2, "length")))
          {
            v377 = [a2 data];
            [v377 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appNumberOfZoom7GeohashesForApp;
          goto LABEL_745;
        case 0x8Bu:
          *(a1 + 1168) |= 0x2000000uLL;
          v452 = 0;
          v193 = [a2 position] + 8;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 8, v194 <= objc_msgSend(a2, "length")))
          {
            v394 = [a2 data];
            [v394 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSSIDForAppInContext;
          goto LABEL_745;
        case 0x8Cu:
          *(a1 + 1168) |= 0x1000000uLL;
          v452 = 0;
          v183 = [a2 position] + 8;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 8, v184 <= objc_msgSend(a2, "length")))
          {
            v389 = [a2 data];
            [v389 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtSSIDForApp;
          goto LABEL_745;
        case 0x8Du:
          *(a1 + 1176) |= 4uLL;
          v452 = 0;
          v131 = [a2 position] + 8;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
          {
            v363 = [a2 data];
            [v363 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesForCoreMotionForAppInContext;
          goto LABEL_745;
        case 0x8Eu:
          *(a1 + 1176) |= 8uLL;
          v452 = 0;
          v157 = [a2 position] + 8;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 8, v158 <= objc_msgSend(a2, "length")))
          {
            v376 = [a2 data];
            [v376 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesInAirplaneModeForAppInContext;
          goto LABEL_745;
        case 0x8Fu:
          *(a1 + 1184) |= 0x40u;
          v452 = 0;
          v149 = [a2 position] + 8;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 8, v150 <= objc_msgSend(a2, "length")))
          {
            v372 = [a2 data];
            [v372 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__poiPopularityForAppInContext;
          goto LABEL_745;
        case 0x90u:
          *(a1 + 1168) |= 0x100uLL;
          v452 = 0;
          v161 = [a2 position] + 8;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 8, v162 <= objc_msgSend(a2, "length")))
          {
            v378 = [a2 data];
            [v378 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchPopularityAtPOIForAppInContext;
          goto LABEL_745;
        case 0x91u:
          *(a1 + 1168) |= 0x800000uLL;
          v452 = 0;
          v163 = [a2 position] + 8;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 8, v164 <= objc_msgSend(a2, "length")))
          {
            v379 = [a2 data];
            [v379 getBytes:&v452 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v304 = v452;
          v305 = &OBJC_IVAR___ATXPBTaskAgnosticBehaviorFeatureVector__appLaunchesAtPOIForAppInContext;
LABEL_745:
          *(a1 + *v305) = v304;
          goto LABEL_746;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_746:
          v450 = [a2 position];
          if (v450 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id ATXSleepSuggestedHomePageWasCreatedDuringMigration()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v2 = [v1 objectForKey:@"ATXSleepSuggestedHomePageWasCreatedDuringMigration"];

  if (v2)
  {
    v3 = [v1 objectForKey:@"ATXSleepSuggestedHomePageWasCreatedDuringMigration"];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v4 = getHKSPSleepStoreClass_softClass;
    v19 = getHKSPSleepStoreClass_softClass;
    if (!getHKSPSleepStoreClass_softClass)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __getHKSPSleepStoreClass_block_invoke;
      v15[3] = &unk_2785967D8;
      v15[4] = &v16;
      __getHKSPSleepStoreClass_block_invoke(v15);
      v4 = v17[3];
    }

    v5 = v4;
    _Block_object_dispose(&v16, 8);
    if (v4)
    {
      v7 = [[v4 alloc] initWithIdentifier:@"proactive-migration-thingy"];
      v14 = 0;
      v8 = [v7 currentSleepSettingsWithError:&v14];
      v9 = v14;
      v10 = v9;
      if (!v8 || v9)
      {
        v12 = __atxlog_handle_home_screen(v9);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          ATXSleepSuggestedHomePageWasCreatedDuringMigration_cold_1(v10, v12);
        }

        v3 = 0;
      }

      else
      {
        v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "springBoardSuggestedPageCreated")}];
        [v1 setObject:v3 forKey:@"ATXSleepSuggestedHomePageWasCreatedDuringMigration"];
      }
    }

    else
    {
      v11 = __atxlog_handle_home_screen(v6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ATXSleepSuggestedHomePageWasCreatedDuringMigration_cold_2(v11);
      }

      v3 = 0;
    }
  }

  return v3;
}

void sub_2263DE66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKSPSleepStoreClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SleepLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2785967F8;
    v5 = 0;
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SleepLibraryCore_frameworkLibrary)
  {
    __getHKSPSleepStoreClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("HKSPSleepStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKSPSleepStoreClass_block_invoke_cold_1();
  }

  getHKSPSleepStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SleepLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2263E06E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2263E1250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2263E2B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2263EB4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2263EC594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBBlendingLayerRefreshTrackerReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_56;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_54:
          v31 = 40;
          goto LABEL_55;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v34 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v34 & 0x7F) << v23;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_50;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_50:
            v31 = 24;
LABEL_55:
            *(a1 + v31) = v22;
            goto LABEL_56;
          case 4:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          default:
            goto LABEL_45;
        }
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_56:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2263EE650(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void std::vector<ATXPredictionItem>::__assign_with_size[abi:ne200100]<ATXPredictionItem*,ATXPredictionItem*>(uint64_t a1, id *a2, id *a3, unint64_t a4)
{
  v7 = *a1;
  if (0x13A524387AC82261 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<ATXPredictionItem>::__vdeallocate(a1);
    if (a4 <= 0x13A524387AC822)
    {
      v8 = 0x274A4870F59044C2 * ((*(a1 + 16) - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x13A524387AC82261 * ((*(a1 + 16) - *a1) >> 3)) >= 0x9D2921C3D6411)
      {
        v9 = 0x13A524387AC822;
      }

      else
      {
        v9 = v8;
      }

      std::vector<ATXPredictionItem>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0x13A524387AC82261 * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<ATXPredictionItem *,ATXPredictionItem *,ATXPredictionItem *>(&v18, a2, a3, v7);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 != v14)
    {
      do
      {
        v16 -= 417;
      }

      while (v16 != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:ne200100]<ATXPredictionItem *,ATXPredictionItem *,ATXPredictionItem *>(&v17, a2, (a2 + v10), v7);
    v12 = *(a1 + 8);
    if (v11 != a3)
    {
      v13 = *(a1 + 8);
      do
      {
        *v13 = *v11;
        memcpy(v13 + 1, v11 + 1, 0xCFEuLL);
        v11 += 417;
        v13 += 417;
        v12 += 3336;
      }

      while (v11 != a3);
    }

    *(a1 + 8) = v12;
  }
}

void std::vector<ATXPredictionItem>::__vdeallocate(id **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 417;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<ATXPredictionItem>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x13A524387AC823)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(a1, a2);
  }

  std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
}

id *std::__copy_impl::operator()[abi:ne200100]<ATXPredictionItem *,ATXPredictionItem *,ATXPredictionItem *>(int a1, id *a2, id *a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      memcpy(location + 1, v5 + 1, 0xCFEuLL);
      v5 += 417;
      location += 417;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x13A524387AC823)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278596750, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](id ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 417;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2263F0F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2263F15AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2263F33C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2263F3974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBPredictionTimeContextReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2263F77FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *ATXUserNotificationResolutionTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"error_ATXUserNotificationResolutionTotal";
  }

  else
  {
    return off_2785970B8[a1];
  }
}

uint64_t ATXUserNotificationResolutionTypeForNotificationEventType(unint64_t a1)
{
  if (a1 > 0x13)
  {
    return 2;
  }

  else
  {
    return qword_226871DE0[a1];
  }
}

void sub_2263FD24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&STACK[0x1AE8], 8);

  _Unwind_Resume(a1);
}

uint64_t engagementTypeFoundForPredictedAction(ATXAction *a1, ATXAction *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4 && (-[ATXAction actionKey](v3, "actionKey"), v5 = objc_claimAutoreleasedReturnValue(), -[ATXAction actionKey](v4, "actionKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, v5, (v7 & 1) != 0))
  {
    if ([_ATXActionUtils isContainmentBetweenAction:v3 other:v4])
    {
      v8 = 7;
    }

    else
    {
      v8 = 8;
    }
  }

  else
  {
    v8 = 9;
  }

  return v8;
}

void sub_2263FD584(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__CFString *engagementTypeForPrediction(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return @"NO";
  }

  v3 = a1 - 2;
  if (a1 - 2) < 7 && ((0x67u >> v3))
  {
    return off_278597440[v3];
  }

  v5 = __atxlog_handle_default(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [MEMORY[0x277CEB2E8] engagementTypeToString:a1];
    engagementTypeForPrediction(v6, buf, v5);
  }

  v7 = MEMORY[0x277CBEAD8];
  v8 = [MEMORY[0x277CEB2E8] engagementTypeToString:a1];
  [v7 raise:*MEMORY[0x277CBE658] format:{@"%@ is not a valid engagment type to call engagementTypeForPrediction with engaged==YES", v8}];

  return @"Error";
}

void addScoreInputsForPredictionItemToDictionary(ATXPredictionItem *a1, NSMutableDictionary *a2)
{
  v3 = a2;
  for (i = 0; i != 828; ++i)
  {
    v5 = a1->inputSignals[i];
    if (COERCE__INT64(fabs(v5)) >= 0x7FF0000000000000)
    {
      v5 = -31337.0;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
    v7 = [_ATXScoreTypes stringForScoreInput:i];
    [(NSMutableDictionary *)v3 setObject:v6 forKeyedSubscript:v7];
  }

  key = a1->key;
}

uint64_t engagementTypeFoundForPredictedItem(id *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 actionKey], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *a1), v7, (v8 & 1) != 0))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v17 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      v12 = 7;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[ATXMinimalSlotResolutionParameters alloc] initWithAction:v5 slots:*(*(&v18 + 1) + 8 * v13)];
        v15 = [(ATXMinimalSlotResolutionParameters *)v14 hash]== a1[1];

        if (v15)
        {
          break;
        }

        if (v10 == ++v13)
        {
          v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v12 = 8;
    }

    v6 = v17;
  }

  else
  {
    v12 = 9;
  }

  return v12;
}

void sub_2263FDF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2264016A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &STACK[0xD68];
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void std::vector<ATXPredictionItem>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      memcpy(v8 + 1, v7 + 1, 0xCFEuLL);
      v7 += 417;
      v8 += 417;
    }

    while (v7 != v4);
    do
    {

      v5 += 417;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v10 = *a1;
  *a1 = v6;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<ATXPredictionItem>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 3336);
    *(a1 + 16) = v4;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_226402698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226402C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226403CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22640771C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x860], 8);
  _Block_object_dispose(&STACK[0x890], 8);
  _Block_object_dispose(&STACK[0x8E0], 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 8u);
}

void sub_226409C54(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22640AEA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 136));
  objc_destroyWeak((v1 - 128));
  _Unwind_Resume(a1);
}

id allRelevanceModelConfigs(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v6[0] = v2;
  v3 = objc_opt_new();
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

uint64_t AWDProactiveAppPredictionActionTimeEstimateContainerReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v86) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v86 & 0x7F) << v5;
        if ((v86 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v14 > 6)
        {
          if (v14 == 7)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 128) |= 2u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                v59 = [a2 data];
                [v59 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v86 & 0x7F) << v54;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v11 = v55++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_116;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v56;
            }

LABEL_116:
            v60 = 116;
            goto LABEL_121;
          }

          if (v14 == 8)
          {
            if (v13 != 2)
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              while (1)
              {
                LOBYTE(v86) = 0;
                v82 = [a2 position] + 1;
                if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
                {
                  v84 = [a2 data];
                  [v84 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v81 |= (v86 & 0x7F) << v79;
                if ((v86 & 0x80) == 0)
                {
                  goto LABEL_158;
                }

                v79 += 7;
                v11 = v80++ >= 9;
                if (v11)
                {
                  goto LABEL_159;
                }
              }
            }

            v86 = 0;
            v87 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v37 = [a2 position];
              if (v37 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v38 = 0;
              v39 = 0;
              v40 = 0;
              while (1)
              {
                v88 = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v88 & 0x7F) << v38;
                if ((v88 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v11 = v39++ >= 9;
                if (v11)
                {
                  goto LABEL_81;
                }
              }

              [a2 hasError];
LABEL_81:
              PBRepeatedInt32Add();
            }

LABEL_98:
            PBReaderRecallMark();
            goto LABEL_160;
          }
        }

        else
        {
          if (v14 == 5)
          {
            if (v13 != 2)
            {
              v61 = 0;
              v62 = 0;
              v63 = 0;
              while (1)
              {
                LOBYTE(v86) = 0;
                v64 = [a2 position] + 1;
                if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
                {
                  v66 = [a2 data];
                  [v66 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v63 |= (v86 & 0x7F) << v61;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                v11 = v62++ >= 9;
                if (v11)
                {
                  goto LABEL_159;
                }
              }

LABEL_158:
              [a2 hasError];
LABEL_159:
              PBRepeatedInt32Add();
              goto LABEL_160;
            }

            v86 = 0;
            v87 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v46 = [a2 position];
              if (v46 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_98;
              }

              v47 = 0;
              v48 = 0;
              v49 = 0;
              while (1)
              {
                v88 = 0;
                v50 = [a2 position] + 1;
                if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
                {
                  v52 = [a2 data];
                  [v52 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v49 |= (v88 & 0x7F) << v47;
                if ((v88 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                v11 = v48++ >= 9;
                if (v11)
                {
                  goto LABEL_97;
                }
              }

              [a2 hasError];
LABEL_97:
              PBRepeatedInt32Add();
            }
          }

          if (v14 == 6)
          {
            if (v13 != 2)
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              while (1)
              {
                LOBYTE(v86) = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v86 & 0x7F) << v67;
                if ((v86 & 0x80) == 0)
                {
                  goto LABEL_158;
                }

                v67 += 7;
                v11 = v68++ >= 9;
                if (v11)
                {
                  goto LABEL_159;
                }
              }
            }

            v86 = 0;
            v87 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v23 = [a2 position];
              if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_98;
              }

              v24 = 0;
              v25 = 0;
              v26 = 0;
              while (1)
              {
                v88 = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v88 & 0x7F) << v24;
                if ((v88 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  goto LABEL_47;
                }
              }

              [a2 hasError];
LABEL_47:
              PBRepeatedInt32Add();
            }
          }
        }
      }

      else if (v14 > 2)
      {
        if (v14 == 3)
        {
          v53 = PBReaderReadString();
          if (v53)
          {
            [a1 addParameter:v53];
          }

          goto LABEL_160;
        }

        if (v14 == 4)
        {
          if (v13 != 2)
          {
            v73 = 0;
            v74 = 0;
            v75 = 0;
            while (1)
            {
              LOBYTE(v86) = 0;
              v76 = [a2 position] + 1;
              if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
              {
                v78 = [a2 data];
                [v78 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v75 |= (v86 & 0x7F) << v73;
              if ((v86 & 0x80) == 0)
              {
                goto LABEL_158;
              }

              v73 += 7;
              v11 = v74++ >= 9;
              if (v11)
              {
                goto LABEL_159;
              }
            }
          }

          v86 = 0;
          v87 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v30 = [a2 position];
            if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_98;
            }

            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              v88 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v88 & 0x7F) << v31;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                goto LABEL_64;
              }
            }

            [a2 hasError];
LABEL_64:
            PBRepeatedInt32Add();
          }
        }
      }

      else
      {
        if (v14 == 1)
        {
          v44 = PBReaderReadString();
          v45 = *(a1 + 104);
          *(a1 + 104) = v44;

          goto LABEL_160;
        }

        if (v14 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 128) |= 1u;
          while (1)
          {
            LOBYTE(v86) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v86 & 0x7F) << v15;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_120;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_120:
          v60 = 112;
LABEL_121:
          *(a1 + v60) = v21;
          goto LABEL_160;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_160:
      v85 = [a2 position];
    }

    while (v85 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226413534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMagicalMomentsPBMMPredictedCountTrackerReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 3)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_226415094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL isTimeRangeWithinTimeRange(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v11 setSecond:a2];
  v12 = [v10 dateByAddingComponents:v11 toDate:v7 options:0];
  if ([v7 compare:v8] == 1 || !objc_msgSend(v7, "compare:", v8))
  {
    v13 = [v12 compare:v9] == -1 || objc_msgSend(v12, "compare:", v9) == 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

double percentageOfBundleIDInBucket(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 countForObject:a1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [v5 countForObject:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);

    v11 = 0.0;
    if (v4 && v8)
    {
      v11 = v4 / v8;
    }
  }

  else
  {

    v11 = 0.0;
  }

  return v11;
}

void sub_226419E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_22641C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22641C8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22641CAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22641CC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBCacheAgeAtCacheRefreshTrackerReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        *(a1 + 16) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}