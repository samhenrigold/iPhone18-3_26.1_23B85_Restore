BOOL mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v11 = *(a1 + 128);
    v10 = *(a1 + 136);
    v12 = a1;
    while (v10 != v11)
    {
      v10 = (v10 - 8);
      mlir::OpPassManager::~OpPassManager(v10);
    }

    a1 = v12;
    *(v12 + 136) = v11;
    *(v12 + 176) = 0;
  }

  *(a1 + 256) = 1;
  v14 = a1;
  v15[0] = a1 + 264;
  v16[0] = a3;
  v16[1] = a4;
  v15[1] = a1;
  v15[2] = v16;
  v15[3] = &v14;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::OpPassManager>,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::OpPassManager> &,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v15) & 1) == 0;
}

void mlir::Pass::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(void *a1)
{
  v1 = llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(a1);

  operator delete(v1);
}

void llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::setDefault(void *a1)
{
  v2 = (a1 + 16);
  v3 = a1[16];
  a1[24] = a1[23];
    ;
  }

  a1[17] = v3;
  v5 = a1[19];
  v6 = a1[20];
  while (v5 != v6)
  {
    v7 = *(v5 + 8);
    if (v3 >= a1[18])
    {
      v3 = std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>(v2, v7);
    }

    else
    {
      mlir::OpPassManager::OpPassManager(v3++, v7);
    }

    a1[17] = v3;
    v5 += 16;
  }
}

void *mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::print(void *result, llvm::raw_ostream *this)
{
  if (result[17] == result[16])
  {
    return result;
  }

  v3 = result;
  v4 = result[2];
  v5 = result[3];
  result = *(this + 4);
  if (v5 > *(this + 3) - result)
  {
    v6 = llvm::raw_ostream::write(this, v4, v5);
    result = *(v6 + 4);
    if (*(v6 + 3) - result > 1uLL)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(v6, "={", 2uLL);
    v7 = v3[16];
    v8 = v3[17];
    if (v7 == v8)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = llvm::cl::parser<mlir::OpPassManager>::print(this, v7);
    for (i = v7 + 1; i != v8; ++i)
    {
      while (1)
      {
        v11 = *(this + 4);
        if (*(this + 3) == v11)
        {
          break;
        }

        *v11 = 44;
        ++*(this + 4);
        result = llvm::cl::parser<mlir::OpPassManager>::print(this, i++);
        if (i == v8)
        {
          goto LABEL_15;
        }
      }

      llvm::raw_ostream::write(this, ",", 1uLL);
      result = llvm::cl::parser<mlir::OpPassManager>::print(this, i);
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v9 = v5;
    memcpy(result, v4, v5);
    result = (*(this + 4) + v9);
    *(this + 4) = result;
  }

  v6 = this;
  if (*(this + 3) - result <= 1uLL)
  {
    goto LABEL_9;
  }

LABEL_4:
  *result = 31549;
  *(v6 + 4) += 2;
  v7 = v3[16];
  v8 = v3[17];
  if (v7 != v8)
  {
    goto LABEL_10;
  }

LABEL_15:
  v12 = *(this + 4);
  if (*(this + 3) == v12)
  {

    return llvm::raw_ostream::write(this, "}", 1uLL);
  }

  else
  {
    *v12 = 125;
    ++*(this + 4);
  }

  return result;
}

void mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>(a1 + 128, *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 256) = 1;
  *(a1 + 256) = *(a2 + 8);
}

void non-virtual thunk tomlir::Pass::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  v1 = llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list((a1 - 248));

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>(a1 - 120, *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
}

uint64_t llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 1;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v14 = *(a1 + 72);
  if (v14 >= *(a1 + 76))
  {
    v16 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v14 + 1, 8);
    GeneralCategory = v16;
    LODWORD(v14) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v14) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *a1 = &unk_1F5B0B3D8;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = &unk_1F5B01CF0;
  *(a1 + 216) = &unk_1F5B0B440;
  *(a1 + 240) = a1 + 216;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v11, v12, v13);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(void *a1)
{
  v1 = llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(a1);

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::~ListOption(uint64_t a1)
{
  v1 = llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list((a1 - 248));

  operator delete(v1);
}

uint64_t llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5, size_t a6)
{
  mlir::InFlightDiagnostic::abandon(&v29);
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v13 = *(a1 + 128);
      ;
    }

    *(a1 + 136) = v13;
    *(a1 + 176) = 0;
  }

  v14 = llvm::cl::parser<mlir::OpPassManager>::parse((a1 + 208), a1, a3, a4, a5, a6, &v29);
  if ((v14 & 1) == 0)
  {
    v15 = *(a1 + 136);
    if (v15 >= *(a1 + 144))
    {
      *(a1 + 136) = std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>((a1 + 128), v29);
      *(a1 + 12) = a2;
      v17 = *(a1 + 192);
      v16 = *(a1 + 200);
      if (v17 >= v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(a1 + 136) = mlir::OpPassManager::OpPassManager(v15, v29) + 1;
      *(a1 + 12) = a2;
      v17 = *(a1 + 192);
      v16 = *(a1 + 200);
      if (v17 >= v16)
      {
LABEL_8:
        v18 = *(a1 + 184);
        v19 = v17 - v18;
        v20 = (v17 - v18) >> 2;
        v21 = v20 + 1;
        if ((v20 + 1) >> 62)
        {
          goto LABEL_26;
        }

        v22 = v16 - v18;
        if (v22 >> 1 > v21)
        {
          v21 = v22 >> 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v23 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (v23 >> 62)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v24 = operator new(4 * v23);
        }

        else
        {
          v24 = 0;
        }

        v26 = &v24[4 * v20];
        *v26 = a2;
        v25 = v26 + 4;
        memcpy(v24, v18, v19);
        *(a1 + 184) = v24;
        *(a1 + 192) = v25;
        *(a1 + 200) = &v24[4 * v23];
        if (v18)
        {
          operator delete(v18);
        }

LABEL_22:
        *(a1 + 192) = v25;
        v27 = *(a1 + 240);
        if (v27)
        {
          (*(*v27 + 48))(v27, &v29);
          goto LABEL_24;
        }

        std::__throw_bad_function_call[abi:nn200100]();
LABEL_26:
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }
    }

    *v17 = a2;
    v25 = v17 + 4;
    goto LABEL_22;
  }

LABEL_24:
  llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::~ParsedPassManager(&v29);
  return v14;
}

void llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(void *a1)
{
  v1 = llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(a1);

  operator delete(v1);
}

void *std::__function::__func<llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::{lambda(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)#1},std::allocator<llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::{lambda(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)#1}>,void ()(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B0B440;
  return result;
}

uint64_t std::__function::__func<llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::{lambda(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)#1},std::allocator<llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::{lambda(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)#1}>,void ()(llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09814CFLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09814CFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09814CFLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09814CFLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

mlir::OpPassManager *std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>(mlir::OpPassManager **a1, const mlir::detail::OpPassManagerImpl **a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

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

  if (v6)
  {
    if (v6 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = a2;
    v8 = operator new(8 * v6);
    a2 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[8 * v2];
  v10 = &v8[8 * v6];
  mlir::OpPassManager::OpPassManager(v9, a2);
  v11 = (v9 + 1);
  v12 = *a1;
  v13 = a1[1];
  v14 = (v9 + *a1 - v13);
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = mlir::OpPassManager::OpPassManager(v16, v15++);
      v16 = v17 + 1;
    }

    while (v15 != v13);
    do
    {
      mlir::OpPassManager::~OpPassManager(v12);
      v12 = (v12 + 8);
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = v10;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void *llvm::cl::list<mlir::OpPassManager,BOOL,llvm::cl::parser<mlir::OpPassManager>>::~list(void *a1)
{
  *a1 = &unk_1F5B0B3D8;
  v2 = a1 + 27;
  v3 = a1[30];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[23];
    if (v4)
    {
LABEL_5:
      a1[24] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[23];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[19];
  if (v5)
  {
    v6 = a1[20];
    v7 = a1[19];
    if (v6 != v5)
    {
      do
      {
        v6 = llvm::cl::OptionValue<mlir::OpPassManager>::~OptionValue(v6 - 16);
      }

      while (v6 != v5);
      v7 = a1[19];
    }

    a1[20] = v5;
    operator delete(v7);
  }

  v8 = a1[16];
  if (v8)
  {
    v9 = a1[17];
    v10 = a1[16];
    if (v9 != v8)
    {
      do
      {
        mlir::OpPassManager::~OpPassManager((v9 - 8));
      }

      while (v9 != v8);
      v10 = a1[16];
    }

    a1[17] = v8;
    operator delete(v10);
  }

  *a1 = &unk_1F5B3E1D8;
  v11 = a1[12];
  if (v11 != a1[11])
  {
    free(v11);
  }

  v12 = a1[8];
  if (v12 != a1 + 10)
  {
    free(v12);
  }

  return a1;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::OpPassManager>,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::OpPassManager> &,mlir::detail::PassOptions::ListOption<mlir::OpPassManager,llvm::cl::parser<mlir::OpPassManager>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::OpPassManager const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, _BYTE *a2, size_t a3)
{
  mlir::InFlightDiagnostic::abandon(&v11);
  if (llvm::cl::parser<mlir::OpPassManager>::parse(*a1, *(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), a2, a3, &v11))
  {
    v6 = 0;
  }

  else
  {
    v7 = **(a1 + 24);
    v8 = *(v7 + 136);
    if (v8 >= *(v7 + 144))
    {
      v9 = std::vector<mlir::OpPassManager>::__emplace_back_slow_path<mlir::OpPassManager const&>((v7 + 128), v11);
    }

    else
    {
      v9 = (mlir::OpPassManager::OpPassManager(v8, v11) + 1);
    }

    *(v7 + 136) = v9;
    v6 = 1;
  }

  llvm::cl::parser<mlir::OpPassManager>::ParsedPassManager::~ParsedPassManager(&v11);
  return v6;
}

void std::vector<mlir::OpPassManager>::__assign_with_size[abi:nn200100]<mlir::OpPassManager const*,mlir::OpPassManager const*>(uint64_t a1, const mlir::detail::OpPassManagerImpl **a2, const mlir::detail::OpPassManagerImpl **a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 <= (v7 - *a1) >> 3)
  {
    v18 = *(a1 + 8);
    v19 = v18 - v8;
    if (a4 <= (v18 - v8) >> 3)
    {
      if (a2 != a3)
      {
        do
        {
          mlir::OpPassManager::operator=(v8++, v5++);
        }

        while (v5 != a3);
        v18 = *(a1 + 8);
      }

      while (v18 != v8)
      {
        v18 = (v18 - 8);
        mlir::OpPassManager::~OpPassManager(v18);
      }

      *(a1 + 8) = v8;
    }

    else
    {
      v20 = (a2 + v19);
      if (v18 != v8)
      {
        do
        {
          mlir::OpPassManager::operator=(v8++, v5++);
          v19 -= 8;
        }

        while (v19);
        v18 = *(a1 + 8);
      }

      v21 = v18;
      if (v20 != a3)
      {
        v21 = v18;
        v22 = v18;
        do
        {
          v23 = mlir::OpPassManager::OpPassManager(v22, v20++);
          v22 = v23 + 1;
          v21 = (v21 + 8);
        }

        while (v20 != a3);
      }

      *(a1 + 8) = v21;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          mlir::OpPassManager::~OpPassManager((v10 - 1));
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 >> 61)
    {
      goto LABEL_30;
    }

    v12 = v7 >> 2;
    if (v7 >> 2 <= a4)
    {
      v12 = a4;
    }

    v13 = v7 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v12;
    }

    if (v14 >> 61)
    {
LABEL_30:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v15 = v14;
    v16 = operator new(8 * v14);
    *a1 = v16;
    *(a1 + 8) = v16;
    for (*(a1 + 16) = &v16[v15]; v5 != a3; v16 = v17 + 1)
    {
      v17 = mlir::OpPassManager::OpPassManager(v16, v5++);
    }

    *(a1 + 8) = v16;
  }
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<unsigned int>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v23[0] = a3;
  v23[1] = a4;
  v26 = a2;
  v27 = 0;
  v8 = llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v23, &v26, a5, a6);
  v9 = v8 + 192;
  *(v8 + 200) = 0;
  *v8 = &unk_1F5AFEF28;
  *(v8 + 192) = &unk_1F5AFEFA8;
  v11 = *(a2 + 21);
  v10 = *(a2 + 22);
  if (v11 >= v10)
  {
    v13 = *(a2 + 20);
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v19 = operator new(8 * v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = &v19[8 * v15];
    *v20 = v9;
    v12 = v20 + 1;
    memcpy(v19, v13, v14);
    *(a2 + 20) = v19;
    *(a2 + 21) = v12;
    *(a2 + 22) = &v19[8 * v18];
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 8;
  }

  *(a2 + 21) = v12;
  v24[0] = &unk_1F5B0B4D0;
  v24[1] = a1;
  v28 = &v26;
  v25 = v24;
  v26 = &unk_1F5B0B4D0;
  v27 = a1;
  std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](&v26, a1 + 160);
  if (v28 != &v26)
  {
    if (v28)
    {
      (*(*v28 + 5))();
    }

    v21 = v25;
    if (v25 != v24)
    {
      goto LABEL_19;
    }

LABEL_22:
    (*(*v21 + 32))(v21);
    return a1;
  }

  (*(*v28 + 4))(v28);
  v21 = v25;
  if (v25 == v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  return a1;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIjEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0B4D0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIjEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0B4D0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIjEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::~__func(uint64_t result)
{
  *result = &unk_1F5B0B550;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::~__func(void **a1)
{
  *a1 = &unk_1F5B0B550;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(a1[1]);
    a1 = v2;
  }

  operator delete(a1);
}

char *std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_1F5B0B550;
  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v5 = result;
    std::string::__init_copy_ctor_external((result + 8), v3, v4);
    return v5;
  }

  else
  {
    *(result + 8) = *(a1 + 8);
    *(result + 3) = *(a1 + 24);
  }

  return result;
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5B0B550;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::operator()(uint64_t a1, mlir::OpPassManager *a2)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  v6 = *(v3 + 23);
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
    v8 = *(v3 + 23);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  v9 = llvm::errs(v3);

  return mlir::parsePassPipeline(v7, v8, a2, v9);
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0,std::allocator<anonymous namespace::InlinerPass::initializeOptions(llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)::$_0>,void ()(mlir::OpPassManager &)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_111InlinerPass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

std::string ***llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager&>(llvm::StringMapImpl *a1, const void *a2, std::string *a3, uint64_t a4, const mlir::detail::OpPassManagerImpl **a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(&a3->__r_.__value_.__r.__words[2] + 1, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(&a3->__r_.__value_.__r.__words[2] + 1, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  a3->__r_.__value_.__s.__data_[v13] = 0;
  *buffer = a3;
  mlir::OpPassManager::OpPassManager(buffer + 1, a5);
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 + 1 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 + 1 == 0;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>(uint64_t a1, std::recursive_mutex **a2, mlir::Operation *a3)
{
  {
    v6 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>();
    v6 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v9 = ((v6 >> 4) ^ (v6 >> 9)) & (v8 - 1);
  v10 = *(v7 + 16 * v9);
  if (v6 != v10)
  {
    v26 = 1;
    while (v10 != -4096)
    {
      v27 = v9 + v26++;
      v9 = v27 & (v8 - 1);
      v10 = *(v7 + 16 * v9);
      if (v6 == v10)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if (a2)
    {
      v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallGraph]";
      v29 = 65;
      v11 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
      if (v29 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v29;
      }

      v13 = &v28[v12];
      v14 = v29 - v12;
      if (v29 - v12 >= 0x12)
      {
        v15 = 18;
      }

      else
      {
        v15 = v29 - v12;
      }

      v16 = &v13[v15];
      v17 = v14 - v15;
      if (v17 >= v17 - 1)
      {
        v18 = v17 - 1;
      }

      else
      {
        v18 = v17;
      }

      if (v18 >= 6)
      {
        if (*v16 == 1919511661 && *(v16 + 4) == 14906)
        {
          v16 += 6;
          v18 -= 6;
        }

        else if (v18 >= 0x17 && *v16 == 0x6F6D796E6F6E6128 && *(v16 + 8) == 0x73656D616E207375 && *(v16 + 15) == 0x3A3A296563617073)
        {
          v16 += 23;
          v18 -= 23;
        }
      }

      mlir::PassInstrumentor::runBeforeAnalysis(a2, v16, v18, v6, *a1);
    }

    v24 = operator new(0xF0uLL);
    *v24 = &unk_1F5B0B5D0;
    mlir::CallGraph::CallGraph((v24 + 1), a3);
  }

LABEL_4:
  if (v9 == v8)
  {
    goto LABEL_5;
  }

  v23 = *(v7 + 16 * v9 + 8);
  if (*(a1 + 40) == v23)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 32) + 16 * v23 + 8) + 8;
}

const char *llvm::getTypeName<mlir::CallGraph>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallGraph]";
  v6 = 65;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void mlir::detail::AnalysisModel<mlir::CallGraph>::~AnalysisModel(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0B5D0;
  mlir::CallGraph::~CallGraph((a1 + 1), a2, a3, a4);
}

{
  *a1 = &unk_1F5B0B5D0;
  mlir::CallGraph::~CallGraph((a1 + 1), a2, a3, a4);
}

BOOL mlir::detail::AnalysisModel<mlir::CallGraph>::invalidate(uint64_t a1, const void ***a2)
{
  v3 = mlir::detail::PreservedAnalyses::isPreserved<mlir::CallGraph>(a2);
  if (!v3)
  {
    mlir::detail::PreservedAnalyses::unpreserve<mlir::CallGraph>(a2);
  }

  return !v3;
}

void mlir::CallGraph::~CallGraph(mlir::CallGraph *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(this + 23);
  if (v5 != this + 200)
  {
    free(v5);
  }

  if ((*(this + 144) & 1) == 0)
  {
    llvm::deallocate_buffer(*(this + 19), (8 * *(this + 40)));
  }

  v6 = *(this + 11);
  if (v6 != this + 104)
  {
    free(v6);
  }

  if ((*(this + 48) & 1) == 0)
  {
    llvm::deallocate_buffer(*(this + 7), (8 * *(this + 16)));
  }

  v7 = *(this + 3);
  v8 = *(this + 8);
  if (v8)
  {
    v9 = v7 - 8;
    v10 = 16 * v8;
    do
    {
      v11 = *&v9[v10];
      *&v9[v10] = 0;
      if (v11)
      {
        v12 = *(v11 + 48);
        if (v12 != (v11 + 64))
        {
          free(v12);
        }

        if ((*(v11 + 8) & 1) == 0)
        {
          llvm::deallocate_buffer(*(v11 + 16), (8 * *(v11 + 24)));
        }

        operator delete(v11);
      }

      v10 -= 16;
    }

    while (v10);
    v7 = *(this + 3);
  }

  if (v7 != this + 40)
  {
    free(v7);
  }

  llvm::deallocate_buffer(*this, (16 * *(this + 4)));
}

void mlir::detail::PreservedAnalyses::unpreserve<mlir::CallGraph>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
LABEL_3:
      v4 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      if (v4)
      {
        *v4 = -2;
        ++*(this + 6);
      }

      return;
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = v3; *i != v2; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }

    v8 = v5 - 1;
    *(this + 5) = v8;
    *i = v3[v8];
  }
}

BOOL mlir::detail::PreservedAnalyses::isPreserved<mlir::CallGraph>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::CallGraph,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::CallGraph,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

void *std::__function::__func<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *),std::allocator<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>,llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0B610;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *),std::allocator<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>,llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0B610;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *),std::allocator<llvm::LogicalResult (*)(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>,llvm::LogicalResult ()(mlir::Pass &,mlir::OpPassManager &,mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001E09818BELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001E09818BELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E09818BELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E09818BELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B0B6C0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B0B6C0;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 1200);
  if (!v2)
  {
    return 0;
  }

  if (v2 == -1)
  {
    return 1;
  }

  CallableRegion = mlir::CallGraphNode::getCallableRegion(*(a2 + 16));
  v5 = mlir::CallGraphNode::getCallableRegion(*(a2 + 24));
  v23 = 0;
  v22 = &v23;
  v6 = *(CallableRegion + 8);
  if (v6 == CallableRegion)
  {
    return 1;
  }

  v7 = v5;
  do
  {
    v8 = v6 - 8;
    if (!v6)
    {
      v8 = 0;
    }

    v9 = *(v8 + 40);
    v10 = v8 + 32;
    if (v9 != v8 + 32)
    {
      do
      {
        v11 = *(v9 + 8);
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        mlir::detail::walk<mlir::ForwardIterator>(v12, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<isProfitableToInline(mlir::Inliner::ResolvedCall const&,unsigned int)::$_0::operator() const(mlir::Region *)::{lambda(mlir::Operation *)#1}>, &v22, 1);
        v9 = v11;
      }

      while (v11 != v10);
    }

    v6 = *(v6 + 8);
  }

  while (v6 != CallableRegion);
  v14 = v23;
  if (!v23)
  {
    return 1;
  }

  v23 = 0;
  v22 = &v23;
  v15 = *(v7 + 8);
  if (v15 == v7)
  {
    v21 = 0;
  }

  else
  {
    do
    {
      v16 = v15 - 8;
      if (!v15)
      {
        v16 = 0;
      }

      v17 = *(v16 + 40);
      v18 = v16 + 32;
      if (v17 != v16 + 32)
      {
        do
        {
          v19 = *(v17 + 8);
          MPSGraphDelegateCompiler.precompilationDescriptor.modify();
          mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<isProfitableToInline(mlir::Inliner::ResolvedCall const&,unsigned int)::$_0::operator() const(mlir::Region *)::{lambda(mlir::Operation *)#1}>, &v22, 1);
          v17 = v19;
        }

        while (v19 != v18);
      }

      v15 = *(v15 + 8);
    }

    while (v15 != v7);
    v21 = 100 * v23;
  }

  return v21 / v14 <= v2;
}

uint64_t std::__function::__func<anonymous namespace::InlinerPass::runOnOperation(void)::$_0,std::allocator<anonymous namespace::InlinerPass::runOnOperation(void)::$_0>,BOOL ()(mlir::Inliner::ResolvedCall const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12_GLOBAL__N_111InlinerPass14runOnOperationEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

llvm::StringMapImpl *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 3))
  {
    llvm::StringMapImpl::init(this, *(a2 + 2));
    v4 = *this;
    v5 = *(this + 2);
    v6 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v5)
    {
      v7 = 0;
      v16 = v4 + 8 * v5 + 8;
      v8 = v6 + 8 * v5 + 8;
      do
      {
        while (1)
        {
          v9 = *(*a2 + 8 * v7);
          if (v9 && v9 != -8)
          {
            break;
          }

          *(v4 + 8 * v7++) = v9;
          if (v5 == v7)
          {
            return this;
          }
        }

        v11 = *v9;
        buffer = llvm::allocate_buffer(*v9 + 17, 8uLL);
        v13 = buffer;
        v14 = buffer + 16;
        if (v11)
        {
          memcpy(buffer + 16, (v9 + 16), v11);
        }

        v14[v11] = 0;
        *v13 = v11;
        mlir::OpPassManager::OpPassManager(v13 + 1, (v9 + 8));
        v4 = *this;
        *(*this + 8 * v7) = v13;
        *(v16 + 4 * v7) = *(v8 + 4 * v7);
        ++v7;
      }

      while (v5 != v7);
    }
  }

  return this;
}

void generateLocationsFromIR(llvm::raw_ostream *a1, llvm **a2, uint64_t *a3, uint64_t a4, __int128 *a5, llvm **a6, uint64_t *a7)
{
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  mlir::AsmState::AsmState(&v26, a4, a5, v27, 0);
  mlir::Operation::print(a4, a1, &v26);
  Context = mlir::Attribute::getContext((a4 + 24));
  LOBYTE(v23) = 0;
  v24 = 0;
  if (a7)
  {
    v22 = 261;
    v18 = a6;
    v19 = a7;
    StringAttr = mlir::Builder::getStringAttr(&Context, &v18);
    v24 = 1;
    v23 = StringAttr;
  }

  v22 = 261;
  v18 = a2;
  v19 = a3;
  v17 = mlir::Builder::getStringAttr(&Context, &v18);
  v18 = v27;
  v19 = &v17;
  v20 = &v23;
  p_Context = &Context;
  mlir::detail::walk<mlir::ForwardIterator>(a4, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<generateLocationsFromIR(llvm::raw_ostream &,llvm::StringRef,mlir::Operation *,mlir::OpPrintingFlags const&,llvm::StringRef)::$_0>, &v18, 1);
  mlir::AsmState::~AsmState(&v26, v14, v15, v16);
  llvm::deallocate_buffer(v27[0], (16 * v28));
}

BOOL generateLocationsFromIR(const void *a1, size_t a2, mlir::Block **a3, __int128 *a4, llvm **a5, uint64_t *a6)
{
  v63[4] = *MEMORY[0x1E69E9840];
  v61 = v63;
  v62 = xmmword_1E096E640;
  if (a2 < 0x21)
  {
    v12 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(&v61, v63, a2, 1);
  v12 = v62;
  if (a2)
  {
LABEL_5:
    memcpy(v61 + v12, a1, a2);
    v12 = v62;
  }

LABEL_6:
  v13 = v12 + a2;
  *&v62 = v12 + a2;
  if (v12 + a2)
  {
LABEL_7:
    memset(&v43, 0, sizeof(v43));
    mlir::openOutputFile(v61, v13, &v43, &v46);
    if (*&v46.__val_)
    {
      generateLocationsFromIR(*(*&v46.__val_ + 136), v61, v62, a3, a4, a5, a6);
    }

    v45 = 257;
    mlir::Operation::emitError(a3, v44, &v49);
    if (v49)
    {
      v48 = 260;
      v47[0] = &v43;
      mlir::Diagnostic::operator<<(v50, v47);
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v49);
    if (v49)
    {
      mlir::InFlightDiagnostic::report(&v49);
    }

    if (v60 == 1)
    {
      if (v59 != &v60)
      {
        free(v59);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v58;
        v33 = __p;
        if (v58 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v58 = v31;
        operator delete(v33);
      }

      v34 = v55;
      if (v55)
      {
        v35 = v56;
        v36 = v55;
        if (v56 != v55)
        {
          do
          {
            v38 = *--v35;
            v37 = v38;
            *v35 = 0;
            if (v38)
            {
              operator delete[](v37);
            }
          }

          while (v35 != v34);
          v36 = v55;
        }

        v56 = v34;
        operator delete(v36);
      }

      if (v51 != v54)
      {
        free(v51);
      }
    }

    v39 = *&v46.__val_;
    *&v46.__val_ = 0;
    if (v39)
    {
      if (v39[128] == 1)
      {
        llvm::raw_fd_ostream::~raw_fd_ostream((v39 + 32));
      }

      llvm::CleanupInstaller::~CleanupInstaller(v39, v29, v30);
      operator delete(v40);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    goto LABEL_66;
  }

  v49 = "mlir_snapshot";
  LOWORD(v52) = 259;
  llvm::sys::fs::createTemporaryFile(&v49, "tmp.mlir", 8, &v61, 0);
  *&v46.__val_ = v14;
  v46.__cat_ = v15;
  if (!v14)
  {
    v13 = v62;
    goto LABEL_7;
  }

  v45 = 257;
  mlir::Operation::emitError(a3, v44, &v49);
  if (v49)
  {
    LODWORD(v47[0]) = 3;
    v47[1] = "failed to generate temporary file for location snapshot: ";
    v47[2] = 57;
    v16 = v47;
    v17 = v51;
    if (v52 >= v53)
    {
      if (v51 <= v47 && v51 + 24 * v52 > v47)
      {
        v42 = v47 - v51;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v17 = v51;
        v16 = (v51 + v42);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v54, v52 + 1, 24);
        v16 = v47;
        v17 = v51;
      }
    }

    v18 = &v17[24 * v52];
    v19 = *v16;
    *(v18 + 2) = v16[2];
    *v18 = v19;
    ++v52;
  }

  std::error_code::message(&v43, &v46);
  if (v49)
  {
    v48 = 260;
    v47[0] = &v43;
    mlir::Diagnostic::operator<<(v50, v47);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v49);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v49)
  {
    mlir::InFlightDiagnostic::report(&v49);
  }

  if (v60)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v58;
      v23 = __p;
      if (v58 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v58 = v21;
      operator delete(v23);
    }

    v24 = v55;
    if (v55)
    {
      v25 = v56;
      v26 = v55;
      if (v56 != v55)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            operator delete[](v27);
          }
        }

        while (v25 != v24);
        v26 = v55;
      }

      v56 = v24;
      operator delete(v26);
    }

    if (v51 != v54)
    {
      free(v51);
    }
  }

LABEL_66:
  if (v61 != v63)
  {
    free(v61);
  }

  return v20;
}

void mlir::createLocationSnapshotPass(__int128 *a1@<X0>, const void *a2@<X1>, std::string::size_type a3@<X2>, const void *a4@<X3>, std::string::size_type a5@<X4>, void *a6@<X8>)
{
  v12 = operator new(0x378uLL);
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v12[16] = 0;
  v12[32] = 0;
  v12[40] = 0;
  v12[120] = 0;
  *(v12 + 8) = 0u;
  *(v12 + 9) = 0u;
  *(v12 + 10) = 0u;
  *(v12 + 22) = 0;
  *(v12 + 23) = v12 + 200;
  *(v12 + 24) = 0x400000000;
  *(v12 + 29) = v12 + 248;
  *(v12 + 30) = 0x400000000;
  *(v12 + 35) = 0;
  *(v12 + 36) = 0;
  *(v12 + 37) = 0x1000000000;
  *(v12 + 19) = 0u;
  *(v12 + 20) = 0u;
  *(v12 + 42) = 0;
  *v12 = &unk_1F5B0B7F0;
  __dst.__r_.__value_.__r.__words[0] = "The filename to print the generated IR";
  __dst.__r_.__value_.__l.__size_ = 38;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v12 + 344), v12 + 152, "filename", 8, &__dst);
  *(v12 + 43) = &unk_1F5AFC930;
  *(v12 + 72) = &unk_1F5AFC9B0;
  __dst.__r_.__value_.__r.__words[0] = "A tag to use when fusing the new locations with the original. If unset, the locations are replaced.";
  __dst.__r_.__value_.__l.__size_ = 99;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v12 + 592), v12 + 152, "tag", 3, &__dst);
  *(v12 + 74) = &unk_1F5AFC930;
  *(v12 + 103) = &unk_1F5AFC9B0;
  *v12 = &unk_1F5B0B750;
  *(v12 + 840) = v19;
  *(v12 + 856) = v20;
  *(v12 + 872) = v21;
  if (!a2)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_13;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

  if (a3 >= 0x17)
  {
    if ((a3 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (a3 | 7) + 1;
    }

    p_dst = operator new(v14);
    __dst.__r_.__value_.__l.__size_ = a3;
    __dst.__r_.__value_.__r.__words[2] = v14 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = a3;
    p_dst = &__dst;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  memmove(p_dst, a2, a3);
LABEL_12:
  p_dst->__r_.__value_.__s.__data_[a3] = 0;
LABEL_13:
  std::string::operator=((v12 + 472), &__dst);
  v15 = *(v12 + 71);
  if (!v15)
  {
LABEL_32:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_33:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  (*(*v15 + 48))(v15, &__dst);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (a4)
    {
      goto LABEL_16;
    }

LABEL_21:
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_28;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!a4)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

  if (a5 >= 0x17)
  {
    if ((a5 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (a5 | 7) + 1;
    }

    v16 = operator new(v17);
    __dst.__r_.__value_.__l.__size_ = a5;
    __dst.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = a5;
    v16 = &__dst;
    if (!a5)
    {
      goto LABEL_27;
    }
  }

  memmove(v16, a4, a5);
LABEL_27:
  v16->__r_.__value_.__s.__data_[a5] = 0;
LABEL_28:
  std::string::operator=(v12 + 30, &__dst);
  v18 = *(v12 + 102);
  if (!v18)
  {
    goto LABEL_32;
  }

  (*(*v18 + 48))(v18, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *a6 = v12;
}

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<generateLocationsFromIR(llvm::raw_ostream &,llvm::StringRef,mlir::Operation *,mlir::OpPrintingFlags const&,llvm::StringRef)::$_0>(uint64_t **result, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *(*result + 4);
  if (v2)
  {
    v4 = **result;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 != v2)
      {
        v7 = result;
        result = mlir::FileLineColLoc::get(*result[1], *(v4 + 16 * v5 + 8), *(v4 + 16 * v5 + 12));
        v8 = v7[2];
        if (v8[1])
        {
          v9 = v7[3];
          v12[0] = *(a2 + 24);
          v12[1] = mlir::NameLoc::get(*v8, result);
          mlir::Builder::getFusedLoc(v9, v12, 2, 0);
        }

        *(a2 + 24) = result;
      }
    }

    else
    {
      v10 = 1;
      while (v6 != -4096)
      {
        v11 = v5 + v10++;
        v5 = v11 & (v2 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

void anonymous namespace::LocationSnapshotPass::~LocationSnapshotPass(_anonymous_namespace_::LocationSnapshotPass *this)
{
  *this = &unk_1F5B0B7F0;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this, v2, v3, v4);
}

{
  *this = &unk_1F5B0B7F0;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);
  mlir::Pass::~Pass(this, v2, v3, v4);

  operator delete(v5);
}

BOOL anonymous namespace::LocationSnapshotPass::runOnOperation(_anonymous_namespace_::LocationSnapshotPass *this)
{
  v2 = *(this + 5);
  v3 = *(this + 495);
  if (v3 >= 0)
  {
    v4 = this + 472;
  }

  else
  {
    v4 = *(this + 59);
  }

  if (v3 >= 0)
  {
    v5 = *(this + 495);
  }

  else
  {
    v5 = *(this + 60);
  }

  mlir::OpPrintingFlags::OpPrintingFlags(v10);
  v6 = *(this + 743);
  if (v6 >= 0)
  {
    v7 = (this + 720);
  }

  else
  {
    v7 = *(this + 90);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 743);
  }

  else
  {
    v8 = *(this + 91);
  }

  result = generateLocationsFromIR(v4, v5, (v2 & 0xFFFFFFFFFFFFFFF8), v10, v7, v8);
  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

__n128 mlir::impl::LocationSnapshotBase<anonymous namespace::LocationSnapshotPass>::clonePass@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x378uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  v4[40] = 0;
  v4[120] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B0B7F0;
  *&v8 = "The filename to print the generated IR";
  *(&v8 + 1) = 38;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 344), v4 + 152, "filename", 8, &v8);
  *(v4 + 43) = &unk_1F5AFC930;
  *(v4 + 72) = &unk_1F5AFC9B0;
  *&v8 = "A tag to use when fusing the new locations with the original. If unset, the locations are replaced.";
  *(&v8 + 1) = 99;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((v4 + 592), v4 + 152, "tag", 3, &v8);
  *(v4 + 74) = &unk_1F5AFC930;
  *(v4 + 103) = &unk_1F5AFC9B0;
  *v4 = &unk_1F5B0B750;
  v6 = *(a1 + 856);
  *(v4 + 840) = *(a1 + 840);
  *(v4 + 856) = v6;
  result = *(a1 + 872);
  *(v4 + 872) = result;
  *a2 = v4;
  return result;
}

_anonymous_namespace_::PrintOpPass *mlir::createPrintOpGraphPass@<X0>(mlir *this@<X0>, _anonymous_namespace_::PrintOpPass **a2@<X8>)
{
  v4 = operator new(0x628uLL);
  *a2 = result;
  return result;
}

_anonymous_namespace_::PrintOpPass *anonymous namespace::PrintOpPass::PrintOpPass(_anonymous_namespace_::PrintOpPass *this, llvm::raw_ostream *a2)
{
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 120) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  *(this + 29) = this + 248;
  *(this + 30) = 0x400000000;
  *(this + 37) = 0x1000000000;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  *this = &unk_1F5B0B900;
  *&v7 = "Limit attribute/type length to number of chars";
  *(&v7 + 1) = 46;
  v5 = 20;
  v6 = &v5;
  mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(this + 344, this + 152, "max-label-len", 13, &v7, &v6);
  *(this + 43) = &unk_1F5AFEE68;
  *(this + 67) = &unk_1F5AFEEE8;
  *&v7 = "Print attributes of operations";
  *(&v7 + 1) = 30;
  LOBYTE(v5) = 1;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 552, this + 152, "print-attrs", 11, &v7, &v6);
  *(this + 69) = &unk_1F5AFB130;
  *(this + 93) = &unk_1F5AFB1B0;
  *&v7 = "Print control flow edges";
  *(&v7 + 1) = 24;
  LOBYTE(v5) = 0;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 760, this + 152, "print-control-flow-edges", 24, &v7, &v6);
  *(this + 95) = &unk_1F5AFB130;
  *(this + 119) = &unk_1F5AFB1B0;
  *&v7 = "Print data flow edges";
  *(&v7 + 1) = 21;
  LOBYTE(v5) = 1;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 968, this + 152, "print-data-flow-edges", 21, &v7, &v6);
  *(this + 121) = &unk_1F5AFB130;
  *(this + 145) = &unk_1F5AFB1B0;
  *&v7 = "Print result types of operations";
  *(&v7 + 1) = 32;
  LOBYTE(v5) = 1;
  v6 = &v5;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(this + 1176, this + 152, "print-result-types", 18, &v7, &v6);
  *(this + 147) = &unk_1F5AFB130;
  *(this + 171) = &unk_1F5AFB1B0;
  *this = &unk_1F5B0B860;
  *(this + 348) = 0;
  *(this + 1424) = 0;
  *(this + 357) = 1;
  *(this + 175) = 0;
  *(this + 88) = 0u;
  *(this + 173) = &unk_1F5B0B970;
  *(this + 179) = 0;
  *(this + 90) = 0u;
  *(this + 1456) = 1;
  *(this + 183) = a2;
  llvm::raw_ostream::SetBufferAndMode(this + 1384, 0, 0, 0);
  *(this + 392) = 0;
  *(this + 97) = 0u;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 1500) = 0u;
  *(this + 190) = 0;
  *(this + 1528) = 0u;
  *(this + 386) = 0;
  return this;
}

void anonymous namespace::PrintOpPass::~PrintOpPass(_anonymous_namespace_::PrintOpPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B0B860;
  v5 = *(this + 392);
  v6 = *(this + 194);
  if (v5)
  {
    v7 = 40 * v5;
    while (1)
    {
      if ((*v6 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(v6 + 39) < 0)
      {
        operator delete(*(v6 + 16));
      }

      v6 += 40;
      v7 -= 40;
      if (!v7)
      {
        llvm::deallocate_buffer(*(this + 194), (40 * *(this + 392)));
      }
    }
  }

  llvm::deallocate_buffer(*(this + 194), 0);
}

{
}

llvm::SmallPtrSetImplBase *anonymous namespace::PrintOpPass::runOnOperation(_anonymous_namespace_::PrintOpPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v5 = *(this + 5);
  v6 = (this + 1552);
  if (*(this + 195))
  {
    v7 = *(this + 392);
    if (v7 > 4 * *(this + 390) && v7 >= 0x41)
    {
      llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::shrink_and_clear(this + 1552, a2, a3, a4);
      goto LABEL_14;
    }

    if (v7)
    {
      v8 = *v6;
      for (i = 40 * v7; i; i -= 40)
      {
        if (*v8 != -8192)
        {
          if (*v8 == -4096)
          {
            goto LABEL_8;
          }

          if (*(v8 + 39) < 0)
          {
            operator delete(*(v8 + 16));
          }
        }

        *v8 = -4096;
LABEL_8:
        v8 += 40;
      }
    }

    *(this + 195) = 0;
  }

LABEL_14:
  v24 = v26;
  v25 = 0x600000000;
  v22.__r_.__value_.__r.__words[0] = this;
  v22.__r_.__value_.__l.__size_ = &v24;
  v11 = v24;
  if (v25)
  {
    v12 = 0;
    v13 = 8 * v25;
    do
    {
      LODWORD(v10) = v25;
      std::to_string(&v22, v12 / v10);
      v14 = std::string::append(&v22, " 1.0 1.0");
      v15 = v14->__r_.__value_.__r.__words[0];
      v23[0] = v14->__r_.__value_.__l.__size_;
      *(v23 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v21 = *(v11[v12] + 48);
      v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](v6, &v21);
      v18 = v17;
      if (*(v17 + 31) < 0)
      {
        operator delete(*(v17 + 8));
      }

      v19 = v23[0];
      *(v18 + 8) = v15;
      *(v18 + 16) = v19;
      *(v18 + 23) = *(v23 + 7);
      *(v18 + 31) = v16;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
    v11 = v24;
  }

  if (v11 != v26)
  {
    free(v11);
  }

  v24 = this;
  return mlir::detail::PreservedAnalyses::preserveAll((this + 56));
}

_anonymous_namespace_::PrintOpPass *mlir::impl::ViewOpGraphBase<anonymous namespace::PrintOpPass>::clonePass@<X0>(uint64_t a1@<X0>, _anonymous_namespace_::PrintOpPass **a2@<X8>)
{
  v3 = *(a1 + 1464);
  v4 = operator new(0x628uLL);
  *a2 = result;
  return result;
}

void mlir::raw_indented_ostream::~raw_indented_ostream(mlir::raw_indented_ostream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  operator delete(v1);
}

char *mlir::raw_indented_ostream::write_impl(char *this, char *__s, size_t __n)
{
  v15 = this;
  if (__n)
  {
    v3 = __n;
    v5 = this;
    while (1)
    {
      this = memchr(__s, 10, v3);
      if (!this)
      {
        break;
      }

      v6 = this - __s;
      if (this - __s == -1)
      {
        break;
      }

      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = this - __s;
      }

      if (v3 >= v6 + 1)
      {
        v8 = v6 + 1;
      }

      else
      {
        v8 = v3;
      }

      v11 = __s;
      v12 = v7;
      v13 = &__s[v8];
      v14 = v3 - v8;
      first_not_of = llvm::StringRef::find_first_not_of(&v11, " \t\n\v\f\r", 6, 0);
      if (v12 > first_not_of || *(v5 + 8))
      {
        mlir::raw_indented_ostream::write_impl(char const*,unsigned long)::{lambda(llvm::StringRef)#1}::operator()(&v15, v11, v12);
      }

      this = *(v5 + 10);
      v10 = *(this + 4);
      if (v10 < *(this + 3))
      {
        *(this + 4) = v10 + 1;
        *v10 = 10;
        v5[72] = 1;
        __s = v13;
        v3 = v14;
        if (!v14)
        {
          return this;
        }
      }

      else
      {
        this = llvm::raw_ostream::write(this, 10);
        v5[72] = 1;
        __s = v13;
        v3 = v14;
        if (!v14)
        {
          return this;
        }
      }
    }

    if (v3 > *(v5 + 13))
    {
      this = mlir::raw_indented_ostream::write_impl(char const*,unsigned long)::{lambda(llvm::StringRef)#1}::operator()(&v15, __s, v3);
      v5[72] = 0;
    }
  }

  return this;
}

void **mlir::raw_indented_ostream::write_impl(char const*,unsigned long)::{lambda(llvm::StringRef)#1}::operator()(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 72);
  result = *(*a1 + 80);
  if (v6 == 1)
  {
    result = llvm::raw_ostream::indent(result, *(v5 + 48));
    v8 = *(v5 + 56);
    v9 = *(v5 + 64);
    v10 = result[4];
    if (v9 <= result[3] - v10)
    {
      if (v9)
      {
        v17 = result;
        v18 = *(v5 + 64);
        memcpy(result[4], v8, v9);
        result = v17;
        v10 = v17[4] + v18;
        v17[4] = v10;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(result, v8, v9);
      v10 = result[4];
    }

    v11 = *(v5 + 52);
    if (a3 >= v11)
    {
      v12 = *(v5 + 52);
    }

    else
    {
      v12 = a3;
    }

    v13 = a3 - v12;
    if (a3 - v12 > result[3] - v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *(v5 + 52);
    if (a3 >= v11)
    {
      v12 = *(v5 + 52);
    }

    else
    {
      v12 = a3;
    }

    v13 = a3 - v12;
    v10 = result[4];
    if (a3 - v12 > result[3] - v10)
    {
LABEL_17:

      return llvm::raw_ostream::write(result, (a2 + v12), v13);
    }
  }

  if (a3 > v11)
  {
    v14 = (a2 + v12);
    v15 = result;
    v16 = v13;
    result = memcpy(v10, v14, v13);
    v15[4] = v15[4] + v16;
  }

  return result;
}

void *anonymous namespace::PrintOpPass::emitGraph(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = *(a1 + 1416);
  if ((*(a1 + 1408) - v6) > 0xB)
  {
    *(v6 + 8) = 175841351;
    *v6 = *"digraph G {\n";
    *(a1 + 1416) += 12;
  }

  else
  {
    llvm::raw_ostream::write((a1 + 1384), "digraph G {\n", 0xCuLL);
  }

  *(a1 + 1432) += 2;
  v15[0] = "compound";
  v15[2] = " = ";
  v16 = 771;
  v17[0] = v15;
  v17[2] = "true";
  v18 = 770;
  llvm::Twine::str(v17, &__p);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v9 = llvm::raw_ostream::write((a1 + 1384), p_p, size);
  v10 = v9[4];
  if (v9[3] - v10 > 1uLL)
  {
    *v10 = 2619;
    v9[4] += 2;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, ";\n", 2uLL);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_15:
  result = a2(a3);
  v12 = *(a1 + 1432);
  if (v12 <= 2)
  {
    v12 = 2;
  }

  *(a1 + 1432) = v12 - 2;
  v13 = *(a1 + 1416);
  if (*(a1 + 1408) - v13 <= 1uLL)
  {
    return llvm::raw_ostream::write((a1 + 1384), "}\n", 2uLL);
  }

  *v13 = 2685;
  *(a1 + 1416) += 2;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 40 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 40 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>,mlir::Operation *,mlir::mpsx::OpValidation,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::mpsx::OpValidation>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 8) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  return v5 + 8;
}

void llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::shrink_and_clear(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 5 * v5;
  if (v5)
  {
    v8 = *a1;
    v9 = 40 * v5;
    do
    {
      if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000 && *(v8 + 39) < 0)
      {
        operator delete(*(v8 + 2));
      }

      v8 = (v8 + 40);
      v9 -= 40;
    }

    while (v9);
  }

  v10 = 1 << (33 - __clz(v6 - 1));
  if (v10 <= 64)
  {
    v10 = 64;
  }

  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 != *(a1 + 16))
  {
    llvm::deallocate_buffer(*a1, (8 * v7));
  }

  *(a1 + 8) = 0;
  if (v11)
  {
    v12 = *a1;
    v13 = 40 * v11 - 40;
    if (v13 < 0x28)
    {
      v14 = *a1;
LABEL_20:
      v18 = (v12 + 40 * v11);
      do
      {
        *v14 = -4096;
        v14 = (v14 + 40);
      }

      while (v14 != v18);
      return;
    }

    v15 = v13 / 0x28 + 1;
    v14 = (v12 + 40 * (v15 & 0xFFFFFFFFFFFFFFELL));
    v16 = *a1;
    v17 = v15 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v16 = -4096;
      *(v16 + 5) = -4096;
      v16 = (v16 + 80);
      v17 -= 2;
    }

    while (v17);
    if (v15 != (v15 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

_DWORD *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<void anonymous namespace::PrintOpPass::initColorMapping<mlir::Operation>(mlir::Operation &)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v9 = *(a2 + 48);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](v4 + 1552, &v9);
  if (*result)
  {
    ++*result;
  }

  else
  {
    v6 = a1[1];
    v7 = *(v6 + 8);
    if (v7 >= *(v6 + 12))
    {
      v8 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v7 + 1, 8);
      result = v8;
      LODWORD(v7) = *(v6 + 8);
    }

    *(*v6 + 8 * v7) = a2;
    ++*(v6 + 8);
    ++*result;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 5 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40 * v11 - 40;
    if (v12 < 0x28)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = -4096;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = &result[5 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[5] = -4096;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = *a1 + 40 * v16;
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -8192;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = *a1 + 40 * (v23 & v15);
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        *(v17 + 8) = *(v4 + 2);
        v19 = *(v4 + 1);
        *(v17 + 32) = v4[4];
        *(v17 + 16) = v19;
        v4[3] = 0;
        v4[4] = 0;
        v4[2] = 0;
        ++*(a1 + 8);
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::PrintOpPass::runOnOperation(void)::{lambda(void)#1}>(_anonymous_namespace_::PrintOpPass **a1)
{
  v3 = *a1;
  if (*(v3 + 1096) == 1)
  {
    v4 = *(v3 + 190);
    for (i = *(v3 + 191); v4 != i; v4 += 48)
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v4 + 8);
      v10 = *(v4 + 16);
      if (*(v4 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
      }

      else
      {
        __p = *(v4 + 24);
      }

      v1 = v1 & 0xFFFFFFFF00000000 | v8;
      v2 = v2 & 0xFFFFFFFF00000000 | v10;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v11 = *(v3 + 184);
  v12 = *(v3 + 185);
  if (v11 != v12)
  {
    do
    {
      while (1)
      {
        v13 = *(v11 + 23);
        v14 = v13 >= 0 ? v11 : *v11;
        v15 = v13 >= 0 ? *(v11 + 23) : *(v11 + 8);
        v16 = llvm::raw_ostream::write(v3 + 173, v14, v15);
        v17 = v16[4];
        if (v16[3] - v17 <= 1uLL)
        {
          break;
        }

        *v17 = 2619;
        v16[4] += 2;
        v11 += 24;
        if (v11 == v12)
        {
          goto LABEL_21;
        }
      }

      llvm::raw_ostream::write(v16, ";\n", 2uLL);
      v11 += 24;
    }

    while (v11 != v12);
LABEL_21:
    v12 = *(v3 + 185);
    v11 = *(v3 + 184);
  }

  while (v12 != v11)
  {
    v18 = *(v12 - 1);
    v12 -= 3;
    if (v18 < 0)
    {
      operator delete(*v12);
    }
  }

  *(v3 + 185) = v11;
}

uint64_t anonymous namespace::PrintOpPass::processOperation(_anonymous_namespace_::PrintOpPass *this, mlir::Operation *a2)
{
  v2 = a2;
  v3 = this;
  v64 = *MEMORY[0x1E69E9840];
  v55[0] = a2;
  memset(&v55[1], 0, 12);
  if ((*(a2 + 11) & 0x7FFFFF) == 0)
  {
    v54[0] = a2;
    *&v63 = v54;
    *(&v63 + 1) = this;
    v50[1] = 0;
    v51 = 0;
    v50[0] = 0;
    LODWORD(v57.__r_.__value_.__r.__words[1]) = 0;
    v60 = 0;
    v61 = 1;
    v58 = 0;
    v59 = 0;
    v57.__r_.__value_.__r.__words[2] = 0;
    v57.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
    v62 = v50;
    llvm::raw_ostream::SetBufferAndMode(&v57, 0, 0, 0);
    llvm::raw_ostream::~raw_ostream(&v57);
    v57.__r_.__value_.__r.__words[0] = *(v2 + 6);
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::operator[](v3 + 1552, &v57);
    v10 = *(v7 + 8);
    v8 = v7 + 8;
    v9 = v10;
    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    v55[1] = v14;
    LODWORD(v55[2]) = v15;
    if (SHIBYTE(v51) < 0)
    {
      v47 = v14;
      operator delete(v50[0]);
      v48 = v47;
      if (*(v3 + 1096) != 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v48 = v14;
      if (*(v3 + 1096) != 1)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_14;
  }

  v54[0] = v55;
  v54[1] = this;
  *&v63 = &v56;
  *(&v63 + 1) = this;
  __p[1] = 0;
  v53 = 0;
  __p[0] = 0;
  LODWORD(v57.__r_.__value_.__r.__words[1]) = 0;
  v60 = 0;
  v61 = 1;
  v58 = 0;
  v59 = 0;
  v57.__r_.__value_.__r.__words[2] = 0;
  v56 = a2;
  v57.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
  v62 = __p;
  llvm::raw_ostream::SetBufferAndMode(&v57, 0, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v57);
  v55[1] = v4;
  LODWORD(v55[2]) = v5;
  if (SHIBYTE(v53) < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    v4 = v6;
  }

  v2 = v55[0];
  v48 = v4;
  if (*(v3 + 1096) == 1)
  {
LABEL_14:
    if ((*(v2 + 46) & 0x80) == 0)
    {
      goto LABEL_39;
    }

    v16 = *(v2 + 17);
    if (!v16)
    {
      goto LABEL_39;
    }

    v17 = 0;
    v18 = 24;
    v49 = v16;
    while (1)
    {
      v19 = *(*(v55[0] + 72) + v18);
      if (v16 == 1)
      {
        v20 = 0;
        *(&v57.__r_.__value_.__s + 23) = 0;
        v57.__r_.__value_.__s.__data_[0] = 0;
      }

      else
      {
        std::to_string(&v57, v17);
        v20 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      }

      *&v63 = v57.__r_.__value_.__l.__size_;
      v21 = v57.__r_.__value_.__r.__words[0];
      *(&v63 + 7) = *(&v57.__r_.__value_.__r.__words[1] + 7);
      memset(&v57, 0, sizeof(v57));
      v22 = *(v3 + 191);
      v23 = *(v3 + 192);
      if (v22 >= v23)
      {
        break;
      }

      v24 = v55[1];
      *v22 = v19;
      *(v22 + 8) = v24;
      *(v22 + 16) = v55[2];
      v25 = v63;
      *(v22 + 24) = v21;
      *(v22 + 32) = v25;
      *(v22 + 39) = *(&v63 + 7);
      *(v22 + 47) = v20;
      *(v3 + 191) = v22 + 48;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_37;
      }

LABEL_17:
      ++v17;
      v18 += 32;
      if (v16 == v17)
      {
        v2 = v55[0];
        goto LABEL_39;
      }
    }

    v26 = v3;
    v27 = *(v3 + 190);
    v28 = v22 - v27;
    v29 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v27) >> 4);
    v30 = v29 + 1;
    if (v29 + 1 > 0x555555555555555)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v31 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v27) >> 4);
    if (2 * v31 > v30)
    {
      v30 = 2 * v31;
    }

    if (v31 >= 0x2AAAAAAAAAAAAAALL)
    {
      v32 = 0x555555555555555;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      if (v32 > 0x555555555555555)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v33 = v21;
      v34 = v20;
      v35 = operator new(48 * v32);
      v20 = v34;
      v21 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = &v35[48 * v29];
    v37 = &v35[48 * v32];
    v38 = v55[1];
    *v36 = v19;
    *(v36 + 1) = v38;
    *(v36 + 4) = v55[2];
    v39 = v63;
    *(v36 + 3) = v21;
    *(v36 + 4) = v39;
    *(v36 + 39) = *(&v63 + 7);
    v36[47] = v20;
    v40 = v36 + 48;
    v41 = &v36[-v28];
    memcpy(&v36[-v28], v27, v28);
    v3 = v26;
    *(v26 + 190) = v41;
    *(v26 + 191) = v40;
    *(v26 + 192) = v37;
    if (v27)
    {
      operator delete(v27);
    }

    v16 = v49;
    *(v26 + 191) = v40;
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_37:
    operator delete(v57.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_39:
  v42 = *(v2 + 9);
  if (v42)
  {
    v43 = v2 - 16;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    for (i = 0; i != v42; ++i)
    {
      v57.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, i);
      *v45 = v55[1];
      *(v45 + 8) = v55[2];
    }

    return v55[1];
  }

  return v48;
}

uint64_t anonymous namespace::PrintOpPass::emitClusterStmt(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 1544) + 1;
  *(a1 + 1544) = v8;
  v9 = (a1 + 1384);
  v10 = *(a1 + 1416);
  if ((*(a1 + 1408) - v10) > 0x10)
  {
    *(v10 + 16) = 95;
    *v10 = *"subgraph cluster_";
    *(a1 + 1416) += 17;
    v12 = llvm::raw_ostream::operator<<((a1 + 1384), v8);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = llvm::raw_ostream::write((a1 + 1384), "subgraph cluster_", 0x11uLL);
    v12 = llvm::raw_ostream::operator<<(v11, v8);
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) > 2)
    {
LABEL_3:
      *(v13 + 2) = 10;
      *v13 = 31520;
      *(v12 + 4) += 3;
      goto LABEL_6;
    }
  }

  llvm::raw_ostream::write(v12, " {\n", 3uLL);
LABEL_6:
  *(a1 + 1432) += 2;
  v34 = 1;
  LOWORD(__p) = 32;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  *v26 = *a4;
  v27 = *(a4 + 16);
  v28[0] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v28[1] = 0;
  v29 = 0;
  LODWORD(v36.__r_.__value_.__r.__words[1]) = 0;
  v39 = 0;
  v40 = 1;
  v37 = 0;
  v38 = 0;
  v36.__r_.__value_.__r.__words[2] = 0;
  v36.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
  v41 = v28;
  llvm::raw_ostream::SetBufferAndMode(&v36, 0, 0, 0);
  if (v27 >= 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v26[0];
  }

  if (v27 >= 0)
  {
    v16 = SHIBYTE(v27);
  }

  else
  {
    v16 = v26[1];
  }

  llvm::raw_ostream::write_escaped(&v36, v15, v16, 0);
  llvm::raw_ostream::~raw_ostream(&v36);
  std::operator+<char>();
  v17 = std::string::append(&v36, "");
  v18 = v17->__r_.__value_.__r.__words[2];
  *v30 = *&v17->__r_.__value_.__l.__data_;
  v31 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v42[0] = "label";
  v42[2] = " = ";
  v43 = 771;
  v36.__r_.__value_.__r.__words[0] = v42;
  v36.__r_.__value_.__r.__words[2] = v30;
  LOWORD(v38) = 1026;
  llvm::Twine::str(&v36, &v32);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v32;
  }

  else
  {
    v19 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v21 = llvm::raw_ostream::write(v9, v19, size);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 2619;
    v21[4] += 2;
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    llvm::raw_ostream::write(v21, ";\n", 2uLL);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_27:
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    operator delete(v28[0]);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_38:
  operator delete(v26[0]);
LABEL_30:
  a2(a3);
  v23 = *(a1 + 1432);
  if (v23 <= 2)
  {
    v23 = 2;
  }

  *(a1 + 1432) = v23 - 2;
  v24 = *(a1 + 1416);
  if (*(a1 + 1408) - v24 > 1uLL)
  {
    *v24 = 2685;
    *(a1 + 1416) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v9, "}\n", 2uLL);
  }

  LODWORD(v35[0]) = v14;
  *(v35 + 4) = v8 | 0x100000000;
  return v35[0];
}

uint64_t anonymous namespace::PrintOpPass::emitNodeStmt(uint64_t a1, uint64_t a2, const void *a3, std::string::size_type a4, uint64_t a5, uint64_t a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1544) + 1;
  *(a1 + 1544) = v10;
  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  *v35 = *a2;
  v36 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  __p[1] = 0;
  v32 = 0;
  __p[0] = 0;
  LODWORD(__dst.__r_.__value_.__r.__words[1]) = 0;
  v43 = 0;
  v44 = 1;
  v41 = 0;
  v42 = 0;
  __dst.__r_.__value_.__r.__words[2] = 0;
  __dst.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
  v45 = __p;
  llvm::raw_ostream::SetBufferAndMode(&__dst, 0, 0, 0);
  if (v36 >= 0)
  {
    v11 = v35;
  }

  else
  {
    v11 = v35[0];
  }

  if (v36 >= 0)
  {
    v12 = SHIBYTE(v36);
  }

  else
  {
    v12 = v35[1];
  }

  llvm::raw_ostream::write_escaped(&__dst, v11, v12, 0);
  llvm::raw_ostream::~raw_ostream(&__dst);
  std::operator+<char>();
  v13 = std::string::append(&__dst, "");
  v14 = v13->__r_.__value_.__r.__words[0];
  v47.__r_.__value_.__r.__words[0] = v13->__r_.__value_.__l.__size_;
  *(v47.__r_.__value_.__r.__words + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *(&__dst.__r_.__value_.__s + 23) = 5;
  strcpy(&__dst, "label");
  v29[0] = &__dst;
  v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v37, &__dst.__r_.__value_.__l.__data_, &std::piecewise_construct, v29);
  v17 = v16;
  if (*(v16 + 79) < 0)
  {
    operator delete(v16[7]);
  }

  v18 = v47.__r_.__value_.__r.__words[0];
  v17[7] = v14;
  v17[8] = v18;
  *(v17 + 71) = *(v47.__r_.__value_.__r.__words + 7);
  *(v17 + 79) = v15;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_14:
    if (a3)
    {
      goto LABEL_15;
    }

LABEL_22:
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_29;
  }

LABEL_21:
  operator delete(v35[0]);
  if (!a3)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (a4 >= 0x17)
  {
    if ((a4 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (a4 | 7) + 1;
    }

    p_dst = operator new(v20);
    __dst.__r_.__value_.__l.__size_ = a4;
    __dst.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = a4;
    p_dst = &__dst;
    if (!a4)
    {
      goto LABEL_28;
    }
  }

  memmove(p_dst, a3, a4);
LABEL_28:
  *(p_dst + a4) = 0;
LABEL_29:
  HIBYTE(v32) = 5;
  strcpy(__p, "shape");
  v47.__r_.__value_.__r.__words[0] = __p;
  v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v37, __p, &std::piecewise_construct, &v47);
  v22 = v21;
  if (*(v21 + 79) < 0)
  {
    operator delete(v21[7]);
    *(v22 + 7) = __dst;
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
LABEL_31:
      if (!a6)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }
  }

  else
  {
    *(v21 + 7) = __dst;
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  operator delete(__p[0]);
  if (!a6)
  {
    goto LABEL_42;
  }

LABEL_35:
  *(&__dst.__r_.__value_.__s + 23) = 5;
  strcpy(&__dst, "style");
  __p[0] = &__dst;
  v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v37, &__dst.__r_.__value_.__l.__data_, &std::piecewise_construct, __p);
  MEMORY[0x1E12E55D0](v23 + 7, "filled");
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v34 = 1283;
  __p[0] = "";
  v32 = a5;
  v33 = a6;
  __dst.__r_.__value_.__r.__words[0] = __p;
  __dst.__r_.__value_.__r.__words[2] = "";
  LOWORD(v42) = 770;
  llvm::Twine::str(&__dst, &v47);
  v30 = 9;
  strcpy(v29, "fillcolor");
  v46 = v29;
  v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v37, v29, &std::piecewise_construct, &v46);
  v25 = v24;
  if (*(v24 + 79) < 0)
  {
    operator delete(v24[7]);
  }

  *(v25 + 7) = v47;
  *(&v47.__r_.__value_.__s + 23) = 0;
  v47.__r_.__value_.__s.__data_[0] = 0;
  if (v30 < 0)
  {
    operator delete(v29[0]);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

LABEL_42:
  __dst.__r_.__value_.__r.__words[0] = &unk_1F5B0BA38;
  __dst.__r_.__value_.__l.__size_ = "v%i ";
  LODWORD(__dst.__r_.__value_.__r.__words[2]) = v10;
  llvm::raw_ostream::operator<<((a1 + 1384), &__dst);
  v26 = *(a1 + 1416);
  if (*(a1 + 1408) - v26 > 1uLL)
  {
    *v26 = 2619;
    *(a1 + 1416) += 2;
  }

  else
  {
    llvm::raw_ostream::write((a1 + 1384), ";\n", 2uLL);
  }

  LODWORD(v39[0]) = v10;
  *(v39 + 4) = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v37, v38[0]);
  return v39[0];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>,mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 24 * v6;
    v8 = *v7;
    if (*v7 == *a2)
    {
      return v7 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = *a1 + 24 * (v14 & v5);
      v8 = *v7;
      if (*v7 == *a2)
      {
        return v7 + 8;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::LookupBucketFor<mlir::Value>(*v16, *(v16 + 16), *v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  *(v7 + 8) = 0;
  *(v7 + 12) = 0;
  return v7 + 8;
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::PrintOpPass::processOperation(mlir::Operation *)::{lambda(void)#1}>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v3 = a1[1];
    v4 = ((v1 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40);
    v5 = v4 + 24 * (v2 & 0x7FFFFF);
    do
    {
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        v7 = i - 8;
        if (!i)
        {
          v7 = 0;
        }

        v10[0] = v7;
        v10[1] = v3;
        v9 = 0;
        LOBYTE(__p) = 0;
        if (v9 < 0)
        {
          operator delete(__p);
        }
      }

      v4 += 24;
    }

    while (v4 != v5);
  }
}

void llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::PrintOpPass::processBlock(mlir::Block &)::{lambda(void)#1}>(void *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (v5 != v6)
  {
    v1 = "ellipse";
    v2 = "";
    do
    {
      std::to_string(&v26, *(*v5 + 24));
      v8 = std::string::insert(&v26, 0, "arg");
      __p = *v8;
      v8->__r_.__value_.__r.__words[0] = 0;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v11 = v10;
      *v12 = v9;
      *(v12 + 8) = v11;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v5;
    }

    while (v5 != v6);
    v3 = *a1;
  }

  v13 = v3 + 32;
  v14 = *(v3 + 40);
  if (v14 != v3 + 32)
  {
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v18 = *(v14 + 8);
    if (v18 != v13)
    {
      v19 = v16;
      v20 = v17;
      do
      {
        v21 = v19;
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        v24 = v23;
        if (*(v4 + 888) == 1)
        {
          *(&v26.__r_.__value_.__s + 23) = 0;
          v26.__r_.__value_.__s.__data_[0] = 0;
          v2 = v2 & 0xFFFFFFFF00000000 | v20;
          v1 = v1 & 0xFFFFFFFF00000000 | v23;
          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }
        }

        v18 = *(v18 + 8);
        v20 = v24;
      }

      while (v18 != v13);
    }
  }
}

void anonymous namespace::PrintOpPass::emitEdgeStmt(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *__src, size_t __len)
{
  v58 = *MEMORY[0x1E69E9840];
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  if (!__src)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_13;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (__len | 7) + 1;
    }

    v17 = __src;
    v18 = operator new(v16);
    __src = v17;
    p_dst = v18;
    __dst.__r_.__value_.__l.__size_ = __len;
    __dst.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v18;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = __len;
    p_dst = &__dst;
    if (!__len)
    {
      goto LABEL_12;
    }
  }

  memmove(p_dst, __src, __len);
LABEL_12:
  p_dst->__r_.__value_.__s.__data_[__len] = 0;
LABEL_13:
  HIBYTE(v55) = 5;
  strcpy(&__p, "style");
  *&v56 = &__p;
  v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v44, &__p, &std::piecewise_construct, &v56);
  v20 = v19;
  if (*(v19 + 79) < 0)
  {
    operator delete(v19[7]);
    *(v20 + 7) = __dst;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
LABEL_15:
      if (a3)
      {
        goto LABEL_16;
      }

LABEL_24:
      if (a5)
      {
        goto LABEL_41;
      }

      *v42 = *a6;
      v43 = *(a6 + 16);
      *(a6 + 8) = 0;
      *(a6 + 16) = 0;
      *a6 = 0;
      v54 = 0;
      v55 = 0;
      LODWORD(__dst.__r_.__value_.__r.__words[1]) = 0;
      v50 = 0;
      v51 = 1;
      v48 = 0;
      v49 = 0;
      __dst.__r_.__value_.__r.__words[2] = 0;
      __dst.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
      p_p = &__p;
      __p = 0;
      llvm::raw_ostream::SetBufferAndMode(&__dst, 0, 0, 0);
      if (v43 >= 0)
      {
        v27 = v42;
      }

      else
      {
        v27 = v42[0];
      }

      if (v43 >= 0)
      {
        v28 = SHIBYTE(v43);
      }

      else
      {
        v28 = v42[1];
      }

      llvm::raw_ostream::write_escaped(&__dst, v27, v28, 0);
      llvm::raw_ostream::~raw_ostream(&__dst);
      std::operator+<char>();
      v29 = std::string::append(&__dst, "");
      v30 = v29->__r_.__value_.__r.__words[0];
      *&v56 = v29->__r_.__value_.__l.__size_;
      *(&v56 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      *(&__dst.__r_.__value_.__s + 23) = 5;
      strcpy(&__dst, "label");
      v46 = &__dst;
      v32 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v44, &__dst.__r_.__value_.__l.__data_, &std::piecewise_construct, &v46);
      v33 = v32;
      if (*(v32 + 79) < 0)
      {
        operator delete(v32[7]);
      }

      v34 = v56;
      v33[7] = v30;
      v33[8] = v34;
      *(v33 + 71) = *(&v56 + 7);
      *(v33 + 79) = v31;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
LABEL_37:
          if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

LABEL_50:
          v41 = v42[0];
LABEL_51:
          operator delete(v41);
          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v55) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      operator delete(__p);
      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }
  }

  else
  {
    *(v19 + 7) = __dst;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(__p);
  if ((a3 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  std::to_string(&__dst, SHIDWORD(a2));
  v21 = std::string::insert(&__dst, 0, "cluster_");
  v22 = v21->__r_.__value_.__r.__words[0];
  *&v56 = v21->__r_.__value_.__l.__size_;
  *(&v56 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
  v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  HIBYTE(v55) = 5;
  strcpy(&__p, "ltail");
  v46 = &__p;
  v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v44, &__p, &std::piecewise_construct, &v46);
  v25 = v24;
  if (*(v24 + 79) < 0)
  {
    operator delete(v24[7]);
  }

  v26 = v56;
  v25[7] = v22;
  v25[8] = v26;
  *(v25 + 71) = *(&v56 + 7);
  *(v25 + 79) = v23;
  if ((SHIBYTE(v55) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((a5 & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  operator delete(__p);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if (a5)
  {
LABEL_41:
    std::to_string(&__dst, SHIDWORD(a4));
    v35 = std::string::insert(&__dst, 0, "cluster_");
    v36 = v35->__r_.__value_.__r.__words[0];
    *&v56 = v35->__r_.__value_.__l.__size_;
    *(&v56 + 7) = *(&v35->__r_.__value_.__r.__words[1] + 7);
    v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    HIBYTE(v55) = 5;
    strcpy(&__p, "lhead");
    v46 = &__p;
    v38 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v44, &__p, &std::piecewise_construct, &v46);
    v39 = v38;
    if (*(v38 + 79) < 0)
    {
      operator delete(v38[7]);
    }

    v40 = v56;
    v39[7] = v36;
    v39[8] = v40;
    *(v39 + 71) = *(&v56 + 7);
    *(v39 + 79) = v37;
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    v41 = __dst.__r_.__value_.__r.__words[0];
    goto LABEL_51;
  }

LABEL_52:
  v56 = 0uLL;
  v57 = 0;
  LODWORD(__dst.__r_.__value_.__r.__words[1]) = 0;
  v50 = 0;
  v51 = 1;
  v48 = 0;
  v49 = 0;
  __dst.__r_.__value_.__r.__words[2] = 0;
  __dst.__r_.__value_.__r.__words[0] = &unk_1F5B3FB30;
  p_p = &v56;
  llvm::raw_ostream::SetBufferAndMode(&__dst, 0, 0, 0);
  __p = &unk_1F5B0BA00;
  v54 = "v%i -> v%i ";
  v55 = __PAIR64__(a4, a2);
  llvm::raw_ostream::operator<<(&__dst, &__p);
  llvm::raw_ostream::~raw_ostream(&__dst);
  std::vector<std::string>::push_back[abi:nn200100](a1 + 1472, &v56);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v44, v45[0]);
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t ***a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      while (1)
      {
        v11 = v6;
        v14 = v6[4];
        v12 = v6 + 4;
        v13 = v14;
        v15 = *(v12 + 23);
        if (v15 >= 0)
        {
          v16 = *(v12 + 23);
        }

        else
        {
          v16 = v12[1];
        }

        if (v15 >= 0)
        {
          v17 = v12;
        }

        else
        {
          v17 = v13;
        }

        if (v16 >= v9)
        {
          v18 = v9;
        }

        else
        {
          v18 = v16;
        }

        v19 = memcmp(v10, v17, v18);
        v20 = v9 < v16;
        if (v19)
        {
          v20 = v19 < 0;
        }

        if (!v20)
        {
          break;
        }

        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_27;
        }
      }

      v21 = memcmp(v17, v10, v18);
      v22 = v16 < v9;
      if (v21)
      {
        v22 = v21 < 0;
      }

      if (!v22)
      {
        break;
      }

      v6 = v11[1];
      if (!v6)
      {
        v7 = v11 + 1;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v11 = (a1 + 1);
LABEL_27:
    v23 = v11;
    v11 = operator new(0x50uLL);
    v24 = *a4;
    v25 = *(*a4 + 2);
    *(v11 + 2) = **a4;
    v11[6] = v25;
    *v24 = 0;
    v24[1] = 0;
    v24[2] = 0;
    v11[8] = 0;
    v11[9] = 0;
    v11[7] = 0;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v23;
    *v7 = v11;
    v26 = **a1;
    if (v26)
    {
      *a1 = v26;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v11);
    a1[2] = (a1[2] + 1);
  }

  return v11;
}

void anonymous namespace::PrintOpPass::emitAttrList(llvm::raw_ostream *this, void *a2)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "[", 1uLL);
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    if (v7 == v5)
    {
      goto LABEL_40;
    }

LABEL_5:
    v20[0] = v6 + 4;
    v21 = " = ";
    v22 = 772;
    v23[0] = v20;
    v24 = v6 + 7;
    v25 = 1026;
    llvm::Twine::str(v23, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    llvm::raw_ostream::write(this, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v10 = v6[1];
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = v6[1];
      if (!v10)
      {
        do
        {
LABEL_17:
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
        goto LABEL_19;
      }
    }

    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10);
LABEL_19:
    if (v11 == v5)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v13 = *(this + 4);
      if (*(this + 3) - v13 > 1uLL)
      {
        *v13 = 8236;
        *(this + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(this, ", ", 2uLL);
      }

      v20[0] = v11 + 4;
      v21 = " = ";
      v22 = 772;
      v23[0] = v20;
      v24 = v11 + 7;
      v25 = 1026;
      llvm::Twine::str(v23, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      llvm::raw_ostream::write(this, v14, v15);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v16 = v11[1];
        if (v16)
        {
          do
          {
LABEL_35:
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
          goto LABEL_21;
        }
      }

      else
      {
        v16 = v11[1];
        if (v16)
        {
          goto LABEL_35;
        }
      }

      do
      {
        v17 = v11[2];
        v12 = *v17 == v11;
        v11 = v17;
      }

      while (!v12);
LABEL_21:
      v11 = v17;
      if (v17 == v5)
      {
        goto LABEL_40;
      }
    }
  }

  *v4 = 91;
  ++*(this + 4);
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    goto LABEL_5;
  }

LABEL_40:
  v18 = *(this + 4);
  if (*(this + 3) == v18)
  {
    llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v18 = 93;
    ++*(this + 4);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

void llvm::function_ref<void ()(llvm::raw_ostream &)>::callback_fn<anonymous namespace::PrintOpPass::getLabel(mlir::Operation *)::{lambda(llvm::raw_ostream &)#1}>(mlir::Operation ***a1, llvm::raw_ostream *a2)
{
  v4 = a1[1];
  __b = *(**a1 + 6);
  mlir::OperationName::print(&__b, a2);
  if (*(v4 + 1304) != 1)
  {
    goto LABEL_43;
  }

  v5 = *(a2 + 4);
  if (*(a2 + 3) - v5 > 3uLL)
  {
    *v5 = 673200672;
    *(a2 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(a2, " : (", 4uLL);
  }

  memset(&v96, 0, sizeof(v96));
  LODWORD(v89) = 0;
  v93 = 0;
  v94 = 1;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  __b = &unk_1F5B3FB30;
  v95 = &v96;
  llvm::raw_ostream::SetBufferAndMode(&__b, 0, 0, 0);
  v6 = **a1;
  v7 = *(v6 + 36);
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = 0;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  __p.__r_.__value_.__l.__size_ = v7;
  mlir::OperandRange::getTypes(&__dst, &__p);
  size = __dst.__r_.__value_.__l.__size_;
  v10 = v85;
  if (__dst.__r_.__value_.__l.__size_ != v85)
  {
    v11 = __dst.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(__dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::Type::print(&__p, &__b);
    for (i = size + 1; v10 != i; ++i)
    {
      if ((v91 - v92) > 1)
      {
        *v92++ = 8236;
      }

      else
      {
        llvm::raw_ostream::write(&__b, ", ", 2uLL);
      }

      __p.__r_.__value_.__r.__words[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, i) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&__p, &__b);
    }
  }

  if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    __src = v96;
    v13 = SHIBYTE(v96.__r_.__value_.__r.__words[2]);
    goto LABEL_11;
  }

  std::string::__init_copy_ctor_external(&__src, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  v13 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    v14 = *(v4 + 118);
    if (v14 < v13)
    {
      p_src = &__src;
      if (v13 >= v14)
      {
        v16 = *(v4 + 118);
      }

      else
      {
        v16 = v13;
      }

      if (v16 < 0x17)
      {
        goto LABEL_16;
      }

LABEL_24:
      if ((v16 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v16 | 7) + 1;
      }

      p_dst = operator new(v19);
      __dst.__r_.__value_.__l.__size_ = v16;
      __dst.__r_.__value_.__r.__words[2] = v19 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
      goto LABEL_28;
    }

LABEL_31:
    __p = __src;
    memset(&__src, 0, sizeof(__src));
    goto LABEL_32;
  }

  v18 = *(v4 + 118);
  if (__src.__r_.__value_.__l.__size_ <= v18)
  {
    goto LABEL_31;
  }

  p_src = __src.__r_.__value_.__r.__words[0];
  if (__src.__r_.__value_.__l.__size_ >= v18)
  {
    v16 = *(v4 + 118);
  }

  else
  {
    v16 = __src.__r_.__value_.__l.__size_;
  }

  if (v16 >= 0x17)
  {
    goto LABEL_24;
  }

LABEL_16:
  *(&__dst.__r_.__value_.__s + 23) = v16;
  p_dst = &__dst;
  if (v16)
  {
LABEL_28:
    memmove(p_dst, p_src, v16);
  }

  p_dst->__r_.__value_.__s.__data_[v16] = 0;
  v20 = std::string::append(&__dst, "...");
  v21 = v20->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_32:
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
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  v24 = llvm::raw_ostream::write(a2, p_p, v23);
  v25 = v24[4];
  if (v24[3] != v25)
  {
    *v25 = 41;
    ++v24[4];
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  llvm::raw_ostream::write(v24, ")", 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_40:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_41:
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
    llvm::raw_ostream::~raw_ostream(&__b);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_49;
    }

LABEL_43:
    if (*(v4 + 680) != 1)
    {
      return;
    }

    goto LABEL_44;
  }

  llvm::raw_ostream::~raw_ostream(&__b);
  if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_49:
  operator delete(v96.__r_.__value_.__l.__data_);
  if (*(v4 + 680) != 1)
  {
    return;
  }

LABEL_44:
  v26 = *(a2 + 4);
  if (*(a2 + 3) == v26)
  {
    llvm::raw_ostream::write(a2, "\n", 1uLL);
  }

  else
  {
    *v26 = 10;
    ++*(a2 + 4);
  }

  __b = mlir::Operation::getAttrDictionary(**a1);
  Value = mlir::ArrayAttr::getValue(&__b);
  if (v28)
  {
    v29 = Value;
    v30 = (Value + 16 * v28);
    v82 = v4;
    while (1)
    {
      v31 = *(a2 + 4);
      if (v31 >= *(a2 + 3))
      {
        v32 = llvm::raw_ostream::write(a2, 10);
      }

      else
      {
        *(a2 + 4) = v31 + 1;
        *v31 = 10;
        v32 = a2;
      }

      __b = mlir::CallGraphNode::getCallableRegion(v29);
      AttrData = mlir::OpaqueAttr::getAttrData(&__b);
      v35 = v33;
      v36 = *(v32 + 4);
      if (v33 <= *(v32 + 3) - v36)
      {
        if (v33)
        {
          memcpy(v36, AttrData, v33);
          v36 = (*(v32 + 4) + v35);
          *(v32 + 4) = v36;
        }
      }

      else
      {
        v32 = llvm::raw_ostream::write(v32, AttrData, v33);
        v36 = *(v32 + 4);
      }

      if (*(v32 + 3) - v36 > 1uLL)
      {
        *v36 = 8250;
        *(v32 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v32, ": ", 2uLL);
      }

      v37 = *(v29 + 1);
      v99[0] = v37;
      mlir::OpPrintingFlags::OpPrintingFlags(&__b);
      LargeElementsAttrLimit = mlir::OpPrintingFlags::getLargeElementsAttrLimit(&__b);
      if (v39)
      {
        v40 = LargeElementsAttrLimit;
      }

      else
      {
        v40 = 16;
      }

      if (mlir::DenseElementsAttr::classof(v37))
      {
        v41 = v37;
      }

      else
      {
        v41 = 0;
      }

      __b = v41;
      if (v41)
      {
        if (mlir::DenseElementsAttr::isSplat(&__b))
        {
          mlir::Attribute::print(v99, a2, 0);
          goto LABEL_55;
        }

        v37 = v99[0];
      }

      v42 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v37);
      v98[0] = v42;
      v98[1] = v43;
      if (v42 && mlir::ElementsAttr::getNumElements(v42, v43) > v40)
      {
        v96.__r_.__value_.__r.__words[0] = mlir::CallOpInterface::getArgOperands(v98);
        v96.__r_.__value_.__l.__size_ = v44;
        mlir::CallableOpInterface::getArgAttrsAttr(&v96);
        if (v45 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_168;
        }

        v46 = v45;
        if (v45 >= 0x17)
        {
          if ((v45 | 7) == 0x17)
          {
            v65 = 25;
          }

          else
          {
            v65 = (v45 | 7) + 1;
          }

          p_b = operator new(v65);
          v89 = v46;
          v90 = v65 | 0x8000000000000000;
          __b = p_b;
        }

        else
        {
          HIBYTE(v90) = v45;
          p_b = &__b;
          if (!v45)
          {
LABEL_128:
            *(p_b + v46) = 0;
            if (v90 >= 0)
            {
              v66 = &__b;
            }

            else
            {
              v66 = __b;
            }

            if (v90 >= 0)
            {
              v67 = HIBYTE(v90);
            }

            else
            {
              v67 = v89;
            }

            v68 = llvm::raw_ostream::write(a2, v66, v67);
            v69 = v68[4];
            if ((v68[3] - v69) > 2)
            {
              *(v69 + 2) = 46;
              *v69 = 11822;
              v70 = v68;
              v68[4] += 3;
            }

            else
            {
              v70 = llvm::raw_ostream::write(v68, "...", 3uLL);
            }

            __p.__r_.__value_.__r.__words[0] = mlir::CallOpInterface::getArgOperands(v98);
            __p.__r_.__value_.__l.__size_ = v71;
            mlir::CallableOpInterface::getArgAttrsAttr(&__p);
            if (v72 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_168:
              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
            }

            v73 = v72;
            if (v72 >= 0x17)
            {
              if ((v72 | 7) == 0x17)
              {
                v75 = 25;
              }

              else
              {
                v75 = (v72 | 7) + 1;
              }

              v74 = operator new(v75);
              v76 = v75 | 0x8000000000000000;
              v4 = v82;
              __dst.__r_.__value_.__l.__size_ = v73;
              __dst.__r_.__value_.__r.__words[2] = v76;
              __dst.__r_.__value_.__r.__words[0] = v74;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v72;
              v74 = &__dst;
              if (!v72)
              {
LABEL_146:
                v74->__r_.__value_.__s.__data_[v73] = 0;
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v77 = &__dst;
                }

                else
                {
                  v77 = __dst.__r_.__value_.__r.__words[0];
                }

                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v78 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v78 = __dst.__r_.__value_.__l.__size_;
                }

                v79 = llvm::raw_ostream::write(v70, v77, v78);
                v80 = v79;
                v81 = *(v79 + 4);
                if ((*(v79 + 3) - v81) > 2)
                {
                  *(v81 + 2) = 32;
                  *v81 = 14880;
                  *(v79 + 4) += 3;
                }

                else
                {
                  v80 = llvm::raw_ostream::write(v79, " : ", 3uLL);
                }

                v86.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::getType(v98);
                mlir::Type::print(&v86, v80);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v90) < 0)
                  {
LABEL_159:
                    v64 = __b;
                    goto LABEL_160;
                  }
                }

                else if (SHIBYTE(v90) < 0)
                {
                  goto LABEL_159;
                }

                goto LABEL_55;
              }
            }

            memset(v74, 93, v73);
            goto LABEL_146;
          }
        }

        memset(p_b, 91, v46);
        goto LABEL_128;
      }

      v48 = v99[0];
      v49 = *(*v99[0] + 136);
      if (v49 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v48 = 0;
      }

      v97 = v48;
      if (v49 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        mlir::ArrayAttr::getValue(&v97);
        if (v50 > v40)
        {
          v51 = *(a2 + 4);
          if ((*(a2 + 3) - v51) > 4)
          {
            *(v51 + 4) = 93;
            *v51 = 774778459;
            *(a2 + 4) += 5;
          }

          else
          {
            llvm::raw_ostream::write(a2, "[...]", 5uLL);
          }

          goto LABEL_55;
        }
      }

      memset(&v96, 0, sizeof(v96));
      LODWORD(v89) = 0;
      v93 = 0;
      v94 = 1;
      v91 = 0;
      v92 = 0;
      v90 = 0;
      __b = &unk_1F5B3FB30;
      v95 = &v96;
      llvm::raw_ostream::SetBufferAndMode(&__b, 0, 0, 0);
      mlir::Attribute::print(v99, &__b, 0);
      if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      std::string::__init_copy_ctor_external(&v86, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
      v52 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      v57 = *(v4 + 118);
      if (v86.__r_.__value_.__l.__size_ > v57)
      {
        v54 = v86.__r_.__value_.__r.__words[0];
        if (v86.__r_.__value_.__l.__size_ >= v57)
        {
          v55 = *(v4 + 118);
        }

        else
        {
          v55 = v86.__r_.__value_.__l.__size_;
        }

        if (v55 >= 0x17)
        {
LABEL_102:
          if ((v55 | 7) == 0x17)
          {
            v58 = 25;
          }

          else
          {
            v58 = (v55 | 7) + 1;
          }

          v56 = operator new(v58);
          v59 = v58 | 0x8000000000000000;
          v4 = v82;
          __dst.__r_.__value_.__l.__size_ = v55;
          __dst.__r_.__value_.__r.__words[2] = v59;
          __dst.__r_.__value_.__r.__words[0] = v56;
LABEL_106:
          memmove(v56, v54, v55);
LABEL_107:
          v56->__r_.__value_.__s.__data_[v55] = 0;
          v60 = std::string::append(&__dst, "...");
          v61 = v60->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = *&v60->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v61;
          v60->__r_.__value_.__l.__size_ = 0;
          v60->__r_.__value_.__r.__words[2] = 0;
          v60->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          goto LABEL_110;
        }

LABEL_94:
        *(&__dst.__r_.__value_.__s + 23) = v55;
        v56 = &__dst;
        if (v55)
        {
          goto LABEL_106;
        }

        goto LABEL_107;
      }

LABEL_109:
      __p = v86;
      memset(&v86, 0, sizeof(v86));
LABEL_110:
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = &__p;
      }

      else
      {
        v62 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v63 = __p.__r_.__value_.__l.__size_;
      }

      llvm::raw_ostream::write(a2, v62, v63);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_118:
          llvm::raw_ostream::~raw_ostream(&__b);
          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_122;
          }

          goto LABEL_55;
        }
      }

      else if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }

      operator delete(v86.__r_.__value_.__l.__data_);
      llvm::raw_ostream::~raw_ostream(&__b);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_122:
        v64 = v96.__r_.__value_.__r.__words[0];
LABEL_160:
        operator delete(v64);
      }

LABEL_55:
      v29 = (v29 + 16);
      if (v29 == v30)
      {
        return;
      }
    }

    v86 = v96;
    v52 = SHIBYTE(v96.__r_.__value_.__r.__words[2]);
LABEL_89:
    v53 = *(v4 + 118);
    if (v53 < v52)
    {
      v54 = &v86;
      if (v52 >= v53)
      {
        v55 = *(v4 + 118);
      }

      else
      {
        v55 = v52;
      }

      if (v55 >= 0x17)
      {
        goto LABEL_102;
      }

      goto LABEL_94;
    }

    goto LABEL_109;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>,mlir::Value,anonymous namespace::Node,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::Node>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[3] = -4096;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v27 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v28 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v28 >> 47) ^ v28);
              LODWORD(v28) = -348639895 * ((v29 >> 47) ^ v29);
              v30 = *(a1 + 16) - 1;
              v31 = v30 & v28;
              v25 = *a1 + 24 * v31;
              v32 = *v25;
              if (*v25 != v27)
              {
                v33 = 0;
                v34 = 1;
                while (v32 != -4096)
                {
                  if (v33)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v32 == -8192;
                  }

                  if (v35)
                  {
                    v33 = v25;
                  }

                  v36 = v31 + v34++;
                  v31 = v36 & v30;
                  v25 = *a1 + 24 * (v36 & v30);
                  v32 = *v25;
                  if (*v25 == v27)
                  {
                    goto LABEL_26;
                  }
                }

                if (v33)
                {
                  v25 = v33;
                }
              }

LABEL_26:
              *v25 = v27;
              v26 = *(v20 + 1);
              *(v25 + 16) = *(v20 + 4);
              *(v25 + 8) = v26;
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = -4096;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -4096;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[3] = -4096;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void mlir::detail::ConversionPatternRewriterImpl::undoRewrites(mlir::detail::ConversionPatternRewriterImpl *this, unsigned int a2)
{
  v2 = (this + 176);
  v3 = *(this + 46);
  if (v3 != a2)
  {
    v6 = a2;
    v7 = 8 * a2;
    v8 = 8 * v3;
    v9 = v7 - v8;
    v10 = (v8 + *(this + 22) - 8);
    do
    {
      v11 = *v10--;
      (*(*v11 + 16))(v11);
      v9 += 8;
    }

    while (v9);
    v12 = *(this + 46);
    if (v12 != a2)
    {
      if (v12 > a2)
      {
        v13 = 8 * v12;
        v14 = v7 - v13;
        v15 = &(*v2)[v13 - 8];
        do
        {
          v16 = *v15;
          *v15 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          --v15;
          v14 += 8;
        }

        while (v14);
        goto LABEL_32;
      }

      if (*(this + 47) >= a2)
      {
        v17 = *v2;
        v24 = v6 - v12;
        if (v6 == v12)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v37 = 0;
      v17 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v2, this + 192, v6, 8, &v37);
      v18 = *(this + 22);
      v19 = *(this + 46);
      if (!v19)
      {
LABEL_28:
        v36 = v37;
        if (v18 != this + 192)
        {
          free(v18);
        }

        *(this + 22) = v17;
        *(this + 47) = v36;
        v12 = *(this + 46);
        v24 = v6 - v12;
        if (v6 == v12)
        {
          goto LABEL_32;
        }

LABEL_31:
        bzero(&v17[8 * v12], 8 * v24);
LABEL_32:
        *(this + 46) = a2;
        return;
      }

      v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v21 = 8 * v19;
      if (v20 >= 0xB)
      {
        if (v18 >= &v17[v21] || (v22 = v17, v23 = *(this + 22), v17 >= &v18[v21]))
        {
          v25 = v20 + 1;
          v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
          v22 = &v17[v26];
          v23 = &v18[v26];
          v27 = (v18 + 16);
          v28 = v17 + 16;
          v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = *(v27 - 1);
            v31 = *v27;
            *(v27 - 1) = 0uLL;
            *v27 = 0uLL;
            *(v28 - 1) = v30;
            *v28 = v31;
            v27 += 2;
            v28 += 2;
            v29 -= 4;
          }

          while (v29);
          if (v25 == (v25 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_23:
            v34 = v18 - 8;
            do
            {
              v35 = *&v34[v21];
              *&v34[v21] = 0;
              if (v35)
              {
                (*(*v35 + 8))(v35);
              }

              v21 -= 8;
            }

            while (v21);
            v18 = *v2;
            goto LABEL_28;
          }
        }
      }

      else
      {
        v22 = v17;
        v23 = *(this + 22);
      }

      v32 = &v18[8 * v19];
      do
      {
        v33 = *v23;
        *v23 = 0;
        v23 += 8;
        *v22 = v33;
        v22 += 8;
      }

      while (v23 != v32);
      goto LABEL_23;
    }
  }
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::remapValues(uint64_t *a1, mlir::detail::OpResultImpl *a2, mlir::detail::OpResultImpl *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a8 > *(a9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), a8, 8);
    v44 = 0;
    v45 = a7;
    v46 = 0;
LABEL_4:
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v17 = mlir::ValueRange::dereference_iterator(&v45, v14);
      v40 = v17;
      v18 = *(v17 + 1);
      Loc = a4;
      if ((a5 & 1) == 0)
      {
        Loc = mlir::Value::getLoc(&v40);
      }

      v20 = a1[43];
      if (!v20)
      {
        v16 = *(a9 + 8);
        if (v16 >= *(a9 + 12))
        {
          v32 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v16 + 1, 8);
          v15 = v32;
          v16 = *(a9 + 8);
        }

        *(*a9 + 8 * v16) = v15;
        ++*(a9 + 8);
        goto LABEL_8;
      }

      v21 = (v18 & 0xFFFFFFFFFFFFFFF8);
      v41 = &v43;
      v42 = 0x100000000;
      if (mlir::TypeConverter::convertType(v20, v21, &v41))
      {
        if (v42 == 1)
        {
          v22 = *v41;
          v24 = v23;
          v38 = v23;
          if (v22 != (*(v23 + 1) & 0xFFFFFFFFFFFFFFF8))
          {
            v39[0] = v23;
            ParentBlock = mlir::Value::getParentBlock(v39);
            v26 = (ParentBlock + 40);
            if (v39[0] && (*(v39[0] + 1) & 7) != 7)
            {
              v26 = (mlir::detail::OpResultImpl::getOwner(v39[0]) + 8);
            }

            v24 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 1u, ParentBlock, *v26, Loc, &v38, 1, v22, a1[43]);
            v39[0] = v38;
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[]((a1 + 13), v39) = v24;
            v38 = v24;
          }

          v27 = *(a9 + 8);
          if (v27 >= *(a9 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v27 + 1, 8);
            v27 = *(a9 + 8);
          }

          v28 = 0;
          *(*a9 + 8 * v27) = v24;
          ++*(a9 + 8);
          v29 = v41;
          if (v41 != &v43)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v31 = *(a9 + 8);
          if (v31 >= *(a9 + 12))
          {
            v33 = v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v31 + 1, 8);
            v30 = v33;
            v31 = *(a9 + 8);
          }

          *(*a9 + 8 * v31) = v30;
          ++*(a9 + 8);
          v28 = 3;
          v29 = v41;
          if (v41 != &v43)
          {
LABEL_24:
            free(v29);
          }
        }
      }

      else
      {
        v39[0] = a2;
        v39[1] = a3;
        v39[2] = v13;
        v39[3] = v17;
        v39[4] = v21;
        (*(*a1 + 88))(a1, Loc, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::remapValues(llvm::StringRef,std::optional<mlir::Location>,mlir::PatternRewriter &,mlir::ValueRange,llvm::SmallVectorImpl<mlir::Value> &)::$_0>, v39);
        v28 = 1;
        v29 = v41;
        if (v41 != &v43)
        {
          goto LABEL_24;
        }
      }

      if (v28 != 3 && v28)
      {
        return 0;
      }

LABEL_8:
      v13 = (v44 + 1);
      v14 = v46 + 1;
      ++v44;
      v46 = v14;
      if (v14 == a8)
      {
        return 1;
      }
    }
  }

  v44 = 0;
  v45 = a7;
  v46 = 0;
  if (a8)
  {
    goto LABEL_4;
  }

  return 1;
}

unint64_t anonymous namespace::ConversionValueMapping::lookupOrDefault(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    if (a3 && (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
    {
      return a2;
    }

    goto LABEL_28;
  }

  v4 = *a1;
  v5 = v3 - 1;
  v6 = a2;
  if (!a3)
  {
    while (1)
    {
      a2 = v6;
      v18 = HIDWORD(v6);
      v19 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
      v16 = v5 & (-348639895 * ((((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 32) >> 15) ^ (-348639895 * (v18 ^ (v19 >> 47) ^ v19))));
      v17 = *(v4 + 16 * v16);
      if (v17 != a2)
      {
        break;
      }

LABEL_21:
      if (v16 == v3)
      {
        v7 = a2;
        goto LABEL_23;
      }

      v6 = *(v4 + 16 * v16 + 8);
      v7 = a2;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    v14 = 1;
    while (v17 != -4096)
    {
      v15 = v16 + v14++;
      v16 = v15 & v5;
      v17 = *(v4 + 16 * v16);
      if (v17 == a2)
      {
        goto LABEL_21;
      }
    }

LABEL_28:
    if (a2)
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  a2 = 0;
  while (1)
  {
    v7 = v6;
    if ((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) == a3)
    {
      a2 = v6;
    }

    v8 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
    v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v8 >> 47) ^ v8);
    v10 = v5 & (-348639895 * ((v9 >> 47) ^ v9));
    v11 = *(v4 + 16 * v10);
    if (v11 != v7)
    {
      break;
    }

LABEL_7:
    if (v10 != v3)
    {
      v6 = *(v4 + 16 * v10 + 8);
      if (v6)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  v12 = 1;
  while (v11 != -4096)
  {
    v13 = v10 + v12++;
    v10 = v13 & v5;
    v11 = *(v4 + 16 * v10);
    if (v11 == v7)
    {
      goto LABEL_7;
    }
  }

LABEL_23:
  if (a2)
  {
    return a2;
  }

  else
  {
    return v7;
  }
}

BOOL mlir::TypeConverter::convertType(uint64_t a1, void *a2, uint64_t *a3)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v57 = a2;
  Context = mlir::Attribute::getContext(&v57);
  isMultithreadingEnabled = mlir::MLIRContext::isMultithreadingEnabled(Context);
  if (isMultithreadingEnabled)
  {
    llvm::sys::RWMutexImpl::lock_shared((a1 + 520));
  }

  v7 = *(a1 + 488);
  if (v7)
  {
    v8 = *(a1 + 472);
    v9 = ((v57 >> 4) ^ (v57 >> 9)) & (v7 - 1);
    v10 = *(v8 + 16 * v9);
    if (v57 == v10)
    {
LABEL_5:
      if (v9 != v7)
      {
        v18 = v8 + 16 * v9;
        v21 = *(v18 + 8);
        v19 = (v18 + 8);
        v20 = v21;
        if (v21)
        {
          v22 = *(a3 + 2);
          if (v22 >= *(a3 + 3))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v22 + 1, 8);
            LODWORD(v22) = *(a3 + 2);
          }

          *(*a3 + 8 * v22) = v20;
          ++*(a3 + 2);
          v20 = *v19 != 0;
        }

        v23 = 0;
        if (isMultithreadingEnabled)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v55 = 1;
      while (v10 != -4096)
      {
        v56 = v9 + v55++;
        v9 = v56 & (v7 - 1);
        v10 = *(v8 + 16 * v9);
        if (v57 == v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v11 = *(a1 + 496);
  v12 = *(a1 + 512);
  if (v12)
  {
    v13 = ((v57 >> 4) ^ (v57 >> 9)) & (v12 - 1);
    v14 = v11 + 40 * v13;
    v15 = *v14;
    if (v57 == *v14)
    {
      goto LABEL_19;
    }

    v16 = 1;
    while (v15 != -4096)
    {
      v17 = v13 + v16++;
      v13 = v17 & (v12 - 1);
      v14 = v11 + 40 * v13;
      v15 = *v14;
      if (v57 == *v14)
      {
        goto LABEL_19;
      }
    }
  }

  v14 = v11 + 40 * v12;
LABEL_19:
  if (v14 == v11 + 40 * v12)
  {
    v23 = 1;
    v20 = 1;
    if (isMultithreadingEnabled)
    {
LABEL_25:
      llvm::sys::RWMutexImpl::unlock_shared((a1 + 520));
    }
  }

  else
  {
    v24 = *(v14 + 8);
    v25 = *(v14 + 16);
    v26 = *(a3 + 2);
    if (v26 + v25 > *(a3 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v26 + v25, 8);
      LODWORD(v26) = *(a3 + 2);
    }

    if (v25)
    {
      memcpy((*a3 + 8 * v26), v24, 8 * v25);
      LODWORD(v26) = *(a3 + 2);
    }

    v23 = 0;
    *(a3 + 2) = v26 + v25;
    v20 = 1;
    if (isMultithreadingEnabled)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  if (!v23)
  {
    return v20;
  }

  v27 = *(a1 + 16);
  if (!v27)
  {
    return 0;
  }

  v28 = *(a3 + 2);
  v29 = 32 * v27;
  v30 = *(a1 + 8) - 8;
  while (1)
  {
    v58 = v57;
    v31 = *(v30 + v29);
    if (!v31)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    v32 = (*(*v31 + 48))(v31, &v58, a3);
    if ((v32 & 0x100) != 0)
    {
      break;
    }

    v29 -= 32;
    if (!v29)
    {
      return 0;
    }
  }

  v34 = v32;
  v35 = mlir::Attribute::getContext(&v57);
  v36 = mlir::MLIRContext::isMultithreadingEnabled(v35);
  if (v36)
  {
    llvm::sys::RWMutexImpl::lock((a1 + 520));
    if ((v34 & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>((a1 + 472), &v57, &v58);
      v20 = 0;
LABEL_66:
      llvm::sys::RWMutexImpl::unlock_shared((a1 + 520));
      return v20;
    }
  }

  else if ((v34 & 1) == 0)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>((a1 + 472), &v57, &v58);
    return 0;
  }

  v37 = *a3;
  v38 = *(a3 + 2);
  v39 = v38 - v28;
  v40 = (v37 + 8 * v28);
  if (v38 - v28 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>((a1 + 472), &v57, (v37 + 8 * v28), &v58);
    v20 = 1;
    if (!v36)
    {
      return v20;
    }

    goto LABEL_66;
  }

  v58 = v60;
  v59 = 0x200000000;
  if (v39 < 3)
  {
    if (v38 == v28)
    {
      v43 = 0;
      goto LABEL_50;
    }

    v41 = 0;
    v42 = v60;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v38 - v28, 8);
    v41 = v59;
    v42 = v58;
  }

  memcpy(&v42[v41], v40, 8 * v39);
  v43 = v59;
LABEL_50:
  LODWORD(v59) = v43 + v39;
  v44 = *(a1 + 512);
  if (v44)
  {
    v45 = *(a1 + 496);
    v46 = v44 - 1;
    v47 = ((v57 >> 4) ^ (v57 >> 9)) & v46;
    v48 = (v45 + 40 * v47);
    v49 = *v48;
    if (v57 == *v48)
    {
      goto LABEL_63;
    }

    v50 = 0;
    v51 = 1;
    while (v49 != -4096)
    {
      if (v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v49 == -8192;
      }

      if (v52)
      {
        v50 = v48;
      }

      v53 = v47 + v51++;
      v47 = v53 & v46;
      v48 = (v45 + 40 * v47);
      v49 = *v48;
      if (v57 == *v48)
      {
        goto LABEL_63;
      }
    }

    if (v50)
    {
      v54 = v50;
    }

    else
    {
      v54 = v48;
    }
  }

  else
  {
    v54 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::InsertIntoBucket<mlir::Type const&,llvm::SmallVector<mlir::Type,2u>>((a1 + 496), v54, &v57, &v58);
LABEL_63:
  if (v58 != v60)
  {
    free(v58);
  }

  v20 = 1;
  if (v36)
  {
    goto LABEL_66;
  }

  return v20;
}

char *mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v42[0] = a6;
  v42[1] = a7;
  v39 = a8;
  if (a7 == 1 && (*(mlir::ValueRange::dereference_iterator(v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8) == a8)
  {
    return mlir::ValueRange::dereference_iterator(v42, 0);
  }

  v38[0] = mlir::Attribute::getContext(&v39);
  v38[1] = 0;
  v38[2] = a3;
  v38[3] = a4;
  v15 = mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(v38, a5, &v39, v42);
  v16 = operator new(0x28uLL);
  v40 = v15;
  v16[2] = 10;
  *(v16 + 2) = a1;
  *(v16 + 3) = v15;
  *v16 = &unk_1F5B0BBA8;
  *(v16 + 4) = a9 & 0xFFFFFFFFFFFFFFF9 | (2 * a2);
  v17 = *(a1 + 336);
  if (!v17)
  {
    v23 = 0;
    goto LABEL_16;
  }

  v18 = *(a1 + 320);
  v19 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ (v15 >> 32));
  v20 = 0x9DDFEA08EB382D69 * ((v15 >> 32) ^ (v19 >> 47) ^ v19);
  v21 = v17 - 1;
  v22 = (v17 - 1) & (-348639895 * ((v20 >> 47) ^ v20));
  v23 = (v18 + 16 * v22);
  v24 = *v23;
  if (*v23 != v15)
  {
    v25 = 0;
    v26 = 1;
    while (v24 != -4096)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == -8192;
      }

      if (v27)
      {
        v25 = v23;
      }

      v28 = v22 + v26++;
      v22 = v28 & v21;
      v23 = (v18 + 16 * (v28 & v21));
      v24 = *v23;
      if (*v23 == v15)
      {
        goto LABEL_21;
      }
    }

    if (v25)
    {
      v23 = v25;
    }

LABEL_16:
    v41 = v23;
    v29 = *(a1 + 328);
    if (4 * v29 + 4 >= 3 * v17)
    {
      v36 = v16;
      v17 *= 2;
    }

    else
    {
      if (v17 + ~v29 - *(a1 + 332) > v17 >> 3)
      {
        *(a1 + 328) = v29 + 1;
        if (*v23 == -4096)
        {
LABEL_20:
          *v23 = v15;
          v23[1] = 0;
          goto LABEL_21;
        }

LABEL_19:
        --*(a1 + 332);
        goto LABEL_20;
      }

      v36 = v16;
    }

    v23 = v41;
    v16 = v36;
    ++*(a1 + 328);
    if (*v23 == -4096)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  v23[1] = v16;
  v41 = v16;
  v30 = *(a1 + 184);
  v31 = *(a1 + 176);
  v32 = &v41;
  if (v30 >= *(a1 + 188))
  {
    if (v31 <= &v41 && v31 + 8 * v30 > &v41)
    {
      v37 = &v42[-1] - v31;
      v31 = *(a1 + 176);
      v32 = &v37[v31];
    }

    else
    {
      v31 = *(a1 + 176);
      v32 = &v41;
    }
  }

  v33 = *(a1 + 184);
  v34 = *v32;
  *v32 = 0;
  *(v31 + 8 * v33) = v34;
  *(a1 + 184) = v33 + 1;
  v35 = v41;
  v41 = 0;
  if (v35)
  {
    (*(*v35 + 1))(v35);
  }

  return v15 - 16;
}

uint64_t *mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(uint64_t a1, uint64_t a2, void *a3, mlir::TypeConverter *a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a3;
  *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 352, &v22) = a4;
  v9 = v22;
  if (*v22 == v22)
  {
    return 0;
  }

  for (i = *(v22[1] + 8); i != v9; i = v11)
  {
    v11 = i[1];
    v12 = (i - 1);
    mlir::TypeConverter::convertBlockSignature(v23, a4, (i - 1));
    if (v27 != 1)
    {
      return 0;
    }

    mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v12, a4, v23);
    if (v27)
    {
      if (v25 != v26)
      {
        free(v25);
      }

      if (v23[0] != v24)
      {
        free(v23[0]);
      }
    }
  }

  if (a5)
  {
    v14 = v22[1];
    if (v14)
    {
      v15 = (v14 - 8);
    }

    else
    {
      v15 = 0;
    }

    return mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v15, a4, a5);
  }

  else
  {
    v16 = v22[1];
    if (v16)
    {
      v17 = (v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    mlir::TypeConverter::convertBlockSignature(v23, a4, v17);
    if (v27 == 1)
    {
      v18 = v22[1];
      if (v18)
      {
        v19 = (v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      result = mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v19, a4, v23);
      if (v27)
      {
        if (v25 != v26)
        {
          v20 = result;
          free(v25);
          result = v20;
        }

        if (v23[0] != v24)
        {
          v21 = result;
          free(v23[0]);
          return v21;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::TypeConverter::convertBlockSignature(void **__return_ptr a1@<X8>, mlir::TypeConverter *this@<X0>, mlir::Block *a3@<X1>)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 7) - *(a3 + 6);
  v7 = v6 >> 3;
  __src = v31;
  v30 = 0x400000000;
  if ((v6 >> 3))
  {
    v8 = (v6 >> 3);
    if (v7 < 5)
    {
      v9 = 0;
      v10 = v31;
      if (!v8)
      {
LABEL_12:
        LODWORD(v30) = v7;
        goto LABEL_13;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v31, (v6 >> 3), 32);
      v9 = v30;
      v10 = __src;
      if (v30 == v8)
      {
        goto LABEL_12;
      }
    }

    v11 = 32 * v9;
    v12 = &v10[32 * v9];
    v13 = 32 * v8 - 32 - v11;
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = (v13 >> 5) + 1;
    v12 += 32 * (v14 & 0xFFFFFFFFFFFFFFELL);
    v15 = &v10[v11 + 32];
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v15 - 32) = 0;
      *v15 = 0;
      *(v15 - 8) = 0;
      v15[24] = 0;
      v15 += 64;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_10:
      v17 = &v10[32 * v8];
      do
      {
        *v12 = 0;
        v12[24] = 0;
        v12 += 32;
      }

      while (v12 != v17);
    }

    goto LABEL_12;
  }

LABEL_13:
  v32 = v34;
  v33 = 0x400000000;
  ArgumentTypes = mlir::Block::getArgumentTypes(a3);
  mlir::ValueRange::ValueRange(v35, ArgumentTypes, (v19 - ArgumentTypes) >> 3);
  mlir::TypeRange::TypeRange(&v27, v35[0], v35[1]);
  if ((mlir::TypeConverter::convertSignatureArgs(this, v27, v28, &__src, 0) & 1) == 0)
  {
    v22 = 0;
    *a1 = 0;
    goto LABEL_35;
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v20 = v30;
  if (v30 && &__src != a1)
  {
    if (__src == v31)
    {
      v23 = v30;
      if (v30 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v30, 32), (v23 = v30) != 0))
      {
        memcpy(*a1, __src, 32 * v23);
      }

      *(a1 + 2) = v20;
    }

    else
    {
      *a1 = __src;
      v21 = HIDWORD(v30);
      *(a1 + 2) = v20;
      *(a1 + 3) = v21;
      __src = v31;
      HIDWORD(v30) = 0;
    }

    LODWORD(v30) = 0;
  }

  a1[18] = a1 + 20;
  a1[19] = 0x400000000;
  v22 = 1;
  if (&__src != a1)
  {
    v24 = v33;
    if (v33)
    {
      if (v32 != v34)
      {
        a1[18] = v32;
        v25 = HIDWORD(v33);
        *(a1 + 38) = v24;
        *(a1 + 39) = v25;
        v32 = v34;
        HIDWORD(v33) = 0;
LABEL_34:
        LODWORD(v33) = 0;
        v22 = 1;
        goto LABEL_35;
      }

      if (v33 < 5)
      {
        v26 = v33;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 18), a1 + 20, v33, 8);
        v26 = v33;
        if (!v33)
        {
          goto LABEL_33;
        }
      }

      memcpy(a1[18], v32, 8 * v26);
LABEL_33:
      *(a1 + 38) = v24;
      goto LABEL_34;
    }
  }

LABEL_35:
  *(a1 + 192) = v22;
  if (v32 != v34)
  {
    free(v32);
  }

  if (__src != v31)
  {
    free(__src);
  }
}

uint64_t *mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(uint64_t a1, uint64_t a2, mlir::Block *this, uint64_t a4, uint64_t a5)
{
  v6 = this;
  v122[1] = *MEMORY[0x1E69E9840];
  v8 = a2 + 24;
  v110 = *(a2 + 24);
  v10 = *(this + 6);
  v9 = *(this + 7);
  v11 = *(a5 + 144);
  v12 = *(a5 + 152);
  ArgumentTypes = mlir::Block::getArgumentTypes(this);
  v15 = 8 * v12;
  if ((v14 - ArgumentTypes) != v15)
  {
    goto LABEL_15;
  }

  if (!v12)
  {
    v17 = v11;
    if (ArgumentTypes != v14)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (v17 == (v11 + v15))
    {
      Block = v6;
      goto LABEL_102;
    }

    goto LABEL_15;
  }

  if (v14 != ArgumentTypes)
  {
    v16 = v15 - 8;
    v17 = v11;
    while (*v17 == (*(*ArgumentTypes + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      ArgumentTypes += 8;
      ++v17;
      if (ArgumentTypes != v14)
      {
        v18 = v16;
        v16 -= 8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v17 = v11;
LABEL_10:
  if (ArgumentTypes == v14)
  {
    goto LABEL_13;
  }

LABEL_15:
  v20 = v9 - v10;
  UnknownLoc = mlir::Builder::getUnknownLoc((v8 - 16), v14);
  v22 = UnknownLoc;
  v117 = v119;
  v118 = 0x600000000;
  if (v12 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v12, 8);
    v23 = (v117 + 8 * (v12 & 0xFFFFFFFC));
    v24 = v12 & 3;
    v25 = vdupq_n_s64(v22);
    v26 = (v117 + 16);
    v27 = v12 & 0xFFFFFFFC;
    do
    {
      v26[-1] = v25;
      *v26 = v25;
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    if ((v12 & 0xFFFFFFFC) != v12)
    {
      do
      {
        *v23++ = v22;
        --v24;
      }

      while (v24);
    }

    goto LABEL_38;
  }

  if (!v12)
  {
    goto LABEL_38;
  }

  v28 = vdupq_n_s64(v12 - 1);
  v29 = v12 + 1;
  v30 = vmovn_s64(vcgeq_u64(v28, xmmword_1E09700F0));
  if ((v30.i8[0] & 1) == 0)
  {
    v31 = v29 & 0xE;
    if ((v30.i8[4] & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v119[1] = UnknownLoc;
    if (v31 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v119[0] = UnknownLoc;
  v31 = v29 & 0xE;
  if (v30.i8[4])
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v31 == 2)
  {
    goto LABEL_38;
  }

LABEL_28:
  v32 = vmovn_s64(vcgtq_u64(v28, xmmword_1E0970220));
  if (v32.i8[0])
  {
    v119[2] = UnknownLoc;
    if ((v32.i8[4] & 1) == 0)
    {
LABEL_30:
      if (v31 == 4)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }
  }

  else if ((v32.i8[4] & 1) == 0)
  {
    goto LABEL_30;
  }

  v119[3] = UnknownLoc;
  if (v31 == 4)
  {
    goto LABEL_38;
  }

LABEL_34:
  v33 = vmovn_s64(vcgtq_u64(v28, xmmword_1E0970230));
  if (v33.i8[0])
  {
    v119[4] = UnknownLoc;
  }

  if (v33.i8[4])
  {
    v119[5] = UnknownLoc;
  }

LABEL_38:
  LODWORD(v118) = v12;
  v34 = (v20 >> 3);
  v35 = v20 & 0x7FFFFFFF8;
  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = *a5 + 32 * v36;
      if ((*(v37 + 24) & 1) != 0 && !*(v37 + 16))
      {
        v38 = *(v37 + 8);
        if (v38)
        {
          v39 = *v37;
          v40 = *(*(*(v6 + 6) + 8 * v36) + 32);
          v41 = 8 * v39;
          v42 = 1;
          do
          {
            *(v117 + v41) = v40;
            v41 += 8;
          }

          while (v38 > v42++);
        }
      }

      ++v36;
    }

    while (v36 != v34);
  }

  v113 = v34;
  v114 = a5;
  Parent = mlir::Block::getParent(v6);
  v45 = *(v6 + 2);
  mlir::ValueRange::ValueRange(&v120, v11, v12);
  Block = mlir::OpBuilder::createBlock((v8 - 16), Parent, v45, v120, v121, v117, v118);
  if (!*(*(a1 + 376) + 32))
  {
    v48 = operator new(0x38uLL);
    v48[2] = 2;
    *(v48 + 2) = a1;
    *(v48 + 3) = Block;
    *v48 = &unk_1F5B0BDB8;
    *(v48 + 4) = v6;
    v49 = (v6 + 32);
    if (*(v6 + 4) == (v6 + 32))
    {
      v46 = v113;
      *(v48 + 5) = 0;
    }

    else
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      v51 = v50;
      v52 = *(v6 + 4);
      v46 = v113;
      *(v48 + 5) = v51;
      if (v52 != v49)
      {
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
LABEL_56:
        *(v48 + 6) = v53;
        v120 = v48;
        v54 = *(a1 + 184);
        v55 = *(a1 + 176);
        v56 = &v120;
        if (v54 >= *(a1 + 188))
        {
          if (v55 <= &v120 && v55 + 8 * v54 > &v120)
          {
            v107 = &v120 - v55;
            v55 = *(a1 + 176);
            v56 = &v107[v55];
          }

          else
          {
            v55 = *(a1 + 176);
            v56 = &v120;
          }
        }

        v57 = *(a1 + 184);
        v58 = *v56;
        *v56 = 0;
        *(v55 + 8 * v57) = v58;
        *(a1 + 184) = v57 + 1;
        v59 = v120;
        v120 = 0;
        if (v59)
        {
          (*(*v59 + 8))(v59);
        }

        if (*v49 != v49 && Block != v6)
        {
          v60 = Block + 4;
          v61 = *(v6 + 5);
          llvm::ilist_traits<mlir::Operation>::transferNodesFromList((Block + 4), v6 + 32, v61, v6 + 32);
          if (v61 != v49)
          {
            v62 = *v49;
            v63 = *v61;
            *(v63 + 8) = v49;
            *v49 = v63;
            v64 = *v60;
            v62[1] = v60;
            *v61 = v64;
            *(v64 + 8) = v61;
            *v60 = v62;
          }
        }

        goto LABEL_63;
      }
    }

    v53 = 0;
    goto LABEL_56;
  }

  v46 = v113;
  while (*(v6 + 4) != (v6 + 32))
  {
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    mlir::RewriterBase::moveOpBefore(a2, v47, Block, Block + 4);
  }

LABEL_63:
  v65 = *v6;
  for (i = v114; *v6; v65 = *v6)
  {
    v70 = v65[1];
    if (v70)
    {
      v71 = *v65;
      *v70 = *v65;
      if (v71)
      {
        *(v71 + 8) = v70;
      }
    }

    v65[3] = Block;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v65[1] = v72;
    v73 = *v72;
    *v65 = *v72;
    if (v73)
    {
      *(v73 + 8) = v65;
    }

    *v72 = v65;
  }

  v108 = v8;
  v109 = a2;
  v67 = a1;
  if (v35)
  {
    v68 = 0;
    v69 = 0;
    v111 = v6;
    while (1)
    {
      while (1)
      {
        v78 = *(*(v6 + 6) + 8 * v69);
        v79 = (*(v78 + 1) & 0xFFFFFFFFFFFFFFF8);
        v80 = *i + v68;
        if (*(v80 + 24))
        {
          break;
        }

        v74 = Block[5];
        v75 = *(v78 + 4);
        mlir::ValueRange::ValueRange(&v120, 0, 0);
        v76 = v75;
        v46 = v113;
        v77 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(v67, 2u, Block, v74, v76, v120, v121, v79, a4);
        v120 = v78;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v67 + 104, &v120) = v77;
        i = v114;
LABEL_73:
        ++v69;
        v68 += 32;
        if (v46 == v69)
        {
          goto LABEL_95;
        }
      }

      v81 = *(v80 + 16);
      if (v81)
      {
        v120 = *(*(v6 + 6) + 8 * v69);
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v67 + 104, &v120) = v81;
        goto LABEL_73;
      }

      v82 = *(v80 + 8);
      v83 = Block[5];
      v84 = Block[6] + 8 * *v80;
      v85 = *(v78 + 4);
      mlir::ValueRange::ValueRange(&v120, v84, v82);
      v86 = v83;
      v67 = a1;
      v116 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 0, Block, v86, v85, v120, v121, v79, a4);
      v120 = v78;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a1 + 104, &v120) = v116;
      if (a4)
      {
        break;
      }

      v6 = v111;
      if (v82 == 1)
      {
        v87 = *(*v84 + 8) & 0xFFFFFFFFFFFFFFF8;
        goto LABEL_86;
      }

LABEL_94:
      v46 = v113;
      i = v114;
      ++v69;
      v68 += 32;
      if (v113 == v69)
      {
        goto LABEL_95;
      }
    }

    v120 = v122;
    v121 = 0x100000000;
    v87 = 0;
    if (mlir::TypeConverter::convertType(a4, v79, &v120))
    {
      v6 = v111;
      if (v121 == 1)
      {
        v87 = *v120;
      }

      if (v120 == v122)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v6 = v111;
      if (v120 == v122)
      {
LABEL_86:
        if (v87)
        {
          v88 = v87 == v79;
        }

        else
        {
          v88 = 1;
        }

        if (!v88)
        {
          v120 = v116;
          ParentBlock = mlir::Value::getParentBlock(&v120);
          v90 = (ParentBlock + 40);
          if (v120 && (*(v120 + 1) & 7) != 7)
          {
            v90 = (mlir::detail::OpResultImpl::getOwner(v120) + 8);
          }

          v91 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 1u, ParentBlock, *v90, *(v78 + 4), &v116, 1, v87, a4);
          v120 = v116;
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a1 + 104, &v120) = v91;
        }

        goto LABEL_94;
      }
    }

    free(v120);
    goto LABEL_86;
  }

LABEL_95:
  v92 = operator new(0x30uLL);
  v94 = (v67 + 176);
  v93 = *(v67 + 176);
  v92[2] = 4;
  *(v92 + 2) = v67;
  *(v92 + 3) = Block;
  *v92 = &unk_1F5B0BE70;
  *(v92 + 4) = v6;
  *(v92 + 5) = a4;
  v120 = v92;
  v95 = *(v67 + 184);
  v96 = &v120;
  if (v95 >= *(v67 + 188))
  {
    if (v93 <= &v120 && v93 + 8 * v95 > &v120)
    {
      v106 = &v120 - v93;
      v93 = *v94;
      v96 = &v106[*v94];
    }

    else
    {
      v93 = *v94;
      v96 = &v120;
    }
  }

  v97 = *(v67 + 184);
  v98 = *v96;
  *v96 = 0;
  *(v93 + 8 * v97) = v98;
  *(v67 + 184) = v97 + 1;
  v99 = v120;
  v120 = 0;
  v8 = v108;
  if (v99)
  {
    (*(*v99 + 8))(v99);
  }

  for (j = *(v6 + 5); j != (v6 + 32); j = j[1])
  {
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    mlir::ConversionPatternRewriter::eraseOp(v109, v101);
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(v109[5], v6);
  v102 = mlir::Block::getParent(v6);
  llvm::ilist_traits<mlir::Block>::removeNodeFromList(v102, v6);
  v103 = *(v6 + 1);
  v104 = *(v6 + 2);
  *v104 = v103;
  *(v103 + 8) = v104;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  if (v117 != v119)
  {
    free(v117);
  }

LABEL_102:
  if (v110)
  {
    *v8 = v110;
  }

  else
  {
    *v8 = 0;
    *(v8 + 8) = 0;
  }

  return Block;
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::appendRewrite<anonymous namespace::ReplaceBlockArgRewrite,mlir::Block *&,mlir::BlockArgument &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = operator new(0x28uLL);
  v8 = (a1 + 176);
  v7 = *(a1 + 176);
  v6[2] = 5;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *v6 = &unk_1F5B0BE20;
  *(v6 + 4) = a3;
  v15 = v6;
  v9 = *(a1 + 184);
  v10 = &v15;
  if (v9 >= *(a1 + 188))
  {
    if (v7 <= &v15 && v7 + 8 * v9 > &v15)
    {
      v14 = &v15 - v7;
      v7 = *v8;
      v10 = &v14[*v8];
    }

    else
    {
      v7 = *v8;
      v10 = &v15;
    }
  }

  v11 = *(a1 + 184);
  v12 = *v10;
  *v10 = 0;
  *(v7 + 8 * v11) = v12;
  *(a1 + 184) = v11 + 1;
  result = v15;
  v15 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::TypeConverter::convertType(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = v6;
  v5 = 0x100000000;
  v2 = 0;
  if (mlir::TypeConverter::convertType(a1, a2, &v4) && v5 == 1)
  {
    v2 = *v4;
  }

  if (v4 != v6)
  {
    free(v4);
  }

  return v2;
}

void mlir::ConversionPatternRewriter::eraseBlock(mlir::detail::ConversionPatternRewriterImpl **this, mlir::Block *a2)
{
  v4 = a2 + 32;
  v5 = *(a2 + 5);
  if (v5 != a2 + 32)
  {
    do
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      mlir::ConversionPatternRewriter::eraseOp(this, v6);
      v5 = *(v5 + 1);
    }

    while (v5 != v4);
  }

  v7 = a2 + 8;
  if (!a2)
  {
    v7 = 0;
  }

  v8 = v7 - 8;
  v9 = this[5];
  if (a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(v9, a2);
  Parent = mlir::Block::getParent(a2);
  llvm::ilist_traits<mlir::Block>::removeNodeFromList(Parent, v10);
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  *v13 = v12;
  *(v12 + 8) = v13;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::notifyOperationInserted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v9 = operator new(0x20uLL);
    v11 = (a1 + 176);
    v10 = *(a1 + 176);
    v9[2] = 9;
    *(v9 + 2) = a1;
    *(v9 + 3) = a2;
    *v9 = &unk_1F5B0BEC0;
    v19 = v9;
    v12 = *(a1 + 184);
    v13 = &v19;
    if (v12 < *(a1 + 188))
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (a3 + 32 == a4)
  {
    v8 = 0;
  }

  else
  {
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v8 = v7;
  }

  v14 = operator new(0x30uLL);
  v11 = (a1 + 176);
  v10 = *(a1 + 176);
  v14[2] = 6;
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *v14 = &unk_1F5B0BF10;
  *(v14 + 4) = a3;
  *(v14 + 5) = v8;
  v19 = v14;
  v12 = *(a1 + 184);
  v13 = &v19;
  if (v12 >= *(a1 + 188))
  {
LABEL_11:
    if (v10 <= &v19 && v10 + 8 * v12 > &v19)
    {
      v18 = &v19 - v10;
      v10 = *v11;
      v13 = &v18[*v11];
    }

    else
    {
      v10 = *v11;
      v13 = &v19;
    }
  }

LABEL_8:
  v15 = *(a1 + 184);
  v16 = *v13;
  *v13 = 0;
  *(v10 + 8 * v15) = v16;
  *(a1 + 184) = v15 + 1;
  result = v19;
  v19 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 36);
  v7 = a2 - 16;
  v42 = a3;
  v43 = 0;
  if (!v6)
  {
    v7 = 0;
  }

  v44 = v7;
  v45 = 0;
  if (a4 && v6)
  {
    v9 = 0;
    do
    {
      v13 = mlir::ValueRange::dereference_iterator(&v42, v9);
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, v45);
      v40 = NextResultAtOffset;
      if (!v13)
      {
        if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
        {
          v17 = a2;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v18 = *(a1 + 336);
          if (v18)
          {
            v19 = *(a1 + 320);
            v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
            v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v20 >> 47) ^ v20);
            v22 = v18 - 1;
            v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
            v24 = *(v19 + 16 * v23);
            if (v24 == v17)
            {
              goto LABEL_8;
            }

            v25 = 1;
            while (v24 != -4096)
            {
              v26 = v23 + v25++;
              v23 = v26 & v22;
              v24 = *(v19 + 16 * v23);
              if (v24 == v17)
              {
                goto LABEL_8;
              }
            }
          }
        }

        v41[0] = NextResultAtOffset;
        ParentBlock = mlir::Value::getParentBlock(v41);
        if (v41[0])
        {
          v28 = (*(v41[0] + 1) & 7) == 7;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          v10 = (ParentBlock + 40);
        }

        else
        {
          v10 = (mlir::detail::OpResultImpl::getOwner(v41[0]) + 8);
        }

        v11 = *v10;
        Loc = mlir::Value::getLoc(&v40);
        mlir::ValueRange::ValueRange(v41, 0, 0);
        v13 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 2u, ParentBlock, v11, Loc, v41[0], v41[1], *(v40 + 1) & 0xFFFFFFFFFFFFFFF8, *(a1 + 344));
        NextResultAtOffset = v40;
      }

      v41[0] = NextResultAtOffset;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a1 + 104, v41) = v13;
LABEL_8:
      v9 = v43 + 1;
      v15 = v45 + 1;
      v43 = v9;
      ++v45;
    }

    while (v9 != a4 && v15 != v6);
  }

  v29 = *(a1 + 344);
  v30 = operator new(0x28uLL);
  v32 = (a1 + 176);
  v31 = *(a1 + 176);
  v30[2] = 8;
  *(v30 + 2) = a1;
  *(v30 + 3) = a2;
  *v30 = &unk_1F5B0BF60;
  *(v30 + 4) = v29;
  v42 = v30;
  v33 = *(a1 + 184);
  v34 = &v42;
  if (v33 >= *(a1 + 188))
  {
    if (v31 <= &v42 && v31 + 8 * v33 > &v42)
    {
      v39 = &v42 - v31;
      v31 = *v32;
      v34 = &v39[*v32];
    }

    else
    {
      v31 = *v32;
      v34 = &v42;
    }
  }

  v35 = *(a1 + 184);
  v36 = *v34;
  *v34 = 0;
  *(v31 + 8 * v35) = v36;
  *(a1 + 184) = v35 + 1;
  v37 = v42;
  v42 = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v42 = a1;
  return mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(mlir::Operation *,mlir::ValueRange)::$_0>, &v42, 1);
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(mlir::detail::ConversionPatternRewriterImpl *this, mlir::Block *a2)
{
  v4 = operator new(0x30uLL);
  v4[2] = 1;
  *(v4 + 2) = this;
  *(v4 + 3) = a2;
  *v4 = &unk_1F5B0BFB0;
  *(v4 + 4) = mlir::Block::getParent(a2);
  Parent = mlir::Block::getParent(a2);
  v7 = (this + 176);
  v6 = *(this + 22);
  v8 = *(a2 + 2);
  if (v8)
  {
    v9 = v8 == Parent;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 - 8;
  }

  *(v4 + 5) = v10;
  v17 = v4;
  v11 = *(this + 46);
  v12 = &v17;
  if (v11 >= *(this + 47))
  {
    if (v6 <= &v17 && v6 + 8 * v11 > &v17)
    {
      v16 = &v17 - v6;
      v6 = *v7;
      v12 = &v16[*v7];
    }

    else
    {
      v6 = *v7;
      v12 = &v17;
    }
  }

  v13 = *(this + 46);
  v14 = *v12;
  *v12 = 0;
  *(v6 + 8 * v13) = v14;
  *(this + 46) = v13 + 1;
  result = v17;
  v17 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::notifyBlockInserted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v14 = operator new(0x20uLL);
    v11 = (a1 + 176);
    v10 = *(a1 + 176);
    v14[2] = 0;
    *(v14 + 2) = a1;
    *(v14 + 3) = a2;
    *v14 = &unk_1F5B0C000;
    v19 = v14;
    v12 = *(a1 + 184);
    v13 = &v19;
    if (v12 < *(a1 + 188))
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (a4 == a3 || a4 == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 8;
  }

  v9 = operator new(0x30uLL);
  v11 = (a1 + 176);
  v10 = *(a1 + 176);
  v9[2] = 3;
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *v9 = &unk_1F5B0C050;
  *(v9 + 4) = a3;
  *(v9 + 5) = v7;
  v19 = v9;
  v12 = *(a1 + 184);
  v13 = &v19;
  if (v12 >= *(a1 + 188))
  {
LABEL_14:
    if (v10 <= &v19 && v10 + 8 * v12 > &v19)
    {
      v18 = &v19 - v10;
      v10 = *v11;
      v13 = &v18[*v11];
    }

    else
    {
      v10 = *v11;
      v13 = &v19;
    }
  }

LABEL_11:
  v15 = *(a1 + 184);
  v16 = *v13;
  *v13 = 0;
  *(v10 + 8 * v15) = v16;
  *(a1 + 184) = v15 + 1;
  result = v19;
  v19 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::notifyBlockBeingInlined(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = operator new(0x38uLL);
  v6[2] = 2;
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *v6 = &unk_1F5B0BDB8;
  *(v6 + 4) = a3;
  if (*(a3 + 32) == a3 + 32)
  {
    *(v6 + 5) = 0;
  }

  else
  {
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    v8 = v7;
    v9 = *(a3 + 32);
    *(v6 + 5) = v8;
    if (v9 != a3 + 32)
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  *(v6 + 6) = v10;
  v18 = v6;
  v11 = *(a1 + 184);
  v12 = *(a1 + 176);
  v13 = &v18;
  if (v11 >= *(a1 + 188))
  {
    if (v12 <= &v18 && v12 + 8 * v11 > &v18)
    {
      v17 = &v18 - v12;
      v12 = *(a1 + 176);
      v13 = &v17[v12];
    }

    else
    {
      v12 = *(a1 + 176);
      v13 = &v18;
    }
  }

  v14 = *(a1 + 184);
  v15 = *v13;
  *v13 = 0;
  *(v12 + 8 * v14) = v15;
  *(a1 + 184) = v14 + 1;
  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void mlir::ConversionPatternRewriter::~ConversionPatternRewriter(mlir::ConversionPatternRewriter *this)
{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
}

{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();

  operator delete(v3);
}

uint64_t mlir::ConversionPatternRewriter::replaceOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v7, v5, *(a3 + 9));
  return mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(this + 5), a2, v7[0], v7[1]);
}

void mlir::ConversionPatternRewriter::eraseOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 9);
  v8 = v11;
  v10 = 1;
  if (v4 < 2)
  {
    if (v4 == 1)
    {
      v11[0] = 0;
    }

    v5 = v11;
  }

  else
  {
    v9 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v8, v11, v4, 8);
    v5 = v8;
    bzero(v8, 8 * v4);
  }

  v9 = v4;
  v6 = *(this + 5);
  mlir::ValueRange::ValueRange(v7, v5, v4);
  mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(v6, a2, v7[0], v7[1]);
  if (v8 != v11)
  {
    free(v8);
  }
}

void *mlir::ConversionPatternRewriter::replaceUsesOfBlockArgument(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = operator new(0x28uLL);
  v8[4] = a2;
  v10 = (v6 + 176);
  v9 = *(v6 + 176);
  *(v8 + 2) = 5;
  v8[2] = v6;
  v8[3] = v7;
  *v8 = &unk_1F5B0BE20;
  v19 = v8;
  v11 = *(v6 + 184);
  v12 = &v19;
  if (v11 >= *(v6 + 188))
  {
    if (v9 <= &v19 && v9 + 8 * v11 > &v19)
    {
      v18 = &v19 - v9;
      v9 = *v10;
      v12 = &v18[*v10];
    }

    else
    {
      v9 = *v10;
      v12 = &v19;
    }
  }

  v13 = *(v6 + 184);
  v14 = *v12;
  *v12 = 0;
  *(v9 + 8 * v13) = v14;
  *(v6 + 184) = v13 + 1;
  v15 = v19;
  v19 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 40);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v16 + 104, &v19);
  *result = a3;
  return result;
}

void mlir::ConversionPatternRewriter::inlineBlockBefore(mlir::ConversionPatternRewriter *a1, mlir::Block *a2, mlir::Block *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 5);
  v13 = *(*(v12 + 376) + 32);
  if (v13)
  {
    v15 = *(a2 + 6);
    v14 = *(a2 + 7);
    v37 = v15;
    v38 = a5;
    v39 = 0;
    if (v15 == v14 || a6 == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    mlir::detail::ConversionPatternRewriterImpl::notifyBlockBeingInlined(v12, a3, a2);
    v15 = *(a2 + 6);
    v14 = *(a2 + 7);
    v37 = v15;
    v38 = a5;
    v39 = 0;
    if (v15 == v14 || a6 == 0)
    {
      goto LABEL_18;
    }
  }

  v18 = 0;
  do
  {
    v19 = mlir::ValueRange::dereference_iterator(&v38, v18);
    mlir::ConversionPatternRewriter::replaceUsesOfBlockArgument(a1, *v15, v19);
    v15 = v37 + 1;
    v18 = v39 + 1;
    v37 = v15;
    ++v39;
  }

  while (v15 != v14 && v18 != a6);
LABEL_18:
  if (v13)
  {
    while (*(a2 + 4) != (a2 + 32))
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
      mlir::RewriterBase::moveOpBefore(a1, v21, a3, a4);
    }
  }

  else
  {
    v32 = (a2 + 32);
    if (*(a2 + 4) != (a2 + 32) && v32 != a4)
    {
      v33 = *(a2 + 5);
      llvm::ilist_traits<mlir::Operation>::transferNodesFromList(a3 + 32, v32, v33, v32);
      if (v33 != v32)
      {
        v34 = *v32;
        v35 = *v33;
        *(v35 + 8) = v32;
        *v32 = v35;
        v36 = *a4;
        *(v34 + 8) = a4;
        *v33 = v36;
        *(v36 + 8) = v33;
        *a4 = v34;
        v22 = a2 + 32;
        v23 = *(a2 + 5);
        if (v23 == a2 + 32)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }
  }

  v22 = a2 + 32;
  v23 = *(a2 + 5);
  if (v23 == a2 + 32)
  {
    goto LABEL_23;
  }

  do
  {
LABEL_22:
    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
    mlir::ConversionPatternRewriter::eraseOp(a1, v24);
    v23 = *(v23 + 1);
  }

  while (v23 != v22);
LABEL_23:
  v25 = a2 + 8;
  if (!a2)
  {
    v25 = 0;
  }

  v26 = v25 - 8;
  v27 = *(a1 + 5);
  if (a2)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(v27, a2);
  Parent = mlir::Block::getParent(a2);
  llvm::ilist_traits<mlir::Block>::removeNodeFromList(Parent, v28);
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  *v31 = v30;
  *(v30 + 8) = v31;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
}

uint64_t mlir::ConversionPatternRewriter::startOpModification(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v3 = *(this + 5);
  v4 = operator new(0xB0uLL);
  *(v4 + 2) = 7;
  *(v4 + 2) = v3;
  *(v4 + 3) = a2;
  *v4 = &unk_1F5B0C0A0;
  v5 = *(a2 + 3);
  *(v4 + 4) = *(a2 + 6);
  *(v4 + 5) = v5;
  *(v4 + 6) = mlir::Operation::getAttrDictionary(a2);
  if ((*(a2 + 46) & 0x80) == 0)
  {
    LODWORD(v7) = 0;
    v25 = 0;
    *(v4 + 7) = v4 + 72;
    *(v4 + 17) = 8;
    goto LABEL_21;
  }

  v6 = *(a2 + 9);
  v7 = *(a2 + 17);
  *(v4 + 7) = v4 + 72;
  *(v4 + 8) = 0x800000000;
  if (v7 < 9)
  {
    if (!v7)
    {
      v25 = 0;
      goto LABEL_21;
    }

    v10 = v4 + 72;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 56), v4 + 72, v7, 8);
    v8 = *(v4 + 16);
    v9 = *(v4 + 7);
    v10 = (v9 + 8 * v8);
    if (v7 >= 0xD)
    {
      v11 = v9 + 8 * (v8 + v7);
      if (v10 >= v6 + 32 * v7 || v6 + 24 >= v11)
      {
        v13 = v7 & 3;
        if ((v7 & 3) == 0)
        {
          v13 = 4;
        }

        v14 = v7 - v13;
        v15 = &v10[v14];
        v16 = (v6 + 88);
        v17 = (v10 + 2);
        v18 = v14;
        do
        {
          v19 = v16 - 8;
          v20 = vld4q_f64(v19);
          v21 = vld4q_f64(v16);
          *(v17 - 1) = v20;
          *v17 = v21;
          v16 += 16;
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        v10 = v15;
        goto LABEL_18;
      }
    }
  }

  v14 = 0;
LABEL_18:
  v22 = v7 - v14;
  v23 = (v6 + 32 * v14 + 24);
  do
  {
    v24 = *v23;
    v23 += 4;
    *v10++ = v24;
    --v22;
  }

  while (v22);
  v25 = *(v4 + 16);
LABEL_21:
  *(v4 + 16) = v25 + v7;
  mlir::SuccessorRange::SuccessorRange(v53, a2);
  v26 = v53[0];
  mlir::SuccessorRange::SuccessorRange(v53, a2);
  v27 = v53[1];
  *(v4 + 17) = v4 + 152;
  *(v4 + 18) = 0x200000000;
  if (v27 < 3)
  {
    v28 = 0;
    if (!v27)
    {
      goto LABEL_36;
    }

    v30 = v4 + 152;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 136), v4 + 152, v27, 8);
    v28 = *(v4 + 36);
    v29 = *(v4 + 17);
    v30 = (v29 + 8 * v28);
    if (v27 >= 0xD && (v30 >= v26 + 32 * v27 || v26 + 24 >= v29 + 8 * (v28 + v27)))
    {
      v32 = v27 & 3;
      if ((v27 & 3) == 0)
      {
        v32 = 4;
      }

      v31 = v27 - v32;
      v33 = &v30[v31];
      v34 = (v26 + 88);
      v35 = (v30 + 2);
      v36 = v31;
      do
      {
        v37 = v34 - 8;
        v38 = vld4q_f64(v37);
        v39 = vld4q_f64(v34);
        *(v35 - 1) = v38;
        *v35 = v39;
        v34 += 16;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      v30 = v33;
      goto LABEL_34;
    }
  }

  v31 = 0;
LABEL_34:
  v40 = v27 - v31;
  v41 = (v26 + 32 * v31 + 24);
  do
  {
    v42 = *v41;
    v41 += 4;
    *v30++ = v42;
    --v40;
  }

  while (v40);
LABEL_36:
  *(v4 + 36) = v28 + v27;
  *(v4 + 21) = 0;
  v43 = *(a2 + 11);
  if (HIBYTE(*(a2 + 11)))
  {
    v44 = a2 + 16 * ((v43 >> 23) & 1);
    v45 = operator new((v43 >> 21) & 0x7F8);
    *(v4 + 21) = v45;
    (*(**(v4 + 4) + 120))(*(v4 + 4), *(v4 + 4), v45, v44 + 64);
  }

  v53[0] = v4;
  v46 = *(v3 + 184);
  v47 = *(v3 + 176);
  v48 = v53;
  if (v46 >= *(v3 + 188))
  {
    if (v47 <= v53 && v47 + 8 * v46 > v53)
    {
      v52 = v53 - v47;
      v47 = *(v3 + 176);
      v48 = &v52[v47];
    }

    else
    {
      v47 = *(v3 + 176);
      v48 = v53;
    }
  }

  v49 = *(v3 + 184);
  v50 = *v48;
  *v48 = 0;
  *(v47 + 8 * v49) = v50;
  *(v3 + 184) = v49 + 1;
  result = v53[0];
  v53[0] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::ConversionPatternRewriter::cancelOpModification(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v3 = *(this + 5);
  v4 = *(v3 + 176);
  v5 = *(v3 + 184);
  if (v5)
  {
    v6 = 8 * v5;
    while (1)
    {
      v7 = *(v4 + v6 - 8);
      v8 = v7 && *(v7 + 8) == 7;
      if (v8 && *(v7 + 24) == a2)
      {
        break;
      }

      v6 -= 8;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v4 += v6;
  }

  else
  {
    v4 += 8 * v5;
  }

LABEL_12:
  (*(**(v4 - 8) + 16))(*(v4 - 8));
  v9 = *(this + 5);
  v10 = *(v9 + 176);
  v11 = (((v4 - v10) << 29) - 0x100000000) >> 29;
  v12 = (v10 + v11 + 8);
  v13 = *(v9 + 184);
  if (v12 != (v10 + 8 * v13))
  {
    v14 = v11 - 8 * v13 + 8;
    do
    {
      v15 = *(v12 - 1);
      *(v12 - 1) = *v12;
      *v12 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      ++v12;
      v14 += 8;
    }

    while (v14);
    LODWORD(v13) = *(v9 + 184);
    v10 = *(v9 + 176);
  }

  v16 = v13 - 1;
  *(v9 + 184) = v16;
  result = *(v10 + 8 * v16);
  *(v10 + 8 * v16) = 0;
  if (result)
  {
    v18 = *(*result + 8);

    return v18();
  }

  return result;
}

uint64_t mlir::OperationConverter::convert(mlir::ConversionTarget **this, mlir::ConversionPatternRewriter *a2, mlir::Operation *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v6 = *(this + 56);
  if (v5)
  {
    if (v6 != 2)
    {
      return 1;
    }

    v7 = this[3];
    if (!v7)
    {
      return 1;
    }

    goto LABEL_53;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v45 = 257;
      mlir::Operation::emitError(a3, v44, &v50);
      if (v50)
      {
        v47 = 3;
        v48 = "failed to legalize operation '";
        v49 = 30;
        v8 = &v47;
        v9 = v52;
        if (v53 >= v54)
        {
          if (v52 <= &v47 && v52 + 24 * v53 > &v47)
          {
            v40 = &v47 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v9 = v52;
            v8 = (v52 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v8 = &v47;
            v9 = v52;
          }
        }

        v10 = &v9[24 * v53];
        v11 = *v8;
        *(v10 + 2) = *(v8 + 2);
        *v10 = v11;
        ++v53;
        if (v50)
        {
          mlir::Diagnostic::operator<<(v51, *(v46 + 6));
          if (v50)
          {
            v47 = 3;
            v48 = "'";
            v49 = 1;
            v12 = &v47;
            v13 = v52;
            if (v53 >= v54)
            {
              if (v52 <= &v47 && v52 + 24 * v53 > &v47)
              {
                v42 = &v47 - v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                v13 = v52;
                v12 = (v52 + v42);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                v12 = &v47;
                v13 = v52;
              }
            }

            v14 = &v13[24 * v53];
            v15 = *v12;
            *(v14 + 2) = *(v12 + 2);
            *v14 = v15;
            ++v53;
          }
        }
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
      if (v50)
      {
        mlir::InFlightDiagnostic::report(&v50);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v59;
          v19 = __p;
          if (v59 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v59 = v17;
          operator delete(v19);
        }

        v20 = v56;
        if (!v56)
        {
          goto LABEL_58;
        }

        v21 = v57;
        v22 = v56;
        if (v57 == v56)
        {
LABEL_57:
          v57 = v20;
          operator delete(v22);
LABEL_58:
          if (v52 != v55)
          {
            free(v52);
          }

          return v16;
        }

        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
LABEL_56:
        v22 = v56;
        goto LABEL_57;
      }

      return v16;
    }

    return 1;
  }

  if (!mlir::ConversionTarget::isIllegal(this[18], a3))
  {
    v7 = this[2];
    if (v7)
    {
LABEL_53:
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v7, &v46, &v50);
      return 1;
    }

    return 1;
  }

  v45 = 257;
  mlir::Operation::emitError(a3, v44, &v50);
  if (v50)
  {
    v47 = 3;
    v48 = "failed to legalize operation '";
    v49 = 30;
    v25 = &v47;
    v26 = v52;
    if (v53 >= v54)
    {
      if (v52 <= &v47 && v52 + 24 * v53 > &v47)
      {
        v41 = &v47 - v52;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v26 = v52;
        v25 = (v52 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v25 = &v47;
        v26 = v52;
      }
    }

    v27 = &v26[24 * v53];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    ++v53;
    if (v50)
    {
      mlir::Diagnostic::operator<<(v51, *(v46 + 6));
      if (v50)
      {
        v47 = 3;
        v48 = "' that was explicitly marked illegal";
        v49 = 36;
        v29 = &v47;
        v30 = v52;
        if (v53 >= v54)
        {
          if (v52 <= &v47 && v52 + 24 * v53 > &v47)
          {
            v43 = &v47 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v30 = v52;
            v29 = (v52 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v29 = &v47;
            v30 = v52;
          }
        }

        v31 = &v30[24 * v53];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v53;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v59;
      v35 = __p;
      if (v59 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v59 = v33;
      operator delete(v35);
    }

    v20 = v56;
    if (!v56)
    {
      goto LABEL_58;
    }

    v36 = v57;
    v22 = v56;
    if (v57 == v56)
    {
      goto LABEL_57;
    }

    do
    {
      v38 = *--v36;
      v37 = v38;
      *v36 = 0;
      if (v38)
      {
        operator delete[](v37);
      }
    }

    while (v36 != v20);
    goto LABEL_56;
  }

  return v16;
}

uint64_t anonymous namespace::OperationLegalizer::legalize(mlir::ConversionTarget **this, mlir::Operation *a2, mlir::ConversionPatternRewriter *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v37 = a2;
  isLegal = mlir::ConversionTarget::isLegal(this[12], a2);
  if ((isLegal & 0x100) != 0)
  {
    if (isLegal)
    {
      v42 = &v37;
      v43 = a3;
    }

    return 1;
  }

  v7 = *(a3 + 5);
  v8 = v7[37].i32[0];
  if (v8)
  {
    v9 = v7[35];
    v10 = v8 - 1;
    v11 = ((a2 >> 4) ^ (a2 >> 9)) & v10;
    v12 = *(*&v9 + 8 * v11);
    if (v12 == a2)
    {
      return 1;
    }

    v13 = 1;
    result = 1;
    while (v12 != -4096)
    {
      v15 = v11 + v13++;
      v11 = v15 & v10;
      v12 = *(*&v9 + 8 * v11);
      if (v12 == a2)
      {
        return result;
      }
    }
  }

  v16 = v7[32].i32[0];
  if (v16)
  {
    v17 = v7[30];
    v18 = v16 - 1;
    v19 = v18 & ((a2 >> 4) ^ (a2 >> 9));
    v20 = *(*&v17 + 8 * v19);
    if (v20 == a2)
    {
      return 1;
    }

    v21 = 1;
    result = 1;
    while (v20 != -4096)
    {
      v22 = v19 + v21++;
      v19 = v22 & v18;
      v20 = *(*&v17 + 8 * v19);
      if (v20 == a2)
      {
        return result;
      }
    }
  }

  v23 = v7[23].u32[0];
  v24 = v7[34].u32[0];
  v25 = v7[39].i32[0];
  v42 = v44;
  v43 = 0x200000000;
  v26 = *(a2 + 2);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  *(a3 + 3) = v26;
  *(a3 + 4) = v27;
  if ((mlir::OpBuilder::tryFold(a3 + 8, a2, &v42) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (v43)
  {
    mlir::ValueRange::ValueRange(&v45, v42, v43);
    mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(a3 + 5), a2, v45, v46);
    v29 = v7[23].i32[0];
    if (v23 == v29)
    {
LABEL_19:
      v30 = 1;
      v31 = v42;
      if (v42 == v44)
      {
        goto LABEL_34;
      }

LABEL_33:
      free(v31);
      goto LABEL_34;
    }

    v32 = v23 | (v24 << 32);
    while (1)
    {
      v33 = *(*&v7[22] + 8 * v23);
      v34 = v33 && *(v33 + 8) == 9;
      {
        break;
      }

      LODWORD(v23) = v23 + 1;
      if (v29 == v23)
      {
        goto LABEL_19;
      }
    }

    mlir::detail::ConversionPatternRewriterImpl::resetState(v7, v32, v25);
LABEL_32:
    v30 = 0;
    v31 = v42;
    if (v42 == v44)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v31 = v42;
  if (v42 != v44)
  {
    goto LABEL_33;
  }

LABEL_34:
  if ((v30 & 1) == 0)
  {
    v41 = a2;
    v42 = this;
    v35 = *(a3 + 5);
    v45 = this;
    v46 = &v41;
    v47 = a3;
    v36 = v35[78];
    v39 = v35[46] | (v35[68] << 32);
    v40 = v36;
    v38[0] = this;
    v38[1] = v35;
    v38[2] = &v39;
    v43 = &v41;
    v44[0] = a3;
    v44[1] = &v39;
    v44[2] = v35;
  }

  return 1;
}

uint64_t mlir::OperationConverter::convertOperations(mlir::OperationConverter *a1, uint64_t a2, uint64_t a3)
{
  v24[27] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(a1 + 18);
  v21 = v23;
  v22 = 0x600000000;
  v7 = 8 * a3;
  do
  {
    v8 = *(a2 + v5);
    v24[0] = &v21;
    v24[1] = v6;
    mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(v8, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>, v24, 0);
    v5 += 8;
  }

  while (v7 != v5);
  Context = mlir::Attribute::getContext((*a2 + 24));
  v19[3] = 0;
  v19[4] = 0;
  v19[0] = &unk_1F5B0BA70;
  v19[1] = Context;
  v10 = operator new(0x180uLL);
  v13 = v10;
  *(v10 + 8) = 1;
  *v10 = &unk_1F5B0BAD8;
  *(v10 + 40) = v10 + 64;
  *(v10 + 48) = 0;
  *(v10 + 72) = 1;
  *(v10 + 32) = Context;
  *(v10 + 16) = Context;
  *(v10 + 24) = &unk_1F5B0BC20;
  *(v10 + 56) = 0;
  *(v10 + 64) = &unk_1F5B0BC90;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 144) = 0;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  *(v10 + 176) = v10 + 192;
  *(v10 + 184) = 0x600000000;
  *(v10 + 256) = 0;
  *(v10 + 240) = 0;
  *(v10 + 248) = 0;
  *(v10 + 264) = v10 + 280;
  *(v10 + 272) = 0;
  *(v10 + 296) = 0;
  *(v10 + 280) = 0;
  *(v10 + 288) = 0;
  *(v10 + 304) = v10 + 320;
  *(v10 + 312) = 0;
  *(v10 + 336) = 0;
  *(v10 + 320) = 0;
  *(v10 + 328) = 0;
  *(v10 + 344) = 0;
  *(v10 + 352) = 0;
  *(v10 + 368) = 0;
  *(v10 + 360) = 0;
  *(v10 + 376) = a1;
  v20 = v10;
  v19[2] = v10;
  if (!v22)
  {
LABEL_8:
    mlir::OperationConverter::finalize(v10, v19, v11, v12);
  }

  v14 = v21;
  v15 = 8 * v22;
  while (1)
  {
    v10 = mlir::OperationConverter::convert(a1, v19, *v14);
    if ((v10 & 1) == 0)
    {
      break;
    }

    ++v14;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  mlir::detail::ConversionPatternRewriterImpl::undoRewrites(v13, 0);
  v16 = 0;
  v17 = v20;
  v20 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  if (v21 != v23)
  {
    free(v21);
  }

  return v16;
}

void mlir::OperationConverter::finalize(mlir::OperationConverter *this, mlir::ConversionPatternRewriter *a2, uint64_t a3, unint64_t a4)
{
  v221[6] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 5);
  v5 = *(v4 + 104);
  v208 = v4 + 104;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  if (*(v4 + 112))
  {
    v6 = *(v4 + 120);
    if (v6)
    {
      v7 = 16 * v6;
      v8 = v5;
      while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v8 += 2;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v8 = v5;
    }

    v202 = &v5[2 * v6];
LABEL_294:
    if (v8 != v202)
    {
      v203 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::operator[](&v214, v8 + 1);
      v204 = *v8;
      v205 = *(v203 + 2);
      if (v205 >= *(v203 + 3))
      {
        v206 = v203;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v203, v203 + 2, v205 + 1, 8);
        v203 = v206;
        v205 = *(v206 + 2);
      }

      *(*v203 + 8 * v205) = v204;
      ++*(v203 + 2);
      while (1)
      {
        v8 += 2;
        if (v8 == v202)
        {
          break;
        }

        if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_294;
        }
      }
    }
  }

LABEL_6:
  v209 = *(v4 + 184);
  if (!v209)
  {
LABEL_283:
    v197 = v214;
    if (v216)
    {
      v198 = v214 + 24;
      v199 = 72 * v216;
      do
      {
        if ((*(v198 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v200 = *(v198 - 2);
          if (v198 != v200)
          {
            free(v200);
          }
        }

        v198 += 72;
        v199 -= 72;
      }

      while (v199);
      v197 = v214;
      v201 = 72 * v216;
    }

    else
    {
      v201 = 0;
    }

    llvm::deallocate_buffer(v197, v201);
  }

  v9 = 0;
  while (1)
  {
    mlir::ValueRange::ValueRange(&v219, 0, 0);
    v10 = *(*(v4 + 176) + 8 * v9);
    v11 = *(v10 + 8);
    v12 = v10 && v11 == 8;
    v210 = v9;
    if (v12)
    {
      break;
    }

    if (v10)
    {
      v13 = v11 == 4;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v211 = *(v10 + 40);
      mlir::ValueRange::ValueRange(v220, *(*(v10 + 32) + 48), (*(*(v10 + 32) + 56) - *(*(v10 + 32) + 48)) >> 3);
      v219 = *v220;
      v14 = v220[1];
      v217 = v220[0];
      v218 = 0;
      if (v220[1])
      {
        goto LABEL_25;
      }
    }

    else
    {
      mlir::ValueRange::ValueRange(v220, 0, 0);
      v211 = 0;
      v219 = *v220;
      v14 = v220[1];
      v217 = v220[0];
      v218 = 0;
      if (v220[1])
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    v9 = v210 + 1;
    if (v210 + 1 == v209)
    {
      goto LABEL_283;
    }
  }

  v15 = *(v10 + 24);
  v211 = *(v10 + 32);
  v16 = *(v15 + 36);
  if (v16)
  {
    v17 = v15 - 16;
  }

  else
  {
    v17 = 0;
  }

  mlir::ValueRange::ValueRange(v220, v17, v16);
  v219 = *v220;
  v14 = v220[1];
  v217 = v220[0];
  v218 = 0;
  if (!v220[1])
  {
    goto LABEL_8;
  }

LABEL_25:
  v18 = 0;
LABEL_28:
  v19 = mlir::ValueRange::dereference_iterator(&v217, v18);
  v213 = v19;
  v20 = *(v19 + 8) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v4 + 120);
  if (v21)
  {
    v22 = *(v4 + 104);
    v23 = v21 - 1;
    if (v20)
    {
      v24 = 0;
      v25 = v19;
      while (1)
      {
        v26 = v25;
        if ((*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) == v20)
        {
          v24 = v25;
        }

        v27 = 0x9DDFEA08EB382D69 * ((8 * v25 - 0xAE502812AA7333) ^ HIDWORD(v25));
        v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v27 >> 47) ^ v27);
        v29 = (-348639895 * ((v28 >> 47) ^ v28)) & v23;
        v30 = *(v22 + 16 * v29);
        if (v30 != v26)
        {
          break;
        }

LABEL_34:
        if (v29 != v21)
        {
          v25 = *(v22 + 16 * v29 + 8);
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      v31 = 1;
      while (v30 != -4096)
      {
        v32 = v29 + v31++;
        v29 = v32 & v23;
        v30 = *(v22 + 16 * v29);
        if (v30 == v26)
        {
          goto LABEL_34;
        }
      }

LABEL_55:
      if (!v24)
      {
        v24 = v26;
      }

      if (v19 == v24)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v33 = v19;
      while (1)
      {
        v24 = v33;
        v34 = HIDWORD(v33);
        v35 = 0x9DDFEA08EB382D69 * ((8 * v33 - 0xAE502812AA7333) ^ HIDWORD(v33));
        v36 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v34 ^ (v35 >> 47) ^ v35)) >> 32) >> 15) ^ (-348639895 * (v34 ^ (v35 >> 47) ^ v35)))) & v23;
        v37 = *(v22 + 16 * v36);
        if (v37 != v24)
        {
          break;
        }

LABEL_47:
        if (v36 == v21)
        {
          v26 = v24;
          goto LABEL_55;
        }

        v33 = *(v22 + 16 * v36 + 8);
        v26 = v24;
        if (!v33)
        {
          goto LABEL_55;
        }
      }

      v38 = 1;
      while (v37 != -4096)
      {
        v39 = v36 + v38++;
        v36 = v39 & v23;
        v37 = *(v22 + 16 * v36);
        if (v37 == v24)
        {
          goto LABEL_47;
        }
      }

      if (!v24)
      {
        v24 = 0;
      }

      if (v19 == v24)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v24 = v19;
    if (!v19)
    {
      v24 = 0;
    }

    if (v19 == v24)
    {
LABEL_58:
      v220[0] = v221;
      HIDWORD(v220[1]) = 6;
      v40 = 1;
      v221[0] = v19;
      while (1)
      {
        v41 = v220[0];
        v42 = *(v220[0] + --v40);
        LODWORD(v220[1]) = v40;
        v43 = *v42;
        if (*v42)
        {
          v44 = *(v4 + 296);
          v45 = *(v4 + 240);
          v46 = *(v4 + 256);
          v47 = v46 - 1;
          if (v44)
          {
            v48 = *(v4 + 280);
            v49 = v44 - 1;
            while (1)
            {
              v50 = v43[2];
              v51 = (v50 >> 4) ^ (v50 >> 9);
              v52 = v51 & v49;
              v53 = *(v48 + 8 * (v51 & v49));
              if (v53 != v50)
              {
                v54 = 1;
                while (v53 != -4096)
                {
                  v55 = v52 + v54++;
                  v52 = v55 & v49;
                  v53 = *(v48 + 8 * v52);
                  if (v53 == v50)
                  {
                    goto LABEL_65;
                  }
                }

                if (!v46)
                {
                  goto LABEL_98;
                }

                v56 = v51 & v47;
                v57 = *(v45 + 8 * v56);
                if (v57 != v50)
                {
                  break;
                }
              }

LABEL_65:
              v43 = *v43;
              if (!v43)
              {
                goto LABEL_85;
              }
            }

            v58 = 1;
            while (v57 != -4096)
            {
              v59 = v56 + v58++;
              v56 = v59 & v47;
              v57 = *(v45 + 8 * v56);
              if (v57 == v50)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_98;
          }

          if (v46)
          {
            while (1)
            {
              v50 = v43[2];
              v60 = ((v50 >> 4) ^ (v50 >> 9)) & v47;
              v61 = *(v45 + 8 * v60);
              if (v61 != v50)
              {
                break;
              }

LABEL_79:
              v43 = *v43;
              if (!v43)
              {
                goto LABEL_85;
              }
            }

            v62 = 1;
            while (v61 != -4096)
            {
              v63 = v60 + v62++;
              v60 = v63 & v47;
              v61 = *(v45 + 8 * v60);
              if (v61 == v50)
              {
                goto LABEL_79;
              }
            }

LABEL_98:
            if (v41 != v221)
            {
LABEL_99:
              free(v41);
            }
          }

          else
          {
            v50 = v43[2];
            if (v220[0] != v221)
            {
              goto LABEL_99;
            }
          }

          if (v50)
          {
            v74 = *(v4 + 120);
            if (v74)
            {
              v75 = *(v4 + 104);
              v76 = v74 - 1;
              v77 = v213;
              while (1)
              {
                v78 = v77;
                v79 = HIDWORD(v77);
                v80 = 0x9DDFEA08EB382D69 * ((8 * v78 - 0xAE502812AA7333) ^ v79);
                v81 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v79 ^ (v80 >> 47) ^ v80)) >> 32) >> 15) ^ (-348639895 * (v79 ^ (v80 >> 47) ^ v80)))) & v76;
                v82 = *(v75 + 16 * v81);
                if (v82 != v78)
                {
                  break;
                }

LABEL_104:
                if (v81 != v74)
                {
                  v77 = *(v75 + 16 * v81 + 8);
                  if (v77)
                  {
                    continue;
                  }
                }

                goto LABEL_112;
              }

              v83 = 1;
              while (v82 != -4096)
              {
                v84 = v81 + v83++;
                v81 = v84 & v76;
                v82 = *(v75 + 16 * v81);
                if (v82 == v78)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
              v78 = v213;
            }

LABEL_112:
            if (v78 == v213)
            {
              v85 = 0;
            }

            else
            {
              v85 = v78;
            }

            v212 = v85;
            v220[0] = v85;
            ParentBlock = mlir::Value::getParentBlock(v220);
            if (v220[0])
            {
              v87 = (*(v220[0] + 1) & 7) == 7;
            }

            else
            {
              v87 = 1;
            }

            if (v87)
            {
              v88 = (ParentBlock + 40);
            }

            else
            {
              v88 = (mlir::detail::OpResultImpl::getOwner(v220[0]) + 8);
            }

            v89 = *v88;
            Loc = mlir::Value::getLoc(&v213);
            v91 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(v4, 2u, ParentBlock, v89, Loc, &v212, 1, *(v213 + 8) & 0xFFFFFFFFFFFFFFF8, v211);
            v92 = v213;
            v93 = *(v4 + 120);
            if (!v93)
            {
LABEL_197:
              v141 = v91;
              llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(v208, 2 * v93);
              v142 = *(v4 + 120);
              if (!v142)
              {
                goto LABEL_217;
              }

              goto LABEL_198;
            }

            v94 = *(v4 + 104);
            v95 = 0x9DDFEA08EB382D69 * ((8 * v213 - 0xAE502812AA7333) ^ HIDWORD(v213));
            v96 = 0x9DDFEA08EB382D69 * (HIDWORD(v213) ^ (v95 >> 47) ^ v95);
            v97 = v93 - 1;
            v98 = (-348639895 * ((v96 >> 47) ^ v96)) & (v93 - 1);
            v99 = (v94 + 16 * v98);
            v100 = *v99;
            if (v213 != *v99)
            {
              v101 = 0;
              v102 = 1;
              while (v100 != -4096)
              {
                if (v101)
                {
                  v103 = 0;
                }

                else
                {
                  v103 = v100 == -8192;
                }

                if (v103)
                {
                  v101 = v99;
                }

                v104 = v98 + v102++;
                v98 = v104 & v97;
                v99 = (v94 + 16 * (v104 & v97));
                v100 = *v99;
                if (v213 == *v99)
                {
                  goto LABEL_137;
                }
              }

              if (v101)
              {
                v99 = v101;
              }

              v140 = *(v4 + 112);
              if (4 * v140 + 4 >= 3 * v93)
              {
                goto LABEL_197;
              }

              if (v93 + ~v140 - *(v4 + 116) > v93 >> 3)
              {
                *(v4 + 112) = v140 + 1;
                if (*v99 != -4096)
                {
                  goto LABEL_135;
                }

                goto LABEL_136;
              }

              v141 = v91;
              llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(v208, v93);
              v142 = *(v4 + 120);
              if (!v142)
              {
LABEL_217:
                v99 = 0;
LABEL_218:
                v91 = v141;
                goto LABEL_219;
              }

LABEL_198:
              v143 = *(v4 + 104);
              v144 = 0x9DDFEA08EB382D69 * ((8 * v92 - 0xAE502812AA7333) ^ HIDWORD(v92));
              v145 = 0x9DDFEA08EB382D69 * (HIDWORD(v92) ^ (v144 >> 47) ^ v144);
              LODWORD(v144) = -348639895 * ((v145 >> 47) ^ v145);
              v146 = v142 - 1;
              v147 = (v142 - 1) & v144;
              v99 = (v143 + 16 * v147);
              v148 = *v99;
              if (v92 == *v99)
              {
                goto LABEL_218;
              }

              v149 = 0;
              v150 = 1;
              v91 = v141;
              while (v148 != -4096)
              {
                if (v149)
                {
                  v151 = 0;
                }

                else
                {
                  v151 = v148 == -8192;
                }

                if (v151)
                {
                  v149 = v99;
                }

                v152 = v147 + v150++;
                v147 = v152 & v146;
                v99 = (v143 + 16 * (v152 & v146));
                v148 = *v99;
                if (v92 == *v99)
                {
                  goto LABEL_219;
                }
              }

              if (v149)
              {
                v99 = v149;
              }

LABEL_219:
              ++*(v4 + 112);
              if (*v99 != -4096)
              {
LABEL_135:
                --*(v4 + 116);
              }

LABEL_136:
              *v99 = v92;
              v99[1] = 0;
            }

LABEL_137:
            v99[1] = v91;
            v105 = v214;
            v106 = v216;
            if (!v216)
            {
              v110 = 0;
              v116 = v215;
              if (4 * v215 + 4 >= 3 * v216)
              {
                goto LABEL_211;
              }

              goto LABEL_149;
            }

            v107 = 0x9DDFEA08EB382D69 * ((8 * v91 - 0xAE502812AA7333) ^ (v91 >> 32));
            v108 = 0x9DDFEA08EB382D69 * ((v91 >> 32) ^ (v107 >> 47) ^ v107);
            v109 = (v216 - 1) & (-348639895 * ((v108 >> 47) ^ v108));
            v110 = v214 + 72 * v109;
            v111 = *v110;
            if (*v110 != v91)
            {
              v112 = 0;
              v113 = 1;
              while (v111 != -4096)
              {
                if (v112)
                {
                  v114 = 0;
                }

                else
                {
                  v114 = v111 == -8192;
                }

                if (v114)
                {
                  v112 = v110;
                }

                v115 = v109 + v113++;
                v109 = v115 & (v216 - 1);
                v110 = v214 + 72 * v109;
                v111 = *v110;
                if (*v110 == v91)
                {
                  goto LABEL_153;
                }
              }

              if (v112)
              {
                v110 = v112;
              }

              v116 = v215;
              if (4 * v215 + 4 >= 3 * v216)
              {
LABEL_211:
                v207 = v91;
                v153 = 2 * v216;
                goto LABEL_222;
              }

LABEL_149:
              if (v216 + ~v116 - HIDWORD(v215) <= v216 >> 3)
              {
                v207 = v91;
                v153 = v216;
LABEL_222:
                v155 = (v153 - 1) | ((v153 - 1) >> 1);
                v156 = v155 | (v155 >> 2) | ((v155 | (v155 >> 2)) >> 4);
                v157 = ((v156 | (v156 >> 8)) >> 16) | v156 | (v156 >> 8);
                if ((v157 + 1) > 0x40)
                {
                  v158 = v157 + 1;
                }

                else
                {
                  v158 = 64;
                }

                v216 = v158;
                buffer = llvm::allocate_buffer(72 * v158, 8uLL);
                v214 = buffer;
                if (v105)
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(&v214, v105, &v105[9 * v106]);
                  llvm::deallocate_buffer(v105, (72 * v106));
                }

                v215 = 0;
                v166 = v216;
                if (v216)
                {
                  v167 = buffer;
                  v168 = 72 * v216 - 72;
                  v169 = buffer;
                  v91 = v207;
                  if (v168 < 0x48)
                  {
                    goto LABEL_303;
                  }

                  v170 = v168 / 0x48 + 1;
                  v169 = (v167 + 72 * (v170 & 0x7FFFFFFFFFFFFFELL));
                  v171 = v167;
                  v172 = v170 & 0x7FFFFFFFFFFFFFELL;
                  do
                  {
                    *v171 = -4096;
                    *(v171 + 9) = -4096;
                    v171 = (v171 + 144);
                    v172 -= 2;
                  }

                  while (v172);
                  if (v170 != (v170 & 0x7FFFFFFFFFFFFFELL))
                  {
LABEL_303:
                    do
                    {
                      *v169 = -4096;
                      v169 = (v169 + 72);
                    }

                    while (v169 != (v167 + 72 * v166));
                  }

                  if (v166)
                  {
                    v173 = 0x9DDFEA08EB382D69 * ((8 * v207 - 0xAE502812AA7333) ^ (v207 >> 32));
                    v174 = 0x9DDFEA08EB382D69 * ((v207 >> 32) ^ (v173 >> 47) ^ v173);
                    v175 = v166 - 1;
                    v176 = v175 & (-348639895 * ((v174 >> 47) ^ v174));
                    v110 = v167 + 72 * v176;
                    v177 = *v110;
                    if (*v110 != v207)
                    {
                      v178 = 0;
                      v179 = 1;
                      while (v177 != -4096)
                      {
                        if (v178)
                        {
                          v180 = 0;
                        }

                        else
                        {
                          v180 = v177 == -8192;
                        }

                        if (v180)
                        {
                          v178 = v110;
                        }

                        v181 = v176 + v179++;
                        v176 = v181 & v175;
                        v110 = v167 + 72 * v176;
                        v177 = *v110;
                        if (*v110 == v207)
                        {
                          goto LABEL_272;
                        }
                      }

                      if (v178)
                      {
                        v110 = v178;
                      }
                    }
                  }

                  else
                  {
                    v110 = 0;
                  }
                }

                else
                {
                  v110 = 0;
                  v91 = v207;
                }

LABEL_272:
                LODWORD(v215) = v215 + 1;
                if (*v110 != -4096)
                {
LABEL_151:
                  --HIDWORD(v215);
                }
              }

              else
              {
                LODWORD(v215) = v116 + 1;
                if (*v110 != -4096)
                {
                  goto LABEL_151;
                }
              }

              *v110 = v91;
              *(v110 + 1) = v110 + 24;
              *(v110 + 2) = 0x600000000;
            }

LABEL_153:
            v117 = v213;
            v118 = *(v110 + 4);
            if (v118 >= *(v110 + 5))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod((v110 + 8), v110 + 24, v118 + 1, 8);
              v118 = *(v110 + 4);
            }

            *(*(v110 + 1) + 8 * v118) = v117;
            ++*(v110 + 4);
            v119 = v214;
            v120 = v216;
            if (!v216)
            {
              v125 = 0;
              v131 = v215;
              if (4 * v215 + 4 >= 3 * v216)
              {
                goto LABEL_215;
              }

              goto LABEL_167;
            }

            v121 = 0x9DDFEA08EB382D69 * ((8 * v212 - 0xAE502812AA7333) ^ (v212 >> 32));
            v122 = 0x9DDFEA08EB382D69 * ((v212 >> 32) ^ (v121 >> 47) ^ v121);
            v123 = v216 - 1;
            v124 = (-348639895 * ((v122 >> 47) ^ v122)) & (v216 - 1);
            v125 = (v214 + 72 * v124);
            v126 = *v125;
            if (v212 != *v125)
            {
              v127 = 0;
              v128 = 1;
              while (v126 != -4096)
              {
                if (v127)
                {
                  v129 = 0;
                }

                else
                {
                  v129 = v126 == -8192;
                }

                if (v129)
                {
                  v127 = v125;
                }

                v130 = v124 + v128++;
                v124 = v130 & v123;
                v125 = (v214 + 72 * (v130 & v123));
                v126 = *v125;
                if (v212 == *v125)
                {
                  goto LABEL_171;
                }
              }

              if (v127)
              {
                v125 = v127;
              }

              v131 = v215;
              if (4 * v215 + 4 >= 3 * v216)
              {
LABEL_215:
                v154 = 2 * v216;
                goto LABEL_228;
              }

LABEL_167:
              if (v216 + ~v131 - HIDWORD(v215) <= v216 >> 3)
              {
                v154 = v216;
LABEL_228:
                v160 = (v154 - 1) | ((v154 - 1) >> 1);
                v161 = v160 | (v160 >> 2) | ((v160 | (v160 >> 2)) >> 4);
                v162 = ((v161 | (v161 >> 8)) >> 16) | v161 | (v161 >> 8);
                if ((v162 + 1) > 0x40)
                {
                  v163 = v162 + 1;
                }

                else
                {
                  v163 = 64;
                }

                v216 = v163;
                v164 = llvm::allocate_buffer(72 * v163, 8uLL);
                v214 = v164;
                if (v119)
                {
                  v165 = 9 * v120;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(&v214, v119, &v119[v165]);
                  llvm::deallocate_buffer(v119, (v165 * 8));
                }

                v215 = 0;
                v182 = v216;
                if (!v216)
                {
                  goto LABEL_267;
                }

                v183 = 72 * v216 - 72;
                v184 = v164;
                if (v183 < 0x48)
                {
                  goto LABEL_304;
                }

                v185 = v183 / 0x48 + 1;
                v184 = (v164 + 72 * (v185 & 0x7FFFFFFFFFFFFFELL));
                v186 = v164;
                v187 = v185 & 0x7FFFFFFFFFFFFFELL;
                do
                {
                  *v186 = -4096;
                  *(v186 + 9) = -4096;
                  v186 = (v186 + 144);
                  v187 -= 2;
                }

                while (v187);
                if (v185 != (v185 & 0x7FFFFFFFFFFFFFELL))
                {
LABEL_304:
                  do
                  {
                    *v184 = -4096;
                    v184 = (v184 + 72);
                  }

                  while (v184 != (v164 + 72 * v182));
                }

                if (v182)
                {
                  v188 = 0x9DDFEA08EB382D69 * ((8 * v212 - 0xAE502812AA7333) ^ (v212 >> 32));
                  v189 = 0x9DDFEA08EB382D69 * ((v212 >> 32) ^ (v188 >> 47) ^ v188);
                  LODWORD(v188) = -348639895 * ((v189 >> 47) ^ v189);
                  v190 = v182 - 1;
                  v191 = v188 & (v182 - 1);
                  v125 = (v164 + 72 * v191);
                  v192 = *v125;
                  if (v212 != *v125)
                  {
                    v193 = 0;
                    v194 = 1;
                    while (v192 != -4096)
                    {
                      if (v193)
                      {
                        v195 = 0;
                      }

                      else
                      {
                        v195 = v192 == -8192;
                      }

                      if (v195)
                      {
                        v193 = v125;
                      }

                      v196 = v191 + v194++;
                      v191 = v196 & v190;
                      v125 = (v164 + 72 * (v196 & v190));
                      v192 = *v125;
                      if (v212 == *v125)
                      {
                        goto LABEL_268;
                      }
                    }

                    if (v193)
                    {
                      v125 = v193;
                    }
                  }
                }

                else
                {
LABEL_267:
                  v125 = 0;
                }

LABEL_268:
                LODWORD(v215) = v215 + 1;
                if (*v125 != -4096)
                {
LABEL_169:
                  --HIDWORD(v215);
                }
              }

              else
              {
                LODWORD(v215) = v131 + 1;
                if (*v125 != -4096)
                {
                  goto LABEL_169;
                }
              }

              *v125 = v212;
              v125[1] = v125 + 3;
              v125[2] = 0x600000000;
            }

LABEL_171:
            v132 = v213;
            v133 = v125[1];
            v134 = *(v125 + 4);
            v135 = (v133 + 8 * v134);
            if (v134)
            {
              v136 = 8 * v134;
              v137 = v125[1];
              do
              {
                if (*v137 == v213)
                {
                  goto LABEL_177;
                }

                ++v137;
                v136 -= 8;
              }

              while (v136);
              v137 = v135;
            }

            else
            {
              v137 = v125[1];
LABEL_177:
              if (v137 != v135)
              {
                v138 = v137 + 1;
                if (v137 + 1 != v135)
                {
                  v139 = v135 - v137 - 8;
                  do
                  {
                    if (*v138 != v132)
                    {
                      *v137++ = *v138;
                    }

                    ++v138;
                    v139 -= 8;
                  }

                  while (v139);
                }
              }
            }

            *(v125 + 4) = (v137 - v133) >> 3;
          }

LABEL_27:
          v18 = v218 + 1;
          v218 = v18;
          if (v18 == v14)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        }

LABEL_85:
        if (!v216)
        {
          goto LABEL_91;
        }

        v64 = 0x9DDFEA08EB382D69 * ((8 * v42 - 0xAE502812AA7333) ^ HIDWORD(v42));
        v65 = 0x9DDFEA08EB382D69 * (HIDWORD(v42) ^ (v64 >> 47) ^ v64);
        v66 = (v216 - 1) & (-348639895 * ((v65 >> 47) ^ v65));
        v67 = v214 + 72 * v66;
        v68 = *v67;
        if (v42 != *v67)
        {
          break;
        }

LABEL_92:
        if (v67 != v214 + 72 * v216)
        {
          v71 = *(v67 + 1);
          v72 = *(v67 + 4);
          v73 = v72 + v40;
          if (v73 > HIDWORD(v220[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v220, v221, v73, 8);
            v40 = v220[1];
          }

          if (v72)
          {
            memcpy(v220[0] + 8 * v40, v71, 8 * v72);
            v40 = v220[1];
          }

          v40 += v72;
          LODWORD(v220[1]) = v40;
        }

        if (!v40)
        {
          v50 = 0;
          v41 = v220[0];
          goto LABEL_98;
        }
      }

      v69 = 1;
      while (v68 != -4096)
      {
        v70 = v66 + v69++;
        v66 = v70 & (v216 - 1);
        v67 = v214 + 72 * v66;
        v68 = *v67;
        if (v42 == *v67)
        {
          goto LABEL_92;
        }
      }

LABEL_91:
      v67 = v214 + 72 * v216;
      goto LABEL_92;
    }
  }

  if (v20)
  {
    if (v24 && (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8) == v20)
    {
      goto LABEL_27;
    }
  }

  else if (v24)
  {
    goto LABEL_27;
  }

  goto LABEL_58;
}