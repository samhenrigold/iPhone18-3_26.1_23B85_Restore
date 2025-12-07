void sub_2658D1C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 80), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2658D1F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNanoResourceGrabberClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_280F75D40)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoResourceGrabberLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA85A0;
    v6 = 0;
    qword_280F75D40 = _sl_dlopen();
    v2 = v4[0];
    if (qword_280F75D40)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NanoResourceGrabber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "NanoResourceGrabber");
  }

  qword_280F75D38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoResourceGrabberLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_280F75D40 = result;
  return result;
}

void __getISIconClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ISIcon");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280F75D48 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "ISIcon");
    IconServicesLibrary();
  }
}

void IconServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!IconServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __IconServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279BA85D8;
    v3 = 0;
    IconServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (IconServicesLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __IconServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  IconServicesLibraryCore_frameworkLibrary = result;
  return result;
}

PSMultilineTitleTableCell *__getISImageDescriptorClass_block_invoke(uint64_t a1)
{
  IconServicesLibrary();
  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280F75D50 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "ISImageDescriptor");
    return [(PSMultilineTitleTableCell *)v3 initWithStyle:v4 reuseIdentifier:v5, v6];
  }

  return result;
}

void sub_2658D4594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658D4AE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2658D4D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658D5388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}