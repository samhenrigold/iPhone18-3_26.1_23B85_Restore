void sub_213BDB18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3C0] = v65;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  MTLArgumentData::~MTLArgumentData(&STACK[0x4E8]);
  _Block_object_dispose(&a65, 8);
  STACK[0x3C0] = &STACK[0x230];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&STACK[0x3A0], STACK[0x3A8]);
  _Block_object_dispose(&STACK[0x338], 8);
  STACK[0x3C0] = &STACK[0x358];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  STACK[0x3C0] = &STACK[0x370];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  STACK[0x3C0] = &STACK[0x388];
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<FunctionDesc>::~__split_buffer(void **a1)
{
  std::__split_buffer<FunctionDesc>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionDesc>,FunctionDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 16);
      v9 = *(v7 + 48);
      v10 = *(v7 + 64);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = v9;
      *(a4 + 16) = v8;
      *(a4 + 64) = v10;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 112) = *(v7 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(a4 + 120) = *(v7 + 120);
      v7 += 136;
      a4 += 136;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<FunctionDesc>::destroy[abi:ne200100](a1, v5);
      v5 += 136;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::__split_buffer<FunctionDesc>::clear[abi:ne200100](void *result)
{
  v2 = result[1];
  for (i = result[2]; i != v2; i = result[2])
  {
    v4 = result[4];
    result[2] = i - 136;
    std::allocator<FunctionDesc>::destroy[abi:ne200100](v4, i - 136);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

__n128 std::vector<FunctionDesc>::__construct_one_at_end[abi:ne200100]<FunctionDesc const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *v4 = *a2;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>((v4 + 72), *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>((v4 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  result = *(a2 + 120);
  *(v4 + 120) = result;
  *(a1 + 8) = v4 + 136;
  return result;
}

void sub_213BDB5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<FunctionDesc>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<FunctionDesc>::__emplace_back_slow_path<FunctionDesc const&>(a1, a2);
  }

  else
  {
    std::vector<FunctionDesc>::__construct_one_at_end[abi:ne200100]<FunctionDesc const&>(a1, a2);
    result = v3 + 136;
  }

  a1[1] = result;
  return result;
}

uint64_t *std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<FunctionConstantDesc>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_213BDB6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_213BDB72C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<FunctionConstantDesc>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

llvm::DataLayout *llvm::DataLayout::DataLayout(llvm::DataLayout *this, const llvm::DataLayout *a2)
{
  *(this + 40) = xmmword_213C7D130;
  *(this + 9) = 0x1000000000;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 4) = this + 56;
  *(this + 8) = this + 80;
  *(this + 26) = 0;
  *(this + 216) = 0u;
  *(this + 29) = this + 248;
  *(this + 30) = 0x800000000;
  *(this + 47) = 0;
  *(this + 48) = this + 400;
  *(this + 49) = 0x800000000;
  llvm::DataLayout::operator=(this, a2);
  return this;
}

void sub_213BDB838(_Unwind_Exception *exception_object)
{
  v7 = v2;
  v9 = *(v1 + 384);
  if (v9 != v7)
  {
    free(v9);
  }

  v10 = *(v1 + 232);
  if (v10 != v6)
  {
    free(v10);
  }

  if (*(v1 + 231) < 0)
  {
    operator delete(*v5);
  }

  v11 = *(v1 + 64);
  if (v11 != v4)
  {
    free(v11);
  }

  v12 = *(v1 + 32);
  if (v12 != v3)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::DataLayout::operator=(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::clear(a1);
  std::string::operator=((a1 + 208), (a2 + 208));
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = *(a2 + 24);
  llvm::SmallVectorImpl<unsigned char>::operator=(a1 + 32, a2 + 32);
  llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(a1 + 64, a2 + 64);
  llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(a1 + 232, a2 + 232);
  llvm::SmallVectorImpl<unsigned int>::operator=(a1 + 384, a2 + 384);
  return a1;
}

uint64_t llvm::SmallVectorImpl<unsigned char>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, v4);
      }
    }

    else
    {
      if (*(a1 + 16) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, *(a1 + 8));
      }

      v6 = *(a2 + 8);
      if (v6 != v5)
      {
        memcpy((*a1 + v5), (*a2 + v5), v6 - v5);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4 - 2);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 8 * v5 - 2);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 16 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 16 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 16 * v5), (*a2 + 16 * v5), 16 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

void MTLArgumentData::MTLArgumentData(MTLArgumentData *this)
{
  *this &= 0x1000u;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 6) = 0u;
  operator new();
}

void sub_213BDBCF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 136);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v6 = *(a2 + 8);
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          memmove(*a1, v4, 4 * v6);
        }
      }

      else
      {
        if (*(a1 + 12) < v6)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v7)
        {
          memmove(*a1, v4, 4 * v7);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(a2 + 8) - v7;
        if (v8)
        {
          memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
        }
      }

      *(a1 + 8) = v6;
      *(a2 + 8) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<unsigned int>::assignRemote(a1, a2);
    }
  }

  return a1;
}

void **std::vector<FunctionDesc>::reserve(void **result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_213BDBEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<FunctionDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void parseFunctions(llvm::Module *a1, void **a2)
{
  std::vector<FunctionDesc>::reserve(a2, 8uLL);
  v4 = 0;
  v5 = -1;
  while (1)
  {
    v6 = entryPointsMetadata[v4];
    LOWORD(Name) = 257;
    if (*v6)
    {
      v117 = v6;
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    LOBYTE(Name) = v7;
    NamedMetadata = llvm::Module::getNamedMetadata(a1, &v117);
    if (!NamedMetadata || !llvm::NamedMDNode::getNumOperands(NamedMetadata))
    {
      goto LABEL_9;
    }

    if ((entryPointsType[v4] - 5) > 1)
    {
      break;
    }

    v5 = v4;
LABEL_9:
    if (++v4 == 7)
    {
      goto LABEL_12;
    }
  }

  v5 = v4;
LABEL_12:
  v9 = entryPointsMetadata[v5];
  LOWORD(Name) = 257;
  if (*v9)
  {
    v117 = v9;
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  LOBYTE(Name) = v10;
  v11 = llvm::Module::getNamedMetadata(a1, &v117);
  Operand = llvm::NamedMDNode::getOperand(v11);
  v13 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  Name = 0;
  v121 = 0;
  v125 = 0u;
  *__src = 0u;
  v127 = 0u;
  v128 = 0u;
  v117 = v13;
  v14 = Operand - 8 * *(Operand + 8);
  v118 = vextq_s8(*(v14 + 8), *(v14 + 8), 8uLL);
  Name = llvm::Value::getName(v13);
  v121 = v15;
  v122 = v5;
  Subprogram = llvm::Function::getSubprogram(v13);
  if (Subprogram)
  {
    v17 = *(Subprogram + 24);
  }

  else
  {
    v17 = 0;
  }

  v123 = v17;
  BYTE1(v124) = -4;
  v119 = 0;
  v128 = 0uLL;
  v18 = *(Operand + 8);
  if (v18 >= 4)
  {
    v19 = Operand + 24;
    for (i = 3; i < v18; ++i)
    {
      v21 = *(v19 - 8 * v18);
      if (llvm::MDNode::classof(v21))
      {
        v22 = *(v21 + 8);
        if (v22 >= 2)
        {
          v23 = (v21 - 8 * v22);
          v24 = *v23;
          if (!**v23)
          {
            v25 = v23[1];
            String = llvm::MDString::getString(*v23);
            if (v27 == 19)
            {
              v28 = *String == 0x726573752E726961 && String[1] == 0x7461746F6E6E615FLL;
              v29 = v28 && *(String + 11) == 0x6E6F697461746F6ELL;
              if (v29 && !*v25)
              {
                *&v128 = llvm::MDString::getString(v25);
                *(&v128 + 1) = v30;
              }
            }

            if (!*v24)
            {
              v31 = llvm::MDString::getString(v24);
              if (v32 == 18)
              {
                v33 = *v31 == 0x746974732E726961 && *(v31 + 8) == 0x6E695F676E696863;
                if (v33 && *(v31 + 16) == 28518)
                {
                  v119 = v21;
                }
              }
            }
          }
        }
      }

      v18 = *(Operand + 8);
      v19 += 8;
    }
  }

  if (entryPointsType[v122] != 6)
  {
    goto LABEL_179;
  }

  v35 = *(Operand - 8 * v18 + 24);
  v36 = llvm::MDString::getString(v35);
  if (v37 == 12 && *v36 == 0x616972742E726961 && *(v36 + 8) == 1701603182)
  {
    v45 = v124 & 0xFFFCFFFF | 0x10000;
    goto LABEL_66;
  }

  v39 = llvm::MDString::getString(v35);
  if (v40 == 16 && *v39 == 0x6E756F622E726961 && v39[1] == 0x786F625F676E6964)
  {
    v45 = v124 & 0xFFFCFFFF | 0x20000;
    goto LABEL_66;
  }

  v42 = llvm::MDString::getString(v35);
  if (v43 == 9 && *v42 == 0x767275632E726961 && *(v42 + 8) == 101)
  {
    v45 = v124 | 0x30000;
LABEL_66:
    v124 = v45;
  }

  v18 = *(Operand + 8);
  if (v18 >= 5)
  {
    v46 = Operand + 32;
    for (j = 4; j < v18; ++j)
    {
      v48 = *(v46 - 8 * v18);
      if (!*v48)
      {
        v49 = llvm::MDString::getString(v48);
        if (v50 == 17)
        {
          v51 = *v49 == 0x616972742E726961 && *(v49 + 8) == 0x7461645F656C676ELL;
          if (v51 && *(v49 + 16) == 97)
          {
            v92 = 2;
            goto LABEL_166;
          }
        }

        v53 = llvm::MDString::getString(v48);
        if (v54 == 14 && *v53 == 0x74736E692E726961 && *(v53 + 6) == 0x676E69636E617473)
        {
          v92 = 1;
          goto LABEL_166;
        }

        v56 = llvm::MDString::getString(v48);
        if (v57 == 20)
        {
          v58 = *v56 == 0x6C726F772E726961 && *(v56 + 8) == 0x5F65636170735F64;
          if (v58 && *(v56 + 16) == 1635017060)
          {
            v92 = 3;
            goto LABEL_166;
          }
        }

        v60 = llvm::MDString::getString(v48);
        if (v61 == 19)
        {
          v62 = *v60 == 0x74736E692E726961 && v60[1] == 0x746F6D5F65636E61;
          if (v62 && *(v60 + 11) == 0x6E6F69746F6D5F65)
          {
            v92 = 4;
            goto LABEL_166;
          }
        }

        v64 = llvm::MDString::getString(v48);
        if (v65 == 20)
        {
          v66 = *v64 == 0x6D6972702E726961 && *(v64 + 8) == 0x6F6D5F6576697469;
          if (v66 && *(v64 + 16) == 1852795252)
          {
            v92 = 5;
            goto LABEL_166;
          }
        }

        v68 = llvm::MDString::getString(v48);
        if (v69 == 19)
        {
          v70 = *v68 == 0x657478652E726961 && v68[1] == 0x6D696C5F6465646ELL;
          if (v70 && *(v68 + 11) == 0x7374696D696C5F64)
          {
            v92 = 6;
            goto LABEL_166;
          }
        }

        v72 = llvm::MDString::getString(v48);
        if (v73 == 14 && *v72 == 0x767275632E726961 && *(v72 + 6) == 0x617461645F657672)
        {
          v92 = 7;
          goto LABEL_166;
        }

        v75 = llvm::MDString::getString(v48);
        if (v76 == 26)
        {
          v77 = *v75 == 0x746C756D2E726961 && *(v75 + 8) == 0x5F6C6576656C5F69;
          v78 = v77 && *(v75 + 16) == 0x69636E6174736E69;
          if (v78 && *(v75 + 24) == 26478)
          {
            v129[0] = 1;
            std::vector<MTLTagType>::emplace_back<MTLTagType>(&__src[1], v129);
            v92 = 8;
            goto LABEL_166;
          }
        }

        v80 = llvm::MDString::getString(v48);
        if (v81 == 32)
        {
          v82 = *v80 == 0x65746E692E726961 && v80[1] == 0x6E6F697463657372;
          v83 = v82 && v80[2] == 0x6F6974636E75665FLL;
          if (v83 && v80[3] == 0x7265666675625F6ELL)
          {
            v92 = 9;
            goto LABEL_166;
          }
        }

        v85 = llvm::MDString::getString(v48);
        if (v86 == 13 && *v85 == 0x726573752E726961 && *(v85 + 5) == 0x617461645F726573)
        {
          v92 = 10;
          goto LABEL_166;
        }

        v88 = llvm::MDString::getString(v48);
        if (v89 != 19 || (*v88 == 0x726573752E726961 ? (v90 = v88[1] == 0x7461746F6E6E615FLL) : (v90 = 0), v90 ? (v91 = *(v88 + 11) == 0x6E6F697461746F6ELL) : (v91 = 0), !v91))
        {
          v92 = 0;
LABEL_166:
          v93 = v127;
          if (v127 >= *(&v127 + 1))
          {
            v95 = __src[1];
            v96 = v127 - __src[1];
            v97 = (v127 - __src[1]) >> 3;
            v98 = v97 + 1;
            if ((v97 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v99 = *(&v127 + 1) - __src[1];
            if ((*(&v127 + 1) - __src[1]) >> 2 > v98)
            {
              v98 = v99 >> 2;
            }

            v102 = v99 >= 0x7FFFFFFFFFFFFFF8;
            v100 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v102)
            {
              v100 = v98;
            }

            if (v100)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src[1], v100);
            }

            *(8 * v97) = v92;
            v94 = 8 * v97 + 8;
            memcpy(0, v95, v96);
            v101 = __src[1];
            __src[1] = 0;
            v127 = v94;
            if (v101)
            {
              operator delete(v101);
            }
          }

          else
          {
            *v127 = v92;
            v94 = v93 + 8;
          }

          *&v127 = v94;
        }
      }

      v18 = *(Operand + 8);
      v46 += 8;
    }
  }

LABEL_179:
  v102 = entryPointsType[v122] == 1 && v18 >= 4;
  if (v102)
  {
    v103 = Operand + 24;
    v104 = 3;
    do
    {
      v105 = *(v103 - 8 * v18);
      v106 = *(v105 + 8);
      if (v106 >= 2)
      {
        v107 = llvm::MDString::getString(*(v105 - 8 * v106));
        if (v108 == 9 && *v107 == 0x637461702E726961 && *(v107 + 8) == 104)
        {
          v110 = llvm::MDString::getString(*(v105 - 8 * *(v105 + 8) + 8));
          if (v111 == 8 && *v110 == 0x656C676E61697274)
          {
            v112 = 256;
          }

          else
          {
            v112 = 512;
          }

          v113 = v124 & 0xFFFFFCFF | v112;
          v124 = v113;
          v114 = *(v105 + 8);
          if (v114 >= 4)
          {
            v115 = *(*(v105 - 8 * v114 + 24) + 128);
            v116 = (v115 + 24);
            if (*(v115 + 32) >= 0x41u)
            {
              v116 = *v116;
            }

            v124 = v113 & 0xFFFF03FF | ((*v116 & 0x3F) << 10);
          }
        }
      }

      ++v104;
      v18 = *(Operand + 8);
      v103 += 8;
    }

    while (v104 < v18);
  }

  std::vector<FunctionDesc>::push_back[abi:ne200100](a2, &v117);
  if (__src[1])
  {
    *&v127 = __src[1];
    operator delete(__src[1]);
  }

  v129[0] = &v125;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](v129);
}

void sub_213BDC87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  FunctionDesc::~FunctionDesc(va);
  _Unwind_Resume(a1);
}

unint64_t parseArgumentMetadata(int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t *a7, int a8)
{
  if (atomic_load_explicit(&buildInMetadataSetOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v116;
    v119[0] = __p;
    std::__call_once(&buildInMetadataSetOnce, v119, std::__call_once_proxy[abi:ne200100]<std::tuple<parseArgumentMetadata(MTLArgumentData &,llvm::MDNode *,llvm::Value *,MTLCompilerArgumentAccess,llvm::DataLayout const&,BOOL,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>> &,MTLFunctionTypeIndex)::$_0 &&>>);
  }

  if (a3)
  {
    v13 = 8 * (*(a3 + 8) != 0);
  }

  else
  {
    v13 = 8;
  }

  v14 = *(a2 + 8);
  v15 = *a1 & 0xFFFFEFF1;
  *(a1 + 12) = 0;
  *(a1 + 13) = a2;
  *a1 = v15 | v13;
  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * (a6 ^ 1u)));
  v119[0] = String;
  v119[1] = v17;
  if (a6)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = String;
  v20 = v17;
  switch(v17)
  {
    case 8uLL:
LABEL_10:
      if (memcmp(String, "air.mesh", v17))
      {
        goto LABEL_94;
      }

      *a1 |= 4u;
      a1[3] = 24;
      parseMeshStruct(a1, *(a2 - 8 * *(a2 + 8) + 8 * v18));
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 16;
      break;
    case 9uLL:
LABEL_43:
      if (!memcmp(String, "air.byval", v17))
      {
        goto LABEL_240;
      }

      goto LABEL_94;
    case 0xAuLL:
LABEL_52:
      if (*String == 0x666675622E726961 && *(String + 4) == 29285)
      {
        goto LABEL_239;
      }

      if (memcmp(String, "air.tensor", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 18;
      break;
    case 0xBuLL:
LABEL_69:
      if (!memcmp(String, "air.texture", v17))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 1;
      }

      else if (*v19 == 0x706D61732E726961 && *(v19 + 3) == 0x72656C706D61732ELL)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 2;
      }

      else
      {
        if (memcmp(v19, "air.payload", v20))
        {
          goto LABEL_94;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 15;
        v115 = 1;
      }

      break;
    case 0xCuLL:
LABEL_76:
      if (!memcmp(String, "air.constant", v17))
      {
LABEL_240:
        v21 = 0;
        v22 = 0;
        v115 = 0;
        v24 = 9;
        v23 = 1;
        break;
      }

      if (*v19 != 0x676174732E726961 || *(v19 + 2) != 1852399461)
      {
        goto LABEL_94;
      }

LABEL_82:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v38 = *a1 | 2;
LABEL_90:
      *a1 = v38;
      goto LABEL_98;
    case 0xEuLL:
LABEL_58:
      if (memcmp(String, "air.imageblock", v17))
      {
        goto LABEL_94;
      }

      v32 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v18));
      if (v33 != 8)
      {
        goto LABEL_259;
      }

      v18 = a6 ^ 1 | 2;
      if (*v32 == 0x746963696C706D69)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        a1[46] = 0;
      }

      else
      {
        if (*v32 != 0x746963696C707865)
        {
LABEL_259:
          abort();
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        a1[46] = 1;
      }

      v24 = 5;
      break;
    case 0xFuLL:
      if (*String != 0x637461702E726961 || *(String + 7) != 0x7475706E695F6863)
      {
        goto LABEL_94;
      }

      *a1 |= 0x2000u;
      goto LABEL_82;
    case 0x10uLL:
      if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
      {
        goto LABEL_94;
      }

      goto LABEL_82;
    case 0x12uLL:
LABEL_86:
      if (!memcmp(String, "air.command_buffer", v17))
      {
        goto LABEL_238;
      }

      if (memcmp(v19, "air.fragment_input", v20))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v34 = *a1;
      v35 = 32770;
      goto LABEL_89;
    case 0x13uLL:
LABEL_83:
      if (!memcmp(String, "air.indirect_buffer", v17))
      {
LABEL_239:
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 0;
        v21 = 1;
      }

      else
      {
        if (memcmp(v19, "air.imageblock_data", v20))
        {
          goto LABEL_94;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 4;
      }

      break;
    case 0x14uLL:
      if (*String == 0x6C706D612E726961 && String[1] == 0x6F69746163696669 && *(String + 4) == 1684627310)
      {
        goto LABEL_42;
      }

LABEL_19:
      if (!memcmp(String, "air.function_pointer", v17))
      {
        goto LABEL_259;
      }

      goto LABEL_94;
    case 0x15uLL:
LABEL_47:
      if (memcmp(String, "air.indirect_constant", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 3;
      v22 = 1;
      break;
    case 0x17uLL:
      if (*String == 0x6C706D612E726961 && String[1] == 0x6F69746163696669 && *(String + 15) == 0x746E756F635F6E6FLL)
      {
LABEL_42:
        *a1 |= 8u;
        switch(v17)
        {
          case 8uLL:
            goto LABEL_10;
          case 9uLL:
            goto LABEL_43;
          case 0xAuLL:
            goto LABEL_52;
          case 0xBuLL:
            goto LABEL_69;
          case 0xCuLL:
            goto LABEL_76;
          case 0xEuLL:
            goto LABEL_58;
          case 0x12uLL:
            goto LABEL_86;
          case 0x13uLL:
            goto LABEL_83;
          case 0x14uLL:
            goto LABEL_19;
          case 0x15uLL:
            goto LABEL_47;
          case 0x17uLL:
            break;
          case 0x19uLL:
            goto LABEL_63;
          case 0x1AuLL:
            goto LABEL_49;
          case 0x1BuLL:
            goto LABEL_45;
          case 0x1DuLL:
            goto LABEL_65;
          case 0x1FuLL:
            goto LABEL_67;
          case 0x23uLL:
            goto LABEL_93;
          case 0x24uLL:
            goto LABEL_91;
          default:
            goto LABEL_94;
        }
      }

      if (memcmp(String, "air.depth_stencil_state", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 17;
      break;
    case 0x19uLL:
LABEL_63:
      if (memcmp(String, "air.render_pipeline_state", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 7;
      break;
    case 0x1AuLL:
LABEL_49:
      if (!memcmp(String, "air.compute_pipeline_state", v17))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 6;
      }

      else if (!memcmp(v19, "air.visible_function_table", v20))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 11;
      }

      else
      {
LABEL_94:
        v39 = buildInMetadataSet;
        llvm::StringRef::str(v119, __p);
        v40 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v39, __p);
        if (v118 < 0)
        {
          operator delete(__p[0]);
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        if (buildInMetadataSet + 8 != v40)
        {
          *a1 |= 4u;
          a1[3] = *(v40 + 56);
        }

LABEL_98:
        v24 = 19;
      }

      break;
    case 0x1BuLL:
LABEL_45:
      if (memcmp(String, "air.indirect_command_buffer", v17))
      {
        goto LABEL_94;
      }

LABEL_238:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 8;
      break;
    case 0x1DuLL:
LABEL_65:
      if (memcmp(String, "air.patch_control_point_input", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      *(a1 + 12) = a2;
      v34 = *a1;
      v35 = 16386;
LABEL_89:
      v38 = v34 | v35;
      goto LABEL_90;
    case 0x1FuLL:
LABEL_67:
      if (memcmp(String, "air.intersection_function_table", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 12;
      break;
    case 0x23uLL:
LABEL_93:
      if (memcmp(String, "air.instance_acceleration_structure", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 14;
      break;
    case 0x24uLL:
LABEL_91:
      if (memcmp(String, "air.primitive_acceleration_structure", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 13;
      break;
    default:
      goto LABEL_94;
  }

  result = *(a1 + 12);
  if (result)
  {
    result = isPatchControlPointInputUnused(result);
    v42 = (*(*(a1 + 12) + 8) - result);
    if (result)
    {
      *a1 &= ~8u;
    }

    if (v18 < v42)
    {
      v114 = v23;
      v43 = v22;
      v44 = v21;
      v45 = a8;
      v46 = v18;
      do
      {
        v47 = *(*(a1 + 12) - 8 * *(*(a1 + 12) + 8) + 8 * v46);
        v48 = *(v47 + 8);
        v49 = v47;
        if (v48)
        {
          do
          {
            result = *(v49 - 8 * *(v47 + 8));
            if (result && !*result)
            {
              result = llvm::MDString::getString(result);
            }

            v49 += 8;
            --v48;
          }

          while (v48);
        }

        ++v46;
      }

      while (v46 != v42);
      v50 = 0;
      v51 = 1;
      v52 = 1;
      v53 = 1;
      a8 = v45;
      v21 = v44;
      v22 = v43;
      v23 = v114;
      goto LABEL_191;
    }

    v50 = 0;
    v51 = 1;
LABEL_190:
    v52 = 1;
    v53 = 1;
LABEL_191:
    v88 = v115;
    goto LABEL_192;
  }

  v51 = 1;
  if (v18 >= v14)
  {
    v50 = 0;
    goto LABEL_190;
  }

  v106 = v22;
  v107 = v21;
  v108 = a8;
  v109 = 0;
  v110 = 0;
  v54 = 0;
  do
  {
    result = *(a2 - 8 * *(a2 + 8) + 8 * v18);
    v55 = v18 + 1;
    if (!*result)
    {
      result = llvm::MDString::getString(result);
      v57 = result;
      v58 = v56;
      switch(v56)
      {
        case 8uLL:
          v59 = "air.read";
          goto LABEL_143;
        case 9uLL:
          result = memcmp(result, "air.write", v56);
          v67 = HIDWORD(v110);
          if (!result)
          {
            v67 = 1;
          }

          goto LABEL_172;
        case 0xAuLL:
          v59 = "air.sample";
          goto LABEL_143;
        case 0xBuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x13uLL:
        case 0x16uLL:
        case 0x19uLL:
        case 0x1AuLL:
        case 0x1BuLL:
        case 0x1CuLL:
          break;
        case 0xCuLL:
          if (*result == 0x5F6772612E726961 && *(result + 8) == 1701667182)
          {
            v74 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            v55 = v18 + 2;
            result = llvm::MDString::getString(v74);
            *(a1 + 2) = result;
            *(a1 + 3) = v75;
          }

          break;
        case 0xDuLL:
          v59 = "air.read_only";
LABEL_143:
          result = memcmp(result, v59, v58);
          if (!result)
          {
            v54 = 1;
          }

          break;
        case 0xEuLL:
          result = memcmp(result, "air.write_only", v56);
          if (result)
          {
            if (*v57 == 0x646165722E726961 && *(v57 + 6) == 0x65746972775F6461)
            {
              LODWORD(v110) = 1;
            }

            else
            {
              result = memcmp(v57, "air.arg_unused", v58);
              if (!result)
              {
                *a1 &= ~8u;
              }
            }
          }

          else
          {
            v67 = 1;
LABEL_172:
            HIDWORD(v110) = v67;
          }

          break;
        case 0x11uLL:
          if (!memcmp(result, "air.arg_type_name", v56))
          {
            v80 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            v55 = v18 + 2;
            result = llvm::MDString::getString(v80);
            *(a1 + 4) = result;
            *(a1 + 5) = v81;
          }

          else
          {
            result = memcmp(v57, "air.arg_type_size", v58);
            if (result)
            {
              result = memcmp(v57, "air.address_space", v58);
              if (!result)
              {
                v76 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
                v77 = (v76 + 24);
                if (*(v76 + 32) >= 0x41u)
                {
                  v77 = *v77;
                }

                v109 = *v77;
              }
            }

            else
            {
              v83 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
              v84 = (v83 + 24);
              if (*(v83 + 32) >= 0x41u)
              {
                v84 = *v84;
              }

              a1[14] = *v84;
LABEL_187:
              v55 = v18 + 2;
            }
          }

          break;
        case 0x12uLL:
          result = memcmp(result, "air.location_index", v56);
          if (!result)
          {
            v68 = a2 - 8 * *(a2 + 8);
            v69 = *(*(v68 + 8 * v55) + 128);
            if (*(v69 + 16) == 16)
            {
              v70 = (v69 + 24);
              if (*(v69 + 32) >= 0x41u)
              {
                v70 = *v70;
              }

              v71 = *v70;
            }

            else
            {
              v71 = -1;
            }

            a1[1] = v71;
            v85 = *(*(v68 + 8 * (v18 + 2)) + 128);
            if (*(v85 + 16) == 16)
            {
              v86 = (v85 + 24);
              if (*(v85 + 32) >= 0x41u)
              {
                v86 = *v86;
              }

              v87 = *v86;
            }

            else
            {
              v87 = -1;
            }

            a1[2] = v87;
            v55 = v18 + 3;
          }

          break;
        case 0x14uLL:
          result = memcmp(result, "air.struct_type_info", v56);
          if (!result)
          {
            v116 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            __p[0] = v116;
            v55 = v18 + 2;
            *(a1 + 9) = v116;
            v119[0] = 0;
            result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a7, __p, v119);
            if ((result & 1) == 0 || (v79 = *(v119[0] + 1)) == 0)
            {
              v82 = *(a1 + 20);
              llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(a7, &v116)[1] = v82;
              parseStructTypeMetadata(v116, a5, a4, *(a1 + 20), a7);
            }

            *(a1 + 20) = v79;
          }

          break;
        case 0x15uLL:
          result = memcmp(result, "air.imageblock_master", v56);
          if (!result)
          {
            v72 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            *(a1 + 24) = v72;
            parseStructTypeMetadata(v72, a5, a4, (a1 + 50), a7);
          }

          break;
        case 0x17uLL:
          result = memcmp(result, "air.arg_type_align_size", v56);
          if (result)
          {
            break;
          }

          v65 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          v66 = (v65 + 24);
          if (*(v65 + 32) >= 0x41u)
          {
            v66 = *v66;
          }

          a1[13] = *v66;
          goto LABEL_187;
        case 0x18uLL:
          result = memcmp(result, "air.imageblock_data_size", v56);
          if (result)
          {
            break;
          }

          v63 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          v64 = (v63 + 24);
          if (*(v63 + 32) >= 0x41u)
          {
            v64 = *v64;
          }

          a1[47] = *v64;
          goto LABEL_187;
        case 0x1DuLL:
          result = memcmp(result, "air.alias_implicit_imageblock", v56);
          if (!result)
          {
            *(a1 + 224) = 1;
          }

          break;
        default:
          if (v56 != 43)
          {
            break;
          }

          result = memcmp(result, "air.alias_implicit_imageblock_render_target", 0x2BuLL);
          if (result)
          {
            break;
          }

          v60 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          if (*(v60 + 16) == 16)
          {
            v61 = (v60 + 24);
            if (*(v60 + 32) >= 0x41u)
            {
              v61 = *v61;
            }

            v62 = *v61;
          }

          else
          {
            v62 = -1;
          }

          a1[57] = v62;
          goto LABEL_187;
      }
    }

    v18 = v55;
  }

  while (v55 < v14);
  v53 = v110 == 0;
  v52 = HIDWORD(v110) == 0;
  v51 = v54 == 0;
  v21 = v107;
  a8 = v108;
  v22 = v106;
  v88 = v115;
  v50 = v109;
LABEL_192:
  if ((v21 | v22 | v23 | v88) == 1)
  {
    if (*(a1 + 9))
    {
      a1[12] = 1;
    }

    else
    {
      v89 = v50;
      v90 = v51;
      LODWORD(__p[0]) = 0;
      LODWORD(v119[0]) = 0;
      v91 = *(a1 + 4);
      if (v91)
      {
        v92 = strlen(*(a1 + 4));
        v93 = dataTypeFromString(v91, v92, __p, v119);
      }

      else
      {
        v93 = 0;
      }

      a1[12] = v93;
      if (!a1[13])
      {
        a1[13] = __p[0];
      }

      if (!a1[14])
      {
        a1[14] = v119[0];
      }

      v94 = *(a1 + 4);
      if (v94)
      {
        v95 = strlen(*(a1 + 4));
        result = pixelFormatAndALUTypeFromString(v94, v95);
        v96 = HIDWORD(result);
      }

      else
      {
        result = 0;
        LODWORD(v96) = 0;
      }

      a1[58] = result;
      a1[59] = v96;
      v51 = v90;
      v50 = v89;
    }
  }

  v97 = *a1;
  v98 = *a1 & 0xFFFFF00E;
  *a1 = v98 | 1;
  switch(v24)
  {
    case 0:
      if (v50 == 2)
      {
        v103 = 17;
      }

      else
      {
        if (v50 == 3)
        {
          v99 = 561;
          goto LABEL_253;
        }

        v103 = 33;
      }

      v104 = v98 | v103;
      *a1 = v104;
      v105 = v104 | 0x400;
      if (v52)
      {
        v105 = v104;
      }

      v101 = v104 | 0x200;
      if (v53)
      {
        v101 = v105;
      }

      goto LABEL_254;
    case 1:
      *a1 = v98 | 0x41;
      if (v53)
      {
        if (!v51)
        {
          return result;
        }

        v99 = 1089;
      }

      else
      {
        v99 = 577;
      }

      goto LABEL_253;
    case 2:
      v99 = 81;
      goto LABEL_253;
    case 3:
      v100 = ((a4 & 7) << 9) | 0x81;
      goto LABEL_223;
    case 4:
      v99 = 145;
      goto LABEL_253;
    case 5:
      v99 = 161;
      goto LABEL_253;
    case 6:
      v99 = 177;
      goto LABEL_253;
    case 7:
      v99 = 193;
      goto LABEL_253;
    case 8:
      v99 = 209;
      goto LABEL_253;
    case 9:
      v99 = 225;
      goto LABEL_253;
    case 11:
      v99 = 257;
      goto LABEL_253;
    case 12:
      v99 = 273;
      goto LABEL_253;
    case 13:
      v99 = 289;
      goto LABEL_253;
    case 14:
      v99 = 305;
      goto LABEL_253;
    case 15:
      *a1 = v98 | 0x151;
      if (!v53)
      {
        goto LABEL_232;
      }

      if (v52)
      {
        v102 = !v51;
        if (a8 != 6)
        {
          v102 = 1;
        }

        if (v102)
        {
          return result;
        }

LABEL_232:
        v99 = 849;
      }

      else
      {
        v99 = 1361;
      }

LABEL_253:
      v101 = v98 | v99;
LABEL_254:
      *a1 = v101;
      return result;
    case 16:
      v99 = 1376;
      goto LABEL_253;
    case 17:
      v99 = 369;
      goto LABEL_253;
    case 18:
      v99 = 385;
      goto LABEL_253;
    case 19:
      if ((v97 & 4) != 0)
      {
        v100 = 96;
      }

      else
      {
        v100 = 112;
      }

LABEL_223:
      v101 = v100 | v98;
      goto LABEL_254;
    default:
      return result;
  }
}

void sub_213BDD96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    v4[a2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

uint64_t llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x21604BA70](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::moveFromOldBuckets(a1, v4, v4 + 2 * v3);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
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
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_213C7D090)));
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
  }

  return result;
}

void parseStructTypeMetadata(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a3;
  operator new();
}

void sub_213BDE15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20[0] = a6;
  v20[1] = a7;
  v19[0] = a9;
  v19[1] = a10;
  v18 = a2;
  v16 = a4;
  v17 = a3;
  v15 = a5;
  v13 = *(a1 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v13 + 48))(v13, &v18, &v17, &v16, &v15, v20, v19, &a11, &a12, &a13, &a13 + 4);
}

void std::__function::__func<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0,std::allocator<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0>,void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, uint64_t a6, __int128 *a7, uint64_t *a8, uint64_t *a9, unsigned int *a10, unsigned int *a11)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v16 = *a6;
  v15 = *(a6 + 8);
  v17 = *a8;
  v18 = *a9;
  v19 = *a10;
  v20 = *a11;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0uLL;
  v35 = 0;
  v36 = xmmword_213C7D190;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v28 = *a7;
  LODWORD(v31) = v12;
  LODWORD(v32) = v14;
  v37 = v17;
  v29 = v16;
  v30 = v15;
  if (v17)
  {
    v21 = 1;
  }

  else if (v18)
  {
    v21 = 57;
  }

  else
  {
    v22 = strlen(v16);
    v21 = dataTypeFromString(v16, v22);
    v23 = strlen(v16);
    *(&v36 + 1) = pixelFormatAndALUTypeFromString(v16, v23);
    v14 = v32;
  }

  if (v14)
  {
    HIDWORD(v32) = v21;
    v33 = v13;
    v21 = 2;
  }

  HIDWORD(v31) = v21;
  if (v17)
  {
    parseStructTypeMetadata(v17, *(a1 + 8), **(a1 + 16), v38, *(a1 + 24));
  }

  if (v18)
  {
    if (llvm::MDNode::classof(v18))
    {
      _ZNSt3__115allocate_sharedB8ne200100I15MTLArgumentDataNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v24 = *(v18 + 128);
    if (*(v24 + 16) == 16)
    {
      v25 = (v24 + 24);
      if (*(v24 + 32) >= 0x41u)
      {
        v25 = *v25;
      }

      v26 = *v25;
    }

    else
    {
      v26 = -1;
    }

    v35 = v26;
  }

  *&v36 = __PAIR64__(v20, v19);
  std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](*(a1 + 32), &v28);
  *&v27 = v38;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (*(&v34 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
  }
}

void sub_213BDE410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(a1, a2);
  }

  else
  {
    std::vector<MTLStructMemberInfo>::__construct_one_at_end[abi:ne200100]<MTLStructMemberInfo const&>(a1, a2);
    result = v3 + 176;
  }

  a1[1] = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v25 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(a1, v6);
  }

  v7 = 176 * v2;
  v22 = 0;
  v23 = v7;
  v24 = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(v7 + 48) = *(a2 + 12);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = v8;
  v11 = *(a2 + 8);
  *(v7 + 56) = *(a2 + 7);
  *(v7 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(v7 + 104) = 0;
  *(v7 + 72) = v12;
  *(v7 + 88) = v13;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v7 + 104), *(a2 + 13), *(a2 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 14) - *(a2 + 13)) >> 4));
  v15 = a2[9];
  v14 = a2[10];
  *(v7 + 128) = a2[8];
  *(v7 + 144) = v15;
  *(v7 + 160) = v14;
  *&v24 = v24 + 176;
  v16 = a1[1];
  v17 = v23 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(&v22);
  return v21;
}

void sub_213BDE684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      *(a4 + 48) = *(v7 + 12);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = 0;
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 120) = *(v7 + 15);
      *(v7 + 13) = 0;
      *(v7 + 14) = 0;
      *(v7 + 15) = 0;
      v12 = v7[8];
      v13 = v7[10];
      *(a4 + 144) = v7[9];
      *(a4 + 160) = v13;
      *(a4 + 128) = v12;
      v7 += 11;
      a4 += 176;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(a1, v5);
      v5 += 11;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTLStructMemberInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_213BDE864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__split_buffer<MTLStructMemberInfo>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  while (1)
  {
    v4 = *(result + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(result + 32);
    *(result + 16) = v4 - 176;
    std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v5, v4 - 176);
  }
}

void std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 104);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 std::vector<MTLStructMemberInfo>::__construct_one_at_end[abi:ne200100]<MTLStructMemberInfo const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(v4 + 48) = *(a2 + 12);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  v8 = *(a2 + 8);
  *(v4 + 56) = *(a2 + 7);
  *(v4 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  *(v4 + 104) = 0;
  *(v4 + 72) = v9;
  *(v4 + 88) = v10;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v4 + 104), *(a2 + 13), *(a2 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 14) - *(a2 + 13)) >> 4));
  result = a2[8];
  v12 = a2[10];
  *(v4 + 144) = a2[9];
  *(v4 + 160) = v12;
  *(v4 + 128) = result;
  *(a1 + 8) = v4 + 176;
  return result;
}

void sub_213BDE9FC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*,MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *(v4 + 48) = *(v6 + 12);
      *(v4 + 16) = v8;
      *(v4 + 32) = v9;
      *v4 = v7;
      v10 = *(v6 + 8);
      *(v4 + 56) = *(v6 + 7);
      *(v4 + 64) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v6 + 72);
      v12 = *(v6 + 88);
      *(v4 + 104) = 0;
      *(v4 + 72) = v11;
      *(v4 + 88) = v12;
      *(v4 + 112) = 0;
      *(v4 + 120) = 0;
      std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v4 + 104, *(v6 + 13), *(v6 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 14) - *(v6 + 13)) >> 4));
      v13 = v6[8];
      v14 = v6[10];
      *(v4 + 144) = v6[9];
      *(v4 + 160) = v14;
      *(v4 + 128) = v13;
      v6 += 11;
      v4 = v19 + 176;
      v19 += 176;
    }

    while (v6 != a3);
  }

  v17 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v16);
  return v4;
}

void sub_213BDEBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 64);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *findNonStructMember(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  for (i = (*a1 + 104); i[1] != *i; i += 22)
  {
    result = findNonStructMember(i);
    if (result)
    {
      return result;
    }

    v4 = i + 9;
    if (v4 == v1)
    {
      return 0;
    }
  }

  return i - 13;
}

uint64_t std::vector<MTLArgumentData>::__emplace_back_slow_path<MTLArgumentData const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v6 = 0xE38E38E38E38E3;
  }

  else
  {
    v6 = v3;
  }

  v31 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v6);
  }

  v7 = 288 * v2;
  v28 = 0;
  v29 = v7;
  v30 = v7;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = a2[2];
  v10 = a2[6];
  v12 = a2[3];
  v11 = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = v10;
  *(v7 + 48) = v12;
  *(v7 + 64) = v11;
  *v7 = v8;
  *(v7 + 16) = v9;
  v13 = *(a2 + 15);
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 120) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 17);
  *(v7 + 128) = *(a2 + 16);
  *(v7 + 136) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 19);
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 152) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a2[10];
  v17 = a2[11];
  v18 = *(a2 + 24);
  *(v7 + 200) = 0;
  *(v7 + 192) = v18;
  *(v7 + 176) = v17;
  *(v7 + 160) = v16;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v7 + 200), *(a2 + 25), *(a2 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 26) - *(a2 + 25)) >> 4));
  v19 = a2[16];
  v20 = a2[17];
  v21 = a2[15];
  *(v7 + 224) = a2[14];
  *(v7 + 240) = v21;
  *(v7 + 256) = v19;
  *(v7 + 272) = v20;
  *&v30 = v30 + 288;
  v22 = a1[1];
  v23 = v29 + *a1 - v22;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, *a1, v22, v23);
  v24 = *a1;
  *a1 = v23;
  v25 = a1[2];
  v27 = v30;
  *(a1 + 1) = v30;
  *&v30 = v24;
  *(&v30 + 1) = v25;
  v28 = v24;
  v29 = v24;
  std::__split_buffer<MTLArgumentData>::~__split_buffer(&v28);
  return v27;
}

void sub_213BDEE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<MTLArgumentData>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLArgumentData>::__emplace_back_slow_path<MTLArgumentData const&>(a1, a2);
  }

  else
  {
    std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(a1, a2);
    result = v3 + 288;
  }

  a1[1] = result;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v21 = a4;
  v22 = a4;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  if (a2 == a3)
  {
    v20 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[2];
      *(a4 + 16) = v7[1];
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      *(a4 + 80) = v7[5];
      *(a4 + 96) = v12;
      *(a4 + 48) = v10;
      *(a4 + 64) = v11;
      *(a4 + 112) = v7[7];
      *(v7 + 14) = 0;
      *(v7 + 15) = 0;
      *(a4 + 128) = v7[8];
      *(v7 + 16) = 0;
      *(v7 + 17) = 0;
      *(a4 + 144) = v7[9];
      *(v7 + 18) = 0;
      *(v7 + 19) = 0;
      v13 = v7[11];
      v14 = *(v7 + 24);
      *(a4 + 160) = v7[10];
      *(a4 + 176) = v13;
      *(a4 + 192) = v14;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 200) = *(v7 + 200);
      *(a4 + 216) = *(v7 + 27);
      *(v7 + 25) = 0;
      *(v7 + 26) = 0;
      *(v7 + 27) = 0;
      v15 = v7[14];
      v16 = v7[15];
      v17 = v7[17];
      *(a4 + 256) = v7[16];
      *(a4 + 272) = v17;
      *(a4 + 224) = v15;
      *(a4 + 240) = v16;
      v7 += 18;
      a4 += 288;
    }

    while (v7 != a3);
    v22 = a4;
    v20 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(a1, v5);
      v5 += 18;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](v19);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<MTLArgumentData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTLArgumentData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTLArgumentData>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  while (1)
  {
    v4 = *(result + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(result + 32);
    *(result + 16) = v4 - 288;
    std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(v5, v4 - 288);
  }
}

uint64_t dataTypeFromString(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4)
{
  dataTypeInfoFromString(a1, a2, v7);
  result = v7[0];
  if (a3)
  {
    *a3 = v7[1];
  }

  if (a4)
  {
    *a4 = v7[2];
  }

  return result;
}

void std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 200);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a2 + 152);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 136);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a2 + 120);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

__n128 std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[6];
  *(v4 + 80) = a2[5];
  *(v4 + 96) = v9;
  *(v4 + 48) = v7;
  *(v4 + 64) = v8;
  v10 = *(a2 + 15);
  *(v4 + 112) = *(a2 + 14);
  *(v4 + 120) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 17);
  *(v4 + 136) = v11;
  *(v4 + 128) = v12;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 19);
  *(v4 + 144) = *(a2 + 18);
  *(v4 + 152) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a2[10];
  v15 = a2[11];
  v16 = *(a2 + 24);
  *(v4 + 200) = 0;
  *(v4 + 192) = v16;
  *(v4 + 176) = v15;
  *(v4 + 160) = v14;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v4 + 200), *(a2 + 25), *(a2 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 26) - *(a2 + 25)) >> 4));
  result = a2[14];
  v18 = a2[15];
  v19 = a2[17];
  *(v4 + 256) = a2[16];
  *(v4 + 272) = v19;
  *(v4 + 224) = result;
  *(v4 + 240) = v18;
  *(a1 + 8) = v4 + 288;
  return result;
}

void sub_213BDF2D8(_Unwind_Exception *a1)
{
  v6 = *(v4 + 152);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(v3, v2);
  *(v1 + 8) = v4;
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t serializeArguments(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = 0x8E38E38E38E38E39 * ((v8 - *a1) >> 5);
  result = (*(a3 + 16))(a3, v10);
  if (v8 != v9)
  {
    v34 = a2;
    v12 = 0;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = v10;
    while (2)
    {
      v14 = *a1;
      v15 = (*a1 + v12);
      (*(a4 + 16))(a4, v15 + 4);
      (*(a3 + 16))(a3, (*v15 << 6) & 0x200 | (*v15 >> 4));
      v16 = *v15;
      if ((*v15 & 4) == 0)
      {
        (*(a3 + 16))(a3, v15[1]);
        (*(a3 + 16))(a3, v15[2]);
        v16 = *v15;
      }

      switch((v16 >> 4) & 0x1F)
      {
        case 1u:
        case 2u:
        case 3u:
        case 8u:
        case 0xEu:
        case 0x15u:
          v17 = (v14 + v12);
          (*(a3 + 16))(a3, *(v14 + v12 + 48));
          v18 = *(v14 + v12 + 236);
          (*(a3 + 16))(a3, v17[58]);
          (*(a3 + 16))(a3, v18);
          (*(a3 + 16))(a3, v17[13]);
          v19 = v17[14];
          goto LABEL_24;
        case 4u:
          LODWORD(v36[0]) = 0;
          LOBYTE(v35) = 0;
          v30 = *(v14 + v12 + 32);
          v31 = strlen(v30);
          LODWORD(v30) = textureTypeFromString(v30, v31, v36, &v35);
          (*(a3 + 16))(a3, LODWORD(v36[0]));
          v19 = v30 | (v35 << 16);
          goto LABEL_24;
        case 5u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x17u:
          goto LABEL_25;
        case 6u:
          v26 = v14 + v12;
          v27 = *(v14 + v12 + 32);
          v28 = strlen(v27);
          v29 = dataTypeFromString(v27, v28);
          (*(a3 + 16))(a3, v29);
          v19 = *(v26 + 12);
          goto LABEL_24;
        case 9u:
          v22 = v14 + v12;
          goto LABEL_20;
        case 0xAu:
          v22 = v14 + v12;
          (*(a3 + 16))(a3, *(v14 + v12 + 184));
LABEL_20:
          (*(a3 + 16))(a3, *(v22 + 188));
          if (*(v22 + 192))
          {
            serializeStructInfo((v22 + 200), v34, a3, a4, 0);
          }

          else
          {
            (*(a3 + 16))(a3, 0);
          }

          (*(a3 + 16))(a3, *(v14 + v12 + 224));
          v19 = *(v14 + v12 + 228);
          goto LABEL_24;
        case 0x14u:
          v36[0] = *(v14 + v12 + 240);
          v36[1] = *(v14 + v12 + 256);
          v37 = *(v14 + v12 + 272);
          serializeStitchingTypeInfo(v36, a3);
          if (LODWORD(v36[0]) == 1 || LODWORD(v36[0]) == 138 || LODWORD(v36[0]) == 60 && HIDWORD(v36[0]) == 1)
          {
            serializeStitchingStructInfo(*(v14 + v12 + 160), v37, *(&v37 + 1), a3, a4);
          }

          goto LABEL_25;
        case 0x16u:
          v20 = dataTypeFromString("mesh", 4uLL);
          (*(a3 + 16))(a3, v20);
          v21 = v14 + v12;
          (*(a3 + 16))(a3, *(v14 + v12 + 12));
          (*(a3 + 16))(a3, *(v14 + v12 + 60));
          (*(a3 + 16))(a3, *(v14 + v12 + 64));
          (*(a3 + 16))(a3, *(v14 + v12 + 68));
          serializeStructInfo(*(v21 + 168), v34, a3, a4, (*v21 >> 12) & 1);
          serializeStructInfo(*(v21 + 176), v34, a3, a4, (*v21 >> 12) & 1);
          goto LABEL_25;
        case 0x18u:
          v35 = 0;
          LODWORD(v36[0]) = 0;
          v23 = *(v14 + v12 + 32);
          v24 = strlen(v23);
          v25 = tensorDataTypeFromString(v23, v24, v36, &v35);
          (*(a3 + 16))(a3, v25);
          (*(a3 + 16))(a3, LODWORD(v36[0]));
          v19 = v35;
LABEL_24:
          (*(a3 + 16))(a3, v19);
LABEL_25:
          v12 += 288;
          if (--v13)
          {
            continue;
          }

          v32 = 0;
          do
          {
            v33 = *a1 + v32;
            if (*(v33 + 72))
            {
              result = serializeStructInfo(*(v33 + 160), v34, a3, a4, (*v33 >> 12) & 1);
            }

            else
            {
              result = (*(a3 + 16))(a3, 0);
            }

            v32 += 288;
            --v10;
          }

          while (v10);
          break;
        default:
          abort();
      }

      break;
    }
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_2(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t AirReflection::RenderTargetArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetArg", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t textureTypeFromString(void *__src, size_t __len, _DWORD *a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v19 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (v19 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v22[0] = 0;
  v23 = p_dst;
  v22[1] = strlen(p_dst);
  NextToken = BasicParser::getNextToken(v22);
  if (!strcmp(NextToken, "array"))
  {
    NextToken = BasicParser::getNextToken(v22);
  }

  if (atomic_load_explicit(&textureTypeMapOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v20;
    v21 = __p;
    std::__call_once(&textureTypeMapOnce, &v21, std::__call_once_proxy[abi:ne200100]<std::tuple<textureTypeMap(void)::$_0 &&>>);
  }

  v9 = textureTypeMap(void)::nonGlobalTextureTypeMap;
  std::string::basic_string[abi:ne200100]<0>(__p, NextToken);
  v10 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v9, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(v10 + 56);
  *a4 = *(v10 + 60);
  v12 = BasicParser::getNextToken(v22);
  v13 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v12);
  v14 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v13, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = *(v14 + 60);
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  return v11;
}

void sub_213BDFC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t serializeStructInfo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a2 + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a2 + 8 && *(v9 + 32) <= a1)
  {
    v37 = *(v9 + 40);
    v38 = *(a3 + 16);

    return v38(a3, v37);
  }

  else
  {
LABEL_9:
    v13 = *(a2 + 16);
    v41[0] = a1;
    *&v43[0] = v41;
    *(std::__tree<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::__map_value_compare<std::vector<MTLStructMemberInfo> const*,std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::less<std::vector<MTLStructMemberInfo> const*>,true>,std::allocator<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>>>::__emplace_unique_key_args<std::vector<MTLStructMemberInfo> const*,std::piecewise_construct_t const&,std::tuple<std::vector<MTLStructMemberInfo> const*&&>,std::tuple<>>(a2, v41, &std::piecewise_construct, v43) + 10) = v13 + 1;
    (*(a3 + 16))(a3);
    v14 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
    result = (*(a3 + 16))(a3, v14);
    if (v14)
    {
      v16 = 0;
      do
      {
        v17 = *a1;
        v18 = *a1 + v16;
        (*(a4 + 16))(a4, v18);
        (*(a3 + 16))(a3, *(v18 + 32));
        (*(a3 + 16))(a3, *(v17 + v16 + 72));
        if (*(v17 + v16 + 40))
        {
          (*(a3 + 16))(a3, 2);
          (*(a3 + 16))(a3, 0);
          (*(a3 + 16))(a3, 0);
          (*(a3 + 16))(a3, *(v17 + v16 + 40));
          (*(a3 + 16))(a3, *(v17 + v16 + 44));
          (*(a3 + 16))(a3, *(v17 + v16 + 48));
          if (a5)
          {
            if (*(v17 + v16 + 96))
            {
              StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride((v17 + v16 + 104));
            }

            else
            {
              StructIndirectArgumentIndexStride = 1;
            }
          }

          else
          {
            StructIndirectArgumentIndexStride = 0;
          }
        }

        else
        {
          StructIndirectArgumentIndexStride = *(v17 + v16 + 36);
        }

        (*(a3 + 16))(a3, StructIndirectArgumentIndexStride);
        v20 = *(v17 + v16 + 88);
        (*(a3 + 16))(a3, *(v17 + v16 + 84));
        (*(a3 + 16))(a3, v20);
        v21 = v17 + v16;
        if (*(v17 + v16 + 96))
        {
          serializeStructInfo((v21 + 104), a2, a3, a4, a5);
        }

        v22 = *(v21 + 56);
        if (v22)
        {
          v23 = *v22;
          v24 = v22[2];
          v43[1] = v22[1];
          v43[2] = v24;
          v43[0] = v23;
          v25 = v22[3];
          v26 = v22[4];
          v27 = v22[6];
          v43[5] = v22[5];
          v43[6] = v27;
          v43[3] = v25;
          v43[4] = v26;
          v28 = *(v22 + 15);
          v44 = *(v22 + 14);
          v45 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = *(v22 + 17);
          v46 = *(v22 + 16);
          v47 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v30 = *(v22 + 19);
          v48 = *(v22 + 18);
          v49 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v31 = v22[10];
          v32 = v22[11];
          v52 = *(v22 + 24);
          v50 = v31;
          v51 = v32;
          memset(v53, 0, sizeof(v53));
          std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v53, *(v22 + 25), *(v22 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(v22 + 26) - *(v22 + 25)) >> 4));
          v33 = v22[14];
          v34 = v22[15];
          v35 = v22[17];
          v56 = v22[16];
          v57 = v35;
          v54 = v33;
          v55 = v34;
          memset(v41, 0, sizeof(v41));
          std::vector<MTLArgumentData>::__init_with_size[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*>(v41, v43, &v58, 1uLL);
          v42 = v53;
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v42);
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          serializeArguments(v41, a2, a3, a4);
          *&v43[0] = v41;
          std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v43);
        }

        v36 = v17 + v16;
        (*(a3 + 16))(a3, *(v36 + 76));
        result = (*(a3 + 16))(a3, *(v36 + 80));
        v16 += 176;
      }

      while (176 * v14 != v16);
    }
  }

  return result;
}

void sub_213BE010C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a13;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t AirReflection::Node::node_as_RenderTargetArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 274436) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void *std::__tree<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::__map_value_compare<std::vector<MTLStructMemberInfo> const*,std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::less<std::vector<MTLStructMemberInfo> const*>,true>,std::allocator<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>>>::__emplace_unique_key_args<std::vector<MTLStructMemberInfo> const*,std::piecewise_construct_t const&,std::tuple<std::vector<MTLStructMemberInfo> const*&&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t extractOutputImageBlockDataFromMetadata(FunctionDesc *a1, MTLArgumentData *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1 + 16;
  DataLayout = llvm::Module::getDataLayout(*(*a1 + 40));
  llvm::DataLayout::DataLayout(v6, DataLayout);
  if (*v2 && *(*v2 + 8))
  {
    MTLArgumentData::MTLArgumentData(&v5);
  }

  return MEMORY[0x21604B470](v6);
}

void sub_213BE06FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&a9, a2, a3, a4);
  MTLArgumentData::~MTLArgumentData(&a12);
  MEMORY[0x21604B470](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_10(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_9(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_15(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(a1, i))
  {
    i -= 288;
  }

  *(a1 + 8) = a2;
}

void std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 136;
        std::allocator<FunctionDesc>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<FunctionDesc>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    *(a2 + 104) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 72);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void MTLGenerateReflectionDataPass::patchTraceBufferReflectionData(MTLGenerateReflectionDataPass *this, llvm::Module *a2, char *a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  parseFunctions(a2, &v25);
  if (v26 == v25)
  {
    goto LABEL_34;
  }

  if (a4 == -1)
  {
    goto LABEL_34;
  }

  if (!a3)
  {
    goto LABEL_34;
  }

  v4 = v25[1];
  if (!v4)
  {
    goto LABEL_34;
  }

  v24 = *(v4 + 8);
  if (!v24)
  {
    goto LABEL_34;
  }

  for (i = 0; i != v24; ++i)
  {
    v6 = *(v4 - 8 * *(v4 + 8) + 8 * i);
    v7 = *(v6 + 8);
    if (!v7)
    {
      continue;
    }

    v8 = 0;
    v9 = -1;
    while (1)
    {
      v10 = *(v6 - 8 * *(v6 + 8) + 8 * v8);
      if (!*v10)
      {
        String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * v8));
        if (v12 == 18)
        {
          v13 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974;
          if (v13 && *(String + 16) == 30821)
          {
            v20 = *(*(v6 - 8 * *(v6 + 8) + 8 * (v8 + 1)) + 128);
            v21 = (v20 + 24);
            if (*(v20 + 32) >= 0x41u)
            {
              v21 = *v21;
            }

            v9 = *v21;
            v8 += 2;
            goto LABEL_10;
          }
        }

        v15 = llvm::MDString::getString(v10);
        if (v16 == 12 && *v15 == 0x5F6772612E726961 && *(v15 + 8) == 1701667182)
        {
          v18 = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * (v8 + 1)));
          if (v19 == 37 && !memcmp(v18, "__resource_tracking_impl_trace_buffer", 0x25uLL))
          {
            break;
          }
        }
      }

LABEL_10:
      if (++v8 >= v7)
      {
        goto LABEL_33;
      }
    }

    if (v9 != -1)
    {
      *&a3[a4] = v9;
      break;
    }

LABEL_33:
    ;
  }

LABEL_34:
  v28 = &v25;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&v28);
}

void sub_213BE0BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void MTLCodeGenServiceBuildRequest_cold_1()
{
  if (__cxa_guard_acquire(byte_281130268))
  {
    qword_281130260 = getpagesize();

    __cxa_guard_release(byte_281130268);
  }
}

uint64_t MTLCompilerObject::MTLCompilerObject(uint64_t a1, __int128 *a2)
{
  *(a1 + 58) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v3;
  }

  if (disableFreezer(void)::disableFreezerOnce != -1)
  {
    MTLCompilerObject::MTLCompilerObject();
  }

  *(a1 + 32) = MTLGPUCompilerCreate();
  return a1;
}

void sub_213BE0D54(_Unwind_Exception *a1)
{
  free(v1[8]);
  v1[8] = 0;
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL14disableFreezerv_block_invoke()
{
  v0 = getpid();

  return MEMORY[0x282203BE0](18, v0, 0, 0, 0);
}

double ___ZL15logCompileBeginRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERyPKcS7__block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1;
  gMachTimeToNS = *&result;
  return result;
}

uint64_t MTLCompilerPluginInterface::init(MTLCompilerPluginInterface *this, char *__s1, const void *a3, size_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  *(this + 154) = 0;
  if (strncmp(__s1, "simulatorDummyPlugin", 0x15uLL))
  {
    {
      std::string::basic_string[abi:ne200100]<0>(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes, "/System/Library/Extensions/");
      std::string::basic_string[abi:ne200100]<0>(qword_2811301B8, "/System/Library/PrivateFrameworks/");
      __cxa_atexit(__cxx_global_array_dtor, 0, &dword_213BCC000);
    }

    {
      std::string::basic_string[abi:ne200100]<0>(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPluginSuffixes, ".framework");
      std::string::basic_string[abi:ne200100]<0>(qword_281130188, ".bundle");
      __cxa_atexit(__cxx_global_array_dtor_147, 0, &dword_213BCC000);
    }

    std::string::basic_string[abi:ne200100]<0>(&v27, __s1);
    v8 = 0;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v27;
    }

    else
    {
      v9 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    v11 = (v9 + size);
    while (1)
    {
      v12 = SHIBYTE(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 2]);
      v13 = v12 >= 0 ? &MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8] : MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8];
      v14 = v12 >= 0 ? HIBYTE(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 2]) : MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 1];
      if (!v14)
      {
        break;
      }

      if (size >= v14)
      {
        v15 = *v13;
        v16 = size;
        v17 = v9;
        while (1)
        {
          v18 = v16 - v14;
          if (v18 == -1)
          {
            goto LABEL_19;
          }

          v19 = memchr(v17, v15, v18 + 1);
          if (!v19)
          {
            goto LABEL_19;
          }

          v20 = v19;
          if (!memcmp(v19, v13, v14))
          {
            break;
          }

          v17 = (&v20->__r_.__value_.__l.__data_ + 1);
          v16 = v11 - (&v20->__r_.__value_.__l.__data_ + 1);
          if (v16 < v14)
          {
            goto LABEL_19;
          }
        }

        if (v20 != v11 && v20 == v9)
        {
          break;
        }
      }

LABEL_19:
      v8 += 3;
      if (v8 == 6)
      {
        goto LABEL_31;
      }
    }

    std::string::erase(&v27, 0, v14);
LABEL_31:
    operator new();
  }

  *(this + 13) = strdup(__s1);
  *(this + 17) = 0;
  *(this + 154) = 1;
  *this = MTLSimCompilerCreate;
  *(this + 1) = MTLSimCompilerDelete;
  *(this + 4) = MTLSimCompilerBuildRequestWithOptions;
  *(this + 2) = MTLSimCompilerReleaseReply;
  if (!*(this + 16))
  {
    if (a3)
    {
      v21 = malloc_type_malloc(a4, 0x44CA798uLL);
      *(this + 14) = v21;
      *(this + 15) = a4;
      memcpy(v21, a3, a4);
    }

    *(this + 16) = (*this)(a3, a4);
  }

  if (*(this + 152) == 1 && !*(this + 18))
  {
    v22 = *(this + 9);
    if (v22)
    {
      v23 = v22();
      *(this + 18) = v23;
      if (v23)
      {
        v24 = *(this + 11);
        if (v24)
        {
          v25 = v24();
        }

        else
        {
          v25 = 0;
        }

        *(this + 153) = v25;
        return 1;
      }
    }

    else
    {
      *(this + 18) = 0;
    }

    *(this + 152) = 0;
  }

  return 1;
}

void sub_213BE15C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (byte_281130187 < 0)
  {
    MTLCompilerPluginInterface::init();
  }

  _Unwind_Resume(a1);
}

void sub_213BE1E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,MTLCompilerMeshTopologyType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerMeshTopologyType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerMeshTopologyType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void bufferTypeMap(void)::$_0::operator()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v1 = *MEMORY[0x277D85DE8];
  operator new();
}

void sub_213BE63A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a20 < 0)
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

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(v75[3]);
  }

  if (a62 < 0)
  {
    operator delete(v75[6]);
  }

  if (a65 < 0)
  {
    operator delete(v75[9]);
  }

  if (a66 < 0)
  {
    operator delete(v75[12]);
  }

  if (a67 < 0)
  {
    operator delete(v75[15]);
  }

  if (a68 < 0)
  {
    operator delete(v75[18]);
  }

  if (a69 < 0)
  {
    operator delete(v75[21]);
  }

  if (a70 < 0)
  {
    operator delete(v75[24]);
  }

  if (a71 < 0)
  {
    operator delete(v75[27]);
  }

  if (a72 < 0)
  {
    operator delete(v75[30]);
  }

  if (a73 < 0)
  {
    operator delete(*v82);
  }

  if (a74 < 0)
  {
    operator delete(v82[3]);
  }

  if (a75 < 0)
  {
    operator delete(v82[6]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(v82[9]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(v82[12]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(v82[15]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(v82[18]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(v82[21]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(v82[24]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(v82[27]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(v82[30]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(*v79);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(v79[3]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(v79[6]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(v79[9]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(v79[12]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(v79[15]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(v79[18]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(v79[21]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(v79[24]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(v79[27]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(v79[30]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*v81);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(v81[3]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(v81[6]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(v81[9]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(v81[12]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(v81[15]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(v81[18]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(v81[21]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(v81[24]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(v81[27]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(v81[30]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(*v80);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(v80[3]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(v80[6]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(v80[9]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(v80[12]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(v80[15]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(v80[18]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(v80[21]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(v80[24]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(v80[27]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(v80[30]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(*v77);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(v77[3]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(v77[6]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(v77[9]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(v77[12]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(v77[15]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(v77[18]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(v77[21]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(v77[24]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(v77[27]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(v77[30]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(STACK[0x798]);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  if (SLOBYTE(STACK[0x80F]) < 0)
  {
    operator delete(STACK[0x7F8]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(STACK[0x858]);
  }

  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (SLOBYTE(STACK[0x89F]) < 0)
  {
    operator delete(STACK[0x888]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  if (SLOBYTE(STACK[0x8CF]) < 0)
  {
    operator delete(STACK[0x8B8]);
  }

  if (SLOBYTE(STACK[0x8E7]) < 0)
  {
    operator delete(STACK[0x8D0]);
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(STACK[0x8E8]);
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  if (SLOBYTE(STACK[0x947]) < 0)
  {
    operator delete(STACK[0x930]);
  }

  if (SLOBYTE(STACK[0x95F]) < 0)
  {
    operator delete(STACK[0x948]);
  }

  if (SLOBYTE(STACK[0x977]) < 0)
  {
    operator delete(STACK[0x960]);
  }

  if (SLOBYTE(STACK[0x98F]) < 0)
  {
    operator delete(STACK[0x978]);
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  if (SLOBYTE(STACK[0x9EF]) < 0)
  {
    operator delete(STACK[0x9D8]);
  }

  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  if (SLOBYTE(STACK[0xA37]) < 0)
  {
    operator delete(STACK[0xA20]);
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(STACK[0xA38]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  if (SLOBYTE(STACK[0xA97]) < 0)
  {
    operator delete(STACK[0xA80]);
  }

  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  if (SLOBYTE(STACK[0xAC7]) < 0)
  {
    operator delete(STACK[0xAB0]);
  }

  if (SLOBYTE(STACK[0xADF]) < 0)
  {
    operator delete(STACK[0xAC8]);
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(STACK[0xAE0]);
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(STACK[0xAF8]);
  }

  if (SLOBYTE(STACK[0xB27]) < 0)
  {
    operator delete(STACK[0xB10]);
  }

  if (SLOBYTE(STACK[0xB3F]) < 0)
  {
    operator delete(STACK[0xB28]);
  }

  if (SLOBYTE(STACK[0xB57]) < 0)
  {
    operator delete(STACK[0xB40]);
  }

  if (SLOBYTE(STACK[0xB6F]) < 0)
  {
    operator delete(STACK[0xB58]);
  }

  if (SLOBYTE(STACK[0xB87]) < 0)
  {
    operator delete(STACK[0xB70]);
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(STACK[0xB88]);
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(STACK[0xBA0]);
  }

  if (SLOBYTE(STACK[0xBCF]) < 0)
  {
    operator delete(STACK[0xBB8]);
  }

  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  if (SLOBYTE(STACK[0xBFF]) < 0)
  {
    operator delete(STACK[0xBE8]);
  }

  if (SLOBYTE(STACK[0xC17]) < 0)
  {
    operator delete(STACK[0xC00]);
  }

  if (SLOBYTE(STACK[0xC2F]) < 0)
  {
    operator delete(STACK[0xC18]);
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(STACK[0xC30]);
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(STACK[0xC48]);
  }

  if (SLOBYTE(STACK[0xC77]) < 0)
  {
    operator delete(STACK[0xC60]);
  }

  if (SLOBYTE(STACK[0xC8F]) < 0)
  {
    operator delete(STACK[0xC78]);
  }

  if (SLOBYTE(STACK[0xCA7]) < 0)
  {
    operator delete(STACK[0xC90]);
  }

  if (SLOBYTE(STACK[0xCBF]) < 0)
  {
    operator delete(STACK[0xCA8]);
  }

  if (SLOBYTE(STACK[0xCD7]) < 0)
  {
    operator delete(STACK[0xCC0]);
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(STACK[0xCD8]);
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(STACK[0xCF0]);
  }

  if (SLOBYTE(STACK[0xD1F]) < 0)
  {
    operator delete(STACK[0xD08]);
  }

  if (SLOBYTE(STACK[0xD37]) < 0)
  {
    operator delete(STACK[0xD20]);
  }

  if (SLOBYTE(STACK[0xD4F]) < 0)
  {
    operator delete(STACK[0xD38]);
  }

  if (SLOBYTE(STACK[0xD67]) < 0)
  {
    operator delete(STACK[0xD50]);
  }

  if (SLOBYTE(STACK[0xD7F]) < 0)
  {
    operator delete(STACK[0xD68]);
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(STACK[0xD80]);
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(STACK[0xD98]);
  }

  if (SLOBYTE(STACK[0xDC7]) < 0)
  {
    operator delete(STACK[0xDB0]);
  }

  if (SLOBYTE(STACK[0xDDF]) < 0)
  {
    operator delete(STACK[0xDC8]);
  }

  if (SLOBYTE(STACK[0xDF7]) < 0)
  {
    operator delete(STACK[0xDE0]);
  }

  if (SLOBYTE(STACK[0xE0F]) < 0)
  {
    operator delete(STACK[0xDF8]);
  }

  if (SLOBYTE(STACK[0xE27]) < 0)
  {
    operator delete(STACK[0xE10]);
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(STACK[0xE28]);
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(STACK[0xE40]);
  }

  if (SLOBYTE(STACK[0xE6F]) < 0)
  {
    operator delete(STACK[0xE58]);
  }

  if (SLOBYTE(STACK[0xE87]) < 0)
  {
    operator delete(STACK[0xE70]);
  }

  if (SLOBYTE(STACK[0xE9F]) < 0)
  {
    operator delete(STACK[0xE88]);
  }

  if (SLOBYTE(STACK[0xEB7]) < 0)
  {
    operator delete(STACK[0xEA0]);
  }

  if (SLOBYTE(STACK[0xECF]) < 0)
  {
    operator delete(STACK[0xEB8]);
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(STACK[0xED0]);
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(STACK[0xEE8]);
  }

  if (SLOBYTE(STACK[0xF17]) < 0)
  {
    operator delete(STACK[0xF00]);
  }

  if (SLOBYTE(STACK[0xF2F]) < 0)
  {
    operator delete(STACK[0xF18]);
  }

  if (SLOBYTE(STACK[0xF47]) < 0)
  {
    operator delete(STACK[0xF30]);
  }

  if (SLOBYTE(STACK[0xF5F]) < 0)
  {
    operator delete(STACK[0xF48]);
  }

  if (SLOBYTE(STACK[0xF77]) < 0)
  {
    operator delete(STACK[0xF60]);
  }

  if (SLOBYTE(STACK[0xF8F]) < 0)
  {
    operator delete(STACK[0xF78]);
  }

  if (SLOBYTE(STACK[0xFA7]) < 0)
  {
    operator delete(STACK[0xF90]);
  }

  if (SLOBYTE(STACK[0xFBF]) < 0)
  {
    operator delete(STACK[0xFA8]);
  }

  if (SLOBYTE(STACK[0xFD7]) < 0)
  {
    operator delete(STACK[0xFC0]);
  }

  if (SLOBYTE(STACK[0xFEF]) < 0)
  {
    operator delete(STACK[0xFD8]);
  }

  if (SLOBYTE(STACK[0x1007]) < 0)
  {
    operator delete(STACK[0xFF0]);
  }

  if (SLOBYTE(STACK[0x101F]) < 0)
  {
    operator delete(STACK[0x1008]);
  }

  if (*(v78 + 23) < 0)
  {
    operator delete(*v78);
  }

  if (*(v78 + 47) < 0)
  {
    operator delete(*(v78 + 24));
  }

  while (v76 != &STACK[0x1050])
  {
    v83 = *(v76 - 17);
    v76 -= 5;
    if (v83 < 0)
    {
      operator delete(*v76);
    }
  }

  MEMORY[0x21604C990](a10, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TokenData> const&>(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__construct_node<std::pair<std::string const,TokenData> const&>();
  }

  return result;
}

uint64_t std::map<std::string,TokenData>::map[abi:ne200100](uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TokenData> const&>(a1, v4, a2, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = *(v18 + 16);
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, (v15 + 32)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 8);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_213BE7E6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

llvm::Module *MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(int a1, llvm::Module *this, int a3, int a4, int *a5, llvm::Value **a6, int a7)
{
  v149 = a6;
  v150 = a5;
  LODWORD(v154) = a4;
  v205[38] = *MEMORY[0x277D85DE8];
  v157 = *this;
  v191[0] = "air.vertex";
  v192[8] = 259;
  v151 = this;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v191);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v11 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  memset(v181, 0, sizeof(v181));
  std::vector<BOOL>::reserve(v181, *(v11 + 96));
  v179 = 0;
  v178 = 0;
  v180 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v178, *(v11 + 96));
  v175 = 0;
  v176 = 0;
  v177 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v175, *(v11 + 96));
  v12 = *(Operand + 8);
  if (v12 >= 4 && (v13 = *(Operand - 8 * v12 + 24), v14 = *(v13 + 8), v14 >= 2) && (v15 = llvm::MDString::getString(*(v13 - 8 * v14)), v16 == 9) && (*v15 == 0x637461702E726961 ? (v17 = *(v15 + 8) == 104) : (v17 = 0), v17))
  {
    String = llvm::MDString::getString(*(v13 - 8 * *(v13 + 8) + 8));
    if (v131 == 8)
    {
      v19 = 0;
      v132 = bswap64(*String);
      v133 = v132 >= 0x747269616E676C65;
      v134 = v132 > 0x747269616E676C65;
      v135 = !v133;
      v18 = v134 == v135;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

  v172 = 0;
  v173 = 0;
  v174 = 0;
  std::vector<BuiltInInfo>::reserve(&v172, 0xAuLL);
  LOBYTE(v191[0]) = -1;
  std::vector<signed char>::vector[abi:ne200100](v171, 10, v191);
  std::vector<unsigned int>::vector[abi:ne200100](v170, *(v11 + 96));
  MTLFrameworkPass::getArgumentMetadataIndices(*(Operand - 8 * *(Operand + 8) + 16), v170);
  Int32Ty = *(Operand - 8 * *(Operand + 8) + 16);
  v20 = *(v11 + 96);
  if (*(v11 + 18))
  {
    llvm::Function::BuildLazyArguments(v11);
  }

  LODWORD(v140) = v19;
  LODWORD(v139) = v18;
  LODWORD(v141) = a7;
  LODWORD(v138) = a3;
  v145 = v11;
  v136 = NamedMetadata;
  v142 = Operand;
  if (v20 < 1)
  {
    v155 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v155 = 0;
    v156 = 0;
    v23 = 0;
    v24 = *(v145 + 11);
    Int8Ty = &v190;
    Int64Ty = v20 & 0x7FFFFFFF;
    do
    {
      if (*(v170[0] + v21) != -1)
      {
        DataLayout = llvm::Module::getDataLayout(v151);
        llvm::DataLayout::DataLayout(v191, DataLayout);
        MTLArgumentData::MTLArgumentData(&v184);
      }

      LOBYTE(v191[0]) = 0;
      std::vector<BOOL>::push_back(v181, v191);
      if (v23 >= v156)
      {
        v152 = v21;
        v26 = v22;
        v27 = v23 - v155;
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v155) >> 2);
        v29 = v28 + 1;
        if (v28 + 1 > 0x1555555555555555)
        {
          std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v156 - v155) >> 2) > v29)
        {
          v29 = 0x5555555555555556 * ((v156 - v155) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v156 - v155) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v30 = 0x1555555555555555;
        }

        else
        {
          v30 = v29;
        }

        if (v30)
        {
          if (v30 <= 0x1555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v31 = 12 * v28;
        v156 = 0;
        *v31 = 0;
        *(v31 + 1) = 11;
        *(v31 + 4) = -1;
        *(v31 + 8) = 0;
        v23 = 12 * v28 + 12;
        memcpy((12 * v28 + 12 * (v27 / -12)), v155, v27);
        if (v155)
        {
          operator delete(v155);
        }

        v155 = (12 * v28 + 12 * (v27 / -12));
        v22 = v26;
        v21 = v152;
      }

      else
      {
        *v23 = 0;
        *(v23 + 1) = 11;
        *(v23 + 4) = -1;
        *(v23 + 8) = 0;
        v23 += 12;
      }

      v24 += 40;
      v21 = (v21 + 1);
    }

    while (v21 != Int64Ty);
  }

  LOBYTE(v191[0]) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&v168, 10, v191);
  v168[1] = 1;
  v33 = v157;
  v34 = v145;
  if (v140)
  {
    *v168 = 1;
  }

  else
  {
    v168[3] = 1;
    if (v139)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v168[4] = v35;
  }

  if (v141)
  {
    v168[8] = 1;
  }

  if (v154)
  {
    Int8Ty = 0;
    v36 = -1;
  }

  else
  {
    Int8Ty = llvm::Type::getInt8Ty(v33, v32);
    v37 = llvm::PointerType::get();
    v38 = v179;
    v39 = v179 - v178;
    if (v179 >= v180)
    {
      v41 = v39 >> 3;
      v42 = (v39 >> 3) + 1;
      if (v42 >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v43 = (v180 - v178) >> 2;
      if (v43 <= v42)
      {
        v43 = (v39 >> 3) + 1;
      }

      if (v180 - v178 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v43;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v178, v44);
      }

      *(8 * v41) = v37;
      v40 = 8 * v41 + 8;
      v45 = (8 * v41 - (v179 - v178));
      memcpy(v45, v178, v179 - v178);
      v46 = v178;
      v178 = v45;
      v179 = v40;
      v180 = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v179 = v37;
      v40 = (v38 + 8);
    }

    v179 = v40;
    MTLFrameworkPass::appendBufferMetadata(v157, &v175, v138, 0);
    v36 = (v39 >> 3);
    v33 = v157;
  }

  *&v47 = -1;
  *(&v47 + 1) = -1;
  v167[3] = v47;
  v167[4] = v47;
  v167[1] = v47;
  v167[2] = v47;
  v167[0] = v47;
  v48 = v33;
  Int1Ty = llvm::Type::getInt1Ty(v33, v32);
  v138 = v36;
  Int32Ty = llvm::Type::getInt32Ty(v48, v50);
  Int64Ty = llvm::Type::getInt64Ty(v48, v51);
  MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(&v172, v171, &v168);
  if ((v154 & 1) == 0)
  {
    v53 = v172;
    for (i = v173; v53 != i; *(v167 + v56) = v52)
    {
      LLVMVectorType = MTLFrameworkPass::getLLVMVectorType(v157, *(v53 + 1), v53[1]);
      v52 = MTLFrameworkPass::addBuiltInParameter(v157, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v53], &v178, &v175, LLVMVectorType, *(v53 + 1), v53[1]);
      v56 = *v53;
      v53 += 8;
    }
  }

  v137 = Int1Ty;
  v140 = &v136;
  v57 = **(*(v34 + 3) + 16);
  v143 = v192;
  v144 = v57;
  v191[0] = v192;
  v191[1] = 0x200000000;
  v195 = v157;
  v196 = &v204;
  v197 = v205;
  v198 = 0;
  v199 = 0;
  v200 = 512;
  v201 = 7;
  v194 = 0;
  v193 = 0;
  v141 = &v204;
  v203 = 0;
  v202 = 0;
  v204 = MEMORY[0x277D821C8] + 16;
  v139 = v205;
  v205[0] = MEMORY[0x277D82210] + 16;
  MEMORY[0x28223BE20](v52);
  if ((v61 & 0x7FFFFFE00) != 0)
  {
    v62 = v59;
  }

  else
  {
    v62 = v58;
  }

  v156 = &v136 - v60;
  bzero(&v136 - v60, v62);
  v152 = 0;
  v148 = 0;
  if ((v154 & 1) == 0)
  {
    llvm::Type::getVoidTy(v157, v63);
    v64 = llvm::FunctionType::get();
    *&v184 = "air.vertexDumpFunction";
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 259;
    v65 = llvm::Function::Create(v64, 0, &v184, v151);
    createDebugInfoForWrapperFunction(v157, v191, v65, v34);
    v67 = v172;
    v68 = v173;
    if (v172 == v173)
    {
LABEL_69:
      *&v184 = "Body";
      LOWORD(v185.__r_.__value_.__r.__words[2]) = 259;
      llvm::BasicBlock::Create(v157, &v184, v65, 0, v66);
    }

    while (1)
    {
      v69 = *(v67 + 1);
      if (v69 > 0x29)
      {
        break;
      }

      if (((1 << v69) & 0x10008) == 0)
      {
        if (((1 << v69) & 0x2020000000) == 0 && ((1 << v69) & 0x20200000000) == 0)
        {
          break;
        }

        llvm::Function::addParamAttr();
      }

      v67 += 8;
      if (v67 == v68)
      {
        goto LABEL_69;
      }
    }

    abort();
  }

  v145 = 0;
  v137 = 0;
  v138 = 0;
  *v150 = 0;
  v71 = v168;
  v70 = v169;
  if (v169 != v168)
  {
    v72 = 0;
    v73 = 0;
    do
    {
      if (v71[v73])
      {
        v74 = &v172[8 * *(v171[0] + (v72 >> 56))];
        VectorDataType = MTLDataTypeGetVectorDataType(*(v74 + 1), v74[1]);
        v76 = MTLFrameworkPass::getLLVMVectorType(v157, *(v74 + 1), v74[1]);
        v77 = v76;
        if (v154)
        {
          v78 = 0;
        }

        else
        {
          v78 = *&v156[8 * *(v167 + *v74)];
        }

        *&v184 = llvm::Type::getPrimitiveSizeInBits(v76);
        DWORD2(v184) = v79;
        v80 = llvm::TypeSize::operator unsigned long long() >> 3;
        if (v80 <= 4)
        {
          LODWORD(v80) = 4;
        }

        v81 = *v150;
        *v150 += (v80 + 3) & 0xFFFFFFFC;
        std::string::basic_string[abi:ne200100]<0>(&v165, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v74]);
        std::string::basic_string[abi:ne200100]<0>(&v163, &unk_213C7E907);
        PostVertexDumpOutput::PostVertexDumpOutput(&v184, v77, v78, &v165, VectorDataType, 0, VectorDataType, &v163, v81);
        std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](v149, &v184);
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v185.__r_.__value_.__l.__data_);
        }

        if (v164 < 0)
        {
          operator delete(v163);
        }

        if (v166 < 0)
        {
          operator delete(v165);
        }

        v71 = v168;
        v70 = v169;
      }

      ++v73;
      v72 += 0x100000000000000;
    }

    while (v73 < v70 - v71);
  }

  v82 = *(v142 - 8 * *(v142 + 8) + 8);
  if (v154)
  {
    v83 = 0;
  }

  else
  {
    v83 = v191;
  }

  std::string::basic_string[abi:ne200100]<0>(v161, &unk_213C7E907);
  std::string::basic_string[abi:ne200100]<0>(v159, &unk_213C7E907);
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = ___ZN35MTLAddPostVertexDumpingToModulePass28addPostVertexDumpingToModuleEPN4llvm6ModuleEibRjRNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEb_block_invoke;
  v158[3] = &__block_descriptor_48_e320_v96__0r__Type___LLVMContext_b8b24I___Type__8__Value___Type___Use_Cb1b7Sb27b1b1b1b1b1_16_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___24Q48Q56Q64_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___72l;
  v158[4] = v150;
  v158[5] = v149;
  iterateAllContainedValues(v83, v144, v148, v82, v161, 0, 0, 0, v159, v158);
  v84 = v145;
  if (v160 < 0)
  {
    operator delete(v159[0]);
  }

  if (v162 < 0)
  {
    operator delete(v161[0]);
  }

  if ((v154 & 1) == 0)
  {
    v85 = llvm::ConstantInt::get();
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    GEP = llvm::IRBuilderBase::CreateGEP(v191, Int8Ty, v84, v85, &v184);
    v87 = llvm::ConstantInt::get();
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    Mul = llvm::IRBuilderBase::CreateMul(v191, v152, v87, &v184, 0, 0);
    v89 = *(GEP + 9);
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    v90 = llvm::IRBuilderBase::CreateGEP(v191, v89, GEP, Mul, &v184);
    v92 = *v149;
    v156 = v149[1];
    if (v92 != v156)
    {
      v93 = v90;
      v154 = v90;
      do
      {
        v184 = *v92;
        if (*(v92 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v185, *(v92 + 16), *(v92 + 24));
        }

        else
        {
          v94 = *(v92 + 16);
          v185.__r_.__value_.__r.__words[2] = *(v92 + 32);
          *&v185.__r_.__value_.__l.__data_ = v94;
        }

        v95 = *(v92 + 40);
        v187 = *(v92 + 56);
        v186 = v95;
        if (*(v92 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(&v188, *(v92 + 64), *(v92 + 72));
        }

        else
        {
          v96 = *(v92 + 64);
          v188.__r_.__value_.__r.__words[2] = *(v92 + 80);
          *&v188.__r_.__value_.__l.__data_ = v96;
        }

        v189 = *(v92 + 88);
        v97 = *(&v184 + 1);
        v98 = *(v93 + 9);
        v99 = llvm::ConstantInt::get();
        v183 = 257;
        v100 = llvm::IRBuilderBase::CreateGEP(v191, v98, v93, v99, v182);
        v101 = llvm::PointerType::get();
        v183 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v191, 49, v100, v101, v182);
        v104 = *v97;
        if ((*(*v97 + 8) & 0xFE) == 0x12)
        {
          v105 = *(v104 + 32);
          v106 = *(v104 + 24);
          llvm::Type::getInt32Ty(*v104, v102);
          v107 = llvm::PointerType::get();
          v183 = 257;
          v108 = llvm::IRBuilderBase::CreateCast(v191, 49, Cast, v107, v182);
          if (v105)
          {
            v109 = v108;
            for (j = 0; j != v105; ++j)
            {
              v111 = llvm::ConstantInt::get();
              v183 = 257;
              Element = llvm::IRBuilderBase::CreateExtractElement(v191, v97, v111, v182, v112);
              v183 = 257;
              v114 = llvm::IRBuilderBase::CreateGEP(v191, v106, v109, v111, v182);
              llvm::IRBuilderBase::CreateAlignedStore(v191, Element, v114, 0, 0);
            }
          }
        }

        else
        {
          llvm::IRBuilderBase::CreateAlignedStore(v191, v97, Cast, 258, 0);
        }

        v93 = v154;
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v185.__r_.__value_.__l.__data_);
        }

        v92 += 96;
      }

      while (v92 != v156);
    }

    v115 = v138;
    v116 = llvm::BranchInst::Create(v138, 0, v91);
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    llvm::IRBuilderBase::Insert<llvm::CastInst>(v191, v116, &v184);
    llvm::IRBuilderBase::SetInsertPoint(v191, v115, v115 + 40);
    v117 = v142;
    v119 = llvm::ReturnInst::Create(v195, 0, 0, v118);
    LOWORD(v185.__r_.__value_.__r.__words[2]) = 257;
    v120 = llvm::IRBuilderBase::Insert<llvm::CastInst>(v191, v119, &v184);
    v121 = *(v117 + 8);
    MEMORY[0x28223BE20](v120);
    v123 = (&v136 - ((v122 + 15) & 0xFFFFFFFF0));
    if (v122 >= 0x200)
    {
      v124 = 512;
    }

    else
    {
      v124 = v122;
    }

    bzero(&v136 - ((v122 + 15) & 0xFFFFFFFF0), v124);
    *v123 = llvm::ValueAsMetadata::get();
    v123[1] = llvm::MDTuple::getImpl();
    v123[2] = llvm::MDTuple::getImpl();
    if (v121 >= 4)
    {
      v125 = (v117 - 8 * *(v117 + 8) + 24);
      v126 = v123 + 3;
      v127 = v121 - 3;
      do
      {
        v128 = *v125++;
        *v126++ = v128;
        --v127;
      }

      while (v127);
    }

    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::eraseFromParent(v136);
    llvm::Module::getOrInsertNamedMetadata();
    llvm::NamedMDNode::addOperand();
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v139);
  llvm::IRBuilderFolder::~IRBuilderFolder(v141);
  if (v191[0] != v143)
  {
    free(v191[0]);
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v170[0])
  {
    v170[1] = v170[0];
    operator delete(v170[0]);
  }

  if (v171[0])
  {
    v171[1] = v171[0];
    operator delete(v171[0]);
  }

  if (v172)
  {
    v173 = v172;
    operator delete(v172);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v178)
  {
    v179 = v178;
    operator delete(v178);
  }

  if (v155)
  {
    operator delete(v155);
  }

  if (v181[0])
  {
    operator delete(v181[0]);
  }

  return v151;
}

void sub_213BE9784(_Unwind_Exception *exception_object)
{
  v1[19] = 0;
  v3 = v1[62];
  if (v3)
  {
    v1[63] = v3;
    operator delete(v3);
  }

  v4 = v1[65];
  if (v4)
  {
    v1[66] = v4;
    operator delete(v4);
  }

  v5 = v1[19];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[68];
  if (v6)
  {
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_213BE9AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void std::vector<BuiltInInfo>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(a1, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<signed char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213BE9ED4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213BE9FD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *MTLFrameworkPass::getArgumentMetadataIndices(uint64_t a1, uint64_t a2)
{
  result = memset(*a2, 255, *(a2 + 8) - *a2);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = *a2;
    v8 = a1;
    do
    {
      v9 = *(v8 - 8 * *(a1 + 8));
      v10 = *(*(v9 - 8 * *(v9 + 8)) + 128);
      v11 = (v10 + 24);
      if (*(v10 + 32) >= 0x41u)
      {
        v11 = *v11;
      }

      v7[*v11] = v6++;
      v8 += 8;
    }

    while (v5 != v6);
  }

  return result;
}

void std::vector<BOOL>::push_back(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

uint64_t vertexFetchBuiltInInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = strlen(v4);
  LODWORD(v4) = dataTypeFromString(v4, v5);
  *(a1 + 4) = MTLDataTypeGetComponentType(v4);
  result = MTLDataTypeGetComponentCount(v4);
  *(a1 + 1) = result;
  v7 = *(a2 + 12) - 1;
  if (v7 <= 0x15 && ((0x30F01Bu >> v7) & 1) != 0)
  {
    *a1 = byte_213C7D1B1[v7];
  }

  return result;
}

uint64_t MTLDataTypeGetComponentCount(int a1)
{
  if ((a1 - 3) > 0x55)
  {
    return 0;
  }

  else
  {
    return byte_213C7D320[a1 - 3];
  }
}

uint64_t MTLDataTypeGetComponentType(int a1)
{
  if ((a1 - 3) > 0x55)
  {
    return 0;
  }

  else
  {
    return dword_213C7D1C8[a1 - 3];
  }
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213BEA25C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(_DWORD *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (v3 != *a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (v4 + v9);
      v11 = *(v4 + v9);
      if (*(v4 + v9))
      {
        if (v9 >= 0xAu)
        {
          abort();
        }

        v12 = *(*a2 + (v8 >> 56));
        v13 = dword_213C7D460[v9 & 0xF];
        v14 = *a1;
        if (v12 == -1)
        {
          *(*a2 + (v8 >> 56)) = (a1[2] - v14) >> 3;
          v19 = *(a1 + 1);
          v18 = *(a1 + 2);
          if (v19 >= v18)
          {
            v21 = (v19 - *a1) >> 3;
            if ((v21 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v22 = v18 - *a1;
            v23 = v22 >> 2;
            if (v22 >> 2 <= (v21 + 1))
            {
              v23 = v21 + 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(a1, v24);
            }

            v25 = (8 * v21);
            *v25 = (v11 << 8) | (v13 << 32) | v9 & 0xF;
            v20 = 8 * v21 + 8;
            v26 = *(a1 + 1) - *a1;
            v27 = v25 - v26;
            memcpy(v25 - v26, *a1, v26);
            v28 = *a1;
            *a1 = v27;
            *(a1 + 1) = v20;
            *(a1 + 2) = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v19 = (v11 << 8) | (v13 << 32) | v9 & 0xF;
            v20 = (v19 + 1);
          }

          *(a1 + 1) = v20;
          v4 = *a3;
          v3 = a3[1];
        }

        else
        {
          v15 = v14 + 8 * v12;
          v17 = *(v15 + 1);
          v16 = v15 + 1;
          if (v17 >= v11)
          {
            v10 = v16;
          }

          *v16 = *v10;
          *(v16 + 3) = v13;
        }
      }

      ++v9;
      v8 += 0x100000000000000;
    }

    while (v9 < v3 - v4);
  }
}

uint64_t MTLDataTypeGetVectorDataType(int a1, int a2)
{
  v2 = a2 - 1;
  if (a1 <= 40)
  {
    v3 = a2 + 28;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v10 = a2 + 32;
    if (v2 >= 4)
    {
      v10 = 0;
    }

    v11 = a2 + 36;
    if (v2 >= 4)
    {
      v11 = 0;
    }

    if (a1 != 37)
    {
      v11 = 0;
    }

    if (a1 != 33)
    {
      v10 = v11;
    }

    if (a1 != 29)
    {
      v3 = v10;
    }

    v12 = v2 >= 4;
    if (v2 >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2 + 2;
    }

    v13 = a2 + 15;
    if (v12)
    {
      v13 = 0;
    }

    if (a1 != 16)
    {
      v13 = 0;
    }

    if (a1 != 3)
    {
      v8 = v13;
    }

    v9 = a1 <= 28;
  }

  else
  {
    v3 = a2 + 52;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v4 = a2 + 80;
    if (v2 >= 4)
    {
      v4 = 0;
    }

    v5 = a2 + 84;
    if (v2 >= 4)
    {
      v5 = 0;
    }

    if (a1 != 85)
    {
      v5 = 0;
    }

    if (a1 != 81)
    {
      v4 = v5;
    }

    if (a1 != 53)
    {
      v3 = v4;
    }

    v6 = a2 + 40;
    if (v2 >= 4)
    {
      v6 = 0;
    }

    v7 = a2 + 44;
    if (v2 < 4)
    {
      v8 = a2 + 48;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    if (a1 != 49)
    {
      v8 = 0;
    }

    if (a1 == 45)
    {
      v8 = v7;
    }

    if (a1 == 41)
    {
      v8 = v6;
    }

    v9 = a1 <= 52;
  }

  if (v9)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

uint64_t MTLFrameworkPass::getLLVMVectorType(llvm::Type *a1, llvm::LLVMContext *a2, unsigned int a3)
{
  if (a2 <= 32)
  {
    switch(a2)
    {
      case 3:
        result = llvm::Type::getFloatTy(a1, a2);
        break;
      case 0x10:
        result = llvm::Type::getHalfTy(a1, a2);
        break;
      case 0x1D:
        goto LABEL_9;
      default:
        goto LABEL_21;
    }
  }

  else
  {
    if (a2 <= 40)
    {
      if (a2 != 33)
      {
        if (a2 != 37)
        {
LABEL_21:
          abort();
        }

        goto LABEL_13;
      }

LABEL_9:
      result = llvm::Type::getInt32Ty(a1, a2);
      goto LABEL_16;
    }

    if (a2 == 41)
    {
LABEL_13:
      result = llvm::Type::getInt16Ty(a1, a2);
      goto LABEL_16;
    }

    if (a2 != 53)
    {
      goto LABEL_21;
    }

    result = llvm::Type::getInt1Ty(a1, a2);
  }

LABEL_16:
  if (a3 >= 2)
  {

    return llvm::VectorType::get();
  }

  return result;
}

uint64_t std::vector<PostVertexDumpOutput>::__emplace_back_slow_path<PostVertexDumpOutput>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PostVertexDumpOutput>>(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v9;
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 64) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(v7 + 88) = *(a2 + 88);
  *&v19 = 96 * v2 + 96;
  v11 = a1[1];
  v12 = 96 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(&v17);
  return v16;
}

void sub_213BEA724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PostVertexDumpOutput>::__emplace_back_slow_path<PostVertexDumpOutput>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v5;
    v6 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 64) = v6;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(v3 + 88) = *(a2 + 88);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PostVertexDumpOutput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t PostVertexDumpOutput::PostVertexDumpOutput(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, int a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v14 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v14;
  }

  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a8, *(a8 + 1));
  }

  else
  {
    v15 = *a8;
    *(a1 + 80) = *(a8 + 2);
    *(a1 + 64) = v15;
  }

  *(a1 + 88) = a9;
  return a1;
}

void sub_213BEA8C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 16) = v8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      v10 = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 64) = v10;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = 0;
      *(a4 + 88) = *(v7 + 88);
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void **std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(void **a1)
{
  std::__split_buffer<PostVertexDumpOutput>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__split_buffer<PostVertexDumpOutput>::clear[abi:ne200100](void *result)
{
  v2 = result[1];
  for (i = result[2]; i != v2; i = result[2])
  {
    v4 = result[4];
    result[2] = i - 96;
    std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v4, i - 96);
  }
}

void std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 16);

    operator delete(v3);
  }
}

void iterateAllContainedValues(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, const void **a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v102 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v100, &unk_213C7E907);
  std::string::basic_string[abi:ne200100]<0>(&v99, &unk_213C7E907);
  v79 = a2;
  v82 = a6;
  if (a4)
  {
    v17 = *(a4 + 8);
    if (v17)
    {
      v18 = 0;
      v85 = 0;
      v87 = 0;
      v83 = 0;
      v19 = -v17;
      v20 = a4;
      while (1)
      {
        v21 = *(v20 - 8 * *(a4 + 8));
        if (v21 && !*v21)
        {
          String = llvm::MDString::getString(v21);
          v101.__r_.__value_.__r.__words[0] = String;
          v101.__r_.__value_.__l.__size_ = v23;
          if (v23 != 17)
          {
            if (v23 == 12 && *String == 0x5F6772612E726961 && *(String + 8) == 1701667182)
            {
              v95.__r_.__value_.__r.__words[0] = llvm::MDString::getString(*(v20 - 8 * *(a4 + 8) + 8));
              v95.__r_.__value_.__l.__size_ = v25;
              llvm::StringRef::str(&v95.__r_.__value_.__l.__data_, &v97);
              if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v99.__r_.__value_.__l.__data_);
              }

              v99 = v97;
              goto LABEL_28;
            }

LABEL_23:
            if (!v18)
            {
              llvm::StringRef::str(&v101.__r_.__value_.__l.__data_, &v97);
              if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v100.__r_.__value_.__l.__data_);
              }

              v100 = v97;
            }

            goto LABEL_28;
          }

          if (*String != 0x5F6772612E726961 || *(String + 8) != 0x6D616E5F65707974 || *(String + 16) != 101)
          {
            goto LABEL_23;
          }

          v28 = a7;
          v29 = a8;
          v30 = llvm::MDString::getString(*(v20 - 8 * *(a4 + 8) + 8));
          v31 = strlen(v30);
          v32 = dataTypeFromString(v30, v31);
          v33 = strlen(v30);
          v34 = pixelFormatAndALUTypeFromString(v30, v33);
          v83 = HIDWORD(v34);
          v85 = v34;
          v87 = v32;
          a8 = v29;
          a7 = v28;
        }

LABEL_28:
        v20 += 8;
        if (v19 == --v18)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v83 = 0;
  v85 = 0;
  v87 = 0;
LABEL_31:
  v35 = *(a5 + 23);
  if (v35 < 0)
  {
    if (a5[1])
    {
      goto LABEL_33;
    }

LABEL_46:
    std::string::basic_string[abi:ne200100]<0>(&v97, &unk_213C7E907);
    goto LABEL_47;
  }

  if (!*(a5 + 23))
  {
    goto LABEL_46;
  }

LABEL_33:
  if (v35 >= 0)
  {
    v36 = *(a5 + 23);
  }

  else
  {
    v36 = a5[1];
  }

  std::string::basic_string[abi:ne200100](&v97, v36 + 1);
  v37 = a7;
  v38 = a8;
  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v97;
  }

  else
  {
    v39 = v97.__r_.__value_.__r.__words[0];
  }

  if (v36)
  {
    if (*(a5 + 23) >= 0)
    {
      v40 = a5;
    }

    else
    {
      v40 = *a5;
    }

    memmove(v39, v40, v36);
  }

  *(&v39->__r_.__value_.__l.__data_ + v36) = 32;
  a8 = v38;
  a7 = v37;
LABEL_47:
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v100;
  }

  else
  {
    v41 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v97, v41, size);
  v44 = v43->__r_.__value_.__r.__words[0];
  v101.__r_.__value_.__r.__words[0] = v43->__r_.__value_.__l.__size_;
  *(v101.__r_.__value_.__r.__words + 7) = *(&v43->__r_.__value_.__r.__words[1] + 7);
  v45 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  v46 = v101.__r_.__value_.__r.__words[0];
  *a5 = v44;
  a5[1] = v46;
  *(a5 + 15) = *(v101.__r_.__value_.__r.__words + 7);
  *(a5 + 23) = v45;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v82)
  {
    v47 = v82;
  }

  else
  {
    v47 = v87;
  }

  v48 = v85;
  if (a7)
  {
    v48 = a7;
  }

  v86 = v48;
  v88 = v47;
  v49 = v83;
  if (a8)
  {
    v49 = a8;
  }

  v84 = v49;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a9, &v99.__r_.__value_.__l.__data_, &v97);
  v50 = (a9 + 23);
  if (*(a9 + 23) < 0)
  {
    operator delete(*a9);
  }

  *a9 = v97;
  v51 = *(v79 + 8);
  if (v51 == 7)
  {
    goto LABEL_166;
  }

  if (v51 == 16)
  {
    std::string::basic_string[abi:ne200100]<0>(&v101, &unk_213C7E907);
    if (*(v79 + 24))
    {
      v95.__r_.__value_.__r.__words[0] = llvm::StructType::getName(v79);
      v95.__r_.__value_.__l.__size_ = v66;
      llvm::StringRef::str(&v95.__r_.__value_.__l.__data_, &v97);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      v101 = v97;
    }

    v67 = *v50;
    if (v67 < 0)
    {
      v67 = *(a9 + 8);
    }

    if (v67)
    {
      v68 = a9;
    }

    else
    {
      v68 = &v101;
    }

    if (v67)
    {
      v69 = (a9 + 23);
    }

    else
    {
      v69 = &v101.__r_.__value_.__r.__words[2] + 7;
    }

    if ((v68->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v68->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v68->__r_.__value_.__l.__size_;
    }

    v71 = &v95;
    std::string::basic_string[abi:ne200100](&v95, v70 + 1);
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v71 = v95.__r_.__value_.__r.__words[0];
    }

    if (v70)
    {
      if (*v69 >= 0)
      {
        v72 = v68;
      }

      else
      {
        v72 = v68->__r_.__value_.__r.__words[0];
      }

      memmove(v71, v72, v70);
    }

    *(&v71->__r_.__value_.__l.__data_ + v70) = 46;
    v73 = *(v79 + 12);
    v96[0] = 0;
    if (!v73)
    {
LABEL_151:
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_166;
      }

      v78 = v101.__r_.__value_.__r.__words[0];
LABEL_165:
      operator delete(v78);
      goto LABEL_166;
    }

    v74 = 0;
    while (1)
    {
      v75 = *(*(v79 + 16) + 8 * v74);
      if (a1)
      {
        v98 = 257;
        Value = llvm::IRBuilderBase::CreateExtractValue(a1, a3, v96, 1, &v97);
        if (!a4)
        {
          goto LABEL_139;
        }
      }

      else
      {
        Value = 0;
        if (!a4)
        {
LABEL_139:
          v77 = 0;
          goto LABEL_140;
        }
      }

      v77 = *(a4 - 8 * *(a4 + 8) + 8 * v96[0]);
LABEL_140:
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v92, *a5, a5[1]);
      }

      else
      {
        v92 = *a5;
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v91, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
      }

      else
      {
        v91 = v95;
      }

      iterateAllContainedValues(a1, v75, Value, v77, &v92.__r_.__value_.__l.__data_, v88, v86, v84, &v91, a10);
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      v74 = v96[0] + 1;
      v96[0] = v74;
      if (v74 >= v73)
      {
        goto LABEL_151;
      }
    }
  }

  if (v51 != 17)
  {
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *a5, a5[1]);
    }

    else
    {
      v90 = *a5;
    }

    if (*v50 < 0)
    {
      std::string::__init_copy_ctor_external(&v89, *a9, *(a9 + 8));
    }

    else
    {
      *&v89.__r_.__value_.__l.__data_ = *a9;
      v89.__r_.__value_.__r.__words[2] = *(a9 + 16);
    }

    (*(a10 + 16))(a10, v79, a3, &v90, v88, v86, v84, &v89);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_166;
    }

    v78 = v90.__r_.__value_.__r.__words[0];
    goto LABEL_165;
  }

  v52 = *(v79 + 32);
  if (v52)
  {
    v53 = 0;
    v80 = **(v79 + 16);
    do
    {
      if (a1)
      {
        LODWORD(v101.__r_.__value_.__l.__data_) = v53;
        v98 = 257;
        v54 = llvm::IRBuilderBase::CreateExtractValue(a1, a3, &v101, 1, &v97);
      }

      else
      {
        v54 = 0;
      }

      if (*(a9 + 23) >= 0)
      {
        v55 = *(a9 + 23);
      }

      else
      {
        v55 = *(a9 + 8);
      }

      std::string::basic_string[abi:ne200100](&v101, v55 + 1);
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v101;
      }

      else
      {
        v56 = v101.__r_.__value_.__r.__words[0];
      }

      if (v55)
      {
        if (*(a9 + 23) >= 0)
        {
          v57 = a9;
        }

        else
        {
          v57 = *a9;
        }

        memmove(v56, v57, v55);
      }

      *(&v56->__r_.__value_.__l.__data_ + v55) = 91;
      std::to_string(&v95, v53);
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v95;
      }

      else
      {
        v58 = v95.__r_.__value_.__r.__words[0];
      }

      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v95.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v101, v58, v59);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v97, "]");
      v63 = v62->__r_.__value_.__r.__words[0];
      v64 = v62->__r_.__value_.__l.__size_;
      v96[0] = v62->__r_.__value_.__r.__words[2];
      *(v96 + 3) = *(&v62->__r_.__value_.__r.__words[2] + 3);
      v65 = SHIBYTE(v62->__r_.__value_.__r.__words[2]);
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v94, *a5, a5[1]);
      }

      else
      {
        v94 = *a5;
      }

      if (v65 < 0)
      {
        std::string::__init_copy_ctor_external(&v93, v63, v64);
      }

      else
      {
        v93.__r_.__value_.__r.__words[0] = v63;
        v93.__r_.__value_.__l.__size_ = v64;
        LODWORD(v93.__r_.__value_.__r.__words[2]) = v96[0];
        *(&v93.__r_.__value_.__r.__words[2] + 3) = *(v96 + 3);
        *(&v93.__r_.__value_.__s + 23) = v65;
      }

      iterateAllContainedValues(a1, v80, v54, 0, &v94.__r_.__value_.__l.__data_, v88, v86, v84, &v93, a10);
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
        if (v65 < 0)
        {
LABEL_110:
          operator delete(v63);
        }
      }

      else if (v65 < 0)
      {
        goto LABEL_110;
      }

      ++v53;
    }

    while (v52 != v53);
  }

LABEL_166:
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }
}

void sub_213BEB3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (*(v62 - 137) < 0)
  {
    operator delete(*(v62 - 160));
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void ___ZN35MTLAddPostVertexDumpingToModulePass28addPostVertexDumpingToModuleEPN4llvm6ModuleEibRjRNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEb_block_invoke(uint64_t a1, llvm::Type *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v24 = v16;
  v17 = llvm::TypeSize::operator unsigned long long() >> 3;
  if (v17 <= 4)
  {
    LODWORD(v17) = 4;
  }

  v18 = *(a1 + 32);
  v19 = *v18;
  *v18 += (v17 + 3) & 0xFFFFFFFC;
  v20 = *(a1 + 40);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a4, *(a4 + 8));
  }

  else
  {
    v22 = *a4;
  }

  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a8, *(a8 + 8));
  }

  else
  {
    v21 = *a8;
  }

  PostVertexDumpOutput::PostVertexDumpOutput(&PrimitiveSizeInBits, this, a3, &v22, a5, a6, a7, &v21, v19);
  std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](v20, &PrimitiveSizeInBits);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_213BEB7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void serializePostVertexDumpOutputs(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 16))(a2, -1431655765 * ((a1[1] - *a1) >> 5));
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = *a1 + 64;
    do
    {
      v19 = *(v7 - 64);
      if (*(v7 - 25) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *(v7 - 48), *(v7 - 40));
      }

      else
      {
        v8 = *(v7 - 48);
        v20.__r_.__value_.__r.__words[2] = *(v7 - 32);
        *&v20.__r_.__value_.__l.__data_ = v8;
      }

      v9 = v7 - 64;
      v10 = *(v7 - 24);
      v22 = *(v7 - 8);
      v21 = v10;
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 8));
      }

      else
      {
        v11 = *v7;
        __p.__r_.__value_.__r.__words[2] = *(v7 + 16);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      v24 = *(v7 + 24);
      size = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
      v13 = v20.__r_.__value_.__r.__words[0];
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v20;
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      v17 = v13;
      v18 = size;
      (*(a3 + 16))(a3, &v17);
      (*(a2 + 16))(a2, v21);
      v14 = v22;
      (*(a2 + 16))(a2, DWORD2(v21));
      (*(a2 + 16))(a2, v14);
      v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      v17 = p_p;
      v18 = v15;
      (*(a3 + 16))(a3, &v17);
      (*(a2 + 16))(a2, v24);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v7 += 96;
    }

    while (v9 + 96 != v6);
  }
}

void sub_213BEBA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_6(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_14(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_13(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

uint64_t MTLCompilerObject::runVertexPasses(MTLCompilerObject *a1, uint64_t *a2, int a3, MTLCompilerObject::FragmentVaryingsInfo *a4)
{
  v7 = *a2;
  v8 = a2[4];
  v9 = v8[7];
  MTLCompilerObject::getFragmentVaryingsInfo(a1, (v8[1] >> 3) & 1, (*a2 + v8[4]), v8[5], a4);
  if (v9 < 0xC)
  {
    return 1;
  }

  v10 = v7 + *(a2[4] + 24);
  v11 = a2[6];
  v37 = "air.vertex";
  v38 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v11, &v37);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v14 = *(Operand - 8 * *(Operand + 8) + 8);
  if (v14)
  {
    v15 = *(v14 + 8);
    v16 = *(v14 + 8) == 0;
    v19 = *(v10 + 8);
    v18 = (v10 + 8);
    v17 = v19;
    if (v15)
    {
      v36 = v17;
      v20 = 0;
      v21 = *(Operand - 8 * *(Operand + 8) + 8);
      do
      {
        v22 = *(v21 - 8 * *(v14 + 8));
        String = llvm::MDString::getString(*(v22 - 8 * *(v22 + 8)));
        if (v24 == 14)
        {
          v29 = *String == 0x6E696F702E726961 && *(String + 6) == 0x657A69735F746E69;
          v20 |= v29;
        }

        else if (v24 == 29)
        {
          v25 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
          v26 = v25 && String[2] == 0x5F79617272615F74;
          if (v26 && *(String + 21) == 0x7865646E695F7961)
          {
            *(a4 + 22) = dataTypeFromMetadata(1u, v22);
          }
        }

        v21 += 8;
        --v15;
      }

      while (v15);
      v16 = 0;
      v17 = v36;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v30 = *(v10 + 8);
    v18 = (v10 + 8);
    v17 = v30;
    v16 = 1;
  }

  if (MTLCompilerObject::checkVertexRenderTargetArrayIndex(a1, *(a4 + 22), (v17 >> 5) & 3, v20 & 1))
  {
    result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(a1, a2, a4);
    if (!result)
    {
      return result;
    }

    MTLCompilerObject::addPostVertexDumpingToModule(a1, a2);
    if (*(a2[4] + 4) & 0x10) != 0 || (*(a1 + 72) & 1) != 0 || ((v16 ^ *v18))
    {
      return 1;
    }

    v33 = (a1 + 64);
    if (*v18)
    {
      v34 = "true";
    }

    else
    {
      v34 = "false";
    }

    v35 = "not void";
    if (v16)
    {
      v35 = "void";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(v33, "RasterizationEnabled is %s but the vertex shader's return type is %s", v34, v35);
  }

  else
  {
    if (a2[6])
    {
      v32 = MEMORY[0x21604BFC0]();
      MEMORY[0x21604C990](v32, 0x10B2C407FF26C1CLL);
    }

    a2[6] = 0;
    v33 = (a1 + 64);
  }

  (*(a2[3] + 16))(a2[3], 2 * (*v33 != 0), 0, 0);
  return 0;
}

void MTLCompilerObject::getFragmentVaryingsInfo(MTLCompilerObject *this, int a2, const char *a3, unint64_t a4, MTLCompilerObject::FragmentVaryingsInfo *a5)
{
  if (a4)
  {
    v31 = a3;
    v32 = a4;
    *(a5 + 19) = *a3;
    if (a4 == 1)
    {
      goto LABEL_30;
    }

    *(a5 + 20) = *(a3 + 1);
    if (a4 <= 2)
    {
      goto LABEL_30;
    }

    *(a5 + 21) = *(a3 + 2);
    if (a4 == 3)
    {
      goto LABEL_30;
    }

    v6 = *(a3 + 3);
    v33 = 4;
    *(a5 + 18) = v6;
    if (a2)
    {
      std::vector<PackedInput>::reserve(a5 + 3, v6);
      if (*(a5 + 18))
      {
        v7 = 0;
        while (1)
        {
          v8 = v33;
          if (v33 >= v32)
          {
            break;
          }

          v9 = v31[v33++];
          LOWORD(v29) = v9;
          if (v8 + 1 >= v32)
          {
            break;
          }

          v10 = v31[v8 + 1];
          v33 = v8 + 2;
          WORD1(v29) = v10 & 0xF;
          v11 = v10 >> 4;
          WORD2(v29) = v10 >> 4;
          v12 = &v29 + 3;
          if (v10 >= 0x10)
          {
            do
            {
              v13 = (*(a5 + 1) - *a5) >> 5;
              *v12++ = v13;
              deserializeFragmentInput(&v31, v13, a5 + 6, v28);
              std::vector<VaryingInfo>::push_back[abi:ne200100](a5, v28);
              --v11;
            }

            while (v11);
          }

          v15 = *(a5 + 4);
          v14 = *(a5 + 5);
          if (v15 >= v14)
          {
            v17 = *(a5 + 3);
            v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
            v19 = v18 + 1;
            if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
            if (2 * v20 > v19)
            {
              v19 = 2 * v20;
            }

            if (v20 >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(a5 + 24, v21);
            }

            v22 = 24 * v18;
            *v22 = v29;
            *(v22 + 16) = v30;
            v16 = 24 * v18 + 24;
            v23 = *(a5 + 3);
            v24 = *(a5 + 4) - v23;
            v25 = 24 * v18 - v24;
            memcpy((v22 - v24), v23, v24);
            v26 = *(a5 + 3);
            *(a5 + 3) = v25;
            *(a5 + 4) = v16;
            *(a5 + 5) = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v15 = v29;
            *(v15 + 16) = v30;
            v16 = v15 + 24;
          }

          *(a5 + 4) = v16;
          if (++v7 >= *(a5 + 18))
          {
            return;
          }
        }

LABEL_30:
        abort();
      }
    }

    else
    {
      std::vector<VaryingInfo>::reserve(a5, v6);
      if (*(a5 + 18))
      {
        v27 = 0;
        do
        {
          deserializeFragmentInput(&v31, v27, a5 + 6, v28);
          std::vector<VaryingInfo>::push_back[abi:ne200100](a5, v28);
          ++v27;
        }

        while (v27 < *(a5 + 18));
      }
    }
  }
}

uint64_t MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(_BYTE *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + 28);
  if (v4 < 0xC)
  {
    return 1;
  }

  v8 = (*a2 + *(v3 + 24));
  v9 = *(a2 + 48);
  v34 = "air.vertex";
  v36 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v9, &v34);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v12 = (~*(*(a2 + 32) + 4) & 0x84) != 0 || *a3 == a3[1];
  v13 = !v12;
  v14 = *(v8 + 2);
  if ((v14 & 4) == 0 && !v13)
  {
    return 1;
  }

  if ((v14 & 4) != 0)
  {
    v15 = 10;
    if ((v14 & 0x100000) == 0)
    {
      v15 = 6;
    }

    v16 = v4 - v15 * 2;
    v17 = &v8[v15];
    if ((v14 & 2) != 0)
    {
      MTLCompilerObject::validateSerializedVertexDescriptor(a1, &v8[v15], v4 - v15 * 2);
      v19 = *v17;
      v18 = v17;
      v17 = (v17 + v19);
      v16 -= v19;
    }

    else
    {
      if ((MTLCompilerObject::checkNoStageInAttributes(a1, Operand) & 1) == 0)
      {
        v32 = *(a2 + 24);
        v33 = *(a1 + 8);
        goto LABEL_38;
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v16 = v4;
    v17 = v8;
  }

  v20 = *(v8 + 2);
  if ((v20 & 0x80) != 0)
  {
    if (v16 <= 1 || (v21 = 2 * *v17 + 2, v16 < v21) || ((v22 = *v8, v23 = *(v8 + 1), v22) ? (v24 = v22 - v4) : (v24 = 0), (v25 = v24 + v16, v23) ? (v26 = v4 - v23) : (v26 = 0), v25 != v26 + v21))
    {
      abort();
    }

    goto LABEL_30;
  }

  if ((v13 | (v20 >> 1)))
  {
    v17 = 0;
LABEL_30:
    v27 = a1[72];
    v28 = (a1 + 64);
    v34 = v28;
    v35 = v27;
    v29 = MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(&v34, *(a2 + 48), (v20 >> 2) & 1, v18, v17, ((v20 & 1) == 0) & v27, 1u, (v20 >> 8) & 3, (~v20 & 0xC) == 0, (~v20 & 0x14) == 0, *(*(a2 + 32) + 4), a3);
    if (v29)
    {
      *(a2 + 48) = v29;
      return 1;
    }

    if (*(a2 + 48))
    {
      v31 = MEMORY[0x21604BFC0]();
      MEMORY[0x21604C990](v31, 0x10B2C407FF26C1CLL);
    }

    *(a2 + 48) = 0;
    v32 = *(a2 + 24);
    v33 = *v28;
LABEL_38:
    (*(v32 + 16))(v32, 2 * (v33 != 0), 0, 0);
    return 0;
  }

  return 1;
}

uint64_t MTLCompilerObject::checkVertexRenderTargetArrayIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 && !a3)
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Vertex shader writes render_target_array_index but inputPrimitiveTopology is not specified");
    return 0;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 == 0;
  }

  v5 = 1;
  if (!v4 && a3 != 1 && a4 && (*(a1 + 72) & 1) == 0)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        v6 = "MTLPrimitiveTopologyClassTriangle";
      }

      else
      {
        if (a3 != 2)
        {
          abort();
        }

        v6 = "MTLPrimitiveTopologyClassLine";
      }
    }

    else
    {
      v6 = "MTLPrimitiveTopologyClassUnspecified";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Vertex shader writes point size but inputPrimitiveTopology is %s", v6);
    return 0;
  }

  return v5;
}

uint64_t MTLCompilerObject::checkNoStageInAttributes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8 * *(a2 + 8) + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v2 - 8 * *(v2 + 8) + 8 * v5);
        String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8));
        v9 = v8;
        if (v8 <= 15)
        {
          break;
        }

        if (v8 == 29)
        {
          v10 = "air.patch_control_point_input";
LABEL_18:
          if (memcmp(String, v10, v9))
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        if (v8 != 16)
        {
          goto LABEL_19;
        }

        if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
        {
          goto LABEL_19;
        }

LABEL_21:
        v12 = *(v6 + 8);
        if (!v12)
        {
LABEL_31:
          MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Function requires stage_in attributes but no descriptor was set.");
          return 0;
        }

        v13 = v6;
        while (1)
        {
          v14 = *(v13 - 8 * *(v6 + 8));
          if (v14)
          {
            if (!*v14)
            {
              v15 = llvm::MDString::getString(v14);
              if (v16 == 14 && *v15 == 0x5F6772612E726961 && *(v15 + 6) == 0x646573756E755F67)
              {
                break;
              }
            }
          }

          v13 += 8;
          if (!--v12)
          {
            goto LABEL_31;
          }
        }

LABEL_19:
        if (++v5 == v3)
        {
          return 1;
        }
      }

      if (v8 == 12)
      {
        v10 = "air.stage_in";
      }

      else
      {
        if (v8 != 15)
        {
          goto LABEL_19;
        }

        v10 = "air.patch_input";
      }

      goto LABEL_18;
    }
  }

  return 1;
}

void MTLCompilerObject::addPostVertexDumpingToModule(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2[7] >= 0xCu)
  {
    v3 = v2[1];
    if ((v3 & 0x10) != 0)
    {
      v4 = *(*a2 + v2[6] + 8);
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      v5 = (a1 + 64);
      v6 = 0;
      *(a2 + 48) = MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(&v5, *(a2 + 48), (v4 >> 11), 0, &v8, v7, (v3 >> 10) & 1);
      v5 = v7;
      std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }
}

uint64_t MTLCompilerObject::runVertexLinkingPass(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a2[4];
  v5 = v4[1];
  if ((v5 & 4) == 0)
  {
    return 1;
  }

  v8 = (*(*a2 + v4[6] + 8) >> 5) & 3;
  v9 = (a1 + 64);
  if ((v5 & 8) == 0)
  {
    v11 = (a1 + 64);
    v12 = 0;
    if ((MTLVertexOutputLinkingPass::vertexOutputLinking(&v11, a2[6], a4, (a4 + 12), a4[18], v8, a4[19], a4[20], v4[10], v4[11], a4[22], a4[21]) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 1;
  }

  v11 = (a1 + 64);
  v12 = 0;
  if (MTLVertexOutputPackingPass::vertexOutputPacking(&v11, a2[6], a4, a4 + 3, (a4 + 12), a4[18], v8, a4[19], a4[20], v4[10], v4[11], a4[22], a4[21]))
  {
    return 1;
  }

LABEL_7:
  if (a2[6])
  {
    v10 = MEMORY[0x21604BFC0]();
    MEMORY[0x21604C990](v10, 0x10B2C407FF26C1CLL);
  }

  a2[6] = 0;
  (*(a2[3] + 16))(a2[3], 2 * (*v9 != 0), 0, 0);
  return 0;
}

uint64_t AirReflection::Node::node_as_VertexFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 3) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexFunction", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_PositionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131074) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PositionRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PositionRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v26 = v7;
  CC_SHA256_Update(c, &v26, 1u);
  v8 = (a1 - *a1);
  if (*v8 < 9u)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      LOBYTE(v9) = *(a1 + v9) != 0;
    }
  }

  v27 = v9;
  CC_SHA256_Update(c, &v27, 1u);
  v10 = (a1 - *a1);
  if (*v10 >= 0xBu && (v11 = v10[5]) != 0)
  {
    v12 = (a1 + v11);
    v13 = *v12;
    v14 = (v12 + v13 + 4);
    v15 = *(v12 + v13);
    v16 = c;
  }

  else
  {
    v28 = 0;
    v14 = &v28;
    v16 = c;
    v15 = 4;
  }

  CC_SHA256_Update(v16, v14, v15);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    v21 = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    v29 = 0;
    v21 = &v29;
    v23 = c;
    v22 = 4;
  }

  return CC_SHA256_Update(v23, v21, v22);
}

uint64_t AirReflection::Node::node_as_VertexOutputRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131076) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexOutputRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexOutputRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    p_data = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, p_data, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v16 = (a1 - *a1);
  if (*v16 < 0xBu)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = v16[5];
    if (v17)
    {
      LOBYTE(v17) = *(a1 + v17) != 0;
    }
  }

  LOBYTE(data) = v17;
  CC_SHA256_Update(c, &data, 1u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = (a1 + v19);
    v21 = *v20;
    v22 = (v20 + v21 + 4);
    v23 = *(v20 + v21);
    v24 = c;
  }

  else
  {
    data = 0;
    v22 = &data;
    v24 = c;
    v23 = 4;
  }

  CC_SHA256_Update(v24, v22, v23);
  v25 = (a1 - *a1);
  if (*v25 >= 0xFu && (v26 = v25[7]) != 0)
  {
    v27 = (a1 + v26);
    v28 = *v27;
    v29 = (v27 + v28 + 4);
    v30 = *(v27 + v28);
    v31 = c;
  }

  else
  {
    data = 0;
    v29 = &data;
    v31 = c;
    v30 = 4;
  }

  return CC_SHA256_Update(v31, v29, v30);
}

uint64_t AirReflection::Node::node_as_VertexIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270339) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexIDArg", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::InstanceIDArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InstanceIDArg", 0x1Bu);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_InstanceIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270338) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

const char *MTLCompilerObject::validateSerializedVertexDescriptor(MTLCompilerObject *this, const char *a2, unint64_t a3)
{
  if (a3 <= 7)
  {
    MTLCompilerErrorObject::setErrorMessage((this + 64), "Invalid vertex descriptor");
  }

  v5 = *a2;
  if (v5 > a3 || v5 < 8 || (v6 = *(a2 + 1), ((v6 >> 2) & 0x1F0) + *(a2 + 2) > v5) || *(a2 + 3) + ((v6 >> 8) & 0xF8) > v5)
  {
    abort();
  }

  return a2;
}

llvm::Module *MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(MTLCompilerErrorObject **a1, llvm::Type **this, int a3, unsigned __int16 *a4, unsigned __int16 *a5, int a6, unsigned __int8 a7, int a8, char a9, char a10, unsigned int a11, void *a12)
{
  v235[39] = *MEMORY[0x277D85DE8];
  v173 = *this;
  *&__p = "air.vertex";
  LOWORD(v223) = 259;
  v169 = this;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &__p);
  if (NamedMetadata)
  {
    v150 = 0;
  }

  else
  {
    *&__p = "air.kernel";
    LOWORD(v223) = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v169, &__p);
    v150 = NamedMetadata != 0;
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v164 = Operand;
  v15 = (Operand - 8 * *(Operand + 8));
  v159 = *(*v15 + 128);
  if (((a11 >> 7) & 1) == 0 || (a11 & 4) == 0 || v150 || a12[1] == *a12)
  {
    v152 = 0;
  }

  else
  {
    v16 = **(*(v159 + 3) + 16);
    v17 = v15[1];
    __p = 0uLL;
    *&v222 = 0;
    *&v212 = 0;
    v152 = MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(Operand, v173, v16, v17, &v212, a12, 0, &__p, a7) != v16;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  v18 = 0;
  v162 = 0;
  v19 = 0;
  if (a4)
  {
    v166 = 0;
    if (a3)
    {
      v162 = a4 + a4[2];
      v166 = a4 + a4[3];
      v20 = a4[1];
      v18 = (v20 >> 6) & 0x1F;
      v19 = v20 >> 11;
      if (v20 >= 0x800)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v166 = 0;
  }

  v156 = v18;
  v21 = *(*(v164 - 8 * *(v164 + 8) + 16) + 8);
  if (*(v159 + 9))
  {
    llvm::Function::BuildLazyArguments(v159);
  }

  if (v21 >= 1)
  {
    DataLayout = llvm::Module::getDataLayout(v169);
    llvm::DataLayout::DataLayout(&__p, DataLayout);
    MTLArgumentData::MTLArgumentData(&v212);
  }

  v18 = v156;
  if (!v152)
  {
    return v169;
  }

LABEL_22:
  v157 = v18;
  v23 = 0;
  if (v19)
  {
    v24 = v19;
    v25 = v166;
    do
    {
      v26 = *v25;
      v25 += 2;
      v27 = v26 & 0x1F;
      if (v27 > v23)
      {
        v23 = v27;
      }

      --v24;
    }

    while (v24);
  }

  v163 = v19;
  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](__b, (v23 + 1), &__p);
  v28 = __b[0];
  memset(__b[0], 255, 4 * v23 + 4);
  if (v19)
  {
    v29 = 0;
    v30 = v19;
    v31 = v166;
    v32 = v157;
    do
    {
      v33 = *v31;
      v31 += 2;
      v28[v33 & 0x1F] = v29++;
    }

    while (v19 != v29);
  }

  else
  {
    v30 = 0;
    v32 = v157;
  }

  LOBYTE(__p) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](v210, v30, &__p);
  LOBYTE(__p) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](v209, v30, &__p);
  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](v208, v30, &__p);
  if (v19)
  {
    memset(v208[0], 255, 4 * v30);
  }

  std::vector<llvm::MDNode *>::vector[abi:ne200100](v207, v30);
  std::vector<llvm::Type *>::vector[abi:ne200100](v206, v30);
  LODWORD(__p) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](v205, v30, &__p);
  memset(v204, 0, sizeof(v204));
  std::vector<BOOL>::reserve(v204, *(v159 + 12));
  v202 = 0;
  __src = 0;
  v203 = 0;
  v199 = 0;
  v198 = 0;
  v200 = 0;
  v196 = 0;
  v195 = 0;
  v197 = 0;
  if (((a3 ^ 1) & (a11 >> 7)) == 1)
  {
    v34 = *(v159 + 12);
  }

  else
  {
    v34 = v32;
  }

  std::vector<MTLOpaqueObject *>::reserve(&v198, v34);
  std::vector<MTLOpaqueObject *>::reserve(&v195, (v200 - v198) >> 3);
  v193 = 0;
  v192 = 0;
  v194 = 0;
  v155 = v32;
  std::vector<MTLOpaqueObject *>::reserve(&v192, v32);
  if (v19)
  {
    v35 = 0;
    v36 = -1;
    v37 = v166;
    do
    {
      v38 = *v37;
      v37 += 2;
      v39 = v38 >> 10;
      if (v38 >> 10 == 43)
      {
        v40 = v35;
      }

      else
      {
        v40 = v36;
      }

      if (v39 != 44)
      {
        v36 = v40;
      }

      ++v35;
    }

    while (v30 != v35);
  }

  v190 = 0;
  v189 = 0;
  v191 = 0;
  std::vector<BuiltInInfo>::reserve(&v189, 0xAuLL);
  LOBYTE(__p) = -1;
  std::vector<signed char>::vector[abi:ne200100](v188, 10, &__p);
  std::vector<unsigned int>::vector[abi:ne200100](v187, *(v159 + 12));
  MTLFrameworkPass::getArgumentMetadataIndices(*(v164 - 8 * *(v164 + 8) + 16), v187);
  v41 = *(v159 + 12);
  if (*(v159 + 9))
  {
    llvm::Function::BuildLazyArguments(v159);
  }

  v171 = v30;
  if (v41 < 1)
  {
    v161 = 0;
    v50 = v162;
    v51 = v19;
  }

  else
  {
    v42 = 0;
    v161 = 0;
    v172 = 0;
    v167 = *(v159 + 3);
    v43 = *(v159 + 11);
    v165 = v41 & 0x7FFFFFFF;
    do
    {
      v215.__r_.__value_.__r.__words[0] = *(*(v167 + 16) + 8 * (v42 + 1));
      v170 = v42 + 1;
      if (*(v187[0] + v42) != -1)
      {
        v44 = llvm::Module::getDataLayout(v169);
        llvm::DataLayout::DataLayout(&__p, v44);
        MTLArgumentData::MTLArgumentData(&v212);
      }

      LOBYTE(__p) = 0;
      std::vector<BOOL>::push_back(v204, &__p);
      v45 = v172 - v161;
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v172 - v161) >> 2);
      v47 = v46 + 1;
      if (v46 + 1 > 0x1555555555555555)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (-v161 >> 2) > v47)
      {
        v47 = 0x5555555555555556 * (-v161 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v161 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v48 = 0x1555555555555555;
      }

      else
      {
        v48 = v47;
      }

      if (v48)
      {
        if (v48 <= 0x1555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v49 = 4 * ((v172 - v161) >> 2);
      *v49 = 0;
      *(v49 + 1) = 11;
      *(v49 + 4) = -1;
      *(v49 + 8) = 0;
      v172 = v49 + 12;
      memcpy((12 * v46 + 12 * (v45 / -12)), v161, v45);
      if (v161)
      {
        operator delete(v161);
      }

      v161 = 12 * v46 + 12 * (v45 / -12);
      v50 = v162;
      v43 += 40;
      ++v42;
      v51 = v163;
    }

    while (v170 != v165);
  }

  v160 = a11 & 0x20000;
  if (v157)
  {
    v52 = 0;
    v53 = v50 + 8;
    v54 = v155;
    do
    {
      if (!v160 && *v53 != -1 && (*v53 & 3) != 0)
      {
        MTLCompilerErrorObject::setErrorMessage(*a1, "Buffer stride is not a multiple of 4 bytes.");
        v169 = 0;
        goto LABEL_235;
      }

      if ((*(v53 - 1) & 0x1F) > v52)
      {
        v52 = *(v53 - 1) & 0x1F;
      }

      v53 += 2;
      --v54;
    }

    while (v54);
  }

  else
  {
    v52 = 0;
  }

  LODWORD(__p) = 0;
  std::vector<int>::vector[abi:ne200100](v186, (v52 + 1), &__p);
  v56 = v186[0];
  memset(v186[0], 255, 4 * v52 + 4);
  if (v157)
  {
    v57 = 0;
    v58 = v50;
    do
    {
      v59 = *v58;
      v58 += 4;
      v56[v59 & 0x1F] = v57++;
    }

    while (v155 != v57);
  }

  memset(v185, 0, sizeof(v185));
  std::vector<std::vector<unsigned int>>::resize(v185, v155);
  if (!v51)
  {
LABEL_140:
    LODWORD(__p) = 0;
    std::vector<int>::vector[abi:ne200100](&v184, v155, &__p);
    memset(v182, 0, sizeof(v182));
    v183 = 1065353216;
    LOBYTE(__p) = 0;
    std::vector<unsigned char>::vector[abi:ne200100](&v181, 10, &__p);
    v180 = 0;
    v179 = 0;
    v176 = 0u;
    v177 = 0u;
    v83 = 4 * v155;
    v178 = 1065353216;
    if (v157)
    {
      v84 = 0;
      v85 = (v162 + 8);
      v86 = 8;
      do
      {
        v87 = *(v185[0] + v86 - 8);
        v88 = *(v185[0] + v86);
        *&v212 = 0;
        if (v88 == v87)
        {
          *(v184 + v84) = -1;
        }

        else
        {
          if (*v85 == -1)
          {
            if (v160)
            {
              Int8Ty = llvm::Type::getInt8Ty(v173, v82);
            }

            else
            {
              Int8Ty = llvm::Type::getFloatTy(v173, v82);
            }

            v90 = 1;
          }

          else if (v160)
          {
            Int8Ty = llvm::Type::getInt8Ty(v173, v82);
            v90 = *v85;
          }

          else
          {
            Int8Ty = llvm::Type::getFloatTy(v173, v82);
            v90 = *v85 >> 2;
          }

          v216[0] = llvm::ArrayType::get(Int8Ty, v90);
          *&v222 = 0;
          __p = 0uLL;
          std::vector<llvm::Type *>::__init_with_size[abi:ne200100]<llvm::Type * const*,llvm::Type * const*>(&__p, v216, &v216[1], 1uLL);
          *&v212 = llvm::StructType::get();
          v216[0] = llvm::PointerType::get();
          v91 = (v199 - v198) >> 3;
          *(v184 + v84) = v91;
          LODWORD(v215.__r_.__value_.__l.__data_) = v91;
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v182, &v215, &v215);
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v198, v216);
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v195, &v212);
          getRequiredBuiltIns(&v181, &v179, *(v85 - 2) >> 5, *(v85 - 1), &v180 + 1, &v180, a8);
          MTLFrameworkPass::appendBufferMetadata(v173, &v192, *(v85 - 1) & 0x1F, 1);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }
        }

        v85 += 2;
        v86 += 24;
        v84 += 4;
      }

      while (v83 != v84);
    }

    *&v92 = -1;
    *(&v92 + 1) = -1;
    v219 = v92;
    v220 = v92;
    v217 = v92;
    v218 = v92;
    *v216 = v92;
    Int32Ty = llvm::Type::getInt32Ty(v173, v82);
    llvm::Type::getInt64Ty(v173, v93);
    MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(&v189, v188, &v181);
    v96 = v189;
    v97 = v190;
    v98 = v173;
    if (v189 != v190)
    {
      do
      {
        *&__p = MTLFrameworkPass::getLLVMVectorType(v98, *(v96 + 1), v96[1]);
        v99 = MTLFrameworkPass::addBuiltInParameter(v98, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v96], &v198, &v192, __p, *(v96 + 1), v96[1]);
        if (v199 - v198 != v196 - v195)
        {
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v195, &__p);
        }

        v216[*v96] = v99;
        LODWORD(v212) = v99;
        v94 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v182, &v212, &v212);
        v96 += 8;
        v98 = v173;
      }

      while (v96 != v97);
    }

    if ((v180 & 0x100) != 0)
    {
      *&__p = 0;
      v100 = Int32Ty;
      if (a8 == 2)
      {
        Int32PtrTy = llvm::Type::getInt32PtrTy(v173, 1);
        v104 = 33;
        Int16Ty = Int32Ty;
      }

      else
      {
        if (a8 != 1)
        {
          goto LABEL_275;
        }

        Int32PtrTy = llvm::Type::getInt16PtrTy(v173, 1);
        Int16Ty = llvm::Type::getInt16Ty(v173, v102);
        v104 = 41;
      }

      *&__p = Int16Ty;
      v105 = MTLFrameworkPass::addBuiltInParameter(v173, "air.control_point_index_buffer", &v198, &v192, Int32PtrTy, v104, 1);
      if (v199 - v198 != v196 - v195)
      {
        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v195, &__p);
      }

      LODWORD(v212) = v105;
      v94 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v182, &v212, &v212);
    }

    else
    {
      v100 = Int32Ty;
    }

    if (v179 == 1)
    {
      __p = 0uLL;
      *&v222 = 0;
      std::vector<MTLOpaqueObject *>::reserve(&__p, 1uLL);
      v107 = v100;
      if ((a4[1] & 1) == 0)
      {
        v107 = llvm::Type::getInt16Ty(v173, v106);
      }

      *&v212 = v107;
      v215.__r_.__value_.__r.__words[0] = llvm::PointerType::get();
      LODWORD(v175.__r_.__value_.__l.__data_) = (v199 - v198) >> 3;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v182, &v175, &v175);
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v198, &v215);
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v195, &v212);
      MTLFrameworkPass::appendBufferMetadata(v173, &v192, (a4[1] >> 1) & 0x1F, 1);
      v94 = __p;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }

    if (v157)
    {
      v108 = 0;
      v109 = v162;
      do
      {
        if (*(v109 + 1) == -1)
        {
          *&__p = *v109 & 0x1F;
          *&v212 = &__p;
          v110 = v199 - v198;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v176, &__p, &std::piecewise_construct, &v212)[3] = v110 >> 3;
          LODWORD(__p) = *(v184 + v108);
          if (std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v182, &__p))
          {
            LODWORD(__p) = v110 >> 3;
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(v182, &__p, &__p);
          }

          Int64Ty = llvm::Type::getInt64Ty(v173, v111);
          v114 = v199;
          if (v199 >= v200)
          {
            v116 = (v199 - v198) >> 3;
            if ((v116 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v117 = (v200 - v198) >> 2;
            if (v117 <= v116 + 1)
            {
              v117 = v116 + 1;
            }

            if (v200 - v198 >= 0x7FFFFFFFFFFFFFF8)
            {
              v118 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v118 = v117;
            }

            if (v118)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v198, v118);
            }

            v119 = (8 * v116);
            *v119 = Int64Ty;
            v115 = 8 * v116 + 8;
            v120 = v119 - (v199 - v198);
            memcpy(v120, v198, v199 - v198);
            v121 = v198;
            v198 = v120;
            v199 = v115;
            v200 = 0;
            if (v121)
            {
              operator delete(v121);
            }
          }

          else
          {
            *v199 = Int64Ty;
            v115 = (v114 + 8);
          }

          v199 = v115;
          v122 = llvm::Type::getInt64Ty(v173, v113);
          v124 = v196;
          if (v196 >= v197)
          {
            v126 = (v196 - v195) >> 3;
            if ((v126 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v127 = (v197 - v195) >> 2;
            if (v127 <= v126 + 1)
            {
              v127 = v126 + 1;
            }

            if (v197 - v195 >= 0x7FFFFFFFFFFFFFF8)
            {
              v128 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v128 = v127;
            }

            if (v128)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v195, v128);
            }

            v129 = (8 * v126);
            *v129 = v122;
            v125 = 8 * v126 + 8;
            v130 = v129 - (v196 - v195);
            memcpy(v130, v195, v196 - v195);
            v131 = v195;
            v195 = v130;
            v196 = v125;
            v197 = 0;
            if (v131)
            {
              operator delete(v131);
            }
          }

          else
          {
            *v196 = v122;
            v125 = (v124 + 8);
          }

          v196 = v125;
          v225 = 0;
          v224 = 0u;
          v223 = 0u;
          v222 = 0u;
          __p = 0u;
          llvm::Type::getInt32Ty(v173, v123);
          llvm::ConstantInt::get();
          *&__p = llvm::ValueAsMetadata::get();
          *(&__p + 1) = llvm::MDString::get();
          *&v222 = llvm::MDString::get();
          llvm::Type::getInt32Ty(v173, v132);
          llvm::ConstantInt::get();
          *(&v222 + 1) = llvm::ValueAsMetadata::get();
          llvm::Type::getInt32Ty(v173, v133);
          llvm::ConstantInt::get();
          *&v223 = llvm::ValueAsMetadata::get();
          *(&v223 + 1) = llvm::MDString::get();
          *&v224 = llvm::MDString::get();
          *(&v224 + 1) = llvm::MDString::get();
          std::string::basic_string[abi:ne200100]<0>(&v215, "stride");
          std::to_string(&v175, *v109 & 0x1F);
          if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v134 = &v175;
          }

          else
          {
            v134 = v175.__r_.__value_.__r.__words[0];
          }

          if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v175.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v175.__r_.__value_.__l.__size_;
          }

          v136 = std::string::append(&v215, v134, size);
          v137 = *&v136->__r_.__value_.__l.__data_;
          v213 = v136->__r_.__value_.__r.__words[2];
          v212 = v137;
          v136->__r_.__value_.__l.__size_ = 0;
          v136->__r_.__value_.__r.__words[2] = 0;
          v136->__r_.__value_.__r.__words[0] = 0;
          v225 = llvm::MDString::get();
          if (SHIBYTE(v213) < 0)
          {
            operator delete(v212);
          }

          if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v175.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v215.__r_.__value_.__l.__data_);
          }

          *&v212 = llvm::MDTuple::getImpl();
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v192, &v212);
        }

        v109 += 16;
        v108 += 4;
      }

      while (v83 != v108);
    }

    v151 = **(*(v159 + 3) + 16);
    Impl = 0;
    memset(&v175, 0, sizeof(v175));
    if (a6)
    {
      llvm::Type::getVoidTy(v173, v95);
      Impl = llvm::MDTuple::getImpl();
    }

    else if (a5)
    {
      v138 = *(v164 - 8 * *(v164 + 8) + 8);
      __p = 0uLL;
      *&v222 = 0;
      MTLAddVertexFetchingToModulePass::expandVertexOutputWithFragmentInput(v94, v173, v151, v138, &Impl, &__p, a5, &v175, a7);
    }

    v139 = llvm::FunctionType::get();
    *&__p = "air.vertexFetchFunction";
    LOWORD(v223) = 259;
    v140 = llvm::Function::Create(v139, 0, &__p, v169);
    *&__p = &v222;
    *(&__p + 1) = 0x200000000;
    v225 = v173;
    v226 = &v234;
    v227 = v235;
    v228 = 0;
    v229 = 0;
    v230 = 512;
    v231 = 7;
    v224 = 0uLL;
    v233 = 0;
    v232 = 0;
    v234 = MEMORY[0x277D821C8] + 16;
    v235[0] = MEMORY[0x277D82210] + 16;
    createDebugInfoForWrapperFunction(v173, &__p, v140, v159);
    if (!v150)
    {
      v142 = v189;
      v143 = v190;
      if (v189 != v190)
      {
        while (1)
        {
          v144 = *(v142 + 1);
          if (v144 > 0x29)
          {
            break;
          }

          if (((1 << v144) & 0x10008) == 0)
          {
            if (((1 << v144) & 0x2020000000) == 0 && ((1 << v144) & 0x20200000000) == 0)
            {
              break;
            }

            llvm::Function::addParamAttr();
          }

          v142 += 8;
          if (v142 == v143)
          {
            goto LABEL_230;
          }
        }

LABEL_275:
        abort();
      }

LABEL_230:
      for (i = v177; i; i = *i)
      {
        llvm::Function::addParamAttr();
      }
    }

    *&v212 = "Body";
    LOWORD(v214) = 259;
    llvm::BasicBlock::Create(v173, &v212, v140, 0, v141);
  }

  v60 = 0;
  v61 = "Attribute %d incompatible with MTLStepFunctionPerVertex.";
  while (!*(v210[0] + v60))
  {
LABEL_139:
    if (++v60 == v171)
    {
      goto LABEL_140;
    }
  }

  v62 = &v166[8 * v60];
  v63 = (*v62 >> 5) & 0x1F;
  if (v63 > v52 || *(v186[0] + v63) == -1)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Attribute %d refers to a buffer index %d that is not valid.", *v62 & 0x1F, v63);
    goto LABEL_164;
  }

  String = llvm::MDString::getString(*(*(v207[0] + v60) - 8 * *(*(v207[0] + v60) + 8) + 8));
  v66 = v65;
  v67 = *v62;
  v68 = *(v186[0] + ((v67 >> 5) & 0x1F));
  v69 = *&v162[16 * v68] >> 5;
  if (v69 <= 2)
  {
    if (v69 == 1)
    {
      switch(v65)
      {
        case 0xDuLL:
          v75 = "air.vertex_id";
          break;
        case 0xFuLL:
          v75 = "air.instance_id";
          break;
        case 0x10uLL:
          if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
          {
            goto LABEL_270;
          }

          goto LABEL_134;
        default:
          goto LABEL_270;
      }

      if (memcmp(String, v75, v66))
      {
        goto LABEL_270;
      }
    }

    goto LABEL_134;
  }

  if (v69 - 5 < 4)
  {
    goto LABEL_134;
  }

  if (v69 != 3)
  {
    if (v69 != 4)
    {
      goto LABEL_275;
    }

    if (v65 != 29 || (*String == 0x637461702E726961 ? (v70 = String[1] == 0x6F72746E6F635F68) : (v70 = 0), v70 ? (v71 = String[2] == 0x5F746E696F705F6CLL) : (v71 = 0), v71 ? (v72 = *(String + 21) == 0x7475706E695F746ELL) : (v72 = 0), !v72))
    {
      MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Attribute %d incompatible with MTLStepFunctionPerPatchControlPoint.", v65);
      goto LABEL_164;
    }

    goto LABEL_134;
  }

  if (v65 != 29)
  {
    if (v65 != 15)
    {
      goto LABEL_269;
    }

    if (*String != 0x637461702E726961 || *(String + 7) != 0x7475706E695F6863)
    {
      goto LABEL_269;
    }

    goto LABEL_134;
  }

  v76 = *String == 0x637461702E726961 && String[1] == 0x6F72746E6F635F68;
  v77 = v76 && String[2] == 0x5F746E696F705F6CLL;
  if (v77 && *(String + 21) == 0x7475706E695F746ELL)
  {
LABEL_134:
    v79 = (v185[0] + 24 * v68);
    v80.__i_ = v79->__begin_;
    end = v79->__end_;
    if (v79->__begin_ != end)
    {
      while (*(v62 + 1) > *&v166[8 * *v80.__i_ + 4])
      {
        if (++v80.__i_ == end)
        {
          v80.__i_ = v79->__end_;
          break;
        }
      }
    }

    LODWORD(__p) = v60;
    std::vector<unsigned int>::insert(v79, v80, &__p);
    goto LABEL_139;
  }

LABEL_269:
  v61 = "Attribute %d incompatible with MTLStepFunctionPerPatch.";
LABEL_270:
  MTLCompilerErrorObject::setFormattedErrorMessage(*a1, v61, v66, v67 & 0x1F);
LABEL_164:
  v169 = 0;
  *&__p = v185;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v186[0])
  {
    v186[1] = v186[0];
    operator delete(v186[0]);
  }

LABEL_235:
  if (v187[0])
  {
    v187[1] = v187[0];
    operator delete(v187[0]);
  }

  if (v188[0])
  {
    v188[1] = v188[0];
    operator delete(v188[0]);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v195)
  {
    v196 = v195;
    operator delete(v195);
  }

  if (v198)
  {
    v199 = v198;
    operator delete(v198);
  }

  if (__src)
  {
    v202 = __src;
    operator delete(__src);
  }

  if (v161)
  {
    operator delete(v161);
  }

  if (v204[0])
  {
    operator delete(v204[0]);
  }

  if (v205[0])
  {
    v205[1] = v205[0];
    operator delete(v205[0]);
  }

  if (v206[0])
  {
    v206[1] = v206[0];
    operator delete(v206[0]);
  }

  if (v207[0])
  {
    v207[1] = v207[0];
    operator delete(v207[0]);
  }

  if (v208[0])
  {
    v208[1] = v208[0];
    operator delete(v208[0]);
  }

  if (v209[0])
  {
    v209[1] = v209[0];
    operator delete(v209[0]);
  }

  if (v210[0])
  {
    v210[1] = v210[0];
    operator delete(v210[0]);
  }

  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }

  return v169;
}