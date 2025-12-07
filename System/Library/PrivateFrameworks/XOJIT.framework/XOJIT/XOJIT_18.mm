void *std::remove[abi:nn200100]<llvm::BasicBlock **,decltype(nullptr)>(void *result, void *a2)
{
  if (result != a2)
  {
    while (*result)
    {
      if (++result == a2)
      {
        return a2;
      }
    }
  }

  if (result != a2)
  {
    for (i = result + 1; i != a2; ++i)
    {
      if (*i)
      {
        *result++ = *i;
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,4u,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>,llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::GraphDiff<llvm::BasicBlock *,false>::DeletesInserts>>::LookupBucketFor<llvm::BasicBlock const*>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 72 * v6);
  v8 = *v7;
  if (*a2 == *v7)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 72 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void *std::remove[abi:nn200100]<llvm::BasicBlock **,llvm::BasicBlock *>(void *result, void *a2, void *a3)
{
  if (result != a2)
  {
    while (*result != *a3)
    {
      if (++result == a2)
      {
        return a2;
      }
    }
  }

  if (result != a2)
  {
    for (i = result + 1; i != a2; ++i)
    {
      if (*i != *a3)
      {
        *result++ = *i;
      }
    }
  }

  return result;
}

uint64_t _GLOBAL__sub_I_MemorySSA_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815A86A0, 0, 0);
  qword_2815A8728 = 0;
  unk_2815A8730 = 0;
  qword_2815A8720 = 0;
  qword_2815A8748 = 0;
  unk_2815A8750 = 0;
  byte_2815A8758 = 0;
  qword_2815A8740 = 0;
  qword_2815A8738 = &unk_2883EA828;
  qword_2815A86A0 = &unk_2883EAA98;
  qword_2815A8760 = &unk_2883EA998;
  qword_2815A8768 = &unk_2883EE4C8;
  qword_2815A8780 = &qword_2815A8768;
  llvm::cl::Option::setArgStr(v0, "dot-cfg-mssa", 0xCuLL);
  qword_2815A86D0 = "file name for generated dot file";
  unk_2815A86D8 = 32;
  qword_2815A86C0 = "file name for generated dot file";
  unk_2815A86C8 = 32;
  std::string::basic_string[abi:nn200100]<0>(&__str, "");
  std::string::operator=(&qword_2815A8720, &__str);
  byte_2815A8758 = 1;
  std::string::operator=(&qword_2815A8740, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  llvm::cl::Option::addArgument(&qword_2815A86A0, v1);
  __cxa_atexit(llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt, &qword_2815A86A0, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&_MergedGlobals_30, 0, 0);
  dword_2815A85A0 = 0;
  qword_2815A85A8 = &unk_2883EABF0;
  *&dword_2815A85B0 = 0;
  _MergedGlobals_30 = &unk_2883EA9C8;
  qword_2815A85B8 = &unk_2883EA8D8;
  qword_2815A85C0 = &unk_2883EE1B8;
  qword_2815A85D8 = &qword_2815A85C0;
  llvm::cl::Option::setArgStr(v2, "memssa-check-limit", 0x12uLL);
  word_2815A852A = word_2815A852A & 0xFF9F | 0x20;
  dword_2815A85A0 = 100;
  byte_2815A85B4 = 1;
  dword_2815A85B0 = 100;
  qword_2815A8540 = "The maximum number of stores/phis MemorySSAwill consider trying to walk past (default = 100)";
  unk_2815A8548 = 92;
  llvm::cl::Option::addArgument(&_MergedGlobals_30, v3);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &_MergedGlobals_30, &dword_274E5C000);
  v5 = 1;
  v6 = &llvm::VerifyMemorySSA;
  __str.__r_.__value_.__r.__words[0] = "Enable verification of MemorySSA.";
  __str.__r_.__value_.__l.__size_ = 33;
  llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::opt<char [17],llvm::cl::LocationClass<BOOL>,llvm::cl::OptionHidden,llvm::cl::desc>(&unk_2815A85E0, "verify-memoryssa", &v6, &v5, &__str);
  return __cxa_atexit(llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt, &unk_2815A85E0, &dword_274E5C000);
}

void llvm::cl::opt<llvm::FunctionSummary::ForceSummaryHotnessType,true,llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EE760;
  std::__function::__value_func<void ()(llvm::FunctionSummary::ForceSummaryHotnessType const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE7C8;
  v2 = *(a1 + 21);
  if (v2 != a1 + 184)
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EE760;
  std::__function::__value_func<void ()(llvm::FunctionSummary::ForceSummaryHotnessType const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE7C8;
  v2 = *(a1 + 21);
  if (v2 != a1 + 184)
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void *llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>::~parser(void *a1)
{
  *a1 = &unk_2883EE7C8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::cl::opt<llvm::FunctionSummary::ForceSummaryHotnessType,true,llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  **(v7 + 128) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 592);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<llvm::FunctionSummary::ForceSummaryHotnessType,true,llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<llvm::FunctionSummary::ForceSummaryHotnessType,true,llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

llvm::raw_ostream *llvm::cl::opt<llvm::FunctionSummary::ForceSummaryHotnessType,true,llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>>::printOptionValue(llvm::raw_ostream *result, int a2, int a3)
{
  if (a3)
  {
    v3 = **(result + 16);
LABEL_3:
    v4 = &unk_2883EE818;
    v6 = 1;
    v5 = v3;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v4, (result + 136), a2);
  }

  if (*(result + 148) == 1)
  {
    v3 = **(result + 16);
    if (*(result + 36) != v3)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::FunctionSummary::ForceSummaryHotnessType,true,llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  **(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::FunctionSummary::ForceSummaryHotnessType const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>::~parser(void *a1)
{
  *a1 = &unk_2883EE7C8;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

void std::allocator<llvm::AllocInfo>::destroy[abi:nn200100](uint64_t a1, void **a2)
{
  v3 = a2 + 8;
  std::vector<llvm::MIBInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*a2 != a2 + 3)
  {
    free(*a2);
  }
}

void std::vector<llvm::MIBInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::MIBInfo>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::MIBInfo>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 64);
    if ((i - 48) != v4)
    {
      free(v4);
    }
  }

  a1[1] = v2;
}

void std::allocator<llvm::CallsiteInfo>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3 != a2 + 11)
  {
    free(v3);
  }

  v4 = a2[1];
  if (v4 != a2 + 3)
  {

    free(v4);
  }
}

void std::vector<llvm::FunctionSummary::ParamAccess>::clear[abi:nn200100](void ***result)
{
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 3;
    do
    {
      v8 = v4;
      std::vector<llvm::FunctionSummary::ParamAccess::Call>::__destroy_vector::operator()[abi:nn200100](&v8);
      if (*(v4 - 2) >= 0x41u)
      {
        v5 = *(v4 - 2);
        if (v5)
        {
          MEMORY[0x277C69E10](v5, 0x1000C8000313F17);
        }
      }

      if (*(v4 - 6) >= 0x41u)
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          MEMORY[0x277C69E10](v6, 0x1000C8000313F17);
        }
      }

      v7 = v4 - 5;
      v4 -= 8;
    }

    while (v7 != v3);
  }

  result[1] = v3;
}

void std::vector<llvm::FunctionSummary::ParamAccess::Call>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::FunctionSummary::ParamAccess::Call>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<llvm::FunctionSummary::ParamAccess::Call>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      if (*(v3 - 8) >= 0x41u)
      {
        result = *(v3 - 16);
        if (result)
        {
          result = MEMORY[0x277C69E10](result, 0x1000C8000313F17);
        }
      }

      if (*(v3 - 24) >= 0x41u)
      {
        result = *(v3 - 32);
        if (result)
        {
          result = MEMORY[0x277C69E10](result, 0x1000C8000313F17);
        }
      }

      v3 -= 48;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void std::vector<llvm::FunctionSummary::ParamAccess>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::FunctionSummary::ParamAccess>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t llvm::FunctionSummary::FunctionSummary(uint64_t a1, int a2, int a3, int a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t *a8, __int128 *a9, __int128 *a10, __int128 *a11, __int128 *a12, void *a13, void *a14, void *a15)
{
  v15 = *(a6 + 2);
  v16 = *a6;
  *(a6 + 8) = 0uLL;
  *a6 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v16;
  *(a1 + 56) = v15;
  *a1 = &unk_2883EE858;
  *(a1 + 64) = a3;
  *(a1 + 68) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *a7;
  *(a1 + 96) = *(a7 + 16);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  if (*a8 != a8[1] || *a9 != *(a9 + 1) || *a10 != *(a10 + 1) || *a11 != *(a11 + 1) || *a12 != *(a12 + 1))
  {
    *a8 = 0;
    a8[1] = 0;
    a8[2] = 0;
    *(a9 + 8) = 0uLL;
    *a9 = 0;
    *(a10 + 8) = 0uLL;
    *a10 = 0;
    *(a11 + 8) = 0uLL;
    *a11 = 0;
    *(a12 + 8) = 0uLL;
    *a12 = 0;
    operator new();
  }

  if (*a13 != a13[1])
  {
    operator new();
  }

  if (*a14 != a14[1])
  {
    operator new();
  }

  if (*a15 != a15[1])
  {
    operator new();
  }

  return a1;
}

void llvm::FunctionSummary::~FunctionSummary(llvm::FunctionSummary *this)
{
  *this = &unk_2883EE858;
  std::unique_ptr<std::vector<llvm::AllocInfo>>::reset[abi:nn200100](this + 16, 0);
  std::unique_ptr<std::vector<llvm::CallsiteInfo>>::reset[abi:nn200100](this + 15, 0);
  std::unique_ptr<std::vector<llvm::FunctionSummary::ParamAccess>>::reset[abi:nn200100](this + 14, 0);
  std::unique_ptr<llvm::FunctionSummary::TypeIdInfo>::reset[abi:nn200100](this + 13, 0);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_2883EE878;
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_2883EE858;
  std::unique_ptr<std::vector<llvm::AllocInfo>>::reset[abi:nn200100](this + 16, 0);
  std::unique_ptr<std::vector<llvm::CallsiteInfo>>::reset[abi:nn200100](this + 15, 0);
  std::unique_ptr<std::vector<llvm::FunctionSummary::ParamAccess>>::reset[abi:nn200100](this + 14, 0);
  std::unique_ptr<llvm::FunctionSummary::TypeIdInfo>::reset[abi:nn200100](this + 13, 0);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  *this = &unk_2883EE878;
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x277C69E40);
}

void llvm::GlobalValueSummary::~GlobalValueSummary(llvm::GlobalValueSummary *this)
{
  *this = &unk_2883EE878;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2883EE878;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x277C69E40);
}

uint64_t *std::unique_ptr<llvm::FunctionSummary::TypeIdInfo>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v6 = (v2 + 96);
    std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](&v6);
    v6 = (v2 + 72);
    std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](&v6);
    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      *(v2 + 32) = v4;
      operator delete(v4);
    }

    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    return MEMORY[0x277C69E40](v2, 0x30C4045335465);
  }

  return result;
}

void ***std::unique_ptr<std::vector<llvm::FunctionSummary::ParamAccess>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<llvm::FunctionSummary::ParamAccess>::__destroy_vector::operator()[abi:nn200100](&v3);
    return MEMORY[0x277C69E40](v2, 0x20C40960023A9);
  }

  return result;
}

void ***std::unique_ptr<std::vector<llvm::CallsiteInfo>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<llvm::CallsiteInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
    return MEMORY[0x277C69E40](v2, 0x20C40960023A9);
  }

  return result;
}

void ****std::unique_ptr<std::vector<llvm::AllocInfo>>::reset[abi:nn200100](void ****result, void ***a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<llvm::AllocInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
    return MEMORY[0x277C69E40](v2, 0x20C40960023A9);
  }

  return result;
}

void std::vector<llvm::FunctionSummary::ConstVCall>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::FunctionSummary::ConstVCall>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::FunctionSummary::ConstVCall>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<llvm::AllocInfo>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 11;
        std::allocator<llvm::AllocInfo>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<llvm::CallsiteInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 17;
        std::allocator<llvm::CallsiteInfo>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>::OptionInfo,false>::grow(unint64_t a1)
{
  v9 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&qword_2815A8918, &unk_2815A8928, a1, 48, &v9);
  v2 = qword_2815A8918;
  if (qword_2815A8920)
  {
    v3 = qword_2815A8918 + 48 * qword_2815A8920;
    v4 = v1 + 32;
    v5 = v1;
    do
    {
      v6 = v2[1];
      *v5 = *v2;
      *(v5 + 1) = v6;
      *(v5 + 4) = &unk_2883EE838;
      v7 = *(v2 + 10);
      v5[44] = *(v2 + 44);
      *(v5 + 10) = v7;
      *(v5 + 4) = &unk_2883EE818;
      v5 += 48;
      v2 += 3;
      v4 += 48;
    }

    while (v2 != v3);
    v2 = qword_2815A8918;
  }

  v8 = v9;
  if (v2 != &unk_2815A8928)
  {
    free(v2);
  }

  qword_2815A8918 = v1;
  HIDWORD(qword_2815A8920) = v8;
}

uint64_t *std::vector<unsigned long long>::vector[abi:nn200100]<unsigned long long const*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    std::vector<llvm::orc::ExecutorAddr>::__vallocate[abi:nn200100](a1, a3 - a2);
  }

  return a1;
}

uint64_t _GLOBAL__sub_I_ModuleSummaryAnalysis_cpp()
{
  v36 = *MEMORY[0x277D85DE8];
  __src = "none";
  v23 = 4;
  LODWORD(v24) = 0;
  *(&v24 + 1) = "None.";
  v25 = 5;
  v26 = "all-non-critical";
  v27 = 16;
  v28 = 1;
  v29 = "All non-critical edges.";
  v30 = 23;
  v31 = "all";
  v32 = 3;
  v33 = 2;
  v34 = "All edges.";
  v35 = 10;
  v19 = v21;
  v20 = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&v19, &__src, &v36);
  v0 = llvm::cl::Option::Option(&qword_2815A8870, 0, 0);
  byte_2815A8904 = 0;
  qword_2815A88F0 = 0;
  unk_2815A88F8 = &unk_2883EE818;
  qword_2815A8870 = &unk_2883EE760;
  qword_2815A8908 = &unk_2883EE7C8;
  qword_2815A8910 = &qword_2815A8870;
  qword_2815A8918 = &unk_2815A8928;
  qword_2815A8920 = 0x800000000;
  qword_2815A8AA8 = &unk_2883EE898;
  qword_2815A8AC0 = &qword_2815A8AA8;
  v1 = llvm::cl::Option::setArgStr(v0, "force-summary-edges-cold", 0x18uLL);
  word_2815A887A = word_2815A887A & 0xFF9F | 0x20;
  if (qword_2815A88F0)
  {
    __src = "cl::location(x) specified more than once!";
    LOWORD(v25) = 259;
    v3 = llvm::errs(v1);
    llvm::cl::Option::error(&qword_2815A8870, &__src, 0, 0, v3);
  }

  else
  {
    qword_2815A88F0 = &llvm::ForceSummaryEdgesCold;
    byte_2815A8904 = 1;
    dword_2815A8900 = llvm::ForceSummaryEdgesCold;
  }

  qword_2815A8890 = "Force all edges in the function summary to cold";
  unk_2815A8898 = 47;
  if (v20)
  {
    v4 = v19;
    v5 = v19 + 40 * v20;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 1);
      v8 = *(v4 + 4);
      v9 = *(v4 + 24);
      __src = *v4;
      v23 = v7;
      v24 = v9;
      v25 = &unk_2883EE818;
      BYTE4(v26) = 1;
      LODWORD(v26) = v8;
      v10 = qword_2815A8918;
      if (qword_2815A8920 >= HIDWORD(qword_2815A8920))
      {
        if (qword_2815A8918 <= &__src && qword_2815A8918 + 48 * qword_2815A8920 > &__src)
        {
          v18 = &__src - qword_2815A8918;
          llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>::OptionInfo,false>::grow(qword_2815A8920 + 1);
          v10 = qword_2815A8918;
          p_src = &v18[qword_2815A8918];
          goto LABEL_8;
        }

        llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>::OptionInfo,false>::grow(qword_2815A8920 + 1);
        v10 = qword_2815A8918;
      }

      p_src = &__src;
LABEL_8:
      v12 = v10 + 48 * qword_2815A8920;
      v13 = *(p_src + 1);
      *v12 = *p_src;
      *(v12 + 16) = v13;
      *(v12 + 32) = &unk_2883EE838;
      v14 = *(p_src + 10);
      *(v12 + 44) = *(p_src + 44);
      *(v12 + 40) = v14;
      *(v12 + 32) = &unk_2883EE818;
      LODWORD(qword_2815A8920) = qword_2815A8920 + 1;
      llvm::cl::AddLiteralOption(qword_2815A8910, v6, v7);
      v4 += 40;
    }

    while (v4 != v5);
  }

  llvm::cl::Option::addArgument(&qword_2815A8870, v2);
  if (v19 != v21)
  {
    free(v19);
  }

  __cxa_atexit(llvm::cl::opt<llvm::FunctionSummary::ForceSummaryHotnessType,true,llvm::cl::parser<llvm::FunctionSummary::ForceSummaryHotnessType>>::~opt, &qword_2815A8870, &dword_274E5C000);
  v15 = llvm::cl::Option::Option(&_MergedGlobals_31, 0, 0);
  qword_2815A8808 = 0;
  unk_2815A8810 = 0;
  qword_2815A8830 = 0;
  unk_2815A8838 = 0;
  qword_2815A8828 = 0;
  byte_2815A8840 = 0;
  qword_2815A8818 = 0;
  unk_2815A8820 = &unk_2883EA828;
  _MergedGlobals_31 = &unk_2883EAA98;
  qword_2815A8848 = &unk_2883EA998;
  qword_2815A8850 = &unk_2883EE4C8;
  qword_2815A8868 = &qword_2815A8850;
  llvm::cl::Option::setArgStr(v15, "module-summary-dot-file", 0x17uLL);
  word_2815A8792 = word_2815A8792 & 0xFF9F | 0x20;
  qword_2815A87B8 = "filename";
  unk_2815A87C0 = 8;
  qword_2815A87A8 = "File to emit dot graph of new summary into";
  unk_2815A87B0 = 42;
  llvm::cl::Option::addArgument(&_MergedGlobals_31, v16);
  return __cxa_atexit(llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::~opt, &_MergedGlobals_31, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_PHITransAddr_cpp()
{
  v0 = llvm::cl::Option::Option(&EnableAddPhiTranslation, 0, 0);
  byte_2815A4B78 = 0;
  qword_2815A4B80 = &unk_2883EAB68;
  *&word_2815A4B88 = 0;
  EnableAddPhiTranslation = &unk_2883EAB00;
  qword_2815A4B90 = &unk_2883EA848;
  qword_2815A4B98 = &unk_2883EAB88;
  qword_2815A4BB0 = &qword_2815A4B98;
  llvm::cl::Option::setArgStr(v0, "gvn-add-phi-translation", 0x17uLL);
  byte_2815A4B78 = 0;
  word_2815A4B88 = 256;
  word_2815A4B02 = word_2815A4B02 & 0xFF9F | 0x20;
  qword_2815A4B18 = "Enable phi-translation of add instructions";
  unk_2815A4B20 = 42;
  llvm::cl::Option::addArgument(&EnableAddPhiTranslation, v1);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &EnableAddPhiTranslation, &dword_274E5C000);
}

char *llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::init(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 4) = v4;
    result = operator new(16 * v4, 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = *(v2 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 16;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 32;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::clear(_DWORD *a1)
{
  if (!*(a1 + 1))
  {
    return;
  }

  v2 = a1[4];
  if (v2 <= 4 * a1[2] || v2 < 0x41)
  {
    if (!v2)
    {
LABEL_15:
      *(a1 + 1) = 0;
      return;
    }

    v3 = 16 * v2;
    v4 = (*a1 + 8);
    while (1)
    {
      v5 = *(v4 - 1);
      if (v5 == -8192)
      {
        goto LABEL_13;
      }

      if (v5 != -4096)
      {
        break;
      }

LABEL_14:
      v4 += 2;
      v3 -= 16;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    v6 = *v4;
    *v4 = 0;
    if (v6)
    {
      std::default_delete<llvm::DomTreeNodeBase<llvm::BasicBlock>>::operator()[abi:nn200100](v4, v6);
    }

LABEL_13:
    *(v4 - 1) = -4096;
    goto LABEL_14;
  }

  llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::shrink_and_clear(a1);
}

void llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::shrink_and_clear(unsigned int *a1)
{
  v2 = a1[2];
  llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>,llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::destroyAll(a1);
  if (v2)
  {
    v3 = 1 << (33 - __clz(v2 - 1));
    if (v3 <= 64)
    {
      v4 = 64;
    }

    else
    {
      v4 = v3;
    }

    if (v4 == a1[4])
    {
      v5 = 0;
      *(a1 + 1) = 0;
      v6 = vdupq_n_s64((v4 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
      v7 = (*a1 + 16);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v5), xmmword_2750C1210)));
        if (v8.i8[0])
        {
          *(v7 - 2) = -4096;
        }

        if (v8.i8[4])
        {
          *v7 = -4096;
        }

        v5 += 2;
        v7 += 4;
      }

      while (((v4 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((v4 - 1) & 1) + 2 != v5);
      return;
    }
  }

  else
  {
    if (!a1[4])
    {
      *(a1 + 1) = 0;
      return;
    }

    v4 = 0;
  }

  MEMORY[0x277C69E30](*a1, 8);

  llvm::DenseMap<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,std::unique_ptr<llvm::DomTreeNodeBase<llvm::BasicBlock>>>>::init(a1, v4);
}

uint64_t _GLOBAL__sub_I_ProfileSummaryInfo_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_32, 0, 0);
  byte_2815A8B48 = 0;
  qword_2815A8B50 = &unk_2883EAB68;
  *&word_2815A8B58 = 0;
  _MergedGlobals_32 = &unk_2883EAB00;
  qword_2815A8B60 = &unk_2883EA848;
  qword_2815A8B68 = &unk_2883EAB88;
  qword_2815A8B80 = &qword_2815A8B68;
  llvm::cl::Option::setArgStr(v0, "partial-profile", 0xFuLL);
  word_2815A8AD2 = word_2815A8AD2 & 0xFF9F | 0x20;
  byte_2815A8B48 = 0;
  word_2815A8B58 = 256;
  qword_2815A8AE8 = "Specify the current profile is used as a partial profile.";
  unk_2815A8AF0 = 57;
  llvm::cl::Option::addArgument(&_MergedGlobals_32, v1);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_32, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815A8B88, 0, 0);
  byte_2815A8C08 = 0;
  qword_2815A8C10 = &unk_2883EAB68;
  *&word_2815A8C18 = 0;
  qword_2815A8B88 = &unk_2883EAB00;
  qword_2815A8C20 = &unk_2883EA848;
  qword_2815A8C28 = &unk_2883EAB88;
  qword_2815A8C40 = &qword_2815A8C28;
  llvm::cl::Option::setArgStr(v2, "scale-partial-sample-profile-working-set-size", 0x2DuLL);
  word_2815A8B92 = word_2815A8B92 & 0xFF9F | 0x20;
  byte_2815A8C08 = 1;
  word_2815A8C18 = 257;
  qword_2815A8BA8 = "If true, scale the working set size of the partial sample profile by the partial profile ratio to reflect the size of the program being compiled.";
  unk_2815A8BB0 = 145;
  llvm::cl::Option::addArgument(&qword_2815A8B88, v3);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A8B88, &dword_274E5C000);
  v4 = llvm::cl::Option::Option(&qword_2815A8C48, 0, 0);
  xmmword_2815A8CC8 = 0u;
  *&qword_2815A8CD8 = 0u;
  *(&xmmword_2815A8CC8 + 1) = &unk_2883EE578;
  qword_2815A8C48 = &unk_2883EE510;
  qword_2815A8CE8 = &unk_2883EA938;
  qword_2815A8CF0 = &unk_2883EE598;
  qword_2815A8D08 = &qword_2815A8CF0;
  llvm::cl::Option::setArgStr(v4, "partial-sample-profile-working-set-size-scale-factor", 0x34uLL);
  word_2815A8C52 = word_2815A8C52 & 0xFF9F | 0x20;
  *&xmmword_2815A8CC8 = 0x3F80624DD2F1A9FCLL;
  byte_2815A8CE0 = 1;
  qword_2815A8CD8 = 0x3F80624DD2F1A9FCLL;
  qword_2815A8C68 = "The scale factor used to scale the working set size of the partial sample profile along with the partial profile ratio. This includes the factor of the profile counter per block and the factor to scale the working set size to use the same shared thresholds as PGO.";
  unk_2815A8C70 = 264;
  llvm::cl::Option::addArgument(&qword_2815A8C48, v5);

  return __cxa_atexit(llvm::cl::opt<double,false,llvm::cl::parser<double>>::~opt, &qword_2815A8C48, &dword_274E5C000);
}

BOOL llvm::APInt::isPowerOf2(int8x8_t **this)
{
  v1 = *(this + 2);
  if (v1 > 0x40)
  {
    v3 = 0;
    v4 = (v1 + 63) >> 6;
    v5 = *this;
    do
    {
      v6 = *v5++;
      v7 = vcnt_s8(v6);
      v7.i16[0] = vaddlv_u8(v7);
      v3 += v7.i32[0];
      --v4;
    }

    while (v4);
    return v3 == 1;
  }

  else
  {
    return *this && (*this & (&(*this)[-1] + 7)) == 0;
  }
}

llvm::ConstantRange *llvm::ConstantRange::ConstantRange(llvm::ConstantRange *this, const void **a2)
{
  v2 = *(a2 + 2);
  *(this + 2) = v2;
  if (v2 > 0x40)
  {
    operator new[]();
  }

  *this = *a2;
  v3 = *(a2 + 6);
  *(this + 6) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  *(this + 2) = a2[2];
  return this;
}

__n128 *llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [32],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(__n128 *a1, char *a2, _WORD *a3, __n128 *a4, unsigned __int32 **a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 128) = 0;
  *(v10 + 136) = &unk_2883EABF0;
  *(v10 + 144) = 0;
  *v10 = &unk_2883EA9C8;
  *(v10 + 152) = &unk_2883EA8D8;
  *(v10 + 160) = &unk_2883EE1B8;
  *(v10 + 184) = v10 + 160;
  v11 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v11);
  a1->n128_u16[5] = (32 * (*a3 & 3)) | a1->n128_u16[5] & 0xFF9F;
  v12 = *a4;
  a1[2] = *a4;
  v13 = **a5;
  a1[8].n128_u32[0] = v13;
  a1[9].n128_u8[4] = 1;
  a1[9].n128_u32[0] = v13;
  llvm::cl::Option::addArgument(a1, v12);
  return a1;
}

uint64_t _GLOBAL__sub_I_ScalarEvolution_cpp()
{
  v30 = 2;
  v29.n128_u64[0] = "Maximum number of iterations SCEV will symbolically execute a constant derived loop";
  v29.n128_u64[1] = 83;
  v27 = 100;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [32],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(&_MergedGlobals_33[8], "scalar-evolution-max-iterations", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &_MergedGlobals_33[8], &dword_274E5C000);
  v0 = llvm::cl::Option::Option(&qword_2815A8DD8, 0, 0);
  byte_2815A8E69 = 0;
  qword_2815A8E58 = 0;
  unk_2815A8E60 = &unk_2883EAB68;
  qword_2815A8DD8 = &unk_2883EB2E8;
  qword_2815A8E70 = &unk_2883EA848;
  qword_2815A8E78 = &unk_2883EB350;
  qword_2815A8E90 = &qword_2815A8E78;
  llvm::cl::Option::setArgStr(v0, "verify-scev", 0xBuLL);
  word_2815A8DE2 = word_2815A8DE2 & 0xFF9F | 0x20;
  llvm::cl::opt_storage<BOOL,true,false>::setLocation(&qword_2815A8E58, &qword_2815A8DD8, _MergedGlobals_33);
  qword_2815A8DF8 = "Verify ScalarEvolution's backedge taken counts (slow)";
  unk_2815A8E00 = 53;
  llvm::cl::Option::addArgument(&qword_2815A8DD8, v1);
  __cxa_atexit(llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>::~opt, &qword_2815A8DD8, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815A8E98, 0, 0);
  byte_2815A8F18 = 0;
  qword_2815A8F28 = 0;
  qword_2815A8F20 = &unk_2883EAB68;
  qword_2815A8E98 = &unk_2883EAB00;
  qword_2815A8F30 = &unk_2883EA848;
  qword_2815A8F38 = &unk_2883EAB88;
  qword_2815A8F50 = &qword_2815A8F38;
  llvm::cl::Option::setArgStr(v2, "verify-scev-strict", 0x12uLL);
  word_2815A8EA2 = word_2815A8EA2 & 0xFF9F | 0x20;
  qword_2815A8EB8 = "Enable stricter verification with -verify-scev is passed";
  unk_2815A8EC0 = 56;
  llvm::cl::Option::addArgument(&qword_2815A8E98, v3);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A8E98, &dword_274E5C000);
  v4 = llvm::cl::Option::Option(&qword_2815A8F58, 0, 0);
  byte_2815A8FD8 = 0;
  qword_2815A8FE8 = 0;
  qword_2815A8FE0 = &unk_2883EAB68;
  qword_2815A8F58 = &unk_2883EAB00;
  qword_2815A8FF0 = &unk_2883EA848;
  qword_2815A8FF8 = &unk_2883EAB88;
  qword_2815A9010 = &qword_2815A8FF8;
  llvm::cl::Option::setArgStr(v4, "verify-scev-maps", 0x10uLL);
  word_2815A8F62 = word_2815A8F62 & 0xFF9F | 0x20;
  qword_2815A8F78 = "Verify no dangling value in ScalarEvolution's ExprValueMap (slow)";
  qword_2815A8F80 = 65;
  llvm::cl::Option::addArgument(&qword_2815A8F58, v5);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A8F58, &dword_274E5C000);
  v6 = llvm::cl::Option::Option(&qword_2815A9018, 0, 0);
  byte_2815A9098 = 0;
  qword_2815A90A8 = 0;
  qword_2815A90A0 = &unk_2883EAB68;
  qword_2815A9018 = &unk_2883EAB00;
  qword_2815A90B0 = &unk_2883EA848;
  qword_2815A90B8 = &unk_2883EAB88;
  qword_2815A90D0 = &qword_2815A90B8;
  llvm::cl::Option::setArgStr(v6, "scev-verify-ir", 0xEuLL);
  word_2815A9022 = word_2815A9022 & 0xFF9F | 0x20;
  qword_2815A9038 = "Verify IR correctness when making sensitive SCEV queries (slow)";
  qword_2815A9040 = 63;
  byte_2815A9098 = 0;
  LOWORD(qword_2815A90A8) = 256;
  llvm::cl::Option::addArgument(&qword_2815A9018, v7);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A9018, &dword_274E5C000);
  v30 = 1;
  v29.n128_u64[0] = "Threshold for inlining multiplication operands into a SCEV";
  v29.n128_u64[1] = 58;
  v27 = 32;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(&unk_2815A90D8, "scev-mulops-inline-threshold", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &unk_2815A90D8, &dword_274E5C000);
  v30 = 1;
  v29.n128_u64[0] = "Threshold for inlining addition operands into a SCEV";
  v29.n128_u64[1] = 52;
  v27 = 500;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(&unk_2815A9198, "scev-addops-inline-threshold", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &unk_2815A9198, &dword_274E5C000);
  v30 = 1;
  v29.n128_u64[0] = "Maximum depth of recursive SCEV complexity comparisons";
  v29.n128_u64[1] = 54;
  v27 = 32;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [32],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(xmmword_2815A9258, "scalar-evolution-max-scev-compare-depth", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, xmmword_2815A9258, &dword_274E5C000);
  v8 = llvm::cl::Option::Option(&qword_2815A9318, 0, 0);
  dword_2815A9398 = 0;
  qword_2815A93A8 = 0;
  qword_2815A93A0 = &unk_2883EABF0;
  qword_2815A9318 = &unk_2883EA9C8;
  qword_2815A93B0 = &unk_2883EA8D8;
  qword_2815A93B8 = &unk_2883EE1B8;
  qword_2815A93D0 = &qword_2815A93B8;
  llvm::cl::Option::setArgStr(v8, "scalar-evolution-max-scev-operations-implication-depth", 0x36uLL);
  word_2815A9322 = word_2815A9322 & 0xFF9F | 0x20;
  qword_2815A9338 = "Maximum depth of recursive SCEV operations implication analysis";
  qword_2815A9340 = 63;
  dword_2815A9398 = 2;
  BYTE4(qword_2815A93A8) = 1;
  LODWORD(qword_2815A93A8) = 2;
  llvm::cl::Option::addArgument(&qword_2815A9318, v9);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A9318, &dword_274E5C000);
  v30 = 1;
  v29.n128_u64[0] = "Maximum depth of recursive value complexity comparisons";
  v29.n128_u64[1] = 55;
  v27 = 2;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(&unk_2815A93D8, "scalar-evolution-max-value-compare-depth", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &unk_2815A93D8, &dword_274E5C000);
  v10 = llvm::cl::Option::Option(&qword_2815A9498, 0, 0);
  dword_2815A9518 = 0;
  qword_2815A9528 = 0;
  qword_2815A9520 = &unk_2883EABF0;
  qword_2815A9498 = &unk_2883EA9C8;
  qword_2815A9530 = &unk_2883EA8D8;
  qword_2815A9538 = &unk_2883EE1B8;
  qword_2815A9550 = &qword_2815A9538;
  llvm::cl::Option::setArgStr(v10, "scalar-evolution-max-arith-depth", 0x20uLL);
  word_2815A94A2 = word_2815A94A2 & 0xFF9F | 0x20;
  qword_2815A94B8 = "Maximum depth of recursive arithmetics";
  qword_2815A94C0 = 38;
  dword_2815A9518 = 32;
  BYTE4(qword_2815A9528) = 1;
  LODWORD(qword_2815A9528) = 32;
  llvm::cl::Option::addArgument(&qword_2815A9498, v11);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A9498, &dword_274E5C000);
  v12 = llvm::cl::Option::Option(&qword_2815A9558, 0, 0);
  dword_2815A95D8 = 0;
  qword_2815A95E8 = 0;
  qword_2815A95E0 = &unk_2883EABF0;
  qword_2815A9558 = &unk_2883EA9C8;
  qword_2815A95F0 = &unk_2883EA8D8;
  qword_2815A95F8 = &unk_2883EE1B8;
  qword_2815A9610 = &qword_2815A95F8;
  llvm::cl::Option::setArgStr(v12, "scalar-evolution-max-constant-evolving-depth", 0x2CuLL);
  word_2815A9562 = word_2815A9562 & 0xFF9F | 0x20;
  qword_2815A9578 = "Maximum depth of recursive constant evolving";
  qword_2815A9580 = 44;
  dword_2815A95D8 = 32;
  BYTE4(qword_2815A95E8) = 1;
  LODWORD(qword_2815A95E8) = 32;
  llvm::cl::Option::addArgument(&qword_2815A9558, v13);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A9558, &dword_274E5C000);
  v30 = 1;
  v29.n128_u64[0] = "Maximum depth of recursive SExt/ZExt/Trunc";
  v29.n128_u64[1] = 42;
  v27 = 8;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [32],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(xmmword_2815A9618, "scalar-evolution-max-cast-depth", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, xmmword_2815A9618, &dword_274E5C000);
  v14 = llvm::cl::Option::Option(&qword_2815A96D8, 0, 0);
  dword_2815A9758 = 0;
  qword_2815A9768 = 0;
  qword_2815A9760 = &unk_2883EABF0;
  qword_2815A96D8 = &unk_2883EA9C8;
  qword_2815A9770 = &unk_2883EA8D8;
  qword_2815A9778 = &unk_2883EE1B8;
  qword_2815A9790 = &qword_2815A9778;
  llvm::cl::Option::setArgStr(v14, "scalar-evolution-max-add-rec-size", 0x21uLL);
  word_2815A96E2 = word_2815A96E2 & 0xFF9F | 0x20;
  qword_2815A96F8 = "Max coefficients in AddRec during evolving";
  qword_2815A9700 = 42;
  dword_2815A9758 = 8;
  BYTE4(qword_2815A9768) = 1;
  LODWORD(qword_2815A9768) = 8;
  llvm::cl::Option::addArgument(&qword_2815A96D8, v15);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A96D8, &dword_274E5C000);
  v30 = 1;
  v29.n128_u64[0] = "Size of the expression which is considered huge";
  v29.n128_u64[1] = 47;
  v27 = 4096;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [41],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(&unk_2815A9798, "scalar-evolution-huge-expr-threshold", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &unk_2815A9798, &dword_274E5C000);
  v16 = llvm::cl::Option::Option(&qword_2815A9858, 0, 0);
  dword_2815A98D8 = 0;
  qword_2815A98E8 = 0;
  qword_2815A98E0 = &unk_2883EABF0;
  qword_2815A9858 = &unk_2883EA9C8;
  qword_2815A98F0 = &unk_2883EA8D8;
  qword_2815A98F8 = &unk_2883EE1B8;
  qword_2815A9910 = &qword_2815A98F8;
  llvm::cl::Option::setArgStr(v16, "scev-range-iter-threshold", 0x19uLL);
  word_2815A9862 = word_2815A9862 & 0xFF9F | 0x20;
  qword_2815A9878 = "Threshold for switching to iteratively computing SCEV ranges";
  qword_2815A9880 = 60;
  dword_2815A98D8 = 32;
  BYTE4(qword_2815A98E8) = 1;
  LODWORD(qword_2815A98E8) = 32;
  llvm::cl::Option::addArgument(&qword_2815A9858, v17);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A9858, &dword_274E5C000);
  v18 = llvm::cl::Option::Option(&qword_2815A9918, 0, 0);
  byte_2815A9998 = 0;
  qword_2815A99A8 = 0;
  qword_2815A99A0 = &unk_2883EAB68;
  qword_2815A9918 = &unk_2883EAB00;
  qword_2815A99B0 = &unk_2883EA848;
  qword_2815A99B8 = &unk_2883EAB88;
  qword_2815A99D0 = &qword_2815A99B8;
  llvm::cl::Option::setArgStr(v18, "scalar-evolution-classify-expressions", 0x25uLL);
  word_2815A9922 = word_2815A9922 & 0xFF9F | 0x20;
  byte_2815A9998 = 1;
  LOWORD(qword_2815A99A8) = 257;
  qword_2815A9938 = "When printing analysis, include information on every instruction";
  qword_2815A9940 = 64;
  llvm::cl::Option::addArgument(&qword_2815A9918, v19);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A9918, &dword_274E5C000);
  v20 = llvm::cl::Option::Option(&qword_2815A99D8, 0, 0);
  byte_2815A9A58 = 0;
  qword_2815A9A68 = 0;
  qword_2815A9A60 = &unk_2883EAB68;
  qword_2815A99D8 = &unk_2883EAB00;
  qword_2815A9A70 = &unk_2883EA848;
  qword_2815A9A78 = &unk_2883EAB88;
  qword_2815A9A90 = &qword_2815A9A78;
  llvm::cl::Option::setArgStr(v20, "scalar-evolution-use-expensive-range-sharpening", 0x2FuLL);
  word_2815A99E2 = word_2815A99E2 & 0xFF9F | 0x20;
  byte_2815A9A58 = 0;
  LOWORD(qword_2815A9A68) = 256;
  qword_2815A99F8 = "Use more powerful methods of sharpening expression ranges. May be costly in terms of compile time";
  qword_2815A9A00 = 97;
  llvm::cl::Option::addArgument(&qword_2815A99D8, v21);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A99D8, &dword_274E5C000);
  v30 = 1;
  v29.n128_u64[0] = "Maximum amount of nodes to process while searching SCEVUnknown Phi strongly connected components";
  v29.n128_u64[1] = 96;
  v27 = 8;
  v28 = &v27;
  llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<char [32],llvm::cl::OptionHidden,llvm::cl::desc,llvm::cl::initializer<int>>(xmmword_2815A9A98, "scalar-evolution-max-scc-analysis-depth", &v30, &v29, &v28);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, xmmword_2815A9A98, &dword_274E5C000);
  v22 = llvm::cl::Option::Option(&qword_2815A9B58, 0, 0);
  byte_2815A9BD8 = 0;
  qword_2815A9BE8 = 0;
  qword_2815A9BE0 = &unk_2883EAB68;
  qword_2815A9B58 = &unk_2883EAB00;
  qword_2815A9BF0 = &unk_2883EA848;
  qword_2815A9BF8 = &unk_2883EAB88;
  qword_2815A9C10 = &qword_2815A9BF8;
  llvm::cl::Option::setArgStr(v22, "scalar-evolution-finite-loop", 0x1CuLL);
  word_2815A9B62 = word_2815A9B62 & 0xFF9F | 0x20;
  qword_2815A9B78 = "Handle <= and >= in finite loops";
  qword_2815A9B80 = 32;
  byte_2815A9BD8 = 1;
  LOWORD(qword_2815A9BE8) = 257;
  llvm::cl::Option::addArgument(&qword_2815A9B58, v23);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A9B58, &dword_274E5C000);
  v24 = llvm::cl::Option::Option(&qword_2815A9C18, 0, 0);
  byte_2815A9C98 = 0;
  qword_2815A9CA8 = 0;
  qword_2815A9CA0 = &unk_2883EAB68;
  qword_2815A9C18 = &unk_2883EAB00;
  qword_2815A9CB0 = &unk_2883EA848;
  qword_2815A9CB8 = &unk_2883EAB88;
  qword_2815A9CD0 = &qword_2815A9CB8;
  llvm::cl::Option::setArgStr(v24, "scalar-evolution-use-context-for-no-wrap-flag-strenghening", 0x3AuLL);
  word_2815A9C22 = word_2815A9C22 & 0xFF9F | 0x20;
  qword_2815A9C38 = "Infer nuw/nsw flags using context where suitable";
  qword_2815A9C40 = 48;
  byte_2815A9C98 = 1;
  LOWORD(qword_2815A9CA8) = 257;
  llvm::cl::Option::addArgument(&qword_2815A9C18, v25);
  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A9C18, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_StackSafetyAnalysis_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_34, 0, 0);
  dword_2815A9D58 = 0;
  qword_2815A9D60 = &unk_2883EAC10;
  *&dword_2815A9D68 = 0;
  _MergedGlobals_34 = &unk_2883EAA30;
  qword_2815A9D70 = &unk_2883EA8A8;
  qword_2815A9D78 = &unk_2883EE200;
  qword_2815A9D90 = &qword_2815A9D78;
  llvm::cl::Option::setArgStr(v0, "stack-safety-max-iterations", 0x1BuLL);
  dword_2815A9D58 = 20;
  byte_2815A9D6C = 1;
  dword_2815A9D68 = 20;
  word_2815A9CE2 = word_2815A9CE2 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&_MergedGlobals_34, v1);
  __cxa_atexit(llvm::cl::opt<int,false,llvm::cl::parser<int>>::~opt, &_MergedGlobals_34, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815A9D98, 0, 0);
  byte_2815A9E18 = 0;
  qword_2815A9E20 = &unk_2883EAB68;
  *&word_2815A9E28 = 0;
  qword_2815A9D98 = &unk_2883EAB00;
  qword_2815A9E30 = &unk_2883EA848;
  qword_2815A9E38 = &unk_2883EAB88;
  qword_2815A9E50 = &qword_2815A9E38;
  llvm::cl::Option::setArgStr(v2, "stack-safety-print", 0x12uLL);
  byte_2815A9E18 = 0;
  word_2815A9E28 = 256;
  word_2815A9DA2 = word_2815A9DA2 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&qword_2815A9D98, v3);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A9D98, &dword_274E5C000);
  v4 = llvm::cl::Option::Option(&qword_2815A9E58, 0, 0);
  byte_2815A9ED8 = 0;
  qword_2815A9EE8 = 0;
  qword_2815A9EE0 = &unk_2883EAB68;
  qword_2815A9E58 = &unk_2883EAB00;
  qword_2815A9EF0 = &unk_2883EA848;
  qword_2815A9EF8 = &unk_2883EAB88;
  qword_2815A9F10 = &qword_2815A9EF8;
  llvm::cl::Option::setArgStr(v4, "stack-safety-run", 0x10uLL);
  byte_2815A9ED8 = 0;
  LOWORD(qword_2815A9EE8) = 256;
  word_2815A9E62 = word_2815A9E62 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&qword_2815A9E58, v5);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815A9E58, &dword_274E5C000);
}

void llvm::cl::opt<llvm::TargetLibraryInfoImpl::VectorLibrary,false,llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>>::~opt(llvm::cl::Option *a1)
{
  *a1 = &unk_2883EE8E0;
  std::__function::__value_func<void ()(llvm::TargetLibraryInfoImpl::VectorLibrary const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE948;
  v2 = *(a1 + 21);
  if (v2 != a1 + 184)
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_2883EE8E0;
  std::__function::__value_func<void ()(llvm::TargetLibraryInfoImpl::VectorLibrary const&)>::~__value_func[abi:nn200100](a1 + 568);
  *(a1 + 19) = &unk_2883EE948;
  v2 = *(a1 + 21);
  if (v2 != a1 + 184)
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x277C69E40);
}

void *llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>::~parser(void *a1)
{
  *a1 = &unk_2883EE948;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::cl::opt<llvm::TargetLibraryInfoImpl::VectorLibrary,false,llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v18 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    while (1)
    {
      if (*(v12 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v12, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v12 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    v15 = *(v12 + 40);
    v18 = v15;
  }

  else
  {
LABEL_13:
    v20 = 1283;
    v19[0] = "Cannot find option named '";
    v19[2] = a3;
    v19[3] = a4;
    v21[0] = v19;
    v21[2] = "'!";
    v22 = 770;
    v13 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v21, 0, 0, v13))
    {
      return 1;
    }

    v15 = 0;
  }

  *(v7 + 128) = v15;
  *(v7 + 12) = a2;
  v16 = *(v7 + 592);
  if (v16)
  {
    (*(*v16 + 48))(v16, &v18);
    return 0;
  }

  else
  {
    v17 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<llvm::TargetLibraryInfoImpl::VectorLibrary,false,llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>>::getValueExpectedFlagDefault(v17);
  }
}

uint64_t llvm::cl::opt<llvm::TargetLibraryInfoImpl::VectorLibrary,false,llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

llvm::raw_ostream *llvm::cl::opt<llvm::TargetLibraryInfoImpl::VectorLibrary,false,llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>>::printOptionValue(llvm::raw_ostream *result, int a2, int a3)
{
  if (a3)
  {
    v3 = *(result + 32);
LABEL_3:
    v4 = &unk_2883EE998;
    v6 = 1;
    v5 = v3;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v4, (result + 136), a2);
  }

  if (*(result + 148) == 1)
  {
    v3 = *(result + 32);
    if (*(result + 36) != v3)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t llvm::cl::opt<llvm::TargetLibraryInfoImpl::VectorLibrary,false,llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    v1 = *(result + 144);
  }

  else
  {
    v1 = 0;
  }

  *(result + 128) = v1;
  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::TargetLibraryInfoImpl::VectorLibrary const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>::~parser(void *a1)
{
  *a1 = &unk_2883EE948;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x277C69E40);
}

BOOL llvm::Triple::isOSVersionLT(llvm::Triple *this, unsigned int a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    OSVersion = llvm::Triple::getOSVersion(this);
    v14 = v8;
    v11 = a2;
LABEL_6:
    v12 = 0;
    return llvm::operator<(&OSVersion, &v11);
  }

  v6 = a2 | (a3 << 32) | 0x8000000000000000;
  if (!a4)
  {
    OSVersion = llvm::Triple::getOSVersion(this);
    v14 = v9;
    v11 = v6;
    goto LABEL_6;
  }

  OSVersion = llvm::Triple::getOSVersion(this);
  v14 = v7;
  v11 = v6;
  v12 = a4 | 0x80000000;
  return llvm::operator<(&OSVersion, &v11);
}

BOOL llvm::operator<(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 0;
  }

  v3 = a1[1] & 0x7FFFFFFF;
  v4 = a2[1] & 0x7FFFFFFF;
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v5 = a1[2] & 0x7FFFFFFF;
  v6 = a2[2] & 0x7FFFFFFF;
  v8 = v6 >= v5 && (a1[3] & 0x7FFFFFFFu) < (a2[3] & 0x7FFFFFFFu);
  return v5 < v6 || v8;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>::OptionInfo,false>::grow(unint64_t a1)
{
  v9 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&qword_2815A51A8, &unk_2815A51B8, a1, 48, &v9);
  v2 = qword_2815A51A8;
  if (qword_2815A51B0)
  {
    v3 = qword_2815A51A8 + 48 * qword_2815A51B0;
    v4 = v1 + 32;
    v5 = v1;
    do
    {
      v6 = v2[1];
      *v5 = *v2;
      *(v5 + 1) = v6;
      *(v5 + 4) = &unk_2883EE9B8;
      v7 = *(v2 + 10);
      v5[44] = *(v2 + 44);
      *(v5 + 10) = v7;
      *(v5 + 4) = &unk_2883EE998;
      v5 += 48;
      v2 += 3;
      v4 += 48;
    }

    while (v2 != v3);
    v2 = qword_2815A51A8;
  }

  v8 = v9;
  if (v2 != &unk_2815A51B8)
  {
    free(v2);
  }

  qword_2815A51A8 = v1;
  HIDWORD(qword_2815A51B0) = v8;
}

uint64_t _GLOBAL__sub_I_TargetLibraryInfo_cpp()
{
  v52 = *MEMORY[0x277D85DE8];
  __src = "none";
  v19 = 4;
  LODWORD(v20) = 0;
  *(&v20 + 1) = "No vector functions library";
  v21 = 27;
  v22 = "Accelerate";
  v23 = 10;
  v24 = 1;
  v25 = "Accelerate framework";
  v26 = 20;
  v27 = "Darwin_libsystem_m";
  v28 = 18;
  v29 = 2;
  v30 = "Darwin libsystem_m";
  v31 = 18;
  v32 = "LIBMVEC-X86";
  v33 = 11;
  v34 = 3;
  v35 = "GLIBC Vector Math library";
  v36 = 25;
  v37 = "MASSV";
  v38 = 5;
  v39 = 4;
  v40 = "IBM MASS vector library";
  v41 = 23;
  v42 = "SVML";
  v43 = 4;
  v44 = 5;
  v45 = "Intel SVML library";
  v46 = 18;
  v47 = "sleefgnuabi";
  v48 = 11;
  v49 = 6;
  v50 = "SIMD Library for Evaluating Elementary Functions";
  v51 = 48;
  v15 = v17;
  v16 = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&v15, &__src, &v52);
  v0 = llvm::cl::Option::Option(&ClVectorLibrary, 0, 0);
  dword_2815A5180 = 0;
  qword_2815A5188 = &unk_2883EE998;
  *&dword_2815A5190 = 0;
  ClVectorLibrary = &unk_2883EE8E0;
  qword_2815A5198 = &unk_2883EE948;
  qword_2815A51A0 = &ClVectorLibrary;
  qword_2815A51A8 = &unk_2815A51B8;
  qword_2815A51B0 = 0x800000000;
  qword_2815A5338 = &unk_2883EE9D8;
  qword_2815A5350 = &qword_2815A5338;
  llvm::cl::Option::setArgStr(v0, "vector-library", 0xEuLL);
  word_2815A510A = word_2815A510A & 0xFF9F | 0x20;
  qword_2815A5120 = "Vector functions library";
  unk_2815A5128 = 24;
  dword_2815A5180 = 0;
  byte_2815A5194 = 1;
  dword_2815A5190 = 0;
  if (v16)
  {
    v2 = v15;
    v3 = v15 + 40 * v16;
    do
    {
      v4 = *v2;
      v5 = *(v2 + 1);
      v6 = *(v2 + 4);
      v7 = *(v2 + 24);
      __src = *v2;
      v19 = v5;
      v20 = v7;
      v21 = &unk_2883EE998;
      BYTE4(v22) = 1;
      LODWORD(v22) = v6;
      v8 = qword_2815A51A8;
      if (qword_2815A51B0 >= HIDWORD(qword_2815A51B0))
      {
        if (qword_2815A51A8 <= &__src && qword_2815A51A8 + 48 * qword_2815A51B0 > &__src)
        {
          v14 = &__src - qword_2815A51A8;
          llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>::OptionInfo,false>::grow(qword_2815A51B0 + 1);
          v8 = qword_2815A51A8;
          p_src = &v14[qword_2815A51A8];
          goto LABEL_5;
        }

        llvm::SmallVectorTemplateBase<llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>::OptionInfo,false>::grow(qword_2815A51B0 + 1);
        v8 = qword_2815A51A8;
      }

      p_src = &__src;
LABEL_5:
      v10 = v8 + 48 * qword_2815A51B0;
      v11 = *(p_src + 1);
      *v10 = *p_src;
      *(v10 + 16) = v11;
      *(v10 + 32) = &unk_2883EE9B8;
      v12 = *(p_src + 10);
      *(v10 + 44) = *(p_src + 44);
      *(v10 + 40) = v12;
      *(v10 + 32) = &unk_2883EE998;
      LODWORD(qword_2815A51B0) = qword_2815A51B0 + 1;
      llvm::cl::AddLiteralOption(qword_2815A51A0, v4, v5);
      v2 += 40;
    }

    while (v2 != v3);
  }

  llvm::cl::Option::addArgument(&ClVectorLibrary, v1);
  if (v15 != v17)
  {
    free(v15);
  }

  return __cxa_atexit(llvm::cl::opt<llvm::TargetLibraryInfoImpl::VectorLibrary,false,llvm::cl::parser<llvm::TargetLibraryInfoImpl::VectorLibrary>>::~opt, &ClVectorLibrary, &dword_274E5C000);
}

void *llvm::generic_gep_type_iterator<llvm::Value const* const*>::operator++(void *a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  IndexedType = llvm::generic_gep_type_iterator<llvm::Use const*>::getIndexedType(a1, a2, a3, a4);
  v6 = *(IndexedType + 8);
  if (IndexedType && v6 == 17 || IndexedType && (v6 & 0xFE) == 0x12)
  {
    v7 = *(IndexedType + 24) | 4;
  }

  else if (v6 == 16)
  {
    v7 = IndexedType & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v7 = 0;
  }

  a1[1] = v7;
  *a1 += 8;
  return a1;
}

uint64_t _GLOBAL__sub_I_TargetTransformInfo_cpp()
{
  v0 = llvm::cl::Option::Option(&_MergedGlobals_35, 0, 0);
  byte_2815A9F98 = 0;
  qword_2815A9FA0 = &unk_2883EAB68;
  *&word_2815A9FA8 = 0;
  _MergedGlobals_35 = &unk_2883EAB00;
  qword_2815A9FB0 = &unk_2883EA848;
  qword_2815A9FB8 = &unk_2883EAB88;
  qword_2815A9FD0 = &qword_2815A9FB8;
  llvm::cl::Option::setArgStr(v0, "costmodel-reduxcost", 0x13uLL);
  byte_2815A9F98 = 0;
  word_2815A9FA8 = 256;
  word_2815A9F22 = word_2815A9F22 & 0xFF9F | 0x20;
  qword_2815A9F38 = "Recognize reduction patterns.";
  unk_2815A9F40 = 29;
  llvm::cl::Option::addArgument(&_MergedGlobals_35, v1);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &_MergedGlobals_35, &dword_274E5C000);
  v2 = llvm::cl::Option::Option(&qword_2815A9FD8, 0, 0);
  dword_2815AA058 = 0;
  qword_2815AA060 = &unk_2883EABF0;
  *&dword_2815AA068 = 0;
  qword_2815A9FD8 = &unk_2883EA9C8;
  qword_2815AA070 = &unk_2883EA8D8;
  qword_2815AA078 = &unk_2883EE1B8;
  qword_2815AA090 = &qword_2815AA078;
  llvm::cl::Option::setArgStr(v2, "cache-line-size", 0xFuLL);
  dword_2815AA058 = 0;
  byte_2815AA06C = 1;
  dword_2815AA068 = 0;
  word_2815A9FE2 = word_2815A9FE2 & 0xFF9F | 0x20;
  qword_2815A9FF8 = "Use this to override the target cache line size when specified by the user.";
  unk_2815AA000 = 75;
  llvm::cl::Option::addArgument(&qword_2815A9FD8, v3);
  __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &qword_2815A9FD8, &dword_274E5C000);
  v4 = llvm::cl::Option::Option(&PredictableBranchThreshold, 0, 0);
  dword_2815AC440 = 0;
  qword_2815AC448 = &unk_2883EABF0;
  *&dword_2815AC450 = 0;
  PredictableBranchThreshold = &unk_2883EA9C8;
  qword_2815AC458 = &unk_2883EA8D8;
  qword_2815AC460 = &unk_2883EE1B8;
  qword_2815AC478 = &qword_2815AC460;
  llvm::cl::Option::setArgStr(v4, "predictable-branch-threshold", 0x1CuLL);
  dword_2815AC440 = 99;
  byte_2815AC454 = 1;
  dword_2815AC450 = 99;
  word_2815AC3CA = word_2815AC3CA & 0xFF9F | 0x20;
  qword_2815AC3E0 = "Use this to override the target's predictable branch threshold (%).";
  unk_2815AC3E8 = 67;
  llvm::cl::Option::addArgument(&PredictableBranchThreshold, v5);

  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &PredictableBranchThreshold, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_TypeBasedAliasAnalysis_cpp()
{
  v0 = llvm::cl::Option::Option(&EnableTBAA, 0, 0);
  byte_2815ACBF8 = 0;
  qword_2815ACC00 = &unk_2883EAB68;
  *&word_2815ACC08 = 0;
  EnableTBAA = &unk_2883EAB00;
  qword_2815ACC10 = &unk_2883EA848;
  qword_2815ACC18 = &unk_2883EAB88;
  qword_2815ACC30 = &qword_2815ACC18;
  llvm::cl::Option::setArgStr(v0, "enable-tbaa", 0xBuLL);
  byte_2815ACBF8 = 1;
  word_2815ACC08 = 257;
  word_2815ACB82 = word_2815ACB82 & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&EnableTBAA, v1);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &EnableTBAA, &dword_274E5C000);
}

uint64_t _GLOBAL__sub_I_ScopedNoAliasAA_cpp()
{
  v0 = llvm::cl::Option::Option(&EnableScopedNoAlias, 0, 0);
  byte_2815AC500 = 0;
  qword_2815AC508 = &unk_2883EAB68;
  *&word_2815AC510 = 0;
  EnableScopedNoAlias = &unk_2883EAB00;
  qword_2815AC518 = &unk_2883EA848;
  qword_2815AC520 = &unk_2883EAB88;
  qword_2815AC538 = &qword_2815AC520;
  llvm::cl::Option::setArgStr(v0, "enable-scoped-noalias", 0x15uLL);
  byte_2815AC500 = 1;
  word_2815AC510 = 257;
  word_2815AC48A = word_2815AC48A & 0xFF9F | 0x20;
  llvm::cl::Option::addArgument(&EnableScopedNoAlias, v1);

  return __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &EnableScopedNoAlias, &dword_274E5C000);
}

uint64_t llvm::IntrinsicInst::isAssumeLikeIntrinsic(llvm::IntrinsicInst *this)
{
  v1 = *(*(this - 4) + 36);
  result = 1;
  if (v1 <= 239)
  {
    if (v1 <= 0x3B && ((1 << v1) & 0xF00000000000080) != 0)
    {
      return result;
    }

    v4 = v1 - 127;
    v5 = v4 > 0x2C;
    v6 = (1 << v4) & 0x18C000000001;
    if (!v5 && v6 != 0)
    {
      return result;
    }

    return 0;
  }

  v8 = (v1 - 240) > 0x23 || ((1 << (v1 + 16)) & 0x800000301) == 0;
  if (v8 && v1 != 319)
  {
    return 0;
  }

  return result;
}

uint64_t llvm::APInt::ashr@<X0>(const void **this@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 2);
  *(a3 + 8) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a3 = *this;
  LimitedValue = llvm::APInt::getLimitedValue(a2, v4);

  return llvm::APInt::ashrInPlace(a3, LimitedValue);
}

uint64_t _GLOBAL__sub_I_ValueTracking_cpp()
{
  v0 = llvm::cl::Option::Option(&DomConditionsMaxUses, 0, 0);
  dword_2815A4F38 = 0;
  qword_2815A4F40 = &unk_2883EABF0;
  *&dword_2815A4F48 = 0;
  DomConditionsMaxUses = &unk_2883EA9C8;
  qword_2815A4F50 = &unk_2883EA8D8;
  qword_2815A4F58 = &unk_2883EE1B8;
  qword_2815A4F70 = &qword_2815A4F58;
  llvm::cl::Option::setArgStr(v0, "dom-conditions-max-uses", 0x17uLL);
  word_2815A4EC2 = word_2815A4EC2 & 0xFF9F | 0x20;
  dword_2815A4F38 = 20;
  byte_2815A4F4C = 1;
  dword_2815A4F48 = 20;
  llvm::cl::Option::addArgument(&DomConditionsMaxUses, v1);

  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &DomConditionsMaxUses, &dword_274E5C000);
}

_DWORD *llvm::SmallVectorImpl<int>::assign(_DWORD *result, unint64_t a2, int a3)
{
  if (result[3] < a2)
  {
    return llvm::SmallVectorTemplateBase<int,true>::growAndAssign(result, a2, a3);
  }

  v3 = *result;
  v4 = result[2];
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = result[2];
  }

  if (v5)
  {
    v6 = 0;
    v7 = vdupq_n_s64(v5 - 1);
    v8 = (v3 + 8);
    do
    {
      v9 = vdupq_n_s64(v6);
      v10 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2750C1210)));
      if (vuzp1_s16(v10, *v7.i8).u8[0])
      {
        *(v8 - 2) = a3;
      }

      if (vuzp1_s16(v10, *&v7).i8[2])
      {
        *(v8 - 1) = a3;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v9, xmmword_2750C1830)))).i32[1])
      {
        *v8 = a3;
        v8[1] = a3;
      }

      v6 += 4;
      v8 += 4;
    }

    while (((v5 + 3) & 0x1FFFFFFFCLL) != v6);
    v4 = result[2];
  }

  v11 = a2 - v4;
  if (a2 > v4)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (v3 + 4 * v4 + 8);
    do
    {
      v15 = vdupq_n_s64(v12);
      v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1210)));
      if (vuzp1_s16(v16, *v13.i8).u8[0])
      {
        *(v14 - 2) = a3;
      }

      if (vuzp1_s16(v16, *&v13).i8[2])
      {
        *(v14 - 1) = a3;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_2750C1830)))).i32[1])
      {
        *v14 = a3;
        v14[1] = a3;
      }

      v12 += 4;
      v14 += 4;
    }

    while (((v11 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
  }

  result[2] = a2;
  return result;
}

void *llvm::SmallVectorTemplateBase<int,true>::growAndAssign(_DWORD *a1, unint64_t a2, int a3)
{
  a1[2] = 0;
  result = llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, a2, 4);
  if (a2)
  {
    v7 = 0;
    v8 = vdupq_n_s64(a2 - 1);
    v9 = (*a1 + 8);
    do
    {
      v10 = vdupq_n_s64(v7);
      v11 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_2750C1210)));
      if (vuzp1_s16(v11, *v8.i8).u8[0])
      {
        *(v9 - 2) = a3;
      }

      if (vuzp1_s16(v11, *&v8).i8[2])
      {
        *(v9 - 1) = a3;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v10, xmmword_2750C1830)))).i32[1])
      {
        *v9 = a3;
        v9[1] = a3;
      }

      v7 += 4;
      v9 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v7);
  }

  a1[2] = a2;
  return result;
}

uint64_t _GLOBAL__sub_I_VectorUtils_cpp()
{
  v0 = llvm::cl::Option::Option(&MaxInterleaveGroupFactor, 0, 0);
  dword_2815A49F8 = 0;
  qword_2815A4A00 = &unk_2883EABF0;
  *&dword_2815A4A08 = 0;
  MaxInterleaveGroupFactor = &unk_2883EA9C8;
  qword_2815A4A10 = &unk_2883EA8D8;
  qword_2815A4A18 = &unk_2883EE1B8;
  qword_2815A4A30 = &qword_2815A4A18;
  llvm::cl::Option::setArgStr(v0, "max-interleave-group-factor", 0x1BuLL);
  word_2815A4982 = word_2815A4982 & 0xFF9F | 0x20;
  qword_2815A4998 = "Maximum factor for an interleaved access group (default = 8)";
  unk_2815A49A0 = 60;
  dword_2815A49F8 = 8;
  byte_2815A4A0C = 1;
  dword_2815A4A08 = 8;
  llvm::cl::Option::addArgument(&MaxInterleaveGroupFactor, v1);

  return __cxa_atexit(llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::~opt, &MaxInterleaveGroupFactor, &dword_274E5C000);
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::UnixArMemHdrType>::getRawAccessMode(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 40;
  v1 = v3[0];
  v3[1] = 8;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::UnixArMemHdrType>::getRawLastModified(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 16;
  v1 = v3[0];
  v3[1] = 12;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::UnixArMemHdrType>::getRawUID(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 28;
  v1 = v3[0];
  v3[1] = 6;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::UnixArMemHdrType>::getRawGID(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 34;
  v1 = v3[0];
  v3[1] = 6;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::BigArMemHdrType>::getRawAccessMode(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 96;
  v1 = v3[0];
  v3[1] = 12;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::BigArMemHdrType>::getRawLastModified(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 60;
  v1 = v3[0];
  v3[1] = 12;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::BigArMemHdrType>::getRawUID(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 72;
  v1 = v3[0];
  v3[1] = 12;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

uint64_t llvm::object::CommonArchiveMemberHeader<llvm::object::BigArMemHdrType>::getRawGID(uint64_t a1)
{
  v3[0] = *(a1 + 16) + 84;
  v1 = v3[0];
  v3[1] = 12;
  llvm::StringRef::find_last_not_of(v3, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  return v1;
}

void createMemberHeaderParseError(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  (*(*a2 + 64))(v18, a2, a4);
  if (v19)
  {
    v7 = v18[0];
    v18[0] = 0;
    v14[0] = v7;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v14);
    if (v14[0])
    {
      (*(*v14[0] + 8))(v14[0]);
    }

    v9 = a3 - *(a2[1] + 16);
    v13 = 773;
    v10 = "remaining size of archive too small for next archive member header ";
    v11 = 67;
    v12 = "at offset ";
    v14[0] = &v10;
    v15 = &v9;
    v8 = 3074;
  }

  else
  {
    v13 = 773;
    v10 = "remaining size of archive too small for next archive member header ";
    v11 = 67;
    v12 = "for ";
    v14[0] = &v10;
    v15 = v18[0];
    v16 = v18[1];
    v8 = 1282;
  }

  v17 = v8;
  malformedError(a1, v14);
}

void malformedError(void *a1, llvm::Twine *a2)
{
  llvm::Twine::str(a2, &v6);
  v2 = std::string::insert(&v6, 0, "truncated or malformed archive (");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v9, ")");
  v5 = v4->__r_.__value_.__r.__words[2];
  *__p = *&v4->__r_.__value_.__l.__data_;
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  operator new();
}

void llvm::object::ArchiveMemberHeader::getRawName(llvm::object::ArchiveMemberHeader *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v4 = *(v3 + 98) & 7;
  if (v4 == 4 || v4 == 2)
  {
    v6 = *(this + 2);
    if (*v6 == 32)
    {
      v14 = &v6[-*(v3 + 16)];
      v12[0] = "name contains a leading space for archive member header at offset ";
      v12[2] = &v14;
      v13 = 3075;
      malformedError(a2, v12);
    }

    v7 = 32;
  }

  else
  {
    v6 = *(this + 2);
    v8 = *v6;
    if (v8 == 35 || v8 == 47)
    {
      v7 = 32;
    }

    else
    {
      v7 = 47;
    }
  }

  v10 = memchr(v6, v7, 0x10uLL);
  v11 = v10 - v6;
  if (!v10)
  {
    v11 = -1;
  }

  *(a2 + 16) &= ~1u;
  if (v11 == -1)
  {
    v11 = 16;
  }

  *a2 = v6;
  *(a2 + 8) = v11;
}

void getArchiveMemberDecField(uint64_t a1, uint64_t **a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v24[0] = 0;
  v26 = a3;
  v27 = a4;
  if ((llvm::consumeUnsignedInteger(&v26, 0xA, v24, a4) & 1) != 0 || v27)
  {
    v32 = (*(*a5 + 80))(a5);
    v11 = *(a2 + 32);
    if (*(a2 + 32))
    {
      if (v11 == 1)
      {
        v12 = "characters in ";
        v18[0] = "characters in ";
        v19 = 259;
        v13 = 3;
      }

      else
      {
        v16 = *a2;
        v17 = a2[1];
        v13 = 2;
        if (*(a2 + 33) != 1)
        {
          LOBYTE(v11) = 2;
          v16 = a2;
        }

        v18[0] = "characters in ";
        v18[2] = v16;
        v18[3] = v17;
        LOBYTE(v19) = 3;
        HIBYTE(v19) = v11;
        v12 = v18;
      }

      v20[0] = v12;
      v20[2] = " field in archive member header are not all decimal numbers: '";
      LOBYTE(v21) = v13;
      HIBYTE(v21) = 3;
      v22[0] = v20;
      v22[2] = a3;
      v22[3] = a4;
      v23 = 1282;
      v24[0] = v22;
      v24[2] = "' for the archive member header at offset ";
      v25 = 770;
      v15 = 12;
      v14 = 2;
      v26 = v24;
      v28 = &v32;
    }

    else
    {
      v14 = 0;
      v19 = 256;
      v21 = 256;
      v23 = 256;
      v25 = 256;
      v15 = 1;
    }

    v29 = v14;
    v30 = v15;
    malformedError(&v31, &v26);
  }

  v10 = v24[0];
  *(a1 + 8) &= ~1u;
  *a1 = v10;
}

void llvm::object::BigArchiveMemberHeader::getRawName(llvm::object::BigArchiveMemberHeader *this@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v12[0] = "NameLen";
  v13 = 259;
  v4 = (*(this + 2) + 108);
  v14 = v4;
  v15 = 4;
  last_not_of = llvm::StringRef::find_last_not_of(&v14, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  if (last_not_of + 1 < 4)
  {
    v6 = last_not_of + 1;
  }

  else
  {
    v6 = 4;
  }

  getArchiveMemberDecField(&v14, v12, v4, v6, this);
  if (v15)
  {
    v7 = v14;
    *(a2 + 16) |= 1u;
    *a2 = v7;
  }

  else
  {
    v8 = v14;
    v9 = (v14 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(this + 2) + 112;
    if (v9 == -2 || *(v10 + v9) != 2656)
    {
      v11 = v10 + v9 - *(*(this + 1) + 16);
      v12[2] = &v11;
      v13 = 3075;
      malformedError(a2, v12);
    }

    *(a2 + 16) &= ~1u;
    *a2 = v10;
    *(a2 + 8) = v8;
  }
}

void llvm::object::ArchiveMemberHeader::getName(llvm::object::ArchiveMemberHeader *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = *MEMORY[0x277D85DE8];
  if (a2 <= 0xF)
  {
    v75[0] = *(this + 2) - *(*(this + 1) + 16);
    v77 = "archive header truncated before the name field for archive member header at offset ";
    v79 = v75;
    LOWORD(v81) = 3075;
    malformedError(a3, &v77);
  }

  (*(*this + 24))(&v87, this);
  v7 = v87;
  if (v88)
  {
    *(a3 + 16) |= 1u;
    *a3 = v7;
    return;
  }

  v8 = *(&v87 + 1);
  if (*v87 != 47)
  {
    v9 = *(&v87 + 1) - 3;
    if (*(&v87 + 1) < 3uLL || (*v87 == 12579 ? (v10 = *(v87 + 2) == 47) : (v10 = 0), !v10))
    {
      if (*(v87 + *(&v87 + 1) - 1) == 47)
      {
        v11 = *(&v87 + 1) - 1;
        *(a3 + 16) &= ~1u;
        if (v8 < v8 - 1)
        {
          v11 = v8;
        }
      }

      else
      {
        v15 = *(&v87 + 1);
        do
        {
          v16 = v15;
          if (!v15)
          {
            break;
          }

          --v15;
        }

        while (*(v87 - 1 + v16) == 32);
        if (v16 >= *(&v87 + 1))
        {
          v11 = *(&v87 + 1);
        }

        else
        {
          v11 = v16;
        }

        *(a3 + 16) &= ~1u;
      }

      *a3 = v7;
      goto LABEL_31;
    }

    v37 = 3 - *(&v87 + 1);
    v38 = (*(&v87 + 1) + v87 - 1);
    do
    {
      v39 = v37;
      if (!v37)
      {
        break;
      }

      v40 = *v38--;
      ++v37;
    }

    while (v40 == 32);
    v75[0] = 0;
    if (-v39 < v9)
    {
      v41 = -v39;
    }

    else
    {
      v41 = *(&v87 + 1) - 3;
    }

    v77 = (v87 + 3);
    v78 = v41;
    if ((llvm::consumeUnsignedInteger(&v77, 0xA, v75, v6) & 1) == 0 && !v78)
    {
      v42 = v75[0];
      v86 = v75[0];
      if ((*(*this + 104))(this) + v42 <= a2)
      {
        v55 = *(this + 2);
        v56 = (*(*this + 104))(this);
        v57 = v42;
        do
        {
          v58 = v57;
          if (!v57)
          {
            break;
          }

          --v57;
        }

        while (!*(v55 + v56 - 1 + v58));
        if (v58 >= v42)
        {
          v59 = v42;
        }

        else
        {
          v59 = v58;
        }

        *(a3 + 16) &= ~1u;
        *a3 = v55 + v56;
        *(a3 + 8) = v59;
        goto LABEL_103;
      }

      v74 = *(this + 2) - *(*(this + 1) + 16);
      __p[0] = "long name length: ";
      v69 = 259;
      v66 = 268;
      v65.__r_.__value_.__r.__words[0] = &v86;
      llvm::operator+(__p, &v65, &v70);
      v63[0] = " extends past the end of the member or archive for archive member header at offset ";
      v64 = 259;
      llvm::operator+(&v70, v63, v75);
      v62 = 268;
      goto LABEL_72;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    LODWORD(v78) = 0;
    v82 = 0;
    v83 = 0;
    v84 = 1;
    v80 = 0;
    v81 = 0;
    v79 = 0;
    v77 = &unk_2883EB8F0;
    v85 = &v70;
    llvm::raw_ostream::SetUnbuffered(&v77);
    v44 = 3 - v8;
    v45 = (v8 + v7 - 1);
    do
    {
      v46 = v44;
      if (!v44)
      {
        break;
      }

      v47 = *v45--;
      ++v44;
    }

    while (v47 == 32);
    if (-v46 < v9)
    {
      v48 = -v46;
    }

    else
    {
      v48 = v8 - 3;
    }

    llvm::raw_ostream::write_escaped(&v77, (v7 + 3), v48, 0);
    v49 = v81 - v79;
    if (v81 != v79)
    {
      v81 = v79;
      llvm::raw_ostream::flush_tied_then_write(&v77, v79, v49);
    }

    v63[0] = *(this + 2) - *(*(this + 1) + 16);
LABEL_83:
    std::operator+<char>();
    v50 = std::string::append(&v65, "' for archive member header at offset ");
    v51 = v50->__r_.__value_.__r.__words[2];
    *__p = *&v50->__r_.__value_.__l.__data_;
    v68 = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v75[0] = __p;
    v75[2] = v63;
    v76 = 3076;
    malformedError(a3, v75);
  }

  if (*(&v87 + 1) > 12)
  {
    if (*(&v87 + 1) == 13)
    {
      v12 = *(v87 + 5);
      v13 = *v87 == 0x424D595343453C2FLL;
      v14 = 0x534C4F424D59;
    }

    else
    {
      if (*(&v87 + 1) != 14)
      {
        goto LABEL_37;
      }

      v12 = *(v87 + 6);
      v13 = *v87 == 0x5341484746583C2FLL;
      v14 = 0x50414D485341;
    }

    v17 = v14 & 0xFFFFFFFFFFFFLL | 0x2F3E000000000000;
    if (v13 && v12 == v17)
    {
      goto LABEL_51;
    }

    goto LABEL_37;
  }

  if (*(&v87 + 1) != 1 && (*(&v87 + 1) != 2 || *(v87 + 1) != 47))
  {
LABEL_37:
    if (*(&v87 + 1))
    {
      v19 = (v87 + 1);
    }

    else
    {
      v19 = v87;
    }

    v20 = *(&v87 + 1) - (*(&v87 + 1) != 0);
    v21 = (*(&v87 + 1) + v87 - 1);
    v22 = v20;
    do
    {
      v23 = v22;
      if (!v22)
      {
        break;
      }

      --v22;
      v24 = *v21--;
    }

    while (v24 == 32);
    v75[0] = 0;
    if (v23 >= v20)
    {
      v23 = *(&v87 + 1) - (*(&v87 + 1) != 0);
    }

    v77 = v19;
    v78 = v23;
    if ((llvm::consumeUnsignedInteger(&v77, 0xA, v75, v6) & 1) == 0 && !v78)
    {
      v25 = v75[0];
      v86 = v75[0];
      v26 = *(this + 1);
      v27 = *(v26 + 72);
      if (v27 > v75[0])
      {
        v28 = *(v26 + 64);
        if ((*(v26 + 98) & 6) != 0)
        {
          v29 = (v28 + v75[0]);
          *(a3 + 16) &= ~1u;
          *a3 = v28 + v25;
          if (v28)
          {
            v30 = strlen(v29);
          }

          else
          {
            v30 = 0;
          }

          *(a3 + 8) = v30;
          goto LABEL_103;
        }

        v52 = memchr((v28 + v75[0]), 10, v27 - v75[0]);
        v53 = v52 - v28;
        if (!v52)
        {
          v53 = -1;
        }

        if ((v53 + 1) >= 2)
        {
          v54 = v53 - 1;
          if (*(v28 + v54) == 47)
          {
            if (v25 > v54)
            {
              v54 = v25;
            }

            if (v54 >= v27)
            {
              v54 = v27;
            }

            *(a3 + 16) &= ~1u;
            v11 = v54 - v25;
            *a3 = v28 + v25;
LABEL_31:
            *(a3 + 8) = v11;
            goto LABEL_103;
          }
        }

        v70 = "string table at long name offset ";
        v73 = 259;
        v69 = 266;
        __p[0] = &v86;
        llvm::operator+(&v70, __p, v75);
        v65.__r_.__value_.__r.__words[0] = "not terminated";
        v66 = 259;
        v43 = &v65;
LABEL_73:
        llvm::operator+(v75, v43, &v77);
        malformedError(a3, &v77);
      }

      v74 = *(this + 2) - *(v26 + 16);
      __p[0] = "long name offset ";
      v69 = 259;
      v66 = 266;
      v65.__r_.__value_.__r.__words[0] = &v86;
      llvm::operator+(__p, &v65, &v70);
      v63[0] = " past the end of the string table for archive member header at offset ";
      v64 = 259;
      llvm::operator+(&v70, v63, v75);
      v62 = 268;
LABEL_72:
      v61 = &v74;
      v43 = &v61;
      goto LABEL_73;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    LODWORD(v78) = 0;
    v82 = 0;
    v83 = 0;
    v84 = 1;
    v80 = 0;
    v81 = 0;
    v79 = 0;
    v77 = &unk_2883EB8F0;
    v85 = &v70;
    llvm::raw_ostream::SetUnbuffered(&v77);
    v31 = (v8 + v7 - 1);
    v32 = v8 - (v8 != 0);
    do
    {
      v33 = v32;
      if (!v32)
      {
        break;
      }

      --v32;
      v34 = *v31--;
    }

    while (v34 == 32);
    if (v33 >= v20)
    {
      v35 = v8 - (v8 != 0);
    }

    else
    {
      v35 = v33;
    }

    llvm::raw_ostream::write_escaped(&v77, v19, v35, 0);
    v36 = v81 - v79;
    if (v81 != v79)
    {
      v81 = v79;
      llvm::raw_ostream::flush_tied_then_write(&v77, v79, v36);
    }

    v63[0] = *(this + 2) - *(*(this + 1) + 16);
    goto LABEL_83;
  }

LABEL_51:
  *(a3 + 16) &= ~1u;
  *a3 = v87;
LABEL_103:
  if (v88)
  {
    v60 = v87;
    *&v87 = 0;
    if (v60)
    {
      (*(*v60 + 8))(v60);
    }
  }
}

void llvm::object::ArchiveMemberHeader::getSize(llvm::object::ArchiveMemberHeader *this@<X0>, uint64_t a2@<X8>)
{
  v7 = "size";
  v8 = 259;
  v4 = (*(this + 2) + 48);
  v9[0] = v4;
  v9[1] = 10;
  last_not_of = llvm::StringRef::find_last_not_of(v9, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  if (last_not_of + 1 < 0xA)
  {
    v6 = last_not_of + 1;
  }

  else
  {
    v6 = 10;
  }

  getArchiveMemberDecField(a2, &v7, v4, v6, this);
}

void llvm::object::BigArchiveMemberHeader::getSize(llvm::object::BigArchiveMemberHeader *this@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v12[0] = "size";
  v13 = 259;
  v4 = *(this + 2);
  v16 = v4;
  v17 = 20;
  last_not_of = llvm::StringRef::find_last_not_of(&v16, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  if (last_not_of + 1 < 0x14)
  {
    v6 = last_not_of + 1;
  }

  else
  {
    v6 = 20;
  }

  getArchiveMemberDecField(&v14, v12, v4, v6, this);
  if (v15)
  {
    v7 = v14;
  }

  else
  {
    v12[0] = "NameLen";
    v13 = 259;
    v8 = (*(this + 2) + 108);
    v16 = v8;
    v17 = 4;
    v9 = llvm::StringRef::find_last_not_of(&v16, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
    if (v9 + 1 < 4)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 4;
    }

    getArchiveMemberDecField(&v16, v12, v8, v10, this);
    if ((v17 & 1) == 0)
    {
      v7 = (v14 + ((v16 + 1) & 0xFFFFFFFFFFFFFFFELL));
      v11 = *(a2 + 8) & 0xFE;
      goto LABEL_13;
    }

    v7 = v16;
  }

  v11 = *(a2 + 8) | 1;
LABEL_13:
  *(a2 + 8) = v11;
  *a2 = v7;
}

void *llvm::object::ArchiveMemberHeader::isThin@<X0>(llvm::object::ArchiveMemberHeader *this@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = (*(*this + 24))(&v8);
  if (v10)
  {
    v5 = v8;
    *(a2 + 8) |= 1u;
    *a2 = v5;
    return result;
  }

  if ((*(*(this + 1) + 98) & 8) != 0)
  {
    switch(v9)
    {
      case 7:
        v7 = *v8 == 1297699631 && *(v8 + 3) == 791950925;
        break;
      case 2:
        v7 = *v8 == 12079;
        break;
      case 1:
        v7 = *v8 == 47;
        break;
      default:
        v6 = 1;
        goto LABEL_17;
    }

    v6 = !v7;
    goto LABEL_17;
  }

  v6 = 0;
LABEL_17:
  *(a2 + 8) &= ~1u;
  *a2 = v6;
  return result;
}

void *llvm::object::ArchiveMemberHeader::getNextChildLoc@<X0>(llvm::object::ArchiveMemberHeader *this@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 104))(this);
  result = (*(*this + 96))(&v10, this);
  if (v11)
  {
    v6 = v10;
    v10 = 0;
LABEL_3:
    *(a2 + 8) |= 1u;
LABEL_9:
    *a2 = v6;
    goto LABEL_10;
  }

  if ((v10 & 1) == 0)
  {
    result = (*(*this + 72))(&v8, this);
    if (v9)
    {
      v6 = v8;
      goto LABEL_3;
    }

    v4 += v8;
  }

  v6 = *(this + 2) + ((v4 + 1) & 0xFFFFFFFFFFFFFFFELL);
  v7 = *(*(this + 1) + 16) + *(*(this + 1) + 24);
  *(a2 + 8) &= ~1u;
  if (v6 != v7)
  {
    goto LABEL_9;
  }

  *a2 = 0;
LABEL_10:
  if (v11)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::object::BigArchiveMemberHeader::getNextChildLoc(llvm::object::BigArchiveMemberHeader *this@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*this + 80))(this) == *(*(this + 1) + 144))
  {
    *(a2 + 8) &= ~1u;
    *a2 = 0;
  }

  else
  {
    v9 = "NextOffset";
    v10 = 259;
    v4 = (*(this + 2) + 20);
    v11 = v4;
    v12 = 20;
    last_not_of = llvm::StringRef::find_last_not_of(&v11, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
    if (last_not_of + 1 < 0x14)
    {
      v6 = last_not_of + 1;
    }

    else
    {
      v6 = 20;
    }

    getArchiveMemberDecField(&v11, &v9, v4, v6, this);
    if (v12)
    {
      v7 = v11;
      v8 = *(a2 + 8) | 1;
    }

    else
    {
      v7 = (v11 + *(*(this + 1) + 16));
      v8 = *(a2 + 8) & 0xFE;
    }

    *(a2 + 8) = v8;
    *a2 = v7;
  }
}

llvm::object::Archive::Child *llvm::object::Archive::Child::Child(llvm::object::Archive::Child *this, const llvm::object::Archive *a2, const char *a3, llvm::Error *a4)
{
  v6[10] = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a3)
  {
    if (a2)
    {
      v5 = (*(a2 + 2) - a3 + *(a2 + 3));
    }

    else
    {
      v5 = 0;
    }

    llvm::object::Archive::createArchiveMemberHeader(v6, a2, a3, v5, a4);
  }

  return this;
}

void *llvm::object::Archive::Child::getName@<X0>(llvm::object::Archive::Child *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  result = (*(**(this + 1) + 72))(&v12);
  if (v13)
  {
    v5 = v12;
    *(a2 + 16) |= 1u;
    *a2 = v5;
  }

  else
  {
    v6 = v12;
    v7 = *(this + 1);
    v8 = (*(*v7 + 104))(v7);
    result = (*(*v7 + 64))(&v10, v7, v6 + v8);
    if (v11)
    {
      v9 = *(a2 + 16) | 1;
      *a2 = v10;
    }

    else
    {
      *a2 = v10;
      v9 = *(a2 + 16) & 0xFE;
    }

    *(a2 + 16) = v9;
    if (v13)
    {
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void *llvm::object::Archive::Child::getBuffer@<X0>(llvm::object::Archive::Child *this@<X0>, uint64_t a2@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  result = (*(**(this + 1) + 96))(&v42);
  if (v43)
  {
    v5 = v42;
    v42 = 0;
LABEL_3:
    *(a2 + 16) |= 1u;
LABEL_14:
    *a2 = v5;
    goto LABEL_47;
  }

  if ((v42 & 1) == 0)
  {
    if ((*(*this + 98) & 8) != 0)
    {
      result = (*(**(this + 1) + 72))(__dst);
      if (__dst[8])
      {
        v5 = *__dst;
        goto LABEL_3;
      }
    }

    else
    {
      v6 = *(this + 3) - *(this + 16);
      __dst[8] = 0;
      *__dst = v6;
    }

    v5 = (*(this + 2) + *(this + 16));
    v9 = *__dst;
    *(a2 + 16) &= ~1u;
    *(a2 + 8) = v9;
    goto LABEL_14;
  }

  (*(**(this + 1) + 96))(&v57);
  if (v58)
  {
    v49 = -1;
    *&v47.__val_ = v57;
LABEL_44:
    v18 = *&v47.__val_;
    *&v47.__val_ = 0;
    *(a2 + 16) |= 1u;
    goto LABEL_45;
  }

  llvm::object::Archive::Child::getName(this, &v54);
  v7 = v56;
  v8 = v54;
  if (v56)
  {
    v54 = 0;
    v49 = -1;
    *&v47.__val_ = v8;
    goto LABEL_37;
  }

  v10 = v55;
  v53 = 261;
  *__dst = v54;
  *&__dst[8] = v55;
  if (llvm::sys::path::is_absolute(__dst, 0))
  {
    if (v10 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v10 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v10;
      if (v10)
      {
        memmove(__dst, v8, v10);
      }

      __dst[v10] = 0;
      v49 = 0;
      v47 = *__dst;
      v48 = *&__dst[16];
      goto LABEL_37;
    }

LABEL_69:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v11 = *(*this + 32);
  v12 = *(*this + 40);
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v13 == -1)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  *__dst = &v52;
  *&__dst[8] = xmmword_2750C1290;
  llvm::SmallVectorImpl<char>::append<char const*,void>(__dst, v15, &v15[v14]);
  v50 = 261;
  *&v47.__val_ = v8;
  v47.__cat_ = v10;
  v46 = 257;
  v41 = 257;
  v39 = 257;
  llvm::sys::path::append(__dst, 0, &v47, &v44, v40, v38);
  v16 = *&__dst[8];
  if (*&__dst[8] > 0x7FFFFFFFFFFFFFF7uLL)
  {
    goto LABEL_69;
  }

  if (*&__dst[8] >= 0x17uLL)
  {
    operator new();
  }

  HIBYTE(v45) = __dst[8];
  if (*&__dst[8])
  {
    memmove(&v44, *__dst, *&__dst[8]);
  }

  *(&v44.__val_ + v16) = 0;
  v49 = 0;
  v47 = v44;
  v48 = v45;
  if (*__dst != &v52)
  {
    free(*__dst);
  }

LABEL_37:
  if ((v56 & 1) != 0 && v54)
  {
    (*(*v54 + 8))(v54);
  }

  if (v58)
  {
    v17 = v57;
    v57 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  if (v7)
  {
    goto LABEL_44;
  }

  v53 = 260;
  *__dst = &v47;
  getFileAux<llvm::MemoryBuffer>(__dst, 0, &v44, 0xFFFFFFFFFFFFFFFFLL, 0, 1, 0, 0);
  if ((v45 & 1) == 0 || !v44.__val_)
  {
    v20 = *this;
    v22 = *(*this + 112);
    v21 = *(*this + 120);
    if (v22 >= v21)
    {
      v25 = v20[13];
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 3;
      v28 = v27 + 1;
      if ((v27 + 1) >> 61)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v29 = v21 - v25;
      if (v29 >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 61))
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v31 = (v22 - v25) >> 3;
      v32 = (8 * v27);
      v33 = (8 * v27 - 8 * v31);
      *v32 = *&v44.__val_;
      v23 = v32 + 1;
      memcpy(v33, v25, v26);
      v20[13] = v33;
      v20[14] = v23;
      v20[15] = 0;
      if (v25)
      {
        operator delete(v25);
      }

      v24 = *this;
    }

    else
    {
      *v22 = *&v44.__val_;
      v23 = v22 + 8;
      v24 = v20;
    }

    v20[14] = v23;
    v34 = *(v24[14] - 8);
    v35 = *(v34 + 8);
    v36 = *(v34 + 16) - v35;
    *(a2 + 16) &= ~1u;
    *a2 = v35;
    *(a2 + 8) = v36;
    goto LABEL_46;
  }

  *&v19.__val_ = v44.__cat_;
  llvm::errorCodeToError(*&v44.__val_, v19, &v37);
  *(a2 + 16) |= 1u;
  v18 = v37;
LABEL_45:
  *a2 = v18;
LABEL_46:
  result = llvm::Expected<std::string>::~Expected(&v47);
LABEL_47:
  if (v43)
  {
    result = v42;
    v42 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::object::Archive::Child::getNext(const char **__return_ptr a1@<X8>, llvm::object::Archive::Child *this@<X0>)
{
  v16 = *MEMORY[0x277D85DE8];
  (*(**(this + 1) + 88))(&v14);
  v4 = v14;
  if (v15)
  {
    v14 = 0;
    *(a1 + 40) |= 1u;
    *a1 = v4;
  }

  else if (v14)
  {
    v5 = *this;
    if (v14 > *(*this + 16) + *(*this + 24))
    {
      operator new();
    }

    v13 = 0;
    llvm::object::Archive::Child::Child(v11, v5, v14, &v13);
    v6 = v13;
    if (v13)
    {
      v13 = 0;
      *(a1 + 40) |= 1u;
      v7 = *(&v11[0] + 1);
      *a1 = v6;
      *(&v11[0] + 1) = 0;
      if (v7)
      {
        (*(*v7 + 16))(v7);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }
    }

    else
    {
      *(a1 + 40) &= ~1u;
      *(a1 + 16) = v12;
      v9 = v11[0];
      v8 = v11[1];
      *(&v11[0] + 1) = 0;
      *a1 = v9;
      *(a1 + 1) = v8;
    }
  }

  else
  {
    *(a1 + 40) &= ~1u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  if (v15)
  {
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }
}

double llvm::object::Archive::Child::getMemoryBufferRef@<D0>(uint64_t *__return_ptr a1@<X8>, llvm::object::Archive::Child *this@<X0>)
{
  v14 = *MEMORY[0x277D85DE8];
  llvm::object::Archive::Child::getName(this, v12);
  v5 = v12[0];
  if (v13)
  {
    *(a1 + 32) |= 1u;
    *a1 = v5;
  }

  else
  {
    v6 = v12[1];
    llvm::object::Archive::Child::getBuffer(this, &v10);
    if (v11)
    {
      v8 = 261;
      v7[0] = v5;
      v7[1] = v6;
      v9 = v10;
      llvm::FileError::build(v7, 0, 0, &v9);
    }

    *(a1 + 32) &= ~1u;
    result = *&v10;
    *a1 = v10;
    a1[2] = v5;
    a1[3] = v6;
  }

  return result;
}

void llvm::object::Archive::create(__int128 *a1)
{
  v2 = 0;
  if (*(a1 + 1) >= 8uLL && **a1 == 0xA3E66616769623CLL)
  {
    operator new();
  }

  operator new();
}

uint64_t llvm::object::Archive::Archive(uint64_t a1, __int128 *a2, llvm::Error *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *a1 = &unk_2883EEB20;
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 64) = 0u;
  v8 = (a1 + 64);
  *(a1 + 80) = 0u;
  v9 = (a1 + 80);
  *(a1 + 96) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  if (*(a1 + 24) < 8uLL)
  {
LABEL_2:
    LODWORD(v41) = 2;
    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
  }

  v10 = *(a1 + 16);
  if (*v10 == 0xA3E6E6968743C21)
  {
    v11 = *(a1 + 98) | 8;
    goto LABEL_9;
  }

  if (*v10 == 0xA3E686372613C21)
  {
    v11 = *(a1 + 98) & 0xF7;
LABEL_9:
    *(a1 + 98) = v11 & 0xF8;
    llvm::object::Archive::child_begin(&v45, a1, a3, 0);
    if (*a3)
    {
LABEL_96:
      v28 = v46;
      v46 = 0;
      if (v28)
      {
        (*(*v28 + 16))(v28);
      }

      return a1;
    }

    llvm::object::Archive::child_end(&v41);
    if (v49 <= 7 && v44 < 8 || (v12 = v43, v47 == v43))
    {
      *a3 = 0;
LABEL_94:
      if (v42)
      {
        (*(*v42 + 16))(v42);
      }

      goto LABEL_96;
    }

    v13 = (*(*v46 + 24))(&v38);
    v14 = v38;
    if (v40)
    {
      v38 = 0;
LABEL_15:
      *a3 = v14;
      goto LABEL_91;
    }

    v15 = v39;
    if (v39 == 12)
    {
      if (*v38 == 0x45444D59532E5F5FLL && *(v38 + 8) == 875978566)
      {
        v17 = 4;
        goto LABEL_31;
      }
    }

    else
    {
      if (v39 == 9)
      {
        if (*v38 != 0x45444D59532E5F5FLL || *(v38 + 8) != 70)
        {
          goto LABEL_36;
        }

        v17 = 2;
LABEL_31:
        *(a1 + 98) = *(a1 + 98) & 0xF8 | v17;
        llvm::object::Archive::Child::getBuffer(&v45, &v36);
        if ((v37 & 1) == 0)
        {
          *v7 = v36;
LABEL_33:
          llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&v45);
          v19 = *a3;
          if (*a3)
          {
            goto LABEL_91;
          }

          *v9 = v47;
          *(a1 + 96) = v48;
LABEL_90:
          *a3 = v19;
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      if (v39 < 3)
      {
        goto LABEL_40;
      }
    }

LABEL_36:
    if (*v38 != 12579 || *(v38 + 2) != 47)
    {
LABEL_40:
      if (v39 == 7)
      {
        if (*v38 == 1297699631 && *(v38 + 3) == 791950925)
        {
          goto LABEL_65;
        }

        if (*v38 == 47)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v39 != 1)
        {
          v23 = 0;
          goto LABEL_61;
        }

        if (*v38 == 47)
        {
LABEL_65:
          llvm::object::Archive::Child::getBuffer(&v45, &v36);
          if (v37)
          {
            goto LABEL_89;
          }

          *v7 = v36;
          v23 = v15 == 7 && *v14 == 1297699631 && *(v14 + 3) == 791950925;
          llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&v45);
          if (*a3)
          {
LABEL_91:
            if (v40)
            {
              v27 = v38;
              v38 = 0;
              if (v27)
              {
                (*(*v27 + 8))(v27);
              }
            }

            goto LABEL_94;
          }

          if (v49 <= 7 && v44 < 8 || v47 == v12)
          {
LABEL_87:
            *a3 = 0;
            goto LABEL_91;
          }

          v13 = (*(*v46 + 24))(&v34);
          v14 = v34;
          if (v35)
          {
            goto LABEL_15;
          }

          v15 = *(&v34 + 1);
LABEL_61:
          if (v15 == 2)
          {
            if (*v14 != 12079)
            {
              if (*v14 == 47)
              {
                goto LABEL_88;
              }

              goto LABEL_85;
            }

            *(a1 + 98) = *(a1 + 98) & 0xF8 | v23;
            llvm::object::Archive::Child::getBuffer(&v45, &v36);
            if (v37)
            {
              goto LABEL_89;
            }

            *v8 = v36;
            goto LABEL_33;
          }

          if (*v14 == 47)
          {
            if (v15 == 1)
            {
              *(a1 + 98) = *(a1 + 98) & 0xF8 | 5;
              llvm::object::Archive::Child::getBuffer(&v45, &v36);
              if ((v37 & 1) == 0)
              {
                *v7 = v36;
                llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&v45);
                if (*a3)
                {
                  goto LABEL_91;
                }

                if (v49 <= 7 && v44 < 8 || v47 == v12)
                {
                  goto LABEL_86;
                }

                (*(*v46 + 24))(&v34);
                v25 = llvm::Expected<llvm::StringRef>::moveAssign<llvm::StringRef>(&v38, &v34);
                if (v35)
                {
                  v26 = v34;
                  *&v34 = 0;
                  if (v26)
                  {
                    (*(*v26 + 8))(v26, v25);
                  }
                }

                if (v40)
                {
                  v19 = v38;
                  v38 = 0;
                  goto LABEL_90;
                }

                if (v39 != 2 || *v38 != 12079)
                {
                  goto LABEL_86;
                }

                llvm::object::Archive::Child::getBuffer(&v45, &v34);
                if ((v35 & 1) == 0)
                {
                  *v8 = v34;
                  llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&v45);
                  if (*a3)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_86;
                }

LABEL_132:
                v19 = v34;
                goto LABEL_90;
              }

LABEL_89:
              v19 = v36;
              goto LABEL_90;
            }

LABEL_88:
            *&v51.__val_ = llvm::object::object_category(v13);
            llvm::errorCodeToError(3, v51, &v36);
            goto LABEL_89;
          }

LABEL_85:
          *(a1 + 98) = *(a1 + 98) & 0xF8 | v23;
LABEL_86:
          *v9 = v47;
          *(a1 + 96) = v48;
          goto LABEL_87;
        }
      }

      v23 = 0;
      goto LABEL_85;
    }

    *(a1 + 98) = *(a1 + 98) & 0xF8 | 2;
    llvm::object::Archive::Child::getName(&v45, &v36);
    v19 = v36;
    if (v37)
    {
      goto LABEL_90;
    }

    if (*(&v36 + 1) > 15)
    {
      if (*(&v36 + 1) != 19)
      {
        if (*(&v36 + 1) != 16)
        {
          goto LABEL_134;
        }

        if (*v36 != 0x45444D59532E5F5FLL || *(v36 + 8) != 0x444554524F532046)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      }

      if (*v36 != 0x45444D59532E5F5FLL || *(v36 + 8) != 0x524F532034365F46 || *(v36 + 11) != 0x444554524F532034)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (*(&v36 + 1) == 9)
      {
        if (*v36 != 0x45444D59532E5F5FLL || *(v36 + 8) != 70)
        {
          goto LABEL_134;
        }

        goto LABEL_131;
      }

      if (*(&v36 + 1) != 12)
      {
        goto LABEL_134;
      }

      if (*v36 != 0x45444D59532E5F5FLL || *(v36 + 8) != 875978566)
      {
        goto LABEL_134;
      }
    }

    *(a1 + 98) = *(a1 + 98) & 0xF8 | 4;
LABEL_131:
    llvm::object::Archive::Child::getBuffer(&v45, &v34);
    if (v35)
    {
      goto LABEL_132;
    }

    *v7 = v34;
    llvm::fallible_iterator<llvm::object::Archive::ChildFallibleIterator>::operator++(&v45);
    if (*a3)
    {
      goto LABEL_91;
    }

LABEL_134:
    *v9 = v47;
    *(a1 + 96) = v48;
    goto LABEL_91;
  }

  if (*v10 != 0xA3E66616769623CLL)
  {
    goto LABEL_2;
  }

  *(a1 + 98) = *(a1 + 98) & 0xF0 | 6;
  return a1;
}

uint64_t *llvm::object::Archive::child_begin@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::object::Archive *this@<X0>, llvm::Error *a3@<X1>, int a4@<W2>)
{
  if ((*(*this + 32))(this))
  {

    return llvm::object::Archive::child_end(a1);
  }

  else
  {
    if (a4)
    {
      v9 = *(this + 10);
      v10 = *(this + 11);
      v11 = *(this + 48);
      v18 = this;
      v19[0] = 0;
      v19[1] = v9;
      v19[2] = v10;
      v20 = v11;
      llvm::object::Archive::createArchiveMemberHeader(v19, this, v9, v10, 0);
    }

    v12 = *(this + 2);
    v13 = (*(*this + 40))(this);
    llvm::object::Archive::Child::Child(&v18, this, (v12 + v13), a3);
    if (*a3)
    {
      llvm::object::Archive::child_end(a1);
    }

    else
    {
      llvm::object::Archive::Child::Child(v16, &v18);
      v14 = v17;
      v15 = v16[1];
      *a1 = v16[0];
      *(a1 + 1) = v15;
      *(a1 + 16) = v14;
      a1[5] = a3;
      *(&v16[0] + 1) = 0;
    }

    result = v19[0];
    v19[0] = 0;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t *llvm::object::Archive::child_end@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  memset(v5, 0, 32);
  llvm::object::Archive::Child::Child(v6, v5);
  v2 = v7;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 1) = v3;
  *(a1 + 16) = v2;
  a1[5] = 0;
  *(&v6[0] + 1) = 0;
  result = *(&v5[0] + 1);
  *(&v5[0] + 1) = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

__n128 llvm::object::Archive::Symbol::getMember@<Q0>(__n128 *__return_ptr a1@<X8>, const llvm::object::Archive **this@<X0>)
{
  v3 = *this;
  v4 = *(*this + 6);
  v5 = *(*this + 98) & 7;
  if (v5 == 1)
  {
    v7 = v4 + 2;
    goto LABEL_16;
  }

  if (v5 == 4 || v5 == 6)
  {
    v7 = v4 + 2;
  }

  else
  {
    v7 = v4 + 1;
    if ((*(*this + 98) & 7) == 0)
    {
      v12 = bswap32(*(v7 + (4 * *(this + 2))));
      goto LABEL_21;
    }
  }

  switch(v5)
  {
    case 2:
      v12 = *(v7 + (8 * *(this + 2)) + 4);
      goto LABEL_21;
    case 4:
      v12 = *(v7 + (16 * *(this + 2)) + 8);
      goto LABEL_21;
    case 6:
LABEL_16:
      v12 = bswap64(*(v7 + (8 * *(this + 2))));
      goto LABEL_21;
  }

  v8 = *v4;
  v9 = &v4[*v4 + 1];
  v10 = *(this + 2);
  if (v10 >= *v9 || (v11 = *(v9 + v10 + 2) - 1, v8 <= v11))
  {
    *&v20.__val_ = llvm::object::object_category(this);
    llvm::errorCodeToError(3, v20, a1);
    a1[2].n128_u8[8] |= 1u;
    return result;
  }

  v12 = v7[v11];
LABEL_21:
  v14 = *(v3 + 2);
  v19 = 0;
  llvm::object::Archive::Child::Child(v17, v3, (v14 + v12), &v19);
  v15 = v19;
  if (v19)
  {
    v19 = 0;
    a1[2].n128_u8[8] |= 1u;
    v16 = *(&v17[0] + 1);
    a1->n128_u64[0] = v15;
    *(&v17[0] + 1) = 0;
    if (v16)
    {
      (*(*v16 + 16))(v16);
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }
  }

  else
  {
    a1[2].n128_u8[8] &= ~1u;
    a1[2].n128_u16[0] = v18;
    result = v17[1];
    *a1 = v17[0];
    a1[1] = result;
  }

  return result;
}

uint64_t llvm::object::Archive::Symbol::getNext(llvm::object::Archive::Symbol *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if ((*(*this + 98) & 7) != 2)
  {
    v3 = *(v1 + 56);
    if (v3 > HIDWORD(v2))
    {
      memchr((*(v1 + 48) + HIDWORD(v2)), 0, v3 - HIDWORD(v2));
    }
  }

  return v1;
}

unint64_t llvm::object::Archive::getNumberOfSymbols(llvm::object::Archive *this)
{
  if (!*(this + 7))
  {
    return 0;
  }

  v1 = *(this + 6);
  v2 = *(this + 98) & 7;
  if (v2 <= 1)
  {
    if ((*(this + 98) & 7) != 0)
    {
      if (v2 == 1)
      {
        return bswap64(*v1);
      }

      return *(v1 + (4 * *v1 + 4));
    }

    return bswap32(*v1);
  }

  else
  {
    switch(v2)
    {
      case 2u:
        return *v1 >> 3;
      case 4u:
        return *v1 >> 4;
      case 6u:
        return bswap64(*v1);
      default:
        return *(v1 + (4 * *v1 + 4));
    }
  }
}

uint64_t *llvm::object::Archive::findSym@<X0>(llvm::object::Archive *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  llvm::object::Archive::symbol_begin(a1);
  v9 = v8;
  v11 = v10;
  v22 = v8;
  v23 = v10;
  result = llvm::object::Archive::getNumberOfSymbols(a1);
  v13 = result;
  if (v9 != a1)
  {
    do
    {
LABEL_3:
      v14 = v9[6];
      if (v14)
      {
        v15 = (v14 + HIDWORD(v11));
        if (strlen(v15) == a3 && (!a3 || !memcmp(v15, a2, a3)))
        {
LABEL_12:
          llvm::object::Archive::Symbol::getMember(v24, &v22);
          if (v25)
          {
            v17 = v24[0].n128_u64[0];
            v24[0].n128_u64[0] = 0;
            v18 = *(a4 + 48) | 1;
          }

          else
          {
            llvm::object::Archive::Child::Child(v19, v24);
            v18 = *(a4 + 48) & 0xFE;
            v17 = v19[0];
            *(a4 + 8) = v19[1];
            *(a4 + 16) = v20;
            *(a4 + 32) = v21;
            *(a4 + 40) = 1;
          }

          *(a4 + 48) = v18;
          *a4 = v17;
          return llvm::Expected<llvm::object::Archive::Child>::~Expected(v24);
        }
      }

      else if (!a3)
      {
        goto LABEL_12;
      }

      result = llvm::object::Archive::Symbol::getNext(&v22);
      v9 = result;
      v11 = v16;
      v22 = result;
      v23 = v16;
    }

    while (result != a1);
  }

  if (v13 != v11)
  {
    goto LABEL_3;
  }

  *(a4 + 48) &= ~1u;
  *a4 = 0;
  *(a4 + 40) = 0;
  return result;
}

uint64_t llvm::object::BigArchive::BigArchive(uint64_t a1, __int128 *a2, llvm::Error *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v53 = *a2;
  v54 = v5;
  v6 = llvm::object::Archive::Archive(a1, &v53, a3);
  *v6 = &unk_2883EEB60;
  v6[17] = 0;
  v7 = (v6 + 17);
  v6[18] = 0;
  v9 = v6[2];
  v8 = v6[3];
  v6[16] = v9;
  v46 = v8;
  if (v8 <= 0x7F)
  {
    v47 = "malformed AIX big archive: incomplete fixed length header, the archive is only";
    v49 = &v46;
    v51 = 3075;
    *&v53 = &v47;
    *&v54 = " byte(s)";
    goto LABEL_3;
  }

  v10 = 20;
  *&v53 = v9 + 68;
  *(&v53 + 1) = 20;
  last_not_of = llvm::StringRef::find_last_not_of(&v53, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  v47 = 0;
  if (last_not_of + 1 < 0x14)
  {
    v10 = last_not_of + 1;
  }

  *&v53 = v9 + 68;
  *(&v53 + 1) = v10;
  if ((llvm::consumeUnsignedInteger(&v53, 0xA, &v47, v12) & 1) != 0 || *(&v53 + 1))
  {
    v51 = 1283;
    v47 = "malformed AIX big archive: first member offset ";
    v49 = (v9 + 68);
    v50 = v10;
    *&v53 = &v47;
    *&v54 = " is not a number";
    v55 = 770;
    malformedError(v42, &v53);
  }

  *v7 = v47;
  v13 = 20;
  *&v53 = v9 + 11;
  *(&v53 + 1) = 20;
  v14 = llvm::StringRef::find_last_not_of(&v53, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  v47 = 0;
  if (v14 + 1 < 0x14)
  {
    v13 = v14 + 1;
  }

  *&v53 = v9 + 11;
  *(&v53 + 1) = v13;
  if ((llvm::consumeUnsignedInteger(&v53, 0xA, &v47, v15) & 1) != 0 || *(&v53 + 1))
  {
    v51 = 1283;
    v47 = "malformed AIX big archive: last member offset ";
    v49 = v9 + 11;
    v50 = v13;
    *&v53 = &v47;
    *&v54 = " is not a number";
    v55 = 770;
    malformedError(v42, &v53);
  }

  *(a1 + 144) = v47;
  v16 = (v9 + 28);
  v17 = 20;
  *&v53 = v16;
  *(&v53 + 1) = 20;
  v18 = llvm::StringRef::find_last_not_of(&v53, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
  v47 = 0;
  if (v18 + 1 < 0x14)
  {
    v17 = v18 + 1;
  }

  *&v53 = v16;
  *(&v53 + 1) = v17;
  if ((llvm::consumeUnsignedInteger(&v53, 0xA, &v47, v19) & 1) != 0 || *(&v53 + 1))
  {
    v51 = 1283;
    v47 = "malformed AIX big archive: global symbol table offset ";
    v49 = v16;
    v50 = v17;
    *&v53 = &v47;
    *&v54 = " is not a number";
    v55 = 770;
    malformedError(v42, &v53);
  }

  v45 = v47;
  if (!*a3)
  {
    if (v47)
    {
      v20 = v47 + 114;
      v44 = v47 + 114;
      if ((v47 + 114) > v8)
      {
        v40[0] = "global symbol table header at offset 0x";
        v40[2] = &v45;
        v41 = 3587;
        v42[0] = v40;
        v42[2] = " and size 0x";
        v43 = 770;
        v34[0] = 114;
        v47 = v42;
        v49 = v34;
        v51 = 3586;
        *&v53 = &v47;
        *&v54 = " goes past the end of file";
        v55 = 770;
        malformedError(v36, &v53);
      }

      v22 = &v47[*(a1 + 16)];
      v23 = 20;
      *&v53 = v22;
      *(&v53 + 1) = 20;
      v24 = llvm::StringRef::find_last_not_of(&v53, " ", 1, 0xFFFFFFFFFFFFFFFFLL);
      v47 = 0;
      if (v24 + 1 < 0x14)
      {
        v23 = v24 + 1;
      }

      *&v53 = v22;
      *(&v53 + 1) = v23;
      if ((llvm::consumeUnsignedInteger(&v53, 0xA, &v47, v25) & 1) != 0 || *(&v53 + 1))
      {
        v51 = 1283;
        v47 = "malformed AIX big archive: global symbol table size ";
        v49 = v22;
        v50 = v23;
        *&v53 = &v47;
        *&v54 = " is not a number";
LABEL_3:
        v55 = 770;
        malformedError(v42, &v53);
      }

      v26 = v47;
      v39 = v47;
      if (&v20[v47] > v8)
      {
        v36[0] = "global symbol table content at offset 0x";
        v37 = 259;
        v34[0] = &v44;
        v34[2] = 0;
        v35 = 270;
        llvm::operator+(v36, v34, v40);
        v32 = " and size 0x";
        v33 = 259;
        llvm::operator+(v40, &v32, v42);
        v30[0] = &v39;
        v30[2] = 0;
        v31 = 270;
        llvm::operator+(v42, v30, &v47);
        v28 = " goes past the end of file";
        v29 = 259;
        llvm::operator+(&v47, &v28, &v53);
        malformedError(&v38, &v53);
      }

      *(a1 + 48) = v22 + 114;
      *(a1 + 56) = v26;
      v27 = 8 * llvm::object::Archive::getNumberOfSymbols(a1) + 8;
      *(a1 + 64) = v22 + v27 + 114;
      *(a1 + 72) = v26 - v27;
    }

    llvm::object::Archive::child_begin(&v53, a1, a3, 0);
    if (!*a3)
    {
      llvm::object::Archive::child_end(&v47);
      if ((v56 > 7 || v52 >= 8) && v54 != v49)
      {
        *(a1 + 80) = v54;
        *(a1 + 96) = v55;
      }

      *a3 = 0;
      if (v48)
      {
        (*(*v48 + 16))(v48);
      }
    }

    if (*(&v53 + 1))
    {
      (*(**(&v53 + 1) + 16))(*(&v53 + 1));
    }
  }

  return a1;
}

void llvm::object::Archive::~Archive(llvm::object::Archive *this)
{
  *this = &unk_2883EEB20;
  v1 = (this + 104);
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

{
  *this = &unk_2883EEB20;
  v1 = (this + 104);
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x277C69E40);
}

void llvm::object::BigArchive::~BigArchive(llvm::object::BigArchive *this)
{
  *this = &unk_2883EEB20;
  v1 = (this + 104);
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

{
  *this = &unk_2883EEB20;
  v1 = (this + 104);
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x277C69E40);
}

void std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::Expected<std::string>::~Expected(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 llvm::Expected<llvm::StringRef>::moveAssign<llvm::StringRef>(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *a1;
      *a1 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v4 = *(a1 + 16);
      }
    }

    v7 = *(a2 + 16);
    *(a1 + 16) = v4 & 0xFE | v7 & 1;
    if (v7)
    {
      v8 = *a2;
      *a2 = 0;
      *a1 = v8;
    }

    else
    {
      result = *a2;
      *a1 = *a2;
    }
  }

  return result;
}

uint64_t *llvm::object::createBinary@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v8 = llvm::identify_magic(*a1, *(a1 + 8));
  switch(v8)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 24:
    case 25:
    case 26:
    case 28:
    case 29:
    case 30:
      v9 = *(a1 + 16);
      v18 = *a1;
      v19 = v9;
      result = llvm::object::SymbolicFile::createSymbolicFile(&v18, v8, a2, v4, &v20);
      goto LABEL_3;
    case 2:
      v11 = *(a1 + 16);
      v18 = *a1;
      v19 = v11;
      llvm::object::Archive::create(&v18);
    case 20:
      v16 = *(a1 + 16);
      v18 = *a1;
      v19 = v16;
      llvm::object::MachOUniversalBinary::create();
    case 22:
      v17 = *(a1 + 16);
      v18 = *a1;
      v19 = v17;
      result = llvm::object::MinidumpFile::create(&v18, &v20);
LABEL_3:
      *(a4 + 8) = *(a4 + 8) & 0xFE | v21 & 1;
      *a4 = v20;
      break;
    case 27:
      v15 = *(a1 + 16);
      v18 = *a1;
      v19 = v15;
      llvm::object::WindowsResource::createWindowsResource(&v18);
    case 32:
      v14 = *(a1 + 16);
      v18 = *a1;
      v19 = v14;
      llvm::object::TapiUniversal::create();
    case 34:
      v12 = *(a1 + 16);
      v18 = *a1;
      v19 = v12;
      llvm::object::OffloadBinary::create(&v18, &v20);
      *(a4 + 8) = *(a4 + 8) & 0xFE | v21 & 1;
      v13 = v20;
      v20 = 0;
      *a4 = v13;
      result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v20);
      break;
    default:
      *&v23.__val_ = llvm::object::object_category(v8);
      result = llvm::errorCodeToError(2, v23, a4);
      *(a4 + 8) |= 1u;
      break;
  }

  return result;
}

uint64_t llvm::object::COFFObjectFile::moveSymbolNext(uint64_t result, uint64_t a2)
{
  v2 = *(result + 112);
  if (*(result + 96))
  {
    v3 = *a2 + 18 * *(*a2 + 17) + 18;
  }

  else
  {
    v3 = *a2 + 20 * *(*a2 + 19) + 20;
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  *a2 = v2;
  return result;
}

unint64_t llvm::object::COFFObjectFile::getSymbolAlignment(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 - 1) | ((v2 - 1) >> 1) | (((v2 - 1) | ((v2 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | (v4 >> 16);
  if (v5 > 0x1E)
  {
    return 32;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t *llvm::object::COFFObjectFile::getSymbolAddress@<X0>(llvm::object::COFFObjectFile *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = *MEMORY[0x277D85DE8];
  result = llvm::object::ObjectFile::getSymbolValue(a1, a2, v18);
  v7 = v18[0];
  if (!*(a1 + 12))
  {
    v14 = 0;
    v15 = a2;
LABEL_11:
    v8 = *(a2 + 12);
    v9 = *(a2 + 18);
    if (v9 == 2)
    {
      if (!v8)
      {
        if (*(a2 + 8))
        {
          result = llvm::object::COFFSymbolRef::isCommon(&v14);
        }

        goto LABEL_20;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = a2;
  v15 = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 12) >= 0xFFFFFF00)
  {
    v8 = *(a2 + 12);
  }

  else
  {
    v8 = *(a2 + 12);
  }

  v9 = *(a2 + 16);
  if (v9 == 2)
  {
    if (!*(a2 + 12) && !*(a2 + 8))
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (v9 == 105)
  {
LABEL_20:
    *(a3 + 8) &= ~1u;
    *a3 = v7;
    return result;
  }

LABEL_16:
  result = llvm::object::COFFSymbolRef::isCommon(&v14);
  if ((result & 1) != 0 || v8 <= 0)
  {
    goto LABEL_20;
  }

  result = llvm::object::COFFObjectFile::getSection(&v16, a1, v8);
  v10 = v16;
  if (v17)
  {
    v11 = *(a3 + 8) | 1;
  }

  else
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(v12 + 28);
    }

    else
    {
      v13 = *(a1 + 9);
      if (v13)
      {
        v13 = *(v13 + 24);
      }
    }

    v10 = v7 + *(v16 + 12) + v13;
    v11 = *(a3 + 8) & 0xFE;
  }

  *(a3 + 8) = v11;
  *a3 = v10;
  return result;
}

llvm::object *llvm::object::COFFObjectFile::getSection@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::object *this@<X0>, unsigned int a3@<W1>)
{
  if (a3 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v4 = *(this + 6);
    if (v4)
    {
      v5 = *(v4 + 2);
      if (v5 == 0xFFFF)
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = *(*(this + 7) + 44);
    }

    if (v5 < a3)
    {
      llvm::object::object_category(this);
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    v6 = *(this + 11) + 40 * a3 - 40;
  }

  *(a1 + 8) &= ~1u;
  *a1 = v6;
  return this;
}

uint64_t llvm::object::COFFObjectFile::getSymbolType@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 96))
  {
    v13 = a2;
    v14 = 0;
    if (a2)
    {
      if (*(a2 + 12) >= 0xFFFFFF00)
      {
        v4 = *(a2 + 12);
      }

      else
      {
        v4 = *(a2 + 12);
      }

      if ((*(a2 + 14) & 0xF0) != 0x20)
      {
        v5 = *(a2 + 16);
        if (v5 == 2)
        {
          if (!*(a2 + 12) && !*(a2 + 8))
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }

LABEL_18:
        if (v5 == 105)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_13:
      *(a3 + 8) &= ~1u;
      v6 = 5;
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0;
    v14 = a2;
  }

  if ((*(a2 + 16) & 0xF0) == 0x20)
  {
    goto LABEL_13;
  }

  v4 = *(a2 + 12);
  v5 = *(a2 + 18);
  if (v5 != 2)
  {
    goto LABEL_18;
  }

  if (!v4)
  {
    if (!*(a2 + 8))
    {
LABEL_19:
      v6 = 0;
      *(a3 + 8) &= ~1u;
      goto LABEL_46;
    }

    v4 = 0;
  }

LABEL_20:
  result = llvm::object::COFFSymbolRef::isCommon(&v13);
  if (result)
  {
    *(a3 + 8) &= ~1u;
    v6 = 2;
  }

  else
  {
    if (v13)
    {
      v7 = (v13 + 16);
    }

    else
    {
      v7 = (v14 + 18);
    }

    if (*v7 == 103)
    {
      *(a3 + 8) &= ~1u;
      v6 = 4;
    }

    else if (v4 == -2 || (!v13 ? ((v8 = *(v14 + 18), v8 != 2) ? (v9 = 0) : (v9 = *(v14 + 12) == -1), v10 = (v14 + 19)) : ((v8 = *(v13 + 16), v8 != 2) ? (v9 = 0) : (v9 = *(v13 + 12) == -1), v10 = (v13 + 17)), (v11 = *v10, v8 == 3) ? (v12 = 1) : (v12 = v9), v11 && v12))
    {
      *(a3 + 8) &= ~1u;
      v6 = 3;
    }

    else
    {
      *(a3 + 8) &= ~1u;
      if (v4 < 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }
  }

LABEL_46:
  *a3 = v6;
  return result;
}

BOOL llvm::object::COFFObjectFile::getSymbolFlags@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 96))
  {
    v21 = a2;
    v22 = 0;
    v5 = (a2 + 16);
    v4 = *(a2 + 16);
    v6 = v4 == 105 || v4 == 2;
    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = (a2 + 17);
    if (*(a2 + 17) && v4 == 105)
    {
      if (*(a2 + 22) == 3)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
      }
    }

    v9 = *(a2 + 12);
    v10 = v9 == 0xFFFF;
    v11 = v7 | 8;
    if (v9 != 0xFFFF)
    {
      v11 = v7;
    }

    if (v9 >> 8 >= 0xFF)
    {
      v7 = v11;
    }
  }

  else
  {
    v21 = 0;
    v22 = a2;
    v5 = (a2 + 18);
    v4 = *(a2 + 18);
    if (v4 == 105 || v4 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = (a2 + 19);
    if (*(a2 + 19) && v4 == 105)
    {
      if (*(a2 + 24) == 3)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
      }
    }

    v13 = *(a2 + 12);
    v6 = v13 == -1;
    v10 = v13 == -1;
    if (v6)
    {
      v7 |= 8u;
    }
  }

  v14 = v4 == 103;
  if (*v8)
  {
    v15 = *v5;
    v16 = v15 == 3 || v15 == 2 && v10;
    if (v4 == 103)
    {
      v14 = 1;
    }

    else
    {
      v14 = v16;
    }
  }

  if (v14)
  {
    v17 = v7 | 0x80;
  }

  else
  {
    v17 = v7;
  }

  result = llvm::object::COFFSymbolRef::isCommon(&v21);
  v19 = v17 | 0x10;
  if (!result)
  {
    v19 = v17;
  }

  v20 = v21;
  if (v21)
  {
    if (*(v21 + 16) == 2 && !*(v21 + 12))
    {
LABEL_48:
      v19 |= *(v20 + 8) == 0;
    }
  }

  else
  {
    v20 = v22;
    if (*(v22 + 18) == 2 && !*(v22 + 12))
    {
      goto LABEL_48;
    }
  }

  *(a3 + 8) &= ~1u;
  *a3 = v19;
  return result;
}

llvm::object *llvm::object::COFFObjectFile::getSymbolSection@<X0>(llvm::object::COFFObjectFile *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(this + 12))
  {
    v5 = *(a2 + 12);
    if ((v5 + 256) < 0x101u)
    {
LABEL_3:
      result = (*(*this + 360))(this);
      *(a3 + 16) &= ~1u;
      *a3 = result;
      *(a3 + 8) = v7;
      return result;
    }
  }

  else
  {
    v5 = *(a2 + 12);
    if (v5 <= 0)
    {
      goto LABEL_3;
    }
  }

  result = llvm::object::COFFObjectFile::getSection(&v9, this, v5);
  v8 = v9;
  if (v10)
  {
    *(a3 + 16) |= 1u;
  }

  else
  {
    *(a3 + 16) &= ~1u;
    *(a3 + 8) = this;
  }

  *a3 = v8;
  return result;
}

void llvm::object::COFFObjectFile::getSectionName(llvm::object::COFFObjectFile *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v16.n128_u64[0] = a2;
  v16.n128_u64[1] = 8;
  v18 = 0;
  llvm::StringRef::split(&v16, &v18, 1uLL, v17);
  v7 = v17[0];
  if (v17[0].n128_u64[1] && *v17[0].n128_u64[0] == 47)
  {
    if (v17[0].n128_u64[1] != 1 && *v17[0].n128_u64[0] == 12079)
    {
      v11 = v17[0].n128_u64[1] - 2;
      if (v17[0].n128_u64[1] - 2 > 6)
      {
        goto LABEL_12;
      }

      v9 = 0;
      if (v17[0].n128_u64[1] != 2)
      {
        v13 = (v17[0].n128_u64[0] + 2);
        do
        {
          v14 = *v13;
          if (*v13 < 65)
          {
            if (v14 < 48)
            {
              if (v14 == 43)
              {
                v15 = 62;
              }

              else
              {
                if (v14 != 47)
                {
                  goto LABEL_12;
                }

                v15 = 63;
              }
            }

            else
            {
              if (v14 > 0x39)
              {
                goto LABEL_12;
              }

              v15 = v14 + 4;
            }
          }

          else if (v14 > 0x5A)
          {
            if (v14 - 97 > 0x19)
            {
              goto LABEL_12;
            }

            v15 = v14 - 71;
          }

          else
          {
            v15 = v14 - 65;
          }

          v9 = (v9 << 6) + v15;
          ++v13;
          --v11;
        }

        while (v11);
        if (HIDWORD(v9))
        {
LABEL_12:
          v12 = llvm::object::object_category(v5);
          v17[0].n128_u64[0] = 3;
          v17[0].n128_u64[1] = v12;
          v16.n128_u64[0] = "invalid section name";
          llvm::make_error<llvm::StringError,char const*&,std::error_code>();
        }
      }
    }

    else
    {
      v16.n128_u64[0] = 0;
      ++v17[0].n128_u64[0];
      --v17[0].n128_u64[1];
      v8 = llvm::consumeUnsignedInteger(v17, 0xA, v16.n128_u64, v6);
      if ((v8 & 1) != 0 || v17[0].n128_u64[1] || (LODWORD(v9) = v16.n128_u32[0], v16.n128_u32[1]))
      {
        v10 = llvm::object::object_category(v8);
        v17[0].n128_u64[0] = 3;
        v17[0].n128_u64[1] = v10;
        v16.n128_u64[0] = "invalid section name";
        llvm::make_error<llvm::StringError,char const*&,std::error_code>();
      }
    }

    llvm::object::COFFObjectFile::getString(a1, v9, a3);
  }

  else
  {
    a3[1].n128_u8[0] &= ~1u;
    *a3 = v7;
  }
}

uint64_t llvm::object::COFFObjectFile::getSectionAddress(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(v2 + 28);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = *(v3 + 24);
    }
  }

  return v3 + *(a2 + 12);
}

uint64_t llvm::object::COFFObjectFile::getSectionSize(void *a1, uint64_t a2)
{
  if ((a1[8] || a1[9]) && a1[2])
  {
    v2 = *(a2 + 16);
    if (v2 >= *(a2 + 8))
    {
      return *(a2 + 8);
    }
  }

  else
  {
    return *(a2 + 16);
  }

  return v2;
}

double llvm::object::COFFObjectFile::getSectionContents@<D0>(llvm::object *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0uLL;
  llvm::object::COFFObjectFile::getSectionContents(a1, a2, &v7, &v6);
  v5 = v6;
  if (v6)
  {
    *(a3 + 16) |= 1u;
    *a3 = v5;
  }

  else
  {
    *(a3 + 16) &= ~1u;
    result = *&v7;
    *a3 = v7;
  }

  return result;
}

llvm::object *llvm::object::COFFObjectFile::getSectionContents@<X0>(llvm::object *result@<X0>, _DWORD *a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = a2[5];
  if (!v5)
  {
    *a4 = 0;
    return result;
  }

  v7 = *(result + 2);
  v8 = v7 + v5;
  if (*(result + 8))
  {
    if (v7)
    {
LABEL_4:
      v9 = a2[4];
      if (v9 >= a2[2])
      {
        v9 = a2[2];
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 9))
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      goto LABEL_4;
    }
  }

  v9 = a2[4];
LABEL_13:
  v11 = *(result + 2);
  v12 = v9;
  v13[0] = *(result + 1);
  v13[1] = v11;
  result = llvm::object::Binary::checkOffset(v13, v8, v9, a4);
  if (!*a4)
  {
    *a3 = v8;
    a3[1] = v12;
  }

  return result;
}

uint64_t llvm::object::COFFObjectFile::getSectionAlignment(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  result = 1;
  if ((v2 & 8) == 0)
  {
    v4 = ((v2 >> 20) & 0xF) == 0;
    v5 = 1 << (((v2 >> 20) & 0xF) - 1);
    if (v4)
    {
      return 16;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t llvm::object::COFFObjectFile::isDebugSection(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(v4);
  if (v5)
  {
    v3 = v4[0];
    v4[0] = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (v5)
    {
      result = v4[0];
      v4[0] = 0;
      if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
    }

    return 0;
  }

  if (v4[1] < 6uLL)
  {
    return 0;
  }

  return *v4[0] == 1650811950 && *(v4[0] + 4) == 26485;
}

unint64_t llvm::object::COFFObjectFile::section_rel_begin(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  result = getFirstReloc(a2, v6, *(a1 + 16));
  if (result)
  {
    if (*(a2 + 12))
    {
      llvm::report_fatal_error("Sections with relocations should have an address of 0", 1, v5);
    }
  }

  return result;
}

unint64_t getFirstReloc(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  NumberOfRelocations = getNumberOfRelocations(a1, &v14, a3);
  if (!NumberOfRelocations)
  {
    return 0;
  }

  v8 = a3 + *(a1 + 24);
  if (*(a1 + 39))
  {
    v9 = 10;
    if (*(a1 + 32) != 0xFFFF)
    {
      v9 = 0;
    }

    v8 += v9;
  }

  v10 = a2[1];
  v14 = *a2;
  v15 = v10;
  llvm::object::Binary::checkOffset(&v14, v8, 10 * NumberOfRelocations, &v13);
  v11 = v13;
  if (v13)
  {
    v13 = 0;
    *&v14 = v11;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v14);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    return 0;
  }

  return v8;
}

unint64_t llvm::object::COFFObjectFile::section_rel_end(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 16;
  v4 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = v4;
  result = getFirstReloc(a2, &v7, v7);
  if (result)
  {
    v6 = *(v3 + 16);
    v7 = *v3;
    v8 = v6;
    result += 10 * getNumberOfRelocations(a2, &v7, *v3);
  }

  return result;
}

uint64_t getNumberOfRelocations(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if ((*(a1 + 39) & 1) == 0)
  {
    return *(a1 + 32);
  }

  result = *(a1 + 32);
  if (result == 0xFFFF)
  {
    v13 = v3;
    v14 = v4;
    v8 = a2[1];
    v12[0] = *a2;
    v12[1] = v8;
    v9 = *(a1 + 24);
    llvm::object::Binary::checkOffset(v12, a3 + v9, 10, &v11);
    v10 = v11;
    if (v11)
    {
      v11 = 0;
      *&v12[0] = v10;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v12);
      if (*&v12[0])
      {
        (*(**&v12[0] + 8))(*&v12[0]);
      }

      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      return 0;
    }

    else
    {
      return (*(a3 + v9) - 1);
    }
  }

  return result;
}

llvm::object *llvm::object::COFFObjectFile::initSymbolTablePtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (!v4)
  {
    v8 = (a2 + 56);
    v7 = *(a2 + 56);
    if (!v7)
    {
      goto LABEL_35;
    }

    v9 = (a2 + 104);
    v36 = *(a2 + 16);
    v37 = *(a2 + 32);
    v10 = *(a2 + 16);
    v11 = *(a2 + 96);
LABEL_6:
    v12 = 0;
    v13 = (v7 + 48);
    v14 = 1;
    goto LABEL_7;
  }

  v5 = *(v4 + 2);
  if (v5 == 0xFFFF)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 8);
  }

  v18 = (a2 + 16);
  v11 = *(a2 + 16) + v6;
  if ((*(a2 + 96) || *(a2 + 104)) && v5 != 0xFFFF)
  {
    v19 = 18 * *(v4 + 12);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a2 + 32);
  v38 = *v18;
  v39 = v20;
  result = llvm::object::Binary::checkOffset(&v38, v11, v19, this);
  if (*this)
  {
    return result;
  }

  v8 = (a2 + 56);
  v7 = *(a2 + 56);
  *(a2 + 96) = v11;
  v12 = *(a2 + 48);
  if (!v7)
  {
LABEL_31:
    if (v12)
    {
      if (*(v12 + 2) == -1)
      {
        v24 = 0;
        v26 = 0;
        goto LABEL_37;
      }

      v24 = 0;
      v25 = (v12 + 8);
LABEL_36:
      v26 = *v25;
LABEL_37:
      if (*(a2 + 96) || *(a2 + 104))
      {
        if (v24)
        {
          v27 = (*v8 + 52);
LABEL_43:
          v28 = *v27;
          goto LABEL_45;
        }

        if (*(v12 + 2) != -1)
        {
          v27 = (v12 + 12);
          goto LABEL_43;
        }
      }

      v28 = 0;
LABEL_45:
      if (v24)
      {
        v29 = 20;
      }

      else
      {
        v29 = 18;
      }

      v30 = *(a2 + 32);
      v31 = (*(a2 + 16) + (v26 + v28 * v29));
      v38 = *(a2 + 16);
      v39 = v30;
      result = llvm::object::Binary::checkOffset(&v38, v31, 4, this);
      if (!*this)
      {
        v32 = *v31;
        *(a2 + 120) = v32;
        v33 = *(a2 + 32);
        v38 = *(a2 + 16);
        v39 = v33;
        result = llvm::object::Binary::checkOffset(&v38, v31, v32, this);
        if (!*this)
        {
          *(a2 + 112) = v31;
          v34 = *(a2 + 120);
          if (v34 > 3)
          {
            if (v34 != 4)
            {
              if (*(v31 + v34 - 1))
              {
                v35 = llvm::object::object_category(result);
                *&v38 = 3;
                *(&v38 + 1) = v35;
                llvm::make_error<llvm::StringError,char const*&,std::error_code>();
              }
            }
          }

          else
          {
            *(a2 + 120) = 4;
          }

          *this = 0;
        }
      }

      return result;
    }

    v7 = *v8;
LABEL_35:
    v12 = 0;
    v25 = (v7 + 48);
    v24 = 1;
    goto LABEL_36;
  }

  v9 = (a2 + 104);
  v36 = *v18;
  v37 = *(a2 + 32);
  v10 = *(a2 + 16);
  if (!v12)
  {
    goto LABEL_6;
  }

  if (*(v12 + 2) == -1)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  v13 = (v12 + 8);
LABEL_7:
  v15 = *v13;
LABEL_8:
  v16 = v10 + v15;
  if (v11 || *v9)
  {
    if (v14)
    {
      v17 = (v7 + 52);
LABEL_25:
      v22 = *v17;
      goto LABEL_27;
    }

    if (*(v12 + 2) != -1)
    {
      v17 = (v12 + 12);
      goto LABEL_25;
    }
  }

  v22 = 0;
LABEL_27:
  v23 = 18;
  if (v14)
  {
    v23 = 20;
  }

  v38 = v36;
  v39 = v37;
  result = llvm::object::Binary::checkOffset(&v38, v10 + v15, v22 * v23, this);
  if (!*this)
  {
    *(a2 + 104) = v16;
    v12 = *(a2 + 48);
    goto LABEL_31;
  }

  return result;
}

void llvm::object::COFFObjectFile::getRvaPtr(llvm::object::COFFObjectFile *this, void *a2, unint64_t *a3, char *a4, uint64_t a5)
{
  v7 = a3;
  v10 = (*(*a2 + 352))(a2);
  v12 = v11;
  v13 = (*(*a2 + 360))(a2);
  v34 = v10;
  v35 = v12;
  if (v12 == v14 && v10 == v13)
  {
LABEL_15:
    v23 = llvm::object::object_category(v13);
    if (a5)
    {
      v43 = 3;
      v44 = v23;
      v31 = 0;
      v32 = 0;
      LODWORD(v35) = 0;
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v37 = 0;
      v38 = 0;
      v36 = 0;
      v33 = 0;
      v34 = &unk_2883EB8F0;
      p_p = &v31;
      llvm::raw_ostream::SetUnbuffered(&v34);
      __p = &unk_2883EEDC0;
      v28 = "RVA 0x%x for %s not found";
      LODWORD(v29) = v7;
      v30 = a5;
      llvm::raw_ostream::operator<<(&v34, &__p);
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    v43 = 3;
    v44 = v23;
    __p = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v35) = 0;
    v39 = 0;
    v40 = 0;
    v41 = 1;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v34 = &unk_2883EB8F0;
    p_p = &__p;
    llvm::raw_ostream::SetUnbuffered(&v34);
    v31 = &unk_2883EB758;
    v32 = "RVA 0x%x not found";
    LODWORD(v33) = v7;
    llvm::raw_ostream::operator<<(&v34, &v31);
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  v16 = v13;
  v17 = v14;
  while (1)
  {
    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    v20 = v7 - v18;
    if (v7 >= v18 && v19 + v18 > v7)
    {
      break;
    }

    v13 = (*(*v12 + 136))(v12, &v34);
    v10 = v34;
    v12 = v35;
    if (v35 == v17 && v34 == v16)
    {
      goto LABEL_15;
    }
  }

  v24 = *(v10 + 4);
  v25 = v24 + v18;
  if (v24 < v19 && v25 <= v7)
  {
    operator new();
  }

  *a4 = a2[2] + *(v10 + 5) + v20;
  *this = 0;
}

void llvm::object::COFFObjectFile::initImportTablePtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 && ((v5 = *(a2 + 64)) == 0 ? (v6 = (*(a2 + 72) + 108)) : (v6 = (v5 + 92)), *v6 > 1u && (v7 = *(v3 + 8), v7)))
  {
    *v11 = 0;
    llvm::object::COFFObjectFile::getRvaPtr(this, a2, v7, v11, "import table");
    if (!*this)
    {
      v8 = *(a2 + 32);
      v10[0] = *(a2 + 16);
      v10[1] = v8;
      v9 = *v11;
      llvm::object::Binary::checkOffset(v10, *v11, *(v3 + 12), this);
      if (!*this)
      {
        *(a2 + 128) = v9;
      }
    }
  }

  else
  {
    *this = 0;
  }
}

void llvm::object::COFFObjectFile::initDelayImportTablePtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 && ((v5 = *(a2 + 64)) == 0 ? (v6 = (*(a2 + 72) + 108)) : (v6 = (v5 + 92)), *v6 > 0xDu && (v7 = *(v3 + 104), v7)))
  {
    *(a2 + 144) = (*(v3 + 108) >> 5) - 1;
    *v11 = 0;
    llvm::object::COFFObjectFile::getRvaPtr(this, a2, v7, v11, "delay import table");
    if (!*this)
    {
      v8 = *(a2 + 32);
      v10[0] = *(a2 + 16);
      v10[1] = v8;
      v9 = *v11;
      llvm::object::Binary::checkOffset(v10, *v11, *(v3 + 108), this);
      if (!*this)
      {
        *(a2 + 136) = v9;
      }
    }
  }

  else
  {
    *this = 0;
  }
}

void llvm::object::COFFObjectFile::initExportTablePtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 && ((v5 = *(a2 + 64)) == 0 ? (v6 = (*(a2 + 72) + 108)) : (v6 = (v5 + 92)), *v6 && (v7 = *v3, v7)))
  {
    *v11 = 0;
    llvm::object::COFFObjectFile::getRvaPtr(this, a2, v7, v11, "export table");
    if (!*this)
    {
      v8 = *(a2 + 32);
      v10[0] = *(a2 + 16);
      v10[1] = v8;
      v9 = *v11;
      llvm::object::Binary::checkOffset(v10, *v11, v3[1], this);
      if (!*this)
      {
        *(a2 + 152) = v9;
      }
    }
  }

  else
  {
    *this = 0;
  }
}

void llvm::object::COFFObjectFile::initBaseRelocPtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 && ((v5 = *(a2 + 64)) == 0 ? (v6 = (*(a2 + 72) + 108)) : (v6 = (v5 + 92)), *v6 > 5u && (v7 = *(v3 + 40), v7)))
  {
    *v11 = 0;
    llvm::object::COFFObjectFile::getRvaPtr(this, a2, v7, v11, "base reloc table");
    if (!*this)
    {
      v8 = *(a2 + 32);
      v10[0] = *(a2 + 16);
      v10[1] = v8;
      v9 = *v11;
      llvm::object::Binary::checkOffset(v10, *v11, *(v3 + 44), this);
      if (!*this)
      {
        *(a2 + 160) = v9;
        *(a2 + 168) = v9 + *(v3 + 44);
      }
    }
  }

  else
  {
    *this = 0;
  }
}

void llvm::object::COFFObjectFile::initDebugDirectoryPtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 && ((v5 = *(a2 + 64)) == 0 ? (v6 = (*(a2 + 72) + 108)) : (v6 = (v5 + 92)), *v6 > 6u && (v7 = *(v3 + 48), v7)))
  {
    HIDWORD(v8) = -1227133513 * *(v3 + 52);
    LODWORD(v8) = HIDWORD(v8);
    if ((v8 >> 2) >= 0x924924A)
    {
      *&v11[0] = 3;
      *(&v11[0] + 1) = llvm::object::object_category(this);
      *v12 = "debug directory has uneven size";
      llvm::make_error<llvm::StringError,char const*&,std::error_code>();
    }

    *v12 = 0;
    llvm::object::COFFObjectFile::getRvaPtr(this, a2, v7, v12, "debug directory");
    if (!*this)
    {
      v9 = *(a2 + 32);
      v11[0] = *(a2 + 16);
      v11[1] = v9;
      v10 = *v12;
      llvm::object::Binary::checkOffset(v11, *v12, *(v3 + 52), this);
      if (!*this)
      {
        *(a2 + 176) = v10;
        *(a2 + 184) = v10 + *(v3 + 52);
      }
    }
  }

  else
  {
    *this = 0;
  }
}

void llvm::object::COFFObjectFile::initTLSDirectoryPtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 && ((v5 = *(a2 + 64)) == 0 ? (v6 = (*(a2 + 72) + 108)) : (v6 = (v5 + 92)), *v6 > 9u && (v7 = *(v3 + 72), v7)))
  {
    if (*(a2 + 72))
    {
      v8 = 40;
    }

    else
    {
      v8 = 24;
    }

    if (v8 != *(v3 + 76))
    {
      v12 = llvm::object::object_category(this);
      v13 = *(v3 + 76);
      v24[3] = 3;
      v24[4] = v12;
      memset(v24, 0, 24);
      DWORD2(v17) = 0;
      v20 = 0;
      v21 = 0;
      v22 = 1;
      v19 = 0;
      v18 = 0uLL;
      *&v17 = &unk_2883EB8F0;
      v23 = v24;
      llvm::raw_ostream::SetUnbuffered(&v17);
      v14[0] = &unk_2883EEDE0;
      v14[1] = "TLS Directory size (%u) is not the expected size (%llu).";
      v15 = v13;
      v16 = v8;
      llvm::raw_ostream::operator<<(&v17, v14);
      llvm::make_error<llvm::StringError,std::string,std::error_code>();
    }

    v14[0] = 0;
    llvm::object::COFFObjectFile::getRvaPtr(this, a2, v7, v14, "TLS directory");
    if (!*this)
    {
      v9 = *(a2 + 32);
      v17 = *(a2 + 16);
      v18 = v9;
      v10 = v14[0];
      llvm::object::Binary::checkOffset(&v17, v14[0], *(v3 + 76), this);
      if (!*this)
      {
        v11 = 200;
        if (!*(a2 + 72))
        {
          v11 = 192;
        }

        *(a2 + v11) = v10;
      }
    }
  }

  else
  {
    *this = 0;
  }
}

void llvm::object::COFFObjectFile::initLoadConfigPtr(llvm::object::COFFObjectFile *this, uint64_t a2)
{
  v3 = *(a2 + 80);
  if (v3 && ((v5 = *(a2 + 64)) == 0 ? (v6 = (*(a2 + 72) + 108)) : (v6 = (v5 + 92)), *v6 > 0xAu && (v7 = *(v3 + 80), v7)))
  {
    *v11 = 0;
    llvm::object::COFFObjectFile::getRvaPtr(this, a2, v7, v11, "load config table");
    if (!*this)
    {
      v8 = *(a2 + 32);
      v10[0] = *(a2 + 16);
      v10[1] = v8;
      v9 = *v11;
      llvm::object::Binary::checkOffset(v10, *v11, *(v3 + 84), this);
      if (!*this)
      {
        *(a2 + 208) = v9;
      }
    }
  }

  else
  {
    *this = 0;
  }
}

llvm::object *llvm::object::COFFObjectFile::initialize@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::object::COFFObjectFile *this@<X0>)
{
  result = std::system_category();
  v5 = *(this + 3);
  if (v5 <= 0x13)
  {
    *&v11.__val_ = llvm::object::object_category(result);

    return llvm::errorCodeToError(4, v11, a1);
  }

  v6 = result;
  if (v5 <= 0x43)
  {
    llvm::object::object_category(result);
    v12 = 0;
    v13 = 0;
    v7 = *(this + 2);
  }

  else
  {
    v7 = *(this + 2);
    if (*v7 == 77 && *(v7 + 1) == 90)
    {
      v8 = *(v7 + 60);
      if (*(v7 + v8) != 17744)
      {
LABEL_6:
        v9 = llvm::object::object_category(result);
        *&v48 = 3;
        *(&v48 + 1) = v9;
        v10 = "incorrect PE magic";
        goto LABEL_7;
      }

      v13 = v8 + 4;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }
  }

  v14 = *(this + 2);
  v48 = *(this + 1);
  v49 = v14;
  v15 = (v7 + v13);
  result = llvm::object::Binary::checkOffset(&v48, v7 + v13, 20, a1);
  if (!*a1)
  {
    *(this + 6) = v15;
    if ((v12 & 1) == 0)
    {
      if (*v15)
      {
        goto LABEL_30;
      }

      if (v15[1] == -1)
      {
        if (*(this + 3) <= 0x37uLL)
        {
          llvm::object::object_category(result);
        }

        else
        {
          v17 = *(this + 2);
          v48 = *(this + 1);
          v49 = v17;
          v18 = *(this + 2) + v13;
          result = llvm::object::Binary::checkOffset(&v48, v18, 56, a1);
          if (*a1)
          {
            return result;
          }

          *(this + 7) = v18;
          if (*(v18 + 4) >= 2u && *(v18 + 12) == 0x4BA9BAEED1BAA1C7 && *(v18 + 20) == 0xB8DCA46AF6FA20AFLL)
          {
            *(this + 6) = 0;
            v13 += 56;
            goto LABEL_46;
          }

          *(this + 7) = 0;
        }
      }

      v15 = *(this + 6);
    }

    if (!v15)
    {
LABEL_32:
      if (v12)
      {
        v20 = *(this + 2);
        v48 = *(this + 1);
        v49 = v20;
        v21 = (*(this + 2) + v13);
        result = llvm::object::Binary::checkOffset(&v48, v21, 96, a1);
        if (*a1)
        {
          return result;
        }

        v22 = *v21;
        if (v22 == 267)
        {
          v23 = 46;
          v24 = 96;
          v25 = 64;
        }

        else
        {
          if (v22 != 523)
          {
            goto LABEL_6;
          }

          v23 = 54;
          v24 = 112;
          v25 = 72;
        }

        *(this + v25) = v21;
        v26 = *&v21[v23];
        v27 = *(this + 2) + v13 + v24;
        v28 = *(this + 2);
        v48 = *(this + 1);
        v49 = v28;
        result = llvm::object::Binary::checkOffset(&v48, v27, 8 * v26, a1);
        if (*a1)
        {
          return result;
        }

        *(this + 10) = v27;
        v15 = *(this + 6);
      }

      if (v15)
      {
        v29 = v15[8];
        v30 = *(this + 2);
        v46 = *(this + 1);
        v47 = v30;
        v31 = *(this + 2) + v13 + v29;
        v32 = v15[1];
        if (v32 == 0xFFFF)
        {
          v32 = 0;
        }

LABEL_47:
        v48 = v46;
        v49 = v47;
        result = llvm::object::Binary::checkOffset(&v48, v31, 40 * v32, a1);
        if (*a1)
        {
          return result;
        }

        *(this + 11) = v31;
        v34 = *(this + 6);
        if (v34)
        {
          if (*(v34 + 2) == -1)
          {
            goto LABEL_58;
          }

          v35 = (v34 + 8);
        }

        else
        {
          v35 = (*(this + 7) + 48);
        }

        if (*v35)
        {
          llvm::object::COFFObjectFile::initSymbolTablePtr(&v48, this);
          if (v48)
          {
            v45 = v48;
            *&v48 = 0;
            llvm::consumeError(&v45);
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }

            *(this + 12) = 0;
            *(this + 13) = 0;
            *(this + 30) = 0;
            *(this + 14) = 0;
            if (v48)
            {
              (*(*v48 + 8))(v48);
            }
          }

          goto LABEL_66;
        }

LABEL_58:
        if (*(this + 12) || *(this + 13))
        {
          if (!v34)
          {
            v36 = (*(this + 7) + 52);
LABEL_64:
            if (*v36)
            {
              v37 = llvm::object::object_category(result);
              *&v48 = 3;
              *(&v48 + 1) = v37;
              v10 = "symbol table missing";
LABEL_7:
              *&v46 = v10;
              llvm::make_error<llvm::StringError,char const*&,std::error_code>();
            }

            goto LABEL_66;
          }

          if (*(v34 + 2) != -1)
          {
            v36 = (v34 + 12);
            goto LABEL_64;
          }
        }

LABEL_66:
        llvm::object::COFFObjectFile::initImportTablePtr(&v44, this);
        ignoreStrippedErrors(a1, &v44);
        result = v44;
        if (v44)
        {
          result = (*(*v44 + 8))(v44);
        }

        if (!*a1)
        {
          llvm::object::COFFObjectFile::initDelayImportTablePtr(&v43, this);
          ignoreStrippedErrors(a1, &v43);
          result = v43;
          if (v43)
          {
            result = (*(*v43 + 8))(v43);
          }

          if (!*a1)
          {
            llvm::object::COFFObjectFile::initExportTablePtr(&v42, this);
            ignoreStrippedErrors(a1, &v42);
            result = v42;
            if (v42)
            {
              result = (*(*v42 + 8))(v42);
            }

            if (!*a1)
            {
              llvm::object::COFFObjectFile::initBaseRelocPtr(&v41, this);
              ignoreStrippedErrors(a1, &v41);
              result = v41;
              if (v41)
              {
                result = (*(*v41 + 8))(v41);
              }

              if (!*a1)
              {
                llvm::object::COFFObjectFile::initDebugDirectoryPtr(&v40, this);
                ignoreStrippedErrors(a1, &v40);
                result = v40;
                if (v40)
                {
                  result = (*(*v40 + 8))(v40);
                }

                if (!*a1)
                {
                  llvm::object::COFFObjectFile::initTLSDirectoryPtr(&v39, this);
                  ignoreStrippedErrors(a1, &v39);
                  result = v39;
                  if (v39)
                  {
                    result = (*(*v39 + 8))(v39);
                  }

                  if (!*a1)
                  {
                    llvm::object::COFFObjectFile::initLoadConfigPtr(&v38, this);
                    ignoreStrippedErrors(a1, &v38);
                    result = v38;
                    if (v38)
                    {
                      return (*(*v38 + 8))(v38);
                    }
                  }
                }
              }
            }
          }
        }

        return result;
      }

      v18 = *(this + 7);
LABEL_46:
      v33 = *(this + 2);
      v46 = *(this + 1);
      v47 = v33;
      v31 = *(this + 2) + v13;
      v32 = *(v18 + 44);
      goto LABEL_47;
    }

LABEL_30:
    if (v15[1] == -1)
    {
      *&v16.__val_ = v6;
      return llvm::errorCodeToError(0, v16, a1);
    }

    v13 += 20;
    goto LABEL_32;
  }

  return result;
}

uint64_t ignoreStrippedErrors(uint64_t *a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    v5 = 0;
    goto LABEL_6;
  }

  result = (*(*result + 48))(result, &llvm::object::BinaryError::ID);
  v5 = *a2;
  if (!result)
  {
LABEL_6:
    *a1 = v5;
    a1 = a2;
    goto LABEL_7;
  }

  *a2 = 0;
  v6 = v5;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v6);
  result = v6;
  if (v6)
  {
    result = (*(*v6 + 8))(v6);
  }

LABEL_7:
  *a1 = 0;
  return result;
}

uint64_t llvm::object::COFFObjectFile::symbol_begin(llvm::object::COFFObjectFile *this)
{
  result = *(this + 12);
  if (!result)
  {
    return *(this + 13);
  }

  return result;
}

uint64_t llvm::object::COFFObjectFile::section_end(llvm::object::COFFObjectFile *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = *(v1 + 2);
    if (v2 == 0xFFFF)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = *(*(this + 7) + 44);
  }

  return *(this + 11) + 40 * v2;
}

uint64_t llvm::object::COFFObjectFile::getBytesInAddress(llvm::object::COFFObjectFile *this)
{
  v2 = 8;
  if ((*(*this + 392))(this) != 38)
  {
    if ((*(*this + 392))(this) == 3)
    {
      return 8;
    }

    else
    {
      return 4;
    }
  }

  return v2;
}

const char *llvm::object::COFFObjectFile::getFileFormatName(llvm::object::COFFObjectFile *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    v1 = (*(this + 7) + 6);
  }

  v2 = *v1;
  if (v2 <= 34403)
  {
    if (v2 == 332)
    {
      return "COFF-i386";
    }

    if (v2 == 452)
    {
      return "COFF-ARM";
    }
  }

  else
  {
    switch(v2)
    {
      case 43620:
        return "COFF-ARM64";
      case 42561:
        return "COFF-ARM64EC";
      case 34404:
        return "COFF-x86-64";
    }
  }

  return "COFF-<unknown arch>";
}

uint64_t llvm::object::COFFObjectFile::getArch(llvm::object::COFFObjectFile *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    v1 = (*(this + 7) + 6);
  }

  v2 = *v1;
  if (v2 <= 34403)
  {
    if (v2 == 332)
    {
      return 37;
    }

    if (v2 == 452)
    {
      return 35;
    }
  }

  else
  {
    if (v2 == 43620 || v2 == 42561)
    {
      return 3;
    }

    if (v2 == 34404)
    {
      return 38;
    }
  }

  return 0;
}

uint64_t llvm::object::COFFObjectFile::getStartAddress@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 64);
  *(a2 + 8) &= ~1u;
  if (v2)
  {
    v2 = *(v2 + 16);
  }

  *a2 = v2;
  return this;
}

uint64_t llvm::object::COFFObjectFile::getString@<X0>(llvm::object::COFFObjectFile *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 30);
  if (v4 <= 4)
  {
    llvm::object::object_category(this);
    llvm::make_error<llvm::StringError,char const*&,std::error_code>();
  }

  if (v4 <= a2)
  {
    *&v8.__val_ = llvm::object::object_category(this);
    result = llvm::errorCodeToError(4, v8, a3);
    *(a3 + 16) |= 1u;
  }

  else
  {
    v5 = *(this + 14);
    v6 = v5 + a2;
    if (v5)
    {
      result = strlen((v5 + a2));
    }

    else
    {
      result = 0;
    }

    *(a3 + 16) &= ~1u;
    *a3 = v6;
    *(a3 + 8) = result;
  }

  return result;
}

llvm::object::COFFObjectFile *llvm::object::COFFObjectFile::getSymbolName@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s@<X1>, llvm::object::COFFObjectFile *result@<X0>)
{
  if (*__s)
  {
    if (__s[7])
    {
      *(a1 + 16) &= ~1u;
      *a1 = __s;
      a1[1] = 8;
    }

    else
    {
      result = strlen(__s);
      *(a1 + 16) &= ~1u;
      *a1 = __s;
      a1[1] = result;
    }
  }

  else
  {
    v5 = *(__s + 1);

    return llvm::object::COFFObjectFile::getString(result, v5, a1);
  }

  return result;
}

uint64_t llvm::object::COFFObjectFile::getRelocationSymbol(void *a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = a1[12];
  if (*(a1 + 6) == 0)
  {
    return (*(*a1 + 56))(a1);
  }

  v4 = a1[6];
  if (v4)
  {
    if (*(v4 + 2) == -1)
    {
      return (*(*a1 + 56))(a1);
    }

    v5 = (v4 + 12);
  }

  else
  {
    v5 = (a1[7] + 52);
  }

  if (v2 >= *v5)
  {
    return (*(*a1 + 56))(a1);
  }

  if (v3)
  {
    v6 = 18;
  }

  else
  {
    v3 = a1[13];
    v6 = 20;
  }

  return v3 + v2 * v6;
}

void *llvm::object::COFFObjectFile::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = (*(a1 + 56) + 6);
  }

  v5 = *v4;
  v6 = "Unknown";
  v7 = 7;
  if (v5 > 34403)
  {
    if (v5 != 43620 && v5 != 42561)
    {
      if (v5 == 34404)
      {
        if (v3 < 0x11)
        {
          v9 = &unk_2750C4360 + 8 * v3;
          v10 = off_279EFBAE8;
          goto LABEL_20;
        }

LABEL_21:
        v7 = 7;
        return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v6, &v6[v7]);
      }

      return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v6, &v6[v7]);
    }

    if (v3 >= 0x12)
    {
      goto LABEL_21;
    }

    v9 = &unk_2750C44A0 + 8 * v3;
    v10 = off_279EFBC28;
LABEL_20:
    v7 = *v9;
    v6 = v10[v3];
    return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v6, &v6[v7]);
  }

  if (v5 == 332)
  {
    if (v3 < 0x15)
    {
      v9 = &unk_2750C4530 + 8 * v3;
      v10 = off_279EFBCB8;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v5 == 452)
  {
    if (v3 >= 0x17)
    {
      goto LABEL_21;
    }

    v9 = &unk_2750C43E8 + 8 * v3;
    v10 = off_279EFBB70;
    goto LABEL_20;
  }

  return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v6, &v6[v7]);
}

const char *llvm::object::COFFObjectFile::mapDebugSectionName(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = a2;
  if (a3 == 7 && *a2 == 1717528677 && *(a2 + 3) == 1835102822)
  {
    return "eh_frame";
  }

  return result;
}

void llvm::object::ObjectFile::dynamic_relocation_sections(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void llvm::object::COFFObjectFile::getFeatures(uint64_t a1@<X8>)
{
  memset(&v2, 0, sizeof(v2));
  llvm::SubtargetFeatures::Split(&v2, "", 0);
  *(a1 + 24) &= ~1u;
  *a1 = v2;
  memset(&v2, 0, sizeof(v2));
  v3 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
}

const char *llvm::object::getELFRelocationTypeName(llvm::object *this, unsigned int a2)
{
  if (this > 92)
  {
    if (this > 223)
    {
      if (this <= 246)
      {
        if (this == 224)
        {
          if (a2 < 0xF)
          {
            v2 = off_279EFE490;
            return v2[a2];
          }

          return "Unknown";
        }

        if (this == 243)
        {
          if (a2 < 0x3C)
          {
            v2 = off_279EFDDF8;
            return v2[a2];
          }

          return "Unknown";
        }

        if (this != 244 || a2 >= 7)
        {
          return "Unknown";
        }

        v2 = off_279EFD5D8;
      }

      else if (this > 251)
      {
        if (this == 252)
        {
          if (a2 < 0x45)
          {
            v2 = off_279EFE6E0;
            return v2[a2];
          }

          return "Unknown";
        }

        if (this != 258 || a2 >= 0x65)
        {
          return "Unknown";
        }

        v2 = off_279EFE908;
      }

      else
      {
        if (this == 247)
        {
          if (a2 < 0xB)
          {
            v2 = off_279EFE508;
            return v2[a2];
          }

          return "Unknown";
        }

        if (this != 251 || a2 >= 0x25)
        {
          return "Unknown";
        }

        v2 = off_279EFE5B8;
      }

      return v2[a2];
    }

    if (this > 163)
    {
      if (this == 164)
      {
        if (a2 < 0x64)
        {
          v2 = off_279EFD2B8;
          return v2[a2];
        }

        return "Unknown";
      }

      if (this == 183)
      {
        if (a2 > 511)
        {
          if (a2 > 1023)
          {
            if (a2 <= 1027)
            {
              if (a2 > 1025)
              {
                if (a2 == 1026)
                {
                  return "R_AARCH64_JUMP_SLOT";
                }

                else
                {
                  return "R_AARCH64_RELATIVE";
                }
              }

              else if (a2 == 1024)
              {
                return "R_AARCH64_COPY";
              }

              else
              {
                return "R_AARCH64_GLOB_DAT";
              }
            }

            else if (a2 <= 1029)
            {
              if (a2 == 1028)
              {
                return "R_AARCH64_TLS_DTPMOD64";
              }

              else
              {
                return "R_AARCH64_TLS_DTPREL64";
              }
            }

            else
            {
              switch(a2)
              {
                case 0x406u:
                  return "R_AARCH64_TLS_TPREL64";
                case 0x407u:
                  return "R_AARCH64_TLSDESC";
                case 0x408u:
                  return "R_AARCH64_IRELATIVE";
                default:
                  return "Unknown";
              }
            }
          }

          else
          {
            switch(a2)
            {
              case 0x200u:
                result = "R_AARCH64_TLSGD_ADR_PREL21";
                break;
              case 0x201u:
                result = "R_AARCH64_TLSGD_ADR_PAGE21";
                break;
              case 0x202u:
                result = "R_AARCH64_TLSGD_ADD_LO12_NC";
                break;
              case 0x203u:
                result = "R_AARCH64_TLSGD_MOVW_G1";
                break;
              case 0x204u:
                result = "R_AARCH64_TLSGD_MOVW_G0_NC";
                break;
              case 0x205u:
                result = "R_AARCH64_TLSLD_ADR_PREL21";
                break;
              case 0x206u:
                result = "R_AARCH64_TLSLD_ADR_PAGE21";
                break;
              case 0x207u:
                result = "R_AARCH64_TLSLD_ADD_LO12_NC";
                break;
              case 0x208u:
                result = "R_AARCH64_TLSLD_MOVW_G1";
                break;
              case 0x209u:
                result = "R_AARCH64_TLSLD_MOVW_G0_NC";
                break;
              case 0x20Au:
                result = "R_AARCH64_TLSLD_LD_PREL19";
                break;
              case 0x20Bu:
                result = "R_AARCH64_TLSLD_MOVW_DTPREL_G2";
                break;
              case 0x20Cu:
                result = "R_AARCH64_TLSLD_MOVW_DTPREL_G1";
                break;
              case 0x20Du:
                result = "R_AARCH64_TLSLD_MOVW_DTPREL_G1_NC";
                break;
              case 0x20Eu:
                result = "R_AARCH64_TLSLD_MOVW_DTPREL_G0";
                break;
              case 0x20Fu:
                result = "R_AARCH64_TLSLD_MOVW_DTPREL_G0_NC";
                break;
              case 0x210u:
                result = "R_AARCH64_TLSLD_ADD_DTPREL_HI12";
                break;
              case 0x211u:
                result = "R_AARCH64_TLSLD_ADD_DTPREL_LO12";
                break;
              case 0x212u:
                result = "R_AARCH64_TLSLD_ADD_DTPREL_LO12_NC";
                break;
              case 0x213u:
                result = "R_AARCH64_TLSLD_LDST8_DTPREL_LO12";
                break;
              case 0x214u:
                result = "R_AARCH64_TLSLD_LDST8_DTPREL_LO12_NC";
                break;
              case 0x215u:
                result = "R_AARCH64_TLSLD_LDST16_DTPREL_LO12";
                break;
              case 0x216u:
                result = "R_AARCH64_TLSLD_LDST16_DTPREL_LO12_NC";
                break;
              case 0x217u:
                result = "R_AARCH64_TLSLD_LDST32_DTPREL_LO12";
                break;
              case 0x218u:
                result = "R_AARCH64_TLSLD_LDST32_DTPREL_LO12_NC";
                break;
              case 0x219u:
                result = "R_AARCH64_TLSLD_LDST64_DTPREL_LO12";
                break;
              case 0x21Au:
                result = "R_AARCH64_TLSLD_LDST64_DTPREL_LO12_NC";
                break;
              case 0x21Bu:
                result = "R_AARCH64_TLSIE_MOVW_GOTTPREL_G1";
                break;
              case 0x21Cu:
                result = "R_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC";
                break;
              case 0x21Du:
                result = "R_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21";
                break;
              case 0x21Eu:
                result = "R_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC";
                break;
              case 0x21Fu:
                result = "R_AARCH64_TLSIE_LD_GOTTPREL_PREL19";
                break;
              case 0x220u:
                result = "R_AARCH64_TLSLE_MOVW_TPREL_G2";
                break;
              case 0x221u:
                result = "R_AARCH64_TLSLE_MOVW_TPREL_G1";
                break;
              case 0x222u:
                result = "R_AARCH64_TLSLE_MOVW_TPREL_G1_NC";
                break;
              case 0x223u:
                result = "R_AARCH64_TLSLE_MOVW_TPREL_G0";
                break;
              case 0x224u:
                result = "R_AARCH64_TLSLE_MOVW_TPREL_G0_NC";
                break;
              case 0x225u:
                result = "R_AARCH64_TLSLE_ADD_TPREL_HI12";
                break;
              case 0x226u:
                result = "R_AARCH64_TLSLE_ADD_TPREL_LO12";
                break;
              case 0x227u:
                result = "R_AARCH64_TLSLE_ADD_TPREL_LO12_NC";
                break;
              case 0x228u:
                result = "R_AARCH64_TLSLE_LDST8_TPREL_LO12";
                break;
              case 0x229u:
                result = "R_AARCH64_TLSLE_LDST8_TPREL_LO12_NC";
                break;
              case 0x22Au:
                result = "R_AARCH64_TLSLE_LDST16_TPREL_LO12";
                break;
              case 0x22Bu:
                result = "R_AARCH64_TLSLE_LDST16_TPREL_LO12_NC";
                break;
              case 0x22Cu:
                result = "R_AARCH64_TLSLE_LDST32_TPREL_LO12";
                break;
              case 0x22Du:
                result = "R_AARCH64_TLSLE_LDST32_TPREL_LO12_NC";
                break;
              case 0x22Eu:
                result = "R_AARCH64_TLSLE_LDST64_TPREL_LO12";
                break;
              case 0x22Fu:
                result = "R_AARCH64_TLSLE_LDST64_TPREL_LO12_NC";
                break;
              case 0x230u:
                result = "R_AARCH64_TLSDESC_LD_PREL19";
                break;
              case 0x231u:
                result = "R_AARCH64_TLSDESC_ADR_PREL21";
                break;
              case 0x232u:
                result = "R_AARCH64_TLSDESC_ADR_PAGE21";
                break;
              case 0x233u:
                result = "R_AARCH64_TLSDESC_LD64_LO12";
                break;
              case 0x234u:
                result = "R_AARCH64_TLSDESC_ADD_LO12";
                break;
              case 0x235u:
                result = "R_AARCH64_TLSDESC_OFF_G1";
                break;
              case 0x236u:
                result = "R_AARCH64_TLSDESC_OFF_G0_NC";
                break;
              case 0x237u:
                result = "R_AARCH64_TLSDESC_LDR";
                break;
              case 0x238u:
                result = "R_AARCH64_TLSDESC_ADD";
                break;
              case 0x239u:
                result = "R_AARCH64_TLSDESC_CALL";
                break;
              case 0x23Au:
                result = "R_AARCH64_TLSLE_LDST128_TPREL_LO12";
                break;
              case 0x23Bu:
                result = "R_AARCH64_TLSLE_LDST128_TPREL_LO12_NC";
                break;
              case 0x23Cu:
                result = "R_AARCH64_TLSLD_LDST128_DTPREL_LO12";
                break;
              case 0x23Du:
                result = "R_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC";
                break;
              default:
                return "Unknown";
            }
          }
        }

        else
        {
          result = "R_AARCH64_NONE";
          switch(a2)
          {
            case 0u:
              return result;
            case 1u:
              result = "R_AARCH64_P32_ABS32";
              break;
            case 2u:
              result = "R_AARCH64_P32_ABS16";
              break;
            case 3u:
              result = "R_AARCH64_P32_PREL32";
              break;
            case 4u:
              result = "R_AARCH64_P32_PREL16";
              break;
            case 5u:
              result = "R_AARCH64_P32_MOVW_UABS_G0";
              break;
            case 6u:
              result = "R_AARCH64_P32_MOVW_UABS_G0_NC";
              break;
            case 7u:
              result = "R_AARCH64_P32_MOVW_UABS_G1";
              break;
            case 8u:
              result = "R_AARCH64_P32_MOVW_SABS_G0";
              break;
            case 9u:
              result = "R_AARCH64_P32_LD_PREL_LO19";
              break;
            case 0xAu:
              result = "R_AARCH64_P32_ADR_PREL_LO21";
              break;
            case 0xBu:
              result = "R_AARCH64_P32_ADR_PREL_PG_HI21";
              break;
            case 0xCu:
              result = "R_AARCH64_P32_ADD_ABS_LO12_NC";
              break;
            case 0xDu:
              result = "R_AARCH64_P32_LDST8_ABS_LO12_NC";
              break;
            case 0xEu:
              result = "R_AARCH64_P32_LDST16_ABS_LO12_NC";
              break;
            case 0xFu:
              result = "R_AARCH64_P32_LDST32_ABS_LO12_NC";
              break;
            case 0x10u:
              result = "R_AARCH64_P32_LDST64_ABS_LO12_NC";
              break;
            case 0x11u:
              result = "R_AARCH64_P32_LDST128_ABS_LO12_NC";
              break;
            case 0x12u:
              result = "R_AARCH64_P32_TSTBR14";
              break;
            case 0x13u:
              result = "R_AARCH64_P32_CONDBR19";
              break;
            case 0x14u:
              result = "R_AARCH64_P32_JUMP26";
              break;
            case 0x15u:
              result = "R_AARCH64_P32_CALL26";
              break;
            case 0x16u:
              result = "R_AARCH64_P32_MOVW_PREL_G0";
              break;
            case 0x17u:
              result = "R_AARCH64_P32_MOVW_PREL_G0_NC";
              break;
            case 0x18u:
              result = "R_AARCH64_P32_MOVW_PREL_G1";
              break;
            case 0x19u:
              result = "R_AARCH64_P32_GOT_LD_PREL19";
              break;
            case 0x1Au:
              result = "R_AARCH64_P32_ADR_GOT_PAGE";
              break;
            case 0x1Bu:
              result = "R_AARCH64_P32_LD32_GOT_LO12_NC";
              break;
            case 0x1Cu:
              result = "R_AARCH64_P32_LD32_GOTPAGE_LO14";
              break;
            case 0x1Du:
              result = "R_AARCH64_P32_PLT32";
              break;
            case 0x50u:
              result = "R_AARCH64_P32_TLSGD_ADR_PREL21";
              break;
            case 0x51u:
              result = "R_AARCH64_P32_TLSGD_ADR_PAGE21";
              break;
            case 0x52u:
              result = "R_AARCH64_P32_TLSGD_ADD_LO12_NC";
              break;
            case 0x53u:
              result = "R_AARCH64_P32_TLSLD_ADR_PREL21";
              break;
            case 0x54u:
              result = "R_AARCH64_P32_TLSLD_ADR_PAGE21";
              break;
            case 0x55u:
              result = "R_AARCH64_P32_TLSLD_ADD_LO12_NC";
              break;
            case 0x56u:
              result = "R_AARCH64_P32_TLSLD_LD_PREL19";
              break;
            case 0x57u:
              result = "R_AARCH64_P32_TLSLD_MOVW_DTPREL_G1";
              break;
            case 0x58u:
              result = "R_AARCH64_P32_TLSLD_MOVW_DTPREL_G0";
              break;
            case 0x59u:
              result = "R_AARCH64_P32_TLSLD_MOVW_DTPREL_G0_NC";
              break;
            case 0x5Au:
              result = "R_AARCH64_P32_TLSLD_ADD_DTPREL_HI12";
              break;
            case 0x5Bu:
              result = "R_AARCH64_P32_TLSLD_ADD_DTPREL_LO12";
              break;
            case 0x5Cu:
              result = "R_AARCH64_P32_TLSLD_ADD_DTPREL_LO12_NC";
              break;
            case 0x5Du:
              result = "R_AARCH64_P32_TLSLD_LDST8_DTPREL_LO12";
              break;
            case 0x5Eu:
              result = "R_AARCH64_P32_TLSLD_LDST8_DTPREL_LO12_NC";
              break;
            case 0x5Fu:
              result = "R_AARCH64_P32_TLSLD_LDST16_DTPREL_LO12";
              break;
            case 0x60u:
              result = "R_AARCH64_P32_TLSLD_LDST16_DTPREL_LO12_NC";
              break;
            case 0x61u:
              result = "R_AARCH64_P32_TLSLD_LDST32_DTPREL_LO12";
              break;
            case 0x62u:
              result = "R_AARCH64_P32_TLSLD_LDST32_DTPREL_LO12_NC";
              break;
            case 0x63u:
              result = "R_AARCH64_P32_TLSLD_LDST64_DTPREL_LO12";
              break;
            case 0x64u:
              result = "R_AARCH64_P32_TLSLD_LDST64_DTPREL_LO12_NC";
              break;
            case 0x65u:
              result = "R_AARCH64_P32_TLSLD_LDST128_DTPREL_LO12";
              break;
            case 0x66u:
              result = "R_AARCH64_P32_TLSLD_LDST128_DTPREL_LO12_NC";
              break;
            case 0x67u:
              result = "R_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21";
              break;
            case 0x68u:
              result = "R_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC";
              break;
            case 0x69u:
              result = "R_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19";
              break;
            case 0x6Au:
              result = "R_AARCH64_P32_TLSLE_MOVW_TPREL_G1";
              break;
            case 0x6Bu:
              result = "R_AARCH64_P32_TLSLE_MOVW_TPREL_G0";
              break;
            case 0x6Cu:
              result = "R_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC";
              break;
            case 0x6Du:
              result = "R_AARCH64_P32_TLSLE_ADD_TPREL_HI12";
              break;
            case 0x6Eu:
              result = "R_AARCH64_P32_TLSLE_ADD_TPREL_LO12";
              break;
            case 0x6Fu:
              result = "R_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC";
              break;
            case 0x70u:
              result = "R_AARCH64_P32_TLSLE_LDST8_TPREL_LO12";
              break;
            case 0x71u:
              result = "R_AARCH64_P32_TLSLE_LDST8_TPREL_LO12_NC";
              break;
            case 0x72u:
              result = "R_AARCH64_P32_TLSLE_LDST16_TPREL_LO12";
              break;
            case 0x73u:
              result = "R_AARCH64_P32_TLSLE_LDST16_TPREL_LO12_NC";
              break;
            case 0x74u:
              result = "R_AARCH64_P32_TLSLE_LDST32_TPREL_LO12";
              break;
            case 0x75u:
              result = "R_AARCH64_P32_TLSLE_LDST32_TPREL_LO12_NC";
              break;
            case 0x76u:
              result = "R_AARCH64_P32_TLSLE_LDST64_TPREL_LO12";
              break;
            case 0x77u:
              result = "R_AARCH64_P32_TLSLE_LDST64_TPREL_LO12_NC";
              break;
            case 0x78u:
              result = "R_AARCH64_P32_TLSLE_LDST128_TPREL_LO12";
              break;
            case 0x79u:
              result = "R_AARCH64_P32_TLSLE_LDST128_TPREL_LO12_NC";
              break;
            case 0x7Au:
              result = "R_AARCH64_P32_TLSDESC_LD_PREL19";
              break;
            case 0x7Bu:
              result = "R_AARCH64_P32_TLSDESC_ADR_PREL21";
              break;
            case 0x7Cu:
              result = "R_AARCH64_P32_TLSDESC_ADR_PAGE21";
              break;
            case 0x7Du:
              result = "R_AARCH64_P32_TLSDESC_LD32_LO12";
              break;
            case 0x7Eu:
              result = "R_AARCH64_P32_TLSDESC_ADD_LO12";
              break;
            case 0x7Fu:
              result = "R_AARCH64_P32_TLSDESC_CALL";
              break;
            case 0xB4u:
              result = "R_AARCH64_P32_COPY";
              break;
            case 0xB5u:
              result = "R_AARCH64_P32_GLOB_DAT";
              break;
            case 0xB6u:
              result = "R_AARCH64_P32_JUMP_SLOT";
              break;
            case 0xB7u:
              result = "R_AARCH64_P32_RELATIVE";
              break;
            case 0xB8u:
              result = "R_AARCH64_P32_TLS_DTPREL";
              break;
            case 0xB9u:
              result = "R_AARCH64_P32_TLS_DTPMOD";
              break;
            case 0xBAu:
              result = "R_AARCH64_P32_TLS_TPREL";
              break;
            case 0xBBu:
              result = "R_AARCH64_P32_TLSDESC";
              break;
            case 0xBCu:
              result = "R_AARCH64_P32_IRELATIVE";
              break;
            case 0x101u:
              result = "R_AARCH64_ABS64";
              break;
            case 0x102u:
              result = "R_AARCH64_ABS32";
              break;
            case 0x103u:
              result = "R_AARCH64_ABS16";
              break;
            case 0x104u:
              result = "R_AARCH64_PREL64";
              break;
            case 0x105u:
              result = "R_AARCH64_PREL32";
              break;
            case 0x106u:
              result = "R_AARCH64_PREL16";
              break;
            case 0x107u:
              result = "R_AARCH64_MOVW_UABS_G0";
              break;
            case 0x108u:
              result = "R_AARCH64_MOVW_UABS_G0_NC";
              break;
            case 0x109u:
              result = "R_AARCH64_MOVW_UABS_G1";
              break;
            case 0x10Au:
              result = "R_AARCH64_MOVW_UABS_G1_NC";
              break;
            case 0x10Bu:
              result = "R_AARCH64_MOVW_UABS_G2";
              break;
            case 0x10Cu:
              result = "R_AARCH64_MOVW_UABS_G2_NC";
              break;
            case 0x10Du:
              result = "R_AARCH64_MOVW_UABS_G3";
              break;
            case 0x10Eu:
              result = "R_AARCH64_MOVW_SABS_G0";
              break;
            case 0x10Fu:
              result = "R_AARCH64_MOVW_SABS_G1";
              break;
            case 0x110u:
              result = "R_AARCH64_MOVW_SABS_G2";
              break;
            case 0x111u:
              result = "R_AARCH64_LD_PREL_LO19";
              break;
            case 0x112u:
              result = "R_AARCH64_ADR_PREL_LO21";
              break;
            case 0x113u:
              result = "R_AARCH64_ADR_PREL_PG_HI21";
              break;
            case 0x114u:
              result = "R_AARCH64_ADR_PREL_PG_HI21_NC";
              break;
            case 0x115u:
              result = "R_AARCH64_ADD_ABS_LO12_NC";
              break;
            case 0x116u:
              result = "R_AARCH64_LDST8_ABS_LO12_NC";
              break;
            case 0x117u:
              result = "R_AARCH64_TSTBR14";
              break;
            case 0x118u:
              result = "R_AARCH64_CONDBR19";
              break;
            case 0x11Au:
              result = "R_AARCH64_JUMP26";
              break;
            case 0x11Bu:
              result = "R_AARCH64_CALL26";
              break;
            case 0x11Cu:
              result = "R_AARCH64_LDST16_ABS_LO12_NC";
              break;
            case 0x11Du:
              result = "R_AARCH64_LDST32_ABS_LO12_NC";
              break;
            case 0x11Eu:
              result = "R_AARCH64_LDST64_ABS_LO12_NC";
              break;
            case 0x11Fu:
              result = "R_AARCH64_MOVW_PREL_G0";
              break;
            case 0x120u:
              result = "R_AARCH64_MOVW_PREL_G0_NC";
              break;
            case 0x121u:
              result = "R_AARCH64_MOVW_PREL_G1";
              break;
            case 0x122u:
              result = "R_AARCH64_MOVW_PREL_G1_NC";
              break;
            case 0x123u:
              result = "R_AARCH64_MOVW_PREL_G2";
              break;
            case 0x124u:
              result = "R_AARCH64_MOVW_PREL_G2_NC";
              break;
            case 0x125u:
              result = "R_AARCH64_MOVW_PREL_G3";
              break;
            case 0x12Bu:
              result = "R_AARCH64_LDST128_ABS_LO12_NC";
              break;
            case 0x12Cu:
              result = "R_AARCH64_MOVW_GOTOFF_G0";
              break;
            case 0x12Du:
              result = "R_AARCH64_MOVW_GOTOFF_G0_NC";
              break;
            case 0x12Eu:
              result = "R_AARCH64_MOVW_GOTOFF_G1";
              break;
            case 0x12Fu:
              result = "R_AARCH64_MOVW_GOTOFF_G1_NC";
              break;
            case 0x130u:
              result = "R_AARCH64_MOVW_GOTOFF_G2";
              break;
            case 0x131u:
              result = "R_AARCH64_MOVW_GOTOFF_G2_NC";
              break;
            case 0x132u:
              result = "R_AARCH64_MOVW_GOTOFF_G3";
              break;
            case 0x133u:
              result = "R_AARCH64_GOTREL64";
              break;
            case 0x134u:
              result = "R_AARCH64_GOTREL32";
              break;
            case 0x135u:
              result = "R_AARCH64_GOT_LD_PREL19";
              break;
            case 0x136u:
              result = "R_AARCH64_LD64_GOTOFF_LO15";
              break;
            case 0x137u:
              result = "R_AARCH64_ADR_GOT_PAGE";
              break;
            case 0x138u:
              result = "R_AARCH64_LD64_GOT_LO12_NC";
              break;
            case 0x139u:
              result = "R_AARCH64_LD64_GOTPAGE_LO15";
              break;
            case 0x13Au:
              result = "R_AARCH64_PLT32";
              break;
            default:
              return "Unknown";
          }
        }

        return result;
      }

      if (this != 195)
      {
        return "Unknown";
      }
    }

    else if (this != 93)
    {
      if (this == 94)
      {
        if (a2 < 0x39)
        {
          v2 = off_279EFEC30;
          return v2[a2];
        }

        return "Unknown";
      }

      if (this != 105 || a2 >= 0xB)
      {
        return "Unknown";
      }

      v2 = off_279EFE560;
      return v2[a2];
    }

    if (a2 < 0x6A)
    {
      v2 = off_279EFCE48;
      return v2[a2];
    }

    return "Unknown";
  }

  if (this <= 19)
  {
    if (this > 5)
    {
      if (this == 6)
      {
LABEL_55:
        if (a2 >= 0x2C)
        {
          return "Unknown";
        }

        v3 = off_279EFC010;
        return v3[a2];
      }

      if (this == 8)
      {
        if (a2 >= 0xFA)
        {
          return "Unknown";
        }

        v3 = off_279EFC170;
        return v3[a2];
      }

      if (this != 18)
      {
        return "Unknown";
      }
    }

    else if (this != 2)
    {
      if (this != 3)
      {
        if (this != 4 || a2 >= 0x2B)
        {
          return "Unknown";
        }

        v3 = off_279EFBD60;
        return v3[a2];
      }

      goto LABEL_55;
    }

LABEL_40:
    if (a2 < 0x55)
    {
      v2 = off_279EFE1E8;
      return v2[a2];
    }

    return "Unknown";
  }

  if (this > 39)
  {
    if (this <= 61)
    {
      if (this == 40)
      {
        if (a2 < 0xA1)
        {
          v2 = off_279EFC940;
          return v2[a2];
        }

        return "Unknown";
      }

      if (this != 43)
      {
        return "Unknown";
      }

      goto LABEL_40;
    }

    if (this != 62)
    {
      if (this != 83 || a2 >= 0x24)
      {
        return "Unknown";
      }

      v2 = off_279EFD198;
      return v2[a2];
    }

    if (a2 >= 0x2B)
    {
      return "Unknown";
    }

    v3 = off_279EFBEB8;
    return v3[a2];
  }

  if (this != 20)
  {
    if (this == 21)
    {
      if (a2 < 0xFD)
      {
        v2 = off_279EFD610;
        return v2[a2];
      }

      return "Unknown";
    }

    if (this != 22 || a2 >= 0x42)
    {
      return "Unknown";
    }

    v2 = off_279EFDFD8;
    return v2[a2];
  }

  if (a2 > 247)
  {
    if (a2 > 249)
    {
      switch(a2)
      {
        case 0xFAu:
          return "R_PPC_REL16_LO";
        case 0xFBu:
          return "R_PPC_REL16_HI";
        case 0xFCu:
          return "R_PPC_REL16_HA";
      }

      return "Unknown";
    }

    if (a2 == 248)
    {
      return "R_PPC_IRELATIVE";
    }

    else
    {
      return "R_PPC_REL16";
    }
  }

  else
  {
    result = "R_PPC_NONE";
    switch(a2)
    {
      case 0u:
        return result;
      case 1u:
        result = "R_PPC_ADDR32";
        break;
      case 2u:
        result = "R_PPC_ADDR24";
        break;
      case 3u:
        result = "R_PPC_ADDR16";
        break;
      case 4u:
        result = "R_PPC_ADDR16_LO";
        break;
      case 5u:
        result = "R_PPC_ADDR16_HI";
        break;
      case 6u:
        result = "R_PPC_ADDR16_HA";
        break;
      case 7u:
        result = "R_PPC_ADDR14";
        break;
      case 8u:
        result = "R_PPC_ADDR14_BRTAKEN";
        break;
      case 9u:
        result = "R_PPC_ADDR14_BRNTAKEN";
        break;
      case 0xAu:
        result = "R_PPC_REL24";
        break;
      case 0xBu:
        result = "R_PPC_REL14";
        break;
      case 0xCu:
        result = "R_PPC_REL14_BRTAKEN";
        break;
      case 0xDu:
        result = "R_PPC_REL14_BRNTAKEN";
        break;
      case 0xEu:
        result = "R_PPC_GOT16";
        break;
      case 0xFu:
        result = "R_PPC_GOT16_LO";
        break;
      case 0x10u:
        result = "R_PPC_GOT16_HI";
        break;
      case 0x11u:
        result = "R_PPC_GOT16_HA";
        break;
      case 0x12u:
        result = "R_PPC_PLTREL24";
        break;
      case 0x13u:
        result = "R_PPC_COPY";
        break;
      case 0x14u:
        result = "R_PPC_GLOB_DAT";
        break;
      case 0x15u:
        result = "R_PPC_JMP_SLOT";
        break;
      case 0x16u:
        result = "R_PPC_RELATIVE";
        break;
      case 0x17u:
        result = "R_PPC_LOCAL24PC";
        break;
      case 0x18u:
        result = "R_PPC_UADDR32";
        break;
      case 0x19u:
        result = "R_PPC_UADDR16";
        break;
      case 0x1Au:
        result = "R_PPC_REL32";
        break;
      case 0x1Bu:
        result = "R_PPC_PLT32";
        break;
      case 0x1Cu:
        result = "R_PPC_PLTREL32";
        break;
      case 0x1Du:
        result = "R_PPC_PLT16_LO";
        break;
      case 0x1Eu:
        result = "R_PPC_PLT16_HI";
        break;
      case 0x1Fu:
        result = "R_PPC_PLT16_HA";
        break;
      case 0x20u:
        result = "R_PPC_SDAREL16";
        break;
      case 0x21u:
        result = "R_PPC_SECTOFF";
        break;
      case 0x22u:
        result = "R_PPC_SECTOFF_LO";
        break;
      case 0x23u:
        result = "R_PPC_SECTOFF_HI";
        break;
      case 0x24u:
        result = "R_PPC_SECTOFF_HA";
        break;
      case 0x25u:
        result = "R_PPC_ADDR30";
        break;
      case 0x43u:
        result = "R_PPC_TLS";
        break;
      case 0x44u:
        result = "R_PPC_DTPMOD32";
        break;
      case 0x45u:
        result = "R_PPC_TPREL16";
        break;
      case 0x46u:
        result = "R_PPC_TPREL16_LO";
        break;
      case 0x47u:
        result = "R_PPC_TPREL16_HI";
        break;
      case 0x48u:
        result = "R_PPC_TPREL16_HA";
        break;
      case 0x49u:
        result = "R_PPC_TPREL32";
        break;
      case 0x4Au:
        result = "R_PPC_DTPREL16";
        break;
      case 0x4Bu:
        result = "R_PPC_DTPREL16_LO";
        break;
      case 0x4Cu:
        result = "R_PPC_DTPREL16_HI";
        break;
      case 0x4Du:
        result = "R_PPC_DTPREL16_HA";
        break;
      case 0x4Eu:
        result = "R_PPC_DTPREL32";
        break;
      case 0x4Fu:
        result = "R_PPC_GOT_TLSGD16";
        break;
      case 0x50u:
        result = "R_PPC_GOT_TLSGD16_LO";
        break;
      case 0x51u:
        result = "R_PPC_GOT_TLSGD16_HI";
        break;
      case 0x52u:
        result = "R_PPC_GOT_TLSGD16_HA";
        break;
      case 0x53u:
        result = "R_PPC_GOT_TLSLD16";
        break;
      case 0x54u:
        result = "R_PPC_GOT_TLSLD16_LO";
        break;
      case 0x55u:
        result = "R_PPC_GOT_TLSLD16_HI";
        break;
      case 0x56u:
        result = "R_PPC_GOT_TLSLD16_HA";
        break;
      case 0x57u:
        result = "R_PPC_GOT_TPREL16";
        break;
      case 0x58u:
        result = "R_PPC_GOT_TPREL16_LO";
        break;
      case 0x59u:
        result = "R_PPC_GOT_TPREL16_HI";
        break;
      case 0x5Au:
        result = "R_PPC_GOT_TPREL16_HA";
        break;
      case 0x5Bu:
        result = "R_PPC_GOT_DTPREL16";
        break;
      case 0x5Cu:
        result = "R_PPC_GOT_DTPREL16_LO";
        break;
      case 0x5Du:
        result = "R_PPC_GOT_DTPREL16_HI";
        break;
      case 0x5Eu:
        result = "R_PPC_GOT_DTPREL16_HA";
        break;
      case 0x5Fu:
        result = "R_PPC_TLSGD";
        break;
      case 0x60u:
        result = "R_PPC_TLSLD";
        break;
      default:
        return "Unknown";
    }
  }

  return result;
}

const char *llvm::object::getELFSectionTypeName(llvm::object *this, int a2)
{
  if (this <= 61)
  {
    if (this == 8 || this == 10)
    {
      if (a2 > 1879048221)
      {
        if (a2 == 1879048222)
        {
          return "SHT_MIPS_DWARF";
        }

        if (a2 == 1879048234)
        {
          return "SHT_MIPS_ABIFLAGS";
        }
      }

      else
      {
        if (a2 == 1879048198)
        {
          return "SHT_MIPS_REGINFO";
        }

        if (a2 == 1879048205)
        {
          return "SHT_MIPS_OPTIONS";
        }
      }
    }

    else if (this == 40 && (a2 - 1879048193) < 5)
    {
      return off_279EFEDF8[a2 - 1879048193];
    }
  }

  else if (this > 163)
  {
    if (this == 164)
    {
      if (a2 == 1879048192)
      {
        return "SHT_HEX_ORDERED";
      }
    }

    else if (this == 243 && a2 == 1879048195)
    {
      return "SHT_RISCV_ATTRIBUTES";
    }
  }

  else if (this == 62)
  {
    if (a2 == 1879048193)
    {
      return "SHT_X86_64_UNWIND";
    }
  }

  else if (this == 105 && a2 == 1879048195)
  {
    return "SHT_MSP430_ATTRIBUTES";
  }

  if (a2 > 1610612737)
  {
    if (a2 > 1879002120)
    {
      if (a2 <= 1879048180)
      {
        if (a2 <= 1879002122)
        {
          if (a2 == 1879002121)
          {
            return "SHT_LLVM_CALL_GRAPH_PROFILE";
          }

          else
          {
            return "SHT_LLVM_BB_ADDR_MAP";
          }
        }

        if (a2 == 1879002123)
        {
          return "SHT_LLVM_OFFLOADING";
        }

        if (a2 == 1879047936)
        {
          return "SHT_ANDROID_RELR";
        }
      }

      else if (a2 <= 1879048188)
      {
        if (a2 == 1879048181)
        {
          return "SHT_GNU_ATTRIBUTES";
        }

        if (a2 == 1879048182)
        {
          return "SHT_GNU_HASH";
        }
      }

      else
      {
        switch(a2)
        {
          case 1879048189:
            return "SHT_GNU_verdef";
          case 1879048190:
            return "SHT_GNU_verneed";
          case 1879048191:
            return "SHT_GNU_versym";
        }
      }
    }

    else
    {
      if (a2 > 1879002115)
      {
        if (a2 <= 1879002117)
        {
          if (a2 == 1879002116)
          {
            return "SHT_LLVM_DEPENDENT_LIBRARIES";
          }

          else
          {
            return "SHT_LLVM_SYMPART";
          }
        }

        else if (a2 == 1879002118)
        {
          return "SHT_LLVM_PART_EHDR";
        }

        else if (a2 == 1879002119)
        {
          return "SHT_LLVM_PART_PHDR";
        }

        else
        {
          return "SHT_LLVM_BB_ADDR_MAP_V0";
        }
      }

      if (a2 > 1879002112)
      {
        if (a2 == 1879002113)
        {
          return "SHT_LLVM_LINKER_OPTIONS";
        }

        if (a2 == 1879002115)
        {
          return "SHT_LLVM_ADDRSIG";
        }
      }

      else
      {
        if (a2 == 1610612738)
        {
          return "SHT_ANDROID_RELA";
        }

        if (a2 == 1879002112)
        {
          return "SHT_LLVM_ODRTAB";
        }
      }
    }

    return "Unknown";
  }

  result = "SHT_NULL";
  switch(a2)
  {
    case 0:
      return result;
    case 1:
      result = "SHT_PROGBITS";
      break;
    case 2:
      result = "SHT_SYMTAB";
      break;
    case 3:
      result = "SHT_STRTAB";
      break;
    case 4:
      result = "SHT_RELA";
      break;
    case 5:
      result = "SHT_HASH";
      break;
    case 6:
      result = "SHT_DYNAMIC";
      break;
    case 7:
      result = "SHT_NOTE";
      break;
    case 8:
      result = "SHT_NOBITS";
      break;
    case 9:
      result = "SHT_REL";
      break;
    case 10:
      result = "SHT_SHLIB";
      break;
    case 11:
      result = "SHT_DYNSYM";
      break;
    case 12:
    case 13:
      return "Unknown";
    case 14:
      result = "SHT_INIT_ARRAY";
      break;
    case 15:
      result = "SHT_FINI_ARRAY";
      break;
    case 16:
      result = "SHT_PREINIT_ARRAY";
      break;
    case 17:
      result = "SHT_GROUP";
      break;
    case 18:
      result = "SHT_SYMTAB_SHNDX";
      break;
    case 19:
      result = "SHT_RELR";
      break;
    default:
      if (a2 != 1610612737)
      {
        return "Unknown";
      }

      result = "SHT_ANDROID_REL";
      break;
  }

  return result;
}

void *llvm::utohexstr@<X0>(unint64_t this@<X0>, int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = &v14;
  if (!this)
  {
    v7 = &v13;
    v13 = 48;
  }

  v8 = a3 != 0;
  if (!a3)
  {
    v8 = this;
  }

  if (v8)
  {
    if (a2)
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    v10 = 1;
    do
    {
      *--v7 = llvm::hexdigit(unsigned int,BOOL)::LUT[this & 0xF] | v9;
      this >>= 4;
      v11 = v10 < a3;
      if (!a3)
      {
        v11 = this;
      }

      ++v10;
    }

    while (v11);
  }

  return std::string::__init_with_size[abi:nn200100]<char *,char *>(a4, v7, &v14, &v14 - v7);
}

void llvm::object::ObjectFile::createELFObjectFile(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1) > 0xFuLL)
  {
    v4 = *(*a1 + 4);
    if (*a1)
    {
LABEL_3:
      v14[0] = "Insufficient alignment";
      v15 = 259;
      LODWORD(v12) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }
  }

  else
  {
    v4 = 0;
    if (*a1)
    {
      goto LABEL_3;
    }
  }

  if (v4 == 2)
  {
    v8 = HIBYTE(v4);
    if (v8 == 2)
    {
      v11 = a1[1];
      v12 = *a1;
      v13 = v11;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,true>>::create(&v12, a2, v14);
      if ((v16 & 1) == 0 || (v7 = v14[0], v14[0] = 0, !v7))
      {
        operator new();
      }
    }

    else
    {
      if (v8 != 1)
      {
        v14[0] = "Invalid ELF data";
        v15 = 259;
        LODWORD(v12) = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      v9 = a1[1];
      v12 = *a1;
      v13 = v9;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,true>>::create(&v12, a2, v14);
      if ((v16 & 1) == 0 || (v7 = v14[0], v14[0] = 0, !v7))
      {
        operator new();
      }
    }
  }

  else
  {
    if (v4 != 1)
    {
      v14[0] = "Invalid ELF class";
      v15 = 259;
      LODWORD(v12) = 3;
      llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
    }

    v5 = HIBYTE(v4);
    if (v5 == 2)
    {
      v10 = a1[1];
      v12 = *a1;
      v13 = v10;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)0,false>>::create(&v12, a2, v14);
      if ((v16 & 1) == 0 || (v7 = v14[0], v14[0] = 0, !v7))
      {
        operator new();
      }
    }

    else
    {
      if (v5 != 1)
      {
        v14[0] = "Invalid ELF data";
        v15 = 259;
        LODWORD(v12) = 3;
        llvm::make_error<llvm::StringError,llvm::Twine const&,llvm::object::object_error>();
      }

      v6 = a1[1];
      v12 = *a1;
      v13 = v6;
      llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>::create(&v12, a2, v14);
      if ((v16 & 1) == 0 || (v7 = v14[0], v14[0] = 0, !v7))
      {
        operator new();
      }
    }
  }

  llvm::Expected<llvm::object::ELFObjectFile<llvm::object::ELFType<(llvm::support::endianness)1,false>>>::~Expected(v14);
  *(a3 + 8) = *(a3 + 8) & 0xFE | 1;
  *a3 = v7;
}

void llvm::object::ELFObjectFileBase::getFeatures(llvm::object::ELFObjectFileBase *this@<X0>, uint64_t a2@<X8>)
{
  v72[2] = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 544))(this);
  if (v4 <= 242)
  {
    if (v4 != 8)
    {
      if (v4 == 40)
      {
        memset(&v71, 0, sizeof(v71));
        llvm::SubtargetFeatures::Split(&v71, "", 0);
        v56.__end_ = "aeabi";
        v56.__end_cap_.__value_ = 5;
        v57 = 0u;
        v58 = 0u;
        v59 = 1065353216;
        v60 = 0u;
        v61 = 0u;
        v62 = 1065353216;
        v63 = 0;
        v64 = &tagData;
        v66 = 0;
        v67 = 0;
        v65 = 52;
        v68 = 1;
        v69 = 0;
        v70 = 0;
        v56.__begin_ = &unk_2883EA4E8;
        (*(*this + 512))(v72, this, &v56);
        v5 = v72[0];
        if (v72[0])
        {
          v72[0] = 0;
          v55.__begin_ = v5;
          llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v55);
          if (v55.__begin_)
          {
            (*(v55.__begin_->__r_.__value_.__l.__data_ + 1))(v55.__begin_);
          }

          memset(&v55, 0, sizeof(v55));
          llvm::SubtargetFeatures::Split(&v55, "", 0);
          if (v72[0])
          {
            (*(*v72[0] + 8))(v72[0]);
          }

          goto LABEL_126;
        }

        v18 = v57;
        v19 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v57, *(&v57 + 1), 6u);
        if (v19)
        {
          v20 = *(v19 + 5) == 10;
        }

        else
        {
          v20 = 0;
        }

        v24 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v18, *(&v18 + 1), 7u);
        if (v24)
        {
          v25 = *(v24 + 5);
          if (v25 == 65)
          {
            v30 = "aclass";
            v31 = 6;
          }

          else
          {
            if (v25 == 77)
            {
              llvm::SubtargetFeatures::AddFeature(&v71, "mclass", 6, 1);
              if (!v20)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v25 != 82)
              {
                goto LABEL_84;
              }

              llvm::SubtargetFeatures::AddFeature(&v71, "rclass", 6, 1);
              if (!v20)
              {
                goto LABEL_84;
              }
            }

            v30 = "hwdiv";
            v31 = 5;
          }

          llvm::SubtargetFeatures::AddFeature(&v71, v30, v31, 1);
        }

LABEL_84:
        v33 = *(&v57 + 1);
        v32 = v57;
        v34 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v57, *(&v57 + 1), 9u);
        if (!v34)
        {
          goto LABEL_90;
        }

        v35 = *(v34 + 5);
        if (v35 == 2)
        {
          v36 = 1;
        }

        else
        {
          if (v35)
          {
            goto LABEL_90;
          }

          llvm::SubtargetFeatures::AddFeature(&v71, "thumb", 5, 0);
          v36 = 0;
        }

        llvm::SubtargetFeatures::AddFeature(&v71, "thumb2", 6, v36);
        v33 = *(&v57 + 1);
        v32 = v57;
LABEL_90:
        v37 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v32, v33, 0xAu);
        if (!v37)
        {
          goto LABEL_101;
        }

        v38 = *(v37 + 5);
        if (v38 > 4)
        {
          if ((v38 - 5) >= 2)
          {
            goto LABEL_101;
          }

          v39 = "vfp4";
        }

        else if ((v38 - 3) < 2)
        {
          v39 = "vfp3";
        }

        else
        {
          if (!v38)
          {
            llvm::SubtargetFeatures::AddFeature(&v71, "vfp2sp", 6, 0);
            llvm::SubtargetFeatures::AddFeature(&v71, "vfp3d16sp", 9, 0);
            v39 = "vfp4d16sp";
            v40 = 9;
            v41 = 0;
            goto LABEL_100;
          }

          if (v38 != 2)
          {
            goto LABEL_101;
          }

          v39 = "vfp2";
        }

        v40 = 4;
        v41 = 1;
LABEL_100:
        llvm::SubtargetFeatures::AddFeature(&v71, v39, v40, v41);
LABEL_101:
        v42 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v57, *(&v57 + 1), 0xCu);
        if (!v42)
        {
          goto LABEL_110;
        }

        v43 = *(v42 + 5);
        if (v43 == 2)
        {
          llvm::SubtargetFeatures::AddFeature(&v71, "neon", 4, 1);
          v44 = "fp16";
        }

        else
        {
          if (v43 != 1)
          {
            if (v43)
            {
              goto LABEL_110;
            }

            llvm::SubtargetFeatures::AddFeature(&v71, "neon", 4, 0);
            v44 = "fp16";
            v45 = 0;
LABEL_109:
            llvm::SubtargetFeatures::AddFeature(&v71, v44, 4, v45);
LABEL_110:
            v46 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v57, *(&v57 + 1), 0x30u);
            if (!v46)
            {
              goto LABEL_119;
            }

            v47 = *(v46 + 5);
            if (v47 == 2)
            {
              v48 = "mve.fp";
              v49 = 6;
            }

            else
            {
              if (v47 != 1)
              {
                if (v47)
                {
                  goto LABEL_119;
                }

                llvm::SubtargetFeatures::AddFeature(&v71, "mve", 3, 0);
                v48 = "mve.fp";
                v49 = 6;
                v50 = 0;
LABEL_118:
                llvm::SubtargetFeatures::AddFeature(&v71, v48, v49, v50);
LABEL_119:
                v51 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v57, *(&v57 + 1), 0x2Cu);
                if (v51)
                {
                  v52 = *(v51 + 5);
                  if (v52 == 1)
                  {
                    v53 = 0;
                    goto LABEL_124;
                  }

                  if (v52 == 2)
                  {
                    v53 = 1;
LABEL_124:
                    llvm::SubtargetFeatures::AddFeature(&v71, "hwdiv", 5, v53);
                    llvm::SubtargetFeatures::AddFeature(&v71, "hwdiv-arm", 9, v53);
                  }
                }

                v55 = v71;
                memset(&v71, 0, sizeof(v71));
LABEL_126:
                llvm::ELFAttributeParser::~ELFAttributeParser(&v56);
                v56.__begin_ = &v71;
                std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v56);
                *(a2 + 24) &= ~1u;
                *a2 = v55;
                memset(&v55, 0, sizeof(v55));
                v54 = &v55;
LABEL_130:
                v56.__begin_ = v54;
                v29 = &v56;
                goto LABEL_131;
              }

              llvm::SubtargetFeatures::AddFeature(&v71, "mve.fp", 6, 0);
              v48 = "mve";
              v49 = 3;
            }

            v50 = 1;
            goto LABEL_118;
          }

          v44 = "neon";
        }

        v45 = 1;
        goto LABEL_109;
      }

      goto LABEL_15;
    }

    memset(&v56, 0, sizeof(v56));
    llvm::SubtargetFeatures::Split(&v56, "", 0);
    v9 = (*(*this + 528))(this);
    v10 = (v9 >> 28) ^ 8;
    if (v10 <= 9)
    {
      if (v10 <= 1)
      {
        if (v10)
        {
          v17 = "mips32r6";
        }

        else
        {
          v17 = "mips64r2";
        }

        v23 = 8;
        goto LABEL_70;
      }

      if (v10 != 2)
      {
        if (v10 == 8)
        {
LABEL_71:
          if ((v9 & 0xFF0000) != 0)
          {
            llvm::SubtargetFeatures::AddFeature(&v56, "cnmips", 6, 1);
          }

          if ((v9 & 0x4000000) != 0)
          {
            llvm::SubtargetFeatures::AddFeature(&v56, "mips16", 6, 1);
          }

          if ((v9 & 0x2000000) == 0)
          {
            goto LABEL_78;
          }

          v7 = "micromips";
          v8 = 9;
          goto LABEL_77;
        }

        v17 = "mips2";
LABEL_68:
        v23 = 5;
        goto LABEL_70;
      }

      v17 = "mips64r6";
      v23 = 8;
    }

    else
    {
      if (v10 <= 12)
      {
        if (v10 != 10)
        {
          v11 = v10 == 11;
          v12 = "mips4";
          v13 = 5;
          v14 = "mips5";
          v15 = 5;
LABEL_35:
          if (v11)
          {
            v17 = v12;
          }

          else
          {
            v17 = v14;
          }

          if (v11)
          {
            v23 = v13;
          }

          else
          {
            v23 = v15;
          }

          goto LABEL_70;
        }

        v17 = "mips3";
        goto LABEL_68;
      }

      if (v10 != 13)
      {
        v11 = v10 == 14;
        v12 = "mips64";
        v13 = 6;
        v14 = "mips32r2";
        v15 = 8;
        goto LABEL_35;
      }

      v17 = "mips32";
      v23 = 6;
    }

LABEL_70:
    llvm::SubtargetFeatures::AddFeature(&v56, v17, v23, 1);
    goto LABEL_71;
  }

  if (v4 == 243)
  {
    memset(&v71, 0, sizeof(v71));
    llvm::SubtargetFeatures::Split(&v71, "", 0);
    if ((*(*this + 528))(this))
    {
      llvm::SubtargetFeatures::AddFeature(&v71, "c", 1, 1);
    }

    v56.__end_ = "riscv";
    v56.__end_cap_.__value_ = 5;
    v57 = 0u;
    v58 = 0u;
    v59 = 1065353216;
    v60 = 0u;
    v61 = 0u;
    v62 = 1065353216;
    v63 = 0;
    v64 = &tagData;
    v66 = 0;
    v67 = 0;
    v65 = 6;
    v68 = 1;
    v69 = 0;
    v70 = 0;
    v56.__begin_ = &unk_2883EB2A0;
    (*(*this + 512))(&v55, this, &v56);
    begin = v55.__begin_;
    if (v55.__begin_)
    {
      *(a2 + 24) |= 1u;
      *a2 = begin;
    }

    else
    {
      if (*(&v60 + 1))
      {
        v21 = vcnt_s8(*(&v60 + 8));
        v21.i16[0] = vaddlv_u8(v21);
        if (v21.u32[0] > 1uLL)
        {
          v22 = 5;
          if (*(&v60 + 1) <= 5uLL)
          {
            v22 = 5u % BYTE8(v60);
          }
        }

        else
        {
          v22 = (DWORD2(v60) - 1) & 5;
        }

        v26 = *(v60 + 8 * v22);
        if (v26)
        {
          for (i = *v26; i; i = *i)
          {
            v28 = i[1];
            if (v28 == 5)
            {
              if (*(i + 4) == 5)
              {
                llvm::RISCVISAInfo::parseNormalizedArchString(i[3], i[4]);
              }
            }

            else
            {
              if (v21.u32[0] > 1uLL)
              {
                if (v28 >= *(&v60 + 1))
                {
                  v28 %= *(&v60 + 1);
                }
              }

              else
              {
                v28 &= *(&v60 + 1) - 1;
              }

              if (v28 != v22)
              {
                break;
              }
            }
          }
        }
      }

      *(a2 + 24) &= ~1u;
      *a2 = v71;
      memset(&v71, 0, sizeof(v71));
    }

    llvm::ELFAttributeParser::~ELFAttributeParser(&v56);
    v54 = &v71;
    goto LABEL_130;
  }

  if (v4 == 258)
  {
    memset(&v56, 0, sizeof(v56));
    llvm::SubtargetFeatures::Split(&v56, "", 0);
    v6 = (*(*this + 528))(this) & 7;
    if (v6 != 2)
    {
      if (v6 != 3)
      {
LABEL_78:
        *(a2 + 24) &= ~1u;
        *a2 = v56;
        memset(&v56, 0, sizeof(v56));
        v71.__begin_ = &v56;
        goto LABEL_79;
      }

      llvm::SubtargetFeatures::AddFeature(&v56, "d", 1, 1);
    }

    v7 = "f";
    v8 = 1;
LABEL_77:
    llvm::SubtargetFeatures::AddFeature(&v56, v7, v8, 1);
    goto LABEL_78;
  }

LABEL_15:
  memset(&v56, 0, sizeof(v56));
  llvm::SubtargetFeatures::Split(&v56, "", 0);
  *(a2 + 24) &= ~1u;
  *a2 = v56;
  memset(&v56, 0, sizeof(v56));
  v71.__begin_ = &v56;
LABEL_79:
  v29 = &v71;
LABEL_131:
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v29);
}

uint64_t llvm::object::ELFObjectFileBase::tryGetCPUName@<X0>(llvm::object::ELFObjectFileBase *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 544))(this);
  if (result == 21)
  {
    v7 = "future";
    v6 = 6;
  }

  else
  {
    if (result != 224)
    {
      v8 = 0;
      *a2 = 0;
      goto LABEL_7;
    }

    result = (*(*this + 528))(this);
    v5 = result - 1;
    v6 = qword_2750C7698[v5];
    v7 = off_279EFEE20[v5];
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  v8 = 1;
LABEL_7:
  *(a2 + 16) = v8;
  return result;
}

void llvm::object::ELFObjectFileBase::setARMSubArch(llvm::object::ELFObjectFileBase *this, llvm::Triple *a2)
{
  if (!*(a2 + 7))
  {
    v32 = v2;
    v33 = v3;
    v17[1] = "aeabi";
    v17[2] = 5;
    v18 = 0u;
    v19 = 0u;
    v20 = 1065353216;
    v21 = 0u;
    v22 = 0u;
    v23 = 1065353216;
    v24 = 0;
    v25 = &tagData;
    v27 = 0;
    v28 = 0;
    v26 = 52;
    v29 = 1;
    v30 = 0;
    v31 = 0;
    v17[0] = &unk_2883EA4E8;
    (*(*this + 512))(&v16);
    v6 = v16;
    if (v16)
    {
      v16 = 0;
      __p.__r_.__value_.__r.__words[0] = v6;
      llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        (*(*__p.__r_.__value_.__l.__data_ + 8))(__p.__r_.__value_.__r.__words[0]);
      }

      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
      if ((*(a2 + 6) - 35) >= 2)
      {
        v7 = "arm";
      }

      else
      {
        v7 = "thumb";
      }

      MEMORY[0x277C69AB0](&__p, v7);
      v8 = v18;
      v9 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v18, *(&v18 + 1), 6u);
      if (v9)
      {
        v10 = "v4";
        switch(*(v9 + 5))
        {
          case 1:
            goto LABEL_33;
          case 2:
            v10 = "v4t";
            goto LABEL_33;
          case 3:
            v10 = "v5t";
            goto LABEL_33;
          case 4:
            v10 = "v5te";
            goto LABEL_33;
          case 5:
            v10 = "v5tej";
            goto LABEL_33;
          case 6:
            v10 = "v6";
            goto LABEL_33;
          case 7:
            v10 = "v6kz";
            goto LABEL_33;
          case 8:
            v10 = "v6t2";
            goto LABEL_33;
          case 9:
            v10 = "v6k";
            goto LABEL_33;
          case 0xA:
            v11 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(v8, *(&v8 + 1), 7u);
            if (v11 && *(v11 + 5) == 77)
            {
              v10 = "v7m";
            }

            else
            {
              v10 = "v7";
            }

            goto LABEL_33;
          case 0xB:
            v10 = "v6m";
            goto LABEL_33;
          case 0xC:
            v10 = "v6sm";
            goto LABEL_33;
          case 0xD:
            v10 = "v7em";
            goto LABEL_33;
          case 0xE:
            v10 = "v8a";
            goto LABEL_33;
          case 0xF:
            v10 = "v8r";
            goto LABEL_33;
          case 0x10:
            v10 = "v8m.base";
            goto LABEL_33;
          case 0x11:
            v10 = "v8m.main";
            goto LABEL_33;
          case 0x15:
            v10 = "v8.1m.main";
            goto LABEL_33;
          case 0x16:
            v10 = "v9a";
LABEL_33:
            std::string::append(&__p, v10);
            break;
          default:
            break;
        }
      }

      v12 = *(this + 2);
      if (v12 <= 0x14 && ((1 << v12) & 0x155800) != 0)
      {
        std::string::append(&__p, "eb");
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      llvm::Triple::setArchName(a2, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    llvm::ELFAttributeParser::~ELFAttributeParser(v17);
  }
}

uint64_t llvm::object::ObjectFile::getStartAddress@<X0>(llvm::object::ObjectFile *this@<X0>, uint64_t a2@<X8>)
{
  *&v4.__val_ = llvm::object::object_category(this);
  result = llvm::errorCodeToError(3, v4, a2);
  *(a2 + 8) |= 1u;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::RISCVISAInfo>>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      (*(*v3 + 1))(v3);
    }
  }

  else if (v3)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy((v3 + 3), v3[4]);
    MEMORY[0x277C69E40](v3, 0x1020C401F42C5C2);
  }

  return a1;
}

llvm::object::GenericBinaryError *llvm::object::GenericBinaryError::GenericBinaryError(llvm::object::GenericBinaryError *this, const llvm::Twine *a2)
{
  *(this + 2) = 0;
  v4 = std::system_category();
  *(this + 2) = v4;
  *this = &unk_2883EEE98;
  llvm::object::object_category(v4);
  *(this + 1) = 3;
  *(this + 2) = llvm::object::object_category(void)::error_category;
  *this = &unk_2883EEE00;
  llvm::Twine::str(a2, this + 24);
  return this;
}

uint64_t llvm::object::GenericBinaryError::GenericBinaryError(uint64_t a1, llvm::Twine *a2, unsigned int a3)
{
  *(a1 + 8) = 0;
  v6 = std::system_category();
  *(a1 + 16) = v6;
  *a1 = &unk_2883EEE98;
  llvm::object::object_category(v6);
  *(a1 + 8) = 3;
  *(a1 + 16) = llvm::object::object_category(void)::error_category;
  *a1 = &unk_2883EEE00;
  llvm::Twine::str(a2, a1 + 24);
  llvm::object::object_category(v7);
  *(a1 + 8) = a3;
  *(a1 + 16) = llvm::object::object_category(void)::error_category;
  return a1;
}

llvm::raw_ostream *llvm::object::GenericBinaryError::log(llvm::object::GenericBinaryError *this, llvm::raw_ostream *a2)
{
  v5 = *(this + 3);
  v3 = this + 24;
  v4 = v5;
  v6 = v3[23];
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = v3[23];
  }

  else
  {
    v8 = *(v3 + 1);
  }

  return llvm::raw_ostream::write(a2, v7, v8);
}

void (***llvm::object::object_category(llvm::object *this))(_anonymous_namespace_::_object_error_category *__hidden this)
{
  {
  }

  return llvm::object::object_category(void)::error_category;
}

void llvm::object::GenericBinaryError::~GenericBinaryError(void **this)
{
  *this = &unk_2883EEE00;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

{
  *this = &unk_2883EEE00;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  JUMPOUT(0x277C69E40);
}

void anonymous namespace::_object_error_category::~_object_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x277C69E40);
}

void llvm::object::IRObjectFile::~IRObjectFile(llvm::object::IRObjectFile *this)
{
  *this = &unk_2883EEEE8;
  MEMORY[0x277C69E30](*(this + 25), 8);
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }

  llvm::SpecificBumpPtrAllocator<std::pair<std::string,unsigned int>>::DestroyAll(this + 80);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 80);
  v3 = (this + 48);
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

{
  llvm::object::IRObjectFile::~IRObjectFile(this);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::object::IRObjectFile::getSymbolFlags@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::ModuleSymbolTable::getSymbolFlags(a1 + 72, *a2);
  *(a3 + 8) &= ~1u;
  *a3 = result;
  return result;
}

__n128 llvm::object::IRObjectFile::findBitcodeInObject@<Q0>(__n128 *this@<X0>, const llvm::object::ObjectFile *a2@<X1>, __n128 *a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = (*(this->n128_u64[0] + 352))(this, a2);
  v7 = v6;
  v8 = (*(this->n128_u64[0] + 360))(this);
  v17 = v5;
  v18 = v7;
  if (v7 == v9 && v5 == v8)
  {
    goto LABEL_16;
  }

  v11 = v8;
  v12 = v9;
  while (!(*(*v7 + 232))(v7, v5))
  {
    v8 = (*(*v18 + 136))(v18, &v17);
    v5 = v17;
    v7 = v18;
    if (v18 == v12 && v17 == v11)
    {
      goto LABEL_16;
    }
  }

  v8 = (*(*v18 + 176))(&v19);
  v15 = v19;
  if (v21)
  {
    a3[2].n128_u8[0] |= 1u;
    a3->n128_u64[0] = v15;
    return result;
  }

  v16 = v20;
  if (v20 <= 1)
  {
LABEL_16:
    *&v23.__val_ = llvm::object::object_category(v8);
    llvm::errorCodeToError(7, v23, a3);
    a3[2].n128_u8[0] |= 1u;
  }

  else
  {
    a3[2].n128_u8[0] &= ~1u;
    a3->n128_u64[0] = v15;
    a3->n128_u64[1] = v16;
    result = this[2];
    a3[1] = result;
  }

  return result;
}

uint64_t llvm::object::IRObjectFile::create@<X0>(__n128 *a1@<X0>, uint64_t a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v41 = a1[1];
  v6 = llvm::identify_magic(v5, v4);
  if (v6 > 0x1E)
  {
    goto LABEL_31;
  }

  if (((1 << v6) & 0x41000210) == 0)
  {
    if (v6 == 1)
    {
      *&v43 = v5;
      *(&v43 + 1) = v4;
      v44 = v41;
      goto LABEL_9;
    }

LABEL_31:
    *&v52.__val_ = llvm::object::object_category(v6);
    result = llvm::errorCodeToError(2, v52, &v43);
    goto LABEL_32;
  }

  *&v29 = v5;
  *(&v29 + 1) = v4;
  v30 = v41;
  llvm::object::ObjectFile::createObjectFile(&v29, v6, 1, &v46);
  v8 = v46;
  if (v47)
  {
    v46 = 0;
    *&v43 = v8;
    result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v46);
LABEL_32:
    v27 = v43;
    *(a3 + 8) |= 1u;
    *a3 = v27;
    return result;
  }

  llvm::object::IRObjectFile::findBitcodeInObject(v46, v7, &v43);
  v10 = v45;
  result = llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v46);
  if (v10)
  {
    goto LABEL_32;
  }

LABEL_9:
  v29 = v43;
  v30 = v44;
  llvm::getBitcodeModuleList(&v29, &v41);
  if (v42)
  {
    v11 = v41.n128_u64[0];
    v41.n128_u64[0] = 0;
    *(a3 + 8) |= 1u;
    *a3 = v11;
  }

  else
  {
    __src[0] = 0;
    __src[1] = 0;
    v34 = 0;
    v13 = v41.n128_u64[1];
    v12 = v41.n128_u64[0];
    if (v41.n128_u64[0] == v41.n128_u64[1])
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      v29 = *v12;
      v30 = v12[1];
      v31 = v12[2];
      v32 = v12[3];
      memset(v35, 0, sizeof(v35));
      v36 = 0u;
      memset(v37, 0, sizeof(v37));
      v38 = 0;
      llvm::BitcodeModule::getLazyModule(&v29, v35, &v39);
      if (v38 == 1)
      {
        std::__function::__value_func<void ()(llvm::Metadata **,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](v37);
      }

      if (BYTE8(v36) == 1)
      {
        std::__function::__value_func<void ()(llvm::Value *,unsigned int,std::function<llvm::Type * ()>,std::function<unsigned int ()(unsigned int,unsigned int)>)>::~__value_func[abi:nn200100](&v35[2] + 8);
      }

      if (LOBYTE(v35[2]) == 1)
      {
        std::__function::__value_func<std::optional<std::string> ()(llvm::StringRef,llvm::StringRef)>::~__value_func[abi:nn200100](v35);
      }

      if (v40)
      {
        break;
      }

      v14 = __src[1];
      if (__src[1] >= v34)
      {
        v17 = __src[0];
        v18 = __src[1] - __src[0];
        v19 = (__src[1] - __src[0]) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v21 = v34 - __src[0];
        if ((v34 - __src[0]) >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
        v23 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v22)
        {
          v23 = v20;
        }

        v50 = __src;
        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(__src, v23);
        }

        v24 = v39;
        v39 = 0;
        *(8 * v19) = v24;
        v16 = (8 * v19 + 8);
        memcpy(0, v17, v18);
        v25 = __src[0];
        v26 = v34;
        __src[0] = 0;
        __src[1] = v16;
        v34 = 0;
        v48 = v25;
        v49 = v26;
        v46 = v25;
        v47 = v25;
        std::__split_buffer<std::unique_ptr<llvm::Module>>::~__split_buffer(&v46);
      }

      else
      {
        v15 = v39;
        v39 = 0;
        *__src[1] = v15;
        v16 = v14 + 8;
      }

      __src[1] = v16;
      llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v39);
      v12 += 4;
      if (v12 == v13)
      {
        goto LABEL_30;
      }
    }

    v28 = v39;
    v39 = 0;
    *(a3 + 8) |= 1u;
    *a3 = v28;
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v39);
    *&v29 = __src;
    std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&v29);
  }

  return llvm::Expected<std::vector<llvm::orc::ExecutorSymbolDef>>::~Expected(&v41);
}