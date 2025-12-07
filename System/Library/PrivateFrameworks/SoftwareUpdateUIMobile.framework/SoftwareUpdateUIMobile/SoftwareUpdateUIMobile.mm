id SUUIMobileDescriptorAgreementTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"SUUIMobileDescriptorAgreementTypeCellularFee");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"SUUIMobileDescriptorAgreementTypeTermsAndConditions");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"SUUIMobileDescriptorAgreementTypeNone");
  }

  return v2;
}

void sub_26B0BC928(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_3_8_34_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_26B0BCEE4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0BD618(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_2_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

BOOL numberIsBoolean(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = CFGetTypeID(location);
  v3 = v2 == CFBooleanGetTypeID();
  objc_storeStrong(&location, 0);
  return v3;
}

void sub_26B0C34D0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 48) = a1;
  *(v10 - 52) = a2;
  objc_destroyWeak((v10 - 40));
  _Unwind_Resume(*(v10 - 48));
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 66;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_26B0C53B4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  *(v15 - 176) = a1;
  *(v15 - 180) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(*(v15 - 176));
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_66_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

void sub_26B0C91F8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 168) = a1;
  *(v14 - 172) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(*(v14 - 168));
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_26B0CC610(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 184) = a1;
  *(v14 - 188) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(*(v14 - 184));
}

void sub_26B0D0DD8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_26B0D2EC0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D37C8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D40D0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D49D8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D5C68(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D6AC8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_2_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_2_8_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 2;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_2_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 2;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_26B0D9AAC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void _SUUIActivityCleanup(os_activity_scope_state_t *a1)
{
  if (a1 && *a1)
  {
    if (LOBYTE((*a1)[1].opaque[1]))
    {
      os_activity_scope_leave(*a1);
    }

    free(*a1);
  }
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_4_2(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 2;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_0_8_0_8_66_4_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_26B0DE50C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  STACK[0x308] = a1;
  LODWORD(STACK[0x304]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x308]);
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 66;
  *(result + 39) = 8;
  *(result + 40) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 66;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

void sub_26B0E2198(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_26B0E2FEC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0E3B58(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0E44E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

id SUUIMobileScanOperationTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"FullScan");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"RefreshScanResults");
    }

    else
    {
      v2 = MEMORY[0x277D82BE0](@"Unknown");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"None");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 32;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_26B0E565C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

void sub_26B0E973C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id location, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a66 = a1;
  a65 = a2;
  objc_destroyWeak(&location);
  JUMPOUT(0x26B0E978CLL);
}

void sub_26B0E9764(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0EBB58(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  STACK[0x6C0] = a1;
  LODWORD(STACK[0x6BC]) = a2;
  objc_destroyWeak(location);
  JUMPOUT(0x26B0EBBACLL);
}

void sub_26B0EBB84(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0ED1AC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0F0314(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_64_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_64_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_4_0_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 66;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 64;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_7_8_32_8_66_8_66_8_64_8_0_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 64;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 4;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 64;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_2_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_2_8_2_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 2;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  result = a16;
  *a1 = 2;
  *(a1 + 1) = 25;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  return result;
}

uint64_t __os_log_helper_16_2_31_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_64_4_0_8_66_4_0_8_66_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, int a30, uint64_t a31, int a32)
{
  result = a23;
  *a1 = 2;
  *(a1 + 1) = 31;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 64;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 4;
  *(a1 + 264) = a28;
  *(a1 + 268) = 66;
  *(a1 + 269) = 8;
  *(a1 + 270) = a29;
  *(a1 + 278) = 0;
  *(a1 + 279) = 4;
  *(a1 + 280) = a30;
  *(a1 + 284) = 66;
  *(a1 + 285) = 8;
  *(a1 + 286) = a31;
  *(a1 + 294) = 0;
  *(a1 + 295) = 4;
  *(a1 + 296) = a32;
  return result;
}

uint64_t __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  result = a17;
  *a1 = 2;
  *(a1 + 1) = 26;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  return result;
}

void sub_26B1052EC(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _Unwind_Exception *exception_object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id *location)
{
  STACK[0x690] = a1;
  LODWORD(STACK[0x68C]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&STACK[0x6E0]);
  _Unwind_Resume(STACK[0x690]);
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_0_8_66_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

void sub_26B107084(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _Unwind_Exception *exception_object, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id *location)
{
  STACK[0x400] = a1;
  LODWORD(STACK[0x3FC]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x400]);
}

void sub_26B1091FC(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _Unwind_Exception *exception_object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id *location)
{
  STACK[0x698] = a1;
  LODWORD(STACK[0x694]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&STACK[0x6E8]);
  _Unwind_Resume(STACK[0x698]);
}

uint64_t __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  result = a19;
  *a1 = 2;
  *(a1 + 1) = 28;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  *(a1 + 272) = 66;
  *(a1 + 273) = 8;
  *(a1 + 274) = a29;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_26B10E690(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _Unwind_Exception *exception_object, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id *location)
{
  STACK[0x3D8] = a1;
  LODWORD(STACK[0x3D4]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&STACK[0x418]);
  _Unwind_Resume(STACK[0x3D8]);
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 66;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  return result;
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_4_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 0;
  *(a1 + 253) = 4;
  *(a1 + 254) = a27;
  *(a1 + 258) = 0;
  *(a1 + 259) = 4;
  *(a1 + 260) = a28;
  return result;
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 0;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  return result;
}

void sub_26B11437C(unint64_t a1, int a2)
{
  STACK[0x398] = a1;
  LODWORD(STACK[0x394]) = a2;
  objc_destroyWeak(&STACK[0x3A0]);
  _Unwind_Resume(STACK[0x398]);
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_26B11C12C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11C688(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11CBE4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11D140(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11D69C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11DBF8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

id SUUIMobileStatefulUIEnvironment.init(options:)(uint64_t a1)
{
  v5 = 0;
  v4 = a1;
  *OBJC_IVAR____TtC22SoftwareUpdateUIMobile31SUUIMobileStatefulUIEnvironment_options = a1;
  v3.receiver = v5;
  v3.super_class = type metadata accessor for SUUIMobileStatefulUIEnvironment();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2);
  v5 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id sub_26B122614(void *a1)
{
  sub_26B122668();
  v1 = a1;
  return sub_26B1226CC(a1);
}

unint64_t sub_26B122668()
{
  v2 = qword_2803E6458;
  if (!qword_2803E6458)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6458);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B122798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v9 = v15;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v9 = 0;
  }

  if (v9)
  {
    sub_26B1229D0();

    sub_26B122A34();
    v5 = sub_26B122A98(*(v13 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile31SUUIMobileStatefulUIEnvironment_options));
    v6 = [v9 client];
    v7 = [objc_opt_self() sharedManager];
    MEMORY[0x277D82BE0](a4);
    v8 = sub_26B122AD8(a2, a3, v5, v6, v7, a4);
    MEMORY[0x277D82BD8](v9);
    return v8;
  }

  else
  {
    sub_26B128C48();
    result = sub_26B128D88();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B1229D0()
{
  v2 = qword_2803E6460;
  if (!qword_2803E6460)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6460);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B122A34()
{
  v2 = qword_2803E6468;
  if (!qword_2803E6468)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6468);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B122C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v9 = v16;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v9 = 0;
  }

  if (v9)
  {
    sub_26B122E74();

    sub_26B122ED8();
    v6 = sub_26B122F3C(*(v14 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile31SUUIMobileStatefulUIEnvironment_options));
    v7 = [v9 client];
    MEMORY[0x277D82BE0](a4);
    MEMORY[0x277D82BE0](a5);
    v8 = sub_26B122F7C(a2, a3, v6, v7, a4, a5);
    MEMORY[0x277D82BD8](v9);
    return v8;
  }

  else
  {
    sub_26B128C48();
    result = sub_26B128D88();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B122E74()
{
  v2 = qword_2803E6470;
  if (!qword_2803E6470)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6470);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B122ED8()
{
  v2 = qword_2803E6478;
  if (!qword_2803E6478)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6478);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B123110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v5 = 0;
  }

  if (v5)
  {
    sub_26B1232C4();

    v4 = sub_26B123328(a2, a3, [v5 client]);
    MEMORY[0x277D82BD8](v5);
    return v4;
  }

  else
  {
    sub_26B128C48();
    result = sub_26B128D88();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B1232C4()
{
  v2 = qword_2803E6480;
  if (!qword_2803E6480)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6480);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B12347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26B1235C4();

  v9 = [objc_opt_self() sharedManager];
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    sub_26B128D78();
    __break(1u);
  }

  MEMORY[0x277D82BE0](a4);
  return sub_26B123628(a2, a3, v5, a4);
}

unint64_t sub_26B1235C4()
{
  v2 = qword_2803E6488;
  if (!qword_2803E6488)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6488);
    return ObjCClassMetadata;
  }

  return v2;
}

id SUUIMobileStatefulUIEnvironment.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUUIMobileStatefulUIEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26B123884(void *a1)
{
  v3 = sub_26B128B78();
  v5 = [v2 initFromError_];
  MEMORY[0x277D82BD8](v3);

  return v5;
}

id sub_26B123910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_26B128C28();
  v13 = [v7 initWithIdentifier_options_usingSUManagerClient_andBetaManager_withCompletionQueue_];
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v12);

  return v13;
}

id sub_26B1239FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_26B128C28();
  v13 = [v7 initWithIdentifier_options_usingSUManagerClient_delegateCallbackQueue_withCompletionQueue_];
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v12);

  return v13;
}

id sub_26B123AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B128C28();
  v7 = [v4 initWithIdentifier_usingSUManagerClient_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v6);

  return v7;
}

id sub_26B123B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B128C28();
  v9 = [v5 initWithIdentifier_usingBetaManager_withCompletionQueue_];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

uint64_t sub_26B123BD4(uint64_t a1)
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E68();
}

uint64_t sub_26B123DD8(uint64_t a1, uint64_t a2)
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E58();
}

uint64_t sub_26B123E1C(uint64_t a1, uint64_t a2)
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E38();
}

uint64_t sub_26B123E60(uint64_t a1, uint64_t a2)
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E48();
}

void sub_26B12403C(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t sub_26B1240E8(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_26B128C78();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_26B128D98();
  __break(1u);
LABEL_12:
  result = sub_26B128D78();
  __break(1u);
  return result;
}

uint64_t sub_26B124414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_26B125718;
        v16 = &v37;
        sub_26B1240E8(sub_26B125734, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_26B128D78();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_26B128D78();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_26B128D78();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_26B128D78();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_26B128D78();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_26B128D78();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_26B128D78();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_26B128D78();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_26B128D78();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_26B128D78();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_26B128D78();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_26B128D78();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_26B128D98();
    __break(1u);
  }

  result = sub_26B128D78();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for SUUIStatefulUIEnvironmentOptions(uint64_t a1)
{
  v5 = qword_2803E6498;
  if (!qword_2803E6498)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803E6498);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26B124EC4()
{
  v2 = qword_2803E64A0;
  if (!qword_2803E64A0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B124F5C()
{
  v2 = qword_2803E64A8;
  if (!qword_2803E64A8)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B124FF4()
{
  v2 = qword_2803E64B0;
  if (!qword_2803E64B0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B12508C()
{
  v2 = qword_2803E64B8;
  if (!qword_2803E64B8)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B12510C()
{
  v2 = qword_2803E64C0;
  if (!qword_2803E64C0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B12518C()
{
  v2 = qword_2803E64C8;
  if (!qword_2803E64C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B125204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_26B128D78();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_26B128D78();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_26B128D78();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_26B128D78();
                __break(1u);
              }

              sub_26B128D78();
              __break(1u);
            }

            sub_26B128D78();
            __break(1u);
          }

          sub_26B128D78();
          __break(1u);
        }

        sub_26B128D78();
        __break(1u);
      }

      sub_26B128D78();
      __break(1u);
    }

    sub_26B128D78();
    __break(1u);
  }

  result = sub_26B128D78();
  __break(1u);
  return result;
}

uint64_t sub_26B125760()
{
  result = sub_26B128C48();
  qword_2803E6530 = result;
  qword_2803E6538 = v1;
  return result;
}

uint64_t *sub_26B1257A4()
{
  if (qword_2803E6440 != -1)
  {
    swift_once();
  }

  return &qword_2803E6530;
}

uint64_t static SUUIMobileConstants.clientIdentifier.getter()
{
  v1 = *sub_26B1257A4();

  return v1;
}

uint64_t getEnumTagSinglePayload for SUUIMobileConstants(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for SUUIMobileConstants(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26B125B84()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIEnvironment);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26B125BC4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_platformCapabilities;
  v2 = sub_26B128BA8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B125C7C()
{
  swift_beginAccess();
  sub_26B128BC8();
  swift_endAccess();
  return v1 & 1;
}

uint64_t sub_26B125CF8(char a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E6580, &qword_26B13AB90);
  sub_26B128BD8();
  return swift_endAccess();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_26B125DFC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment__isUsingAutomationServices);
  swift_beginAccess();
  sub_26B125E74(v3);
  *v3 = a1;
  return swift_endAccess();
}

char *sub_26B125EC8()
{
  v109 = v0;
  ObjectType = swift_getObjectType();
  v122 = 0;
  v146 = 0;
  v145 = 0;
  v114 = 0;
  v142 = 0;
  v141 = 0;
  v101 = 0;
  v135 = 0;
  v102 = sub_26B128C18();
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = *(v103 + 64);
  v1 = MEMORY[0x28223BE20](0);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v26 - v107;
  MEMORY[0x28223BE20](v1);
  v108 = &v26 - v107;
  v119 = sub_26B128BA8();
  v110 = *(v119 - 8);
  v118 = v110;
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v26 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v2;
  v117 = MSUAssetOperation_16;
  v112 = &v2[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_platformCapabilities];
  v113 = sub_26B128DA8();
  sub_26B126E50();
  sub_26B128CE8();
  v3 = v120;
  v116 = v146;
  v115 = OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment__isUsingAutomationServices;
  v4 = sub_26B125C38(v114);
  v5 = v117;
  v6 = v118;
  v7 = v119;
  *&v116[v115] = v4;
  (*(v6 + 16))(v3, v5[174] + v146, v7);
  v121 = sub_26B128B98();
  (*(v118 + 8))(v120, v119);
  v145 = v121;
  v144 = 4;
  v124 = type metadata accessor for SUUIStatefulUIEnvironmentOptions(v122);
  v125 = sub_26B12510C();
  v123 = &v145;
  sub_26B128DC8();
  v143 = 8;
  sub_26B128DC8();
  v127 = 0x279CCA000uLL;
  v8 = objc_opt_self();
  v128 = 0x1FAC33000uLL;
  v126 = [v8 0x1FAC33D78];
  [v126 initialize];

  v129 = [objc_opt_self() (v128 + 3448)];
  v130 = [v129 enabled];
  v142 = v130;

  if (v130)
  {
    sub_26B128BF8();
    v98 = sub_26B128C08();
    v94 = v98;
    v97 = sub_26B128C88();
    v95 = v97;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65B8, &qword_26B13AB98);
    v99 = sub_26B128DA8();
    if (os_log_type_enabled(v98, v97))
    {
      v9 = v101;
      v85 = sub_26B128CC8();
      v81 = v85;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C0, &qword_26B13ABA0);
      v83 = 0;
      v86 = sub_26B127DFC(0, v82, v82);
      v84 = v86;
      v87 = sub_26B127DFC(v83, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v134 = v85;
      v133 = v86;
      v132 = v87;
      v88 = 0;
      v89 = &v134;
      sub_26B127E50(0, &v134);
      sub_26B127E50(v88, v89);
      v131 = v99;
      v90 = &v26;
      MEMORY[0x28223BE20](&v26);
      v91 = &v26 - 6;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C8, &qword_26B13ABA8);
      sub_26B127EE0();
      sub_26B128C58();
      v93 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_26B0B9000, v94, v95, "Initialing the Mobile environment in Automation Mode", v81, 2u);
        v79 = 0;
        sub_26B127FDC(v84, 0, v82);
        sub_26B127FDC(v87, v79, MEMORY[0x277D84F70] + 8);
        sub_26B128CA8();

        v80 = v93;
      }
    }

    else
    {

      v80 = v101;
    }

    v73 = v80;

    v74 = *(v104 + 8);
    v75 = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v108, v102);
    v76 = [objc_opt_self() sharedManager];
    v78 = [v76 createSUManagerClientForAutomationSession];
    v77 = v78;

    if (v78)
    {
      v72 = v77;
      v64 = v77;
      v135 = v77;
      v10 = v77;
      v11 = v64;
      v141 = v64;

      v65 = v64;
      v66 = v73;
    }

    else
    {
      sub_26B128BF8();
      v70 = sub_26B128C08();
      v67 = v70;
      v69 = sub_26B128C98();
      v68 = v69;
      v71 = sub_26B128DA8();
      if (os_log_type_enabled(v70, v69))
      {
        v12 = v73;
        v55 = sub_26B128CC8();
        v51 = v55;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C0, &qword_26B13ABA0);
        v53 = 0;
        v56 = sub_26B127DFC(0, v52, v52);
        v54 = v56;
        v57 = sub_26B127DFC(v53, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v139 = v55;
        v138 = v56;
        v137 = v57;
        v58 = 0;
        v59 = &v139;
        sub_26B127E50(0, &v139);
        sub_26B127E50(v58, v59);
        v136 = v71;
        v60 = &v26;
        MEMORY[0x28223BE20](&v26);
        v61 = &v26 - 6;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C8, &qword_26B13ABA8);
        sub_26B127EE0();
        sub_26B128C58();
        v63 = v12;
        if (v12)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_26B0B9000, v67, v68, "Could not create a SUManagerClient for Automation Session", v51, 2u);
          v49 = 0;
          sub_26B127FDC(v54, 0, v52);
          sub_26B127FDC(v57, v49, MEMORY[0x277D84F70] + 8);
          sub_26B128CA8();

          v50 = v63;
        }
      }

      else
      {

        v50 = v73;
      }

      v48 = v50;

      v74(v106, v102);
      sub_26B126ED0();
      v46 = sub_26B126F34();
      v47 = v46;
      v13 = v46;
      v141 = v46;
      v65 = v47;
      v66 = v48;
    }

    v44 = v65;
    v45 = v66;
  }

  else
  {
    sub_26B126ED0();
    v42 = sub_26B126F34();
    v43 = v42;
    v14 = v42;
    v141 = v42;
    v44 = v43;
    v45 = v101;
  }

  v35 = v44;
  v31 = v146;
  v38 = 0;
  type metadata accessor for SUUIMobileStatefulUIEnvironment();
  v15 = SUUIMobileStatefulUIEnvironment.__allocating_init(options:)(v145);
  v32 = MSUAssetOperation_16;
  *&v31[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIEnvironment] = v15;
  v37 = v146;
  sub_26B126F64();
  v36 = *(&v32[173]->isa + v146);
  swift_unknownObjectRetain();
  v16 = sub_26B1257A4();
  v33 = *v16;
  v34 = v16[1];

  v17 = v35;
  v18 = sub_26B126FC8(v36, v33, v34, v35);
  *&v37[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIManager] = v18;
  v39 = v146;
  v40 = sub_26B127020();
  v41 = [objc_opt_self() sharedInstance];
  if (v41)
  {
    v30 = v41;
  }

  else
  {
    sub_26B128D78();
    __break(1u);
  }

  v26 = v30;
  v19 = v35;
  v20 = sub_26B127084(v26, v35);
  *&v39[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_preferences] = v20;
  v27 = v146;
  sub_26B1270CC();
  v21 = sub_26B127130(v35);
  v22 = ObjectType;
  *&v27[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_analyticsReporter] = v21;
  v140.receiver = v146;
  v140.super_class = v22;
  v29 = objc_msgSendSuper2(&v140, sel_init);
  v23 = v29;
  v146 = v29;
  v28 = [objc_opt_self() sharedManager];
  v24 = v29;
  [v28 registerAutomationObserver_];
  swift_unknownObjectRelease();

  return v29;
}

unint64_t sub_26B126E50()
{
  v2 = qword_2803E6588;
  if (!qword_2803E6588)
  {
    sub_26B128BA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E6588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B126ED0()
{
  v2 = qword_2803E6598;
  if (!qword_2803E6598)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6598);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B126F64()
{
  v2 = qword_2803E65A0;
  if (!qword_2803E65A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E65A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B127020()
{
  v2 = qword_2803E65A8;
  if (!qword_2803E65A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E65A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B1270CC()
{
  v2 = qword_2803E65B0;
  if (!qword_2803E65B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E65B0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B127194()
{
  v2 = type metadata accessor for SUUIMobilePlatformEnvironment(0);
  v3 = sub_26B125EA0();
  qword_2803E6558 = v2;
  v0 = sub_26B1280E8();
  result = v3;
  unk_2803E6560 = v0;
  unk_2803E6540 = v3;
  return result;
}

void *sub_26B12720C()
{
  if (qword_2803E6448 != -1)
  {
    swift_once();
  }

  return &unk_2803E6540;
}

uint64_t SUUIMobilePlatformEnvironment.statefulUIManager.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIManager);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t SUUIMobilePlatformEnvironment.analyticsReporter.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_analyticsReporter);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t SUUIMobilePlatformEnvironment.preferences.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_preferences);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t SUUIMobilePlatformEnvironment.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_platformCapabilities;
  v2 = sub_26B128BA8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id SUUIMobilePlatformEnvironment.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SUUIMobilePlatformEnvironment.onAutomationEnabledStateChanged(_:)(Swift::Bool a1)
{
  v36 = a1;
  v38 = sub_26B12822C;
  v40 = sub_26B1287BC;
  v42 = sub_26B128808;
  v46 = sub_26B128854;
  v48 = sub_26B128740;
  v50 = sub_26B128774;
  v53 = sub_26B1288A0;
  v65 = 0;
  v64 = 0;
  v30 = 0;
  v31 = sub_26B128C18();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v18 - v34;
  v65 = MEMORY[0x28223BE20](v36) & 1;
  v64 = v1;
  sub_26B128BF8();
  v37 = 17;
  v44 = 7;
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v57 = sub_26B128C08();
  v58 = sub_26B128C88();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 4;
  v43 = 32;
  v2 = swift_allocObject();
  v3 = v39;
  v41 = v2;
  *(v2 + 16) = v38;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v41;
  v45 = v4;
  *(v4 + 16) = v40;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v45;
  v47 = v6;
  *(v6 + 16) = v42;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v47;
  v54 = v8;
  *(v8 + 16) = v46;
  *(v8 + 24) = v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65B8, &qword_26B13AB98);
  v52 = sub_26B128DA8();
  v55 = v10;

  v11 = v49;
  v12 = v55;
  *v55 = v48;
  v12[1] = v11;

  v13 = v51;
  v14 = v55;
  v55[2] = v50;
  v14[3] = v13;

  v15 = v54;
  v16 = v55;
  v55[4] = v53;
  v16[5] = v15;
  sub_26B12898C();

  if (os_log_type_enabled(v57, v58))
  {
    v17 = v30;
    v23 = sub_26B128CC8();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C0, &qword_26B13ABA0);
    v22 = 0;
    v24 = sub_26B127DFC(0, v21, v21);
    v25 = sub_26B127DFC(v22, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v26 = &v63;
    v63 = v23;
    v27 = &v62;
    v62 = v24;
    v28 = &v61;
    v61 = v25;
    sub_26B127E50(0, &v63);
    sub_26B127E50(1, v26);
    v59 = v48;
    v60 = v49;
    sub_26B127E64(&v59, v26, v27, v28);
    v29 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v59 = v50;
      v60 = v51;
      sub_26B127E64(&v59, &v63, &v62, &v61);
      v20 = 0;
      v59 = v53;
      v60 = v54;
      sub_26B127E64(&v59, &v63, &v62, &v61);
      _os_log_impl(&dword_26B0B9000, v57, v58, ">> HERE: Mobile automation state changed to %{BOOL}d", v23, 8u);
      v19 = 0;
      sub_26B127FDC(v24, 0, v21);
      sub_26B127FDC(v25, v19, MEMORY[0x277D84F70] + 8);
      sub_26B128CA8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v57);
  (*(v32 + 8))(v35, v31);
}

id sub_26B127CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B128C28();
  v9 = [v5 initWithEnvironment:a1 identifier:? andSUManagerClient:?];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](v7);

  swift_unknownObjectRelease();
  return v9;
}

id sub_26B127D44(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithSUPreferencesInstance_andSUManagerClient_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id sub_26B127DAC(uint64_t a1)
{
  v4 = [v1 initWithSUManagerClient_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_26B127DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_26B128CC8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B127E50(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_26B127EE0()
{
  v2 = qword_2803E65D0;
  if (!qword_2803E65D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803E65C8, &qword_26B13ABA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E65D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t sub_26B127FDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_26B128CB8();
    return sub_26B128CA8();
  }

  return result;
}

uint64_t type metadata accessor for SUUIMobilePlatformEnvironment(uint64_t a1)
{
  v2 = qword_2803E65F0;
  if (!qword_2803E65F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_26B1280E8()
{
  v2 = qword_2803E65D8;
  if (!qword_2803E65D8)
  {
    type metadata accessor for SUUIMobilePlatformEnvironment(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E65D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B128168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_26B1282C0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26B1282FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x28223BE20](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_26B128D68() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_26B128D98();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x28223BE20](v22);
    v15 = v28;
    v16 = v10;
    sub_26B128538(v9, sub_26B128B48, &v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v12, MEMORY[0x277D84F78]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_26B128538@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_26B128D98();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

_BYTE **sub_26B128700(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26B1288A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26B128914();
  v5 = MEMORY[0x277D849A8];

  return sub_26B1282FC(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_26B128914()
{
  v2 = qword_2803E65E0;
  if (!qword_2803E65E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E65E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B1289EC(uint64_t a1)
{
  updated = sub_26B128BA8();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_26B128AFC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E6580, &qword_26B13AB90);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}