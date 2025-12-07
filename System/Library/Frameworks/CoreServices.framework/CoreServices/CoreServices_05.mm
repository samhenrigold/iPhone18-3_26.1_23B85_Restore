void sub_1816CF84C(_Unwind_Exception *a1, NSString *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  LaunchServices::BindingEvaluator::~BindingEvaluator(&__p, a2);
  if (a61 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(&a39, v62);
  }

  _Unwind_Resume(a1);
}

char *LaunchServices::BindingEvaluation::State::getDefaultAppCategoryBeingBound(LaunchServices::BindingEvaluation::State *this)
{
  if (*(this + 280) == 1)
  {
    return *(this + 34);
  }

  v3 = *(this + 27);
  if (v3)
  {
    result = LSDefaultAppCategoryGetInfoForTypeIdentifierOrSubordinateTypeIdentifier(v3);
  }

  else
  {
    v4 = *(this + 2);
    if (v4)
    {
      result = LSDefaultAppCategoryGetInfoForSubordinateClaim(0, v4);
    }

    else
    {
      result = 0;
    }
  }

  *(this + 34) = result;
  *(this + 280) = 1;
  return result;
}

uint64_t LaunchServices::BindingEvaluation::BindingResultImpl::enumerateResults(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v3 = a1 + 24;
  v6 = MEMORY[0x1865D71B0](a2);
  if (v4 != v5)
  {
    while ((v6[2](v6, **(a1 + 8), v4) & 1) != 0)
    {
      v4 += 104;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_12;
      }
    }

    v7 = [[_LSBindingForLog alloc] initWithState:*(a1 + 8) binding:v4];
    LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v8, "binding result filter", v7);

    if (v4 != v5 && v4 + 104 != v5)
    {
      v9 = (v4 + 200);
      do
      {
        if ((v6)[2](v6, **(a1 + 8), v9 - 24))
        {
          v10 = *(v9 - 5);
          *v4 = *(v9 - 6);
          *(v4 + 16) = v10;
          v11 = *(v9 - 8);
          *(v9 - 8) = 0;
          v12 = *(v4 + 32);
          *(v4 + 32) = v11;

          v13 = *(v9 - 7);
          *(v9 - 7) = 0;
          v14 = *(v4 + 40);
          *(v4 + 40) = v13;

          *(v4 + 48) = *(v9 - 6);
          *(v4 + 56) = *(v9 - 20);
          v15 = *(v9 - 4);
          *(v9 - 4) = 0;
          v16 = *(v4 + 64);
          *(v4 + 64) = v15;

          v17 = *(v9 - 3);
          *(v9 - 3) = 0;
          v18 = *(v4 + 72);
          *(v4 + 72) = v17;

          *(v4 + 80) = *(v9 - 16);
          v19 = *(v9 - 1);
          *(v9 - 1) = 0;
          v20 = *(v4 + 88);
          *(v4 + 88) = v19;

          *(v4 + 96) = *v9;
          v4 += 104;
        }

        else
        {
          v21 = [[_LSBindingForLog alloc] initWithState:*(a1 + 8) binding:v9 - 24];
          LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v22, "binding result filter", v21);
        }

        v23 = v9 + 2;
        v9 += 26;
      }

      while (v23 != v5);
    }
  }

LABEL_12:

  v24 = *(a1 + 32);

  return std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::erase(v3, v4, v24);
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 104;
        std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void **std::vector<LSBundleClass>::__assign_with_size[abi:nn200100]<LSBundleClass const*,LSBundleClass const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](v7, v11);
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v9[v19];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 4;
        *v16++ = v17;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v7[1] = v18;
  return result;
}

uint64_t std::vector<LSBinding>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 16) = v10;
      v11 = *(v9 + 32);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v8 + 32) = v11;
      *(v8 + 48) = *(v9 + 48);
      v9 += 56;
      v8 += 56;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSBinding *,LSBinding *,LSBinding *>(&v13, a2, v7, v6);
}

void *std::__split_buffer<LSBinding>::__construct_at_end_with_size<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 56 * a3;
    do
    {
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
      *(v4 + 32) = *(a2 + 32);
      result = *(a2 + 40);
      v8 = *(a2 + 48);
      *(v4 + 40) = result;
      *(v4 + 48) = v8;
      v4 += 56;
      a2 += 104;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t std::vector<LSBinding>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSBinding>,LSBinding*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSBinding>,LSBinding*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSBinding *,LSBinding *,LSBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 56);
      *(a4 - 40) = *(v7 - 40);
      *(a4 - 56) = v8;
      v9 = *(v7 - 24);
      *(v7 - 24) = 0;
      v10 = *(a4 - 24);
      *(a4 - 24) = v9;

      v11 = *(v7 - 16);
      *(v7 - 16) = 0;
      v12 = *(a4 - 16);
      *(a4 - 16) = v11;

      *(a4 - 8) = *(v7 - 8);
      a4 -= 56;
      v7 -= 56;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LSBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    *(a4 + 16) = v7;
    objc_storeStrong((a4 + 32), *(v5 + 32));
    objc_storeStrong((a4 + 40), *(v5 + 40));
    *(a4 + 48) = *(v5 + 48);
    v5 += 104;
    a4 += 56;
  }

  while (v5 != v6);
  return v6;
}

uint64_t LaunchServices::BindingEvaluator::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  objc_storeStrong((a1 + 80), *(a2 + 80));
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  if (a1 != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 2);
  }

  v6 = MEMORY[0x1865D71B0](*(a2 + 136));
  v7 = *(a1 + 136);
  *(a1 + 136) = v6;

  objc_storeStrong((a1 + 144), *(a2 + 144));
  v8 = MEMORY[0x1865D71B0](*(a2 + 152));
  v9 = *(a1 + 152);
  *(a1 + 152) = v8;

  objc_storeStrong((a1 + 160), *(a2 + 160));
  v10 = MEMORY[0x1865D71B0](*(a2 + 168));
  v11 = *(a1 + 168);
  *(a1 + 168) = v10;

  return a1;
}

void LaunchServices::BindingEvaluation::addStrongBinding(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2)
{
  if ((*(this + 116) & 2) != 0)
  {
    v5 = _LSBindingLog(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "Skipping strong binding binding due to options", v12, 2u);
    }

    LaunchServices::BindingEvaluation::logToFile(@"Skipping strong binding binding due to options", v6);
  }

  else
  {
    v3 = *(this + 1);
    if (v3)
    {
      v23 = *this;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0u;
      v22 = 0u;
      if ([v3 canIssueIO])
      {
        v4 = v3;
      }

      else
      {
        v7 = [FSNode alloc];
        v8 = [v3 URL];
        v4 = [(FSNode *)v7 initWithURL:v8 flags:0 error:0];
      }

      if (LaunchServices::CopyStrongBindingForNode(&v23, v4, 128, 0, &v18, 0))
      {
        LaunchServices::BindingEvaluation::logToFile(@"Adding strong binding", v9);
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v12[2] = v20;
        v12[3] = v21;
        v12[0] = v18;
        v12[1] = v19;
        if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(this + 118) & 2) != 0)
        {
          *(&v13 + 1) = @"Strong Binding";
        }

        *&v14 = 2;
        LaunchServices::BindingEvaluation::pushBackBinding(this, this + 23, v12);
      }

      else
      {
        LaunchServices::BindingEvaluation::logToFile(@"No strong binding found", v9);
      }

      if (v23)
      {
        if (v25 == 1)
        {
          _LSContextDestroy(v23);
        }
      }

      v10 = v24;
      v23 = 0;
      v24 = 0;

      v25 = 0;
      v11 = v26;
      v26 = 0;
    }
  }
}

void _LSSetCrashMessage(NSString *a1)
{
  v1 = a1;
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSSetCrashMessage();
  }

  v2 = _LSLoggingQueue(void)::logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke;
  block[3] = &unk_1E6A1A830;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

{
  v1 = a1;
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSSetCrashMessage();
  }

  v2 = _LSLoggingQueue(void)::logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_0;
  block[3] = &unk_1E6A1A830;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void ___ZL18_LSSetCrashMessageP8NSString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    v3 = strdup([v1 UTF8String]);
    v4 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___ZL18_LSSetCrashMessageP8NSString_block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v6 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v6, v3, memory_order_relaxed, memory_order_relaxed);
  if (v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void ___ZL15_LSLoggingQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.logging", v2);
  v1 = _LSLoggingQueue(void)::logQueue;
  _LSLoggingQueue(void)::logQueue = v0;
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v8, v10);
      v10 += 104;
      v8 += 104;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v12, a2, v7, v6);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*,LaunchServices::BindingEvaluation::ExtendedBinding*,LaunchServices::BindingEvaluation::ExtendedBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = *(v6 + 48);
      *(a4 + 40) = v8;
      *(a4 + 48) = v9;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 96) = *(v6 + 96);
      v6 += 104;
      a4 += 104;
    }

    while (v6 != a3);
  }

  return a4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 104);
      *(v9 - 88) = *(a3 + v7 - 88);
      *(v9 - 104) = v10;
      v11 = *(a3 + v7 - 72);
      *(a3 + v7 - 72) = 0;
      v12 = *(a4 + v7 - 72);
      *(v9 - 72) = v11;

      v13 = *(a3 + v7 - 64);
      *(v8 - 64) = 0;
      v14 = *(a4 + v7 - 64);
      *(v9 - 64) = v13;

      *(v9 - 56) = *(a3 + v7 - 56);
      *(v9 - 48) = *(a3 + v7 - 48);
      v15 = *(a3 + v7 - 40);
      *(v8 - 40) = 0;
      v16 = *(a4 + v7 - 40);
      *(v9 - 40) = v15;

      v17 = *(a3 + v7 - 32);
      *(v8 - 32) = 0;
      v18 = *(a4 + v7 - 32);
      *(v9 - 32) = v17;

      *(v9 - 24) = *(a3 + v7 - 24);
      v19 = *(a3 + v7 - 16);
      *(v8 - 16) = 0;
      v20 = *(a4 + v7 - 16);
      *(v9 - 16) = v19;

      *(v9 - 8) = *(a3 + v7 - 8);
      v7 -= 104;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    *(a4 + 16) = v7;
    objc_storeStrong((a4 + 32), *(v5 + 32));
    objc_storeStrong((a4 + 40), *(v5 + 40));
    *(a4 + 48) = *(v5 + 48);
    *(a4 + 56) = *(v5 + 56);
    objc_storeStrong((a4 + 64), *(v5 + 64));
    objc_storeStrong((a4 + 72), *(v5 + 72));
    *(a4 + 80) = *(v5 + 80);
    objc_storeStrong((a4 + 88), *(v5 + 88));
    *(a4 + 96) = *(v5 + 96);
    *(a4 + 98) = *(v5 + 98);
    v5 += 104;
    a4 += 104;
  }

  while (v5 != v6);
  return v6;
}

void ___ZN14LaunchServices17BindingEvaluationL31weaklyBoundAppHasRequiredClaimsERKNS0_5StateERK9LSBinding_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [(_LSDatabase *)***(a1 + 40) store];
  v6 = _CSStringCopyCFString();
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = [v6 isEqualToString:*(*(a1 + 48) + 8)];
    v7 = v9;
    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void ___ZN14LaunchServices17BindingEvaluationL27addExtensionAndOSTypeClaimsERNS0_5StateE_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) != a2)
  {
    *(v5 + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = _LSDatabaseFindBindingMapIndex(***(a1 + 48), a2);
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 != -1 && v6 != 2)
  {
    v8 = *(a1 + 48);

    LaunchServices::BindingEvaluation::addClaimsInBindingMap(v8, v6, a3, 0);
  }
}

uint64_t ___ZN14LaunchServices17BindingEvaluationL17addWildcardClaimsERNS0_5StateE_block_invoke(uint64_t result, int a2, uint64_t a3)
{
  if ((*(a3 + 175) & 0x10) != 0)
  {
    [(_LSDatabase *)***(result + 32) store];
    return _CSArrayEnumerateAllValues();
  }

  return result;
}

void ___ZN14LaunchServices17BindingEvaluationL17addWildcardClaimsERNS0_5StateE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = _LSClaimGet(***(a1 + 32), a3);
  if (v5 && (*(v5 + 8) & 0x10) != 0)
  {
    v7 = 0u;
    v8 = 0u;
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    LODWORD(v7) = *(a1 + 48);
    *(&v7 + 1) = *(a1 + 40);
    LODWORD(v8) = v3;
    *(&v8 + 1) = v5;
    if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (v6 = *(a1 + 32), (*(v6 + 118) & 2) != 0))
    {
      *(&v9 + 1) = @"Wildcard document claim";
      v6 = *(a1 + 32);
    }

    *&v10 = 1;
    LaunchServices::BindingEvaluation::pushBackBinding(v6, (v6 + 184), &v7);
  }
}

void ___ZN14LaunchServices17BindingEvaluationL21addAlternateUTIClaimsERNS0_5StateE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (*(v4 + 224) != a3 && (*(a4 + 8) & 1) != 0)
  {
    v7 = _UTTypeConformsTo(**v4, a3, *(a1 + 48));
    if (v7)
    {
      v8 = _LSDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 40);
        [(_LSDatabase *)***(a1 + 32) store];
        v10 = _CSStringCopyCFString();
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_INFO, "Found alternate UTI for extension .%@: %@", &v11, 0x16u);
      }

      LaunchServices::BindingEvaluation::addClaimsInBindingMap(*(a1 + 32), 0, *(a4 + 12), 1);
    }
  }
}

uint64_t ___ZN14LaunchServices17BindingEvaluationL18addParentUTIClaimsERNS0_5StateE_block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = 0;
  result = _UTGetActiveTypeForCFStringIdentifier(***(a1 + 32), a2, &v4);
  if (result)
  {
    LaunchServices::BindingEvaluation::addClaimsForParentUTI(*(a1 + 32), result);
    return _UTTypeSearchConformsToTypes(***(a1 + 32), v4, LaunchServices::BindingEvaluation::searchParentUTIsForClaims, *(a1 + 32), 0);
  }

  return result;
}

void *LaunchServices::BindingEvaluation::BindingResultImpl::BindingResultImpl<std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1EEF62518;
  a1[1] = a2;
  a1[2] = 0;
  v4 = *a3;
  v5 = a3[1];
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__init_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>>(a1 + 3, v4, v5, 0x4EC4EC4EC4EC4EC5 * ((v5 - v4) >> 3));
  return a1;
}

void *std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__init_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>>(void *result, uint64_t a2, uint64_t a3, size_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vallocate[abi:nn200100](result, a4);
    if (a2 == a3)
    {
      v7 = v6[1];
    }

    else
    {
      v7 = v6[1];
      do
      {
        result = std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(v6, v7, a2);
        a2 += 104;
        v7 += 104;
      }

      while (a2 != a3);
    }

    v6[1] = v7;
  }

  return result;
}

char *std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vallocate[abi:nn200100](void *a1, size_t a2)
{
  if (a2 >= 0x276276276276277)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v2 = a2;
  LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
  v2 *= 104;
  result = malloc_type_zone_malloc(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, v2, 0x10E00401500E465uLL);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[v2];
  return result;
}

void std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__assign_with_size[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding const*,LaunchServices::BindingEvaluation::ExtendedBinding const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) >= a4)
  {
    v12 = *(a1 + 8) - v8;
    if (0x4EC4EC4EC4EC4EC5 * (v12 >> 3) >= a4)
    {
      std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v21, a2, a3, v8);
      v18 = v17;
      v19 = *(a1 + 8);
      if (v19 != v17)
      {
        do
        {
          v19 -= 104;
          std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v19);
        }

        while (v19 != v18);
      }

      *(a1 + 8) = v18;
    }

    else
    {
      v13 = std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v20, a2, a2 + v12, v8);
      if (v13 == a3)
      {
        v15 = *(a1 + 8);
      }

      else
      {
        v14 = v13;
        v15 = *(a1 + 8);
        v16 = v15;
        do
        {
          std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(a1, v16, v14);
          v14 += 104;
          v16 += 104;
          v15 += 104;
        }

        while (v14 != a3);
      }

      *(a1 + 8) = v15;
    }
  }

  else
  {
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vdeallocate(a1);
    if (a4 > 0x276276276276276)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v10 = 0x276276276276276;
    }

    else
    {
      v10 = v9;
    }

    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vallocate[abi:nn200100](a1, v10);
    if (v6 == a3)
    {
      v11 = *(a1 + 8);
    }

    else
    {
      v11 = *(a1 + 8);
      do
      {
        std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(a1, v11, v6);
        v6 += 104;
        v11 += 104;
      }

      while (v6 != a3);
    }

    *(a1 + 8) = v11;
  }
}

void LaunchServices::BindingEvaluation::BindingResultImpl::~BindingResultImpl(id *this)
{
  *this = &unk_1EEF62518;
  v2 = this + 3;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t LaunchServices::BindingEvaluation::compareVendorsAndBundleClass(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, uint64_t a3, const LaunchServices::BindingEvaluation::ExtendedBinding *a4, const LaunchServices::BindingEvaluation::ExtendedBinding *a5)
{
  v7 = a2;
  v9 = *(this + 15);
  v10 = *(this + 16);
  if (v9 == v10)
  {
    goto LABEL_8;
  }

  while (*v9 != 14)
  {
    if (++v9 == v10)
    {
      goto LABEL_10;
    }
  }

  if (v9 != v10)
  {
LABEL_8:
    if (LaunchServices::BindingEvaluation::State::getDefaultAppCategoryBeingBound(this) && (*(*(a3 + 8) + 168) == 14 || *(*(a4 + 1) + 168) == 14))
    {
      LaunchServices::BindingEvaluation::logToFile(@"binding default app category with at least one system app placeholder, not preferring apple", v11);
      goto LABEL_49;
    }
  }

LABEL_10:
  v12 = *(a3 + 8);
  if (v12)
  {
    v13 = *(a4 + 1);
    if ((*(v12 + 164) & 1) == 0)
    {
      if (v13 && (*(v13 + 164) & 1) != 0)
      {
        if (v7)
        {
          v14 = "vendor (prioritized is-Apple check)";
        }

        else
        {
          v14 = "vendor";
        }

        LaunchServices::BindingEvaluation::logComparison(this, a3, a4, v14, -1);
        LOBYTE(v15) = -1;
        return v15;
      }

      goto LABEL_20;
    }

    if (!v13 || (*(v13 + 164) & 1) == 0)
    {
      if (v7)
      {
        v18 = "vendor (prioritized is-Apple check)";
      }

      else
      {
        v18 = "vendor";
      }

      LOBYTE(v15) = 1;
      v19 = this;
      v20 = a3;
      v21 = a4;
      v22 = 1;
      goto LABEL_75;
    }

    [(_LSDatabase *)**this store];
    v23 = _CSStringCopyCFString();
    v24 = v23;
    if (v23)
    {
      v25 = _LSBundleGetSystemApplicationTypes(v23);
      v26 = [v25 containsObject:v24];
    }

    else
    {
      v26 = 0;
    }

    [(_LSDatabase *)**this store];
    v27 = _CSStringCopyCFString();
    v28 = v27;
    if (v27)
    {
      v29 = _LSBundleGetSystemApplicationTypes(v27);
      v30 = [v29 containsObject:v28];

      if (!v26)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v30 = 0;
      if (!v26)
      {
        goto LABEL_39;
      }
    }

    if ((v30 & 1) == 0)
    {
      LOBYTE(v15) = 1;
LABEL_44:

      goto LABEL_45;
    }

LABEL_39:
    if (v26 & 1 | ((v30 & 1) == 0))
    {
      v15 = [v24 isEqualToString:@"Internal"];
      v31 = [v28 isEqualToString:@"Internal"];
      if (v15)
      {
        LOBYTE(v15) = (v15 & ~v31) << 31 >> 31;
      }

      else
      {
        LOBYTE(v15) = v31;
      }
    }

    else
    {
      LOBYTE(v15) = -1;
    }

    goto LABEL_44;
  }

  v16 = *(a4 + 1);
  if (!v16)
  {
LABEL_20:
    if (v7)
    {
      v17 = "vendor (prioritized is-Apple check)";
    }

    else
    {
      v17 = "vendor";
    }

    LaunchServices::BindingEvaluation::logComparison(this, a3, a4, v17, 0);
    goto LABEL_49;
  }

  v15 = -(*(v16 + 164) & 1);
LABEL_45:
  if (v7)
  {
    v32 = "vendor (prioritized is-Apple check)";
  }

  else
  {
    v32 = "vendor";
  }

  LaunchServices::BindingEvaluation::logComparison(this, a3, a4, v32, v15);
  if (!v15)
  {
LABEL_49:
    v33 = *(*(a3 + 8) + 168);
    v34 = *(*(a4 + 1) + 168);
    if (v33 != 16 || v34 == 16)
    {
      if (v33 != 16 && v34 == 16)
      {
        LOBYTE(v15) = 1;
        goto LABEL_71;
      }

      if (v33 != 14 || v34 == 14)
      {
        LOBYTE(v15) = v33 != 14 && v34 == 14;
        goto LABEL_71;
      }
    }

    LOBYTE(v15) = -1;
LABEL_71:
    if (v7)
    {
      v18 = "system placeholder (prioritized is-Apple check)";
    }

    else
    {
      v18 = "system placeholder";
    }

    v22 = v15;
    v19 = this;
    v20 = a3;
    v21 = a4;
LABEL_75:
    LaunchServices::BindingEvaluation::logComparison(v19, v20, v21, v18, v22);
  }

  return v15;
}

id LaunchServices::BindingEvaluation::getBindingPath(void ***this, id *a2, const LaunchServices::BindingEvaluation::ExtendedBinding *a3)
{
  v5 = a2[8];
  if (!v5)
  {
    v6 = _LSAliasGetPath(**this, *a2[1]);
    v7 = a2[8];
    a2[8] = v6;

    v5 = a2[8];
  }

  return v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v7;
      v8 = *(v5 + 32);
      *(v5 + 32) = 0;
      v9 = *(a4 + 32);
      *(a4 + 32) = v8;

      v10 = *(v5 + 40);
      *(v5 + 40) = 0;
      v11 = *(a4 + 40);
      *(a4 + 40) = v10;

      *(a4 + 48) = *(v5 + 48);
      *(a4 + 56) = *(v5 + 56);
      v12 = *(v5 + 64);
      *(v5 + 64) = 0;
      v13 = *(a4 + 64);
      *(a4 + 64) = v12;

      v14 = *(v5 + 72);
      *(v5 + 72) = 0;
      v15 = *(a4 + 72);
      *(a4 + 72) = v14;

      *(a4 + 80) = *(v5 + 80);
      v16 = *(v5 + 88);
      *(v5 + 88) = 0;
      v17 = *(a4 + 88);
      *(a4 + 88) = v16;

      *(a4 + 96) = *(v5 + 96);
      v5 += 104;
      a4 += 104;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

double _LSBindingListBufferInit(uint64_t a1, void *a2)
{
  *&result = 8184;
  *a2 = 8184;
  return result;
}

uint64_t _LSBindingListBufferAppend(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a1;
  v8 = a2 + 2;
  v9 = a2[1];
  if (!v9)
  {
LABEL_6:
    v13 = 0;
LABEL_20:
    v17 = *a2;
    if (v17 >= 0xC)
    {
      a2[1] = v9 + 1;
      memmove(v8 + 3, v8, a2 - v8 - v17 + 0x2000);
      *v8 = v5;
      [(_LSDatabase *)v7 store];
      _CSStringRetain();
      v8[1] = 1;
      v8[2] = v4;
      [(_LSDatabase *)v7 store];
      _CSStringRetain();
      *a2 -= 12;
      v13 = 1;
    }

    goto LABEL_22;
  }

  v10 = 0;
  while (1)
  {
    if (*v8 > v5)
    {
      v13 = 0;
      goto LABEL_18;
    }

    v11 = v8 + 2;
    v12 = v8[1];
    if (*v8 == v5)
    {
      break;
    }

    v8 = &v11[v12];
    if (v9 == ++v10)
    {
      goto LABEL_6;
    }
  }

  if (v12)
  {
    v14 = 0;
    while (v8[v14 + 2] != v4)
    {
      if (v12 == ++v14)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = 1;
  }

  else
  {
    LODWORD(v14) = 0;
    v13 = 0;
  }

  if (v14 == v12)
  {
LABEL_16:
    v15 = *a2;
    if (v15 < 4)
    {
      goto LABEL_22;
    }

    v8[1] = v12 + 1;
    v16 = &v11[v12];
    memmove(&v11[(v12 + 1)], v16, a2 - v16 - v15 + 0x2000);
    *v16 = v4;
    [(_LSDatabase *)v7 store];
    _CSStringRetain();
    v9 = a2[1];
    *a2 -= 4;
    v13 = 1;
  }

LABEL_18:
  if (v9 == v10 || *v8 != v5)
  {
    goto LABEL_20;
  }

LABEL_22:

  return v13;
}

uint64_t _LSBindingListBufferAppendNSString(void *a1, unsigned int *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v9 = a1;
  v10 = a4;
  StringForCFString = _LSDatabaseCreateStringForCFString(v9, v10, v5);
  if (StringForCFString)
  {
    v12 = _LSBindingListBufferAppend(v9, a2, a3, StringForCFString);
    [(_LSDatabase *)v9 store];
    _CSStringRelease();
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

double _LSBindingListBufferReset(void *a1, unsigned int *a2)
{
  _LSBindingListDataReleaseContents(a1, a2 + 1);
  *&result = 8184;
  *a2 = 8184;
  return result;
}

void _LSBindingListDataReleaseContents(void *a1, unsigned int *a2)
{
  v8 = a1;
  if (*a2)
  {
    v3 = 0;
    v4 = a2 + 1;
    do
    {
      [(_LSDatabase *)v8 store];
      _CSStringRelease();
      if (v4[1])
      {
        v5 = 0;
        do
        {
          [(_LSDatabase *)v8 store];
          _CSStringRelease();
          ++v5;
          v6 = v4[1];
        }

        while (v5 < v6);
        v7 = 4 * v6;
      }

      else
      {
        v7 = 0;
      }

      v4 = (v4 + v7 + 8);
      ++v3;
    }

    while (v3 < *a2);
  }
}

uint64_t _LSBindingListCreate(void *a1, _DWORD *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = a2 + 1;
  if (a2[1])
  {
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v6 schema];
    v8 = CSStoreAllocUnitWithData();
    *a3 = v8;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      _LSBindingListDataReleaseContents(v6, a2 + 1);
      v9 = 4294957803;
    }

    *a2 = 8184;
  }

  else
  {
    v9 = 0;
    v7 = a3;
  }

  *v7 = 0;

  return v9;
}

void _LSBindingListDestroy(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  [(_LSDatabase *)v1 store];
  [(_LSDatabase *)v1 schema];
  if (CSStoreGetUnit())
  {
    [(_LSDatabase *)v1 store];
    [(_LSDatabase *)v1 schema];
    CSStoreGetUnit();
    [(_LSDatabase *)v1 store];
    [(_LSDatabase *)v1 schema];
    CSStoreFreeUnit();
  }

  else
  {
    puts("_LSBindingListDestroy: binding list not found");
  }
}

uint64_t _LSBindingListValidate(void *a1, uint64_t a2, const char **a3)
{
  v4 = a2;
  v5 = a1;
  v6 = v5;
  if (v4)
  {
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v6 schema];
    Unit = CSStoreGetUnit();
    v11 = bindingListDataHasValidLength(Unit, 0);
    if (v11)
    {
      v8 = 0;
      if (*Unit)
      {
        v7 = v11;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      v8 = "Invalid length";
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v7;
}

uint64_t _LSBindingListActivate(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  [(_LSDatabase *)v4 store];
  [(_LSDatabase *)v4 schema];
  Unit = CSStoreGetUnit();
  if (Unit)
  {
    if (bindingListDataHasValidLength(Unit, 0))
    {
      if (__dst)
      {
        v6 = 0;
        v7 = 0;
        v8 = &v16;
        do
        {
          BindingMapIndex = _LSDatabaseFindBindingMapIndex(v4, *v8);
          v10 = v8[1];
          if (BindingMapIndex << 16 != -65536 && v8[1])
          {
            v11 = 0;
            v12 = BindingMapIndex;
            do
            {
              v13 = _LSBindableActivate(v4, v3, v12, v8[v11++ + 2], _LSBindableComparePriority, 1);
              v10 = v8[1];
            }

            while (v11 < v10);
            v6 = v13;
          }

          v8 += v10 + 2;
          ++v7;
        }

        while (v7 != __dst);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 4294957799;
    }
  }

  else
  {
    v6 = 4294957797;
  }

  return v6;
}

uint64_t _LSBindingListDeactivate(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  [(_LSDatabase *)v4 store];
  [(_LSDatabase *)v4 schema];
  Unit = CSStoreGetUnit();
  if (Unit)
  {
    if (bindingListDataHasValidLength(Unit, 0))
    {
      if (__dst)
      {
        v6 = 0;
        v7 = 0;
        v8 = &v16;
        do
        {
          BindingMapIndex = _LSDatabaseFindBindingMapIndex(v4, *v8);
          v10 = v8[1];
          if (BindingMapIndex << 16 != -65536 && v8[1])
          {
            v11 = 0;
            v12 = BindingMapIndex;
            do
            {
              v13 = _LSBindableDeactivate(v4, v3, v12, v8[v11++ + 2], 1);
              v10 = v8[1];
            }

            while (v11 < v10);
            v6 = v13;
          }

          v8 += v10 + 2;
          ++v7;
        }

        while (v7 != __dst);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 4294957799;
    }
  }

  else
  {
    v6 = 4294957797;
  }

  return v6;
}

void _LSBindingListEnumerate(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  [(_LSDatabase *)v4 store];
  [(_LSDatabase *)v4 schema];
  Unit = CSStoreGetUnit();
  v7 = Unit;
  if (Unit)
  {
    v12 = 0;
    if (*Unit)
    {
      v8 = 0;
      v9 = Unit + 1;
      do
      {
        v10 = 0;
        while (1)
        {
          v11 = v9[1];
          if (v10 >= v11)
          {
            break;
          }

          (*(v5 + 2))(v5, *v9, v9[v10++ + 2], &v12);
          if (v12)
          {
            goto LABEL_9;
          }
        }

        v9 += v11 + 2;
        ++v8;
      }

      while (v8 < *v7);
    }
  }

LABEL_9:
}

void _LSBindingListGetVisualizationFunctions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = LaunchServices::BindingLists::display;
  a1[2] = 0;
}

uint64_t LaunchServices::BindingLists::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v8 = a4;
  if (a3)
  {
    v25 = 0;
    if (!_LSBindingListValidate(*this, a3, &v25))
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
      v22[3] = &unk_1E6A18D78;
      v23 = v8;
      v24 = v25;
      [v23 withWarningColors:v22];
    }

    [(_LSDatabase *)*this store];
    StringTable = _CSStoreGetStringTable();
    v10 = objc_opt_new();
    v11 = [v8 visualizer];
    [v10 setVisualizer:v11];

    [v10 setInsertsNewlines:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2;
    v16[3] = &unk_1E6A1A9E0;
    v19 = this;
    v20 = a3;
    v12 = v10;
    v17 = v12;
    v21 = StringTable;
    v13 = v8;
    v18 = v13;
    [v12 withReferenceToUnit:a2 unit:a3 block:v16];
    v14 = [v12 attributedString];
    [v13 writeAttributedString:v14];
  }

  return 1;
}

void ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = -1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v2 = **(a1 + 48);
  v3 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3;
  v7[3] = &unk_1E6A1A9B8;
  v4 = *(a1 + 32);
  v14 = *(a1 + 60);
  v8 = v4;
  v10 = v15;
  v11 = v19;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12 = v17;
  v13 = v5;
  v9 = v6;
  _LSBindingListEnumerate(v2, v3, v7);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void sub_1816D2748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4;
  v8[3] = &unk_1E6A1A990;
  v11 = *(a1 + 48);
  v9 = v6;
  v13 = *(a1 + 72);
  v14 = a3;
  v15 = a2;
  v12 = *(a1 + 56);
  v10 = *(a1 + 40);
  [v9 withReferenceToUnit:v7 unit:a3 block:v8];
}

void ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = 0;
  }

  else
  {
    [*(a1 + 32) write:{@", "}];
  }

  [(_LSDatabase *)**(a1 + 72) store];
  v3 = _CSStringCopyCFString();
  if (v3)
  {
    v4 = *(a1 + 84);
    v5 = *(*(a1 + 56) + 8);
    if (v4 != *(v5 + 24))
    {
      *(v5 + 24) = v4;
      *(*(*(a1 + 64) + 8) + 24) = _LSDatabaseFindBindingMapIndex(**(a1 + 72), *(a1 + 84));
    }

    v6 = *(*(*(a1 + 64) + 8) + 24);
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = @".%@";
      }

      else
      {
        if (v6 != 5)
        {
          [*(a1 + 32) write:v3];
          goto LABEL_18;
        }

        v7 = @"%@:";
      }

      [*(a1 + 32) writeFormat:v7, v3];
    }

    else
    {
      v16 = 0;
      active = _UTGetActiveTypeForIdentifier(**(a1 + 72), *(a1 + 80), &v16);
      v10 = *(a1 + 32);
      if (active)
      {
        v11 = [(_LSDatabase *)**(a1 + 72) schema];
        v12 = [v10 link:*(v11 + 16) unit:v16 linkedText:v3];
        [v10 write:v12];
      }

      else
      {
        [*(a1 + 32) write:v3];
      }
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_5;
    v13[3] = &unk_1E6A1A968;
    v8 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = *(a1 + 80);
    [v8 withWarningColors:v13];
  }

LABEL_18:
}

void sub_1816D2A70(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t (*initBRCopyRepresentedFileNameForFaultFileURL(const __CFURL *a1))(const __CFURL *)
{
  v2 = CloudDocsLibrary(void)::frameworkLibrary;
  if (!CloudDocsLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "BRCopyRepresentedFileNameForFaultFileURL");
  softLinkBRCopyRepresentedFileNameForFaultFileURL = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

void _LSSliceMaskWriteDescription(void *a1, unsigned int a2)
{
  v3 = a1;
  [v3 beginFlags:@"slices" flags:a2];
  [v3 flag:1 name:@"ppc"];
  [v3 flag:2 name:@"ppc64"];
  [v3 flag:4 name:@"i386"];
  [v3 flag:8 name:@"x86_64"];
  [v3 flag:16 name:@"x86_64h"];
  [v3 flag:32 name:@"armv6"];
  [v3 flag:64 name:@"armv7"];
  [v3 flag:128 name:@"arm64"];
  [v3 flag:256 name:@"arm64e"];
  [v3 flag:512 name:@"armv7f"];
  [v3 flag:1024 name:@"armv7s"];
  [v3 flag:2048 name:@"armv7k"];
  [v3 flag:4096 name:@"armv7m"];
  [v3 flag:0x2000 name:@"armv7em"];
  [v3 flag:0x4000 name:@"arm64_32"];
  [v3 flag:0x8000 name:@"arm64_32v8"];
  [v3 endFlags];
}

uint64_t _LSBundleDisplayNameContextGetIndex(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSBundleDisplayNameContextGetIndex_block_invoke;
  v5[3] = &unk_1E6A1AA30;
  v6 = v1;
  v7 = &v8;
  v2 = v1;
  _LSBundleDisplayNameContextEnumerate(v5);
  v3 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v3;
}

void sub_1816D317C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSBundleBaseFlagsWriteDescription(void *a1, unint64_t a2)
{
  v3 = a1;
  [v3 beginBitfieldFlags:@"base flags"];
  [v3 flag:a2 & 1 name:@"apple-internal" color:255];
  [v3 flag:(a2 >> 1) & 1 name:@"requires-garbage-collection" color:16711680];
  [v3 flag:(a2 >> 2) & 1 name:@"built-with-tsan"];
  [v3 flag:(a2 >> 3) & 1 name:@"link-enabled"];
  [v3 flag:(a2 >> 4) & 1 name:@"secured-system-content" color:8388863];
  [v3 flag:(a2 >> 5) & 1 name:@"redactible" color:16711935];
  [v3 endFlags];
}

__CFString *_LSBundleClassGetName(unsigned int a1)
{
  if (a1 >= 0x11)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", a1];
  }

  else
  {
    v2 = off_1E6A1AC30[a1];
  }

  return v2;
}

uint64_t _LSPrepareMimicForBundleLookup(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = _LSPrepareMimicForBundleClass(v3, a2);
  if (v4)
  {
    v9 = sel_nameWithError_;
    v10 = sel_getVolumeIdentifier_error_;
    v11 = sel_getCreationDate_error_;
    v12 = sel_getFileIdentifier_error_;
    v13 = sel_canonicalPathWithError_;
    v14 = sel_getInodeNumber_error_;
    v5 = v3;
    v6 = 0;
    v7 = 1;
    do
    {
      if (v7)
      {
        v7 = [v5 populateSimpleSelector:(&v9)[v6] error:{a2, v9, v10, v11, v12, v13, v14}];
      }

      else
      {
        v7 = 0;
      }

      ++v6;
    }

    while (v6 != 6);
  }

  return v4;
}

uint64_t _LSBundleDataMayBeOnNetwork(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = *(a2 + 4);
    a2 = v5 && (v6 = _LSContainerGet(v3, v5)) != 0 && (*v6 & 1) == 0;
  }

  return a2;
}

uint64_t _LSBundleDataIsIncomplete(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (v3 && a2)
  {
    v5 = *(a2 + 172);
    if ((v5 & 0x20000000000200) != 0)
    {
      if ((v5 & 0x2000000000) != 0 && (*(a2 + 164) & 1) != 0 && *(a2 + 148) == 2)
      {
        v6 = _LSDefaultLog(v3);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = _LSDatabaseGetNSStringFromString(v4, *(a2 + 12));
          *buf = 138543362;
          v17 = v7;
          _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "Ignoring first-party applet %{public}@ in /Library during incompleteness check", buf, 0xCu);
        }
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v8 = v3;
      [(_LSDatabase *)v4 store];
      v11 = v4;
      _CSArrayEnumerateAllValues();
    }
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v9;
}

void sub_1816D3750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSBundleAdd(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = v4;
  if (v4 && [(_LSDatabase *)v4 store])
  {
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    v6 = CSStoreAllocUnitWithData();
    if (v6)
    {
      [(_LSDatabase *)v5 setApplicationsChanged:?];
      v7 = 0;
      if (a3)
      {
        *a3 = v6;
      }
    }

    else
    {
      v7 = 4294957803;
    }
  }

  else
  {
    v7 = 4294967246;
  }

  return v7;
}

id _LSBundleGetRegistrationNotification(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1;
  v8 = _LSBundleGet(v7, a2);
  if (v8)
  {
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [(_LSDatabase *)v7 store];
    values = _CSStringCopyCFString();
    if (values)
    {
      v11 = CFArrayCreate(v9, &values, 1, MEMORY[0x1E695E9C0]);
      if (v11)
      {
        CFDictionaryAddValue(Mutable, @"bundleIDs", v11);
        CFRelease(v11);
      }

      CFRelease(values);
    }

    [(_LSDatabase *)v7 store];
    v12 = _CSStringCopyCFString();
    if (v12)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E120], v12);
      CFRelease(v12);
    }

    v13 = *(v8 + 172);
    v14 = *MEMORY[0x1E695E4D0];
    if ((v13 & 0x40000) != 0)
    {
      v15 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v15 = *MEMORY[0x1E695E4C0];
    }

    CFDictionaryAddValue(Mutable, @"isPlaceholder", v15);
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"isForcedUpdate", v14);
    }

    if (Mutable)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AD80]) initWithName:a4 object:0 userInfo:Mutable];

      goto LABEL_17;
    }
  }

  else
  {
  }

  v16 = 0;
LABEL_17:

  return v16;
}

uint64_t _LSBundleRemove(void *a1, uint64_t a2, int a3)
{
  __dst[71] = *MEMORY[0x1E69E9840];
  v5 = a1;
  [(_LSDatabase *)v5 store];
  v6 = _LSBundleGet(v5, a2);
  memcpy(__dst, v6, 0x238uLL);
  [(_LSDatabase *)v5 setApplicationsChanged:?];
  if ((HIDWORD(__dst[21]) & 0x40000) != 0)
  {
    v8 = HIDWORD(__dst[1]);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = ___LSBundleRemove_block_invoke;
    v59[3] = &unk_1E6A18FC8;
    v60 = v5;
    _LSDatabaseEnumeratingBindingMap(v60, 6, v8, v59);
    v7 = &v60;
  }

  else
  {
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    v64 = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = ___LSBundleRemove_block_invoke_2;
    v67 = &unk_1E6A1AB20;
    memcpy(v69, __dst, sizeof(v69));
    v68 = v5;
    _CSStoreEnumerateUnits();
    v7 = &v68;
  }

  _LSDatabaseDisposeStringArray(v5, HIDWORD(__dst[58]));
  if (LODWORD(__dst[59]))
  {
    v9 = v5;
    [(_LSDatabase *)v5 store];
    v58 = v5;
    _CSArrayEnumerateAllValues();
    v10 = v58;
    [(_LSDatabase *)v58 store];
    _CSArrayDispose();
  }

  if (HIDWORD(__dst[59]))
  {
    v11 = v5;
    [(_LSDatabase *)v5 store];
    v57 = v5;
    _CSArrayEnumerateAllValues();
    v12 = v57;
    [(_LSDatabase *)v57 store];
    _CSArrayDispose();
  }

  if (LODWORD(__dst[60]))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14 = v5;
    [(_LSDatabase *)v5 store];
    v56 = v5;
    _CSArrayEnumerateAllValues();
    v15 = v56;
    [(_LSDatabase *)v56 store];
    _CSArrayDispose();
  }

  else
  {
    Mutable = 0;
  }

  if (LODWORD(__dst[61]))
  {
    v16 = v5;
    [(_LSDatabase *)v5 store];
    v55 = v5;
    _CSArrayEnumerateAllValues();
    v17 = v55;
    [(_LSDatabase *)v55 store];
    _CSArrayDispose();
  }

  _LSBindableDeactivate(v5, a2, 6u, HIDWORD(__dst[1]), 0);
  _LSBindableDeactivate(v5, a2, 7u, HIDWORD(__dst[40]), 0);
  if (HIDWORD(__dst[12]))
  {
    _LSBindableDeactivate(v5, a2, 7u, HIDWORD(__dst[12]), 0);
  }

  if (HIDWORD(__dst[61]))
  {
    _LSBundleDeactivateBindingsForUserActivityTypes(v5, a2, __dst);
    v18 = v5;
    [(_LSDatabase *)v5 store];
    _CSArrayDispose();
  }

  if (HIDWORD(__dst[69]))
  {
    _LSBindableDeactivate(v5, a2, 0xDu, HIDWORD(__dst[69]), 0);
  }

  v19 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v20 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v21 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v22 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v23 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v24 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v25 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v26 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v27 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v28 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v29 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v30 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v31 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v32 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v33 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v34 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSDatabaseDisposeStringArray(v5, HIDWORD(__dst[60]));
  v35 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v36 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v37 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v38 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSPlistRemove(v5, HIDWORD(__dst[55]));
  v39 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v40 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSDatabaseDisposeStringArray(v5, HIDWORD(__dst[38]));
  _LSDatabaseDisposeStringArray(v5, LODWORD(__dst[39]));
  _LSDatabaseDisposeStringArray(v5, HIDWORD(__dst[66]));
  _LSDatabaseDisposeStringArray(v5, HIDWORD(__dst[57]));
  _LSDatabaseDisposeStringArray(v5, LODWORD(__dst[62]));
  _LSDatabaseDisposeStringArray(v5, HIDWORD(__dst[11]));
  v41 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v42 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v43 = v5;
  [(_LSDatabase *)v5 store];
  _CSArrayDispose();
  _LSPlistRemove(v5, LODWORD(__dst[57]));
  _LSPlistRemove(v5, LODWORD(__dst[17]));
  _LSPlistRemove(v5, HIDWORD(__dst[17]));
  _LSPlistRemove(v5, LODWORD(__dst[18]));
  _LSPlistRemove(v5, HIDWORD(__dst[64]));
  _LSPlistRemove(v5, LODWORD(__dst[19]));
  _LSPlistRemove(v5, LODWORD(__dst[68]));
  v44 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v45 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSDatabaseDisposeStringArray(v5, HIDWORD(__dst[62]));
  _LSDatabaseDisposeStringArray(v5, LODWORD(__dst[63]));
  LaunchServices::LocalizedString::Remove(v5, LODWORD(__dst[14]));
  LaunchServices::LocalizedString::Remove(v5, LODWORD(__dst[13]));
  LaunchServices::LocalizedString::Remove(v5, HIDWORD(__dst[14]));
  LaunchServices::LocalizedString::Remove(v5, LODWORD(__dst[15]));
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = ___LSBundleRemove_block_invoke_5;
  v61[3] = &unk_1E6A1AB70;
  v46 = v5;
  v62 = v46;
  memcpy(v63, __dst, sizeof(v63));
  _LSBundleDisplayNameContextEnumerate(v61);
  if (LODWORD(__dst[0]))
  {
    _LSAliasRemove(v46, LODWORD(__dst[0]));
  }

  if (HIDWORD(__dst[63]))
  {
    _LSAliasRemove(v46, HIDWORD(__dst[63]));
  }

  if (LODWORD(__dst[12]))
  {
    _LSAliasRemove(v46, LODWORD(__dst[12]));
  }

  _LSDatabaseDisposeStringArray(v46, HIDWORD(__dst[65]));
  v47 = v46;
  [(_LSDatabase *)v46 store];
  _CSArrayDispose();
  v48 = v46;
  [(_LSDatabase *)v46 store];
  v49 = v46;
  _CSArrayEnumerateAllValues();
  v50 = v49;
  [(_LSDatabase *)v49 store];
  _CSArrayDispose();
  _LSPlistRemove(v49, LODWORD(__dst[69]));
  v51 = v49;
  [(_LSDatabase *)v49 store];
  _CSStringRelease();
  v52 = v49;
  [(_LSDatabase *)v49 schema];
  CSStoreFreeUnit();
  if (a3 || Mutable)
  {
    _LSDatabaseCommit(v49, v53);
    if (Mutable)
    {
      LSPluginSendNotification(v49, @"com.apple.LaunchServices.pluginsunregistered", Mutable);
      CFRelease(Mutable);
    }
  }

  return 0;
}

void _LSBundleSetFlags(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  [(_LSDatabase *)v3 store];
  [(_LSDatabase *)v3 schema];
  _CSStoreWriteToUnit();
}

void _LSBundleSetMoreFlags(void *a1, uint64_t a2, int a3)
{
  v3 = a1;
  [(_LSDatabase *)v3 store];
  [(_LSDatabase *)v3 schema];
  _CSStoreWriteToUnit();
}

void _LSBundleSetLegacySpecialApplicationTypes(void *a1, uint64_t a2, int a3, int a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = _LSBundleGet(v7, a2);
  if (v8)
  {
    v9 = v7;
    if (!LSBundleMeetsBasicDefaultAppRequirements(v9, a2, v8))
    {
      goto LABEL_24;
    }

    v10 = LSGetDefaultAppCategoryInfoForCategory(1);
    v11 = (*(v10 + 4))(v9, a2, v8, 0, a3 ^ 1u);
    v12 = LSGetDefaultAppCategoryInfoForCategory(2);
    v13 = (*(v12 + 4))(v9, a2, v8, 0, a3 ^ 1u);
    if (((v11 | v13) & 1) == 0)
    {
      goto LABEL_24;
    }

    memcpy(__dst, v8, sizeof(__dst));
    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *(&__dst[47] + 1) = v14 | v11 | *(&__dst[47] + 1) & 0xFFFFFFFC;
    if (!a4)
    {
LABEL_23:
      v21 = v9;
      [(_LSDatabase *)v9 store];
      v22 = v9;
      [(_LSDatabase *)v9 schema];
      _CSStoreWriteToUnit();
LABEL_24:

      goto LABEL_25;
    }

    v15 = LSGetDefaultAppsClaimUnitIDForBundle(v9, a2);
    if (a3)
    {
      if (v11)
      {
        if (!v15)
        {
          v16 = &unk_1EEF8F178;
LABEL_17:
          if (v13)
          {
            v16 = [v16 arrayByAddingObject:@"com.apple.default-app.mail-client"];
          }

          v18 = *MEMORY[0x1E695E178];
          v28[0] = @"LSItemContentTypes";
          v28[1] = v18;
          v29[0] = v16;
          v29[1] = @"Viewer";
          v28[2] = *MEMORY[0x1E695E170];
          v29[2] = @"Default Apps Claim";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
          v20 = _LSDefaultLog(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v25 = v16;
            v26 = 2048;
            v27 = a2;
            _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "adding claim for default app types %@ for bundle %llx", buf, 0x16u);
          }

          v23 = v19;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
          _LSRegisterDocumentTypes(v9);
        }
      }

      else
      {
        if (v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = v13;
        }

        if (v17)
        {
          v16 = MEMORY[0x1E695E0F0];
          goto LABEL_17;
        }
      }
    }

    *&__dst[69] = _LSDatabaseGetSequenceNumber(v9) + 1;
    __dst[134] = CFAbsoluteTimeGetCurrent();
    _LSDatabaseSetSequenceNumber();
    goto LABEL_23;
  }

LABEL_25:
}

_LSStringLocalizer *_LSBundleGetLocalizer(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (!a2 || (v10 = _LSBundleGet(v7, a2)) == 0)
  {
    if (v8 && [v8 isDirectory])
    {
      v12 = [_LSStringLocalizer alloc];
      v13 = [v8 URL];
      v14 = [(_LSStringLocalizer *)v12 initWithBundleURL:v13 stringsFile:@"InfoPlist"];

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ((*(v10 + 184) & 8) == 0)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_13;
  }

  if (a3 || *(v10 + 168) != 11)
  {
    v11 = [[_LSStringLocalizer alloc] initWithDatabase:v7 bundleUnit:a2 delegate:a3];
  }

  else
  {
    v11 = +[_LSStringLocalizer coreTypesLocalizer];
  }

  v14 = v11;
LABEL_13:
  objc_autoreleasePoolPop(v9);

  return v14;
}

NSObject *_LSBundleGetLocalizedName(void *a1, uint64_t a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = _LSBundleGet(v11, a2);
  v16 = v15;
  v17 = v12 == 0;
  if (v12)
  {
    Index = _LSBundleDisplayNameContextGetIndex(v12);
    if (Index == -1)
    {
      v17 = 1;
      goto LABEL_13;
    }

    v19 = (v16 + 4 * Index + 520);
    goto LABEL_7;
  }

  if ((a6 & 1) != 0 || (v20 = *(v15 + 112), !v20))
  {
    v19 = (v15 + 104);
LABEL_7:
    v20 = *v19;
  }

  Index = LaunchServices::LocalizedString::Get(v11, v20);
  if (Index)
  {
    Index = LaunchServices::LocalizedString::localizeUnsafely(Index, v11, v14);
    v21 = Index;
    if (Index)
    {
      v22 = _LSDefaultLog(Index);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        _LSBundleGetShortDescription(v11, a2);
        objc_claimAutoreleasedReturnValue();
        _LSBundleGetLocalizedName_cold_1();
      }

      goto LABEL_27;
    }
  }

LABEL_13:
  v23 = _LSDefaultLog(Index);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    _LSBundleGetShortDescription(v11, a2);
    objc_claimAutoreleasedReturnValue();
    _LSBundleGetLocalizedName_cold_2();
  }

  if (!v17)
  {
    v28 = 0;
    goto LABEL_37;
  }

  v24 = _LSBundleGetLocalizer(v11, a2, 0, v13);
  v22 = v24;
  if (!v24)
  {
    goto LABEL_34;
  }

  if (v12)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@#%@", *MEMORY[0x1E695E120], v12];
    v21 = [v22 localizedStringWithString:v25 preferredLocalizations:v14];

    if (!v21)
    {
LABEL_34:
      v28 = 0;
LABEL_36:

      goto LABEL_37;
    }
  }

  else if ((a6 & 1) != 0 || ([v24 localizedStringWithString:*MEMORY[0x1E695E120] preferredLocalizations:v14], v26 = objc_claimAutoreleasedReturnValue(), (v21 = v26) == 0))
  {
    v26 = [v22 localizedStringWithString:*MEMORY[0x1E695E4F8] preferredLocalizations:v14];
    v21 = v26;
    if (!v26)
    {
      goto LABEL_34;
    }
  }

  if (![__LSDefaultsGetSharedInstance(v26 v27)])
  {
LABEL_27:

    goto LABEL_28;
  }

  v28 = [v21 stringByAppendingString:@"🔥"];

  v21 = v28;
  if (v28)
  {
LABEL_28:
    v29 = [v21 length];
    v28 = 0;
    if (v29 <= 0x400 && v29)
    {
      v30 = [v13 extensionWithError:0];
      v22 = v30;
      if (v30 && [v30 length])
      {
        v28 = [v21 stringByAppendingPathExtension:v22];
      }

      else
      {
        v28 = v21;
      }
    }

    else
    {
      v22 = v21;
    }

    goto LABEL_36;
  }

LABEL_37:

  return v28;
}

id _LSBundleGetShortDescription(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = _LSBundleGet(v3, a2);
  v5 = v4;
  if (v4)
  {
    v6 = LaunchServices::LocalizedString::Get(v3, *(v4 + 112));
    if (v6)
    {
      v7 = LaunchServices::LocalizedString::localizeUnsafely(v6, v3, 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = LaunchServices::LocalizedString::Get(v3, v5[26]);
    if (v8)
    {
      v9 = LaunchServices::LocalizedString::localizeUnsafely(v8, v3, 0);

      v7 = v9;
    }

    if (!v7)
    {
      [(_LSDatabase *)v3 store];
      v7 = _CSStringCopyCFString();
      if (!v7)
      {
        [(_LSDatabase *)v3 store];
        v7 = _CSStringCopyCFString();
        if (!v7)
        {
          v7 = _LSAliasGetName(v3, *v5);
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _LSBundleGetDisplayNameForNodeWithUnregisteredBundleType(void **a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a2;
  v8 = a3;
  if (!_LSBundleNodeHasUnregisteredPersonality(a1, v7, v8, 0))
  {
    v10 = 0;
    v15 = 0;
    goto LABEL_25;
  }

  v27 = 0;
  v9 = [v7 bundleInfoDictionaryWithError:&v27];
  v10 = v27;
  if (v9)
  {
    v11 = objc_opt_class();
    v12 = *MEMORY[0x1E695E120];
    v13 = [v9 objectForKey:*MEMORY[0x1E695E120]];
    v14 = v13;
    if (v11 && v13)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = 0;
        v16 = v14;
        v17 = v10;
        goto LABEL_22;
      }

LABEL_9:
      v26 = v10;
      v18 = [v7 nameWithError:&v26];
      v17 = v26;

      if (v18)
      {
        v19 = [v18 stringByDeletingPathExtension];
        v20 = v19;
        if (v19 && ![v19 caseInsensitiveCompare:v14])
        {
          v16 = _LSBundleGetLocalizer(*a1, 0, 0, v7);
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
          v15 = 0;
LABEL_23:
          v10 = v17;
          goto LABEL_24;
        }

        v21 = [v7 URL];
        v22 = [v21 ls_preferredLocalizations];
        v23 = [v16 localizedStringWithString:v12 preferredLocalizations:v22];

        if (v23)
        {
          v15 = [v23 stringByAppendingPathExtension:v8];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
        v16 = v14;
      }

LABEL_22:

      goto LABEL_23;
    }

    if (v13)
    {
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_24:

LABEL_25:
  if (!(v15 | v10))
  {
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "_LSBundleGetDisplayNameForNodeWithUnregisteredBundleType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSBundle.mm", 2096);
  }

  if (a4 && !v15)
  {
    v24 = v10;
    *a4 = v10;
  }

  return v15;
}

uint64_t _LSBundleNodeHasUnregisteredPersonality(void **a1, void *a2, void *a3, unsigned int *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = *a4;
  }

  else
  {
    if (v8)
    {
      v11 = _LSGetBundleClassForExtensionNSString(v8);
    }

    else
    {
      v11 = _LSGetBundleClassForNode(a1, v7);
    }

    v10 = v11;
  }

  HasUnregisteredPersonality = _LSBundleClassHasUnregisteredPersonality(v10);
  v13 = HasUnregisteredPersonality;
  if (!v10 && !HasUnregisteredPersonality)
  {
    inUTI = 0;
    if ([v7 getCachedResourceValueIfPresent:&inUTI forKey:*MEMORY[0x1E695DC68] error:0])
    {
      v13 = UTTypeConformsTo(inUTI, @"com.apple.localizable-name-bundle");
    }

    else
    {
      LaunchServices::TypeEvaluator::TypeEvaluator(v17, v7);
      v16 = 0;
      if (LaunchServices::TypeEvaluator::getTypeUnit(v17, a1, &v16, 0) && (TypeLocalizableNameBundle = _UTTypeGetTypeLocalizableNameBundle(*a1)) != 0)
      {
        v13 = _UTTypeConformsTo(*a1, v16, TypeLocalizableNameBundle);
      }

      else
      {
        v13 = 0;
      }
    }
  }

  return v13;
}

uint64_t _LSBundleCopyStringDictionaryForKey(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = _LSBundleGetLocalizer(a1, a2, 0, a3);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 localizedStringDictionaryWithString:a4 defaultValue:a5];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v10);
  return v13;
}

uint64_t _LSBundleInfoPlistKeyIsCommon(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_LSBundleInfoPlistKeyIsCommon::once != -1)
  {
    _LSBundleInfoPlistKeyIsCommon_cold_1();
  }

  if ([_LSBundleInfoPlistKeyIsCommon::explicitlyIgnoredKeys containsObject:a1])
  {
    return 0;
  }

  if ([_LSBundleInfoPlistKeyIsCommon::explicitlyIncludedKeys containsObject:a1])
  {
    return 1;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = _LSBundleInfoPlistKeyIsCommon::prefixes;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([a1 hasPrefix:{*(*(&v8 + 1) + 8 * i), v8}])
        {
          v2 = 1;
          goto LABEL_17;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v2 = 0;
LABEL_17:

  return v2;
}

uint64_t _LSBundleCopyArchitecturesAvailable(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3)
  {
    if (a2)
    {
      v5 = _LSBundleGet(v3, a2);
      if (v5)
      {
        v6 = objc_autoreleasePoolPush();
        v5 = _LSBundleCopyArchitectures_Common(v5);
        objc_autoreleasePoolPop(v6);
      }
    }
  }

  return v5;
}

__CFString *_LSGetDescriptionForPersonaType(unint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"InvalidType(%lu)", a1];
  }

  else
  {
    v1 = off_1E6A1AD10[a1];
  }

  return v1;
}

void _LSBundleGetVisualizationFunctions(id (**a1)(void **this, LSContext *a2, uint64_t a3)@<X8>)
{
  *a1 = LaunchServices::Bundles::getSummary;
  a1[1] = LaunchServices::Bundles::display;
  a1[2] = LaunchServices::Bundles::copyBindingForVisualization;
}

BOOL LaunchServices::Bundles::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v155 = *MEMORY[0x1E69E9840];
  v105 = a4;
  v108 = this;
  v7 = _LSBundleGet(*this, a3);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_94;
  }

  if (*(v7 + 512) != 11)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [v105 write:@"revision" number:v9];
  }

  v10 = *v108;
  v148 = 0;
  v11 = _LSBundleCreateNode(v10, a3, 0, 0, &v148);
  v12 = v148;
  v13 = v12;
  v104 = v8;
  v101 = v11;
  if (!v11 || (v147 = v12, v14 = [v11 checkResourceIsReachableAndReturnError:&v147], v15 = v147, v13, v13 = v15, (v14 & 1) == 0))
  {
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
    v144[3] = &unk_1E6A1ABE8;
    v145 = v105;
    v15 = v13;
    v146 = v15;
    [v145 withWarningColors:v144];
  }

  v16 = v8[42];
  v100 = _LSBundleClassGetName(v8[42]);
  [v105 write:@"class" format:{@"%@ (0x%llx)", v100, v16}];
  v17 = [v105 link:*(-[_LSDatabase schema](*v108) + 1580) unit:v8[1]];
  [v105 write:@"container" string:v17];

  v18 = v108;
  v19 = v8;
  v20 = _LSContainerGet(*v108, v8[1]);
  if (v20)
  {
    v21 = _LSContainerStateGetDescription(*(v20 + 2));
    [v105 write:@"mount state" string:v21];

    v19 = v8;
    v18 = v108;
  }

  [v105 write:@"Driver Extensions" arrayStringID:v19[121]];
  v22 = v19 + 69;
  if (*(v19 + 71))
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v105 write:@"Compatibility" number:v23];

    v19 = v8;
    v18 = v108;
  }

  if (v22[8])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v105 write:@"InstallFailure" number:v24];

    v19 = v8;
    v18 = v108;
  }

  [v105 write:@"Mach-O UUIDs" arrayStringID:v19[23]];
  v103 = [MEMORY[0x1E695DF70] array];
  if (v19[75])
  {
    [(_LSDatabase *)*v18 store];
    v139 = MEMORY[0x1E69E9820];
    v140 = 3221225472;
    v141 = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2;
    v142 = &unk_1E6A18FC8;
    v143 = v103;
    _CSArrayEnumerateAllValues();

    v19 = v8;
  }

  [v105 write:@"Device Family" array:v103];
  [v105 write:@"Counterparts" arrayID:v19[77]];
  [v105 write:@"EquivalentIDs" arrayStringID:v19[78]];
  [v105 write:@"App Clip Parents" arrayStringID:v19[133]];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v22];
  [v105 write:@"sequenceNum" number:v25];

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22[2]];
  [v105 write:@"itemID" number:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22[13]];
  [v105 write:@"FamilyID" number:v27];

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22[11]];
  [v105 write:@"PurchaserID" number:v28];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22[12]];
  [v105 write:@"DownloaderID" number:v29];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22[10]];
  [v105 write:@"staticSize" number:v30];

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8[84]];
  [v105 write:@"installType" number:v31];

  v32 = [v105 link:*(-[_LSDatabase schema](*v108) + 1584) unit:v8[127]];
  [v105 write:@"appContainer" string:v32];

  v33 = [v105 link:*(-[_LSDatabase schema](*v108) + 1584) unit:v8[24]];
  [v105 write:@"dataContainer" string:v33];

  v34 = [v105 link:*(-[_LSDatabase schema](*v108) + 1584) unit:*v8];
  [v105 write:@"path" string:v34];

  [v105 write:@"directory" directoryClass:*(v8 + 148)];
  [v105 write:@"name" stringID:v8[25]];
  [v105 write:@"displayName" stringID:v8[27]];
  [v105 childUnit:@"localizedNames" table:*(-[_LSDatabase schema](*v108) + 1604) unit:v8[28]];
  [v105 childUnit:@"localizedShortNames" table:*(-[_LSDatabase schema](*v108) + 1604) unit:v8[26]];
  [v105 childUnit:@"localizedMicrophoneUsage" table:*(-[_LSDatabase schema](*v108) + 1604) unit:v8[29]];
  [v105 childUnit:@"localizedIdentityUsageDescription" table:*(-[_LSDatabase schema](*v108) + 1604) unit:v8[30]];
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3;
  v135[3] = &unk_1E6A1AC10;
  v35 = v105;
  v136 = v35;
  v137 = v108;
  v138 = v104;
  _LSBundleDisplayNameContextEnumerate(v135);
  [v35 write:@"itemName" stringID:*(v104 + 388)];
  [v35 write:@"teamID" stringID:*(v104 + 16)];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v104 + 392)];
  [v35 write:@"storeFront" number:v36];

  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v104 + 400)];
  [v35 write:@"versionID" number:v37];

  [v35 write:@"sourceAppBundleID" stringID:*(v104 + 408)];
  [v35 write:@"ratingLabel" stringID:*(v104 + 428)];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22[18]];
  [v35 write:@"ratingRank" number:v38];

  [v35 write:@"genre" stringID:*(v104 + 440)];
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v104 + 432)];
  [v35 write:@"genreID" number:v39];

  [v35 childUnit:@"distributorInfo" table:*(-[_LSDatabase schema](*v108) + 1600) unit:*(v104 + 444)];
  v134 = 0;
  v40 = *(v104 + 316);
  if (v40)
  {
    _UTGetActiveTypeForIdentifier(*v108, v40, &v134);
    if (v134)
    {
      v41 = [(_LSDatabase *)*v108 schema];
      v42 = [v35 link:*(v41 + 16) unit:v134];
      [v35 write:@"category" string:v42];

      goto LABEL_21;
    }

    v43 = *(v104 + 316);
  }

  else
  {
    v43 = 0;
  }

  [v35 write:@"category" stringID:v43];
LABEL_21:
  v133 = 0;
  v44 = *(v104 + 320);
  if (!v44)
  {
    v48 = 0;
LABEL_26:
    [v35 write:@"2ry category" stringID:v48];
    v47 = v104;
    goto LABEL_27;
  }

  _UTGetActiveTypeForIdentifier(*v108, v44, &v133);
  if (!v133)
  {
    v48 = *(v104 + 320);
    goto LABEL_26;
  }

  v45 = [(_LSDatabase *)*v108 schema];
  v46 = [v35 link:*(v45 + 16) unit:v133];
  [v35 write:@"2ry category" string:v46];

  v47 = v104;
LABEL_27:
  [v35 write:@"identifier" stringID:*(v47 + 12)];
  if (*(v47 + 12) != *(v47 + 304))
  {
    [v35 write:@"canonical id" stringID:?];
  }

  [v35 write:@"vendor" stringID:*(v47 + 348)];
  [v35 write:@"type" stringID:*(v47 + 352)];
  v49 = *(v47 + 44);
  v153 = *(v47 + 28);
  v154 = v49;
  [v35 write:@"version" version:&v153];
  [v35 write:@"versionString" stringID:*(v47 + 328)];
  [v35 write:@"displayVersion" stringID:*(v47 + 332)];
  [v35 write:@"codeInfoID" stringID:*(v47 + 124)];
  [v35 write:@"signerOrg" stringID:*(v47 + 128)];
  [v35 write:@"signer identity" stringID:*(v47 + 132)];
  [v35 write:@"appVariant" stringID:*(v47 + 412)];
  [v35 write:@"managementDeclarationID" stringID:*(v47 + 416)];
  [v35 write:@"mod date" interval:*(v47 + 200)];
  [v35 write:@"reg date" interval:*(v47 + 24)];
  [v35 write:@"rec mod date" interval:*(v47 + 536)];
  if (*(v47 + 513))
  {
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4;
    v130[3] = &unk_1E6A18D78;
    v131 = v35;
    v132 = v47;
    [v131 withWarningColors:v130];

    v47 = v104;
  }

  v50 = v35;
  [v50 beginFlags:@"bundle flags" flags:*(v47 + 172)];
  [v50 flag:2 name:@"has-display-name"];
  [v50 flag:4 name:@"ui-element"];
  [v50 flag:8 name:@"bg-only"];
  [v50 flag:16 name:@"shell-script"];
  [v50 flag:32 name:@"one-instance"];
  [v50 flag:64 name:@"trash" color:16711680];
  [v50 flag:128 name:@"launch-disabled" color:16711680];
  [v50 flag:256 name:@"exec-for-bundle"];
  [v50 flag:512 name:@"no-executable" color:16711680];
  [v50 flag:1024 name:@"quarantined" color:16711680];
  [v50 flag:2048 name:@"requires-old-java-stub" color:16711680];
  [v50 flag:4096 name:@"requires-iphone-os"];
  [v50 flag:0x2000 name:@"requires-java-runtime"];
  [v50 flag:0x4000 name:@"version-too-low" color:16711680];
  [v50 missingFlag:0x8000 name:@"shows-sec-prompts"];
  [v50 flag:0x10000 name:@"is-Newsstand-App"];
  [v50 flag:0x20000 name:@"restricted-download"];
  [v50 flag:0x40000 name:@"is-Placeholder" color:12566272];
  [v50 flag:0x80000 name:@"is-AppUpdate"];
  [v50 flag:0x100000 name:@"requires-iphone-simulator"];
  [v50 flag:0x200000 name:@"is-Beta-App"];
  [v50 flag:0x400000 name:@"is-purchased-redownload"];
  [v50 flag:0x1000000 name:@"has-MID-based-SINF"];
  [v50 flag:0x2000000 name:@"missing-required-SINF"];
  [v50 flag:0x4000000 name:@"is-ad-hoc-signed"];
  [v50 flag:0x8000000 name:@"handles-file-url"];
  [v50 flag:0x10000000 name:@"wildcard"];
  [v50 flag:0x20000000 name:@"supports-audiobooks"];
  [v50 flag:0x40000000 name:@"externally-playable-content"];
  [v50 flag:0x80000000 name:@"file-sharing-enabled"];
  [v50 flag:0x100000000 name:@"contains-settings-bundle"];
  [v50 flag:0x200000000 name:@"supports-open-in-place"];
  [v50 flag:0x400000000 name:@"supports-purgeable-local-storage"];
  [v50 flag:0x1000000000 name:@"in-generational-storage" color:16711680];
  [v50 flag:0x2000000000 name:@"is-applet"];
  [v50 flag:0x4000000000 name:@"is-containerized"];
  [v50 flag:0x10000000000 name:@"is-deletable"];
  [v50 flag:0x20000000000 name:@"launch-prohibited" color:16711680];
  [v50 flag:0x40000000000 name:@"always-available-app"];
  [v50 flag:0x80000000000 name:@"supports-odr"];
  [v50 flag:0x100000000000 name:@"has-custom-notification"];
  [v50 flag:0x200000000000 name:@"has-watch-glance"];
  [v50 flag:0x400000000000 name:@"has-parallel-placeholder"];
  [v50 flag:0x20000000000000 name:@"no-info.plist" color:16711680];
  [v50 flag:0x2000000000000 name:@"game-center"];
  [v50 flag:0x4000000000000 name:@"ever-game-center"];
  [v50 flag:0x8000000000000 name:@"device-based-VPP"];
  [v50 flag:0x20000000000000 name:@"no-info.plist" color:16711680];
  [v50 flag:0x100000000000000 name:@"uses-system-persona"];
  [v50 flag:0x800000000000000 name:@"arcade-app"];
  [v50 flag:0x1000000000000000 name:@"app-clip"];
  [v50 flag:0x4000000000000000 name:@"supports-CarPlay-dashboard-scene"];
  [v50 flag:0x8000000000000000 name:@"supports-CarPlay-instrument-cluster-scene"];
  [v50 endFlags];

  v51 = *(v104 + 189);
  v52 = v50;
  [v52 beginBitfieldFlags:@"more flags"];
  [v52 flag:v51 & 1 name:@"web-browser" color:8028671];
  [v52 flag:(v51 >> 1) & 1 name:@"mail-client" color:14124031];
  [v52 flag:(v51 >> 2) & 1 name:@"supports-controller-user-interaction"];
  [v52 flag:(v51 >> 3) & 1 name:@"spotlight-continuation"];
  [v52 flag:(v51 >> 4) & 1 name:@"spotlight-actions"];
  [v52 flag:(v51 >> 5) & 1 name:@"code-signing-info-not-authoritative" color:16727808];
  [v52 flag:(v51 >> 6) & 1 name:@"LSApplicationQueriesSchemes-too-big" color:16727808];
  [v52 flag:(v51 >> 7) & 1 name:@"is-update-available" color:5213952];
  [v52 flag:(v51 >> 8) & 1 name:@"is-playgrounds-app"];
  [v52 flag:(v51 >> 9) & 1 name:@"supports-aod"];
  [v52 flag:(v51 >> 10) & 1 name:@"defaults-to-aod-private"];
  [v52 flag:(v51 >> 11) & 1 name:@"supports-live-activities"];
  [v52 flag:(v51 >> 12) & 1 name:@"supports-live-activities-frequent-updates"];
  [v52 flag:(v51 >> 13) & 1 name:@"requires-post-processing"];
  [v52 flag:(v51 >> 14) & 1 name:@"has-shell-role"];
  [v52 flag:(v51 >> 15) & 1 name:@"requires-secure-launch" color:16711680];
  [v52 flag:(v51 >> 16) & 1 name:@"watch-install-eligible"];
  [v52 flag:(v51 >> 17) & 1 name:@"eligibility-checked-browser"];
  [v52 flag:(v51 >> 18) & 1 name:@"eligibility-checked-browser-engine-embedder"];
  [v52 flag:(v51 >> 19) & 1 name:@"managed-app-distributor"];
  [v52 flag:(v51 >> 20) & 1 name:@"app-protection-hidden" color:16711680];
  [v52 flag:(v51 >> 21) & 1 name:@"app-protection-locked" color:16711680];
  [v52 flag:(v51 >> 22) & 1 name:@"supports-data-export"];
  [v52 flag:(v51 >> 23) & 1 name:@"has-supports-game-mode"];
  [v52 flag:(v51 >> 24) & 1 name:@"supports-game-mode"];
  [v52 flag:(v51 >> 25) & 1 name:@"on-cryptex"];
  [v52 endFlags];

  v53 = v52;
  v54 = *(v104 + 180);
  if ((v54 & 0x10000) != 0)
  {
    if (*(v104 + 476))
    {
      [(_LSDatabase *)*v108 store];
      Count = _CSArrayGetCount();
    }

    else
    {
      Count = 0;
    }

    if (*(v104 + 472))
    {
      [(_LSDatabase *)*v108 store];
      v56 = _CSArrayGetCount();
    }

    else
    {
      v56 = 0;
    }

    if (!(Count | v56))
    {
      v54 |= 0x10u;
    }
  }

  [v53 beginFlags:@"plist flags" flags:v54];
  [v53 flag:1 name:@"has-environment"];
  [v53 flag:2 name:@"has-quarantine-path-exclusion"];
  [v53 flag:8 name:@"has-min-sys-version-by-arch"];
  [v53 flag:16 name:@"has-ignored-custom-bindings"];
  [v53 flag:32 name:@"has-eligibility-deletion-domain"];
  [v53 flag:64 name:@"has-journal-notification-format"];
  [v53 flag:128 name:@"launch-with-label"];
  [v53 flag:256 name:@"has-directions-app-modes"];
  [v53 flag:512 name:@"has-uibackgroundmodes"];
  [v53 flag:1024 name:@"has-audiocomponents"];
  [v53 flag:2048 name:@"has-sbapptags"];
  [v53 flag:4096 name:@"has-vpn-plugins"];
  [v53 flag:0x2000 name:@"has-required-device-capabilities"];
  [v53 flag:0x4000 name:@"has-cohort-metadata"];
  [v53 flag:0x10000 name:@"has-custom-bindings"];
  [v53 flag:0x20000 name:@"has-subgenres"];
  [v53 flag:0x8000 name:@"has-externalAccessory-protocols"];
  [v53 flag:0x200000 name:@"has-supported-intents-list"];
  [v53 flag:0x800000 name:@"has-substituted-executable"];
  [v53 flag:0x2000000 name:@"has-install-uninstall-predicate"];
  [v53 flag:0x4000000 name:@"has-feature-flag-predicate"];
  [v53 endFlags];

  v57 = v53;
  [v57 beginFlags:@"icon flags" flags:*(v104 + 188)];
  [v57 flag:1 name:@"relative-icon-path"];
  [v57 flag:2 name:@"has-prerendered-icon"];
  [v57 flag:4 name:@"supports-asset-catalog"];
  [v57 flag:8 name:@"supports-alternate-icons"];
  [v57 endFlags];

  _LSSliceMaskWriteDescription(v57, *(v104 + 156));
  v58 = v57;
  [v58 beginFlags:@"item flags" flags:*(v104 + 184)];
  [v58 flag:1 name:@"file"];
  [v58 flag:8 name:@"container"];
  [v58 flag:2 name:@"package"];
  [v58 flag:4 name:@"application"];
  [v58 flag:16 name:@"alias"];
  [v58 flag:32 name:@"symlink"];
  [v58 flag:4096 name:@"volume"];
  [v58 flag:64 name:@"invisible"];
  [v58 flag:0x100000 name:@"extension-hidden"];
  [v58 flag:128 name:@"native-app"];
  [v58 flag:256 name:@"classic-app" color:16711680];
  [v58 flag:512 name:@"prefers-native-cfm"];
  [v58 flag:1024 name:@"prefers-classic-cfm" color:16711680];
  [v58 flag:2048 name:@"scriptable"];
  [v58 flag:0x200000 name:@"services"];
  [v58 flag:0x20000 name:@"am-custom-service-types"];
  [v58 flag:0x2000 name:@"executable"];
  [v58 flag:0x400000 name:@"unsupported-format" color:16711680];
  [v58 endFlags];

  v59 = v104;
  _LSBundleBaseFlagsWriteDescription(v58, *(v104 + 164));
  if (*(v104 + 149))
  {
    v60 = _LSProfileValidationStateGetVisualizationDescription(*(v104 + 149));
    [v58 write:@"validation" string:v60];

    v59 = v104;
  }

  [v58 write:@"platform" platform:*(v59 + 20)];
  [v58 write:@"iconName" stringID:*(v59 + 448)];
  [v58 write:@"alternate primary icon" stringID:*(v59 + 452)];
  if (*(v59 + 456))
  {
    [v58 childUnit:@"iconDict" table:*(-[_LSDatabase schema](*v108) + 1600) unit:*(v59 + 456)];
  }

  [v58 write:@"icons" arrayStringID:*(v59 + 460)];
  [v58 write:@"executable" stringID:*(v59 + 8)];
  v61 = *(v59 + 224);
  v153 = *(v59 + 208);
  v154 = v61;
  v151 = kLSVersionNumberNull;
  v152 = unk_1817E90C0;
  if (_LSVersionNumberCompare(&v153, &v151))
  {
    v62 = *(v104 + 224);
    v153 = *(v104 + 208);
    v154 = v62;
    [v58 write:@"min version" version:&v153];
    [v58 write:@"min version platform" platform:*(v104 + 204)];
  }

  v63 = *(v104 + 256);
  v153 = *(v104 + 240);
  v154 = v63;
  v151 = kLSVersionNumberNull;
  v152 = unk_1817E90C0;
  if (_LSVersionNumberCompare(&v153, &v151))
  {
    v64 = *(v104 + 256);
    v153 = *(v104 + 240);
    v154 = v64;
    [v58 write:@"max version" version:&v153];
  }

  v65 = *(v104 + 76);
  v153 = *(v104 + 60);
  v154 = v65;
  v151 = kLSVersionNumberNull;
  v152 = unk_1817E90C0;
  if (_LSVersionNumberCompare(&v153, &v151))
  {
    v66 = *(v104 + 76);
    v153 = *(v104 + 60);
    v154 = v66;
    [v58 write:@"execSDK ver" version:&v153];
  }

  [v58 write:@"App Store tools build version" stringID:*(v104 + 272)];
  [v58 write:@"personas" arrayStringID:*(v104 + 524)];
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = v104;
  v68 = v108;
  if (*(v104 + 528))
  {
    [(_LSDatabase *)*v108 store];
    v125 = MEMORY[0x1E69E9820];
    v126 = 3221225472;
    v127 = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_5;
    v128 = &unk_1E6A18FC8;
    v129 = v102;
    _CSArrayEnumerateAllValues();

    v67 = v104;
    v68 = v108;
  }

  [v58 write:@"personaTypes" array:v102];
  [v58 childUnit:@"infoDictionary" table:*(-[_LSDatabase schema](*v68) + 1600) unit:v67[34]];
  [v58 write:@"library" stringID:v67[116]];
  [v58 write:@"library items" arrayStringID:v67[117]];
  [v58 write:@"queriable schemes" arrayStringID:v67[124]];
  [v58 write:@"BGPermittedIDs" arrayStringID:v67[125]];
  [v58 write:@"CarPlay URL Schemes" arrayStringID:v67[126]];
  [v58 write:@"activityTypes" arrayID:v67[123]];
  [v58 childUnit:@"MI Install IDs" table:*(-[_LSDatabase schema](*v68) + 1600) unit:v67[136]];
  [(_LSDatabase *)*v68 store];
  v119 = MEMORY[0x1E69E9820];
  v120 = 3221225472;
  v121 = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_6;
  v122 = &unk_1E6A19480;
  v123 = v58;
  v124 = v68;
  _CSArrayEnumerateAllValues();
  v107 = v123;
  [v123 write:@"management domain" stringID:v67[137]];
  [v123 write:@"linked parent bundleID" stringID:v67[139]];
  [v123 write:@"serialized placeholder" stringID:v67[140]];
  [v123 childUnit:@"stashed app info" table:*(-[_LSDatabase schema](*v68) + 1600) unit:v67[138]];
  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v67[40]];
  [v123 write:@"code signature version" number:v69];

  if (*(v104 + 168) == 2)
  {
    context = objc_autoreleasePoolPush();
    v70 = [MEMORY[0x1E695DF70] array];
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v71 = _LSGetAllClaimedTypesOrSchemesForBundleID(v108, v104, 14, 1);
    v72 = [v71 countByEnumeratingWithState:&v115 objects:v150 count:16];
    if (v72)
    {
      v73 = *v116;
      do
      {
        for (i = 0; i != v72; ++i)
        {
          if (*v116 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v75 = *(*(&v115 + 1) + 8 * i);
          if (UTTypeIsDynamic(v75))
          {
            v76 = UTTypeCopyPreferredTagWithClass(v75, @"public.filename-extension");
            v77 = v76;
            if (v76)
            {
              [(__CFString *)v75 stringByAppendingFormat:@" (.%@)", v76];
              v75 = v78 = v75;
            }

            else
            {
              v81 = UTTypeCopyPreferredTagWithClass(v75, @"public.mime-type");
              v78 = v81;
              if (v81)
              {
                v82 = [(__CFString *)v75 stringByAppendingFormat:@" (MIME %@)", v81];

                v75 = v82;
              }
            }
          }

          else
          {
            LODWORD(v153) = 0;
            if (_UTGetActiveTypeForCFStringIdentifier(*v108, v75, &v153))
            {
              v79 = [(_LSDatabase *)*v108 schema];
              v80 = [v107 link:*(v79 + 16) unit:v153 linkedText:v75];

              v75 = v80;
            }
          }

          [v70 addObject:v75];
        }

        v72 = [v71 countByEnumeratingWithState:&v115 objects:v150 count:16];
      }

      while (v72);
    }

    [v70 sortUsingSelector:sel_caseInsensitiveCompare_];
    [v107 write:@"claimed UTIs" array:v70];

    objc_autoreleasePoolPop(context);
    inTagClass = objc_autoreleasePoolPush();
    v83 = [MEMORY[0x1E695DF70] array];
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v84 = _LSGetAllClaimedTypesOrSchemesForBundleID(v108, v104, 14, 0);
    v85 = [v84 countByEnumeratingWithState:&v111 objects:v149 count:16];
    if (v85)
    {
      v86 = *v112;
      do
      {
        for (j = 0; j != v85; ++j)
        {
          if (*v112 != v86)
          {
            objc_enumerationMutation(v84);
          }

          v88 = *(*(&v111 + 1) + 8 * j);
          v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:", v88];

          [v83 addObject:v89];
        }

        v85 = [v84 countByEnumeratingWithState:&v111 objects:v149 count:16];
      }

      while (v85);
    }

    [v83 sortUsingSelector:sel_caseInsensitiveCompare_];
    [v107 write:@"claimed schemes" array:v83];

    objc_autoreleasePoolPop(inTagClass);
  }

  v90 = objc_autoreleasePoolPush();
  v92 = v90;
  v93 = v104;
  v94 = v108;
  if (v101)
  {
    if ([__LSDefaultsGetSharedInstance(v90 v91)])
    {
      *&v153 = 0;
      if ([v101 getContentModificationDate:&v153 error:0])
      {
        v95 = *(v104 + 200);
        if (v95 != *&v153)
        {
          [v107 write:@"bundleModDate" interval:v95];
          [v107 write:@"NodeModDate" interval:*&v153];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v92);
  v96 = [MEMORY[0x1E695DF70] array];
  [(_LSDatabase *)*v108 store];
  v97 = v96;
  _CSArrayEnumerateAllValues();
  [v107 write:@"plugin Identifiers" array:v97];
  if (*(v104 + 140))
  {
    [v107 childUnit:@"entitlements" table:*(-[_LSDatabase schema](*v108) + 1600) unit:*(v104 + 140)];
  }

  if (*(v104 + 144))
  {
    [v107 childUnit:@"group ctrs" table:*(-[_LSDatabase schema](*v108) + 1600) unit:*(v104 + 144)];
  }

  if (*(v104 + 516))
  {
    [v107 childUnit:@"environment" table:*(-[_LSDatabase schema](*v108) + 1600) unit:*(v104 + 516)];
  }

  if (*(v104 + 152))
  {
    [v107 childUnit:@"Intents" table:*(-[_LSDatabase schema](*v108) + 1600) unit:*(v104 + 152)];
  }

  if (*(v104 + 476))
  {
    [(_LSDatabase *)*v108 store];
    v110 = v107;
    _CSArrayEnumerateAllValues();

    v93 = v104;
    v94 = v108;
  }

  if (*(v93 + 472))
  {
    [(_LSDatabase *)*v94 store];
    v109 = v107;
    _CSArrayEnumerateAllValues();
  }

  v8 = v104;
LABEL_94:

  return v8 != 0;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = _LSScoreCPUType(*a2);
  v11 = _LSScoreCPUType(v9);
  v12 = *a3;
  v13 = _LSScoreCPUType(*a3);
  if (v10 >= v11)
  {
    if (v13 < v10)
    {
      *a2 = v12;
      *a3 = v8;
      v14 = *a2;
      v15 = *a1;
      v16 = _LSScoreCPUType(*a2);
      if (v16 >= _LSScoreCPUType(v15))
      {
        v11 = v10;
        v12 = v8;
        goto LABEL_11;
      }

      *a1 = v14;
      *a2 = v15;
      v12 = *a3;
      v13 = _LSScoreCPUType(*a3);
    }

    goto LABEL_10;
  }

  if (v13 >= v10)
  {
    *a1 = v8;
    *a2 = v9;
    v12 = *a3;
    v13 = _LSScoreCPUType(*a3);
    if (v13 < v11)
    {
      *a2 = v12;
      goto LABEL_9;
    }

LABEL_10:
    v11 = v13;
    goto LABEL_11;
  }

  *a1 = v12;
LABEL_9:
  *a3 = v9;
  v12 = v9;
LABEL_11:
  v17 = *a4;
  result = _LSScoreCPUType(*a4);
  if (result < v11)
  {
    *a3 = v17;
    *a4 = v12;
    v19 = *a3;
    v20 = *a2;
    v21 = _LSScoreCPUType(*a3);
    result = _LSScoreCPUType(v20);
    if (v21 < result)
    {
      *a2 = v19;
      *a3 = v20;
      v22 = *a2;
      v23 = *a1;
      v24 = _LSScoreCPUType(*a2);
      result = _LSScoreCPUType(v23);
      if (v24 < result)
      {
        *a1 = v22;
        *a2 = v23;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = _LSScoreCPUType(*a5);
  result = _LSScoreCPUType(v11);
  if (v12 < result)
  {
    *a4 = v10;
    *a5 = v11;
    v14 = *a4;
    v15 = *a3;
    v16 = _LSScoreCPUType(*a4);
    result = _LSScoreCPUType(v15);
    if (v16 < result)
    {
      *a3 = v14;
      *a4 = v15;
      v17 = *a3;
      v18 = *a2;
      v19 = _LSScoreCPUType(*a3);
      result = _LSScoreCPUType(v18);
      if (v19 < result)
      {
        *a2 = v17;
        *a3 = v18;
        v20 = *a2;
        v21 = *a1;
        v22 = _LSScoreCPUType(*a2);
        result = _LSScoreCPUType(v21);
        if (v22 < result)
        {
          *a1 = v20;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *a1;
        v9 = a1[1];
        v10 = _LSScoreCPUType(v9);
        v11 = _LSScoreCPUType(v8);
        v12 = *(a2 - 1);
        v13 = _LSScoreCPUType(v12);
        if (v10 >= v11)
        {
          if (v13 < v10)
          {
            a1[1] = v12;
            *(a2 - 1) = v9;
            v25 = *a1;
            v24 = a1[1];
            v26 = _LSScoreCPUType(v24);
            if (v26 < _LSScoreCPUType(v25))
            {
              *a1 = v24;
              a1[1] = v25;
            }
          }

          return 1;
        }

        if (v13 >= v10)
        {
          *a1 = v9;
          a1[1] = v8;
          v37 = *(a2 - 1);
          if (_LSScoreCPUType(v37) >= v11)
          {
            return 1;
          }

          a1[1] = v37;
        }

        else
        {
          *a1 = v12;
        }

        *(a2 - 1) = v8;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = _LSScoreCPUType(v5);
    if (v7 < _LSScoreCPUType(v6))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v15 = a1 + 1;
  v14 = a1[1];
  v16 = *a1;
  v17 = _LSScoreCPUType(v14);
  v18 = _LSScoreCPUType(v16);
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = _LSScoreCPUType(v19);
  if (v17 >= v18)
  {
    if (v21 >= v17)
    {
      goto LABEL_24;
    }

    *v15 = v19;
    *v20 = v14;
    v22 = a1;
    v23 = a1 + 1;
LABEL_22:
    if (v21 >= v18)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = a1;
  v23 = a1 + 2;
  if (v21 >= v17)
  {
    *a1 = v14;
    a1[1] = v16;
    v22 = a1 + 1;
    v23 = a1 + 2;
    goto LABEL_22;
  }

LABEL_23:
  *v22 = v19;
  *v23 = v16;
LABEL_24:
  v27 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v28 = 0;
  for (i = 24; ; i += 8)
  {
    v30 = *v27;
    v31 = *v20;
    v32 = _LSScoreCPUType(*v27);
    if (v32 < _LSScoreCPUType(v31))
    {
      v33 = i;
      while (1)
      {
        *(a1 + v33) = v31;
        v34 = v33 - 8;
        if (v33 == 8)
        {
          break;
        }

        v31 = *(a1 + v33 - 16);
        v35 = _LSScoreCPUType(v31);
        v33 = v34;
        if (v32 >= v35)
        {
          v36 = (a1 + v34);
          goto LABEL_32;
        }
      }

      v36 = a1;
LABEL_32:
      *v36 = v30;
      if (++v28 == 8)
      {
        break;
      }
    }

    v20 = v27++;
    if (v27 == a2)
    {
      return 1;
    }
  }

  return v27 + 1 == a2;
}

uint64_t _LSScoreCPUType(int a1)
{
  if (a1 == 16777228)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (a1 == 16777234)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 16777223)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 18)
  {
    v4 = 5;
  }

  else
  {
    v4 = -1;
  }

  if (a1 == 12)
  {
    v4 = 6;
  }

  if (a1 == 7)
  {
    v4 = 3;
  }

  if (a1 <= 16777222)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v1 addObject:?];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"localizedNames#%@", a3];
  [*(a1 + 32) childUnit:v5 table:*(-[_LSDatabase schema](**(a1 + 40)) + 1604) unit:*(*(a1 + 48) + 4 * a2 + 520)];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(*(a1 + 40) + 513)];
  [v1 write:@"retries" number:?];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_5(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = _LSGetDescriptionForPersonaType(a3);
  [v3 addObject:?];
}

uint64_t ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *([(_LSDatabase *)**(a1 + 40) schema]+ 1600);

  return [v4 childUnit:@"supportedGameController" table:v5 unit:a3];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_LSGetPlugin(**(a1 + 40), a3))
  {
    [(_LSDatabase *)**(a1 + 40) store];
    v4 = _CSStringCopyCFString();
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

uint64_t ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *([(_LSDatabase *)**(a1 + 40) schema]+ 16);

  return [v4 childUnit:v5 unit:a3];
}

void *___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _LSClaimGet(**(a1 + 40), a3);
  if (result)
  {
    v6 = *(a1 + 32);
    v7 = *([(_LSDatabase *)**(a1 + 40) schema]+ 8);

    return [v6 childUnit:v7 unit:a3];
  }

  return result;
}

void yieldAppsMatchingSearch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v19, v5, 0);

  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZL23yieldAppsMatchingSearchU13block_pointerFbP14_LSQueryResultP7NSErrorEU13block_pointerFbP11_LSDatabasejPK12LSBundleDataE_block_invoke;
    v15[3] = &unk_1E6A1AE20;
    v16 = v4;
    v18 = v6;
    v7 = v3;
    v17 = v7;
    v8 = _LSEnumerateViableBundlesOfClass(v6, 2, v15);
    if (v8)
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "yieldAppsMatchingSearch", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleQuery.mm", 659);
      (*(v7 + 2))(v7, 0, v9);
    }

    v10 = v16;
  }

  else
  {
    v11 = +[_LSDServiceDomain defaultServiceDomain];
    v12 = LaunchServices::Database::Context::_get(&v19, v11, 0);

    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v10 = v22;
    }

    (*(v3 + 2))(v3, 0, v10);
  }

  if (v19 && v21 == 1)
  {
    _LSContextDestroy(v19);
  }

  v13 = v20;
  v19 = 0;
  v20 = 0;

  v21 = 0;
  v14 = v22;
  v22 = 0;
}

void sub_1816DD094(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1816DDA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816DDEFC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_1816DE194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1816DEEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

id getAppRecordForApplicationNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[LSApplicationRecord alloc] _initWithNode:a2 bundleIdentifier:0 placeholderBehavior:0 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:a1 error:a3];

  return v3;
}

id getAppexRecordForXPCServiceNode(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v4 = [[LSApplicationExtensionRecord alloc] _initWithUUID:0 node:a2 bundleIdentifier:0 context:a1 requireValid:0 error:&v7];
  v5 = v7;
  if (a3 && !v4)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

BOOL _LSIconDictionarySupportsAlternateIcons(NSDictionary *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(NSDictionary *)a1 objectForKey:@"CFBundleAlternateIcons"];
  v4 = (_NSIsNSArray() & 1) != 0 || _NSIsNSDictionary();

  objc_autoreleasePoolPop(v2);
  return v4;
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](this, __n);
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }
}

Class init_EXAppExtensionPointEnumerator(void)
{
  if (!ExtensionFoundationLibrary(void)::frameworkLibrary)
  {
    ExtensionFoundationLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
  }

  result = objc_getClass("_EXAppExtensionPointEnumerator");
  class_EXAppExtensionPointEnumerator = result;
  get_EXAppExtensionPointEnumeratorClass = _EXAppExtensionPointEnumeratorFunction;
  return result;
}

void init_ISInvalidateCacheEntriesForBundleIdentifier(NSString *a1)
{
  v2 = a1;
  v1 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(v2);
}

{
  v2 = a1;
  v1 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(v2);
}

{
  v2 = a1;
  v1 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(v2);
}

void sub_1816EBB8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = LSBundleRecordUpdater;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1816ECAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,LSPluginData>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSPluginData>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSPluginData>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSPluginData>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,LSPluginData>>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

const __CFSet *_LSBundleActivateBindingsForUserActivityTypes(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = v5;
  v7 = 4294967246;
  if (v5)
  {
    if (v4)
    {
      if (a3)
      {
        v7 = _LSBundleCopyUserActivityTypes(v5, v4, a3);
        if (v7)
        {
          v9 = v6;
          v10 = v4;
          CFSetApplyFunction(v7, _LSBundleActivateBindingForUserActivityType, &v9);
          CFRelease(v7);

          v7 = 0;
        }
      }
    }
  }

  return v7;
}

CFSetRef _LSBundleCopyUserActivityTypes(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  Copy = 0;
  if (v5 && a2 && a3)
  {
    if (*(a3 + 492) && (v7 = *MEMORY[0x1E695E480], (Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8])) != 0))
    {
      [(_LSDatabase *)v5 store];
      v10 = v5;
      _CSArrayEnumerateAllValues();
      Copy = CFSetCreateCopy(v7, Mutable);
      CFRelease(Mutable);
    }

    else
    {
      Copy = 0;
    }
  }

  return Copy;
}

const __CFString *_LSBundleActivateBindingForUserActivityType(const __CFString *result, void **a2)
{
  if (result)
  {
    if (a2)
    {
      result = _LSDatabaseCreateStringForCFString(*a2, result, 0);
      if (result)
      {
        _LSBindableActivate(*a2, *(a2 + 2), 8u, result, 0, 0);
        [(_LSDatabase *)*a2 store];

        return _CSStringRelease();
      }
    }
  }

  return result;
}

const __CFSet *_LSBundleDeactivateBindingsForUserActivityTypes(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 4294967246;
  if (v5)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = _LSBundleCopyUserActivityTypes(v5, a2, a3);
        if (v7)
        {
          v9 = v6;
          v10 = a2;
          CFSetApplyFunction(v7, _LSBundleDeactivateBindingForUserActivityType, &v9);
          CFRelease(v7);

          v7 = 0;
        }
      }
    }
  }

  return v7;
}

const __CFString *_LSBundleDeactivateBindingForUserActivityType(const __CFString *result, void **a2)
{
  if (result)
  {
    if (a2)
    {
      result = _LSDatabaseGetStringForCFString(*a2, result, 0);
      if (result)
      {
        v3 = result;
        v4 = *a2;
        v5 = *(a2 + 2);

        return _LSBindableDeactivate(v4, v5, 8u, v3, 0);
      }
    }
  }

  return result;
}

CFSetRef _LSBundleCopyUserActivityDomainNames(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  Copy = 0;
  if (v5 && a2 && a3)
  {
    [(_LSDatabase *)v5 store];
    v8 = _CSStringCopyCFString();
    v9 = v8;
    if (v8)
    {
      v10 = _LSCopyUserActivityDomainNamesForBundleID(v8);
      v11 = v10;
      if (v10)
      {
        Count = CFArrayGetCount(v10);
        v13 = *MEMORY[0x1E695E480];
        Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9F8]);
        if (Mutable)
        {
          v15 = CFArrayGetCount(v11);
          while (v15 > 0)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, --v15);
            CFSetAddValue(Mutable, ValueAtIndex);
          }

          Copy = CFSetCreateCopy(v13, Mutable);
          CFRelease(Mutable);
        }

        else
        {
          Copy = 0;
        }

        CFRelease(v11);
      }

      else
      {
        Copy = 0;
      }

      CFRelease(v9);
    }

    else
    {
      Copy = 0;
    }
  }

  return Copy;
}

BOOL _LSBundleCouldBeSelectedForActivityContinuation(void *a1, int a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = 0;
  if (v7 && a2 && a3)
  {
    v10 = *(a3 + 172);
    v11 = (_LSBundleDataGetUnsupportedFormatFlag() & 0x400000) == 0;
    v9 = (v10 & 0x80) == 0 && v11;
    [(_LSDatabase *)v7 store];
    v12 = _CSStringCopyCFString();
    v13 = +[LSApplicationRestrictionsManager sharedInstance];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a3 + 420)];
    if ([(LSApplicationRestrictionsManager *)v13 isRatingAllowed:v14 forBundleIdentifier:v12])
    {
      v15 = +[LSApplicationRestrictionsManager sharedInstance];
      v16 = [(LSApplicationRestrictionsManager *)v15 isApplicationRestricted:v12 checkFlags:*(a3 + 172)];

      if (!v16)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    v18 = _LSDefaultLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "%@ is currently restricted and cannot be returned for activity type %@.", &v20, 0x16u);
    }

    v9 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v9;
}

uint64_t _LSBundleCompareForActivityContinuationSuitability(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2 || !a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _LSBundleCompareForActivityContinuationSuitability(__strong LSDatabaseRef, const LSBundleData *, const LSBundleData *)"}];
    [v13 handleFailureInFunction:v14 file:@"LSBundleUserActivitySupport.mm" lineNumber:245 description:@"unexpected NULL bundle data"];
  }

  MayBeOnNetwork = _LSBundleDataMayBeOnNetwork(v5, a2);
  if ((MayBeOnNetwork != 0) == (_LSBundleDataMayBeOnNetwork(v5, a3) == 0))
  {
    if (MayBeOnNetwork)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    goto LABEL_20;
  }

  if (*(a2 + 304) == *(a3 + 304))
  {
    v17 = *(a2 + 28);
    v18 = *(a2 + 44);
    v15 = *(a3 + 28);
    v16 = *(a3 + 44);
    v21 = v17;
    v22 = v18;
    v7 = *(a3 + 44);
    v19 = *(a3 + 28);
    v20 = v7;
    if (_LSVersionNumberCompare(&v21, &v19) != 1)
    {
      v21 = v17;
      v22 = v18;
      v19 = v15;
      v20 = v16;
      if (_LSVersionNumberCompare(&v21, &v19) == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_13:
    v8 = -1;
    goto LABEL_20;
  }

  StringForCFString = _LSDatabaseGetStringForCFString(v5, @"com.apple.mobilephone", 1);
  if (StringForCFString)
  {
    if (*(a2 + 304) != StringForCFString)
    {
      if (*(a3 + 304) == StringForCFString)
      {
LABEL_16:
        v8 = 1;
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_15:
  RegTime = _LSBundleDataGetRegTime(a2);
  v11 = _LSBundleDataGetRegTime(a3);
  if (RegTime < v11)
  {
    goto LABEL_16;
  }

  if (RegTime <= v11)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_20:

  return v8;
}

void sub_1816EF4BC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1816F0CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(v11);
  _Unwind_Resume(a1);
}

void sub_1816F126C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  a16 = &a20;
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&a16);

  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  LaunchServices::Database::Context::~Context(&a23);

  _Unwind_Resume(a1);
}

uint64_t _LSNumericHandlerRankFromHandlerRankString(const __CFString *a1)
{
  if (!a1 || CFStringCompare(a1, @"None", 1uLL) == kCFCompareEqualTo)
  {
    return 0;
  }

  v2 = 1;
  if (CFStringCompare(a1, @"Alternate", 1uLL))
  {
    if (CFStringCompare(a1, @"Default", 1uLL))
    {
      if (CFStringCompare(a1, @"Owner", 1uLL))
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

CFSetRef _LSCopyAllHandlerRankStrings()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1E6A1B160;
  v1[1] = *off_1E6A1B170;
  return CFSetCreate(*MEMORY[0x1E695E480], v1, 4, MEMORY[0x1E695E9F8]);
}

uint64_t _LSClaimAdd(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [(_LSDatabase *)v5 store];
    v8 = 4294967246;
    if (a2 && v7)
    {
      [(_LSDatabase *)v6 store];
      [(_LSDatabase *)v6 schema];
      v9 = CSStoreAllocUnitWithData();
      if (v9 && ([(_LSDatabase *)v6 store], [(_LSDatabase *)v6 schema], CSStoreGetUnit()))
      {
        v10 = [(_LSDatabase *)v6 store];
        v11 = [(_LSDatabase *)v6 schema];
        CSBindableKeyMapNextKey(v10, v11 + 24);
        v12 = objc_autoreleasePoolPush();
        [(_LSDatabase *)v6 store];
        [(_LSDatabase *)v6 schema];
        if (_CSStoreWriteToUnit())
        {
          v8 = 0;
        }

        else
        {
          v8 = _LSGetOSStatusFromNSError(0);
        }

        objc_autoreleasePoolPop(v12);
        if (!v8)
        {
          [(_LSDatabase *)v6 store];
          [(_LSDatabase *)v6 schema];
          CSMapSetValue();
          v13 = *(a2 + 8);
          if ((v13 & 0x20) != 0)
          {
            [(_LSDatabase *)v6 setDocumentTypesChanged:?];
            v13 = *(a2 + 8);
          }

          if ((v13 & 0x40) != 0)
          {
            [(_LSDatabase *)v6 setURLTypesChanged:?];
          }

          v8 = 0;
          if (a3)
          {
            *a3 = v9;
          }
        }
      }

      else
      {
        v8 = 4294957803;
      }
    }
  }

  else
  {
    v8 = 4294967246;
  }

  return v8;
}

uint64_t _LSClaimRemove(void *a1, uint64_t a2)
{
  v3 = a1;
  [(_LSDatabase *)v3 store];
  v4 = _LSClaimGet(v3, a2);
  if (v4)
  {
    [(_LSDatabase *)v3 store];
    [(_LSDatabase *)v3 schema];
    CSMapRemoveValue();
    v5 = v4[2];
    if ((v5 & 0x20) != 0)
    {
      [(_LSDatabase *)v3 setDocumentTypesChanged:?];
      v5 = v4[2];
    }

    if ((v5 & 0x40) != 0)
    {
      [(_LSDatabase *)v3 setURLTypesChanged:?];
    }

    LaunchServices::LocalizedString::Remove(v3, v4[5]);
    for (i = 0; i != 8 && v4[i + 7]; ++i)
    {
      [(_LSDatabase *)v3 store];
      _CSStringRelease();
    }

    [(_LSDatabase *)v3 store];
    _CSStringRelease();
    _LSDatabaseDisposeStringArray(v3, v4[6]);
    if (v4[17])
    {
      v7 = _LSBindingListDeactivate(v3);
      _LSBindingListDestroy(v3);
    }

    else
    {
      v7 = 0;
    }

    [(_LSDatabase *)v3 schema];
    CSStoreFreeUnit();
  }

  else
  {
    v7 = 4294957797;
  }

  return v7;
}

uint64_t _LSClaimSetGeneration(void *a1, uint64_t a2, int a3)
{
  result = _LSClaimGet(a1, a2);
  if (result)
  {
    *(result + 4) = a3;
  }

  return result;
}

void _LSClaimGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2, uint64_t a3)@<X8>)
{
  *a1 = LaunchServices::Claims::getSummary;
  a1[1] = LaunchServices::Claims::display;
  a1[2] = LaunchServices::Claims::copyBindingForVisualization;
}

unsigned int *LaunchServices::Claims::getSummary(void **this, LSContext *a2, uint64_t a3)
{
  v4 = _LSClaimGet(*this, a3);
  if (v4)
  {
    v4 = LaunchServices::LocalizedString::Get(*this, v4[5]);
    if (v4)
    {
      v4 = LaunchServices::LocalizedString::localizeUnsafely(v4, *this, 0);
    }
  }

  return v4;
}

BOOL LaunchServices::Claims::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = _LSClaimGet(*this, a3);
  if (v8)
  {
    [v7 childUnit:@"localizedNames" table:*(-[_LSDatabase schema](*this) + 1604) unit:*(v8 + 20)];
    v9 = _LSCopyHandlerRankStringFromNumericHandlerRank(*(v8 + 12));
    [v7 write:@"rank" string:v9];
    v10 = [v7 link:*(-[_LSDatabase schema](*this) + 4) unit:*(v8 + 16)];
    [v7 write:@"bundle" string:v10];

    [v7 write:@"reqCaps" arrayStringID:*(v8 + 24)];
    v11 = v7;
    v12 = *(v8 + 8);
    [v11 beginFlags:@"flags" flags:v12];
    if ((v12 & 2) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if ((v12 & 2) != 0)
    {
      v14 = @"apple-default-no-override";
    }

    else
    {
      v14 = @"apple-default";
    }

    [v11 flag:v13 name:v14 color:255];
    [v11 flag:4 name:@"apple-internal" color:255];
    [v11 flag:4096 name:@"relative-icon-path"];
    [v11 flag:8 name:@"package"];
    [v11 flag:16 name:@"legacy-wildcard"];
    [v11 flag:32 name:@"doc-type"];
    [v11 flag:64 name:@"url-type"];
    [v11 flag:128 name:@"private-scheme"];
    [v11 flag:256 name:@"always-available"];
    [v11 flag:512 name:@"resolves-icloud-conflicts"];
    [v11 flag:1024 name:@"uti-wildcard"];
    [v11 flag:2048 name:@"supports-collaboration"];
    [v11 flag:0x2000 name:@"default-apps-claim" color:16711935];
    [v11 flag:0x4000 name:@"relaxed-default-apps-claim" color:16711680];
    [v11 endFlags];

    v15 = v11;
    [v15 beginFlags:@"roles" flags:*(v8 + 14)];
    [v15 flag:8 name:@"Shell"];
    [v15 flag:4 name:@"Editor"];
    [v15 flag:2 name:@"Viewer"];
    [v15 flag:16 name:@"Importer"];
    [v15 flag:32 name:@"QLGenerator"];
    [v15 flag:1 name:@"None"];
    [v15 endFlags];

    [v15 write:@"iconFiles" arrayIDs:v8 + 28 count:8];
    [v15 write:@"iconName" stringID:*(v8 + 60)];
    [v15 write:@"delegate" stringID:*(v8 + 64)];
    [v15 childUnit:@"bindings" table:*(-[_LSDatabase schema](*this) + 1596) unit:*(v8 + 68)];
  }

  return v8 != 0;
}

void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(uint64_t *a1, uint64_t a2, int a3, char a4, void *a5)
{
  v7 = a5;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(LSContext * _Nonnull, const LSBundleData * _Nonnull, LSRolesMask, BOOL, void (^__strong _Nonnull)(NSString *__strong, const LSClaimData *))"}];
    [v10 handleFailureInFunction:v11 file:@"LSClaimedTypes.mm" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"inBundleData != NULL"}];

    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(LSContext * _Nonnull, const LSBundleData * _Nonnull, LSRolesMask, BOOL, void (^__strong _Nonnull)(NSString *__strong, const LSClaimData *))"}];
    [v12 handleFailureInFunction:v13 file:@"LSClaimedTypes.mm" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"inBlock != nil"}];

    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(LSContext * _Nonnull, const LSBundleData * _Nonnull, LSRolesMask, BOOL, void (^__strong _Nonnull)(NSString *__strong, const LSClaimData *))"}];
  [v8 handleFailureInFunction:v9 file:@"LSClaimedTypes.mm" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(_LSDatabase *)*a1 store];
  v14 = v7;
  _CSArrayEnumerateAllValues();
}

id _LSGetAllClaimedTypesOrSchemesForBundleID(uint64_t *a1, uint64_t a2, int a3, char a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695DFA8] set];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___LSGetAllClaimedTypesOrSchemesForBundleID_block_invoke;
  v13[3] = &unk_1E6A1B228;
  v10 = v9;
  v14 = v10;
  _LSEnumerateAllClaimedTypesOrSchemesForBundleID(a1, a2, a3, a4, v13);
  v11 = [v10 copy];

  objc_autoreleasePoolPop(v8);

  return v11;
}

void sub_1816F2910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F29D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F2A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F2B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F31D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_1816F3418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

__CFString *_LSContainerStateGetDescription(int a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%llu)", a1];
  }

  else
  {
    v2 = off_1E6A1B420[(a1 + 1)];
  }

  return v2;
}

void _LSContainerSetMounted(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = _LSContainerGet(v5, a2);
  if (v6)
  {
    v7 = _LSAliasGetPath(v5, *(v6 + 12));
    v8 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218499;
      v12 = a2;
      v13 = 2113;
      v14 = v7;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_INFO, "Updating state of volume %llx %{private}@ to mounted with volume ID %llu", buf, 0x20u);
    }

    v9 = v5;
    [(_LSDatabase *)v5 store];
    v10 = v5;
    [(_LSDatabase *)v5 schema];
    _CSStoreWriteToUnit();
  }
}

uint64_t _LSContainerFindOrRegisterWithNode(id *a1, void *a2, int a3, _DWORD *a4, uint64_t *a5, id *a6, void *a7)
{
  v84[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = v13;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (a1 && v13 && *a1)
  {
    v47 = 0;
    obj = 0;
    v46 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v15 = _LSCreateContainerNodesAndFlagsForNode(v13, &obj, &v47, &v46, a7);
    location = a6;
    *(v50 + 24) = v15;
    if (v15)
    {
      v39 = a5;
      v17 = v47;
      v16 = obj;
      v35 = v46;
      v34 = v43;
      v18 = *a1;
      v19 = v16;
      v20 = v17;
      v21 = v39;
      v36 = v19;
      v37 = v20;
      v82 = 0;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = 0;
      v74 = 0;
      v75 = &v74;
      v76 = 0x2020000000;
      v77 = 0;
      if ([v19 getVolumeIdentifier:&v82 error:0])
      {
        v22 = v18;
        [(_LSDatabase *)v18 store];
        v23 = v18;
        [(_LSDatabase *)v18 schema];
        v63 = MEMORY[0x1E69E9820];
        v64 = 3221225472;
        v65 = ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke;
        v66 = &unk_1E6A1B360;
        v73 = v35;
        v72 = v82;
        v24 = v18;
        v67 = v24;
        v25 = v19;
        v68 = v25;
        v69 = v37;
        v70 = &v78;
        v71 = &v74;
        _CSStoreEnumerateUnits();

        v21 = v39;
        if (v75[3] || (v26 = v24, [(_LSDatabase *)v24 store], v27 = v24, [(_LSDatabase *)v24 schema], v53 = MEMORY[0x1E69E9820], v54 = 3221225472, v55 = ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke_2, v56 = &unk_1E6A1B388, v62 = v35, v57 = v24, v59 = &v78, v60 = &v74, v61 = v82, v58 = v25, _CSStoreEnumerateUnits(), v58, v21 = v39, v57, v75[3]))
        {
          *(v34 + 6) = *(v79 + 6);
          v28 = 1;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = v75[3] != 0;
      }

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(&v78, 8);

      *(v50 + 24) = v28;
      if (v28)
      {
        goto LABEL_17;
      }

      v63 = 0;
      v64 = &v63;
      v65 = 0x3032000000;
      v66 = __Block_byref_object_copy__13;
      v67 = __Block_byref_object_dispose__13;
      v68 = 0;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = ___LSContainerFindOrRegisterWithNode_block_invoke;
      v40[3] = &unk_1E6A1B298;
      v40[4] = &v42;
      v40[5] = &v49;
      v41 = a7 != 0;
      v40[6] = &v63;
      _LSContainerAddWithNode(a1, v14, 1, v40);
      v29 = *(v50 + 24);
      if (a7 && (v50[3] & 1) == 0)
      {
        *a7 = *(v64 + 40);
        v29 = *(v50 + 24);
      }

      if (a3 & 0x3000000) == 0x2000000 && (v29)
      {
        v30 = _LSContextUpdate(a1, 1, a7);
        *(v50 + 24) = v30;
      }

      _Block_object_dispose(&v63, 8);

      if (v50[3])
      {
LABEL_17:
        if (a4)
        {
          *a4 = *(v43 + 6);
        }

        if (v21)
        {
          *v21 = _LSContainerGet(*a1, *(v43 + 6));
        }

        if (location)
        {
          objc_storeStrong(location, obj);
        }
      }
    }

    _Block_object_dispose(&v42, 8);
  }

  else if (a7)
  {
    v83 = *MEMORY[0x1E696A278];
    v84[0] = @"invalid input parameters";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    *a7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v31, "_LSContainerFindOrRegisterWithNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 366);
  }

  v32 = *(v50 + 24);
  _Block_object_dispose(&v49, 8);

  return v32 & 1;
}

void sub_1816F4378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, id a40)
{
  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 168), 8);

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

BOOL _LSCreateContainerNodesAndFlagsForNode(void *a1, void **a2, FSNode **a3, _WORD *a4, void *a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 volumeNodeWithFlags:0 error:a5];
    v12 = v11 != 0;
    if (v11)
    {
      v13 = +[FSNode rootVolumeNode];
      v14 = [v11 isEqual:v13];

      if (v14)
      {
        v15 = 18;
      }

      else
      {
        v18 = +[FSNode prebootVolumeNode];
        [v11 isEqual:v18];

        v15 = 16;
      }

      if ([v11 isOnDiskImage])
      {
        if (a3)
        {
          v19 = [v11 diskImageURLWithFlags:1 error:0];
          v20 = v19;
          if (v19 && [v19 isFileURL])
          {
            v17 = [[FSNode alloc] initWithURL:v20 flags:0 error:0];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v15 |= 4u;
      }

      else
      {
        v17 = 0;
      }

      v21 = [v11 isOnLocalVolume];
      if (a2)
      {
        v22 = *a2;
        *a2 = v11;

        v11 = 0;
      }

      if (a3)
      {
        v23 = *a3;
        *a3 = v17;

        v17 = 0;
      }

      if (a4)
      {
        *a4 = v15 | v21;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (a5)
    {
      v25 = *MEMORY[0x1E696A278];
      v26[0] = @"inNode";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "_LSCreateContainerNodesAndFlagsForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 206);
    }

    v12 = 0;
  }

  return v12;
}

void _LSContainerAddWithNode(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v11 = [__LSDefaultsGetSharedInstance(v9 v10)];
  if ((v11 & 1) != 0 || ([__LSDefaultsGetSharedInstance(v11 v12)] & 1) == 0)
  {
    MEMORY[0x1865D7C40]();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___LSContainerAddWithNode_block_invoke;
    v24[3] = &unk_1E6A1B2C0;
    v25 = v7;
    v27 = a1;
    v28 = a3;
    v26 = v8;
    v15 = MEMORY[0x1865D71B0](v24);
    v16 = v15;
    if (a3)
    {
      (*(v15 + 16))(v15);
    }

    else
    {
      if (a1)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSContainerAddWithNode(LSContext *, FSNode *__strong, Boolean, void (^__strong)(LSContainerID, NSError *__strong))"}];
        [v20 handleFailureInFunction:v21 file:@"LSContainer.mm" lineNumber:617 description:@"if asyncing _LSContainerAddWithNode it cannot use a caller's context"];
      }

      v17 = _LSServer_GetIOQueue(v15);
      dispatch_async(v17, v16);
    }

    v18 = v25;
  }

  else
  {
    if (a3)
    {
      v13 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = ___LSContainerAddWithNode_block_invoke_25;
      v23[3] = &unk_1E6A19090;
      v23[4] = v8;
      v14 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v23];
    }

    else
    {
      v13 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___LSContainerAddWithNode_block_invoke_2;
      v22[3] = &unk_1E6A19090;
      v22[4] = v8;
      v14 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v22];
    }

    v18 = v14;

    v19 = [v7 URL];
    [v18 registerContainerURL:v19 completionHandler:v8];
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t _LSContainerAdd(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = v4;
  if (v4 && [(_LSDatabase *)v4 store])
  {
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    v6 = CSStoreAllocUnitWithData();
    if (v6)
    {
      v7 = 0;
      if (a3)
      {
        *a3 = v6;
      }
    }

    else
    {
      v7 = 4294957803;
    }
  }

  else
  {
    v7 = 4294967246;
  }

  return v7;
}

uint64_t _LSContainerRemove(void **a1, uint64_t a2)
{
  result = [(_LSDatabase *)*a1 accessContext];
  if (result)
  {
    result = _CSStoreAccessContextAssertWriting();
  }

  if (a2)
  {
    result = _LSContainerGet(*a1, a2);
    if (result)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x4812000000;
      v12 = __Block_byref_object_copy__27;
      v13 = __Block_byref_object_dispose__28;
      v14 = &unk_1818533FF;
      v16 = 0;
      v17 = 0;
      __p = 0;
      [(_LSDatabase *)*a1 store];
      [(_LSDatabase *)*a1 schema];
      _CSStoreEnumerateUnits();
      v5 = v10[6];
      v6 = v10[7];
      while (v5 != v6)
      {
        _LSUnregisterBundle(a1, *v5++, 0);
      }

      _Block_object_dispose(&v9, 8);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      v9 = 0;
      v10 = &v9;
      v11 = 0x4812000000;
      v12 = __Block_byref_object_copy__27;
      v13 = __Block_byref_object_dispose__28;
      v14 = &unk_1818533FF;
      v16 = 0;
      v17 = 0;
      __p = 0;
      [(_LSDatabase *)*a1 store];
      [(_LSDatabase *)*a1 schema];
      _CSStoreEnumerateUnits();
      v7 = v10[6];
      v8 = v10[7];
      while (v7 != v8)
      {
        _LSPluginRemove(*a1, *v7++);
      }

      _Block_object_dispose(&v9, 8);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }

      [(_LSDatabase *)*a1 store];
      [(_LSDatabase *)*a1 schema];
      return CSStoreFreeUnit();
    }
  }

  return result;
}

void sub_1816F531C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__27(__n128 *a1, __n128 *a2)
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

uint64_t _LSContainerSet(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = v4;
  if (v4 && (v6 = [(_LSDatabase *)v4 store], a3) && v6)
  {
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    _CSStoreWriteToUnit();
    v7 = 0;
  }

  else
  {
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSContainerSet", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 737);
  }

  return 1;
}

void _LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot(uint64_t *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning nonexistent cryptex bundles", buf, 2u);
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x4812000000;
  v25 = __Block_byref_object_copy__27;
  v26 = __Block_byref_object_dispose__28;
  v27 = &unk_1818533FF;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4812000000;
  v18 = __Block_byref_object_copy__32;
  v19 = __Block_byref_object_dispose__33;
  v20 = &unk_1818533FF;
  memset(v21, 0, sizeof(v21));
  [(_LSDatabase *)*a1 store];
  [(_LSDatabase *)*a1 schema];
  _CSStoreEnumerateUnits();
  v3 = v16[6];
  for (i = v16[7]; v3 != i; v3 += 2)
  {
    v5 = [v3[1] checkResourceIsReachableAndReturnError:0];
    if ((v5 & 1) == 0)
    {
      v6 = _LSDefaultLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *v3;
        v8 = v3[1];
        *v31 = 134218242;
        *&v31[4] = v7;
        v32 = 2112;
        v33 = v8;
        _os_log_error_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "cryptex unit %llx is not reachable at %@, will remove", v31, 0x16u);
      }

      std::vector<unsigned int>::push_back[abi:nn200100](v23 + 6, v3);
    }
  }

  v9 = *(v23 + 6);
  for (j = *(v23 + 7); v9 != j; ++v9)
  {
    v11 = *v9;
    v12 = _LSBundleRemove(*a1, v11, 0);
    v13 = v12;
    v14 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 134218240;
      *&v31[4] = v11;
      v32 = 1024;
      LODWORD(v33) = v13;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Removed bundle unit %llx, status: %d", v31, 0x12u);
    }
  }

  _Block_object_dispose(&v15, 8);
  *v31 = v21;
  std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](v31);
  _Block_object_dispose(buf, 8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_1816F5864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  _Block_object_dispose(&a20, 8);
  *(v36 - 128) = a10;
  std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100]((v36 - 128));
  _Block_object_dispose(&a29, 8);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _LSContainerGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2, uint64_t a3)@<X8>)
{
  *a1 = LaunchServices::Containers::getSummary;
  a1[1] = LaunchServices::Containers::display;
  a1[2] = LaunchServices::Containers::copyBindingForVisualization;
}

unsigned int *LaunchServices::Containers::getSummary(void **this, LSContext *a2, uint64_t a3)
{
  v4 = _LSContainerGet(*this, a3);
  if (v4)
  {
    v4 = _LSAliasGetPath(*this, v4[3]);
  }

  return v4;
}

BOOL LaunchServices::Containers::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = _LSContainerGet(*this, a3);
  if (v8)
  {
    v9 = [v7 link:*(-[_LSDatabase schema](*this) + 1584) unit:*(v8 + 3)];
    [v7 write:@"path" string:v9];

    if (*(v8 + 4))
    {
      v10 = [v7 link:*(-[_LSDatabase schema](*this) + 1584) unit:*(v8 + 4)];
      [v7 write:@"disk image" string:v10];
    }

    v11 = v7;
    [v11 beginFlags:@"flags" flags:*v8];
    [v11 flag:1 name:@"local"];
    [v11 missingFlag:1 name:@"remote" color:6710886];
    [v11 flag:2 name:@"root"];
    [v11 flag:4 name:@"disk-image"];
    [v11 flag:16 name:@"sys-managed"];
    [v11 endFlags];

    v12 = _LSContainerStateGetDescription(*(v8 + 2));
    [v11 write:@"state" string:v12];
    if (*(v8 + 2) == 1)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v8 + 2)];
      [v11 write:@"volume" number:v13];
    }

    else
    {
      [v11 write:@"volume" string:&stru_1EEF65710];
    }
  }

  return v8 != 0;
}

uint64_t ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke(uint64_t result, int a2, unsigned __int16 *a3, uint64_t a4, _BYTE *a5)
{
  v5 = *a3;
  if (v5 != *(result + 80))
  {
    return result;
  }

  if (*(a3 + 2) != 1)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 72);
  if (v8 != *(a3 + 2))
  {
    return result;
  }

  if ((v5 & 2) != 0)
  {
LABEL_9:
    *(*(*(v7 + 56) + 8) + 24) = a2;
    *(*(*(v7 + 64) + 8) + 24) = a3;
    *a5 = 1;
    return result;
  }

  result = _LSAliasCompareToNode(*(result + 32), *(a3 + 3), v8, 0, *(result + 40));
  if (!result)
  {
    return result;
  }

  v11 = *(a3 + 4);
  v12 = *(v7 + 48);
  if (!v11)
  {
    if (v12)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v12)
  {
    result = _LSAliasCompareToNode(*(v7 + 32), v11, 0, 0, v12);
    if (result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke_2(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, _BYTE *a5)
{
  if (*a3 == *(result + 72))
  {
    v14 = v5;
    v15 = v6;
    v9 = a2;
    v10 = result;
    v13 = 0;
    v12 = 0;
    result = _LSContainerCheckState(*(result + 32), a2, a3, &v13, &v12);
    if (result)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13 == 1;
    }

    if (v11 && v12 == *(v10 + 64))
    {
      if ((*a3 & 2) != 0 || (result = _LSAliasCompareToNode(*(v10 + 32), *(a3 + 3), v12, 0, *(v10 + 40)), result))
      {
        *(*(*(v10 + 48) + 8) + 24) = v9;
        *(*(*(v10 + 56) + 8) + 24) = a3;
        *a5 = 1;
      }
    }
  }

  return result;
}

void ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v53 = *(a1 + 64);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v53, v2, 0);

  if (!v3)
  {
    v13 = *(a1 + 56);
    v14 = +[_LSDServiceDomain defaultServiceDomain];
    v15 = LaunchServices::Database::Context::_get(&v53, v14, 0);

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v56;
    }

    (*(v13 + 16))(v13, 0, v16);

    goto LABEL_19;
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v5 = _LSDefaultLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_1();
  }

  [(_LSDatabase *)*v3 store];
  [(_LSDatabase *)*v3 schema];
  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v7 = (a1 + 72);
  v6 = *(a1 + 72);
  v44 = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_39;
  v45 = &unk_1E6A1B3B0;
  v48 = *(a1 + 80);
  v46 = &v49;
  v47 = v6;
  v8 = _CSStoreEnumerateUnits();
  if (*(v50 + 6))
  {
    goto LABEL_11;
  }

  v9 = _LSDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_2();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v58 = 0;
  [(_LSDatabase *)*v3 store];
  [(_LSDatabase *)*v3 schema];
  v36[1] = MEMORY[0x1E69E9820];
  v36[2] = 3221225472;
  v10 = *(a1 + 32);
  v36[3] = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_40;
  v36[4] = &unk_1E6A1B3D8;
  v41 = *(a1 + 80);
  v38 = buf;
  v40 = v3;
  v37 = v10;
  v39 = &v49;
  _CSStoreEnumerateUnits();
  v11 = *(v50 + 6);
  if (v11 && *(*&buf[8] + 24))
  {
    _LSContainerSetMounted(*v3, v11, *v7);
  }

  _Block_object_dispose(buf, 8);
  if (*(v50 + 6))
  {
LABEL_11:
    v12 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_3();
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_14;
  }

  v19 = _LSDefaultLog(v8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_4();
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *v3;
    v36[0] = 0;
    v22 = _LSAliasAdd(v21, v20, v36);
    v23 = v36[0];
    v24 = v23;
    v25 = v23;
    if (!v22)
    {
LABEL_38:
      v32 = _LSDefaultLog(v23);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 32);
        v34 = *v7;
        *buf = 138478339;
        *&buf[4] = v33;
        *&buf[12] = 2048;
        *&buf[14] = v34;
        *&buf[22] = 2114;
        v58 = v25;
        _os_log_error_impl(&dword_18162D000, v32, OS_LOG_TYPE_ERROR, "Error adding database record for volume %{private}@ with volume ID %llu: %{public}@", buf, 0x20u);
      }

      v24 = v25;
      (*(*(a1 + 56) + 16))();
      goto LABEL_42;
    }
  }

  else
  {
    v24 = 0;
    v22 = 0;
  }

  v26 = *(a1 + 48);
  if (v26)
  {
    v27 = *v3;
    v35 = v24;
    v28 = _LSAliasAdd(v27, v26, &v35);
    v25 = v35;

    v24 = v25;
    if (!v28)
    {
LABEL_36:
      if (v22)
      {
        v23 = _LSAliasRemove(*v3, v22);
      }

      goto LABEL_38;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 72);
  v30 = *v3;
  *buf = *(a1 + 80);
  *&buf[2] = 0;
  *&buf[4] = v29;
  *&buf[12] = v22;
  *&buf[16] = v28;
  v31 = _LSContainerAdd(v30, buf, v50 + 6);
  if (v31)
  {
    v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v31, 0, "_LSContainerAdd_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 520);

    if (v28)
    {
      v23 = _LSAliasRemove(*v3, v28);
    }

    goto LABEL_36;
  }

  _LSContainerSetMounted(*v3, *(v50 + 6), *v7);
  (*(*(a1 + 56) + 16))();
LABEL_42:

LABEL_14:
  _Block_object_dispose(&v49, 8);
LABEL_19:
  MEMORY[0x1865D7C50]();
  if (v53 && v55 == 1)
  {
    _LSContextDestroy(v53);
  }

  v17 = v54;
  v53 = 0;
  v54 = 0;

  v55 = 0;
  v18 = v56;
  v56 = 0;
}

void sub_1816F6408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  _Block_object_dispose(&a27, 8);
  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_39(uint64_t result, int a2, unsigned __int16 *a3, uint64_t a4, _BYTE *a5)
{
  if (*a3 == *(result + 48) && *(a3 + 2) == 1 && *(result + 40) == *(a3 + 2))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a5 = 1;
  }

  return result;
}

uint64_t ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_40(uint64_t result, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 40) + 8) + 24) = a3;
  v5 = *(*(*(result + 40) + 8) + 24);
  if (*v5 == *(result + 64))
  {
    v8 = result;
    result = _LSAliasCompareToNode(**(result + 56), *(v5 + 3), *(v5 + 2), 0, *(result + 32));
    if (result)
    {
      *(*(*(v8 + 48) + 8) + 24) = a2;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t std::vector<std::pair<unsigned int,FSNode * {__strong}>>::__emplace_back_slow_path<unsigned int &,FSNode * {__strong}&>(uint64_t *a1, _DWORD *a2, id *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>::allocate_at_least[abi:nn200100](a1, v8);
  }

  v9 = 16 * v3;
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  *v9 = *a2;
  *(v9 + 8) = *a3;
  *&v18 = v9 + 16;
  v10 = a1[1];
  v11 = v9 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>,std::pair<unsigned int,NSUUID * {__strong}>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(&v16);
  return v15;
}

void sub_1816F66C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *_LSCopyGroupContainerIdentifiersFromEntitlements(void *a1, void *a2)
{
  v3 = a2;
  [a1 UTF8String];
  v4 = v3;
  v5 = container_entitlements_copy_container_identifiers();
  if (object_getClass(v5) != MEMORY[0x1E69E9E50])
  {
    _LSCopyGroupContainerIdentifiersFromEntitlements_cold_1(v5);
  }

  count = xpc_array_get_count(v5);
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:count];
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{xpc_array_get_string(v5, i)}];
      if (v9)
      {
        [v7 addObject:v9];
      }
    }
  }

  return v7;
}

id _LSCopyGroupContainerURLSFromContainermanager(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v24 = 1;
  [v2 UTF8String];
  v3 = container_create_or_lookup_app_group_paths_for_platform();
  if (v3)
  {
    v19 = v2;
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = objc_alloc(MEMORY[0x1E695DF90]);
    v6 = [v4 allKeys];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x1E695DFF8]);
          v15 = [v8 objectForKeyedSubscript:v13];
          v16 = [v14 initFileURLWithPath:v15 isDirectory:1];
          [v7 setObject:v16 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v2 = v19;
  }

  else
  {
    v17 = _LSDefaultLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _LSCopyGroupContainerURLSFromContainermanager_cold_1(v2, &v24);
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  return v7;
}

uint64_t _LSCopyEnvironmentVariablesFromContainermanager(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = _LSDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = v5;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v3;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "querying MCM for environment for %@, class %llx, platform %lu", buf, 0x20u);
  }

  v19 = 1;
  [v5 UTF8String];
  v7 = container_create_or_lookup_path_for_platform();
  if (!v7)
  {
    v15 = _LSDefaultLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _LSCopyEnvironmentVariablesFromContainermanager_cold_1(v5, &v19);
    }

    goto LABEL_14;
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
  v10 = [v9 URLByAppendingPathComponent:@"tmp" isDirectory:1];
  v11 = [v10 path];
  v12 = [v9 path];
  v13 = v12;
  if (v11 && v12)
  {
    v20[0] = @"HOME";
    v20[1] = @"CFFIXED_USER_HOME";
    v21[0] = v12;
    v21[1] = v12;
    v20[2] = @"TMPDIR";
    v20[3] = @"_DYLD_CLOSURE_HOME";
    v21[2] = v11;
    v21[3] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  }

  else
  {
    v16 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v10 path];
      *buf = 138412546;
      v23 = v17;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Error creating env variables-tempURL: %@, containerPath: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  free(v8);

  if (!v14)
  {
LABEL_14:
    v14 = MEMORY[0x1E695E0F8];
  }

  return v14;
}

void _LSGetNodeTypeCreatorInfo(uint64_t *a1, void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v9 = a2;
  if (a3 && *a3)
  {
    *a4 = *(*a3 + 196);
LABEL_9:
    *a5 = 0;
    goto LABEL_10;
  }

  if (a1 && _LSGetBundleClassForNode(a1, v9) == 2 && (v11 = 0, !_LSBundleFindWithNode(a1, v9, 0, &v11)))
  {
    v10 = v11;
    *a4 = *(v11 + 196);
    *a5 = 0;
    if (a3)
    {
      *a3 = v10;
    }
  }

  else if (([v9 getHFSType:a4 creator:a5 error:0] & 1) == 0)
  {
    *a4 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

BOOL _LSIsKnownExtensionInlineBuffer(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (*(a2 + 160) >= 1 && XCFBufInitWithCFStringInlineBuffer(v5, a2, 1))
    {
      v2 = _LSIsKnownExtension(a1, v5);
      XCFBufDestroy(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _LSGetBundleClassForExtensionNSString(void *a1)
{
  v1 = a1;
  v6 = v1;
  v9 = 0;
  v10 = [(__CFString *)v1 length];
  if (CFStringGetCharactersPtr(v1))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v11 = 0;
  v12 = 0;
  v8 = CStringPtr;
  v3 = _LSGetBundleClassForExtensionInlineBuffer(v5);

  return v3;
}

uint64_t _LSBundleClassHasUnregisteredPersonality(int a1)
{
  if ((a1 - 9) >= 7)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x1000001000101uLL >> (8 * (a1 - 9));
  }

  return v1 & 1;
}

BOOL _LSIsKnownExtension(uint64_t *a1, uint64_t a2)
{
  [(_LSDatabase *)*a1 store];
  [(_LSDatabase *)*a1 schema];
  return CSStringBindingFindStringAndBindings() == 0;
}

uint64_t _LSGetValidApplicationCategoryTypeSet()
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_LSGetValidApplicationCategoryTypeSet::lock);
  if (_LSGetValidApplicationCategoryTypeSet::categoryTypeSet)
  {
    goto LABEL_24;
  }

  if (!_LSCurrentProcessMayMapDatabase())
  {
    v7 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__14;
    v20 = __Block_byref_object_dispose__14;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___LSGetValidApplicationCategoryTypeSet_block_invoke_71;
    v15[3] = &unk_1E6A1B490;
    v15[4] = &v16;
    [v7 getApplicationCategoryIdentifiersSetWithCompletionHandler:v15];
    _LSGetValidApplicationCategoryTypeSet::categoryTypeSet = [v17[5] copy];
    _Block_object_dispose(&v16, 8);

    goto LABEL_24;
  }

  v19 = 0;
  v16 = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v0 = +[_LSDServiceDomain defaultServiceDomain];
  v1 = LaunchServices::Database::Context::_get(&v16, v0, 0);

  if (v1)
  {
    v24 = 0;
    if (_UTGetActiveTypeForCFStringIdentifier(*v1, @"public.app-category", &v24))
    {
      v3 = *MEMORY[0x1E695E480];
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &kXCFCaseInsensitiveStringSetCallBacks);
      if (!Mutable)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFSetRef _LSGetValidApplicationCategoryTypeSet()"];
        [v13 handleFailureInFunction:v14 file:@"LSCore.mm" lineNumber:944 description:@"Failed to allocate CFMutableSet for category types."];
      }

      v5 = *v1;
      v6 = v24;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3321888768;
      v22[2] = ___LSGetValidApplicationCategoryTypeSet_block_invoke;
      v22[3] = &__block_descriptor_48_ea8_40c27_ZTS10CFReleaserIP7__CFSetE_e42_v36__0I8r____IIIIiII_8I_IIIIIIIII_12q20_28l;
      v22[4] = v1;
      cf = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      _UTTypeSearchConformingTypesWithBlock(v5, v6, -1, 0, v22);
      CFSetRemoveValue(Mutable, @"public.app-category");
      _LSGetValidApplicationCategoryTypeSet::categoryTypeSet = CFSetCreateCopy(v3, Mutable);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_20;
    }

    v8 = _LSDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v26 = "CFSetRef _LSGetValidApplicationCategoryTypeSet()";
      v27 = 2114;
      v28 = @"public.app-category";
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: unable to get info for type %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = _LSDefaultLog(v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = LaunchServices::Database::Context::error(&v16);
      _LSGetValidApplicationCategoryTypeSet_cold_1(v9, buf, v8);
    }
  }

LABEL_20:
  if (v16 && v18 == 1)
  {
    _LSContextDestroy(v16);
  }

  v10 = v17;
  v16 = 0;
  v17 = 0;

  LOBYTE(v18) = 0;
  v11 = v19;
  v19 = 0;

LABEL_24:
  os_unfair_lock_unlock(&_LSGetValidApplicationCategoryTypeSet::lock);
  return _LSGetValidApplicationCategoryTypeSet::categoryTypeSet;
}

CFTypeRef __copy_helper_block_ea8_40c27_ZTS10CFReleaserIP7__CFSetE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_40c27_ZTS10CFReleaserIP7__CFSetE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

id LaunchServices::Database::Context::error(id *this)
{
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(this, v2, 0);

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = this[3];
  }

  return v4;
}

CFArrayRef _LSCopyApplicationCategoriesForApplicationNode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v19 = 0;
  v7 = v6[2](v6, v5, &v19);
  v8 = v19;
  v9 = v7;
  v10 = v9;
  if (v9)
  {
  }

  else
  {
    Copy = _LSGetOSStatusFromNSError(v8);

    if (Copy == -1427)
    {
      Copy = 0;
      *a2 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
      goto LABEL_22;
    }

    if (Copy)
    {
      goto LABEL_22;
    }
  }

  valid = _LSGetValidApplicationCategoryTypeSet();
  if (valid)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      MutableCopy = 0;
      v14 = *MEMORY[0x1E695E480];
      v15 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v15 - 2);
        if (!CFSetContainsValue(valid, ValueAtIndex))
        {
          if (!MutableCopy)
          {
            MutableCopy = CFArrayCreateMutableCopy(v14, 0, v10);
          }

          CFArrayRemoveValueAtIndex(MutableCopy, v15 - 2);
        }

        --v15;
      }

      while (v15 > 1);
      if (MutableCopy)
      {
        Copy = CFArrayCreateCopy(v14, MutableCopy);
        if (v10)
        {
          CFRelease(v10);
        }

        CFRelease(MutableCopy);
        if (!Copy)
        {
          goto LABEL_15;
        }

LABEL_17:
        *a2 = CFRetain(Copy);
        CFRelease(Copy);
        Copy = 0;
        goto LABEL_22;
      }
    }
  }

  Copy = v10;
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_15:
  *a2 = 0;
LABEL_22:

  return Copy;
}

uint64_t _LSCopyInfoForNode(LSContext *a1, void *a2, int a3, int *a4)
{
  v7 = a2;
  v39 = 0;
  v40 = 0;
  *(a4 + 1) = 0;
  *a4 = 0;
  a4[4] = 0;
  if (!a1 && a3 != 64)
  {
    v8 = _LSContextInit(&v40);
    if (v8)
    {
      v9 = 0;
      goto LABEL_23;
    }

    a1 = &v40;
  }

  v38 = 0;
  v9 = [v7 nameWithError:&v38];
  v10 = v38;
  v11 = v10;
  if (v9)
  {
  }

  else
  {
    v8 = _LSGetOSStatusFromNSError(v10);

    if (v8)
    {
      goto LABEL_21;
    }
  }

  _CFGetPathExtensionRangesFromPathComponent();
  if (a3)
  {
    v12.location = v41;
    if (v41 != -1)
    {
      v12.length = v42;
      if (v42 >= 1)
      {
        *(a4 + 3) = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v9, v12);
      }
    }
  }

  if ([v7 isHidden])
  {
    *a4 |= 0x40u;
  }

  if ((a3 & 0x54) != 0)
  {
    v33[0] = 0;
    if ([v7 getResourceValue:v33 forKey:*MEMORY[0x1E695DB60] options:1 error:0] && objc_msgSend(v33[0], "BOOLValue"))
    {
      *a4 |= 0x100000u;
    }
  }

  if (a3 == 64)
  {
    goto LABEL_20;
  }

  v14 = _LSGetBundleClassForNode(a1, v7);
  v15 = v14;
  if (v14)
  {
    v16 = v14 == 3;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (![v7 isDirectory])
  {
    if ([v7 isSymbolicLink])
    {
      v19 = *a4 | 0x30;
      goto LABEL_64;
    }

    if ([v7 isAliasFile])
    {
      v23 = *a4;
      v24 = 17;
    }

    else
    {
      v23 = *a4;
      if (v15 != 2)
      {
        v19 = v23 | 1;
LABEL_64:
        *a4 = v19;
        memset(v37, 63, sizeof(v37));
        [v7 getHFSType:&v37[1] creator:v37 error:0];
        if ((a3 & 0x14) != 0 && (*a4 & 0x10) == 0 && [v7 isExecutable])
        {
          v26 = (v37[1] == 1061109567 || v37[1] == 0) && v42 == 0;
          if (v26 || v15)
          {
            *a4 |= 0x2000u;
          }

          else
          {
            LODWORD(v33[0]) = 0;
            v33[1] = 0;
            v34 = 0;
            v35 = 0u;
            v36 = 0u;
            if (_LSGetBindingForNodeOrSchemeOrUTI(a1, v7, 0, 0, 0, -1, 0, 2, v33) || !v35)
            {
              *a4 |= 0x2000u;
            }
          }
        }

        if ((a3 & 2) != 0)
        {
          v27 = v37[0];
          a4[1] = v37[1];
          a4[2] = v27;
        }

        if ((a3 & 0x18) != 0 && (*a4 & 4) != 0)
        {
          v28 = v39;
          if (a1 && !v39)
          {
            _LSFindOrRegisterBundleNode(a1, v7, 0, (a1 == &v40) << 25, 0, 0, &v39);
            v28 = v39;
          }

          if (v28)
          {
            plistContentFlags = v28->_plistContentFlags;
            *a4 |= (_LSBundleDataGetUnsupportedFormatFlag() | plistContentFlags) & 0x600F80;
            v30 = _LSGetItemInfoArchFlagsForBundle(v39);
          }

          else
          {
            v30 = 0x400000;
          }

          *a4 |= v30;
        }

        goto LABEL_20;
      }

      v24 = 5;
    }

    v19 = v23 | v24;
    goto LABEL_64;
  }

  *a4 |= 8u;
  if ([v7 isVolume])
  {
    if ((a3 & 0x14) != 0)
    {
      v8 = 0;
      v18 = *a4 | 0x1000;
LABEL_34:
      *a4 = v18;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((a3 & 0x3E) == 0)
  {
    goto LABEL_20;
  }

  if (_LSNodeIsPackageCommon(a1, v7, 1, 0))
  {
    *a4 |= 2u;
  }

  if ((a3 & 2) != 0 && (*a4 & 2) != 0)
  {
    if (v39)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    if (a1 && v20)
    {
      _LSFindOrRegisterBundleNode(a1, v7, 0, (a1 == &v40) << 25, 0, 0, &v39);
    }

    _LSGetNodeTypeCreatorInfo(a1, v7, &v39, a4 + 1, a4 + 2);
  }

  if ((a3 & 0x3C) == 0)
  {
    goto LABEL_20;
  }

  v8 = 0;
  if ((*a4 & 2) != 0 && v15 == 2)
  {
    *a4 |= 4u;
    if ((a3 & 0x18) != 0)
    {
      v21 = v39;
      if (a1 && !v39)
      {
        _LSFindOrRegisterBundleNode(a1, v7, 0, (a1 == &v40) << 25, 0, 0, &v39);
        v21 = v39;
      }

      if (v21)
      {
        v22 = v21->_plistContentFlags;
        *a4 |= (_LSBundleDataGetUnsupportedFormatFlag() | v22) & 0x600F80;
        v8 = 0;
        v18 = *a4 | _LSGetItemInfoArchFlagsForBundle(v39);
        goto LABEL_34;
      }

      v31 = [v7 URL];
      v32 = CFBundleCopyInfoDictionaryInDirectory(v31);

      *a4 |= _LSGetApplicationFlagsFromPlist(v32, v7, 1, 0, 0, 0);
      if (v32)
      {
        CFRelease(v32);
      }
    }

LABEL_20:
    v8 = 0;
  }

LABEL_21:
  if (v40)
  {
    _LSContextDestroy(&v40);
  }

LABEL_23:

  return v8;
}

uint64_t _LSGetItemInfoArchFlagsForBundle(const LSBundleData *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL32_LSGetItemInfoArchFlagsForBundlePK12LSBundleData_block_invoke;
  v3[3] = &unk_1E6A1ABC0;
  v3[4] = &v4;
  _LSEnumerateSliceMask(a1->base._sliceMask, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1816F7FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSGetApplicationFlagsFromPlist(const __CFDictionary *a1, void *a2, int a3, int a4, int a5, _BYTE *a6)
{
  v11 = a2;
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      if (CFDictionaryGetCount(a1))
      {
        if (_LSGetBooleanFromDict(a1, @"LSRequiresClassic"))
        {
          v13 = 256;
        }

        else if (_LSGetBooleanFromDict(a1, @"LSRequiresCarbon"))
        {
          v13 = 128;
        }

        else if (_LSGetBooleanFromDict(a1, @"LSPrefersCarbon"))
        {
          v13 = 640;
        }

        else if (_LSGetBooleanFromDict(a1, @"LSPrefersClassic"))
        {
          v13 = 1152;
        }

        else if (a4)
        {
          v13 = 640;
        }

        else
        {
          v13 = 128;
        }

        if (CFDictionaryContainsKey(a1, @"AMCustomServiceTypes"))
        {
          v15 = v13 | 0x20000;
        }

        else
        {
          v15 = v13;
        }

        if (!a6)
        {
          goto LABEL_16;
        }

LABEL_15:
        *a6 = 0;
        goto LABEL_16;
      }
    }
  }

  if (a5)
  {
    v14 = 256;
  }

  else
  {
    v14 = 128;
  }

  if (a3)
  {
    v14 = 0;
  }

  if (a4)
  {
    v15 = 640;
  }

  else
  {
    v15 = v14;
  }

  if (a6)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v15;
}

BOOL _LSGetItemInfoFlagsForNode(LSContext *a1, void *a2, _DWORD *a3, void *a4)
{
  v7 = a2;
  if (v7)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSGetItemInfoFlagsForNode(LSContext *, FSNode *__strong, LSItemInfoFlags *, NSError *__autoreleasing *)"}];
    [v10 handleFailureInFunction:v11 file:@"LSCore.mm" lineNumber:1535 description:{@"Invalid parameter not satisfying: %@", @"inNode != nil"}];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSGetItemInfoFlagsForNode(LSContext *, FSNode *__strong, LSItemInfoFlags *, NSError *__autoreleasing *)"}];
  [v12 handleFailureInFunction:v13 file:@"LSCore.mm" lineNumber:1536 description:{@"Invalid parameter not satisfying: %@", @"outFlags != NULL"}];

LABEL_3:
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v8 = _LSCopyInfoForNode(a1, v7, 4, v14);
  if (v8)
  {
    if (a4)
    {
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "_LSGetItemInfoFlagsForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSCore.mm", 1544);
    }
  }

  else
  {
    *a3 = v14[0];
  }

  return v8 == 0;
}

uint64_t _LSCanBundleHandleNodeOrSchemeOrUTI(LSContext *a1, int a2, void *a3, LaunchServices::BindingEvaluator *this, LaunchServices::BindingEvaluator *a5, int a6)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  if (_LSGetBindingForNodeOrSchemeOrUTI(a1, a3, this, a5, a2, a6, 0, 80046, &v9))
  {
    v7 = 0;
  }

  else if (v11)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (a3 && v10)
    {
      v7 = (*(v10 + 172) >> 28) & 1;
    }
  }

  return v7;
}

uint64_t _LSCopySniffedExtensionAndTypeIdentifierForURL()
{
  v0 = _CFBundleCopyFileTypeForFileURL();
  if (v0)
  {
    CFRelease(v0);
  }

  return 0;
}

__CFSet *_LSCopyPackageExtensions(LSContext *a1)
{
  v2 = a1->db;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (Mutable)
  {
    [(_LSDatabase *)v2 store];
    [(_LSDatabase *)v2 schema];
    v4 = CSStringBindingCopyCFStrings();
    v5 = v4;
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
          if (_LSIsPackageExtension(a1, 1, ValueAtIndex))
          {
            v9 = CFArrayGetValueAtIndex(v5, v7);
            CFSetAddValue(Mutable, v9);
          }

          ++v7;
        }

        while (Count != v7);
      }

      CFRelease(v5);
    }

    if (CFSetGetCount(Mutable) < 1)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    else
    {
      CFSetAddValue(Mutable, @"app");
      CFSetAddValue(Mutable, @"service");
    }
  }

  return Mutable;
}

void _LSSetKernelPackageExtensions()
{
  v0 = _LSCopyPackageExtensionsUnion();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      os_unfair_lock_lock(&packageExtensionsLock);
      if (lastPackageExtensions)
      {
        CFRelease(lastPackageExtensions);
      }

      lastPackageExtensions = CFRetain(v1);
      os_unfair_lock_unlock(&packageExtensionsLock);
      v4 = 0;
      for (i = 0; i != v3; ++i)
      {
        usedBufLen = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        v19.length = CFStringGetLength(ValueAtIndex);
        v19.location = 0;
        Bytes = CFStringGetBytes(ValueAtIndex, v19, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
        v8 = usedBufLen;
        if (usedBufLen <= v4)
        {
          v8 = v4;
        }

        if (Bytes)
        {
          v4 = v8;
        }
      }

      v9 = v4 + 1;
      v10 = malloc_type_malloc((v4 + 1) * v3, 0x100004077774924uLL);
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = v10;
        while (1)
        {
          v14 = CFArrayGetValueAtIndex(v1, v12);
          if (!CFStringGetCString(v14, v13, v9, 0x8000100u))
          {
            break;
          }

          ++v12;
          v13 += v9;
          if (v3 == v12)
          {
            v16 = v11;
            v17 = v3;
            v18 = v9;
            fsctl("/", 0x80104102uLL, &v16, 0);
            break;
          }
        }

        free(v11);
      }
    }

    CFRelease(v1);
  }
}

CFArrayRef _LSCopyPackageExtensionsUnion(void)
{
  v3.db = 0;
  if (_LSContextInit(&v3.db))
  {
    v0 = 0;
  }

  else
  {
    v1 = _LSCopyPackageExtensions(&v3);
    if (v1)
    {
      v0 = XCFArrayCreateWithSet(*MEMORY[0x1E695E480], v1, MEMORY[0x1E695E9C0]);
      CFRelease(v1);
    }

    else
    {
      v0 = 0;
    }

    _LSContextDestroy(&v3.db);
  }

  return v0;
}

CFArrayRef _LSCopyKernelPackageExtensionsAsLSD()
{
  if (os_unfair_lock_trylock(&packageExtensionsLock))
  {
    if (lastPackageExtensions)
    {
      v0 = CFRetain(lastPackageExtensions);
      os_unfair_lock_unlock(&packageExtensionsLock);
      if (v0)
      {
        return v0;
      }
    }

    else
    {
      os_unfair_lock_unlock(&packageExtensionsLock);
    }
  }

  return _LSCopyPackageExtensionsUnion();
}

uint64_t ___ZL28_LSIsClaimedPackageExtensionP9LSContextPK10__CFString_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v4 = a3 & 0xFFFFFFFC;
  if ((a3 & 3) == 2 && v4 != 0)
  {
    v7 = result;
    result = _LSClaimGet(**(result + 40), v4);
    if (result)
    {
      if ((*(result + 8) & 8) != 0)
      {
        *(*(*(v7 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t ___ZL32_LSGetItemInfoArchFlagsForBundlePK12LSBundleData_block_invoke(uint64_t result, int a2)
{
  if (a2 > 16777222)
  {
    if (a2 == 16777223)
    {
      v2 = 0x10000000;
    }

    else
    {
      if (a2 != 16777234)
      {
        return result;
      }

      v2 = 0x8000000;
    }
  }

  else if (a2 == 7)
  {
    v2 = 0x4000000;
  }

  else
  {
    if (a2 != 18)
    {
      return result;
    }

    v2 = 0x2000000;
  }

  *(*(*(result + 32) + 8) + 24) |= v2;
  return result;
}

uint64_t _LSSetLocalDatabaseIfNewer(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1;
  os_unfair_recursive_lock_lock_with_options();
  sessionKey = v2->sessionKey;
  v4 = _LSGetSession(sessionKey);
  v5 = v4[3];
  if (!v5 || (v6 = v5, v7 = v4[3], _LSDatabaseGetCacheGUID(v7), v8 = objc_claimAutoreleasedReturnValue(), _LSDatabaseGetCacheGUID(v2), v1 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:v1], v1, v8, v7, v6, !v9))
  {
    v15 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = _LSDatabaseGetCacheGUID(v2);
      v19 = v4[3];
      if (v19)
      {
        v1 = v4[3];
        v20 = _LSDatabaseGetCacheGUID(v1);
      }

      else
      {
        v20 = @"(no db)";
      }

      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_debug_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEBUG, "Database with GUID %@ does not match existing database GUID %@", buf, 0x16u);
      if (v19)
      {
      }
    }

    goto LABEL_8;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(buf, 0, sizeof(buf));
  _LSDatabaseGetHeader(buf, v2);
  v10 = v31;
  v11 = v4[3];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(buf, 0, sizeof(buf));
  _LSDatabaseGetHeader(buf, v11);
  if (v10 <= v31)
  {
    v15 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(buf, v2);
      v17 = v4[3];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(buf, v17);
      _LSSetLocalDatabaseIfNewer_cold_1();
    }

LABEL_8:

    v14 = 0;
    goto LABEL_9;
  }

  v12 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(buf, 0, sizeof(buf));
    _LSDatabaseGetHeader(buf, v2);
    v13 = v4[3];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(buf, 0, sizeof(buf));
    _LSDatabaseGetHeader(buf, v13);
    _LSSetLocalDatabaseIfNewer_cold_2();
  }

  LSSession::setDatabase(v4, v2);
  v14 = 1;
LABEL_9:
  os_unfair_recursive_lock_unlock();

  return v14;
}

void _LSDatabaseHandleUnitExhaustion(_LSDatabase *a1, uint64_t a2)
{
  v2 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = _CSStoreCopyTableName();
  v6 = a1->node;
  v7 = [FSNode alloc];
  v8 = [(FSNode *)v6 URL];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.exhausted", v2];
  v10 = [v8 URLByAppendingPathExtension:v9];
  v29 = 0;
  v11 = [(FSNode *)v7 initWithURL:v10 flags:0 error:&v29];
  v12 = v29;

  if (v11)
  {
    v13 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138543874;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2114;
      *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v6;
      HIWORD(buf.__pn_.__r_.__value_.__r.__words[2]) = 2114;
      v34 = v11;
      _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "Unit exhaustion in table %{public}@; moving database %{public}@ -> %{public}@", &buf, 0x20u);
    }

    v28 = v12;
    v14 = [(FSNode *)v6 getFileSystemRepresentation:&buf error:&v28];
    v15 = v28;

    if (v14)
    {
      v27 = v15;
      v16 = [(FSNode *)v11 getFileSystemRepresentation:&__to error:&v27];
      v17 = v27;

      if (v16)
      {
        rename(&buf, &__to, v18);
        if (!v19)
        {
          v21 = _LSDatabaseGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 136446210;
            p_to = &__to;
            _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "moved database to %{public}s", v30, 0xCu);
          }

          goto LABEL_12;
        }

        v20 = *__error();
        v21 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v30 = 67109120;
          LODWORD(p_to) = v20;
          v22 = "rename() failed: %{darwin.errno}d";
          v23 = v21;
          v24 = 8;
LABEL_11:
          _os_log_error_impl(&dword_18162D000, v23, OS_LOG_TYPE_ERROR, v22, v30, v24);
        }
      }

      else
      {
        v21 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v30 = 138412290;
          p_to = v17;
          v22 = "couldn't get file system representation of database moved-aside path: %@";
          v23 = v21;
          v24 = 12;
          goto LABEL_11;
        }
      }

LABEL_12:

      goto LABEL_13;
    }

    v26 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__to.__pn_.__r_.__value_.__l.__data_) = 138412290;
      *(__to.__pn_.__r_.__value_.__r.__words + 4) = v15;
      _os_log_error_impl(&dword_18162D000, v26, OS_LOG_TYPE_ERROR, "couldn't get file system representation of database path: %@", &__to, 0xCu);
    }
  }

  else
  {
    v25 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v12;
      _os_log_error_impl(&dword_18162D000, v25, OS_LOG_TYPE_ERROR, "couldn't get database aside node: %@", &buf, 0xCu);
    }
  }

LABEL_13:
  _LSSetCrashMessage([objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unit exhaustion in table %@", v5]);
  abort();
}

void sub_1816F927C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _LSDatabase;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void _LSDatabaseSetHeader(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (!_CSStoreWriteToHeader())
    {
      v3 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _LSDatabaseSetHeader();
      }
    }
  }
}

uint64_t _LSDatabaseSessionSetSeedingInProgress(char a1)
{
  v2 = os_unfair_recursive_lock_lock_with_options();
  v4 = _LSServer_SelfSessionKey(v2, v3);
  v5 = _LSGetSession(v4);
  *(v5 + 20) = *(v5 + 20) & 0xFE | a1;

  return os_unfair_recursive_lock_unlock();
}

uint64_t _LSDatabaseSessionSetSeedingDueToManualRebuild(int a1)
{
  v2 = os_unfair_recursive_lock_lock_with_options();
  v4 = _LSServer_SelfSessionKey(v2, v3);
  v5 = _LSGetSession(v4);
  if (a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 20) = *(v5 + 20) & 0xFD | v6;

  return os_unfair_recursive_lock_unlock();
}

void sub_1816F97C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LSDBHeader::GetCurrentModelCode(std::string *__return_ptr a1@<X8>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v3 = MGCopyAnswer();
  if (v3)
  {
    [v2 addObject:v3];
  }

  v4 = MGCopyAnswer();
  if (v4)
  {
    [v2 addObject:v4];
  }

  v5 = [v2 componentsJoinedByString:@"/"];
  if (v5)
  {
    std::string::__assign_external(a1, [v5 UTF8String]);
  }
}

void sub_1816F98F8(_Unwind_Exception *a1)
{
  v4 = v3;

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void LSDBHeader::GetCurrentCryptexVersion(std::string *__return_ptr a1@<X8>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v5 = _LSGetCurrentCryptexBuildVersionString();
  if (v5)
  {
    v3 = [v5 UTF8String];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "";
    }

    std::string::__assign_external(a1, v4);
  }
}

void sub_1816F99B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void _LSDatabaseSetHeaderFlag(_LSDatabase *a1, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _LSDatabaseGetHeader(&v8, v5);
  if (a3)
  {
    v6 = DWORD2(v13) | a2;
  }

  else
  {
    v6 = DWORD2(v13) & ~a2;
  }

  DWORD2(v13) = v6;
  v7[10] = v18;
  v7[11] = v19;
  v7[12] = v20;
  v7[6] = v14;
  v7[7] = v15;
  v7[8] = v16;
  v7[9] = v17;
  v7[2] = v10;
  v7[3] = v11;
  v7[4] = v12;
  v7[5] = v13;
  v7[0] = v8;
  v7[1] = v9;
  _LSDatabaseSetHeader(v5, v7);
}

id _LSDatabaseGetSeededSystemVersion(_LSDatabase *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  _LSDatabaseGetHeader(v9, a1);
  *__p = *(v9 + 8);
  v8 = *(&v9[1] + 8);
  v1 = _LSVersionNumberGetStringRepresentation(__p);
  v2 = MEMORY[0x1E696AEC0];
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"?";
  }

  *__dst = 0;
  v12 = 0;
  strlcpy(__dst, v10, 0x10uLL);
  std::string::basic_string[abi:nn200100]<0>(__p, __dst);
  if ((SBYTE7(v8) & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [v2 stringWithFormat:@"%@ (%s)", v3, v4];
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1816F9C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id _LSDatabaseGetSeededCryptexVersion(_LSDatabase *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  _LSDatabaseGetHeader(v9, a1);
  *__p = *(&v9[2] + 8);
  v8 = *(&v9[3] + 8);
  v1 = _LSVersionNumberGetStringRepresentation(__p);
  v2 = MEMORY[0x1E696AEC0];
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"?";
  }

  *__dst = 0;
  v11 = 0;
  strlcpy(__dst, &v9[4] + 8, 0x10uLL);
  std::string::basic_string[abi:nn200100]<0>(__p, __dst);
  if ((SBYTE7(v8) & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [v2 stringWithFormat:@"%@ (%s)", v3, v4];
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1816F9D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_LSDatabase *_LSDatabaseCreateFromPersistentStore(uint64_t a1, __int16 *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v6 = objc_autoreleasePoolPush();
  v8 = [__LSDefaultsGetSharedInstance(v6 v7)];
  v9 = _LSDatabaseRecoveryFileExists(v8);

  if (v9)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [__LSDefaultsGetSharedInstance(v12 v13)];
    v48 = 0;
    v15 = [v12 removeItemAtURL:v14 error:&v48];
    v16 = v48;

    if (v15)
    {
      v19 = [__LSDefaultsGetSharedInstance(v17 v18)];
      v49 = 4;
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v47 = v16;
      v21 = [v20 removeItemAtURL:v19 error:&v47];
      v22 = v47;

      if (v21)
      {
        v23 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v51 = v19;
          _os_log_impl(&dword_18162D000, v23, OS_LOG_TYPE_INFO, "_LSCreateStoreWithFileContents, removed database file at %{public}@ to force clean rebuild.", buf, 0xCu);
        }
      }

      else
      {
        v23 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          _LSDatabaseCreateFromPersistentStore_cold_2();
        }
      }
    }

    else
    {
      v19 = _LSDatabaseGetLog();
      v24 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        v26 = [__LSDefaultsGetSharedInstance(v24 v25)];
        _LSDatabaseCreateFromPersistentStore_cold_1(v26, buf, v19);
      }

      v22 = v16;
    }
  }

  else
  {
    v22 = 0;
  }

  v27 = [__LSDefaultsGetSharedInstance(v10 v11)];
  v28 = _LSDatabaseRecoveryFileExists(v27) == 0;

  if (v28)
  {
    v38 = [__LSDefaultsGetSharedInstance(v29 v30)];
    _LSDatabaseCreateRecoveryFile(v38);

    v46 = v22;
    v39 = _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile(a1, 0, &v49, &v46);
    v34 = v46;

    if (v39)
    {
      v36 = v34;
      v35 = v39;
      goto LABEL_26;
    }

    v43 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStore_cold_4();
    }
  }

  else
  {
    v31 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStore_cold_3();
    }

    v49 = 4;
    v34 = v22;
  }

  if ((a1 & 4) != 0)
  {
    v45 = 0;
    v44 = v34;
    v35 = _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile(a1, 1, &v45, &v44);
    v36 = v44;

    v49 |= v45;
    if (!v35)
    {
      v37 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        _LSDatabaseCreateFromPersistentStore_cold_5();
      }
    }
  }

  else
  {
    v35 = 0;
    v36 = v34;
  }

LABEL_26:
  v40 = [__LSDefaultsGetSharedInstance(v32 v33)];
  _LSDatabaseDeleteRecoveryFile(v40);

  objc_autoreleasePoolPop(v6);
  if (v35)
  {
    if (a2)
    {
      *a2 = v49;
    }
  }

  else if (a3)
  {
    v41 = v36;
    *a3 = v36;
  }

  return v35;
}

void *_LSDatabaseRecoveryFileExists(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = [a1 getFileSystemRepresentation:v2 maxLength:1024];
  if (result)
  {
    return (access(v2, 0) == 0);
  }

  return result;
}

void _LSDatabaseCreateRecoveryFile(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([a1 getFileSystemRepresentation:v12 maxLength:1024])
  {
    v1 = open_dprotected_np(v12, 2561, 4, 0, 436);
    if (v1 < 0)
    {
      v5 = *__error() == 17;
      v6 = _LSDatabaseGetLog();
      v4 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          _LSDatabaseCreateRecoveryFile_cold_2();
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = __error();
        _LSDatabaseCreateRecoveryFile_cold_1(v12, v7, buf, v4);
      }
    }

    else
    {
      v2 = close(v1) == 0;
      v3 = _LSDatabaseGetLog();
      v4 = v3;
      if (v2)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v9 = "void _LSDatabaseCreateRecoveryFile(NSURL *__strong)";
          v10 = 2082;
          v11 = v12;
          _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully created recovery file %{public}s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        __error();
        _LSDatabaseCreateRecoveryFile_cold_3();
      }
    }
  }
}

_LSDatabase *_LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile(uint64_t a1, int a2, __int16 *a3, void *a4)
{
  v7 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v8 = _LSGetStoreNode(a1);
  v9 = v8;
  if (!a2)
  {
    v33 = 0;
    v14 = _LSCreateStoreWithFileContents(v8, &v33);
    v16 = v33;
    v15 = v16;
    if (v14)
    {
      v11 = 0;
      goto LABEL_11;
    }

    v20 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    if (_LSGetOSStatusFromNSError(v15) == -43)
    {
      v13 = 0;
      v14 = 0;
      v11 = 8;
      goto LABEL_41;
    }

    v15 = v15;
    v24 = [v15 domain];
    v25 = *MEMORY[0x1E696A768];
    if ([v24 isEqualToString:*MEMORY[0x1E696A768]])
    {
      if ([v15 code] == -9496)
      {

LABEL_40:
        v13 = 0;
        v14 = 0;
        v11 = 16;
        goto LABEL_41;
      }

      v28 = [v15 code] == -9489;

      if (v28)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    v15 = v15;
    v26 = [v15 domain];
    if ([v26 isEqualToString:v25])
    {
      v27 = [v15 code] == -9493;

      v13 = 0;
      v14 = 0;
      if (v27)
      {
        v11 = 128;
      }

      else
      {
        v11 = 256;
      }
    }

    else
    {

      v13 = 0;
      v14 = 0;
      v11 = 256;
    }

    goto LABEL_41;
  }

  if ((v7 & 4) == 0)
  {
    v10 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 1929);
    v11 = 64;
    v12 = 1;
    v13 = 0;
    v15 = v14 = 0;
    if (!a4)
    {
LABEL_44:
      v19 = v15;
      if (!a3)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_42:
    if (!v13)
    {
      v29 = v15;
      v13 = 0;
      *a4 = v15;
    }

    goto LABEL_44;
  }

  v34 = 0;
  v14 = _LSCreateEmptyStore(&v34);
  v16 = v34;
  v15 = v16;
  if (!v14)
  {
    v23 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    v13 = 0;
    v14 = 0;
    v11 = 64;
LABEL_41:
    v12 = 1;
    if (!a4)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v11 = 1;
LABEL_11:
  v18 = _LSServer_SelfSessionKey(v16, v17);
  v32 = v15;
  v13 = _LSDatabaseCreate(v9, v18, v14, &v32);
  v19 = v32;

  v35 = v13;
  if (!v13)
  {
    v21 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    v13 = 0;
    v12 = 0;
    v11 |= 0x20u;
LABEL_25:
    v15 = v19;
    if (!a4)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if ((v7 & 2) != 0)
  {
    v22 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v37 = v13;
      _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_INFO, "Cleaning new database object %{public}@", buf, 0xCu);
    }

    _LSDatabaseClean(&v35);
    v12 = 0;
    v13 = v35;
    goto LABEL_25;
  }

  v12 = 0;
  if (a3)
  {
LABEL_45:
    *a3 = v11;
  }

LABEL_46:
  v30 = 0;
  v35 = 0;
  if ((v12 & 1) == 0)
  {
    CFRelease(v14);
    v30 = v35;
  }

  return v13;
}

void _LSDatabaseDeleteRecoveryFile(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 getFileSystemRepresentation:&__p maxLength:1024])
  {
    if (remove(&__p, v2) && *__error() != 2)
    {
      v3 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v4 = __error();
        _LSDatabaseDeleteRecoveryFile_cold_1(&__p, v4, &v5, v3);
      }
    }

    else
    {
      v3 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136446210;
        p_p = &__p;
        _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Successfully removed recovery file %{public}s", &v5, 0xCu);
      }
    }
  }
}

_LSDatabase *_LSDatabaseCreateSystemContentDatabaseFromPersistentStore(void *a1)
{
  v2 = [FSNode alloc];
  v4 = [__LSDefaultsGetSharedInstance(v2 v3)];
  v5 = [(FSNode *)v2 initWithURL:v4 flags:0 error:a1];

  if (v5 && (v6 = _LSCreateStoreWithFileContents(v5, a1), (v8 = v6) != 0))
  {
    v9 = _LSServer_SelfSessionKey(v6, v7);
    v10 = _LSDatabaseCreateWithAccessContext(v5, v9, v8, 0, a1);
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _LSCreateStoreWithFileContents(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v9 = 0;
  if (!v3)
  {
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSCreateStoreWithFileContents", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 555);
    if (!a2)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    *a2 = v9;
    goto LABEL_9;
  }

  v5 = [v3 URL];
  v6 = _CSStoreCreateWithURL();

  if (!v6)
  {
    v7 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _LSCreateStoreWithFileContents();
    }

    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

_BYTE *_LSDatabaseCreateCleanForTesting(void *a1)
{
  result = _LSCreateEmptyStore(a1);
  if (result)
  {
    v3 = result;
    v4 = _CFGetEUID();
    v5 = _LSDatabaseCreate(0, v4, v3, a1);
    v6 = v5;
    CFRelease(v3);
    if (v5)
    {
      *(v5 + 32) |= 2u;
      _LSDatabaseClean(&v6);
      result = v6;
      *(v6 + 32) |= 2u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef _LSCreateEmptyStore(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0;
  Mutable = CSStoreCreateMutable();
  if (!Mutable)
  {
    v12 = 0;
    if (!a1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  memset(v21, 0, sizeof(v21));
  if (_CSStoreAddTable())
  {
    LSDBHeader::reset(v21, v3);
    if (_CSStoreWriteToHeader())
    {
      v4 = 0;
      while (_CSStoreAddTable())
      {
        v4 += 16;
        if (v4 == 192)
        {
          v5 = CSBindableKeyMapAddTable(Mutable, @"BindableKeyMap");
          if (v5)
          {
            _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v5, 0, "_LSCreateEmptyStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 595);
            v16 = v13 = 0;
          }

          else
          {
            for (i = 0; i != 448; i += 32)
            {
              v7 = *(&kLSBindingInfo + i);
              v8 = CSStringBindingStoreAddTable();
              if (v8)
              {
                v19 = @"Table";
                v20 = v7;
                v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
                v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, v13, "_LSCreateEmptyStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 601);

                goto LABEL_20;
              }
            }

            v9 = &off_1E6A1B508;
            v10 = -6;
            while (1)
            {
              if (v10 >= 8)
              {
                v11 = *v9;
                strlen(*v9);
                if (!_CSGetConstStringForCharacters())
                {
                  break;
                }
              }

              v9 += 4;
              if (++v10 == 8)
              {
                v12 = CFRetain(Mutable);
                goto LABEL_22;
              }
            }

            v17 = @"BindingClass";
            v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
            v18 = v13;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
            v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, v14, "_LSCreateEmptyStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 609);
          }

LABEL_20:

          break;
        }
      }
    }
  }

  v12 = 0;
LABEL_22:
  CFRelease(Mutable);
  if (a1)
  {
LABEL_23:
    if (!v12)
    {
      v12 = 0;
      *a1 = v16;
    }
  }

LABEL_25:

  return v12;
}

void sub_1816FB0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  CFRelease(v10);

  _Unwind_Resume(a1);
}

void _LSDatabaseClean(id *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  location = a1;
  v60 = *a1;
  v55 = MEMORY[0x1E69E9820];
  v56 = 3321888768;
  v57 = ___ZL16_LSDatabaseCleanPU8__strongP11_LSDatabase_block_invoke;
  v58 = &__block_descriptor_40_ea8_32c14_ZTS9LSContext_e19_v32__0I8r_v12I20_24l;
  v59 = v60;
  _CSStoreEnumerateUnits();
  v2 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Registering CoreTypes bundle", buf, 2u);
  }

  v66 = @"ApplicationType";
  v67 = @"Hidden";
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v3 = [(_LSDatabase *)v60 isSeeded];
  v4 = [[FSNode alloc] initWithFileSystemRepresentation:"/System/Library/CoreServices/MobileCoreTypes.bundle" flags:0 error:0];
  if (v4 && _LSFindOrRegisterBundleNode(&v60, v4, 0, v3 ^ 1 | 0x11000000u, v47, 0, 0))
  {
    v5 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseClean();
    }
  }

  v6 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Registering extension points", buf, 2u);
  }

  [(objc_class *)getEXEnumeratorClass() extensionPointDefinitionEnumerator];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v7)
  {
    v49 = *v52;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v51 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v9 platform];
        v12 = [v9 SDKDictionary];
        v13 = [v9 url];
        v14 = [FSNode alloc];
        v50 = 0;
        v15 = [(FSNode *)v14 initWithURL:v13 flags:8 error:&v50];
        v16 = v50;
        v17 = v16;
        if (!v15)
        {
          v18 = _LSDatabaseGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v13;
            *&buf[12] = 2114;
            *&buf[14] = v17;
            _os_log_error_impl(&dword_18162D000, v18, OS_LOG_TYPE_ERROR, "Failed to create node for framework %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v19 = _LSExtensionsLog(v16);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "void _LSDatabaseClean(LSDatabaseHandle)";
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_debug_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEBUG, "%s Registering extension point '%@'", buf, 0x16u);
        }

        if (([__LSDefaultsGetSharedInstance(v20 v21)] & 1) != 0 || -[FSNode canReadFromSandboxWithAuditToken:](v15, "canReadFromSandboxWithAuditToken:", 0))
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"registering extension point %@ at URL %@", v10, v13, location];
          LSCrashMessage::LSCrashMessage(&v61, v22);

          v23 = _LSRegisterFrameworkExtensionPointIfNecessary(v60, 0, v10, v11, v12, v13);
          if (v23)
          {
            v24 = _LSDatabaseGetLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v23;
              *&buf[12] = 2114;
              *&buf[14] = v13;
              _os_log_error_impl(&dword_18162D000, v24, OS_LOG_TYPE_ERROR, "Error %ld registering extension points inside framework %{public}@", buf, 0x16u);
            }
          }

          LSCrashMessage::~LSCrashMessage(&v61);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v7);
  }

  v25 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, "Done reregistering extension points", buf, 2u);
  }

  v26 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, "Loading handler preferences", buf, 2u);
  }

  v27 = v60;
  if (v60)
  {
    _LSDatabaseSetHeaderFlag(v60, 1, 0);
  }

  v29 = LSHandlerPref::CopyHandlers(v27);
  if (v29)
  {
    LSHandlerPref::Load(v60, v29, v28);
    if (v60)
    {
      _LSDatabaseSetHeaderFlag(v60, 1, 1);
    }

    CFRelease(v29);
  }

  v30 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "Registering canonical names", buf, 2u);
  }

  v31 = v60;
  v32 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_DEFAULT, "Registering canonical names", buf, 2u);
  }

  v33 = objc_autoreleasePoolPush();
  v34 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v34, OS_LOG_TYPE_DEFAULT, "Registering framework bundle localized strings", buf, 2u);
  }

  v35 = +[_LSStringLocalizer newFrameworkBundleLocalizer];
  v36 = v31;
  v37 = v35;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL52_LSDatabaseRegisterCanonicalNamesFromStringLocalizerP11_LSDatabaseP18_LSStringLocalizer_block_invoke;
  v73 = &unk_1E6A1B828;
  v38 = v36;
  v74 = v38;
  v75 = &v61;
  [v37 enumerateLocalizedStringsUsingBlock:buf];
  if (v62[3])
  {
    v39 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v62[3];
      v41 = [v37 debugDescription];
      *v68 = 134218242;
      v69 = v40;
      v70 = 2114;
      v71 = v41;
      _os_log_impl(&dword_18162D000, v39, OS_LOG_TYPE_DEFAULT, "Registered %llu new canonical strings from string localizer %{public}@", v68, 0x16u);
    }
  }

  _Block_object_dispose(&v61, 8);
  objc_autoreleasePoolPop(v33);

  v44 = [__LSDefaultsGetSharedInstance(v42 v43)];
  if ((v44 & 1) == 0 && ([__LSDefaultsGetSharedInstance(v44 v45)] & 1) == 0)
  {
    [(_LSDatabase *)v60 setSeeded:?];
  }

  objc_storeStrong(location, v60);
  kdebug_trace();
}

void sub_1816FB9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, ...)
{
  va_start(va, a36);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSDatabaseCommit(uint64_t a1, uint64_t a2)
{
  v2 = [__LSDefaultsGetSharedInstance(a1 a2)];
  v3 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    _LSDatabaseCommit_cold_1();
  }

  LaunchServices::notifyd::NotifyToken::Post(v2, v4);
}

time_t LSDBHeader::reset(LSDBHeader *this, uint64_t a2)
{
  *this = [__LSDefaultsGetSharedInstance(this a2)];
  *(this + 1) = 208;
  *(this + 8) = kLSVersionNumberNull;
  *(this + 24) = unk_1817E90C0;
  *(this + 11) = 0;
  std::string::basic_string[abi:nn200100]<0>(__p, "");
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v8 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  strlcpy(this + 96, v3, 0x10uLL);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "");
  *(this + 9) = 0;
  *(this + 10) = 0;
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  strlcpy(this + 72, v4, 0x10uLL);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "");
  *(this + 7) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  strlcpy(this + 112, v5, 0x40uLL);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 22) = 0;
  uuid_generate_random(this + 184);
  result = time(0);
  *(this + 25) = result;
  return result;
}

void sub_1816FBD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL _LSDatabaseSaveSystemContentDatabase(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v24[0] = 0;
  SnapshotAgainstAccessContext = _LSDatabaseCreateSnapshotAgainstAccessContext(v3, 0, v24);
  v6 = v24[0];
  if (SnapshotAgainstAccessContext)
  {
    v22 = a2;
    v23 = v3;
    v7 = SnapshotAgainstAccessContext;
    v44 = 0;
    v45 = &v44;
    v46 = 0x4812000000;
    v47 = __Block_byref_object_copy__15;
    v48 = __Block_byref_object_dispose__15;
    v49 = &unk_1818533FF;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x4812000000;
    v38 = __Block_byref_object_copy__15;
    v39 = __Block_byref_object_dispose__15;
    v40 = &unk_1818533FF;
    v42 = 0;
    v43 = 0;
    __p = 0;
    v8 = v7;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke;
    v31 = &unk_1E6A1B850;
    v33 = &v44;
    v9 = v7;
    v32 = v9;
    v34 = &v35;
    _CSStoreEnumerateUnits();
    v10 = v9;
    v24[1] = MEMORY[0x1E69E9820];
    v24[2] = 3221225472;
    v24[3] = ___ZL41_LSSystemContentDatabaseSanitizeForExportP11_LSDatabase_block_invoke_2;
    v24[4] = &unk_1E6A1B850;
    v26 = &v44;
    v11 = v9;
    v25 = v11;
    v27 = &v35;
    _CSStoreEnumerateUnits();
    v12 = v45[6];
    for (i = v45[7]; v12 != i; ++v12)
    {
      _LSAliasRemove(v11, *v12);
    }

    v14 = v36[6];
    v15 = v36[7];
    while (v14 != v15)
    {
      _LSPlistRemove(v11, *v14++);
    }

    _Block_object_dispose(&v35, 8);
    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v44, 8);
    a2 = v22;
    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    [(_LSDatabase *)v11 setSeeded:?];
    _LSDatabaseSetHeaderFlag(v11, 2, 0);
    [__LSDefaultsGetSharedInstance(v16 v17)];
    _LSDatabaseGetFileResourceProperties();
    v18 = _CSStoreWriteToURL() != 0;

    v6 = 0;
    v3 = v23;
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v20 = v6;
    *a2 = v6;
  }

  return v18;
}

void sub_1816FC0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v37 - 176), 8);
  v39 = *(v37 - 128);
  if (v39)
  {
    *(v37 - 120) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

id _LSDatabaseGetFileResourceProperties(void)
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  if (v0)
  {
    v1 = CFFileSecurityCreate(*MEMORY[0x1E695E480]);
    v3 = v1;
    if (v1)
    {
      v4 = [__LSDefaultsGetSharedInstance(v1 v2)];
      CFFileSecuritySetMode(v3, v4);
      [v0 setObject:v3 forKeyedSubscript:*MEMORY[0x1E695DB48]];
      CFRelease(v3);
    }

    [v0 setObject:*MEMORY[0x1E695DAF8] forKeyedSubscript:*MEMORY[0x1E695DAF0]];
  }

  return v0;
}

void sub_1816FC228(_Unwind_Exception *a1)
{
  CFRelease(v2);

  _Unwind_Resume(a1);
}

uint64_t _LSDatabaseFindBindingMapIndexWithTargetTable(char *a1, int a2)
{
  v3 = 0;
  v4 = a1 + 48;
  if (!a1)
  {
    v4 = 0;
  }

  v5 = (v4 + 120);
  while (1)
  {
    a1 = a1;
    v6 = *v5;
    v5 += 26;
    if (v6 == a2)
    {
      break;
    }

    if (++v3 == 14)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t _LSDatabaseFindBindingMapTargetTable(void *a1, int a2)
{
  v3 = a1;
  if (a2 > 13 || (a2 - 6) > 7)
  {
    v6 = 0;
  }

  else
  {
    v4 = &kLSBindingInfo + 32 * a2;
    v3 = v3;
    v5 = v3 + 48;
    if (!v3)
    {
      v5 = 0;
    }

    v6 = *&v5[*(v4 + 3)];
  }

  return v6;
}

uint64_t _LSDatabaseCreateStringForCFString(void *a1, const __CFString *a2, int a3)
{
  v11[20] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2 || (v6 = CFGetTypeID(a2), v6 != CFStringGetTypeID()))
  {
    XCFBufInit(v11);
    goto LABEL_6;
  }

  Length = CFStringGetLength(a2);
  if (!XCFBufInitWithCFStringRange(v11, a2, 0, Length, a3))
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v5;
  v9 = _CSCopyStringForCharacters();
  XCFBufDestroy(v11);
LABEL_7:

  return v9;
}

uint64_t _LSDatabaseCreateStringArray(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v7 = a1;
  v8 = a2;
  StringArrayCommon = _LSDatabaseCreateStringArrayCommon(v7, v8, [v8 count], 0, v5, a4);

  return StringArrayCommon;
}

uint64_t _LSDatabaseCreateStringArrayCommon(void *a1, void *a2, std::vector<unsigned int>::size_type a3, int a4, int a5, _BYTE *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v37 = a1;
  v36 = a2;
  if (a6)
  {
    *a6 = 0;
  }

  memset(&v45, 0, sizeof(v45));
  std::vector<unsigned int>::reserve(&v45, a3);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v36;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v12)
  {
    v13 = *v42;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        if (v15)
        {
          v16 = 1;
        }

        else
        {
          v16 = a4 == 0;
        }

        if (v16)
        {
          if (_NSIsNSString())
          {
            LODWORD(v38) = _LSDatabaseCreateStringForCFString(v37, v15, a5);
            if (v38)
            {
              std::vector<unsigned int>::push_back[abi:nn200100](&v45.__begin_, &v38);
              goto LABEL_35;
            }

            if (a6)
            {
              *a6 = 1;
            }

            v26 = _LSDatabaseGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v47 = v15;
              _os_log_error_impl(&dword_18162D000, v26, OS_LOG_TYPE_ERROR, "Could not create a CSString for CFString %{private}@", buf, 0xCu);
            }
          }

          else
          {
            if (a6)
            {
              *a6 = 1;
            }

            v26 = _LSDatabaseGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v29 = objc_opt_class();
              v30 = NSStringFromClass(v29);
              *buf = 138478083;
              v47 = v15;
              v48 = 2114;
              v49 = v30;
              _os_log_debug_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEBUG, "Expected %{private}@ to be a string, but instead it was a %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          end = v45.__end_;
          if (v45.__end_ >= v45.__end_cap_.__value_)
          {
            begin = v45.__begin_;
            v20 = v45.__end_ - v45.__begin_;
            v21 = v45.__end_ - v45.__begin_;
            v22 = v21 + 1;
            if ((v21 + 1) >> 62)
            {
              std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
            }

            v23 = v45.__end_cap_.__value_ - v45.__begin_;
            if ((v45.__end_cap_.__value_ - v45.__begin_) >> 1 > v22)
            {
              v22 = v23 >> 1;
            }

            v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
            v25 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v24)
            {
              v25 = v22;
            }

            if (v25)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:nn200100](&v45, v25);
            }

            *(4 * v21) = 0;
            v18 = (4 * v21 + 4);
            memcpy(0, begin, v20);
            v27 = v45.__begin_;
            v45.__begin_ = 0;
            v45.__end_ = v18;
            v45.__end_cap_.__value_ = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v45.__end_ = 0;
            v18 = end + 1;
          }

          v45.__end_ = v18;
          v28 = _LSDatabaseGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            _LSDatabaseCreateStringArrayCommon(&v39, v40, v28);
          }
        }

LABEL_35:
        ++v14;
      }

      while (v12 != v14);
      v31 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
      v12 = v31;
    }

    while (v31);
  }

  v38 = 0;
  v32 = v37;
  v33 = _CSArrayCreate();
  if (!v33)
  {
    v34 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v47 = v45.__end_ - v45.__begin_;
      v48 = 2114;
      v49 = v38;
      _os_log_error_impl(&dword_18162D000, v34, OS_LOG_TYPE_ERROR, "Failed to create CSArray with %zu elements: %{public}@", buf, 0x16u);
    }
  }

  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }

  return v33;
}