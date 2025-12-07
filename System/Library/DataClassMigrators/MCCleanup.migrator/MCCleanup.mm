void sub_CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_CC4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return _DMLogFunc();
  }

  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}