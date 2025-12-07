void sub_19B5D0578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D080C(uint64_t a1, const char *a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"CMSedentaryTimerStartTime";
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 32), a2, a3);
  v14[0] = objc_msgSend_numberWithDouble_(v4, v5, v6);
  v13[1] = @"CMSedentaryTimerPeriodInterval";
  v14[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v7, v8, *(a1 + 56));
  v13[2] = @"CMSedentaryTimerReminderInterval";
  v14[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, *(a1 + 64));
  v13[3] = @"CMSedentaryTimerAutoReschedule";
  v14[3] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v11, *(a1 + 72));
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v14, v13, 4);
  sub_19B5D12C8();
}

void sub_19B5D09BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D09F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v7 = *(a2 + 1);
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopTimerResponse_withHandler_(v5, v6, &v8, *(a1 + 40));
  if (v9)
  {
    sub_19B41FFEC(v9);
  }
}

void sub_19B5D0A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  v19 = *(v17 - 32);
  if (v19)
  {
    sub_19B41FFEC(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0C3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v7 = *(a2 + 1);
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleStartStopTimerResponse_withHandler_(v5, v6, &v8, *(a1 + 40));
  if (v9)
  {
    sub_19B41FFEC(v9);
  }
}

void sub_19B5D0CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0D94(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"CMSedentaryTimerStartTime";
  v3 = MEMORY[0x1E696AD98];
  objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 32), a2, a3);
  v8[0] = objc_msgSend_numberWithDouble_(v3, v4, v5);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, &v7, 1);
  sub_19B5D12C8();
}

void sub_19B5D0EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D0F10(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v7 = *(a2 + 1);
  v8 = *a2;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_msgSend__handleAlarmDataResponse_withHandler_(v5, v6, &v8, *(a1 + 40));
  if (v9)
  {
    sub_19B41FFEC(v9);
  }
}

void sub_19B5D0F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D1060(uint64_t a1, const char *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a1 + 32;
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  objc_msgSend__registerForAlarmsWithHandler_(v4, v5, *(v3 + 8));
  v7 = @"kCLConnectionMessageSubscribeKey";
  v8[0] = MEMORY[0x1E695E118];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v8, &v7, 1);
  sub_19B5D12C8();
}

void sub_19B5D1158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5D1200(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D125C((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5D125C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D12AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5D133C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D1398((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5D1398(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D13F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5D1478(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D14D4((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5D14D4(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D1524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D1984(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D1A0C;
  block[3] = &unk_1E7532C58;
  v4 = *(a1 + 40);
  v5 = v1;
  v6 = *(a1 + 56);
  dispatch_async(v2, block);
}

void sub_19B5D1A0C(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(v19, 0, sizeof(v19));
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(*(a1 + 32), v2, v19, v24, 16))
  {
    v5 = **(&v19[0] + 1);
    v22[0] = @"CMMotionActivityStartTime";
    v6 = MEMORY[0x1E696AD98];
    objc_msgSend_timeIntervalSinceReferenceDate(v5, v3, v4);
    v23[0] = objc_msgSend_numberWithDouble_(v6, v7, v8);
    v22[1] = @"CMMotionActivityStopTime";
    v9 = MEMORY[0x1E696AD98];
    v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v10, 0);
    objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13);
    v23[1] = objc_msgSend_numberWithDouble_(v9, v14, v15);
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v23, v22, 2);
    sub_19B5D12C8();
  }

  v20 = @"CMMotionActivityDataArray";
  v21 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v3, v18);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v21, &v20, 1);
  sub_19B5D379C();
}

void sub_19B5D1D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v27)
  {
    sub_19B41FFEC(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D1F34(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  block[2] = sub_19B5D1FB4;
  block[3] = &unk_1E7532C80;
  v6 = v1;
  v5 = v2;
  dispatch_async(v3, block);
}

id sub_19B5D1FB4(uint64_t a1, const char *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  if (!v3)
  {
    v8 = @"kCLConnectionMessageSubscribeKey";
    v9[0] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, &v8, 1);
    sub_19B45280C();
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 32) = v4;
  result = v5[1];
  *(*v5 + 5) = result;
  return result;
}

void sub_19B5D20D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B5D2374(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B5D23D8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B5D243C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B5D24CC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B5D2648(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  block[2] = sub_19B5D26C8;
  block[3] = &unk_1E7532C80;
  v6 = v1;
  v5 = v2;
  dispatch_async(v3, block);
}

id sub_19B5D26C8(uint64_t a1, const char *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  if (!v3)
  {
    v10 = @"kCLConnectionMessageSubscribeKey";
    v11[0] = MEMORY[0x1E695E118];
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v11, &v10, 1);
    sub_19B5D38E0(&v8, &v9);
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 32) = v4;
  result = v5[1];
  *(*v5 + 5) = result;
  return result;
}

void sub_19B5D27E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D2884(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D28F8;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B5D28F8(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 32))
  {
    v4 = @"kCLConnectionMessageSubscribeKey";
    v5[0] = MEMORY[0x1E695E110];
    v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
    sub_19B5D38E0(&v2, &v3);
  }
}

void sub_19B5D2A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D2DAC(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  block[2] = sub_19B5D2E2C;
  block[3] = &unk_1E7532C80;
  v6 = v1;
  v5 = v2;
  dispatch_async(v3, block);
}

id sub_19B5D2E2C(uint64_t a1, const char *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  if (!v3)
  {
    v10 = @"kCLConnectionMessageSubscribeKey";
    v11[0] = MEMORY[0x1E695E118];
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v11, &v10, 1);
    sub_19B5D39B8(&v8, &v9);
  }

  _Block_release(v3);

  v4 = _Block_copy(*(a1 + 48));
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 32) = v4;
  result = v5[1];
  *(*v5 + 5) = result;
  return result;
}

void sub_19B5D2F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D3238(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5D32AC;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_19B5D32AC(uint64_t a1, const char *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 32))
  {
    v4 = @"kCLConnectionMessageSubscribeKey";
    v5[0] = MEMORY[0x1E695E110];
    v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v5, &v4, 1);
    sub_19B5D39B8(&v2, &v3);
  }
}

void sub_19B5D33B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D359C(uint64_t a1, char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);
LABEL_3:

    v4();
    return;
  }

  if (a2 && objc_msgSend_count(a2, a2, 0))
  {
    objc_msgSend_filterActivities_withAttribute_(*(a1 + 48), a2, a2, *(a1 + 64));
    v4 = *(*(a1 + 56) + 16);
    goto LABEL_3;
  }

  v6 = *(a1 + 56);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 107, 0);
  (*(v6 + 16))(v6, 0, v7);
  if (qword_1ED71C7A0 != -1)
  {
    dispatch_once(&qword_1ED71C7A0, &unk_1F0E28E20);
  }

  v8 = qword_1ED71C7A8;
  if (os_log_type_enabled(qword_1ED71C7A8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = 68289539;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2113;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Query out-of-bounds of available data, start:%{private, location:escape_only}@, end:%{private, location:escape_only}@}", v11, 0x26u);
  }
}

os_log_t sub_19B5D376C()
{
  result = os_log_create("com.apple.locationd.Motion", "Activity");
  qword_1ED71C7A8 = result;
  return result;
}

void *sub_19B5D3810(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5D386C((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5D386C(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5D38C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5D3988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_19B5D3A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void *sub_19B5D3E20(void *a1)
{
  *a1 = &unk_1F0E32348;
  sub_19B427AEC(a1);
  sub_19B423148(a1);
  sub_19B5D3E78(a1);
  return a1;
}

void *sub_19B5D3E78(void *result)
{
  if (result[7])
  {
    v1 = result;
    v2 = sub_19B43A6F0();
    sub_19B426A14(v2, 0, v1[7]);
    v3 = v1[7];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v1[7] = 0;
    v4 = sub_19B43A6F0();
    sub_19B426A14(v4, 1, v1[8]);
    result = v1[8];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v1[8] = 0;
  }

  return result;
}

uint64_t sub_19B5D3F2C(uint64_t result, double a2)
{
  if (!*(result + 56))
  {
    operator new();
  }

  return result;
}

void sub_19B5D40D0(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5D5B20(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0x3200000000;
  *(a1 + 1216) = 0x3200000000;
  *(a1 + 2424) = 0x3200000000;
  *(a1 + 3632) = 0x9600000000;
  *(a1 + 4240) = 0x3200000000;
  *(a1 + 4448) = 0x3200000000;
  *(a1 + 4656) = 0x700000000;
  *(a1 + 4720) = 0x700000000;
  *(a1 + 4816) = 0x7FF8000000000000;
  *(a1 + 4824) = vneg_f32(0x3F0000003FLL);
  *(a1 + 4832) = 2143289344;
  *(a1 + 4840) = 0;
  *(a1 + 4848) = 0x7FF8000000000000;
  *(a1 + 4856) = 0;
  *(a1 + 4864) = 0;
  *(a1 + 4872) = 0x7FF8000000000000;
  *(a1 + 4880) = 0;
  *(a1 + 4888) = 0;
  *(a1 + 4896) = 0;
  *(a1 + 4904) = 0x300000000;
  *(a1 + 4936) = 0x300000000;
  *(a1 + 4976) = 0;
  *(a1 + 4968) = 0;
  *(a1 + 4980) = 1065353216;
  v2 = a1 + 4984;
  v18 = a1 + 5040;
  v17 = a1 + 5096;
  v16 = a1 + 5152;
  v15 = a1 + 5224;
  v14 = a1 + 5296;
  v13 = a1 + 5360;
  v12 = a1 + 5376;
  v3 = a1 + 5392;
  v4 = (a1 + 5448);
  v5 = a1 + 5504;
  v6 = (a1 + 5560);
  v7 = a1 + 5632;
  v8 = (a1 + 5704);
  v9 = a1 + 5768;
  v10 = a1 + 5784;
  *(a1 + 5928) = 0u;
  *(a1 + 5944) = 0x7FF8000000000000;
  *(a1 + 5952) = 0;
  __src[0] = xmmword_19B7B79C8;
  __src[1] = unk_19B7B79D8;
  __src[2] = xmmword_19B7B79E8;
  *&__src[3] = 0x3FE1532617C1BDA5;
  *(&__src[6] + 1) = 0;
  *(&__src[3] + 8) = xmmword_19B7B7A00;
  *(&__src[4] + 8) = unk_19B7B7A10;
  *(&__src[5] + 8) = xmmword_19B7B7A20;
  __src[8] = unk_19B7B7A48;
  __src[9] = xmmword_19B7B7A58;
  __src[7] = xmmword_19B7B7A38;
  *&__src[10] = 0;
  *(&__src[14] + 1) = 0;
  *(&__src[13] + 8) = unk_19B7B7AA0;
  *(&__src[12] + 8) = xmmword_19B7B7A90;
  *(&__src[11] + 8) = unk_19B7B7A80;
  *(&__src[10] + 8) = xmmword_19B7B7A70;
  *&__src[19] = 0;
  __src[17] = xmmword_19B7B7AD8;
  __src[18] = unk_19B7B7AE8;
  __src[15] = xmmword_19B7B7AB8;
  __src[16] = unk_19B7B7AC8;
  *(&__src[21] + 8) = xmmword_19B7B7B20;
  *(&__src[22] + 8) = unk_19B7B7B30;
  *(&__src[19] + 8) = xmmword_19B7B7B00;
  *(&__src[20] + 8) = unk_19B7B7B10;
  memcpy((a1 + 4984), __src, 0x178uLL);
  *(a1 + 5360) = xmmword_19B7B7990;
  *(a1 + 5376) = xmmword_19B7B79A0;
  *(a1 + 5392) = xmmword_19B7B7B40;
  *(a1 + 5408) = unk_19B7B7B50;
  *(a1 + 5424) = xmmword_19B7B7B60;
  *(a1 + 5440) = 0x7FEFFFFFFFFFFFFFLL;
  *v4 = xmmword_19B7B7B78;
  v4[1] = unk_19B7B7B88;
  v4[2] = xmmword_19B7B7B98;
  *(a1 + 5496) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5552) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5536) = unk_19B7B7BD0;
  *(a1 + 5520) = xmmword_19B7B7BC0;
  *(a1 + 5504) = xmmword_19B7B7BB0;
  *(a1 + 5624) = 0x7FEFFFFFFFFFFFFFLL;
  v6[2] = xmmword_19B7B7C08;
  v6[3] = unk_19B7B7C18;
  *v6 = xmmword_19B7B7BE8;
  v6[1] = unk_19B7B7BF8;
  *(a1 + 5632) = xmmword_19B7B7BE8;
  *(a1 + 5696) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5680) = unk_19B7B7C18;
  *(a1 + 5664) = xmmword_19B7B7C08;
  *(a1 + 5648) = unk_19B7B7BF8;
  v8[2] = xmmword_19B7B7C50;
  v8[3] = unk_19B7B7C60;
  *v8 = xmmword_19B7B7C30;
  v8[1] = unk_19B7B7C40;
  *(a1 + 5768) = 0x3F1A36E2EB1C432DLL;
  *(a1 + 5776) = xmmword_19B7B79B0;
  *(a1 + 5792) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 5800) = v2;
  *(a1 + 5808) = v18;
  *(a1 + 5816) = v17;
  *(a1 + 5824) = v16;
  *(a1 + 5832) = v15;
  *(a1 + 5840) = v14;
  *(a1 + 5848) = v13;
  *(a1 + 5856) = v12;
  *(a1 + 5864) = v3;
  *(a1 + 5872) = v4;
  *(a1 + 5880) = v5;
  *(a1 + 5888) = v6;
  *(a1 + 5896) = v7;
  *(a1 + 5904) = v8;
  *(a1 + 5912) = v9;
  *(a1 + 5920) = v10;
  return a1;
}

void sub_19B5D5EC8(unsigned __int8 *a1)
{
  v2 = *(a1 + 741);
  if (v2 && *(a1 + 742))
  {
    v2(*a1);
  }

  v3 = *(a1 + 744);
  v4 = *a1;
  if (v3 && v4 != a1[2])
  {
    sub_19B5E7A0C(v3, v4 & 1);
    LOBYTE(v4) = *a1;
  }

  a1[2] = v4;
}

unsigned __int16 *sub_19B5D5F28(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMAccessoryStepDetector::AggAccelSample>::operator[](const size_t) const [T = CMAccessoryStepDetector::AggAccelSample]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

float sub_19B5D6144(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 3;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 3>::operator[](const size_t) const [T = float, N = 3]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

unsigned __int16 *sub_19B5D6350(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[12 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 3) = *(a2 + 2);
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

unsigned __int16 *sub_19B5D63BC(unsigned __int16 *result, _DWORD *a2, _DWORD *a3, double a4, double a5)
{
  *a2 = 0;
  *a3 = 0;
  if (result[5])
  {
    v9 = result;
    v10 = 0;
    v11 = INFINITY;
    do
    {
      v12 = vabdd_f64(a4, *sub_19B5D5F28(v9 + 4, v10));
      if (v12 < v11)
      {
        *a2 = v10;
        v11 = v12;
      }

      result = sub_19B5D5F28(v9 + 4, v10);
      if (vabdd_f64(*result, a5) <= 0.000001)
      {
        *a3 = v10;
      }

      ++v10;
    }

    while (v10 < v9[5]);
  }

  return result;
}

unsigned __int16 *sub_19B5D6480(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMAccessoryStepDetector::VectorSample>::operator[](const size_t) const [T = CMAccessoryStepDetector::VectorSample]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

unsigned __int16 *sub_19B5D669C(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMAccessoryStepDetector::FaceRotationRateSample>::operator[](const size_t) const [T = CMAccessoryStepDetector::FaceRotationRateSample]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

uint64_t sub_19B5D68B8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a2;
      v22 = 2048;
      v23 = 3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", buf, 0x16u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v16 = 134218240;
      v17 = a2;
      v18 = 2048;
      v19 = 3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: row < M, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 77,invalid row %zu > %zu.", &v16, 22);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3>::operator()(size_t, size_t) [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v21 = a3;
      v22 = 2048;
      v23 = 3;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v16 = 134218240;
      v17 = a3;
      v18 = 2048;
      v19 = 3;
      LODWORD(v15) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 78,invalid col %zu > %zu.", &v16, v15);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMMatrix<float, 3>::operator()(size_t, size_t) [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1 + 4 * (3 * a3 + a2);
}

unsigned __int16 *sub_19B5D6C44(unsigned __int16 *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[4 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

unsigned __int16 *sub_19B5D6C98(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<double>::operator[](const size_t) const [T = double]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[4 * (v4 - v5) + 4];
}

void sub_19B5D6EB0(char *a1)
{
  *(a1 + 1164) = 0;
  *(a1 + 1226) = 0;
  *(a1 + 612) = 0x7FF8000000000000;
  *a1 = 0;
  v2 = *(a1 + 744);
  if (v2 && a1[2] == 1)
  {
    sub_19B5E7A0C(v2, 0);
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  a1[2] = v3;
}

double sub_19B5D6F10(uint64_t a1, float32x2_t *a2, double a3)
{
  v333 = *MEMORY[0x1E69E9840];
  v6.f32[0] = sub_19B447000(&a2[7]);
  v7 = a2[1].f32[1] - v6.f32[0];
  v9 = a2[2].f32[0] - v8;
  v11 = a2[2].f32[1] - v10;
  *buf = sub_19B66BFF4(a2 + 7, v6);
  *&buf[4] = v12;
  *&buf[8] = v13;
  *&buf[12] = v14;
  v15 = sub_19B66C1A4(buf, v7, v9, v11);
  v281 = v16.i32[0];
  v285 = v15;
  v18 = v17;
  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + (a2->f32[v19] * a2->f32[v19]);
    ++v19;
  }

  while (v19 != 3);
  v21 = v16;
  v21.f32[0] = -v16.f32[0];
  v22 = sqrtf(v20);
  v23 = *(a1 + 3634);
  v24 = *(a1 + 3636);
  v25 = *(a1 + 3632);
  if (v25 + v23 >= v24)
  {
    v26 = *(a1 + 3636);
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 4 * (v25 + v23 - v26) + 3640) = v22;
  if (v24 <= v23)
  {
    if (v25 + 1 < v24)
    {
      LOWORD(v24) = 0;
    }

    *(a1 + 3632) = v25 + 1 - v24;
  }

  else
  {
    *(a1 + 3634) = v23 + 1;
  }

  v27 = *(a1 + 1220);
  v28 = *(a1 + 1216) + *(a1 + 1218);
  if (v28 >= v27)
  {
    v29 = *(a1 + 1220);
  }

  else
  {
    v29 = 0;
  }

  v30 = a1 + 24 * (v28 - v29);
  *(v30 + 1224) = a3;
  *(v30 + 1232) = -v285;
  *(v30 + 1236) = v21.i32[0];
  *(v30 + 1240) = -v17;
  v31 = *(a1 + 1218);
  if (v27 <= v31)
  {
    v32 = *(a1 + 1216) + 1;
    if (v32 < v27)
    {
      LOWORD(v27) = 0;
    }

    *(a1 + 1216) = v32 - v27;
  }

  else
  {
    *(a1 + 1218) = v31 + 1;
  }

  if (*(a1 + 10))
  {
    v33 = *(a1 + 10) + *(a1 + 8) - 1;
    v34 = *(a1 + 12);
    if (v33 < v34)
    {
      v34 = 0;
    }

    v35 = (a1 + 24 * (v33 - v34));
    v36 = v35[3];
    v37 = v35[4].f32[0];
  }

  else
  {
    v36 = 0;
    v37 = 0.0;
  }

  *buf = sub_19B66BFF4(a2 + 7, v21);
  *&buf[4] = v38;
  *&buf[8] = v39;
  *&buf[12] = v40;
  v41.f32[0] = sub_19B66C1A4(buf, a2->f32[0], a2->f32[1], a2[1].f32[0]);
  v43 = *(a1 + 4450);
  v44 = *(a1 + 4452);
  v45 = *(a1 + 4448);
  if (v45 + v43 >= v44)
  {
    v46 = *(a1 + 4452);
  }

  else
  {
    v46 = 0;
  }

  *(a1 + 4 * (v45 + v43 - v46) + 4456) = v42;
  if (v44 <= v43)
  {
    if (v45 + 1 < v44)
    {
      LOWORD(v44) = 0;
    }

    *(a1 + 4448) = v45 + 1 - v44;
  }

  else
  {
    *(a1 + 4450) = v43 + 1;
  }

  *buf = sub_19B66BFF4((a1 + 4968), v41);
  *&buf[4] = v47;
  *&buf[8] = v48;
  *&buf[12] = v49;
  v50 = sub_19B66C1A4(buf, a2->f32[0], a2->f32[1], a2[1].f32[0]);
  v53 = *(a1 + 2428);
  v54 = *(a1 + 2424) + *(a1 + 2426);
  if (v54 >= v53)
  {
    v55 = *(a1 + 2428);
  }

  else
  {
    v55 = 0;
  }

  v56 = a1 + 24 * (v54 - v55);
  *(v56 + 2432) = a3;
  *(v56 + 2440) = v50;
  *(v56 + 2444) = v51;
  *(v56 + 2448) = v52;
  v57 = *(a1 + 2426);
  if (v53 <= v57)
  {
    v58 = *(a1 + 2424) + 1;
    if (v58 < v53)
    {
      LOWORD(v53) = 0;
    }

    *(a1 + 2424) = v58 - v53;
  }

  else
  {
    *(a1 + 2426) = v57 + 1;
  }

  *&v289 = a3;
  *(&v289 + 1) = vsub_f32(v36, __PAIR64__(v281, LODWORD(v285)));
  v290 = v37 - v18;
  sub_19B5D6350((a1 + 8), &v289);
  v59 = *(a1 + 4836);
  if (v59)
  {
    v60 = v59 == 2 && *(a1 + 4844) == 0;
  }

  else
  {
    v60 = 1;
  }

  *(a1 + 3) = v60;
  v61 = *(a1 + 8) + *(a1 + 10) - 1;
  v62 = *(a1 + 12);
  if (v61 >= v62)
  {
    v63 = *(a1 + 12);
  }

  else
  {
    v63 = 0;
  }

  if (vabds_f32(*(a1 + 24 * (v61 - v63) + 32), *(a1 + 4832)) <= 0.125)
  {
    v76 = *(a1 + 4656) + *(a1 + 4658) - 1;
    v77 = *(a1 + 4660);
    if (v76 < v77)
    {
      v77 = 0;
    }

    if (*(a1 + 8 * (v76 - v77) + 4664) + 5.0 <= a3)
    {
      *a1 = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
      }

      v78 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v78, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] No spatial sample for 5s. Set detectedSteps = false", buf, 2u);
      }

      v79 = sub_19B420058();
      v80 = a3;
      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
        }

        *v313 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[AccessoryStepDetector] No spatial sample for 5s. Set detectedSteps = false", v313, 2);
        v82 = v81;
        sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v81);
        if (v82 != buf)
        {
          free(v82);
        }

        v80 = a3;
      }

      if (*(a1 + 5944) + 2.5 < v80)
      {
        sub_19B5D5EC8(a1);
        *(a1 + 5944) = a3;
      }
    }
  }

  else
  {
    v64 = a1 + 16;
    if (v61 < v62)
    {
      v62 = 0;
    }

    v65 = v64 + 24 * (v61 - v62);
    v66 = *(v65 + 8);
    *(a1 + 4832) = *(v65 + 16);
    *(a1 + 4824) = v66;
    *(a1 + 4816) = *v65;
    sub_19B5D6C44((a1 + 4656), (a1 + 4816));
    sub_19B5BE720((a1 + 4720), a1 + 4824);
    if (*(a1 + 4660) == *(a1 + 4658))
    {
      v67 = *(sub_19B5BEC4C((a1 + 4720), 0) + 2);
      v68 = *(sub_19B5BEC4C((a1 + 4720), 3uLL) + 2);
      v69 = *(sub_19B5BEC4C((a1 + 4720), 3uLL) + 2);
      v70 = *(sub_19B5BEC4C((a1 + 4720), 6uLL) + 2);
      v71 = sub_19B5D6C98((a1 + 4656), 0);
      if (*(a1 + 10))
      {
        v72 = 0;
        v73 = v67 - v68;
        v74 = v69 - v70;
        v75 = *v71;
        while (*sub_19B5D5F28((a1 + 8), v72) < v75)
        {
          if (++v72 >= *(a1 + 10))
          {
            LODWORD(v72) = -1;
            goto LABEL_100;
          }
        }

        if (v72 < *(a1 + 1218))
        {
          v84 = v74 < 0.0 && v73 > 0.0;
          if (v84)
          {
            v85 = *(a1 + 10);
            if (!*(a1 + 10))
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
              }

              v264 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v264, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
              }

              v265 = sub_19B420058();
              if ((*(v265 + 160) & 0x80000000) == 0 || (*(v265 + 164) & 0x80000000) == 0 || (*(v265 + 168) & 0x80000000) == 0 || *(v265 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
                }

                *v313 = 0;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", v313, 2);
                v267 = v266;
                sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<CMAccessoryStepDetector::AggAccelSample>::getComparison(int (*)(const T, const T), size_t) const [T = CMAccessoryStepDetector::AggAccelSample]", "CoreLocation: %s\n", v266);
                if (v267 != buf)
                {
                  free(v267);
                }
              }
            }

            v86 = sub_19B5D5F28((a1 + 8), v72);
            v83 = *v86;
            v87 = *(v86 + 4);
            v3.i32[0] = *(v86 + 4);
            if (v72 < v85)
            {
              v88 = v72;
              do
              {
                v89 = sub_19B5D5F28((a1 + 8), v88);
                v90.i32[0] = *(v89 + 4);
                v87 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcgt_f32(v3, v90)), 0), v87, *(v89 + 4));
                if (v90.f32[0] < v3.f32[0])
                {
                  v83 = *v89;
                  v3.i32[0] = *(v89 + 4);
                }

                ++v88;
              }

              while (v85 != v88);
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            v91 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              *&buf[4] = a3;
              *&buf[12] = 2048;
              *&buf[14] = v83;
              *&buf[22] = 2048;
              *&buf[24] = v3.f32[0];
              _os_log_impl(&dword_19B41C000, v91, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] downInflectionDetected,time,%f,minTime,%f,minAggAccel,%f", buf, 0x20u);
            }

            v92 = sub_19B420058();
            if (*(v92 + 160) > 1 || *(v92 + 164) > 1 || *(v92 + 168) > 1 || *(v92 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              *v313 = 134218496;
              *&v313[4] = a3;
              *&v313[12] = 2048;
              *&v313[14] = v83;
              v314 = 2048;
              v315 = v3.f32[0];
              LODWORD(v268) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[AccessoryStepDetector] downInflectionDetected,time,%f,minTime,%f,minAggAccel,%f", COERCE_DOUBLE(v313), v268, v269);
              v94 = v93;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryStepDetector::detectInflection(double, BOOL &, AggAccelSample &, BOOL &, AggAccelSample &) const", "CoreLocation: %s\n", v93);
              if (v94 != buf)
              {
                free(v94);
              }
            }
          }

          else
          {
            v87 = 0;
            v3.i32[0] = 0;
            v83 = NAN;
          }

          if (v73 < 0.0 && v74 > 0.0)
          {
            if (v72 >= *(a1 + 10))
            {
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              v199 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
              {
                v200 = *(a1 + 10);
                *buf = 134349312;
                *&buf[4] = v200;
                *&buf[12] = 1026;
                *&buf[14] = v72;
                _os_log_impl(&dword_19B41C000, v199, OS_LOG_TYPE_ERROR, "[AccessoryStepDetector] Error: queue size: %{public}zu start: %{public}d", buf, 0x12u);
              }

              v201 = sub_19B420058();
              if ((*(v201 + 160) & 0x80000000) == 0 || (*(v201 + 164) & 0x80000000) == 0 || (*(v201 + 168) & 0x80000000) == 0 || *(v201 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                }

                v202 = *(a1 + 10);
                *v313 = 134349312;
                *&v313[4] = v202;
                *&v313[12] = 1026;
                *&v313[14] = v72;
                LODWORD(v268) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[AccessoryStepDetector] Error: queue size: %{public}zu start: %{public}d", v313, *&v268);
                v204 = v203;
                sub_19B6BB7CC("Generic", 1, 0, 0, "CMAccessoryStepDetector::AggAccelSample CMAccessoryStepDetector::calculateMaxFilteredMedianValue(const CMQueue<CMAccessoryStepDetector::AggAccelSample> &, const int) const", "CoreLocation: %s\n", v203);
                if (v204 != buf)
                {
                  free(v204);
                }
              }

              v103 = 0.0;
              v205 = 0.0;
              *&v206 = NAN;
            }

            else
            {
              *buf = 0x3200000000;
              do
              {
                for (i = 0; i != 72; i += 24)
                {
                  v133 = &v313[i];
                  *v133 = 0x7FF8000000000000;
                  *(v133 + 1) = 0;
                  *(v133 + 4) = 0;
                }

                if (v72)
                {
                  v134 = v72 - 1;
                }

                else
                {
                  v134 = 0;
                }

                *&v313[16] = *(sub_19B5D5F28((a1 + 8), v134) + 4);
                *v313 = *sub_19B5D5F28((a1 + 8), v134);
                *&v317[6] = *(sub_19B5D5F28((a1 + 8), v72) + 4);
                v315 = *sub_19B5D5F28((a1 + 8), v72);
                v135 = v72 + 1;
                v136 = *(a1 + 10);
                if (v72 + 1 >= v136)
                {
                  v138 = v136 + *(a1 + 8) - 1;
                  v139 = *(a1 + 12);
                  if (v138 < v139)
                  {
                    v139 = 0;
                  }

                  v137 = (v64 + 24 * (v138 - v139));
                  LODWORD(v320) = *(v137 + 4);
                }

                else
                {
                  LODWORD(v320) = *(sub_19B5D5F28((a1 + 8), v72 + 1) + 4);
                  v137 = sub_19B5D5F28((a1 + 8), v72 + 1);
                }

                *&v318[4] = *v137;
                *v294 = sub_19B5D633C;
                sub_19B5D95D4(v313, &v321, v294, 2, 1);
                v315 = *sub_19B5D5F28((a1 + 8), v72);
                sub_19B5D6350(buf, &v315);
                ++v72;
              }

              while (v135 < *(a1 + 10));
              v140 = *&buf[2] - 1;
              if (v140 < 2)
              {
                v144 = 2;
              }

              else
              {
                v141 = 1;
                v142 = -INFINITY;
                v143 = 1;
                do
                {
                  if (v142 <= *(sub_19B5D5F28(buf, v141) + 4))
                  {
                    v142 = *(sub_19B5D5F28(buf, v141) + 4);
                    v143 = v141;
                  }

                  ++v141;
                  v140 = *&buf[2] - 1;
                }

                while (v140 > v141);
                v144 = v143 + 1;
              }

              if (v140 >= v144)
              {
                v208 = v144;
              }

              else
              {
                v208 = v140;
              }

              v209 = sub_19B5D5F28(buf, v208);
              v206 = *v209;
              v103 = *(v209 + 1);
              v205 = *(v209 + 4);
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            v210 = off_1EAFE29A0;
            v104 = v205;
            v211 = v205;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              v212 = *(a1 + 10);
              *buf = 134218752;
              *&buf[4] = a3;
              *&buf[12] = 2048;
              *&buf[14] = v211;
              *&buf[22] = 2048;
              *&buf[24] = v206;
              *&buf[32] = 2048;
              *&buf[34] = v212;
              _os_log_impl(&dword_19B41C000, v210, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] upInflectionDetected,time,%f,maxMedianValue,%f,maxMedianTime,%f,bufSize,%zu", buf, 0x2Au);
            }

            v213 = sub_19B420058();
            if (*(v213 + 160) > 1 || *(v213 + 164) > 1 || *(v213 + 168) > 1 || *(v213 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              v214 = *(a1 + 10);
              *v313 = 134218752;
              *&v313[4] = a3;
              *&v313[12] = 2048;
              *&v313[14] = v211;
              v314 = 2048;
              v315 = *&v206;
              v316 = 2048;
              *v317 = v214;
              LODWORD(v268) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[AccessoryStepDetector] upInflectionDetected,time,%f,maxMedianValue,%f,maxMedianTime,%f,bufSize,%zu", COERCE_DOUBLE(v313), v268, v269, v270);
              v216 = v215;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMAccessoryStepDetector::detectInflection(double, BOOL &, AggAccelSample &, BOOL &, AggAccelSample &) const", "CoreLocation: %s\n", v215);
              if (v216 != buf)
              {
                free(v216);
              }
            }

            v101 = *(a1 + 4836);
            v102 = 1;
            v105 = *&v206;
            goto LABEL_114;
          }

LABEL_112:
          v101 = *(a1 + 4836);
          if (!v84)
          {
            *(a1 + 4840) = v101;
            v106 = a3;
            if (v101)
            {
              v107 = *(a1 + 4938);
              if (*(a1 + 4938))
              {
                v108 = v107 + *(a1 + 4936) - 1;
                v109 = *(a1 + 4940);
                if (v108 < v109)
                {
                  v109 = 0;
                }

                v110 = *(a1 + 8 * (v108 - v109) + 4944);
                if (*(a1 + 4906))
                {
                  v111 = *(a1 + 4906) + *(a1 + 4904) - 1;
                  v112 = *(a1 + 4908);
                  if (v111 < v112)
                  {
                    v112 = 0;
                  }

                  v113 = a1 + 8 * (v111 - v112);
                  if (v110 < *(v113 + 4912))
                  {
                    v110 = *(v113 + 4912);
                  }
                }

                if (a3 - v110 > 1.5)
                {
                  if (v101 == 2)
                  {
                    *(a1 + 4938) = v107 - 1;
                  }

                  *(a1 + 4836) = 0;
                  *(a1 + 4844) = v101;
                  *a1 = 0;
                  sub_19B5D5EC8(a1);
                  v106 = a3;
                  *(a1 + 5944) = a3;
                }
              }
            }

            if (*(a1 + 5944) + 2.5 < v106)
            {
              v83 = NAN;
              if (*a1)
              {
LABEL_256:
                *a1 = 0;
                return v83;
              }

              sub_19B5D5EC8(a1);
              *(a1 + 5944) = a3;
            }

            goto LABEL_255;
          }

          v102 = 0;
          v103 = 0.0;
          v104 = 0.0;
          v105 = NAN;
LABEL_114:
          if (v101 != 2)
          {
            if (v101 == 1)
            {
              if ((v102 & 1) == 0 && v83 > *(a1 + 4848) && v83 - *(a1 + 4872) > 0.25)
              {
                *(a1 + 4836) = 2;
                *(a1 + 4844) = 1;
                *(a1 + 4872) = v83;
                *(a1 + 4880) = v87;
                *(a1 + 4888) = v3.i32[0];
                sub_19B5D6C44((a1 + 4936), (a1 + 4872));
                goto LABEL_144;
              }
            }

            else
            {
              if (v101)
              {
                __assert_rtn("updateFSM", "CMAccessoryStepDetector.m", 722, "false");
              }

              if ((v102 & 1) == 0)
              {
                *(a1 + 4836) = 2;
                *(a1 + 4844) = 0;
                *(a1 + 4872) = v83;
                *(a1 + 4880) = v87;
                *(a1 + 4888) = v3.i32[0];
                sub_19B5D6C44((a1 + 4936), (a1 + 4872));
LABEL_144:
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                }

                v114 = off_1EAFE29A0;
                if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *&buf[4] = v83;
                  _os_log_impl(&dword_19B41C000, v114, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] startImpulse,time,%f", buf, 0xCu);
                }

                v115 = sub_19B420058();
                if (*(v115 + 160) > 1 || *(v115 + 164) > 1 || *(v115 + 168) > 1 || *(v115 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                  }

                  *v313 = 134217984;
                  *&v313[4] = v83;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[AccessoryStepDetector] startImpulse,time,%f", COERCE_DOUBLE(v313));
                  v117 = v116;
                  sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v116);
                  if (v117 != buf)
                  {
                    free(v117);
                  }
                }

                goto LABEL_256;
              }
            }

            goto LABEL_255;
          }

          if (v84)
          {
            if (vabdd_f64(*(a1 + 4872), v83) > 0.000001)
            {
              *(a1 + 4872) = v83;
              *(a1 + 4880) = v87;
              *(a1 + 4888) = v3.i32[0];
              if (*(a1 + 4938))
              {
                --*(a1 + 4938);
              }

              sub_19B5D6C44((a1 + 4936), (a1 + 4872));
              goto LABEL_144;
            }

            goto LABEL_255;
          }

          *(&v277 + 1) = v104;
          v271 = v103;
          *(a1 + 1) = 1;
          if (!*(a1 + 4906) || (*(a1 + 3) & 1) != 0)
          {
            goto LABEL_162;
          }

          v118 = *(a1 + 4906) + *(a1 + 4904) - 1;
          v119 = *(a1 + 4908);
          if (v118 < v119)
          {
            v119 = 0;
          }

          v120 = *(a1 + 8 * (v118 - v119) + 4912);
          if (v105 - v120 > 1.0)
          {
LABEL_162:
            v120 = v105 + -1.0;
          }

          v278 = v105;
          v275 = v105 - *(a1 + 4872);
          v276 = v105 - *(a1 + 4848);
          *v294 = v276;
          *&v294[8] = v275;
          v291[0] = 0.0;
          v292.i32[0] = 0;
          v121 = *(a1 + 4888);
          v122 = sub_19B5D5F28((a1 + 8), *(a1 + 10) - 1);
          v123 = *(a1 + 4872);
          if (*v122 > v123)
          {
            sub_19B5D63BC(a1, v291, &v292, v123, 0.0);
            v121 = *(sub_19B5D5F28((a1 + 8), SLODWORD(v291[0])) + 4);
          }

          v124 = sub_19B5D5F28((a1 + 8), *(a1 + 10) - 1);
          v125 = v278;
          v126 = v104;
          if (*v124 > v278)
          {
            v291[0] = 0.0;
            sub_19B5D63BC(a1, v291, &v292, v278, 0.0);
            v126 = *(sub_19B5D5F28((a1 + 8), SLODWORD(v291[0])) + 4);
            v125 = v278;
          }

          v274 = v126 - v121;
          *&v294[16] = v274;
          *buf = 0;
          *v313 = 0;
          sub_19B5D63BC(a1, buf, v313, v120, v125);
          if (*buf <= 1)
          {
            v127 = 1;
          }

          else
          {
            v127 = *buf;
          }

          v128 = (v127 - 1);
          v129 = *v313;
          v273 = *&v127;
          if (v128 <= *v313)
          {
            v145 = v127 - 1;
            v146 = *v313 + 1;
            v147 = 0;
            v148 = 0.0;
            v149 = vdup_n_s32(0x411CE80Au);
            v131 = 0;
            v150 = 0;
            do
            {
              v151 = 0.02;
              if (v145)
              {
                v152 = *sub_19B5D6480((a1 + 1216), v145);
                v151 = v152 - *sub_19B5D6480((a1 + 1216), v145 - 1);
              }

              v153 = sub_19B5D669C((a1 + 2424), v145);
              v154.i32[0] = *(v153 + 4);
              v155 = v151;
              v154.i32[1] = *(v153 + 2);
              v282 = v154;
              v287 = v155;
              v156 = *sub_19B5BFE1C((a1 + 4448), v145);
              v157 = *(sub_19B5D6480((a1 + 1216), v145) + 4);
              v158 = sub_19B5D6480((a1 + 1216), v145);
              v147 = vadd_f32(v147, vmul_n_f32(v282, v287));
              v148 = v148 + v156 * v151;
              v159 = vmul_n_f32(v150, v287);
              v150 = vadd_f32(v150, vmul_n_f32(vmul_f32(v157, v149), v287));
              v131 = vadd_f32(v131, vadd_f32(v159, vmul_n_f32(vmul_n_f32(vmul_f32(vmul_f32(v158[1], 0x3F0000003F000000), v149), v287), v287)));
              ++v145;
            }

            while (v146 != v145);
            v130 = vmul_f32(v147, vdup_n_s32(0x42652EE1u));
            v286 = (v148 * 57.296);
          }

          else
          {
            v130 = 0;
            v286 = 0.0;
            v131 = 0;
          }

          v279 = *sub_19B5D6480((a1 + 1216), v129);
          v272 = *sub_19B5D6480((a1 + 1216), v128);
          v160 = sqrtf(vaddv_f32(vmul_f32(v131, v131)));
          v283 = vcvtq_f64_f32(vabs_f32(v130));
          *&v294[24] = v283;
          *&v294[40] = v160;
          buf[0] = 1;
          *&buf[20] = 0;
          *&buf[12] = 0;
          *&buf[28] = 0x400000000;
          v161 = *(a1 + 1218);
          v162 = 1.0;
          if (*(a1 + 1220) == v161)
          {
            v162 = 0.0;
            if (v161 >= 2)
            {
              v163 = 1;
              do
              {
                v164 = *(sub_19B5D6480((a1 + 1216), v163) + 4);
                v165 = v163 - 1;
                *v313 = v164 - *(sub_19B5D6480((a1 + 1216), v165) + 4);
                sub_19B5BC034(buf, v313);
                if (buf[0] == 1)
                {
                  sub_19B5BE7E0(buf);
                }

                v166 = *&buf[8];
                if (*&buf[8] < 0.0)
                {
                  v166 = 0.0;
                }

                if (v166 <= 0.003)
                {
                  v167 = 0.0;
                }

                else
                {
                  v167 = v166 + -0.003;
                }

                v162 = v162 + v167;
                v163 = v165 + 2;
              }

              while (v163 < *(a1 + 1218));
            }
          }

          v168 = *(a1 + 3634);
          v169 = 0.0;
          if (*(a1 + 3636) == v168 && (v168 - 17) <= 0xFFFFFFFFFFFFFFF6)
          {
            v170 = 0;
            v171 = 8;
            v172 = 9;
            do
            {
              v173 = *sub_19B5BFE1C((a1 + 3632), v171);
              v174 = v172;
              v175 = 7;
              while (1)
              {
                v176 = 0.0;
                if (v173 < *sub_19B5BFE1C((a1 + 3632), v170 + v175) || v173 < *sub_19B5BFE1C((a1 + 3632), v174))
                {
                  break;
                }

                --v175;
                ++v174;
                if (v175 == 3)
                {
                  v177 = 0;
                  v178 = 0;
                  v179 = v173 + -0.5;
                  v180 = v172;
                  v181 = 7;
                  while (1)
                  {
                    v178 |= v179 > *sub_19B5BFE1C((a1 + 3632), v170 + v181);
                    v177 |= v179 > *sub_19B5BFE1C((a1 + 3632), v180);
                    if (v178 & v177)
                    {
                      break;
                    }

                    --v181;
                    ++v180;
                    if (v181 == -1)
                    {
                      goto LABEL_222;
                    }
                  }

                  v176 = v173;
                  break;
                }
              }

LABEL_222:
              v169 = v169 + v176;
              ++v171;
              ++v172;
              ++v170;
            }

            while (v171 < *(a1 + 3634) - 8);
          }

          v182 = 0;
          v183 = -1.0;
          if (v162 < 1.0)
          {
            v183 = v169;
          }

          v184 = v162;
          v185 = v183;
          *&v295 = v162;
          *(&v295 + 1) = v183;
          v186 = 1.0;
          do
          {
            LOBYTE(v187) = 0;
            while (1)
            {
              v187 = v187;
              if (*(*(a1 + 5864 + 8 * v182) + 8 * v187) > *&v294[8 * v182])
              {
                break;
              }

              LOBYTE(v187) = v187 + 1;
              if (dword_19B7B7C70[v182] <= v187)
              {
                v187 = v187;
                break;
              }
            }

            v186 = v186 * *(*(a1 + 5800 + 8 * v182++) + 8 * v187);
          }

          while (v182 != 8);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
          }

          v188 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134221056;
            *&buf[4] = a3;
            *&buf[12] = 2048;
            *&buf[14] = v186;
            *&buf[22] = 2048;
            *&buf[24] = v276;
            *&buf[32] = 2048;
            *&buf[34] = v275;
            v297 = 2048;
            *v298 = v274;
            *&v298[8] = 2048;
            *&v298[10] = v283.f64[0];
            v299 = 2048;
            v300 = v283.f64[1];
            v301 = 2048;
            v302 = v160;
            v303 = 2048;
            v304 = v286;
            v305 = 2048;
            v306 = a3;
            v307 = 2048;
            v308 = (v129 - LODWORD(v273) + 2) / (v279 - v272);
            v309 = 2048;
            v310 = v184;
            v311 = 2048;
            v312 = v185;
            _os_log_impl(&dword_19B41C000, v188, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] stepLLR,%f,llr,%f,kTimeSinceLastStepSec,%f,kImpulseDurationSec,%f,kDeltaInertialZVel,%f,kThetaRollFaceDegrees,%f,kThetaPitchFaceDegrees,%f,kHorizontalDisplacement,%f,yawRotationAmountDegrees,%f,sensorTime,%f,bufferSampleRate,%f,peakiness,%f,bobbiness,%f\n", buf, 0x84u);
          }

          v189 = sub_19B420058();
          if (*(v189 + 160) > 1 || *(v189 + 164) > 1 || *(v189 + 168) > 1 || *(v189 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            *v313 = 134221056;
            *&v313[4] = a3;
            *&v313[12] = 2048;
            *&v313[14] = v186;
            v314 = 2048;
            v315 = v276;
            v316 = 2048;
            *v317 = v275;
            *&v317[8] = 2048;
            *v318 = v274;
            *&v318[8] = 2048;
            *&v318[10] = v283.f64[0];
            v319 = 2048;
            v320 = v283.f64[1];
            v321 = 2048;
            v322 = v160;
            v323 = 2048;
            v324 = v286;
            v325 = 2048;
            v326 = a3;
            v327 = 2048;
            v328 = (v129 - LODWORD(v273) + 2) / (v279 - v272);
            v329 = 2048;
            v330 = v184;
            v331 = 2048;
            v332 = v185;
            LODWORD(v268) = 132;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[AccessoryStepDetector] stepLLR,%f,llr,%f,kTimeSinceLastStepSec,%f,kImpulseDurationSec,%f,kDeltaInertialZVel,%f,kThetaRollFaceDegrees,%f,kThetaPitchFaceDegrees,%f,kHorizontalDisplacement,%f,yawRotationAmountDegrees,%f,sensorTime,%f,bufferSampleRate,%f,peakiness,%f,bobbiness,%f\n", COERCE_DOUBLE(v313), v268, v269, v271, v272, v273, v274, v275, v276, v277, v278, v279, v283.f64[0]);
            v191 = v190;
            sub_19B6BB7CC("Generic", 1, 0, 2, "double CMAccessoryStepDetector::computeStepLikelihood(const AggAccelSample &, const double, const double, const double) const", "CoreLocation: %s\n", v190);
            if (v191 != buf)
            {
              free(v191);
            }
          }

          if (v186 <= 1.0)
          {
            *(a1 + 4844) = 2;
          }

          else
          {
            v192 = v278;
            if (*(a1 + 3) != 1)
            {
              *(a1 + 4844) = 2;
              v207 = HIDWORD(v277);
LABEL_328:
              *(a1 + 4836) = 1;
              *(a1 + 4848) = v192;
              *(a1 + 4856) = v271;
              *(a1 + 4864) = v207;
              *(a1 + 4896) = v192;
              sub_19B5D6C44((a1 + 4904), (a1 + 4896));
              if (*(a1 + 4908) == *(a1 + 4906))
              {
                v255 = *(a1 + 4896) - *(a1 + 8 * *(a1 + 4904) + 4912);
                if (v255 < 0.0)
                {
                  if (qword_1EAFE2998 != -1)
                  {
                    dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                  }

                  v256 = off_1EAFE29A0;
                  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v256, OS_LOG_TYPE_ERROR, "[AccessoryStepDetector] Steps in _endImpulseTimestampHistory have times going backwards", buf, 2u);
                  }

                  v257 = sub_19B420058();
                  if ((*(v257 + 160) & 0x80000000) == 0 || (*(v257 + 164) & 0x80000000) == 0 || (*(v257 + 168) & 0x80000000) == 0 || *(v257 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE2998 != -1)
                    {
                      dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                    }

                    *v313 = 0;
                    LODWORD(v268) = 2;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[AccessoryStepDetector] Steps in _endImpulseTimestampHistory have times going backwards", v313, *&v268);
                    v259 = v258;
                    sub_19B6BB7CC("Generic", 1, 0, 0, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v258);
                    if (v259 != buf)
                    {
                      free(v259);
                    }
                  }
                }

                if (v255 <= 5.0)
                {
                  *a1 = 1;
                  sub_19B5D5EC8(a1);
                  *(a1 + 5944) = a3;
                }
              }

              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              v260 = off_1EAFE29A0;
              if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = v278;
                _os_log_impl(&dword_19B41C000, v260, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] endImpulse,time,%f", buf, 0xCu);
              }

              v261 = sub_19B420058();
              if (*(v261 + 160) > 1 || *(v261 + 164) > 1 || *(v261 + 168) > 1 || *(v261 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
                }

                *v313 = 134217984;
                *&v313[4] = v278;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[AccessoryStepDetector] endImpulse,time,%f", COERCE_DOUBLE(v313));
                v263 = v262;
                sub_19B6BB7CC("Generic", 1, 0, 2, "CMAccessoryStepDetector::Impulse CMAccessoryStepDetector::feedImuData(const CMRelDM::IMUData *const, const double)", "CoreLocation: %s\n", v262);
                if (v263 != buf)
                {
                  free(v263);
                }
              }

              v83 = NAN;
              goto LABEL_256;
            }

            v193 = vabdd_f64(*(&v277 + 1), *(a1 + 4888));
            if (v193 <= 0.4)
            {
              v194 = -1;
            }

            else
            {
              v194 = 2;
            }

            *v313 = 0x3200000000;
            if (*(a1 + 4938))
            {
              v195 = *(a1 + 4938) + *(a1 + 4936) - 1;
              v196 = *(a1 + 4940);
              if (v195 < v196)
              {
                v196 = 0;
              }

              v197 = *(a1 + 8 * (v195 - v196) + 4944);
            }

            else
            {
              v197 = 0.0;
            }

            if (*(a1 + 10))
            {
              v217 = 0;
              v218 = 0;
              v219 = 0.0;
              do
              {
                if (v197 + -0.4 <= *sub_19B5D5F28((a1 + 8), v217) && *sub_19B5D5F28((a1 + 8), v217) <= v197)
                {
                  v220 = *(sub_19B5D5F28((a1 + 8), v217) + 2);
                  v221 = *(sub_19B5D5F28((a1 + 8), v217) + 3);
                  *buf = __PAIR64__(*(sub_19B5D5F28((a1 + 8), v217) + 4), COERCE_UNSIGNED_INT(sqrtf((v220 * v220) + (v221 * v221))));
                  *&buf[8] = 0;
                  sub_19B5BE720(v313, buf);
                  v218 = vadd_f32(v218, *buf);
                  v219 = v219 + *&buf[8];
                }

                ++v217;
              }

              while (v217 < *(a1 + 10));
              v222 = *&v313[2];
              v223 = *v313;
              v224 = *&v313[4];
              LODWORD(v276) = *&v313[12 * *v313 + 8];
            }

            else
            {
              v222 = 0;
              v223 = 0;
              v218 = 0;
              v219 = 0.0;
              v224 = 50;
            }

            v225 = v223 + v222 - 1;
            if (v225 < v224)
            {
              v224 = 0;
            }

            v226 = &v313[12 * (v225 - v224) + 8];
            v280 = *v226;
            v284 = v226[1];
            v227 = *&v313[12 * v223 + 12];
            v228 = 0.0;
            v229 = v222;
            if (v222 >= 2)
            {
              v230 = 1;
              do
              {
                v231 = *sub_19B5BEC4C(v313, v230);
                v232 = v230 - 1;
                v233 = *sub_19B5BEC4C(v313, v232++);
                v234 = *(sub_19B5BEC4C(v313, v232--) + 1);
                v235 = sub_19B5BEC4C(v313, v232);
                v228 = v228 + sqrt((v231 - v233) * (v231 - v233) + (v234 - *(v235 + 1)) * (v234 - *(v235 + 1)));
                v229 = *&v313[2];
                v230 = v232 + 2;
              }

              while (v230 < *&v313[2]);
            }

            v236.i32[1] = 0;
            memset(v294, 0, 36);
            v192 = v278;
            if (v229)
            {
              v237 = 0;
              *v236.i32 = v222;
              v238 = vdiv_f32(v218, vdup_lane_s32(v236, 0));
              v239 = v219 / v222;
              do
              {
                v240 = sub_19B5BEC4C(v313, v237);
                v241 = v240[1].f32[0] - v239;
                v292 = vsub_f32(*v240, v238);
                v293 = v241;
                sub_19B5DB70C(&v292, buf);
                for (j = 0; j != 9; ++j)
                {
                  *&v294[4 * j] = sub_19B5DB794(buf, j) + *&v294[4 * j];
                }

                ++v237;
              }

              while (v237 < *&v313[2]);
            }

            *buf = *v294;
            *&buf[16] = *&v294[16];
            *&buf[32] = *&v294[32];
            v292.i32[0] = sub_19B5DB98C(buf, v291);
            v292.i32[1] = v243;
            v293 = v244;
            *buf = &v292;
            *&buf[8] = v291;
            sub_19B5DBFAC(buf, 0, 1uLL);
            sub_19B5DBFAC(buf, 0, 2uLL);
            sub_19B5DBFAC(buf, 1uLL, 2uLL);
            v245 = sqrtf(((v280 - *&v276) * (v280 - *&v276)) + ((v284 - v227) * (v284 - v227)));
            v246 = fabsf(atanf(v291[1] / v291[0]));
            v247 = v228 / v245 < 1.22;
            v248 = v193 > 0.35;
            if (v246 >= 0.785398157)
            {
              v247 = 0;
            }

            v249 = v248 && v247;
            if (v248 && v247)
            {
              v250 = 1;
            }

            else
            {
              v250 = v194;
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
            }

            v251 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219264;
              *&buf[4] = v228;
              *&buf[12] = 2048;
              *&buf[14] = v245;
              *&buf[22] = 2048;
              *&buf[24] = v246 * 57.2957802;
              *&buf[32] = 2048;
              *&buf[34] = v193;
              v297 = 1024;
              *v298 = v250;
              *&v298[4] = 2048;
              *&v298[6] = a3;
              _os_log_impl(&dword_19B41C000, v251, OS_LOG_TYPE_DEBUG, "[AccessoryStepDetector] arcLength,%f,curveDistance,%f,firstLoftAngleDegrees,%f,aggAccelZDelta,%f,isFirstStep, %d,sensorTime,%f\n", buf, 0x3Au);
            }

            v252 = sub_19B420058();
            if (*(v252 + 160) > 1 || *(v252 + 164) > 1 || *(v252 + 168) > 1 || *(v252 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
              }

              *v294 = 134219264;
              *&v294[4] = v228;
              *&v294[12] = 2048;
              *&v294[14] = v245;
              *&v294[22] = 2048;
              *&v294[24] = v246 * 57.2957802;
              *&v294[32] = 2048;
              *&v294[34] = v193;
              *&v294[42] = 1024;
              *&v294[44] = v250;
              LOWORD(v295) = 2048;
              *(&v295 + 2) = a3;
              LODWORD(v268) = 58;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[AccessoryStepDetector] arcLength,%f,curveDistance,%f,firstLoftAngleDegrees,%f,aggAccelZDelta,%f,isFirstStep, %d,sensorTime,%f\n", COERCE_DOUBLE(v294), v268, v269, v271, LODWORD(v272), v273);
              v254 = v253;
              sub_19B6BB7CC("Generic", 1, 0, 2, "int CMAccessoryStepDetector::isFirstStep(const double, const double, const double) const", "CoreLocation: %s\n", v253);
              if (v254 != buf)
              {
                free(v254);
              }
            }

            *(a1 + 4844) = 2;
            v207 = HIDWORD(v277);
            if (v193 > 0.4 || v249)
            {
              goto LABEL_328;
            }
          }

          *(a1 + 4836) = 0;
          if (*(a1 + 4938))
          {
            --*(a1 + 4938);
          }

LABEL_255:
          v83 = NAN;
          goto LABEL_256;
        }
      }

      else
      {
        LODWORD(v72) = -1;
      }

LABEL_100:
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
      }

      v95 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        v96 = *(a1 + 1218);
        *buf = 67240448;
        *&buf[4] = v72;
        *&buf[8] = 2050;
        *&buf[10] = v96;
        _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_ERROR, "[AccessoryStepDetector] Error: Spatial sample buffer is starting at the end of the inertial buffer. startIndex:%{public}d size:%{public}zu", buf, 0x12u);
      }

      v97 = sub_19B420058();
      if ((*(v97 + 160) & 0x80000000) == 0 || (*(v97 + 164) & 0x80000000) == 0 || (*(v97 + 168) & 0x80000000) == 0 || *(v97 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E28E60);
        }

        v98 = *(a1 + 1218);
        *v313 = 67240448;
        *&v313[4] = v72;
        *&v313[8] = 2050;
        *&v313[10] = v98;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[AccessoryStepDetector] Error: Spatial sample buffer is starting at the end of the inertial buffer. startIndex:%{public}d size:%{public}zu", v313, 18);
        v100 = v99;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMAccessoryStepDetector::detectInflection(double, BOOL &, AggAccelSample &, BOOL &, AggAccelSample &) const", "CoreLocation: %s\n", v99);
        if (v100 != buf)
        {
          free(v100);
        }
      }

      v84 = 0;
      v87 = 0;
      v3.i32[0] = 0;
      v83 = NAN;
      goto LABEL_112;
    }
  }

  return NAN;
}

os_log_t sub_19B5D95A4()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B5D95D4(unint64_t result, __int128 *a2, unsigned int (**a3)(__n128 *, __n128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = a2 - 72;
  v12 = result;
  v333 = a2;
  while (1)
  {
    result = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v230 = *a3;
      v231 = *(a2 - 24);
      v341 = *(a2 - 1);
      v340 = v231;
      v232 = *result;
      v339 = *(result + 16);
      v338 = v232;
      if (!v230(&v340, &v338))
      {
        return;
      }

LABEL_111:
      v239 = *result;
      v341 = *(result + 16);
      v340 = v239;
      v240 = *v9;
      *(result + 16) = v9[1].n128_u32[0];
      *result = v240;
      v241 = v340;
      v9[1].n128_u32[0] = v341;
      goto LABEL_112;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v242 = (result + 24);
      v243 = result == a2 || v242 == a2;
      v244 = v243;
      if (a5)
      {
        if ((v244 & 1) == 0)
        {
          v245 = 0;
          v246 = result;
          do
          {
            v247 = v246;
            v246 = v242;
            v248 = *a3;
            v249 = *v246;
            v341 = *(v246 + 16);
            v340 = v249;
            v250 = *v247;
            v339 = *(v247 + 16);
            v338 = v250;
            if (v248(&v340, &v338))
            {
              v251 = *v246;
              v341 = *(v246 + 16);
              v340 = v251;
              v252 = v245;
              while (1)
              {
                v253 = result + v252;
                *(v253 + 24) = *(result + v252);
                *(v253 + 40) = *(result + v252 + 16);
                if (!v252)
                {
                  break;
                }

                v254 = *a3;
                v338 = v340;
                v339 = v341;
                v255 = *(v253 - 24);
                v337 = *(v253 - 8);
                v336 = v255;
                v252 -= 24;
                if (!v254(&v338, &v336))
                {
                  v256 = result + v252 + 24;
                  goto LABEL_129;
                }
              }

              v256 = result;
LABEL_129:
              v257 = v340;
              *(v256 + 16) = v341;
              *v256 = v257;
              a2 = v333;
            }

            v242 = (v246 + 24);
            v245 += 24;
          }

          while ((v246 + 24) != a2);
        }
      }

      else if ((v244 & 1) == 0)
      {
        do
        {
          v308 = result;
          result = v242;
          v309 = *a3;
          v310 = *result;
          v341 = *(result + 16);
          v340 = v310;
          v311 = *v308;
          v339 = *(v308 + 16);
          v338 = v311;
          if (v309(&v340, &v338))
          {
            v312 = *result;
            v341 = *(result + 16);
            v340 = v312;
            v313 = result;
            do
            {
              v314 = v313 - 24;
              *v313 = *(v313 - 24);
              *(v313 + 16) = *(v313 - 8);
              v315 = *a3;
              v338 = v340;
              v339 = v341;
              v316 = *(v313 - 48);
              v337 = *(v313 - 32);
              v336 = v316;
              v317 = v315(&v338, &v336);
              v313 = v314;
            }

            while (v317);
            v318 = v340;
            *(v314 + 16) = v341;
            *v314 = v318;
            a2 = v333;
          }

          v242 = (result + 24);
        }

        while ((result + 24) != a2);
      }

      return;
    }

    if (!a4)
    {
      if (result != a2)
      {
        v258 = (v14 - 2) >> 1;
        v332 = v258;
        do
        {
          v259 = v258;
          if (v332 >= v258)
          {
            v260 = (2 * v258) | 1;
            v261 = result + 24 * v260;
            if (2 * v258 + 2 < v14)
            {
              v262 = *a3;
              v263 = *v261;
              v341 = *(v261 + 16);
              v340 = v263;
              v264 = *(v261 + 24);
              v339 = *(v261 + 40);
              v338 = v264;
              if (v262(&v340, &v338))
              {
                v261 += 24;
                v260 = 2 * v259 + 2;
              }
            }

            v265 = result + 24 * v259;
            v266 = *a3;
            v267 = *v261;
            v341 = *(v261 + 16);
            v340 = v267;
            v268 = *v265;
            v339 = *(v265 + 16);
            v338 = v268;
            a2 = v333;
            if (!v266(&v340, &v338))
            {
              v269 = *v265;
              v341 = *(v265 + 16);
              v340 = v269;
              do
              {
                v270 = v261;
                v271 = *v261;
                *(v265 + 16) = *(v261 + 16);
                *v265 = v271;
                if (v332 < v260)
                {
                  break;
                }

                v272 = (2 * v260) | 1;
                v261 = result + 24 * v272;
                v273 = 2 * v260 + 2;
                if (v273 < v14)
                {
                  v274 = *a3;
                  v275 = *v261;
                  v339 = *(v261 + 16);
                  v338 = v275;
                  v276 = *(v261 + 24);
                  v337 = *(v261 + 40);
                  v336 = v276;
                  if (v274(&v338, &v336))
                  {
                    v261 += 24;
                    v272 = v273;
                  }
                }

                v277 = *a3;
                v278 = *v261;
                v339 = *(v261 + 16);
                v338 = v278;
                v336 = v340;
                v337 = v341;
                v265 = v270;
                v260 = v272;
              }

              while (!v277(&v338, &v336));
              v279 = v340;
              *(v270 + 16) = v341;
              *v270 = v279;
              a2 = v333;
            }
          }

          v258 = v259 - 1;
        }

        while (v259);
        v280 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v281 = 0;
          v335 = *(result + 16);
          v334 = *result;
          v282 = result;
          do
          {
            v283 = v282 + 24 * v281;
            v284 = v283 + 24;
            v285 = (2 * v281) | 1;
            v286 = 2 * v281 + 2;
            if (v286 < v280)
            {
              v287 = *a3;
              v288 = *v284;
              v341 = *(v283 + 40);
              v340 = v288;
              v289 = v283 + 48;
              v290 = *(v283 + 48);
              v339 = *(v283 + 64);
              v338 = v290;
              if (v287(&v340, &v338))
              {
                v284 = v289;
                v285 = v286;
              }
            }

            v291 = *v284;
            *(v282 + 16) = *(v284 + 16);
            *v282 = v291;
            v282 = v284;
            v281 = v285;
          }

          while (v285 <= (v280 - 2) / 2);
          v292 = (a2 - 24);
          if (v284 == (a2 - 24))
          {
            v294 = (a2 - 24);
            *(v284 + 16) = v335;
            *v284 = v334;
          }

          else
          {
            v293 = *v292;
            *(v284 + 16) = *(a2 - 2);
            *v284 = v293;
            *(a2 - 2) = v335;
            v294 = (a2 - 24);
            *v292 = v334;
            v295 = v284 - result + 24;
            if (v295 >= 25)
            {
              v296 = (-2 - 0x5555555555555555 * (v295 >> 3)) >> 1;
              v297 = result + 24 * v296;
              v298 = *a3;
              v299 = *v297;
              v341 = *(v297 + 16);
              v340 = v299;
              v300 = *v284;
              v339 = *(v284 + 16);
              v338 = v300;
              if (v298(&v340, &v338))
              {
                v301 = *v284;
                v341 = *(v284 + 16);
                v340 = v301;
                do
                {
                  v302 = v297;
                  v303 = *v297;
                  *(v284 + 16) = *(v297 + 16);
                  *v284 = v303;
                  if (!v296)
                  {
                    break;
                  }

                  v296 = (v296 - 1) >> 1;
                  v297 = result + 24 * v296;
                  v304 = *a3;
                  v305 = *v297;
                  v339 = *(v297 + 16);
                  v338 = v305;
                  v336 = v340;
                  v337 = v341;
                  v284 = v302;
                }

                while (v304(&v338, &v336));
                v306 = v340;
                *(v302 + 16) = v341;
                *v302 = v306;
              }
            }
          }

          v307 = v280-- <= 2;
          a2 = v294;
        }

        while (!v307);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = result + 24 * (v14 >> 1);
    v17 = *a3;
    if (v13 >= 0xC01)
    {
      v18 = *v16;
      v341 = *(v16 + 16);
      v340 = v18;
      v19 = *result;
      v339 = *(result + 16);
      v338 = v19;
      v20 = v17(&v340, &v338);
      v21 = *a3;
      if (v20)
      {
        v22 = *v9;
        v341 = v9[1].n128_u64[0];
        v340 = v22;
        v23 = *v16;
        v339 = *(v16 + 16);
        v338 = v23;
        if (v21(&v340, &v338))
        {
          v24 = *result;
          v341 = *(result + 16);
          v340 = v24;
          v25 = *v9;
          *(result + 16) = v9[1].n128_u32[0];
          *result = v25;
          goto LABEL_26;
        }

        v56 = *result;
        v341 = *(result + 16);
        v340 = v56;
        v57 = *v16;
        *(result + 16) = *(v16 + 16);
        *result = v57;
        v58 = v340;
        *(v16 + 16) = v341;
        *v16 = v58;
        v59 = *a3;
        v60 = *v9;
        v341 = v9[1].n128_u64[0];
        v340 = v60;
        v61 = *v16;
        v339 = *(v16 + 16);
        v338 = v61;
        if (v59(&v340, &v338))
        {
          v62 = *v16;
          v341 = *(v16 + 16);
          v340 = v62;
          v63 = *v9;
          *(v16 + 16) = v9[1].n128_u32[0];
          *v16 = v63;
LABEL_26:
          v64 = v340;
          v9[1].n128_u32[0] = v341;
          *v9 = v64;
        }
      }

      else
      {
        v34 = *v9;
        v341 = v9[1].n128_u64[0];
        v340 = v34;
        v35 = *v16;
        v339 = *(v16 + 16);
        v338 = v35;
        if (v21(&v340, &v338))
        {
          v36 = *v16;
          v341 = *(v16 + 16);
          v340 = v36;
          v37 = *v9;
          *(v16 + 16) = v9[1].n128_u32[0];
          *v16 = v37;
          v38 = v340;
          v9[1].n128_u32[0] = v341;
          *v9 = v38;
          v39 = *a3;
          v40 = *v16;
          v341 = *(v16 + 16);
          v340 = v40;
          v41 = *result;
          v339 = *(result + 16);
          v338 = v41;
          if (v39(&v340, &v338))
          {
            v42 = *result;
            v341 = *(result + 16);
            v340 = v42;
            v43 = *v16;
            *(result + 16) = *(v16 + 16);
            *result = v43;
            v44 = v340;
            *(v16 + 16) = v341;
            *v16 = v44;
          }
        }
      }

      v65 = result + 24 * v15;
      v66 = v65 - 24;
      v67 = *a3;
      v68 = *(v65 - 24);
      v341 = *(v65 - 8);
      v340 = v68;
      v338 = *(result + 24);
      v339 = *(result + 40);
      v69 = v67(&v340, &v338);
      v70 = *a3;
      if (v69)
      {
        v71 = *v10;
        v341 = *(v10 + 2);
        v340 = v71;
        v72 = *v66;
        v339 = *(v66 + 16);
        v338 = v72;
        if (v70(&v340, &v338))
        {
          v73 = *(result + 24);
          v340 = v73;
          v341 = *(result + 40);
          v74 = v341;
          v75 = *(v10 + 4);
          *(result + 24) = *v10;
          *(result + 40) = v75;
          *(v10 + 4) = v74;
          goto LABEL_38;
        }

        v340 = *(result + 24);
        v95 = v340;
        v341 = *(result + 40);
        v96 = v341;
        v97 = *(v66 + 16);
        *(result + 24) = *v66;
        *(result + 40) = v97;
        *(v66 + 16) = v96;
        *v66 = v95;
        v98 = *a3;
        v99 = *v10;
        v341 = *(v10 + 2);
        v340 = v99;
        v100 = *v66;
        v339 = *(v66 + 16);
        v338 = v100;
        if (v98(&v340, &v338))
        {
          v101 = *v66;
          v341 = *(v66 + 16);
          v340 = v101;
          v102 = *v10;
          *(v66 + 16) = *(v10 + 4);
          *v66 = v102;
          v73 = v340;
          *(v10 + 4) = v341;
LABEL_38:
          *v10 = v73;
        }
      }

      else
      {
        v76 = *v10;
        v341 = *(v10 + 2);
        v340 = v76;
        v77 = *v66;
        v339 = *(v66 + 16);
        v338 = v77;
        if (v70(&v340, &v338))
        {
          v78 = *v66;
          v341 = *(v66 + 16);
          v340 = v78;
          v79 = *v10;
          *(v66 + 16) = *(v10 + 4);
          *v66 = v79;
          v80 = v340;
          *(v10 + 4) = v341;
          *v10 = v80;
          v81 = *a3;
          v82 = *v66;
          v341 = *(v66 + 16);
          v340 = v82;
          v338 = *(result + 24);
          v339 = *(result + 40);
          if (v81(&v340, &v338))
          {
            v340 = *(result + 24);
            v83 = v340;
            v341 = *(result + 40);
            v84 = v341;
            v85 = *(v66 + 16);
            *(result + 24) = *v66;
            *(result + 40) = v85;
            *(v66 + 16) = v84;
            *v66 = v83;
          }
        }
      }

      v103 = result + 24 * v15;
      v104 = *a3;
      v105 = *(v103 + 24);
      v341 = *(v103 + 40);
      v340 = v105;
      v338 = *(result + 48);
      v339 = *(result + 64);
      v106 = v104(&v340, &v338);
      v107 = *a3;
      if (v106)
      {
        v108 = *v11;
        v341 = *(v11 + 2);
        v340 = v108;
        v109 = *(v103 + 24);
        v339 = *(v103 + 40);
        v338 = v109;
        if (v107(&v340, &v338))
        {
          v110 = *(result + 48);
          v340 = v110;
          v341 = *(result + 64);
          v111 = v341;
          v112 = *(v11 + 4);
          *(result + 48) = *v11;
          *(result + 64) = v112;
          *(v11 + 4) = v111;
          goto LABEL_47;
        }

        v340 = *(result + 48);
        v123 = v340;
        v341 = *(result + 64);
        v124 = v341;
        v125 = *(v103 + 40);
        *(result + 48) = *(v103 + 24);
        *(result + 64) = v125;
        *(v103 + 40) = v124;
        *(v103 + 24) = v123;
        v126 = *a3;
        v127 = *v11;
        v341 = *(v11 + 2);
        v340 = v127;
        v128 = *(v103 + 24);
        v339 = *(v103 + 40);
        v338 = v128;
        if (v126(&v340, &v338))
        {
          v129 = *(v103 + 24);
          v341 = *(v103 + 40);
          v340 = v129;
          v130 = *v11;
          *(v103 + 40) = *(v11 + 4);
          *(v103 + 24) = v130;
          v110 = v340;
          *(v11 + 4) = v341;
LABEL_47:
          *v11 = v110;
        }
      }

      else
      {
        v113 = *v11;
        v341 = *(v11 + 2);
        v340 = v113;
        v114 = *(v103 + 24);
        v339 = *(v103 + 40);
        v338 = v114;
        if (v107(&v340, &v338))
        {
          v115 = *(v103 + 24);
          v341 = *(v103 + 40);
          v340 = v115;
          v116 = *v11;
          *(v103 + 40) = *(v11 + 4);
          *(v103 + 24) = v116;
          v117 = v340;
          *(v11 + 4) = v341;
          *v11 = v117;
          v118 = *a3;
          v119 = *(v103 + 24);
          v341 = *(v103 + 40);
          v340 = v119;
          v338 = *(result + 48);
          v339 = *(result + 64);
          if (v118(&v340, &v338))
          {
            v340 = *(result + 48);
            v120 = v340;
            v341 = *(result + 64);
            v121 = v341;
            v122 = *(v103 + 40);
            *(result + 48) = *(v103 + 24);
            *(result + 64) = v122;
            *(v103 + 40) = v121;
            *(v103 + 24) = v120;
          }
        }
      }

      v131 = *a3;
      v132 = *v16;
      v341 = *(v16 + 16);
      v340 = v132;
      v133 = *v66;
      v339 = *(v66 + 16);
      v338 = v133;
      v134 = v131(&v340, &v338);
      v135 = *a3;
      if (v134)
      {
        v136 = *(v103 + 24);
        v341 = *(v103 + 40);
        v340 = v136;
        v137 = *v16;
        v339 = *(v16 + 16);
        v338 = v137;
        if (v135(&v340, &v338))
        {
          v138 = *v66;
          v341 = *(v66 + 16);
          v340 = v138;
          *v66 = *(v103 + 24);
          *(v66 + 16) = *(v103 + 40);
          goto LABEL_56;
        }

        v148 = *v66;
        v341 = *(v66 + 16);
        v340 = v148;
        *v66 = *v16;
        *(v66 + 16) = *(v16 + 16);
        v149 = v340;
        *(v16 + 16) = v341;
        *v16 = v149;
        v150 = *a3;
        v151 = *(v103 + 24);
        v341 = *(v103 + 40);
        v340 = v151;
        v152 = *v16;
        v339 = *(v16 + 16);
        v338 = v152;
        if (v150(&v340, &v338))
        {
          v153 = *v16;
          v341 = *(v16 + 16);
          v340 = v153;
          *v16 = *(v103 + 24);
          *(v16 + 16) = *(v103 + 40);
LABEL_56:
          v154 = v340;
          *(v103 + 40) = v341;
          *(v103 + 24) = v154;
        }
      }

      else
      {
        v139 = *(v103 + 24);
        v341 = *(v103 + 40);
        v340 = v139;
        v140 = *v16;
        v339 = *(v16 + 16);
        v338 = v140;
        if (v135(&v340, &v338))
        {
          v141 = *v16;
          v341 = *(v16 + 16);
          v340 = v141;
          *v16 = *(v103 + 24);
          *(v16 + 16) = *(v103 + 40);
          v142 = v340;
          *(v103 + 40) = v341;
          *(v103 + 24) = v142;
          v143 = *a3;
          v144 = *v16;
          v341 = *(v16 + 16);
          v340 = v144;
          v145 = *v66;
          v339 = *(v66 + 16);
          v338 = v145;
          if (v143(&v340, &v338))
          {
            v146 = *v66;
            v341 = *(v66 + 16);
            v340 = v146;
            *v66 = *v16;
            *(v66 + 16) = *(v16 + 16);
            v147 = v340;
            *(v16 + 16) = v341;
            *v16 = v147;
          }
        }
      }

      v155 = *result;
      v341 = *(result + 16);
      v340 = v155;
      v156 = *v16;
      *(result + 16) = *(v16 + 16);
      *result = v156;
      v157 = v340;
      *(v16 + 16) = v341;
      *v16 = v157;
      goto LABEL_58;
    }

    v26 = *result;
    v341 = *(result + 16);
    v340 = v26;
    v27 = *v16;
    v339 = *(v16 + 16);
    v338 = v27;
    v28 = v17(&v340, &v338);
    v29 = *a3;
    if (!v28)
    {
      v45 = *v9;
      v341 = v9[1].n128_u64[0];
      v340 = v45;
      v46 = *result;
      v339 = *(result + 16);
      v338 = v46;
      if (v29(&v340, &v338))
      {
        v47 = *result;
        v341 = *(result + 16);
        v340 = v47;
        v48 = *v9;
        *(result + 16) = v9[1].n128_u32[0];
        *result = v48;
        v49 = v340;
        v9[1].n128_u32[0] = v341;
        *v9 = v49;
        v50 = *a3;
        v51 = *result;
        v341 = *(result + 16);
        v340 = v51;
        v52 = *v16;
        v339 = *(v16 + 16);
        v338 = v52;
        if (v50(&v340, &v338))
        {
          v53 = *v16;
          v341 = *(v16 + 16);
          v340 = v53;
          v54 = *result;
          *(v16 + 16) = *(result + 16);
          *v16 = v54;
          v55 = v340;
          *(result + 16) = v341;
          *result = v55;
        }
      }

      goto LABEL_58;
    }

    v30 = *v9;
    v341 = v9[1].n128_u64[0];
    v340 = v30;
    v31 = *result;
    v339 = *(result + 16);
    v338 = v31;
    if (v29(&v340, &v338))
    {
      v32 = *v16;
      v341 = *(v16 + 16);
      v340 = v32;
      v33 = *v9;
      *(v16 + 16) = v9[1].n128_u32[0];
      *v16 = v33;
    }

    else
    {
      v86 = *v16;
      v341 = *(v16 + 16);
      v340 = v86;
      v87 = *result;
      *(v16 + 16) = *(result + 16);
      *v16 = v87;
      v88 = v340;
      *(result + 16) = v341;
      *result = v88;
      v89 = *a3;
      v90 = *v9;
      v341 = v9[1].n128_u64[0];
      v340 = v90;
      v91 = *result;
      v339 = *(result + 16);
      v338 = v91;
      if (!v89(&v340, &v338))
      {
        goto LABEL_58;
      }

      v92 = *result;
      v341 = *(result + 16);
      v340 = v92;
      v93 = *v9;
      *(result + 16) = v9[1].n128_u32[0];
      *result = v93;
    }

    v94 = v340;
    v9[1].n128_u32[0] = v341;
    *v9 = v94;
LABEL_58:
    --a4;
    if ((a5 & 1) != 0 || (v158 = *a3, v159 = *(result - 24), v341 = *(result - 8), v340 = v159, v160 = *result, v339 = *(result + 16), v338 = v160, v158(&v340, &v338)))
    {
      v161 = 0;
      v162 = *result;
      v339 = *(result + 16);
      v338 = v162;
      do
      {
        v163 = *a3;
        v164 = *(result + v161 + 24);
        v341 = *(result + v161 + 40);
        v340 = v164;
        v336 = v338;
        v337 = v339;
        v161 += 24;
      }

      while (v163(&v340, &v336));
      v165 = result + v161;
      v166 = v333;
      v243 = v161 == 24;
      a2 = v333;
      if (v243)
      {
        v171 = v333;
        while (v165 < v171)
        {
          v172 = *a3;
          v167 = (v171 - 24);
          v173 = *(v171 - 24);
          v341 = *(v171 - 1);
          v340 = v173;
          v336 = v338;
          v337 = v339;
          v174 = v172(&v340, &v336);
          v171 = v167;
          if (v174)
          {
            goto LABEL_70;
          }
        }

        v167 = v171;
      }

      else
      {
        do
        {
          v167 = (v166 - 24);
          v168 = *a3;
          v169 = *(v166 - 24);
          v341 = *(v166 - 1);
          v340 = v169;
          v336 = v338;
          v337 = v339;
          v170 = v168(&v340, &v336);
          v166 = v167;
        }

        while (!v170);
      }

LABEL_70:
      if (v165 >= v167)
      {
        v186 = (v165 - 24);
      }

      else
      {
        v175 = v165;
        v176 = v167;
        do
        {
          v177 = *v175;
          v341 = *(v175 + 16);
          v340 = v177;
          v178 = *v176;
          *(v175 + 16) = *(v176 + 4);
          *v175 = v178;
          v179 = v340;
          *(v176 + 4) = v341;
          *v176 = v179;
          do
          {
            v180 = *(v175 + 24);
            v181 = *(v175 + 40);
            v175 += 24;
            v182 = *a3;
            v340 = v180;
            v341 = v181;
            v336 = v338;
            v337 = v339;
          }

          while (v182(&v340, &v336));
          do
          {
            v183 = *(v176 - 24);
            v184 = *(v176 - 1);
            v176 = (v176 - 24);
            v185 = *a3;
            v341 = v184;
            v340 = v183;
            v336 = v338;
            v337 = v339;
          }

          while (!v185(&v340, &v336));
        }

        while (v175 < v176);
        v186 = (v175 - 24);
        a2 = v333;
      }

      if (v186 != result)
      {
        v187 = *v186;
        *(result + 16) = v186[1].n128_u32[0];
        *result = v187;
      }

      v188 = v338;
      v186[1].n128_u32[0] = v339;
      *v186 = v188;
      if (v165 < v167)
      {
        goto LABEL_83;
      }

      v189 = sub_19B5DB09C(result, v186, a3);
      v12 = &v186[1].n128_u64[1];
      if (sub_19B5DB09C(&v186[1].n128_i64[1], a2, a3))
      {
        a2 = v186;
        if (!v189)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v189)
      {
LABEL_83:
        sub_19B5D95D4(result, v186, a3, a4, a5 & 1);
        a5 = 0;
        v12 = &v186[1].n128_u64[1];
      }
    }

    else
    {
      v190 = *result;
      v339 = *(result + 16);
      v338 = v190;
      v191 = *a3;
      v192 = *result;
      v341 = *(result + 16);
      v340 = v192;
      v193 = *v9;
      v337 = v9[1].n128_u64[0];
      v336 = v193;
      v194 = v191(&v340, &v336);
      v195 = result;
      a2 = v333;
      if (v194)
      {
        do
        {
          v12 = v195 + 24;
          v196 = *a3;
          v340 = v338;
          v341 = v339;
          v336 = *(v195 + 24);
          v337 = *(v195 + 40);
          v197 = v196(&v340, &v336);
          v195 = v12;
        }

        while (!v197);
      }

      else
      {
        v198 = result + 24;
        do
        {
          v12 = v198;
          if (v198 >= v333)
          {
            break;
          }

          v199 = *a3;
          v340 = v338;
          v341 = v339;
          v200 = *v12;
          v337 = *(v12 + 16);
          v336 = v200;
          v201 = v199(&v340, &v336);
          v198 = v12 + 24;
        }

        while (!v201);
      }

      v202 = v333;
      if (v12 < v333)
      {
        v203 = v333;
        do
        {
          v202 = (v203 - 24);
          v204 = *a3;
          v340 = v338;
          v341 = v339;
          v205 = *(v203 - 24);
          v337 = *(v203 - 1);
          v336 = v205;
          v206 = v204(&v340, &v336);
          v203 = v202;
        }

        while (v206);
      }

      while (v12 < v202)
      {
        v207 = *v12;
        v341 = *(v12 + 16);
        v340 = v207;
        v208 = *v202;
        *(v12 + 16) = *(v202 + 4);
        *v12 = v208;
        v209 = v340;
        *(v202 + 4) = v341;
        *v202 = v209;
        do
        {
          v210 = *(v12 + 24);
          v211 = *(v12 + 40);
          v12 += 24;
          v212 = *a3;
          v340 = v338;
          v341 = v339;
          v336 = v210;
          v337 = v211;
        }

        while (!v212(&v340, &v336));
        do
        {
          v340 = v338;
          v341 = v339;
          v213 = *(v202 - 24);
          v214 = *(v202 - 1);
          v202 = (v202 - 24);
          v215 = *a3;
          v337 = v214;
          v336 = v213;
        }

        while (v215(&v340, &v336));
      }

      v216 = (v12 - 24);
      if (v12 - 24 != result)
      {
        v217 = *v216;
        *(result + 16) = *(v12 - 8);
        *result = v217;
      }

      a5 = 0;
      v218 = v338;
      *(v12 - 8) = v339;
      *v216 = v218;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      sub_19B5DADB8(result, (result + 24), (result + 48), v9, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_19B5DADB8(result, (result + 24), (result + 48), (result + 72), a3);
      v219 = *a3;
      v220 = *(a2 - 24);
      v341 = *(a2 - 1);
      v340 = v220;
      v338 = *(result + 72);
      v339 = *(result + 88);
      if (v219(&v340, &v338))
      {
        v340 = *(result + 72);
        v221 = v340;
        v341 = *(result + 88);
        v222 = v341;
        v223 = v9[1].n128_u32[0];
        *(result + 72) = *v9;
        *(result + 88) = v223;
        v9[1].n128_u32[0] = v222;
        *v9 = v221;
        v224 = *a3;
        v340 = *(result + 72);
        v341 = *(result + 88);
        v338 = *(result + 48);
        v339 = *(result + 64);
        if (v224(&v340, &v338))
        {
          v225 = *(result + 64);
          v226 = *(result + 48);
          *(result + 48) = *(result + 72);
          *(result + 64) = *(result + 88);
          *(result + 72) = v226;
          *(result + 88) = v225;
          v227 = *a3;
          v340 = *(result + 48);
          v341 = *(result + 64);
          v338 = *(result + 24);
          v339 = *(result + 40);
          if (v227(&v340, &v338))
          {
            v228 = *(result + 40);
            v229 = *(result + 24);
            *(result + 24) = *(result + 48);
            *(result + 40) = *(result + 64);
            *(result + 48) = v229;
            *(result + 64) = v228;
LABEL_173:
            v323 = *a3;
            v340 = *(result + 24);
            v341 = *(result + 40);
            v324 = *result;
            v339 = *(result + 16);
            v338 = v324;
            if (v323(&v340, &v338))
            {
              v325 = *result;
              v341 = *(result + 16);
              v340 = v325;
              *result = *(result + 24);
              *(result + 16) = *(result + 40);
              *(result + 24) = v340;
              *(result + 40) = v341;
            }
          }
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v234 = *a3;
  v340 = *(result + 24);
  v341 = *(result + 40);
  v235 = *result;
  v339 = *(result + 16);
  v338 = v235;
  v236 = v234(&v340, &v338);
  v237 = *a3;
  if (v236)
  {
    v238 = *v9;
    v341 = v9[1].n128_u64[0];
    v340 = v238;
    v338 = *(result + 24);
    v339 = *(result + 40);
    if (v237(&v340, &v338))
    {
      goto LABEL_111;
    }

    v326 = *result;
    v341 = *(result + 16);
    v340 = v326;
    *result = *(result + 24);
    *(result + 16) = *(result + 40);
    *(result + 24) = v340;
    *(result + 40) = v341;
    v327 = *a3;
    v328 = *v9;
    v341 = v9[1].n128_u64[0];
    v340 = v328;
    v338 = *(result + 24);
    v339 = *(result + 40);
    if (!v327(&v340, &v338))
    {
      return;
    }

    v241 = *(result + 24);
    v340 = v241;
    v341 = *(result + 40);
    v329 = v341;
    v330 = v9[1].n128_u32[0];
    *(result + 24) = *v9;
    *(result + 40) = v330;
    v9[1].n128_u32[0] = v329;
LABEL_112:
    *v9 = v241;
    return;
  }

  v319 = *v9;
  v341 = v9[1].n128_u64[0];
  v340 = v319;
  v338 = *(result + 24);
  v339 = *(result + 40);
  if (v237(&v340, &v338))
  {
    v340 = *(result + 24);
    v320 = v340;
    v341 = *(result + 40);
    v321 = v341;
    v322 = v9[1].n128_u32[0];
    *(result + 24) = *v9;
    *(result + 40) = v322;
    v9[1].n128_u32[0] = v321;
    *v9 = v320;
    goto LABEL_173;
  }
}

__n128 sub_19B5DADB8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  v40 = *a1;
  v41 = a1[1].n128_u64[0];
  v11 = v10(&v42, &v40);
  v12 = *a5;
  if (v11)
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v13 = *a1;
      v14 = a1[1].n128_u64[0];
      v15 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v15;
LABEL_9:
      a3[1].n128_u32[0] = v14;
      *a3 = v13;
      goto LABEL_10;
    }

    v23 = *a1;
    v24 = a1[1].n128_u64[0];
    v25 = a2[1].n128_u32[0];
    *a1 = *a2;
    a1[1].n128_u32[0] = v25;
    a2[1].n128_u32[0] = v24;
    *a2 = v23;
    v26 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v26(&v42, &v40))
    {
      v13 = *a2;
      v14 = a2[1].n128_u64[0];
      v27 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v16 = *a2;
      v17 = a2[1].n128_u64[0];
      v18 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v18;
      a3[1].n128_u32[0] = v17;
      *a3 = v16;
      v19 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v19(&v42, &v40))
      {
        v20 = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v22;
        a2[1].n128_u32[0] = v21;
        *a2 = v20;
      }
    }
  }

LABEL_10:
  v28 = *a5;
  v42 = *a4;
  v43 = a4[1].n128_u64[0];
  v40 = *a3;
  v41 = a3[1].n128_u64[0];
  if (v28(&v42, &v40))
  {
    v30 = *a3;
    v31 = a3[1].n128_u64[0];
    v32 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v32;
    a4[1].n128_u32[0] = v31;
    *a4 = v30;
    v33 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v33(&v42, &v40))
    {
      v34 = *a2;
      v35 = a2[1].n128_u64[0];
      v36 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v36;
      a3[1].n128_u32[0] = v35;
      *a3 = v34;
      v37 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v37(&v42, &v40))
      {
        result = *a1;
        v38 = a1[1].n128_u64[0];
        v39 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v39;
        a2[1].n128_u32[0] = v38;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL sub_19B5DB09C(uint64_t a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v23 = &a2[-2].n128_i8[8];
        v24 = *a3;
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        v66 = *a1;
        v67 = *(a1 + 16);
        v25 = v24(&v68, &v66);
        v26 = *a3;
        if (v25)
        {
          v68 = *v23;
          v69 = *(v23 + 2);
          v66 = *(a1 + 24);
          v67 = *(a1 + 40);
          if (v26(&v68, &v66))
          {
            v27 = *a1;
            v28 = *(a1 + 16);
            v29 = *(v23 + 4);
            *a1 = *v23;
            *(a1 + 16) = v29;
          }

          else
          {
            v47 = *(a1 + 16);
            v48 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v48;
            *(a1 + 40) = v47;
            v49 = *a3;
            v68 = *v23;
            v69 = *(v23 + 2);
            v66 = *(a1 + 24);
            v67 = *(a1 + 40);
            if (!v49(&v68, &v66))
            {
              return 1;
            }

            v27 = *(a1 + 24);
            v28 = *(a1 + 40);
            v50 = *(v23 + 4);
            *(a1 + 24) = *v23;
            *(a1 + 40) = v50;
          }

          *(v23 + 4) = v28;
          *v23 = v27;
          return 1;
        }

        v68 = *v23;
        v69 = *(v23 + 2);
        v66 = *(a1 + 24);
        v67 = *(a1 + 40);
        if (!v26(&v68, &v66))
        {
          return 1;
        }

        v36 = *(a1 + 24);
        v37 = *(a1 + 40);
        v38 = *(v23 + 4);
        *(a1 + 24) = *v23;
        *(a1 + 40) = v38;
        *(v23 + 4) = v37;
        *v23 = v36;
        break;
      case 4:
        sub_19B5DADB8(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        sub_19B5DADB8(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v12 = *a3;
        v68 = *(a2 - 24);
        v69 = a2[-1].n128_u64[1];
        v66 = *(a1 + 72);
        v67 = *(a1 + 88);
        if (!v12(&v68, &v66))
        {
          return 1;
        }

        v13 = &a2[-2].n128_i8[8];
        v14 = *(a1 + 72);
        v15 = *(a1 + 88);
        v16 = a2[-1].n128_u32[2];
        *(a1 + 72) = *(a2 - 24);
        *(a1 + 88) = v16;
        *(v13 + 4) = v15;
        *v13 = v14;
        v17 = *a3;
        v68 = *(a1 + 72);
        v69 = *(a1 + 88);
        v66 = *(a1 + 48);
        v67 = *(a1 + 64);
        if (!v17(&v68, &v66))
        {
          return 1;
        }

        v18 = *(a1 + 64);
        v19 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v19;
        *(a1 + 88) = v18;
        v20 = *a3;
        v68 = *(a1 + 48);
        v69 = *(a1 + 64);
        v66 = *(a1 + 24);
        v67 = *(a1 + 40);
        if (!v20(&v68, &v66))
        {
          return 1;
        }

        v21 = *(a1 + 40);
        v22 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v22;
        *(a1 + 64) = v21;
        break;
      default:
        goto LABEL_16;
    }

    v39 = *a3;
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    v66 = *a1;
    v67 = *(a1 + 16);
    if (v39(&v68, &v66))
    {
      v40 = *(a1 + 16);
      v41 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v41;
      *(a1 + 40) = v40;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v68 = *(a2 - 24);
    v69 = a2[-1].n128_u64[1];
    v66 = *a1;
    v67 = *(a1 + 16);
    if (v7(&v68, &v66))
    {
      v8 = &a2[-2].n128_i8[8];
      v9 = *a1;
      v10 = *(a1 + 16);
      v11 = a2[-1].n128_u32[2];
      *a1 = *(a2 - 24);
      *(a1 + 16) = v11;
      *(v8 + 4) = v10;
      *v8 = v9;
    }

    return 1;
  }

LABEL_16:
  v30 = (a1 + 48);
  v31 = *a3;
  v68 = *(a1 + 24);
  v69 = *(a1 + 40);
  v66 = *a1;
  v67 = *(a1 + 16);
  v32 = v31(&v68, &v66);
  v33 = *a3;
  if (v32)
  {
    v68 = *v30;
    v69 = *(a1 + 64);
    v66 = *(a1 + 24);
    v67 = *(a1 + 40);
    if (v33(&v68, &v66))
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *v30;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v51 = *(a1 + 16);
      v52 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v52;
      *(a1 + 40) = v51;
      v53 = *a3;
      v68 = *v30;
      v69 = *(a1 + 64);
      v66 = *(a1 + 24);
      v67 = *(a1 + 40);
      if (!v53(&v68, &v66))
      {
        goto LABEL_33;
      }

      v34 = *(a1 + 40);
      v35 = *(a1 + 24);
      *(a1 + 24) = *v30;
      *(a1 + 40) = *(a1 + 64);
    }

    *v30 = v35;
    *(a1 + 64) = v34;
  }

  else
  {
    v68 = *v30;
    v69 = *(a1 + 64);
    v66 = *(a1 + 24);
    v67 = *(a1 + 40);
    if (v33(&v68, &v66))
    {
      v42 = *(a1 + 40);
      v43 = *(a1 + 24);
      *(a1 + 24) = *v30;
      *(a1 + 40) = *(a1 + 64);
      *v30 = v43;
      *(a1 + 64) = v42;
      v44 = *a3;
      v68 = *(a1 + 24);
      v69 = *(a1 + 40);
      v66 = *a1;
      v67 = *(a1 + 16);
      if (v44(&v68, &v66))
      {
        v45 = *(a1 + 16);
        v46 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v46;
        *(a1 + 40) = v45;
      }
    }
  }

LABEL_33:
  v54 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v55 = 0;
  v56 = 0;
  while (1)
  {
    v57 = *a3;
    v68 = *v54;
    v69 = v54[1].n128_u64[0];
    v58 = *v30;
    v67 = v30[1].n128_u64[0];
    v66 = v58;
    if (v57(&v68, &v66))
    {
      v68 = *v54;
      v69 = v54[1].n128_u64[0];
      v59 = v55;
      while (1)
      {
        v60 = a1 + v59;
        *(v60 + 72) = *(a1 + v59 + 48);
        *(v60 + 88) = *(a1 + v59 + 64);
        if (v59 == -48)
        {
          break;
        }

        v61 = *a3;
        v66 = v68;
        v67 = v69;
        v64 = *(v60 + 24);
        v65 = *(v60 + 40);
        v59 -= 24;
        if (!v61(&v66, &v64))
        {
          v62 = a1 + v59 + 72;
          goto LABEL_41;
        }
      }

      v62 = a1;
LABEL_41:
      *v62 = v68;
      *(v62 + 16) = v69;
      if (++v56 == 8)
      {
        return &v54[1].n128_i8[8] == a2;
      }
    }

    v30 = v54;
    v55 += 24;
    v54 = (v54 + 24);
    if (v54 == a2)
    {
      return 1;
    }
  }
}

float *sub_19B5DB70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v6 = sub_19B5D6144(a1, i);
      v7 = v6 * sub_19B5D6144(a1, j);
      result = sub_19B5D68B8(a2, i, j);
      *result = v7;
    }
  }

  return result;
}

float sub_19B5DB794(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v14 = a2;
      v15 = 2048;
      v16 = 9;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E282A0);
      }

      v9 = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: ldx < M*N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMMatrix.h, line 84,invalid element %zu >= %zu.", &v9, 22);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMMatrix<float, 3>::operator[](size_t) const [T = float, M = 3, N = 3]", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * a2);
}

float32_t sub_19B5DB98C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    *sub_19B5D68B8(a2, v4, v4) = 1065353216;
    v5 = *sub_19B5D68B8(a1, v4, v4);
    *sub_19B5BC0F0(&v76, v4) = v5;
    v6 = *sub_19B5D68B8(a1, v4, v4);
    *sub_19B5BC0F0(&v74, v4) = v6;
    *sub_19B5BC0F0(&v72, v4++) = 0;
  }

  while (v4 != 3);
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = 1;
    v10 = 0.0;
    do
    {
      v11 = v9;
      v12 = v8 + 1;
      do
      {
        v13 = *sub_19B5D68B8(a1, v8, v12);
        v14 = sub_19B5D68B8(a1, v8, v12);
        v15 = *v14;
        if (v13 < 0.0)
        {
          v15 = -*v14;
        }

        v10 = v10 + v15;
        ++v12;
      }

      while (v12 != 3);
      v9 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    if (v10 == 0.0)
    {
      break;
    }

    v16 = 0.0;
    if (v7 <= 2)
    {
      v16 = (v10 * 0.2) / 9.0;
    }

    v17 = 0;
    v18 = 0;
    v71 = v7 + 1;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = v18 + 1;
      do
      {
        v22 = *sub_19B5D68B8(a1, v18, v21);
        v23 = sub_19B5D68B8(a1, v18, v21);
        v24 = *v23;
        if (v22 < 0.0)
        {
          v24 = -*v23;
        }

        v25 = v24 * 100.0;
        if (v7 < 4)
        {
          goto LABEL_31;
        }

        v26 = v25 + *sub_19B5BC0F0(&v76, v18);
        v27 = sub_19B5BC0F0(&v76, v18);
        if (v26 >= 0.0)
        {
          v28 = v25 + *v27;
        }

        else
        {
          v28 = -(v25 + *v27);
        }

        v29 = *sub_19B5BC0F0(&v76, v18);
        v30 = sub_19B5BC0F0(&v76, v18);
        v31 = *v30;
        if (v29 < 0.0)
        {
          v31 = -*v30;
        }

        if (v28 != v31)
        {
          goto LABEL_31;
        }

        v32 = v25 + *sub_19B5BC0F0(&v76, v21);
        v33 = sub_19B5BC0F0(&v76, v21);
        if (v32 >= 0.0)
        {
          v34 = v25 + *v33;
        }

        else
        {
          v34 = -(v25 + *v33);
        }

        v35 = *sub_19B5BC0F0(&v76, v21);
        v36 = sub_19B5BC0F0(&v76, v21);
        v37 = *v36;
        if (v35 < 0.0)
        {
          v37 = -*v36;
        }

        if (v34 == v37)
        {
          *sub_19B5D68B8(a1, v18, v21) = 0;
        }

        else
        {
LABEL_31:
          v38 = *sub_19B5D68B8(a1, v18, v21);
          v39 = sub_19B5D68B8(a1, v18, v21);
          v40 = *v39;
          if (v38 < 0.0)
          {
            v40 = -*v39;
          }

          if (v40 > v16)
          {
            v41 = *sub_19B5BC0F0(&v76, v21);
            v42 = v41 - *sub_19B5BC0F0(&v76, v18);
            v43 = v25 + v42;
            if ((v25 + v42) < 0.0)
            {
              v43 = -(v25 + v42);
            }

            v44 = -v42;
            if (v42 >= 0.0)
            {
              v44 = v42;
            }

            if (v43 == v44)
            {
              v45 = *sub_19B5D68B8(a1, v18, v21) / v42;
            }

            else
            {
              v46 = sub_19B5D68B8(a1, v18, v21);
              v47 = (v42 * 0.5) / *v46;
              v48 = -v47;
              v49 = v47 < 0.0;
              if (v47 >= 0.0)
              {
                v48 = (v42 * 0.5) / *v46;
              }

              v50 = 1.0 / (v48 + sqrtf((v47 * v47) + 1.0));
              if (v49)
              {
                v45 = -v50;
              }

              else
              {
                v45 = v50;
              }
            }

            v51 = 1.0 / sqrtf((v45 * v45) + 1.0);
            v52 = v45 * v51;
            v53 = (v45 * v51) / (v51 + 1.0);
            v54 = v45 * *sub_19B5D68B8(a1, v18, v21);
            v55 = sub_19B5BC0F0(&v72, v18);
            *v55 = *v55 - v54;
            v56 = sub_19B5BC0F0(&v72, v21);
            *v56 = v54 + *v56;
            v57 = sub_19B5BC0F0(&v76, v18);
            *v57 = *v57 - v54;
            v58 = sub_19B5BC0F0(&v76, v21);
            *v58 = v54 + *v58;
            *sub_19B5D68B8(a1, v18, v21) = 0;
            if (v17)
            {
              v59 = *(a1 + 12);
              v60 = sub_19B5D68B8(a1, 0, v21);
              v61 = *v60;
              *(a1 + 12) = v59 - (v52 * (*v60 + (v59 * v53)));
              *sub_19B5D68B8(a1, 0, v21) = v61 + (v52 * (v59 - (v61 * v53)));
            }

            if (v18 + 1 < v21)
            {
              v62 = *sub_19B5D68B8(a1, v18, 1uLL);
              v63 = *(a1 + 28);
              *sub_19B5D68B8(a1, v18, 1uLL) = v62 - (v52 * (v63 + (v62 * v53)));
              *(a1 + 28) = v63 + (v52 * (v62 - (v63 * v53)));
            }

            if (v21 != 2)
            {
              v64 = *sub_19B5D68B8(a1, v18, 2uLL);
              v65 = *(a1 + 28);
              *sub_19B5D68B8(a1, v18, 2uLL) = v64 - (v52 * (v65 + (v64 * v53)));
              *(a1 + 28) = v65 + (v52 * (v64 - (v65 * v53)));
            }

            for (i = 0; i != 3; ++i)
            {
              v67 = *sub_19B5D68B8(a2, i, v18);
              v68 = *sub_19B5D68B8(a2, i, v21);
              *sub_19B5D68B8(a2, i, v18) = v67 + (-v52 * (v68 + (v67 * v53)));
              *sub_19B5D68B8(a2, i, v21) = v68 + (v52 * (v67 - (v68 * v53)));
            }
          }
        }

        v69 = v21 == 2;
        v21 = 2;
      }

      while (!v69);
      v19 = 0;
      v17 = 1;
      v18 = 1;
    }

    while ((v20 & 1) != 0);
    v74 = vadd_f32(v72, v74);
    v75 = v73 + v75;
    v76 = v74;
    v77 = v75;
    v73 = 0.0;
    v72 = 0;
    ++v7;
  }

  while (v71 != 10);
  return v76.f32[0];
}

int *sub_19B5DBFAC(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *sub_19B5BC0F0(*a1, a2);
  result = sub_19B5BC0F0(*a1, a3);
  if (v6 < *result)
  {
    v8 = sub_19B5BC0F0(*a1, a2);
    v9 = sub_19B5BC0F0(*a1, a3);
    v10 = *v8;
    *v8 = *v9;
    *v9 = v10;
    v11 = sub_19B5D68B8(a1[1], 0, a2);
    v12 = sub_19B5D68B8(a1[1], 0, a3);
    v13 = *v11;
    *v11 = *v12;
    *v12 = v13;
    v14 = sub_19B5D68B8(a1[1], 1uLL, a2);
    v15 = sub_19B5D68B8(a1[1], 1uLL, a3);
    v16 = *v14;
    *v14 = *v15;
    *v15 = v16;
    v17 = sub_19B5D68B8(a1[1], 2uLL, a2);
    result = sub_19B5D68B8(a1[1], 2uLL, a3);
    v18 = *v17;
    *v17 = *result;
    *result = v18;
  }

  return result;
}

void sub_19B5DC0D0()
{
  if (sub_19B61C754())
  {
    operator new();
  }
}

void sub_19B5DC230(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_19B5DC28C(void *a1)
{
  *a1 = &unk_1F0E32B18;
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B5DC2E0(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
    }

    v4 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v15 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[CLFilteredPressure] Unrecognized notification: %d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
      }

      v13[0] = 67109120;
      v13[1] = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 17, "[CLFilteredPressure] Unrecognized notification: %d", v13);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLFilteredPressure::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (a3)
    {
      if (!v10)
      {
        operator new();
      }
    }

    else if (v10)
    {
      v11 = sub_19B61C754();
      sub_19B426A14(v11, 1, *(a1 + 32));
      v12 = *(a1 + 32);
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
      *(a1 + 92) = 0;
      *(a1 + 100) = 0;
      *(a1 + 104) = 0;
      *(a1 + 108) = 0;
      *(a1 + 880) = 0;
      *(a1 + 808) = 0;
      *(a1 + 788) = 0;
      result = 0.0;
      *(a1 + 772) = 0u;
      *(a1 + 64) = 3212836864;
      *(a1 + 72) = 0;
      *(a1 + 84) = 1025758986;
      *(a1 + 848) = 0;
      *(a1 + 792) = 0u;
    }
  }

  return result;
}

void sub_19B5DC630(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  *buf = *(a1 + 8);
  *v20 = 0;
  *&v20[4] = (*a1 * 1000000.0);
  sub_19B7497F0(a2 + 56, buf);
  v4 = *(a2 + 72);
  v5 = *(a2 + 64);
  if ((*(a2 + 60) == 2 || *(a2 + 56) == 2) && v4 > *(a2 + 48))
  {
    v17 = v4 / 1000000.0;
    *&v18 = v5;
    v6 = *(a1 + 12);
    *(&v18 + 1) = v6;
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
    }

    v7 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *v20 = "PressureFiltered";
      *&v20[8] = 2048;
      *&v20[10] = v5;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v4 / 1000000.0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "Type,%s,pressure,%.6f,temperature,%.3f,timestamp,%f", buf, 0x2Au);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E27CC0);
      }

      *v28 = 136315906;
      *&v28[4] = "PressureFiltered";
      *&v28[12] = 2048;
      *&v28[14] = v5;
      v29 = 2048;
      v30 = v6;
      *v31 = 2048;
      *&v31[2] = v4 / 1000000.0;
      LODWORD(v16) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2860, 2, "Type,%s,pressure,%.6f,temperature,%.3f,timestamp,%f", v28, v16, v17, v18);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLFilteredPressure::onPressureData(const CLPressure::Sample *)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (*(a2 + 40) == 1)
    {
      *v28 = &unk_1F0E312F0;
      Current = CFAbsoluteTimeGetCurrent();
      *v31 = v5;
      *&v31[4] = v6;
      *&v28[8] = Current;
      v30 = v4 / 1000000.0;
      v12 = sub_19B720E40();
      sub_19B7223F8(v12, v28);
      sub_19B517F80(buf);
      sub_19B5327F8(buf);
      v27 |= 1u;
      v25 = *&v28[8];
      sub_19B5A06B4(v26);
      v13 = v26[1];
      *(v13 + 24) |= 1u;
      *(v13 + 8) = v4 / 1000000.0;
      v14 = v26[1];
      *(v14 + 24) |= 2u;
      *(v14 + 16) = v5;
      v15 = v26[1];
      *(v15 + 24) |= 4u;
      *(v15 + 20) = v6;
      sub_19B51DBD4(buf);
    }

    sub_19B41DF08(a2, 0, &v17, 16);
    *(a2 + 48) = v4;
  }
}

void sub_19B5DC9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

os_log_t sub_19B5DC9D8()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

void sub_19B5DCA0C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B5DE368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DE4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DE5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DE8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B5DE8F0()
{
  result = os_log_create("com.apple.locationd.Motion", "Activity");
  qword_1ED71C7A8 = result;
  return result;
}

void *sub_19B5DE98C(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5DE9E8((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5DE9E8(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5DEA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5DEAC0(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5DEB1C((a1 + 3), a2);
  return a1;
}

uint64_t sub_19B5DEB1C(uint64_t a1, char *a2)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71E0](a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5DEB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5DEB88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = a4;
  if (a1)
  {
    v7 = a3;
    reply = xpc_dictionary_create_reply(a2);
    v9 = v7;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);

    xpc_dictionary_set_string(reply, "kRMConnectionMessageNameKey", v12);
    if (v21)
    {
      v13 = v21;
      v16 = objc_msgSend_bytes(v21, v14, v15);
      v19 = objc_msgSend_length(v21, v17, v18);
      v20 = xpc_data_create(v16, v19);
      xpc_dictionary_set_value(reply, "kRMConnectionMessageDataKey", v20);
    }

    xpc_connection_send_message(*(a1 + 56), reply);
  }
}

id sub_19B5DEC78()
{
  if (qword_1EAFE2EC8 != -1)
  {
    dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
  }

  v1 = qword_1EAFE2ED0;

  return v1;
}

void sub_19B5DECCC(uint64_t a1, void *a2, void *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v8 = MEMORY[0x1E696AEC0];
    string = xpc_dictionary_get_string(v5, "kRMConnectionMessageNameKey");
    v11 = objc_msgSend_stringWithUTF8String_(v8, v10, string);
    v12 = xpc_dictionary_get_value(v5, "kRMConnectionMessageDataKey");
    v13 = v12;
    if (v12 && (bytes_ptr = xpc_data_get_bytes_ptr(v12)) != 0)
    {
      v15 = bytes_ptr;
      v16 = objc_alloc(MEMORY[0x1E695DEF0]);
      length = xpc_data_get_length(v13);
      v84 = objc_msgSend_initWithBytes_length_(v16, v18, v15, length);
    }

    else
    {
      v84 = 0;
    }

    v19 = xpc_dictionary_get_value(v5, "kRMConnectionRequestSteamingKey");
    v21 = v19;
    if (v11)
    {
      if (!v19)
      {
        if (v6)
        {
          (*(v6 + 2))(v6, v11, v84);
          goto LABEL_61;
        }

        if (objc_msgSend_isEqualToString_(v11, v20, @"kRMConnectionMessagePriorityBoost"))
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v51 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            *&buf[4] = v11;
            _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_INFO, "Creating reply to hold onto priority boost: %{private}@", buf, 0xCu);
          }

          reply = xpc_dictionary_create_reply(v5);
          v53 = *(a1 + 64);
          *(a1 + 64) = reply;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v75 = qword_1EAFE2ED0;
            if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_61;
            }

            *buf = 0;
            v27 = "Message received but the handler doesn't implement the selector 'endpoint:didReceiveMessage:withData:replyBlock:'";
            v28 = v75;
            v29 = OS_LOG_TYPE_FAULT;
            v30 = 2;
            goto LABEL_18;
          }

          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = sub_19B5DF828;
          v85[3] = &unk_1E7532CF8;
          v85[4] = a1;
          v86 = v5;
          objc_msgSend_endpoint_didReceiveMessage_withData_replyBlock_(WeakRetained, v74, a1, v11, v84, v85);
          v53 = v86;
        }

        goto LABEL_61;
      }

      if (objc_msgSend_conformsToProtocol_(WeakRetained, v20, &unk_1F0E85600))
      {
        objc_msgSend_endpoint_didReceiveStreamingRequest_withData_(WeakRetained, v22, a1, v11, v84);
        v23 = v21;
        if (MEMORY[0x19EAE8C40]() == MEMORY[0x1E69E9E90])
        {
          v31 = objc_loadWeakRetained((a1 + 24));
          v83 = v23;
          v32 = xpc_connection_create_from_endpoint(v23);
          if (v32)
          {
            v81 = v6;
            connection = v32;
            objc_storeStrong((a1 + 32), v32);
            v33 = *(a1 + 32);
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = sub_19B5E010C;
            handler[3] = &unk_1E7532D20;
            handler[4] = a1;
            v80 = v31;
            v34 = v31;
            xpc_connection_set_event_handler(v33, handler);
            v35 = *(a1 + 8);
            v36 = *(a1 + 32);
            xpc_connection_set_target_queue(v36, v35);

            xpc_connection_resume(*(a1 + 32));
            v37 = xpc_string_create("kRMConnectionMessageDataStream");
            keys[0] = "kRMConnectionMessageNameKey";
            v38 = v37;
            values = v38;
            v39 = xpc_dictionary_create(keys, &values, 1uLL);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = sub_19B5E058C;
            *&buf[24] = &unk_1E7532D48;
            *&buf[32] = a1;
            v40 = v39;
            v96 = v40;
            shouldStartStreamingDataToReceiver = objc_msgSend_endpoint_shouldStartStreamingDataToReceiver_(v34, v41, a1, buf);

            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v42 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
            {
              v43 = *(a1 + 56);
              v44 = *(a1 + 32);
              v45 = "NO";
              if (shouldStartStreamingDataToReceiver)
              {
                v45 = "YES";
              }

              *v89 = 134284035;
              v90 = v43;
              v91 = 2049;
              v92 = v44;
              v93 = 2080;
              v94 = v45;
              v78 = v34;
              v46 = v38;
              v47 = v43;
              v48 = v42;
              v49 = v40;
              v50 = v48;
              _os_log_impl(&dword_19B41C000, v48, OS_LOG_TYPE_DEBUG, "shouldStartStreamingDataToReceiver returned on streaming server connection %{private}p.%{private}p: %s", v89, 0x20u);

              v38 = v46;
              v34 = v78;

              v40 = v49;
            }

            v6 = v81;
            if (shouldStartStreamingDataToReceiver)
            {
              v25 = 0;
              v32 = connection;
              v31 = v80;
            }

            else
            {
              v57 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
              if (qword_1EAFE2EC8 != -1)
              {
                dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
                v57 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
              }

              v58 = *(v57 + 474);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v34;
                _os_log_impl(&dword_19B41C000, v58, OS_LOG_TYPE_ERROR, "Failed to start the streaming with handler %@", buf, 0xCu);
              }

              v25 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v59, @"RMConnectionStreaming", -2, 0);
              v60 = v25;
              if (qword_1EAFE2EC8 != -1)
              {
                dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
              }

              v61 = qword_1EAFE2ED0;
              if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
              {
                v62 = *(a1 + 56);
                v63 = *(a1 + 32);
                *buf = 134283777;
                *&buf[4] = v62;
                *&buf[12] = 2049;
                *&buf[14] = v63;
                v64 = v62;
                v65 = v61;
                _os_log_impl(&dword_19B41C000, v65, OS_LOG_TYPE_DEFAULT, "Cancelling the streaming server connection %{private}p.%{private}p", buf, 0x16u);

                v6 = v81;
              }

              v32 = connection;
              xpc_connection_cancel(connection);
              v66 = *(a1 + 32);
              *(a1 + 32) = 0;

              v31 = v80;
            }
          }

          else
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v54 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v83;
              _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_ERROR, "Failed to create connection from endpoint %@", buf, 0xCu);
            }

            v25 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v55, @"RMConnectionStreaming", -1, 0);
            v56 = v25;
          }

          v23 = v83;
        }

        else
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v24 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "The client did not send streaming endpoint correctly", buf, 2u);
          }

          v25 = 0;
        }

        v67 = v25;
        if (v67)
        {
          v69 = v67;
          v87 = v67;
          objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v68, v67, 1, &v87);
          v71 = v70 = v6;
          v72 = v87;

          sub_19B5DEB88(a1, v5, @"kRMConnectionMessageError", v71);
          v6 = v70;
        }

        else
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v73 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v73, OS_LOG_TYPE_INFO, "Streaming session started, sending acknowledgement", buf, 2u);
          }

          sub_19B5DEB88(a1, v5, @"kRMConnectionMessageSuccess", 0);
        }

        goto LABEL_61;
      }

      v76 = sub_19B5DEC78();
      v13 = "sE";
      v11 = "";
      WeakRetained = "assert";
      v6 = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
        _os_log_impl(&dword_19B41C000, v76, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v77 = sub_19B5DEC78();
      if (os_signpost_enabled(v77))
      {
        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v77, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate", "{msg%{public}.0s:Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v5 = sub_19B5DEC78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "assert";
        *&buf[28] = 2081;
        *&buf[30] = "[handler conformsToProtocol:@protocol(RMConnectionStreamProducingDelegate)]";
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Start streaming requested but the handler doesn't conform to the RMConnectionStreamProducingDelegate delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionEndpoint.m", 143, "[RMConnectionEndpoint handleXpcMessage:replyBlock:]");
    }

    else if (qword_1EAFE2EC8 == -1)
    {
LABEL_16:
      v26 = qword_1EAFE2ED0;
      if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
      {
LABEL_61:

        goto LABEL_62;
      }

      *buf = 136315138;
      *&buf[4] = "kRMConnectionMessageNameKey";
      v27 = "XPC message missing key %s";
      v28 = v26;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 12;
LABEL_18:
      _os_log_impl(&dword_19B41C000, v28, v29, v27, buf, v30);
      goto LABEL_61;
    }

    dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    goto LABEL_16;
  }

LABEL_62:
}

id *sub_19B5DF83C(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1 && (v14.receiver = a1, v14.super_class = RMConnectionEndpoint, (v8 = objc_msgSendSuper2(&v14, sel_init)) != 0))
  {
    v9 = v8;
    objc_storeStrong(v8 + 7, a2);
    objc_storeStrong(v9 + 1, a3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_19B5DF950;
    handler[3] = &unk_1E7532D20;
    v10 = v9;
    v13 = v10;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_set_target_queue(v6, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_19B5DF950(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19EAE8C40]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v9 = qword_1EAFE2ED0;
      if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        if (v10)
        {
          v10 = *(v10 + 56);
        }

        v12 = 134283521;
        v13 = v10;
        v11 = v9;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "#Warning Messaging connection %{private}p interrupted!", &v12, 0xCu);
      }

      sub_19B5DFBA8(*(a1 + 32));
    }

    else if (v3 == MEMORY[0x1E69E9E20])
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v6 = qword_1EAFE2ED0;
      if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        if (v7)
        {
          v7 = *(v7 + 56);
        }

        v12 = 134283521;
        v13 = v7;
        v8 = v6;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "#Warning Messaging connection %{private}p invalidated!", &v12, 0xCu);
      }

      sub_19B5DFC00(*(a1 + 32));
    }
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    sub_19B5DECCC(*(a1 + 32), v3, 0);
  }

  else
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v5 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "Got unexpected xpc event", &v12, 2u);
    }
  }
}

void sub_19B5DFBA8(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    objc_msgSend_endpointWasInterrupted_(WeakRetained, v2, a1);
  }
}

void sub_19B5DFC00(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 64);
    *(a1 + 64) = 0;

    if (*(a1 + 32))
    {
      sub_19B5E0304(a1);
    }

    if (*(a1 + 40))
    {
      sub_19B5E0ABC(a1);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      xpc_connection_cancel(v3);
      v4 = *(a1 + 56);
      *(a1 + 56) = 0;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    objc_msgSend_endpointWasInvalidated_(WeakRetained, v5, a1);
  }
}

void sub_19B5DFCA4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 56);
    if (!v2)
    {
      __assert_rtn("[RMConnectionEndpoint start]", "RMConnectionEndpoint.m", 216, "self.messagingConnection");
    }

    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (!WeakRetained)
    {
      __assert_rtn("[RMConnectionEndpoint start]", "RMConnectionEndpoint.m", 217, "self.dataDelegate");
    }

    v4 = objc_loadWeakRetained((a1 + 16));
    if (!v4)
    {
      __assert_rtn("[RMConnectionEndpoint start]", "RMConnectionEndpoint.m", 218, "self.connectionDelegate");
    }

    v5 = *(a1 + 56);

    xpc_connection_resume(v5);
  }
}

void sub_19B5DFD80(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    if (!*(a1 + 56))
    {
      v7 = sub_19B5DEC78();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2082;
        v16 = "assert";
        v17 = 2081;
        v18 = "self.messagingConnection";
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Trying to send a message while no connection is in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v8 = sub_19B5DEC78();
      if (os_signpost_enabled(v8))
      {
        *buf = 68289539;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2082;
        v16 = "assert";
        v17 = 2081;
        v18 = "self.messagingConnection";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trying to send a message while no connection is in place", "{msg%{public}.0s:Trying to send a message while no connection is in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v9 = sub_19B5DEC78();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2082;
        v16 = "assert";
        v17 = 2081;
        v18 = "self.messagingConnection";
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Trying to send a message while no connection is in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionEndpoint.m", 230, "[RMConnectionEndpoint sendMessage:withData:]");
    }

    v6 = sub_19B5DFFD8(v10, v5);
    xpc_connection_send_message(*(a1 + 56), v6);
  }
}

id sub_19B5DFFD8(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  v8 = xpc_string_create(v7);
  if (v3)
  {
    v9 = v3;
    v12 = objc_msgSend_bytes(v9, v10, v11);
    v15 = objc_msgSend_length(v3, v13, v14);
    v16 = xpc_data_create(v12, v15);
    v17 = 2;
  }

  else
  {
    v16 = 0;
    v17 = 1;
  }

  *keys = xmmword_1E7532DB0;
  v18 = v8;
  v23[0] = v18;
  v19 = v16;
  v23[1] = v19;
  v20 = xpc_dictionary_create(keys, v23, v17);
  for (i = 1; i != -1; --i)
  {
  }

  return v20;
}

void sub_19B5E010C(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAE8C40](a2) == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v11 = qword_1EAFE2ED0;
      if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = v12[7];
        v14 = v12[4];
        v12 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v15 = 134283777;
      v16 = v13;
      v17 = 2049;
      v18 = v14;
      v8 = v12;
      v9 = v11;
      v10 = "#Warning Streaming server connection %{private}p.%{private}p interrupted!";
    }

    else
    {
      if (a2 != MEMORY[0x1E69E9E20])
      {
        return;
      }

      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v4 = qword_1EAFE2ED0;
      if (!os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = v5[7];
        v7 = v5[4];
        v5 = v6;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v15 = 134283777;
      v16 = v6;
      v17 = 2049;
      v18 = v7;
      v8 = v5;
      v9 = v4;
      v10 = "#Warning Streaming server connection %{private}p.%{private}p invalidated!";
    }

    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEBUG, v10, &v15, 0x16u);

LABEL_17:
    sub_19B5E0304(*(a1 + 32));
  }
}

void sub_19B5E0304(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 32);
    if (v2)
    {
      xpc_connection_set_event_handler(v2, &unk_1F0E28EC0);
      xpc_connection_cancel(*(a1 + 32));
      v3 = *(a1 + 32);
      *(a1 + 32) = 0;

      WeakRetained = objc_loadWeakRetained((a1 + 24));
      objc_msgSend_endpointShouldStopStreamingData_(WeakRetained, v4, a1);
    }

    else
    {
      v5 = sub_19B5DEC78();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2082;
        v14 = "assert";
        v15 = 2081;
        v16 = "self.streamingServerConnection";
        _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Asked to stop a stream while no streaming is in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v6 = sub_19B5DEC78();
      if (os_signpost_enabled(v6))
      {
        *buf = 68289539;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2082;
        v14 = "assert";
        v15 = 2081;
        v16 = "self.streamingServerConnection";
        _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Asked to stop a stream while no streaming is in progress", "{msg%{public}.0s:Asked to stop a stream while no streaming is in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v7 = sub_19B5DEC78();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2082;
        v14 = "assert";
        v15 = 2081;
        v16 = "self.streamingServerConnection";
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Asked to stop a stream while no streaming is in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionEndpoint.m", 318, "[RMConnectionEndpoint stopServingStream]");
    }
  }
}

void sub_19B5E058C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && *(v4 + 32))
  {
    v5 = *(a1 + 40);
    v15 = v3;
    v6 = v3;
    v9 = objc_msgSend_bytes(v15, v7, v8);
    v12 = objc_msgSend_length(v15, v10, v11);
    xpc_dictionary_set_data(v5, "kRMConnectionMessageDataStreamKey", v9, v12);
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v14 = 0;
    }

    xpc_connection_send_message(v14, *(a1 + 40));
    v3 = v15;
  }
}

void sub_19B5E063C(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if (v5 == MEMORY[0x1E69E9E18])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v10 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v11 = "#Warning Streaming connection interrupted";
LABEL_19:
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
    }

LABEL_20:
    v9 = -3;
    if (!v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v8, @"RMConnectionStreaming", v9, 0, *v13);
    v6[2](v6, v12);

    goto LABEL_22;
  }

  if (v5 == MEMORY[0x1E69E9E20])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v10 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v11 = "#Warning Streaming connection dropped";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v5 != MEMORY[0x1E69E9E38])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v7 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
    {
      *v13 = 138412290;
      *&v13[4] = v5;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Unknown xpc error received %@", v13, 0xCu);
    }

    v9 = -4;
    if (v6)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
}

void sub_19B5E0868(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19EAE8C40]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v8 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v9 = *(v9 + 40);
      }

      v22 = 134283521;
      v23 = v9;
      v10 = v8;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "Error received on the streaming client connection %{private}p", &v22, 0xCu);
    }

    sub_19B5E063C(*(a1 + 32), v3, *(a1 + 40));
    sub_19B5E0ABC(*(a1 + 32));
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_value(v3, "kRMConnectionMessageDataStreamKey");
    v6 = v5;
    if (v5 && MEMORY[0x19EAE8C40](v5) == MEMORY[0x1E69E9E70] && (bytes_ptr = xpc_data_get_bytes_ptr(v6)) != 0 && (v12 = bytes_ptr, v13 = objc_alloc(MEMORY[0x1E695DEF0]), length = xpc_data_get_length(v6), (v16 = objc_msgSend_initWithBytes_length_(v13, v15, v12, length)) != 0))
    {
      v18 = v16;
      v19 = *(a1 + 32);
      if (v19)
      {
        WeakRetained = objc_loadWeakRetained((v19 + 24));
        objc_msgSend_endpoint_didReceiveStreamedData_(WeakRetained, v21, *(a1 + 32), v18);
      }

      else
      {
        WeakRetained = 0;
        objc_msgSend_endpoint_didReceiveStreamedData_(0, v17, 0, v16);
      }
    }

    else
    {
      if (qword_1EAFE2EC8 != -1)
      {
        dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
      }

      v7 = qword_1EAFE2ED0;
      if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Message without a payload received from the stream connection", &v22, 2u);
      }
    }
  }
}

void sub_19B5E0ABC(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = *(a1 + 40);
    if (v2)
    {
      xpc_connection_suspend(v2);
      xpc_connection_set_event_handler(*(a1 + 40), &unk_1F0E3A320);
      xpc_connection_resume(*(a1 + 40));
      xpc_connection_cancel(*(a1 + 40));
      v3 = *(a1 + 40);
      *(a1 + 40) = 0;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      xpc_connection_cancel(v4);
      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
    }
  }
}

void sub_19B5E0B54(const char *a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 6))
  {
    v25 = sub_19B5DEC78();
    v16 = "sE";
    a1 = "";
    v10 = "assert";
    v9 = "!self.streamingClientListener";
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      *&v32[14] = 2082;
      *&v32[16] = "assert";
      v33 = 2081;
      v34 = "!self.streamingClientListener";
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Request already in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v26 = sub_19B5DEC78();
    if (os_signpost_enabled(v26))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      *&v32[14] = 2082;
      *&v32[16] = "assert";
      v33 = 2081;
      v34 = "!self.streamingClientListener";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Request already in progress", "{msg%{public}.0s:Request already in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_19B5DEC78();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v32 = 0;
      *&v32[4] = 2082;
      *&v32[6] = "";
      *&v32[14] = 2082;
      *&v32[16] = "assert";
      v33 = 2081;
      v34 = "!self.streamingClientListener";
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Request already in progress, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionEndpoint.m", 443, "[RMConnectionEndpoint requestStreamWithMessage:data:errorHandler:]");
    goto LABEL_15;
  }

  v11 = *(a1 + 1);
  v12 = xpc_connection_create(0, v11);
  v13 = *(a1 + 6);
  *(a1 + 6) = v12;

  v14 = *(a1 + 6);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_19B5E0F80;
  handler[3] = &unk_1E7532D90;
  handler[4] = a1;
  v15 = v10;
  v30 = v15;
  xpc_connection_set_event_handler(v14, handler);
  v16 = sub_19B5DFFD8(v8, v9);
  xpc_connection_activate(*(a1 + 6));
  v4 = xpc_endpoint_create(*(a1 + 6));
  xpc_dictionary_set_value(v16, "kRMConnectionRequestSteamingKey", v4);
  v17 = *(a1 + 7);
  v18 = *(a1 + 1);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_19B5E1330;
  v27[3] = &unk_1E7532D90;
  v27[4] = a1;
  v28 = v15;
  v19 = v17;
  xpc_connection_send_message_with_reply(v19, v16, v18, v27);

  if (qword_1EAFE2EC8 != -1)
  {
LABEL_15:
    dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
  }

  v20 = qword_1EAFE2ED0;
  if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 6);
    v21 = *(a1 + 7);
    *buf = 134283777;
    *v32 = v21;
    *&v32[8] = 2049;
    *&v32[10] = v22;
    v23 = v21;
    v24 = v20;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "Streaming request sent on streaming listener %{private}p.%{private}p", buf, 0x16u);
  }

LABEL_7:
}

void sub_19B5E0F80(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (MEMORY[0x19EAE8C40]() == MEMORY[0x1E69E9E68])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v5 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Peer connection detected", buf, 2u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = v4;
    xpc_connection_set_target_queue(v8, v7);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v8;
    v12 = v9;
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 24));
      v15 = objc_msgSend_conformsToProtocol_(WeakRetained, v14, &unk_1F0E6E6A8);

      if ((v15 & 1) == 0)
      {
        v17 = sub_19B5DEC78();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *v21 = 2082;
          *&v21[2] = "";
          *&v21[10] = 2082;
          *&v21[12] = "assert";
          *&v21[20] = 2081;
          *&v21[22] = "[self.dataDelegate conformsToProtocol:@protocol(RMConnectionStreamConsumingDelegate)]";
          _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v18 = sub_19B5DEC78();
        if (os_signpost_enabled(v18))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *v21 = 2082;
          *&v21[2] = "";
          *&v21[10] = 2082;
          *&v21[12] = "assert";
          *&v21[20] = 2081;
          *&v21[22] = "[self.dataDelegate conformsToProtocol:@protocol(RMConnectionStreamConsumingDelegate)]";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate", "{msg%{public}.0s:The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v19 = sub_19B5DEC78();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          *v21 = 2082;
          *&v21[2] = "";
          *&v21[10] = 2082;
          *&v21[12] = "assert";
          *&v21[20] = 2081;
          *&v21[22] = "[self.dataDelegate conformsToProtocol:@protocol(RMConnectionStreamConsumingDelegate)]";
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The MessageHandler MUST conform to RMConnectionStreamConsumingDelegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionEndpoint.m", 358, "[RMConnectionEndpoint startReceivingStreamOnConnection:errorHandler:]");
      }

      objc_storeStrong((v10 + 40), a2);
      v16 = *(v10 + 40);
      *buf = MEMORY[0x1E69E9820];
      *v21 = 3221225472;
      *&v21[8] = sub_19B5E0868;
      *&v21[16] = &unk_1E7532D90;
      *&v21[24] = v10;
      v22 = v12;
      xpc_connection_set_event_handler(v16, buf);
      xpc_connection_activate(*(v10 + 40));
    }
  }
}

void sub_19B5E1330(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19EAE8C40]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (qword_1EAFE2EC8 != -1)
    {
      dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
    }

    v25 = qword_1EAFE2ED0;
    if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "Error received while trying to start the streaming connection", buf, 2u);
    }

    sub_19B5E063C(*(a1 + 32), v3, *(a1 + 40));
    sub_19B5E0ABC(*(a1 + 32));
  }

  else if (v4 == MEMORY[0x1E69E9E80])
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v5)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v3;
      string = xpc_dictionary_get_string(v8, "kRMConnectionMessageNameKey");
      v11 = objc_msgSend_stringWithUTF8String_(v7, v10, string);
      v12 = xpc_dictionary_get_value(v8, "kRMConnectionMessageError");

      if (v12 && MEMORY[0x19EAE8C40](v12) == MEMORY[0x1E69E9E70])
      {
        bytes_ptr = xpc_data_get_bytes_ptr(v12);
        if (bytes_ptr)
        {
          v27 = objc_alloc(MEMORY[0x1E695DEF0]);
          length = xpc_data_get_length(v12);
          bytes_ptr = objc_msgSend_initWithBytes_length_(v27, v29, bytes_ptr, length);
        }
      }

      else
      {
        bytes_ptr = 0;
      }

      if (objc_msgSend_isEqualToString_(v11, v13, @"kRMConnectionMessageError"))
      {
        if (bytes_ptr)
        {
          v16 = MEMORY[0x1E696ACD0];
          v17 = MEMORY[0x1E695DFD8];
          v18 = objc_opt_class();
          v20 = objc_msgSend_setWithObject_(v17, v19, v18);
          v32 = 0;
          v22 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v16, v21, v20, bytes_ptr, &v32);
          v23 = v32;

          if (v22)
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v24 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v22;
              _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Error while receiving a stream : %@", buf, 0xCu);
            }

            if (v6)
            {
              v6[2](v6, v22);
            }
          }

          else
          {
            if (qword_1EAFE2EC8 != -1)
            {
              dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
            }

            v31 = qword_1EAFE2ED0;
            if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v34 = v23;
              _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_FAULT, "Can't decode the error returned to the streaming request. Unarchiver error: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (qword_1EAFE2EC8 != -1)
          {
            dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
          }

          v30 = qword_1EAFE2ED0;
          if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v34 = v11;
            _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_FAULT, "No data in error message: %@", buf, 0xCu);
          }
        }

        sub_19B5E0ABC(v5);
      }

      else if (objc_msgSend_isEqualToString_(v11, v15, @"kRMConnectionMessageSuccess"))
      {
        if (qword_1EAFE2EC8 != -1)
        {
          dispatch_once(&qword_1EAFE2EC8, &unk_1F0E3A340);
        }

        v26 = qword_1EAFE2ED0;
        if (os_log_type_enabled(qword_1EAFE2ED0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "Streaming connection acknowledged from remote endpoint", buf, 2u);
        }
      }
    }
  }
}

BOOL sub_19B5E179C(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 8));
    return *(v1 + 56) != 0;
  }

  return result;
}

id *sub_19B5E17D8(id *a1)
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_19B5E188C()
{
  v0 = os_log_create("com.apple.RelativeMotion", "IPC");
  v1 = qword_1EAFE2ED0;
  qword_1EAFE2ED0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_19B5E19F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 != *(a1 + 40) || (*(v2 + 40) & 1) == 0)
  {

    *(*(a1 + 32) + 16) = objc_msgSend_copy(*(a1 + 40), v4, v5);
    if (!*(*(a1 + 32) + 8))
    {
      operator new();
    }
  }
}

void sub_19B5E1C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B5E1CF8(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    result = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMProxPDPObject");
    if (v15)
    {
      *(*(a1 + 32) + 40) = 0;
      v19 = MEMORY[0x1E696ABC0];
      v20 = objc_msgSend_integerValue(v15, v17, v18);
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"CMErrorDomain", v20, 0);
      v23 = v6[2];
      v24 = v6;
      v25 = 0;
    }

    else
    {
      v25 = result;
      if (!result)
      {
        return result;
      }

      v23 = v6[2];
      v24 = v6;
      v22 = 0;
    }

    return v23(v24, v25, v22);
  }

  return result;
}

void sub_19B5E1E60(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v7 = off_1EAFE2828;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136446210;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %{public}s", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startPDPUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B5E2058(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138478339;
      v22 = v5;
      v23 = 1025;
      v24 = v7;
      v25 = 2049;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
      }

      v10 = off_1EAFE2828;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138478339;
      v16 = v5;
      v17 = 1025;
      v18 = v11;
      v19 = 2049;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 0, "Client connection interrupt, %{private}@, %{private}d, %{private}p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startPDPUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

void sub_19B5E22FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 != *(a1 + 40) || (*(v2 + 41) & 1) == 0)
  {

    *(*(a1 + 32) + 24) = objc_msgSend_copy(*(a1 + 40), v4, v5);
    if (!*(*(a1 + 32) + 8))
    {
      operator new();
    }
  }
}

void sub_19B5E25D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  sub_19B41FFEC(v27);
  _Unwind_Resume(a1);
}

void *sub_19B5E266C(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v6 = objc_msgSend_copy(result, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMErrorMessage");
    result = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v16, @"CMALSPhoneObject");
    if (v15)
    {
      *(*(a1 + 32) + 41) = 0;
      v19 = MEMORY[0x1E696ABC0];
      v20 = objc_msgSend_integerValue(v15, v17, v18);
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v21, @"CMErrorDomain", v20, 0);
      v23 = v6[2];
      v24 = v6;
      v25 = 0;
    }

    else
    {
      v25 = result;
      if (!result)
      {
        return result;
      }

      v23 = v6[2];
      v24 = v6;
      v22 = 0;
    }

    return v23(v24, v25, v22);
  }

  return result;
}

void sub_19B5E27D4(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v7 = off_1EAFE2828;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136446210;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %{public}s", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startALSPhoneUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B5E29CC(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
    }

    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138478339;
      v22 = v5;
      v23 = 1025;
      v24 = v7;
      v25 = 2049;
      v26 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E27E40);
      }

      v10 = off_1EAFE2828;
      v11 = getpid();
      v12 = *(a1 + 32);
      v15 = 138478339;
      v16 = v5;
      v17 = 1025;
      v18 = v11;
      v19 = 2049;
      v20 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 0, "Client connection interrupt, %{private}@, %{private}d, %{private}p", &v15, 28);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMProxPDPAndALSPhoneManagerInternal _startALSPhoneUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

os_log_t sub_19B5E2DF4()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

void *sub_19B5E2E98(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B5E2EF4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B5E2EF4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B5E2F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B5E3140(double *a1, double *a2, double a3)
{
  v6 = *a1;
  v7 = sin(*a1 * 0.0174532925);
  v8 = sqrt(v7 * -0.00669437999 * v7 + 1.0);
  v9 = (6335439.33 / (v8 * (v8 * v8)) * 0.0174532925);
  v10 = a3;
  if (v9 >= 1)
  {
    v10 = a3 / v9;
  }

  v11 = v10 * floor(v6 / v10);
  *a1 = v11;
  v12 = __sincos_stret(v11 * 0.0174532925);
  v13 = (v12.__cosval * 0.0174532925 * (6378137.0 / sqrt(v12.__sinval * -0.00669437999 * v12.__sinval + 1.0)));
  if (v13 >= 1)
  {
    a3 = a3 / v13;
  }

  result = a3 * floor(*a2 / a3);
  *a2 = result;
  return result;
}

uint64_t sub_19B5E323C(const char *a1)
{
  v2 = getpwnam("mobile");
  if (v2)
  {
    pw_uid = v2->pw_uid;
    pw_gid = v2->pw_gid;
  }

  else
  {
    pw_gid = 501;
    pw_uid = 501;
  }

  return lchown(a1, pw_uid, pw_gid);
}

uint64_t sub_19B5E3290(_BYTE *a1, uid_t a2, gid_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  v6 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v7 = 0;
  v8 = a1 + 1;
  while (1)
  {
    v11[v7] = v6;
    if (v6 != 47 || !stat(v11, &v10))
    {
      goto LABEL_7;
    }

    if (mkdir(v11, 0x1FFu))
    {
      return 0;
    }

    lchown(v11, a2, a3);
    lchmod(v11, 0x1C0u);
LABEL_7:
    result = 1;
    if (v7 <= 0x3FD)
    {
      v6 = v8[v7++];
      if (v6)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_19B5E338C(const char *a1, const char *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_41:
    v27 = 0;
    goto LABEL_57;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v13 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v14 = *__error();
      *buf = 136446466;
      v34 = a1;
      v35 = 1026;
      v36 = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v16 = off_1ED71C828;
      v17 = *__error();
      *v32 = 136446466;
      *&v32[4] = a1;
      *&v32[12] = 1026;
      *&v32[14] = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v16, 17, "cannot open source file: %{public}s, errno %{public}d", v32, 18);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    goto LABEL_41;
  }

  v6 = v5;
  v7 = fopen(a2, "wb");
  if (!v7)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v20 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v21 = *__error();
      *buf = 136446466;
      v34 = a2;
      v35 = 1026;
      v36 = v21;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v23 = off_1ED71C828;
      v24 = *__error();
      *v32 = 136446466;
      *&v32[4] = a2;
      *&v32[12] = 1026;
      *&v32[14] = v24;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v23, 17, "cannot open target file: %{public}s, errno %{public}d", v32, 18);
      v26 = v25;
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    fclose(v6);
    goto LABEL_41;
  }

  v8 = v7;
  while (1)
  {
    if (feof(v6))
    {
      v27 = 1;
      goto LABEL_56;
    }

    v9 = fread(v4, 1uLL, 0x400uLL, v6);
    if (v9 == -1)
    {
      break;
    }

    if (v9 != fwrite(v4, 1uLL, v9, v8))
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v10 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v34 = a2;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
        }

        *v32 = 136446210;
        *&v32[4] = a2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "error writing target file: %{public}s", v32, 12, *v32, *&v32[8]);
LABEL_53:
        v30 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v12);
        if (v30 != buf)
        {
          free(v30);
        }

        goto LABEL_55;
      }

      goto LABEL_55;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
  }

  v28 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v34 = a1;
    _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
  }

  v29 = sub_19B420058();
  if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    *v32 = 136446210;
    *&v32[4] = a1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "error reading source file: %{public}s", v32, 12, *v32, *&v32[8]);
    goto LABEL_53;
  }

LABEL_55:
  v27 = 0;
LABEL_56:
  fclose(v6);
  fclose(v8);
LABEL_57:
  free(v4);
  return v27;
}

uint64_t sub_19B5E3A40(const char *a1, const char *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  PathComponent = objc_msgSend_lastPathComponent(v5, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"compress:%@", PathComponent);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  sub_19B5E4CEC(v50, v13, 0);
  bzerror = 0;
  v14 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v14)
  {
LABEL_59:
    v22 = 0;
    goto LABEL_60;
  }

  v15 = fopen(a1, "rb");
  if (!v15)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v28 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v29 = *__error();
      *buf = 136446466;
      v57 = a1;
      v58 = 1026;
      v59 = v29;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v30 = sub_19B420058();
    if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v31 = off_1ED71C828;
      v32 = *__error();
      v52 = 136446466;
      v53 = a1;
      v54 = 1026;
      v55 = v32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v31, 17, "cannot open source file: %{public}s, errno %{public}d", &v52, 18);
      v34 = v33;
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v33);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    goto LABEL_59;
  }

  v16 = fopen(a2, "wb");
  if (!v16)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v35 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v36 = *__error();
      *buf = 136446466;
      v57 = a1;
      v58 = 1026;
      v59 = v36;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v37 = sub_19B420058();
    if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v38 = off_1ED71C828;
      v39 = *__error();
      v52 = 136446466;
      v53 = a1;
      v54 = 1026;
      v55 = v39;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v38, 17, "cannot open target file: %{public}s, errno %{public}d", &v52, 18);
      v41 = v40;
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    fclose(v15);
    goto LABEL_59;
  }

  v17 = BZ2_bzWriteOpen(&bzerror, v16, 1, 0, 0);
  if (bzerror)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v57 = a2;
      v58 = 1026;
      v59 = bzerror;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "cannot open compression stream: %{public}s, bzerror %{public}d", buf, 0x12u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v52 = 136446466;
      v53 = a2;
      v54 = 1026;
      v55 = bzerror;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "cannot open compression stream: %{public}s, bzerror %{public}d", &v52, 18);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v20);
LABEL_15:
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  else
  {
    while (1)
    {
      if (feof(v15))
      {
        v22 = 1;
        goto LABEL_18;
      }

      v27 = fread(v14, 1uLL, 0x400uLL, v15);
      if (v27 == -1)
      {
        break;
      }

      BZ2_bzWrite(&bzerror, v17, v14, v27);
      if (bzerror)
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
        }

        v46 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v57 = a2;
          v58 = 1026;
          v59 = bzerror;
          _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
        }

        v47 = sub_19B420058();
        if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
          }

          v52 = 136446466;
          v53 = a2;
          v54 = 1026;
          v55 = bzerror;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "error writing target file: %{public}s, bzerror: %{public}d", &v52, 18);
          v21 = v48;
          sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v48);
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
    }

    v43 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v57 = a1;
      _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
    }

    v44 = sub_19B420058();
    if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v52 = 136446210;
      v53 = a1;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "error reading source file: %{public}s", &v52, 12);
      v21 = v45;
      sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v45);
      goto LABEL_15;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:
  fclose(v15);
  if (v17)
  {
    BZ2_bzWriteClose(&bzerror, v17, 0, 0, 0);
    if (bzerror)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
      }

      v23 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v57 = a2;
        v58 = 1026;
        v59 = bzerror;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "error closing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
      }

      v24 = sub_19B420058();
      if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E3A360);
        }

        v52 = 136446466;
        v53 = a2;
        v54 = 1026;
        v55 = bzerror;
        LODWORD(v49) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "error closing target file: %{public}s, bzerror: %{public}d", &v52, v49);
        v26 = v25;
        sub_19B6BB7CC("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }
    }
  }

  fclose(v16);
LABEL_60:
  free(v14);
  sub_19B5E4F34(v50);
  return v22;
}

void sub_19B5E44C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19B5E4F34(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B5E44E4(double *a1, double *a2, double *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  times = mach_get_times();
  if (times)
  {
    if (qword_1EAFE2B38 != -1)
    {
      dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A3A0);
    }

    v7 = qword_1EAFE2B40;
    if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v16 = times;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "TCONV,mach_get_times failed,kern_return_t,%{public}d", buf, 8u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A3A0);
      }

      v14[0] = 67240192;
      v14[1] = times;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B40, 16, "TCONV,mach_get_times failed,kern_return_t,%{public}d", v14, 8);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLCommonSyncGetTimes(CFTimeInterval *, CFTimeInterval *, CFTimeInterval *)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    *a1 = sub_19B41E070(0);
    *a2 = sub_19B41E070(0);
    *a3 = v13 / 1000000000.0 + v12 - *MEMORY[0x1E695E468];
  }

  return times == 0;
}

uint64_t sub_19B5E4718(const __CFString *a1, const __CFString *a2, Boolean *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &v30;
  }

  *v5 = 0;
  v6 = CFCopyUserName();
  if (CFEqual(v6, @"mobile"))
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, a2, v5);
    if (!*v5)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_msgSend_UTF8String(@"mobile", v7, v8);
      sub_19B428B50(v28, v11);
      sub_19B432230(v28, __p);
      if (v32 >= 0)
      {
        v13 = objc_msgSend_stringWithUTF8String_(v10, v12, __p);
      }

      else
      {
        v13 = objc_msgSend_stringWithUTF8String_(v10, v12, __p[0]);
      }

      v15 = v13;
      v16 = objc_msgSend_componentsJoinedByString_(&unk_1F0E6A170, v14, @"/");
      v18 = objc_msgSend_stringByAppendingPathComponent_(v15, v17, v16);
      v20 = objc_msgSend_stringByAppendingString_(v18, v19, @"/");
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      __p[0] = v20;
      __p[1] = a2;
      v21 = *MEMORY[0x1E695E480];
      v22 = CFArrayCreate(*MEMORY[0x1E695E480], __p, 2, MEMORY[0x1E695E9C0]);
      if (v22)
      {
        v23 = CFStringCreateByCombiningStrings(v21, v22, &stru_1F0E3D7A0);
        if (v23)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, v23, v5);
          CFRelease(v23);
        }

        CFRelease(v22);
      }
    }
  }

  else
  {
    v24 = CFPreferencesCopyValue(a1, a2, @"mobile", *MEMORY[0x1E695E898]);
    if (v24)
    {
      v25 = v24;
      v26 = CFGetTypeID(v24);
      if (v26 == CFBooleanGetTypeID())
      {
        *v5 = 1;
        AppBooleanValue = CFEqual(v25, *MEMORY[0x1E695E4D0]);
      }

      else if (v26 == CFNumberGetTypeID() && !CFNumberIsFloatType(v25))
      {
        *v5 = 1;
        LODWORD(__p[0]) = 0;
        CFNumberGetValue(v25, kCFNumberIntType, __p);
        AppBooleanValue = LODWORD(__p[0]) != 0;
      }

      else
      {
        AppBooleanValue = 0;
      }

      CFRelease(v25);
    }

    else
    {
      return 0;
    }
  }

  return AppBooleanValue;
}

void sub_19B5E4990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B5E49CC(FILE *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = _dyld_image_count();
  v3 = v2;
  v4 = malloc_type_calloc(v2, 0x38uLL, 0x105004076241286uLL);
  v5 = v4;
  v31 = v4;
  if (v2 && v4)
  {
    v6 = 0;
    do
    {
      image_name = _dyld_get_image_name(v6);
      v8 = &image_name[strlen(image_name) + 1];
      do
      {
        v9 = *(v8 - 2);
        --v8;
      }

      while (v9 != 47);
      image_header = _dyld_get_image_header(v6);
      v11 = image_header;
      v12 = *&image_header->cputype;
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        v14 = 0;
        p_cputype = &image_header[1].cputype;
        do
        {
          if (*p_cputype == 1)
          {
            if (!strncmp(p_cputype + 8, "__TEXT", 6uLL))
            {
              v14 = (v14 + p_cputype[7]);
            }
          }

          else if (*p_cputype == 27)
          {
            v32[0] = *(p_cputype + 2);
          }

          p_cputype = (p_cputype + p_cputype[1]);
          --ncmds;
        }

        while (ncmds);
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      v5 = v31;
      v17 = v31;
      while (1)
      {
        v19 = *v17;
        v17 += 7;
        v18 = v19;
        if (v19 >= v11 || v18 == 0)
        {
          break;
        }

        if (v3 == ++v16)
        {
          v16 = v3;
          v21 = v3;
          goto LABEL_24;
        }
      }

      v21 = v16;
LABEL_24:
      v22 = &v31[56 * v16];
      memmove(v22 + 7, v22, 56 * (v3 + ~v21));
      *v22 = v11;
      v22[1] = v14;
      *(v22 + 1) = v32[0];
      v22[4] = image_name;
      v22[5] = v8;
      v22[6] = v12;
      ++v6;
    }

    while (v6 != v3);
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
  }

  else
  {
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v23 = 0;
  do
  {
    v24 = &v5[56 * v23];
    v25 = *(v24 + 1);
    v32[0] = *v24;
    v32[1] = v25;
    v33 = *(v24 + 2);
    v34 = *(v24 + 6);
    v26 = "other";
    if (v34 != 16777228)
    {
      v27 = "unknown";
      if (HIDWORD(v34) == 9)
      {
        v27 = "armv7";
      }

      v26 = "armv6";
      if (HIDWORD(v34) != 6)
      {
        v26 = v27;
      }
    }

    v30 = v26;
    if (v23)
    {
      v28 = 32;
    }

    else
    {
      v28 = 43;
    }

    fprintf(a1, "%16p - %lld %c%s %s <", *&v32[0], ((v32[0] + __PAIR128__(-1, 0)) >> 64), v28, *(&v33 + 1), v30);
    for (i = 16; i != 32; ++i)
    {
      fprintf(a1, "%02X", *(v32 + i));
    }

    fprintf(a1, "> %s\n", v33);
    ++v23;
    v5 = v31;
  }

  while (v23 != v3);
LABEL_39:

  free(v5);
}

uint64_t *sub_19B5E4CEC(uint64_t *a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *a1 = os_transaction_create();
  a1[1] = 0;
  if (!a3)
  {
    a1[1] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, a2);
    if (qword_1EAFE2B48 != -1)
    {
      dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
    }

    v7 = qword_1EAFE2B50;
    if (os_log_type_enabled(qword_1EAFE2B50, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[1];
      *buf = 134349314;
      v19 = a1;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%{public}p) %{public}@", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B48 != -1)
      {
        dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
      }

      v10 = a1[1];
      v14 = 134349314;
      v15 = a1;
      v16 = 2114;
      v17 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B50, 0, "os_transaction created: (%{public}p) %{public}@", &v14, 22);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLAutoOSTransaction::CLAutoOSTransaction(const char *, LoggingPolicy)", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return a1;
}

os_log_t sub_19B5E4F04()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EAFE2B50 = result;
  return result;
}

id *sub_19B5E4F34(id *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1[1])
  {
    if (qword_1EAFE2B48 != -1)
    {
      dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
    }

    v2 = qword_1EAFE2B50;
    if (os_log_type_enabled(qword_1EAFE2B50, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[1];
      *buf = 134349314;
      v14 = a1;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "os_transaction releasing: (%{public}p) %{public}@", buf, 0x16u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B48 != -1)
      {
        dispatch_once(&qword_1EAFE2B48, &unk_1F0E3A380);
      }

      v5 = a1[1];
      v9 = 134349314;
      v10 = a1;
      v11 = 2114;
      v12 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2B50, 0, "os_transaction releasing: (%{public}p) %{public}@", &v9, 22);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CLAutoOSTransaction::~CLAutoOSTransaction()", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    a1[1] = 0;
  }

  *a1 = 0;
  return a1;
}

void sub_19B5E513C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B45E110(a1);
}

os_log_t sub_19B5E5148()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE2B40 = result;
  return result;
}

void sub_19B5E5178(void *a1, char *a2, char *a3)
{
  v3 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  sub_19B4294F0(a1 + 1, "SpatialLoggerMutex", 0, 1);
}

void sub_19B5E55E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a65 < 0)
  {
    operator delete(a62);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  sub_19B5F4684(v68);
  sub_19B4C5B2C(v67, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B5E5718(uint64_t *a1)
{
  v2 = a1 + 1;
  (*(a1[1] + 16))(a1 + 1);
  if (*a1)
  {
    sub_19B50B004(*a1);
  }

  (*(*v2 + 24))(v2);
  sub_19B5F4684(v2);
  sub_19B4C5B2C(a1, 0);
  return a1;
}

uint64_t sub_19B5E57B8(uint64_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a1 + 1;
  v4 = a1[1];
  v62 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v63 = 256;
  if (*a1)
  {
    sub_19B517F80(v58);
    sub_19B531838(v58);
    Current = CFAbsoluteTimeGetCurrent();
    v61 |= 1u;
    v60 = Current;
    sub_19B4DF8BC(v59);
    v7 = v59[11];
    v8 = *(a2 + 64);
    *(v7 + 152) |= 2u;
    *(v7 + 136) = v8;
    v9 = v59[11];
    v10 = *(a2 + 56);
    *(v9 + 152) |= 1u;
    *(v9 + 128) = v10;
    v11 = v59;
    LODWORD(v10) = *(a2 + 108);
    *(v59 + 66) |= 0x800u;
    *(v11 + 31) = v10;
    v12 = v59;
    v13 = *(a2 + 112);
    *(v59 + 66) |= 1u;
    v12[7] = v13;
    v14 = v59;
    *&v8 = *(a2 + 72);
    *(v59 + 66) |= 0x20u;
    *(v14 + 25) = v8;
    v15 = v59;
    *&v8 = *(a2 + 120);
    *(v59 + 66) |= 0x200u;
    *(v15 + 29) = v8;
    v16 = v59[11];
    LODWORD(__src) = *a2;
    sub_19B5C706C((v16 + 56), &__src);
    v17 = v59[11];
    LODWORD(__src) = *(a2 + 4);
    sub_19B5C706C((v17 + 56), &__src);
    v18 = v59[11];
    LODWORD(__src) = *(a2 + 8);
    sub_19B5C706C((v18 + 56), &__src);
    v19 = v59[11];
    LODWORD(__src) = *(a2 + 12);
    sub_19B5C706C((v19 + 56), &__src);
    v20 = v59[11];
    LODWORD(__src) = *(a2 + 16);
    sub_19B5C706C((v20 + 80), &__src);
    v21 = v59[11];
    LODWORD(__src) = *(a2 + 20);
    sub_19B5C706C((v21 + 80), &__src);
    v22 = v59[11];
    LODWORD(__src) = *(a2 + 24);
    sub_19B5C706C((v22 + 80), &__src);
    v23 = v59[11];
    LODWORD(__src) = *(a2 + 28);
    sub_19B5C706C((v23 + 32), &__src);
    v24 = v59[11];
    LODWORD(__src) = *(a2 + 32);
    sub_19B5C706C((v24 + 32), &__src);
    v25 = v59[11];
    LODWORD(__src) = *(a2 + 36);
    sub_19B5C706C((v25 + 32), &__src);
    v26 = v59[11];
    LODWORD(__src) = *(a2 + 40);
    sub_19B5C706C((v26 + 104), &__src);
    v27 = v59[11];
    LODWORD(__src) = *(a2 + 44);
    sub_19B5C706C((v27 + 104), &__src);
    v28 = v59[11];
    LODWORD(__src) = *(a2 + 48);
    sub_19B5C706C((v28 + 104), &__src);
    v29 = v59[11];
    v30 = *(a2 + 52);
    *(v29 + 152) |= 4u;
    *(v29 + 144) = v30;
    LODWORD(__src) = *(a2 + 80);
    sub_19B5C706C(v59 + 1, &__src);
    LODWORD(__src) = *(a2 + 84);
    sub_19B5C706C(v59 + 1, &__src);
    LODWORD(__src) = *(a2 + 88);
    sub_19B5C706C(v59 + 1, &__src);
    v31 = v59;
    v32 = *(a2 + 92);
    *(v59 + 66) |= 0x100u;
    *(v31 + 28) = v32;
    v33 = v59;
    v34 = *(a2 + 96);
    *(v59 + 66) |= 0x80u;
    *(v33 + 27) = v34;
    v35 = v59;
    if (*(a2 + 104) == 2)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    *(v59 + 66) |= 0x40u;
    *(v35 + 26) = v36;
    v37 = v59;
    v38 = *(a2 + 100);
    *(v59 + 66) |= 0x400u;
    *(v37 + 30) = v38;
    v39 = v59;
    LOBYTE(v38) = *(a2 + 143);
    *(v59 + 66) |= 0x2000u;
    *(v39 + 129) = v38;
    v40 = v59;
    v41 = *(a2 + 144);
    *(v59 + 66) |= 8u;
    v40[10] = v41;
    v42 = v59;
    v43 = *(a2 + 152);
    *(v59 + 66) |= 4u;
    v42[9] = v43;
    v44 = v59;
    LOBYTE(v38) = *(a2 + 160);
    *(v59 + 66) |= 0x1000u;
    *(v44 + 128) = v38;
    v45 = v59;
    LOBYTE(v38) = *(a2 + 161);
    *(v59 + 66) |= 0x4000u;
    *(v45 + 130) = v38;
    if (*(a2 + 140) == 1)
    {
      __src = *(a2 + 128);
      v65 = *(a2 + 136);
      v46 = v59;
      v48 = v59 + 4;
      v47 = v59[4];
      v49 = v59[6];
      if ((v49 - v47) < 9)
      {
        if (v47)
        {
          v59[5] = v47;
          operator delete(v47);
          v49 = 0;
          *v48 = 0;
          v48[1] = 0;
          v48[2] = 0;
        }

        v50 = v49 >> 1;
        if ((v49 >> 1) <= 3)
        {
          v50 = 3;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v51 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        sub_19B4C4F6C(v48, v51);
      }

      v52 = v59[5];
      v53 = v52 - v47;
      if ((v52 - v47) > 8)
      {
        *v47 = __src;
        *(v47 + 2) = v65;
        v46[5] = v47 + 12;
      }

      else
      {
        if (v52 != v47)
        {
          memmove(v47, &__src, v52 - v47);
          v52 = v46[5];
        }

        v54 = v52;
        do
        {
          *v52 = *(&__src + v53);
          v52 += 4;
          v53 += 4;
          v54 += 4;
        }

        while (v53 != 12);
        v46[5] = v54;
      }
    }

    if (*(a2 + 142) == 1)
    {
      v55 = v59;
      v56 = *(a2 + 141);
      *(v59 + 66) |= 0x10u;
      *(v55 + 24) = v56;
    }

    sub_19B50AF20(*a1, v58);
    sub_19B51DBD4(v58);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E5D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19B51DBD4(&a9);
  sub_19B5C6074(v9 - 96);
  _Unwind_Resume(a1);
}

void sub_19B5E5DB4(uint64_t *a1, double *a2)
{
  v4 = a1[1];
  v37 = a1 + 1;
  (*(v4 + 16))();
  v39 = 256;
  if (!*a1)
  {
    goto LABEL_5;
  }

  sub_19B517F80(v34);
  sub_19B532918(v34);
  Current = CFAbsoluteTimeGetCurrent();
  v36 |= 1u;
  *&v34[87] = Current;
  v6 = v35;
  v7 = *a2;
  *(v35 + 124) |= 0x10u;
  *(v6 + 40) = v7;
  v8 = v35;
  *&v7 = a2[2];
  *(v35 + 124) |= 2u;
  *(v8 + 16) = *&v7;
  v9 = v35;
  *&v7 = a2[3];
  *(v35 + 124) |= 4u;
  *(v9 + 24) = *&v7;
  v10 = v35;
  *&v7 = a2[4];
  *(v35 + 124) |= 8u;
  *(v10 + 32) = *&v7;
  v11 = v35;
  *&v7 = a2[1];
  *(v35 + 124) |= 1u;
  *(v11 + 8) = *&v7;
  v12 = v35;
  LODWORD(v7) = *(a2 + 10);
  *(v35 + 124) |= 0x40000u;
  *(v12 + 100) = v7;
  v13 = v35;
  LODWORD(v7) = *(a2 + 11);
  *(v35 + 124) |= 0x80000u;
  *(v13 + 104) = v7;
  v14 = v35;
  LODWORD(v7) = *(a2 + 12);
  *(v35 + 124) |= 0x100000u;
  *(v14 + 108) = v7;
  v15 = v35;
  LODWORD(v7) = *(a2 + 13);
  *(v35 + 124) |= 0x2000u;
  *(v15 + 80) = v7;
  v16 = v35;
  LODWORD(v7) = *(a2 + 14);
  *(v35 + 124) |= 0x4000u;
  *(v16 + 84) = v7;
  v17 = v35;
  LODWORD(v7) = *(a2 + 15);
  *(v35 + 124) |= 0x8000u;
  *(v17 + 88) = v7;
  v18 = v35;
  LODWORD(v7) = *(a2 + 16);
  *(v35 + 124) |= 0x100u;
  *(v18 + 60) = v7;
  v19 = v35;
  LODWORD(v7) = *(a2 + 17);
  *(v35 + 124) |= 0x200u;
  *(v19 + 64) = v7;
  v20 = v35;
  LODWORD(v7) = *(a2 + 18);
  *(v35 + 124) |= 0x400u;
  *(v20 + 68) = v7;
  v21 = v35;
  v22 = *(a2 + 19);
  *(v35 + 124) |= 0x80u;
  *(v21 + 56) = v22;
  v23 = v35;
  LODWORD(v7) = *(a2 + 21);
  *(v35 + 124) |= 0x800u;
  *(v23 + 72) = v7;
  v24 = v35;
  LODWORD(v7) = *(a2 + 24);
  *(v35 + 124) |= 0x20u;
  *(v24 + 48) = v7;
  v25 = v35;
  *(v35 + 124) |= 0x20000u;
  *(v25 + 96) = -1082130432;
  v26 = v35;
  v27 = *(a2 + 120);
  *(v35 + 124) |= 0x1000u;
  *(v26 + 76) = v27;
  v28 = v35;
  v29 = *(a2 + 29);
  *(v35 + 124) |= 0x40u;
  *(v28 + 52) = v29;
  v30 = v35;
  v31 = *(a2 + 61);
  *(v35 + 124) |= 0x10000u;
  *(v30 + 92) = v31;
  v32 = v35;
  *(v35 + 124) |= 0x800000u;
  *(v32 + 120) = 1;
  v33 = v35;
  LODWORD(v7) = *(a2 + 31);
  *(v35 + 124) |= 0x400000u;
  *(v33 + 116) = v7;
  sub_19B50AF20(*a1, v34);
  sub_19B51DBD4(v34);
  if ((v39 & 0x100) == 0)
  {
    return;
  }

  if (v39)
  {
    pthread_mutex_unlock(v38);
  }

  else
  {
LABEL_5:
    (*(*v37 + 24))(v37);
  }
}

void sub_19B5E60E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

void sub_19B5E6104(uint64_t *a1, uint64_t a2, int *a3, double a4)
{
  v8 = a1[1];
  v54 = a1 + 1;
  (*(v8 + 16))();
  v56 = 256;
  if (!*a1)
  {
LABEL_7:
    (*(*v54 + 24))(v54);
    return;
  }

  sub_19B517F80(v51);
  sub_19B531718(v51);
  v9 = *(a2 + 8);
  v51[87] = *a2;
  v53 |= 1u;
  v10 = v52;
  *(v52 + 140) |= 2u;
  *(v10 + 16) = v9;
  v11 = v52;
  v12 = *(a2 + 16);
  *(v52 + 140) |= 0x4000000u;
  *(v11 + 120) = v12;
  v13 = v52;
  v14 = *(a2 + 20);
  *(v52 + 140) |= 0x20000u;
  *(v13 + 84) = v14;
  v15 = v52;
  v16 = *(a2 + 32);
  *(v52 + 140) |= 0x100000u;
  *(v15 + 96) = v16;
  v17 = v52;
  v18 = *(a2 + 40);
  *(v52 + 140) |= 0x200000u;
  *(v17 + 100) = v18;
  v19 = v52;
  v20 = *(a2 + 48);
  *(v52 + 140) |= 0x400000u;
  *(v19 + 104) = v20;
  v21 = v52;
  v22 = *(a2 + 24);
  *(v52 + 140) |= 0x80000u;
  *(v21 + 92) = v22;
  v23 = v52;
  v24 = *(a2 + 56);
  *(v52 + 140) |= 0x8000000u;
  *(v23 + 124) = v24;
  v25 = v52;
  v26 = *(a2 + 60);
  *(v52 + 140) |= 0x10000000u;
  *(v25 + 128) = v26;
  v27 = v52;
  v28 = *(a2 + 64);
  *(v52 + 140) |= 0x20000000u;
  *(v27 + 132) = v28;
  v29 = v52;
  v30 = *(a2 + 68);
  *(v52 + 140) |= 0x8000u;
  *(v29 + 76) = v30;
  v31 = v52;
  v32 = *(a2 + 72);
  *(v52 + 140) |= 0x20u;
  *(v31 + 36) = v32;
  v33 = v52;
  v34 = *(a2 + 76);
  *(v52 + 140) |= 0x400u;
  *(v33 + 56) = v34;
  v35 = v52;
  v36 = *(a2 + 80);
  *(v52 + 140) |= 4u;
  *(v35 + 24) = v36;
  v37 = v52;
  v38 = *(a2 + 84);
  *(v52 + 140) |= 0x10u;
  *(v37 + 32) = v38;
  v39 = v52;
  v40 = *(a2 + 144);
  *(v52 + 140) |= 0x10000u;
  *(v39 + 80) = v40;
  v41 = v52;
  LOBYTE(v40) = *(a3 + 5);
  *(v52 + 140) |= 0x40000000u;
  *(v41 + 136) = v40;
  v42 = v52;
  v43 = a3[2];
  *(v52 + 140) |= 0x40u;
  *(v42 + 40) = v43;
  v44 = v52;
  LOBYTE(v43) = *(a3 + 4);
  *(v52 + 140) |= 0x80000000;
  *(v44 + 137) = v43;
  v45 = v52;
  v46 = *a3;
  *(v52 + 140) |= 8u;
  *(v45 + 28) = v46;
  v47 = v52;
  v48 = *(a3 + 2);
  *(v52 + 140) |= 1u;
  *(v47 + 8) = v48;
  if (a4 >= 0.0)
  {
    v49 = v52;
    v50 = a4;
    *(v52 + 140) |= 0x4000u;
    *(v49 + 72) = v50;
  }

  sub_19B50AF20(*a1, v51);
  sub_19B51DBD4(v51);
  if ((v56 & 0x100) != 0)
  {
    if (v56)
    {
      pthread_mutex_unlock(v55);
      return;
    }

    goto LABEL_7;
  }
}

void sub_19B5E6424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 72);
  _Unwind_Resume(a1);
}

void sub_19B5E6440(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v46 = a1 + 1;
  (*(v4 + 16))();
  v48 = 256;
  if (!*a1)
  {
    goto LABEL_5;
  }

  sub_19B517F80(v43);
  sub_19B532B58(v43);
  Current = CFAbsoluteTimeGetCurrent();
  v45 |= 1u;
  *&v43[87] = Current;
  v6 = v44;
  v7 = *a2 * 0.000001;
  *(v44 + 164) |= 2u;
  *(v6 + 64) = v7;
  v8 = v44;
  v9 = *(a2 + 8) * 0.000001;
  *(v44 + 164) |= 1u;
  *(v8 + 56) = v9;
  v10 = v44;
  LODWORD(v9) = *(a2 + 16);
  *(v44 + 164) |= 0x800u;
  *(v10 + 108) = LODWORD(v9);
  v11 = v44;
  LODWORD(v9) = *(a2 + 20);
  *(v44 + 164) |= 0x1000u;
  *(v11 + 112) = LODWORD(v9);
  v12 = v44;
  LODWORD(v9) = *(a2 + 24);
  *(v44 + 164) |= 0x2000u;
  *(v12 + 116) = LODWORD(v9);
  v13 = v44;
  LODWORD(v9) = *(a2 + 28);
  *(v44 + 164) |= 0x4000u;
  *(v13 + 120) = LODWORD(v9);
  v14 = v44;
  LODWORD(v9) = *(a2 + 32);
  *(v44 + 164) |= 0x8000u;
  *(v14 + 124) = LODWORD(v9);
  v15 = v44;
  LODWORD(v9) = *(a2 + 36);
  *(v44 + 164) |= 0x10000u;
  *(v15 + 128) = LODWORD(v9);
  v16 = v44;
  LODWORD(v9) = *(a2 + 40);
  *(v44 + 164) |= 0x80000u;
  *(v16 + 140) = LODWORD(v9);
  v17 = v44;
  LODWORD(v9) = *(a2 + 44);
  *(v44 + 164) |= 0x100000u;
  *(v17 + 144) = LODWORD(v9);
  v18 = v44;
  LODWORD(v9) = *(a2 + 48);
  *(v44 + 164) |= 0x200000u;
  *(v18 + 148) = LODWORD(v9);
  v19 = v44;
  LODWORD(v9) = *(a2 + 52);
  *(v44 + 164) |= 0x100u;
  *(v19 + 96) = LODWORD(v9);
  v20 = v44;
  LODWORD(v9) = *(a2 + 56);
  *(v44 + 164) |= 0x200u;
  *(v20 + 100) = LODWORD(v9);
  v21 = v44;
  LODWORD(v9) = *(a2 + 60);
  *(v44 + 164) |= 0x400u;
  *(v21 + 104) = LODWORD(v9);
  v22 = v44;
  LODWORD(v9) = *(a2 + 64);
  *(v44 + 164) |= 0x80u;
  *(v22 + 92) = LODWORD(v9);
  v23 = v44;
  v24 = *(a2 + 68);
  *(v44 + 164) |= 0x400000u;
  *(v23 + 152) = v24;
  v25 = v44;
  v26 = *(a2 + 69);
  *(v44 + 164) |= 0x20000000u;
  *(v25 + 159) = v26;
  v27 = v44;
  LODWORD(v9) = *(a2 + 72);
  *(v44 + 164) |= 0x10u;
  *(v27 + 80) = LODWORD(v9);
  v28 = v44;
  LODWORD(v9) = *(a2 + 76);
  *(v44 + 164) |= 8u;
  *(v28 + 76) = LODWORD(v9);
  v29 = v44;
  LODWORD(v9) = *(a2 + 80);
  *(v44 + 164) |= 4u;
  *(v29 + 72) = LODWORD(v9);
  v30 = v44;
  LODWORD(v9) = *(a2 + 84);
  *(v44 + 164) |= 0x20u;
  *(v30 + 84) = LODWORD(v9);
  v31 = v44;
  v32 = *(a2 + 88);
  *(v44 + 164) |= 0x80000000;
  *(v31 + 161) = v32;
  v33 = v44;
  v34 = *(a2 + 89);
  *(v44 + 164) |= 0x10000000u;
  *(v33 + 158) = v34;
  v35 = v44;
  v36 = *(a2 + 90);
  *(v44 + 164) |= 0x4000000u;
  *(v35 + 156) = v36;
  v37 = v44;
  v38 = *(a2 + 91);
  *(v44 + 164) |= 0x40000000u;
  *(v37 + 160) = v38;
  v39 = v44;
  v40 = *(a2 + 92);
  *(v44 + 164) |= 0x40u;
  *(v39 + 88) = v40;
  v41 = v44;
  v42 = *(a2 + 96);
  *(v44 + 164) |= 0x20000u;
  *(v41 + 132) = v42;
  sub_19B50AF20(*a1, v43);
  sub_19B51DBD4(v43);
  if ((v48 & 0x100) == 0)
  {
    return;
  }

  if (v48)
  {
    pthread_mutex_unlock(v47);
  }

  else
  {
LABEL_5:
    (*(*v46 + 24))(v46);
  }
}

void sub_19B5E67CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E67E8(uint64_t *a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v22 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v23 = 256;
  if (*a1)
  {
    sub_19B517F80(v19);
    sub_19B532BE8(v19);
    Current = CFAbsoluteTimeGetCurrent();
    v21 |= 1u;
    *&v19[87] = Current;
    v7 = v20;
    v8 = *a2 * 0.000001;
    *(v20 + 80) |= 1u;
    *(v7 + 8) = v8;
    v9 = v20;
    v10 = *(a2 + 8) * 0.000001;
    *(v20 + 80) |= 4u;
    *(v9 + 24) = v10;
    v11 = v20;
    v12 = *(a2 + 16) * 0.000001;
    *(v20 + 80) |= 2u;
    *(v11 + 16) = v12;
    v13 = v20;
    LODWORD(v12) = *(a2 + 24);
    *(v20 + 80) |= 0x800u;
    *(v13 + 64) = LODWORD(v12);
    v14 = v20;
    LODWORD(v12) = *(a2 + 28);
    *(v20 + 80) |= 0x1000u;
    *(v14 + 68) = LODWORD(v12);
    v15 = v20;
    LODWORD(v12) = *(a2 + 32);
    *(v20 + 80) |= 0x2000u;
    *(v15 + 72) = LODWORD(v12);
    v16 = v20;
    v17 = *(a2 + 36);
    *(v20 + 80) |= 0x4000u;
    *(v16 + 76) = v17;
    sub_19B50AF20(*a1, v19);
    sub_19B51DBD4(v19);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E6988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E69A4(uint64_t *a1, float64x2_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v30 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v31 = 256;
  if (*a1)
  {
    sub_19B517F80(v27);
    sub_19B5318C8(v27);
    Current = CFAbsoluteTimeGetCurrent();
    v29 |= 1u;
    v27[87] = Current;
    v7 = v28;
    v8 = a2->f64[0];
    *(v28 + 128) |= 0x20u;
    *(v7 + 96) = v8;
    v9 = v28;
    v10 = a2->f64[1];
    *(v28 + 128) |= 0x10u;
    *(v9 + 88) = v10;
    v11 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[1]), a2[2]);
    v26 = vextq_s8(v11, v11, 4uLL);
    sub_19B41E130(&v26, v26);
    for (i = 0; i != 4; ++i)
    {
      v25.i32[0] = v26.i32[i];
      sub_19B5C706C((v28 + 32), &v25);
    }

    v13 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[3]), a2[4]);
    v25 = vextq_s8(v13, v13, 4uLL);
    sub_19B41E130(&v25, v25);
    for (j = 0; j != 4; ++j)
    {
      v24 = v25.i32[j];
      sub_19B5C706C((v28 + 8), &v24);
    }

    v15 = v28;
    v16 = a2[5].f64[0];
    *(v28 + 128) |= 1u;
    *(v15 + 56) = v16;
    v17 = v28;
    v18 = a2[5].f64[1];
    *(v28 + 128) |= 8u;
    *(v17 + 80) = v18;
    v19 = v28;
    v20 = a2[6].f64[0];
    *(v28 + 128) |= 2u;
    *(v19 + 64) = v20;
    v21 = v28;
    v22 = a2[6].f64[1];
    *(v28 + 128) |= 4u;
    *(v21 + 72) = v22;
    sub_19B50AF20(*a1, v27);
    sub_19B51DBD4(v27);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E6BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_19B51DBD4(va);
  sub_19B5C6074(v15 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E6BD8(uint64_t *a1, double a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v13 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v14 = 256;
  if (*a1)
  {
    sub_19B517F80(v10);
    sub_19B532888(v10);
    Current = CFAbsoluteTimeGetCurrent();
    v12 |= 1u;
    *&v10[87] = Current;
    v7 = v11;
    *(v11 + 20) |= 1u;
    *(v7 + 8) = a2;
    v8 = v11;
    *(v11 + 20) |= 2u;
    *(v8 + 16) = 1;
    sub_19B50AF20(*a1, v10);
    sub_19B51DBD4(v10);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E6CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E6D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v32 = *MEMORY[0x1E69E9840];
  v8 = v3 + 8;
  v7 = *(v3 + 8);
  v25 = v3 + 8;
  (*(v7 + 16))(v3 + 8);
  v26 = 256;
  if (*v6)
  {
    sub_19B517F80(v21);
    sub_19B5317A8(v21);
    Current = CFAbsoluteTimeGetCurrent();
    v24 |= 1u;
    v22 = Current;
    v10 = v23;
    v11 = mach_absolute_time();
    v12 = sub_19B41E070(v11);
    *(v10 + 24) |= 1u;
    *(v10 + 16) = v12;
    v13 = v23;
    sub_19B428B50(buf, v5);
    v14 = *(v13 + 8);
    if (!v14)
    {
      operator new();
    }

    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    v15 = *buf;
    *(v14 + 16) = *&buf[16];
    *v14 = v15;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      *buf = 136380931;
      *&buf[4] = v5;
      *&buf[12] = 2049;
      *&buf[14] = v22;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_INFO, "[CMSpatialLogger] Logging event: %{private}s timestamp: %{private}f", buf, 0x16u);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
      }

      v27 = 136380931;
      v28 = v5;
      v29 = 2049;
      v30 = v22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[CMSpatialLogger] Logging event: %{private}s timestamp: %{private}f", &v27, 22);
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSpatialLogger::logEvent(const char *const)", "CoreLocation: %s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    sub_19B50AF20(*v6, v21);
    sub_19B51DBD4(v21);
  }

  return (*(*v8 + 24))(v8);
}

void sub_19B5E7048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 55) < 0)
  {
    operator delete(STACK[0xFB0]);
  }

  sub_19B51DBD4(va);
  sub_19B5C6074(&STACK[0xF78]);
  _Unwind_Resume(a1);
}

void sub_19B5E7094(uint64_t *a1, int *a2)
{
  v4 = a1[1];
  v48 = a1 + 1;
  (*(v4 + 16))();
  v50 = 256;
  if (!*a1)
  {
    goto LABEL_5;
  }

  sub_19B517F80(v45);
  sub_19B531958(v45);
  Current = CFAbsoluteTimeGetCurrent();
  v47 |= 1u;
  *&v45[87] = Current;
  v6 = v46;
  v7 = *a2;
  *(v46 + 116) |= 0x10000u;
  *(v6 + 92) = v7;
  v8 = v46;
  v9 = a2[4];
  *(v46 + 116) |= 0x200u;
  *(v8 + 64) = v9;
  v10 = v46;
  v11 = a2[1];
  *(v46 + 116) |= 0x20u;
  *(v10 + 48) = v11;
  v12 = v46;
  v13 = a2[2];
  *(v46 + 116) |= 0x2000u;
  *(v12 + 80) = v13;
  v14 = v46;
  v15 = a2[3];
  *(v46 + 116) |= 0x400u;
  *(v14 + 68) = v15;
  v16 = v46;
  LOBYTE(v15) = *(a2 + 32);
  *(v46 + 116) |= 0x100000u;
  *(v16 + 108) = v15;
  v17 = v46;
  LODWORD(Current) = a2[9];
  *(v46 + 116) |= 0x8000u;
  *(v17 + 88) = LODWORD(Current);
  v18 = v46;
  v19 = *(a2 + 5);
  *(v46 + 116) |= 4u;
  *(v18 + 24) = v19;
  v20 = v46;
  LOBYTE(v15) = *(a2 + 48);
  *(v46 + 116) |= 0x200000u;
  *(v20 + 109) = v15;
  v21 = v46;
  v22 = a2[13];
  *(v46 + 116) |= 0x100u;
  *(v21 + 60) = v22;
  v23 = v46;
  v24 = *(a2 + 7);
  *(v46 + 116) |= 1u;
  *(v23 + 8) = v24;
  v25 = v46;
  v26 = *(a2 + 10);
  *(v46 + 116) |= 2u;
  *(v25 + 16) = v26;
  v27 = v46;
  v28 = a2[22];
  *(v46 + 116) |= 0x1000u;
  *(v27 + 76) = v28;
  v29 = v46;
  v30 = a2[23];
  *(v46 + 116) |= 0x800u;
  *(v29 + 72) = v30;
  v31 = v46;
  LOBYTE(v30) = a2[24] & 1;
  *(v46 + 116) |= 0x2000000u;
  *(v31 + 113) = v30;
  v32 = v46;
  LOBYTE(v30) = (a2[24] & 2) != 0;
  *(v46 + 116) |= 0x1000000u;
  *(v32 + 112) = v30;
  v33 = v46;
  LOBYTE(v30) = (a2[24] & 4) != 0;
  *(v46 + 116) |= 0x400000u;
  *(v33 + 110) = v30;
  v34 = v46;
  LOBYTE(v30) = (a2[24] & 8) != 0;
  *(v46 + 116) |= 0x4000000u;
  *(v34 + 114) = v30;
  v35 = v46;
  LOBYTE(v30) = (a2[24] & 0x10) != 0;
  *(v46 + 116) |= 0x800000u;
  *(v35 + 111) = v30;
  v36 = v46;
  v37 = a2[25];
  *(v46 + 116) |= 0x40000u;
  *(v36 + 100) = v37;
  v38 = v46;
  v39 = a2[26];
  *(v46 + 116) |= 0x80000u;
  *(v38 + 104) = v39;
  v40 = v46;
  v41 = *(a2 + 14);
  *(v46 + 116) |= 8u;
  *(v40 + 32) = v41;
  v42 = v46;
  v43 = *(a2 + 15);
  *(v46 + 116) |= 0x10u;
  *(v42 + 40) = v43;
  v44 = v46;
  LODWORD(v43) = a2[32];
  *(v46 + 116) |= 0x20000u;
  *(v44 + 96) = v43;
  sub_19B50AF20(*a1, v45);
  sub_19B51DBD4(v45);
  if ((v50 & 0x100) == 0)
  {
    return;
  }

  if (v50)
  {
    pthread_mutex_unlock(v49);
  }

  else
  {
LABEL_5:
    (*(*v48 + 24))(v48);
  }
}

void sub_19B5E73D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E73F0(uint64_t *a1, char *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v21 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v22 = 256;
  if (*a1)
  {
    sub_19B517F80(v17);
    sub_19B532D98(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    v19 = Current;
    sub_19B4CEB20(v18);
    v7 = v18[4];
    v8 = *a2;
    *(v7 + 36) |= 2u;
    *(v7 + 28) = v8;
    v9 = v18[4];
    sub_19B428B50(&__p, a2 + 4);
    sub_19B5C62E0(v9, &__p);
    if (v16 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v10 = v18[4];
    sub_19B428B50(&__p, a2 + 68);
    sub_19B5C6334(v10, &__p);
    if (v16 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v11 = v18[4];
    v12 = *(a2 + 25);
    *(v11 + 36) |= 1u;
    *(v11 + 24) = v12;
    v13 = v18;
    LOBYTE(v12) = a2[124];
    *(v18 + 44) |= 1u;
    *(v13 + 40) = v12;
    __p.n128_u32[0] = *(a2 + 32);
    sub_19B5C706C(v18 + 1, &__p);
    __p.n128_u32[0] = *(a2 + 33);
    sub_19B5C706C(v18 + 1, &__p);
    __p.n128_u32[0] = *(a2 + 34);
    sub_19B5C706C(v18 + 1, &__p);
    __p.n128_u32[0] = *(a2 + 35);
    sub_19B5C706C(v18 + 1, &__p);
    sub_19B50AF20(*a1, v17);
    sub_19B51DBD4(v17);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E75E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_19B51DBD4(&a15);
  sub_19B5C6074(v15 - 72);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7638(uint64_t *a1, char *a2, double a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  v17 = a1 + 1;
  (*(v6 + 16))(a1 + 1);
  v18 = 256;
  if (*a1)
  {
    sub_19B517F80(v14);
    sub_19B5319E8(v14);
    Current = CFAbsoluteTimeGetCurrent();
    v16 |= 1u;
    *&v14[87] = Current;
    v9 = v15;
    sub_19B428B50(&__p, a2);
    sub_19B5C62E0(v9, &__p);
    if (v13 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v10 = v15;
    *(v15 + 24) |= 1u;
    *(v10 + 16) = a3;
    sub_19B50AF20(*a1, v14);
    sub_19B51DBD4(v14);
  }

  return (*(*v7 + 24))(v7);
}

void sub_19B5E7760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_19B51DBD4(&a15);
  sub_19B5C6074(v15 - 88);
  _Unwind_Resume(a1);
}

void sub_19B5E779C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v30 = a1 + 1;
  (*(v4 + 16))();
  v32 = 256;
  if (!*a1)
  {
    goto LABEL_5;
  }

  sub_19B517F80(v27);
  sub_19B532E28(v27);
  Current = CFAbsoluteTimeGetCurrent();
  v29 |= 1u;
  *&v27[87] = Current;
  v6 = v28;
  LODWORD(Current) = *a2;
  *(v28 + 60) |= 8u;
  *(v6 + 24) = LODWORD(Current);
  v7 = v28;
  LODWORD(Current) = *(a2 + 4);
  *(v28 + 60) |= 0x10u;
  *(v7 + 28) = LODWORD(Current);
  v8 = v28;
  LODWORD(Current) = *(a2 + 8);
  *(v28 + 60) |= 0x20u;
  *(v8 + 32) = LODWORD(Current);
  v9 = v28;
  LODWORD(Current) = *(a2 + 12);
  *(v28 + 60) |= 0x40u;
  *(v9 + 36) = LODWORD(Current);
  v10 = v28;
  LODWORD(Current) = *(a2 + 16);
  *(v28 + 60) |= 0x200u;
  *(v10 + 48) = LODWORD(Current);
  v11 = v28;
  LODWORD(Current) = *(a2 + 20);
  *(v28 + 60) |= 0x100u;
  *(v11 + 44) = LODWORD(Current);
  v12 = v28;
  LODWORD(Current) = *(a2 + 24);
  *(v28 + 60) |= 0x400u;
  *(v12 + 52) = LODWORD(Current);
  v13 = v28;
  v14 = *(a2 + 28);
  *(v28 + 60) |= 0x4000u;
  *(v13 + 59) = v14;
  v15 = v28;
  v16 = *(a2 + 29);
  *(v28 + 60) |= 0x2000u;
  *(v15 + 58) = v16;
  v17 = v28;
  v18 = *(a2 + 30);
  *(v28 + 60) |= 0x1000u;
  *(v17 + 57) = v18;
  v19 = v28;
  v20 = *(a2 + 40);
  *(v28 + 60) |= 0x800u;
  *(v19 + 56) = v20;
  v21 = v28;
  LODWORD(Current) = *(a2 + 44);
  *(v28 + 60) |= 2u;
  *(v21 + 16) = LODWORD(Current);
  v22 = v28;
  LODWORD(Current) = *(a2 + 48);
  *(v28 + 60) |= 4u;
  *(v22 + 20) = LODWORD(Current);
  v23 = v28;
  v24 = *(a2 + 52);
  *(v28 + 60) |= 0x80u;
  *(v23 + 40) = v24;
  v25 = v28;
  v26 = *(a2 + 32);
  *(v28 + 60) |= 1u;
  *(v25 + 8) = v26;
  sub_19B50AF20(*a1, v27);
  sub_19B51DBD4(v27);
  if ((v32 & 0x100) == 0)
  {
    return;
  }

  if (v32)
  {
    pthread_mutex_unlock(v31);
  }

  else
  {
LABEL_5:
    (*(*v30 + 24))(v30);
  }
}

void sub_19B5E79F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

void sub_19B5E7A0C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
  }

  v4 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    v11 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[CMSpatialLogger] logStepDetectionResult walking,%{public}d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E28F00);
    }

    v9[0] = 67240192;
    v9[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMSpatialLogger] logStepDetectionResult walking,%{public}d", v9, 8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMSpatialLogger::logStepDetectionResult(BOOL)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (*(a1 + 24) == 1)
  {
    if (a2)
    {
      v8 = 1547;
    }

    else
    {
      v8 = 1430;
    }

    AudioServicesPlaySystemSound(v8);
  }
}

uint64_t sub_19B5E7BFC(uint64_t *a1, int a2, double a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  v16 = a1 + 1;
  (*(v6 + 16))(a1 + 1);
  v17 = 256;
  if (*a1)
  {
    sub_19B517F80(v12);
    sub_19B532EB8(v12);
    Current = CFAbsoluteTimeGetCurrent();
    v15 |= 1u;
    v14 = Current;
    v9 = v13;
    *(v13 + 16) |= 1u;
    *(v9 + 8) = a2;
    v10 = v13;
    *&Current = a3;
    *(v13 + 16) |= 2u;
    *(v10 + 12) = LODWORD(Current);
    sub_19B50AF20(*a1, v12);
    sub_19B51DBD4(v12);
  }

  return (*(*v7 + 24))(v7);
}

void sub_19B5E7D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 72);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7D28(uint64_t *a1, int a2, int a3, double a4)
{
  v9 = a1 + 1;
  v8 = a1[1];
  v18 = a1 + 1;
  (*(v8 + 16))(a1 + 1);
  v19 = 256;
  if (*a1)
  {
    sub_19B517F80(v15);
    sub_19B532F48(v15);
    Current = CFAbsoluteTimeGetCurrent();
    v17 |= 1u;
    *&v15[87] = Current;
    v11 = v16;
    *&Current = a4;
    *(v16 + 20) |= 4u;
    *(v11 + 16) = LODWORD(Current);
    v12 = v16;
    *(v16 + 20) |= 1u;
    *(v12 + 8) = a2;
    v13 = v16;
    *(v16 + 20) |= 2u;
    *(v13 + 12) = a3;
    sub_19B50AF20(*a1, v15);
    sub_19B51DBD4(v15);
  }

  return (*(*v9 + 24))(v9);
}

void sub_19B5E7E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7E74(uint64_t *a1, int a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v12 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v13 = 256;
  if (*a1)
  {
    sub_19B517F80(v9);
    sub_19B532FD8(v9);
    Current = CFAbsoluteTimeGetCurrent();
    v11 |= 1u;
    *&v9[87] = Current;
    v7 = v10;
    *(v10 + 12) |= 1u;
    *(v7 + 8) = a2;
    sub_19B50AF20(*a1, v9);
    sub_19B51DBD4(v9);
  }

  return (*(*v5 + 24))(v5);
}

void sub_19B5E7F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  sub_19B5C6074(v3 - 56);
  _Unwind_Resume(a1);
}

uint64_t sub_19B5E7F7C(uint64_t *a1, uint64_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v21 = a1 + 1;
  (*(v4 + 16))(a1 + 1);
  v22 = 256;
  if (*a1)
  {
    sub_19B517F80(v17);
    sub_19B5315F8(v17);
    Current = CFAbsoluteTimeGetCurrent();
    v20 |= 1u;
    v19 = Current;
    v7 = v18;
    v8 = *(a2 + 16);
    *(v18 + 32) |= 4u;
    *(v7 + 7) = v8;
    sub_19B4CB660(v18);
    v9 = v18[1];
    v10 = *a2;
    *(v9 + 32) |= 1u;
    *(v9 + 8) = v10;
    v11 = v18[1];
    LODWORD(v10) = *(a2 + 2);
    *(v11 + 32) |= 4u;
    *(v11 + 20) = v10;
    v12 = v18[1];
    LODWORD(v10) = *(a2 + 3);
    *(v12 + 32) |= 8u;
    *(v12 + 24) = v10;
    v13 = v18[1];
    LODWORD(v10) = *(a2 + 4);
    *(v13 + 32) |= 0x10u;
    *(v13 + 28) = v10;
    v14 = v18;
    v15 = a2[3];
    *(v18 + 32) |= 1u;
    v14[2] = v15;
    sub_19B50AF20(*a1, v17);
    sub_19B51DBD4(v17);
  }

  return (*(*v5 + 24))(v5);
}