xgboost::common::Monitor ***std::unique_ptr<xgboost::common::Monitor>::~unique_ptr[abi:ne200100](xgboost::common::Monitor ***a1, float a2, __n128 a3)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    xgboost::common::Monitor::~Monitor(v4, a2, a3);
    MEMORY[0x277C69180]();
  }

  return a1;
}

uint64_t *std::unique_ptr<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(v2 + 296, *(v2 + 304));
    v3 = *(v2 + 272);
    if (v3)
    {
      *(v2 + 280) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 248);
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *(v2 + 224);
    if (v5)
    {
      *(v2 + 232) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 200);
    if (v6)
    {
      *(v2 + 208) = v6;
      operator delete(v6);
    }

    v10 = (v2 + 176);
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v7 = *(v2 + 104);
    if (v7)
    {
      *(v2 + 112) = v7;
      operator delete(v7);
    }

    v10 = (v2 + 80);
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v8 = *(v2 + 40);
    if (v8)
    {
      *(v2 + 48) = v8;
      operator delete(v8);
    }

    v10 = (v2 + 16);
    std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x277C69180](v2, 0x10B0C407352E802);
  }

  return a1;
}

void xgboost::tree::QuantileHistMaker::Builder<float>::UpdateTree(void *a1, char ***a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "UpdateTree");
  xgboost::common::Monitor::Start(v6, v7);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v8 = *a2;
  if (*a1 != 1)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(a1 + 4, (v8[1] - *v8) >> 3);
    if (a1 + 4 != v8)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__assign_with_size[abi:ne200100]<xgboost::detail::GradientPairInternal<float>*,xgboost::detail::GradientPairInternal<float>*>(a1 + 4, *v8, v8[1], (v8[1] - *v8) >> 3);
    }
  }

  xgboost::tree::QuantileHistMaker::Builder<float>::InitData();
}

void sub_274DB7694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitData");
  xgboost::common::Monitor::Start(v5, v6);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  (**a2)(a2);
  v21[0] = 0;
  v8 = a1[8];
  for (i = a1[9]; i != v8; std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(i))
  {
    i -= 136;
  }

  a1[9] = v8;
  v9 = a1[1];
  v10 = *(v9 + 20);
  v11 = *(v9 + 128);
  LODWORD(__p) = -1;
  HIDWORD(__p) = v10;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v11;
  (*(*a2 + 104))(&v19);
  __p = v19;
  v15 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v13, 0);
}

void sub_274DB7BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v30 = __p;
  __p = 0;
  if (v30)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&__p, v30);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::ExpandTree(uint64_t a1, uint64_t a2, xgboost::RegTree *a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "ExpandTree");
  xgboost::common::Monitor::Start(v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Driver(v9, *(*(a1 + 8) + 24));
  xgboost::tree::QuantileHistMaker::Builder<float>::InitRoot();
}

void sub_274DB8290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  __p = &a35;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&__p);
  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::~Driver(v46 - 160);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::QuantileHistMaker::Builder<float>::UpdatePredictionCache(void *a1, uint64_t a2, uint64_t *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1[12];
  if (!v3)
  {
    return 0;
  }

  if (v3 != a2 || a1[11] == 0)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
  xgboost::common::Monitor::Start(v9, v10);
  if (v61.__m_.__opaque[7] < 0)
  {
    operator delete(v60.__ptr_);
  }

  v58[0] = a3[5];
  v11 = (*(*a2 + 24))(a2);
  if (v58[0] != *v11)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(v58, v11);
  }

  v51 = a1[7];
  v52 = a1[1];
  v53 = a1[11];
  v12 = *a3;
  v13 = a3[2];
  v14 = a3[4];
  v15 = *(a3 + 12);
  v58[0] = a3[5];
  LODWORD(v54[0]) = 0;
  if (!v58[0])
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(v58, v54);
  }

  if (!v53)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./hist/evaluate_splits.h", 387);
    v48 = dmlc::LogMessageFatal::GetEntry(&v60);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Check failed: p_last_tree", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
  }

  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v51 + 152), v58);
  LODWORD(v54[0]) = v15;
  v59.i32[0] = -1;
  if (v15 != -1)
  {
    dmlc::LogCheckFormat<int,int>(v54, &v59);
  }

  v57 = 0xCCCCCCCCCCCCCCCDLL * ((*(v53 + 168) - *(v53 + 160)) >> 2);
  v17 = a1[8];
  v16 = a1[9];
  v50 = v16;
  while (v17 != v16)
  {
    v54[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v17 + 112) - *(v17 + 104)) >> 3));
    if (v54[0] != v57)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(v54, &v57);
    }

    v18 = *(v17 + 104);
    v19 = *(v17 + 112);
    *v54 = 0u;
    *__p = 0u;
    v56 = 0u;
    v20 = v19 - v18;
    if (v20)
    {
      v21 = 0;
      v22 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
      do
      {
        v23 = *(*(v17 + 104) + 24 * v21 + 8) - *(*(v17 + 104) + 24 * v21);
        v24 = v23 >> 3;
        if ((v23 & 0x1FF8) != 0)
        {
          v25 = ((v23 >> 3) >> 10) + 1;
        }

        else
        {
          v25 = (v23 >> 3) >> 10;
        }

        if (v25)
        {
          v26 = 0;
          do
          {
            v27 = v26 + 1024;
            if (v24 >= v26 + 1024)
            {
              v28 = v26 + 1024;
            }

            else
            {
              v28 = v24;
            }

            xgboost::common::BlockedSpace2d::AddBlock(v54, v21, v26, v28);
            v26 = v27;
            --v25;
          }

          while (v25);
        }

        ++v21;
      }

      while (v21 != v22);
      v60.__ptr_ = 0;
      v61.__m_.__sig = 850045863;
      memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
      if (v54[1] != v54[0])
      {
        v29 = 0;
        if (((v54[1] - v54[0]) >> 4) <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = (v54[1] - v54[0]) >> 4;
        }

        do
        {
          FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v54, v29);
          Range = xgboost::common::BlockedSpace2d::GetRange(v54, v29);
          v35 = *(v53 + 160) + 20 * FirstDimension;
          if (*(v35 + 12) != -1 && *(v35 + 4) == -1)
          {
            v36 = Range;
            v37 = v33;
            v38 = *(v17 + 104);
            v59 = *(*(v51 + 296) + 24 * FirstDimension);
            v39 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v58, FirstDimension, v52, v59.i64, v59, v34);
            if (v36 < v37)
            {
              v40 = *(v38 + 24 * FirstDimension);
              v41 = v39 * v52[1];
              v42 = v40 + 8 * v37;
              v43 = (v40 + 8 * v36);
              do
              {
                v44 = *v43 * v12;
                if (v44 >= v13)
                {
                  __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                }

                *(v14 + 4 * v44) = v41 + *(v14 + 4 * v44);
                ++v43;
              }

              while (v43 < v42);
            }
          }

          ++v29;
        }

        while (v29 != v30);
      }
    }

    else
    {
      v60.__ptr_ = 0;
      v61.__m_.__sig = 850045863;
      memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    }

    dmlc::OMPException::Rethrow(&v60);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&v60);
    if (__p[1])
    {
      *&v56 = __p[1];
      operator delete(__p[1]);
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    v17 += 136;
    v16 = v50;
  }

  std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
  xgboost::common::Monitor::Stop(v45, v46);
  if (v61.__m_.__opaque[7] < 0)
  {
    operator delete(v60.__ptr_);
  }

  return 1;
}

void sub_274DB8BB4()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DB8CBCLL);
}

void sub_274DB8BC0()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DB8CBCLL);
}

void sub_274DB8C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DB8C70);
}

void sub_274DB8C88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274DB8C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    JUMPOUT(0x274DB8CB8);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitSampling(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitSampling");
  xgboost::common::Monitor::Start(v6, v7);
  if (v21.__m_.__opaque[7] < 0)
  {
    operator delete(__p);
  }

  v8 = (*(*a2 + 24))(a2);
  v9 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
  v10 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v9);
  v11 = *v8;
  v12 = *(*(a1 + 8) + 48);
  __p = 0;
  v21.__m_.__sig = 850045863;
  memset(v21.__m_.__opaque, 0, sizeof(v21.__m_.__opaque));
  if (v11)
  {
    v13 = v12;
    if (v10 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = (*a3 + 4);
    do
    {
      if (*v15 < 0.0 || (v14 = (16807 * v14) & 0x7FFFFFFFFFFFFFFFLL, vcvtd_n_f64_u64(v14 - 1, 0x3FuLL) >= v13))
      {
        *(v15 - 1) = 0.0;
        *v15 = 0.0;
      }

      v15 += 2;
      --v11;
    }

    while (v11);
  }

  dmlc::OMPException::Rethrow(&__p);
  std::string::basic_string[abi:ne200100]<0>(&v18, "InitSampling");
  xgboost::common::Monitor::Stop(v16, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::mutex::~mutex(&v21);
  std::exception_ptr::~exception_ptr(&__p);
}

void sub_274DB8E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::exception_ptr a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex((v21 + 8));
  std::exception_ptr::~exception_ptr(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::~HistEvaluator(result);
  }

  return result;
}

void xgboost::tree::QuantileHistMaker::Builder<float>::InitRoot(void *a1@<X0>, xgboost::DMatrix *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 160);
  v7 = *v6;
  if (*v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      ++v8;
      v7 = v6[5 * (v7 & 0x7FFFFFFF)];
    }

    while (v7 != -1);
  }

  *a5 = 0;
  *(a5 + 1) = v8;
  a5[1] = 0;
  *(a5 + 4) = 0;
  a5[3] = 0;
  a5[4] = 0;
  a5[5] = 0;
  *(a5 + 48) = 0;
  *(a5 + 7) = 0u;
  *(a5 + 9) = 0u;
  v9 = a5[1];
  v22 = *a5;
  v23 = v9;
  LODWORD(v24) = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v10 = *(a5 + 4);
  v28 = *(a5 + 3);
  v29 = v10;
  v30 = a5[10];
  v20 = 0;
  v19 = 0uLL;
  std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(&v19, &v22, v31, 1uLL);
  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(&v21, a1 + 8, &v19);
  *&v18 = &v19;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  v11 = a1[1];
  v12 = *(v11 + 20);
  v13 = *(v11 + 128);
  LODWORD(v22) = -1;
  HIDWORD(v22) = v12;
  v23 = 0;
  v24 = 0;
  LOBYTE(v25) = 0;
  v26 = v13;
  (*(*a2 + 104))(&v18);
  v17 = v18;
  if (*(&v18 + 1))
  {
    atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v16, 0);
}

void sub_274DB9720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  xgboost::common::Index::~Index(va);
  v34 = *a10;
  if (*a10)
  {
    *(a11 + 32) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(xgboost::common::BlockedSpace2d *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
  v28[0] = 0;
  std::vector<unsigned long>::vector[abi:ne200100](v36, v6, v28);
  v8 = *a2;
  for (i = a2[1]; v8 != i; v8 += 136)
  {
    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      v11 = 0;
      do
      {
        v12 = *(v9 + 8);
        v28[0] = *v9;
        v13 = *(v9 + 16);
        v28[1] = v12;
        v29 = v13;
        v31 = 0;
        v32 = 0;
        __p = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 2);
        v14 = *(v9 + 48);
        v15 = *(v9 + 64);
        v35 = *(v9 + 80);
        v33 = v14;
        v34 = v15;
        v16 = *(*(v8 + 104) + 24 * LODWORD(v28[0]) + 8) - *(*(v8 + 104) + 24 * LODWORD(v28[0]));
        if (*(v36[0] + v11) <= (v16 >> 3))
        {
          v17 = v16 >> 3;
        }

        else
        {
          v17 = *(v36[0] + v11);
        }

        *(v36[0] + v11) = v17;
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }

        v9 += 88;
        v11 += 8;
      }

      while (v9 != v10);
    }
  }

  v19 = *a3;
  v18 = a3[1];
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v20 = v18 - v19;
  if (v20)
  {
    v21 = 0;
    v22 = 0x2E8BA2E8BA2E8BA3 * (v20 >> 3);
    do
    {
      v23 = *(v36[0] + v21);
      if (v23)
      {
        v24 = (v23 >> 8) + 1;
      }

      else
      {
        v24 = v23 >> 8;
      }

      if (v24)
      {
        v25 = 0;
        do
        {
          v26 = v25 + 256;
          if (v23 >= v25 + 256)
          {
            v27 = v25 + 256;
          }

          else
          {
            v27 = v23;
          }

          xgboost::common::BlockedSpace2d::AddBlock(a1, v21, v25, v27);
          v25 = v26;
          --v24;
        }

        while (v24);
      }

      ++v21;
    }

    while (v21 != v22);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }
}

void sub_274DB9ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 + 24);
  if (v23)
  {
    *(v21 + 32) = v23;
    operator delete(v23);
  }

  v24 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<float>::BuildHistogram(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a4 + 1;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v44, 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  v32 = a2;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v43, 0x2E8BA2E8BA2E8BA3 * ((*v8 - *a4) >> 3));
  v9 = *a4;
  v33 = a4[1];
  if (*a4 != v33)
  {
    v10 = 0;
    do
    {
      v11 = *(a3 + 160);
      v12 = v11 + 20 * *v9;
      v13 = *(v12 + 4);
      LODWORD(v12) = *(v12 + 8);
      v14 = v9[10];
      v15 = v9[8];
      if (v14 >= v15)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v14 >= v15)
      {
        v12 = v13;
      }

      else
      {
        v12 = v12;
      }

      v17 = *(v11 + 20 * v12);
      if (v17 == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          v17 = *(v11 + 20 * (v17 & 0x7FFFFFFF));
          v18 += 0x100000000;
        }

        while (v17 != -1);
      }

      memset(v45 + 7, 0, 32);
      v19 = v44[0] + 88 * v10;
      *v19 = v18 | v12;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v21 = (v19 + 24);
      v20 = *(v19 + 24);
      if (v20)
      {
        *(v19 + 32) = v20;
        operator delete(v20);
        *v21 = 0;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
      }

      *v21 = 0;
      *(v19 + 32) = 0;
      *(v19 + 48) = 0;
      *(v19 + 40) = 0;
      *(v19 + 49) = v45[0];
      *(v19 + 65) = v45[1];
      *(v19 + 80) = *(&v45[1] + 15);
      v22 = *(a3 + 160);
      v23 = *(v22 + 20 * v16);
      if (v23 == -1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        do
        {
          v23 = *(v22 + 20 * (v23 & 0x7FFFFFFF));
          v24 += 0x100000000;
        }

        while (v23 != -1);
      }

      v25 = v24 | v16;
      memset(v45 + 7, 0, 32);
      v26 = v43[0] + 88 * v10;
      *v26 = v25;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      v28 = (v26 + 24);
      v27 = *(v26 + 24);
      if (v27)
      {
        *(v26 + 32) = v27;
        operator delete(v27);
        *v28 = 0;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
      }

      *v28 = 0;
      *(v26 + 32) = 0;
      *(v26 + 48) = 0;
      *(v26 + 40) = 0;
      *(v26 + 49) = v45[0];
      *(v26 + 65) = v45[1];
      *(v26 + 80) = *(&v45[1] + 15);
      ++v10;
      v9 += 11;
    }

    while (v9 != v33);
  }

  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(v45, a1 + 8, v44);
  v29 = a1[1];
  v30 = *(v29 + 20);
  v31 = *(v29 + 128);
  LODWORD(v36) = -1;
  HIDWORD(v36) = v30;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = v31;
  (*(*v32 + 104))(&v41);
  v36 = v41;
  v37 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v35, 0);
}

void sub_274DB9F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  xgboost::common::Index::~Index((v29 - 144));
  *(v29 - 144) = &a29;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  *(v29 - 144) = v29 - 168;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  _Unwind_Resume(a1);
}

void xgboost::tree::HistRowPartitioner::UpdatePosition(const void **a1, xgboost::GHistIndexMatrix *this, unsigned int **a3, uint64_t a4)
{
  v156 = *MEMORY[0x277D85DE8];
  v7 = xgboost::GHistIndexMatrix::Transpose(this);
  v144 = a1;
  v145 = this;
  v8 = *(this + 112);
  v142 = v7;
  v143 = a3;
  v11 = a3;
  v10 = *a3;
  v9 = v11[1];
  v12 = 0x2E8BA2E8BA2E8BA3 * ((v9 - v10) >> 3);
  if (v8 == 1)
  {
    if (*(v7 + 156))
    {
      memset(&v151, 0, sizeof(v151));
      xgboost::tree::HistRowPartitioner::FindSplitConditions(v143, a4, v145, &v151);
      *__p = 0u;
      v150 = 0u;
      *v148 = 0u;
      if (v9 == v10)
      {
        v20 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *(a1[13] + 3 * *(*v143 + 88 * v13) + 1) - *(a1[13] + 3 * *(*v143 + 88 * v13));
          v15 = v14 >> 3;
          if ((v14 & 0x3FF8) != 0)
          {
            v16 = ((v14 >> 3) >> 11) + 1;
          }

          else
          {
            v16 = (v14 >> 3) >> 11;
          }

          if (v16)
          {
            v17 = 0;
            do
            {
              v18 = v17 + 2048;
              if (v15 >= v17 + 2048)
              {
                v19 = v17 + 2048;
              }

              else
              {
                v19 = v15;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v148, v13, v17, v19);
              v17 = v18;
              --v16;
            }

            while (v16);
          }

          ++v13;
        }

        while (v13 != v12);
        v20 = (v148[1] - v148[0]) >> 4;
      }

      std::vector<std::pair<double,double>>::resize(a1, v12);
      std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
      v45 = a1[3];
      *v45 = 0;
      if (v12 + 1 >= 2)
      {
        v46 = 0;
        v47 = *v143;
        v48 = a1[13];
        v49 = v45 + 1;
        do
        {
          v50 = *v47;
          v47 += 22;
          v51 = v48[3 * v50 + 1] - v48[3 * v50];
          v46 += (v51 >> 3) >> 11;
          if ((v51 & 0x3FF8) != 0)
          {
            ++v46;
          }

          *v49++ = v46;
          --v12;
        }

        while (v12);
      }

      if (a1[9] < v20)
      {
        std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize(a1 + 6, v20);
        a1[9] = v20;
      }

      if (a1[16] != *(v145 + 19))
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v145 + 19);
      }

      v154.__ptr_ = 0;
      v155.__m_.__sig = 850045863;
      memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
      if (v148[1] != v148[0])
      {
        v52 = 0;
        v53 = (v148[1] - v148[0]) >> 4;
        if (v53 <= 1)
        {
          v53 = 1;
        }

        v135 = v53;
        while (1)
        {
          FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v52);
          Range = xgboost::common::BlockedSpace2d::GetRange(v148, v52);
          v56 = *(*v143 + 88 * FirstDimension);
          xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v144, *(v144[3] + FirstDimension) + (Range >> 11));
          v57 = Range >> 11;
          v58 = *(v142 + 152);
          if (v58 == 4)
          {
            break;
          }

          if (v58 == 2)
          {
            if (*(v144[3] + FirstDimension) + v57 < (v144[7] - v144[6]) >> 4)
            {
              xgboost::common::ColumnMatrix::GetColumn<unsigned short,true>(&v152, v142, *(*(a4 + 160) + 20 * v56 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_183;
          }

          if (v58 == 1)
          {
            if (*(v144[3] + FirstDimension) + v57 < (v144[7] - v144[6]) >> 4)
            {
              xgboost::common::ColumnMatrix::GetColumn<unsigned char,true>(&v152, v142, *(*(a4 + 160) + 20 * v56 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_183;
          }

          Entry = dmlc::LogMessageFatal::GetEntry(&v153);
          dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
          v60 = dmlc::LogMessageFatal::GetEntry(&v153);
          v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Check failed: false", 19);
          v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ": ", 2);
          MEMORY[0x277C68E30](v62, *(v142 + 152));
          dmlc::LogMessageFatal::~LogMessageFatal(&v153);
          a1 = v144;
          if (++v52 == v135)
          {
            goto LABEL_80;
          }
        }

        if (*(v144[3] + FirstDimension) + v57 < (v144[7] - v144[6]) >> 4)
        {
          xgboost::common::ColumnMatrix::GetColumn<unsigned int,true>(&v152, v142, *(*(a4 + 160) + 20 * v56 + 12) & 0x7FFFFFFF);
        }

LABEL_183:
        std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
      }

LABEL_80:
      dmlc::OMPException::Rethrow(&v154);
      std::mutex::~mutex(&v155);
      std::exception_ptr::~exception_ptr(&v154);
      xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
      v154.__ptr_ = 0;
      v155.__m_.__sig = 850045863;
      memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
      if (v148[1] != v148[0])
      {
        v63 = 0;
        if (((v148[1] - v148[0]) >> 4) <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = (v148[1] - v148[0]) >> 4;
        }

        do
        {
          v65 = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v63);
          v66 = xgboost::common::BlockedSpace2d::GetRange(v148, v63);
          xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v65, v66, *(a1[13] + 3 * *(*v143 + 88 * v65)));
          ++v63;
        }

        while (v64 != v63);
      }
    }

    else
    {
      memset(&v151, 0, sizeof(v151));
      xgboost::tree::HistRowPartitioner::FindSplitConditions(v143, a4, v145, &v151);
      *__p = 0u;
      v150 = 0u;
      *v148 = 0u;
      if (v9 == v10)
      {
        v36 = 0;
      }

      else
      {
        v29 = 0;
        do
        {
          v30 = *(a1[13] + 3 * *(*v143 + 88 * v29) + 1) - *(a1[13] + 3 * *(*v143 + 88 * v29));
          v31 = v30 >> 3;
          if ((v30 & 0x3FF8) != 0)
          {
            v32 = ((v30 >> 3) >> 11) + 1;
          }

          else
          {
            v32 = (v30 >> 3) >> 11;
          }

          if (v32)
          {
            v33 = 0;
            do
            {
              v34 = v33 + 2048;
              if (v31 >= v33 + 2048)
              {
                v35 = v33 + 2048;
              }

              else
              {
                v35 = v31;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v148, v29, v33, v35);
              v33 = v34;
              --v32;
            }

            while (v32);
          }

          ++v29;
        }

        while (v29 != v12);
        v36 = (v148[1] - v148[0]) >> 4;
      }

      std::vector<std::pair<double,double>>::resize(a1, v12);
      std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
      v90 = a1[3];
      *v90 = 0;
      if (v12 + 1 >= 2)
      {
        v91 = 0;
        v92 = *v143;
        v93 = a1[13];
        v94 = v90 + 1;
        do
        {
          v95 = *v92;
          v92 += 22;
          v96 = v93[3 * v95 + 1] - v93[3 * v95];
          v91 += (v96 >> 3) >> 11;
          if ((v96 & 0x3FF8) != 0)
          {
            ++v91;
          }

          *v94++ = v91;
          --v12;
        }

        while (v12);
      }

      if (a1[9] < v36)
      {
        std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize(a1 + 6, v36);
        a1[9] = v36;
      }

      if (a1[16] != *(v145 + 19))
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v145 + 19);
      }

      v154.__ptr_ = 0;
      v155.__m_.__sig = 850045863;
      memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
      if (v148[1] != v148[0])
      {
        v97 = 0;
        v98 = (v148[1] - v148[0]) >> 4;
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v136 = v98;
        while (1)
        {
          v137 = v97;
          v99 = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v97);
          v100 = xgboost::common::BlockedSpace2d::GetRange(v148, v137);
          v101 = *(*v143 + 88 * v99);
          xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v144, *(v144[3] + v99) + (v100 >> 11));
          v102 = v100 >> 11;
          v103 = *(v142 + 152);
          if (v103 == 4)
          {
            break;
          }

          if (v103 == 2)
          {
            if (*(v144[3] + v99) + v102 < (v144[7] - v144[6]) >> 4)
            {
              xgboost::common::ColumnMatrix::GetColumn<unsigned short,false>(&v152, v142, *(*(a4 + 160) + 20 * v101 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_185;
          }

          if (v103 == 1)
          {
            if (*(v144[3] + v99) + v102 < (v144[7] - v144[6]) >> 4)
            {
              xgboost::common::ColumnMatrix::GetColumn<unsigned char,false>(&v152, v142, *(*(a4 + 160) + 20 * v101 + 12) & 0x7FFFFFFF);
            }

            goto LABEL_185;
          }

          v104 = dmlc::LogMessageFatal::GetEntry(&v153);
          dmlc::LogMessageFatal::Entry::Init(v104, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
          v105 = dmlc::LogMessageFatal::GetEntry(&v153);
          v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "Check failed: false", 19);
          v107 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, ": ", 2);
          MEMORY[0x277C68E30](v107, *(v142 + 152));
          dmlc::LogMessageFatal::~LogMessageFatal(&v153);
          a1 = v144;
          v97 = v137 + 1;
          if (v137 + 1 == v136)
          {
            goto LABEL_140;
          }
        }

        if (*(v144[3] + v99) + v102 < (v144[7] - v144[6]) >> 4)
        {
          xgboost::common::ColumnMatrix::GetColumn<unsigned int,false>(&v152, v142, *(*(a4 + 160) + 20 * v101 + 12) & 0x7FFFFFFF);
        }

LABEL_185:
        std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
      }

LABEL_140:
      dmlc::OMPException::Rethrow(&v154);
      std::mutex::~mutex(&v155);
      std::exception_ptr::~exception_ptr(&v154);
      xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
      v154.__ptr_ = 0;
      v155.__m_.__sig = 850045863;
      memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
      if (v148[1] != v148[0])
      {
        v108 = 0;
        if (((v148[1] - v148[0]) >> 4) <= 1)
        {
          v109 = 1;
        }

        else
        {
          v109 = (v148[1] - v148[0]) >> 4;
        }

        do
        {
          v110 = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v108);
          v111 = xgboost::common::BlockedSpace2d::GetRange(v148, v108);
          xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v110, v111, *(a1[13] + 3 * *(*v143 + 88 * v110)));
          ++v108;
        }

        while (v109 != v108);
      }
    }
  }

  else if (*(v7 + 156))
  {
    memset(&v151, 0, sizeof(v151));
    xgboost::tree::HistRowPartitioner::FindSplitConditions(v143, a4, v145, &v151);
    *__p = 0u;
    v150 = 0u;
    *v148 = 0u;
    if (v9 == v10)
    {
      v28 = 0;
    }

    else
    {
      v21 = 0;
      do
      {
        v22 = *(a1[13] + 3 * *(*v143 + 88 * v21) + 1) - *(a1[13] + 3 * *(*v143 + 88 * v21));
        v23 = v22 >> 3;
        if ((v22 & 0x3FF8) != 0)
        {
          v24 = ((v22 >> 3) >> 11) + 1;
        }

        else
        {
          v24 = (v22 >> 3) >> 11;
        }

        if (v24)
        {
          v25 = 0;
          do
          {
            v26 = v25 + 2048;
            if (v23 >= v25 + 2048)
            {
              v27 = v25 + 2048;
            }

            else
            {
              v27 = v23;
            }

            xgboost::common::BlockedSpace2d::AddBlock(v148, v21, v25, v27);
            v25 = v26;
            --v24;
          }

          while (v24);
        }

        ++v21;
      }

      while (v21 != v12);
      v28 = (v148[1] - v148[0]) >> 4;
    }

    std::vector<std::pair<double,double>>::resize(a1, v12);
    std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
    v67 = a1[3];
    *v67 = 0;
    if (v12 + 1 >= 2)
    {
      v68 = 0;
      v69 = *v143;
      v70 = a1[13];
      v71 = v67 + 1;
      do
      {
        v72 = *v69;
        v69 += 22;
        v73 = v70[3 * v72 + 1] - v70[3 * v72];
        v68 += (v73 >> 3) >> 11;
        if ((v73 & 0x3FF8) != 0)
        {
          ++v68;
        }

        *v71++ = v68;
        --v12;
      }

      while (v12);
    }

    if (a1[9] < v28)
    {
      std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize(a1 + 6, v28);
      a1[9] = v28;
    }

    v74 = *(v145 + 19);
    v146 = (v145 + 152);
    if (a1[16] != v74)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v146);
    }

    v154.__ptr_ = 0;
    v155.__m_.__sig = 850045863;
    memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
    if (v148[1] != v148[0])
    {
      v75 = 0;
      v76 = (v148[1] - v148[0]) >> 4;
      if (v76 <= 1)
      {
        v76 = 1;
      }

      v138 = v76;
      while (1)
      {
        v77 = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v75);
        v78 = xgboost::common::BlockedSpace2d::GetRange(v148, v75);
        v79 = *(*v143 + 88 * v77);
        xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v144, *(v144[3] + v77) + (v78 >> 11));
        v80 = v78 >> 11;
        v81 = *(v142 + 152);
        if (v81 == 4)
        {
          break;
        }

        if (v81 == 2)
        {
          if (*(v144[3] + v77) + v80 < (v144[7] - v144[6]) >> 4)
          {
            xgboost::common::ColumnMatrix::GetColumn<unsigned short,true>(&v152, v142, *(*(a4 + 160) + 20 * v79 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_182;
        }

        if (v81 == 1)
        {
          if (*(v144[3] + v77) + v80 < (v144[7] - v144[6]) >> 4)
          {
            xgboost::common::ColumnMatrix::GetColumn<unsigned char,true>(&v152, v142, *(*(a4 + 160) + 20 * v79 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_182;
        }

        v82 = dmlc::LogMessageFatal::GetEntry(&v153);
        dmlc::LogMessageFatal::Entry::Init(v82, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
        v83 = dmlc::LogMessageFatal::GetEntry(&v153);
        v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Check failed: false", 19);
        v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, ": ", 2);
        MEMORY[0x277C68E30](v85, *(v142 + 152));
        dmlc::LogMessageFatal::~LogMessageFatal(&v153);
        a1 = v144;
        if (++v75 == v138)
        {
          goto LABEL_110;
        }
      }

      if (*(v144[3] + v77) + v80 < (v144[7] - v144[6]) >> 4)
      {
        xgboost::common::ColumnMatrix::GetColumn<unsigned int,true>(&v152, v142, *(*(a4 + 160) + 20 * v79 + 12) & 0x7FFFFFFF);
      }

LABEL_182:
      std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_110:
    dmlc::OMPException::Rethrow(&v154);
    std::mutex::~mutex(&v155);
    std::exception_ptr::~exception_ptr(&v154);
    xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
    v154.__ptr_ = 0;
    v155.__m_.__sig = 850045863;
    memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
    if (v148[1] != v148[0])
    {
      v86 = 0;
      if (((v148[1] - v148[0]) >> 4) <= 1)
      {
        v87 = 1;
      }

      else
      {
        v87 = (v148[1] - v148[0]) >> 4;
      }

      do
      {
        v88 = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v86);
        v89 = xgboost::common::BlockedSpace2d::GetRange(v148, v86);
        xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v88, v89, *(a1[13] + 3 * *(*v143 + 88 * v88)));
        ++v86;
      }

      while (v87 != v86);
    }
  }

  else
  {
    memset(&v151, 0, sizeof(v151));
    xgboost::tree::HistRowPartitioner::FindSplitConditions(v143, a4, v145, &v151);
    *__p = 0u;
    v150 = 0u;
    *v148 = 0u;
    if (v9 == v10)
    {
      v44 = 0;
    }

    else
    {
      v37 = 0;
      do
      {
        v38 = *(a1[13] + 3 * *(*v143 + 88 * v37) + 1) - *(a1[13] + 3 * *(*v143 + 88 * v37));
        v39 = v38 >> 3;
        if ((v38 & 0x3FF8) != 0)
        {
          v40 = ((v38 >> 3) >> 11) + 1;
        }

        else
        {
          v40 = (v38 >> 3) >> 11;
        }

        if (v40)
        {
          v41 = 0;
          do
          {
            v42 = v41 + 2048;
            if (v39 >= v41 + 2048)
            {
              v43 = v41 + 2048;
            }

            else
            {
              v43 = v39;
            }

            xgboost::common::BlockedSpace2d::AddBlock(v148, v37, v41, v43);
            v41 = v42;
            --v40;
          }

          while (v40);
        }

        ++v37;
      }

      while (v37 != v12);
      v44 = (v148[1] - v148[0]) >> 4;
    }

    std::vector<std::pair<double,double>>::resize(a1, v12);
    std::vector<unsigned long>::resize(a1 + 3, v12 + 1);
    v112 = a1[3];
    *v112 = 0;
    if (v12 + 1 >= 2)
    {
      v113 = 0;
      v114 = *v143;
      v115 = a1[13];
      v116 = v112 + 1;
      do
      {
        v117 = *v114;
        v114 += 22;
        v118 = v115[3 * v117 + 1] - v115[3 * v117];
        v113 += (v118 >> 3) >> 11;
        if ((v118 & 0x3FF8) != 0)
        {
          ++v113;
        }

        *v116++ = v113;
        --v12;
      }

      while (v12);
    }

    if (a1[9] < v44)
    {
      std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize(a1 + 6, v44);
      a1[9] = v44;
    }

    v119 = *(v145 + 19);
    v147 = (v145 + 152);
    if (a1[16] != v119)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(a1 + 16, v147);
    }

    v154.__ptr_ = 0;
    v155.__m_.__sig = 850045863;
    memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
    if (v148[1] != v148[0])
    {
      v120 = 0;
      v121 = (v148[1] - v148[0]) >> 4;
      if (v121 <= 1)
      {
        v121 = 1;
      }

      v139 = v121;
      while (1)
      {
        v140 = v120;
        v122 = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v120);
        v123 = xgboost::common::BlockedSpace2d::GetRange(v148, v140);
        v124 = *(*v143 + 88 * v122);
        xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(v144, *(v144[3] + v122) + (v123 >> 11));
        v125 = v123 >> 11;
        v126 = *(v142 + 152);
        if (v126 == 4)
        {
          break;
        }

        if (v126 == 2)
        {
          if (*(v144[3] + v122) + v125 < (v144[7] - v144[6]) >> 4)
          {
            xgboost::common::ColumnMatrix::GetColumn<unsigned short,false>(&v152, v142, *(*(a4 + 160) + 20 * v124 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_184;
        }

        if (v126 == 1)
        {
          if (*(v144[3] + v122) + v125 < (v144[7] - v144[6]) >> 4)
          {
            xgboost::common::ColumnMatrix::GetColumn<unsigned char,false>(&v152, v142, *(*(a4 + 160) + 20 * v124 + 12) & 0x7FFFFFFF);
          }

          goto LABEL_184;
        }

        v127 = dmlc::LogMessageFatal::GetEntry(&v153);
        dmlc::LogMessageFatal::Entry::Init(v127, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h", 177);
        v128 = dmlc::LogMessageFatal::GetEntry(&v153);
        v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, "Check failed: false", 19);
        v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, ": ", 2);
        MEMORY[0x277C68E30](v130, *(v142 + 152));
        dmlc::LogMessageFatal::~LogMessageFatal(&v153);
        a1 = v144;
        v120 = v140 + 1;
        if (v140 + 1 == v139)
        {
          goto LABEL_170;
        }
      }

      if (*(v144[3] + v122) + v125 < (v144[7] - v144[6]) >> 4)
      {
        xgboost::common::ColumnMatrix::GetColumn<unsigned int,false>(&v152, v142, *(*(a4 + 160) + 20 * v124 + 12) & 0x7FFFFFFF);
      }

LABEL_184:
      std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
    }

LABEL_170:
    dmlc::OMPException::Rethrow(&v154);
    std::mutex::~mutex(&v155);
    std::exception_ptr::~exception_ptr(&v154);
    xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
    v154.__ptr_ = 0;
    v155.__m_.__sig = 850045863;
    memset(v155.__m_.__opaque, 0, sizeof(v155.__m_.__opaque));
    if (v148[1] != v148[0])
    {
      v131 = 0;
      if (((v148[1] - v148[0]) >> 4) <= 1)
      {
        v132 = 1;
      }

      else
      {
        v132 = (v148[1] - v148[0]) >> 4;
      }

      do
      {
        v133 = xgboost::common::BlockedSpace2d::GetFirstDimension(v148, v131);
        v134 = xgboost::common::BlockedSpace2d::GetRange(v148, v131);
        xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v133, v134, *(a1[13] + 3 * *(*v143 + 88 * v133)));
        ++v131;
      }

      while (v132 != v131);
    }
  }

  dmlc::OMPException::Rethrow(&v154);
  std::mutex::~mutex(&v155);
  std::exception_ptr::~exception_ptr(&v154);
  xgboost::tree::HistRowPartitioner::AddSplitsToRowSet(a1, v143, a4);
  if (__p[1])
  {
    *&v150 = __p[1];
    operator delete(__p[1]);
  }

  if (v148[0])
  {
    v148[1] = v148[0];
    operator delete(v148[0]);
  }

  if (v151.__begin_)
  {
    v151.__end_ = v151.__begin_;
    operator delete(v151.__begin_);
  }
}

void sub_274DBEE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  xgboost::common::Index::~Index(&a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::Builder(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  _ZNSt3__115allocate_sharedB8ne200100IN7xgboost6common13ColumnSamplerENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_274DBFC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, __n128 q1_0, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<xgboost::common::Monitor>::~unique_ptr[abi:ne200100]((v17 + 128), a9, q1_0);
  std::unique_ptr<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>>::~unique_ptr[abi:ne200100]((v18 + 72));
  std::vector<xgboost::tree::ApproxRowPartitioner>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::unique_ptr<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>>::reset[abi:ne200100]((v18 + 24), 0);
  v20 = *v18;
  if (*v18)
  {
    *(v17 + 40) = v20;
    operator delete(v20);
  }

  v21 = *(v17 + 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::UpdateTree(void *a1, char ***a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "UpdateTree");
  xgboost::common::Monitor::Start(v6, v7);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v8 = *a2;
  if (*a1 != 1)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(a1 + 4, (v8[1] - *v8) >> 3);
    if (a1 + 4 != v8)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__assign_with_size[abi:ne200100]<xgboost::detail::GradientPairInternal<float>*,xgboost::detail::GradientPairInternal<float>*>(a1 + 4, *v8, v8[1], (v8[1] - *v8) >> 3);
    }
  }

  xgboost::tree::QuantileHistMaker::Builder<double>::InitData();
}

void sub_274DBFE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitData");
  xgboost::common::Monitor::Start(v5, v6);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  (**a2)(a2);
  v21[0] = 0;
  v8 = a1[8];
  for (i = a1[9]; i != v8; std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(i))
  {
    i -= 136;
  }

  a1[9] = v8;
  v9 = a1[1];
  v10 = *(v9 + 20);
  v11 = *(v9 + 128);
  LODWORD(__p) = -1;
  HIDWORD(__p) = v10;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v11;
  (*(*a2 + 104))(&v19);
  __p = v19;
  v15 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v13, 0);
}

void sub_274DC0320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v30 = __p;
  __p = 0;
  if (v30)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&__p, v30);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::ExpandTree(uint64_t a1, uint64_t a2, xgboost::RegTree *a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "ExpandTree");
  xgboost::common::Monitor::Start(v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Driver(v9, *(*(a1 + 8) + 24));
  xgboost::tree::QuantileHistMaker::Builder<double>::InitRoot();
}

void sub_274DC0A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  __p = &a35;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&__p);
  xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::~Driver(v46 - 160);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::QuantileHistMaker::Builder<double>::UpdatePredictionCache(void *a1, uint64_t a2, uint64_t *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1[12];
  if (!v3)
  {
    return 0;
  }

  if (v3 != a2 || a1[11] == 0)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
  xgboost::common::Monitor::Start(v9, v10);
  if (v61.__m_.__opaque[7] < 0)
  {
    operator delete(v60.__ptr_);
  }

  v58[0] = a3[5];
  v11 = (*(*a2 + 24))(a2);
  if (v58[0] != *v11)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long long>(v58, v11);
  }

  v51 = a1[7];
  v52 = a1[1];
  v53 = a1[11];
  v12 = *a3;
  v13 = a3[2];
  v14 = a3[4];
  v15 = *(a3 + 12);
  v58[0] = a3[5];
  LODWORD(v54[0]) = 0;
  if (!v58[0])
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(v58, v54);
  }

  if (!v53)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v60);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./hist/evaluate_splits.h", 387);
    v48 = dmlc::LogMessageFatal::GetEntry(&v60);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Check failed: p_last_tree", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v60);
  }

  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v51 + 152), v58);
  LODWORD(v54[0]) = v15;
  v59.i32[0] = -1;
  if (v15 != -1)
  {
    dmlc::LogCheckFormat<int,int>(v54, &v59);
  }

  v57 = 0xCCCCCCCCCCCCCCCDLL * ((*(v53 + 168) - *(v53 + 160)) >> 2);
  v17 = a1[8];
  v16 = a1[9];
  v50 = v16;
  while (v17 != v16)
  {
    v54[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v17 + 112) - *(v17 + 104)) >> 3));
    if (v54[0] != v57)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long>(v54, &v57);
    }

    v18 = *(v17 + 104);
    v19 = *(v17 + 112);
    *v54 = 0u;
    *__p = 0u;
    v56 = 0u;
    v20 = v19 - v18;
    if (v20)
    {
      v21 = 0;
      v22 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3);
      do
      {
        v23 = *(*(v17 + 104) + 24 * v21 + 8) - *(*(v17 + 104) + 24 * v21);
        v24 = v23 >> 3;
        if ((v23 & 0x1FF8) != 0)
        {
          v25 = ((v23 >> 3) >> 10) + 1;
        }

        else
        {
          v25 = (v23 >> 3) >> 10;
        }

        if (v25)
        {
          v26 = 0;
          do
          {
            v27 = v26 + 1024;
            if (v24 >= v26 + 1024)
            {
              v28 = v26 + 1024;
            }

            else
            {
              v28 = v24;
            }

            xgboost::common::BlockedSpace2d::AddBlock(v54, v21, v26, v28);
            v26 = v27;
            --v25;
          }

          while (v25);
        }

        ++v21;
      }

      while (v21 != v22);
      v60.__ptr_ = 0;
      v61.__m_.__sig = 850045863;
      memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
      if (v54[1] != v54[0])
      {
        v29 = 0;
        if (((v54[1] - v54[0]) >> 4) <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = (v54[1] - v54[0]) >> 4;
        }

        do
        {
          FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v54, v29);
          Range = xgboost::common::BlockedSpace2d::GetRange(v54, v29);
          v35 = *(v53 + 160) + 20 * FirstDimension;
          if (*(v35 + 12) != -1 && *(v35 + 4) == -1)
          {
            v36 = Range;
            v37 = v33;
            v38 = *(v17 + 104);
            v59 = *(*(v51 + 296) + 24 * FirstDimension);
            v39 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v58, FirstDimension, v52, v59.i64, v59, v34);
            if (v36 < v37)
            {
              v40 = *(v38 + 24 * FirstDimension);
              v41 = v39 * v52[1];
              v42 = v40 + 8 * v37;
              v43 = (v40 + 8 * v36);
              do
              {
                v44 = *v43 * v12;
                if (v44 >= v13)
                {
                  __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                }

                *(v14 + 4 * v44) = v41 + *(v14 + 4 * v44);
                ++v43;
              }

              while (v43 < v42);
            }
          }

          ++v29;
        }

        while (v29 != v30);
      }
    }

    else
    {
      v60.__ptr_ = 0;
      v61.__m_.__sig = 850045863;
      memset(v61.__m_.__opaque, 0, sizeof(v61.__m_.__opaque));
    }

    dmlc::OMPException::Rethrow(&v60);
    std::mutex::~mutex(&v61);
    std::exception_ptr::~exception_ptr(&v60);
    if (__p[1])
    {
      *&v56 = __p[1];
      operator delete(__p[1]);
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    v17 += 136;
    v16 = v50;
  }

  std::string::basic_string[abi:ne200100]<0>(&v60, "UpdatePredictionCache");
  xgboost::common::Monitor::Stop(v45, v46);
  if (v61.__m_.__opaque[7] < 0)
  {
    operator delete(v60.__ptr_);
  }

  return 1;
}

void sub_274DC132C()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DC1434);
}

void sub_274DC1338()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274DC1434);
}

void sub_274DC13DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DC13E8);
}

void sub_274DC1400(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274DC1410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    JUMPOUT(0x274DC1430);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitSampling(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "InitSampling");
  xgboost::common::Monitor::Start(v6, v7);
  if (v21.__m_.__opaque[7] < 0)
  {
    operator delete(__p);
  }

  v8 = (*(*a2 + 24))(a2);
  v9 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
  v10 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v9);
  v11 = *v8;
  v12 = *(*(a1 + 8) + 48);
  __p = 0;
  v21.__m_.__sig = 850045863;
  memset(v21.__m_.__opaque, 0, sizeof(v21.__m_.__opaque));
  if (v11)
  {
    v13 = v12;
    if (v10 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = (*a3 + 4);
    do
    {
      if (*v15 < 0.0 || (v14 = (16807 * v14) & 0x7FFFFFFFFFFFFFFFLL, vcvtd_n_f64_u64(v14 - 1, 0x3FuLL) >= v13))
      {
        *(v15 - 1) = 0.0;
        *v15 = 0.0;
      }

      v15 += 2;
      --v11;
    }

    while (v11);
  }

  dmlc::OMPException::Rethrow(&__p);
  std::string::basic_string[abi:ne200100]<0>(&v18, "InitSampling");
  xgboost::common::Monitor::Stop(v16, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  std::mutex::~mutex(&v21);
  std::exception_ptr::~exception_ptr(&__p);
}

void sub_274DC15C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::exception_ptr a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex((v21 + 8));
  std::exception_ptr::~exception_ptr(&a16);
  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::InitRoot(void *a1@<X0>, xgboost::DMatrix *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 160);
  v7 = *v6;
  if (*v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      ++v8;
      v7 = v6[5 * (v7 & 0x7FFFFFFF)];
    }

    while (v7 != -1);
  }

  *a5 = 0;
  *(a5 + 1) = v8;
  a5[1] = 0;
  *(a5 + 4) = 0;
  a5[3] = 0;
  a5[4] = 0;
  a5[5] = 0;
  *(a5 + 48) = 0;
  *(a5 + 7) = 0u;
  *(a5 + 9) = 0u;
  v9 = a5[1];
  v22 = *a5;
  v23 = v9;
  LODWORD(v24) = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v10 = *(a5 + 4);
  v28 = *(a5 + 3);
  v29 = v10;
  v30 = a5[10];
  v20 = 0;
  v19 = 0uLL;
  std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(&v19, &v22, v31, 1uLL);
  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(&v21, a1 + 8, &v19);
  *&v18 = &v19;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  v11 = a1[1];
  v12 = *(v11 + 20);
  v13 = *(v11 + 128);
  LODWORD(v22) = -1;
  HIDWORD(v22) = v12;
  v23 = 0;
  v24 = 0;
  LOBYTE(v25) = 0;
  v26 = v13;
  (*(*a2 + 104))(&v18);
  v17 = v18;
  if (*(&v18 + 1))
  {
    atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v16, 0);
}

void sub_274DC1E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  xgboost::common::Index::~Index(va);
  v34 = *a10;
  if (*a10)
  {
    *(a11 + 32) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Builder<double>::BuildHistogram(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a4 + 1;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v44, 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  v32 = a2;
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v43, 0x2E8BA2E8BA2E8BA3 * ((*v8 - *a4) >> 3));
  v9 = *a4;
  v33 = a4[1];
  if (*a4 != v33)
  {
    v10 = 0;
    do
    {
      v11 = *(a3 + 160);
      v12 = v11 + 20 * *v9;
      v13 = *(v12 + 4);
      LODWORD(v12) = *(v12 + 8);
      v14 = v9[10];
      v15 = v9[8];
      if (v14 >= v15)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v14 >= v15)
      {
        v12 = v13;
      }

      else
      {
        v12 = v12;
      }

      v17 = *(v11 + 20 * v12);
      if (v17 == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          v17 = *(v11 + 20 * (v17 & 0x7FFFFFFF));
          v18 += 0x100000000;
        }

        while (v17 != -1);
      }

      memset(v45 + 7, 0, 32);
      v19 = v44[0] + 88 * v10;
      *v19 = v18 | v12;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      v21 = (v19 + 24);
      v20 = *(v19 + 24);
      if (v20)
      {
        *(v19 + 32) = v20;
        operator delete(v20);
        *v21 = 0;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
      }

      *v21 = 0;
      *(v19 + 32) = 0;
      *(v19 + 48) = 0;
      *(v19 + 40) = 0;
      *(v19 + 49) = v45[0];
      *(v19 + 65) = v45[1];
      *(v19 + 80) = *(&v45[1] + 15);
      v22 = *(a3 + 160);
      v23 = *(v22 + 20 * v16);
      if (v23 == -1)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        do
        {
          v23 = *(v22 + 20 * (v23 & 0x7FFFFFFF));
          v24 += 0x100000000;
        }

        while (v23 != -1);
      }

      v25 = v24 | v16;
      memset(v45 + 7, 0, 32);
      v26 = v43[0] + 88 * v10;
      *v26 = v25;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      v28 = (v26 + 24);
      v27 = *(v26 + 24);
      if (v27)
      {
        *(v26 + 32) = v27;
        operator delete(v27);
        *v28 = 0;
        *(v26 + 32) = 0;
        *(v26 + 40) = 0;
      }

      *v28 = 0;
      *(v26 + 32) = 0;
      *(v26 + 48) = 0;
      *(v26 + 40) = 0;
      *(v26 + 49) = v45[0];
      *(v26 + 65) = v45[1];
      *(v26 + 80) = *(&v45[1] + 15);
      ++v10;
      v9 += 11;
    }

    while (v9 != v33);
  }

  xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::HistRowPartitioner>>(v45, a1 + 8, v44);
  v29 = a1[1];
  v30 = *(v29 + 20);
  v31 = *(v29 + 128);
  LODWORD(v36) = -1;
  HIDWORD(v36) = v30;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = v31;
  (*(*v32 + 104))(&v41);
  v36 = v41;
  v37 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
  }

  xgboost::BatchIterator<xgboost::GHistIndexMatrix>::BatchIterator(&v35, 0);
}

void sub_274DC2490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, char a29)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  xgboost::common::Index::~Index((v29 - 144));
  *(v29 - 144) = &a29;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  *(v29 - 144) = v29 - 168;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100]((v29 - 144));
  _Unwind_Resume(a1);
}

void xgboost::tree::QuantileHistMaker::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v5, (a1 + 24), a2);
  v6 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v4, (a1 + 16), a2);
  v6 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

uint64_t xgboost::tree::QuantileHistMaker::Update(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(result + 28);
  *(result + 28) = v4 / (a4[1] - *a4);
  if (*(result + 17) == 1)
  {
    if (!*(result + 160))
    {
      operator new();
    }
  }

  else if (!*(result + 168))
  {
    operator new();
  }

  if (*a4 != a4[1])
  {
    if (*(result + 17) == 1)
    {
      xgboost::tree::QuantileHistMaker::Builder<float>::UpdateTree();
    }

    xgboost::tree::QuantileHistMaker::Builder<double>::UpdateTree();
  }

  *(result + 28) = v4;
  return result;
}

uint64_t *std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2, float a3, __n128 a4)
{
  v4 = *result;
  *result = a2;
  if (v4)
  {
    std::unique_ptr<xgboost::common::Monitor>::~unique_ptr[abi:ne200100]((v4 + 128), a3, a4);
    std::unique_ptr<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>>::~unique_ptr[abi:ne200100]((v4 + 104));
    v7 = (v4 + 64);
    std::vector<xgboost::tree::ApproxRowPartitioner>::__destroy_vector::operator()[abi:ne200100](&v7);
    std::unique_ptr<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>>::reset[abi:ne200100]((v4 + 56), 0);
    v5 = *(v4 + 32);
    if (v5)
    {
      *(v4 + 40) = v5;
      operator delete(v5);
    }

    v6 = *(v4 + 24);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    JUMPOUT(0x277C69180);
  }

  return result;
}

uint64_t xgboost::tree::QuantileHistMaker::UpdatePredictionCache(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 17) == 1 && *(a1 + 160))
  {
    xgboost::tree::QuantileHistMaker::Builder<float>::UpdatePredictionCache();
  }

  result = *(a1 + 168);
  if (result)
  {
    xgboost::tree::QuantileHistMaker::Builder<double>::UpdatePredictionCache();
  }

  return result;
}

void xgboost::tree::HistRowPartitioner::FindSplitConditions(uint64_t *a1, uint64_t a2, uint64_t a3, std::vector<int> *this)
{
  std::vector<int>::resize(this, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
  v8 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    do
    {
      v10 = *(a2 + 160) + 20 * *(v8 + 88 * v9);
      v11 = *(v10 + 12) & 0x7FFFFFFF;
      v12 = *(v10 + 16);
      v13 = **(a3 + 128);
      v14 = *(v13 + 4 * v11);
      v17 = *(v13 + 4 * (v11 + 1));
      v16 = 0x7FFFFFFF;
      if (v17 > 0x7FFFFFFE)
      {
        dmlc::LogCheckFormat<unsigned int,unsigned int>(&v17, &v16);
      }

      if (v14 >= v17)
      {
        v15 = -1;
      }

      else
      {
        v15 = -1;
        do
        {
          if (v12 == *(**(a3 + 120) + 4 * v14))
          {
            v15 = v14;
          }

          ++v14;
        }

        while (v17 != v14);
      }

      this->__begin_[v9++] = v15;
      v8 = *a1;
    }

    while (v9 < 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
  }
}

void sub_274DC2A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistRowPartitioner::AddSplitsToRowSet(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    v8 = 0;
    v9 = 0x2E8BA2E8BA2E8BA3 * (v4 >> 3);
    v10 = 1;
    do
    {
      v11 = *(*a2 + 88 * v8);
      v12 = (*a1 + 16 * (v10 - 1));
      v13 = *v12;
      v14 = v12[1];
      v15 = *(a3 + 160) + 20 * v11;
      v16 = *(v15 + 4);
      v19 = *(v15 + 8);
      v20 = v16 + 1;
      if (v16 + 1 != v19)
      {
        dmlc::LogCheckFormat<int,int>(&v20, &v19);
      }

      v17 = *(a3 + 160) + 20 * v11;
      xgboost::common::RowSetCollection::AddSplit((a1 + 10), v11, *(v17 + 4), *(v17 + 8), v13, v14);
      v8 = v10;
    }

    while (v9 > v10++);
  }
}

void sub_274DC2C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::~QuantileHistMaker(xgboost::tree::QuantileHistMaker *this, float a2, __n128 a3)
{
  *this = &unk_2883E4AB8;
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 21, 0, a2, a3);
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 20, 0, v4, v5);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }
}

{
  *this = &unk_2883E4AB8;
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 21, 0, a2, a3);
  std::unique_ptr<xgboost::tree::QuantileHistMaker::Builder<float>>::reset[abi:ne200100](this + 20, 0, v4, v5);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::tree::QuantileHistMaker::LoadConfig(xgboost::tree::QuantileHistMaker *this, const xgboost::Json *a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 24), v10);
  v6[0] = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v6);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "cpu_hist_train_param");
  v5 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::CPUHistMakerTrainParam>(v5, (this + 16), v9);
  v6[0] = v9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v6);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DC2E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v21, v22) + 4) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/./updater_quantile_hist.h");
      xgboost::ConsoleLogger::ConsoleLogger(&a18, &__p, 248, 1);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a18, "Attempted to load internal configuration for a model file that was generated ", 77);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "by a previous version of XGBoost. A likely cause for this warning is that the model ", 84);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "was saved with saveRDS() in R or pickle.dump() in Python. We strongly ADVISE AGAINST ", 85);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "using saveRDS() or pickle.dump() so that the model remains accessible in current and ", 85);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "upcoming XGBoost releases. Please use xgb.save() instead to preserve models for the ", 84);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "long term. For more details and explanation, see ", 49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "https://xgboost.readthedocs.io/en/latest/tutorials/saving_model.html", 68);
      xgboost::ConsoleLogger::~ConsoleLogger(&a18, v29, v30);
      if (a17 < 0)
      {
        operator delete(__p);
      }
    }

    a18 = 0;
    a19 = 0;
    a20 = 0;
    xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(&a9, (v20 + 16), &a18);
    __p = &a9;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    __p = &a18;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
    __cxa_end_catch();
    JUMPOUT(0x274DC2E20);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::QuantileHistMaker::SaveConfig(xgboost::tree::QuantileHistMaker *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 24), v5);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v3 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v3, v5);
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned char,true>(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v4 = 1;
  if (*(a2 + 38) != 1)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v5, &v4, a2 + 38);
  }

  if (*(a2[12] + 8 * (a3 + 1)) == *(a2[12] + 8 * a3) || *a2 != 0)
  {
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v4) = 1;
    if (*(a2 + 156))
    {
      operator new();
    }

    dmlc::LogCheckFormat<BOOL,BOOL>(&v4, a2 + 156);
  }

  std::terminate();
}

void *xgboost::RegTree::NodeCats(xgboost::RegTree *this, void *a2, int a3)
{
  v3 = a2[32];
  v4 = a2[35];
  v5 = a2[36] - v4;
  v7[0] = (a2[33] - v3) >> 2;
  v7[1] = v3;
  if (a3 >= (v5 >> 4))
  {
    std::terminate();
  }

  return xgboost::common::Span<float,18446744073709551615ul>::subspan(v7, *(v4 + 16 * a3), *(v4 + 16 * a3 + 8), this);
}

void dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(void *a1, void *a2, unsigned int *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E50](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E30](v7, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274DC36BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::common::DenseColumn<unsigned char,true>::GetBinIdx(uint64_t a1, unint64_t a2)
{
  if ((*(**(a1 + 40) + (((*(a1 + 48) + a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 48) + a2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= a2)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + a2);
}

uint64_t xgboost::common::SparseColumn<unsigned char>::GetBinIdx(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = *a3;
  if (*a3 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >= a2)
    {
      break;
    }

    *a3 = ++v4;
    if (v3 == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= v4)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + v4);
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned short,true>(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v4 = 2;
  if (*(a2 + 38) != 2)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v5, &v4, a2 + 38);
  }

  if (*(a2[12] + 8 * (a3 + 1)) == *(a2[12] + 8 * a3) || *a2 != 0)
  {
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v4) = 1;
    if (*(a2 + 156))
    {
      operator new();
    }

    dmlc::LogCheckFormat<BOOL,BOOL>(&v4, a2 + 156);
  }

  std::terminate();
}

uint64_t xgboost::common::DenseColumn<unsigned short,true>::GetBinIdx(uint64_t a1, unint64_t a2)
{
  if ((*(**(a1 + 40) + (((*(a1 + 48) + a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 48) + a2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= a2)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + 2 * a2);
}

uint64_t xgboost::common::SparseColumn<unsigned short>::GetBinIdx(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = *a3;
  if (*a3 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >= a2)
    {
      break;
    }

    *a3 = ++v4;
    if (v3 == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= v4)
  {
    std::terminate();
  }

  return *(a1 + 32) + *(*(a1 + 24) + 2 * v4);
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned int,true>(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v4 = 4;
  if (*(a2 + 38) != 4)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v5, &v4, a2 + 38);
  }

  if (*(a2[12] + 8 * (a3 + 1)) == *(a2[12] + 8 * a3) || *a2 != 0)
  {
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v4) = 1;
    if (*(a2 + 156))
    {
      operator new();
    }

    dmlc::LogCheckFormat<BOOL,BOOL>(&v4, a2 + 156);
  }

  std::terminate();
}

uint64_t xgboost::common::DenseColumn<unsigned int,true>::GetBinIdx(uint64_t a1, unint64_t a2)
{
  if ((*(**(a1 + 40) + (((*(a1 + 48) + a2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 48) + a2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= a2)
  {
    std::terminate();
  }

  return (*(*(a1 + 24) + 4 * a2) + *(a1 + 32));
}

uint64_t xgboost::common::SparseColumn<unsigned int>::GetBinIdx(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = *a3;
  if (*a3 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >= a2)
    {
      break;
    }

    *a3 = ++v4;
    if (v3 == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) <= v4)
  {
    std::terminate();
  }

  return (*(*(a1 + 24) + 4 * v4) + *(a1 + 32));
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned char,false>(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v4 = 1;
  if (*(a2 + 38) != 1)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v5, &v4, a2 + 38);
  }

  if (*(a2[12] + 8 * (a3 + 1)) == *(a2[12] + 8 * a3) || *a2 != 0)
  {
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v4) = 0;
    if (*(a2 + 156))
    {
      dmlc::LogCheckFormat<BOOL,BOOL>(&v4, a2 + 156);
    }

    operator new();
  }

  std::terminate();
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned short,false>(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v4 = 2;
  if (*(a2 + 38) != 2)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v5, &v4, a2 + 38);
  }

  if (*(a2[12] + 8 * (a3 + 1)) == *(a2[12] + 8 * a3) || *a2 != 0)
  {
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v4) = 0;
    if (*(a2 + 156))
    {
      dmlc::LogCheckFormat<BOOL,BOOL>(&v4, a2 + 156);
    }

    operator new();
  }

  std::terminate();
}

void xgboost::common::ColumnMatrix::GetColumn<unsigned int,false>(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v4 = 4;
  if (*(a2 + 38) != 4)
  {
    dmlc::LogCheckFormat<unsigned long,xgboost::common::BinTypeSize>(&v5, &v4, a2 + 38);
  }

  if (*(a2[12] + 8 * (a3 + 1)) == *(a2[12] + 8 * a3) || *a2 != 0)
  {
    *a1 = 0;
    if (*(a2[6] + a3))
    {
      operator new();
    }

    LOBYTE(v4) = 0;
    if (*(a2 + 156))
    {
      dmlc::LogCheckFormat<BOOL,BOOL>(&v4, a2 + 156);
    }

    operator new();
  }

  std::terminate();
}

uint64_t *std::vector<xgboost::detail::GradientPairInternal<float>>::__assign_with_size[abi:ne200100]<xgboost::detail::GradientPairInternal<float>*,xgboost::detail::GradientPairInternal<float>*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<xgboost::detail::GradientPairInternal<float>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
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

xgboost::tree::HistRowPartitioner *std::vector<xgboost::tree::HistRowPartitioner>::__emplace_back_slow_path<unsigned long,unsigned long const&,int>(xgboost::tree::HistRowPartitioner **a1, unint64_t *a2, unint64_t *a3, int *a4)
{
  v4 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v7 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v7 = v5;
  }

  v22 = a1;
  if (v7)
  {
    if (v7 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v18 = 0;
  v19 = 136 * v4;
  v20 = 136 * v4;
  v21 = 0;
  xgboost::tree::HistRowPartitioner::HistRowPartitioner((136 * v4), *a2, *a3, *a4);
  v8 = (136 * v4 + 136);
  v20 = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v19 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = (v19 + *a1 - v10);
    v13 = *a1;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v13;
      v12[2] = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12[5] = 0;
      *(v12 + 3) = *(v13 + 24);
      v12[5] = *(v13 + 5);
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      *(v13 + 5) = 0;
      v12[6] = 0;
      v12[7] = 0;
      v12[8] = 0;
      *(v12 + 3) = *(v13 + 3);
      v14 = *(v13 + 9);
      v12[8] = *(v13 + 8);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 6) = 0;
      v12[11] = 0;
      v12[12] = 0;
      v12[9] = v14;
      v12[10] = 0;
      *(v12 + 5) = *(v13 + 5);
      v12[12] = *(v13 + 12);
      *(v13 + 10) = 0;
      *(v13 + 11) = 0;
      *(v13 + 12) = 0;
      v12[13] = 0;
      v12[14] = 0;
      v12[15] = 0;
      *(v12 + 13) = *(v13 + 104);
      v15 = *(v13 + 16);
      v12[15] = *(v13 + 15);
      *(v13 + 13) = 0;
      *(v13 + 14) = 0;
      *(v13 + 15) = 0;
      v12[16] = v15;
      v13 = (v13 + 136);
      v12 += 17;
    }

    while (v13 != v10);
    do
    {
      std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(v9);
      v9 += 136;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v20;
  }

  *a1 = v11;
  a1[1] = v8;
  v16 = a1[2];
  a1[2] = v21;
  v20 = v9;
  v21 = v16;
  v18 = v9;
  v19 = v9;
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(&v18);
  return v8;
}

void sub_274DC4D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

xgboost::tree::HistRowPartitioner *xgboost::tree::HistRowPartitioner::HistRowPartitioner(xgboost::tree::HistRowPartitioner *this, unint64_t a2, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *(this + 5) = 0u;
  v8 = (this + 80);
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v19.__ptr_ = 0;
  v20.__m_.__sig = 850045863;
  memset(v20.__m_.__opaque, 0, sizeof(v20.__m_.__opaque));
  std::vector<unsigned long>::resize(this + 10, a2);
  if (a2 % a4)
  {
    v9 = a2 / a4 + 1;
  }

  else
  {
    v9 = a2 / a4;
  }

  if (a2 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a2;
  }

  if (v10)
  {
    v11 = (v10 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v12 = vdupq_n_s64(v10 - 1);
    v13 = xmmword_274E1F3B0;
    v14 = (*v8 + 8);
    v15 = vdupq_n_s64(2uLL);
    v16 = a3;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v13));
      if (v17.i8[0])
      {
        *(v14 - 1) = v16;
      }

      if (v17.i8[4])
      {
        *v14 = v16 + 1;
      }

      v13 = vaddq_s64(v13, v15);
      v14 += 2;
      v16 += 2;
      v11 -= 2;
    }

    while (v11);
  }

  xgboost::common::RowSetCollection::Init(v8);
  *(this + 16) = a3;
  std::mutex::~mutex(&v20);
  std::exception_ptr::~exception_ptr(&v19);
  return this;
}

void sub_274DC4EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::mutex::~mutex((v11 + 8));
  std::exception_ptr::~exception_ptr(&a9);
  xgboost::common::Index::~Index(v10);
  xgboost::common::PartitionBuilder<2048ul>::~PartitionBuilder(v9);
  _Unwind_Resume(a1);
}

void xgboost::Learner::~Learner(xgboost::Learner *this)
{
  *this = &unk_2883E4DD0;
  *(this + 1) = &unk_2883E4ED8;
  *(this + 2) = &unk_2883E4F08;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

uint64_t xgboost::LearnerModelParam::LearnerModelParam(uint64_t a1, _DWORD *a2, __int16 a3, float a4)
{
  *a1 = a4;
  v5 = a2[1];
  *(a1 + 12) = a3;
  v6 = a2[2];
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[7];
  if (v7 <= v8)
  {
    v9 = a2[7];
  }

  else
  {
    v9 = v7;
  }

  *(a1 + 4) = v5;
  *(a1 + 8) = v9;
  if (v6 >= 2 && v8 >= 2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v19);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 188);
    v13 = dmlc::LogMessageFatal::GetEntry(&v19);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Check failed: n_classes <= 1 || n_targets <= 1", 46);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ": ", 2);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Multi-class multi-output is not yet supported. n_classes:", 57);
    v17 = MEMORY[0x277C68E30](v16, v7);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", n_targets:", 12);
    MEMORY[0x277C68E30](v18, v8);
    dmlc::LogMessageFatal::~LogMessageFatal(&v19);
  }

  return a1;
}

{
  return xgboost::LearnerModelParam::LearnerModelParam(a1, a2, a3, a4);
}

double xgboost::GenericParameter::GenericParameter(xgboost::GenericParameter *this)
{
  *this = 0;
  *(this + 1) = -1;
  *(this + 1) = 0;
  *(this + 16) = 0;
  result = NAN;
  *(this + 20) = 0xFFFFFFFF00000000;
  *(this + 14) = 0;
  return result;
}

{
  *this = 0;
  *(this + 1) = -1;
  *(this + 1) = 0;
  *(this + 16) = 0;
  result = NAN;
  *(this + 20) = 0xFFFFFFFF00000000;
  *(this + 14) = 0;
  return result;
}

void xgboost::GenericParameter::ConfigureGpuId(xgboost::GenericParameter *this)
{
  v9 = *MEMORY[0x277D85DE8];
  std::to_string(&v2, -1);
  std::string::basic_string[abi:ne200100]<0>(v6, "gpu_id");
  __p = v2;
  memset(&v2, 0, sizeof(v2));
  memset(v3, 0, sizeof(v3));
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(v3, v6, &v9, 1uLL);
  xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v4, this, v3);
  v5 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = v3;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v2.__r_.__value_.__l.__data_);
  }
}

void sub_274DC53E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::pair<std::string,std::string>::~pair(&a23);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::GenericParameter *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::GenericParameter::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BF8, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::GenericParameter::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BF8, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274DC54D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_274DC5584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&a12);
  MEMORY[0x277C69180](v13, v12);
  _Unwind_Resume(a1);
}

void xgboost::LearnerImpl::LearnerImpl(unint64_t a1, uint64_t *a2)
{
  memset(v3, 0, sizeof(v3));
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__init_with_size[abi:ne200100]<std::shared_ptr<xgboost::DMatrix>*,std::shared_ptr<xgboost::DMatrix>*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  xgboost::LearnerIO::LearnerIO(a1, v3);
}

void xgboost::LearnerIO::LearnerIO(unint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__init_with_size[abi:ne200100]<std::shared_ptr<xgboost::DMatrix>*,std::shared_ptr<xgboost::DMatrix>*>(&v9, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 49) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 68) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0xFFFFFFFF00000000;
  *(a1 + 92) = 0;
  *a1 = &unk_2883E52E8;
  *(a1 + 8) = &unk_2883E5408;
  *(a1 + 16) = &unk_2883E5438;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  xgboost::common::Monitor::Monitor((a1 + 264));
  *(a1 + 428) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 460) = 0x3F00000000000000;
  *(a1 + 328) = 1056964608;
  *(a1 + 348) = 1;
  *(a1 + 352) = 0x100000006;
  *(a1 + 476) = 0;
  *(a1 + 468) = 0;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  *(a1 + 560) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__str, "Learner");
  std::string::operator=((a1 + 264), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v3 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get();
  v13 = a1;
  v12[0] = &v13;
  v4 = std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::__emplace_unique_key_args<xgboost::Learner const*,std::piecewise_construct_t const&,std::tuple<xgboost::Learner const*&&>,std::tuple<>>(v3, a1, v12);
  v6 = v9;
  v5 = v10;
  if (v9 != v10)
  {
    v7 = v4;
    do
    {
      v8 = *(v6 + 8);
      v12[0] = *v6;
      v12[1] = &v8->__vftable;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      xgboost::PredictionContainer::Cache(v7 + 5, v12, -1);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v6 += 16;
    }

    while (v6 != v5);
  }

  __str.__r_.__value_.__r.__words[0] = &v9;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&__str);
  *a1 = &unk_2883E5158;
  *(a1 + 8) = &unk_2883E5288;
  *(a1 + 16) = &unk_2883E52B8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "num_round");
  *(a1 + 576) = 0u;
  *(a1 + 568) = a1 + 576;
  operator new();
}

void sub_274DC5A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v24);
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(v23, *v25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  xgboost::LearnerConfiguration::~LearnerConfiguration(v22);
  _Unwind_Resume(a1);
}

void xgboost::LearnerIO::~LearnerIO(xgboost::LearnerIO *this)
{
  *this = &unk_2883E5158;
  *(this + 1) = &unk_2883E5288;
  *(this + 2) = &unk_2883E52B8;
  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(this + 568, *(this + 72));

  xgboost::LearnerConfiguration::~LearnerConfiguration(this);
}

void xgboost::LearnerImpl::~LearnerImpl(xgboost::LearnerImpl *this)
{
  xgboost::LearnerImpl::~LearnerImpl(this);
}

{
  *this = &unk_2883E4F80;
  *(this + 1) = &unk_2883E50B0;
  *(this + 2) = &unk_2883E50E0;
  v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get();
  v4 = v2 + 1;
  v3 = v2[1];
  if (v3)
  {
    v5 = v2 + 1;
    v6 = v2[1];
    do
    {
      v7 = v6[4];
      v8 = v7 >= this;
      v9 = v7 < this;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= this)
    {
      v10 = v2 + 1;
      v11 = v2[1];
      do
      {
        v12 = *(v11 + 32);
        v8 = v12 >= this;
        v13 = v12 < this;
        if (v8)
        {
          v10 = v11;
        }

        v11 = *(v11 + 8 * v13);
      }

      while (v11);
      if (v10 != v4 && v10[4] <= this)
      {
        v14 = v10[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          v16 = v10;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*v2 == v10)
        {
          *v2 = v15;
        }

        --v2[2];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v10);
        xgboost::XGBAPIThreadLocalEntry::~XGBAPIThreadLocalEntry((v10 + 5));
      }
    }
  }

  std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table(this + 624);
  xgboost::HostDeviceVector<xgboost::detail::GradientPairInternal<float>>::~HostDeviceVector();
}

void xgboost::LearnerIO::LoadModel(xgboost::LearnerIO *this, const xgboost::Json *a2)
{
  v77[29] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 12) != 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v75);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 746);
    v64 = dmlc::LogMessageFatal::GetEntry(&v75);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Check failed: IsA<Object>(in)", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v75);
  }

  xgboost::Version::Load(a2, a2);
  v6 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v4, v5);
  if (v8 == 1 && v7 <= 5 && *(v6 + 4) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
    xgboost::ConsoleLogger::ConsoleLogger(&v75, &__p, 749, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, "Found JSON model saved before XGBoost 1.6, please save the model using current version again. The support for old JSON model will be discontinued in XGBoost 2.3.", 161);
    xgboost::ConsoleLogger::~ConsoleLogger(&v75, v9, v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "learner");
  v11 = (*(**a2 + 24))(*a2, &v75);
  v12 = xgboost::Cast<xgboost::JsonObject,xgboost::Value>(*v11);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v68, "learner_model_param");
  v13 = std::map<std::string,xgboost::Json>::at((v12 + 16), v68);
  v14 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v13);
  *&v75.__r_.__value_.__r.__words[1] = 0uLL;
  v75.__r_.__value_.__r.__words[0] = &v75.__r_.__value_.__l.__size_;
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_feature");
  v15 = std::map<std::string,xgboost::Json>::at((v14 + 16), &__p.__r_.__value_.__l.__data_);
  v16 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v15);
  std::string::basic_string[abi:ne200100]<0>(&p_p, "num_feature");
  v74 = &p_p;
  v17 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v75, &p_p, &std::piecewise_construct, &v74);
  std::string::operator=((v17 + 56), (v16 + 16));
  if (SHIBYTE(v72) < 0)
  {
    operator delete(p_p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  v18 = std::map<std::string,xgboost::Json>::at((v14 + 16), &__p.__r_.__value_.__l.__data_);
  v19 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v18);
  std::string::basic_string[abi:ne200100]<0>(&p_p, "num_class");
  v74 = &p_p;
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v75, &p_p, &std::piecewise_construct, &v74);
  std::string::operator=((v20 + 56), (v19 + 16));
  if (SHIBYTE(v72) < 0)
  {
    operator delete(p_p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_target");
  v21 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v14 + 16), &__p.__r_.__value_.__l.__data_);
  v22 = v21;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v14 + 24 != v22)
  {
    v23 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v22[7]);
    std::string::basic_string[abi:ne200100]<0>(&__p, "num_target");
    p_p = &__p;
    v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v75, &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &p_p);
    v21 = std::string::operator=((v24 + 56), (v23 + 16));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  xgboost::LearnerModelParamLegacy::__MANAGER__(v21);
  dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6B68, this + 328, v75.__r_.__value_.__l.__data_, &v75.__r_.__value_.__l.__size_, 0, 2);
  std::string::basic_string[abi:ne200100]<0>(&p_p, "base_score");
  v25 = std::map<std::string,xgboost::Json>::at((v14 + 16), &p_p);
  v26 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v25);
  if (v26[39] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v26 + 2), *(v26 + 3));
  }

  else
  {
    __p = *(v26 + 16);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(p_p);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = LODWORD(__p.__r_.__value_.__r.__words[1]);
  }

  xgboost::detail::FromCharFloatImpl(v28, v29, this + 82, v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v75, v75.__r_.__value_.__l.__size_);
  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "objective");
  v30 = std::map<std::string,xgboost::Json>::at((v12 + 16), &v75.__r_.__value_.__l.__data_);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "name");
  v31 = (*(**v30 + 24))(*v30, &v75);
  v32 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v31);
  if (v32[39] < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v32 + 2), *(v32 + 3));
  }

  else
  {
    __p = *(v32 + 16);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[10],std::string&,0>(&v75, &__p);
  p_p = 0;
  v71 = 0;
  v72 = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&p_p, &v75, v77, 1uLL);
  xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v67, this + 480, &p_p);
  v68[0] = v67;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v68);
  v68[0] = &p_p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v68);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v33 = xgboost::ObjFunction::Create(&__p, this + 64);
  v34 = *(this + 3);
  *(this + 3) = v33;
  if (v34)
  {
    (*(*v34 + 8))(v34);
    v33 = *(this + 3);
  }

  (*(*v33 + 16))(v33, v30);
  std::string::basic_string[abi:ne200100]<0>(&v75, "gradient_booster");
  v35 = std::map<std::string,xgboost::Json>::at((v12 + 16), &v75.__r_.__value_.__l.__data_);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "name");
  v36 = (*(**v35 + 24))(*v35, &v75);
  v37 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v36);
  std::string::operator=(&__p, (v37 + 16));
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "booster");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = __p;
  }

  p_p = 0;
  v71 = 0;
  v72 = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&p_p, &v75, v77, 1uLL);
  xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v66, this + 480, &p_p);
  v68[0] = v66;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v68);
  v68[0] = &p_p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v68);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  xgboost::GradientBooster::Create(this + 496, this + 64, this + 464);
  v39 = *(this + 4);
  *(this + 4) = v38;
  if (v39)
  {
    (*(*v39 + 8))(v39);
    v38 = *(this + 4);
  }

  (*(*v38 + 16))(v38, v35);
  std::string::basic_string[abi:ne200100]<0>(&v75, "attributes");
  v40 = std::map<std::string,xgboost::Json>::at((v12 + 16), &v75.__r_.__value_.__l.__data_);
  v41 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v40);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 192, *(this + 25));
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = this + 200;
  v42 = v41[2];
  if (v42 != v41 + 3)
  {
    do
    {
      v43 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v42[7]);
      v75.__r_.__value_.__r.__words[0] = (v42 + 4);
      v44 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 24, v42 + 4, &std::piecewise_construct, &v75, &p_p);
      std::string::operator=((v44 + 7), (v43 + 16));
      v45 = v42[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v42[2];
          v47 = *v46 == v42;
          v42 = v46;
        }

        while (!v47);
      }

      v42 = v46;
    }

    while (v46 != v41 + 3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "feature_names");
  v48 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v12 + 16), &v75.__r_.__value_.__l.__data_);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v49 = v12 + 24;
  if (v12 + 24 != v48)
  {
    v50 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v48 + 56));
    std::vector<std::string>::resize(this + 9, (*(v50 + 3) - *(v50 + 2)) >> 3);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 != v51)
    {
      v53 = *(this + 27);
      do
      {
        v54 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v52);
        if (v54[39] < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *(v54 + 2), *(v54 + 3));
        }

        else
        {
          v75 = *(v54 + 16);
        }

        if (*(v53 + 23) < 0)
        {
          operator delete(*v53);
        }

        v55 = *&v75.__r_.__value_.__l.__data_;
        *(v53 + 16) = *(&v75.__r_.__value_.__l + 2);
        *v53 = v55;
        v53 += 24;
        ++v52;
      }

      while (v52 != v51);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v75, "feature_types");
  v56 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>((v12 + 16), &v75.__r_.__value_.__l.__data_);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v49 != v56)
  {
    v57 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*(v56 + 56));
    std::vector<std::string>::resize(this + 10, (*(v57 + 3) - *(v57 + 2)) >> 3);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 != v58)
    {
      v60 = *(this + 30);
      do
      {
        v61 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v59);
        if (v61[39] < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *(v61 + 2), *(v61 + 3));
        }

        else
        {
          v75 = *(v61 + 16);
        }

        if (*(v60 + 23) < 0)
        {
          operator delete(*v60);
        }

        v62 = *&v75.__r_.__value_.__l.__data_;
        *(v60 + 16) = *(&v75.__r_.__value_.__l + 2);
        *v60 = v62;
        v60 += 24;
        ++v59;
      }

      while (v59 != v58);
    }
  }

  atomic_store(1u, this + 160);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void xgboost::LearnerIO::SaveModel(xgboost::LearnerIO *this, xgboost::Json *a2)
{
  v3 = atomic_load(this + 160);
  if (v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 797);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Call Configure before saving model.", 35);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  xgboost::Version::Save(a2, a2);
}

void xgboost::LearnerConfiguration::Configure(xgboost::LearnerConfiguration *this)
{
  v1 = this + 160;
  v2 = atomic_load(this + 160);
  if ((v2 & 1) == 0)
  {
    return;
  }

  v3 = this;
  std::mutex::lock((this + 96));
  v4 = atomic_load(v1);
  if ((v4 & 1) == 0)
  {
    goto LABEL_202;
  }

  v139 = v3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "Configure");
  xgboost::common::Monitor::Start(v5, v6);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  v144 = *(v3 + 480);
  v145 = *(v3 + 121);
  v146 = *(v3 + 488);
  v7 = (v3 + 496);
  if (*(v3 + 519) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, *(v3 + 62), *(v3 + 63));
  }

  else
  {
    *&v147.__r_.__value_.__l.__data_ = *v7;
    v147.__r_.__value_.__r.__words[2] = *(v3 + 64);
  }

  v8 = (v3 + 520);
  if (*(v3 + 543) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, *(v3 + 65), *(v3 + 66));
  }

  else
  {
    *&v148.__r_.__value_.__l.__data_ = *v8;
    v148.__r_.__value_.__r.__words[2] = *(v3 + 67);
  }

  v9 = v3 + 168;
  v137 = (v3 + 176);
  std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(&v143, *(v3 + 21), v3 + 22);
  xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v142, v3 + 480, &v143);
  __p.__begin_ = v142;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v10 = *(v3 + 82);
  memset(v141, 0, sizeof(v141));
  xgboost::LearnerModelParamLegacy::__MANAGER__(v11);
  dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6B68, v3 + 328, v143.__begin_, v143.__end_, 0, v141, 0);
  __p.__begin_ = v141;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v12 = *(v3 + 64);
  v13 = *(v139 + 9);
  v138 = (v139 + 64);
  xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v140, v139 + 64, &v143);
  __p.__begin_ = v140;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v136 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v14, v15);
  xgboost::XGBoostParameter<xgboost::GlobalConfiguration>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(&__p, v136, &v143);
  v149.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v149);
  if (!*(v139 + 121))
  {
    Engine = rabit::engine::GetEngine(v16, v17, v18);
    if ((*(*Engine + 80))(Engine))
    {
      *(v139 + 121) = 2;
    }
  }

  if ((v12 & 1) == 0 || *(v139 + 9) != v13)
  {
    v20 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v21 = *(v139 + 18);
    *v20 = v21;
    for (i = 1; i != 624; ++i)
    {
      v21 = i + 1812433253 * (v21 ^ (v21 >> 30));
      *(v20 + 4 * i) = v21;
    }

    *(v20 + 2496) = 0;
  }

  v23 = (v139 + 332);
  if (!*(v139 + 83))
  {
    LODWORD(v154) = 0;
    v24 = (*(*v139 + 248))(v139);
    xgboost::PredictionContainer::ClearExpiredEntries(v24);
    for (j = v24[2]; j; j = *j)
    {
      if (!j[2])
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&__p);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 638);
        v35 = dmlc::LogMessageFatal::GetEntry(&__p);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Check failed: matrix.first", 26);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      }

      v29 = j[6];
      if (!v29 || *(v29 + 8) == -1)
      {
        v31 = dmlc::LogMessageFatal::GetEntry(&__p);
        dmlc::LogMessageFatal::Entry::Init(v31, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 639);
        v32 = dmlc::LogMessageFatal::GetEntry(&__p);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Check failed: !matrix.second.ref.expired()", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      }

      v25 = (**j[2])(j[2]);
      __p.__begin_ = v25[1];
      v153 = 0xFFFFFFFFLL;
      if (__p.__begin_ >> 32)
      {
        dmlc::LogCheckFormat<unsigned long long,unsigned long long>(&__p, &v153);
      }

      begin = __p.__begin_;
      if (v154 > LODWORD(__p.__begin_))
      {
        begin = v154;
      }

      LODWORD(v154) = begin;
    }

    v37 = rabit::engine::GetEngine(v25, v26, v27);
    (*(*v37 + 8))(v37, &v154, 4, 1, rabit::op::Reducer<rabit::op::Max,unsigned int>, 0, 0);
    v38 = *v23;
    if (v154 <= *v23)
    {
      LODWORD(v149.__r_.__value_.__l.__data_) = 0;
      if (!v38)
      {
        dmlc::LogCheckFormat<unsigned int,int>(v23, &v149);
      }
    }

    else
    {
      *v23 = v154;
    }
  }

  xgboost::common::ToString<unsigned int>(&__p, v23);
  std::string::basic_string[abi:ne200100]<0>(&v149, "num_feature");
  v153 = &v149;
  v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, &v149.__r_.__value_.__l.__data_, &std::piecewise_construct, &v153);
  v40 = v39;
  if (*(v39 + 79) < 0)
  {
    operator delete(*(v39 + 56));
  }

  *(v40 + 56) = __p;
  HIBYTE(__p.__end_cap_.__value_) = 0;
  LOBYTE(__p.__begin_) = 0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

  xgboost::common::ToString<int>(&__p, v139 + 84);
  std::string::basic_string[abi:ne200100]<0>(&v149, "num_class");
  v153 = &v149;
  v41 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, &v149.__r_.__value_.__l.__data_, &std::piecewise_construct, &v153);
  v42 = v41;
  if (*(v41 + 79) < 0)
  {
    operator delete(*(v41 + 56));
  }

  *(v42 + 56) = __p;
  HIBYTE(__p.__end_cap_.__value_) = 0;
  LOBYTE(__p.__begin_) = 0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }
  }

  std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(&__p, *v9, v137);
  std::vector<std::pair<std::string,std::string>>::__vdeallocate(&v143);
  v143 = __p;
  memset(&__p, 0, sizeof(__p));
  v149.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v149);
  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  if (v137 == std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v9, &__p.__begin_))
  {
    v45 = 0;
    goto LABEL_68;
  }

  std::string::basic_string[abi:ne200100]<0>(&v149, "num_class");
  v43 = std::map<std::string,xgboost::Json>::at(v9, &v149.__r_.__value_.__l.__data_);
  v44 = *(v43 + 23);
  if (v44 < 0)
  {
    if (*(v43 + 8) != 1)
    {
      goto LABEL_54;
    }

    v43 = *v43;
  }

  else if (v44 != 1)
  {
    goto LABEL_54;
  }

  if (*v43 == 48)
  {
    v45 = 0;
    goto LABEL_66;
  }

LABEL_54:
  v46 = *(v139 + 543);
  if (v46 < 0)
  {
    if (*(v139 + 66) != 14)
    {
LABEL_65:
      v45 = 1;
      goto LABEL_66;
    }

    v47 = *v8;
  }

  else
  {
    v47 = (v139 + 520);
    if (v46 != 14)
    {
      goto LABEL_65;
    }
  }

  v48 = *v47;
  v49 = *(v47 + 6);
  v45 = v48 != 0x6F733A69746C756DLL || v49 != 0x626F727074666F73;
LABEL_66:
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

LABEL_68:
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
    if (!v45)
    {
      goto LABEL_87;
    }
  }

  else if (!v45)
  {
    goto LABEL_87;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  v149.__r_.__value_.__r.__words[0] = &__p;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, &__p.__begin_, &std::piecewise_construct, &v149);
  std::string::basic_string[abi:ne200100]<0>(&v149, "num_output_group");
  v153 = &v149;
  v52 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, &v149.__r_.__value_.__l.__data_, &std::piecewise_construct, &v153);
  std::string::operator=((v52 + 56), (v51 + 56));
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "num_class");
  v149.__r_.__value_.__r.__words[0] = &__p;
  v53 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, &__p.__begin_, &std::piecewise_construct, &v149);
  v54 = (v53 + 56);
  if (*(v53 + 79) < 0)
  {
    v54 = *v54;
  }

  if (atoi(v54) < 2)
  {
    v55 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v149, "objective");
    v55 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__count_unique<std::string>(v9, &v149.__r_.__value_.__l.__data_) == 0;
    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
    if (!v55)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v55)
  {
LABEL_86:
    MEMORY[0x277C68BE0](v8, "multi:softmax");
  }

LABEL_87:
  std::string::basic_string[abi:ne200100]<0>(&__p, "max_delta_step");
  if (v137 != std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v9, &__p.__begin_))
  {
    v56 = 0;
    goto LABEL_104;
  }

  std::string::basic_string[abi:ne200100]<0>(&v149, "objective");
  if (v137 == std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v9, &v149.__r_.__value_.__l.__data_))
  {
    goto LABEL_101;
  }

  v57 = *(v139 + 543);
  if (v57 < 0)
  {
    if (*(v139 + 66) != 13)
    {
LABEL_101:
      v56 = 0;
      goto LABEL_102;
    }

    v58 = *v8;
  }

  else
  {
    v58 = (v139 + 520);
    if (v57 != 13)
    {
      goto LABEL_101;
    }
  }

  v59 = *v58;
  v60 = *(v58 + 5);
  v56 = v59 == 0x6F703A746E756F63 && v60 == 0x6E6F7373696F703ALL;
LABEL_102:
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

LABEL_104:
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
    if (!v56)
    {
      goto LABEL_110;
    }

LABEL_108:
    std::string::basic_string[abi:ne200100]<0>(&__p, "max_delta_step");
    v149.__r_.__value_.__r.__words[0] = &__p;
    v62 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v9, &__p.__begin_, &std::piecewise_construct, &v149);
    MEMORY[0x277C68BE0](v62 + 56, "0.7");
    if (SHIBYTE(__p.__end_cap_.__value_) < 0)
    {
      operator delete(__p.__begin_);
    }

    goto LABEL_110;
  }

  if (v56)
  {
    goto LABEL_108;
  }

LABEL_110:
  if (!*(v139 + 3))
  {
    goto LABEL_124;
  }

  v63 = *(v139 + 543);
  if (v63 >= 0)
  {
    v64 = *(v139 + 543);
  }

  else
  {
    v64 = *(v139 + 66);
  }

  size = HIBYTE(v148.__r_.__value_.__r.__words[2]);
  if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v148.__r_.__value_.__l.__size_;
  }

  if (v64 != size || (v63 >= 0 ? (v66 = (v139 + 520)) : (v66 = *v8), (v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v67 = &v148) : (v67 = v148.__r_.__value_.__r.__words[0]), memcmp(v66, v67, v64)))
  {
LABEL_124:
    v68 = xgboost::ObjFunction::Create(v8, v138);
    v69 = *(v139 + 3);
    *(v139 + 3) = v68;
    if (v69)
    {
      (*(*v69 + 8))(v69);
    }
  }

  std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(&__p, *v9, v137);
  std::vector<std::pair<std::string,std::string>>::__vdeallocate(&v143);
  v143 = __p;
  memset(&__p, 0, sizeof(__p));
  v149.__r_.__value_.__r.__words[0] = &__p;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v149);
  (*(**(v139 + 3) + 32))(*(v139 + 3), &v143);
  v70 = v139;
  if (!*(v139 + 3))
  {
    v126 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(v126, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 711);
    v127 = dmlc::LogMessageFatal::GetEntry(&__p);
    v128 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v127, "Check failed: this->obj_", 24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v128, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    v70 = v139;
  }

  v71 = (*(*v70 + 248))(v70);
  xgboost::PredictionContainer::ClearExpiredEntries(v71);
  v72 = v71[2];
  if (v72)
  {
    v73 = 1;
    do
    {
      v74 = *(v139 + 3);
      v75 = (***(*&v72 + 16))(*(*&v72 + 16));
      v76 = (*(*v74 + 88))(v74, v75);
      if (v73 == 1)
      {
        v73 = v76;
      }

      else if (v76 != 1 && v73 != v76)
      {
        v78 = dmlc::LogMessageFatal::GetEntry(&__p);
        dmlc::LogMessageFatal::Entry::Init(v78, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 719);
        v79 = dmlc::LogMessageFatal::GetEntry(&__p);
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "Check failed: n_targets == t || 1 == t", 38);
        v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ": ", 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, "Inconsistent labels.", 20);
        dmlc::LogMessageFatal::~LogMessageFatal(&__p);
      }

      v72 = **&v72;
    }

    while (v72);
  }

  else
  {
    v73 = 1;
  }

  v82 = v139;
  v83 = *(v139 + 89);
  if (v83 == 1)
  {
    *(v139 + 89) = v73;
  }

  else if (v73 != 1 && v73 != v83)
  {
    v129 = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(v129, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 723);
    v130 = dmlc::LogMessageFatal::GetEntry(&__p);
    v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, "Check failed: n_targets == 1 || n_targets == mparam_.num_target", 63);
    v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, ": ", 2);
    v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "Inconsistent configuration of num_target.  Configuration result from input data:", 80);
    v134 = MEMORY[0x277C68E50](v133, v73);
    v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v134, ", configuration from parameter:", 31);
    MEMORY[0x277C68E30](v135, *(v139 + 89));
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
    v82 = v139;
  }

  v85 = (*(**(v82 + 3) + 80))(*(v82 + 3));
  v86 = (v139 + 464);
  v87.n128_u32[0] = *(v139 + 82);
  if (!*(v139 + 117) || v87.n128_f32[0] != v10)
  {
    v88 = (*(**(v139 + 3) + 72))(*(v139 + 3), v87);
    xgboost::LearnerModelParam::LearnerModelParam(&__p, v139 + 82, v85, v88);
    *v86 = __p.__begin_;
    *(v139 + 470) = *(&__p.__begin_ + 6);
  }

  v89 = *(v139 + 4);
  if (!v89)
  {
    goto LABEL_164;
  }

  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v90 = v147.__r_.__value_.__l.__size_;
  }

  v91 = *(v139 + 519);
  v92 = v91;
  if ((v91 & 0x80u) != 0)
  {
    v91 = *(v139 + 63);
  }

  if (v90 != v91 || ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v93 = &v147) : (v93 = v147.__r_.__value_.__r.__words[0]), v92 >= 0 ? (v94 = v7) : (v94 = *v7), memcmp(v93, v94, v90)))
  {
LABEL_164:
    xgboost::GradientBooster::Create(v7, v138, v86);
    v89 = v95;
    v96 = *(v139 + 4);
    *(v139 + 4) = v89;
    if (v96)
    {
      (*(*v96 + 8))(v96);
      v89 = *(v139 + 4);
    }
  }

  (*(*v89 + 32))(v89, &v143);
  (*(**(v139 + 4) + 152))(*(v139 + 4));
  xgboost::GenericParameter::ConfigureGpuId(v138);
  v97 = *(v139 + 68);
  v98 = *(v139 + 69);
  if (v97 == v98)
  {
    goto LABEL_191;
  }

  v99 = (v139 + 40);
  do
  {
    v101 = *(v139 + 5);
    v100 = *(v139 + 6);
    while (v101 != v100)
    {
      v102 = (*(**v101 + 48))();
      v103 = strlen(v102);
      v104 = v103;
      v105 = *(v97 + 23);
      if (v105 < 0)
      {
        if (v103 != *(v97 + 8))
        {
          goto LABEL_177;
        }

        if (v103 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v106 = *v97;
      }

      else
      {
        v106 = v97;
        if (v104 != v105)
        {
          goto LABEL_177;
        }
      }

      if (!memcmp(v106, v102, v104))
      {
        goto LABEL_190;
      }

LABEL_177:
      v101 += 8;
    }

    v107 = xgboost::Metric::Create(v97, v138);
    v108 = v107;
    v110 = *(v139 + 6);
    v109 = *(v139 + 7);
    if (v110 >= v109)
    {
      v113 = *v99;
      v114 = v110 - *v99;
      v115 = (v114 >> 3) + 1;
      if (v115 >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v116 = v109 - v113;
      if (v116 >> 2 > v115)
      {
        v115 = v116 >> 2;
      }

      if (v116 >= 0x7FFFFFFFFFFFFFF8)
      {
        v117 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v117 = v115;
      }

      v152 = v139 + 40;
      if (v117)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v117);
      }

      v112 = v139;
      v118 = (8 * (v114 >> 3));
      *v118 = v108;
      v111 = v118 + 1;
      memcpy(0, v113, v114);
      v119 = *(v139 + 5);
      *(v139 + 5) = 0;
      *(v139 + 6) = v111;
      v120 = *(v139 + 7);
      *(v139 + 7) = 0;
      __p.__end_cap_.__value_ = v119;
      v151 = v120;
      __p.__end_ = v119;
      __p.__begin_ = v119;
      std::__split_buffer<std::unique_ptr<xgboost::Metric>>::~__split_buffer(&__p);
    }

    else
    {
      *v110 = v107;
      v111 = v110 + 1;
      v112 = v139;
    }

    *(v112 + 6) = v111;
    *(v112 + 86) = 1;
LABEL_190:
    v97 += 24;
  }

  while (v97 != v98);
LABEL_191:
  v121 = *(v139 + 5);
  for (k = *(v139 + 6); v121 != k; ++v121)
  {
    (*(**v121 + 32))(*v121, &v143);
  }

  v123 = v139;
  atomic_store(0, v139 + 160);
  if (*(v123 + 93) == 1)
  {
    __p.__end_ = 0x300000000;
    v152 = 0;
    v151 = 0;
    __p.__begin_ = &unk_2883E6E50;
    __p.__end_cap_.__value_ = &v151;
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Configure");
  xgboost::common::Monitor::Stop(v124, v125);
  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  __p.__begin_ = &v143;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  v3 = v139;
LABEL_202:
  std::mutex::unlock((v3 + 96));
}

void sub_274DC9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&STACK[0x230]);
  *(v31 - 216) = &a27;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v31 - 216));
  xgboost::LearnerTrainParam::~LearnerTrainParam(&a31);
  std::mutex::unlock((a17 + 96));
  _Unwind_Resume(a1);
}

void xgboost::LearnerImpl::UpdateOneIter(uint64_t a1, uint64_t a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "UpdateOneIter");
  xgboost::common::Monitor::Start(v6, v7);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 32))(a1);
  if (*(a1 + 80) == 1)
  {
    v10 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v11 = a2 - *(a1 + 72) + (*(a1 + 72) << 7);
    *v10 = v11;
    for (i = 1; i != 624; ++i)
    {
      v11 = i + 1812433253 * (v11 ^ (v11 >> 30));
      *(v10 + 4 * i) = v11;
    }

    *(v10 + 2496) = 0;
  }

  xgboost::LearnerImpl::CheckDataSplitMode(a1, v8, v9);
  xgboost::LearnerImpl::ValidateDMatrix(a1, *a3, 1);
  v13 = (*(*a1 + 248))(a1);
  v14 = a3[1];
  v32[0] = *a3;
  v32[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = xgboost::PredictionContainer::Cache(v13, v32, *(a1 + 88));
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PredictRaw");
  xgboost::common::Monitor::Start(v16, v17);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::LearnerImpl::PredictRaw(a1, *a3, v15, 1, 0, 0);
  std::string::basic_string[abi:ne200100]<0>(&v30, "Predictions");
  if (v31 < 0)
  {
    operator delete(v30);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "PredictRaw");
  xgboost::common::Monitor::Stop(v18, v19);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "GetGradient");
  xgboost::common::Monitor::Start(v20, v21);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = *(a1 + 24);
  v23 = (***a3)();
  (*(*v22 + 40))(v22, v15, v23, a2, a1 + 616);
  std::string::basic_string[abi:ne200100]<0>(__p, "GetGradient");
  xgboost::common::Monitor::Stop(v24, v25);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "Gradients");
  if (v29 < 0)
  {
    operator delete(v28);
  }

  (*(**(a1 + 32) + 80))(*(a1 + 32), *a3, a1 + 616, v15);
  std::string::basic_string[abi:ne200100]<0>(__p, "UpdateOneIter");
  xgboost::common::Monitor::Stop(v26, v27);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DC9C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerImpl::BoostOneIter(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "BoostOneIter");
  xgboost::common::Monitor::Start(v8, v9);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 32))(a1);
  if (*(a1 + 80) == 1)
  {
    v12 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v13 = a2 - *(a1 + 72) + (*(a1 + 72) << 7);
    *v12 = v13;
    for (i = 1; i != 624; ++i)
    {
      v13 = i + 1812433253 * (v13 ^ (v13 >> 30));
      *(v12 + 4 * i) = v13;
    }

    *(v12 + 2496) = 0;
  }

  xgboost::LearnerImpl::CheckDataSplitMode(a1, v10, v11);
  xgboost::LearnerImpl::ValidateDMatrix(a1, *a3, 1);
  v15 = (*(*a1 + 248))(a1);
  v16 = v15;
  v17 = *(a3 + 8);
  v23[0] = *a3;
  v23[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xgboost::PredictionContainer::Cache(v15, v23, *(a1 + 88));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(a1 + 32);
  v19 = *a3;
  v20 = xgboost::PredictionContainer::Entry(v16, v19);
  (*(*v18 + 80))(v18, v19, a4, v20);
  std::string::basic_string[abi:ne200100]<0>(__p, "BoostOneIter");
  xgboost::common::Monitor::Stop(v21, v22);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274DC9E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t xgboost::LearnerImpl::EvalOneIter(int8x8_t *a1, uint64_t a2, __int128 **a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EvalOneIter");
  xgboost::common::Monitor::Start(v7, v8);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 32))(a1);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v77);
  *(&v79[0].__locale_ + *(v77 - 24)) = 17;
  LOBYTE(__p[0]) = 91;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, __p, 1);
  v10 = MEMORY[0x277C68E20](v9, a2);
  LOBYTE(__p[0]) = 93;
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, __p, 1);
  *(v11 + *(*v11 - 24) + 8) |= 4u;
  v12 = &a1[5];
  if (*&a1[6] == *&a1[5] && (a1[61].i8[0] & 1) == 0)
  {
    v13 = a1[67].i8[7];
    if (v13 < 0)
    {
      if (*&a1[66] != 15)
      {
LABEL_48:
        v41 = (*(**&a1[3] + 48))(*&a1[3]);
        std::string::basic_string[abi:ne200100]<0>(v82, v41);
        v42 = xgboost::Metric::Create(v82, &a1[8]);
        v43 = v42;
        v45 = a1[6];
        v44 = a1[7];
        if (v45 >= v44)
        {
          v47 = *v12;
          v48 = v45 - *v12;
          v49 = (v48 >> 3) + 1;
          if (v49 >> 61)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v50 = v44 - v47;
          if (v50 >> 2 > v49)
          {
            v49 = v50 >> 2;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFF8)
          {
            v51 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          v87 = a1 + 5;
          if (v51)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v51);
          }

          v52 = (8 * (v48 >> 3));
          *v52 = v43;
          v46 = v52 + 1;
          memcpy(0, v47, v48);
          v53 = a1[5];
          a1[5] = 0;
          a1[6] = v46;
          v54 = a1[7];
          a1[7] = 0;
          v85 = v53;
          v86 = v54;
          __p[0] = v53;
          __p[1] = v53;
          std::__split_buffer<std::unique_ptr<xgboost::Metric>>::~__split_buffer(__p);
        }

        else
        {
          *v45 = v42;
          v46 = v45 + 1;
        }

        a1[6] = v46;
        if (v83 < 0)
        {
          operator delete(v82[0]);
          v46 = a1[6];
        }

        v55 = *(v46 - 1);
        std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(__p, *&a1[21], &a1[22]);
        (*(*v55 + 32))(v55, __p);
        v82[0] = __p;
        std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v82);
        goto LABEL_62;
      }

      v14 = a1[65];
    }

    else
    {
      v14 = a1 + 65;
      if (v13 != 15)
      {
        goto LABEL_48;
      }
    }

    v15 = *v14;
    v16 = *(v14 + 7);
    if (*&v15 == 0x6C3A7972616E6962 && v16 == 0x7761727469676F6CLL)
    {
      std::string::basic_string[abi:ne200100]<0>(v75, "auc");
      std::string::basic_string[abi:ne200100]<0>(v73, "logloss");
      std::string::basic_string[abi:ne200100]<0>(v71, "1.4.0");
      if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v18, v19) + 4) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v82, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
        xgboost::ConsoleLogger::ConsoleLogger(__p, v82, 1205, 1);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Starting in XGBoost ", 20);
        v21 = (v72 & 0x80u) == 0 ? v71 : v71[0];
        v22 = (v72 & 0x80u) == 0 ? v72 : v71[1];
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", the default evaluation metric ", 32);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "used with the objective '", 25);
        v26 = a1[67].i8[7];
        v27 = v26 >= 0 ? &a1[65] : *&a1[65];
        v28 = v26 >= 0 ? a1[67].u8[7] : *&a1[66];
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "' was changed from '", 20);
        v31 = (v76 & 0x80u) == 0 ? v75 : v75[0];
        v32 = (v76 & 0x80u) == 0 ? v76 : v75[1];
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "' to '", 6);
        v35 = (v74 & 0x80u) == 0 ? v73 : v73[0];
        v36 = (v74 & 0x80u) == 0 ? v74 : v73[1];
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "'. Explicitly set eval_metric if you'd ", 39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "like to restore the old behavior.", 33);
        xgboost::ConsoleLogger::~ConsoleLogger(__p, v39, v40);
        if (v83 < 0)
        {
          operator delete(v82[0]);
        }
      }

      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      if (v74 < 0)
      {
        operator delete(v73[0]);
      }

      if (v76 < 0)
      {
        operator delete(v75[0]);
      }
    }

    goto LABEL_48;
  }

LABEL_62:
  v66 = (*(*a1 + 248))(a1);
  v56 = *a3;
  if (a3[1] != *a3)
  {
    v57 = *v56;
    v58 = *(v56 + 1);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v68 = v57;
    v70 = v57;
    v59 = xgboost::PredictionContainer::Cache(v66, &v70, a1[11].i32[0]);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    xgboost::LearnerImpl::ValidateDMatrix(a1, v68, 0);
    xgboost::LearnerImpl::PredictRaw(a1, v68, v59, 0, 0, 0);
    v69 = v68;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = xgboost::PredictionContainer::Cache(a1 + 78, &v69, a1[11].i32[0]);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    v62 = (*(*v59 + 8) - **v59) >> 2;
    LODWORD(__p[0]) = 0;
    std::vector<float>::resize(*v60, v62, __p, v61);
    xgboost::HostDeviceVector<float>::Copy();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "EvalOneIter");
  xgboost::common::Monitor::Stop(v63, v64);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v77 = *MEMORY[0x277D82828];
  *(&v77 + *(v77 - 24)) = *(MEMORY[0x277D82828] + 24);
  v78 = MEMORY[0x277D82878] + 16;
  if (v80 < 0)
  {
    operator delete(v79[7].__locale_);
  }

  v78 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v79);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v81);
}

void sub_274DCA734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  std::ostringstream::~ostringstream(&a39);
  _Unwind_Resume(a1);
}

uint64_t xgboost::LearnerImpl::Predict(void **a1, xgboost::DMatrix **a2, char a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v18 = a9 + a8 + a11;
  ((*a1)[4])(a1);
  v27 = 1;
  v28 = v18;
  if (v18 > 1)
  {
    dmlc::LogCheckFormat<int,int>(&v28, &v27);
  }

  if (a9)
  {
    return (*(*a1[4] + 120))(a1[4], *a2, a4, a5, a6, a10, 0, 0);
  }

  if (a11)
  {
    return (*(*a1[4] + 128))(a1[4], *a2, a4, a5, a6, a10);
  }

  if (!a8)
  {
    v20 = ((*a1)[31])(a1);
    v21 = a2[1];
    v25[0] = *a2;
    v25[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = xgboost::PredictionContainer::Cache(v20, v25, *(a1 + 22));
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    xgboost::LearnerImpl::PredictRaw(a1, *a2, v22, a7, a5, a6);
    v23 = (*(*v22 + 8) - **v22) >> 2;
    LODWORD(v26) = 0;
    std::vector<float>::resize(*a4, v23, &v26, v24);
    xgboost::HostDeviceVector<float>::Copy();
  }

  return (*(*a1[4] + 112))(a1[4], *a2, a4, a5, a6, a10);
}

void sub_274DCAB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerImpl::InplacePredict(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, float a8)
{
  (*(*a1 + 32))(a1);
  v16 = (*(*a1 + 224))(a1) + 144;
  v17 = *(a1 + 32);
  v18 = a3[1];
  v23 = *a3;
  v24 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v17 + 96))(v17, a2, &v23, v16, a6, a7, a8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v22);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1298);
      v20 = dmlc::LogMessageFatal::GetEntry(&v22);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Unsupported prediction type:", 28);
      MEMORY[0x277C68E20](v21, a4);
      dmlc::LogMessageFatal::~LogMessageFatal(&v22);
    }

    else
    {
      (*(**(a1 + 24) + 56))(*(a1 + 24), v16);
    }
  }

  *a5 = v16;
}

uint64_t xgboost::LearnerImpl::CalcFeatureScore(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 32))(a1);
  v10 = a1[4];
  v11 = a3[1];
  v13[0] = *a3;
  v13[1] = v11;
  return (*(*v10 + 144))(v10, a2, v13, a4, a5);
}

uint64_t xgboost::LearnerImpl::BoostedRounds(xgboost::LearnerImpl *this)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v2 = atomic_load(this + 160);
  if (v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1272);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  }

  return (*(**(this + 4) + 72))(*(this + 4));
}

uint64_t xgboost::LearnerImpl::Groups(xgboost::LearnerImpl *this)
{
  v2 = atomic_load(this + 160);
  if (v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1276);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
  }

  return *(this + 118);
}

void xgboost::LearnerIO::LoadModel(xgboost::LearnerIO *this, void **a2)
{
  v3 = this;
  memset(&__n, 0, sizeof(__n));
  xgboost::XGBoostParameter<xgboost::GenericParameter>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v114, this + 64, &__n);
  v111[0] = v114;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v111);
  v111[0] = &__n;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v111);
  memset(&__n, 0, sizeof(__n));
  xgboost::LearnerTrainParam::__MANAGER__(v4);
  dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BB0, v3 + 480, __n.__r_.__value_.__l.__data_, __n.__r_.__value_.__l.__size_, 0, 2);
  v111[0] = &__n;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v111);
  v111[0] = &unk_2883E1748;
  v111[1] = a2;
  v112 = 0u;
  v113 = 0u;
  memset(&__dst, 0, sizeof(__dst));
  std::string::resize(&__dst, 4uLL, 0);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v6 = xgboost::common::PeekableInStream::PeekRead(v111, p_dst, 4uLL);
  v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (v6 != 4)
  {
    goto LABEL_20;
  }

  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ == 4)
    {
      v8 = __dst.__r_.__value_.__r.__words[0];
LABEL_10:
      if (LODWORD(v8->__r_.__value_.__l.__data_) == 875983714)
      {
        dmlc::LogCheckFormat<std::string,char [5]>(&__dst, "bs64");
      }
    }
  }

  else if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) == 4)
  {
    v8 = &__dst;
    goto LABEL_10;
  }

  v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((*(&__dst.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    if (__dst.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_20;
    }

    v9 = __dst.__r_.__value_.__r.__words[0];
    if (*__dst.__r_.__value_.__l.__data_ != 1718511970)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (HIBYTE(__dst.__r_.__value_.__r.__words[2]) != 4 || LODWORD(__dst.__r_.__value_.__l.__data_) != 1718511970)
    {
      goto LABEL_20;
    }

    v9 = &__dst;
  }

  v107 = xgboost::common::PeekableInStream::Read(v111, v9, 4uLL);
  LODWORD(v106.__r_.__value_.__l.__data_) = 4;
  if (v107 != 4)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v107, &v106);
  }

  v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
LABEL_20:
  v10 = v7 < 0;
  v11 = &__dst;
  if (v10)
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
  }

  if (v11->__r_.__value_.__s.__data_[0] == 123)
  {
    xgboost::common::ReadAll(&__n, a2, v111);
    operator new();
  }

  v101 = (v3 + 328);
  v107 = (*v111[0])(v111);
  v106.__r_.__value_.__r.__words[0] = 136;
  if (v107 != 136)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v107, &v106);
  }

  if (!*(v3 + 89))
  {
    *(v3 + 89) = 1;
  }

  __n.__r_.__value_.__r.__words[0] = 0;
  v12 = (v3 + 520);
  if ((*v111[0])(v111, &__n, 8) != 8)
  {
    goto LABEL_197;
  }

  v13 = __n.__r_.__value_.__r.__words[0];
  std::string::resize((v3 + 520), __n.__r_.__value_.__r.__words[0], 0);
  if (__n.__r_.__value_.__r.__words[0])
  {
    v14 = v3 + 520;
    if (*(v3 + 543) < 0)
    {
      v14 = *v12;
    }

    if ((*v111[0])(v111, v14, v13) != v13)
    {
LABEL_197:
      Entry = dmlc::LogMessageFatal::GetEntry(&__n);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 874);
      v92 = dmlc::LogMessageFatal::GetEntry(&__n);
      v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "Check failed: fi->Read(&tparam_.objective)", 42);
      v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, "BoostLearner: wrong model format", 32);
      dmlc::LogMessageFatal::~LogMessageFatal(&__n);
    }
  }

  __n.__r_.__value_.__r.__words[0] = 0;
  if ((*v111[0])(v111, &__n, 8) != 8)
  {
    goto LABEL_198;
  }

  v15 = __n.__r_.__value_.__r.__words[0];
  std::string::resize((v3 + 496), __n.__r_.__value_.__r.__words[0], 0);
  if (__n.__r_.__value_.__r.__words[0])
  {
    v16 = v3 + 496;
    if (*(v3 + 519) < 0)
    {
      v16 = *(v3 + 62);
    }

    if ((*v111[0])(v111, v16, v15) != v15)
    {
LABEL_198:
      v95 = dmlc::LogMessageFatal::GetEntry(&__n);
      dmlc::LogMessageFatal::Entry::Init(v95, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 875);
      v96 = dmlc::LogMessageFatal::GetEntry(&__n);
      v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Check failed: fi->Read(&tparam_.booster)", 40);
      v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, ": ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, "BoostLearner: wrong model format", 32);
      dmlc::LogMessageFatal::~LogMessageFatal(&__n);
    }
  }

  v17 = xgboost::ObjFunction::Create(v3 + 65, v3 + 64);
  v18 = *(v3 + 3);
  *(v3 + 3) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v100 = (v3 + 464);
  xgboost::GradientBooster::Create(v3 + 496, v3 + 64, v3 + 464);
  v20 = *(v3 + 4);
  *(v3 + 4) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
    v19 = *(v3 + 4);
  }

  (*(*v19 + 40))(v19, v111);
  if (!*(v3 + 85))
  {
    goto LABEL_129;
  }

  v99 = (v3 + 520);
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v116[0] = 0;
  if ((*v111[0])(v111, v116, 8) != 8)
  {
    goto LABEL_84;
  }

  v21 = v116[0];
  v22 = v108;
  v23 = 0xAAAAAAAAAAAAAAABLL * ((v108 - v107) >> 4);
  v24 = v116[0] - v23;
  if (v116[0] > v23)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 4) < v24)
    {
      if (v116[0] <= 0x555555555555555uLL)
      {
        v25 = 0x5555555555555556 * ((v109 - v107) >> 4);
        if (v25 <= v116[0])
        {
          v25 = v116[0];
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v109 - v107) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v26 = 0x555555555555555;
        }

        else
        {
          v26 = v25;
        }

        v105 = &v107;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v107, v26);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(v108, 48 * ((48 * v24 - 48) / 0x30) + 48);
    v108 = &v22[6 * ((48 * v24 - 48) / 0x30) + 6];
    if (v108 == v107)
    {
      v28 = 0;
    }

    else
    {
      v28 = v107;
    }

    goto LABEL_67;
  }

  if (v116[0] >= v23)
  {
    v27 = v108;
  }

  else
  {
    v27 = &v107[6 * v116[0]];
    while (v22 != v27)
    {
      v22 -= 6;
      std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](&v107, v22);
    }

    v108 = v27;
  }

  if (v27 == v107)
  {
    v28 = 0;
  }

  else
  {
    v28 = v107;
  }

  if (v21)
  {
LABEL_67:
    v29 = v21 - 1;
    do
    {
      __n.__r_.__value_.__r.__words[0] = 0;
      if ((*v111[0])(v111, &__n, 8) != 8)
      {
        break;
      }

      v30 = __n.__r_.__value_.__r.__words[0];
      std::string::resize(v28, __n.__r_.__value_.__r.__words[0], 0);
      if (__n.__r_.__value_.__r.__words[0])
      {
        v31 = v28;
        if (*(v28 + 23) < 0)
        {
          v31 = *v28;
        }

        if ((*v111[0])(v111, v31, v30) != v30)
        {
          break;
        }
      }

      __n.__r_.__value_.__r.__words[0] = 0;
      if ((*v111[0])(v111, &__n, 8) != 8)
      {
        break;
      }

      v32 = v28 + 3;
      v33 = __n.__r_.__value_.__r.__words[0];
      std::string::resize(v28 + 1, __n.__r_.__value_.__r.__words[0], 0);
      if (__n.__r_.__value_.__r.__words[0])
      {
        if (*(v28 + 47) < 0)
        {
          v32 = *v32;
        }

        v34 = (*v111[0])(v111, v32, v33) == v33;
      }

      else
      {
        v34 = 1;
      }

      v35 = v29-- != 0;
      v36 = v35;
      if (!v34)
      {
        break;
      }

      v28 += 6;
    }

    while (v36);
  }

LABEL_84:
  v37 = v107;
  v38 = v108;
  if (v107 == v108)
  {
    goto LABEL_125;
  }

  v102 = v3;
  v103 = (v3 + 576);
  do
  {
    std::string::basic_string[abi:ne200100]<0>(&__n, "SAVED_PARAM_");
    v39 = *(v37 + 23);
    if (v39 < 0)
    {
      v40 = *v37;
      v39 = v37[1];
    }

    else
    {
      v40 = v37;
    }

    v41 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_n = &__n;
    }

    else
    {
      p_n = __n.__r_.__value_.__r.__words[0];
    }

    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __n.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
LABEL_105:
      std::string::basic_string(&v106, v37, size, 0xFFFFFFFFFFFFFFFFLL, v116);
      v51 = *v103;
      if (*v103)
      {
        v52 = v103;
        do
        {
          v53 = std::less<std::string>::operator()[abi:ne200100](v3 + 568, v51 + 4, &v106.__r_.__value_.__l.__data_);
          v54 = v53;
          if (!v53)
          {
            v52 = v51;
          }

          v51 = v51[v54];
        }

        while (v51);
        if (v52 != v103 && !std::less<std::string>::operator()[abi:ne200100](v3 + 568, &v106.__r_.__value_.__l.__data_, v52 + 4))
        {
          v116[0] = &v106;
          v55 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3 + 21, &v106.__r_.__value_.__l.__data_, &std::piecewise_construct, v116, &v115);
          std::string::operator=((v55 + 7), v37 + 1);
        }
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }

      v41 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
LABEL_119:
      if ((v41 & 0x80) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

    if (v39 < size)
    {
      goto LABEL_119;
    }

    v44 = v38;
    v45 = &v40[v39];
    v46 = p_n->__r_.__value_.__s.__data_[0];
    v47 = v40;
    do
    {
      v48 = v39 - size;
      if (v48 == -1)
      {
        break;
      }

      v49 = memchr(v47, v46, v48 + 1);
      if (!v49)
      {
        break;
      }

      v50 = v49;
      if (!memcmp(v49, p_n, size))
      {
        if (v50 != v45)
        {
          v38 = v44;
          v3 = v102;
          if (v50 != v40)
          {
            goto LABEL_119;
          }

          goto LABEL_105;
        }

        break;
      }

      v47 = v50 + 1;
      v39 = v45 - (v50 + 1);
    }

    while (v39 >= size);
    v38 = v44;
    v3 = v102;
    if ((v41 & 0x80) == 0)
    {
      goto LABEL_121;
    }

LABEL_120:
    operator delete(__n.__r_.__value_.__l.__data_);
LABEL_121:
    v37 += 6;
  }

  while (v37 != v38);
  v37 = v107;
  v38 = v108;
LABEL_125:
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&__n, v37, v38);
  v56 = v3 + 200;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3 + 192, *(v3 + 25));
  v57 = __n.__r_.__value_.__l.__size_;
  *(v3 + 24) = __n.__r_.__value_.__r.__words[0];
  *(v3 + 25) = v57;
  v58 = __n.__r_.__value_.__r.__words[2];
  *(v3 + 26) = *(&__n.__r_.__value_.__l + 2);
  if (v58)
  {
    v57[2] = v56;
    __n.__r_.__value_.__r.__words[0] = &__n.__r_.__value_.__l.__size_;
    *&__n.__r_.__value_.__r.__words[1] = 0uLL;
    v57 = 0;
  }

  else
  {
    *(v3 + 24) = v56;
  }

  v12 = v99;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__n, v57);
  __n.__r_.__value_.__r.__words[0] = &v107;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__n);
LABEL_129:
  std::string::basic_string[abi:ne200100]<0>(&__n, "count_poisson_max_delta_step");
  v59 = v12;
  v60 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 192, &__n.__r_.__value_.__l.__data_);
  v61 = v3 + 200;
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  if (v61 != v60)
  {
    std::string::basic_string[abi:ne200100]<0>(&__n, "count_poisson_max_delta_step");
    v62 = std::map<std::string,xgboost::Json>::at(v3 + 192, &__n.__r_.__value_.__l.__data_);
    std::string::basic_string[abi:ne200100]<0>(&v107, "max_delta_step");
    v106.__r_.__value_.__r.__words[0] = &v107;
    v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3 + 168, &v107, &std::piecewise_construct, &v106);
    std::string::operator=((v63 + 56), v62);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(v107);
    }

    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__n, "count_poisson_max_delta_step");
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(v3 + 24, &__n.__r_.__value_.__l.__data_);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  if (!*(v3 + 87))
  {
    std::string::basic_string[abi:ne200100]<0>(&__n, "multi:");
    v64 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &__n;
    }

    else
    {
      v65 = __n.__r_.__value_.__r.__words[0];
    }

    if ((__n.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = HIBYTE(__n.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = __n.__r_.__value_.__l.__size_;
    }

    if (*(v3 + 543) < 0)
    {
      v67 = *v59;
    }

    else
    {
      v67 = v59;
    }

    if (memcmp(v65, v67, v66))
    {
      xgboost::HostDeviceVector<float>::HostDeviceVector();
    }

    if (v64 < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  v68 = (*(**(v3 + 3) + 72))(*(v3 + 3), *(v3 + 82));
  v69 = (*(**(v3 + 3) + 80))(*(v3 + 3));
  xgboost::LearnerModelParam::LearnerModelParam(&__n, v101, v69, v68);
  *v100 = __n.__r_.__value_.__r.__words[0];
  *(v100 + 6) = *(__n.__r_.__value_.__r.__words + 6);
  std::string::basic_string[abi:ne200100]<0>(&__n, "objective");
  v70 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 192, &__n.__r_.__value_.__l.__data_);
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  if (v61 != v70)
  {
    std::string::basic_string[abi:ne200100]<0>(&v107, "objective");
    v71 = std::map<std::string,xgboost::Json>::at(v3 + 192, &v107);
    if (*(v71 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__n, *v71, *(v71 + 8));
    }

    else
    {
      v72 = *v71;
      __n.__r_.__value_.__r.__words[2] = *(v71 + 16);
      *&__n.__r_.__value_.__l.__data_ = v72;
    }

    if (SHIBYTE(v109) < 0)
    {
      operator delete(v107);
    }

    xgboost::Json::Load();
  }

  std::string::basic_string[abi:ne200100]<0>(&__n, "metrics");
  v73 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(v3 + 192, &__n.__r_.__value_.__l.__data_);
  v76 = v73;
  if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__n.__r_.__value_.__l.__data_);
  }

  if (v61 != v76)
  {
    std::string::basic_string[abi:ne200100]<0>(&v107, "metrics");
    v77 = std::map<std::string,xgboost::Json>::at(v3 + 192, &v107);
    if (*(v77 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__n, *v77, *(v77 + 8));
    }

    else
    {
      v78 = *v77;
      __n.__r_.__value_.__r.__words[2] = *(v77 + 16);
      *&__n.__r_.__value_.__l.__data_ = v78;
    }

    if (SHIBYTE(v109) < 0)
    {
      operator delete(v107);
    }

    xgboost::common::Split(&__n, 0x3Bu, &v107);
    std::string::basic_string[abi:ne200100]<0>(&v106, "metrics");
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(v3 + 24, &v106.__r_.__value_.__l.__data_);
    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    v79 = v107;
    v80 = v108;
    if (v107 != v108)
    {
      do
      {
        (*(*v3 + 128))(v3, &xgboost::LearnerConfiguration::kEvalMetric, v79);
        v79 += 3;
      }

      while (v79 != v80);
    }

    v106.__r_.__value_.__r.__words[0] = &v107;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v106);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v74, v75) + 4) > 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v107, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
    xgboost::ConsoleLogger::ConsoleLogger(&__n, &v107, 940, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__n, "Loading model from XGBoost < 1.0.0, consider saving it again for improved compatibility", 87);
    xgboost::ConsoleLogger::~ConsoleLogger(&__n, v81, v82);
    if (SHIBYTE(v109) < 0)
    {
      operator delete(v107);
    }
  }

  *(v3 + 348) = 0x600000001;
  xgboost::common::ToString<int>(&__n, v3 + 84);
  std::string::basic_string[abi:ne200100]<0>(&v107, "num_class");
  v106.__r_.__value_.__r.__words[0] = &v107;
  v83 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3 + 168, &v107, &std::piecewise_construct, &v106);
  v84 = v83;
  if (*(v83 + 79) < 0)
  {
    operator delete(*(v83 + 56));
  }

  *(v84 + 56) = __n;
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v107);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  xgboost::common::ToString<unsigned int>(&__n, v3 + 83);
  std::string::basic_string[abi:ne200100]<0>(&v107, "num_feature");
  v106.__r_.__value_.__r.__words[0] = &v107;
  v85 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3 + 168, &v107, &std::piecewise_construct, &v106);
  v86 = v85;
  if (*(v85 + 79) < 0)
  {
    operator delete(*(v85 + 56));
  }

  *(v86 + 56) = __n;
  *(&__n.__r_.__value_.__s + 23) = 0;
  __n.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v107);
    if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__n.__r_.__value_.__l.__data_);
    }
  }

  xgboost::LearnerTrainParam::__MANAGER__(v85);
  dmlc::parameter::ParamManager::GetDict(&__n, &stru_280AF6BB0);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v107, __n.__r_.__value_.__l.__data_, __n.__r_.__value_.__l.__size_);
  v106.__r_.__value_.__r.__words[0] = &__n;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v106);
  v87 = std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v3 + 168, v107, &v108);
  if (!*(v3 + 121))
  {
    Engine = rabit::engine::GetEngine(v87, v88, v89);
    if ((*(*Engine + 80))(Engine))
    {
      *(v3 + 121) = 2;
    }
  }

  atomic_store(1u, v3 + 160);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v107, v108);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v111[0] = &unk_2883E1748;
  if (SHIBYTE(v113) < 0)
  {
    operator delete(*(&v112 + 1));
  }
}

void sub_274DCC5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 - 201) < 0)
  {
    operator delete(*(v57 - 224));
  }

  *(v57 - 200) = a12;
  if (*(v57 - 153) < 0)
  {
    operator delete(*(v57 - 176));
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerIO::SaveModel(uint64_t a1, uint64_t a2)
{
  v18 = *(a1 + 456);
  v2 = *(a1 + 440);
  v16 = *(a1 + 424);
  v17 = v2;
  v3 = *(a1 + 376);
  v12 = *(a1 + 360);
  v13 = v3;
  v4 = *(a1 + 408);
  v14 = *(a1 + 392);
  v15 = v4;
  v5 = *(a1 + 344);
  v10 = *(a1 + 328);
  v11 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  HIDWORD(v10) = 1;
  memset(&v6, 0, 24);
  v19.__first_ = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  v6.__begin_ = 0x300000000;
  v6.__end_cap_.__value_ = 0;
  v6.__end_cap_.__value_ = 0;
  v6.__first_ = &unk_2883E6E50;
  v6.__end_ = &v6.__end_cap_;
  operator new();
}

void sub_274DCD364(_Unwind_Exception *__p, uint64_t a2, int a3, __int16 a4, char a5, char a6, std::__split_buffer<std::pair<std::string, std::string>> *a7, uint64_t a8, char *__pa, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer((v48 - 136));
  if (SHIBYTE(a11) < 0)
  {
    operator delete(__pa);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12);
  __pa = &a48;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__pa);
  _Unwind_Resume(__p);
}

uint64_t xgboost::LearnerConfiguration::SetParams(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = (*(*v4 + 128))(v4, v2, v2 + 24);
      v2 += 48;
    }

    while (v2 != v3);
  }

  return result;
}

std::string *xgboost::LearnerConfiguration::SetParam(uint64_t a1, uint64_t a2, std::string *a3)
{
  atomic_store(1u, (a1 + 160));
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = *(&xgboost::LearnerConfiguration::kEvalMetric + 1);
  if (byte_280AF7597 >= 0)
  {
    v8 = byte_280AF7597;
  }

  if (v7 == v8 && (v6 >= 0 ? (v9 = a2) : (v9 = *a2), byte_280AF7597 >= 0 ? (v10 = &xgboost::LearnerConfiguration::kEvalMetric) : (v10 = xgboost::LearnerConfiguration::kEvalMetric), result = memcmp(v9, v10, v7), !result))
  {
    v13 = *(a1 + 544);
    v14 = *(a1 + 552);
    if (v13 != v14)
    {
      v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      if (v15 >= 0)
      {
        size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = a3->__r_.__value_.__l.__size_;
      }

      if (v15 >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = a3->__r_.__value_.__r.__words[0];
      }

      while (1)
      {
        v18 = *(v13 + 23);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(v13 + 8);
        }

        if (v18 == size)
        {
          v20 = v19 >= 0 ? v13 : *v13;
          result = memcmp(v20, v17, size);
          if (!result)
          {
            break;
          }
        }

        v13 += 24;
        if (v13 == v14)
        {
          goto LABEL_33;
        }
      }
    }

    if (v13 == v14)
    {
LABEL_33:
      v21 = a1 + 544;
      if (v14 >= *(a1 + 560))
      {
        result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v21, a3);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v21, a3);
        result = v14 + 1;
      }

      *(a1 + 552) = result;
    }
  }

  else
  {
    v23 = a2;
    v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 168), a2, &std::piecewise_construct, &v23, &v22);
    return std::string::operator=((v12 + 7), a3);
  }

  return result;
}

std::string *xgboost::LearnerConfiguration::SetAttr(uint64_t a1, const void **a2, const std::string *a3)
{
  v8 = a2;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 192), a2, &std::piecewise_construct, &v8, &v7);
  result = std::string::operator=((v5 + 7), a3);
  *(a1 + 340) = 1;
  return result;
}

uint64_t xgboost::LearnerConfiguration::GetAttr(uint64_t a1, const void **a2, std::string *a3)
{
  v3 = a1 + 200;
  v4 = *(a1 + 200);
  if (!v4)
  {
    return 0;
  }

  v7 = a1 + 200;
  do
  {
    v8 = std::less<std::string>::operator()[abi:ne200100](v3 - 8, (v4 + 32), a2);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v7 == v3 || std::less<std::string>::operator()[abi:ne200100](v3 - 8, a2, (v7 + 32)))
  {
    return 0;
  }

  std::string::operator=(a3, (v7 + 56));
  return 1;
}

BOOL xgboost::LearnerConfiguration::DelAttr(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::find<std::string>(a1 + 192, a2);
  if ((a1 + 200) != v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer((a1 + 192), v3);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v3 + 4));
    operator delete(v3);
  }

  return a1 + 200 != v3;
}

void xgboost::LearnerConfiguration::GetAttrNames(xgboost::LearnerConfiguration *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 24);
  v3 = this + 200;
  if (v2 != (this + 200))
  {
    v5 = 0;
    do
    {
      if (v5 >= a2[2])
      {
        v5 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, v2 + 2);
      }

      else
      {
        std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a2, v2 + 2);
        ++v5;
      }

      a2[1] = v5;
      v6 = *(v2 + 1);
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
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }
}

void sub_274DCD918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::LearnerConfiguration::SetFeatureNames(std::vector<std::string> *a1, std::vector<std::string> *a2)
{
  v2 = a1 + 9;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, a2->__begin_, a2->__end_, 0xAAAAAAAAAAAAAAABLL * ((a2->__end_ - a2->__begin_) >> 3));
  }
}

void xgboost::LearnerConfiguration::GetFeatureNames(std::vector<std::string> *a1, std::vector<std::string> *a2)
{
  if (&a1[9] != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a2, a1[9].__begin_, a1[9].__end_, 0xAAAAAAAAAAAAAAABLL * ((a1[9].__end_ - a1[9].__begin_) >> 3));
  }
}

void xgboost::LearnerConfiguration::SetFeatureTypes(std::vector<std::string> *a1, std::vector<std::string> *a2)
{
  v2 = a1 + 10;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, a2->__begin_, a2->__end_, 0xAAAAAAAAAAAAAAABLL * ((a2->__end_ - a2->__begin_) >> 3));
  }
}

void xgboost::LearnerConfiguration::GetFeatureTypes(std::vector<std::string> *a1, std::vector<std::string> *a2)
{
  if (&a1[10] != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a2, a1[10].__begin_, a1[10].__end_, 0xAAAAAAAAAAAAAAABLL * ((a1[10].__end_ - a1[10].__begin_) >> 3));
  }
}

void xgboost::LearnerImpl::Slice(xgboost::LearnerImpl *this, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v5 = a2;
  (*(*this + 32))(this);
  LODWORD(v7) = 0;
  if (*(this + 117))
  {
    LODWORD(v7) = v5;
    v8 = 0;
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    dmlc::LogCheckFormat<int,int>(&v7, &v8);
  }

  dmlc::LogCheckFormat<unsigned int,int>(this + 117, &v7);
}

void sub_274DCE128(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, atomic_uint *a26)
{
  if (a26)
  {
    if (atomic_fetch_add_explicit(a26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      (*(*a26 + 8))(a26, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerImpl::DumpModel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 32))(a1);
  v8 = a1[4];
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  (*(*v8 + 136))(v8, a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_274DCE380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *xgboost::LearnerImpl::GetThreadLocal(xgboost::LearnerImpl *this)
{
  v2 = *(dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get() + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= this)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= this)
    {
      return v3 + 5;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_274DCE4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<xgboost::DMatrix const*,xgboost::XGBAPIThreadLocalEntry>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::LearnerConfiguration::GetPredictionCache(xgboost::LearnerConfiguration *this)
{
  v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get();
  v4 = this;
  v5 = &v4;
  return std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::__emplace_unique_key_args<xgboost::Learner const*,std::piecewise_construct_t const&,std::tuple<xgboost::Learner const*&&>,std::tuple<>>(v2, this, &v5) + 5;
}

void xgboost::LearnerConfiguration::LoadConfig(xgboost::LearnerConfiguration *this, const xgboost::Json *a2)
{
  if (*(*a2 + 12) != 3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 409);
    v67 = dmlc::LogMessageFatal::GetEntry(&__p);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "Check failed: IsA<Object>(in)", 29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&__p);
  }

  xgboost::Version::Load(a2, a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "learner");
  v4 = (*(**a2 + 24))(*a2, &__p);
  v5 = xgboost::Cast<xgboost::JsonObject,xgboost::Value>(*v4);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v79, "learner_train_param");
  v6 = std::map<std::string,xgboost::Json>::at(v5 + 16, v79);
  v7 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v6);
  v76 = 0;
  v77 = 0;
  __p = &v76;
  v8 = *(v7 + 2);
  v9 = (v7 + 24);
  if (v8 != (v7 + 24))
  {
    do
    {
      v10 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v8[7]);
      v85[0] = v8 + 4;
      v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v8 + 4, &std::piecewise_construct, v85, &v84);
      v7 = std::string::operator=((v11 + 7), (v10 + 16));
      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != v9);
  }

  if (*(this + 480) == 1)
  {
    v81 = 0;
    v82 = 0;
    v83 = 0;
    xgboost::LearnerTrainParam::__MANAGER__(v7);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BB0, this + 480, __p, &v76, 0, &v81, 0);
  }

  else
  {
    v81 = 0;
    v82 = 0;
    v83 = 0;
    xgboost::LearnerTrainParam::__MANAGER__(v7);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BB0, this + 480, __p, &v76, &v81, 0);
    *(this + 480) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v76);
  __p = &v81;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "gradient_booster");
  v15 = std::map<std::string,xgboost::Json>::at(v5 + 16, &__p);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "objective");
  v16 = std::map<std::string,xgboost::Json>::at(v5 + 16, &__p);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p);
  }

  v17 = *(this + 3);
  if (!v17)
  {
    v17 = xgboost::ObjFunction::Create(this + 65, this + 64);
    v18 = *(this + 3);
    *(this + 3) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
      v17 = *(this + 3);
    }
  }

  (*(*v17 + 16))(v17, v16);
  *(this + 238) = (*(**(this + 3) + 80))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v19 = (*(**v15 + 24))(*v15, &__p);
  v20 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v19);
  std::string::operator=((this + 496), (v20 + 16));
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p);
  }

  v21 = *(this + 4);
  if (!v21)
  {
    xgboost::GradientBooster::Create(this + 496, this + 64, this + 464);
    v22 = *(this + 4);
    *(this + 4) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
      v21 = *(this + 4);
    }
  }

  (*(*(v21 + 8) + 16))();
  std::string::basic_string[abi:ne200100]<0>(&__p, "metrics");
  v23 = std::map<std::string,xgboost::Json>::at(v5 + 16, &__p);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__p);
  }

  v24 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v23);
  v25 = v24[2];
  v70 = v24[3];
  v26 = (v70 - v25) >> 3;
  v27 = (this + 544);
  std::vector<std::string>::resize((this + 544), v26);
  v30 = *(this + 5);
  v31 = *(this + 6);
  v32 = (this + 40);
  v33 = (v31 - v30) >> 3;
  v69 = v5;
  if (v26 <= v33)
  {
    v39 = v70;
    if (v26 < v33)
    {
      v40 = (v30 + v70 - v25);
      while (v31 != v40)
      {
        v42 = *--v31;
        v41 = v42;
        *v31 = 0;
        if (v42)
        {
          (*(*v41 + 8))(v41);
        }
      }

      *(this + 6) = v40;
    }
  }

  else
  {
    v34 = v26 - v33;
    v35 = *(this + 7);
    if (v34 > (v35 - v31) >> 3)
    {
      if (!(v26 >> 61))
      {
        v36 = v35 - v30;
        v37 = v36 >> 2;
        if (v36 >> 2 <= v26)
        {
          v37 = (v70 - v25) >> 3;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        v78 = this + 40;
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v38);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(v31, 8 * v34);
    *(this + 6) = &v31[v34];
    v39 = v70;
  }

  if (v39 != v25)
  {
    if (v26 <= 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = (v70 - v25) >> 3;
    }

    v71 = dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(v28, v29);
    v44 = 0;
    do
    {
      v45 = *(*(*(**v23 + 32))(*v23, v44) + 12);
      if (v45)
      {
        v46 = (*(**v23 + 32))(*v23, v44);
        std::string::basic_string[abi:ne200100]<0>(&__p, "name");
        v47 = (*(**v46 + 24))(*v46, &__p);
        v48 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v47);
        std::string::operator=((*v27 + 24 * v44), (v48 + 16));
        if (SHIBYTE(v77) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        if (*(v71 + 4) >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v79, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc");
          xgboost::ConsoleLogger::ConsoleLogger(&__p, v79, 438, 1);
          for (i = 0; i != 381; ++i)
          {
            std::ostream::put();
          }

          xgboost::ConsoleLogger::~ConsoleLogger(&__p, v50, v51);
          if (v80 < 0)
          {
            operator delete(v79[0]);
          }
        }

        v52 = (*(**v23 + 32))(*v23, v44);
        v53 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v52);
        std::string::operator=((*v27 + 24 * v44), (v53 + 16));
      }

      v54 = xgboost::Metric::Create((*v27 + 24 * v44), this + 64);
      v55 = *(*v32 + 8 * v44);
      *(*v32 + 8 * v44) = v54;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }

      if (v45)
      {
        v56 = *(*v32 + 8 * v44);
        v57 = (*(**v23 + 32))(*v23, v44);
        (*(*v56 + 16))(v56, v57);
      }

      ++v44;
    }

    while (v44 != v43);
  }

  std::string::basic_string[abi:ne200100]<0>(v79, "generic_param");
  v58 = std::map<std::string,xgboost::Json>::at(v69 + 16, v79);
  v59 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v58);
  v76 = 0;
  v77 = 0;
  __p = &v76;
  v60 = *(v59 + 2);
  v61 = (v59 + 24);
  if (v60 != (v59 + 24))
  {
    do
    {
      v62 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v60[7]);
      v85[0] = v60 + 4;
      v63 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v60 + 4, &std::piecewise_construct, v85, &v84);
      v59 = std::string::operator=((v63 + 7), (v62 + 16));
      v64 = v60[1];
      if (v64)
      {
        do
        {
          v65 = v64;
          v64 = *v64;
        }

        while (v64);
      }

      else
      {
        do
        {
          v65 = v60[2];
          v14 = *v65 == v60;
          v60 = v65;
        }

        while (!v14);
      }

      v60 = v65;
    }

    while (v65 != v61);
  }

  if (*(this + 64) == 1)
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    xgboost::GenericParameter::__MANAGER__(v59);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BF8, this + 64, __p, &v76, 0, &v72, 0);
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v74 = 0;
    xgboost::GenericParameter::__MANAGER__(v59);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6BF8, this + 64, __p, &v76, &v72, 0);
    *(this + 64) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v76);
  __p = &v72;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  xgboost::GenericParameter::ConfigureGpuId((this + 64));
  atomic_store(1u, this + 160);
}

void sub_274DCEEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void xgboost::LearnerConfiguration::SaveConfig(xgboost::LearnerConfiguration *this, xgboost::Json *a2)
{
  v3 = atomic_load(this + 160);
  if (v3)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v8);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 457);
    v5 = dmlc::LogMessageFatal::GetEntry(&v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: !this->need_configuration_", 40);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Call Configure before saving model.", 35);
    dmlc::LogMessageFatal::~LogMessageFatal(&v8);
  }

  xgboost::Version::Save(a2, a2);
}

void xgboost::LearnerIO::Save(uint64_t a1, uint64_t a2)
{
  v3 = 0x300000000;
  v5 = 0uLL;
  v2 = &unk_2883E6E50;
  v4 = &v5;
  operator new();
}

void sub_274DD0068(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (atomic_fetch_add_explicit(v23 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v23 + 8))(v23, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerIO::Load(xgboost::LearnerIO *this, dmlc::Stream *a2)
{
  v29[0] = &unk_2883E1748;
  v29[1] = a2;
  v30 = 0u;
  v31 = 0u;
  xgboost::common::PeekableInStream::PeekRead(v29, &v28, 2uLL);
  if (v28 == 123)
  {
    xgboost::common::ReadAll(&v27, a2, v29);
    operator new();
  }

  memset(&v27, 0, sizeof(v27));
  v4 = *(this + 615);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 75);
  }

  std::string::resize(&v27, v4, 0);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v27;
  }

  else
  {
    v5 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v7 = xgboost::common::PeekableInStream::Read(v29, v5, size);
  __p[0] = v7;
  v8 = *(this + 615);
  if (v8 < 0)
  {
    v8 = *(this + 75);
  }

  __dst = v8;
  if (v7 != v8)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(__p, &__dst);
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v27.__r_.__value_.__l.__size_;
  }

  v10 = *(this + 615);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(this + 75);
  }

  if (v9 != v10 || ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = &v27) : (v12 = v27.__r_.__value_.__r.__words[0]), v11 >= 0 ? (v13 = this + 592) : (v13 = *(this + 74)), memcmp(v12, v13, v9)))
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v23);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 1059);
    v17 = dmlc::LogMessageFatal::GetEntry(v23);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Check failed: header == serialisation_header_", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    for (i = 0; i != 381; ++i)
    {
      std::ostream::put();
    }

    dmlc::LogMessageFatal::~LogMessageFatal(v23);
  }

  __dst = -1;
  v20 = 8;
  __p[0] = xgboost::common::PeekableInStream::Read(v29, &__dst, 8uLL);
  if (__p[0] != 8)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(__p, &v20);
  }

  LODWORD(__p[0]) = 0;
  if (__dst >= 1)
  {
    v14 = __dst;
    xgboost::common::FixedSizeStream::FixedSizeStream(v23, v29);
    *__p = v24;
    v22 = v25;
    HIBYTE(v25) = 0;
    LOBYTE(v24) = 0;
    xgboost::common::FixedSizeStream::~FixedSizeStream(v23);
    if (v22 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v23[0] = &unk_2883E11A8;
    v23[1] = v15;
    v23[2] = v14;
    v23[3] = 0;
    (*(*this + 104))(this, v23);
    xgboost::Json::Load();
  }

  dmlc::LogCheckFormat<long long,int>(&__dst, __p);
}

void sub_274DD0AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  *(v23 - 96) = v22;
  if (*(v23 - 49) < 0)
  {
    operator delete(*(v23 - 72));
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toxgboost::LearnerImpl::~LearnerImpl(xgboost::LearnerImpl *this)
{
  xgboost::LearnerImpl::~LearnerImpl((this - 8));
}

{
  xgboost::LearnerImpl::~LearnerImpl((this - 8));
}

{
  xgboost::LearnerImpl::~LearnerImpl((this - 16));
}

{
  xgboost::LearnerImpl::~LearnerImpl((this - 16));
}

void xgboost::LearnerConfiguration::~LearnerConfiguration(xgboost::LearnerConfiguration *this)
{
  *this = &unk_2883E52E8;
  *(this + 1) = &unk_2883E5408;
  *(this + 2) = &unk_2883E5438;
  v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get();
  v4 = v2 + 1;
  v3 = v2[1];
  if (v3)
  {
    v5 = v2 + 1;
    v6 = v2[1];
    do
    {
      v7 = v6[4];
      v8 = v7 >= this;
      v9 = v7 < this;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= this)
    {
      v10 = v2 + 1;
      v11 = v2[1];
      do
      {
        v12 = *(v11 + 32);
        v8 = v12 >= this;
        v13 = v12 < this;
        if (v8)
        {
          v10 = v11;
        }

        v11 = *(v11 + 8 * v13);
      }

      while (v11);
      if (v10 != v4 && v10[4] <= this)
      {
        v14 = v10[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          v16 = v10;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*v2 == v10)
        {
          *v2 = v15;
        }

        --v2[2];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v10);
        std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table((v10 + 5));
        operator delete(v10);
      }
    }
  }

  v20 = (this + 544);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  xgboost::common::Monitor::~Monitor(this + 33, v18, v19);
  v20 = (this + 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  v20 = (this + 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 192, *(this + 25));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 168, *(this + 22));
  std::mutex::~mutex((this + 96));
  xgboost::Learner::~Learner(this);
}

uint64_t dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get()
{
  {
    v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst);
    v2[2] = 0;
    v2[1] = 0;
    *v2 = v2 + 1;
    _tlv_atexit(std::map<xgboost::Learner const*,xgboost::PredictionContainer>::~map[abi:ne200100], v2);
  }

  return dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::PredictionContainer>>::Get(void)::inst);
}

void xgboost::LearnerTrainParam::~LearnerTrainParam(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::destroy(*a1);
    std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::destroy(a1[1]);
    std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table((a1 + 5));

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::__unordered_map_hasher<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::hash<xgboost::DMatrix *>,std::equal_to<xgboost::DMatrix *>,true>,std::__unordered_map_equal<xgboost::DMatrix *,std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>,std::equal_to<xgboost::DMatrix *>,std::hash<xgboost::DMatrix *>,true>,std::allocator<std::__hash_value_type<xgboost::DMatrix *,xgboost::PredictionCacheEntry>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__destroy_at[abi:ne200100]<std::pair<xgboost::DMatrix * const,xgboost::PredictionCacheEntry>,0>(v2 + 16);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::__map_value_compare<xgboost::Learner const*,std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>,std::less<xgboost::Learner const*>,true>,std::allocator<std::__value_type<xgboost::Learner const*,xgboost::PredictionContainer>>>::__emplace_unique_key_args<xgboost::Learner const*,std::piecewise_construct_t const&,std::tuple<xgboost::Learner const*&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get()
{
  {
    v2 = dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst);
    v2[2] = 0;
    v2[1] = 0;
    *v2 = v2 + 1;
    _tlv_atexit(std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>::~map[abi:ne200100], v2);
  }

  return dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst(&dmlc::ThreadLocalStore<std::map<xgboost::Learner const*,xgboost::XGBAPIThreadLocalEntry>>::Get(void)::inst);
}

void xgboost::XGBoostParameter<xgboost::LearnerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(xgboost::LearnerTrainParam *a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::LearnerTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BB0, a2, *a3, a3[1], 0, a1, 0);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    xgboost::LearnerTrainParam::__MANAGER__(a1);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6BB0, a2, *a3, a3[1], a1, 0);
    *a2 = 1;
  }
}

void sub_274DD15BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *xgboost::Cast<xgboost::JsonObject,xgboost::Value>(_DWORD *a1)
{
  if (a1[3] == 3)
  {
  }

  else
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v25);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/json.h", 79);
    v4 = dmlc::LogMessageFatal::GetEntry(&v25);
    xgboost::Value::TypeStr(a1, &v20);
    v5 = std::string::insert(&v20, 0, "Invalid cast, from ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v21, " to ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v15[1] = 0x300000000;
    v17[0] = 0;
    v17[1] = 0;
    v15[0] = &unk_2883E6E50;
    v16 = v17;
    xgboost::Value::TypeStr(v15, __p);
    if ((v19 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v10 = v19;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = std::string::append(&v22, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v24 = v11->__r_.__value_.__r.__words[2];
    v23 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v13 = &v23;
    }

    else
    {
      v13 = v23;
    }

    if (v24 >= 0)
    {
      v14 = HIBYTE(v24);
    }

    else
    {
      v14 = *(&v23 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v13, v14);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v15[0] = &unk_2883E6E50;
    std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(&v16, v17[0]);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    dmlc::LogMessageFatal::~LogMessageFatal(&v25);
  }
}

void sub_274DD185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v32 + 16, a13);
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  dmlc::LogMessageFatal::~LogMessageFatal((v33 - 49));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(char *a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[10],std::string&,0>(std::string *a1, __int128 *a2)
{
  std::string::basic_string[abi:ne200100]<0>(a1, "objective");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void sub_274DD1A28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::LearnerModelParamLegacy::ToJson(xgboost::LearnerModelParamLegacy *this, float *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = 0x300000000;
  v17[0] = 0;
  v17[1] = 0;
  v14 = &unk_2883E6E50;
  v16 = v17;
  v2 = xgboost::detail::ToCharsFloatImpl(__src, *a2, a2);
  if (v2 >= 16)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if (v2 >= 16)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(v11);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/learner.cc", 110);
    v6 = dmlc::LogMessageFatal::GetEntry(v11);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Check failed: ret.ec == std::errc()", 35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(v11);
  }

  std::string::basic_string[abi:ne200100](__dst, __src, v3);
  v11[0] = &unk_2883E6F38;
  v11[1] = 0;
  *v12 = *__dst;
  v13 = v10;
  __dst[0] = 0;
  __dst[1] = 0;
  v10 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "base_score");
  v19 = __p;
  v4 = std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v16, __p, &std::piecewise_construct, &v19, &v18);
  xgboost::Json::operator=(v4 + 7, v11);
}

void sub_274DD2024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a21);
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v32 + 16, a32);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::Json>::__emplace_back_slow_path<std::string const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 61))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 2 > v3)
    {
      v3 = v5 >> 2;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v6 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(a1, v6);
    }

    v7 = (8 * v2);
    std::allocator<xgboost::Json>::construct[abi:ne200100]<xgboost::Json,std::string const&>((8 * v2), a2);
  }

  std::vector<xgboost::Json>::__throw_length_error[abi:ne200100]();
}

void sub_274DD2210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<xgboost::Json>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_274DD22B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::Json>,xgboost::Json*>(uint64_t a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      v7 = *v5;
      if (*v5 && atomic_fetch_add_explicit(v7 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        __dmb(9u);
        (*(*v7 + 8))(v7);
      }

      ++v5;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::Json>,xgboost::Json*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<xgboost::Json>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::Json>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<xgboost::Json>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      *(v4 + 16) = v2 - 8;
      if (result)
      {
        if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          result = (*(*result + 8))(result);
        }
      }

      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::vector<std::pair<std::string,std::string>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>,0>(uint64_t *a1, void *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
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

      ++v4;
      v5 = v7;
      if (v7 == a3)
      {
        std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](a1, v4);
      }
    }
  }

  return a1;
}

uint64_t xgboost::common::ToString<unsigned int>(void *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  MEMORY[0x277C68E30](&v4, *a2);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v8);
}

void sub_274DD2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::common::ToString<int>(void *a1, unsigned int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  MEMORY[0x277C68E20](&v4, *a2);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v8);
}

void sub_274DD2898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<xgboost::Metric>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x277C690D0](a1 + 128);
  return a1;
}

void std::deque<xgboost::Json>::push_back(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v13);
    }

    a1[4] = v8 - 512;
    v17 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(a1, &v17);
    v4 = a1[1];
    v7 = a1[5];
    v9 = v7 + a1[4];
  }

  v14 = *(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8));
  v15 = v9 & 0x1FF;
  v16 = *a2;
  *(v14 + 8 * v15) = *a2;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
    v7 = a1[5];
  }

  a1[5] = v7 + 1;
}

void sub_274DD2F28(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<xgboost::Json *>::emplace_back<xgboost::Json *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<xgboost::Metric>>>(v11);
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

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const(&)[17]>(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(void *a1, _OWORD *a2, uint64_t a3, char a4)
{
  v197 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v6 = a2 - 3;
    v7 = a2 - 3;
    v191 = a2;
    v8 = a2 - 9;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v191;
          v11 = v191 - v9;
          v12 = 0xAAAAAAAAAAAAAAABLL * (v191 - v9);
          v13 = v12 - 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v127 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 3, v9);
                v128 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9 + 3);
                if (v127)
                {
                  if (v128)
                  {
                    goto LABEL_116;
                  }

                  v187 = *v9;
                  v194 = v9[2];
                  v193 = v187;
                  *v9 = *(v9 + 3);
                  v9[2] = v9[5];
                  *(v9 + 3) = v193;
                  v9[5] = v194;
                  if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9 + 3))
                  {
                    return;
                  }

                  v131 = *(v9 + 3);
                  v193 = v131;
                  v132 = v9[5];
                  v194 = v132;
                  v188 = v6[2];
                  *(v9 + 3) = *v6;
                  v9[5] = v188;
LABEL_117:
                  v6[2] = v132;
                  *v6 = v131;
                  return;
                }

                if (!v128)
                {
                  return;
                }

                v193 = *(v9 + 3);
                v177 = v193;
                v194 = v9[5];
                v178 = v194;
                v179 = v6[2];
                *(v9 + 3) = *v6;
                v9[5] = v179;
                v6[2] = v178;
                *v6 = v177;
LABEL_173:
                if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 3, v9))
                {
                  v180 = *v9;
                  v194 = v9[2];
                  v193 = v180;
                  *v9 = *(v9 + 3);
                  v9[2] = v9[5];
                  *(v9 + 3) = v193;
                  v9[5] = v194;
                }

                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, v9 + 3, v9 + 6, v6);
                return;
              case 5:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, v9 + 3, v9 + 6, v9 + 9);
                if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9 + 9))
                {
                  return;
                }

                v193 = *(v9 + 9);
                v119 = v193;
                v194 = v9[11];
                v120 = v194;
                v121 = v6[2];
                *(v9 + 9) = *v6;
                v9[11] = v121;
                v6[2] = v120;
                *v6 = v119;
                if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 9, v9 + 6))
                {
                  return;
                }

                v122 = v9[8];
                v123 = *(v9 + 3);
                *(v9 + 3) = *(v9 + 9);
                v9[8] = v9[11];
                *(v9 + 9) = v123;
                v9[11] = v122;
                if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9 + 6, v9 + 3))
                {
                  return;
                }

                v124 = v9[5];
                v125 = *(v9 + 3);
                *(v9 + 3) = *(v9 + 3);
                v9[5] = v9[8];
                *(v9 + 3) = v125;
                v9[8] = v124;
                goto LABEL_173;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, v9))
              {
                return;
              }

LABEL_116:
              v129 = *v9;
              v194 = v9[2];
              v193 = v129;
              v130 = *v6;
              v9[2] = v6[2];
              *v9 = v130;
              v131 = v193;
              v132 = v194;
              goto LABEL_117;
            }
          }

          if (v11 <= 575)
          {
            v133 = v9 + 3;
            v135 = v9 == v191 || v133 == v191;
            if (a4)
            {
              if (!v135)
              {
                v136 = 0;
                v137 = v9;
                do
                {
                  v138 = v137;
                  v137 = v133;
                  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v133, v138))
                  {
                    v139 = *v137;
                    v194 = v137[2];
                    v193 = v139;
                    v137[1] = 0;
                    v137[2] = 0;
                    *v137 = 0;
                    v140 = v136;
                    while (1)
                    {
                      v141 = v9 + v140;
                      *(v141 + 24) = *(v9 + v140);
                      *(v141 + 5) = *(v9 + v140 + 16);
                      v141[23] = 0;
                      *v141 = 0;
                      if (!v140)
                      {
                        break;
                      }

                      v140 -= 24;
                      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v193, (v9 + v140)))
                      {
                        v142 = v9 + v140 + 24;
                        goto LABEL_136;
                      }
                    }

                    v142 = v9;
LABEL_136:
                    v143 = v193;
                    *(v142 + 16) = v194;
                    *v142 = v143;
                  }

                  v133 = v137 + 3;
                  v136 += 24;
                }

                while (v137 + 3 != v191);
              }
            }

            else if (!v135)
            {
              v181 = v9 - 3;
              do
              {
                v182 = a1;
                a1 = v133;
                if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v133, v182))
                {
                  v183 = *a1;
                  v194 = a1[2];
                  v193 = v183;
                  a1[1] = 0;
                  a1[2] = 0;
                  *a1 = 0;
                  v184 = v181;
                  do
                  {
                    *(v184 + 3) = *(v184 + 3);
                    v184[8] = v184[5];
                    *(v184 + 47) = 0;
                    *(v184 + 24) = 0;
                    v185 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v193, v184);
                    v184 -= 3;
                  }

                  while (v185);
                  v186 = v193;
                  v184[8] = v194;
                  *(v184 + 3) = v186;
                }

                v133 = a1 + 3;
                v181 += 3;
              }

              while (a1 + 3 != v191);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != v191)
            {
              v144 = v13 >> 1;
              v145 = v13 >> 1;
              do
              {
                v146 = v145;
                if (v144 >= v145)
                {
                  v147 = (2 * v145) | 1;
                  v148 = &a1[3 * v147];
                  if (2 * v145 + 2 < v12 && std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v147], v148 + 3))
                  {
                    v148 += 3;
                    v147 = 2 * v146 + 2;
                  }

                  v149 = &a1[3 * v146];
                  if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v148, v149))
                  {
                    v150 = *v149;
                    v194 = v149[2];
                    v193 = v150;
                    v149[1] = 0;
                    v149[2] = 0;
                    *v149 = 0;
                    do
                    {
                      v151 = v148;
                      v152 = *v148;
                      v149[2] = v148[2];
                      *v149 = v152;
                      *(v148 + 23) = 0;
                      *v148 = 0;
                      if (v144 < v147)
                      {
                        break;
                      }

                      v153 = (2 * v147) | 1;
                      v148 = &a1[3 * v153];
                      v154 = 2 * v147 + 2;
                      if (v154 < v12 && std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v153], v148 + 3))
                      {
                        v148 += 3;
                        v153 = v154;
                      }

                      v149 = v151;
                      v147 = v153;
                    }

                    while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v148, &v193));
                    v155 = v193;
                    v151[2] = v194;
                    *v151 = v155;
                    v10 = v191;
                  }
                }

                v145 = v146 - 1;
              }

              while (v146);
              v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              do
              {
                v157 = 0;
                v158 = v10;
                v190 = *a1;
                *&v195 = a1[1];
                *(&v195 + 7) = *(a1 + 15);
                v192 = *(a1 + 23);
                a1[1] = 0;
                a1[2] = 0;
                *a1 = 0;
                v159 = a1;
                do
                {
                  v160 = v159 + 24 * v157;
                  v161 = v160 + 24;
                  v162 = (2 * v157) | 1;
                  v163 = 2 * v157 + 2;
                  if (v163 < v156)
                  {
                    v164 = v160 + 48;
                    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>((v160 + 24), (v160 + 48)))
                    {
                      v161 = v164;
                      v162 = v163;
                    }
                  }

                  v165 = *v161;
                  *(v159 + 16) = *(v161 + 16);
                  *v159 = v165;
                  *(v161 + 23) = 0;
                  *v161 = 0;
                  v159 = v161;
                  v157 = v162;
                }

                while (v162 <= (v156 - 2) / 2);
                v10 = (v10 - 24);
                if (v161 == (v158 - 24))
                {
                  *v161 = v190;
                  v175 = *(&v195 + 7);
                  *(v161 + 8) = v195;
                  *(v161 + 15) = v175;
                  *(v161 + 23) = v192;
                }

                else
                {
                  v166 = *v10;
                  *(v161 + 16) = *(v158 - 1);
                  *v161 = v166;
                  *(v158 - 3) = v190;
                  v167 = v195;
                  *(v158 - 9) = *(&v195 + 7);
                  *(v158 - 2) = v167;
                  *(v158 - 1) = v192;
                  v168 = v161 - a1 + 24;
                  if (v168 >= 25)
                  {
                    v169 = (-2 - 0x5555555555555555 * (v168 >> 3)) >> 1;
                    v170 = &a1[3 * v169];
                    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v170, v161))
                    {
                      v171 = *v161;
                      v194 = *(v161 + 16);
                      v193 = v171;
                      *(v161 + 8) = 0;
                      *(v161 + 16) = 0;
                      *v161 = 0;
                      do
                      {
                        v172 = v170;
                        v173 = *v170;
                        *(v161 + 16) = v170[2];
                        *v161 = v173;
                        *(v170 + 23) = 0;
                        *v170 = 0;
                        if (!v169)
                        {
                          break;
                        }

                        v169 = (v169 - 1) >> 1;
                        v170 = &a1[3 * v169];
                        v161 = v172;
                      }

                      while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v170, &v193));
                      v174 = v193;
                      *(v172 + 16) = v194;
                      *v172 = v174;
                    }
                  }
                }
              }

              while (v156-- > 2);
            }

            return;
          }

          v14 = v12 >> 1;
          v15 = &v9[3 * v14];
          if (v11 >= 0xC01)
          {
            v16 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v14], a1);
            v17 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, &a1[3 * v14]);
            if (v16)
            {
              if (v17)
              {
                v18 = *a1;
                v194 = a1[2];
                v193 = v18;
                v19 = *v6;
                a1[2] = v6[2];
                *a1 = v19;
              }

              else
              {
                v36 = *a1;
                v194 = a1[2];
                v193 = v36;
                v37 = *v15;
                a1[2] = v15[2];
                *a1 = v37;
                v38 = v193;
                v15[2] = v194;
                *v15 = v38;
                if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, &a1[3 * v14]))
                {
                  goto LABEL_28;
                }

                v39 = *v15;
                v194 = v15[2];
                v193 = v39;
                v40 = *v6;
                v15[2] = v6[2];
                *v15 = v40;
              }

              v41 = v193;
              v6[2] = v194;
              *v6 = v41;
            }

            else if (v17)
            {
              v24 = *v15;
              v194 = v15[2];
              v193 = v24;
              v25 = *v6;
              v15[2] = v6[2];
              *v15 = v25;
              v26 = v193;
              v6[2] = v194;
              *v6 = v26;
              if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[3 * v14], a1))
              {
                v27 = *a1;
                v194 = a1[2];
                v193 = v27;
                v28 = *v15;
                a1[2] = v15[2];
                *a1 = v28;
                v29 = v193;
                v15[2] = v194;
                *v15 = v29;
              }
            }

LABEL_28:
            v42 = &a1[3 * v14 - 3];
            v43 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v42, a1 + 3);
            v44 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v7, v42);
            if (v43)
            {
              if (v44)
              {
                v45 = *(a1 + 3);
                v193 = v45;
                v46 = a1[5];
                v194 = v46;
                v47 = v7[2];
                *(a1 + 3) = *v7;
                a1[5] = v47;
              }

              else
              {
                v193 = *(a1 + 3);
                v60 = v193;
                v194 = a1[5];
                v61 = v194;
                v62 = a1[3 * v14 - 1];
                *(a1 + 3) = *v42;
                a1[5] = v62;
                a1[3 * v14 - 1] = v61;
                *v42 = v60;
                if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v7, v42))
                {
                  goto LABEL_40;
                }

                v63 = *v42;
                v194 = a1[3 * v14 - 1];
                v193 = v63;
                v64 = *v7;
                a1[3 * v14 - 1] = v7[2];
                *v42 = v64;
                v45 = v193;
                v46 = v194;
              }

              v7[2] = v46;
              *v7 = v45;
            }

            else if (v44)
            {
              v48 = *v42;
              v194 = a1[3 * v14 - 1];
              v193 = v48;
              v49 = *v7;
              a1[3 * v14 - 1] = v7[2];
              *v42 = v49;
              v50 = v193;
              v7[2] = v194;
              *v7 = v50;
              if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v42, a1 + 3))
              {
                v193 = *(a1 + 3);
                v51 = v193;
                v194 = a1[5];
                v52 = v194;
                v53 = a1[3 * v14 - 1];
                *(a1 + 3) = *v42;
                a1[5] = v53;
                a1[3 * v14 - 1] = v52;
                *v42 = v51;
              }
            }

LABEL_40:
            v65 = &a1[3 * v14];
            v66 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, a1 + 6);
            v67 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v8, v65 + 3);
            if (!v66)
            {
              if (v67)
              {
                v71 = *(v65 + 3);
                v194 = v65[5];
                v193 = v71;
                v72 = *v8;
                v65[5] = v8[2];
                *(v65 + 3) = v72;
                v73 = v193;
                v8[2] = v194;
                *v8 = v73;
                if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, a1 + 6))
                {
                  v193 = *(a1 + 3);
                  v74 = v193;
                  v194 = a1[8];
                  v75 = v194;
                  v76 = v65[5];
                  *(a1 + 3) = *(v65 + 3);
                  a1[8] = v76;
                  v65[5] = v75;
                  *(v65 + 3) = v74;
                }
              }

              goto LABEL_49;
            }

            if (v67)
            {
              v68 = *(a1 + 3);
              v193 = v68;
              v69 = a1[8];
              v194 = v69;
              v70 = v8[2];
              *(a1 + 3) = *v8;
              a1[8] = v70;
            }

            else
            {
              v193 = *(a1 + 3);
              v77 = v193;
              v194 = a1[8];
              v78 = v194;
              v79 = v65[5];
              *(a1 + 3) = *(v65 + 3);
              a1[8] = v79;
              v65[5] = v78;
              *(v65 + 3) = v77;
              if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v8, v65 + 3))
              {
LABEL_49:
                v82 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v15, v42);
                v83 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, v15);
                if (v82)
                {
                  if (v83)
                  {
                    v84 = *v42;
                    v194 = v42[2];
                    v193 = v84;
                    *v42 = *(v65 + 3);
                    v42[2] = v65[5];
                    v85 = v193;
                    v65[5] = v194;
                    *(v65 + 3) = v85;
                    v10 = v191;
                  }

                  else
                  {
                    v90 = *v42;
                    v194 = v42[2];
                    v193 = v90;
                    *v42 = *v15;
                    v42[2] = v15[2];
                    v91 = v193;
                    v15[2] = v194;
                    *v15 = v91;
                    v10 = v191;
                    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v65 + 3, v15))
                    {
                      v92 = *v15;
                      v194 = v15[2];
                      v193 = v92;
                      *v15 = *(v65 + 3);
                      v15[2] = v65[5];
                      v93 = v193;
                      v65[5] = v194;
                      *(v65 + 3) = v93;
                    }
                  }
                }

                else
                {
                  v10 = v191;
                  if (v83)
                  {
                    v86 = *v15;
                    v194 = v15[2];
                    v193 = v86;
                    *v15 = *(v65 + 3);
                    v15[2] = v65[5];
                    v87 = v193;
                    v65[5] = v194;
                    *(v65 + 3) = v87;
                    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v15, v42))
                    {
                      v88 = *v42;
                      v194 = v42[2];
                      v193 = v88;
                      *v42 = *v15;
                      v42[2] = v15[2];
                      v89 = v193;
                      v15[2] = v194;
                      *v15 = v89;
                    }
                  }
                }

                v94 = *a1;
                v194 = a1[2];
                v193 = v94;
                v95 = *v15;
                a1[2] = v15[2];
                *a1 = v95;
                v96 = v193;
                v15[2] = v194;
                *v15 = v96;
                goto LABEL_58;
              }

              v80 = *(v65 + 3);
              v194 = v65[5];
              v193 = v80;
              v81 = *v8;
              v65[5] = v8[2];
              *(v65 + 3) = v81;
              v68 = v193;
              v69 = v194;
            }

            v8[2] = v69;
            *v8 = v68;
            goto LABEL_49;
          }

          v20 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, &a1[3 * v14]);
          v21 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, a1);
          if (v20)
          {
            if (v21)
            {
              v22 = *v15;
              v194 = v15[2];
              v193 = v22;
              v23 = *v6;
              v15[2] = v6[2];
              *v15 = v23;
            }

            else
            {
              v54 = *v15;
              v194 = v15[2];
              v193 = v54;
              v55 = *a1;
              v15[2] = a1[2];
              *v15 = v55;
              v56 = v193;
              a1[2] = v194;
              *a1 = v56;
              if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, a1))
              {
                goto LABEL_58;
              }

              v57 = *a1;
              v194 = a1[2];
              v193 = v57;
              v58 = *v6;
              a1[2] = v6[2];
              *a1 = v58;
            }

            v59 = v193;
            v6[2] = v194;
            *v6 = v59;
            goto LABEL_58;
          }

          if (v21)
          {
            v30 = *a1;
            v194 = a1[2];
            v193 = v30;
            v31 = *v6;
            a1[2] = v6[2];
            *a1 = v31;
            v32 = v193;
            v6[2] = v194;
            *v6 = v32;
            if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1, &a1[3 * v14]))
            {
              v33 = *v15;
              v194 = v15[2];
              v193 = v33;
              v34 = *a1;
              v15[2] = a1[2];
              *v15 = v34;
              v35 = v193;
              a1[2] = v194;
              *a1 = v35;
            }
          }

LABEL_58:
          --a3;
          if ((a4 & 1) != 0 || std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 - 3, a1))
          {
            break;
          }

          v109 = *a1;
          v196 = a1[2];
          v195 = v109;
          a1[1] = 0;
          a1[2] = 0;
          *a1 = 0;
          if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, v6))
          {
            v9 = a1;
            do
            {
              v9 += 3;
            }

            while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, v9));
          }

          else
          {
            v110 = a1 + 3;
            do
            {
              v9 = v110;
              if (v110 >= v10)
              {
                break;
              }

              v111 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, v110);
              v110 = v9 + 3;
            }

            while (!v111);
          }

          v112 = v10;
          if (v9 < v10)
          {
            v112 = v10;
            do
            {
              v112 -= 3;
            }

            while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, v112));
          }

          while (v9 < v112)
          {
            v113 = *v9;
            v194 = v9[2];
            v193 = v113;
            v114 = *v112;
            v9[2] = v112[2];
            *v9 = v114;
            v115 = v193;
            v112[2] = v194;
            *v112 = v115;
            do
            {
              v9 += 3;
            }

            while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, v9));
            do
            {
              v112 -= 3;
            }

            while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v195, v112));
          }

          v116 = (v9 - 3);
          if (v9 - 3 == a1)
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*a1);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v117 = *v116;
            a1[2] = *(v9 - 1);
            *a1 = v117;
            *(v9 - 1) = 0;
            *(v9 - 24) = 0;
          }

          a4 = 0;
          v118 = v195;
          *(v9 - 1) = v196;
          *v116 = v118;
        }

        v97 = 0;
        v98 = *a1;
        v196 = a1[2];
        v195 = v98;
        a1[1] = 0;
        a1[2] = 0;
        *a1 = 0;
        do
        {
          v97 += 3;
        }

        while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&a1[v97], &v195));
        v99 = &a1[v97];
        v100 = v10;
        if (v97 == 3)
        {
          v100 = v10;
          do
          {
            if (v99 >= v100)
            {
              break;
            }

            v100 -= 3;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v100, &v195));
        }

        else
        {
          do
          {
            v100 -= 3;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v100, &v195));
        }

        v9 = &a1[v97];
        if (v99 < v100)
        {
          v101 = v100;
          do
          {
            v102 = *v9;
            v194 = v9[2];
            v193 = v102;
            v103 = *v101;
            v9[2] = v101[2];
            *v9 = v103;
            v104 = v193;
            v101[2] = v194;
            *v101 = v104;
            do
            {
              v9 += 3;
            }

            while (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v9, &v195));
            do
            {
              v101 -= 3;
            }

            while (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v101, &v195));
          }

          while (v9 < v101);
        }

        v105 = (v9 - 3);
        if (v9 - 3 == a1)
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*a1);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v106 = *v105;
          a1[2] = *(v9 - 1);
          *a1 = v106;
          *(v9 - 1) = 0;
          *(v9 - 24) = 0;
        }

        v107 = v195;
        *(v9 - 1) = v196;
        *v105 = v107;
        if (v99 >= v100)
        {
          break;
        }

LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v9 - 3, a3, a4 & 1);
        a4 = 0;
      }

      v108 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v9 - 3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v9, v191))
      {
        break;
      }

      if (!v108)
      {
        goto LABEL_83;
      }
    }

    a2 = v9 - 3;
    if (!v108)
    {
      continue;
    }

    break;
  }
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(void *a1, void *a2, void *a3, void *a4)
{
  v8 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, a1);
  v9 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1);
        v15 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v5, a1 + 3);
        if (v14)
        {
          if (!v15)
          {
            v33 = a1[2];
            v34 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v34;
            a1[5] = v33;
            if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v5, a1 + 3))
            {
              return 1;
            }

            v16 = a1[5];
            v17 = *(a1 + 3);
            v35 = v5[2];
            *(a1 + 3) = *v5;
            a1[5] = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = a1[2];
          v17 = *a1;
          v18 = v5[2];
          *a1 = *v5;
          a1[2] = v18;
LABEL_16:
          *v5 = v17;
          v5[2] = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = a1[5];
        v25 = *(a1 + 3);
        v26 = v5[2];
        *(a1 + 3) = *v5;
        a1[5] = v26;
        *v5 = v25;
        v5[2] = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v6, a1 + 9))
        {
          return 1;
        }

        v7 = a1[11];
        v8 = *(a1 + 9);
        v9 = v6[2];
        *(a1 + 9) = *v6;
        a1[11] = v9;
        *v6 = v8;
        v6[2] = v7;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 9, a1 + 6))
        {
          return 1;
        }

        v10 = a1[8];
        v11 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v11;
        a1[11] = v10;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 6, a1 + 3))
        {
          return 1;
        }

        v12 = a1[5];
        v13 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v13;
        a1[8] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1))
    {
      v27 = a1[2];
      v28 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v28;
      a1[5] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = a1 + 6;
  v20 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1);
  v21 = std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 6, a1 + 3);
  if (v20)
  {
    if (v21)
    {
      v22 = a1[2];
      v23 = *a1;
      *a1 = *v19;
      a1[2] = a1[8];
    }

    else
    {
      v36 = a1[2];
      v37 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v37;
      a1[5] = v36;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v22 = a1[5];
      v23 = *(a1 + 3);
      *(a1 + 3) = *v19;
      a1[5] = a1[8];
    }

    *v19 = v23;
    a1[8] = v22;
  }

  else if (v21)
  {
    v29 = a1[5];
    v30 = *(a1 + 3);
    *(a1 + 3) = *v19;
    a1[5] = a1[8];
    *v19 = v30;
    a1[8] = v29;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(a1 + 3, a1))
    {
      v31 = a1[2];
      v32 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v32;
      a1[5] = v31;
    }
  }

LABEL_33:
  v38 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(v38, v19))
    {
      v45 = *v38;
      v46 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 11) = *(a1 + v41 + 64);
        v42[71] = 0;
        v42[48] = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::string,std::string>(&v45, v42 + 3))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 2) = v46;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}