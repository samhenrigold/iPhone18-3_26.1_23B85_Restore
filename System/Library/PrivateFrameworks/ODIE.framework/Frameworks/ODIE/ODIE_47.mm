uint64_t llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 208) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::~list(llvm::cl::Option *this)
{
  *this = &unk_286E84DC8;
  v2 = this + 752;
  v3 = *(this + 97);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 25) = &unk_286E84E80;
  v4 = *(this + 27);
  if (v4 != this + 232)
  {
    free(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  v6 = *(this + 18);
  if (v6)
  {
    *(this + 19) = v6;
    operator delete(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    *(this + 16) = v7;
    operator delete(v7);
  }

  llvm::cl::Option::~Option(this);
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::~list(llvm::cl::Option *a1)
{

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<anonymous namespace::PassArgData,BOOL,anonymous namespace::PassNameParser>::setDefault(void *result)
{
  v2 = result + 15;
  v1 = result[15];
  result[23] = result[22];
  result[16] = v1;
  v3 = result[18];
  v4 = result[19];
  while (v3 != v4)
  {
    v3 += 32;
  }
}

void anonymous namespace::PassNameParser::~PassNameParser(_anonymous_namespace_::PassNameParser *this)
{
  *this = &unk_286E84E80;
  v2 = *(this + 2);
  if (v2 != this + 32)
  {
    free(v2);
  }
}

{
  *this = &unk_286E84E80;
  v2 = *(this + 2);
  if (v2 != this + 32)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

unint64_t anonymous namespace::PassNameParser::getOptionWidth(_anonymous_namespace_::PassNameParser *this, const llvm::cl::Option *a2)
{
  OptionWidth = llvm::cl::generic_parser_base::getOptionWidth(this, a2);
  if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
  }

  v3 = OptionWidth + 2;
  v4 = *(_MergedGlobals_26[0] + 8);
  if (v4)
  {
      ;
    }
  }

  else
  {
    i = *_MergedGlobals_26[0];
  }

  v7 = *_MergedGlobals_26[0] + 8 * v4;
  if (i != v7)
  {
    v8 = *i;
    do
    {
      v19 = &v20;
      v20 = 0;
      std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(*(v8 + 112), llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>, &v19);
      do
      {
        v9 = i[1];
        ++i;
        v8 = v9;
        if (v9)
        {
          v10 = v8 == -8;
        }

        else
        {
          v10 = 1;
        }
      }

      while (v10);
      if (v3 <= v20 + 4)
      {
        v3 = v20 + 4;
      }
    }

    while (i != v7);
  }

  if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
  }

  v11 = *(qword_27FC1EE70[0] + 8);
  if (v11)
  {
      ;
    }
  }

  else
  {
    j = *qword_27FC1EE70[0];
  }

  v14 = *qword_27FC1EE70[0] + 8 * v11;
  if (j != v14)
  {
    v15 = *j;
    do
    {
      v19 = &v20;
      v20 = 0;
      std::function<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(*(v15 + 112), llvm::function_ref<void ()(mlir::detail::PassOptions const&)>::callback_fn<mlir::PassRegistryEntry::getOptionWidth(void)::$_0>, &v19);
      do
      {
        v16 = j[1];
        ++j;
        v15 = v16;
        if (v16)
        {
          v17 = v15 == -8;
        }

        else
        {
          v17 = 1;
        }
      }

      while (v17);
      if (v3 <= v20 + 4)
      {
        v3 = v20 + 4;
      }
    }

    while (j != v14);
  }

  return v3;
}

void anonymous namespace::PassNameParser::printOptionInfo(_anonymous_namespace_::PassNameParser *this, const llvm::cl::Option *a2, size_t a3)
{
  v47[32] = *MEMORY[0x277D85DE8];
  if (*(this + 544) == 1)
  {
    v5 = llvm::outs(this);
    v6 = *(v5 + 4);
    if (*(v5 + 3) - v6 > 3uLL)
    {
      *v6 = 757932064;
      *(v5 + 4) += 4;
    }

    else
    {
      v5 = llvm::raw_ostream::write(v5, "  --", 4uLL);
    }

    v11 = llvm::raw_ostream::operator<<(v5, *(a2 + 2), *(a2 + 3));
    v12 = *(v11 + 4);
    if ((*(v11 + 3) - v12) > 0xA)
    {
      *(v12 + 7) = 1046966881;
      *v12 = *"=<pass-arg>";
      *(v11 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v11, "=<pass-arg>", 0xBuLL);
    }

    v13 = *(a2 + 4);
    v14 = *(a2 + 5);
    v15 = *(a2 + 3) + 18;

    llvm::cl::Option::printHelpStr(v13, v14, a3, v15);
  }

  else
  {
    v7 = *(a2 + 3);
    v8 = llvm::outs(this);
    v9 = *(v8 + 4);
    v10 = *(v8 + 3) - v9;
    if (v7)
    {
      if (v10 > 3)
      {
        *v9 = 757932064;
        *(v8 + 4) += 4;
      }

      else
      {
        v8 = llvm::raw_ostream::write(v8, "  --", 4uLL);
      }

      llvm::raw_ostream::operator<<(v8, *(a2 + 2), *(a2 + 3));
      v16 = llvm::cl::Option::printHelpStr(*(a2 + 4), *(a2 + 5), a3, *(a2 + 3) + 7);
    }

    else
    {
      if (v10 > 1)
      {
        *v9 = 8224;
        *(v8 + 4) += 2;
      }

      else
      {
        v8 = llvm::raw_ostream::write(v8, "  ", 2uLL);
      }

      v16 = llvm::raw_ostream::operator<<(v8, *(a2 + 4), *(a2 + 5));
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
        v16 = llvm::raw_ostream::write(v16, 10);
      }

      else
      {
        *(v16 + 4) = v17 + 1;
        *v17 = 10;
      }
    }

    if (!atomic_load_explicit(_MergedGlobals_26, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(_MergedGlobals_26, llvm::object_creator<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassInfo,llvm::MallocAllocator>>::call);
    }

    __base = v47;
    __nel = 0x2000000000;
    v18 = *(_MergedGlobals_26[0] + 8);
    if (v18)
    {
        ;
      }
    }

    else
    {
      i = *_MergedGlobals_26[0];
    }

    v21 = *_MergedGlobals_26[0] + 8 * v18;
    if (i != v21)
    {
      v22 = *i;
      do
      {
        llvm::SmallVectorTemplateBase<mlir::PassRegistryEntry *,true>::push_back(&__base, v22 + 8);
        do
        {
          v23 = i[1];
          ++i;
          v22 = v23;
          if (v23)
          {
            v24 = v22 == -8;
          }

          else
          {
            v24 = 1;
          }
        }

        while (v24);
      }

      while (i != v21);
      if (__nel >= 2)
      {
        qsort(__base, __nel, 8uLL, _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir8PassInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_);
      }
    }

    v25 = llvm::outs(v16);
    v26 = llvm::raw_ostream::write(v25, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, 4uLL);
    v27 = *(v25 + 4);
    if ((*(v25 + 3) - v27) > 5)
    {
      *(v27 + 4) = 29541;
      *v27 = 1936941392;
      v28 = (*(v25 + 4) + 6);
      *(v25 + 4) = v28;
    }

    else
    {
      v26 = llvm::raw_ostream::write(v25, "Passes", 6uLL);
      v25 = v26;
      v28 = *(v26 + 4);
    }

    if (*(v25 + 3) - v28 > 1uLL)
    {
      *v28 = 2618;
      *(v25 + 4) += 2;
    }

    else
    {
      v26 = llvm::raw_ostream::write(v25, ":\n", 2uLL);
    }

    v29 = __base;
    if (__nel)
    {
      v30 = 8 * __nel;
      do
      {
        v31 = *v29++;
        mlir::PassRegistryEntry::printHelpStr(v31, a3);
        v30 -= 8;
      }

      while (v30);
      v29 = __base;
    }

    if (v29 != v47)
    {
      free(v29);
    }

    if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
    }

    if (*(qword_27FC1EE70[0] + 12))
    {
      if (!atomic_load_explicit(qword_27FC1EE70, memory_order_acquire))
      {
        llvm::ManagedStaticBase::RegisterManagedStatic(qword_27FC1EE70, llvm::object_creator<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call, llvm::object_deleter<llvm::StringMap<mlir::PassPipelineInfo,llvm::MallocAllocator>>::call);
      }

      __base = v47;
      __nel = 0x2000000000;
      v32 = *(qword_27FC1EE70[0] + 8);
      if (v32)
      {
          ;
        }
      }

      else
      {
        j = *qword_27FC1EE70[0];
      }

      v35 = *qword_27FC1EE70[0] + 8 * v32;
      if (j != v35)
      {
        v36 = *j;
        do
        {
          llvm::SmallVectorTemplateBase<mlir::PassRegistryEntry *,true>::push_back(&__base, v36 + 8);
          do
          {
            v37 = j[1];
            ++j;
            v36 = v37;
            if (v37)
            {
              v38 = v36 == -8;
            }

            else
            {
              v38 = 1;
            }
          }

          while (v38);
        }

        while (j != v35);
        if (__nel >= 2)
        {
          qsort(__base, __nel, 8uLL, _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir16PassPipelineInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_);
        }
      }

      v39 = llvm::outs(v26);
      llvm::raw_ostream::write(v39, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, 4uLL);
      v40 = *(v39 + 4);
      if (*(v39 + 3) - v40 > 0xDuLL)
      {
        qmemcpy(v40, "Pass Pipelines", 14);
        v41 = (*(v39 + 4) + 14);
        *(v39 + 4) = v41;
      }

      else
      {
        v39 = llvm::raw_ostream::write(v39, "Pass Pipelines", 0xEuLL);
        v41 = *(v39 + 4);
      }

      if (*(v39 + 3) - v41 > 1uLL)
      {
        *v41 = 2618;
        *(v39 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v39, ":\n", 2uLL);
      }

      v42 = __base;
      if (__nel)
      {
        v43 = 8 * __nel;
        do
        {
          v44 = *v42++;
          mlir::PassRegistryEntry::printHelpStr(v44, a3);
          v43 -= 8;
        }

        while (v43);
        v42 = __base;
      }

      if (v42 != v47)
      {
        free(v42);
      }
    }
  }
}

void *llvm::cl::parser<anonymous namespace::PassArgData>::~parser(void *a1)
{
  *a1 = &unk_286E84E80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<anonymous namespace::PassArgData>::~parser(void *a1)
{
  *a1 = &unk_286E84E80;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir8PassInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_(void **a1, const void ***a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if (v3 < 0)
  {
    v2 = **a1;
  }

  if (v3 < 0)
  {
    v3 = (*a1)[1];
  }

  v9[0] = v2;
  v9[1] = v3;
  v4 = *(*a2 + 23);
  v5 = (*a2)[1];
  if (v4 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return llvm::StringRef::compare(v9, v6, v7);
}

uint64_t _ZZZNK12_GLOBAL__N_114PassNameParser15printOptionInfoERKN4llvm2cl6OptionEmENK3__0clINS1_9StringMapIN4mlir16PassPipelineInfoENS1_15MallocAllocatorEEEEEDaNS1_9StringRefERT_ENUlPKPNS9_17PassRegistryEntryESK_E_8__invokeESK_SK_(void **a1, const void ***a2)
{
  v2 = *a1;
  v3 = *(*a1 + 23);
  if (v3 < 0)
  {
    v2 = **a1;
  }

  if (v3 < 0)
  {
    v3 = (*a1)[1];
  }

  v9[0] = v2;
  v9[1] = v3;
  v4 = *(*a2 + 23);
  v5 = (*a2)[1];
  if (v4 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return llvm::StringRef::compare(v9, v6, v7);
}

__n128 llvm::SmallVectorTemplateBase<llvm::cl::parser<anonymous namespace::PassArgData>::OptionInfo,false>::push_back(unint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v4 >= *(a1 + 3))
  {
    if (v5 <= a2 && v5 + (v4 << 6) > a2)
    {
      v10 = a2 - v5;
      v5 = *a1;
      v2 = *a1 + v10;
    }

    else
    {
      v5 = *a1;
    }
  }

  v6 = v5 + (*(a1 + 2) << 6);
  v7 = *(v2 + 16);
  *v6 = *v2;
  *(v6 + 16) = v7;
  *(v6 + 32) = &unk_286E84F18;
  result = *(v2 + 40);
  *(v6 + 56) = *(v2 + 56);
  *(v6 + 40) = result;
  ++*(a1 + 2);
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<anonymous namespace::PassArgData>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[64 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_286E84F18;
      v11 = *(v5 + 40);
      *(v9 + 7) = *(v5 + 7);
      *(v9 + 40) = v11;
      v9 += 64;
      v5 += 64;
      v8 += 64;
    }

    while (v5 != v7);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

void llvm::cl::list_storage<anonymous namespace::PassArgData,BOOL>::addValue<anonymous namespace::PassArgData>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 8 * ((v3 - *a1) >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = 24 * v8 + 24;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

mlir::Pass::Statistic *mlir::Pass::Statistic::Statistic(mlir::Pass::Statistic *this, mlir::Pass *a2, const char *a3, const char *a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 17);
  if (v7 >= v6)
  {
    v9 = *(a2 + 15);
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<mlir::Pass::Statistic *>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Pass::Statistic *>>(a2 + 120, v13);
    }

    *(8 * v10) = this;
    v8 = 8 * v10 + 8;
    v14 = *(a2 + 15);
    v15 = *(a2 + 16) - v14;
    v16 = (8 * v10 - v15);
    memcpy(v16, v14, v15);
    v17 = *(a2 + 15);
    *(a2 + 15) = v16;
    *(a2 + 16) = v8;
    *(a2 + 17) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v7 = this;
    v8 = (v7 + 1);
  }

  *(a2 + 16) = v8;
  return this;
}

__guard mlir::OpPassManager::mergeStatisticsInto(__guard this, mlir::OpPassManager *a2)
{
  v2 = *(*this + 40);
  v3 = *(*this + 48);
  v4 = *(*a2 + 40);
  v5 = *(*a2 + 48);
  if (v2 != v3 && v4 != v5)
  {
    do
    {
      v7 = *v2;
      v8 = *v4;
      v9 = *(*v2 + 8);
      this = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
      if (v7)
      {
        v10 = v9 == this;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = *(v7 + 344);
        v12 = *(v8 + 344);
        if (v11 && v12 != 0)
        {
          v14 = *(v7 + 336);
          v15 = *(v8 + 336);
          v16 = 8 * v12 - 8;
          v17 = 8 * v11 - 8;
          do
          {
            this = mlir::OpPassManager::mergeStatisticsInto(v14, v15);
            if (!v17)
            {
              break;
            }

            v14 += 8;
            v15 = (v15 + 8);
            v18 = v16;
            v16 -= 8;
            v17 -= 8;
          }

          while (v18);
        }
      }

      if (++v2 == v3)
      {
        break;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return this;
}

__guard prepareStatistics(__guard result)
{
  v1 = *(*result + 40);
  for (i = *(*result + 48); v1 != i; ++v1)
  {
    v3 = *v1;
    v4 = *(*v1 + 8);
    result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
    if (v3)
    {
      v5 = v4 == result;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = *(v3 + 336);
      v7 = *(v3 + 344);
      v8 = *(v3 + 368);
      if (v8)
      {
        v9 = *(v3 + 360);
        v10 = v9 + 24 * v8;
        do
        {
          v11 = *(v9 + 8);
          if (v11)
          {
            v12 = 0;
            v13 = v6;
            do
            {
              prepareStatistics(*v9 + v12);
              result = mlir::OpPassManager::mergeStatisticsInto(*v9 + v12, v13);
              v13 = (v13 + 8);
              v12 += 8;
              --v11;
            }

            while (v11);
          }

          v9 += 24;
        }

        while (v9 != v10);
      }

      if (v7)
      {
        v14 = 8 * v7;
        do
        {
          result = prepareStatistics(v6);
          v6 += 8;
          v14 -= 8;
        }

        while (v14);
      }
    }
  }

  return result;
}

uint64_t std::function<void ()(mlir::Pass *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25CB7B358);
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E84F38;
  a2[1] = v2;
  return result;
}

__guard std::__function::__func<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0,std::allocator<printResultsAsList(llvm::raw_ostream &,mlir::OpPassManager &)::$_0>,void ()(mlir::Pass *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  result = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (v3)
  {
    v6 = v4 == result;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v3 + 344);
    if (v7)
    {
      v8 = *(v3 + 336);
      v9 = v8 + 8 * v7;
      do
      {
        v10 = *(*v8 + 40);
        v11 = *(*v8 + 48);
        while (v10 != v11)
        {
          v12 = *v10++;
          result = std::function<void ()(mlir::Pass *)>::operator()(*(*(a1 + 8) + 24), v12);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Pass::Statistic *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void mlir::PassManager::enableTiming(uint64_t result, void *a2)
{
  if (*a2)
  {
    operator new();
  }
}

void anonymous namespace::PassTiming::~PassTiming(char ***this)
{
  *this = &unk_286E84F80;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::destroyAll(this + 7);
  MEMORY[0x25F891030](this[7], 8);
  v2 = this[5];
  if (v2)
  {
    (*(*v2 + 4))(v2, this[6]);
  }

  this[5] = 0;
  this[6] = 0;
  v3 = this[4];
  this[4] = 0;
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  MEMORY[0x25F891030](this[1], 8);
}

{
  *this = &unk_286E84F80;
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::destroyAll(this + 7);
  MEMORY[0x25F891030](this[7], 8);
  v2 = this[5];
  if (v2)
  {
    (*(*v2 + 4))(v2, this[6]);
  }

  this[5] = 0;
  this[6] = 0;
  v3 = this[4];
  this[4] = 0;
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  MEMORY[0x25F891030](this[1], 8);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::PassTiming::runBeforePipeline(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t *a4)
{
  {
    v9 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v20 = llvm::get_threadid(void)::Self();
    *v20 = v21;
  }

  v24 = v9;
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v24);
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::doFind<mlir::PassInstrumentation::PipelineParentInfo>(v11, v12, *a4, a4[1]);
  if (!v13 || v13 == (v11 + 24 * v12))
  {
    v14 = *(a1 + 80);
  }

  else
  {
    v14 = (*llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, a4) + 16 * *(v13 + 4));
  }

  v25[0] = a2;
  v25[1] = a3;
  v15 = *v14;
  if (*v14)
  {
    if (a3)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0;
    }

    v22 = v15;
    v23 = v17;
    (*(*v15 + 24))(v15, v17);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v18 = llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(v10, &v22);
  *(*v10 + 16 * *(v10 + 2)) = *v18;
  *v18 = 0;
  *(v18 + 8) = 0;
  ++*(v10 + 2);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 32))(v22, v23);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPipeline(uint64_t a1)
{
  {
    v3 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v6 = llvm::get_threadid(void)::Self();
    *v6 = v7;
  }

  v8 = v3;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v8);

  return llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(v4);
}

uint64_t anonymous namespace::PassTiming::runBeforePass(_anonymous_namespace_::PassTiming *this, mlir::Pass *a2, mlir::Operation *a3)
{
  {
    v6 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v30 = llvm::get_threadid(void)::Self();
    *v30 = v31;
  }

  v7 = v6;
  v34 = v6;
  v8 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](this + 56, &v34);
  v9 = v8;
  v10 = *(v8 + 2);
  if (v10)
  {
    v11 = (*v8 + 16 * v10 - 16);
  }

  else
  {
    v11 = *(this + 10);
  }

  v12 = *(a2 + 1);
  v13 = mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID();
  if (!a2 || v12 != v13)
  {
    v24 = *(a2 + 41);
    v35 = a2;
    v25 = *v11;
    if (*v11)
    {
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = a2;
      }

      v32 = v25;
      v33 = v27;
      (*(*v25 + 24))(v25, v27);
      goto LABEL_27;
    }

LABEL_26:
    v32 = 0;
    v33 = 0;
    goto LABEL_27;
  }

  v14 = *(v9 + 8);
  v15 = *(this + 1);
  v35 = 0;
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(v15, *(this + 6), v7, a2, &v35);
  v17 = v35;
  if ((v16 & 1) == 0)
  {
    v32 = v35;
    v18 = *(this + 4);
    v19 = *(this + 6);
    if (4 * v18 + 4 >= 3 * v19)
    {
      v19 *= 2;
    }

    else if (v19 + ~v18 - *(this + 5) > v19 >> 3)
    {
      goto LABEL_11;
    }

    llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::grow(this + 8, v19);
    llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(*(this + 1), *(this + 6), v7, a2, &v32);
    v18 = *(this + 4);
    v17 = v32;
LABEL_11:
    *(this + 4) = v18 + 1;
    if (*v17 != -1 || *(v17 + 8) != -4096)
    {
      --*(this + 5);
    }

    *v17 = v7;
    *(v17 + 8) = a2;
    *(v17 + 16) = 0;
  }

  *(v17 + 16) = v14;
  v20 = *(a2 + 41);
  v35 = a2;
  v21 = *v11;
  if (!*v11)
  {
    goto LABEL_26;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = a2;
  }

  v32 = v21;
  v33 = v23;
  (*(*v21 + 24))(v21, v23);
  if (*(a2 + 86) < 2u)
  {
    (*(*v21 + 48))(v21, v23);
  }

LABEL_27:
  v28 = llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(v9, &v32);
  *(*v9 + 16 * *(v9 + 8)) = *v28;
  *v28 = 0;
  *(v28 + 8) = 0;
  ++*(v9 + 8);
  result = v32;
  if (v32)
  {
    return (*(*v32 + 32))(v32, v33);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterPass(int32x2_t *this, mlir::Pass *a2, mlir::Operation *a3)
{
  {
    v6 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v12 = llvm::get_threadid(void)::Self();
    *v12 = v13;
  }

  v7 = v6;
  v14 = v6;
  v8 = *(a2 + 1);
  if (v8 == mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID())
  {
    v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::doFind<mlir::PassInstrumentation::PipelineParentInfo>(*&this[1], this[3].i32[0], v7, a2);
    if (v9)
    {
      *v9 = xmmword_25D0A07F0;
      this[2] = vadd_s32(this[2], 0x1FFFFFFFFLL);
    }
  }

  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](&this[7], &v14);

  return llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(v10);
}

uint64_t anonymous namespace::PassTiming::runBeforeAnalysis(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  {
    v9 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v18 = llvm::get_threadid(void)::Self();
    *v18 = v19;
  }

  v22 = v9;
  v10 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v22);
  v11 = v10;
  v12 = *(v10 + 2);
  if (v12)
  {
    v13 = (*v10 + 16 * v12 - 16);
  }

  else
  {
    v13 = *(a1 + 80);
  }

  v23[0] = a2;
  v23[1] = a3;
  v14 = *v13;
  if (*v13)
  {
    v20 = v14;
    v21 = v15;
    (*(*v14 + 24))(v14, v15);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v16 = llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(v11, &v20);
  *(*v11 + 16 * *(v11 + 8)) = *v16;
  *v16 = 0;
  *(v16 + 8) = 0;
  ++*(v11 + 8);
  result = v20;
  if (v20)
  {
    return (*(*v20 + 32))(v20, v21);
  }

  return result;
}

uint64_t anonymous namespace::PassTiming::runAfterAnalysis(uint64_t a1)
{
  {
    v3 = *llvm::get_threadid(void)::Self();
  }

  else
  {
    llvm::get_threadid(void)::$_0::operator()();
    v6 = llvm::get_threadid(void)::Self();
    *v6 = v7;
  }

  v8 = v3;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](a1 + 56, &v8);

  return llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(v4);
}

char ***llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::destroyAll(char ***result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 88 * v1;
    result = (*result + 1);
    do
    {
      if (*(result - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        result = llvm::SmallVector<mlir::TimingScope,4u>::~SmallVector(result);
      }

      result += 11;
      v2 -= 88;
    }

    while (v2);
  }

  return result;
}

char ***llvm::SmallVector<mlir::TimingScope,4u>::~SmallVector(char ***a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[2 * v3 - 2];
    v5 = -16 * v3;
    do
    {
      if (*v4)
      {
        (*(**v4 + 32))(*v4, v4[1]);
      }

      *v4 = 0;
      v4[1] = 0;
      v4 -= 2;
      v5 += 16;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::InsertIntoBucketImpl<unsigned long long>(a1, a2, v7);
    *inserted = *a2;
    inserted[1] = inserted + 3;
    inserted[2] = 0x400000000;
  }

  return inserted + 1;
}

{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::InsertIntoBucketImpl<unsigned long long>(a1, a2, v7);
    *inserted = *a2;
    inserted[1] = inserted + 3;
    inserted[2] = 0x400000000;
  }

  return inserted + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (a2 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
    v6 = (a1 + 88 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 88 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::InsertIntoBucketImpl<unsigned long long>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((88 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 88 * v10 - 88;
      v13 = vdupq_n_s64(v12 / 0x58);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -1;
        }

        if (v14.i8[4])
        {
          result[11] = -1;
        }

        v11 += 2;
        result += 22;
      }

      while (((v12 / 0x58 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (!v3)
    {
LABEL_27:

      JUMPOUT(0x25F891030);
    }

    v15 = v4 + 88 * v3;
    v16 = v4;
    while (1)
    {
      v17 = *v16;
      if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_26:
      v16 += 88;
      if (v16 == v15)
      {
        goto LABEL_27;
      }
    }

    v30 = 0;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>,unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,llvm::SmallVector<mlir::TimingScope,4u>>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v17, &v30);
    v18 = v30;
    *v30 = *v16;
    v19 = v18 + 3;
    v18[1] = v18 + 3;
    v18[2] = 0x400000000;
    if (v18 == v16 || (v20 = *(v16 + 16), !v20))
    {
LABEL_25:
      ++*(a1 + 8);
      llvm::SmallVector<mlir::TimingScope,4u>::~SmallVector((v16 + 8));
      goto LABEL_26;
    }

    v21 = *(v16 + 8);
    if (v21 != v16 + 24)
    {
      v22 = *(v16 + 20);
      v18[1] = v21;
      *(v18 + 4) = v20;
      *(v18 + 5) = v22;
      *(v16 + 8) = v16 + 24;
      *(v16 + 16) = 0;
      goto LABEL_25;
    }

    if (v20 <= 4)
    {
      v24 = v21 + 16 * v20;
    }

    else
    {
      llvm::SmallVectorImpl<mlir::TimingScope>::clear(v18 + 2);
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow((v18 + 1), v20);
      v23 = *(v16 + 16);
      if (!v23)
      {
LABEL_24:
        *(v18 + 4) = v20;
        llvm::SmallVectorImpl<mlir::TimingScope>::clear((v16 + 8));
        goto LABEL_25;
      }

      v21 = *(v16 + 8);
      v24 = v21 + 16 * v23;
      v19 = v18[1];
    }

    do
    {
      *v19++ = *v21;
      *v21 = 0;
      *(v21 + 8) = 0;
      v21 += 16;
    }

    while (v21 != v24);
    goto LABEL_24;
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = 88 * v25 - 88;
    v28 = vdupq_n_s64(v27 / 0x58);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *result = -1;
      }

      if (v29.i8[4])
      {
        result[11] = -1;
      }

      v26 += 2;
      result += 22;
    }

    while (((v27 / 0x58 + 2) & 0x7FFFFFFFFFFFFFELL) != v26);
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<mlir::TimingScope>::clear(unsigned int *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    v3 = *result + 16 * v2 - 16;
    v4 = -16 * v2;
    do
    {
      result = *v3;
      if (*v3)
      {
        result = (*(*result + 32))(result, *(v3 + 8));
      }

      *v3 = 0;
      *(v3 + 8) = 0;
      v3 -= 16;
      v4 += 16;
    }

    while (v4);
  }

  v1[2] = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 16 * v6;
    v8 = v4;
    do
    {
      *v8++ = *v5;
      *v5 = 0;
      v5[1] = 0;
      v5 += 2;
      v7 -= 16;
    }

    while (v7);
    v5 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = &v5[2 * v9 - 2];
      v11 = -16 * v9;
      do
      {
        if (*v10)
        {
          (*(**v10 + 32))(*v10, v10[1]);
        }

        *v10 = 0;
        v10[1] = 0;
        v10 -= 2;
        v11 += 16;
      }

      while (v11);
      v5 = *a1;
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::doFind<mlir::PassInstrumentation::PipelineParentInfo>(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0xBF58476D1CE4E5B9 * ((a4 >> 4) ^ (a4 >> 9) | ((((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3)) << 32));
  v5 = a2 - 1;
  v6 = (a2 - 1) & ((v4 >> 31) ^ v4);
  v7 = (a1 + 24 * v6);
  v9 = *v7;
  v8 = v7[1];
  if (*v7 != a3 || v8 != a4)
  {
    v11 = 1;
    while (v9 != -1 || v8 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & v5;
      v7 = (a1 + 24 * (v12 & v5));
      v9 = *v7;
      v8 = v7[1];
      if (*v7 == a3 && v8 == a4)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::TimingScope,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::TimingScope,false>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 16 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::grow(a1, v3 + 1);
    }
  }

  return v2;
}

void llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforePipeline(std::optional<mlir::OperationName>,mlir::PassInstrumentation::PipelineParentInfo const&)::{lambda(void)#1}>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[8] == 1)
  {
    v4 = *(*a1 + 8);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    v5 = "any";
    v6 = 3;
  }

  v11 = v2;
  v12 = v3;
  v8 = 1283;
  v7[0] = "'";
  v7[2] = v5;
  v7[3] = v6;
  v9[0] = v7;
  v9[2] = "' Pipeline";
  v10 = 770;
  llvm::Twine::str(v9, a2);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::TimingScope,false>::pop_back(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  *(a1 + 8) = v1;
  v2 = (*a1 + 16 * v1);
  result = *v2;
  if (*v2)
  {
    result = (*(*result + 32))(result, v2[1]);
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = 0xBF58476D1CE4E5B9 * ((a4 >> 4) ^ (a4 >> 9) | ((((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3)) << 32));
    v6 = a2 - 1;
    v7 = (a2 - 1) & ((v5 >> 31) ^ v5);
    v8 = (a1 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 == a3 && v10 == a4)
    {
      v12 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v9 != -1 || v10 != -4096)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 == -8192;
        }

        if (v16 && v9 == -2)
        {
          v14 = v8;
        }

        v18 = v7 + v15++;
        v7 = v18 & v6;
        v8 = (a1 + 24 * (v18 & v6));
        v9 = *v8;
        v10 = v8[1];
        v12 = 1;
        if (*v8 == a3 && v10 == a4)
        {
          goto LABEL_9;
        }
      }

      v12 = 0;
      if (v14)
      {
        v8 = v14;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_9:
  *a5 = v8;
  return v12;
}

uint64_t *llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_25D0A0800;
        result += 3;
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        v14 = *v13;
        v15 = *(v13 + 8);
        if ((*v13 != -1 || v15 != -4096) && (v14 != -2 || v15 != -8192))
        {
          v19 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>,mlir::PassInstrumentation::PipelineParentInfo,unsigned int,llvm::DenseMapInfo<mlir::PassInstrumentation::PipelineParentInfo,void>,llvm::detail::DenseMapPair<mlir::PassInstrumentation::PipelineParentInfo,unsigned int>>::LookupBucketFor<mlir::PassInstrumentation::PipelineParentInfo>(*a1, *(a1 + 16), v14, v15, &v19);
          v16 = v19;
          *v19 = *v13;
          *(v16 + 4) = *(v13 + 16);
          ++*(a1 + 8);
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 24 * v17;
    do
    {
      *result = xmmword_25D0A0800;
      result += 3;
      v18 -= 24;
    }

    while (v18);
  }

  return result;
}

void *llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforePass(mlir::Pass *,mlir::Operation *)::{lambda(void)#2}>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 16))(*a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

void llvm::function_ref<std::string ()(void)>::callback_fn<anonymous namespace::PassTiming::runBeforeAnalysis(llvm::StringRef,mlir::TypeID,mlir::Operation *)::{lambda(void)#1}>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    if (v4)
    {
      memmove(&__dst, v3, v4);
    }

    __dst.__r_.__value_.__s.__data_[v4] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v5 = std::string::insert(&__dst, 0, "(A) ");
  *a2 = *v5;
  v5->__r_.__value_.__r.__words[0] = 0;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void mlir::detail::PDLByteCodePattern::create(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36[16] = *MEMORY[0x277D85DE8];
  v30 = a2;
  Benefit = mlir::pdl_interp::RecordMatchOp::getBenefit(&v30);
  v9 = *(***(a2 + 24) + 32);
  v34 = v36;
  v35 = 0x800000000;
  v10 = (*(a2 + 44) >> 23) & 1;
  v11 = *(a2 + 64 + 16 * v10 + 8);
  if (!v11)
  {
    goto LABEL_12;
  }

  v29 = a4;
  v12 = a3;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v31 = v33;
  v32 = 0x800000000;
  if (v14 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v14, 16);
    v15 = v32;
    goto LABEL_6;
  }

  if (v14)
  {
    v15 = 0;
LABEL_6:
    v16 = &v13[v14];
    v17 = v31 + 16 * v15;
    do
    {
      v18 = *v13++;
      *v17++ = *(v18 + 16);
    }

    while (v13 != v16);
    v19 = v32;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_9:
  LODWORD(v32) = v19 + v14;
  llvm::SmallVectorImpl<llvm::StringRef>::operator=(&v34, &v31);
  a3 = v12;
  if (v31 != v33)
  {
    free(v31);
  }

  v10 = (*(a2 + 44) >> 23) & 1;
  a4 = v29;
LABEL_12:
  v20 = *(a2 + 64 + 16 * v10 + 24);
  if (v20)
  {
    v21 = v34;
    v22 = v35;
    mlir::OperationName::OperationName(&v31, *(v20 + 16), *(v20 + 24), v9);
    v23 = v31;
    v24 = a1;
    v25 = 1;
    v26 = v21;
    v27 = v22;
    v28 = Benefit;
  }

  else
  {
    v26 = v34;
    v27 = v35;
    v28 = Benefit;
    v24 = a1;
    v23 = 0;
    v25 = 0;
  }

  mlir::Pattern::Pattern(v24, v23, v25, v26, v27, v28, v9);
  *(a1 + 88) = a4;
  *(a1 + 96) = a3;
  if (v34 != v36)
  {
    free(v34);
  }
}

uint64_t mlir::detail::PDLByteCode::PDLByteCode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v194 = *MEMORY[0x277D85DE8];
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<std::unique_ptr<mlir::PDLPatternConfigSet>>::operator=(a1, a3);
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = xmmword_25D0A05D0;
  *(a1 + 240) = a1 + 264;
  *(a1 + 248) = xmmword_25D0A05D0;
  *(a1 + 392) = a1 + 408;
  *(a1 + 400) = 0x2000000000;
  *(a1 + 3736) = 0u;
  *(a1 + 3752) = 0u;
  *(a1 + 3768) = 0u;
  v131 = (a1 + 3736);
  *(a1 + 3778) = 0u;
  v10 = *(***(a2 + 24) + 32);
  v135 = 0;
  v134[0] = 0;
  v134[1] = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139[0] = 0;
  v139[1] = 0;
  v140 = 0;
  v141 = 16;
  v142[0] = 0;
  v142[1] = 0;
  v143 = 0;
  v144 = 16;
  v145[0] = 0;
  v145[1] = 0;
  v146 = 0;
  v147 = 16;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v153[0] = 0;
  v153[1] = 0;
  v152 = v10;
  v154 = 0;
  v155 = a1 + 64;
  v156 = (a1 + 88);
  v157 = a1 + 240;
  v158 = a1 + 392;
  v159 = (a1 + 3784);
  v160 = (a1 + 3786);
  v161 = (a1 + 3788);
  v162 = (a1 + 3790);
  v163 = a1 + 3792;
  v164 = a4;
  v11 = *(a5 + 8);
  v126 = a1;
  v129 = a5;
  v130 = a1 + 64;
  v12 = *a5;
  if (v11)
  {
    while (!*v12 || *v12 + 1 == 0)
    {
      ++v12;
    }
  }

  v14 = *a5 + 8 * v11;
  if (v12 != v14)
  {
    v15 = 0;
    v16 = *v12;
    do
    {
      v18 = *v16;
      v17 = (v16 + 5);
      *&v189 = v15;
      v19 = llvm::xxh3_64bits(v17, v18, a3, a4);
      llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v142, v17, v18, v19, &v189);
      do
      {
        v20 = v12[1];
        ++v12;
        v16 = v20;
        if (v20)
        {
          v21 = v16 + 1 == 0;
        }

        else
        {
          v21 = 1;
        }
      }

      while (v21);
      ++v15;
    }

    while (v12 != v14);
  }

  v22 = *(a6 + 8);
  if (v22)
  {
      ;
    }
  }

  else
  {
    i = *a6;
  }

  v25 = *a6 + 8 * v22;
  if (i != v25)
  {
    v26 = 0;
    v27 = *i;
    do
    {
      v29 = *v27;
      v28 = (v27 + 5);
      *&v189 = v26;
      v30 = llvm::xxh3_64bits(v28, v29, a3, a4);
      llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v139, v28, v29, v30, &v189);
      do
      {
        v31 = i[1];
        ++i;
        v27 = v31;
        if (v31)
        {
          v32 = v27 + 1 == 0;
        }

        else
        {
          v32 = 1;
        }
      }

      while (v32);
      ++v26;
    }

    while (i != v25);
  }

  v33 = mlir::SymbolTable::lookupSymbolIn(a2, "matcher", 7);
  if (v33)
  {
    if (*(*(v33 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v132 = v34;
  }

  else
  {
    v132 = 0;
  }

  v35 = mlir::SymbolTable::lookupSymbolIn(a2, "rewriters", 9);
  if (v35)
  {
    if (*(*(v35 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v127 = v36 + 64;
  v128 = v36;
  mlir::Region::getOps<mlir::pdl_interp::FuncOp>(&v189, (((v36 + 64 + 16 * ((*(v36 + 44) >> 23) & 1) + ((*(v36 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v36 + 40)));
  v183 = v190;
  v182 = v189;
  v184 = v191;
  v185 = v192;
  v37 = v193;
  if (v190 == v193)
  {
    goto LABEL_75;
  }

  do
  {
    v38 = (*(&v185 + 1))();
    LOWORD(v170) = 0;
    LOWORD(v169) = 0;
    LOWORD(v173) = 0;
    v178 = v134;
    *&v179 = &v170;
    *(&v179 + 1) = &v169;
    v180 = &v173;
    v39 = v38 + 64;
    v40 = *(v38 + 44);
    v41 = (v40 >> 23) & 1;
    v42 = (v40 >> 21) & 0x7F8;
    v43 = 32 * *(v38 + 40);
    v44 = (((v38 + 64 + 16 * v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v43);
    if (*v44 == v44)
    {
      goto LABEL_61;
    }

    v45 = v44[1];
    v46 = v45 ? v45 - 8 : 0;
    v48 = *(v46 + 48);
    v47 = *(v46 + 56);
    if (v47 == v48)
    {
      goto LABEL_61;
    }

    v49 = v38;
    v50 = v37;
    do
    {
      v176[0] = *v48;
      v51 = v176[0];
      v52 = v178;
      v53 = (*v179)++;
      LOWORD(v174[0]) = v53;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(&v165, v52, v176, v174);
      v54 = (*(v51 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((*v54)[17] != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        goto LABEL_59;
      }

      v55 = *(*v54[1] + 136);
      if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v56 = *(&v179 + 1);
      }

      else
      {
        if (v55 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
        {
          goto LABEL_59;
        }

        v56 = v180;
      }

      v57 = (*v56)++;
      LOWORD(v174[0]) = v57;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(&v165, v52 + 24, v176, v174);
LABEL_59:
      ++v48;
    }

    while (v48 != v47);
    v58 = *(v49 + 44);
    v41 = (v58 >> 23) & 1;
    v42 = (v58 >> 21) & 0x7F8;
    v43 = 32 * *(v49 + 40);
    v37 = v50;
LABEL_61:
    v59 = ((v39 + 16 * v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8) + v43;
    v165 = &v178;
    for (j = *(v59 + 8); j != v59; j = *(j + 8))
    {
      v61 = j - 8;
      if (!j)
      {
        v61 = 0;
      }

      v62 = *(v61 + 40);
      v63 = v61 + 32;
      if (v62 != v61 + 32)
      {
        do
        {
          v64 = *(v62 + 8);
          v62 = v64;
        }

        while (v64 != v63);
      }
    }

    if (v170 > *v159)
    {
      *v159 = v170;
    }

    if (v169 > *v161)
    {
      *v161 = v169;
    }

    if (v173 > *v162)
    {
      *v162 = v173;
    }

    mlir::Region::OpIterator::operator++(&v182);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v182);
  }

  while (v183 != v37);
LABEL_75:
  v176[0] = 0;
  v176[1] = 0;
  v177 = 0;
  v174[0] = 0;
  v174[1] = 0;
  v175 = 0;
  v173 = 0;
  buffer = llvm::allocate_buffer(0x20, 8uLL);
  v179 = xmmword_25D0A0540;
  *buffer = v176;
  buffer[1] = &v173;
  buffer[2] = &v178;
  buffer[3] = v174;
  v178 = buffer;
  *&v183 = 0;
  *(&v183 + 1) = &v184 + 8;
  v186 = v188;
  v187 = 0;
  v188[0] = 0;
  v188[1] = 1;
  v67 = *(v132 + 40);
  v66 = *(v132 + 44);
  v182 = 0uLL;
  *&v184 = 0x400000000;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v68 = *(((v132 + 64 + 16 * ((v66 >> 23) & 1) + ((v66 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v67 + 8);
  if (v68)
  {
    v69 = v68 - 8;
  }

  else
  {
    v69 = 0;
  }

  v169 = **(v69 + 48);
  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v134, &v169) = 0;
  v166 = 0;
  m = 0;
  v165 = v132;
  v168 = 0;
  mlir::Liveness::build(&v165);
  *&v189 = &v165;
  *(&v189 + 1) = &v169;
  *&v190 = &v170;
  *(&v190 + 1) = &v182;
  *&v191 = v176;
  *(&v191 + 1) = v174;
  if (v171)
  {
    if (v172)
    {
      v70 = 40 * v172;
      v71 = v170;
      while ((*v71 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v71 += 5;
        v70 -= 40;
        if (!v70)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v71 = v170;
    }

    v72 = (v170 + 40 * v172);
    if (v71 == v72)
    {
      LOWORD(v70) = 0;
    }

    else
    {
      LODWORD(v70) = 0;
LABEL_88:
      v125 = v70;
      if (!*llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v134, v71))
      {
        operator new();
      }

      LODWORD(v70) = v125;
      while (1)
      {
        v71 += 5;
        if (v71 == v72)
        {
          break;
        }

        if ((*v71 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v71 != v72)
          {
            goto LABEL_88;
          }

          break;
        }
      }
    }
  }

  else
  {
    LOWORD(v70) = 0;
  }

LABEL_96:
  if (!*v159)
  {
    *v159 = 1;
  }

  if (*v160 < v70)
  {
    *v160 = v70;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::destroyAll(&v166);
  MEMORY[0x25F891030](v166, 8);
  v73 = v170;
  if (v172)
  {
    v74 = 40 * v172;
    v75 = (v170 + 8);
    do
    {
      if ((*(v75 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v76 = *v75;
        *v75 = 0;
        if (v76)
        {
          std::default_delete<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::operator()[abi:nn200100](v76);
        }
      }

      v75 += 5;
      v74 -= 40;
    }

    while (v74);
    v73 = v170;
  }

  MEMORY[0x25F891030](v73, 8);
  *&v182 = 0;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&v182 + 8);
  v78 = v180;
  if (v180 >= 8)
  {
    if ((v180 & 4) != 0)
    {
      if ((v180 & 2) != 0)
      {
        v79 = &v178;
      }

      else
      {
        v79 = v178;
      }

      (*((v180 & 0xFFFFFFFFFFFFFFF8) + 16))(v79, v77);
    }

    if ((v78 & 2) == 0)
    {
      MEMORY[0x25F891030](v178, *(&v179 + 1));
    }
  }

  MEMORY[0x25F891030](v174[0], 8);
  MEMORY[0x25F891030](v176[0], 8);
  *&v179 = 0;
  v178 = 0;
  DWORD2(v179) = 0;
  v180 = v157;
  v181 = v134;
  mlir::Region::getOps<mlir::pdl_interp::FuncOp>(&v189, (((v127 + 16 * ((*(v128 + 44) >> 23) & 1) + ((*(v128 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v128 + 40)));
  v183 = v190;
  v182 = v189;
  v184 = v191;
  v185 = v192;
  v85 = v193;
  while (v183 != v85)
  {
    v86 = (*(&v185 + 1))();
    Attr = mlir::Operation::getAttr(v86, "sym_name", 8uLL);
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v90 = Attr;
    }

    else
    {
      v90 = 0;
    }

    v91 = *(v90 + 16);
    v92 = *(v90 + 24);
    v165 = *(v157 + 8);
    v93 = llvm::xxh3_64bits(v91, v92, v88, v89);
    llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(v145, v91, v92, v93, &v165);
    v95 = (((v86 + 16 * ((*(v86 + 44) >> 23) & 1) + ((*(v86 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v86 + 40));
    if (*v95 != v95)
    {
      for (k = v95[1]; k != v95; k = *(k + 8))
      {
        v97 = k - 8;
        if (!k)
        {
          v97 = 0;
        }

        if (*(v97 + 32) != v97 + 32)
        {
          break;
        }
      }

      if (k != v95)
      {
        v98 = k - 8;
        if (!k)
        {
          v98 = 0;
        }

        v99 = *(v98 + 40);
        v165 = (((v86 + 16 * ((*(v86 + 44) >> 23) & 1) + ((*(v86 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v86 + 40));
        v166 = k;
        for (m = v99; m; v99 = m)
        {
          mlir::Region::OpIterator::operator++(&v165);
        }
      }
    }

    mlir::Region::OpIterator::operator++(&v182);
    llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v182);
  }

  v189 = 0uLL;
  LODWORD(v190) = 0;
  *(&v190 + 1) = v156;
  *&v191 = v134;
  if (DWORD2(v189))
  {
    if (v190)
    {
      v100 = 40 * v190;
      v101 = v189;
      while ((*v101 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v101 += 40;
        v100 -= 40;
        if (!v100)
        {
          goto LABEL_137;
        }
      }
    }

    else
    {
      v101 = v189;
    }

    v118 = v189 + 40 * v190;
LABEL_174:
    if (v101 != v118)
    {
      v119 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v153, v101);
      v120 = *(v101 + 16);
      if (v120)
      {
        v121 = *v119;
        v122 = *(v101 + 8);
        v123 = 4 * v120;
        do
        {
          v124 = *v122++;
          *(*v156 + 2 * v124) = v121;
          v123 -= 4;
        }

        while (v123);
      }

      while (1)
      {
        v101 += 40;
        if (v101 == v118)
        {
          break;
        }

        if ((*v101 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_174;
        }
      }
    }
  }

LABEL_137:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::destroyAll(v189, v190);
  MEMORY[0x25F891030](v189, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::destroyAll(v178, DWORD2(v179));
  MEMORY[0x25F891030](v178, 8);
  v102 = *(v129 + 8);
  if (v102)
  {
    v103 = *v129;
    v104 = v131;
    while (!*v103 || *v103 == -8)
    {
      ++v103;
    }
  }

  else
  {
    v103 = *v129;
    v104 = v131;
  }

  v106 = *v129 + 8 * v102;
  if (v103 != v106)
  {
    v107 = *v103;
    do
    {
      std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::push_back[abi:nn200100](v104, v107 + 8);
      do
      {
        v108 = v103[1];
        ++v103;
        v107 = v108;
        if (v108)
        {
          v109 = v107 == -8;
        }

        else
        {
          v109 = 1;
        }
      }

      while (v109);
    }

    while (v103 != v106);
  }

  v110 = *(a6 + 8);
  if (v110)
  {
      ;
    }
  }

  else
  {
    n = *a6;
  }

  v113 = *a6 + 8 * v110;
  if (n != v113)
  {
    v114 = *n;
    do
    {
      std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::push_back[abi:nn200100]((v130 + 3696), (v114 + 1));
      do
      {
        v115 = n[1];
        ++n;
        v114 = v115;
        if (v115)
        {
          v116 = v114 + 1 == 0;
        }

        else
        {
          v116 = 1;
        }
      }

      while (v116);
    }

    while (n != v113);
  }

  MEMORY[0x25F891030](v153[0], 8);
  MEMORY[0x25F891030](v148, 8);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(v145);
  llvm::StringMap<unsigned short,llvm::MallocAllocator>::~StringMap(v142);
  llvm::StringMap<unsigned short,llvm::MallocAllocator>::~StringMap(v139);
  MEMORY[0x25F891030](v136, 8);
  MEMORY[0x25F891030](v134[0], 8);
  return v126;
}

void std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::push_back[abi:nn200100](void **a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *a1) >> 5;
    if ((v6 + 1) >> 59)
    {
      std::vector<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>>::__throw_length_error[abi:nn200100]();
    }

    v7 = v4 - *a1;
    v8 = v7 >> 4;
    if (v7 >> 4 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 32 * v6;
    std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::__value_func[abi:nn200100](v10, a2);
    v5 = v10 + 32;
    v11 = *a1;
    v12 = a1[1];
    v13 = *a1 + v10 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::__value_func[abi:nn200100](v15, v14);
        v14 += 32;
        v15 = v16 + 32;
      }

      while (v14 != v12);
      do
      {
        std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::~__value_func[abi:nn200100](v11);
        v11 += 32;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    v5 = std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::__value_func[abi:nn200100](v3, a2) + 32;
  }

  a1[1] = v5;
}

void mlir::detail::PDLByteCode::initializeMutableState(mlir::detail::PDLByteCode *this, mlir::detail::PDLByteCodeMutableState *a2)
{
  v4 = *(this + 1892);
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = &v6[-*a2];
  v8 = v7 >> 3;
  if (v4 <= v7 >> 3)
  {
    if (v4 >= v8)
    {
      goto LABEL_13;
    }

    v13 = (v5 + 8 * v4);
  }

  else
  {
    v9 = v4 - v8;
    v10 = *(a2 + 2);
    if (v9 > (v10 - v6) >> 3)
    {
      v11 = v10 - v5;
      if (v11 >> 2 > v4)
      {
        v4 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v4;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(v12);
    }

    bzero(v6, ((8 * v4 - v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v13 = &v6[8 * v9];
  }

  *(a2 + 1) = v13;
LABEL_13:
  v14 = *(this + 1893);
  v15 = *(a2 + 3);
  v16 = *(a2 + 4);
  v17 = (v16 - v15) >> 4;
  if (v14 <= v17)
  {
    if (v14 < v17)
    {
      v22 = v15 + 16 * v14;
      while (v16 != v22)
      {
        v24 = *(v16 - 16);
        v16 -= 16;
        v23 = v24;
        if (v24)
        {
          MEMORY[0x25F891010](v23, 0x20C8093837F09);
        }
      }

      *(a2 + 4) = v22;
    }
  }

  else
  {
    v18 = v14 - v17;
    v19 = *(a2 + 5);
    if (v18 > (v19 - v16) >> 4)
    {
      v20 = v19 - v15;
      if (v20 >> 3 > v14)
      {
        v14 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v14;
      }

      if (!(v21 >> 60))
      {
        operator new();
      }

      goto LABEL_88;
    }

    bzero(*(a2 + 4), 16 * v18);
    *(a2 + 4) = v16 + 16 * v18;
  }

  v25 = *(this + 1894);
  v27 = *(a2 + 6);
  v26 = *(a2 + 7);
  v28 = (v26 - v27) >> 4;
  if (v25 <= v28)
  {
    if (v25 < v28)
    {
      *(a2 + 7) = v27 + 16 * v25;
    }
  }

  else
  {
    v29 = *(a2 + 8);
    if (v25 - v28 > (v29 - v26) >> 4)
    {
      v30 = v29 - v27;
      v31 = (v29 - v27) >> 3;
      if (v31 <= v25)
      {
        v31 = *(this + 1894);
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v32 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      if (!(v32 >> 60))
      {
        operator new();
      }

      goto LABEL_88;
    }

    v33 = &v26[v25 - v28];
    v34 = 16 * v25 - 16 * v28;
    do
    {
      *v26++ = xmmword_25D0A0640;
      v34 -= 16;
    }

    while (v34);
    *(a2 + 7) = v33;
  }

  v35 = *(this + 1895);
  v36 = *(a2 + 12);
  v37 = *(a2 + 13);
  v38 = (v37 - v36) >> 4;
  if (v35 <= v38)
  {
    if (v35 >= v38)
    {
      goto LABEL_56;
    }

    v44 = v36 + 16 * v35;
  }

  else
  {
    v39 = v35 - v38;
    v40 = *(a2 + 14);
    if (v39 > (v40 - v37) >> 4)
    {
      v41 = v40 - v36;
      v42 = v41 >> 3;
      if (v41 >> 3 <= v35)
      {
        v42 = *(this + 1895);
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF0)
      {
        v43 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (!(v43 >> 60))
      {
        operator new();
      }

LABEL_88:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(a2 + 13), ((16 * v35 - (v37 - v36) - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
    v44 = v37 + 16 * v39;
  }

  *(a2 + 13) = v44;
LABEL_56:
  v45 = *(a2 + 18);
  v46 = *(a2 + 19);
  v47 = *(this + 1896);
  v48 = (v46 - v45) >> 2;
  if (v47 <= v48)
  {
    if (v47 >= v48)
    {
      goto LABEL_68;
    }

    v54 = v45 + 4 * v47;
  }

  else
  {
    v49 = v47 - v48;
    v50 = *(a2 + 20);
    if (v49 > (v50 - v46) >> 2)
    {
      v51 = v50 - v45;
      v52 = v51 >> 1;
      if (v51 >> 1 <= v47)
      {
        v52 = *(this + 1896);
      }

      if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v53 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v52;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a2 + 144, v53);
    }

    bzero(*(a2 + 19), ((4 * v47 - (v46 - v45) - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v54 = v46 + 4 * v49;
  }

  *(a2 + 19) = v54;
LABEL_68:
  v55 = *(this + 100);
  if (v55 > (*(a2 + 23) - *(a2 + 21)) >> 1)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::PatternBenefit>>(v55);
  }

  v56 = *(this + 100);
  if (v56)
  {
    v57 = *(a2 + 22);
    v58 = 104 * v56;
    v59 = (*(this + 49) + 12);
    do
    {
      v61 = *v59;
      v59 += 52;
      v60 = v61;
      v62 = *(a2 + 23);
      if (v57 >= v62)
      {
        v63 = *(a2 + 21);
        v64 = v57 - v63;
        v65 = (v57 - v63) >> 1;
        if (v65 <= -2)
        {
          std::vector<mlir::PatternBenefit>::__throw_length_error[abi:nn200100]();
        }

        v66 = v62 - v63;
        if (v66 <= v65 + 1)
        {
          v67 = v65 + 1;
        }

        else
        {
          v67 = v66;
        }

        if (v66 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v68 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::PatternBenefit>>(v68);
        }

        v69 = (v57 - v63) >> 1;
        v70 = (2 * v65);
        v71 = (2 * v65 - 2 * v69);
        *v70 = v60;
        v57 = (v70 + 1);
        memcpy(v71, v63, v64);
        v72 = *(a2 + 21);
        *(a2 + 21) = v71;
        *(a2 + 22) = v57;
        *(a2 + 23) = 0;
        if (v72)
        {
          operator delete(v72);
        }
      }

      else
      {
        *v57 = v60;
        v57 += 2;
      }

      *(a2 + 22) = v57;
      v58 -= 104;
    }

    while (v58);
  }
}

void mlir::detail::PDLByteCode::match(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v41[30] = *MEMORY[0x277D85DE8];
  **a5 = a2;
  v6 = *a5;
  v7 = (*(a5 + 8) - *a5) >> 3;
  v8 = *(a5 + 24);
  v9 = (*(a5 + 32) - v8) >> 4;
  v10 = *(a5 + 48);
  v11 = (*(a5 + 56) - v10) >> 4;
  v12 = a5 + 72;
  v13 = *(a5 + 96);
  v14 = (*(a5 + 104) - v13) >> 4;
  v15 = a5 + 120;
  v16 = *(a5 + 144);
  v17 = (*(a5 + 152) - v16) >> 2;
  v18 = *(a1 + 64);
  v19 = (*(a1 + 72) - v18) >> 3;
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  v22 = *(a5 + 168);
  v23 = (*(a5 + 176) - v22) >> 1;
  v24 = *(a1 + 392);
  v25 = *(a1 + 400);
  v26 = *(a1 + 3736);
  v27 = (*(a1 + 3744) - v26) >> 5;
  v28 = *(a1 + 3760);
  v29 = (*(a1 + 3768) - v28) >> 5;
  v38 = v20;
  v39 = v41;
  v40 = 0x600000000;
  v41[6] = v6;
  v41[7] = v7;
  v41[8] = v8;
  v41[9] = v9;
  v41[10] = v10;
  v41[11] = v11;
  v41[12] = v12;
  v41[13] = v13;
  v41[14] = v14;
  v41[15] = v15;
  v41[16] = v16;
  v41[17] = v17;
  v41[18] = v18;
  v41[19] = v19;
  v41[20] = v20;
  v41[21] = v21;
  v41[22] = v22;
  v41[23] = v23;
  v41[24] = v24;
  v41[25] = v25;
  v41[26] = v26;
  v41[27] = v27;
  v41[28] = v28;
  v41[29] = v29;
  v30 = *a4;
  v31 = *(a4 + 2);
  if (v31)
  {
    v32 = MEMORY[0x277D826F0];
    v33 = v31;
    while (1)
    {
      v34 = operator new(120 * v33, v32);
      if (v34)
      {
        break;
      }

      v35 = v33 >> 1;
      v36 = v33 > 1;
      v33 >>= 1;
      if (!v36)
      {
        goto LABEL_7;
      }
    }

    v37 = v34;
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, v34, v33);
    operator delete(v37);
  }

  else
  {
    v35 = 0;
LABEL_7:
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v30, (v30 + 120 * v31), v31, 0, v35);
  }

  if (v39 != v41)
  {
    free(v39);
  }
}

uint64_t anonymous namespace::ByteCodeExecutor::execute(unsigned __int16 **this, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2;
  v355[32] = *MEMORY[0x277D85DE8];
LABEL_2:
  while (2)
  {
    v6 = *this;
    v8 = *this + 1;
    v7 = **this;
    *this = v8;
    result = 1;
    switch(v7)
    {
      case 0:
        *this = v6 + 2;
        v123 = v6[1];
        *&v354 = v355;
        *(&v354 + 1) = 0x1000000000;
        v124 = *this;
        v125 = **this;
        *this += 2;
        v126 = v124[1];
        v127 = this[29];
        mlir::PDLResultList::PDLResultList(&__src, v126);
        v128 = std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::operator()(*&v127[16 * v123 + 12], v4, &__src, v354, DWORD2(v354));
        LODWORD(v123) = v125 == (v128 & 1);
        LOBYTE(v339) = v128;
        v129 = *this;
        *this += 2 * v123;
        *this = &this[23][*&v129[2 * v123]];
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Value>,3u>::~SmallVector(v353);
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Type>,3u>::~SmallVector(v350);
        if (v348 != v349)
        {
          free(v348);
        }

        if (v345[0] != v346)
        {
          free(v345[0]);
        }

        if (__src != &v342)
        {
          free(__src);
        }

        v130 = v354;
        if (v354 == v355)
        {
          continue;
        }

        goto LABEL_361;
      case 1:
        *this = v6 + 2;
        v164 = v6[1];
        v165 = this[31];
        *&v354 = v355;
        *(&v354 + 1) = 0x1000000000;
        v166 = *(*this)++;
        mlir::PDLResultList::PDLResultList(&__src, v166);
        v167 = std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::operator()(*&v165[16 * v164 + 12], v4, &__src, v354, DWORD2(v354));
        LOBYTE(v339) = v167;
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Value>,3u>::~SmallVector(v353);
        llvm::SmallVector<llvm::OwningArrayRef<mlir::Type>,3u>::~SmallVector(v350);
        if (v348 != v349)
        {
          free(v348);
        }

        if (v345[0] != v346)
        {
          free(v345[0]);
        }

        if (__src != &v342)
        {
          free(__src);
        }

        if (v354 != v355)
        {
          free(v354);
        }

        if (v167)
        {
          continue;
        }

        return 0;
      case 2:
        v146 = v6[2];
        v145 = v6 + 2;
        v144 = v146;
        *this = v145;
        v147 = *(v145 - 1);
        v148 = this[10];
        v149 = 21;
        if (v148 <= v147)
        {
          v150 = 21;
        }

        else
        {
          v150 = 9;
        }

        if (v148 <= v147)
        {
          v151 = this[10];
        }

        else
        {
          v151 = 0;
        }

        v152 = *&this[v150][4 * (v147 - v151)];
        v153 = v145 + 1;
        *this = v145 + 1;
        if (v148 > v144)
        {
          v149 = 9;
          v148 = 0;
        }

        v154 = v152 != *&this[v149][4 * (v144 - v148)];
        *this = &v153[2 * v154];
        v52 = *&v153[2 * v154];
        goto LABEL_358;
      case 3:
        v84 = v6[3];
        v83 = v6 + 3;
        v82 = v84;
        v85 = *(v83 - 2);
        *this = v83;
        v86 = *(v83 - 1);
        v87 = this[10];
        v88 = 21;
        if (v87 <= v86)
        {
          v89 = 21;
        }

        else
        {
          v89 = 9;
        }

        if (v87 <= v86)
        {
          v90 = this[10];
        }

        else
        {
          v90 = 0;
        }

        v91 = *&this[v89][4 * (v86 - v90)];
        v92 = v83 + 1;
        *this = v83 + 1;
        if (v87 > v82)
        {
          v88 = 9;
          v87 = 0;
        }

        v93 = *&this[v88][4 * (v82 - v87)];
        if (v85 == 3)
        {
          v94 = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v91, v93);
          v92 = *this;
          if (v94)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v293 = v91[1];
          if (v293 == v93[1])
          {
            v294 = *v93;
            __src = *v91;
            v341 = 0;
            v354 = v294;
            if (!v293)
            {
LABEL_279:
              v176 = 0;
              goto LABEL_357;
            }

            v295 = 0;
            while (1)
            {
              v296 = mlir::ValueRange::dereference_iterator(&__src, v295);
              if (v296 != mlir::ValueRange::dereference_iterator(&v354, v295))
              {
                break;
              }

              v341 = ++v295;
              *(&v354 + 1) = v295;
              if (v293 == v295)
              {
                v92 = *this;
                goto LABEL_279;
              }
            }

            v92 = *this;
          }
        }

        v176 = 2;
LABEL_357:
        *this = &v92[v176];
        v52 = *&v92[v176];
LABEL_358:
        v46 = &this[23][v52];
LABEL_359:
        *this = v46;
        continue;
      case 4:
        goto LABEL_257;
      case 5:
        *this = v6 + 2;
        v118 = *&this[9][4 * v6[1]];
        v119 = *(v6 + 1);
        v92 = v6 + 5;
        *this = v6 + 5;
        v120 = *(v118 + 44);
        if (v6[4])
        {
          if ((v120 & 0x800000) != 0)
          {
            v121 = *(v118 + 68);
          }

          else
          {
            v121 = 0;
          }

          v122 = v121 < v119;
        }

        else
        {
          if ((v120 & 0x800000) != 0)
          {
            v302 = *(v118 + 68);
          }

          else
          {
            v302 = 0;
          }

          v122 = v302 != v119;
        }

        v176 = 2 * v122;
        goto LABEL_357;
      case 6:
        v133 = v6[2];
        v132 = v6 + 2;
        v131 = v133;
        *this = v132;
        v134 = this[10];
        v135 = *&this[9][4 * *(v132 - 1)];
        v136 = v132 + 1;
        *this = v132 + 1;
        v137 = 21;
        if (v134 > v133)
        {
          v137 = 9;
          v134 = 0;
        }

        v138 = *(v135 + 48) != *&this[v137][4 * (v131 - v134)];
        *this = &v136[2 * v138];
        v52 = *&v136[2 * v138];
        goto LABEL_358;
      case 7:
        *this = v6 + 2;
        v97 = *(v6 + 1);
        v98 = *(*&this[9][4 * v6[1]] + 36);
        v299 = v98 == v97;
        v99 = v98 < v97;
        v100 = !v299;
        v101 = 4 * v100;
        v102 = 4 * v99;
        if (!v6[4])
        {
          v102 = v101;
        }

        v103 = (v6 + v102 + 10);
        *this = v103;
        v52 = *v103;
        goto LABEL_358;
      case 8:
        v170 = v6[2];
        v169 = v6 + 2;
        v168 = v170;
        *this = v169;
        v171 = this[10];
        v172 = *&this[9][4 * *(v169 - 1)];
        *this = v169 + 1;
        v173 = 21;
        if (v171 > v170)
        {
          v173 = 9;
          v171 = 0;
        }

        v174 = *&this[v173][4 * (v168 - v171)];
        v175 = _ZN4llvm6detaileqINS_14iterator_rangeINS_15mapped_iteratorIN4mlir9ArrayAttr19attr_value_iteratorINS4_8TypeAttrEEEZNKS5_15getAsValueRangeIS7_NS4_4TypeEEEDavEUlS7_E_SA_EEEENS4_9TypeRangeENS_12PointerUnionIJPKNS4_5ValueEPKSA_PNS4_9OpOperandEPNS4_6detail12OpResultImplEEEESA_SA_SA_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_(*v172, v172[1], *(v174 + 8), *(v174 + 8) + 8 * *(v174 + 16));
        v92 = *this;
        v176 = 2;
        if (v175)
        {
          v176 = 0;
        }

        goto LABEL_357;
      case 9:
        *this = v6 + 2;
        ++*&this[19][2 * v6[1]];
        v68 = *(this + 4);
        *this = *&this[1][4 * v68 - 4];
        *(this + 4) = v68 - 1;
        continue;
      case 10:
        v63 = v6[1];
        v64 = v6[2];
        *this = v6 + 4;
        v65 = v6[3];
        v66 = this[10];
        v67 = 21;
        if (v66 > v65)
        {
          v67 = 9;
          v66 = 0;
        }

        if (*(*&this[v67][4 * (v65 - v66)] + 16))
        {
          operator new[]();
        }

        v329 = &this[13][8 * v64];
        *v329 = 2;
        *(v329 + 1) = 0;
        *&this[9][4 * v63] = &this[13][8 * v64];
        continue;
      case 11:
        v196 = v6[1];
        *this = v6 + 3;
        v197 = v6[2];
        v198 = this[10];
        v199 = 21;
        if (v198 > v197)
        {
          v199 = 9;
          v198 = 0;
        }

        v200 = *&this[v199][4 * (v197 - v198)];
        __src = a4;
        v341 = v200;
        *&v342 = &v343;
        *(&v342 + 1) = 0x400000000;
        v345[0] = v346;
        v345[1] = 0x400000000;
        v347[0] = &v348;
        v347[1] = 0x400000000;
        v350[0] = 4;
        v350[1] = v351;
        v350[2] = 0x100000000;
        v351[1] = v352;
        v351[2] = 0x100000000;
        v352[1] = 0;
        v353[0] = 0;
        v353[1] = &mlir::detail::TypeIDResolver<void,void>::id;
        v353[2] = 0;
        v353[4] = 0;
        v201 = *this + 1;
        v202 = **this;
        *this = v201;
        if (v202)
        {
          do
          {
            v203 = *this;
            v204 = (*this)[1];
            ++*this;
            v207 = *v203;
            v205 = v203 + 2;
            v206 = v207;
            v208 = this[10];
            v209 = v208 > v207;
            if (v208 <= v207)
            {
              v210 = 21;
            }

            else
            {
              v210 = 9;
            }

            if (v209)
            {
              v211 = 0;
            }

            else
            {
              v211 = this[10];
            }

            v212 = *&this[v210][4 * (v206 - v211)];
            *this = v205;
            if (v208 <= v204)
            {
              v213 = 21;
            }

            else
            {
              v213 = 9;
            }

            if (v208 <= v204)
            {
              v214 = v208;
            }

            else
            {
              v214 = 0;
            }

            v215 = *&this[v213][4 * (v204 - v214)];
            if (v215)
            {
              mlir::NamedAttrList::push_back(v347, v212, v215);
            }

            --v202;
          }

          while (v202);
          v201 = *this;
        }

        v217 = *v201;
        v216 = v217;
        *this = v201 + 1;
        if (!v217)
        {
          goto LABEL_189;
        }

        if (v216 == 0xFFFF)
        {
          v218 = v341;
          v219 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();
          v220 = *mlir::detail::InterfaceMap::lookup(v218 + 32, v219);
          v221 = __src;
          v222 = v342;
          v223 = *(**__src + 32);
          v224 = DWORD2(v342);
          Dictionary = mlir::NamedAttrList::getDictionary(v347, v223);
          if ((v220(v223, v221, 1, v222 & 0xFFFFFFFFFFFFFFF9, v224, Dictionary, v353[0]) & 1) == 0)
          {
            goto LABEL_190;
          }
        }

        else
        {
          do
          {
            v226 = *this;
            v227 = **this;
            *this += 2;
            v228 = v226[1];
            if (v227 == 2)
            {
              v229 = this[10];
              v230 = 21;
              if (v229 > v228)
              {
                v230 = 9;
                v229 = 0;
              }

              llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v345, *&this[v230][4 * (v228 - v229)]);
            }

            else
            {
              v231 = *&this[9][4 * v228];
              llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v345, *v231, 0, *v231, v231[1]);
            }

            --v216;
          }

          while (v216);
        }

LABEL_189:
        v232 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert((v4 + 8), v232);
        *&this[9][4 * v196] = v232;
LABEL_190:
        mlir::OperationState::~OperationState(&__src);
        continue;
      case 12:
        v155 = v6[1];
        v156 = v6[2];
        __src = &v342;
        v341 = 0x600000000;
        *this = v6 + 4;
        v157 = v6[3];
        if (v6[3])
        {
          do
          {
            v158 = *this;
            v159 = **this;
            *this += 2;
            v160 = v158[1];
            if (v159 == 2)
            {
              v161 = this[10];
              v162 = 21;
              if (v161 > v160)
              {
                v162 = 9;
                v161 = 0;
              }

              llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&__src, *&this[v162][4 * (v160 - v161)]);
            }

            else
            {
              v163 = *&this[9][4 * v160];
              llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(&__src, *v163, 0, *v163, v163[1]);
            }

            --v157;
          }

          while (v157);
          if (v341)
          {
            operator new[]();
          }
        }

        v331 = &this[13][8 * v156];
        *v331 = 2;
        *(v331 + 1) = 0;
        *&this[9][4 * v155] = &this[13][8 * v156];
        v130 = __src;
        goto LABEL_360;
      case 13:
        v53 = v6[1];
        *this = v6 + 3;
        v54 = v6[2];
        __src = &v342;
        v341 = 0x600000000;
        if (v341)
        {
          operator new[]();
        }

        v301 = &this[16][8 * v54];
        *v301 = 0;
        *(v301 + 1) = 0;
        *&this[9][4 * v53] = &this[16][8 * v54];
        goto LABEL_347;
      case 14:
        *this = v6 + 2;
        (*(*v4 + 16))(v4, *&this[9][4 * v6[1]]);
        continue;
      case 15:
        *this = v6 + 2;
        v233 = v6[1];
        v234 = this[10];
        v235 = 21;
        if (v234 > v233)
        {
          v235 = 9;
          v234 = 0;
        }

        v236 = *&this[v235][4 * (v233 - v234)];
        v237 = *(v6 + 1);
        *this = v6 + 5;
        if (v236)
        {
          if (v236[1] <= v237)
          {
            v236 = 0;
          }

          else
          {
            v236 = *(*v236 + 8 * v237);
          }
        }

        *&this[9][4 * v6[4]] = v236;
        continue;
      case 16:
        *this = v6 + 2;
        v95 = this[9];
        v238 = *&v95[4 * v6[1]];
        v239 = *(v6 + 1);
        *this = v6 + 5;
        v76 = v6[4];
        if (!v238 || v238[1] <= v239)
        {
          goto LABEL_201;
        }

        Attr = mlir::TypeRange::dereference_iterator(*v238, v239);
        goto LABEL_200;
      case 17:
        *this = v6 + 2;
        v95 = this[9];
        Attr = *&v95[4 * v6[1]];
        v96 = *(v6 + 1);
        *this = v6 + 5;
        v76 = v6[4];
        if (!Attr)
        {
          goto LABEL_202;
        }

        if (Attr[1] <= v96)
        {
LABEL_201:
          Attr = 0;
        }

        else
        {
          Attr = mlir::ValueRange::dereference_iterator(Attr, v96);
LABEL_200:
          v95 = this[9];
        }

LABEL_202:
        *&v95[4 * v76] = Attr;
        continue;
      case 18:
        return result;
      case 19:
        v39 = v6[1];
        v40 = v6[2];
        v8 = v6 + 5;
        *this = v6 + 5;
        v41 = v6[4];
        v42 = this[19];
        v43 = &this[11][8 * v39];
        v44 = *&v42[2 * v41];
        if (*(v43 + 1) > v44)
        {
          *&this[9][4 * v40] = *(*v43 + 8 * v44);
          v45 = *(this + 4);
          if (v45 >= *(this + 5))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod((this + 1), this + 3, v45 + 1, 8);
            v45 = *(this + 4);
          }

          *&this[1][4 * v45] = v6;
          ++*(this + 4);
          v46 = (*this + 2);
          goto LABEL_359;
        }

        *&v42[2 * v41] = 0;
        *this = v8;
LABEL_257:
        v52 = *v8;
        goto LABEL_358;
      case 20:
        v179 = v6[3];
        v178 = v6 + 3;
        v177 = v179;
        v76 = *(v178 - 2);
        *this = v178;
        v180 = this[10];
        v181 = *&this[9][4 * *(v178 - 1)];
        *this = v178 + 1;
        v182 = 21;
        if (v180 <= v179)
        {
          v183 = v180;
        }

        else
        {
          v182 = 9;
          v183 = 0;
        }

        Attr = mlir::Operation::getAttr(v181, *&this[v182][4 * (v177 - v183)]);
        goto LABEL_200;
      case 21:
        v76 = v6[1];
        *this = v6 + 3;
        v77 = v6[2];
        v78 = this[10];
        v79 = 21;
        if (v78 > v77)
        {
          v79 = 9;
          v78 = 0;
        }

        Attr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*&this[v79][4 * (v77 - v78)]);
        if (Attr)
        {
          Attr = (*v81)(v81, Attr);
        }

        goto LABEL_200;
      case 22:
        v27 = v6[1];
        v244 = v6[2];
        *this = v6 + 4;
        v28 = this[9];
        v29 = *&v28[4 * v6[3]];
        if (v244 == 4)
        {
          if (!v29)
          {
            goto LABEL_354;
          }

          if ((v29[1] & 7) != 7)
          {
LABEL_351:
            v330 = v29[1] & 7;
            if (v330 == 6)
            {
              v29 += 3 * v29[2] + 15;
            }

            else
            {
              v29 += 2 * v330 + 2;
            }

LABEL_354:
            *&v28[4 * v27] = v29;
            continue;
          }
        }

        else
        {
          if (!v29)
          {
            goto LABEL_354;
          }

          if (v29[1])
          {
            v297 = *v29;
            v298 = v297 & 6;
            v29 = (v297 & 0xFFFFFFFFFFFFFFF8);
            if (v298)
            {
              v299 = 1;
            }

            else
            {
              v299 = v29 == 0;
            }

            if (v299)
            {
              if (v298 == 2 && v29 != 0)
              {
                v29 = v29[3];
              }
            }

            else
            {
              v29 = *v29;
            }

            if ((~*(v29 + 2) & 7) == 0)
            {
              v29 = 0;
            }

            if (!v29)
            {
              goto LABEL_354;
            }

            goto LABEL_351;
          }
        }

        v29 = 0;
        goto LABEL_354;
      case 23:
      case 24:
      case 25:
      case 26:
        v10 = v7 - 23;
        goto LABEL_4;
      case 27:
        v10 = *(v6 + 1);
        *this = v6 + 3;
LABEL_4:
        continue;
      case 28:
        v106 = v6[4];
        v105 = v6 + 4;
        v104 = v106;
        v107 = *(v105 - 3);
        *this = v105;
        v108 = *&this[9][4 * *(v105 - 1)];
        *this = v105 + 1;
        if ((*(v108 + 46) & 0x80) != 0)
        {
          v109 = *(v108 + 72);
          v110 = *(v108 + 68);
        }

        else
        {
          v109 = 0;
          v110 = 0;
        }

        v111 = this[16];
        if (v107 == -1)
        {
          goto LABEL_364;
        }

        v112 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
        if ((*(**(v108 + 48) + 32))(*(v108 + 48), v112))
        {
          v113 = mlir::Operation::getAttrOfType<mlir::detail::DenseArrayAttrImpl<int>>(v108, "operandSegmentSizes", 0x13uLL);
          if (!v113 || v107 >= v113[4] >> 2)
          {
            v325 = 0;
            goto LABEL_369;
          }

          if (v107)
          {
            LODWORD(v114) = 0;
            v115 = 4 * v107;
            v116 = v113[3];
            do
            {
              v117 = *v116++;
              v114 = (v117 + v114);
              v115 -= 4;
            }

            while (v115);
          }

          else
          {
            v114 = 0;
          }

          v110 = *(v113[3] + 4 * v107);
          v109 += 32 * v114;
        }

        else
        {
          v303 = v110 >= v107;
          v110 -= v107;
          if (!v303)
          {
            goto LABEL_368;
          }

          v109 += 32 * v107;
        }

LABEL_364:
        if (v104 != 0xFFFF)
        {
          v325 = &v111[8 * v104];
          *v325 = v109 & 0xFFFFFFFFFFFFFFF9 | 2;
          v325[1] = v110;
          goto LABEL_369;
        }

        if (v110 == 1)
        {
          v325 = *(v109 + 24);
          goto LABEL_369;
        }

LABEL_368:
        v325 = 0;
LABEL_369:
        v332 = *(*this)++;
        *&this[9][4 * v332] = v325;
        continue;
      case 29:
      case 30:
      case 31:
      case 32:
        v11 = v7 - 29;
        goto LABEL_6;
      case 33:
        v11 = *(v6 + 1);
        *this = v6 + 3;
LABEL_6:
        continue;
      case 34:
        v260 = v6[4];
        v259 = v6 + 4;
        v258 = v260;
        v261 = *(v259 - 3);
        *this = v259;
        v262 = *&this[9][4 * *(v259 - 1)];
        *this = v259 + 1;
        v263 = *(v262 + 36);
        v264 = v262 - 16;
        v265 = this[16];
        if (v263)
        {
          v266 = v262 - 16;
        }

        else
        {
          v266 = 0;
        }

        if (v261 == -1)
        {
          goto LABEL_375;
        }

        if ((atomic_load_explicit(&qword_27FC1EEA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EEA8))
        {
          v334 = llvm::getTypeName<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>();
          _MergedGlobals_27 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v334, v335);
          __cxa_guard_release(&qword_27FC1EEA8);
        }

        if (!(*(**(v262 + 48) + 32))(*(v262 + 48), _MergedGlobals_27))
        {
          if (v263 < v261)
          {
            goto LABEL_332;
          }

          if (v261)
          {
            v326 = *(v266 + 8) & 7;
            v327 = v261;
            if (v326 == 6)
            {
              goto LABEL_343;
            }

            v328 = (5 - v326);
            v327 = v261 - v328;
            if (v261 <= v328)
            {
              v266 = v264 - 16 * v261;
            }

            else
            {
              v264 -= 16 * v328;
LABEL_343:
              v266 = v264 - 24 * v327;
            }
          }

          v263 -= v261;
          goto LABEL_375;
        }

        v267 = mlir::Operation::getAttrOfType<mlir::detail::DenseArrayAttrImpl<int>>(v262, "resultSegmentSizes", 0x12uLL);
        if (!v267 || v261 >= v267[4] >> 2)
        {
LABEL_332:
          v324 = 0;
          v4 = a2;
          goto LABEL_380;
        }

        v268 = v267[3];
        if (v261)
        {
          LODWORD(v269) = 0;
          v270 = 4 * v261;
          v271 = v267[3];
          do
          {
            v272 = *v271++;
            v269 = (v272 + v269);
            v270 -= 4;
          }

          while (v270);
          v273 = *(v268 + 4 * v261);
          if (v269)
          {
            if (!v263)
            {
              goto LABEL_240;
            }

            v274 = *(v266 + 8) & 7;
            if (v274 == 6)
            {
              goto LABEL_240;
            }

            v275 = (5 - v274);
            if (v269 > v275)
            {
              v264 -= 16 * v275;
              v269 -= v275;
LABEL_240:
              v266 = v264 - 24 * v269;
              goto LABEL_374;
            }

            v266 = v264 - 16 * v269;
          }
        }

        else
        {
          v273 = *(v268 + 4 * v261);
        }

LABEL_374:
        v263 = v273;
LABEL_375:
        v4 = a2;
        if (v258 == 0xFFFF)
        {
          if (v263 == 1)
          {
            v324 = v266;
          }

          else
          {
            v324 = 0;
          }
        }

        else
        {
          v324 = &v265[8 * v258];
          *v324 = v266 & 0xFFFFFFFFFFFFFFF9 | 4;
          v324[1] = v263;
        }

LABEL_380:
        v333 = *(*this)++;
        *&this[9][4 * v333] = v324;
        continue;
      case 35:
        v55 = v6[1];
        *this = v6 + 3;
        v56 = &this[11][8 * v6[2]];
        *&this[9][4 * v55] = v56;
        if (*v56)
        {
          MEMORY[0x25F891010](*v56, 0x20C8093837F09);
        }

        *v56 = 0;
        *(v56 + 1) = 0;
        v57 = *this;
        v58 = **this;
        *this += 2;
        v59 = *&this[9][4 * v57[1]];
        if (v58 == 4)
        {
          if (v59)
          {
            v60 = *v59;
            if (*v59)
            {
              v61 = 0;
              v62 = -1;
              do
              {
                v60 = *v60;
                ++v62;
                v61 += 8;
              }

              while (v60);
            }

            operator new[]();
          }
        }

        else if (v59)
        {
          __src = &v342;
          v341 = 0x600000000;
          v354 = *v59;
          v284 = v59[1];
          if (v284)
          {
            for (i = 0; i != v284; *(&v354 + 1) = i)
            {
              v286 = mlir::ValueRange::dereference_iterator(&v354, i);
              v287 = *v286;
              if (*v286)
              {
                v288 = 0;
                v289 = *v286;
                do
                {
                  ++v288;
                  v289 = *v289;
                }

                while (v289);
              }

              else
              {
                v288 = 0;
              }

              v290 = v341;
              v291 = v288 + v341;
              if (v291 > HIDWORD(v341))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v342, v291, 8);
                v290 = v341;
              }

              if (v287)
              {
                v292 = __src + 8 * v290;
                do
                {
                  *v292++ = v287[2];
                  v287 = *v287;
                }

                while (v287);
              }

              LODWORD(v341) = v290 + v288;
              ++i;
            }
          }

          operator new[]();
        }

        continue;
      case 36:
        v27 = v6[1];
        *this = v6 + 3;
        v28 = this[9];
        v29 = *&v28[4 * v6[2]];
        if (v29)
        {
          v29 = (v29[1] & 0xFFFFFFFFFFFFFFF8);
        }

        goto LABEL_354;
      case 37:
        v139 = v6[1];
        v140 = v6[2];
        *this = v6 + 4;
        v141 = this[9];
        v142 = *&v141[4 * v6[3]];
        if (v142)
        {
          v341 = 0;
          v143 = *v142;
          __src = *v142;
          v342 = v143;
          mlir::TypeRange::TypeRange<mlir::ValueRange>(&v354, &__src);
          *&this[13][8 * v140] = v354;
          *&this[9][4 * v139] = &this[13][8 * v140];
        }

        else
        {
          *&v141[4 * v139] = 0;
        }

        continue;
      case 38:
        v47 = v6 + 2;
        *this = v6 + 2;
        v48 = v6[1];
        v49 = this[10];
        v50 = 21;
        if (v49 > v48)
        {
          v50 = 9;
          v49 = 0;
        }

        v51 = *&this[v50][4 * (v48 - v49)] == 0;
        *this = &v47[2 * v51];
        v52 = *&v47[2 * v51];
        goto LABEL_358;
      case 39:
        v240 = v6[1];
        v339 = this[25][v240];
        v241 = v339;
        *this = v6 + 2;
        v242 = &this[23][*(v6 + 1)];
        if (v241 == 0xFFFF)
        {
          *this = v242;
          continue;
        }

        *this = v6 + 5;
        v243 = v6[4];
        __src = &v342;
        v341 = 0x400000000;
        if (v243 < 5)
        {
          if (!v243)
          {
            v306 = 0;
            v305 = &v342;
            goto LABEL_310;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v342, v243, 8);
        }

        do
        {
          v304 = *(*this)++;
          llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(&__src, *(*&this[9][4 * v304] + 24));
          LODWORD(v243) = v243 - 1;
        }

        while (v243);
        v305 = __src;
        v306 = v341;
LABEL_310:
        v307 = mlir::FusedLoc::get(v305, v306, 0, *(v4 + 8));
        *&v354 = v307;
        v308 = &this[27][52 * v240];
        v309 = *(a3 + 8);
        if (v309 >= *(a3 + 12))
        {
          llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCode::MatchResult,false>::growAndEmplaceBack<mlir::Location &,mlir::detail::PDLByteCodePattern const&,mlir::PatternBenefit &>(a3, &v354, v308, &v339);
          v311 = *(a3 + 8);
        }

        else
        {
          v310 = *a3 + 120 * v309;
          *v310 = v307;
          *(v310 + 8) = v310 + 24;
          *(v310 + 104) = v308;
          *(v310 + 16) = 0x600000000;
          *(v310 + 88) = v310 + 104;
          *(v310 + 72) = v310 + 88;
          *(v310 + 80) = 0;
          *(v310 + 96) = 0;
          *(v310 + 112) = v241;
          v311 = *(a3 + 8) + 1;
          *(a3 + 8) = v311;
        }

        v312 = *a3 + 120 * v311;
        v313 = *(*this)++;
        if (*(v312 - 100) < v313)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v312 - 112, (v312 - 96), v313, 8);
        }

        if (*(v312 - 36) < v313)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v312 - 48, (v312 - 32), v313, 16);
        }

        if (*(v312 - 20) < v313)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v312 - 32, (v312 - 16), v313, 16);
        }

        if (!v313)
        {
          goto LABEL_328;
        }

        break;
      case 40:
        *this = v6 + 2;
        v184 = *&this[9][4 * v6[1]];
        __src = &v342;
        v341 = 0x1000000000;
        (**v4)(v4, v184, __src & 0xFFFFFFFFFFFFFFF9, v341);
LABEL_347:
        v130 = __src;
LABEL_360:
        if (v130 != &v342)
        {
LABEL_361:
          free(v130);
        }

        continue;
      case 41:
        v14 = v6[2];
        v13 = v6 + 2;
        v12 = v14;
        *this = v13;
        v15 = *(v13 - 1);
        v16 = this[10];
        v17 = 21;
        if (v16 <= v15)
        {
          v18 = 21;
        }

        else
        {
          v18 = 9;
        }

        if (v16 <= v15)
        {
          v19 = this[10];
        }

        else
        {
          v19 = 0;
        }

        v20 = *&this[v18][4 * (v15 - v19)];
        v21 = v13 + 1;
        *this = v13 + 1;
        if (v16 > v12)
        {
          v17 = 9;
          v16 = 0;
        }

        v22 = *&this[v17][4 * (v12 - v16)];
        v23 = *(v22 + 16);
        if (!v23)
        {
          goto LABEL_338;
        }

        v24 = 0;
        v25 = *(v22 + 8);
        v26 = 8 * v23;
        while (*v25 != v20)
        {
          ++v25;
          v24 += 8;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_338;
          }
        }

        goto LABEL_253;
      case 42:
        *this = v6 + 2;
        v276 = this[10];
        v277 = *&this[9][4 * v6[1]];
        *this = v6 + 3;
        v278 = v6[2];
        v279 = 21;
        if (v276 > v278)
        {
          v279 = 9;
          v276 = 0;
        }

        *&v354 = *&this[v279][4 * (v278 - v276)];
        mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(&v354, &__src);
        if ((*(v277 + 46) & 0x80) != 0)
        {
          v280 = *(v277 + 68);
        }

        else
        {
          v280 = 0;
        }

        v281 = v342;
        if (v342 == v344)
        {
          goto LABEL_252;
        }

        v74 = -4;
        while (1)
        {
          v282 = (v341 & 1) != 0 ? 0 : v281;
          if (*(__src + v282) == v280)
          {
            goto LABEL_255;
          }

          ++v281;
          v74 -= 4;
          if (v344 == v281)
          {
            goto LABEL_252;
          }
        }

      case 43:
        v30 = v6[2];
        *this = v6 + 2;
        v31 = *(*&this[9][4 * v6[1]] + 48);
        v32 = v6 + 3;
        *this = v6 + 3;
        if (!v30)
        {
          goto LABEL_301;
        }

        v33 = 0;
        v34 = this[10];
        v35 = 5;
        while (1)
        {
          *this = &v6[v33 + 4];
          v36 = v6[v33 + 3];
          v37 = 21;
          if (v34 <= v36)
          {
            v38 = v34;
          }

          else
          {
            v37 = 9;
            v38 = 0;
          }

          if (*&this[v37][4 * (v36 - v38)] == v31)
          {
            break;
          }

          ++v33;
          v35 += 2;
          if (v30 == v33)
          {
            v32 = &v6[v33 + 3];
            goto LABEL_301;
          }
        }

        v32 = &v6[v30 + v35];
        *this = v32;
LABEL_301:
        v52 = *v32;
        goto LABEL_358;
      case 44:
        *this = v6 + 2;
        v69 = this[10];
        v70 = *&this[9][4 * v6[1]];
        *this = v6 + 3;
        v71 = v6[2];
        v72 = 21;
        if (v69 > v71)
        {
          v72 = 9;
          v69 = 0;
        }

        *&v354 = *&this[v72][4 * (v71 - v69)];
        mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(&v354, &__src);
        v73 = v342;
        if (v342 == v344)
        {
          goto LABEL_252;
        }

        v74 = -4;
        while (1)
        {
          v75 = (v341 & 1) != 0 ? 0 : v73;
          if (*(__src + v75) == *(v70 + 36))
          {
            break;
          }

          ++v73;
          v74 -= 4;
          if (v344 == v73)
          {
            goto LABEL_252;
          }
        }

LABEL_255:
        v21 = &(*this)[v74 / 0xFFFFFFFFFFFFFFFELL];
        goto LABEL_337;
      case 45:
        v247 = v6[2];
        v246 = v6 + 2;
        v245 = v247;
        *this = v246;
        v248 = *(v246 - 1);
        v249 = this[10];
        v250 = 21;
        if (v249 <= v248)
        {
          v251 = 21;
        }

        else
        {
          v251 = 9;
        }

        if (v249 <= v248)
        {
          v252 = this[10];
        }

        else
        {
          v252 = 0;
        }

        v253 = *&this[v251][4 * (v248 - v252)];
        v21 = v246 + 1;
        *this = v246 + 1;
        if (v249 > v245)
        {
          v250 = 9;
          v249 = 0;
        }

        v254 = *&this[v250][4 * (v245 - v249)];
        v255 = *(v254 + 16);
        if (!v255)
        {
          goto LABEL_338;
        }

        v24 = 0;
        v256 = *(v254 + 8);
        v257 = v256 + 8 * v255;
        while (v253 != *(*v256 + 8))
        {
          v256 += 8;
          v24 += 8;
          if (v256 == v257)
          {
            goto LABEL_338;
          }
        }

LABEL_253:
        v283 = v21 + (v24 >> 1);
        goto LABEL_336;
      case 46:
        v187 = v6[2];
        v186 = v6 + 2;
        v185 = v187;
        *this = v186;
        v188 = this[10];
        v189 = *&this[9][4 * *(v186 - 1)];
        v21 = v186 + 1;
        *this = v186 + 1;
        v190 = 21;
        if (v188 > v187)
        {
          v190 = 9;
          v188 = 0;
        }

        if (!v189)
        {
          goto LABEL_338;
        }

        v191 = *&this[v190][4 * (v185 - v188)];
        v192 = *(v191 + 16);
        if (!v192)
        {
          goto LABEL_338;
        }

        v193 = 0;
        v194 = *(v191 + 8);
        v195 = v194 + 8 * v192;
        while (!_ZN4llvm6detaileqINS_14iterator_rangeINS_15mapped_iteratorIN4mlir9ArrayAttr19attr_value_iteratorINS4_8TypeAttrEEEZNKS5_15getAsValueRangeIS7_NS4_4TypeEEEDavEUlS7_E_SA_EEEENS4_9TypeRangeENS_12PointerUnionIJPKNS4_5ValueEPKSA_PNS4_9OpOperandEPNS4_6detail12OpResultImplEEEESA_SA_SA_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_(*v189, v189[1], *(*v194 + 8), *(*v194 + 8) + 8 * *(*v194 + 16)))
        {
          v194 += 8;
          v193 += 8;
          if (v194 == v195)
          {
LABEL_252:
            v21 = *this;
            goto LABEL_338;
          }
        }

        v283 = *this + (v193 >> 1);
LABEL_336:
        v21 = (v283 + 4);
LABEL_337:
        *this = v21;
LABEL_338:
        v52 = *v21;
        goto LABEL_358;
      default:
        continue;
    }

    break;
  }

  while (1)
  {
    v314 = *this;
    v315 = **this;
    *this += 2;
    v316 = v314[1];
    if (v315 == 5)
    {
      v320 = *&this[9][4 * v316];
      llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(v312 - 32, *v320, v320[1]);
      v318 = *(v312 - 32);
      v319 = *(v312 - 24);
    }

    else
    {
      if (v315 != 3)
      {
        v322 = this[10];
        v323 = 21;
        if (v322 > v316)
        {
          v323 = 9;
          v322 = 0;
        }

        v321 = *&this[v323][4 * (v316 - v322)];
        goto LABEL_327;
      }

      v317 = *&this[9][4 * v316];
      llvm::SmallVectorTemplateBase<mlir::TypeRange,true>::push_back(v312 - 48, *v317, v317[1]);
      v318 = *(v312 - 48);
      v319 = *(v312 - 40);
    }

    v321 = v318 + 16 * v319 - 16;
LABEL_327:
    llvm::SmallVectorTemplateBase<void const*,true>::push_back(v312 - 112, v321);
    LODWORD(v313) = v313 - 1;
    if (!v313)
    {
LABEL_328:
      *this = v242;
      if (__src != &v342)
      {
        free(__src);
      }

      v4 = a2;
      goto LABEL_2;
    }
  }
}

uint64_t mlir::detail::PDLByteCode::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48[30] = *MEMORY[0x277D85DE8];
  v8 = *(*(a3 + 104) + 96);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *v8;
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        (*(*v12 + 16))(v12, a2);
        v11 -= 8;
      }

      while (v11);
    }
  }

  v13 = *a4;
  v14 = *(a3 + 16);
  if (v14)
  {
    memmove(v13, *(a3 + 8), 8 * v14);
    v13 = *a4;
  }

  v15 = *(a1 + 240);
  v16 = *(a1 + 248);
  v17 = (*(a4 + 8) - v13) >> 3;
  v18 = *(a4 + 24);
  v19 = (*(a4 + 32) - v18) >> 4;
  v20 = *(a4 + 48);
  v21 = (*(a4 + 56) - v20) >> 4;
  v22 = a4 + 72;
  v23 = *(a4 + 96);
  v24 = (*(a4 + 104) - v23) >> 4;
  v25 = a4 + 120;
  v26 = *(a4 + 144);
  v27 = (*(a4 + 152) - v26) >> 2;
  v28 = *(a1 + 64);
  v29 = (*(a1 + 72) - v28) >> 3;
  v30 = *(a4 + 168);
  v31 = (*(a4 + 176) - v30) >> 1;
  v32 = *(a1 + 392);
  v33 = *(a1 + 400);
  v34 = *(a1 + 3736);
  v35 = (*(a1 + 3744) - v34) >> 5;
  v36 = *(a1 + 3760);
  v37 = (*(a1 + 3768) - v36) >> 5;
  v45 = (v15 + 2 * *(*(a3 + 104) + 88));
  v46 = v48;
  v47 = 0x600000000;
  v48[6] = v13;
  v48[7] = v17;
  v48[8] = v18;
  v48[9] = v19;
  v48[10] = v20;
  v48[11] = v21;
  v48[12] = v22;
  v48[13] = v23;
  v48[14] = v24;
  v48[15] = v25;
  v48[16] = v26;
  v48[17] = v27;
  v48[18] = v28;
  v48[19] = v29;
  v48[20] = v15;
  v48[21] = v16;
  v48[22] = v30;
  v48[23] = v31;
  v48[24] = v32;
  v48[25] = v33;
  v48[26] = v34;
  v48[27] = v35;
  v48[28] = v36;
  v48[29] = v37;
  if (v8)
  {
    v39 = *(v8 + 8);
    if (v39)
    {
      v40 = *v8;
      v41 = 8 * v39;
      do
      {
        v42 = *v40++;
        (*(*v42 + 24))(v42, a2);
        v41 -= 8;
      }

      while (v41);
    }
  }

  if ((v38 & 1) == 0 && ((*(*a2 + 80))(a2) & 1) == 0)
  {
    llvm::report_fatal_error("Native PDL Rewrite failed, but the pattern rewriter doesn't support recovery. Failable pattern rewrites should not be used with pattern rewriters that do not support them.", 1, v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  return v38;
}

uint64_t llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4, void *a5)
{
  result = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = *a1;
  v11 = result;
  v12 = *(*a1 + 8 * result);
  if (v12 == -8)
  {
    --*(a1 + 4);
  }

  else if (v12)
  {
    return result;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v15 = buffer;
  v16 = buffer + 2;
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  *(v16 + a3) = 0;
  *v15 = a3;
  *(v15 + 4) = *a5;
  *(v10 + 8 * v11) = v15;
  ++*(a1 + 3);
  result = llvm::StringMapImpl::RehashTable(a1, v11, v14);
    ;
  }

  return result;
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, _anonymous_namespace_::ByteCodeWriter *a3, unint64_t a4)
{
  v336[2] = *MEMORY[0x277D85DE8];
  v6 = *(*(a2 + 48) + 16);
  if (!a2 || v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
    {
      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
      {
        v68 = *(a2 + 72);
        v69 = *(v68 + 24);
        if (*(*(*(v69 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          v70 = *(v68 + 56);
          v71 = *(a2 + 40);
          if (v71)
          {
            v72 = (a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v72 = 0;
          }

          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 2);
          v74 = *(a3 + 3);
          v73 = *(a3 + 4);
          *&__src = v69;
          v75 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v73, &__src);
          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v74, *v75);
          v76 = a3;
          v77 = v70;
          v78 = v72;
          v79 = v71;
          goto LABEL_82;
        }

        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 3);
        v95 = *(a2 + 72);
        v96 = *(v95 + 56);
        v97 = *(a2 + 40);
        if (v97)
        {
          v98 = (a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          v98 = 0;
        }

        v100 = *(a3 + 3);
        v99 = *(a3 + 4);
        *&__src = *(v95 + 24);
        v101 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v99, &__src);
        v102 = v100;
LABEL_81:
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v102, v101);
        v76 = a3;
        v77 = v96;
        v78 = v98;
        v79 = v97;
LABEL_82:

        return;
      }

      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::BranchOp,void>::id)
      {
        v80 = *(a2 + 40);
        if (v80)
        {
          v81 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 4);
          v82 = (v81 + 24);
          do
          {
            v83 = *v82;
            v82 += 4;
            --v80;
          }

          while (v80);
          return;
        }

        v113 = *(a3 + 3);
        v114 = 4;
        goto LABEL_90;
      }

      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
      {
        v84 = *(a2 + 80);
        v85 = *(*(a2 + 72) + 24);
        v86 = *(a2 + 40);
        if (v86)
        {
          v87 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          v87 = 0;
        }

        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 2);
        v89 = *(a3 + 3);
        v88 = *(a3 + 4);
        *&__src = v85;
        v90 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v88, &__src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v89, *v90);
        v91 = *(a3 + 3);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v91, *v92);
        if (v86)
        {
          v93 = (v87 + 24);
          do
          {
            v94 = *v93;
            v93 += 4;
            --v86;
          }

          while (v86);
        }

        return;
      }

      if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
      {
        *&__src = a2;
        v103 = *(*(a2 + 72) + 24);
        Count = mlir::pdl_interp::CheckOperandCountOp::getCount(&__src);
        v105 = *(a2 + 40);
        v106 = *(a2 + 44);
        v107 = a2 + 16 * ((v106 >> 23) & 1);
        v108 = *(v107 + 64) != 0;
        v109 = (v107 + 64 + ((v106 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v105)
        {
          v110 = v109;
        }

        else
        {
          v110 = 0;
        }

        v111 = a3;
        v112 = 5;
      }

      else
      {
        if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
        {
          v115 = *(*(a2 + 72) + 24);
          mlir::OperationName::OperationName(&v330, *(*(a2 + 80) + 16), *(*(a2 + 80) + 24), *(a1 + 152));
          v116 = *(a2 + 40);
          if (v116)
          {
            v117 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v117 = 0;
          }

          v132 = v330;
          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 6);
          v134 = *(a3 + 3);
          v133 = *(a3 + 4);
          *&__src = v115;
          v135 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v133, &__src);
          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v134, *v135);
          if (v116)
          {
            v136 = (v117 + 24);
            do
            {
              v137 = *v136;
              v136 += 4;
              --v116;
            }

            while (v116);
          }

          return;
        }

        if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
        {
          if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
          {
            v121 = *(*(a2 + 72) + 24);
            v122 = *(*(a2 + 80) + 8);
            v123 = *(a2 + 40);
            if (v123)
            {
              v124 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v124 = 0;
            }

            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 2);
            v126 = *(a3 + 3);
            v125 = *(a3 + 4);
            *&__src = v121;
            v127 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v125, &__src);
            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v126, *v127);
            v128 = *(a3 + 3);
            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v128, *v129);
            if (v123)
            {
              v130 = (v124 + 24);
              do
              {
                v131 = *v130;
                v130 += 4;
                --v123;
              }

              while (v123);
            }

            return;
          }

          if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
          {
            v138 = *(a2 + 80);
            v139 = *(*(a2 + 72) + 24);
            v140 = *(a2 + 40);
            if (v140)
            {
              v141 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v141 = 0;
            }

            v142 = a3;
            v143 = 8;
LABEL_116:

            return;
          }

          if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id)
          {
            v144 = *(a1 + 144);
            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 9);
            v113 = *(a3 + 3);
            v114 = v144 - 1;
            goto LABEL_90;
          }

          if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
          {
            v145 = a1;
            goto LABEL_121;
          }

          if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
          {
            v330 = a2;
            if (*(a2 + 36))
            {
              v149 = a2 - 16;
            }

            else
            {
              v149 = 0;
            }

            v150 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
            mlir::OperationName::OperationName(&v329, *(v150 + 16), *(v150 + 24), *(a1 + 152));
            v151 = v329;
            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 11);
            v153 = *(a3 + 3);
            v152 = *(a3 + 4);
            *&__src = v149;
            v154 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v152, &__src);
            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v153, *v154);
            v155 = *(a2 + 44);
            if ((v155 & 0x800000) != 0)
            {
              v156 = *(a2 + 72);
            }

            else
            {
              v156 = 0;
            }

            ODSOperands = mlir::pdl_interp::CreateOperationOp::getODSOperands(&v330, 1u);
            v159 = v158;
            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v158);
            v160 = v330;
            v161 = (*(v330 + 44) >> 23) & 1;
            v162 = *(v330 + 16 * v161 + 72);
            v163 = *(v162 + 16);
            if (v163 && v159)
            {
              v164 = *(v162 + 8);
              v165 = v159 - 1;
              v166 = (ODSOperands + 24);
              v167 = 8 * v163 - 8;
              do
              {
                v169 = *v166;
                v166 += 4;
                v168 = v169;
                v170 = *v164++;
                v171 = *(a3 + 3);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v171, *v172);
                v174 = *(a3 + 3);
                v173 = *(a3 + 4);
                *&__src = v168;
                v175 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v173, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v174, *v175);
                v177 = v165-- != 0;
                if (!v167)
                {
                  break;
                }

                v167 -= 8;
              }

              while (v177);
              v160 = v330;
              v161 = (*(v330 + 44) >> 23) & 1;
            }

            if (!*(v160 + 16 * v161 + 64))
            {
              v180 = mlir::pdl_interp::CreateOperationOp::getODSOperands(&v330, 2u);
              goto LABEL_146;
            }

            v113 = *(a3 + 3);
            v114 = -1;
LABEL_92:
            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v113, v114);
            return;
          }

          if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
          {
            if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
            {
              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
              {
                if (*(a2 + 36))
                {
                  v187 = a2 - 16;
                }

                else
                {
                  v187 = 0;
                }

                *&__src = v187;
                v188 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
                v189 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 10);
                v191 = *(a3 + 3);
                v190 = *(a3 + 4);
                *&__src = v187;
                v192 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v190, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v191, *v192);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v188);
                v193 = *(a3 + 3);
                v194 = *(a3 + 4);

                return;
              }

              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
              {
                v202 = *(*(a2 + 72) + 24);
                v203 = *(a3 + 3);
                v204 = 14;
LABEL_166:
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v203, v204);
LABEL_167:
                v206 = *(a3 + 3);
                v205 = *(a3 + 4);
                *&__src = v202;
LABEL_168:
                v114 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v205, &__src);
LABEL_169:
                v113 = v206;
                goto LABEL_90;
              }

              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
              {
                v330 = a2;
                v207 = a2 - 16;
                if (*(a2 + 36))
                {
                  v208 = a2 - 16;
                }

                else
                {
                  v208 = 0;
                }

                v209 = *(*(*(v208 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
                if (v209 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
                {
                  v210 = 15;
                }

                else if (v209 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
                {
                  v210 = 17;
                }

                else
                {
                  v210 = 16 * (v209 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
                }

                v218 = *(*(a2 + 72) + 24);
                Index = mlir::pdl_interp::ExtractOp::getIndex(&v330);
                if (!*(a2 + 36))
                {
                  v207 = 0;
                }

                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v210);
                v221 = *(a3 + 3);
                v220 = *(a3 + 4);
                *&__src = v218;
                v222 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v220, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v221, *v222);
                v223 = *(a3 + 3);
                LODWORD(__src) = Index;
                llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(v223, &__src, &__src + 4);
                v225 = *(a3 + 3);
                v224 = *(a3 + 4);
                *&__src = v207;
                goto LABEL_204;
              }

              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id)
              {
                v113 = *(a3 + 3);
                v114 = 18;
LABEL_90:

                goto LABEL_92;
              }

              if (a2 && v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id)
              {
                v31 = a2 + 64;
                v32 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
                if (v32)
                {
                  v33 = v32 - 8;
                }

                else
                {
                  v33 = 0;
                }

                v34 = **(v33 + 48);
                *&__src = *(*(a2 + 72) + 24);
                v35 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 19);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v35);
                v37 = *(a3 + 3);
                v36 = *(a3 + 4);
                *&__src = v34;
                v38 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v36, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v37, *v38);
                v39 = *(((v31 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), *(a1 + 144));
                v45 = *(a1 + 144) + 1;
                *(a1 + 144) = v45;
                v46 = *(a1 + 248);
                if (*v46 < v45)
                {
                  *v46 = v45;
                }

                --*(a1 + 144);
                return;
              }

              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id)
              {
                if (*(a2 + 36))
                {
                  v226 = a2 - 16;
                }

                else
                {
                  v226 = 0;
                }

                v227 = *(a2 + 80);
                v228 = *(*(a2 + 72) + 24);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 20);
                v230 = *(a3 + 3);
                v229 = *(a3 + 4);
                *&__src = v226;
                v231 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v229, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v230, *v231);
                v233 = *(a3 + 3);
                v232 = *(a3 + 4);
                *&__src = v228;
                v234 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v232, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v233, *v234);
                v206 = *(a3 + 3);
                v235 = *(a3 + 4);
                v330 = v227;
                v329 = **(v235 + 216) + ((*(*(v235 + 184) + 8) - **(v235 + 184)) >> 3);
                llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(&__src, (v235 + 120), &v330, &v329);
                if (v332 == 1)
                {
                  std::vector<void const*>::push_back[abi:nn200100](*(v235 + 184), &v330);
                }

                v114 = *(__src + 8);
                goto LABEL_169;
              }

              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
              {
                if (*(a2 + 36))
                {
                  v236 = a2 - 16;
                }

                else
                {
                  v236 = 0;
                }

                v237 = *(*(a2 + 72) + 24);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 21);
                v239 = *(a3 + 3);
                v238 = *(a3 + 4);
                *&__src = v236;
                v240 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v238, &__src);
                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v239, *v240);
                v206 = *(a3 + 3);
                v205 = *(a3 + 4);
                *&__src = v237;
                goto LABEL_168;
              }

              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
              {
                if (*(a2 + 36))
                {
                  v241 = a2 - 16;
                }

                else
                {
                  v241 = 0;
                }

                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 22);
                v243 = *(a3 + 3);
                v242 = *(a3 + 4);
                *&__src = v241;
                v244 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v242, &__src);
                v245 = v243;
                goto LABEL_219;
              }

              if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id)
              {
                *&__src = a2;
                v246 = mlir::pdl_interp::GetOperandOp::getIndex(&__src);
                v247 = v246;
                if (v246 <= 3)
                {
                  v248 = v246 + 23;
LABEL_232:
                  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v248);
LABEL_246:
                  if (*(a2 + 36))
                  {
                    v261 = a2 - 16;
                  }

                  else
                  {
                    v261 = 0;
                  }

                  return;
                }

                v255 = *(a3 + 3);
                v256 = 27;
              }

              else
              {
                if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id)
                {
                  v330 = a2;
                  if (*(a2 + 36))
                  {
                    v249 = a2 - 16;
                  }

                  else
                  {
                    v249 = 0;
                  }

                  v250 = mlir::pdl_interp::GetOperandsOp::getIndex(&v330);
                  if ((v250 & 0x100000000) != 0)
                  {
                    v251 = v250;
                  }

                  else
                  {
                    v251 = -1;
                  }

                  v252 = *(*(a2 + 72) + 24);
                  v253 = a3;
                  v254 = 28;
LABEL_240:
                  if (*(*(*(v249 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
                  {
                    *&__src = v249;
                    v259 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
                  }

                  else
                  {
                    v259 = -1;
                  }

                  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v259);
                  v225 = *(a3 + 3);
                  v224 = *(a3 + 4);
                  *&__src = v249;
LABEL_204:
                  v114 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v224, &__src);
                  v113 = v225;
                  goto LABEL_92;
                }

                if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
                {
                  if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
                  {
                    if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id)
                    {
                      if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
                      {
                        if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
                        {
                          if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
                          {
                            v330 = a2;
                            *&__src = a2;
                            v270 = *(a1 + 208);
                            v271 = *(v270 + 8);
                            v272 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>,mlir::Operation *,mlir::PDLPatternConfigSet *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::PDLPatternConfigSet *>>::doFind<mlir::Operation const*>(*(a1 + 256), &__src);
                            if (v272)
                            {
                              v275 = *(v272 + 8);
                            }

                            else
                            {
                              v275 = 0;
                            }

                            v291 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
                            v292 = v291[3];
                            if (v292)
                            {
                              v291 = *(v291[2] + 8 * v292 - 8);
                            }

                            v293 = v291[1];
                            v294 = *(v293 + 16);
                            v295 = *(v293 + 24);
                            v296 = llvm::xxh3_64bits(v294, v295, v273, v274);
                            v297 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 96), v294, v295, v296);
                            mlir::detail::PDLByteCodePattern::create(&__src, a2, v275, *(*v297 + 2));
                            llvm::SmallVectorImpl<mlir::detail::PDLByteCodePattern>::emplace_back<mlir::detail::PDLByteCodePattern>(v270, &__src);
                            if (v335 != v336)
                            {
                              free(v335);
                            }

                            if (v333 != &v334)
                            {
                              free(v333);
                            }

                            v298 = *(a2 + 40);
                            if (v298)
                            {
                              v299 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
                            }

                            else
                            {
                              v299 = 0;
                            }

                            v300 = mlir::pdl_interp::RecordMatchOp::getODSOperands(&v330, 1u);
                            v302 = v301;
                            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 39);
                            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v271);
                            if (v298)
                            {
                              v303 = (v299 + 24);
                              do
                              {
                                v304 = *v303;
                                v303 += 4;
                                --v298;
                              }

                              while (v298);
                            }

                            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v302);
                            if (v302)
                            {
                              v305 = (v300 + 24);
                              do
                              {
                                v306 = *v305;
                                v305 += 4;
                                v308 = *(a3 + 3);
                                v307 = *(a3 + 4);
                                *&__src = v306;
                                v309 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v307, &__src);
                                llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v308, *v309);
                                --v302;
                              }

                              while (v302);
                            }

                            v310 = *(v330 + 44);
                            v186 = *(v330 + 16 * ((v310 >> 23) & 1) + 96);
                            if ((v310 & 0x800000) != 0)
                            {
                              v185 = *(v330 + 72);
                            }

                            else
                            {
                              v185 = 0;
                            }

                            v184 = a3;
                            goto LABEL_147;
                          }

                          if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
                          {
                            if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
                            {
                              v285 = *(a2 + 80);
                              v286 = *(*(a2 + 72) + 24);
                              v287 = *(a2 + 40);
                              if (v287)
                              {
                                v288 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
                              }

                              else
                              {
                                v288 = 0;
                              }

                              v289 = *(a3 + 3);
                              v290 = 41;
                            }

                            else
                            {
                              if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
                              {
                                if (v6 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
                                {
                                  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
                                  {
                                    v212 = *(a2 + 80);
                                    v213 = *(*(a2 + 72) + 24);
                                    v214 = *(a2 + 40);
                                    if (v214)
                                    {
                                      v215 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
                                    }

                                    else
                                    {
                                      v215 = 0;
                                    }

                                    v216 = a3;
                                    v217 = 42;
                                  }

                                  else
                                  {
                                    if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
                                    {
                                      v314 = *(a2 + 80);
                                      v315 = *(v314 + 8);
                                      v316 = *(v314 + 16);
                                      v317 = *(*(a2 + 72) + 24);
                                      v318 = *(a2 + 40);
                                      if (v318)
                                      {
                                        v319 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
                                      }

                                      else
                                      {
                                        v319 = 0;
                                      }

                                      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 43);
                                      v321 = *(a3 + 3);
                                      v320 = *(a3 + 4);
                                      *&__src = v317;
                                      v322 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v320, &__src);
                                      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v321, *v322);
                                      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v316);
                                      if (v316)
                                      {
                                        v323 = 8 * v316;
                                        do
                                        {
                                          v324 = *v315++;
                                          mlir::OperationName::OperationName(&__src, *(v324 + 16), *(v324 + 24), *(a1 + 152));
                                          v323 -= 8;
                                        }

                                        while (v323);
                                      }

                                      if (v318)
                                      {
                                        v325 = (v319 + 24);
                                        do
                                        {
                                          v326 = *v325;
                                          v325 += 4;
                                          --v318;
                                        }

                                        while (v318);
                                      }

                                      return;
                                    }

                                    v212 = *(a2 + 80);
                                    v213 = *(*(a2 + 72) + 24);
                                    v214 = *(a2 + 40);
                                    if (v214)
                                    {
                                      v215 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
                                    }

                                    else
                                    {
                                      v215 = 0;
                                    }

                                    v216 = a3;
                                    v217 = 44;
                                  }

                                  return;
                                }

                                v138 = *(a2 + 80);
                                v139 = *(*(a2 + 72) + 24);
                                v140 = *(a2 + 40);
                                if (v140)
                                {
                                  v141 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
                                }

                                else
                                {
                                  v141 = 0;
                                }

                                v142 = a3;
                                v143 = 46;
                                goto LABEL_116;
                              }

                              v285 = *(a2 + 80);
                              v286 = *(*(a2 + 72) + 24);
                              v287 = *(a2 + 40);
                              if (v287)
                              {
                                v288 = (a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8;
                              }

                              else
                              {
                                v288 = 0;
                              }

                              v289 = *(a3 + 3);
                              v290 = 45;
                            }

                            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v289, v290);
                            v312 = *(a3 + 3);
                            v311 = *(a3 + 4);
                            *&__src = v286;
                            v313 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v311, &__src);
                            llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v312, *v313);

                            return;
                          }

                          v330 = a2;
                          v281 = *(mlir::pdl_interp::ReplaceOp::getODSOperands(&v330, 0) + 24);
                          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 40);
                          v283 = *(a3 + 3);
                          v282 = *(a3 + 4);
                          *&__src = v281;
                          v284 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v282, &__src);
                          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v283, *v284);
                          v180 = mlir::pdl_interp::ReplaceOp::getODSOperands(&v330, 1u);
LABEL_146:
                          v182 = v180;
                          v183 = v181;
                          v184 = a3;
                          v185 = v182;
                          v186 = v183;
LABEL_147:
                          return;
                        }

                        v96 = *(*(a2 + 72) + 24);
                        v97 = *(a2 + 40);
                        if (v97)
                        {
                          v98 = (a2 + 8 * *(a2 + 47) + 87) & 0xFFFFFFFFFFFFFFF8;
                        }

                        else
                        {
                          v98 = 0;
                        }

                        v102 = *(a3 + 3);
                        v101 = 38;
                        goto LABEL_81;
                      }

                      if (*(a2 + 36))
                      {
                        v267 = a2 - 16;
                      }

                      else
                      {
                        v267 = 0;
                      }

                      if (*(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
                      {
                        *&__src = v267;
                        v276 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
                        v277 = *(*(a2 + 72) + 24);
                        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 37);
                        v279 = *(a3 + 3);
                        v278 = *(a3 + 4);
                        *&__src = v267;
                        v280 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v278, &__src);
                        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v279, *v280);
                        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v276);
                        v206 = *(a3 + 3);
                        v205 = *(a3 + 4);
                        *&__src = v277;
                        goto LABEL_168;
                      }

                      v202 = *(*(a2 + 72) + 24);
                      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 36);
                      v269 = *(a3 + 3);
                      v268 = *(a3 + 4);
                      *&__src = v267;
                      v204 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v268, &__src);
                      v203 = v269;
                      goto LABEL_166;
                    }

                    if (*(a2 + 36))
                    {
                      v262 = a2 - 16;
                    }

                    else
                    {
                      v262 = 0;
                    }

                    *&__src = v262;
                    v263 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
                    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 35);
                    v265 = *(a3 + 3);
                    v264 = *(a3 + 4);
                    *&__src = v262;
                    v266 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v264, &__src);
                    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v265, *v266);
                    v245 = *(a3 + 3);
                    v244 = v263;
LABEL_219:
                    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v245, v244);
                    v202 = *(*(a2 + 72) + 24);
                    goto LABEL_167;
                  }

                  v330 = a2;
                  if (*(a2 + 36))
                  {
                    v249 = a2 - 16;
                  }

                  else
                  {
                    v249 = 0;
                  }

                  v258 = mlir::pdl_interp::GetResultsOp::getIndex(&v330);
                  if ((v258 & 0x100000000) != 0)
                  {
                    v251 = v258;
                  }

                  else
                  {
                    v251 = -1;
                  }

                  v252 = *(*(a2 + 72) + 24);
                  v253 = a3;
                  v254 = 34;
                  goto LABEL_240;
                }

                *&__src = a2;
                v257 = mlir::pdl_interp::GetResultOp::getIndex(&__src);
                v247 = v257;
                if (v257 <= 3)
                {
                  v248 = v257 + 29;
                  goto LABEL_232;
                }

                v255 = *(a3 + 3);
                v256 = 33;
              }

              llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v255, v256);
              v260 = *(a3 + 3);
              LODWORD(v330) = v247;
              llvm::SmallVectorImpl<unsigned short>::append<unsigned short const*,void>(v260, &v330, &v330 + 4);
              goto LABEL_246;
            }

            v145 = a1;
LABEL_121:
            v147 = *v146;
            if (*(a2 + 36))
            {
              v148 = a2 - 16;
            }

            else
            {
              v148 = 0;
            }

            *&__src = v148;
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v145, &__src) = v147;
            return;
          }

          v178 = *(**((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 136);
          if (v178 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
          {
            v179 = 12;
          }

          else
          {
            if (v178 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
            {
LABEL_157:
              if (*(a2 + 36))
              {
                v195 = a2 - 16;
              }

              else
              {
                v195 = 0;
              }

              *&__src = v195;
              v196 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
              v198 = *(a3 + 3);
              v197 = *(a3 + 4);
              *&__src = v195;
              v199 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v197, &__src);
              llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v198, *v199);
              llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v196);
              if ((*(a2 + 46) & 0x80) != 0)
              {
                v200 = *(a2 + 72);
                v201 = *(a2 + 68);
              }

              else
              {
                v200 = 0;
                v201 = 0;
              }

              return;
            }

            v179 = 13;
          }

          llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v179);
          goto LABEL_157;
        }

        *&__src = a2;
        v103 = *(*(a2 + 72) + 24);
        Count = mlir::pdl_interp::CheckResultCountOp::getCount(&__src);
        v105 = *(a2 + 40);
        v118 = *(a2 + 44);
        v119 = a2 + 16 * ((v118 >> 23) & 1);
        v108 = *(v119 + 64) != 0;
        v120 = (v119 + 64 + ((v118 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v105)
        {
          v110 = v120;
        }

        else
        {
          v110 = 0;
        }

        v111 = a3;
        v112 = 7;
      }

      return;
    }

    v47 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v48 = *(v47 + 16);
    v49 = *(v47 + 24);
    v50 = llvm::xxh3_64bits(v48, v49, a3, a4);
    LOWORD(v48) = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 48), v48, v49, v50) + 4);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 1);
    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v48);
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v51 = *(a2 + 68);
      v52 = *(a2 + 72);
    }

    else
    {
      v52 = 0;
      v51 = 0;
    }

    v53 = *(a2 + 36);
    v54 = a2;
    v55 = a2 - 16;
    if (*(a2 + 36))
    {
      v56 = a2 - 16;
    }

    else
    {
      v56 = 0;
    }

    llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v53);
    if (!v53)
    {
      return;
    }

    v57 = 0;
    for (i = v55; ; i -= 16)
    {
      v59 = v56;
      if (v57)
      {
        v60 = *(v54 - 8) & 7;
        v61 = v55;
        v62 = v57;
        if (v60 == 6)
        {
          goto LABEL_56;
        }

        v63 = (5 - v60);
        v59 = i;
        v62 = v57 - v63;
        if (v57 > v63)
        {
          break;
        }
      }

LABEL_57:
      if (*(*(*(v59 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&__src = v59;
        v64 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), *v64);
      }

      v66 = *(a3 + 3);
      v65 = *(a3 + 4);
      *&__src = v59;
      v67 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v65, &__src);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v66, *v67);
      if (v53 == ++v57)
      {
        return;
      }
    }

    v61 = v55 - 16 * v63;
LABEL_56:
    v59 = v61 - 24 * v62;
    goto LABEL_57;
  }

  v330 = a2;
  v327 = a2 + 64;
  v7 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = llvm::xxh3_64bits(v8, v9, a3, a4);
  LOWORD(v8) = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 72), v8, v9, v10) + 4);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), 0);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), v8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  IsNegated = mlir::pdl_interp::ApplyConstraintOp::getIsNegated(&v330);
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), IsNegated);
  v14 = *(a2 + 36);
  v15 = a2;
  v16 = a2 - 16;
  llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), *(a2 + 36));
  if (v14)
  {
    v17 = 0;
    v18 = a2 - 16;
    while (1)
    {
      v19 = v16;
      if (v17)
      {
        v20 = *(v15 - 8) & 7;
        v21 = v16;
        v22 = v17;
        if (v20 == 6)
        {
          goto LABEL_11;
        }

        v23 = (5 - v20);
        v19 = v18;
        v22 = v17 - v23;
        if (v17 > v23)
        {
          break;
        }
      }

LABEL_12:
      if (*(*(*(v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&__src = v19;
        v24 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &__src);
        llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(*(a3 + 3), *v24);
      }

      v26 = *(a3 + 3);
      v25 = *(a3 + 4);
      *&__src = v19;
      v27 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v25, &__src);
      llvm::SmallVectorTemplateBase<unsigned short,true>::push_back(v26, *v27);
      ++v17;
      v18 -= 16;
      if (v14 == v17)
      {
        goto LABEL_15;
      }
    }

    v21 = v16 - 16 * v23;
LABEL_11:
    v19 = v21 - 24 * v22;
    goto LABEL_12;
  }

LABEL_15:
  v28 = *(v15 + 40);
  if (v28)
  {
    v29 = (((v327 + 16 * ((*(v15 + 44) >> 23) & 1) + ((*(v15 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    do
    {
      v30 = *v29;
      v29 += 4;
      --v28;
    }

    while (v28);
  }
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  off_286E74118(a1, a2, a3, a4, a5, a6, a7, a8, v216[43]);
  v9 = v8;
  v11 = v10;
  v216[40] = *MEMORY[0x277D85DE8];
  v61 = &v63;
  v62 = 0x800000000;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = (v13 - 8);
  }

  else
  {
    v14 = 0;
  }

  v89 = v14;
  v66[0] = &v69;
  v66[1] = 8;
  v67 = 0;
  v68 = 1;
  v70 = v72;
  v71 = 0x800000000;
  llvm::SmallPtrSetImpl<mlir::Block *>::insert(v66, v14, &v178);
  mlir::SuccessorRange::SuccessorRange(&v178, v14);
  v154 = v178;
  mlir::SuccessorRange::SuccessorRange(&v178, v14);
  llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::emplace_back<mlir::Block *&,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>(&v70, &v89, &v154, &v178);
  llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>::traverseChild(v66);
  memset(&v64[2], 0, 72);
  memset(&v65[1], 0, 328);
  v64[0] = &v64[3];
  v64[1] = 8;
  BYTE4(v64[2]) = 1;
  HIDWORD(v65[1]) = 8;
  v65[0] = &v65[2];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&__src, v85, v66);
  v86 = v88;
  v87 = 0x800000000;
  if (v71)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v86, &v70);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v73, v77, v64);
  v78 = v80;
  v79 = 0x800000000;
  if (LODWORD(v65[1]))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v78, v65);
  }

  v15 = v84;
  if (v84 == 1)
  {
    v106 = v110;
    v16 = HIDWORD(v82);
    if (HIDWORD(v82))
    {
      memmove(v110, __src, 8 * HIDWORD(v82));
    }
  }

  else
  {
    v106 = __src;
    __src = v85;
    v16 = HIDWORD(v82);
  }

  v107 = __PAIR64__(v16, v82);
  v108 = v83;
  v109 = v15;
  v82 = 8;
  v83 = 0;
  v84 = 1;
  v111 = v113;
  v112 = 0x800000000;
  if (v87)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v111, &v86);
  }

  v17 = v76;
  if (v76 == 1)
  {
    v98 = v102;
    v18 = HIDWORD(v74);
    if (HIDWORD(v74))
    {
      memmove(v102, v73, 8 * HIDWORD(v74));
    }
  }

  else
  {
    v98 = v73;
    v73 = v77;
    v18 = HIDWORD(v74);
  }

  v99 = __PAIR64__(v18, v74);
  v100 = v75;
  v101 = v17;
  v74 = 8;
  v75 = 0;
  v76 = 1;
  v103 = v105;
  v104 = 0x800000000;
  if (v79)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v103, &v78);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v170, v174, &v106);
  v175 = v177;
  v176 = 0x800000000;
  if (v112)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v175, &v111);
  }

  v19 = v101;
  if (v101 == 1)
  {
    v162 = v166;
    v20 = HIDWORD(v99);
    if (HIDWORD(v99))
    {
      memmove(v166, v98, 8 * HIDWORD(v99));
    }
  }

  else
  {
    v162 = v98;
    v98 = v102;
    v20 = HIDWORD(v99);
  }

  v163 = __PAIR64__(v20, v99);
  v164 = v100;
  v165 = v19;
  v99 = 8;
  v100 = 0;
  v101 = 1;
  v167 = v169;
  v168 = 0x800000000;
  if (v104)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v167, &v103);
  }

  v21 = v173;
  if (v173 == 1)
  {
    v89 = v94;
    v22 = HIDWORD(v171);
    if (HIDWORD(v171))
    {
      memmove(v94, v170, 8 * HIDWORD(v171));
    }
  }

  else
  {
    v89 = v170;
    v170 = v174;
    v22 = HIDWORD(v171);
  }

  v90 = v171;
  v91 = v22;
  v92 = v172;
  v93 = v21;
  v171 = 8;
  v172 = 0;
  v173 = 1;
  v95 = v97;
  v96 = 0x800000000;
  if (v176)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v95, &v175);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v178, v181, &v89);
  v182 = v184;
  v183 = 0x800000000;
  if (v96)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v182, &v95);
  }

  v23 = v180;
  if (v180 == 1)
  {
    *&v154 = v157;
    v24 = HIDWORD(v178);
    if (HIDWORD(v178))
    {
      memmove(v157, v178, 8 * HIDWORD(v178));
    }
  }

  else
  {
    *&v154 = v178;
    *&v178 = v181;
    v24 = HIDWORD(v178);
  }

  *(&v154 + 1) = __PAIR64__(v24, DWORD2(v178));
  v155 = v179;
  v156 = v23;
  *(&v178 + 1) = 8;
  v179 = 0;
  v180 = 1;
  v158 = v160;
  v159 = 0x800000000;
  if (v183)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v158, &v182);
  }

  if (v182 != v184)
  {
    free(v182);
  }

  if ((v180 & 1) == 0)
  {
    free(v178);
  }

  v25 = v165;
  if (v165 == 1)
  {
    v201 = v205;
    v26 = HIDWORD(v163);
    if (HIDWORD(v163))
    {
      memmove(v205, v162, 8 * HIDWORD(v163));
    }
  }

  else
  {
    v201 = v162;
    v162 = v166;
    v26 = HIDWORD(v163);
  }

  v202 = __PAIR64__(v26, v163);
  v203 = v164;
  v204 = v25;
  v163 = 8;
  v164 = 0;
  v165 = 1;
  v206 = v208;
  v207 = 0x800000000;
  if (v168)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v206, &v167);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v178, v181, &v201);
  v182 = v184;
  v183 = 0x800000000;
  if (v207)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v182, &v206);
  }

  v27 = v180;
  if (v180 == 1)
  {
    v209 = v213;
    v28 = HIDWORD(v178);
    if (HIDWORD(v178))
    {
      memmove(v213, v178, 8 * HIDWORD(v178));
    }
  }

  else
  {
    v209 = v178;
    *&v178 = v181;
    v28 = HIDWORD(v178);
  }

  v210 = __PAIR64__(v28, DWORD2(v178));
  v211 = v179;
  v212 = v27;
  *(&v178 + 1) = 8;
  v179 = 0;
  v180 = 1;
  v214 = v216;
  v215 = 0x800000000;
  if (v183)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v214, &v182);
  }

  if (v182 != v184)
  {
    free(v182);
  }

  if ((v180 & 1) == 0)
  {
    free(v178);
  }

  v29 = v156;
  if (v156 == 1)
  {
    *&v178 = v181;
    v30 = HIDWORD(v154);
    if (HIDWORD(v154))
    {
      memmove(v181, v154, 8 * HIDWORD(v154));
    }
  }

  else
  {
    *&v178 = v154;
    *&v154 = v157;
    v30 = HIDWORD(v154);
  }

  *(&v178 + 1) = __PAIR64__(v30, DWORD2(v154));
  v179 = v155;
  v180 = v29;
  *(&v154 + 1) = 8;
  v155 = 0;
  v156 = 1;
  v182 = v184;
  v183 = 0x800000000;
  if (v159)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v182, &v158);
  }

  v31 = v212;
  if (v212 == 1)
  {
    v185 = v189;
    v32 = HIDWORD(v210);
    if (HIDWORD(v210))
    {
      memmove(v189, v209, 8 * HIDWORD(v210));
    }
  }

  else
  {
    v185 = v209;
    v209 = v213;
    v32 = HIDWORD(v210);
  }

  v186 = __PAIR64__(v32, v210);
  v187 = v211;
  v188 = v31;
  v210 = 8;
  v211 = 0;
  v212 = 1;
  v190 = v192;
  v191 = 0x800000000;
  if (v215)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v190, &v214);
  }

  if (v214 != v216)
  {
    free(v214);
  }

  if ((v212 & 1) == 0)
  {
    free(v209);
  }

  if (v206 != v208)
  {
    free(v206);
  }

  if ((v204 & 1) == 0)
  {
    free(v201);
  }

  if (v158 != v160)
  {
    free(v158);
  }

  if ((v156 & 1) == 0)
  {
    free(v154);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if ((v93 & 1) == 0)
  {
    free(v89);
  }

  if (v167 != v169)
  {
    free(v167);
  }

  if ((v165 & 1) == 0)
  {
    free(v162);
  }

  if (v175 != v177)
  {
    free(v175);
  }

  if ((v173 & 1) == 0)
  {
    free(v170);
  }

  v33 = v180;
  if (v180 == 1)
  {
    v146 = v150;
    v34 = HIDWORD(v178);
    if (HIDWORD(v178))
    {
      memmove(v150, v178, 8 * HIDWORD(v178));
    }
  }

  else
  {
    v146 = v178;
    *&v178 = v181;
    v34 = HIDWORD(v178);
  }

  v147 = __PAIR64__(v34, DWORD2(v178));
  v148 = v179;
  v149 = v33;
  *(&v178 + 1) = 8;
  v179 = 0;
  v180 = 1;
  v151 = v153;
  v152 = 0x800000000;
  if (v183)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v151, &v182);
  }

  v35 = v188;
  if (v188 == 1)
  {
    v138 = v143;
    v36 = HIDWORD(v186);
    if (HIDWORD(v186))
    {
      memmove(v143, v185, 8 * HIDWORD(v186));
    }
  }

  else
  {
    v138 = v185;
    v185 = v189;
    v36 = HIDWORD(v186);
  }

  v139 = v186;
  v140 = v36;
  v141 = v187;
  v142 = v35;
  v186 = 8;
  v187 = 0;
  v188 = 1;
  v144[0] = v145;
  v144[1] = 0x800000000;
  if (v191)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v144, &v190);
  }

  if ((llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v151, v144) & 1) == 0)
  {
    do
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v61, *(v151 + 5 * v152 - 5));
      LODWORD(v152) = v152 - 1;
      if (v152)
      {
        llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>::traverseChild(&v146);
      }
    }

    while (!llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator==(&v151, v144));
  }

  v37 = v149;
  if (v149 == 1)
  {
    *&v154 = v157;
    v38 = HIDWORD(v147);
    if (HIDWORD(v147))
    {
      memmove(v157, v146, 8 * HIDWORD(v147));
    }
  }

  else
  {
    *&v154 = v146;
    v146 = v150;
    v38 = HIDWORD(v147);
  }

  *(&v154 + 1) = __PAIR64__(v38, v147);
  v155 = v148;
  v156 = v37;
  v147 = 8;
  v148 = 0;
  v149 = 1;
  v158 = v160;
  v159 = 0x800000000;
  if (v152)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v158, &v151);
  }

  v161 = &v61;
  if (v144[0] != v145)
  {
    free(v144[0]);
  }

  if ((v142 & 1) == 0)
  {
    free(v138);
  }

  if (v151 != v153)
  {
    free(v151);
  }

  if ((v149 & 1) == 0)
  {
    free(v146);
  }

  v39 = v109;
  if (v109 == 1)
  {
    v122 = v126;
    v40 = HIDWORD(v107);
    if (HIDWORD(v107))
    {
      memmove(v126, v106, 8 * HIDWORD(v107));
    }
  }

  else
  {
    v122 = v106;
    v106 = v110;
    v40 = HIDWORD(v107);
  }

  v123 = __PAIR64__(v40, v107);
  v124 = v108;
  v125 = v39;
  v107 = 8;
  v108 = 0;
  v109 = 1;
  v127 = v129;
  v128 = 0x800000000;
  if (v112)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v127, &v111);
  }

  v41 = v156;
  if (v156 == 1)
  {
    v114 = v118;
    v42 = HIDWORD(v154);
    if (HIDWORD(v154))
    {
      memmove(v118, v154, 8 * HIDWORD(v154));
    }
  }

  else
  {
    v114 = v154;
    *&v154 = v157;
    v42 = HIDWORD(v154);
  }

  v115 = __PAIR64__(v42, DWORD2(v154));
  v116 = v155;
  v117 = v41;
  *(&v154 + 1) = 8;
  v155 = 0;
  v156 = 1;
  v119 = v121;
  v120 = 0x800000000;
  if (v159)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v119, &v158);
  }

  v43 = v125;
  if (v125 == 1)
  {
    v201 = v205;
    v44 = HIDWORD(v123);
    if (HIDWORD(v123))
    {
      memmove(v205, v122, 8 * HIDWORD(v123));
    }
  }

  else
  {
    v201 = v122;
    v122 = v126;
    v44 = HIDWORD(v123);
  }

  v202 = __PAIR64__(v44, v123);
  v203 = v124;
  v204 = v43;
  v123 = 8;
  v124 = 0;
  v125 = 1;
  v206 = v208;
  v207 = 0x800000000;
  if (v128)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v206, &v127);
  }

  v45 = v117;
  if (v117 == 1)
  {
    v193 = v197;
    v46 = HIDWORD(v115);
    if (HIDWORD(v115))
    {
      memmove(v197, v114, 8 * HIDWORD(v115));
    }
  }

  else
  {
    v193 = v114;
    v114 = v118;
    v46 = HIDWORD(v115);
  }

  v194 = __PAIR64__(v46, v115);
  v195 = v116;
  v196 = v45;
  v115 = 8;
  v116 = 0;
  v117 = 1;
  v198 = v200;
  v199 = 0x800000000;
  if (v120)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v198, &v119);
  }

  v47 = v204;
  if (v204 == 1)
  {
    v89 = v94;
    v48 = HIDWORD(v202);
    if (HIDWORD(v202))
    {
      memmove(v94, v201, 8 * HIDWORD(v202));
    }
  }

  else
  {
    v89 = v201;
    v201 = v205;
    v48 = HIDWORD(v202);
  }

  v90 = v202;
  v91 = v48;
  v92 = v203;
  v93 = v47;
  v202 = 8;
  v203 = 0;
  v204 = 1;
  v95 = v97;
  v96 = 0x800000000;
  if (v207)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v95, &v206);
  }

  v49 = v196;
  if (v196 == 1)
  {
    v209 = v213;
    v50 = HIDWORD(v194);
    if (HIDWORD(v194))
    {
      memmove(v213, v193, 8 * HIDWORD(v194));
    }
  }

  else
  {
    v209 = v193;
    v193 = v197;
    v50 = HIDWORD(v194);
  }

  v210 = __PAIR64__(v50, v194);
  v211 = v195;
  v212 = v49;
  v194 = 8;
  v195 = 0;
  v196 = 1;
  v214 = v216;
  v215 = 0x800000000;
  if (v199)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v214, &v198);
    v49 = v212;
  }

  if (v49)
  {
    v130 = v134;
    v51 = HIDWORD(v210);
    if (HIDWORD(v210))
    {
      memmove(v134, v209, 8 * HIDWORD(v210));
    }
  }

  else
  {
    v130 = v209;
    v209 = v213;
    v51 = HIDWORD(v210);
  }

  v131 = __PAIR64__(v51, v210);
  v132 = v211;
  v133 = v49;
  v210 = 8;
  v211 = 0;
  v212 = 1;
  v135 = v137;
  v136 = 0x800000000;
  if (v215)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v135, &v214);
  }

  if (v214 != v216)
  {
    free(v214);
  }

  if ((v212 & 1) == 0)
  {
    free(v209);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if ((v93 & 1) == 0)
  {
    free(v89);
  }

  if (v198 != v200)
  {
    free(v198);
  }

  if ((v196 & 1) == 0)
  {
    free(v193);
  }

  if (v206 != v208)
  {
    free(v206);
  }

  if ((v204 & 1) == 0)
  {
    free(v201);
  }

  v52 = v161;
  v53 = v133;
  if (v133 == 1)
  {
    v89 = v94;
    v54 = HIDWORD(v131);
    if (HIDWORD(v131))
    {
      memmove(v94, v130, 8 * HIDWORD(v131));
    }
  }

  else
  {
    v89 = v130;
    v130 = v134;
    v54 = HIDWORD(v131);
  }

  v90 = v131;
  v91 = v54;
  v92 = v132;
  v93 = v53;
  v131 = 8;
  v132 = 0;
  v133 = 1;
  v95 = v97;
  v96 = 0x800000000;
  if (v136)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(&v95, &v135);
  }

  v97[40] = v52;
  if (v135 != v137)
  {
    free(v135);
  }

  if ((v133 & 1) == 0)
  {
    free(v130);
  }

  if (v119 != v121)
  {
    free(v119);
  }

  if ((v117 & 1) == 0)
  {
    free(v114);
  }

  if (v127 != v129)
  {
    free(v127);
  }

  if ((v125 & 1) == 0)
  {
    free(v122);
  }

  if (v158 != v160)
  {
    free(v158);
  }

  if ((v156 & 1) == 0)
  {
    free(v154);
  }

  if (v190 != v192)
  {
    free(v190);
  }

  if ((v188 & 1) == 0)
  {
    free(v185);
  }

  if (v182 != v184)
  {
    free(v182);
  }

  if ((v180 & 1) == 0)
  {
    free(v178);
  }

  if (v103 != v105)
  {
    free(v103);
  }

  if ((v101 & 1) == 0)
  {
    free(v98);
  }

  if (v111 != v113)
  {
    free(v111);
  }

  if ((v109 & 1) == 0)
  {
    free(v106);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if ((v93 & 1) == 0)
  {
    free(v89);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  if ((v76 & 1) == 0)
  {
    free(v73);
  }

  if (v86 != v88)
  {
    free(v86);
  }

  if ((v84 & 1) == 0)
  {
    free(__src);
  }

  if (v65[0] != &v65[2])
  {
    free(v65[0]);
  }

  if ((BYTE4(v64[2]) & 1) == 0)
  {
    free(v64[0]);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  if ((v68 & 1) == 0)
  {
    free(v66[0]);
  }

  v55 = v61;
  if (v62)
  {
    v56 = v61 + 8 * v62;
    do
    {
      v57 = *(v56 - 1);
      v56 -= 8;
      *&v154 = v57;
      v89 = *(*(v11 + 192) + 8);
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(v11 + 160, &v154, &v89, &v178);
      v59 = v154 + 32;
      for (i = *(v154 + 40); i != v59; i = *(i + 8))
      {
      }
    }

    while (v56 != v55);
    v55 = v61;
  }

  if (v55 != &v63)
  {
    free(v55);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::InsertIntoBucketImpl<mlir::Block *>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5 + 1;
}

uint64_t mlir::SymbolTable::lookupSymbolIn(uint64_t a1, const char *a2, const llvm::Twine *a3)
{
  v4 = *(***(a1 + 24) + 32);
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  v5 = mlir::StringAttr::get(v4, v8, a3);
  return mlir::SymbolTable::lookupSymbolIn(a1, v5, v6);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](uint64_t a1, unint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 4) = 0;
  }

  return v5 + 1;
}

void anonymous namespace::ByteCodeLiveRange::unionWith(uint64_t *a1, uint64_t *a2)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v23 = v25;
  v4 = *(v22 + 272) != 0;
  v5 = *(v22 + 276);
  v24 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(&v23, v22 + 8 * v4, v5);
  v6 = *(v22 + 272);
  if (v6)
  {
    while (v24 - 1 < v6)
    {
      v7 = *(*(v23 + 2 * (v24 - 1)) + 8 * *(v23 + 4 * (v24 - 1) + 3));
      llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(&v23, v7 & 0xFFFFFFFFFFFFFFC0, (v7 & 0x3F) + 1);
    }
  }

  v18 = *a2;
  v19 = v21;
  v8 = *(v18 + 276);
  v9 = *(v18 + 272) != 0;
  v20 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(&v19, v18 + 8 * v9, v8 | (v8 << 32));
  while (1)
  {
    v10 = v23;
    v11 = v23 + 16 * v24;
    if (!v24 || *(v23 + 3) >= *(v23 + 2))
    {
      break;
    }

    v12 = *(v11 - 1);
    v13 = v19 + 16 * v20;
    if (v12 == *(v13 - 1) && *(v11 - 2) == *(v13 - 2))
    {
      goto LABEL_16;
    }

LABEL_13:
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(*a1, *(*(v11 - 2) + 16 * v12), *(*(v11 - 2) + 16 * v12 + 8));
    v14 = v23;
    v15 = v23 + 16 * v24;
    v16 = *(v15 - 1) + 1;
    *(v15 - 1) = v16;
    if (v16 == v14[4 * v24 - 2])
    {
      v17 = *(v22 + 272);
      if (v17)
      {
        llvm::IntervalMapImpl::Path::moveRight(&v23, v17);
      }
    }
  }

  if (v20 && *(v19 + 3) < *(v19 + 2))
  {
    v12 = *(v11 - 1);
    goto LABEL_13;
  }

LABEL_16:
  if (v19 != v21)
  {
    free(v19);
    v10 = v23;
  }

  if (v10 != v25)
  {
    free(v10);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(uint64_t a1, uint64_t a2, unint64_t *a3, _WORD *a4)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a2, *(a2 + 16), *a3, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::InsertIntoBucketImpl<mlir::Value>(a2, a3, v12);
    v9 = result;
    *result = *a3;
    *(result + 8) = *a4;
    v10 = 1;
  }

  v11 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 16 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, unint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), *a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t *llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 2;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 4) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 2;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_0>(uint64_t **result, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = a2 - 16;
  if (v2)
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v6 = result;
    v7 = 0;
    v8 = a2 - 16;
    do
    {
      v9 = v4;
      if (!v7)
      {
        goto LABEL_11;
      }

      v10 = *(a2 - 8) & 7;
      v11 = v3;
      v12 = v7;
      if (v10 != 6)
      {
        v13 = (5 - v10);
        v9 = v8;
        v12 = v7 - v13;
        if (v7 <= v13)
        {
          goto LABEL_11;
        }

        v11 = v3 - 16 * v13;
      }

      v9 = v11 - 24 * v12;
LABEL_11:
      v14 = *v6;
      v24 = v9;
      v16 = *v14;
      v15 = v14[1];
      v17 = (*v15)++;
      v23 = v17;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v22, v16, &v24, &v23);
      v18 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((*v18)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        v19 = *(*v18[1] + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v20 = v14[2];
          goto LABEL_16;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
        {
          v20 = v14[3];
LABEL_16:
          v21 = (*v20)++;
          v23 = v21;
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v22, v16 + 24, &v24, &v23);
        }
      }

      ++v7;
      v8 -= 16;
    }

    while (v2 != v7);
  }

  return result;
}

void *llvm::detail::UniqueFunctionBase<void,mlir::Operation *>::CallImpl<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_1>(uint64_t *a1, uint64_t a2)
{
  v21 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = (*v4)++;
  v20 = v5;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v3, &v21, &v20, v19);
  v6 = *(v21 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = ((v21 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21 + 40);
    v8 = v7 + 24 * (v6 & 0x7FFFFF);
    do
    {
      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
        v10 = i - 8;
        if (!i)
        {
          v10 = 0;
        }

        v11 = v10 + 32;
        for (j = *(v10 + 40); j != v11; j = *(j + 8))
        {
          v13 = a1[2];
          v14 = v13[3];
          if ((v14 & 2) == 0)
          {
            v13 = *v13;
          }

          (*(v14 & 0xFFFFFFFFFFFFFFF8))(v13, j);
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  v15 = a1[3];
  v16 = a1[1];
  v17 = (*v16)++;
  v20 = v17;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v15, &v21, &v20, v19);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void llvm::function_ref<void ()(mlir::Block *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2>(uint64_t *a1, void *a2)
{
  v4 = *a1;
  *&v37[0] = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::doFind<mlir::Block const*>((v4 + 8), v37);
  v6 = *(v4 + 24);
  v7 = *(v4 + 8) + 320 * v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v4 + 8) + 320 * v6;
  }

  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 8;
  }

  v40 = v9;
  v10 = *(a1 + 3);
  v37[0] = *(a1 + 1);
  v37[1] = v10;
  v38 = a1[5];
  v39 = &v40;
  v13 = *(v9 + 8);
  v12 = v9 + 8;
  v11 = v13;
  v14 = 8;
  if (*(v12 + 20))
  {
    v14 = 12;
  }

  v15 = *(v12 + v14);
  if (v15)
  {
    v16 = 8 * v15;
    v17 = v11;
    while (*v17 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v17 = v11;
  }

  v18 = &v11[v15];
  if (v17 != v18)
  {
    v19 = *v17;
LABEL_17:
    v36 = v19;
    if (mlir::Value::getParentRegion(&v36) == (a2[3] & 0xFFFFFFFFFFFFFFF8))
    {
    }

    while (++v17 != v18)
    {
      v19 = *v17;
      if (*v17 < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v17 != v18)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

LABEL_22:
  v20 = *((a2[3] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v20)
  {
    v21 = (v20 - 8);
  }

  else
  {
    v21 = 0;
  }

  if (v21 == a2)
  {
    v33 = a2[6];
    v34 = a2[7];
    while (v33 != v34)
    {
      v35 = *v33++;
    }
  }

  v22 = a2 + 4;
  v23 = a2[5];
  if (v23 != v22)
  {
    while (1)
    {
      v24 = *(v23 + 36);
      v25 = v24 ? v23 - 16 : 0;
      if (v24)
      {
        break;
      }

LABEL_38:
      v23 = *(v23 + 8);
      if (v23 == v22)
      {
        return;
      }
    }

    v26 = 0;
    v27 = (v23 - 16);
    while (1)
    {
      v28 = v25;
      if (v26)
      {
        v29 = *(v23 - 8) & 7;
        v30 = v23 - 16;
        v31 = v26;
        if (v29 == 6)
        {
          goto LABEL_36;
        }

        v32 = (5 - v29);
        v28 = v27;
        v31 = v26 - v32;
        if (v26 > v32)
        {
          break;
        }
      }

LABEL_37:
      ++v26;
      v27 -= 2;
      if (v24 == v26)
      {
        goto LABEL_38;
      }
    }

    v30 = v23 - 16 - 16 * v32;
LABEL_36:
    v28 = (v30 - 24 * v31);
    goto LABEL_37;
  }
}

void anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2::operator() const(mlir::Block *)::{lambda(mlir::Value,mlir::Operation *)#1}::operator()(uint64_t result, void *a2, mlir::Operation *a3)
{
  v23 = a3;
  if (**result == a2)
  {
    return;
  }

  v5 = *(result + 8);
  EndOperation = 0;
  v7 = EndOperation;
  if (!v6)
  {
    v25 = EndOperation;
    v9 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(v5 + 12) > v10 >> 3)
    {
      goto LABEL_6;
    }

    v9 = *(v5 + 8);
    v7 = v25;
LABEL_6:
    *(v5 + 8) = v9 + 1;
    if (*v7 != -4096)
    {
      --*(v5 + 12);
    }

    *v7 = a2;
    operator new();
  }

  v8 = *(EndOperation + 1);
  v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::operator[](*(result + 24), &v23);
  v12 = *(result + 32);
  EndOperation = mlir::LivenessBlockInfo::getEndOperation(**(result + 40), a2, v23);
  v25 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v12, &EndOperation, &v25))
  {
    v14 = *(v25 + 2);
  }

  else
  {
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::InsertIntoBucketImpl<mlir::Operation *>(v12, &EndOperation, v25);
    v14 = 0;
    *v15 = EndOperation;
    *(v15 + 2) = 0;
  }

  llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(v8, v11, v14);
  v16 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
  if ((*v16)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v17 = *(*v16[1] + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v21 = *(v7 + 20);
      v19 = v7 + 20;
      v18 = v21;
    }

    else if (v17 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v22 = *(v7 + 28);
      v19 = v7 + 28;
      v18 = v22;
    }

    else
    {
      if (v17 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return;
      }

      v20 = *(v7 + 36);
      v19 = v7 + 36;
      v18 = v20;
    }

    if ((v18 & 1) == 0)
    {
      *v19 = 1;
    }

    *(v19 - 1) = 0;
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *&v46[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 272) || (v5 = *(a1 + 276), v5 == 16))
  {
    v39 = a1;
    v40 = v42;
    v41 = 0x400000000;
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(&v39, a2);
    v6 = v39;
    if (*(v39 + 272))
    {
      llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(&v39, a2, a3);
    }

    else
    {
      v7 = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(v39, v40 + 4 * v41 - 1, *(v39 + 276), a2, a3);
      if (v7 > 0x10)
      {
        v11 = 0;
        v12 = 0;
        LODWORD(v13) = 0;
        v14 = *(v6 + 276) + 1;
        v15 = *(v40 + 4 * v41 - 1);
        v16 = v14 >> 1;
        v17 = v14 & 1;
        LODWORD(v18) = 2;
        do
        {
          if (v11 >= v17)
          {
            v19 = v16;
          }

          else
          {
            v19 = v16 + 1;
          }

          *&v46[4 * v11 - 4] = v19;
          v20 = v15 - v12;
          v12 += v19;
          v21 = v18 == 2;
          v22 = v12 > v15;
          if (v21 && v22)
          {
            v18 = v11;
          }

          else
          {
            v18 = v18;
          }

          if (v21 && v22)
          {
            v13 = v20;
          }

          else
          {
            v13 = v13;
          }

          ++v11;
        }

        while (v11 != 2);
        v23 = 0;
        v24 = 0;
        v25 = &v43;
        v26 = &v45;
        --*&v46[4 * v18 - 4];
        v43 = 0;
        v44 = 0;
        v27 = 0uLL;
        do
        {
          v28 = v23;
          v29 = *(v6 + 280);
          v30 = *v29;
          if (*v29)
          {
            *v29 = *v30;
          }

          else
          {
            v30 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v29 + 1, 0xC0uLL, 6);
            v27 = 0uLL;
          }

          *(v30 + 160) = v27;
          *(v30 + 176) = v27;
          *(v30 + 128) = v27;
          *(v30 + 144) = v27;
          *(v30 + 96) = v27;
          *(v30 + 112) = v27;
          *(v30 + 64) = v27;
          *(v30 + 80) = v27;
          *(v30 + 32) = v27;
          *(v30 + 48) = v27;
          *v30 = v27;
          *(v30 + 16) = v27;
          v31 = *v26;
          if (*v26)
          {
            v32 = (v30 + 176);
            v33 = *v26;
            v34 = v30;
            v35 = v24;
            do
            {
              *v34++ = *(v6 + 16 * v35);
              *v32++ = *(v6 + 256 + v35++);
              --v33;
            }

            while (v33);
          }

          v24 += v31;
          *v25 = v30 & 0xFFFFFFFFFFFFFFC0 | (v31 - 1);
          v23 = 1;
          v25 = &v44;
          v26 = v46;
        }

        while ((v28 & 1) == 0);
        v36 = 0;
        *(v6 + 272) = 1;
        *v6 = 0u;
        *(v6 + 16) = 0u;
        *(v6 + 32) = 0u;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0u;
        *(v6 + 112) = 0u;
        *(v6 + 128) = 0u;
        *(v6 + 144) = 0u;
        *(v6 + 160) = 0u;
        *(v6 + 176) = 0u;
        *(v6 + 192) = 0u;
        *(v6 + 208) = 0u;
        *(v6 + 224) = 0u;
        *(v6 + 240) = 0u;
        *(v6 + 256) = 0;
        do
        {
          v37 = *(&v43 + v36);
          v38 = v6 + 8 * v36;
          *(v38 + 136) = *((v37 & 0xFFFFFFFFFFFFFFC0) + 16 * (*&v46[4 * v36 - 4] - 1) + 8);
          *(v38 + 8) = v37;
          ++v36;
        }

        while (v36 != 2);
        *v6 = *(v43 & 0xFFFFFFFFFFFFFFC0);
        *(v6 + 276) = 2;
        llvm::IntervalMapImpl::Path::replaceRoot(&v40, v6 + 8, 2, v18 | (v13 << 32));
        llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(&v39, a2, a3);
      }

      else
      {
        *(v6 + 276) = v7;
        *(v40 + 2) = v7;
      }
    }

    if (v40 != v42)
    {
      free(v40);
    }
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = (a1 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 2;
        if (v10 >= a2)
        {
          break;
        }

        if (v5 == ++v8)
        {
          LODWORD(v8) = *(a1 + 276);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    LODWORD(v39) = v8;
    *(a1 + 276) = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(a1, &v39, v5, a2, a3);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 40 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 40 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((40 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 40 * v10 - 40;
      v13 = vdupq_n_s64(v12 / 0x28);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[5] = -4096;
        }

        v11 += 2;
        result += 10;
      }

      while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 40 * v3;
      v16 = v4 + 8;
      do
      {
        v17 = *(v16 - 8);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v27 = 0;
          v18 = v27;
          *v27 = v17;
          v19 = *v16;
          *v16 = 0;
          v18[1] = v19;
          v20 = *(v16 + 8);
          *(v18 + 29) = *(v16 + 21);
          *(v18 + 1) = v20;
          ++*(a1 + 8);
          v21 = *v16;
          *v16 = 0;
          if (v21)
          {
            std::default_delete<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::operator()[abi:nn200100](v21);
          }
        }

        v16 += 40;
        v15 -= 40;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 40 * v22 - 40;
    v25 = vdupq_n_s64(v24 / 0x28);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v26.i8[0])
      {
        *result = -4096;
      }

      if (v26.i8[4])
      {
        result[5] = -4096;
      }

      v23 += 2;
      result += 10;
    }

    while (((v24 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v23);
  }

  return result;
}

void std::default_delete<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::operator()[abi:nn200100](uint64_t a1)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 272);
  if (v2)
  {
    v28 = v30;
    v29 = 0x400000000;
    v25 = v27;
    v26 = 0x400000000;
    if (*(a1 + 276))
    {
      v3 = 0;
      do
      {
        llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::NodeRef,true>::push_back(&v28, *(a1 + 8 + 8 * v3++));
      }

      while (v3 != *(a1 + 276));
      v2 = *(a1 + 272);
      LODWORD(v4) = v29;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    v5 = v2 - 1;
    if (v2 != 1)
    {
      while (1)
      {
        v6 = v28;
        if (v4)
        {
          v7 = 0;
          do
          {
            v8 = 0;
            v9 = 8 * (v6[v7] & 0x3FLL) + 8;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::NodeRef,true>::push_back(&v25, *((*(v28 + v7) & 0xFFFFFFFFFFFFFFC0) + v8));
              v8 += 8;
            }

            while (v9 != v8);
            v6 = v28;
            v10 = (*(v28 + v7) & 0xFFFFFFFFFFFFFFC0);
            v11 = *(a1 + 280);
            *v10 = *v11;
            *v11 = v10;
            ++v7;
          }

          while (v7 != v4);
        }

        LODWORD(v29) = 0;
        if (v6 == v30)
        {
          break;
        }

        v12 = HIDWORD(v29);
        if (v25 == v27)
        {
          goto LABEL_17;
        }

        v28 = v25;
        v25 = v6;
        v29 = v26;
        LODWORD(v26) = 0;
        HIDWORD(v26) = v12;
        LODWORD(v4) = v29;
LABEL_37:
        if (!--v5)
        {
          goto LABEL_38;
        }
      }

      v12 = HIDWORD(v29);
LABEL_17:
      if (v12 >= v26)
      {
        v13 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v26, 8);
        v13 = v29;
        if (HIDWORD(v26) < v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v29, 8);
          v13 = v29;
        }
      }

      v14 = v26;
      if (v13 >= v26)
      {
        v4 = v26;
      }

      else
      {
        v4 = v13;
      }

      if (v4)
      {
        v15 = 0;
        do
        {
          v16 = v25;
          v17 = *(v28 + v15);
          *(v28 + v15) = *(v25 + v15);
          *&v16[v15] = v17;
          v15 += 8;
        }

        while (8 * v4 != v15);
        v13 = v29;
        v14 = v26;
      }

      v18 = v13 - v14;
      if (v13 <= v14)
      {
        v19 = v14 - v13;
        if (v14 <= v13)
        {
          LODWORD(v4) = v13;
        }

        else
        {
          if (v4 != v14)
          {
            memcpy(v28 + 8 * v13, v25 + 8 * v4, 8 * (v14 - v4));
            v13 = v29;
          }

          LODWORD(v26) = v4;
          LODWORD(v29) = v13 + v19;
          LODWORD(v4) = v13 + v19;
        }
      }

      else
      {
        if (v4 != v13)
        {
          memcpy(v25 + 8 * v14, v28 + 8 * v4, 8 * (v13 - v4));
          v14 = v26;
        }

        LODWORD(v26) = v18 + v14;
        LODWORD(v29) = v4;
      }

      goto LABEL_37;
    }

LABEL_38:
    if (v4)
    {
      v20 = v4;
      v21 = v28;
      v22 = *(a1 + 280);
      v23 = *v22;
      do
      {
        v24 = *v21++;
        *(v24 & 0xFFFFFFFFFFFFFFC0) = v23;
        *v22 = v24 & 0xFFFFFFFFFFFFFFC0;
        v23 = v24 & 0xFFFFFFFFFFFFFFC0;
        --v20;
      }

      while (v20);
    }

    if (v25 != v27)
    {
      free(v25);
    }

    if (v28 != v30)
    {
      free(v28);
    }

    *(a1 + 272) = 0;
    *(a1 + 240) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  *(a1 + 276) = 0;

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::NodeRef,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (!v5)
  {
LABEL_11:
    if (v5 == a3)
    {
      v11 = (a1 + 16 * a3);
      *v11 = a4;
      v11[1] = a5;
      *(a1 + a3 + 256) = 0;
      return (a3 + 1);
    }

    v12 = a1 + 256;
    if (!*(a1 + 256 + v5))
    {
      v13 = (a1 + 16 * v5);
      if (a5 + 1 == *v13)
      {
        *v13 = a4;
        return a3;
      }
    }

    if (a3 != 16)
    {
      v14 = a3;
      do
      {
        *(a1 + 16 * v14) = *(a1 + 16 * (v14 - 1));
        *(v12 + v14) = *(v12 + v14 - 1);
        --v14;
      }

      while (v5 != v14);
      v15 = (a1 + 16 * v5);
      *v15 = a4;
      v15[1] = a5;
      *(v12 + v5) = 0;
      return (a3 + 1);
    }

    return 17;
  }

  v6 = (v5 - 1);
  v7 = a1 + 256;
  if (*(a1 + 256 + v6) || (v8 = a1 + 16 * v6, v10 = *(v8 + 8), v9 = (v8 + 8), v10 + 1 != a4))
  {
    if (v5 == 16)
    {
      return 17;
    }

    goto LABEL_11;
  }

  *a2 = v6;
  if (v5 == a3 || *(v7 + v5) || a5 + 1 != *(a1 + 16 * v5))
  {
    *v9 = a5;
  }

  else
  {
    *v9 = *(a1 + 16 * v5 + 8);
    if (v5 + 1 != a3)
    {
      do
      {
        *(a1 + 16 * v5) = *(a1 + 16 * (v5 + 1));
        *(v7 + v5) = *(v7 + (v5 + 1));
        LODWORD(v5) = v5 + 1;
      }

      while (a3 - 1 != v5);
    }

    return (a3 - 1);
  }

  return a3;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 276);
  if (*(*a1 + 272))
  {
    if (v5)
    {
      v6 = 0;
      while (*(v4 + 136 + 8 * v6) < a2)
      {
        if (v5 == ++v6)
        {
          v6 = *(*a1 + 276);
          break;
        }
      }

      v7 = v5 | (v6 << 32);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 16) = 0;
    llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(a1 + 8, v4 + 8, v7);
    if (*(a1 + 16) && *(*(a1 + 8) + 12) < *(*(a1 + 8) + 8))
    {

      llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(a1, a2);
    }
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = (v4 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 2;
        if (v10 >= a2)
        {
          break;
        }

        if (v5 == ++v8)
        {
          v8 = *(*a1 + 276);
          break;
        }
      }

      v11 = v5 | (v8 << 32);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 16) = 0;
    v12 = a1 + 8;

    llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(v12, v4, v11);
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a1 + 8;
  v5 = *(a1 + 8) + 16 * (v3 - 1);
  v6 = *(*a1 + 272);
  v7 = *(*v5 + 8 * *(v5 + 12));
  v8 = v6 - v3;
  if (v6 != v3)
  {
    do
    {
      v9 = 0;
      v10 = v7 & 0xFFFFFFFFFFFFFFC0;
      do
      {
        v11 = v9;
        v12 = *((v7 & 0xFFFFFFFFFFFFFFC0) + 0x60 + 8 * v9++);
      }

      while (v12 < a2);
      v13 = v11;
      llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(v4, v10, (v7 & 0x3F | (v11 << 32)) + 1);
      v7 = *(v10 + 8 * v13);
      --v8;
    }

    while (v8);
  }

  v14 = 0;
  do
  {
    v15 = v14;
    v16 = *((v7 & 0xFFFFFFFFFFFFFFC0) + 16 * v14++ + 8);
  }

  while (v16 < a2);

  llvm::SmallVectorTemplateBase<llvm::IntervalMapImpl::Path::Entry,true>::push_back(v4, v7 & 0xFFFFFFFFFFFFFFC0, (v7 & 0x3F | (v15 << 32)) + 1);
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v105 = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  if (!v6 || (v7 = *(a1 + 1), *(v7 + 12) >= *(v7 + 8)))
  {
    llvm::IntervalMapImpl::Path::legalizeForInsert(a1 + 2, *(*a1 + 272));
    v7 = *(v5 + 1);
    v6 = v5[4];
  }

  v8 = v6;
  v9 = v7 + 16 * v6;
  v10 = *(v9 - 4);
  if (!v10)
  {
    v11 = *(v9 - 16);
    if (*v11 <= a2)
    {
      goto LABEL_19;
    }

    LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((v5 + 2), v8 - 1);
    if (!LeftSibling)
    {
      v10 = 0;
      **v5 = a2;
      goto LABEL_20;
    }

    if (*(LeftSibling + 176) || (v13 = LeftSibling & 0xFFFFFFFFFFFFFFC0, v14 = LeftSibling & 0x3F, v15 = ((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8), *((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8) + 1 != a2))
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

    llvm::IntervalMapImpl::Path::moveLeft(v5 + 2, v8 - 1);
    if (*v11 > a3 && (*(v11 + 176) || a3 + 1 != *v11))
    {
      v17 = v5[4];
      *v15 = a3;
      v18 = v17 - 1;
      if (v17 == 1)
      {
        return;
      }

      v19 = *(v5 + 1);
      v20 = 16 * v18;
      while (1)
      {
        v21 = v20 - 16;
        if (v20 == 16)
        {
          break;
        }

        v22 = v19 + v20;
        v23 = *(v22 - 16);
        v25 = v22 - 8;
        LODWORD(v22) = *(v22 - 8);
        v24 = *(v25 + 4);
        *(v23 + 8 * v24 + 96) = a3;
        LODWORD(v23) = v22 - 1;
        v20 = v21;
        if (v24 != v23)
        {
          return;
        }
      }

      goto LABEL_75;
    }

    a2 = *(v13 + 16 * v14);
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(v5);
    v7 = *(v5 + 1);
    v8 = v5[4];
    v10 = *(v7 + 16 * v8 - 4);
  }

LABEL_20:
  v26 = v7 + 16 * v8;
  v27 = *(v26 - 8);
  v28 = v10 == v27;
  v29 = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v26 - 16), (v26 - 4), v27, a2, a3);
  if (v29 >= 0xC)
  {
    v30 = v5[4] - 1;
    memset(v103, 0, 32);
    v31 = *(v5 + 1);
    v32 = *(v31 + 16 * v30 + 12);
    v33 = llvm::IntervalMapImpl::Path::getLeftSibling((v5 + 2), v30);
    v98 = a3;
    v95 = v33;
    if (v33)
    {
      v34 = (v33 & 0x3F) + 1;
      v104[0] = v34;
      v32 = (v34 + v32);
      v103[0] = v33 & 0xFFFFFFFFFFFFFFC0;
      v35 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v36 = v31 + 16 * v30;
    v37 = *(v36 + 8);
    v104[v35] = v37;
    v38 = v37 + v34;
    v39 = v35 + 1;
    *(v103 | (8 * v35)) = *v36;
    RightSibling = llvm::IntervalMapImpl::Path::getRightSibling((v5 + 2), v30);
    if (RightSibling)
    {
      v41 = (RightSibling & 0x3F) + 1;
      v104[v39] = v41;
      v38 += v41;
      v103[v39] = RightSibling & 0xFFFFFFFFFFFFFFC0;
      v39 = v35 | 2;
    }

    v96 = a2;
    v97 = v5;
    v99 = v30;
    if (v38 + 1 <= (11 * v39))
    {
      v42 = 0;
    }

    else
    {
      if (v39 == 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v39 - 1;
      }

      v104[v39] = v104[v42];
      v103[v39] = v103[v42];
      v104[v42] = 0;
      v43 = *(*v5 + 280);
      v44 = *v43;
      if (*v43)
      {
        *v43 = *v44;
      }

      else
      {
        v44 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v43 + 1, 0xC0uLL, 6);
      }

      *(v44 + 160) = 0u;
      *(v44 + 176) = 0u;
      *(v44 + 128) = 0u;
      *(v44 + 144) = 0u;
      *(v44 + 96) = 0u;
      *(v44 + 112) = 0u;
      *(v44 + 64) = 0u;
      *(v44 + 80) = 0u;
      *(v44 + 32) = 0u;
      *(v44 + 48) = 0u;
      v39 = (v39 + 1);
      *v44 = 0u;
      *(v44 + 16) = 0u;
      v103[v42] = v44;
    }

    v45 = v39;
    v46 = llvm::IntervalMapImpl::distribute(v39, v38, 0xBu, v104, v102, v32, 1);
    v47 = v39;
    v48 = v46;
    v100 = v46;
    v101 = v47 - 1;
    if (v47 != 1)
    {
      v94 = v42;
      v49 = v47 - 1;
      do
      {
        v50 = v104[v49];
        v51 = v102[v49];
        if (v50 != v51)
        {
          v52 = v49;
          do
          {
            if (!v52)
            {
              break;
            }

            v53 = *(&v103[4] + v52 + 1);
            v54 = llvm::IntervalMapImpl::NodeBase<std::pair<unsigned long long,unsigned long long>,char,11u>::adjustFromLeftSib(v103[v49], v50, *&v102[2 * v52 + 2], v53, v51 - v50);
            *(&v103[4] + v52 + 1) = v53 - v54;
            v50 = v104[v49] + v54;
            v104[v49] = v50;
            --v52;
          }

          while (v50 < v51);
        }

        --v49;
      }

      while (v49);
      v47 = v45;
      v42 = v94;
      v48 = v100;
      if (v45 >= 2)
      {
        v55 = 0;
        v56 = 1;
        do
        {
          v57 = v104[v55];
          v58 = v102[v55];
          if (v57 != v58)
          {
            v59 = v56;
            do
            {
              if (v47 == v59)
              {
                break;
              }

              v60 = v104[v59];
              v61 = llvm::IntervalMapImpl::NodeBase<std::pair<unsigned long long,unsigned long long>,char,11u>::adjustFromLeftSib(v103[v59], v60, v103[v55], v57, v57 - v58);
              v47 = v45;
              v104[v59] = v61 + v60;
              v57 = v104[v55] - v61;
              v104[v55] = v57;
              ++v59;
            }

            while (v57 < v58);
          }

          ++v55;
          ++v56;
        }

        while (v55 != v101);
      }
    }

    v5 = v97;
    if (v95)
    {
      llvm::IntervalMapImpl::Path::moveLeft((v97 + 8), v99);
      v47 = v45;
    }

    v62 = 0;
    v63 = v48;
    v64 = v47;
    v65 = v99;
    while (1)
    {
      v66 = v103[v62];
      v67 = v102[v62];
      v68 = v67 - 1;
      v69 = *(v66 + 16 * v68 + 8);
      if (v42 && v62 == v42)
      {
        v65 += llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(v97, v65, v66 & 0xFFFFFFFFFFFFFFC0 | v68, v69);
      }

      else
      {
        v70 = *(v97 + 8);
        *(v70 + 16 * v65 + 8) = v67;
        if (v65)
        {
          *(*(v70 + 16 * (v65 - 1)) + 8 * *(v70 + 16 * (v65 - 1) + 12)) = *(*(v70 + 16 * (v65 - 1)) + 8 * *(v70 + 16 * (v65 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v68;
          v71 = *(v97 + 8);
          v72 = 16 * v65;
          while (1)
          {
            v73 = v72 - 16;
            if (v72 == 16)
            {
              break;
            }

            v74 = v71 + v72;
            v75 = *(v74 - 16);
            v77 = v74 - 8;
            LODWORD(v74) = *(v74 - 8);
            v76 = *(v77 + 4);
            *(v75 + 8 * v76 + 96) = v69;
            LODWORD(v75) = v74 - 1;
            v72 = v73;
            if (v76 != v75)
            {
              goto LABEL_61;
            }
          }

          *(*v71 + 8 * *(v71 + 12) + 128) = v69;
        }
      }

LABEL_61:
      if (v62 + 1 == v64)
      {
        break;
      }

      llvm::IntervalMapImpl::Path::moveRight((v97 + 8), v65);
      --v63;
      ++v62;
    }

    if (v62 != v100)
    {
      do
      {
        llvm::IntervalMapImpl::Path::moveLeft((v97 + 8), v65);
      }

      while (!__CFADD__(v63++, 1));
    }

    v79 = *(v97 + 8);
    *(v79 + 16 * v65 + 12) = HIDWORD(v100);
    v80 = (v79 + 16 * *(v97 + 16));
    v81 = *--v80;
    v82 = *(v80 - 1);
    v28 = v81 == v82;
    a3 = v98;
    v29 = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v80 - 3), v80, v82, v96, v98);
  }

  v83 = v5[4];
  v84 = *(v5 + 1);
  *(v84 + 16 * (v83 - 1) + 8) = v29;
  if (v83 != 1)
  {
    v85 = v84 + 16 * (v83 - 2);
    *(*v85 + 8 * *(v85 + 12)) = *(*v85 + 8 * *(v85 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v29 - 1);
  }

  if (v28)
  {
    v86 = v5[4];
    v87 = v86 - 1;
    if (v86 != 1)
    {
      v19 = *(v5 + 1);
      v88 = 16 * v87;
      while (1)
      {
        v89 = v88 - 16;
        if (v88 == 16)
        {
          break;
        }

        v90 = v19 + v88;
        v91 = *(v90 - 16);
        v93 = v90 - 8;
        LODWORD(v90) = *(v90 - 8);
        v92 = *(v93 + 4);
        *(v91 + 8 * v92 + 96) = a3;
        LODWORD(v91) = v90 - 1;
        v88 = v89;
        if (v92 != v91)
        {
          return;
        }
      }

LABEL_75:
      *(*v19 + 8 * *(v19 + 12) + 128) = a3;
    }
  }
}

void llvm::IntervalMapImpl::Path::legalizeForInsert(unsigned int *this, unsigned int a2)
{
  if (!this[2] || *(*this + 12) >= *(*this + 8))
  {
    llvm::IntervalMapImpl::Path::moveLeft(this, a2);
    ++*(*this + 16 * a2 + 12);
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(uint64_t *a1)
{
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = v4 + 16 * v6;
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if (v9 == 1)
  {
    v10 = *(v5 + 280);
    *v8 = *v10;
    *v10 = v8;
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(a1, *(v5 + 272));
  }

  else
  {
    v11 = *(v7 - 4);
    if (v11 + 1 != v9)
    {
      do
      {
        *&v8[2 * v11] = *&v8[2 * v11 + 2];
        *(v8 + v11 + 176) = *(v8 + v11 + 177);
        ++v11;
      }

      while (v9 - 1 != v11);
      v3 = a1[1];
      v6 = *(a1 + 4);
      v9 = *(v3 + 16 * v6 - 8);
    }

    v12 = *(v5 + 272);
    *(v3 + 16 * v12 + 8) = v9 - 1;
    if (v12)
    {
      v13 = v3 + 16 * (v12 - 1);
      *(*v13 + 8 * *(v13 + 12)) = *(*v13 + 8 * *(v13 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v9 - 2);
      v3 = a1[1];
      v6 = *(a1 + 4);
    }

    if (*(v3 + 16 * v6 - 4) == v9 - 1)
    {
      v14 = *(v5 + 272);
      if (v14)
      {
        v15 = v8[2 * (v9 - 2) + 1];
        v16 = 16 * v14;
        while (1)
        {
          v17 = v16 - 16;
          if (v16 == 16)
          {
            break;
          }

          v18 = v3 + v16;
          v19 = *(v18 - 16);
          v21 = v18 - 8;
          LODWORD(v18) = *(v18 - 8);
          v20 = *(v21 + 4);
          *(v19 + 8 * v20 + 96) = v15;
          LODWORD(v19) = v18 - 1;
          v16 = v17;
          if (v20 != v19)
          {
            goto LABEL_13;
          }
        }

        *(*v3 + 8 * *(v3 + 12) + 128) = v15;
      }

LABEL_13:
      llvm::IntervalMapImpl::Path::moveRight(v2, v14);
    }
  }
}