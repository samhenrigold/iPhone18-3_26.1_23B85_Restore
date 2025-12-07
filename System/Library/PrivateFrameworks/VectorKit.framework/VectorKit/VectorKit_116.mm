void sub_1B3062D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11)
{
  if (a9 != a11)
  {
    free(a9);
  }

  _Unwind_Resume(a1);
}

id GEOGetVectorKitHighPrecisionAltitudeRequestorLog(void)
{
  if (GEOGetVectorKitHighPrecisionAltitudeRequestorLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitHighPrecisionAltitudeRequestorLog(void)::onceToken, &__block_literal_global_26143);
  }

  v1 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog(void)::log;

  return v1;
}

void ___ZL48GEOGetVectorKitHighPrecisionAltitudeRequestorLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "HighPrecisionAltitudeRequestor");
  v1 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog(void)::log;
  GEOGetVectorKitHighPrecisionAltitudeRequestorLog(void)::log = v0;
}

uint64_t md::HighPrecisionAltitudeRequest::to_string(md::HighPrecisionAltitudeRequest *this, uint64_t *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v22);
  *(&v22[2] + *(v22[0] - 24)) = 8;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "isResolved:", 11);
  v4 = MEMORY[0x1B8C61C50](&v23, *(a2 + 64));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "egm2008Altitudes:[", 18);
  v5 = a2[2];
  for (i = a2[3]; v5 != i; ++v5)
  {
    v7 = MEMORY[0x1B8C61C60](&v23, *v5);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ",", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "]", 1);
  if (*a2)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, ", vlRequest:{", 13);
    v8 = *a2;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v28);
    *(&v28[2] + *(v28[0] - 24)) = 8;
    std::mutex::lock(v8);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "wgs84Altitudes:[", 16);
    v9 = *(v8 + 72);
    for (j = *(v8 + 80); v9 != j; ++v9)
    {
      v11 = MEMORY[0x1B8C61C60](&v29, *v9);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ",", 1);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, "],", 2);
    if (*(v8 + 144))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(v8 + 144)];
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, ", error:", 8);
      v13 = [v12 UTF8String];
      v14 = strlen(v13);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v29, v13, v14);
    }

    std::mutex::unlock(v8);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](v20, v28);
    v28[0] = *MEMORY[0x1E69E54D8];
    v15 = *(MEMORY[0x1E69E54D8] + 72);
    *(v28 + *(v28[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v29 = v15;
    v30 = MEMORY[0x1E69E5548] + 16;
    if (v32 < 0)
    {
      operator delete(v31[7].__locale_);
    }

    v30 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v31);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C620C0](&v33);
    if ((v21 & 0x80u) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = v20[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v17 = v21;
    }

    else
    {
      v17 = v20[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, v16, v17);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "}", 1);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](this, v22);
  v22[0] = *MEMORY[0x1E69E54D8];
  v18 = *(MEMORY[0x1E69E54D8] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v23 = v18;
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v27);
}

void sub_1B30632D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::locale a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63, ...)
{
  va_start(va, a65);
  std::mutex::unlock(v65);
  a51 = *MEMORY[0x1E69E54D8];
  v67 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a51 + *(a51 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a53 = v67;
  a54 = MEMORY[0x1E69E5548] + 16;
  if (a65 < 0)
  {
    operator delete(__p);
  }

  a54 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a55);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](va);
  a13 = *MEMORY[0x1E69E54D8];
  v68 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a13 + *(a13 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a15 = v68;
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

void md::HighPrecisionAltitudeRequest::createDebugNode(std::string *this, uint64_t *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&__p, "HighPrecisionAltitudeRequest");
  gdc::DebugTreeNode::DebugTreeNode(this, &__p);
  if (SBYTE7(v31) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "isResolved");
  gdc::DebugTreeValue::DebugTreeValue(v38, *(a2 + 64));
  gdc::DebugTreeNode::addProperty(this, &__p, v38);
  if (v40 < 0)
  {
    operator delete(v39);
  }

  if (SBYTE7(v31) < 0)
  {
    operator delete(__p);
  }

  v36 = 0;
  v37[0] = 0;
  v37[1] = 0;
  std::vector<gdc::DebugTreeValue>::reserve(&v36, (a2[3] - a2[2]) >> 3);
  v4 = a2[2];
  v5 = a2[3];
  if (v4 != v5)
  {
    v6 = v37[0];
    do
    {
      v7 = *v4;
      if (v6 >= v37[1])
      {
        v8 = (v6 - v36) >> 6;
        if ((v8 + 1) >> 58)
        {
LABEL_53:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v9 = (v37[1] - v36) >> 5;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if ((v37[1] - v36) >= 0x7FFFFFFFFFFFFFC0)
        {
          v10 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v32 = &v36;
        if (v10)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(v10);
        }

        *&__p = 0;
        *(&__p + 1) = v8 << 6;
        v31 = (v8 << 6);
        gdc::DebugTreeValue::DebugTreeValue(v8 << 6, v7);
        *&v31 = v31 + 64;
        v11 = (*(&__p + 1) + v36 - v37[0]);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::DebugTreeValue>,gdc::DebugTreeValue*>(v36, v37[0], v11);
        v12 = v36;
        v13 = v37[1];
        v36 = v11;
        v28 = v31;
        *v37 = v31;
        *&v31 = v12;
        *(&v31 + 1) = v13;
        *&__p = v12;
        *(&__p + 1) = v12;
        std::__split_buffer<gdc::DebugTreeValue>::~__split_buffer(&__p);
        v6 = v28;
      }

      else
      {
        v6 = (gdc::DebugTreeValue::DebugTreeValue(v6, *v4) + 64);
      }

      v37[0] = v6;
      ++v4;
    }

    while (v4 != v5);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "egm2008Altitudes");
  gdc::DebugTreeNode::addProperty(this, &__p, &v36);
  if (SBYTE7(v31) < 0)
  {
    operator delete(__p);
  }

  v14 = *a2;
  if (v14)
  {
    std::string::basic_string[abi:nn200100]<0>(&v49, "VLRequest");
    gdc::DebugTreeNode::DebugTreeNode(&__p, &v49);
    if (v50 < 0)
    {
      operator delete(v49);
    }

    std::mutex::lock(v14);
    std::string::basic_string[abi:nn200100]<0>(&v41, "hasResult");
    gdc::DebugTreeValue::DebugTreeValue(&v49, *(v14 + 64));
    gdc::DebugTreeNode::addProperty(&__p, &v41, &v49);
    if (v52 < 0)
    {
      operator delete(v51);
    }

    if (SBYTE7(v42) < 0)
    {
      operator delete(v41);
    }

    v47 = 0;
    v48 = 0uLL;
    std::vector<gdc::DebugTreeValue>::reserve(&v47, (*(v14 + 80) - *(v14 + 72)) >> 3);
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);
    if (v15 != v16)
    {
      v17 = v48;
      do
      {
        v18 = *v15;
        if (v17 >= *(&v48 + 1))
        {
          v19 = (v17 - v47) >> 6;
          if ((v19 + 1) >> 58)
          {
            goto LABEL_53;
          }

          v20 = (*(&v48 + 1) - v47) >> 5;
          if (v20 <= v19 + 1)
          {
            v20 = v19 + 1;
          }

          if (*(&v48 + 1) - v47 >= 0x7FFFFFFFFFFFFFC0uLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          v43 = &v47;
          if (v21)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(v21);
          }

          *&v41 = 0;
          *(&v41 + 1) = v19 << 6;
          v42 = (v19 << 6);
          gdc::DebugTreeValue::DebugTreeValue(v19 << 6, v18);
          *&v42 = v42 + 64;
          v22 = &v47[*(&v41 + 1) - v48];
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::DebugTreeValue>,gdc::DebugTreeValue*>(v47, v48, v22);
          v23 = v47;
          v24 = *(&v48 + 1);
          v47 = v22;
          v29 = v42;
          v48 = v42;
          *&v42 = v23;
          *(&v42 + 1) = v24;
          *&v41 = v23;
          *(&v41 + 1) = v23;
          std::__split_buffer<gdc::DebugTreeValue>::~__split_buffer(&v41);
          v17 = v29;
        }

        else
        {
          v17 = gdc::DebugTreeValue::DebugTreeValue(v17, *v15) + 64;
        }

        *&v48 = v17;
        ++v15;
      }

      while (v15 != v16);
    }

    std::string::basic_string[abi:nn200100]<0>(&v45, "error");
    v25 = MEMORY[0x1E696AEC0];
    v26 = *(v14 + 144);
    v27 = [v25 stringWithFormat:@"%@", v26];
    gdc::DebugTreeValue::DebugTreeValue(&v41, [v27 UTF8String]);
    gdc::DebugTreeNode::addProperty(&__p, &v45, &v41);
    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    *&v45 = &v47;
    std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v45);
    std::mutex::unlock(v14);
    gdc::DebugTreeNode::addChildNode(this, &__p);
    *&v49 = &v35;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v49);
    *&v49 = &v34;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v49);
    if (v33 < 0)
    {
      operator delete(*(&v31 + 1));
    }

    if (SBYTE7(v31) < 0)
    {
      operator delete(__p);
    }
  }

  *&__p = &v36;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&__p);
}

void sub_1B3063A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v37 = v34;

  if (*(v36 - 185) < 0)
  {
    operator delete(*(v36 - 208));
  }

  *(v36 - 208) = v36 - 184;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100]((v36 - 208));
  std::mutex::unlock(v33);
  *(v36 - 184) = &a29;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v36 - 184));
  *(v36 - 184) = &a26;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v36 - 184));
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  *(v36 - 184) = &a32;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100]((v36 - 184));
  *(v36 - 184) = v32 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v36 - 184));
  *(v36 - 184) = v32 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v36 - 184));
  if (*(v32 + 47) < 0)
  {
    operator delete(*(v32 + 24));
  }

  if (*(v32 + 23) < 0)
  {
    operator delete(*v32);
  }

  _Unwind_Resume(a1);
}

char **std::vector<gdc::DebugTreeValue>::reserve(char **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void geo::_retain_ptr<VLLocalizer * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A218;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VLLocalizer * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A218;

  return a1;
}

void md::HighPrecisionAltitudeRequestor::~HighPrecisionAltitudeRequestor(md::HighPrecisionAltitudeRequestor *this)
{
  std::__function::__value_func<void ()(std::shared_ptr<md::VLAltitudeRequest> const&)>::~__value_func[abi:nn200100](this + 240);
  if (*(this + 29))
  {
    v2 = *(this + 28);
    v3 = *(*(this + 27) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 29) = 0;
    if (v2 != (this + 216))
    {
      do
      {
        v5 = *(v2 + 1);
        v6 = *(v2 + 5);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (this + 216));
    }
  }

  v7 = *(this + 24);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(this + 22);
  *(this + 22) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (*(this + 20))
  {
    v10 = *(this + 19);
    v11 = *(*(this + 18) + 8);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    *(this + 20) = 0;
    if (v10 != (this + 144))
    {
      do
      {
        v13 = *(v10 + 1);
        v14 = *(v10 + 5);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        operator delete(v10);
        v10 = v13;
      }

      while (v13 != (this + 144));
    }
  }

  v15 = *(this + 15);
  if (v15)
  {
    do
    {
      v16 = *v15;
      operator delete(v15);
      v15 = v16;
    }

    while (v16);
  }

  v17 = *(this + 13);
  *(this + 13) = 0;
  if (v17)
  {
    operator delete(v17);
  }

  *(this + 9) = &unk_1F2A2A218;

  v18 = *(this + 1);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }
}

void md::HighPrecisionAltitudeRequestor::loadFrameworks(md::HighPrecisionAltitudeRequestor *this)
{
  v3 = (this + 296);
  if (atomic_load_explicit(v3, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(v3, &v5, std::__call_once_proxy[abi:nn200100]<std::tuple<md::HighPrecisionAltitudeRequestor::loadFrameworks(void)::$_0 &&>>);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<md::HighPrecisionAltitudeRequestor::loadFrameworks(void)::$_0 &&>>()
{
  if (LoadCoreLocation(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadCoreLocation(void)::loadPredicate, &__block_literal_global_38_26172);
  }

  if (LoadVisualLocalization(void)::loadPredicate != -1)
  {

    dispatch_once(&LoadVisualLocalization(void)::loadPredicate, &__block_literal_global_45_26173);
  }
}

void ___ZL22LoadVisualLocalizationv_block_invoke()
{
  LoadVisualLocalization(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/VisualLocalization.framework/VisualLocalization", 2);
  if (!LoadVisualLocalization(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/VisualLocalization.framework/VisualLocalization");
  }
}

void ___ZL16LoadCoreLocationv_block_invoke()
{
  LoadCoreLocation(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
  if (!LoadCoreLocation(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/CoreLocation.framework/CoreLocation");
  }
}

void *md::HighPrecisionAltitudeRequestor::clLocationForCoordinate(void *a1, md::HighPrecisionAltitudeRequestor *this, double *a3)
{
  md::HighPrecisionAltitudeRequestor::loadFrameworks(this);
  result = [objc_alloc(getCLLocationClass()) initWithLatitude:*a3 longitude:a3[1]];
  *a1 = &unk_1F2A2A238;
  a1[1] = result;
  return result;
}

void geo::_retain_ptr<CLLocation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A238;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<CLLocation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A238;

  return a1;
}

Class initCLLocation(void)
{
  if (LoadCoreLocation(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadCoreLocation(void)::loadPredicate, &__block_literal_global_38_26172);
  }

  result = objc_getClass("CLLocation");
  classCLLocation = result;
  getCLLocationClass = CLLocationFunction;
  return result;
}

id md::HighPrecisionAltitudeRequestor::vlLocalizer(md::HighPrecisionAltitudeRequestor *this)
{
  v3 = (this + 80);
  v2 = *(this + 10);
  if (!v2)
  {
    md::HighPrecisionAltitudeRequestor::loadFrameworks(this);
    v4 = [objc_alloc(getVLLocalizerClass()) initWithAuditToken:0];
    v5 = v4;
    objc_storeStrong(v3, v4);

    v2 = *(this + 10);
  }

  return v2;
}

Class initVLLocalizer(void)
{
  if (LoadVisualLocalization(void)::loadPredicate != -1)
  {
    dispatch_once(&LoadVisualLocalization(void)::loadPredicate, &__block_literal_global_45_26173);
  }

  result = objc_getClass("VLLocalizer");
  classVLLocalizer = result;
  getVLLocalizerClass = VLLocalizerFunction;
  return result;
}

uint64_t geo::LRUPolicy<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>,md::SpatialKeyHash>::get(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = std::__hash_table<std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,std::__unordered_map_hasher<md::SpatialKey,std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,md::SpatialKeyHash,std::equal_to<md::SpatialKey>,true>,std::__unordered_map_equal<md::SpatialKey,std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,std::equal_to<md::SpatialKey>,md::SpatialKeyHash,true>,std::allocator<std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::find<md::SpatialKey>(a2, a3, a4);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = v5[4];
    if (v6 == v7)
    {
      return *(a1 + 8);
    }

    v8 = v7[1];
    if (v8 == v6)
    {
      return *(a1 + 8);
    }

    else
    {
      v9 = *v7;
      *(v9 + 8) = v8;
      *v8 = v9;
      v10 = *v6;
      *(v10 + 8) = v7;
      *v7 = v10;
      *v6 = v7;
      v7[1] = v6;
      return *(a1 + 8);
    }
  }

  return a1;
}

uint64_t geo::Cache<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>,md::SpatialKeyHash,geo::LRUPolicy>::operator[](uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 48;
  v5 = geo::LRUPolicy<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>,md::SpatialKeyHash>::get(a1 + 48, (a1 + 8), *a2, a2[1]);
  if (v4 == v5)
  {
    v6 = std::__hash_table<std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,std::__unordered_map_hasher<md::SpatialKey,std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,md::SpatialKeyHash,std::equal_to<md::SpatialKey>,true>,std::__unordered_map_equal<md::SpatialKey,std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,std::equal_to<md::SpatialKey>,md::SpatialKeyHash,true>,std::allocator<std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::find<md::SpatialKey>((a1 + 8), *a2, a2[1]);
    if (v6)
    {
      v7 = v6;
      v8 = v6[4];
      v10 = *v8;
      v9 = v8[1];
      *(v10 + 8) = v9;
      *v9 = v10;
      --*(a1 + 64);
      v11 = v8[5];
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      operator delete(v8);
      std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v7);
    }

    operator new();
  }

  return v5 + 32;
}

void *std::__hash_table<std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,std::__unordered_map_hasher<md::SpatialKey,std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,md::SpatialKeyHash,std::equal_to<md::SpatialKey>,true>,std::__unordered_map_equal<md::SpatialKey,std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>,std::equal_to<md::SpatialKey>,md::SpatialKeyHash,true>,std::allocator<std::__hash_value_type<md::SpatialKey,std::__list_iterator<std::pair<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::find<md::SpatialKey>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (a3 + ((a2 - 0x61C8864680B583EBLL) << 6) + ((a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (a3 + ((a2 - 0x61C8864680B583EBLL) << 6) + ((a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (a2 - 0x61C8864680B583EBLL);
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == a2 && result[3] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__shared_ptr_emplace<md::HighPrecisionAltitudeRequest>::__on_zero_shared(void *a1)
{
  v2 = a1[5];
  if (v2 != a1[7])
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<md::HighPrecisionAltitudeRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::HighPrecisionAltitudeRequestor::requestAltitude(uint64_t *a1, double *a2, double *a3)
{
  v64[3] = *MEMORY[0x1E69E9840];
  v6 = a2[8];
  v7 = *a3;
  v8 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(*a3);
  v46 = a3[1];
  v9 = tan(v7 * 0.00872664626 + 0.785398163);
  v10 = log(v9);
  v11.f64[0] = v46;
  v11.f64[1] = v10;
  __asm { FMOV            V0.2D, #0.5 }

  v47 = _Q0;
  v49 = vcvtq_u64_f64(vmulq_n_f64(vmlaq_f64(_Q0, xmmword_1B33B0700, v11), 1.0 / (v6 * v8)));
  v17 = v49.i64[1];
  v18 = v49.i64[0];
  v19 = geo::LRUPolicy<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>,md::SpatialKeyHash>::get((a2 + 27), a2 + 22, v49.i64[0], v49.i64[1]);
  if (a2 + 27 == v19)
  {
    ++*(a2 + 71);
    v48 = *a3;
    v50 = 0;
    v51 = &v50;
    v52 = 0x4012000000;
    v53 = __Block_byref_object_copy__26199;
    v54 = __Block_byref_object_dispose__26200;
    v55 = "";
    v25 = a2[8];
    v26 = v48;
    v27 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(*&v48);
    v28 = *(&v48 + 1);
    v29 = tan(*&v48 * 0.00872664626 + 0.785398163);
    v30 = log(v29);
    v31.f64[0] = *(&v48 + 1);
    v31.f64[1] = v30;
    v56 = vcvtq_u64_f64(vmulq_n_f64(vmlaq_f64(v47, xmmword_1B33B0700, v31), 1.0 / (v25 * v27)));
    v32 = geo::LRUPolicy<md::SpatialKey,std::shared_ptr<md::HighPrecisionAltitudeRequest>,md::SpatialKeyHash>::get((a2 + 18), a2 + 13, v56.i64[0], v56.i64[1]);
    if (a2 + 18 == v32)
    {
      ++*(a2 + 69);
      v39 = md::HighPrecisionAltitudeRequestor::vlLocalizer(a2);
      if (v39)
      {
        md::HighPrecisionAltitudeRequestor::clLocationForCoordinate(v64, a2, &v48);
        if (v64[1])
        {
          v40 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v42 = v51[6];
            v41 = v51[7];
            buf[0] = 134218752;
            *&buf[1] = v26;
            v58 = 2048;
            v59 = v28;
            v60 = 2048;
            v61 = v42;
            v62 = 2048;
            v63 = v41;
            _os_log_impl(&dword_1B2754000, v40, OS_LOG_TYPE_DEBUG, "Requesting vlAltitude for coordinate:%f,%f key:%llu,%llu", buf, 0x2Au);
          }

          operator new();
        }

        v38 = 0;
        v37 = 0;
        v64[0] = &unk_1F2A2A238;
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }
    }

    else
    {
      v33 = v32;
      ++*(a2 + 68);
      v34 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v36 = v51[6];
        v35 = v51[7];
        buf[0] = 134218752;
        *&buf[1] = v26;
        v58 = 2048;
        v59 = v28;
        v60 = 2048;
        v61 = v36;
        v62 = 2048;
        v63 = v35;
        _os_log_impl(&dword_1B2754000, v34, OS_LOG_TYPE_DEBUG, "Found cached vl request for coordinate:%f,%f key:%llu,%llu", buf, 0x2Au);
      }

      v38 = v33[4];
      v37 = v33[5];
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    _Block_object_dispose(&v50, 8);
    if (v38)
    {
      v43 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v44 = *a3;
        v45 = *(a3 + 1);
        buf[0] = 134218752;
        *&buf[1] = v44;
        v58 = 2048;
        v59 = v45;
        v60 = 2048;
        v61 = v18;
        v62 = 2048;
        v63 = v17;
        _os_log_impl(&dword_1B2754000, v43, OS_LOG_TYPE_DEBUG, "Requesting high precision altitude for coordinate:%f,%f key:%llu,%llu", buf, 0x2Au);
      }

      operator new();
    }

    *a1 = 0;
    a1[1] = 0;
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }
  }

  else
  {
    v20 = v19;
    ++*(a2 + 70);
    if (!**(v19 + 32))
    {
      ++*(a2 + 72);
    }

    v21 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a3;
      v23 = *(a3 + 1);
      buf[0] = 134218752;
      *&buf[1] = v22;
      v58 = 2048;
      v59 = v23;
      v60 = 2048;
      v61 = v18;
      v62 = 2048;
      v63 = v17;
      _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_DEBUG, "Found cached high precision altitude for coordinate:%f,%f key:%llu,%llu", buf, 0x2Au);
    }

    v24 = *(v20 + 40);
    *a1 = *(v20 + 32);
    a1[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_1B3065600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
{
  operator delete(__p);
  if (a41)
  {
    std::__shared_weak_count::__release_weak(a41);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a37);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  *(v42 - 176) = &unk_1F2A2A238;

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__26199(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN2md30HighPrecisionAltitudeRequestor17requestVLAltitudeEN3geo12Coordinate2DINS1_7DegreesEdEE_block_invoke(void *a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1[5];
  v8 = v5;
  v37 = v6;
  std::mutex::lock(v7);
  v9 = v37;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = *(v7 + 144);
  *(v7 + 144) = v10;

  *(v7 + 80) = *(v7 + 72);
  v14 = [v8 count];
  if (*(v7 + 96) < v14)
  {
    geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::grow((v7 + 72), v14);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:buf count:16];
  if (v16)
  {
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v38 + 1) + 8 * i) doubleValue];
        v20 = v19;
        v21 = *(v7 + 80);
        v22 = (((v21 - *(v7 + 72)) >> 3) + 1);
        if (*(v7 + 96) < v22)
        {
          geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::grow((v7 + 72), v22);
          v21 = *(v7 + 80);
        }

        *v21 = v20;
        *(v7 + 80) = v21 + 1;
      }

      v16 = [v15 countByEnumeratingWithState:&v38 objects:buf count:16];
    }

    while (v16);
  }

  *(v7 + 64) = 1;
  std::mutex::unlock(v7);

  if (v10)
  {
    v23 = [v10 description];
    if (v23)
    {
      v24 = [v10 description];
      v25 = [v24 UTF8String];
    }

    else
    {
      v25 = "";
    }

    v26 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = a1[7];
      v28 = a1[8];
      v29 = *(a1[4] + 8);
      v31 = *(v29 + 48);
      v30 = *(v29 + 56);
      *buf = 134219010;
      v43 = v27;
      v44 = 2048;
      v45 = v28;
      v46 = 2048;
      v47 = v31;
      v48 = 2048;
      v49 = v30;
      v50 = 2080;
      v51 = v25;
      _os_log_impl(&dword_1B2754000, v26, OS_LOG_TYPE_ERROR, "VLAltitude request failed for coordinate:%f,%f key:%llu,%llu error:%s", buf, 0x34u);
    }

    v32 = a1[10];
    if (v32)
    {
      v33 = std::__shared_weak_count::lock(v32);
      if (v33)
      {
        v34 = v33;
        v35 = a1[9];
        if (v35)
        {
          v36 = *(v35 + 264);
          if (v36)
          {
            (*(*v36 + 48))(v36, a1 + 5);
          }
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v34);
      }
    }
  }
}

void sub_1B3065A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v11);

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c50_ZTSNSt3__110shared_ptrIN2md17VLAltitudeRequestEEE5672c60_ZTSNSt3__18weak_ptrIN2md30HighPrecisionAltitudeRequestorEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_40c50_ZTSNSt3__110shared_ptrIN2md17VLAltitudeRequestEEE56c39_ZTSN3geo12Coordinate2DINS_7DegreesEdEE72c60_ZTSNSt3__18weak_ptrIN2md30HighPrecisionAltitudeRequestorEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[7] = a2[7];
  result[8] = a2[8];
  v3 = a2[10];
  result[9] = a2[9];
  result[10] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void geo::_retain_ptr<NSError * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A2C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSError * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2A2C8;

  return a1;
}

void std::__shared_ptr_emplace<md::VLAltitudeRequest>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 160) = &unk_1F2A2A2C8;

  v2 = *(a1 + 96);
  if (v2 != *(a1 + 112))
  {
    free(v2);
  }

  std::mutex::~mutex((a1 + 24));
}

void std::__shared_ptr_emplace<md::VLAltitudeRequest>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t *std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::erase(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  --*(a1 + 24);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), a2);
  v7 = a2[6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = mdm::zone_mallocator::instance(v7);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,void *>>(v8, a2);
  return v4;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].u64[1];
  v9 = v7;
  v124 = a2;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v9->i64[0]);
      if (result)
      {
        v77 = v9->i64[0];
        v9->i64[0] = *v8;
LABEL_103:
        *v8 = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = &v9->u64[1];
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = v84->i64[0];
            v85 = v84->u64[1];
            v84 = v80;
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v85, v86);
            if (result)
            {
              v87 = v84->i64[0];
              v88 = v83;
              while (1)
              {
                *(&v9->i64[1] + v88) = *(v9->i64 + v88);
                if (!v88)
                {
                  break;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v87, *(&v9->u64[-1] + v88));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v9->i64[1] + v88);
                  goto LABEL_125;
                }
              }

              i64 = v9->i64;
LABEL_125:
              *i64 = v87;
            }

            v80 = &v84->u64[1];
            v83 += 8;
          }

          while (&v84->u64[1] != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v119 = *v7;
          v118 = *(v7 + 8);
          v7 = v80;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v118, v119);
          if (result)
          {
            v120 = *v7;
            v121 = v7;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v80 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v90 = v11 >> 1;
        v91 = v11 >> 1;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = (v7 + 8 * v93);
            if (2 * v91 + 2 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = (v7 + 8 * v92);
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v90 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = (v7 + 8 * v98);
                v99 = 2 * v93 + 2;
                if (v99 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = 0;
          v102 = *v7;
          v103 = v7;
          do
          {
            v104 = &v103[v101];
            v105 = v104 + 1;
            v106 = (2 * v101) | 1;
            v107 = 2 * v101 + 2;
            if (v107 >= v10)
            {
              v101 = (2 * v101) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v101 = v107;
              }

              else
              {
                v101 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v101 <= ((v10 - 2) >> 1));
          if (v105 == --v100)
          {
            *v105 = v102;
          }

          else
          {
            *v105 = *v100;
            *v100 = v102;
            v110 = (v105 - v7 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = (v7 + 8 * (v112 >> 1));
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v7 + 8 * v113);
                  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v10-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v7, *(v7 + 8 * v12));
      v17 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, *v7);
      if (v16)
      {
        v18 = *(v7 + 8 * v12);
        if (v17)
        {
          *(v7 + 8 * v12) = *v8;
          *v8 = v18;
        }

        else
        {
          *(v7 + 8 * v12) = *v7;
          *v7 = v18;
          if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v7, *(v7 + 8 * v12)))
        {
          v22 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v12), *v7);
    v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, *(v7 + 8 * v12));
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v15;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v15))
        {
          v23 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = *v8;
      *v8 = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v12), *v7))
      {
        v20 = *v7;
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * (v12 - 1)), *(v7 + 8));
    v26 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-1].u64[0], *(v7 + 8 * (v12 - 1)));
    if (v25)
    {
      v27 = *(v7 + 8);
      if (v26)
      {
        *(v7 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v27;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-1].u64[0], v27))
        {
          v31 = *(v7 + 8 * v24);
          *(v7 + 8 * v24) = a2[-1].i64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = a2[-1].i64[0];
      a2[-1].i64[0] = v28;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v24), *(v7 + 8)))
      {
        v29 = *(v7 + 8);
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v29;
      }
    }

    v32 = v12 + 1;
    v33 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * (v12 + 1)), *(v7 + 16));
    v34 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-2].u64[1], *(v7 + 8 * (v12 + 1)));
    if (v33)
    {
      v35 = *(v7 + 16);
      if (v34)
      {
        *(v7 + 16) = a2[-2].i64[1];
        a2[-2].i64[1] = v35;
      }

      else
      {
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v35;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-2].u64[1], v35))
        {
          v38 = *(v7 + 8 * v32);
          *(v7 + 8 * v32) = a2[-2].i64[1];
          a2[-2].i64[1] = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = a2[-2].i64[1];
      a2[-2].i64[1] = v36;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v32), *(v7 + 16)))
      {
        v37 = *(v7 + 16);
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v37;
      }
    }

    v39 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v12), *(v7 + 8 * v24));
    v40 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v32), *(v7 + 8 * v12));
    if (!v39)
    {
      v42 = *(v7 + 8 * v12);
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = *(v7 + 8 * v32);
      *(v7 + 8 * v12) = v43;
      *(v7 + 8 * v32) = v42;
      v44 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v43, *(v7 + 8 * v24));
      v42 = *(v7 + 8 * v12);
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = v42;
      *(v7 + 8 * v12) = v45;
      goto LABEL_53;
    }

    v41 = *(v7 + 8 * v24);
    if (v40)
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = v41;
      v42 = *(v7 + 8 * v12);
    }

    else
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = v41;
      v46 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v32), v41);
      v42 = *(v7 + 8 * v12);
      if (v46)
      {
        v45 = *(v7 + 8 * v32);
        *(v7 + 8 * v12) = v45;
        *(v7 + 8 * v32) = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    *(v7 + 8 * v12) = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 - 8), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50->u64[1];
        v50 = (v50 + 8);
      }

      while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v55, v48));
      }

      else
      {
        do
        {
          v54 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = v56->i64[0];
          v56->i64[0] = v57->i64[0];
          v57->i64[0] = v58;
          do
          {
            v51 = v56;
            v59 = v56->u64[1];
            v56 = (v56 + 8);
          }

          while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v59, v48));
          do
          {
            v60 = v57[-1].u64[1];
            v57 = (v57 - 8);
          }

          while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = v51->i64[0];
      }

      v51->i64[0] = v48;
      a2 = v124;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **>(v7, v51);
      v9 = &v51->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **>(&v51->i64[1], v124);
      if (result)
      {
        a2 = v51;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = &v51->u64[1];
      }
    }

    else
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9->u64[1];
          v9 = (v9 + 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = v7 + 8;
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 += 8;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v9->i64[0]);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = v9->i64[0];
        v9->i64[0] = v64->i64[0];
        v64->i64[0] = v66;
        do
        {
          v67 = v9->u64[1];
          v9 = (v9 + 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v67));
        do
        {
          v68 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = &v9[-1].u64[1];
      if (&v9[-1].u64[1] != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1]);
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v9[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v70 = v9[1].u64[1];
      v9[1].i64[1] = *v8;
      *v8 = v70;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v9[1].u64[1], v9[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v9[1].i64[0];
      v71 = v9[1].u64[1];
      v73 = v9->u64[1];
      v9[1].i64[0] = v71;
      v9[1].i64[1] = v72;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9->i64[1];
      v74 = v9[1].u64[0];
      v76 = v9->i64[0];
      v9->i64[1] = v74;
      v9[1].i64[0] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v9->u64[1], v9->i64[0]);
  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v9->u64[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v117 = v9->u64[1];
    v9->i64[1] = *v8;
    *v8 = v117;
    v76 = v9->i64[0];
    v74 = v9->u64[1];
LABEL_164:
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *v8;
    *v8 = v79;
  }

  else
  {
    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v79;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v79);
    if (result)
    {
      v77 = v9->u64[1];
      v9->i64[1] = *v8;
      goto LABEL_103;
    }
  }

  return result;
}

{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].u64[1];
  v9 = v7;
  v124 = a2;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v9->i64[0]);
      if (result)
      {
        v77 = v9->i64[0];
        v9->i64[0] = *v8;
LABEL_103:
        *v8 = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = &v9->u64[1];
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = v84->i64[0];
            v85 = v84->u64[1];
            v84 = v80;
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v85, v86);
            if (result)
            {
              v87 = v84->i64[0];
              v88 = v83;
              while (1)
              {
                *(&v9->i64[1] + v88) = *(v9->i64 + v88);
                if (!v88)
                {
                  break;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v87, *(&v9->u64[-1] + v88));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v9->i64[1] + v88);
                  goto LABEL_125;
                }
              }

              i64 = v9->i64;
LABEL_125:
              *i64 = v87;
            }

            v80 = &v84->u64[1];
            v83 += 8;
          }

          while (&v84->u64[1] != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v119 = *v7;
          v118 = *(v7 + 8);
          v7 = v80;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v118, v119);
          if (result)
          {
            v120 = *v7;
            v121 = v7;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v80 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v90 = v11 >> 1;
        v91 = v11 >> 1;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = (v7 + 8 * v93);
            if (2 * v91 + 2 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = (v7 + 8 * v92);
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v90 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = (v7 + 8 * v98);
                v99 = 2 * v93 + 2;
                if (v99 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = 0;
          v102 = *v7;
          v103 = v7;
          do
          {
            v104 = &v103[v101];
            v105 = v104 + 1;
            v106 = (2 * v101) | 1;
            v107 = 2 * v101 + 2;
            if (v107 >= v10)
            {
              v101 = (2 * v101) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v101 = v107;
              }

              else
              {
                v101 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v101 <= ((v10 - 2) >> 1));
          if (v105 == --v100)
          {
            *v105 = v102;
          }

          else
          {
            *v105 = *v100;
            *v100 = v102;
            v110 = (v105 - v7 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = (v7 + 8 * (v112 >> 1));
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v7 + 8 * v113);
                  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v10-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v7, *(v7 + 8 * v12));
      v17 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, *v7);
      if (v16)
      {
        v18 = *(v7 + 8 * v12);
        if (v17)
        {
          *(v7 + 8 * v12) = *v8;
          *v8 = v18;
        }

        else
        {
          *(v7 + 8 * v12) = *v7;
          *v7 = v18;
          if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v7, *(v7 + 8 * v12)))
        {
          v22 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v12), *v7);
    v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, *(v7 + 8 * v12));
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v15;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v15))
        {
          v23 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = *v8;
      *v8 = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v12), *v7))
      {
        v20 = *v7;
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * (v12 - 1)), *(v7 + 8));
    v26 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-1].u64[0], *(v7 + 8 * (v12 - 1)));
    if (v25)
    {
      v27 = *(v7 + 8);
      if (v26)
      {
        *(v7 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v27;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-1].u64[0], v27))
        {
          v31 = *(v7 + 8 * v24);
          *(v7 + 8 * v24) = a2[-1].i64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = a2[-1].i64[0];
      a2[-1].i64[0] = v28;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v24), *(v7 + 8)))
      {
        v29 = *(v7 + 8);
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v29;
      }
    }

    v32 = v12 + 1;
    v33 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * (v12 + 1)), *(v7 + 16));
    v34 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-2].u64[1], *(v7 + 8 * (v12 + 1)));
    if (v33)
    {
      v35 = *(v7 + 16);
      if (v34)
      {
        *(v7 + 16) = a2[-2].i64[1];
        a2[-2].i64[1] = v35;
      }

      else
      {
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v35;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(a2[-2].u64[1], v35))
        {
          v38 = *(v7 + 8 * v32);
          *(v7 + 8 * v32) = a2[-2].i64[1];
          a2[-2].i64[1] = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = a2[-2].i64[1];
      a2[-2].i64[1] = v36;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v32), *(v7 + 16)))
      {
        v37 = *(v7 + 16);
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v37;
      }
    }

    v39 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v12), *(v7 + 8 * v24));
    v40 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v32), *(v7 + 8 * v12));
    if (!v39)
    {
      v42 = *(v7 + 8 * v12);
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = *(v7 + 8 * v32);
      *(v7 + 8 * v12) = v43;
      *(v7 + 8 * v32) = v42;
      v44 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v43, *(v7 + 8 * v24));
      v42 = *(v7 + 8 * v12);
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = v42;
      *(v7 + 8 * v12) = v45;
      goto LABEL_53;
    }

    v41 = *(v7 + 8 * v24);
    if (v40)
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = v41;
      v42 = *(v7 + 8 * v12);
    }

    else
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = v41;
      v46 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 + 8 * v32), v41);
      v42 = *(v7 + 8 * v12);
      if (v46)
      {
        v45 = *(v7 + 8 * v32);
        *(v7 + 8 * v12) = v45;
        *(v7 + 8 * v32) = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    *(v7 + 8 * v12) = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(v7 - 8), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50->u64[1];
        v50 = (v50 + 8);
      }

      while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v55, v48));
      }

      else
      {
        do
        {
          v54 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = v56->i64[0];
          v56->i64[0] = v57->i64[0];
          v57->i64[0] = v58;
          do
          {
            v51 = v56;
            v59 = v56->u64[1];
            v56 = (v56 + 8);
          }

          while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v59, v48));
          do
          {
            v60 = v57[-1].u64[1];
            v57 = (v57 - 8);
          }

          while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = v51->i64[0];
      }

      v51->i64[0] = v48;
      a2 = v124;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **>(v7, v51);
      v9 = &v51->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **>(&v51->i64[1], v124);
      if (result)
      {
        a2 = v51;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = &v51->u64[1];
      }
    }

    else
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9->u64[1];
          v9 = (v9 + 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = v7 + 8;
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 += 8;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v9->i64[0]);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = v9->i64[0];
        v9->i64[0] = v64->i64[0];
        v64->i64[0] = v66;
        do
        {
          v67 = v9->u64[1];
          v9 = (v9 + 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v67));
        do
        {
          v68 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = &v9[-1].u64[1];
      if (&v9[-1].u64[1] != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1]);
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v9[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v70 = v9[1].u64[1];
      v9[1].i64[1] = *v8;
      *v8 = v70;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v9[1].u64[1], v9[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v9[1].i64[0];
      v71 = v9[1].u64[1];
      v73 = v9->u64[1];
      v9[1].i64[0] = v71;
      v9[1].i64[1] = v72;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9->i64[1];
      v74 = v9[1].u64[0];
      v76 = v9->i64[0];
      v9->i64[1] = v74;
      v9[1].i64[0] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v9->u64[1], v9->i64[0]);
  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v9->u64[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v117 = v9->u64[1];
    v9->i64[1] = *v8;
    *v8 = v117;
    v76 = v9->i64[0];
    v74 = v9->u64[1];
LABEL_164:
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *v8;
    *v8 = v79;
  }

  else
  {
    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v79;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v8, v79);
    if (result)
    {
      v77 = v9->u64[1];
      v9->i64[1] = *v8;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,false>(uint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].u64[1];
  v9 = v7;
  v124 = a2;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v9->i64[0]);
      if (result)
      {
        v77 = v9->i64[0];
        v9->i64[0] = *v8;
LABEL_103:
        *v8 = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = &v9->u64[1];
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = v84->i64[0];
            v85 = v84->u64[1];
            v84 = v80;
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v85, v86);
            if (result)
            {
              v87 = v84->i64[0];
              v88 = v83;
              while (1)
              {
                *(&v9->i64[1] + v88) = *(v9->i64 + v88);
                if (!v88)
                {
                  break;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v87, *(&v9->u64[-1] + v88));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v9->i64[1] + v88);
                  goto LABEL_125;
                }
              }

              i64 = v9->i64;
LABEL_125:
              *i64 = v87;
            }

            v80 = &v84->u64[1];
            v83 += 8;
          }

          while (&v84->u64[1] != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v119 = *v7;
          v118 = *(v7 + 8);
          v7 = v80;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v118, v119);
          if (result)
          {
            v120 = *v7;
            v121 = v7;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v80 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v90 = v11 >> 1;
        v91 = v11 >> 1;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = (v7 + 8 * v93);
            if (2 * v91 + 2 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = (v7 + 8 * v92);
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v90 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = (v7 + 8 * v98);
                v99 = 2 * v93 + 2;
                if (v99 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = 0;
          v102 = *v7;
          v103 = v7;
          do
          {
            v104 = &v103[v101];
            v105 = v104 + 1;
            v106 = (2 * v101) | 1;
            v107 = 2 * v101 + 2;
            if (v107 >= v10)
            {
              v101 = (2 * v101) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v101 = v107;
              }

              else
              {
                v101 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v101 <= ((v10 - 2) >> 1));
          if (v105 == --v100)
          {
            *v105 = v102;
          }

          else
          {
            *v105 = *v100;
            *v100 = v102;
            v110 = (v105 - v7 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = (v7 + 8 * (v112 >> 1));
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v7 + 8 * v113);
                  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v10-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v7, *(v7 + 8 * v12));
      v17 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, *v7);
      if (v16)
      {
        v18 = *(v7 + 8 * v12);
        if (v17)
        {
          *(v7 + 8 * v12) = *v8;
          *v8 = v18;
        }

        else
        {
          *(v7 + 8 * v12) = *v7;
          *v7 = v18;
          if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v7, *(v7 + 8 * v12)))
        {
          v22 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v12), *v7);
    v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, *(v7 + 8 * v12));
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v15;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v15))
        {
          v23 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = *v8;
      *v8 = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v12), *v7))
      {
        v20 = *v7;
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * (v12 - 1)), *(v7 + 8));
    v26 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-1].u64[0], *(v7 + 8 * (v12 - 1)));
    if (v25)
    {
      v27 = *(v7 + 8);
      if (v26)
      {
        *(v7 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v27;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-1].u64[0], v27))
        {
          v31 = *(v7 + 8 * v24);
          *(v7 + 8 * v24) = a2[-1].i64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = a2[-1].i64[0];
      a2[-1].i64[0] = v28;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v24), *(v7 + 8)))
      {
        v29 = *(v7 + 8);
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v29;
      }
    }

    v32 = v12 + 1;
    v33 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * (v12 + 1)), *(v7 + 16));
    v34 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-2].u64[1], *(v7 + 8 * (v12 + 1)));
    if (v33)
    {
      v35 = *(v7 + 16);
      if (v34)
      {
        *(v7 + 16) = a2[-2].i64[1];
        a2[-2].i64[1] = v35;
      }

      else
      {
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v35;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-2].u64[1], v35))
        {
          v38 = *(v7 + 8 * v32);
          *(v7 + 8 * v32) = a2[-2].i64[1];
          a2[-2].i64[1] = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = a2[-2].i64[1];
      a2[-2].i64[1] = v36;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v32), *(v7 + 16)))
      {
        v37 = *(v7 + 16);
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v37;
      }
    }

    v39 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v12), *(v7 + 8 * v24));
    v40 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v32), *(v7 + 8 * v12));
    if (!v39)
    {
      v42 = *(v7 + 8 * v12);
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = *(v7 + 8 * v32);
      *(v7 + 8 * v12) = v43;
      *(v7 + 8 * v32) = v42;
      v44 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v43, *(v7 + 8 * v24));
      v42 = *(v7 + 8 * v12);
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = v42;
      *(v7 + 8 * v12) = v45;
      goto LABEL_53;
    }

    v41 = *(v7 + 8 * v24);
    if (v40)
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = v41;
      v42 = *(v7 + 8 * v12);
    }

    else
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = v41;
      v46 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v32), v41);
      v42 = *(v7 + 8 * v12);
      if (v46)
      {
        v45 = *(v7 + 8 * v32);
        *(v7 + 8 * v12) = v45;
        *(v7 + 8 * v32) = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    *(v7 + 8 * v12) = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 - 8), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50->u64[1];
        v50 = (v50 + 8);
      }

      while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v55, v48));
      }

      else
      {
        do
        {
          v54 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = v56->i64[0];
          v56->i64[0] = v57->i64[0];
          v57->i64[0] = v58;
          do
          {
            v51 = v56;
            v59 = v56->u64[1];
            v56 = (v56 + 8);
          }

          while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v59, v48));
          do
          {
            v60 = v57[-1].u64[1];
            v57 = (v57 - 8);
          }

          while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = v51->i64[0];
      }

      v51->i64[0] = v48;
      a2 = v124;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **>(v7, v51);
      v9 = &v51->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **>(&v51->i64[1], v124);
      if (result)
      {
        a2 = v51;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = &v51->u64[1];
      }
    }

    else
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9->u64[1];
          v9 = (v9 + 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = v7 + 8;
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 += 8;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v9->i64[0]);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = v9->i64[0];
        v9->i64[0] = v64->i64[0];
        v64->i64[0] = v66;
        do
        {
          v67 = v9->u64[1];
          v9 = (v9 + 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v67));
        do
        {
          v68 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = &v9[-1].u64[1];
      if (&v9[-1].u64[1] != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1]);
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v9[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v70 = v9[1].u64[1];
      v9[1].i64[1] = *v8;
      *v8 = v70;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v9[1].u64[1], v9[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v9[1].i64[0];
      v71 = v9[1].u64[1];
      v73 = v9->u64[1];
      v9[1].i64[0] = v71;
      v9[1].i64[1] = v72;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9->i64[1];
      v74 = v9[1].u64[0];
      v76 = v9->i64[0];
      v9->i64[1] = v74;
      v9[1].i64[0] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v9->u64[1], v9->i64[0]);
  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v9->u64[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v117 = v9->u64[1];
    v9->i64[1] = *v8;
    *v8 = v117;
    v76 = v9->i64[0];
    v74 = v9->u64[1];
LABEL_164:
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *v8;
    *v8 = v79;
  }

  else
  {
    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v79;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v79);
    if (result)
    {
      v77 = v9->u64[1];
      v9->i64[1] = *v8;
      goto LABEL_103;
    }
  }

  return result;
}

{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].u64[1];
  v9 = v7;
  v124 = a2;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v9->i64[0]);
      if (result)
      {
        v77 = v9->i64[0];
        v9->i64[0] = *v8;
LABEL_103:
        *v8 = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v80 = &v9->u64[1];
      v82 = v9 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v9;
          do
          {
            v86 = v84->i64[0];
            v85 = v84->u64[1];
            v84 = v80;
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v85, v86);
            if (result)
            {
              v87 = v84->i64[0];
              v88 = v83;
              while (1)
              {
                *(&v9->i64[1] + v88) = *(v9->i64 + v88);
                if (!v88)
                {
                  break;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v87, *(&v9->u64[-1] + v88));
                v88 -= 8;
                if ((result & 1) == 0)
                {
                  i64 = (&v9->i64[1] + v88);
                  goto LABEL_125;
                }
              }

              i64 = v9->i64;
LABEL_125:
              *i64 = v87;
            }

            v80 = &v84->u64[1];
            v83 += 8;
          }

          while (&v84->u64[1] != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v119 = *v7;
          v118 = *(v7 + 8);
          v7 = v80;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v118, v119);
          if (result)
          {
            v120 = *v7;
            v121 = v7;
            do
            {
              v122 = v121;
              v123 = *--v121;
              *v122 = v123;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v120, *(v122 - 2));
            }

            while ((result & 1) != 0);
            *v121 = v120;
          }

          v80 = (v7 + 8);
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v90 = v11 >> 1;
        v91 = v11 >> 1;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = (v7 + 8 * v93);
            if (2 * v91 + 2 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = (v7 + 8 * v92);
            result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v90 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = (v7 + 8 * v98);
                v99 = 2 * v93 + 2;
                if (v99 < v10 && md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        v100 = v124;
        do
        {
          v101 = 0;
          v102 = *v7;
          v103 = v7;
          do
          {
            v104 = &v103[v101];
            v105 = v104 + 1;
            v106 = (2 * v101) | 1;
            v107 = 2 * v101 + 2;
            if (v107 >= v10)
            {
              v101 = (2 * v101) | 1;
            }

            else
            {
              v109 = v104[2];
              v108 = v104 + 2;
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v108 - 1), v109);
              if (result)
              {
                v105 = v108;
                v101 = v107;
              }

              else
              {
                v101 = v106;
              }
            }

            *v103 = *v105;
            v103 = v105;
          }

          while (v101 <= ((v10 - 2) >> 1));
          if (v105 == --v100)
          {
            *v105 = v102;
          }

          else
          {
            *v105 = *v100;
            *v100 = v102;
            v110 = (v105 - v7 + 8) >> 3;
            v111 = v110 < 2;
            v112 = v110 - 2;
            if (!v111)
            {
              v113 = v112 >> 1;
              v114 = (v7 + 8 * (v112 >> 1));
              result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v114, *v105);
              if (result)
              {
                v115 = *v105;
                do
                {
                  v116 = v114;
                  *v105 = *v114;
                  if (!v113)
                  {
                    break;
                  }

                  v113 = (v113 - 1) >> 1;
                  v114 = (v7 + 8 * v113);
                  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v114, v115);
                  v105 = v116;
                }

                while ((result & 1) != 0);
                *v116 = v115;
              }
            }
          }

          v111 = v10-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v12 = v10 >> 1;
    if (v10 < 0x81)
    {
      v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v7, *(v7 + 8 * v12));
      v17 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, *v7);
      if (v16)
      {
        v18 = *(v7 + 8 * v12);
        if (v17)
        {
          *(v7 + 8 * v12) = *v8;
          *v8 = v18;
        }

        else
        {
          *(v7 + 8 * v12) = *v7;
          *v7 = v18;
          if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v18))
          {
            v30 = *v7;
            *v7 = *v8;
            *v8 = v30;
          }
        }
      }

      else if (v17)
      {
        v21 = *v7;
        *v7 = *v8;
        *v8 = v21;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v7, *(v7 + 8 * v12)))
        {
          v22 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v7;
          *v7 = v22;
        }
      }

      goto LABEL_55;
    }

    v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v12), *v7);
    v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, *(v7 + 8 * v12));
    if (v13)
    {
      v15 = *v7;
      if (v14)
      {
        *v7 = *v8;
        *v8 = v15;
      }

      else
      {
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v15;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v15))
        {
          v23 = *(v7 + 8 * v12);
          *(v7 + 8 * v12) = *v8;
          *v8 = v23;
        }
      }
    }

    else if (v14)
    {
      v19 = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = *v8;
      *v8 = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v12), *v7))
      {
        v20 = *v7;
        *v7 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v20;
      }
    }

    v24 = v12 - 1;
    v25 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * (v12 - 1)), *(v7 + 8));
    v26 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-1].u64[0], *(v7 + 8 * (v12 - 1)));
    if (v25)
    {
      v27 = *(v7 + 8);
      if (v26)
      {
        *(v7 + 8) = a2[-1].i64[0];
        a2[-1].i64[0] = v27;
      }

      else
      {
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v27;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-1].u64[0], v27))
        {
          v31 = *(v7 + 8 * v24);
          *(v7 + 8 * v24) = a2[-1].i64[0];
          a2[-1].i64[0] = v31;
        }
      }
    }

    else if (v26)
    {
      v28 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = a2[-1].i64[0];
      a2[-1].i64[0] = v28;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v24), *(v7 + 8)))
      {
        v29 = *(v7 + 8);
        *(v7 + 8) = *(v7 + 8 * v24);
        *(v7 + 8 * v24) = v29;
      }
    }

    v32 = v12 + 1;
    v33 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * (v12 + 1)), *(v7 + 16));
    v34 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-2].u64[1], *(v7 + 8 * (v12 + 1)));
    if (v33)
    {
      v35 = *(v7 + 16);
      if (v34)
      {
        *(v7 + 16) = a2[-2].i64[1];
        a2[-2].i64[1] = v35;
      }

      else
      {
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v35;
        if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(a2[-2].u64[1], v35))
        {
          v38 = *(v7 + 8 * v32);
          *(v7 + 8 * v32) = a2[-2].i64[1];
          a2[-2].i64[1] = v38;
        }
      }
    }

    else if (v34)
    {
      v36 = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = a2[-2].i64[1];
      a2[-2].i64[1] = v36;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v32), *(v7 + 16)))
      {
        v37 = *(v7 + 16);
        *(v7 + 16) = *(v7 + 8 * v32);
        *(v7 + 8 * v32) = v37;
      }
    }

    v39 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v12), *(v7 + 8 * v24));
    v40 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v32), *(v7 + 8 * v12));
    if (!v39)
    {
      v42 = *(v7 + 8 * v12);
      if (!v40)
      {
        goto LABEL_54;
      }

      v43 = *(v7 + 8 * v32);
      *(v7 + 8 * v12) = v43;
      *(v7 + 8 * v32) = v42;
      v44 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v43, *(v7 + 8 * v24));
      v42 = *(v7 + 8 * v12);
      if (!v44)
      {
        goto LABEL_54;
      }

      v45 = *(v7 + 8 * v24);
      *(v7 + 8 * v24) = v42;
      *(v7 + 8 * v12) = v45;
      goto LABEL_53;
    }

    v41 = *(v7 + 8 * v24);
    if (v40)
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v32);
      *(v7 + 8 * v32) = v41;
      v42 = *(v7 + 8 * v12);
    }

    else
    {
      *(v7 + 8 * v24) = *(v7 + 8 * v12);
      *(v7 + 8 * v12) = v41;
      v46 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 + 8 * v32), v41);
      v42 = *(v7 + 8 * v12);
      if (v46)
      {
        v45 = *(v7 + 8 * v32);
        *(v7 + 8 * v12) = v45;
        *(v7 + 8 * v32) = v42;
LABEL_53:
        v42 = v45;
      }
    }

LABEL_54:
    v47 = *v7;
    *v7 = v42;
    *(v7 + 8 * v12) = v47;
LABEL_55:
    --a3;
    v48 = *v7;
    if ((a4 & 1) != 0 || (v49 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(v7 - 8), *v7), v48 = *v7, v49))
    {
      v50 = v7;
      do
      {
        v51 = v50;
        v52 = v50->u64[1];
        v50 = (v50 + 8);
      }

      while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v52, v48));
      v53 = a2;
      if (v51 == v7)
      {
        v53 = a2;
        do
        {
          if (v50 >= v53)
          {
            break;
          }

          v55 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v55, v48));
      }

      else
      {
        do
        {
          v54 = v53[-1].u64[1];
          v53 = (v53 - 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v54, v48));
      }

      if (v50 < v53)
      {
        v56 = v50;
        v57 = v53;
        do
        {
          v58 = v56->i64[0];
          v56->i64[0] = v57->i64[0];
          v57->i64[0] = v58;
          do
          {
            v51 = v56;
            v59 = v56->u64[1];
            v56 = (v56 + 8);
          }

          while (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v59, v48));
          do
          {
            v60 = v57[-1].u64[1];
            v57 = (v57 - 8);
          }

          while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v60, v48));
        }

        while (v56 < v57);
      }

      if (v51 != v7)
      {
        *v7 = v51->i64[0];
      }

      v51->i64[0] = v48;
      a2 = v124;
      if (v50 < v53)
      {
        goto LABEL_76;
      }

      v61 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **>(v7, v51);
      v9 = &v51->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **>(&v51->i64[1], v124);
      if (result)
      {
        a2 = v51;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_76:
        result = std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,false>(v7, v51, a3, a4 & 1);
        a4 = 0;
        v9 = &v51->u64[1];
      }
    }

    else
    {
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v7, *v8);
      if (result)
      {
        v9 = v7;
        do
        {
          v62 = v9->u64[1];
          v9 = (v9 + 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = v7 + 8;
        do
        {
          v9 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v63 += 8;
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v9->i64[0]);
        }

        while (!result);
      }

      v64 = a2;
      if (v9 < a2)
      {
        v64 = a2;
        do
        {
          v65 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v65);
        }

        while ((result & 1) != 0);
      }

      while (v9 < v64)
      {
        v66 = v9->i64[0];
        v9->i64[0] = v64->i64[0];
        v64->i64[0] = v66;
        do
        {
          v67 = v9->u64[1];
          v9 = (v9 + 8);
        }

        while (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v67));
        do
        {
          v68 = v64[-1].u64[1];
          v64 = (v64 - 8);
          result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v48, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = &v9[-1].u64[1];
      if (&v9[-1].u64[1] != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v48;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], v8);
    }

    if (v10 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1]);
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v9[1].u64[1]);
      if (!result)
      {
        return result;
      }

      v70 = v9[1].u64[1];
      v9[1].i64[1] = *v8;
      *v8 = v70;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v9[1].u64[1], v9[1].u64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v9[1].i64[0];
      v71 = v9[1].u64[1];
      v73 = v9->u64[1];
      v9[1].i64[0] = v71;
      v9[1].i64[1] = v72;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v9->i64[1];
      v74 = v9[1].u64[0];
      v76 = v9->i64[0];
      v9->i64[1] = v74;
      v9[1].i64[0] = v75;
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v78 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v9->u64[1], v9->i64[0]);
  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v9->u64[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v117 = v9->u64[1];
    v9->i64[1] = *v8;
    *v8 = v117;
    v76 = v9->i64[0];
    v74 = v9->u64[1];
LABEL_164:
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v74, v76);
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v79 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *v8;
    *v8 = v79;
  }

  else
  {
    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v79;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v8, v79);
    if (result)
    {
      v77 = v9->u64[1];
      v9->i64[1] = *v8;
      goto LABEL_103;
    }
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,false>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  i = v7;
LABEL_3:
  while (1)
  {
    v7 = i;
    v10 = a2 - i;
    if (v10 <= 2)
    {
      break;
    }

    switch(v10)
    {
      case 3:

        return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(i, i + 1, a2 - 1);
      case 4:
        result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(i, i + 1, i + 2);
        v80 = *v8;
        v81 = i[2];
        v82 = *(*v8 + 20);
        v83 = *(v81 + 20);
        if (v82 == v83)
        {
          v84 = *(v80 + 32);
          v85 = *(v81 + 32);
          if (v84 == v85)
          {
            if (v80 >= v81)
            {
              return result;
            }
          }

          else if (v84 <= v85)
          {
            return result;
          }
        }

        else if (v82 >= v83)
        {
          return result;
        }

        i[2] = v80;
        *v8 = v81;
        v174 = i[1];
        v173 = i[2];
        v175 = *(v173 + 20);
        v176 = *(v174 + 20);
        if (v175 == v176)
        {
          v177 = *(v173 + 32);
          v178 = *(v174 + 32);
          if (v177 == v178)
          {
            if (v173 >= v174)
            {
              return result;
            }
          }

          else if (v177 <= v178)
          {
            return result;
          }
        }

        else if (v175 >= v176)
        {
          return result;
        }

        i[1] = v173;
        i[2] = v174;
        v179 = *i;
        v180 = *(*i + 20);
        if (v175 == v180)
        {
          v181 = *(v173 + 32);
          v182 = *(v179 + 32);
          if (v181 == v182)
          {
            if (v173 >= v179)
            {
              return result;
            }
          }

          else if (v181 <= v182)
          {
            return result;
          }
        }

        else if (v175 >= v180)
        {
          return result;
        }

        *i = v173;
        i[1] = v179;
        return result;
      case 5:

        return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(i, i + 1, i + 2, i + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v86 = i + 1;
      v88 = i == a2 || v86 == a2;
      if ((a4 & 1) == 0)
      {
        if (v88)
        {
          return result;
        }

        while (1)
        {
          v160 = v7;
          v7 = v86;
          v162 = *v160;
          v161 = v160[1];
          v163 = *(v161 + 20);
          v164 = *(*v160 + 20);
          if (v163 == v164)
          {
            v165 = *(v161 + 32);
            v166 = *(v162 + 32);
            if (v165 == v166)
            {
              if (v161 < v162)
              {
                do
                {
                  while (1)
                  {
LABEL_275:
                    while (1)
                    {
                      v167 = v160;
                      v168 = v162;
                      v169 = *--v160;
                      v162 = v169;
                      v160[2] = v168;
                      v170 = *(v169 + 20);
                      if (v163 == v170)
                      {
                        break;
                      }

                      if (v163 >= v170)
                      {
                        goto LABEL_282;
                      }
                    }

                    v171 = *(v161 + 32);
                    v172 = *(v162 + 32);
                    if (v171 == v172)
                    {
                      break;
                    }

                    if (v171 <= v172)
                    {
                      goto LABEL_282;
                    }
                  }
                }

                while (v161 < v162);
LABEL_282:
                *v167 = v161;
              }
            }

            else if (v165 > v166)
            {
              goto LABEL_275;
            }
          }

          else if (v163 < v164)
          {
            goto LABEL_275;
          }

          v86 = v7 + 1;
          if (v7 + 1 == a2)
          {
            return result;
          }
        }
      }

      if (v88)
      {
        return result;
      }

      v89 = 0;
      v90 = i;
LABEL_164:
      v91 = v90;
      v90 = v86;
      v93 = *v91;
      v92 = v91[1];
      v94 = *(v92 + 20);
      v95 = *(*v91 + 20);
      if (v94 == v95)
      {
        v96 = *(v92 + 32);
        v97 = *(v93 + 32);
        if (v96 == v97)
        {
          if (v92 >= v93)
          {
            goto LABEL_184;
          }
        }

        else if (v96 <= v97)
        {
          goto LABEL_184;
        }
      }

      else if (v94 >= v95)
      {
        goto LABEL_184;
      }

      v91[1] = v93;
      v98 = i;
      if (v91 == i)
      {
        goto LABEL_183;
      }

      v99 = v89;
      while (1)
      {
        v100 = *(i + v99 - 8);
        v101 = *(v100 + 20);
        if (v94 == v101)
        {
          v102 = *(v92 + 32);
          v103 = *(v100 + 32);
          if (v102 == v103)
          {
            if (v92 >= v100)
            {
LABEL_182:
              v98 = v91;
LABEL_183:
              *v98 = v92;
LABEL_184:
              v86 = v90 + 1;
              v89 += 8;
              if (v90 + 1 == a2)
              {
                return result;
              }

              goto LABEL_164;
            }
          }

          else if (v102 <= v103)
          {
            v98 = (i + v99);
            goto LABEL_183;
          }
        }

        else if (v94 >= v101)
        {
          goto LABEL_182;
        }

        --v91;
        *(i + v99) = v100;
        v99 -= 8;
        if (!v99)
        {
          v98 = i;
          goto LABEL_183;
        }
      }
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v104 = (v10 - 2) >> 1;
      v105 = v104;
      while (2)
      {
        v106 = v105;
        if (v104 < v105)
        {
          goto LABEL_224;
        }

        v107 = (2 * v105) | 1;
        v108 = &i[v107];
        if (2 * v106 + 2 < v10)
        {
          v109 = *v108;
          v110 = v108[1];
          v111 = *(*v108 + 20);
          result = *(v110 + 20);
          if (v111 != result)
          {
            if (v111 >= result)
            {
              goto LABEL_196;
            }

            goto LABEL_195;
          }

          v112 = *(v109 + 32);
          v113 = *(v110 + 32);
          if (v112 != v113)
          {
            if (v112 <= v113)
            {
              goto LABEL_196;
            }

LABEL_195:
            ++v108;
            v107 = 2 * v106 + 2;
            goto LABEL_196;
          }

          if (v109 < v110)
          {
            goto LABEL_195;
          }
        }

LABEL_196:
        v114 = *v108;
        v115 = i[v106];
        v116 = *(*v108 + 20);
        v117 = *(v115 + 20);
        if (v116 == v117)
        {
          v118 = *(v114 + 32);
          v119 = *(v115 + 32);
          if (v118 == v119)
          {
            if (v114 < v115)
            {
              goto LABEL_224;
            }
          }

          else if (v118 > v119)
          {
            goto LABEL_224;
          }
        }

        else if (v116 < v117)
        {
          goto LABEL_224;
        }

        i[v106] = v114;
LABEL_204:
        if (v104 < v107)
        {
          goto LABEL_223;
        }

        v120 = v108;
        v121 = 2 * v107;
        v107 = (2 * v107) | 1;
        v108 = &i[v107];
        v122 = v121 + 2;
        if (v122 < v10)
        {
          result = *v108;
          v123 = v108[1];
          v124 = *(*v108 + 20);
          v125 = *(v123 + 20);
          if (v124 == v125)
          {
            v126 = *(result + 32);
            v127 = *(v123 + 32);
            if (v126 == v127)
            {
              if (result >= v123)
              {
                goto LABEL_212;
              }
            }

            else if (v126 <= v127)
            {
              goto LABEL_212;
            }

LABEL_211:
            ++v108;
            v107 = v122;
          }

          else if (v124 < v125)
          {
            goto LABEL_211;
          }
        }

LABEL_212:
        v128 = *v108;
        v129 = *(*v108 + 20);
        if (v129 == v117)
        {
          v130 = *(v128 + 32);
          v131 = *(v115 + 32);
          if (v130 == v131)
          {
            if (v128 < v115)
            {
LABEL_222:
              v108 = v120;
LABEL_223:
              *v108 = v115;
LABEL_224:
              v105 = v106 - 1;
              if (v106)
              {
                continue;
              }

              while (2)
              {
                v132 = 0;
                v133 = *i;
                v134 = i;
LABEL_229:
                v135 = v134;
                v136 = &v134[v132];
                v134 = v136 + 1;
                v137 = 2 * v132;
                v132 = (2 * v132) | 1;
                v138 = v137 + 2;
                if (v138 < v10)
                {
                  v141 = v136[2];
                  v139 = v136 + 2;
                  v140 = v141;
                  v142 = *(v139 - 1);
                  result = *(v142 + 20);
                  v143 = *(v141 + 20);
                  if (result != v143)
                  {
                    if (result >= v143)
                    {
                      goto LABEL_236;
                    }

                    goto LABEL_235;
                  }

                  v144 = *(v142 + 32);
                  v145 = *(v140 + 32);
                  if (v144 != v145)
                  {
                    if (v144 <= v145)
                    {
                      goto LABEL_236;
                    }

LABEL_235:
                    v134 = v139;
                    v132 = v138;
                    goto LABEL_236;
                  }

                  if (v142 < v140)
                  {
                    goto LABEL_235;
                  }
                }

LABEL_236:
                *v135 = *v134;
                if (v132 > ((v10 - 2) >> 1))
                {
                  if (v134 == --a2)
                  {
                    goto LABEL_259;
                  }

                  *v134 = *a2;
                  *a2 = v133;
                  v146 = (v134 - i + 8) >> 3;
                  v147 = v146 - 2;
                  if (v146 < 2)
                  {
                    goto LABEL_260;
                  }

                  v148 = v147 >> 1;
                  v149 = &i[v147 >> 1];
                  v150 = *v149;
                  v133 = *v134;
                  v151 = *(*v149 + 20);
                  v152 = *(*v134 + 20);
                  if (v151 == v152)
                  {
                    v153 = *(v150 + 32);
                    v154 = *(v133 + 32);
                    if (v153 == v154)
                    {
                      if (v150 >= v133)
                      {
                        goto LABEL_260;
                      }
                    }

                    else if (v153 <= v154)
                    {
                      goto LABEL_260;
                    }

LABEL_249:
                    *v134 = v150;
                    if (v147 >= 2)
                    {
                      do
                      {
                        v155 = v148 - 1;
                        v148 = (v148 - 1) >> 1;
                        v134 = &i[v148];
                        v156 = *v134;
                        v157 = *(*v134 + 20);
                        if (v157 == v152)
                        {
                          v158 = *(v156 + 32);
                          v159 = *(v133 + 32);
                          if (v158 == v159)
                          {
                            if (v156 >= v133)
                            {
                              goto LABEL_250;
                            }
                          }

                          else if (v158 <= v159)
                          {
                            goto LABEL_250;
                          }
                        }

                        else if (v157 >= v152)
                        {
                          goto LABEL_250;
                        }

                        *v149 = v156;
                        v149 = &i[v148];
                      }

                      while (v155 > 1);
                    }

                    else
                    {
LABEL_250:
                      v134 = v149;
                    }

LABEL_259:
                    *v134 = v133;
                    goto LABEL_260;
                  }

                  if (v151 < v152)
                  {
                    goto LABEL_249;
                  }

LABEL_260:
                  v18 = v10-- <= 2;
                  if (v18)
                  {
                    return result;
                  }

                  continue;
                }

                goto LABEL_229;
              }
            }
          }

          else if (v130 > v131)
          {
            goto LABEL_222;
          }
        }

        else if (v129 < v117)
        {
          goto LABEL_222;
        }

        break;
      }

      *v120 = v128;
      goto LABEL_204;
    }

    v11 = v10 >> 1;
    v12 = &i[v10 >> 1];
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(&v7[v10 >> 1], v7, a2 - 1);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(v7, &v7[v10 >> 1], a2 - 1);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(v7 + 1, v12 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(v7 + 2, &v7[v11 + 1], a2 - 3);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(v12 - 1, v12, &v7[v11 + 1]);
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
    }

    --a3;
    v14 = *v7;
    if (a4)
    {
      v15 = *(v14 + 20);
      goto LABEL_35;
    }

    v16 = *(v7 - 1);
    v15 = *(v16 + 20);
    v17 = *(v14 + 20);
    v18 = v15 < v17;
    if (v15 != v17)
    {
      v15 = *(v14 + 20);
      if (!v18)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

    v19 = *(v16 + 32);
    v20 = *(v14 + 32);
    if (v19 != v20)
    {
      if (v19 <= v20)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

    if (v16 >= v14)
    {
LABEL_20:
      v21 = *v8;
      v22 = *(*v8 + 20);
      if (v15 == v22)
      {
        v23 = *(v14 + 32);
        v24 = *(v21 + 32);
        if (v23 == v24)
        {
          if (v14 < v21)
          {
LABEL_97:
            for (i = v7 + 1; ; ++i)
            {
              v56 = *i;
              v57 = *(*i + 20);
              if (v15 == v57)
              {
                v58 = *(v14 + 32);
                v59 = *(v56 + 32);
                if (v58 == v59)
                {
                  if (v14 < v56)
                  {
                    goto LABEL_106;
                  }
                }

                else if (v58 > v59)
                {
                  goto LABEL_106;
                }
              }

              else if (v15 < v57)
              {
                goto LABEL_106;
              }
            }
          }
        }

        else if (v23 > v24)
        {
          goto LABEL_97;
        }
      }

      else if (v15 < v22)
      {
        goto LABEL_97;
      }

      for (i = v7 + 1; i < a2; ++i)
      {
        v25 = *i;
        v26 = *(*i + 20);
        if (v15 == v26)
        {
          v27 = *(v14 + 32);
          v28 = *(v25 + 32);
          if (v27 == v28)
          {
            if (v14 < v25)
            {
              break;
            }
          }

          else if (v27 > v28)
          {
            break;
          }
        }

        else if (v15 < v26)
        {
          break;
        }
      }

LABEL_106:
      j = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; --j)
        {
          if (v15 == v22)
          {
            v61 = *(v14 + 32);
            v62 = *(v21 + 32);
            if (v61 == v62)
            {
              if (v14 >= v21)
              {
                break;
              }
            }

            else if (v61 <= v62)
            {
              break;
            }
          }

          else if (v15 >= v22)
          {
            break;
          }

          v63 = *(j - 1);
          v21 = v63;
          v22 = *(v63 + 20);
        }
      }

      if (i >= j)
      {
        goto LABEL_134;
      }

      v64 = *i;
      v65 = *j;
      while (1)
      {
        *i++ = v65;
        *j = v64;
        while (1)
        {
          v64 = *i;
          v66 = *(*i + 20);
          if (v15 != v66)
          {
            break;
          }

          v67 = *(v14 + 32);
          v68 = *(v64 + 32);
          if (v67 == v68)
          {
            if (v14 < v64)
            {
              goto LABEL_130;
            }
          }

          else if (v67 > v68)
          {
            goto LABEL_130;
          }

LABEL_126:
          ++i;
        }

        if (v15 >= v66)
        {
          goto LABEL_126;
        }

        do
        {
          while (1)
          {
LABEL_130:
            while (1)
            {
              v69 = *--j;
              v65 = v69;
              v70 = *(v69 + 20);
              if (v15 == v70)
              {
                break;
              }

              if (v15 >= v70)
              {
                goto LABEL_133;
              }
            }

            v71 = *(v14 + 32);
            v72 = *(v65 + 32);
            if (v71 != v72)
            {
              break;
            }

            if (v14 >= v65)
            {
              goto LABEL_133;
            }
          }
        }

        while (v71 > v72);
LABEL_133:
        if (i >= j)
        {
LABEL_134:
          v73 = i - 1;
          if (i - 1 != v7)
          {
            *v7 = *v73;
          }

          a4 = 0;
          *v73 = v14;
          goto LABEL_3;
        }
      }
    }

LABEL_35:
    for (k = (v7 + 1); ; k += 8)
    {
      v30 = *k;
      v31 = *(*k + 20);
      if (v31 == v15)
      {
        break;
      }

      if (v31 >= v15)
      {
        goto LABEL_44;
      }

LABEL_43:
      ;
    }

    v32 = *(v30 + 32);
    v33 = *(v14 + 32);
    if (v32 != v33)
    {
      if (v32 <= v33)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    if (v30 < v14)
    {
      goto LABEL_43;
    }

LABEL_44:
    v34 = (k - 8);
    m = a2 - 1;
    if ((k - 8) != v7)
    {
      while (1)
      {
        v36 = *m;
        v37 = *(*m + 20);
        if (v37 == v15)
        {
          v38 = *(v36 + 32);
          v39 = *(v14 + 32);
          if (v38 == v39)
          {
            if (v36 < v14)
            {
              goto LABEL_68;
            }
          }

          else if (v38 > v39)
          {
            goto LABEL_68;
          }
        }

        else if (v37 < v15)
        {
          goto LABEL_68;
        }

        --m;
      }
    }

    m = a2;
    if (k < a2)
    {
      for (m = a2 - 1; ; --m)
      {
        v40 = *m;
        v41 = *(*m + 20);
        if (v41 == v15)
        {
          v42 = *(v40 + 32);
          v43 = *(v14 + 32);
          if (v42 == v43)
          {
            if (v40 < v14 || k >= m)
            {
              break;
            }
          }

          else if (k >= m || v42 > v43)
          {
            break;
          }
        }

        else if (k >= m || v41 < v15)
        {
          break;
        }
      }
    }

LABEL_68:
    if (k >= m)
    {
      goto LABEL_88;
    }

    v45 = *m;
    v46 = k;
    v47 = m;
    while (2)
    {
      *v46 = v45;
      v46 += 8;
      *v47 = v30;
      while (2)
      {
        v30 = *v46;
        v48 = *(*v46 + 20);
        if (v48 != v15)
        {
          if (v48 >= v15)
          {
            break;
          }

          goto LABEL_78;
        }

        v49 = *(v30 + 32);
        v50 = *(v14 + 32);
        if (v49 != v50)
        {
          if (v49 <= v50)
          {
            break;
          }

          goto LABEL_78;
        }

        if (v30 < v14)
        {
LABEL_78:
          v46 += 8;
          continue;
        }

        break;
      }

      v34 = (v46 - 8);
      do
      {
        while (1)
        {
          while (1)
          {
            v51 = *--v47;
            v45 = v51;
            v52 = *(v51 + 20);
            if (v52 == v15)
            {
              break;
            }

            if (v52 < v15)
            {
              goto LABEL_87;
            }
          }

          v53 = *(v45 + 32);
          v54 = *(v14 + 32);
          if (v53 == v54)
          {
            break;
          }

          if (v53 > v54)
          {
            goto LABEL_87;
          }
        }
      }

      while (v45 >= v14);
LABEL_87:
      if (v46 < v47)
      {
        continue;
      }

      break;
    }

LABEL_88:
    if (v34 != v7)
    {
      *v7 = *v34;
    }

    *v34 = v14;
    if (k < m)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,false>(v7, v34, a3, a4 & 1);
      a4 = 0;
      i = v34 + 1;
    }

    else
    {
      v55 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **>(v7, v34);
      i = v34 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **>(v34 + 1, a2);
      if (result)
      {
        a2 = v34;
        if (v55)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v55)
      {
        goto LABEL_93;
      }
    }
  }

  if (v10 < 2)
  {
    return result;
  }

  if (v10 != 2)
  {
    goto LABEL_10;
  }

  v74 = *v8;
  v75 = *i;
  v76 = *(*v8 + 20);
  v77 = *(*i + 20);
  if (v76 == v77)
  {
    v78 = *(v74 + 32);
    v79 = *(v75 + 32);
    if (v78 == v79)
    {
      if (v74 >= v75)
      {
        return result;
      }
    }

    else if (v78 <= v79)
    {
      return result;
    }
  }

  else if (v76 >= v77)
  {
    return result;
  }

  *i = v74;
  *v8 = v75;
  return result;
}

uint64_t *std::vector<md::RoadPosition *>::__assign_with_size[abi:nn200100]<std::__wrap_iter<md::RoadPosition **>,std::__wrap_iter<md::RoadPosition **>>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gdc::Registry *>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,md::RoadPosition **,false>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v8;
        if (v70 < *v8)
        {
          *v8 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v75 = v8 + 1;
      v76 = v8[1];
      v77 = v8 + 2;
      v78 = v8[2];
      v79 = *v8;
      if (v76 >= *v8)
      {
        if (v78 >= v76)
        {
          goto LABEL_184;
        }

        *v75 = v78;
        *v77 = v76;
        v80 = v8;
        v81 = v8 + 1;
        result = v76;
        if (v78 < v79)
        {
          goto LABEL_177;
        }
      }

      else
      {
        v80 = v8;
        v81 = v8 + 2;
        result = *v8;
        if (v78 >= v76)
        {
          *v8 = v76;
          v8[1] = v79;
          v80 = v8 + 1;
          v81 = v8 + 2;
          result = v79;
          if (v78 >= v79)
          {
LABEL_184:
            v76 = v78;
            goto LABEL_185;
          }
        }

LABEL_177:
        *v80 = v78;
        *v81 = v79;
        v76 = result;
      }

LABEL_185:
      v123 = *(a2 - 1);
      if (v123 < v76)
      {
        *v77 = v123;
        *(a2 - 1) = v76;
        v124 = *v77;
        v125 = *v75;
        if (v124 < v125)
        {
          v8[1] = v124;
          v8[2] = v125;
          v126 = *v8;
          if (v124 < *v8)
          {
            *v8 = v124;
            v8[1] = v126;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v61 = v8 + 1;
      v62 = v8[1];
      v64 = v8 + 2;
      v63 = v8[2];
      v65 = *v8;
      if (v62 >= *v8)
      {
        if (v63 >= v62)
        {
          v68 = *v8;
          v65 = v8[1];
        }

        else
        {
          v66 = v8;
          v67 = v8 + 1;
          *v61 = v63;
          *v64 = v62;
          v68 = v63;
          result = v65;
          v69 = v62;
          if (v63 < v65)
          {
            goto LABEL_190;
          }

          v68 = v65;
          v65 = v63;
          v63 = v62;
        }
      }

      else
      {
        if (v63 < v62)
        {
          v66 = v8;
          v67 = v8 + 2;
          v68 = v8[2];
          result = v8[1];
          v69 = *v8;
          goto LABEL_190;
        }

        v66 = v8 + 1;
        v67 = v8 + 2;
        *v8 = v62;
        v8[1] = v65;
        v68 = v62;
        result = v63;
        v69 = v65;
        if (v63 >= v65)
        {
          v68 = v62;
        }

        else
        {
LABEL_190:
          *v66 = v63;
          *v67 = v65;
          v65 = result;
          v63 = v69;
        }
      }

      v128 = v8[3];
      if (v128 >= v63)
      {
        v63 = v8[3];
      }

      else
      {
        v8[2] = v128;
        v8[3] = v63;
        if (v128 < v65)
        {
          *v61 = v128;
          *v64 = v65;
          if (v128 < v68)
          {
            *v8 = v128;
            v8[1] = v68;
          }
        }
      }

      v129 = *(a2 - 1);
      if (v129 >= v63)
      {
        return result;
      }

      v8[3] = v129;
      *(a2 - 1) = v63;
      v130 = v8[2];
      v120 = v8[3];
      if (v120 >= v130)
      {
        return result;
      }

      v8[2] = v120;
      v8[3] = v130;
      v131 = v8[1];
      if (v120 >= v131)
      {
        return result;
      }

      v8[1] = v120;
      v8[2] = v131;
LABEL_205:
      v132 = *v8;
      if (v120 < *v8)
      {
        *v8 = v120;
        v8[1] = v132;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v82 = v8 + 1;
      v84 = v8 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 8;
          v86 = v8;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            if (v87 < v88)
            {
              v89 = v85;
              while (1)
              {
                *(v8 + v89) = v88;
                v90 = v89 - 8;
                if (v89 == 8)
                {
                  break;
                }

                v88 = *(v8 + v89 - 16);
                v89 -= 8;
                if (v87 >= v88)
                {
                  v91 = (v8 + v90);
                  goto LABEL_126;
                }
              }

              v91 = v8;
LABEL_126:
              *v91 = v87;
            }

            v82 = v86 + 1;
            v85 += 8;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v122 = *v7;
          v121 = v7[1];
          v7 = v82;
          if (v121 < v122)
          {
            do
            {
              *v82 = v122;
              v122 = *(v82 - 2);
              --v82;
            }

            while (v121 < v122);
            *v82 = v121;
          }

          v82 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v92 = (v9 - 2) >> 1;
        v93 = v92;
        do
        {
          v94 = v93;
          if (v92 >= v93)
          {
            v95 = (2 * v93) | 1;
            v96 = &v8[v95];
            if (2 * v94 + 2 >= v9)
            {
              v97 = *v96;
            }

            else
            {
              v97 = v96[1];
              v98 = *v96 >= v97;
              if (*v96 < v97)
              {
                ++v96;
              }

              else
              {
                v97 = *v96;
              }

              if (!v98)
              {
                v95 = 2 * v94 + 2;
              }
            }

            v99 = &v8[v94];
            v100 = *v99;
            if (v97 >= *v99)
            {
              do
              {
                *v99 = v97;
                v99 = v96;
                if (v92 < v95)
                {
                  break;
                }

                v101 = (2 * v95) | 1;
                v96 = &v8[v101];
                v95 = 2 * v95 + 2;
                if (v95 >= v9)
                {
                  v97 = *v96;
                  v95 = v101;
                }

                else
                {
                  v97 = *v96;
                  result = v96[1];
                  if (*v96 >= result)
                  {
                    v95 = v101;
                  }

                  else
                  {
                    v97 = v96[1];
                    ++v96;
                  }
                }
              }

              while (v97 >= v100);
              *v99 = v100;
            }
          }

          v93 = v94 - 1;
        }

        while (v94);
        do
        {
          v102 = 0;
          v103 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v102];
            v106 = v105 + 1;
            v107 = (2 * v102) | 1;
            v102 = 2 * v102 + 2;
            if (v102 >= v9)
            {
              v108 = *v106;
              v102 = v107;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              v108 = v110;
              v111 = *(v109 - 1);
              v112 = v111 >= v110;
              if (v111 < v110)
              {
                v106 = v109;
              }

              else
              {
                v108 = *(v109 - 1);
              }

              if (v112)
              {
                v102 = v107;
              }
            }

            *v104 = v108;
            v104 = v106;
          }

          while (v102 <= ((v9 - 2) >> 1));
          if (v106 == --a2)
          {
            *v106 = v103;
          }

          else
          {
            *v106 = *a2;
            *a2 = v103;
            v113 = (v106 - v8 + 8) >> 3;
            v114 = v113 < 2;
            v115 = v113 - 2;
            if (!v114)
            {
              v116 = v115 >> 1;
              v117 = &v8[v116];
              v118 = *v117;
              v119 = *v106;
              if (*v117 < *v106)
              {
                do
                {
                  *v106 = v118;
                  v106 = v117;
                  if (!v116)
                  {
                    break;
                  }

                  v116 = (v116 - 1) >> 1;
                  v117 = &v8[v116];
                  v118 = *v117;
                }

                while (*v117 < v119);
                *v106 = v119;
              }
            }
          }

          v114 = v9-- <= 2;
        }

        while (!v114);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v17 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v12 < v13)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v19 = *(a2 - 1);
        if (v19 < v14)
        {
          *v10 = v19;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v20 = v10 - 1;
      v21 = *(v10 - 1);
      v22 = v8[1];
      v23 = *(a2 - 2);
      if (v21 >= v22)
      {
        if (v23 < v21)
        {
          *v20 = v23;
          *(a2 - 2) = v21;
          v24 = v8[1];
          if (*v20 < v24)
          {
            v8[1] = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v23 < v21)
        {
          v8[1] = v23;
          goto LABEL_39;
        }

        v8[1] = v21;
        *v20 = v22;
        v26 = *(a2 - 2);
        if (v26 < v22)
        {
          *v20 = v26;
LABEL_39:
          *(a2 - 2) = v22;
        }
      }

      v29 = v10[1];
      v27 = v10 + 1;
      v28 = v29;
      v30 = v8[2];
      v31 = *(a2 - 3);
      if (v29 >= v30)
      {
        if (v31 < v28)
        {
          *v27 = v31;
          *(a2 - 3) = v28;
          v32 = v8[2];
          if (*v27 < v32)
          {
            v8[2] = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[2] = v31;
          goto LABEL_48;
        }

        v8[2] = v28;
        *v27 = v30;
        v33 = *(a2 - 3);
        if (v33 < v30)
        {
          *v27 = v33;
LABEL_48:
          *(a2 - 3) = v30;
        }
      }

      v34 = *v11;
      v35 = *v20;
      v36 = *v27;
      if (*v11 >= *v20)
      {
        if (v36 >= v34)
        {
          goto LABEL_56;
        }

        *v11 = v36;
        *v27 = v34;
        v27 = v11;
        v34 = v35;
        if (v36 >= v35)
        {
          v34 = v36;
          goto LABEL_56;
        }
      }

      else if (v36 >= v34)
      {
        *v20 = v34;
        *v11 = v35;
        v20 = v11;
        v34 = v36;
        if (v36 >= v35)
        {
          v34 = v35;
LABEL_56:
          v37 = *v8;
          *v8 = v34;
          *v11 = v37;
          goto LABEL_57;
        }
      }

      *v20 = v36;
      *v27 = v35;
      goto LABEL_56;
    }

    v15 = *v8;
    v16 = *v11;
    if (*v8 >= *v11)
    {
      if (v12 < v15)
      {
        *v8 = v12;
        *(a2 - 1) = v15;
        v18 = *v11;
        if (*v8 < *v11)
        {
          *v11 = *v8;
          *v8 = v18;
        }
      }

      goto LABEL_57;
    }

    if (v12 >= v15)
    {
      *v11 = v15;
      *v8 = v16;
      v25 = *(a2 - 1);
      if (v25 >= v16)
      {
        goto LABEL_57;
      }

      *v8 = v25;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v16;
LABEL_57:
    --a3;
    v38 = *v8;
    v39 = v8;
    if ((a4 & 1) != 0 || (v39 = v8, *(v8 - 1) < v38))
    {
      do
      {
        v40 = v39;
        v42 = v39[1];
        ++v39;
        v41 = v42;
      }

      while (v42 < v38);
      v43 = a2;
      if (v40 == v8)
      {
        v43 = a2;
        do
        {
          if (v39 >= v43)
          {
            break;
          }

          v45 = *--v43;
        }

        while (v45 >= v38);
      }

      else
      {
        do
        {
          v44 = *--v43;
        }

        while (v44 >= v38);
      }

      if (v39 < v43)
      {
        v46 = *v43;
        v47 = v39;
        v48 = v43;
        do
        {
          *v47 = v46;
          *v48 = v41;
          do
          {
            v40 = v47;
            v49 = v47[1];
            ++v47;
            v41 = v49;
          }

          while (v49 < v38);
          do
          {
            v50 = *--v48;
            v46 = v50;
          }

          while (v50 >= v38);
        }

        while (v47 < v48);
      }

      if (v40 != v8)
      {
        *v8 = *v40;
      }

      *v40 = v38;
      if (v39 < v43)
      {
        goto LABEL_77;
      }

      v51 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::RoadPosition **>(v8, v40);
      v8 = v40 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::RoadPosition **>(v40 + 1, a2);
      if (result)
      {
        a2 = v40;
        if (!v51)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v51)
      {
LABEL_77:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,md::RoadPosition **,false>(v7, v40, a3, a4 & 1);
        a4 = 0;
        v8 = v40 + 1;
      }
    }

    else
    {
      if (v38 >= *(a2 - 1))
      {
        v53 = (v8 + 1);
        do
        {
          v8 = v53;
          if (v53 >= a2)
          {
            break;
          }

          v53 += 8;
        }

        while (v38 >= *v8);
      }

      else
      {
        do
        {
          v52 = v8[1];
          ++v8;
        }

        while (v38 >= v52);
      }

      v54 = a2;
      if (v8 < a2)
      {
        v54 = a2;
        do
        {
          v55 = *--v54;
        }

        while (v38 < v55);
      }

      if (v8 < v54)
      {
        v56 = *v8;
        v57 = *v54;
        do
        {
          *v8 = v57;
          *v54 = v56;
          do
          {
            v58 = v8[1];
            ++v8;
            v56 = v58;
          }

          while (v38 >= v58);
          do
          {
            v59 = *--v54;
            v57 = v59;
          }

          while (v38 < v59);
        }

        while (v8 < v54);
      }

      v60 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v60;
      }

      a4 = 0;
      *v60 = v38;
    }
  }

  v72 = *v8;
  v73 = v8[1];
  v74 = *(a2 - 1);
  if (v73 >= *v8)
  {
    if (v74 >= v73)
    {
      return result;
    }

    v8[1] = v74;
    *(a2 - 1) = v73;
    v120 = v8[1];
    goto LABEL_205;
  }

  if (v74 >= v73)
  {
    *v8 = v73;
    v8[1] = v72;
    v127 = *(a2 - 1);
    if (v127 >= v72)
    {
      return result;
    }

    v8[1] = v127;
  }

  else
  {
    *v8 = v74;
  }

  *(a2 - 1) = v72;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,md::RoadPosition **>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*a2 + 20);
  v6 = *(*result + 20);
  if (v5 != v6)
  {
    if (v5 >= v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v13 = *a3;
    v14 = *(*a3 + 20);
    if (v14 == v5)
    {
      v15 = *(v13 + 32);
      v16 = *(v3 + 32);
      if (v15 == v16)
      {
        if (v13 >= v3)
        {
          goto LABEL_12;
        }
      }

      else if (v15 <= v16)
      {
LABEL_12:
        *result = v3;
        *a2 = v4;
        v17 = *a3;
        v18 = *(*a3 + 20);
        if (v18 == v6)
        {
          v19 = *(v17 + 32);
          v20 = *(v4 + 32);
          if (v19 == v20)
          {
            if (v17 >= v4)
            {
              return result;
            }
          }

          else if (v19 <= v20)
          {
            return result;
          }
        }

        else if (v18 >= v6)
        {
          return result;
        }

        *a2 = v17;
LABEL_35:
        *a3 = v4;
        return result;
      }
    }

    else if (v14 >= v5)
    {
      goto LABEL_12;
    }

    *result = v13;
    goto LABEL_35;
  }

  v7 = *(v3 + 32);
  v8 = *(v4 + 32);
  if (v7 == v8)
  {
    if (v3 >= v4)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (v7 > v8)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = *a3;
  v10 = *(*a3 + 20);
  if (v10 == v5)
  {
    v11 = *(v9 + 32);
    v12 = *(v3 + 32);
    if (v11 == v12)
    {
      if (v9 >= v3)
      {
        return result;
      }
    }

    else if (v11 <= v12)
    {
      return result;
    }
  }

  else if (v10 >= v5)
  {
    return result;
  }

  *a2 = v9;
  *a3 = v3;
  v21 = *a2;
  v22 = *result;
  v23 = *(*a2 + 20);
  v24 = *(*result + 20);
  if (v23 != v24)
  {
    if (v23 >= v24)
    {
      return result;
    }

    goto LABEL_37;
  }

  v25 = *(v21 + 32);
  v26 = *(v22 + 32);
  if (v25 == v26)
  {
    if (v21 < v22)
    {
LABEL_37:
      *result = v21;
      *a2 = v22;
    }
  }

  else if (v25 > v26)
  {
    goto LABEL_37;
  }

  return result;
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  v13 = *(*a4 + 20);
  v14 = *(*a3 + 20);
  if (v13 == v14)
  {
    v15 = *(v11 + 32);
    v16 = *(v12 + 32);
    if (v15 == v16)
    {
      if (v11 >= v12)
      {
        goto LABEL_21;
      }
    }

    else if (v15 <= v16)
    {
      goto LABEL_21;
    }
  }

  else if (v13 >= v14)
  {
    goto LABEL_21;
  }

  *a3 = v11;
  *a4 = v12;
  v17 = *a3;
  v18 = *a2;
  v19 = *(*a3 + 20);
  v20 = *(*a2 + 20);
  if (v19 == v20)
  {
    v21 = *(v17 + 32);
    v22 = *(v18 + 32);
    if (v21 == v22)
    {
      if (v17 >= v18)
      {
        goto LABEL_21;
      }
    }

    else if (v21 <= v22)
    {
      goto LABEL_21;
    }
  }

  else if (v19 >= v20)
  {
    goto LABEL_21;
  }

  *a2 = v17;
  *a3 = v18;
  v23 = *a2;
  v24 = *a1;
  v25 = *(*a2 + 20);
  v26 = *(*a1 + 20);
  if (v25 != v26)
  {
    if (v25 >= v26)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v27 = *(v23 + 32);
  v28 = *(v24 + 32);
  if (v27 != v28)
  {
    if (v27 <= v28)
    {
      goto LABEL_21;
    }

LABEL_20:
    *a1 = v23;
    *a2 = v24;
    goto LABEL_21;
  }

  if (v23 < v24)
  {
    goto LABEL_20;
  }

LABEL_21:
  v29 = *a5;
  v30 = *a4;
  v31 = *(*a5 + 20);
  v32 = *(*a4 + 20);
  if (v31 == v32)
  {
    v33 = *(v29 + 32);
    v34 = *(v30 + 32);
    if (v33 == v34)
    {
      if (v29 >= v30)
      {
        return result;
      }
    }

    else if (v33 <= v34)
    {
      return result;
    }
  }

  else if (v31 >= v32)
  {
    return result;
  }

  *a4 = v29;
  *a5 = v30;
  v35 = *a4;
  v36 = *a3;
  v37 = *(*a4 + 20);
  v38 = *(*a3 + 20);
  if (v37 == v38)
  {
    v39 = *(v35 + 32);
    v40 = *(v36 + 32);
    if (v39 == v40)
    {
      if (v35 >= v36)
      {
        return result;
      }
    }

    else if (v39 <= v40)
    {
      return result;
    }
  }

  else if (v37 >= v38)
  {
    return result;
  }

  *a3 = v35;
  *a4 = v36;
  v41 = *a3;
  v42 = *a2;
  v43 = *(*a3 + 20);
  v44 = *(*a2 + 20);
  if (v43 == v44)
  {
    v45 = *(v41 + 32);
    v46 = *(v42 + 32);
    if (v45 == v46)
    {
      if (v41 >= v42)
      {
        return result;
      }
    }

    else if (v45 <= v46)
    {
      return result;
    }
  }

  else if (v43 >= v44)
  {
    return result;
  }

  *a2 = v41;
  *a3 = v42;
  v47 = *a2;
  v48 = *a1;
  v49 = *(*a2 + 20);
  v50 = *(*a1 + 20);
  if (v49 == v50)
  {
    v51 = *(v47 + 32);
    v52 = *(v48 + 32);
    if (v51 == v52)
    {
      if (v47 >= v48)
      {
        return result;
      }
    }

    else if (v51 <= v52)
    {
      return result;
    }
  }

  else if (v49 >= v50)
  {
    return result;
  }

  *a1 = v47;
  *a2 = v48;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **>(unint64_t *a1, unint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a1 + 2);
        v26 = *(a2 - 1);
        v27 = a1[2];
        v28 = *(v26 + 20);
        v29 = *(v27 + 20);
        if (v28 == v29)
        {
          v30 = *(v26 + 32);
          v31 = *(v27 + 32);
          if (v30 == v31)
          {
            if (v26 >= v27)
            {
              return 1;
            }
          }

          else if (v30 <= v31)
          {
            return 1;
          }
        }

        else if (v28 >= v29)
        {
          return 1;
        }

        a1[2] = v26;
        *(a2 - 1) = v27;
        v34 = a1[1];
        v33 = a1[2];
        v35 = *(v33 + 20);
        v36 = *(v34 + 20);
        if (v35 == v36)
        {
          v37 = *(v33 + 32);
          v38 = *(v34 + 32);
          if (v37 == v38)
          {
            if (v33 >= v34)
            {
              return 1;
            }
          }

          else if (v37 <= v38)
          {
            return 1;
          }
        }

        else if (v35 >= v36)
        {
          return 1;
        }

        a1[1] = v33;
        a1[2] = v34;
        v39 = *a1;
        v40 = *(*a1 + 20);
        if (v35 == v40)
        {
          v41 = *(v33 + 32);
          v42 = *(v39 + 32);
          if (v41 == v42)
          {
            if (v33 >= v39)
            {
              return 1;
            }
          }

          else if (v41 <= v42)
          {
            return 1;
          }
        }

        else if (v35 >= v40)
        {
          return 1;
        }

        *a1 = v33;
        a1[1] = v39;
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }

LABEL_13:
    v11 = a1 + 2;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,0>(a1, a1 + 1, a1 + 2);
    v12 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *v12;
      v16 = *v11;
      v17 = *(*v12 + 20);
      v18 = *(*v11 + 20);
      if (v17 == v18)
      {
        v19 = *(v15 + 32);
        v20 = *(v16 + 32);
        if (v19 == v20)
        {
          if (v15 >= v16)
          {
            goto LABEL_33;
          }
        }

        else if (v19 <= v20)
        {
          goto LABEL_33;
        }
      }

      else if (v17 >= v18)
      {
        goto LABEL_33;
      }

      *v12 = v16;
      v21 = v13;
      do
      {
        v22 = *(a1 + v21 + 8);
        v23 = *(v22 + 20);
        if (v17 == v23)
        {
          v24 = *(v15 + 32);
          v25 = *(v22 + 32);
          if (v24 == v25)
          {
            if (v15 >= v22)
            {
              goto LABEL_32;
            }
          }

          else if (v24 <= v25)
          {
            v11 = (a1 + v21 + 16);
            goto LABEL_32;
          }
        }

        else if (v17 >= v23)
        {
          goto LABEL_32;
        }

        --v11;
        *(a1 + v21 + 16) = v22;
        v21 -= 8;
      }

      while (v21 != -16);
      v11 = a1;
LABEL_32:
      *v11 = v15;
      if (++v14 == 8)
      {
        return v12 + 1 == a2;
      }

LABEL_33:
      v11 = v12;
      v13 += 8;
      if (++v12 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  v7 = *(v5 + 20);
  v8 = *(*a1 + 20);
  if (v7 != v8)
  {
    if (v7 >= v8)
    {
      return 1;
    }

    goto LABEL_45;
  }

  v9 = *(v5 + 32);
  v10 = *(v6 + 32);
  if (v9 != v10)
  {
    if (v9 <= v10)
    {
      return 1;
    }

    goto LABEL_45;
  }

  if (v5 < v6)
  {
LABEL_45:
    *a1 = v5;
    *(a2 - 1) = v6;
  }

  return 1;
}

BOOL md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(unint64_t a1, unint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v5 = *(md::LabelPoint::geocentricPoint(v4) + 1);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *(md::LabelPoint::geocentricPoint(v6) + 1))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *(md::LabelPoint::geocentricPoint(v8) + 1);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *(md::LabelPoint::geocentricPoint(v10) + 1);
}

{
  v4 = (*(*a1 + 56))(a1);
  v5 = *(md::LabelPoint::mercatorPoint(v4) + 8);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *(md::LabelPoint::mercatorPoint(v6) + 8))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *(md::LabelPoint::mercatorPoint(v8) + 8);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *(md::LabelPoint::mercatorPoint(v10) + 8);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **>(uint64_t a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 8));
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v15;
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v7, v9))
        {
          return 1;
        }

        v11 = *(a1 + 8);
        v10 = *(a1 + 16);
        v12 = *a1;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 16), *(a1 + 8));
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    else
    {
      v24 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v24, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = *a1;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = a1 + v29;
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v28, *(v30 + 8)))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 8));
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v15;
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v7, v9))
        {
          return 1;
        }

        v11 = *(a1 + 8);
        v10 = *(a1 + 16);
        v12 = *a1;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*(a1 + 16), *(a1 + 8));
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    else
    {
      v24 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v24, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = *a1;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = a1 + v29;
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY::operator()(v28, *(v30 + 8)))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

BOOL md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(unint64_t a1, unint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  v5 = *md::LabelPoint::geocentricPoint(v4);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *md::LabelPoint::geocentricPoint(v6))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *md::LabelPoint::geocentricPoint(v8);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *md::LabelPoint::geocentricPoint(v10);
}

{
  v4 = (*(*a1 + 56))(a1);
  v5 = *md::LabelPoint::mercatorPoint(v4);
  v6 = (*(*a2 + 56))(a2);
  if (v5 == *md::LabelPoint::mercatorPoint(v6))
  {
    return a1 < a2;
  }

  v8 = (*(*a1 + 56))(a1);
  v9 = *md::LabelPoint::mercatorPoint(v8);
  v10 = (*(*a2 + 56))(a2);
  return v9 < *md::LabelPoint::mercatorPoint(v10);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

{
  v8 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
  v9 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **>(uint64_t a1, unint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 8));
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v15;
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v7, v9))
        {
          return 1;
        }

        v11 = *(a1 + 8);
        v10 = *(a1 + 16);
        v12 = *a1;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 16), *(a1 + 8));
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    else
    {
      v24 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v24, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = *a1;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = a1 + v29;
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v28, *(v30 + 8)))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
        v14 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 8));
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
            return 1;
          }

          *a1 = *(a1 + 8);
          *(a1 + 8) = v15;
          if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), v15))
          {
            return 1;
          }

          v5 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = *(a1 + 8);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *(a1 + 24)))
        {
          return 1;
        }

        v6 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 24), *(a1 + 16)))
        {
          return 1;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = *(a1 + 8);
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v7, v9))
        {
          return 1;
        }

        v11 = *(a1 + 8);
        v10 = *(a1 + 16);
        v12 = *a1;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        break;
      default:
        goto LABEL_17;
    }

    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_17:
  v16 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 8), *a1);
  v17 = (a1 + 16);
  v18 = md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*(a1 + 16), *(a1 + 8));
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v19;
    }

    else
    {
      v24 = *(a1 + 16);
      *a1 = *(a1 + 8);
      *(a1 + 8) = v19;
      if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v24, v19))
      {
        *(a1 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = *a1;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = (a1 + 24);
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if (md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(*v25, *v17))
    {
      v28 = *v25;
      v29 = v26;
      while (1)
      {
        v30 = a1 + v29;
        *(a1 + v29 + 24) = *(a1 + v29 + 16);
        if (v29 == -16)
        {
          break;
        }

        v29 -= 8;
        if (!md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX::operator()(v28, *(v30 + 8)))
        {
          v31 = (a1 + v29 + 24);
          goto LABEL_40;
        }
      }

      v31 = a1;
LABEL_40:
      *v31 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v17 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(md::LabelLineResolvedPosition const&,double)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

double metricsForPositionType(int a1, double *a2)
{
  result = 0.0;
  if (a1 > 3)
  {
    if (a1 <= 6)
    {
      if ((a1 - 4) < 2)
      {
        return a2[6];
      }

      if (a1 == 6)
      {
        return a2[4];
      }

      return result;
    }

    if (a1 == 7)
    {
      v3 = a2[3];
      v4 = a2[4];
    }

    else
    {
      if (a1 != 8)
      {
        return result;
      }

      v3 = a2[6];
      v4 = a2[3];
    }

    return v4 + v3;
  }

  switch(a1)
  {
    case 1:
      return a2[3];
    case 2:
      v3 = a2[3];
      v4 = a2[5];
      return v4 + v3;
    case 3:
      return a2[5];
  }

  return result;
}

double std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(uint64_t a1, uint64_t a2, double a3)
{
  v14 = a3;
  if (a1)
  {
    (*(*a1 + 48))(a1, a2, &v14);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return md::LineLabelPlacer::addPositionIfValid(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  }

  return result;
}

double md::LineLabelPlacer::addPositionIfValid(uint64_t a1, uint64_t a2, md::LabelLineResolvedPosition *this, int a4, int a5, uint64_t a6, int a7, float64x2_t a8, __n128 a9, __n128 a10)
{
  v10 = this;
  if (!a5)
  {
    goto LABEL_39;
  }

  v12 = a6;
  v14 = a8.f64[0];
  if (*(*this + 152))
  {
    goto LABEL_3;
  }

  if (a5 > 4)
  {
    if (a5 <= 6)
    {
      if (a5 == 5)
      {
        md::LabelLineResolvedPosition::ensureValidLinePosition(this, a8.f64[0]);
        if (md::LabelLinePosition::travelDirection(v10) >= 2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        md::LabelLineResolvedPosition::ensureValidLinePosition(this, a8.f64[0]);
        if ((md::LabelLinePosition::hasAnnotation(v10) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_3;
    }

    if (a5 == 7)
    {
      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a8.f64[0]);
      if (md::LabelLinePosition::hasAnnotation(v10))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (a5 != 8)
      {
        goto LABEL_39;
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a8.f64[0]);
      if (md::LabelLinePosition::travelDirection(v10) < 2)
      {
        goto LABEL_3;
      }
    }

LABEL_54:
    md::LabelLineResolvedPosition::ensureValidLinePosition(v10, a8.f64[0]);
    if (md::LabelLinePosition::textIndex(v10) == 255)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a8.f64[0]);
      if ((md::LabelLinePosition::hasShield(v10) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      md::LabelLineResolvedPosition::ensureValidLinePosition(this, a8.f64[0]);
      if (md::LabelLinePosition::travelDirection(v10) - 1 >= 2)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_3;
  }

  if (a5 == 1)
  {
    goto LABEL_54;
  }

  if (a5 != 2)
  {
    goto LABEL_39;
  }

  md::LabelLineResolvedPosition::ensureValidLinePosition(this, a8.f64[0]);
  if ((md::LabelLinePosition::hasShield(v10) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_3:
  v17 = *(a2 + 32);
  if (v17 == (a2 + 40))
  {
    goto LABEL_29;
  }

  v33 = a1;
  v18 = 0;
  v19 = 1.79769313e308;
  do
  {
    v20 = v17[5];
    if (v20[9] == a5)
    {
      v21 = (*(*v20 + 80))(v17[5], a8, a9, a10);
      v22 = v20[45];
      if (v20[45])
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 == 2)
      {
        v23 = 0;
      }

      if (v21)
      {
        v22 = v23;
      }

      if (v22 == a4)
      {
        if (a5 != 1 || (v24 = (*(*v17[5] + 200))(v17[5]), md::LabelLineResolvedPosition::ensureValidLinePosition(v24, v25), LODWORD(v24) = md::LabelLinePosition::textIndex(v24), md::LabelLineResolvedPosition::ensureValidLinePosition(v10, v26), v24 == md::LabelLinePosition::textIndex(v10)))
        {
          v27 = (*(*v17[5] + 56))(v17[5]);
          a8 = md::LabelPoint::vectorToPoint((v10 + 104), v27, *(*a2 + 159));
          v28 = 0;
          v34[0] = *&a8.f64[0];
          v34[1] = a9.n128_u64[0];
          v34[2] = a10.n128_u64[0];
          a8.f64[0] = 0.0;
          do
          {
            a9.n128_u64[0] = v34[v28];
            a8.f64[0] = a8.f64[0] + a9.n128_f64[0] * a9.n128_f64[0];
            ++v28;
          }

          while (v28 != 3);
          if (a8.f64[0] < v19)
          {
            v18 = v17[5];
            v19 = a8.f64[0];
          }
        }
      }
    }

    v29 = v17[1];
    if (v29)
    {
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29);
    }

    else
    {
      do
      {
        v30 = v17[2];
        v31 = *v30 == v17;
        v17 = v30;
      }

      while (!v31);
    }

    v17 = v30;
  }

  while (v30 != (a2 + 40));
  a1 = v33;
  if (!v18 || sqrt(v19) >= v14)
  {
LABEL_29:
    ++*(a2 + 64);
    operator new();
  }

  md::RoadPosition::setValidAtZoom(v18, v12, 1);
  *(v18 + 11) = 1;
  v10 = (*(*v18 + 200))(v18);
LABEL_39:

  *&result = md::LabelLineResolvedPosition::LabelLineResolvedPosition(a1, v10).n128_u64[0];
  return result;
}

void sub_1B306BFA8(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v1 + 32));
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0,std::allocator<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0>,BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v4 = *a3;
  v5 = md::LabelPoint::mercatorPoint((a2 + 104));
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
LABEL_6:
    v12 = v7[2];
    if (v9 >= v12)
    {
      v15 = v9 - v8;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v12 - v8;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v18);
      }

      *(16 * v15) = *v6;
      v13 = 16 * v15 + 16;
      v19 = *v7;
      v20 = v7[1];
      v21 = 16 * v15 + *v7 - v20;
      if (*v7 != v20)
      {
        v22 = (16 * v15 + *v7 - v20);
        do
        {
          v23 = *v19++;
          *v22++ = v23;
        }

        while (v19 != v20);
        v19 = *v7;
      }

      *v7 = v21;
      v7[1] = v13;
      v7[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = *v5;
      v13 = &v9[1];
    }

    result = 0;
    v7[1] = v13;
  }

  else
  {
    v10 = *v7;
    while (1)
    {
      v11 = vsubq_f64(*v5, *v10);
      if (vaddvq_f64(vmulq_f64(v11, v11)) < v4)
      {
        return 1;
      }

      if (++v10 == v9)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0,std::allocator<md::LineLabelPlacer::createPlacements(unsigned char,md::RoadMetricsEntry const*,md::LabelManager *,BOOL,BOOL)::$_0>,BOOL ()(md::LabelLineResolvedPosition const&,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2A340;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void ggl::HillshadeFillMask::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<md::ComposedRoadEdge const*,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,std::allocator<md::ComposedRoadEdge const*>>::__emplace_unique_key_args<md::ComposedRoadEdge const*,md::ComposedRoadEdge const* const&>(void *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

uint64_t *std::vector<gm::Range<double>>::__assign_with_size[abi:nn200100]<gm::Range<double>*,gm::Range<double>*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gm::Matrix<double,2,1>>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<md::mun::CollectionPoint const*>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

void std::vector<double>::shrink_to_fit(char **a1)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = a1[2] - *a1;
  v5 = v2 - *a1;
  if (v4 > v5)
  {
    if (v2 != v3)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v5 >> 3);
    }

    v7 = 0;
    if (v4 >> 3)
    {
      v8 = (8 * (v5 >> 3));
      v9 = (a1[1] - v3);
      v10 = (v8 - v9);
      memcpy((v8 - v9), v3, v9);
      v7 = *a1;
      *a1 = v10;
      a1[1] = v8;
      a1[2] = 0;
    }

    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::__hash_table<md::ComposedRoadEdge const*,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,std::allocator<md::ComposedRoadEdge const*>>::__emplace_unique_key_args<md::ComposedRoadEdge const*,md::ComposedRoadEdge const*&>(void *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

void *std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::__emplace_unique_key_args<md::ComposedRoadEdge const*,std::piecewise_construct_t const&,std::tuple<md::ComposedRoadEdge const* const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_1B306CE6C(_Unwind_Exception *a1)
{
  v3 = v1[13];
  if (v3)
  {
    v1[14] = v3;
    operator delete(v3);
  }

  v4 = v1[10];
  if (v4)
  {
    v1[11] = v4;
    operator delete(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    v1[8] = v5;
    operator delete(v5);
  }

  v6 = v1[4];
  if (v6)
  {
    v1[5] = v6;
    operator delete(v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>,std::__unordered_map_hasher<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,true>,std::__unordered_map_equal<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>,std::equal_to<md::MuninJunction const*>,std::hash<md::MuninJunction const*>,true>,std::allocator<std::__hash_value_type<md::MuninJunction const*,md::MuninJunctionZInfo>>>::__emplace_unique_key_args<md::MuninJunction const*,std::piecewise_construct_t const&,std::tuple<md::MuninJunction const* const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>,std::__unordered_map_hasher<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,true>,std::__unordered_map_equal<md::MuninJunction const*,std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>,std::equal_to<md::MuninJunction const*>,std::hash<md::MuninJunction const*>,true>,std::allocator<std::__hash_value_type<md::MuninJunction const*,md::JunctionOrphanReason>>>::__emplace_unique_key_args<md::MuninJunction const*,std::piecewise_construct_t const&,std::tuple<md::MuninJunction const* const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void SampleDeterminablityTracker::trackSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a2 == 2)
  {
    if (*a1 == 1)
    {
      v13 = *(a3 + 8);
      v12 = *(a3 + 16);
      if (v13 >= v12)
      {
        v27 = *a3;
        v28 = v13 - *a3;
        v29 = v28 >> 4;
        v30 = (v28 >> 4) + 1;
        if (v30 >> 60)
        {
          goto LABEL_65;
        }

        v31 = v12 - v27;
        if (v31 >> 3 > v30)
        {
          v30 = v31 >> 3;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v32);
        }

        v47 = 16 * v29;
        *v47 = *(a1 + 8);
        *(v47 + 8) = a5;
        v14 = 16 * v29 + 16;
        memcpy(0, v27, v28);
        v48 = *a3;
        *a3 = 0;
        *(a3 + 8) = v14;
        *(a3 + 16) = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v13 = *(a1 + 8);
        *(v13 + 8) = a5;
        v14 = v13 + 16;
      }

      *(a3 + 8) = v14;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if (*(a1 + 1))
    {
      return;
    }

    *(a1 + 1) = 1;
    goto LABEL_63;
  }

  if (a2 != 1)
  {
    if (*a1 == 1)
    {
      v16 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v16 >= v15)
      {
        v33 = *a3;
        v34 = v16 - *a3;
        v35 = v34 >> 4;
        v36 = (v34 >> 4) + 1;
        if (v36 >> 60)
        {
          goto LABEL_65;
        }

        v37 = v15 - v33;
        if (v37 >> 3 > v36)
        {
          v36 = v37 >> 3;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v38);
        }

        v49 = 16 * v35;
        *v49 = *(a1 + 8);
        *(v49 + 8) = a5;
        v17 = 16 * v35 + 16;
        memcpy(0, v33, v34);
        v50 = *a3;
        *a3 = 0;
        *(a3 + 8) = v17;
        *(a3 + 16) = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v16 = *(a1 + 8);
        *(v16 + 8) = a5;
        v17 = v16 + 16;
      }

      *(a3 + 8) = v17;
      *a1 = 0;
      *(a1 + 8) = 0;
      return;
    }

    if (*(a1 + 1) != 1)
    {
      return;
    }

    v19 = *(a4 + 8);
    v18 = *(a4 + 16);
    if (v19 >= v18)
    {
      v39 = *a4;
      v40 = v19 - *a4;
      v41 = v40 >> 4;
      v42 = (v40 >> 4) + 1;
      if (v42 >> 60)
      {
        goto LABEL_65;
      }

      v43 = v18 - v39;
      if (v43 >> 3 > v42)
      {
        v42 = v43 >> 3;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF0)
      {
        v44 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v44);
      }

      v51 = 16 * v41;
      *v51 = *(a1 + 16);
      *(v51 + 8) = a5;
      v20 = 16 * v41 + 16;
      memcpy(0, v39, v40);
      v52 = *a4;
      *a4 = 0;
      *(a4 + 8) = v20;
      *(a4 + 16) = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v19 = *(a1 + 16);
      *(v19 + 8) = a5;
      v20 = v19 + 16;
    }

    *(a4 + 8) = v20;
    *(a1 + 1) = 0;
LABEL_63:
    *(a1 + 16) = a5;
    return;
  }

  if (*(a1 + 1) != 1)
  {
    goto LABEL_50;
  }

  v10 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v10 >= v9)
  {
    v21 = *a4;
    v22 = v10 - *a4;
    v23 = v22 >> 4;
    v24 = (v22 >> 4) + 1;
    if (!(v24 >> 60))
    {
      v25 = v9 - v21;
      if (v25 >> 3 > v24)
      {
        v24 = v25 >> 3;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF0)
      {
        v26 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v26);
      }

      v45 = 16 * v23;
      *v45 = *(a1 + 16);
      *(v45 + 8) = a5;
      v11 = 16 * v23 + 16;
      memcpy(0, v21, v22);
      v46 = *a4;
      *a4 = 0;
      *(a4 + 8) = v11;
      *(a4 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }

      goto LABEL_49;
    }

LABEL_65:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v10 = *(a1 + 16);
  *(v10 + 8) = a5;
  v11 = v10 + 16;
LABEL_49:
  *(a4 + 8) = v11;
  *(a1 + 1) = 0;
  *(a1 + 16) = 0;
LABEL_50:
  if ((*a1 & 1) == 0)
  {
    *(a1 + 8) = a5;
  }
}