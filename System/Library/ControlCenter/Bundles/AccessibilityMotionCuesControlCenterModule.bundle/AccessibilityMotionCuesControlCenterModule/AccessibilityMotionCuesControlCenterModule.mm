void sub_29C929180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_29C9291A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained motionCuesDelegate];
  [v2 openMotionCuesSettings];

  return 0;
}

uint64_t sub_29C92987C(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = AXLogMotionCues();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_29C928000, v2, OS_LOG_TYPE_DEFAULT, "CC user change: mode=%d", v8, 8u);
  }

  _AXSSetMotionCuesMode();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained module];
  v6 = [v5 contentModuleContext];
  [v6 dismissModule];

  return 0;
}