void sub_26B241014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  objc_destroyWeak((v19 + 40));
  _Unwind_Resume(a1);
}

void sub_26B241068(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained handleServiceCrash];
}

void sub_26B2410CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained handleServiceCrash];
}

void sub_26B2413BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_26B2416E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  objc_destroyWeak((v21 + 40));
  _Unwind_Resume(a1);
}

void sub_26B241730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained handleServiceCrash];
}

void sub_26B241794(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained handleServiceCrash];
}

uint64_t sub_26B2418D4(uint64_t a1)
{
  [*(a1 + 32) startServiceConnection];
  v2 = *(a1 + 32);

  return MEMORY[0x2821F9670](v2, sel_setListenerVerbosity_);
}

void sub_26B241D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  objc_destroyWeak((v19 + 40));
  _Unwind_Resume(a1);
}

void sub_26B241D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained handleServiceCrash];
}

void sub_26B241DF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained handleServiceCrash];
}

void sub_26B2425B0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}