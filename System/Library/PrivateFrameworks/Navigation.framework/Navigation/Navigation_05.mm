void __GetAudioLogForMNUserOptionsEngineCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNUserOptionsEngine");
  v1 = GetAudioLogForMNUserOptionsEngineCategory_log;
  GetAudioLogForMNUserOptionsEngineCategory_log = v0;
}

id MNGetMNRouteLoggingLog()
{
  if (MNGetMNRouteLoggingLog_onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteLoggingLog_onceToken, &__block_literal_global_7309);
  }

  v1 = MNGetMNRouteLoggingLog_log;

  return v1;
}

void __MNGetMNRouteLoggingLog_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNRouteLogging");
  v1 = MNGetMNRouteLoggingLog_log;
  MNGetMNRouteLoggingLog_log = v0;
}

uint64_t __Block_byref_object_copy__7336(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D31EEB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MNStringFromSpokenLocalization(void *a1)
{
  v1 = a1;
  v2 = +[MNUserOptionsEngine sharedInstance];
  v3 = [v2 localizedStringForKey:v1];

  return v3;
}

void sub_1D31F4224(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D31F5828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = v16;

  _Unwind_Resume(a1);
}

void sub_1D31F6F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *__p, void *a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLMapsRouteHint>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8429C00, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1D31FA808(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MNTurnByTurnLocationTracker;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1D31FB0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D31FE0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8092(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _currentLocaleChanged()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"MNLocaleDidChangeNotification" object:0];
}

void sub_1D3201E28(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double gm::Matrix<double,2,1>::nearestPointOffsetAlongLineSegment<int,void>(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v3 = vsubq_f64(a3, a2);
  v4 = vmulq_f64(v3, v3);
  v5 = 0.0;
  if (vaddvq_f64(v4) > 1.0e-15)
  {
    v6 = vmulq_f64(vsubq_f64(*a1, a2), v3);
    return fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v6, 1), v6), vaddq_f64(vdupq_laneq_s64(v4, 1), v4)).f64[0], 0.0), 1.0);
  }

  return v5;
}

void sub_1D3204D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3205EB0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D320638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v15 + 40));

  _Unwind_Resume(a1);
}

void sub_1D32068B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D32069B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MNRouteGeniusRemoteService;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1D3206CFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));

  _Unwind_Resume(a1);
}

void sub_1D32072D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MNInstructionsShortPromptTypeForManeuver(uint64_t result, int a2)
{
  result = result;
  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 20:
    case 27:
    case 29:
    case 60:
    case 62:
      return 18;
    case 2:
    case 21:
    case 28:
    case 30:
    case 61:
    case 63:
      return 34;
    case 3:
    case 5:
      return 1;
    case 4:
    case 26:
    case 35:
      v2 = a2 == 1;
      v3 = 18;
      v4 = 34;
      goto LABEL_3;
    case 11:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
      v2 = a2 == 1;
      v3 = 34;
      v4 = 18;
      goto LABEL_3;
    case 16:
    case 18:
    case 39:
      return 4;
    case 17:
      return 3;
    case 25:
      v2 = a2 == 1;
      v3 = 19;
      v4 = 35;
LABEL_3:
      if (v2)
      {
        result = v4;
      }

      else
      {
        result = v3;
      }

      break;
    case 33:
      result = 20;
      break;
    case 34:
      result = 36;
      break;
    default:
      result = 2;
      break;
  }

  return result;
}

id MNInstructionsLocalizedMetricUnits()
{
  v26[8] = *MEMORY[0x1E69E9840];
  v17 = _MNLocalizedStringFromThisBundle(@"distance parsing: m");
  v25[0] = v17;
  v25[1] = &unk_1F4EE2980;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v26[0] = v16;
  v15 = _MNLocalizedStringFromThisBundle(@"distance parsing: m(s)");
  v24[0] = v15;
  v24[1] = &unk_1F4EE2980;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v26[1] = v14;
  v13 = _MNLocalizedStringFromThisBundle(@"distance parsing: meter");
  v23[0] = v13;
  v23[1] = &unk_1F4EE2980;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v26[2] = v12;
  v11 = _MNLocalizedStringFromThisBundle(@"distance parsing: meters");
  v22[0] = v11;
  v22[1] = &unk_1F4EE2980;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v26[3] = v0;
  v1 = _MNLocalizedStringFromThisBundle(@"distance parsing: km");
  v21[0] = v1;
  v21[1] = &unk_1F4EE2998;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v26[4] = v2;
  v3 = _MNLocalizedStringFromThisBundle(@"distance parsing: km(s)");
  v20[0] = v3;
  v20[1] = &unk_1F4EE2998;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v26[5] = v4;
  v5 = _MNLocalizedStringFromThisBundle(@"distance parsing: kilometer");
  v19[0] = v5;
  v19[1] = &unk_1F4EE2998;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v26[6] = v6;
  v7 = _MNLocalizedStringFromThisBundle(@"distance parsing: kilometers");
  v18[0] = v7;
  v18[1] = &unk_1F4EE2998;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v26[7] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:8];

  return v9;
}

id MNInstructionsLocalizedImperialUnits()
{
  v38[12] = *MEMORY[0x1E69E9840];
  v25 = _MNLocalizedStringFromThisBundle(@"distance parsing: yd");
  v37[0] = v25;
  v37[1] = &unk_1F4EE29B0;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v38[0] = v24;
  v23 = _MNLocalizedStringFromThisBundle(@"distance parsing: yd(s)");
  v36[0] = v23;
  v36[1] = &unk_1F4EE29B0;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v38[1] = v22;
  v21 = _MNLocalizedStringFromThisBundle(@"distance parsing: yard");
  v35[0] = v21;
  v35[1] = &unk_1F4EE29B0;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v38[2] = v20;
  v19 = _MNLocalizedStringFromThisBundle(@"distance parsing: yards");
  v34[0] = v19;
  v34[1] = &unk_1F4EE29B0;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v38[3] = v18;
  v17 = _MNLocalizedStringFromThisBundle(@"distance parsing: ft");
  v33[0] = v17;
  v33[1] = &unk_1F4EE29C8;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v38[4] = v16;
  v15 = _MNLocalizedStringFromThisBundle(@"distance parsing: ft(s)");
  v32[0] = v15;
  v32[1] = &unk_1F4EE29C8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v38[5] = v14;
  v13 = _MNLocalizedStringFromThisBundle(@"distance parsing: foot");
  v31[0] = v13;
  v31[1] = &unk_1F4EE29C8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v38[6] = v12;
  v11 = _MNLocalizedStringFromThisBundle(@"distance parsing: feet(s)");
  v30[0] = v11;
  v30[1] = &unk_1F4EE29C8;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v38[7] = v0;
  v1 = _MNLocalizedStringFromThisBundle(@"distance parsing: mi");
  v29[0] = v1;
  v29[1] = &unk_1F4EE29E0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v38[8] = v2;
  v3 = _MNLocalizedStringFromThisBundle(@"distance parsing: mi(s)");
  v28[0] = v3;
  v28[1] = &unk_1F4EE29E0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v38[9] = v4;
  v5 = _MNLocalizedStringFromThisBundle(@"distance parsing: mile");
  v27[0] = v5;
  v27[1] = &unk_1F4EE29E0;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v38[10] = v6;
  v7 = _MNLocalizedStringFromThisBundle(@"distance parsing: miles");
  v26[0] = v7;
  v26[1] = &unk_1F4EE29E0;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v38[11] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:12];

  return v9;
}

double MNInstructionsDistanceTypeConvertToMeters(uint64_t a1, double result)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v2 = 1000.0;
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v2 = 0.9144;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v2 = 0.3048;
        break;
      case 4:
        v2 = 1609.344;
        break;
      case 5:
        v2 = 6437.376;
        break;
      default:
        return result;
    }
  }

  return result * v2;
}

void sub_1D320AFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MNGetMNRouteDivergenceLog(void)
{
  if (MNGetMNRouteDivergenceLog(void)::onceToken != -1)
  {
    dispatch_once(&MNGetMNRouteDivergenceLog(void)::onceToken, &__block_literal_global_280);
  }

  v1 = MNGetMNRouteDivergenceLog(void)::log;

  return v1;
}

void ___ZL25MNGetMNRouteDivergenceLogv_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation", "MNRouteDivergence");
  v1 = MNGetMNRouteDivergenceLog(void)::log;
  MNGetMNRouteDivergenceLog(void)::log = v0;
}

__n128 std::deque<_MNRouteConvergencePoint>::emplace_back<_MNRouteConvergencePoint&>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 42 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x2A)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_MNRouteConvergencePoint *>>(v12);
    }

    a1[4] = v7 - 42;
    v18 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<_MNRouteConvergencePoint *>::emplace_back<_MNRouteConvergencePoint *&>(a1, &v18);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = v5[v8 / 0x2A] - 4032 * (v8 / 0x2A) + 96 * v8;
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  result = *(a2 + 32);
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  *(v13 + 64) = *(a2 + 64);
  *(v13 + 80) = v17;
  *(v13 + 32) = result;
  *(v13 + 48) = v16;
  ++a1[5];
  return result;
}

void sub_1D320D8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<_MNRouteConvergencePoint *>::emplace_back<_MNRouteConvergencePoint *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_MNRouteConvergencePoint *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_MNRouteConvergencePoint *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1D320E38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(&a25);
  std::__hash_table<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_0,[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_1,std::allocator<[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::~__hash_table(va);
  std::deque<_MNRouteConvergencePoint>::~deque[abi:ne200100](v32 - 208);

  _Unwind_Resume(a1);
}

uint64_t std::deque<_MNRouteConvergencePoint>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 21;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 42;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 *a8)
{
  v8 = *(a4 + 8);
  v9 = *(a2 + 8);
  if (v8 < v9 || v8 <= v9 && *(a4 + 88) == 1 && *(a2 + 88) != 1)
  {
    v10 = a6->n128_f64[1];
    if (v10 < v8 || v10 <= v8 && a6[5].n128_u8[8] == 1 && (*(a4 + 88) & 1) == 0)
    {
      v63 = *(a2 + 32);
      v70 = *(a2 + 48);
      *v77 = *(a2 + 64);
      *&v77[16] = *(a2 + 80);
      v49 = *a2;
      v56 = *(a2 + 16);
      v11 = a6[1];
      *a2 = *a6;
      *(a2 + 16) = v11;
      v13 = a6[3];
      v12 = a6[4];
      v14 = a6[2];
      *(a2 + 74) = *(a6 + 74);
      *(a2 + 48) = v13;
      *(a2 + 64) = v12;
      *(a2 + 32) = v14;
    }

    else
    {
      v66 = *(a2 + 32);
      v73 = *(a2 + 48);
      *v80 = *(a2 + 64);
      *&v80[16] = *(a2 + 80);
      v52 = *a2;
      v59 = *(a2 + 16);
      v25 = *(a4 + 16);
      *a2 = *a4;
      *(a2 + 16) = v25;
      v27 = *(a4 + 48);
      v26 = *(a4 + 64);
      v28 = *(a4 + 32);
      *(a2 + 74) = *(a4 + 74);
      *(a2 + 48) = v27;
      *(a2 + 64) = v26;
      *(a2 + 32) = v28;
      *(a4 + 64) = *v80;
      *(a4 + 74) = *&v80[10];
      *(a4 + 32) = v66;
      *(a4 + 48) = v73;
      result.n128_u64[1] = v52.n128_u64[1];
      *a4 = v52;
      *(a4 + 16) = v59;
      result.n128_u64[0] = a6->n128_u64[1];
      v29 = *(a4 + 8);
      if (result.n128_f64[0] >= v29 && (result.n128_f64[0] > v29 || a6[5].n128_u8[8] != 1 || (*(a4 + 88) & 1) != 0))
      {
        goto LABEL_16;
      }

      v63 = *(a4 + 32);
      v70 = *(a4 + 48);
      *v77 = *(a4 + 64);
      *&v77[16] = *(a4 + 80);
      v49 = *a4;
      v56 = *(a4 + 16);
      v30 = a6[1];
      *a4 = *a6;
      *(a4 + 16) = v30;
      v32 = a6[3];
      v31 = a6[4];
      v33 = a6[2];
      *(a4 + 74) = *(a6 + 74);
      *(a4 + 48) = v32;
      *(a4 + 64) = v31;
      *(a4 + 32) = v33;
    }

    a6[4] = *v77;
    *(a6 + 74) = *&v77[10];
    a6[2] = v63;
    a6[3] = v70;
    result.n128_u64[1] = v49.n128_u64[1];
    *a6 = v49;
    a6[1] = v56;
  }

  else
  {
    v15 = a6->n128_f64[1];
    if (v15 < v8 || v15 <= v8 && a6[5].n128_u8[8] == 1 && (*(a4 + 88) & 1) == 0)
    {
      v64 = *(a4 + 32);
      v71 = *(a4 + 48);
      *v78 = *(a4 + 64);
      *&v78[16] = *(a4 + 80);
      v50 = *a4;
      v57 = *(a4 + 16);
      v16 = a6[1];
      *a4 = *a6;
      *(a4 + 16) = v16;
      v18 = a6[3];
      v17 = a6[4];
      v19 = a6[2];
      *(a4 + 74) = *(a6 + 74);
      *(a4 + 48) = v18;
      *(a4 + 64) = v17;
      *(a4 + 32) = v19;
      a6[4] = *v78;
      *(a6 + 74) = *&v78[10];
      a6[2] = v64;
      a6[3] = v71;
      result.n128_u64[1] = v50.n128_u64[1];
      *a6 = v50;
      a6[1] = v57;
      result.n128_u64[0] = *(a4 + 8);
      v21 = *(a2 + 8);
      if (result.n128_f64[0] < v21 || result.n128_f64[0] <= v21 && *(a4 + 88) == 1 && (*(a2 + 88) & 1) == 0)
      {
        v65 = *(a2 + 32);
        v72 = *(a2 + 48);
        *v79 = *(a2 + 64);
        *&v79[16] = *(a2 + 80);
        v51 = *a2;
        v58 = *(a2 + 16);
        v22 = *(a4 + 16);
        *a2 = *a4;
        *(a2 + 16) = v22;
        v23 = *(a4 + 48);
        result = *(a4 + 64);
        v24 = *(a4 + 32);
        *(a2 + 74) = *(a4 + 74);
        *(a2 + 48) = v23;
        *(a2 + 64) = result;
        *(a2 + 32) = v24;
        *(a4 + 64) = *v79;
        *(a4 + 74) = *&v79[10];
        *(a4 + 32) = v65;
        *(a4 + 48) = v72;
        result.n128_u64[1] = v51.n128_u64[1];
        *a4 = v51;
        *(a4 + 16) = v58;
      }
    }
  }

LABEL_16:
  result.n128_u64[0] = a8->n128_u64[1];
  v34 = a6->n128_f64[1];
  if (result.n128_f64[0] < v34 || result.n128_f64[0] <= v34 && a8[5].n128_u8[8] == 1 && (a6[5].n128_u8[8] & 1) == 0)
  {
    v67 = a6[2];
    v74 = a6[3];
    *v81 = a6[4];
    *&v81[16] = a6[5];
    v53 = *a6;
    v60 = a6[1];
    v35 = a8[1];
    *a6 = *a8;
    a6[1] = v35;
    v37 = a8[3];
    v36 = a8[4];
    v38 = a8[2];
    *(a6 + 74) = *(a8 + 74);
    a6[3] = v37;
    a6[4] = v36;
    a6[2] = v38;
    a8[4] = *v81;
    *(a8 + 74) = *&v81[10];
    a8[2] = v67;
    a8[3] = v74;
    result.n128_u64[1] = v53.n128_u64[1];
    *a8 = v53;
    a8[1] = v60;
    result.n128_u64[0] = a6->n128_u64[1];
    v39 = *(a4 + 8);
    if (result.n128_f64[0] < v39 || result.n128_f64[0] <= v39 && a6[5].n128_u8[8] == 1 && (*(a4 + 88) & 1) == 0)
    {
      v68 = *(a4 + 32);
      v75 = *(a4 + 48);
      *v82 = *(a4 + 64);
      *&v82[16] = *(a4 + 80);
      v54 = *a4;
      v61 = *(a4 + 16);
      v40 = a6[1];
      *a4 = *a6;
      *(a4 + 16) = v40;
      v42 = a6[3];
      v41 = a6[4];
      v43 = a6[2];
      *(a4 + 74) = *(a6 + 74);
      *(a4 + 48) = v42;
      *(a4 + 64) = v41;
      *(a4 + 32) = v43;
      a6[4] = *v82;
      *(a6 + 74) = *&v82[10];
      a6[2] = v68;
      a6[3] = v75;
      result.n128_u64[1] = v54.n128_u64[1];
      *a6 = v54;
      a6[1] = v61;
      result.n128_u64[0] = *(a4 + 8);
      v44 = *(a2 + 8);
      if (result.n128_f64[0] < v44 || result.n128_f64[0] <= v44 && *(a4 + 88) == 1 && (*(a2 + 88) & 1) == 0)
      {
        v69 = *(a2 + 32);
        v76 = *(a2 + 48);
        *v83 = *(a2 + 64);
        *&v83[16] = *(a2 + 80);
        v55 = *a2;
        v62 = *(a2 + 16);
        v45 = *(a4 + 16);
        *a2 = *a4;
        *(a2 + 16) = v45;
        v47 = *(a4 + 48);
        v46 = *(a4 + 64);
        v48 = *(a4 + 32);
        *(a2 + 74) = *(a4 + 74);
        *(a2 + 48) = v47;
        *(a2 + 64) = v46;
        *(a2 + 32) = v48;
        *(a4 + 64) = *v83;
        *(a4 + 74) = *&v83[10];
        *(a4 + 32) = v69;
        *(a4 + 48) = v76;
        result = v55;
        *a4 = v55;
        *(a4 + 16) = v62;
      }
    }
  }

  return result;
}

void *std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = (result[1] - **result) / 96 + a2;
    if (v3 < 1)
    {
      v5 = 41 - v3;
      v6 = &v2[-(v5 / 0x2A)];
      *result = v6;
      v4 = *v6 + 96 * (41 - (v5 % 0x2A));
    }

    else
    {
      *result = &v2[v3 / 0x2A];
      v4 = v2[v3 / 0x2A] - 4032 * (v3 / 0x2A) + 96 * v3;
    }

    result[1] = v4;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>>(void *a1, __int128 *a2, uint64_t *a3, __int128 *a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v4 = a4;
  v5 = a3;
  v7 = *a3;
  v8 = a2 - *a1;
  v9 = 42 * (a3 - a1) - 0x5555555555555555 * ((a4 - *a3) >> 5) + 0x5555555555555555 * (v8 >> 5);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v18 = v8 / 96;
      if (v8 < -95)
      {
        v19 = a1[-((40 - v18) / 0x2AuLL)] + 96 * (41 - ((40 - v18) % 0x2AuLL));
      }

      else
      {
        v19 = a1[(v18 + 1) / 0x2AuLL] - 4032 * ((v18 + 1) / 0x2AuLL) + 96 * (v18 + 1);
      }

      if (v7 == a4)
      {
        v4 = *(a3 - 1) + 4032;
      }

      v12 = (v4 - 96);
      v32 = *(v19 + 8);
      v33 = *(a2 + 1);
      if (v32 >= v33 && (v32 > v33 || *(v19 + 88) != 1 || *(a2 + 88) == 1))
      {
        v40 = *(v4 - 88);
        if (v40 < v32 || v40 <= v32 && *(v4 - 8) == 1 && (*(v19 + 88) & 1) == 0)
        {
          v180 = *(v19 + 32);
          v193 = *(v19 + 48);
          *v206 = *(v19 + 64);
          *&v206[16] = *(v19 + 80);
          v154 = *v19;
          v167 = *(v19 + 16);
          v41 = *(v4 - 80);
          *v19 = *v12;
          *(v19 + 16) = v41;
          v43 = *(v4 - 48);
          v42 = *(v4 - 32);
          v44 = *(v4 - 64);
          *(v19 + 74) = *(v4 - 22);
          *(v19 + 48) = v43;
          *(v19 + 64) = v42;
          *(v19 + 32) = v44;
          *(v4 - 32) = *v206;
          *(v4 - 22) = *&v206[10];
          *(v4 - 64) = v180;
          *(v4 - 48) = v193;
          *v12 = v154;
          *(v4 - 80) = v167;
          v45 = *(v19 + 8);
          v46 = *(a2 + 1);
          if (v45 < v46 || v45 <= v46 && *(v19 + 88) == 1 && (*(a2 + 88) & 1) == 0)
          {
            v181 = a2[2];
            v194 = a2[3];
            *v207 = a2[4];
            *&v207[16] = a2[5];
            v155 = *a2;
            v168 = a2[1];
            v47 = *(v19 + 16);
            *a2 = *v19;
            a2[1] = v47;
            v49 = *(v19 + 48);
            v48 = *(v19 + 64);
            v50 = *(v19 + 32);
            *(a2 + 74) = *(v19 + 74);
            a2[3] = v49;
            a2[4] = v48;
            a2[2] = v50;
            *(v19 + 64) = *v207;
            *(v19 + 74) = *&v207[10];
            *(v19 + 32) = v181;
            *(v19 + 48) = v194;
            result = 1;
            *v19 = v155;
            *(v19 + 16) = v168;
            return result;
          }
        }

        return 1;
      }

      v34 = *(v4 - 88);
      if (v34 < v32 || v34 <= v32 && *(v4 - 8) == 1 && (*(v19 + 88) & 1) == 0)
      {
LABEL_27:
        v179 = a2[2];
        v192 = a2[3];
        *v205 = a2[4];
        *&v205[16] = a2[5];
        v153 = *a2;
        v166 = a2[1];
        v35 = v12[1];
        *a2 = *v12;
        a2[1] = v35;
        v37 = v12[3];
        v36 = v12[4];
        v38 = v12[2];
        *(a2 + 74) = *(v12 + 74);
        a2[3] = v37;
        a2[4] = v36;
        a2[2] = v38;
LABEL_28:
        v12[4] = *v205;
        *(v12 + 74) = *&v205[10];
        v12[2] = v179;
        v12[3] = v192;
        result = 1;
        *v12 = v153;
        v12[1] = v166;
        return result;
      }

      v186 = a2[2];
      v199 = a2[3];
      *v212 = a2[4];
      *&v212[16] = a2[5];
      v160 = *a2;
      v173 = a2[1];
      v83 = *(v19 + 16);
      *a2 = *v19;
      a2[1] = v83;
      v85 = *(v19 + 48);
      v84 = *(v19 + 64);
      v86 = *(v19 + 32);
      *(a2 + 74) = *(v19 + 74);
      a2[3] = v85;
      a2[4] = v84;
      a2[2] = v86;
      *(v19 + 64) = *v212;
      *(v19 + 74) = *&v212[10];
      *(v19 + 32) = v186;
      *(v19 + 48) = v199;
      *v19 = v160;
      *(v19 + 16) = v173;
      v87 = *(v4 - 88);
      v88 = *(v19 + 8);
      if (v87 < v88 || v87 <= v88 && *(v4 - 8) == 1 && (*(v19 + 88) & 1) == 0)
      {
        v179 = *(v19 + 32);
        v192 = *(v19 + 48);
        *v205 = *(v19 + 64);
        *&v205[16] = *(v19 + 80);
        v153 = *v19;
        v166 = *(v19 + 16);
        v89 = *(v4 - 80);
        *v19 = *v12;
        *(v19 + 16) = v89;
        v91 = *(v4 - 48);
        v90 = *(v4 - 32);
        v92 = *(v4 - 64);
        *(v19 + 74) = *(v4 - 22);
        *(v19 + 48) = v91;
        *(v19 + 64) = v90;
        *(v19 + 32) = v92;
        goto LABEL_28;
      }

      return 1;
    }

    if (v9 != 4)
    {
      if (v9 != 5)
      {
        goto LABEL_16;
      }

      v13 = v8 / 96;
      if (v8 < -95)
      {
        v15 = &a1[-((40 - v13) / 0x2AuLL)];
        v16 = *v15 + 96 * (41 - ((40 - v13) % 0x2AuLL));
        if (v8 < 0xFFFFFFFFFFFFFF41)
        {
          v51 = &a1[-((39 - v13) / 0x2AuLL)];
          v52 = *v51 + 96 * (41 - ((39 - v13) % 0x2AuLL));
          if (v8 < 0xFFFFFFFFFFFFFEE1)
          {
            v54 = &a1[-((38 - v13) / 0x2AuLL)];
            v55 = *v54 + 96 * (41 - ((38 - v13) % 0x2AuLL));
            goto LABEL_45;
          }

          v53 = 1;
LABEL_44:
          v54 = &a1[v53 / 0x2A];
          v55 = *v54 - 4032 * (v53 / 0x2A) + 96 * v53;
LABEL_45:
          if (v7 == a4)
          {
            v4 = *(v5 - 1) + 4032;
          }

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(a1, a2, v15, v16, v51, v52, v54, v55);
          v56 = *(v4 - 88);
          v57 = *(v55 + 8);
          if (v56 < v57 || v56 <= v57 && *(v4 - 8) == 1 && (*(v55 + 88) & 1) == 0)
          {
            v58 = (v4 - 96);
            v182 = *(v55 + 32);
            v195 = *(v55 + 48);
            *v208 = *(v55 + 64);
            *&v208[16] = *(v55 + 80);
            v156 = *v55;
            v169 = *(v55 + 16);
            v59 = *(v4 - 80);
            *v55 = *(v4 - 96);
            *(v55 + 16) = v59;
            v61 = *(v4 - 48);
            v60 = *(v4 - 32);
            v62 = *(v4 - 64);
            *(v55 + 74) = *(v4 - 22);
            *(v55 + 48) = v61;
            *(v55 + 64) = v60;
            *(v55 + 32) = v62;
            v58[4] = *v208;
            *(v58 + 74) = *&v208[10];
            v58[2] = v182;
            v58[3] = v195;
            *v58 = v156;
            v58[1] = v169;
            v63 = *(v55 + 8);
            v64 = *(v52 + 8);
            if (v63 < v64 || v63 <= v64 && *(v55 + 88) == 1 && (*(v52 + 88) & 1) == 0)
            {
              v157 = *v52;
              v170 = *(v52 + 16);
              *v209 = *(v52 + 64);
              *&v209[16] = *(v52 + 80);
              v183 = *(v52 + 32);
              v196 = *(v52 + 48);
              v66 = *(v55 + 48);
              v65 = *(v55 + 64);
              v67 = *(v55 + 32);
              *(v52 + 74) = *(v55 + 74);
              *(v52 + 48) = v66;
              *(v52 + 64) = v65;
              *(v52 + 32) = v67;
              v68 = *(v55 + 16);
              *v52 = *v55;
              *(v52 + 16) = v68;
              *(v55 + 32) = v183;
              *(v55 + 48) = v196;
              *(v55 + 64) = *v209;
              *(v55 + 74) = *&v209[10];
              *v55 = v157;
              *(v55 + 16) = v170;
              v69 = *(v52 + 8);
              v70 = *(v16 + 8);
              if (v69 < v70 || v69 <= v70 && *(v52 + 88) == 1 && (*(v16 + 88) & 1) == 0)
              {
                v158 = *v16;
                v171 = *(v16 + 16);
                *v210 = *(v16 + 64);
                *&v210[16] = *(v16 + 80);
                v184 = *(v16 + 32);
                v197 = *(v16 + 48);
                v72 = *(v52 + 48);
                v71 = *(v52 + 64);
                v73 = *(v52 + 32);
                *(v16 + 74) = *(v52 + 74);
                *(v16 + 48) = v72;
                *(v16 + 64) = v71;
                *(v16 + 32) = v73;
                v74 = *(v52 + 16);
                *v16 = *v52;
                *(v16 + 16) = v74;
                *v52 = v158;
                *(v52 + 16) = v171;
                *(v52 + 74) = *&v210[10];
                *(v52 + 48) = v197;
                *(v52 + 64) = *v210;
                *(v52 + 32) = v184;
                v75 = *(v16 + 8);
                v76 = *(a2 + 1);
                if (v75 < v76 || v75 <= v76 && *(v16 + 88) == 1 && (*(a2 + 88) & 1) == 0)
                {
                  v185 = a2[2];
                  v198 = a2[3];
                  *v211 = a2[4];
                  *&v211[16] = a2[5];
                  v159 = *a2;
                  v172 = a2[1];
                  v77 = *(v16 + 16);
                  *a2 = *v16;
                  a2[1] = v77;
                  v79 = *(v16 + 48);
                  v78 = *(v16 + 64);
                  v80 = *(v16 + 32);
                  *(a2 + 74) = *(v16 + 74);
                  a2[3] = v79;
                  a2[4] = v78;
                  a2[2] = v80;
                  *v16 = v159;
                  *(v16 + 16) = v172;
                  *(v16 + 74) = *&v211[10];
                  *(v16 + 48) = v198;
                  *(v16 + 64) = *v211;
                  *(v16 + 32) = v185;
                }
              }
            }
          }

          return 1;
        }

        v17 = 1;
      }

      else
      {
        v14 = (v13 + 1) / 0x2AuLL;
        v15 = &a1[v14];
        v16 = *v15 - 4032 * v14 + 96 * (v13 + 1);
        v17 = v13 + 2;
      }

      v51 = &a1[v17 / 0x2A];
      v52 = *v51 - 4032 * (v17 / 0x2A) + 96 * v17;
      v53 = v13 + 3;
      goto LABEL_44;
    }

    v27 = v8 / 96;
    if (v8 < -95)
    {
      v29 = &a1[-((40 - v27) / 0x2AuLL)];
      v30 = *v29 + 96 * (41 - ((40 - v27) % 0x2AuLL));
      if (v8 < 0xFFFFFFFFFFFFFF41)
      {
        v150 = 39 - v27;
        v81 = &a1[-(v150 / 0x2A)];
        v82 = (*v81 + 96 * (41 - (v150 % 0x2A)));
        goto LABEL_114;
      }

      v31 = 1;
    }

    else
    {
      v28 = (v27 + 1) / 0x2AuLL;
      v29 = &a1[v28];
      v30 = *v29 - 4032 * v28 + 96 * (v27 + 1);
      v31 = v27 + 2;
    }

    v81 = &a1[v31 / 0x2A];
    v82 = (*v81 - 4032 * (v31 / 0x2A) + 96 * v31);
LABEL_114:
    if (v7 == v4)
    {
      v151 = *--v5;
      v4 = v151 + 4032;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder _findFirstConvergenceBetweenRoute:range:andRoute:range:outRouteCoordinate:outRouteCoordinate:]::$_5 &,std::__deque_iterator<_MNRouteConvergencePoint,_MNRouteConvergencePoint*,_MNRouteConvergencePoint&,_MNRouteConvergencePoint**,long,42l>,0>(a1, a2, v29, v30, v81, v82, v5, (v4 - 96));
    return 1;
  }

  if (v9 < 2)
  {
    return 1;
  }

  if (v9 == 2)
  {
    if (v7 == a4)
    {
      v4 = *(a3 - 1) + 4032;
    }

    v10 = *(v4 - 88);
    v11 = *(a2 + 1);
    if (v10 >= v11 && (v10 > v11 || *(v4 - 8) != 1 || (*(a2 + 88) & 1) != 0))
    {
      return 1;
    }

    v12 = (v4 - 96);
    goto LABEL_27;
  }

LABEL_16:
  v20 = v8 / 96;
  if (v8 <= -192)
  {
    v22 = &a1[-((39 - v20) / 0x2AuLL)];
    v23 = *v22 + 96 * (41 - ((39 - v20) % 0x2AuLL));
    v26 = 40 - v20;
    goto LABEL_36;
  }

  v21 = (v20 + 2) / 0x2AuLL;
  v22 = &a1[v21];
  v23 = *v22 - 4032 * v21 + 96 * (v20 + 2);
  v24 = __CFADD__(v20, 1);
  v25 = v20 + 1;
  if (v24)
  {
    v26 = 41;
LABEL_36:
    v93 = a1[-(v26 / 0x2A)] + 96 * (41 - (v26 % 0x2A));
    goto LABEL_68;
  }

  v93 = a1[v25 / 0x2A] - 4032 * (v25 / 0x2A) + 96 * v25;
LABEL_68:
  v94 = *(v93 + 8);
  v95 = *(a2 + 1);
  if (v94 < v95 || v94 <= v95 && *(v93 + 88) == 1 && *(a2 + 88) != 1)
  {
    v96 = *(v23 + 8);
    if (v96 < v94 || v96 <= v94 && *(v23 + 88) == 1 && (*(v93 + 88) & 1) == 0)
    {
      v187 = a2[2];
      v200 = a2[3];
      *v213 = a2[4];
      *&v213[16] = a2[5];
      v161 = *a2;
      v174 = a2[1];
      v97 = *(v23 + 16);
      *a2 = *v23;
      a2[1] = v97;
      v99 = *(v23 + 48);
      v98 = *(v23 + 64);
      v100 = *(v23 + 32);
      *(a2 + 74) = *(v23 + 74);
      a2[3] = v99;
      a2[4] = v98;
      a2[2] = v100;
    }

    else
    {
      v190 = a2[2];
      v203 = a2[3];
      *v216 = a2[4];
      *&v216[16] = a2[5];
      v164 = *a2;
      v177 = a2[1];
      v112 = *(v93 + 16);
      *a2 = *v93;
      a2[1] = v112;
      v114 = *(v93 + 48);
      v113 = *(v93 + 64);
      v115 = *(v93 + 32);
      *(a2 + 74) = *(v93 + 74);
      a2[3] = v114;
      a2[4] = v113;
      a2[2] = v115;
      *(v93 + 64) = *v216;
      *(v93 + 74) = *&v216[10];
      *(v93 + 32) = v190;
      *(v93 + 48) = v203;
      *v93 = v164;
      *(v93 + 16) = v177;
      v116 = *(v23 + 8);
      v117 = *(v93 + 8);
      if (v116 >= v117 && (v116 > v117 || *(v23 + 88) != 1 || (*(v93 + 88) & 1) != 0))
      {
        goto LABEL_83;
      }

      v187 = *(v93 + 32);
      v200 = *(v93 + 48);
      *v213 = *(v93 + 64);
      *&v213[16] = *(v93 + 80);
      v161 = *v93;
      v174 = *(v93 + 16);
      v118 = *(v23 + 16);
      *v93 = *v23;
      *(v93 + 16) = v118;
      v120 = *(v23 + 48);
      v119 = *(v23 + 64);
      v121 = *(v23 + 32);
      *(v93 + 74) = *(v23 + 74);
      *(v93 + 48) = v120;
      *(v93 + 64) = v119;
      *(v93 + 32) = v121;
    }

    *v23 = v161;
    *(v23 + 16) = v174;
    *(v23 + 74) = *&v213[10];
    *(v23 + 48) = v200;
    *(v23 + 64) = *v213;
    *(v23 + 32) = v187;
  }

  else
  {
    v101 = *(v23 + 8);
    if (v101 < v94 || v101 <= v94 && *(v23 + 88) == 1 && (*(v93 + 88) & 1) == 0)
    {
      v188 = *(v93 + 32);
      v201 = *(v93 + 48);
      *v214 = *(v93 + 64);
      *&v214[16] = *(v93 + 80);
      v162 = *v93;
      v175 = *(v93 + 16);
      v102 = *(v23 + 16);
      *v93 = *v23;
      *(v93 + 16) = v102;
      v104 = *(v23 + 48);
      v103 = *(v23 + 64);
      v105 = *(v23 + 32);
      *(v93 + 74) = *(v23 + 74);
      *(v93 + 48) = v104;
      *(v93 + 64) = v103;
      *(v93 + 32) = v105;
      *v23 = v162;
      *(v23 + 16) = v175;
      *(v23 + 74) = *&v214[10];
      *(v23 + 48) = v201;
      *(v23 + 64) = *v214;
      *(v23 + 32) = v188;
      v106 = *(v93 + 8);
      v107 = *(a2 + 1);
      if (v106 < v107 || v106 <= v107 && *(v93 + 88) == 1 && (*(a2 + 88) & 1) == 0)
      {
        v189 = a2[2];
        v202 = a2[3];
        *v215 = a2[4];
        *&v215[16] = a2[5];
        v163 = *a2;
        v176 = a2[1];
        v108 = *(v93 + 16);
        *a2 = *v93;
        a2[1] = v108;
        v110 = *(v93 + 48);
        v109 = *(v93 + 64);
        v111 = *(v93 + 32);
        *(a2 + 74) = *(v93 + 74);
        a2[3] = v110;
        a2[4] = v109;
        a2[2] = v111;
        *(v93 + 64) = *v215;
        *(v93 + 74) = *&v215[10];
        *(v93 + 32) = v189;
        *(v93 + 48) = v202;
        *v93 = v163;
        *(v93 + 16) = v176;
      }
    }
  }

LABEL_83:
  v122 = v23 - *v22;
  v123 = v122 / 96;
  if (v122 < -95)
  {
    v128 = 40 - v123;
    v125 = &v22[-(v128 / 0x2A)];
    v126 = *v125;
    v127 = *v125 + 96 * (41 - (v128 % 0x2A));
  }

  else
  {
    v124 = v123 + 1;
    v125 = &v22[v124 / 0x2A];
    v126 = *v125;
    v127 = *v125 - 4032 * (v124 / 0x2A) + 96 * v124;
  }

  if (v127 == a4)
  {
    return 1;
  }

  v129 = 0;
  result = 1;
  while (1)
  {
    v130 = v127;
    v131 = v125;
    v132 = *(v127 + 8);
    v133 = *(v23 + 8);
    if (v132 >= v133)
    {
      if (v132 > v133)
      {
        goto LABEL_107;
      }

      v134 = *(v127 + 88);
      if (v134 != 1 || (*(v23 + 88) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      LOBYTE(v134) = *(v127 + 88);
    }

    v135 = *v127;
    v217 = *(v127 + 80);
    v191 = *(v127 + 48);
    v204 = *(v127 + 64);
    v178 = *(v127 + 32);
    v165 = *(v127 + 16);
    v136 = *(v127 + 89);
    v137 = *(v23 + 74);
    v139 = *(v23 + 48);
    v138 = *(v23 + 64);
    *(v127 + 32) = *(v23 + 32);
    *(v127 + 48) = v139;
    *(v127 + 64) = v138;
    *(v127 + 74) = v137;
    v140 = *(v23 + 16);
    *v127 = *v23;
    *(v127 + 16) = v140;
    if (v23 != a2)
    {
      while (1)
      {
        if (v23 == *v22)
        {
          v142 = *--v22;
          v141 = v142 + 4032;
        }

        else
        {
          v141 = v23;
        }

        v143 = *(v141 - 88);
        if (v132 >= v143 && (v132 > v143 || (v134 & 1) == 0 || (*(v141 - 8) & 1) != 0))
        {
          break;
        }

        v145 = *(v141 - 96);
        v146 = *(v141 - 80);
        v144 = v141 - 96;
        *v23 = v145;
        *(v23 + 16) = v146;
        v147 = *(v144 + 32);
        v148 = *(v144 + 48);
        v149 = *(v144 + 64);
        *(v23 + 74) = *(v144 + 74);
        *(v23 + 48) = v148;
        *(v23 + 64) = v149;
        *(v23 + 32) = v147;
        v23 = v144;
        if (v144 == a2)
        {
          goto LABEL_105;
        }
      }
    }

    v144 = v23;
LABEL_105:
    *v144 = v135;
    *(v144 + 8) = v132;
    *(v144 + 48) = v191;
    *(v144 + 64) = v204;
    *(v144 + 80) = v217;
    *(v144 + 16) = v165;
    *(v144 + 32) = v178;
    *(v144 + 88) = v134;
    ++v129;
    *(v144 + 89) = v136;
    if (v129 == 8)
    {
      break;
    }

    v126 = *v131;
LABEL_107:
    v127 = v130 + 96;
    v125 = v131;
    if (v130 + 96 - v126 == 4032)
    {
      v125 = v131 + 1;
      v126 = v131[1];
      v127 = v126;
    }

    v22 = v131;
    v23 = v130;
    if (v127 == a4)
    {
      return result;
    }
  }

  v152 = v130 + 96;
  if (v130 + 96 - *v131 == 4032)
  {
    v152 = v131[1];
  }

  return v152 == a4;
}

void sub_1D3214B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char *a55)
{
  std::__tree<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,std::__map_value_compare<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>,[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKeyCompare,false>,std::allocator<std::__value_type<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionKey,std::vector<[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSection>>>>::destroy(a46);
  a55 = &a49;
  std::vector<std::map<geo::PolylineCoordinate,std::vector<-[MNRouteDivergenceFinder findOverlappingSectionsForRoutes:]::RouteSectionEndpoint>>>::__destroy_vector::operator()[abi:ne200100](&a55);

  _Unwind_Resume(a1);
}

void *std::set<unsigned long>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(a1, v3, v5[4], v5 + 4);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<unsigned long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned long>::destroy(*a1);
    std::__tree<unsigned long>::destroy(a1[1]);

    operator delete(a1);
  }
}

void *std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(void *result, void *a2, unint64_t a3, void *a4)
{
  v4 = result + 1;
  if (result + 1 == a2 || (v5 = a2[4], v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (v8[4] < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (*v4)
    {
      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = v14[4];
          if (v16 <= a3)
          {
            break;
          }

          v14 = *v15;
          v4 = v15;
          if (!*v15)
          {
            goto LABEL_38;
          }
        }

        if (v16 >= a3)
        {
          break;
        }

        v4 = v15 + 1;
        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v9 = v4;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && v11[4] <= a3)
  {
    v18 = *v4;
    if (*v4)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v20 <= a3)
          {
            break;
          }

          v18 = *v19;
          v4 = v19;
          if (!*v19)
          {
            goto LABEL_38;
          }
        }

        if (v20 >= a3)
        {
          goto LABEL_39;
        }

        v4 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v9)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t *std::__tree<unsigned long>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void sub_1D32163BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char *a45)
{
  a45 = &a42;
  std::vector<std::vector<-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate>>::__destroy_vector::operator()[abi:ne200100](&a45);

  _Unwind_Resume(a1);
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 a5)
{
  v5 = a2->n128_u32[0];
  if (a2->n128_u32[0] < a1->n128_u32[0] || v5 == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[1], a5.n128_f32[0] < a1->n128_f32[1]))
  {
    if (a3->n128_u32[0] < v5 || a3->n128_u32[0] == v5 && a3->n128_f32[1] < a2->n128_f32[1])
    {
      a5 = *a1;
      v6 = a1[1].n128_u64[0];
      v7 = a3[1].n128_u8[0];
      *a1 = *a3;
      a1[1].n128_u8[0] = v7;
    }

    else
    {
      a5 = *a1;
      v12 = a1[1].n128_u64[0];
      v13 = a2[1].n128_u8[0];
      *a1 = *a2;
      a1[1].n128_u8[0] = v13;
      a2[1].n128_u8[0] = v12;
      *a2 = a5;
      if (a3->n128_u32[0] >= a2->n128_u32[0])
      {
        if (a3->n128_u32[0] != a2->n128_u32[0])
        {
          goto LABEL_14;
        }

        a5.n128_u32[0] = a3->n128_u32[1];
        if (a5.n128_f32[0] >= a2->n128_f32[1])
        {
          goto LABEL_14;
        }
      }

      a5 = *a2;
      v6 = a2[1].n128_u64[0];
      v14 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v14;
    }

    a3[1].n128_u8[0] = v6;
    *a3 = a5;
  }

  else if (a3->n128_u32[0] < v5 || a3->n128_u32[0] == v5 && (a5.n128_u32[0] = a3->n128_u32[1], a5.n128_f32[0] < a2->n128_f32[1]))
  {
    a5 = *a2;
    v8 = a2[1].n128_u64[0];
    v9 = a3[1].n128_u8[0];
    *a2 = *a3;
    a2[1].n128_u8[0] = v9;
    a3[1].n128_u8[0] = v8;
    *a3 = a5;
    if (a2->n128_u32[0] < a1->n128_u32[0] || a2->n128_u32[0] == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[1], a5.n128_f32[0] < a1->n128_f32[1]))
    {
      a5 = *a1;
      v10 = a1[1].n128_u64[0];
      v11 = a2[1].n128_u8[0];
      *a1 = *a2;
      a1[1].n128_u8[0] = v11;
      a2[1].n128_u8[0] = v10;
      *a2 = a5;
    }
  }

LABEL_14:
  if (a4->n128_u32[0] < a3->n128_u32[0] || a4->n128_u32[0] == a3->n128_u32[0] && (a5.n128_u32[0] = a4->n128_u32[1], a5.n128_f32[0] < a3->n128_f32[1]))
  {
    a5 = *a3;
    v15 = a3[1].n128_u64[0];
    v16 = a4[1].n128_u8[0];
    *a3 = *a4;
    a3[1].n128_u8[0] = v16;
    a4[1].n128_u8[0] = v15;
    *a4 = a5;
    if (a3->n128_u32[0] < a2->n128_u32[0] || a3->n128_u32[0] == a2->n128_u32[0] && (a5.n128_u32[0] = a3->n128_u32[1], a5.n128_f32[0] < a2->n128_f32[1]))
    {
      a5 = *a2;
      v17 = a2[1].n128_u64[0];
      v18 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v18;
      a3[1].n128_u8[0] = v17;
      *a3 = a5;
      if (a2->n128_u32[0] < a1->n128_u32[0] || a2->n128_u32[0] == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[1], a5.n128_f32[0] < a1->n128_f32[1]))
      {
        a5 = *a1;
        v19 = a1[1].n128_u64[0];
        v20 = a2[1].n128_u8[0];
        *a1 = *a2;
        a1[1].n128_u8[0] = v20;
        a2[1].n128_u8[0] = v19;
        *a2 = a5;
      }
    }
  }

  return a5.n128_f32[0];
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = (a2 - 24);
        v7 = *(a2 - 24);
        if (v7 < *a1 || v7 == *a1 && *(a2 - 20) < *(a1 + 4))
        {
          v8 = *a1;
          v9 = *(a1 + 16);
          v10 = *(a2 - 8);
          *a1 = *v6;
          *(a1 + 16) = v10;
          *(a2 - 8) = v9;
          *v6 = v8;
        }

        return 1;
      }

      goto LABEL_17;
    }

    return 1;
  }

  switch(v5)
  {
    case 3:
      v28 = (a1 + 24);
      v29 = *(a1 + 24);
      v30 = (a2 - 24);
      if (v29 >= *a1 && (v29 != *a1 || *(a1 + 28) >= *(a1 + 4)))
      {
        if (v30->n128_u32[0] < v29 || v30->n128_u32[0] == v29 && *(a2 - 20) < *(a1 + 28))
        {
          v41 = *v28;
          v42 = *(a1 + 40);
          v43 = *(a2 - 8);
          *v28 = *v30;
          *(a1 + 40) = v43;
          *(a2 - 8) = v42;
          *v30 = v41;
          v44 = *(a1 + 24);
          if (v44 < *a1 || v44 == *a1 && *(a1 + 28) < *(a1 + 4))
          {
            v45 = *(a1 + 16);
            v46 = *a1;
            *a1 = *v28;
            *(a1 + 16) = *(a1 + 40);
            *v28 = v46;
            *(a1 + 40) = v45;
          }
        }

        return 1;
      }

      if (v30->n128_u32[0] < v29 || v30->n128_u32[0] == v29 && *(a2 - 20) < *(a1 + 28))
      {
        v31 = *a1;
        v32 = *(a1 + 16);
        v33 = *(a2 - 8);
        *a1 = *v30;
        *(a1 + 16) = v33;
        *(a2 - 8) = v32;
      }

      else
      {
        v51 = *(a1 + 16);
        v52 = *a1;
        *a1 = *v28;
        *(a1 + 16) = *(a1 + 40);
        *v28 = v52;
        *(a1 + 40) = v51;
        v53 = *(a1 + 24);
        if (v30->n128_u32[0] >= v53 && (v30->n128_u32[0] != v53 || *(a2 - 20) >= *(a1 + 28)))
        {
          return 1;
        }

        v31 = *v28;
        v54 = *(a1 + 40);
        v55 = *(a2 - 8);
        *v28 = *v30;
        *(a1 + 40) = v55;
        *(a2 - 8) = v54;
      }

      *v30 = v31;
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
      return 1;
    case 5:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::$_4 &,-[MNRouteDivergenceFinder findAllOverlapRangesBetweenRoutes:]::OverlapCoordinate *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
      v11 = (a2 - 24);
      v12 = *(a2 - 24);
      v13 = *(a1 + 72);
      if (v12 < v13 || v12 == v13 && *(a2 - 20) < *(a1 + 76))
      {
        v14 = *(a1 + 72);
        v15 = *(a1 + 88);
        v16 = *(a2 - 8);
        *(a1 + 72) = *v11;
        *(a1 + 88) = v16;
        *(a2 - 8) = v15;
        *v11 = v14;
        v17 = *(a1 + 72);
        v18 = *(a1 + 48);
        if (v17 < v18 || v17 == v18 && *(a1 + 76) < *(a1 + 52))
        {
          v19 = *(a1 + 64);
          v20 = *(a1 + 48);
          *(a1 + 48) = *(a1 + 72);
          *(a1 + 64) = *(a1 + 88);
          *(a1 + 72) = v20;
          *(a1 + 88) = v19;
          v21 = *(a1 + 48);
          v22 = *(a1 + 24);
          if (v21 < v22 || v21 == v22 && *(a1 + 52) < *(a1 + 28))
          {
            v23 = *(a1 + 40);
            v24 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v24;
            *(a1 + 64) = v23;
            v25 = *(a1 + 24);
            if (v25 < *a1 || v25 == *a1 && *(a1 + 28) < *(a1 + 4))
            {
              v26 = *(a1 + 16);
              v27 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v27;
              *(a1 + 40) = v26;
            }
          }
        }
      }

      return 1;
  }

LABEL_17:
  v34 = a1 + 48;
  v35 = *a1;
  v36 = (a1 + 24);
  v37 = *(a1 + 24);
  if (v37 < *a1 || v37 == v35 && *(a1 + 28) < *(a1 + 4))
  {
    v38 = *v34;
    if (*v34 < v37 || v38 == v37 && *(a1 + 52) < *(a1 + 28))
    {
      v39 = *(a1 + 16);
      v40 = *a1;
      *a1 = *v34;
      *(a1 + 16) = *(a1 + 64);
      *v34 = v40;
      *(a1 + 64) = v39;
    }

    else
    {
      v56 = *(a1 + 16);
      v57 = *a1;
      *a1 = *v36;
      *(a1 + 16) = *(a1 + 40);
      *v36 = v57;
      *(a1 + 40) = v56;
      v58 = *(a1 + 24);
      if (v38 < v58 || v38 == v58 && *(a1 + 52) < *(a1 + 28))
      {
        v59 = *(a1 + 40);
        v60 = *v36;
        *v36 = *v34;
        *(a1 + 40) = *(a1 + 64);
        *v34 = v60;
        *(a1 + 64) = v59;
      }
    }
  }

  else if (*v34 < v37 || *v34 == v37 && *(a1 + 52) < *(a1 + 28))
  {
    v47 = *(a1 + 40);
    v48 = *v36;
    *v36 = *v34;
    *(a1 + 40) = *(a1 + 64);
    *v34 = v48;
    *(a1 + 64) = v47;
    if (v36->n128_u32[0] < v35 || v36->n128_u32[0] == v35 && *(a1 + 28) < *(a1 + 4))
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *v36;
      *(a1 + 16) = *(a1 + 40);
      *v36 = v50;
      *(a1 + 40) = v49;
    }
  }

  v61 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v62 = 0;
  v63 = 0;
  while (1)
  {
    v64 = *v61;
    if (*v61 < *v34)
    {
      break;
    }

    if (v64 == *v34)
    {
      v65 = *(v61 + 4);
      if (v65 < *(v34 + 4))
      {
        goto LABEL_76;
      }
    }

LABEL_87:
    v34 = v61;
    v62 += 24;
    v61 += 24;
    if (v61 == a2)
    {
      return 1;
    }
  }

  v65 = *(v61 + 4);
LABEL_76:
  v69 = *(v61 + 8);
  *(v61 + 16) = *(v34 + 16);
  *v61 = *v34;
  v66 = v62;
  do
  {
    v67 = *(a1 + v66 + 24);
    if (v64 >= v67)
    {
      if (v64 != v67)
      {
        v34 = a1 + v66 + 48;
        goto LABEL_86;
      }

      if (v65 >= *(a1 + v66 + 28))
      {
        goto LABEL_86;
      }
    }

    v34 -= 24;
    *(a1 + v66 + 48) = *(a1 + v66 + 24);
    *(a1 + v66 + 64) = *(a1 + v66 + 40);
    v66 -= 24;
  }

  while (v66 != -48);
  v34 = a1;
LABEL_86:
  *v34 = v64;
  *(v34 + 4) = v65;
  *(v34 + 8) = v69;
  *(v34 + 16) = BYTE8(v69);
  if (++v63 != 8)
  {
    goto LABEL_87;
  }

  return v61 + 24 == a2;
}

void sub_1D3218CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(a22);

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::__emplace_unique_key_args<geo::PolylineCoordinate,geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>(uint64_t **a1, unsigned int a2, void *a3, __int128 *a4, float a5)
{
  v5 = a1[1];
  if (!v5)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 8);
      if (v7 <= a2 && (v7 != a2 || *(v6 + 9) <= a5))
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }
    }

    if (v7 >= a2 && *(v6 + 9) >= a5)
    {
      return v6;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_10;
    }
  }
}

void std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(*a1);
    std::__tree<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::__map_value_compare<geo::PolylineCoordinate,std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>,std::less<geo::PolylineCoordinate>,true>,std::allocator<std::__value_type<geo::PolylineCoordinate,std::pair<MNRouteDivergenceResult * {__strong},MNRouteDivergenceResult * {__strong}>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_1D3219EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10786(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D321A3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void MNDisplayETAAndRemainingMinutes(void *a1, void *a2, double a3)
{
  v6 = [MEMORY[0x1E695DF00] date];
  if (v6)
  {
    v13 = v6;
    v7 = [v6 dateByAddingTimeInterval:{fmax(a3, 60.0)}];
    v8 = v7;
    if (a1)
    {
      v9 = v7;
      *a1 = v8;
    }

    if (a2)
    {
      [v13 timeIntervalSinceReferenceDate];
      v11 = floor(v10 * 0.0166666667);
      [v8 timeIntervalSinceReferenceDate];
      *a2 = (floor(v12 * 0.0166666667) - v11);
    }

    v6 = v13;
  }

  else
  {
    if (a1)
    {
      *a1 = 0;
    }

    if (a2)
    {
      *a2 = 0;
    }
  }
}

void sub_1D321E3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11255(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3220484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11836(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GetAudioLogForMNAudioSystemEventQueueCategory()
{
  if (GetAudioLogForMNAudioSystemEventQueueCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioSystemEventQueueCategory_onceToken, &__block_literal_global_11840);
  }

  v1 = GetAudioLogForMNAudioSystemEventQueueCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioSystemEventQueueCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioSystemEventQueue");
  v1 = GetAudioLogForMNAudioSystemEventQueueCategory_log;
  GetAudioLogForMNAudioSystemEventQueueCategory_log = v0;
}

BOOL _navigation_GEOLatLngIsNilOrZero(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 lat];
    if (v3 == 0.0)
    {
      [v2 lng];
      v5 = v4 == 0.0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id _regionsFromLatLngs(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    GEOConfigGetDouble();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___regionsFromLatLngs_block_invoke;
    aBlock[3] = &__block_descriptor_40_e33___GEOMapRegion_16__0__GEOLatLng_8l;
    aBlock[4] = v2;
    v3 = _Block_copy(aBlock);
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = v3[2](v3, *(*(&v12 + 1) + 8 * i));
          [v4 addObject:{v10, v12}];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

id ___regionsFromLatLngs_block_invoke(uint64_t a1, void *a2)
{
  [a2 coordinate];
  GEOMapRectMakeWithRadialDistance();
  v6 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v2, v3, v4, v5}];

  return v6;
}

void sub_1D322986C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12729(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D322A9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D322AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D322B71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D322C9A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1D3230924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GetAudioLogForMNAudioSessionResourceAccessCategory()
{
  if (GetAudioLogForMNAudioSessionResourceAccessCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioSessionResourceAccessCategory_onceToken, &__block_literal_global_14030);
  }

  v1 = GetAudioLogForMNAudioSessionResourceAccessCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioSessionResourceAccessCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioSessionResourceAccess");
  v1 = GetAudioLogForMNAudioSessionResourceAccessCategory_log;
  GetAudioLogForMNAudioSessionResourceAccessCategory_log = v0;
}

id GetAudioLogForMNSpeechResourceControllerCategory()
{
  if (GetAudioLogForMNSpeechResourceControllerCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNSpeechResourceControllerCategory_onceToken, &__block_literal_global_14143);
  }

  v1 = GetAudioLogForMNSpeechResourceControllerCategory_log;

  return v1;
}

void __GetAudioLogForMNSpeechResourceControllerCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNSpeechResourceController");
  v1 = GetAudioLogForMNSpeechResourceControllerCategory_log;
  GetAudioLogForMNSpeechResourceControllerCategory_log = v0;
}

void sub_1D323331C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D323406C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, id a30)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak((v31 + 40));
  _Block_object_dispose((v32 - 160), 8);
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a30);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14191(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3234874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

id MNMap(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i), v9);
        if (v12)
        {
          [v5 addObject:{v12, v15}];
        }

        ++v9;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

void sub_1D323A0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D323A704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL MNCurrentNavigationStateAllowsDoom()
{
  v0 = +[MNNavigationStateManager sharedManager];
  v1 = [v0 currentStateType];

  return (v1 - 7) < 0xFFFFFFFFFFFFFFFCLL;
}

uint64_t __Block_byref_object_copy__15833(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D323F92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D32441D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ConditionInducerLibrary()
{
  v12 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = ConditionInducerLibraryCore_frameworkLibrary;
  v8 = ConditionInducerLibraryCore_frameworkLibrary;
  if (!ConditionInducerLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __ConditionInducerLibraryCore_block_invoke;
    v2[4] = &unk_1E842FE60;
    v3 = &v5;
    v4 = v2;
    v9 = xmmword_1E842FED0;
    v10 = *off_1E842FEE0;
    v11 = 0;
    v6[3] = _sl_dlopen();
    ConditionInducerLibraryCore_frameworkLibrary = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  v1 = v2[0];
  if (!v0)
  {
    v1 = abort_report_np("%s", v2[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_1D3244334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCOConditionSessionClass_block_invoke(uint64_t a1)
{
  ConditionInducerLibrary();
  result = objc_getClass("COConditionSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCOConditionSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "COConditionSession");
    return __ConditionInducerLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __ConditionInducerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ConditionInducerLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ctConnection()
{
  result = ctConnection_connection;
  if (!ctConnection_connection)
  {
    result = _CTServerConnectionCreateOnTargetQueue();
    ctConnection_connection = result;
  }

  return result;
}

id errorFromCTError(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 0:
      v5 = 0;
      goto LABEL_10;
    case 2:
      v2 = *MEMORY[0x1E696A5A0];
      v3 = mach_error_string(SHIDWORD(a1));
      break;
    case 1:
      v2 = *MEMORY[0x1E696A798];
      v3 = strerror(SHIDWORD(a1));
      break;
    default:
      v4 = "Unknown";
      v2 = @"Unknown";
      goto LABEL_9;
  }

  v4 = v3;
LABEL_9:
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v7 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = [v7 errorWithDomain:v2 code:a1 >> 32 userInfo:v8];

LABEL_10:

  return v5;
}

void sub_1D324491C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CoreWiFiLibrary()
{
  v12 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = CoreWiFiLibraryCore_frameworkLibrary;
  v8 = CoreWiFiLibraryCore_frameworkLibrary;
  if (!CoreWiFiLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreWiFiLibraryCore_block_invoke;
    v2[4] = &unk_1E842FE60;
    v3 = &v5;
    v4 = v2;
    v9 = xmmword_1E842FE30;
    v10 = *off_1E842FE40;
    v11 = 0;
    v6[3] = _sl_dlopen();
    CoreWiFiLibraryCore_frameworkLibrary = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  v1 = v2[0];
  if (!v0)
  {
    v1 = abort_report_np("%s", v2[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_1D3244A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCWFInterfaceClass_block_invoke(uint64_t a1)
{
  CoreWiFiLibrary();
  result = objc_getClass("CWFInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCWFInterfaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CWFInterface");
    return __CoreWiFiLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __CoreWiFiLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreWiFiLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D3244EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ATKLoggerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ATKLoggerLibraryCore_frameworkLibrary = result;
  return result;
}

void CoreAutomationDeviceLibrary()
{
  v12 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = CoreAutomationDeviceLibraryCore_frameworkLibrary;
  v8 = CoreAutomationDeviceLibraryCore_frameworkLibrary;
  if (!CoreAutomationDeviceLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreAutomationDeviceLibraryCore_block_invoke;
    v2[4] = &unk_1E842FE60;
    v3 = &v5;
    v4 = v2;
    v9 = xmmword_1E842FEA8;
    v10 = *off_1E842FEB8;
    v11 = 0;
    v6[3] = _sl_dlopen();
    CoreAutomationDeviceLibraryCore_frameworkLibrary = *(v3[1] + 24);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  v1 = v2[0];
  if (!v0)
  {
    v1 = abort_report_np("%s", v2[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v1);
  }
}

void sub_1D3245084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCAMDEmbeddedDeviceServiceClass_block_invoke(uint64_t a1)
{
  CoreAutomationDeviceLibrary();
  result = objc_getClass("CAMDEmbeddedDeviceService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCAMDEmbeddedDeviceServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CAMDEmbeddedDeviceService");
    return __CoreAutomationDeviceLibraryCore_block_invoke(v3);
  }

  return result;
}

uint64_t __CoreAutomationDeviceLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CoreAutomationDeviceLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D3247EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D324813C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3248780(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1D324FF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3250070(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D32501BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D325186C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1D32521C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *MNTrafficIncidentAlertTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"None";
  }

  else
  {
    return off_1E84304E8[a1 - 1];
  }
}

void sub_1D325D59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3260814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20329(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id GetAudioLogForMNAudioPathwayResourceAccessCategory()
{
  if (GetAudioLogForMNAudioPathwayResourceAccessCategory_onceToken != -1)
  {
    dispatch_once(&GetAudioLogForMNAudioPathwayResourceAccessCategory_onceToken, &__block_literal_global_20893);
  }

  v1 = GetAudioLogForMNAudioPathwayResourceAccessCategory_log;

  return v1;
}

void __GetAudioLogForMNAudioPathwayResourceAccessCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioPathwayResourceAccess");
  v1 = GetAudioLogForMNAudioPathwayResourceAccessCategory_log;
  GetAudioLogForMNAudioPathwayResourceAccessCategory_log = v0;
}

uint64_t __Block_byref_object_copy__21188(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3267EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3268B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D326ACE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, id location, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 64));
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a52);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v66 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21496(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D326C4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __GetAudioLogForMNAudioManagerCategory_block_invoke()
{
  v0 = os_log_create("com.apple.Navigation.Audio", "MNAudioManager");
  v1 = GetAudioLogForMNAudioManagerCategory_log;
  GetAudioLogForMNAudioManagerCategory_log = v0;
}

void sub_1D3273C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3273E2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D32758C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3276230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3276554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}