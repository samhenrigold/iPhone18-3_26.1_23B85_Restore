void sub_213C1B0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::indexForString(uint64_t a1, const void *a2, const void *a3)
{
  v9[0] = a2;
  v9[1] = a3;
  Key = llvm::StringMapImpl::FindKey();
  if (Key != -1 && Key != *(a1 + 128))
  {
    return *(*(*(a1 + 120) + 8 * Key) + 8);
  }

  v8 = *(*(a1 + 64) + 8);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int &>((a1 + 120), a2, a3, &v8);
  llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(*(a1 + 64), v9);
  return v8;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int &>(llvm::StringMapImpl *a1, const void *a2, size_t a3, _DWORD *a4)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  v11 = MEMORY[0x21604BA70](a3 + 17, 8);
  v12 = v11;
  v13 = v11 + 16;
  if (a3)
  {
    memcpy((v11 + 16), a2, a3);
  }

  *(v13 + a3) = 0;
  *v12 = a3;
  *(v12 + 8) = *a4;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t MTLBoundsCheck::SharedPassData::indexForDISubProgram(uint64_t a1, unsigned __int8 *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::find<llvm::DISubprogram *>((a1 + 192), &v24);
  if (!v3)
  {
    v4 = *&v24[-8 * *(v24 + 2) + 16];
    if (v4)
    {
      String = llvm::MDString::getString(v4);
      v7 = v6;
    }

    else
    {
      String = 0;
      v7 = 0;
    }

    HIDWORD(v22) = MTLBoundsCheck::SharedPassData::indexForString(a1, String, v7);
    v8 = v24;
    if (*v24 == 15 || (v8 = *&v24[-8 * *(v24 + 2)]) != 0)
    {
      v9 = *&v8[-8 * *(v8 + 2)];
      if (v9)
      {
        v9 = llvm::MDString::getString(v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = &unk_213C7E907;
    }

    v27[4] = 261;
    v25 = v9;
    *&v26 = v10;
    if (llvm::sys::path::is_absolute())
    {
      v11 = v24;
      if (*v24 == 15 || (v11 = *&v24[-8 * *(v24 + 2)]) != 0)
      {
        v12 = *&v11[-8 * *(v11 + 2)];
        if (v12)
        {
          v13 = llvm::MDString::getString(v12);
          v15 = v14;
        }

        else
        {
          v15 = 0;
          v13 = 0;
        }
      }

      else
      {
        v15 = 0;
        v13 = &unk_213C7E907;
      }

      LODWORD(v22) = MTLBoundsCheck::SharedPassData::indexForString(a1, v13, v15);
    }

    else
    {
      v25 = v27;
      v26 = xmmword_213C7D120;
      v16 = v24;
      v17 = *v24;
      v18 = v24;
      if (v17 == 15 || (v18 = *&v24[-8 * *(v24 + 2)]) != 0)
      {
        v19 = *&v18[-8 * *(v18 + 2) + 8];
        if (v19)
        {
          llvm::MDString::getString(v19);
          v16 = v24;
          v17 = *v24;
        }

        if (v17 == 15)
        {
          goto LABEL_26;
        }
      }

      v16 = *&v16[-8 * *(v16 + 2)];
      if (v16)
      {
LABEL_26:
        v20 = *&v16[-8 * *(v16 + 2)];
        if (v20)
        {
          llvm::MDString::getString(v20);
        }
      }

      llvm::sys::path::append();
      LODWORD(v22) = MTLBoundsCheck::SharedPassData::indexForString(a1, v25, v26);
      if (v25 != v27)
      {
        free(v25);
      }
    }

    v23 = *(v24 + 6);
    v25 = *(*(a1 + 64) + 392);
    v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::__emplace_unique_key_args<llvm::DISubprogram *,llvm::DISubprogram *&,unsigned long>((a1 + 192), &v24, &v24, &v25);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(*(a1 + 64) + 384, &v22);
  }

  return *(v3 + 6);
}

void sub_213C1B598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a33 != v33)
  {
    free(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::indexForDILocation(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::find<llvm::DISubprogram *>((a1 + 152), &v14);
  if (!v3)
  {
    Subprogram = llvm::DILocalScope::getSubprogram(*(v14 - 8 * *(v14 + 8)));
    v5 = MTLBoundsCheck::SharedPassData::indexForDISubProgram(a1, Subprogram);
    v6 = *(v14 + 8);
    v11 = __PAIR64__(*(v14 + 4), v5);
    v12 = *(v14 + 2);
    if (v6 == 2 && (v7 = *(v14 - 8)) != 0)
    {
      v8 = MTLBoundsCheck::SharedPassData::indexForDILocation(a1, v7);
    }

    else
    {
      v8 = -1;
    }

    v13 = v8;
    v10 = *(*(a1 + 64) + 120);
    v3 = std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::__emplace_unique_key_args<llvm::DILocation *,llvm::DILocation *&,unsigned long>((a1 + 152), &v14, &v14, &v10);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(*(a1 + 64) + 112, &v11);
  }

  return *(v3 + 6);
}

llvm::MDString *MTLBoundsCheck::SharedPassData::getNameOfParentFunction(MTLBoundsCheck::SharedPassData *this, llvm::Instruction *a2)
{
  v2 = *(a2 + 5);
  if (!v2)
  {
    return &unk_213C7E907;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return &unk_213C7E907;
  }

  Subprogram = llvm::Function::getSubprogram(*(v2 + 56));
  if (!Subprogram)
  {
    return llvm::Value::getName(v3);
  }

  result = *(Subprogram - 8 * *(Subprogram + 8) + 16);
  if (result)
  {
    return llvm::MDString::getString(result);
  }

  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::indexForInstruction(MTLBoundsCheck::SharedPassData *this, llvm::Instruction *a2)
{
  if ((*(*(this + 8) + 650) & 1) == 0 && (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0) && (v4 = llvm::Instruction::getMetadataImpl()) != 0)
  {

    return MTLBoundsCheck::SharedPassData::indexForDILocation(this, v4);
  }

  else if ((*(a2 + 6) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl() && (MetadataImpl = llvm::Instruction::getMetadataImpl(), (v7 = *(MetadataImpl - 8 * *(MetadataImpl + 8))) != 0))
  {
    v8 = *(v7 + 128);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    return *v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void MTLBoundsCheck::SharedPassData::expandConstantExprUsers(MTLBoundsCheck::SharedPassData *this, llvm::GlobalVariable *a2)
{
  v55[4] = *MEMORY[0x277D85DE8];
  llvm::Constant::removeDeadConstantUsers(a2);
  v42 = v46;
  v43 = v46;
  v44 = 8;
  v45 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  llvm::SmallVector<llvm::User *,16u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v50, *(a2 + 1), 0);
  while (v51)
  {
    v3 = *(v50 + --v51);
    v6 = v3[16];
    if (v3)
    {
      v7 = v6 >= 0x1C;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::SmallPtrSetImpl<llvm::Instruction *>::insert(&v42, v3, &v53);
    }

    else
    {
      if (v6 == 5)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      v49 = v8;
      if (v8)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v40, &v49, &v53);
        llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v50, *(v49 + 1), 0);
      }
    }
  }

  if (v43 == v42)
  {
    v9 = (&v44 + 4);
  }

  else
  {
    v9 = &v44;
  }

  v10 = *v9;
  if (v10)
  {
    v11 = 8 * v10;
    v12 = v43;
    while (*v12 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_67;
      }
    }
  }

  else
  {
    v12 = v43;
  }

  v13 = &v43[v10];
  while (v12 != v13)
  {
    v47 = *v12;
    llvm::SmallVector<llvm::Instruction *,4u>::SmallVector(&v53, 1, &v47);
    v14 = v54;
    do
    {
      v15 = v53[--v14];
      v54 = v14;
      v16 = *(v15 + 20) & 0x7FFFFFF;
      if (v16)
      {
        v17 = 0;
        v18 = 8 * v16;
        v19 = 8;
        do
        {
          v20 = *(v15 + 20);
          if ((v20 & 0x40000000) != 0)
          {
            v21 = *(v15 - 8);
          }

          else
          {
            v21 = v15 - 32 * (v20 & 0x7FFFFFF);
          }

          v22 = *(v21 + v19 - 8);
          if (v22)
          {
            v23 = *(v22 + 16) == 5;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            v48 = 0;
            v49 = v22;
            if (llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(v40, &v49, &v48))
            {
              v24 = v15;
              if (*(v15 + 16) == 83)
              {
                v25 = *(v15 + 20);
                if ((v25 & 0x40000000) != 0)
                {
                  v26 = *(v15 - 8);
                }

                else
                {
                  v26 = v15 - 32 * (v25 & 0x7FFFFFF);
                }

                v27 = *(v26 + 32 * *(v15 + 60) + v17);
                v28 = *(v27 + 40);
                if (v28 == v27 + 40)
                {
                  v24 = 0;
                }

                else
                {
                  v29 = (v28 - 24);
                  if (v28)
                  {
                    v30 = v28 - 24;
                  }

                  else
                  {
                    v30 = 0;
                  }

                  if (*(v30 + 16) - 29 >= 0xB)
                  {
                    v24 = 0;
                  }

                  else
                  {
                    v24 = v29;
                  }
                }
              }

              AsInstruction = llvm::ConstantExpr::getAsInstruction(v22, 0);
              llvm::Instruction::insertBefore(AsInstruction, v24);
              v32 = *(v15 + 20);
              if ((v32 & 0x40000000) != 0)
              {
                v33 = *(v15 - 8);
              }

              else
              {
                v33 = v15 - 32 * (v32 & 0x7FFFFFF);
              }

              v34 = (v33 + v19);
              v35 = (v33 + v19 - 8);
              if (*v35)
              {
                v36 = *v34;
                *v34[1] = *v34;
                if (v36)
                {
                  *(v36 + 16) = v34[1];
                }
              }

              *v35 = AsInstruction;
              if (AsInstruction)
              {
                v37 = AsInstruction + 1;
                v38 = AsInstruction[1];
                v39 = (v33 + v19);
                *v39 = v38;
                if (v38)
                {
                  *(v38 + 16) = v39;
                }

                v39[1] = v37;
                *v37 = v35;
              }

              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v53, AsInstruction);
              if (!*(v22 + 8))
              {
                llvm::Constant::destroyConstant(v22);
              }
            }
          }

          v17 += 8;
          v19 += 32;
        }

        while (v18 != v17);
        v14 = v54;
      }
    }

    while (v14);
    if (v53 != v55)
    {
      free(v53);
    }

    do
    {
      ++v12;
    }

    while (v12 != v13 && *v12 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_67:
  if (v50 != &v52)
  {
    free(v50);
  }

  llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ConstantExpr *,void>,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::~DenseMap(v40, v3, v4, v5);
  if (v43 != v42)
  {
    free(v43);
  }
}

void sub_213C1BB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ConstantExpr *,void>,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::~DenseMap(&a9, a2, a3, a4);
  if (a13 != a12)
  {
    free(a13);
  }

  _Unwind_Resume(a1);
}

void *llvm::SmallPtrSetImpl<llvm::Instruction *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = *(a1 + 1);
  v8 = 16;
  if (v7 == *a1)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(a1 + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v6;
  return result;
}

unsigned int *llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(unsigned int *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result[3])
  {
    v4 = result;
    v5 = result[2];
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *v4;
        result = *(*v4 + v6);
        if (result != -8 && result != 0)
        {
          result = llvm::deallocate_buffer(result, (*result + 17));
        }

        *(v8 + v6) = 0;
        v6 += 8;
      }

      while (v7 != v6);
    }

    v4[3] = 0;
    v4[4] = 0;
  }

  return result;
}

uint64_t MakeMDResolver<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_282633EB0;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<BOOL>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_282633EF8;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<llvm::Value *>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_282633F40;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

BOOL isSpecialStructType(llvm::StructType *a1)
{
  if (!*(a1 + 3))
  {
    return 0;
  }

  Name = llvm::StructType::getName(a1);
  v3 = Name;
  v4 = v2;
  if (v2 >= 0x10)
  {
    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F65727574786574)
    {
      return 1;
    }

    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F72656C706D6173)
    {
      return 1;
    }
  }

  else if (v2 < 0xE)
  {
    return 0;
  }

  if (*Name != 0x5F2E746375727473 || *(Name + 6) != 0x5F68747065645F2ELL)
  {
    if (v2 >= 0x18)
    {
      if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F646E616D6D6F63 && *(Name + 16) == 0x745F726566667562)
      {
        return 1;
      }

      if (v2 >= 0x1F)
      {
        if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x705F7265646E6572 && *(Name + 16) == 0x5F656E696C657069 && *(Name + 23) == 0x745F65746174735FLL)
        {
          return 1;
        }

        if (v2 == 31)
        {
          if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x6C6F707265746E69 && *(Name + 13) == 0x745F746E616C6F70)
          {
            return 1;
          }

          v19 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x6365737265746E69;
          v20 = v19 && *(Name + 16) == 0x6575715F6E6F6974;
          if (v20 && *(Name + 24) == 1952414066)
          {
            return 1;
          }

          v22 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x6365737265746E69;
          v23 = v22 && *(Name + 16) == 0x7365725F6E6F6974;
          if (v23 && *(Name + 21) == 0x745F746C75736572)
          {
            return 1;
          }

          goto LABEL_97;
        }

        if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F657475706D6F63 && *(Name + 16) == 0x656E696C65706970 && *(Name + 24) == 0x745F65746174735FLL)
        {
          return 1;
        }

        v32 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F656C6269736976;
        v33 = v32 && *(Name + 16) == 0x6E6F6974636E7566;
        if (v33 && *(Name + 24) == 0x745F656C6261745FLL)
        {
          return 1;
        }
      }
    }

    else if (v2 < 0x15)
    {
      if (v2 < 0xF)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x6C6F707265746E69 && *(Name + 13) == 0x745F746E616C6F70)
    {
      return 1;
    }

    if (v2 >= 0x25)
    {
      if (!memcmp(Name, "struct._intersection_function_table_t", 0x25uLL))
      {
        return 1;
      }
    }

    else if (v2 < 0x1C)
    {
      goto LABEL_38;
    }

    if (*v3 == 0x5F2E746375727473 && *(v3 + 8) == 0x6365737265746E69 && *(v3 + 16) == 0x6575715F6E6F6974 && *(v3 + 24) == 1952414066)
    {
      return 1;
    }

    if (v4 >= 0x1D)
    {
      if (*v3 == 0x5F2E746375727473 && *(v3 + 8) == 0x6365737265746E69 && *(v3 + 16) == 0x7365725F6E6F6974 && *(v3 + 21) == 0x745F746C75736572)
      {
        return 1;
      }

      if (v4 >= 0x2A)
      {
        if (!memcmp(v3, "struct._primitive_acceleration_structure_t", 0x2AuLL))
        {
          return 1;
        }
      }

      else if (v4 != 41)
      {
LABEL_38:
        v13 = *v3 == 0x4D2E746375727473 && *(v3 + 7) == 0x48564257534C544DLL;
        return v13 || v4 >= 0x21 && !memcmp(v3, "struct._MTLAxisAlignedBoundingBox", 0x21uLL);
      }

      if (!memcmp(v3, "struct._instance_acceleration_structure_t", 0x29uLL))
      {
        return 1;
      }

      goto LABEL_38;
    }

LABEL_97:
    if (*v3 != 0x4D2E746375727473 || *(v3 + 7) != 0x48564257534C544DLL)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t getPointerOperand(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (a1 && v1 == 5)
  {
    v2 = *(a1 + 18);
    if (v2 == 49 || v2 == 34)
    {
      v3 = *(a1 + 20);
      goto LABEL_6;
    }

    return 0;
  }

  v5 = 0;
  if (a1 && v1 >= 0x1C)
  {
    if (v1 == 77 || v1 == 62)
    {
      v3 = *(a1 + 20);
      if ((v3 & 0x40000000) != 0)
      {
        v4 = *(a1 - 8);
        return *v4;
      }

LABEL_6:
      v4 = a1 - 32 * (v3 & 0x7FFFFFF);
      return *v4;
    }

    return 0;
  }

  return v5;
}

void MTLRAUWUtility::replaceAllUsesWith(uint64_t a1, void **a2, uint64_t a3)
{
  v71[4] = *MEMORY[0x277D85DE8];
  v64 = a2[1];
  v65 = 0;
  llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v69, &v64);
  v5 = v70;
  if (v70)
  {
    v57 = a3;
    do
    {
      v6 = v69[v5 - 1];
      v70 = v5 - 1;
      v7 = v6[16];
      if (v7 <= 0x1B)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }

      v60 = v8;
      if (v8)
      {
        MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(&v64, &v60);
        if (*(v60 + 16) == 83 && v60 != 0)
        {
          v10 = *(v60 + 5);
          v11 = v10 & 0x7FFFFFF;
          if ((v10 & 0x7FFFFFF) != 0)
          {
            v12 = 0;
            while (1)
            {
              v13 = v60 - 32 * v11;
              if ((v10 & 0x40000000) != 0)
              {
                v13 = *(v60 - 1);
              }

              if (*&v13[32 * v12] == a2)
              {
                break;
              }

              if (++v12 == v11)
              {
                goto LABEL_94;
              }
            }

            v19 = *&v13[32 * *(v60 + 15) + 8 * v12];
            v20 = *(v19 + 40);
            if (v20 == v19 + 40)
            {
              v23 = 0;
            }

            else
            {
              v21 = (v20 - 24);
              if (v20)
              {
                v22 = v20 - 24;
              }

              else
              {
                v22 = 0;
              }

              if (*(v22 + 16) - 29 >= 0xB)
              {
                v23 = 0;
              }

              else
              {
                v23 = v21;
              }
            }

            llvm::IRBuilderBase::SetInsertPoint(&v64, v23);
          }
        }

LABEL_94:
        v56 = *(a3 + 24);
        if (!v56)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v56 + 48))(v56, &v64);
        llvm::User::replaceUsesOfWith();
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v68);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v67);
        if (v64 != v66)
        {
          free(v64);
        }
      }

      else
      {
        if (v7 == 5)
        {
          v14 = v6;
        }

        else
        {
          v14 = 0;
        }

        v59 = v14;
        if (v14)
        {
          v64 = v66;
          v65 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v64, &v59);
          v15 = v65;
          if (v65)
          {
            v16 = 0;
            do
            {
              v17 = *(*(v64 + v16) + 8);
              if (v17)
              {
                do
                {
                  v18 = *(v17 + 24);
                  if (v18[16] != 5)
                  {
                    v18 = 0;
                  }

                  v61 = v18;
                  if (v18)
                  {
                    llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v64, &v61);
                  }

                  v17 = *(v17 + 8);
                }

                while (v17);
                v15 = v65;
              }

              ++v16;
            }

            while (v15 > v16);
          }

          else
          {
            v15 = 0;
          }

          v24 = v64;
          v25 = v64 + 8 * v15;
          while (v25 != v24)
          {
            v27 = *(v25 - 1);
            v25 -= 8;
            v26 = v27;
            v58[0] = *(v27 + 1);
            v58[1] = 0;
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v61, v58);
            v28 = v61;
            if (v62)
            {
              v29 = v61 + 8 * v62;
              do
              {
                v30 = *v28;
                AsInstruction = llvm::ConstantExpr::getAsInstruction(v26, 0);
                v58[0] = AsInstruction;
                v32 = *(v30 + 16);
                if (v32 != 83 || v30 == 0)
                {
                  if (v32 < 0x1C || v30 == 0)
                  {
                    llvm::Value::dump(v26);
                    llvm::Value::dump(v30);
                  }

                  else
                  {
                    llvm::Instruction::insertBefore(AsInstruction, v30);
                  }
                }

                else
                {
                  v35 = *(v30 + 20);
                  v36 = v35 & 0x7FFFFFF;
                  if ((v35 & 0x7FFFFFF) != 0)
                  {
                    v37 = 0;
                    v38 = 0;
                    v39 = 32 * v36;
                    v40 = v30 - 32 * v36;
                    while (1)
                    {
                      v41 = v40;
                      if ((v35 & 0x40000000) != 0)
                      {
                        v41 = *(v30 - 8);
                      }

                      if (*(v41 + v38) == v26)
                      {
                        break;
                      }

                      v38 += 32;
                      v37 += 8;
                      if (v39 == v38)
                      {
                        goto LABEL_82;
                      }
                    }

                    v42 = *(v41 + 32 * *(v30 + 60) + v37);
                    v43 = *(v42 + 40);
                    if (v43 == v42 + 40)
                    {
                      v46 = 0;
                    }

                    else
                    {
                      v44 = (v43 - 24);
                      if (v43)
                      {
                        v45 = v43 - 24;
                      }

                      else
                      {
                        v45 = 0;
                      }

                      if (*(v45 + 16) - 29 >= 0xB)
                      {
                        v46 = 0;
                      }

                      else
                      {
                        v46 = v44;
                      }
                    }

                    llvm::Instruction::insertBefore(AsInstruction, v46);
                    v47 = *(v30 + 20);
                    if ((v47 & 0x40000000) != 0)
                    {
                      v48 = *(v30 - 8);
                    }

                    else
                    {
                      v48 = v30 - 32 * (v47 & 0x7FFFFFF);
                    }

                    v49 = v58[0];
                    v50 = v48 + v38;
                    if (*(v48 + v38))
                    {
                      v51 = *(v50 + 8);
                      **(v50 + 16) = v51;
                      if (v51)
                      {
                        *(v51 + 16) = *(v50 + 16);
                      }
                    }

                    *v50 = v49;
                    if (v49)
                    {
                      v54 = *(v49 + 8);
                      v52 = (v49 + 8);
                      v53 = v54;
                      v55 = v48 + v38;
                      *(v55 + 8) = v54;
                      if (v54)
                      {
                        *(v53 + 16) = v55 + 8;
                      }

                      *(v55 + 16) = v52;
                      *v52 = v50;
                    }
                  }
                }

LABEL_82:
                llvm::User::replaceUsesOfWith();
                if (v26 == v59)
                {
                  llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v69, v58);
                }

                v28 += 8;
              }

              while (v28 != v29);
              v28 = v61;
            }

            if (v28 != &v63)
            {
              free(v28);
            }

            llvm::User::dropAllReferences(v26);
          }

          if (v64 != v66)
          {
            free(v64);
          }

          a3 = v57;
        }

        else
        {
          llvm::Value::dump(v6);
        }
      }

      v5 = v70;
    }

    while (v70);
  }

  if (v69 != v71)
  {
    free(v69);
  }
}

uint64_t llvm::User::dropAllReferences(uint64_t this)
{
  v1 = *(this + 20);
  if ((v1 & 0x40000000) != 0)
  {
    v3 = *(this - 8);
    v2 = v1 & 0x7FFFFFF;
    if (!v2)
    {
      return this;
    }
  }

  else
  {
    v2 = v1 & 0x7FFFFFF;
    v3 = this - 32 * v2;
    if (!v2)
    {
      return this;
    }
  }

  v4 = 32 * v2;
  v5 = (v3 + 16);
  do
  {
    if (*(v5 - 2))
    {
      v6 = *(v5 - 1);
      **v5 = v6;
      if (v6)
      {
        *(v6 + 16) = *v5;
      }
    }

    *(v5 - 2) = 0;
    v5 += 4;
    v4 -= 32;
  }

  while (v4);
  return this;
}

void MTLBoundsCheck::SharedPassData::~SharedPassData(MTLBoundsCheck::SharedPassData *this)
{
  *this = &unk_282633E10;
  v2 = this + 88;
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 192);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 152);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 120, v3, v4, v5);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(v2, v6, v7, v8);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633E10;
  v2 = this + 88;
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 192);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 152);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 120, v3, v4, v5);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(v2, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

void *llvm::SmallVector<llvm::Instruction *,4u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Instruction *>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C1C90C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorImpl<std::string>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 24 * v2 - 1;
    v4 = -24 * v2;
    v5 = v3;
    do
    {
      v6 = *v5;
      v5 -= 24;
      if (v6 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 = v5;
      v4 += 24;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

uint64_t llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 17));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void *std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::find<llvm::Function *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
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

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t MTLMDBuilder::getMetadata<int>(llvm::IntegerType **a1, int a2, unsigned int a3)
{
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

void *std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::find<llvm::DISubprogram *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::__emplace_unique_key_args<llvm::DISubprogram *,llvm::DISubprogram *&,unsigned long>(void *a1, void *a2, void *a3, void *a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::__emplace_unique_key_args<llvm::DILocation *,llvm::DILocation *&,unsigned long>(void *a1, void *a2, void *a3, void *a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *llvm::SmallVector<llvm::User *,16u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x1000000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, a2, a3);
  return a1;
}

void sub_213C1D4E8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallPtrSetImplBase::insert_imp(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *this;
  if (*(this + 1) != *this)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(this + 4))
    {
      *(this + 5) = v5 + 1;
      *(v2 + 8 * v5) = a2;
      return (*this + 8 * v5);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *this;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(this + 6);
      return v6;
    }
  }

  return v3;
}

void *std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282633EB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0>,void ()(llvm::Metadata *)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 128);
  v3 = (v2 + 24);
  if (*(v2 + 32) >= 0x41u)
  {
    v3 = *v3;
  }

  **(result + 8) = *v3;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282633EF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0>,void ()(llvm::Metadata *)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 128);
  v3 = (v2 + 24);
  if (*(v2 + 32) >= 0x41u)
  {
    v3 = *v3;
  }

  **(result + 8) = *v3 != 0;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<llvm::Value *>(llvm::Value * &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<llvm::Value *>(llvm::Value * &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282633F40;
  a2[1] = v2;
  return result;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(uint64_t a1, llvm::Value **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

uint64_t MTLDebugSymbolCollectionPass::runOnModule(MTLDebugSymbolCollectionPass *this, llvm::Module *a2, unsigned int a3)
{
  v3 = *(a2 + 4);
  v19 = (a2 + 24);
  if (v3 == (a2 + 24))
  {
    return 0;
  }

  v5 = 0;
  v6 = *a2;
  do
  {
    v7 = v3 - 56;
    if (!v3)
    {
      v7 = 0;
    }

    v20 = v3;
    if ((v7[33] & 0x20) == 0)
    {
      v8 = *(v7 + 10);
      for (i = v7 + 72; v8 != i; v8 = *(v8 + 8))
      {
        v9 = v8 - 24;
        if (!v8)
        {
          v9 = 0;
        }

        v10 = v9 + 40;
        for (j = *(v9 + 48); j != v10; j = *(j + 8))
        {
          if (j)
          {
            v12 = j - 24;
          }

          else
          {
            v12 = 0;
          }

          v13 = *(v12 + 16) - 60;
          v14 = v13 > 0x18;
          v15 = (1 << v13) & 0x1000003;
          v16 = v14 || v15 == 0;
          if (!v16 && (*(v12 + 48) || (*(v12 + 23) & 0x20) != 0))
          {
            MetadataImpl = llvm::Instruction::getMetadataImpl();
            if (MetadataImpl)
            {
              MTLBoundsCheck::SharedPassData::indexForDILocation(*(this + 8), MetadataImpl);
              llvm::ConstantInt::get();
              llvm::ValueAsMetadata::get();
              v5 = 1;
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
            }
          }
        }
      }
    }

    v3 = *(v20 + 1);
  }

  while (v3 != v19);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  MTLBoundsCheck::SerializedData::toMetaData(*(*(this + 8) + 64), v6, a3);
  llvm::Module::getOrInsertNamedMetadata();
  llvm::NamedMDNode::addOperand();
  return 1;
}

void MTLDebugSymbolCollectionPass::~MTLDebugSymbolCollectionPass(MTLDebugSymbolCollectionPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

void MTLGVEmulation::~MTLGVEmulation(MTLGVEmulation *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::~DenseMap(this + 304, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 280, v5, v6, v7);
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(this + 200, v8, v9, v10);
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v12, v13, v14);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v15, v16, v17);

  JUMPOUT(0x21604B480);
}

{
  llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::~DenseMap(this + 304, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 280, v5, v6, v7);
  v11 = *(this + 29);
  if (v11 != this + 248)
  {
    free(v11);
  }

  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(this + 200, v8, v9, v10);
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v12, v13, v14);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v15, v16, v17);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLGVEmulation::runOnModule(MTLGVEmulation *this, llvm::Module *a2, uint64_t a3, unint64_t a4)
{
  v48[8] = *MEMORY[0x277D85DE8];
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 35, a2, a3, a4);
  MetalModulePass::runOnModule(this, a2);
  MTLGVEmulation::createFwdStructType(this, v6, v7);
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (MTLBoundsCheck::isLibraryModule(a2, v9))
  {
    EntryFunction = 0;
  }

  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v11 = GlobalVariable;
    v12 = *(GlobalVariable - 32);
    v46 = v48;
    v47 = 0x400000000;
    v13 = *(v12 + 20) & 0x7FFFFFF;
    if ((*(v12 + 20) & 0x7FFFFFF) != 0)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v44[0] = *(v12 - 32 * v13 + v14);
        v16 = MTLBoundsCheck::lookThroughPointerOps(v44[0], v44);
        v17 = v16;
        v18 = *(v16 + 16) != 3 || v16 == 0;
        if (!v18 && (Name = llvm::Value::getName(v16), v20 >= 4) && *Name == 778859629)
        {
          llvm::UndefValue::get();
          llvm::Constant::handleOperandChange();
          v12 = *(v11 - 4);
          if (!v12 || *(v12 + 16) - 11 < 2)
          {
            break;
          }
        }

        else
        {
          v45 = v17;
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v46, &v45);
        }

        ++v15;
        v13 = *(v12 + 20) & 0x7FFFFFF;
        v14 += 32;
      }

      while (v15 < v13);
    }

    llvm::GlobalVariable::eraseFromParent(v11);
    if (v47)
    {
      llvm::appendToUsed();
    }

    if (v46 != v48)
    {
      free(v46);
    }
  }

  MTLGVEmulation::gatherGVs(this);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 35, v21, v22, v23);
  v44[0] = *(a2 + 4);
  v44[1] = a2 + 24;
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v46, v44);
  v24 = v46;
  if (v47)
  {
    v25 = 8 * v47;
    do
    {
      v26 = *v24;
      shouldModifyFunction = MTLGVEmulation::shouldModifyFunction(this, *v24);
      if (v26 == EntryFunction)
      {
        v28 = 0;
      }

      else
      {
        v28 = shouldModifyFunction;
      }

      if (v28)
      {
        v45 = v26;
        v44[0] = 0;
        v29 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 17, &v45, v44);
        if (v44[0] == *(this + 17) + 16 * *(this + 38))
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        if (v30 == 1)
        {
          v31 = *(v44[0] + 8);
        }

        else
        {
          v31 = 0;
        }

        updated = MTLGVEmulation::updateFunction(this, v26, v31);
        v44[0] = v26;
        llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 35, v44)[1] = updated;
      }

      ++v24;
      v25 -= 8;
    }

    while (v25);
    v24 = v46;
  }

  if (v24 != v48)
  {
    free(v24);
  }

  if (EntryFunction)
  {
    MTLGVEmulation::updateEntryPoint(this, EntryFunction);
    MTLGVEmulation::updateIndirectCalls(this, EntryFunction);
  }

  MTLGVEmulation::updateIntersectionFunctions(this);
  MTLGVEmulation::updateIntersectCalls(this);
  MTLGVEmulation::updateAIRFunctionMetadata(this);
  MTLGVEmulation::removeGVUsages(this);
  MTLGVEmulation::updateAIRDyldTable(this);
  if (*(this + 72))
  {
    v33 = *(this + 35);
    v34 = *(this + 74);
    v35 = v33;
    if (v34)
    {
      v36 = 16 * v34;
      v35 = *(this + 35);
      while ((*v35 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v35 += 2;
        v36 -= 16;
        if (!v36)
        {
          v37 = 1;
          goto LABEL_54;
        }
      }
    }

    v38 = &v33[2 * v34];
    if (v35 == v38)
    {
      v39 = 0;
    }

    else
    {
      do
      {
        MTLGVEmulation::updateFunctionUses(this, *v35, v35[1]);
        MTLGVEmulation::updateIndirectCalls(this, v35[1]);
        llvm::Value::takeName();
        do
        {
          v35 += 2;
        }

        while (v35 != v38 && (*v35 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v35 != v38);
      v33 = *(this + 35);
      v34 = *(this + 74);
      v39 = *(this + 72) == 0;
    }

    v37 = v34;
    if (!v39)
    {
LABEL_54:
      i = v33;
      if (v37)
      {
        v41 = 16 * v34;
        for (i = v33; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 2)
        {
          v41 -= 16;
          if (!v41)
          {
            return 1;
          }
        }
      }

      v43 = &v33[2 * v34];
      while (i != v43)
      {
        llvm::UndefValue::get();
        llvm::Value::replaceNonMetadataUsesWith();
        **i = *i[1];
        llvm::ValueAsMetadata::handleRAUW();
        llvm::Function::eraseFromParent(*i);
        do
        {
          i += 2;
        }

        while (i != v43 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }
  }

  return 1;
}

void sub_213C1E268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(*a1 + v6);
        if (v8 != -8 && v8 != 0)
        {
          llvm::deallocate_buffer(v8, (*v8 + 25));
        }

        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  free(*a1);
  return a1;
}

void MTLGVEmulation::createFwdStructType(MTLGVEmulation *this, uint64_t a2, unsigned int a3)
{
  v87 = *MEMORY[0x277D85DE8];
  llvm::PointerType::get();
  llvm::StructType::get();
  v40 = "mtl.device_indirection_table";
  v41 = 28;
  v42[0] = 0;
  v43 = llvm::PointerType::get();
  v44 = "mtl.draw_id_buffer";
  v45 = 18;
  v46 = 1;
  v47 = llvm::PointerType::get();
  v48 = "mtl.report_buffer";
  v49 = 17;
  v50 = 2;
  v51 = llvm::PointerType::get();
  v52 = "mtl.texture_usage_table";
  v53 = 23;
  v54 = 3;
  v55 = llvm::PointerType::get();
  v4 = llvm::PointerType::get();
  v56 = "mtl.buffer_usage_table";
  v57 = 22;
  v58 = 4;
  v5 = *(this + 10);
  v59 = v4;
  v60 = "mtl.stack_depth";
  v61 = 15;
  v62 = 9;
  v63 = v5;
  v6 = llvm::PointerType::get();
  v64 = "mtl.acceleration_structure_payload";
  v65 = 34;
  v66 = 10;
  v7 = *(this + 14);
  v67 = v6;
  v68 = "mtl.stack_trace";
  v69 = 15;
  v70 = 11;
  v71 = v7;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.binding_table", 17);
  v72 = "mtl.binding_table";
  v73 = 17;
  v74 = 12;
  v75 = llvm::PointerType::get();
  v76 = "mtl.texture_type_table";
  v77 = 22;
  v78 = 13;
  v79 = llvm::PointerType::get();
  v80 = "mtl.report_counter_index";
  v81 = 24;
  v82 = 14;
  v83 = llvm::PointerType::get();
  llvm::StringMapImpl::StringMapImpl(&v84);
  for (i = 0; i != 88; i += 8)
  {
    v38 = *(&v40 + i * 4);
    v39 = *&v42[i];
    llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<GVStructElementInfo>(&v84, v38, *(&v38 + 1), &v39);
  }

  v12 = *(this + 25);
  *(this + 25) = v84;
  v84 = v12;
  v13 = *(this + 26);
  *(this + 26) = v85;
  v85 = v13;
  LODWORD(v12) = *(this + 54);
  *(this + 54) = v86;
  v86 = v12;
  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(&v84, v9, v10, v11);
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_table", 21);
  v14 = llvm::PointerType::get();
  llvm::Module::getGlobalVariable();
  v15 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_table", 0x15uLL);
  *(v15 + 8) = 5;
  *(v15 + 16) = v14;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_base", 20);
  v16 = llvm::PointerType::get();
  v18 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_base", 0x14uLL);
  *(v18 + 8) = 6;
  *(v18 + 16) = v16;
  v19 = "mtl.global_constants_handle";
  v20 = "mtl.global_constants_table";
  if ((*(*(*(this + 8) + 72) + 23) & 0x40) != 0)
  {
    isLibraryModule = MTLBoundsCheck::isLibraryModule(*(this + 6), v17);
    if (isLibraryModule)
    {
      v22 = 33;
    }

    else
    {
      v22 = 26;
    }

    if (isLibraryModule)
    {
      v20 = "mtl.global_constants_table.unused";
      v21 = 34;
    }

    else
    {
      v21 = 27;
    }

    if (isLibraryModule)
    {
      v19 = "mtl.global_constants_handle.unused";
    }
  }

  else
  {
    v21 = 27;
    v22 = 26;
  }

  v24 = llvm::PointerType::get();
  v25 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v20, v22);
  *(v25 + 8) = 7;
  *(v25 + 16) = v24;
  v26 = *(this + 9);
  v27 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v19, v21);
  *(v27 + 8) = 8;
  *(v27 + 16) = v26;
  if (!MTLBoundsCheck::isLibraryModule(*(this + 6), v28))
  {
    MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(*(this + 8));
    MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(*(this + 8));
    v29 = *(this + 8);
    if ((*(*(v29 + 9) + 20) & 0x200000001) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(v29);
      MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(*(this + 8));
      MTLBoundsCheck::SharedPassData::getOrInsertTextureTypeTableGV(*(this + 8));
      v29 = *(this + 8);
    }

    MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(v29);
  }

  MTLBoundsCheck::SharedPassData::getOrInsertReportCounterGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(*(this + 8));
  v30 = llvm::StructType::create();
  v40 = v42;
  v41 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(&v40, *(this + 53));
  v31 = *(this + 52);
  if (v31)
  {
      ;
    }
  }

  else
  {
    j = *(this + 25);
  }

  v34 = *(this + 25) + 8 * v31;
  if (j != v34)
  {
    v35 = *j;
    do
    {
      *(v40 + *(v35 + 8)) = *(v35 + 16);
      do
      {
        v36 = j[1];
        ++j;
        v35 = v36;
        if (v36)
        {
          v37 = v35 == -8;
        }

        else
        {
          v37 = 1;
        }
      }

      while (v37);
    }

    while (j != v34);
  }

  llvm::StructType::setBody();
  *(this + 23) = v30;
  *(this + 24) = llvm::PointerType::get();
  if (v40 != v42)
  {
    free(v40);
  }
}

void sub_213C1E944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::gatherGVs(uint64_t this)
{
  *(this + 240) = 0;
  v1 = *(this + 48);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    v4 = this;
    do
    {
      if (v3)
      {
        v5 = (v3 - 56);
      }

      else
      {
        v5 = 0;
      }

      if ((*(v5 + 33) & 0x1C) != 0)
      {
        this = llvm::Value::getName(v5);
        if (v6 >= 4 && *this == 778859629)
        {
          Key = llvm::StringMapImpl::FindKey();
          if (Key == -1 || Key == *(v4 + 208))
          {
            this = llvm::Value::dump(v5);
            __break(1u);
            return this;
          }

          v8 = v5;
          this = llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v4 + 232, &v8);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t MTLGVEmulation::shouldModifyFunction(MTLGVEmulation *this, llvm::Function *a2)
{
  v10 = 0;
  v11 = a2;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 20, &v11, &v10))
  {
    return 0;
  }

  Name = llvm::Value::getName(a2);
  v6 = v5;
  if (!llvm::GlobalValue::isDeclaration(a2))
  {
    return llvm::Value::getMetadata() == 0;
  }

  if (v6 >= 0x11)
  {
    if (*Name == 0x69646E692E6C746DLL && *(Name + 8) == 0x6D656D5F74636572 && *(Name + 16) == 46)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v6 >= 4)
  {
LABEL_14:
    if (*Name == 779250017)
    {
      return 0;
    }

    if (v6 >= 5 && *Name == 1836477548 && *(Name + 4) == 46)
    {
      return 0;
    }

    if (*Name == 778859629)
    {
      return 0;
    }
  }

  return llvm::Value::getMetadata() == 0;
}

unint64_t MTLGVEmulation::updateFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v16 = *(a1 + 40);
  v17 = v19;
  v18 = 0x800000000;
  llvm::AttrBuilder::addAttribute();
  llvm::AttrBuilder::addAttribute();
  v6 = *(a1 + 40);
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(a1 + 56), *(a1 + 184));
  v15 = v7;
  v8 = llvm::TypeSize::operator unsigned long long();
  llvm::Attribute::getWithDereferenceableBytes(v6, v8);
  llvm::AttrBuilder::addAttribute();
  v9 = llvm::AttributeSet::get();
  inserted = MetalModulePass::insertArgument(a1, a2, *(a1 + 192), v9, 1, "shader_validation_args", 0);
  TypeAllocSize = inserted;
  if (llvm::Function::hasFnAttribute())
  {
    llvm::Function::removeFnAttr();
  }

  if (*(inserted + 18))
  {
    llvm::Function::BuildLazyArguments(inserted);
  }

  v11 = *(inserted + 88);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((a1 + 304), &TypeAllocSize)[1] = v11;
  if (a3)
  {
    MetalModulePass::insertFunctionArgumentMD(a1, a3, "air.visible_input", "mtl.shader_validation_args", "shader_validation_args", 0, 0, 0);
  }

  v12 = TypeAllocSize;
  if (v17 != v19)
  {
    free(v17);
  }

  return v12;
}

void sub_213C1ED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void MTLGVEmulation::updateEntryPoint(MTLGVEmulation *this, llvm::Function *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v16 = a2;
  v3 = *(a2 + 10);
  if (v3)
  {
    v4 = (v3 - 24);
  }

  else
  {
    v4 = 0;
  }

  FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v4);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v17, FirstNonPHI, 0, 0, 0);
  v6 = *(this + 23);
  v15[16] = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(v17, v6, 0, v15);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v16)[1] = Alloca;
  v8 = v16 + 72;
  v9 = *(v16 + 10);
  if (v9 == v16 + 72)
  {
    v11 = 0;
  }

  else
  {
    do
    {
      v10 = v9 - 24;
      if (!v9)
      {
        v10 = 0;
      }

      v11 = *(v10 + 6);
      if (v11 != v10 + 40)
      {
        break;
      }

      v9 = *(v9 + 1);
    }

    while (v9 != v8);
  }

  while (v9 != v8)
  {
    if (v11)
    {
      v12 = v11 - 24;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      if (v12[16] == 84)
      {
        v13 = *(v12 - 4);
        if (!v13 || *(v13 + 16) || *(v13 + 24) != *(v12 + 9) || MTLGVEmulation::shouldModifyFunction(this, v13))
        {
          *(v12 + 9) &= 0xFFFCu;
        }
      }
    }

    v11 = *(v11 + 1);
    v14 = v9 - 24;
    if (!v9)
    {
      v14 = 0;
    }

    while (v11 == v14 + 40)
    {
      v9 = *(v9 + 1);
      if (v9 == v8)
      {
        break;
      }

      v14 = v9 - 24;
      if (!v9)
      {
        v14 = 0;
      }

      v11 = *(v14 + 6);
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v20);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v19);
  if (v17[0] != &v18)
  {
    free(v17[0]);
  }
}

void sub_213C1EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLGVEmulation::updateIndirectCalls(MTLGVEmulation *this, llvm::Function *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v25 = a2;
  v29 = v31;
  v30 = 0x400000000;
  v3 = a2 + 72;
  v4 = *(a2 + 10);
  if (v4 == a2 + 72)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = v4 - 24;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = *(v5 + 6);
      if (v6 != v5 + 40)
      {
        break;
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  if (v4 != v3)
  {
    do
    {
      v7 = v6 - 24;
      if (!v6)
      {
        v7 = 0;
      }

      if (v7[16] == 84)
      {
        v26 = v7;
        v8 = *(v7 - 4);
        if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v7 + 9))
        {
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v29, &v26);
        }
      }

      v6 = *(v6 + 1);
      v9 = v4 - 24;
      if (!v4)
      {
        v9 = 0;
      }

      while (v6 == v9 + 40)
      {
        v4 = *(v4 + 1);
        if (v4 == v3)
        {
          break;
        }

        v9 = v4 - 24;
        if (!v4)
        {
          v9 = 0;
        }

        v6 = *(v9 + 6);
      }
    }

    while (v4 != v3);
    v10 = v29;
    if (v30)
    {
      v11 = v29 + 8 * v30;
      do
      {
        v12 = *v10;
        inserted = MetalModulePass::insertArgumentType(this, *(*v10 + 72), *(this + 24), 0);
        llvm::PointerType::get();
        v28[8] = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        llvm::Instruction::insertBefore(PointerCast, v12);
        NumArgOperands = llvm::compat::getNumArgOperands(v12);
        v23[0] = 0;
        llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v26, (NumArgOperands + 1), v23);
        v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v25);
        v17 = 0;
        *v26 = v16[1];
        v18 = v12;
        while (v17 < llvm::compat::getNumArgOperands(v12))
        {
          v19 = v26 + 8 * v17++;
          *(v19 + 1) = *(v18 - 32 * (*(v12 + 20) & 0x7FFFFFF));
          v18 += 32;
        }

        v24 = 257;
        v20 = llvm::CallInst::Create(inserted, PointerCast, v26, v27, 0, 0, v23, 0);
        v21 = *(v20 + 9) & 0xF003 | (4 * ((*(v12 + 18) >> 2) & 0x3FF));
        *(v20 + 9) = v21;
        *(v20 + 9) = v21 & 0xFFFC | *(v12 + 18) & 3;
        llvm::ReplaceInstWithInst(v12, v20, v22);
        llvm::User::replaceUsesOfWith();
        if (v26 != v28)
        {
          free(v26);
        }

        v10 += 8;
      }

      while (v10 != v11);
      v10 = v29;
    }

    if (v10 != v31)
    {
      free(v10);
    }
  }
}

void sub_213C1F230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27 != a9)
  {
    free(a27);
  }

  _Unwind_Resume(exception_object);
}

void MTLGVEmulation::updateIntersectionFunctions(llvm::DataLayout **this)
{
  v79[1] = *MEMORY[0x277D85DE8];
  v68[1] = ((llvm::DataLayout::getTypeSizeInBits(this[7], this[23]) + 7) >> 3);
  v69 = v4 == 1;
  PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(this[7], this[23]);
  if (!*(this + 42))
  {
    return;
  }

  v6 = *(this + 44);
  if (v6)
  {
    v7 = 16 * v6;
    for (i = this[20]; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i = (i + 16))
    {
      v7 -= 16;
      if (!v7)
      {
        return;
      }
    }
  }

  else
  {
    i = this[20];
  }

  v9 = (this[20] + 16 * v6);
  if (i == v9)
  {
    return;
  }

  v61 = PrefTypeAlignment | 0x100000000;
  do
  {
    v10 = *(i + 1);
    v68[0] = *i;
    PayloadArg = MTLGVEmulation::getPayloadArg(this, v68[0], v10);
    if (!PayloadArg)
    {
      v70 = this[5];
      v71 = &v73;
      v72 = 0x800000000;
      llvm::AttrBuilder::addAttribute();
      llvm::AttrBuilder::addAttribute();
      v36 = this[5];
      TypeAllocSize = llvm::DataLayout::getTypeAllocSize(this[7], this[23]);
      LODWORD(v76) = v37;
      v38 = llvm::TypeSize::operator unsigned long long();
      llvm::Attribute::getWithDereferenceableBytes(v36, v38);
      llvm::AttrBuilder::addAttribute();
      v39 = llvm::AttributeSet::get();
      v40 = v68[0];
      v41 = llvm::PointerType::get();
      inserted = MetalModulePass::insertArgument(this, v40, v41, v39, v64 & 0xFFFFFFFFFFFFFF00 | 1, "shader_validation_args", 1);
      if (llvm::Function::hasFnAttribute())
      {
        llvm::Function::removeFnAttr();
      }

      v42 = *(inserted + 10);
      if (v42)
      {
        v43 = (v42 - 24);
      }

      else
      {
        v43 = 0;
      }

      FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v43);
      llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&TypeAllocSize, FirstNonPHI, 0, 0, 0);
      v64 = v64 & 0xFFFFFFFFFFFFFF00 | 1;
      v45 = inserted;
      if (*(inserted + 9))
      {
        llvm::Function::BuildLazyArguments(inserted);
      }

      v46 = *(v45 + 11);
      v47 = *(v45 + 12);
      v48 = this[23];
      v66 = 257;
      Alloca = llvm::IRBuilderBase::CreateAlloca(&TypeAllocSize, v48, 0, v65);
      v50 = llvm::TypeSize::operator unsigned long long();
      v62 = v62 & 0xFFFFFFFFFFFF0000 | 0x103;
      v63 = v63 & 0xFFFFFFFFFFFF0000 | 0x103;
      llvm::IRBuilderBase::CreateMemCpy(&TypeAllocSize, Alloca, 0x103u, v46 + 40 * v47 - 40, 0x103u, v50, 0, 0, 0, 0, 0);
      llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &inserted)[1] = Alloca;
      v51 = llvm::TypeSize::operator unsigned long long();
      MetalModulePass::insertFunctionArgumentMD(this, v10, "air.payload", "mtl.shader_validation_args", "shader_validation_args", 1, v51 | 0x100000000, v61);
      v52 = inserted;
      llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 35, v68)[1] = v52;
      llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v79);
      llvm::IRBuilderFolder::~IRBuilderFolder(&v78);
      if (TypeAllocSize != v77)
      {
        free(TypeAllocSize);
      }

      v53 = v71;
      v54 = &v73;
      goto LABEL_53;
    }

    v13 = v11;
    TypeAllocSize = this[23];
    v76 = **(*PayloadArg + 16);
    v14 = llvm::StructType::get();
    v15 = *(v10 - 8 * *(v10 + 8) + 16);
    v16 = *(v15 - 8 * *(v15 + 8) + 8 * v13);
    v17 = *(v16 + 8);
    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = 0;
    while (1)
    {
      v19 = *(v16 - 8 * v17 + 8 * v18);
      if (!*v19)
      {
        break;
      }

LABEL_25:
      if (++v18 >= v17)
      {
        goto LABEL_26;
      }
    }

    String = llvm::MDString::getString(v19);
    if (v21 != 17)
    {
      v17 = *(v16 + 8);
      goto LABEL_25;
    }

    v23 = *String == 0x5F6772612E726961 && *(String + 8) == 0x7A69735F65707974 && *(String + 16) == 101;
    v17 = *(v16 + 8);
    if (!v23)
    {
      goto LABEL_25;
    }

LABEL_26:
    if (v17 > v18)
    {
      TypeAllocSize = ((llvm::DataLayout::getTypeSizeInBits(this[7], v14) + 7) >> 3);
      LODWORD(v76) = v24 == 1;
      v25 = llvm::TypeSize::operator unsigned long long();
      MetalModulePass::getMetadata<unsigned int>(this, v25, v26);
      llvm::MDNode::replaceOperandWith();
    }

LABEL_28:
    v27 = *(v68[0] + 10);
    if (v27)
    {
      v28 = (v27 - 24);
    }

    else
    {
      v28 = 0;
    }

    v29 = llvm::BasicBlock::getFirstNonPHI(v28);
    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&TypeAllocSize, v29, 0, 0, 0);
    v30 = this[23];
    v74 = 257;
    v31 = llvm::IRBuilderBase::CreateAlloca(&TypeAllocSize, v30, 0, &v70);
    v32 = llvm::PointerType::get();
    v74 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&TypeAllocSize, PayloadArg, v32, &v70);
    v74 = 257;
    llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&TypeAllocSize, v14, BitOrPointerCast, 0, 1u, &v70);
    llvm::Value::replaceAllUsesWith();
    if (*(BitOrPointerCast + 16) >= 0x1Cu && BitOrPointerCast)
    {
      v34 = *(BitOrPointerCast + 5);
      if ((v34 & 0x40000000) != 0)
      {
        v35 = *(BitOrPointerCast - 1);
      }

      else
      {
        v35 = &BitOrPointerCast[-4 * (v34 & 0x7FFFFFF)];
      }

      if (*v35)
      {
        v55 = v35[1];
        *v35[2] = v55;
        if (v55)
        {
          *(v55 + 2) = v35[2];
        }
      }

      *v35 = PayloadArg;
      v58 = *(PayloadArg + 8);
      v57 = (PayloadArg + 8);
      v56 = v58;
      v35[1] = v58;
      if (v58)
      {
        *(v56 + 2) = v35 + 1;
      }

      v35[2] = v57;
      *v57 = v35;
    }

    v74 = 257;
    ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&TypeAllocSize, v14, BitOrPointerCast, 0, 0, &v70);
    v60 = llvm::TypeSize::operator unsigned long long();
    v1 = v1 & 0xFFFFFFFFFFFF0000 | 0x103;
    v2 = v2 & 0xFFFFFFFFFFFF0000 | 0x103;
    llvm::IRBuilderBase::CreateMemCpy(&TypeAllocSize, v31, v1, ConstInBoundsGEP2_32, v2, v60, 0, 0, 0, 0, 0);
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, v68)[1] = v31;
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v79);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v78);
    v53 = TypeAllocSize;
    v54 = v77;
LABEL_53:
    if (v53 != v54)
    {
      free(v53);
    }

    MTLGVEmulation::updateIndirectCalls(this, v68[0]);
    do
    {
      i = (i + 16);
    }

    while (i != v9 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (i != v9);
}

void sub_213C1F8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a38);
  if (a28 != a16)
  {
    free(a28);
  }

  _Unwind_Resume(a1);
}

void MTLGVEmulation::updateIntersectCalls(MTLGVEmulation *this)
{
  v62[4] = *MEMORY[0x277D85DE8];
  v60 = v62;
  v61 = 0x400000000;
  v54 = &v60;
  llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v54, *(*(this + 6) + 32), *(this + 6) + 24);
  v2 = v60;
  if (v61)
  {
    v3 = 8 * v61;
    do
    {
      v4 = *v2;
      v5 = *(*v2 - 32);
      if (!v5 || *(v5 + 16) || *(v5 + 24) != *(v4 + 72))
      {
        v5 = 0;
      }

      Name = llvm::Value::getName(v5);
      v56 = v6;
      if (llvm::StringRef::find() == -1)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
      }

      if (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1)
      {
        ++v7;
      }

      if (llvm::StringRef::find() != -1)
      {
        if (llvm::StringRef::find() == -1)
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }

        v7 += v8;
      }

      v9 = v4 - 32 * (*(v4 + 20) & 0x7FFFFFF);
      v10 = *(v9 + 32 * v7);
      if (v10)
      {
        v11 = *(v10 + 16) == 19;
      }

      else
      {
        v11 = 0;
      }

      if (!v11 && ((v12 = *(v9 + 32 * (v7 + 1))) != 0 ? (v13 = *(v12 + 16) == 16) : (v13 = 0), v13))
      {
        Name = *(this + 23);
        v23 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v23 = *(v12 + 24);
        }

        v49 = (v12 + 24);
        v56 = llvm::ArrayType::get(*(this + 12), *v23);
        v50 = llvm::StructType::get();
        Name = *(*(v4 + 40) + 56);
        v24 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &Name)[1];
        v25 = *(*(*(v4 + 40) + 56) + 80);
        if (v25)
        {
          v26 = (v25 - 24);
        }

        else
        {
          v26 = 0;
        }

        llvm::BasicBlock::getFirstNonPHI(v26);
        v27 = llvm::User::operator new(0x48);
        v57[8] = 257;
        llvm::AllocaInst::AllocaInst();
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v4, 0, 0, 0);
        v53 = 257;
        ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v50, v27, 0, 0, &v51);
        v29 = llvm::PointerType::get();
        v53 = 257;
        BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v24, v29, &v51);
        v51 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v52 = v31 == 1;
        v32 = llvm::TypeSize::operator unsigned long long();
        v47 = v47 & 0xFFFFFFFFFFFF0000 | 0x103;
        v48 = v48 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, ConstInBoundsGEP2_32, 0x103u, BitOrPointerCast, 0x103u, v32, 0, 0, 0, 0, 0);
        v53 = 257;
        v33 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v50, v27, 0, 1u, &v51);
        v34 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v34 = *v49;
        }

        v45 = v45 & 0xFFFFFFFFFFFF0000 | 0x103;
        v46 = v46 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v33, 0x103u, v10, 0x103u, *v34, 0, 0, 0, 0, 0);
        v35 = llvm::PointerType::get();
        v53 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(&Name, 49, v27, v35, &v51);
        llvm::CallBase::setArgOperand(v4, v7, Cast);
        v51 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v50) + 7) >> 3;
        v52 = v37 == 1;
        llvm::TypeSize::operator unsigned long long();
        v38 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v7 + 1, v38);
        v39 = *(v4 + 32);
        if (v39)
        {
          v40 = v39 == *(v4 + 40) + 40;
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          v41 = 0;
        }

        else
        {
          v41 = (v39 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(&Name, v41);
        v42 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v42 = *v49;
        }

        v43 = v43 & 0xFFFFFFFFFFFF0000 | 0x103;
        v44 = v44 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v10, 0x103u, v33, 0x103u, *v42, 0, 0, 0, 0, 0);
      }

      else
      {
        FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(*(v4 + 40));
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, FirstNonPHI, 0, 0, 0);
        v51 = *(*(v4 + 40) + 56);
        v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v51)[1];
        if (v15 && *(v15 + 16) >= 0x1Cu)
        {
          v16 = *(v15 + 32);
          if (v16)
          {
            v17 = v16 == *(v15 + 40) + 40;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = (v16 - 24);
          }

          llvm::IRBuilderBase::SetInsertPoint(&Name, v18);
        }

        v19 = llvm::PointerType::get();
        v53 = 257;
        v20 = llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v15, v19, &v51);
        v51 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v52 = v21 == 1;
        llvm::CallBase::setArgOperand(v4, v7, v20);
        llvm::TypeSize::operator unsigned long long();
        v22 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v7 + 1, v22);
      }

      llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v59);
      llvm::IRBuilderFolder::~IRBuilderFolder(&v58);
      if (Name != v57)
      {
        free(Name);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    v2 = v60;
  }

  if (v2 != v62)
  {
    free(v2);
  }
}

void sub_213C1FF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v33 = *(v31 - 144);
  if (v33 != v30)
  {
    free(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::updateAIRFunctionMetadata(MTLGVEmulation *this)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = off_2781716D8[i];
    v4 = *(this + 6);
    v11 = 257;
    if (*v3)
    {
      v10[0] = v3;
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    LOBYTE(v11) = v5;
    result = llvm::Module::getNamedMetadata(v4, v10);
    if (result)
    {
      v7 = result;
      result = llvm::NamedMDNode::getNumOperands(result);
      if (result)
      {
        v8 = result;
        for (j = 0; j != v8; ++j)
        {
          result = llvm::NamedMDNode::getOperand(v7);
          if (!*(*(result - 8 * *(result + 8)) + 128))
          {
            break;
          }

          v10[0] = *(*(result - 8 * *(result + 8)) + 128);
          v12 = 0;
          result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 35, v10, &v12);
          if (result)
          {
            result = *(v12 + 8);
            if (result)
            {
              llvm::ValueAsMetadata::get();
              result = llvm::MDNode::replaceOperandWith();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MTLGVEmulation::removeGVUsages(uint64_t this)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v1 = *(this + 240);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 232);
    v4 = &v3[v1];
    do
    {
      Name = llvm::Value::getName(*v3);
      llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((v2 + 200), Name, v6);
      v21[0] = *(*v3 + 1);
      v21[1] = 0;
      llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v26, v21);
      v7 = v26;
      if (v27)
      {
        v8 = 8 * v27;
        do
        {
          v9 = *v7;
          v10 = *(*v7 + 16);
          if (*v7 && v10 == 61)
          {
            v23 = *(*(v9 + 5) + 56);
            v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((v2 + 304), &v23)[1];
            v12 = **(*v11 + 16);
            v24 = llvm::ConstantInt::get();
            v25 = llvm::ConstantInt::get();
            v22 = 257;
            v13 = llvm::GetElementPtrInst::Create(v12, v11, &v24, 2, v21, 0);
            llvm::GetElementPtrInst::setIsInBounds(v13);
            llvm::Instruction::insertBefore(v13, v9);
            v14 = llvm::User::operator new(0x40);
            llvm::StoreInst::StoreInst();
            llvm::ReplaceInstWithInst(v9, v14, v15);
          }

          else
          {
            if (v10 != 60)
            {
              v9 = 0;
            }

            v23 = *(*(v9 + 5) + 56);
            v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((v2 + 304), &v23)[1];
            v17 = **(*v16 + 16);
            v24 = llvm::ConstantInt::get();
            v25 = llvm::ConstantInt::get();
            v22 = 257;
            v18 = llvm::GetElementPtrInst::Create(v17, v16, &v24, 2, v21, 0);
            llvm::GetElementPtrInst::setIsInBounds(v18);
            llvm::Instruction::insertBefore(v18, v9);
            v19 = llvm::User::operator new(0x40);
            v22 = 257;
            llvm::LoadInst::LoadInst();
            llvm::ReplaceInstWithInst(v9, v19, v20);
          }

          v7 += 8;
          v8 -= 8;
        }

        while (v8);
        v7 = v26;
      }

      if (v7 != v28)
      {
        free(v7);
      }

      llvm::UndefValue::get();
      llvm::Value::replaceAllUsesWith();
      this = llvm::GlobalVariable::eraseFromParent(*v3++);
    }

    while (v3 != v4);
  }

  return this;
}

void MTLGVEmulation::updateAIRDyldTable(MTLGVEmulation *this)
{
  v21[8] = *MEMORY[0x277D85DE8];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v3 = GlobalVariable;
    if ((llvm::GlobalValue::isDeclaration(GlobalVariable) & 1) == 0)
    {
      v4 = *(v3 - 4);
      v5 = *(v4 + 5);
      v18 = 0;
      llvm::SmallVector<llvm::Constant *,8u>::SmallVector(&v19, v5 & 0x7FFFFFF, &v18);
      v6 = *(v4 + 5) & 0x7FFFFFF;
      if ((*(v4 + 5) & 0x7FFFFFF) != 0)
      {
        v7 = 0;
        v8 = v4;
        do
        {
          *(v19 + v7++) = *(v8 - 4 * v6);
          v6 = *(v4 + 5) & 0x7FFFFFF;
          v8 = (v8 + 32);
        }

        while (v7 < v6);
      }

      v9 = v19;
      if (v20)
      {
        v10 = (v19 + 8 * v20);
        do
        {
          for (i = *v9; ; i = *(i - 4 * (*(i + 5) & 0x7FFFFFF)))
          {
            v12 = *(i + 16);
            if (v12 != 5)
            {
              break;
            }

            isCast = llvm::ConstantExpr::isCast(i);
            if ((isCast & 1) == 0)
            {
              v14 = llvm::dbgs(isCast);
              llvm::raw_ostream::operator<<(v14, "non-cast constexpr in air.dyld_flat_table", 0x29uLL);
              llvm::Value::dump(i);
              v12 = *(i + 16);
              break;
            }
          }

          if (!v12)
          {
            v17 = 0;
            v18 = i;
            v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 35, &v18, &v17);
            if ((v15 & 1) != 0 && (v15 = *(v17 + 8)) != 0)
            {
              *v9 = llvm::ConstantExpr::getPointerCast();
            }

            else
            {
              v16 = llvm::dbgs(v15);
              llvm::raw_ostream::operator<<(v16, "Missing replacement for function in air.dyld_flat_table", 0x37uLL);
              llvm::Value::dump(v3);
              llvm::Value::dump(*v9);
            }
          }

          ++v9;
        }

        while (v9 != v10);
      }

      llvm::ConstantArray::get();
      llvm::GlobalVariable::setInitializer();
      llvm::UndefValue::get();
      llvm::Value::replaceAllUsesWith();
      llvm::Constant::destroyConstant(v4);
      if (v19 != v21)
      {
        free(v19);
      }
    }
  }
}

void MTLGVEmulation::updateFunctionUses(MTLGVEmulation *this, llvm::Function *a2, llvm::Function *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v38 = *(a2 + 1);
  v39 = 0;
  llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v41, &v38);
  v5 = v41;
  if (!v42)
  {
    goto LABEL_48;
  }

  v6 = (v41 + 8 * v42);
  do
  {
    v7 = *v5;
    v8 = *(*v5 + 16);
    if (!*v5 || v8 != 84)
    {
      if (v7)
      {
        v14 = v8 > 0x14;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        if (llvm::Value::hasNUsesOrMore(*v5))
        {
          llvm::ConstantExpr::getBitCast();
          llvm::Constant::handleOperandChange();
        }

        goto LABEL_46;
      }

LABEL_14:
      if (*(a2 + 3) != *(a3 + 3))
      {
        v40[8] = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        v16 = PointerCast;
        if (*(v7 + 16) != 83 || v7 == 0)
        {
          llvm::Instruction::insertBefore(PointerCast, v7);
        }

        else
        {
          v20 = *(v7 + 5);
          v21 = v20 & 0x7FFFFFF;
          if ((v20 & 0x7FFFFFF) != 0)
          {
            v22 = 0;
            v23 = 0;
            v24 = v7;
            do
            {
              if ((v20 & 0x40000000) != 0)
              {
                v25 = *(v7 - 1);
                if (*&v25[v22] == a2)
                {
                  goto LABEL_32;
                }
              }

              else if (*(v24 - 4 * v21) == a2)
              {
                v25 = v7 - 32 * v21;
LABEL_32:
                v26 = *&v25[32 * *(v7 + 15) + 8 * v23];
                v27 = *(v26 + 40);
                if (v27 == v26 + 40)
                {
                  v30 = 0;
                }

                else
                {
                  v28 = (v27 - 24);
                  if (v27)
                  {
                    v29 = v27 - 24;
                  }

                  else
                  {
                    v29 = 0;
                  }

                  if (*(v29 + 16) - 29 >= 0xB)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    v30 = v28;
                  }
                }

                llvm::Instruction::insertBefore(v16, v30);
                v20 = *(v7 + 5);
              }

              ++v23;
              v21 = v20 & 0x7FFFFFF;
              v24 = (v24 + 32);
              v22 += 32;
            }

            while (v23 < v21);
          }
        }
      }

      llvm::User::replaceUsesOfWith();
      goto LABEL_46;
    }

    if (*(v7 - 4) != a2)
    {
      goto LABEL_14;
    }

    NumArgOperands = llvm::compat::getNumArgOperands(*v5);
    v35[0] = 0;
    llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v38, (NumArgOperands + 1), v35);
    v37 = *(*(v7 + 5) + 56);
    v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v37);
    v11 = 0;
    *v38 = v10[1];
    v12 = v7;
    while (v11 < llvm::compat::getNumArgOperands(v7))
    {
      v13 = v38 + 8 * v11++;
      *(v13 + 1) = *(v12 - 4 * (*(v7 + 5) & 0x7FFFFFF));
      v12 = (v12 + 32);
    }

    if (a3)
    {
      v19 = *(a3 + 3);
    }

    else
    {
      v19 = 0;
    }

    v36 = 257;
    v31 = llvm::CallInst::Create(v19, a3, v38, v39, 0, 0, v35, 0);
    v32 = *(v31 + 9) & 0xF003 | (4 * ((*(v7 + 9) >> 2) & 0x3FF));
    *(v31 + 9) = v32;
    *(v31 + 9) = v32 & 0xFFFC | *(v7 + 9) & 3;
    llvm::ReplaceInstWithInst(v7, v31, v33);
    if (v38 != v40)
    {
      free(v38);
    }

LABEL_46:
    ++v5;
  }

  while (v5 != v6);
  v5 = v41;
LABEL_48:
  if (v5 != v43)
  {
    free(v5);
  }
}

uint64_t *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<GVStructElementInfo>(llvm::StringMapImpl *a1, const void *a2, size_t a3, _OWORD *a4)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  v11 = MEMORY[0x21604BA70](a3 + 25, 8);
  v12 = v11;
  v13 = v11 + 24;
  if (a3)
  {
    memcpy((v11 + 24), a2, a3);
  }

  *(v13 + a3) = 0;
  *v12 = a3;
  *(v12 + 8) = *a4;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v9 = MEMORY[0x21604BA70](a3 + 25, 8);
  v10 = v9;
  v11 = v9 + 24;
  if (a3)
  {
    memcpy((v9 + 24), a2, a3);
  }

  *(v11 + a3) = 0;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = a3;
  *i = v10;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    v3 = a2;
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = v3;
  }
}

void *llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<std::reference_wrapper<llvm::Function>>::append<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_213C20D28(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateAlloca(llvm::BasicBlock **this, llvm::Type *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  Module = llvm::BasicBlock::getModule(this[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  llvm::DataLayout::getPrefTypeAlign(DataLayout, a2);
  v9 = llvm::User::operator new(0x48);
  llvm::AllocaInst::AllocaInst();
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v9, a4);
}

void *llvm::SmallVector<llvm::Value *,8u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Instruction *>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C20E4C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::getPayloadArg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8 * *(a3 + 8) + 16);
  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v3 - 8 * v4 + 8 * v6);
    String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
    if (v9 == 11 && *String == 0x6C7961702E726961 && *(String + 3) == 0x64616F6C7961702ELL)
    {
      break;
    }

    ++v6;
    v4 = *(v3 + 8);
    if (v6 >= v4)
    {
      return 0;
    }
  }

  v12 = *(*(v7 - 8 * *(v7 + 8)) + 128);
  v13 = (v12 + 24);
  if (*(v12 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  v14 = *v13;
  if (*(a2 + 18))
  {
    llvm::Function::BuildLazyArguments(a2);
  }

  return *(a2 + 88) + 40 * v14;
}

uint64_t MetalModulePass::getMetadata<unsigned int>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t llvm::IRBuilderBase::CreateMemCpy(uint64_t a1, llvm::LLVMContext *a2, unsigned __int16 a3, uint64_t a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  llvm::Type::getInt64Ty(*(a1 + 64), a2);
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateMemTransferInst();
}

uint64_t llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, unsigned int a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 1);
  if (!result)
  {
    v13[16] = 257;
    v12 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2, v13, 0);
    llvm::GetElementPtrInst::setIsInBounds(v12);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v12, a6);
  }

  return result;
}

uint64_t *llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 56;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 80);
      v8 = v6 + 72;
      if (v7 != v6 + 72)
      {
        do
        {
          v9 = *(v7 + 8);
          if (v7)
          {
            v10 = v7 - 24;
          }

          else
          {
            v10 = 0;
          }

          result = llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit(v4, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return result;
}

uint64_t *llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = a2 + 40;
  if (v2 != a2 + 40)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 8);
      v6 = v2 - 24;
      if (v2)
      {
        v7 = v2 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 16) == 84)
      {
        result = MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor::visitCallInst(v4, v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor::visitCallInst(uint64_t *a1, uint64_t a2)
{
  result = *(a2 - 32);
  if (result)
  {
    if (!*(result + 16) && *(result + 24) == *(a2 + 72))
    {
      result = llvm::Value::getName(result);
      if (v5 >= 0xD && *result == 0x65746E692E726961 && *(result + 5) == 0x746365737265746ELL)
      {
        v7 = *a1;
        v8 = a2;
        return llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v7, &v8);
      }
    }
  }

  return result;
}

void *llvm::SmallVector<llvm::Constant *,8u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Instruction *>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C21368(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void PostVertexDumpOutput::~PostVertexDumpOutput(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

llvm::Instruction *llvm::IRBuilderBase::CreateMul(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    result = (*(**(this + 9) + 88))(*(this + 9), a2, a3, a5, a6);
    if (result)
    {
      v9 = *(result + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {

      return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, result, a4);
    }
  }

  else
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 17, a2, a3, a4, a5, a6);
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<MTLStructMemberInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2826340C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21604C990);
}

void MTLArgumentData::~MTLArgumentData(MTLArgumentData *this)
{
  v5 = (this + 200);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 96;
      std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void MTLThreadgroupMemoryCheckPass::~MTLThreadgroupMemoryCheckPass(MTLThreadgroupMemoryCheckPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLThreadgroupMemoryCheckPass::runOnModule(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v2 = *(*(*(this + 8) + 64) + 651);
  if ((v2 & 1) == 0)
  {
    MetalModulePass::runOnModule(this, a2);
    *(this + 46) = 0;
    *(this + 12) = 0u;
    *(this + 13) = 0u;
    if (!MTLBoundsCheck::isLibraryModule(*(this + 6), v5))
    {
      if ((*(*(this + 4) + 23) & 2) != 0)
      {
        MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(this);
      }

      MTLThreadgroupMemoryCheckPass::replaceThreadgroupArgumentsWithGEP(this);
      MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(this);
    }

    MTLThreadgroupMemoryCheckPass::createTagFunctions(this, a2, v6);
  }

  return v2 ^ 1u;
}

void MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(MTLThreadgroupMemoryCheckPass *this)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v2 = *(this + 6);
  v3 = v2 + 8;
  v4 = *(v2 + 16);
  if (v4 == v2 + 8)
  {
    *(*(*(this + 8) + 64) + 632) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v4)
      {
        v6 = v4 - 56;
      }

      else
      {
        v6 = 0;
      }

      if ((*(v6 + 33) & 0x1C) == 0 && *(*v6 + 8) == 783)
      {
        TypeAllocSize = v6;
        llvm::SmallVectorImpl<std::pair<llvm::GlobalVariable *,unsigned long long>>::emplace_back<llvm::GlobalVariable *,unsigned long long &>(&v15, &TypeAllocSize, &v11);
        TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(this + 7), *(v6 + 24));
        v13 = v7;
        v8 = llvm::TypeSize::operator unsigned long long();
        v5 = v11 + v8;
        v11 += v8;
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    v9 = v16;
    v10 = *(this + 8);
    *(*(v10 + 64) + 632) = v5;
    if (v9)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(v10);
      if (v16)
      {
        v14 = 0;
        operator new();
      }
    }
  }

  if (v15 != v17)
  {
    free(v15);
  }
}

void sub_213C219E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::replaceThreadgroupArgumentsWithGEP(MTLThreadgroupMemoryCheckPass *this)
{
  v65[4] = *MEMORY[0x277D85DE8];
  v52 = *(this + 5);
  v53 = v55;
  v54 = 0;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v3 = *(EntryFunction + 24);
  v63 = v65;
  v64 = 0x400000000;
  if (*(v3 + 12) == 1)
  {
    goto LABEL_21;
  }

  v4 = 0;
  do
  {
    v5 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    v6 = *(v5 - 8 * *(v5 + 8) + 8 * v4);
    v59[0] = v6;
    if (*(*(*(v3 + 16) + 8 * v4 + 8) + 8) == 783 && !MTLThreadgroupMemoryCheckPass::isMeshGridPropertiesArg(this, v6))
    {
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v63, v59);
    }

    ++v4;
  }

  while (v4 < (*(v3 + 12) - 1));
  if (!v64)
  {
LABEL_21:
    MTLThreadgroupMemoryCheckPass::createLocalThreadgroupGlobal(this);
  }

  else
  {
    v7 = *(EntryFunction + 80);
    if (v7)
    {
      v8 = (v7 - 24);
    }

    else
    {
      v8 = 0;
    }

    FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v8);
    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v59, FirstNonPHI, 0, 0, 0);
    v57[0] = v58;
    v57[1] = 0x800000000;
    llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(v57, (*(v3 + 12) - 1));
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
    v11 = *(inserted + 3);
    v51 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v59, v11, inserted, 0, 0, v50);
    v12 = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(*(this + 8));
    v13 = *(v12 + 3);
    v51 = 257;
    v46 = llvm::IRBuilderBase::CreateAlignedLoad(v59, v13, v12, 0, 0, v50);
    if (v64)
    {
      v44 = v12;
      v47 = inserted;
      v14 = 8 * v64;
      v15 = 0x7FFFFFFF;
      v16 = v63;
      v17 = 0x7FFFFFFF;
      do
      {
        v18 = *(*(*v16 - 8 * *(*v16 + 8)) + 128);
        v19 = (v18 + 24);
        if (*(v18 + 32) >= 0x41u)
        {
          v19 = *v19;
        }

        v20 = *v19;
        LocationIndex = MTLBoundsCheck::getLocationIndex(*v16);
        v22 = *(this + 8);
        *(*(v22 + 64) + 636) |= 1 << LocationIndex;
        if (LocationIndex < v17)
        {
          v17 = LocationIndex;
          v15 = v20;
        }

        Name = llvm::Value::getName(v44);
        GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v22, Name, v24);
        v55[0] = llvm::ConstantInt::get();
        v55[1] = llvm::ConstantInt::get();
        v51 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP(v59, GVBaseType, v46, v55, 2, v50);
        v27 = *(GEP + 72);
        v51 = 257;
        v28 = llvm::IRBuilderBase::CreateAlignedLoad(v59, v27, GEP, 0, 0, v50);
        v29 = *(this + 8);
        v30 = llvm::Value::getName(v47);
        v32 = MTLBoundsCheck::SharedPassData::getGVBaseType(v29, v30, v31);
        v33 = *(this + 9);
        v51 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v59, 40, v28, v33, v50);
        v56 = 257;
        v35 = llvm::IRBuilderBase::CreateGEP(v59, v32, AlignedLoad, Cast, v55);
        v36 = *(*(v3 + 16) + 8 * (v20 + 1));
        v49 = 257;
        llvm::IRBuilderBase::CreateCast(v59, 49, v35, v36, v48);
        if (*(EntryFunction + 18))
        {
          llvm::Function::BuildLazyArguments(EntryFunction);
        }

        llvm::Value::replaceAllUsesWith();
        ++v16;
        v14 -= 8;
      }

      while (v14);
      v37 = v15;
      inserted = v47;
    }

    else
    {
      v37 = 0x7FFFFFFF;
    }

    if (*(EntryFunction + 18))
    {
      llvm::Function::BuildLazyArguments(EntryFunction);
    }

    v38 = *(EntryFunction + 80);
    v39 = *(EntryFunction + 88);
    if (v38)
    {
      v40 = (v38 - 24);
    }

    else
    {
      v40 = 0;
    }

    v41 = llvm::BasicBlock::getFirstNonPHI(v40);
    llvm::IRBuilderBase::SetInsertPoint(v59, v41);
    v42 = *(inserted + 3);
    v51 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v59, (v39 + 40 * v37), v42, v50);
    llvm::IRBuilderBase::CreateAlignedStore(v59, BitOrPointerCast, inserted, 0, 0);
    if (v57[0] != v58)
    {
      free(v57[0]);
    }

    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v62);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v61);
    if (v59[0] != &v60)
    {
      free(v59[0]);
    }
  }

  if (v63 != v65)
  {
    free(v63);
  }

  if (v53 != v55)
  {
    free(v53);
  }
}

void sub_213C21EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (a36 != v48)
  {
    free(a36);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a46);
  v51 = *(v49 - 144);
  if (v51 != v47)
  {
    free(v51);
  }

  if (a29 != v46)
  {
    free(a29);
  }

  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(MTLThreadgroupMemoryCheckPass *this)
{
  v82[7] = *MEMORY[0x277D85DE8];
  __p = 0;
  v73 = 0;
  v74 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v2 = *(this + 6);
  v79[0] = "air.global_bindings";
  v80[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, v79);
  if (NamedMetadata)
  {
    v4 = 0;
    v60 = 0;
    v61 = NamedMetadata;
    while (v4 < llvm::NamedMDNode::getNumOperands(v61))
    {
      Operand = llvm::NamedMDNode::getOperand(v61);
      v5 = Operand - 8 * *(Operand + 8);
      v6 = *(v5 + 16);
      v7 = *(*(v5 + 8) + 128);
      LocationIndex = MTLBoundsCheck::getLocationIndex(v6);
      String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8));
      if (v10 == 11 && (*String == 0x747865742E726961 ? (v11 = *(String + 3) == 0x657275747865742ELL) : (v11 = 0), v11 || (*String == 0x706D61732E726961 ? (v12 = *(String + 3) == 0x72656C706D61732ELL) : (v12 = 0), v12)) || MTLBoundsCheck::getAddressSpace(v6) != 3)
      {
        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v69, &Operand);
        v60 = 1;
      }

      else
      {
        v67 = 0u;
        memset(v66, 0, sizeof(v66));
        v13 = *(v7 + 8);
        if (v13)
        {
          do
          {
            v14 = *(v13 + 24);
            v79[0] = v14;
            v15 = v14[16];
            if (v14)
            {
              v16 = v15 >= 0x1C;
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              std::deque<llvm::User *>::push_back(v66, v79);
            }

            else
            {
              if (v14)
              {
                v17 = v15 == 5;
              }

              else
              {
                v17 = 0;
              }

              if (v17)
              {
                llvm::ConstantExpr::isCast(v14);
                v14 = v79[0];
              }

              for (i = *(v14 + 1); i; i = *(i + 8))
              {
                v63[0] = *(i + 24);
                if (v63[0])
                {
                  v19 = *(v63[0] + 16) >= 0x1Cu;
                }

                else
                {
                  v19 = 0;
                }

                if (v19)
                {
                  std::deque<llvm::User *>::push_back(v66, v63);
                }
              }
            }

            v13 = *(v13 + 8);
          }

          while (v13);
          v20 = *(&v67 + 1);
          if (*(&v67 + 1))
          {
            v62 = 1 << LocationIndex;
            do
            {
              v21 = *(*(*(&v66[0] + 1) + ((v67 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v67 & 0x1FF));
              *&v67 = v67 + 1;
              *(&v67 + 1) = v20 - 1;
              if (v67 >= 0x400)
              {
                operator delete(**(&v66[0] + 1));
                *(&v66[0] + 1) += 8;
                *&v67 = v67 - 512;
              }

              if (v21[16] <= 0x1Bu)
              {
                v22 = 0;
              }

              else
              {
                v22 = v21;
              }

              v65 = v22;
              MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v79, &v65);
              inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
              v24 = *(inserted + 3);
              v64 = 257;
              AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v79, v24, inserted, 0, 0, v63);
              v26 = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(*(this + 8));
              v27 = *(v26 + 3);
              v64 = 257;
              v28 = llvm::IRBuilderBase::CreateAlignedLoad(v79, v27, v26, 0, 0, v63);
              v29 = *(this + 8);
              v75 = v28;
              llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v29 + 88, &v75, v63);
              v30 = v4;
              v31 = *(this + 8);
              v75 = AlignedLoad;
              llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v31 + 88, &v75, v63);
              v32 = *(this + 8);
              *(*(v32 + 64) + 636) |= v62;
              Name = llvm::Value::getName(v26);
              GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v32, Name, v34);
              v75 = llvm::ConstantInt::get();
              v76 = llvm::ConstantInt::get();
              v64 = 257;
              v36 = llvm::IRBuilderBase::CreateGEP(v79, GVBaseType, v28, &v75, 2, v63);
              v37 = *(v36 + 72);
              v64 = 257;
              v38 = llvm::IRBuilderBase::CreateAlignedLoad(v79, v37, v36, 0, 0, v63);
              v4 = v30;
              v39 = *(this + 8);
              v40 = llvm::Value::getName(inserted);
              v42 = MTLBoundsCheck::SharedPassData::getGVBaseType(v39, v40, v41);
              v43 = *(this + 9);
              v64 = 257;
              Cast = llvm::IRBuilderBase::CreateCast(v79, 40, v38, v43, v63);
              v78[4] = 257;
              GEP = llvm::IRBuilderBase::CreateGEP(v79, v42, AlignedLoad, Cast, &v75);
              v75 = *(this + 5);
              v76 = v78;
              v77 = 0;
              v46 = *v65;
              v64 = 257;
              llvm::IRBuilderBase::CreateBitOrPointerCast(v79, GEP, v46, v63);
              llvm::Value::replaceAllUsesWith();
              v47 = v73;
              if (v73 >= v74)
              {
                v49 = (v73 - __p) >> 3;
                if ((v49 + 1) >> 61)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                v50 = (v74 - __p) >> 2;
                if (v50 <= v49 + 1)
                {
                  v50 = v49 + 1;
                }

                if (v74 - __p >= 0x7FFFFFFFFFFFFFF8)
                {
                  v51 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v50;
                }

                if (v51)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&__p, v51);
                }

                *(8 * v49) = v7;
                v48 = 8 * v49 + 8;
                v52 = (8 * v49 - (v73 - __p));
                memcpy(v52, __p, v73 - __p);
                v53 = __p;
                __p = v52;
                v73 = v48;
                v74 = 0;
                if (v53)
                {
                  operator delete(v53);
                }
              }

              else
              {
                *v73 = v7;
                v48 = (v47 + 8);
              }

              v73 = v48;
              llvm::Instruction::eraseFromParent(v65);
              if (v76 != v78)
              {
                free(v76);
              }

              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v82);
              llvm::IRBuilderFolder::~IRBuilderFolder(&v81);
              if (v79[0] != v80)
              {
                free(v79[0]);
              }

              v20 = *(&v67 + 1);
            }

            while (*(&v67 + 1));
          }
        }

        std::deque<llvm::User *>::~deque[abi:ne200100](v66);
      }

      v4 = (v4 + 1);
    }

    v54 = __p;
    v55 = v73;
    if (__p != v73)
    {
      do
      {
        v56 = *v54;
        llvm::GlobalVariable::dropAllReferences(*v54);
        llvm::Constant::getNullValue(*v56, v57);
        llvm::Value::replaceAllUsesWith();
        llvm::GlobalVariable::eraseFromParent(v56);
        ++v54;
      }

      while (v54 != v55);
    }

    llvm::NamedMDNode::clearOperands(v61);
    v58 = v69;
    v59 = v70;
    while (v58 != v59)
    {
      llvm::NamedMDNode::addOperand();
      v58 += 8;
    }

    if ((v60 & 1) == 0)
    {
      llvm::NamedMDNode::clearOperands(v61);
      llvm::NamedMDNode::eraseFromParent(v61);
    }
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }
}

void sub_213C225B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::createTagFunctions(llvm::PointerType **this, llvm::Module *a2, unsigned int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v9[0] = "mtl.threadgroup.get_tag";
  v10 = 259;
  v5 = this[10];
  v8[0] = llvm::PointerType::get();
  this[25] = getMangledFunction<llvm::PointerType *>(a2, v9, v5, v8);
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::onlyWritesMemory(this[25]);
  llvm::Function::addFnAttr();
  *(this[25] + 8) = *(this[25] + 8) & 0xFFFFBFC0 | 0x4007;
  v6 = this[5];
  v10 = 257;
  llvm::BasicBlock::Create(v6, v9, this[25], 0, v7);
}

void sub_213C227F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::createGetLengthFunctions(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = "mtl.threadgroup.get_length";
  v6 = 259;
  *(this + 26) = getMangledFunction<llvm::Type *&>(a2, v5, *(this + 10), this + 10);
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  *(*(this + 26) + 32) = *(*(this + 26) + 32) & 0xFFFFBFC0 | 0x4007;
  v3 = *(this + 5);
  v5[0] = "entry";
  v6 = 259;
  llvm::BasicBlock::Create(v3, v5, *(this + 26), 0, v4);
}

void MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(MTLBoundsCheck::SharedPassData **this, llvm::Module *a2)
{
  v2 = a2 + 24;
  v3 = *(a2 + 4);
  if (v3 != a2 + 24)
  {
    do
    {
      if (v3)
      {
        v5 = (v3 - 56);
      }

      else
      {
        v5 = 0;
      }

      Name = llvm::Value::getName(v5);
      if (v7 < 0x10 || (*Name == 0x657268742E6C746DLL ? (v8 = Name[1] == 0x2E70756F72676461) : (v8 = 0), !v8))
      {
        if ((llvm::GlobalValue::isDeclaration(v5) & 1) == 0)
        {
          MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(this, v5);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::GlobalVariable *,unsigned long long>>::emplace_back<llvm::GlobalVariable *,unsigned long long &>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 2);
  if (v4 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v8 = *(a1 + 2);
  }

  else
  {
    v5 = *a1;
    v6 = (*a1 + 16 * v4);
    v7 = *a3;
    *v6 = *a2;
    v6[1] = v7;
    v8 = v4 + 1;
    *(a1 + 2) = v8;
  }

  return v5 + 16 * v8 - 16;
}

__n128 std::__function::__func<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2826341A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::operator()(uint64_t a1, llvm::Type **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 24);
  v19 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v7, v6, 0, 0, v18);
  v9 = *(v5 + 64);
  Name = llvm::Value::getName(**(a1 + 8));
  GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v9, Name, v11);
  v13 = *(*(a1 + 24) + 8);
  v19 = 257;
  ConstGEP1_64 = llvm::IRBuilderBase::CreateConstGEP1_64(a2, GVBaseType, AlignedLoad, v13, v18);
  v15 = ***(a1 + 24);
  v17[16] = 257;
  return llvm::IRBuilderBase::CreateCast(a2, 49, ConstGEP1_64, v15, v17);
}

uint64_t std::__function::__value_func<llvm::Value * ()(MTLIRBuilder &)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL MTLThreadgroupMemoryCheckPass::isMeshGridPropertiesArg(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 2)
  {
    return 0;
  }

  v3 = *(a2 - 8 * v2 + 8);
  if (*v3)
  {
    return 0;
  }

  String = llvm::MDString::getString(v3);
  if (v5 != 24)
  {
    return 0;
  }

  return *String == 0x6873656D2E726961 && String[1] == 0x72705F646972675FLL && String[2] == 0x736569747265706FLL;
}

void MTLThreadgroupMemoryCheckPass::createLocalThreadgroupGlobal(MTLThreadgroupMemoryCheckPass *this)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v1 = *(*(*(this + 8) + 64) + 632);
  if (v1)
  {
    v3 = *(MetalModulePass::getEntryFunction(this) + 80);
    if (v3)
    {
      v4 = (v3 - 24);
    }

    else
    {
      v4 = 0;
    }

    v10[0] = v4;
    MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(v12, v10);
    llvm::ArrayType::get(*(this + 12), v1);
    v5 = llvm::User::operator new(0x58);
    llvm::UndefValue::get();
    v10[0] = "mtl.threadgroup_memory";
    v11 = 259;
    llvm::GlobalVariable::GlobalVariable();
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v4);
    llvm::IRBuilderBase::SetInsertPoint(v12, v4, FirstInsertionPt);
    v7 = llvm::PointerType::get();
    v11 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(v12, 49, v5, v7, v10);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
    llvm::IRBuilderBase::CreateAlignedStore(v12, Cast, inserted, 0, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v15);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v14);
    if (v12[0] != &v13)
    {
      free(v12[0]);
    }
  }
}

void sub_213C234B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v17[5] = v17[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v17);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a17);
  _Unwind_Resume(a1);
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

void std::deque<llvm::User *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<llvm::User *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<llvm::User *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<llvm::User **>::emplace_back<llvm::User **&>(a1, &v9);
}

void sub_213C23760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<llvm::User **>::emplace_back<llvm::User **&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1, v11);
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

void std::__split_buffer<llvm::User **>::emplace_front<llvm::User **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<llvm::User **>::emplace_back<llvm::User **>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1[4], v11);
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

void std::__split_buffer<llvm::User **>::emplace_front<llvm::User **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<llvm::User *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<llvm::User **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<llvm::User **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t getMangledFunction<llvm::PointerType *>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, MTLBoundsCheck **a4)
{
  llvm::Twine::str(&v28, this);
  MTLBoundsCheck::getMangledTypeStr(&v27, a3, v7, v8);
  v9 = std::string::insert(&v27, 0, ".");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v23 >= 0)
  {
    v12 = HIBYTE(v23);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::append(&v28, v11, v12);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  memset(&v27, 0, sizeof(v27));
  v26 = *a4;
  MTLBoundsCheck::getMangledTypeStr(&v25, v26, v13, v14);
  v15 = std::string::insert(&v25, 0, ".");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v23 >= 0)
  {
    v18 = HIBYTE(v23);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v28, v17, v18);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v27, &v26);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v20 = llvm::FunctionType::get();
    v24 = 260;
    __p[0] = &v28;
    Function = llvm::Function::Create(v20, 0, __p, a1);
  }

  if (v27.__r_.__value_.__r.__words[0])
  {
    v27.__r_.__value_.__l.__size_ = v27.__r_.__value_.__r.__words[0];
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C23EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Function::onlyWritesMemory(llvm::Function *this)
{
  if (llvm::Function::hasFnAttribute())
  {
    return 1;
  }

  return llvm::Function::hasFnAttribute();
}

uint64_t getMangledFunction<llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, MTLBoundsCheck **a4)
{
  llvm::Twine::str(&v28, this);
  MTLBoundsCheck::getMangledTypeStr(&v27, a3, v7, v8);
  v9 = std::string::insert(&v27, 0, ".");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v23 >= 0)
  {
    v12 = HIBYTE(v23);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::append(&v28, v11, v12);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  memset(&v27, 0, sizeof(v27));
  v26 = *a4;
  MTLBoundsCheck::getMangledTypeStr(&v25, v26, v13, v14);
  v15 = std::string::insert(&v25, 0, ".");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v23 >= 0)
  {
    v18 = HIBYTE(v23);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v28, v17, v18);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v27, &v26);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v20 = llvm::FunctionType::get();
    v24 = 260;
    __p[0] = &v28;
    Function = llvm::Function::Create(v20, 0, __p, a1);
  }

  if (v27.__r_.__value_.__r.__words[0])
  {
    v27.__r_.__value_.__l.__size_ = v27.__r_.__value_.__r.__words[0];
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C241CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMangledFunction<llvm::Type *&,llvm::PointerType *>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v33[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v32, this);
  MTLBoundsCheck::getMangledTypeStr(&v31, a3, v9, v10);
  v11 = std::string::insert(&v31, 0, ".");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v27 >= 0)
  {
    v14 = HIBYTE(v27);
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(&v32, v13, v14);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v17 = 0;
  memset(&v31, 0, sizeof(v31));
  v18 = *a5;
  v33[0] = *a4;
  v33[1] = v18;
  do
  {
    v30 = v33[v17];
    MTLBoundsCheck::getMangledTypeStr(&v29, v30, v15, v16);
    v19 = std::string::insert(&v29, 0, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v27 >= 0)
    {
      v22 = HIBYTE(v27);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v32, v21, v22);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v31, &v30);
    ++v17;
  }

  while (v17 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v24 = llvm::FunctionType::get();
    v28 = 260;
    __p[0] = &v32;
    Function = llvm::Function::Create(v24, 0, __p, a1);
  }

  if (v31.__r_.__value_.__r.__words[0])
  {
    v31.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C244A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(MTLBoundsCheck::SharedPassData **this, llvm::Function *a2)
{
  v27[16] = *MEMORY[0x277D85DE8];
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    v19 = a2 + 72;
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v25 = v27;
      v26 = 0x800000000;
      v6 = v5 + 40;
      v7 = *(v5 + 6);
      if (v7 != v5 + 40)
      {
        do
        {
          if (v7)
          {
            v8 = (v7 - 24);
          }

          else
          {
            v8 = 0;
          }

          if ((*(v8 + 16) & 0xFE) == 0x3C)
          {
            CheckedInstruction = MTLThreadgroupMemoryCheckPass::createCheckedInstruction(this, v8);
            if (CheckedInstruction)
            {
              v20[0] = v8;
              llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::Function *>>::emplace_back<llvm::Instruction *,llvm::Function *&>(&v25, v20, &CheckedInstruction);
            }
          }

          v7 = *(v7 + 1);
        }

        while (v7 != v6);
        v9 = v25;
        if (v26)
        {
          v10 = (v25 + 16 * v26);
          do
          {
            v11 = *v9;
            v12 = *(*v9 + 5);
            if ((v12 & 0x40000000) != 0)
            {
              v14 = *(v11 - 1);
              v13 = v12 & 0x7FFFFFF;
            }

            else
            {
              v13 = v12 & 0x7FFFFFF;
              v14 = v11 - 32 * v13;
            }

            v15 = v9[1];
            llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(&CheckedInstruction, v14, &v14[32 * v13]);
            MTLBoundsCheck::SharedPassData::indexForInstruction(this[8], v11);
            v20[0] = llvm::ConstantInt::get();
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&CheckedInstruction, v20);
            if (v15)
            {
              v16 = *(v15 + 24);
            }

            else
            {
              v16 = 0;
            }

            v21 = 257;
            v17 = llvm::CallInst::Create(v16, v15, CheckedInstruction, v23, 0, 0, v20, 0);
            llvm::ReplaceInstWithInst(v11, v17, v18);
            if (CheckedInstruction != &v24)
            {
              free(CheckedInstruction);
            }

            v9 += 2;
          }

          while (v9 != v10);
          v9 = v25;
          v2 = v19;
        }

        if (v9 != v27)
        {
          free(v9);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

void sub_213C24760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21 != v21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLThreadgroupMemoryCheckPass::createCheckedInstruction(MTLThreadgroupMemoryCheckPass *this, llvm::Instruction *a2)
{
  v2 = *(a2 + 16);
  if (v2 == 60)
  {
    return MTLThreadgroupMemoryCheckPass::getCheckedLoadFunction(this, a2);
  }

  if (v2 == 61)
  {
    return MTLThreadgroupMemoryCheckPass::getCheckedStoreFunction(this, a2);
  }

  return 0;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::Function *>>::emplace_back<llvm::Instruction *,llvm::Function *&>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 2);
  if (v4 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v7 = *(a1 + 2);
  }

  else
  {
    v5 = *a1;
    v6 = (*a1 + 16 * v4);
    *v6 = *a2;
    v6[1] = *a3;
    v7 = v4 + 1;
    *(a1 + 2) = v7;
  }

  return v5 + 16 * v7 - 16;
}

uint64_t MTLThreadgroupMemoryCheckPass::getCheckedStoreFunction(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = **(a2 - 32);
  v14 = v3;
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v13 = *v4;
  v5 = *(v3 + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v3 + 16) + 8);
  }

  if ((v5 & 0xFFFFFF00) != 0x300)
  {
    return 0;
  }

  v12 = 1 << (*(a2 + 18) >> 1);
  v15[0] = "mtl.threadgroup.checked_store.";
  v15[2] = &v12;
  v16 = 3075;
  v6 = *(a1 + 48);
  VoidTy = llvm::Type::getVoidTy(*(a1 + 40), a2);
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(v6, v15, VoidTy, &v13, &v14, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(v8);
      if (*(v8 + 18))
      {
        llvm::Function::BuildLazyArguments(v8);
        if (*(v8 + 18))
        {
          llvm::Function::BuildLazyArguments(v8);
        }
      }
    }

    v10 = *(a1 + 40);
    v15[0] = "entry";
    v16 = 259;
    llvm::BasicBlock::Create(v10, v15, v8, 0, v9);
  }

  return v8;
}

uint64_t MTLThreadgroupMemoryCheckPass::getCheckedLoadFunction(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = **(a2 - 32);
  v13 = v3;
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v5 = *(v3 + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v3 + 16) + 8);
  }

  if ((v5 & 0xFFFFFF00) != 0x300)
  {
    return 0;
  }

  v6 = *v4;
  v12 = 1 << (*(a2 + 18) >> 1);
  v7 = a1[6];
  v14[0] = "mtl.threadgroup.checked_load.";
  v14[2] = &v12;
  v15 = 3075;
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&>(v7, v14, v6, &v13, a1 + 10);
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(v8);
      if (*(v8 + 18))
      {
        llvm::Function::BuildLazyArguments(v8);
      }
    }

    v10 = a1[5];
    v14[0] = "entry";
    v15 = 259;
    llvm::BasicBlock::Create(v10, v14, v8, 0, v9);
  }

  return v8;
}

uint64_t getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5, int64_t *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v33, this);
  MTLBoundsCheck::getMangledTypeStr(&v32, a3, v11, v12);
  v13 = std::string::insert(&v32, 0, ".");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v35 = v13->__r_.__value_.__r.__words[2];
  v34 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v35 >= 0)
  {
    v15 = &v34;
  }

  else
  {
    v15 = v34;
  }

  if (v35 >= 0)
  {
    v16 = HIBYTE(v35);
  }

  else
  {
    v16 = *(&v34 + 1);
  }

  std::string::append(&v33, v15, v16);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v19 = 0;
  memset(&v32, 0, sizeof(v32));
  v20 = *a5;
  *&v34 = *a4;
  *(&v34 + 1) = v20;
  v35 = *a6;
  do
  {
    v31 = *(&v34 + v19);
    MTLBoundsCheck::getMangledTypeStr(&v28, v31, v17, v18);
    v21 = std::string::insert(&v28, 0, ".");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v30 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if (v30 >= 0)
    {
      v24 = HIBYTE(v30);
    }

    else
    {
      v24 = __p[1];
    }

    std::string::append(&v33, v23, v24);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v32, &v31);
    v19 += 8;
  }

  while (v19 != 24);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v26 = llvm::FunctionType::get();
    v36 = 260;
    *&v34 = &v33;
    Function = llvm::Function::Create(v26, 0, &v34, a1);
  }

  if (v32.__r_.__value_.__r.__words[0])
  {
    v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C25870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMangledFunction<llvm::Type *&,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v33[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v32, this);
  MTLBoundsCheck::getMangledTypeStr(&v31, a3, v9, v10);
  v11 = std::string::insert(&v31, 0, ".");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v27 >= 0)
  {
    v14 = HIBYTE(v27);
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(&v32, v13, v14);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v17 = 0;
  memset(&v31, 0, sizeof(v31));
  v18 = *a5;
  v33[0] = *a4;
  v33[1] = v18;
  do
  {
    v30 = v33[v17];
    MTLBoundsCheck::getMangledTypeStr(&v29, v30, v15, v16);
    v19 = std::string::insert(&v29, 0, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v27 >= 0)
    {
      v22 = HIBYTE(v27);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v32, v21, v22);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v31, &v30);
    ++v17;
  }

  while (v17 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v24 = llvm::FunctionType::get();
    v28 = 260;
    __p[0] = &v32;
    Function = llvm::Function::Create(v24, 0, __p, a1);
  }

  if (v31.__r_.__value_.__r.__words[0])
  {
    v31.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C25B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(void *a1, char *a2, char *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(a1, a2, a3);
  return a1;
}

void sub_213C25C38(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLFragmentInputPackingPass::fragmentInputPacking(int a1, llvm::Type **this, uint64_t a3)
{
  v141[10] = *MEMORY[0x277D85DE8];
  v4 = *this;
  *&v135 = "air.fragment";
  LOWORD(v137) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v135);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v7 = (Operand - 8 * *(Operand + 8));
  v8 = v7[2];
  v9 = *(*v7 + 128);
  v10 = *(v9 + 3);
  __p = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  __src = 0;
  v126 = 0;
  v127 = 0;
  if (v8)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&v124, *(v9 + 12));
    MTLFrameworkPass::getArgumentMetadataIndices(v8, &v124);
    v118 = v10;
    v114 = this;
    if (*(v9 + 9))
    {
      llvm::Function::BuildLazyArguments(v9);
    }

    v11 = 0;
    v116 = 0;
    for (i = *(v9 + 11); ; i += 40)
    {
      if (*(v9 + 9))
      {
        llvm::Function::BuildLazyArguments(v9);
      }

      if (i == *(v9 + 11) + 40 * *(v9 + 12))
      {
        v42 = 126 - 2 * __clz((v132 - __p) >> 5);
        if (v132 == __p)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,false>(__p, v132, &v135, v43, 1);
        v117 = v9;
        if (((v132 - __p) & 0x1FFFFFFFE0) != 0)
        {
          v44 = 0;
          v45 = ((v132 - __p) >> 5);
          do
          {
            v46 = __p + 32 * v44;
            v47 = v128;
            v48 = v129;
            ComponentType = MTLDataTypeGetComponentType(*(v46 + 6));
            ComponentCount = MTLDataTypeGetComponentCount(*(v46 + 6));
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
            v52 = v46[28];
            v53 = v51;
            v54 = (v52 & 0x38) == 0x20 || v51 == 0;
            v9 = v117;
            if (v54)
            {
LABEL_73:
              v58 = *(*(v118 + 16) + 8 * (*v46 + 1));
              if ((*(v58 + 8) & 0xFE) == 0x12)
              {
                v58 = **(v58 + 16);
              }

              v59 = v129;
              if (v129 >= v130)
              {
                v61 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 3);
                v62 = v61 + 1;
                if (v61 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v130 - v128) >> 3) > v62)
                {
                  v62 = 0x5555555555555556 * ((v130 - v128) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v130 - v128) >> 3) >= 0x555555555555555)
                {
                  v63 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v63 = v62;
                }

                if (v63)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(&v128, v63);
                }

                v65 = 8 * ((v129 - v128) >> 3);
                *v65 = ComponentType;
                *(v65 + 2) = ComponentCount;
                *(v65 + 4) = 1;
                *(v65 + 6) = v44;
                *(v65 + 16) = v58;
                v60 = 24 * v61 + 24;
                v66 = (24 * v61 - (v129 - v128));
                memcpy(v66, v128, v129 - v128);
                v67 = v128;
                v128 = v66;
                v129 = v60;
                v130 = 0;
                if (v67)
                {
                  operator delete(v67);
                }

                v9 = v117;
              }

              else
              {
                *v129 = ComponentType;
                *(v59 + 1) = ComponentCount;
                *(v59 + 2) = 1;
                *(v59 + 3) = v44;
                v60 = (v59 + 24);
                *(v59 + 2) = v58;
              }

              v129 = v60;
            }

            else
            {
              v55 = (v128 + 6);
              while (1)
              {
                v56 = *(v55 - 2);
                v57 = (v56 + ComponentCount) <= 4 && ComponentType == *(v55 - 3);
                if (v57 && ((v52 ^ *(__p + 32 * *v55 + 28)) & 0x3E) == 0)
                {
                  break;
                }

                v55 += 12;
                if (!--v53)
                {
                  goto LABEL_73;
                }
              }

              *(v55 - 2) = v56 + ComponentCount;
              v64 = *(v55 - 1);
              v55[v64] = v44;
              *(v55 - 1) = v64 + 1;
            }

            ++v44;
          }

          while (v44 != v45);
        }

        v122 = 0;
        v123 = 0;
        v121 = 0;
        std::vector<MTLOpaqueObject *>::reserve(&v121, (*(v118 + 12) - 1));
        v120 = *(v9 + 14);
        v140[0] = v141;
        v140[1] = 0xA00000000;
        memset(v119, 0, sizeof(v119));
        std::vector<MTLOpaqueObject *>::reserve(v119, (*(v118 + 12) - 1));
        v113 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 3);
        if (v113)
        {
          v68 = 0;
          v69 = 16;
          do
          {
            v70 = v128;
            v71 = __p + 32 * *(v128 + v69 - 10);
            v72 = *(v128 + v69 - 14);
            v73 = MTLDataTypeGetComponentType(*(v71 + 6));
            v74 = *&v70[v69];
            if (v72 >= 2 && (v71[28] & 0x38) != 0x20)
            {
              v74 = llvm::VectorType::get();
            }

            v75 = v122;
            if (v122 >= v123)
            {
              v77 = (v122 - v121) >> 3;
              if ((v77 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v78 = (v123 - v121) >> 2;
              if (v78 <= v77 + 1)
              {
                v78 = v77 + 1;
              }

              if (v123 - v121 >= 0x7FFFFFFFFFFFFFF8)
              {
                v79 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v79 = v78;
              }

              if (v79)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v121, v79);
              }

              v80 = (8 * v77);
              *v80 = v74;
              v76 = 8 * v77 + 8;
              v81 = v80 - (v122 - v121);
              memcpy(v81, v121, v122 - v121);
              v82 = v121;
              v121 = v81;
              v122 = v76;
              v123 = 0;
              if (v82)
              {
                operator delete(v82);
              }
            }

            else
            {
              *v122 = v74;
              v76 = (v75 + 8);
            }

            v122 = v76;
            llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v140, 0);
            ShaderTypeName = MTLDataTypeGetShaderTypeName(v73, v72);
            v139 = 0;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            llvm::Type::getInt32Ty(v4, v84);
            llvm::ConstantInt::get();
            *&v135 = llvm::ValueAsMetadata::get();
            *(&v135 + 1) = llvm::MDString::get();
            *&v136 = llvm::MDString::get();
            *(&v136 + 1) = llvm::MDString::get();
            llvm::Type::getInt32Ty(v4, v85);
            llvm::ConstantInt::get();
            *&v137 = llvm::ValueAsMetadata::get();
            *(&v137 + 1) = llvm::MDString::get();
            strlen(ShaderTypeName);
            *&v138 = llvm::MDString::get();
            v86 = MTLFrameworkPass::samplingStringFromQualifier(((v71[28] >> 3) & 7));
            strlen(v86);
            *(&v138 + 1) = llvm::MDString::get();
            v87 = MTLFrameworkPass::interpolationStringFromQualifier(((v71[28] >> 1) & 3));
            strlen(v87);
            v139 = llvm::MDString::get();
            Impl = llvm::MDTuple::getImpl();
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v119, &Impl);
            ++v68;
            v69 += 24;
          }

          while (v113 != v68);
        }

        if (((v126 - __src) & 0x3FFFFFFFCLL) != 0)
        {
          v88 = 0;
          v89 = ((v126 - __src) >> 2);
          do
          {
            v90 = *(__src + v88);
            v91 = *(*(v118 + 16) + 8 * (v90 + 1));
            v92 = v122;
            if (v122 >= v123)
            {
              v94 = (v122 - v121) >> 3;
              if ((v94 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v95 = (v123 - v121) >> 2;
              if (v95 <= v94 + 1)
              {
                v95 = v94 + 1;
              }

              if (v123 - v121 >= 0x7FFFFFFFFFFFFFF8)
              {
                v96 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v96 = v95;
              }

              if (v96)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v121, v96);
              }

              v97 = (8 * v94);
              *v97 = v91;
              v93 = 8 * v94 + 8;
              v98 = v97 - (v122 - v121);
              memcpy(v98, v121, v122 - v121);
              v99 = v121;
              v121 = v98;
              v122 = v93;
              v123 = 0;
              if (v99)
              {
                operator delete(v99);
              }
            }

            else
            {
              *v122 = v91;
              v93 = (v92 + 8);
            }

            v122 = v93;
            ParamAttrs = llvm::compat::getParamAttrs(&v120, v90);
            llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v140, ParamAttrs);
            v101 = *(v8 - 8 * *(v8 + 8) + 8 * *(v124 + v90));
            if (v101)
            {
              v102 = *(v101 + 8);
              std::vector<llvm::Metadata *>::vector[abi:ne200100](&v135, v102);
              llvm::Type::getInt32Ty(v4, v103);
              llvm::ConstantInt::get();
              *v135 = llvm::ValueAsMetadata::get();
              if (v102 >= 2)
              {
                v104 = v101 - 8 * *(v101 + 8);
                v105 = 8;
                do
                {
                  *(v135 + v105) = *(v104 + v105);
                  v105 += 8;
                }

                while (8 * v102 != v105);
              }

              v106 = llvm::MDTuple::getImpl();
              if (v135)
              {
                *(&v135 + 1) = v135;
                operator delete(v135);
              }
            }

            else
            {
              v106 = 0;
            }

            *&v135 = v106;
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v119, &v135);
            ++v88;
          }

          while (v88 != v89);
        }

        v107 = llvm::FunctionType::get();
        *(v117 + 8) = *(v117 + 8) & 0xFFFFBFC0 | 0x4007;
        *&v135 = "air.packedFragmentFunction";
        LOWORD(v137) = 259;
        v108 = llvm::Function::Create(v107, 0, &v135, v114);
        llvm::Function::getContext(v117);
        llvm::compat::getFnAttrs(&v120, v109);
        llvm::compat::getRetAttrs(&v120, v110);
        *(v108 + 14) = llvm::AttributeList::get();
        *&v135 = "Body";
        LOWORD(v137) = 259;
        llvm::BasicBlock::Create(v4, &v135, v108, 0, v111);
      }

      v13 = *(v124 + v11);
      if (v13 != -1)
      {
        v14 = *(v8 - 8 * *(v8 + 8) + 8 * v13);
        String = llvm::MDString::getString(*(v14 - 8 * *(v14 + 8) + 8));
        if (v16 > 23)
        {
          if (v16 == 24)
          {
            if (memcmp(String, "air.viewport_array_index", 0x18uLL))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v16 != 29 || memcmp(String, "air.render_target_array_index", 0x1DuLL))
            {
              goto LABEL_32;
            }

            dataTypeFromMetadata(2u, v14);
          }

          LODWORD(v116) = v116 + 1;
          v22 = HIDWORD(v116) + 1;
LABEL_31:
          HIDWORD(v116) = v22;
LABEL_32:
          v23 = v126;
          if (v126 >= v127)
          {
            v25 = __src;
            v26 = v126 - __src;
            v27 = (v126 - __src) >> 2;
            v28 = v27 + 1;
            if ((v27 + 1) >> 62)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v29 = v127 - __src;
            if ((v127 - __src) >> 1 > v28)
            {
              v28 = v29 >> 1;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v30 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v30);
            }

            *(4 * v27) = v11;
            v24 = 4 * v27 + 4;
            memcpy(0, v25, v26);
            v31 = __src;
            __src = 0;
            v126 = v24;
            v127 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v126 = v11;
            v24 = (v23 + 4);
          }

          v126 = v24;
          goto LABEL_45;
        }

        if (v16 == 15)
        {
          if (!memcmp(String, "air.point_coord", 0xFuLL))
          {
            LODWORD(v116) = v116 + 1;
            v22 = HIDWORD(v116) + 2;
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        if (v16 != 18)
        {
          goto LABEL_32;
        }

        v17 = *String == 0x676172662E726961 && String[1] == 0x706E695F746E656DLL;
        if (!v17 || *(String + 8) != 29813)
        {
          goto LABEL_32;
        }

        if (*(i + 8))
        {
          LODWORD(v135) = 0;
          *(&v135 + 1) = 0;
          *&v136 = 0;
          *(&v136 + 5) = 0;
          MTLFrameworkPass::extractVaryingInfoFromMetadata(&v135, v14, 2u, 0);
          LODWORD(v135) = v11;
          BYTE12(v136) |= 1u;
          v19 = v132;
          if (v132 >= v133)
          {
            v32 = __p;
            v33 = v132 - __p;
            v34 = (v132 - __p) >> 5;
            v35 = v34 + 1;
            if ((v34 + 1) >> 59)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v36 = v133 - __p;
            if ((v133 - __p) >> 4 > v35)
            {
              v35 = v36 >> 4;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFE0)
            {
              v35 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(&__p, v35);
            }

            v37 = (v132 - __p) >> 5;
            v38 = (32 * v34);
            v39 = v136;
            *v38 = v135;
            v38[1] = v39;
            v21 = (32 * v34 + 32);
            v40 = (32 * v34 - 32 * v37);
            memcpy(&v38[-2 * v37], v32, v33);
            v41 = __p;
            __p = v40;
            v132 = v21;
            v133 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            v20 = v136;
            *v132 = v135;
            *(v19 + 1) = v20;
            v21 = (v19 + 32);
          }

          v132 = v21;
          LODWORD(v116) = v116 + 1;
          HIDWORD(v116) += MTLDataTypeGetComponentCount(SDWORD2(v136));
        }
      }

LABEL_45:
      ++v11;
    }
  }

  *&v135 = this;
  LODWORD(v140[0]) = 0;
  LODWORD(Impl) = 0;
  LODWORD(v124) = 0;
  v112 = *(a3 + 24);
  if (!v112)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v112 + 48))(v112, &v135, v140, &Impl, &v124, &v128, &__p);
  if (__src)
  {
    v126 = __src;
    operator delete(__src);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (__p)
  {
    v132 = __p;
    operator delete(__p);
  }
}

void sub_213C26E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a59);
  if (a35)
  {
    operator delete(a35);
  }

  v62 = *(v60 - 200);
  if (v62 != a17)
  {
    free(v62);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v10[8] = *MEMORY[0x277D85DE8];
  llvm::ShuffleVectorInst::getShuffleMask();
  return llvm::IRBuilderBase::CreateShuffleVector(this, a2, a3, v10, 0, a5);
}

void sub_213C270AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v15 = llvm::User::operator new(0x68);
    v17 = 257;
    MEMORY[0x21604BB20](v15, a2, a3, a4, a5, v16, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v15, a6);
  }

  v12 = (*(**(a1 + 72) + 336))(*(a1 + 72), a2, a3, a4, a5);
  if (v12)
  {
    v13 = *(v12 + 16) >= 0x1Cu;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return v12;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<llvm::Argument *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C272D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<llvm::Constant *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_213C27350(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TextureCheckPass::~TextureCheckPass(TextureCheckPass *this)
{
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL TextureCheckPass::runOnModule(TextureCheckPass *this, llvm::Module *a2)
{
  v27[8] = *MEMORY[0x277D85DE8];
  if (*(*(*(this + 4) + 64) + 651))
  {
    return 0;
  }

  MDKindID = llvm::Module::getMDKindID();
  *(this + 7) = MDKindID;
  v25 = v27;
  v26 = 0x800000000;
  v22 = &v25;
  v23 = MDKindID;
  llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v22, *(a2 + 4), a2 + 24);
  llvm::Type::getInt32Ty(*a2, v6);
  v7 = v25;
  if (v26)
  {
    v8 = (v25 + 8 * v26);
    do
    {
      v9 = *v7;
      MTLBoundsCheck::SharedPassData::indexForInstruction(*(this + 4), *v7);
      v10 = llvm::ConstantInt::get();
      v11 = *(v9 - 4);
      if (!v11 || *(v11 + 16) || *(v11 + 24) != *(v9 + 9))
      {
        v11 = 0;
      }

      CheckedTextureFunction = TextureCheckPass::getCheckedTextureFunction(this, v11);
      NumArgOperands = llvm::compat::getNumArgOperands(v9);
      v20[0] = 0;
      llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v22, (NumArgOperands + 1), v20);
      v14 = 0;
      v15 = v9;
      while (v14 < llvm::compat::getNumArgOperands(v9))
      {
        *(v22 + v14++) = *(v15 - 4 * (*(v9 + 5) & 0x7FFFFFF));
        v15 = (v15 + 32);
      }

      *(v22 + v14) = v10;
      if (CheckedTextureFunction)
      {
        v16 = *(CheckedTextureFunction + 24);
      }

      else
      {
        v16 = 0;
      }

      v21 = 257;
      v17 = llvm::CallInst::Create(v16, CheckedTextureFunction, v22, v23, 0, 0, v20, 0);
      llvm::ReplaceInstWithInst(v9, v17, v18);
      if (v22 != &v24)
      {
        free(v22);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = v25;
    v2 = v26 != 0;
  }

  else
  {
    v2 = 0;
  }

  if (v7 != v27)
  {
    free(v7);
  }

  return v2;
}

void sub_213C2765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a25 != v25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TextureCheckPass::getCheckedTextureFunction(TextureCheckPass *this, llvm::Function *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 5);
  Name = llvm::Value::getName(a2);
  v22 = v5;
  v6 = *(a2 + 3);
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "mtl.checked.");
  v7 = std::string::append[abi:ne200100]<unsigned char const*,0>(&__p, (Name + 4), (Name + v5));
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&v7->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v8;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Function = llvm::Module::getFunction();
  if (!Function)
  {
    llvm::Type::getInt1Ty(*v4, v9);
    llvm::Type::getInt8Ty(*v4, v11);
    Int32Ty = llvm::Type::getInt32Ty(*v4, v12);
    llvm::Type::getInt64Ty(*v4, v13);
    v18 = 0;
    llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(&__p, (*(v6 + 16) + 8), (*(v6 + 16) + 8 * *(v6 + 12)));
    llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__p, &Int32Ty);
    v18 = llvm::FunctionType::get();
    if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
    {
      free(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = *(a2 + 14);
    v14 = getOrInsertFunction<std::string const&,llvm::FunctionType *&,llvm::AttributeList>(v4, &v20, &v18, &__p);
    llvm::Function::addFnAttr();
    *(v14 + 8) = *(v14 + 8) & 0xFFFFBFC0 | 0x4007;
    if ((*(*(*(this + 4) + 72) + 20) & 2) != 0 && ((llvm::Function::onlyReadsMemory(v14) & 1) != 0 || llvm::Function::hasFnAttribute()))
    {
      llvm::Function::removeFnAttr();
    }

    v16 = *v4;
    __p.__r_.__value_.__r.__words[0] = "checkBlock";
    v24 = 259;
    llvm::BasicBlock::Create(v16, &__p, v14, 0, v15);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C28850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a59);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 56;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 80);
      v8 = v6 + 72;
      if (v7 != v6 + 72)
      {
        do
        {
          v9 = *(v7 + 8);
          if (v7)
          {
            v10 = v7 - 24;
          }

          else
          {
            v10 = 0;
          }

          result = llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(v4, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return result;
}

uint64_t llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = a2 + 40;
  if (v2 != a2 + 40)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 8);
      v6 = (v2 - 24);
      if (v2)
      {
        v7 = v2 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 16) == 84)
      {
        result = TextureCheckPass::TextureOpVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(v4, v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t TextureCheckPass::TextureOpVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(uint64_t a1, llvm::Instruction *a2)
{
  result = *(a2 - 4);
  if (!result)
  {
    return result;
  }

  if (*(result + 16))
  {
    return result;
  }

  if (*(result + 24) != *(a2 + 9))
  {
    return result;
  }

  result = llvm::Value::getName(result);
  if (v5 < 0xE)
  {
    return result;
  }

  v6 = result;
  if (*result == 0x5F7465672E726961 && *(result + 6) == 0x5F68746469775F74)
  {
    goto LABEL_193;
  }

  if (v5 == 14)
  {
    if ((*result != 0x5F7465672E726961 || *(result + 6) != 0x5F68747065645F74) && (*result != 0x646165722E726961 || *(result + 6) != 0x68747065645F6461))
    {
      return result;
    }

LABEL_193:

    return TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(a1, v6, v5, a2);
  }

  if (*result == 0x5F7465672E726961 && *(result + 7) == 0x5F7468676965685FLL)
  {
    goto LABEL_193;
  }

  if (*result == 0x5F7465672E726961 && *(result + 6) == 0x5F68747065645F74)
  {
    goto LABEL_193;
  }

  if (v5 < 0x13)
  {
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    if (v5 < 0x10)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

  if (*result == 0x5F7465672E726961 && *(result + 8) == 0x69735F7961727261 && *(result + 11) == 0x5F657A69735F7961)
  {
    goto LABEL_193;
  }

  v13 = v5 < 0x17;
  if (v5 >= 0x17)
  {
    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F70696D5F6D756ELL && *(result + 15) == 0x5F736C6576656C5FLL)
    {
      goto LABEL_193;
    }

LABEL_49:
    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x706D61735F6D756ELL && *(result + 16) == 1601398124)
    {
      goto LABEL_193;
    }

    v12 = v5 < 0x1A;
    if (v5 >= 0x1A)
    {
      if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F6C656E6E616863 && *(result + 16) == 0x7079745F61746164 && *(result + 24) == 24421)
      {
        goto LABEL_193;
      }
    }

    else if (v5 < 0x16)
    {
      v12 = 1;
      goto LABEL_76;
    }

    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F6C656E6E616863 && *(result + 14) == 0x5F726564726F5F6CLL)
    {
      goto LABEL_193;
    }

    goto LABEL_76;
  }

  if (v5 != 19)
  {
    goto LABEL_49;
  }

  v12 = 1;
  v13 = 1;
LABEL_76:
  if (*result == 0x646165722E726961 && *(result + 8) == 0x657275747865745FLL)
  {
    goto LABEL_193;
  }

  v14 = 0;
  v15 = v5 < 0x13;
LABEL_81:
  if (*result == 0x646165722E726961 && *(result + 6) == 0x68747065645F6461)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x11)
  {
    v29 = *(result + 8);
    v30 = *(result + 16);
    v31 = *v6 == 0x746972772E726961 && v29 == 0x7275747865745F65;
    if (v31 && v30 == 101)
    {
      goto LABEL_193;
    }
  }

  result = 0x68747065645F6574;
  if (*v6 == 0x746972772E726961 && *(v6 + 7) == 0x68747065645F6574)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x12)
  {
    result = *(v6 + 16);
    v34 = *v6 == 0x706D61732E726961 && *(v6 + 8) == 0x75747865745F656CLL;
    if (v34 && result == 25970)
    {
      goto LABEL_193;
    }
  }

  if ((v14 & 1) == 0)
  {
    result = 0x68747065645F656CLL;
    if (*v6 == 0x706D61732E726961 && *(v6 + 8) == 0x68747065645F656CLL)
    {
      goto LABEL_193;
    }
  }

  if (!v15)
  {
    v37 = *v6 == 0x706D61732E726961 && *(v6 + 8) == 0x61706D6F635F656CLL;
    if (v37 && *(v6 + 11) == 0x5F657261706D6F63)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x12)
  {
    result = *(v6 + 16);
    v39 = *v6 == 0x687461672E726961 && *(v6 + 8) == 0x75747865745F7265;
    if (v39 && result == 25970)
    {
      goto LABEL_193;
    }
  }

  if ((v14 & 1) == 0 && *v6 == 0x687461672E726961 && *(v6 + 8) == 0x68747065645F7265)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x18)
  {
    result = 0x68747065645F6572;
    v42 = *v6 == 0x687461672E726961 && *(v6 + 8) == 0x61706D6F635F7265;
    if (v42 && *(v6 + 16) == 0x68747065645F6572)
    {
      goto LABEL_193;
    }
  }

  if (!v12)
  {
    v44 = *v6 == 0x636C61632E726961 && *(v6 + 8) == 0x6C635F6574616C75;
    v45 = v44 && *(v6 + 16) == 0x6F6C5F6465706D61;
    if (v45 && *(v6 + 24) == 24420)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x1C)
  {
    v47 = *v6 == 0x636C61632E726961 && *(v6 + 8) == 0x6E755F6574616C75;
    v48 = v47 && *(v6 + 16) == 0x5F6465706D616C63;
    if (v48 && *(v6 + 24) == 1600417644)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x11)
  {
    v50 = *v6 == 0x636E65662E726961 && *(v6 + 8) == 0x7275747865745F65;
    if (v50 && *(v6 + 16) == 101)
    {
      goto LABEL_193;
    }
  }

  if (*v6 == 0x636E65662E726961 && *(v6 + 7) == 0x68747065645F6563)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x19)
  {
    v53 = *v6 == 0x5F7465672E726961 && *(v6 + 8) == 0x695F657571696E75;
    v54 = v53 && *(v6 + 16) == 0x7275747865745F64;
    if (v54 && *(v6 + 24) == 101)
    {
      goto LABEL_193;
    }
  }

  if (!v13)
  {
    v56 = *v6 == 0x5F7465672E726961 && *(v6 + 8) == 0x695F657571696E75;
    if (v56 && *(v6 + 15) == 0x68747065645F6469)
    {
      goto LABEL_193;
    }
  }

  return result;
}

uint64_t TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(uint64_t a1, int a2, int a3, llvm::Instruction *this)
{
  if (!*(a1 + 8) || !*(this + 6) && (*(this + 23) & 0x20) == 0 || (result = llvm::Instruction::getMetadataImpl(this)) == 0)
  {
    v7 = *a1;
    v8 = this;
    return llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v7, &v8);
  }

  return result;
}

std::string *std::string::append[abi:ne200100]<unsigned char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  v4 = a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > v4 || (&v10->__r_.__value_.__l.__data_ + size + 1) <= v4)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    while (v4 != a3)
    {
      v16 = v4->__r_.__value_.__s.__data_[0];
      v4 = (v4 + 1);
      *v15++ = v16;
    }

    *v15 = 0;
    v17 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, v4, a3, v7);
    if ((v20 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v13 = v20;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_213C29354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getOrInsertFunction<std::string const&,llvm::FunctionType *&,llvm::AttributeList>(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  llvm::Module::getOrInsertFunction();
  result = v4;
  if (*(v4 + 16) == 5)
  {
    return *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Function::onlyReadsMemory(llvm::Function *this)
{
  if (llvm::Function::hasFnAttribute())
  {
    return 1;
  }

  return llvm::Function::hasFnAttribute();
}

uint64_t llvm::IRBuilderBase::CreateOr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 32))(*(this + 9));
  if (!result)
  {
    v7 = llvm::BinaryOperator::Create();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
  }

  return result;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

uint64_t llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, a3);
  return a1;
}

void sub_213C295A4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLExcludeIntrinsicsPass::~MTLExcludeIntrinsicsPass(MTLExcludeIntrinsicsPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLExcludeIntrinsicsPass::runOnModule(MTLExcludeIntrinsicsPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  v4 = *(a2 + 4);
  if (v4 == (a2 + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v4)
      {
        v6 = (v4 - 7);
      }

      else
      {
        v6 = 0;
      }

      if (llvm::Function::hasFnAttribute())
      {
        v5 = 1;
        llvm::MDTuple::getImpl();
        llvm::Value::setMetadata();
        llvm::MDTuple::getImpl();
        llvm::Value::setMetadata();
        MTLBoundsCheck::SharedPassData::addMetadataToAllCallees(*(this + 8), v6, "no-gv-emulation", 15);
        MTLBoundsCheck::SharedPassData::addMetadataToAllCallees(*(this + 8), v6, "no-asan", 7);
      }

      if ((*(v6 + 34) & 0x40) != 0)
      {
        SectionImpl = llvm::GlobalObject::getSectionImpl(v6);
        if (v8 == 22 && *SectionImpl == 0x657478652E726961 && SectionImpl[1] == 0x645F796C6C616E72 && *(SectionImpl + 14) == 0x64656E696665645FLL)
        {
          v5 = 1;
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
        }
      }

      v4 = v4[1];
    }

    while (v4 != (a2 + 24));
  }

  return v5 & 1;
}

BOOL isPatchControlPointInputUnused(uint64_t a1)
{
  v1 = *(a1 - 8 * *(a1 + 8) + 8 * (*(a1 + 8) - 1));
  if (*v1)
  {
    return 0;
  }

  String = llvm::MDString::getString(v1);
  if (v3 != 14)
  {
    return 0;
  }

  return *String == 0x5F6772612E726961 && *(String + 6) == 0x646573756E755F67;
}

char *MTLCompilerErrorObject::setErrorMessage(MTLCompilerErrorObject *this, const char *__s1)
{
  result = strdup(__s1);
  *this = result;
  return result;
}

uint64_t parseControlPointInputMetadata(uint64_t result, uint64_t a2)
{
  *a2 = *a2 & 0xFFFFB005 | 0x407A;
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      result = *(v4 - 8 * *(v4 + 8) + 8 * i);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v6 > 16)
        {
          if (v6 == 17)
          {
            result = memcmp(result, "air.arg_type_name", 0x11uLL);
            if (!result)
            {
              result = llvm::MDString::getString(*(v4 - 8 * *(v4 + 8) + 8 * ++i));
              *(a2 + 32) = result;
              *(a2 + 40) = v15;
            }
          }

          else if (v6 == 18)
          {
            v7 = *result == 0x61636F6C2E726961 && *(result + 8) == 0x646E695F6E6F6974;
            if (v7 && *(result + 16) == 30821)
            {
              v9 = v4 - 8 * *(v4 + 8);
              v10 = *(*(v9 + 8 * (i + 1)) + 128);
              v11 = (v10 + 24);
              if (*(v10 + 32) >= 0x41u)
              {
                v11 = *v11;
              }

              *(a2 + 4) = *v11;
              i += 2;
              v12 = *(*(v9 + 8 * i) + 128);
              v13 = (v12 + 24);
              if (*(v12 + 32) >= 0x41u)
              {
                v13 = *v13;
              }

              *(a2 + 8) = *v13;
            }
          }
        }

        else if (v6 == 12)
        {
          result = memcmp(result, "air.arg_name", 0xCuLL);
          if (!result)
          {
            result = llvm::MDString::getString(*(v4 - 8 * *(v4 + 8) + 8 * ++i));
            *(a2 + 16) = result;
            *(a2 + 24) = v14;
          }
        }

        else if (v6 == 14)
        {
          result = memcmp(result, "air.arg_unused", 0xEuLL);
          if (!result)
          {
            *a2 &= ~8u;
          }
        }
      }
    }
  }

  return result;
}

void parseMeshStruct(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&buildInMeshTopologySetOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v20;
    v19[0] = __p;
    std::__call_once(&buildInMeshTopologySetOnce, v19, std::__call_once_proxy[abi:ne200100]<std::tuple<parseMeshStruct(MTLArgumentData &,llvm::MDNode *)::$_0 &&>>);
  }

  llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  v4 = a2 - 8 * *(a2 + 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  addMeshStructMembers(v5, *(a1 + 168));
  addMeshStructMembers(v6, *(a1 + 176));
  v7 = a2 - 8 * *(a2 + 8);
  v8 = *(*(v7 + 24) + 128);
  if (*(v8 + 16) == 16)
  {
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v10 = *v9;
  }

  else
  {
    v10 = -1;
  }

  *(a1 + 60) = v10;
  v11 = *(*(v7 + 32) + 128);
  if (*(v11 + 16) == 16)
  {
    v12 = (v11 + 24);
    if (*(v11 + 32) >= 0x41u)
    {
      v12 = *v12;
    }

    v13 = *v12;
  }

  else
  {
    v13 = -1;
  }

  *(a1 + 64) = v13;
  v19[0] = llvm::MDString::getString(*(v7 + 40));
  v19[1] = v14;
  v15 = buildInMeshTopologySet;
  llvm::StringRef::str(v19, __p);
  v16 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v15, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 68) = *(v16 + 56);
}

void sub_213C29D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dataTypeFromMetadata(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 - a1;
  if (v2 <= a1)
  {
    return 0;
  }

  v5 = a1 + 1;
  for (i = a2 + 8 * a1; ; i += 8)
  {
    v7 = *(i - 8 * *(a2 + 8));
    if (!*v7)
    {
      String = llvm::MDString::getString(v7);
      if (v9 == 17)
      {
        v10 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
        if (v10 && *(String + 16) == 101)
        {
          break;
        }
      }
    }

    ++v5;
    if (!--v3)
    {
      return 0;
    }
  }

  v13 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v5));
  v14 = strlen(v13);

  return dataTypeFromString(v13, v14);
}

uint64_t MTLDataTypeGetSignedType(uint64_t result)
{
  v1 = result - 33;
  if (result - 33) <= 0x17 && ((0xFF0F0Fu >> v1))
  {
    return dword_213C7D378[v1];
  }

  return result;
}

_BYTE *serializeFragmentLinkingInfoInternal(uint64_t a1, char a2, char a3, char a4, char a5, void *a6, unint64_t *a7)
{
  v12 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v13 = a6[1] - *a6;
  if ((v13 & 0x1FFFFFFFE0) != 0)
  {
    v14 = 0;
    v15 = (v13 >> 5);
    v16 = 1024;
    v17 = 4;
    do
    {
      v18 = *a6 + 32 * v14;
      v19 = *(v18 + 28);
      if (v19)
      {
        if (v17 == -1)
        {
          goto LABEL_32;
        }

        v20 = *(v18 + 24);
        v21 = v17 + 1;
        if (v16 <= v17)
        {
          if (!v16)
          {
            v16 = 128;
          }

          while (v16 <= v17)
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v17 + 1;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_32;
          }
        }

        v12[v17] = v20;
        if (v17 == -2)
        {
          goto LABEL_32;
        }

        v22 = v17 + 2;
        if (v16 <= v21)
        {
          do
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v17 + 2;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          while (v16 <= v21);
          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_32;
          }
        }

        v12[v21] = (2 * v19) & 0x70 | (v19 >> 1) & 3;
        v23 = *(v18 + 16);
        v24 = v23 + 1;
        if (v23 + 1 > -3 - v17)
        {
          goto LABEL_32;
        }

        v25 = *(v18 + 8);
        v17 = v24 + v22;
        if (v16 < v24 + v22)
        {
          do
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v24 + v22;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          while (v16 < v17);
          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
LABEL_32:
            abort();
          }
        }

        memcpy(&v12[v22], v25, v23);
        v12[v22 + v23] = 0;
      }

      ++v14;
    }

    while (v14 != v15);
  }

  else
  {
    v17 = 4;
  }

  *a7 = v17;
  return v12;
}

_BYTE *serializeFragmentPackingInfoInternal(uint64_t a1, char a2, char a3, char a4, void *a5, void *a6, unint64_t *a7)
{
  v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v12 = -1431655765 * ((a5[1] - *a5) >> 3);
  v11[3] = v12;
  v32 = v12;
  v33 = a5;
  if (v12)
  {
    v13 = 0;
    v14 = 1024;
    v15 = 4;
    while (1)
    {
      if (v15 == -1)
      {
        goto LABEL_47;
      }

      v16 = *v33 + 24 * v13;
      v17 = *v16;
      v18 = v15 + 1;
      if (v14 <= v15)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 1;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v15);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          goto LABEL_47;
        }
      }

      v11[v15] = v17;
      if (v15 == -2)
      {
        goto LABEL_47;
      }

      v19 = *(v16 + 2);
      v20 = *(v16 + 4);
      v15 += 2;
      if (v14 <= v18)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v18);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          goto LABEL_47;
        }
      }

      v34 = v13;
      v11[v18] = v19 | (16 * v20);
      if (*(v16 + 4))
      {
        break;
      }

LABEL_43:
      v13 = v34 + 1;
      if (v34 + 1 == v32)
      {
        goto LABEL_46;
      }
    }

    v21 = 0;
    while (v15 != -1)
    {
      v22 = *a6 + 32 * *(v16 + 6 + 2 * v21);
      v23 = *(v22 + 28);
      v24 = *(v22 + 24);
      v25 = v15 + 1;
      if (v14 <= v15)
      {
        if (!v14)
        {
          v14 = 128;
        }

        while (v14 <= v15)
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 1;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      v11[v15] = v24;
      if (v15 == -2)
      {
        break;
      }

      v26 = v15 + 2;
      if (v14 <= v25)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 2;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v25);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      v11[v25] = (2 * v23) & 0x70 | (v23 >> 1) & 3;
      v27 = *(v22 + 16);
      v28 = v27 + 1;
      if (v27 + 1 > -3 - v15)
      {
        break;
      }

      v29 = *(v22 + 8);
      v15 = v28 + v26;
      if (v14 < v28 + v26)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v28 + v26;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 < v15);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      memcpy(&v11[v26], v29, v27);
      v11[v26 + v27] = 0;
      if (++v21 >= *(v16 + 4))
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    abort();
  }

  v15 = 4;
LABEL_46:
  *a7 = v15;
  return v11;
}

uint64_t llvm::DISubprogram::getImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a4)
  {
    v23 = llvm::MDString::get();
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    if (a21)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v23 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = llvm::MDString::get();
  if (a21)
  {
LABEL_4:
    v25 = llvm::MDString::get();
    goto LABEL_8;
  }

LABEL_7:
  v25 = 0;
LABEL_8:

  return MEMORY[0x2821F2010](a1, a2, v23, v24, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v25);
}

void addMeshStructMembers(uint64_t a1, uint64_t *a2)
{
  v20 = *(a1 + 8);
  if (v20)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(a1 - 8 * *(a1 + 8) + 8 * v2);
      v4 = *(v3 + 8);
      if (v4)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v9 = &unk_213C7E907;
      v8 = &unk_213C7E907;
LABEL_27:
      v29 = 0;
      v26 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      memset(v35, 0, sizeof(v35));
      v36 = 0;
      v24 = v8;
      v25 = v7;
      *&v23 = v9;
      *(&v23 + 1) = v6;
      v27 = 0;
      v34 = 0;
      v33 = xmmword_213C7D190;
      v18 = strlen(v8);
      HIDWORD(v26) = dataTypeFromString(v8, v18);
      v19 = strlen(v8);
      *(&v33 + 1) = pixelFormatAndALUTypeFromString(v8, v19);
      std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](a2, &v23);
      v37 = v35;
      std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v37);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (++v2 == v20)
      {
        return;
      }
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = &unk_213C7E907;
    v9 = &unk_213C7E907;
    while (1)
    {
      v10 = *(v3 - 8 * *(v3 + 8) + 8 * v5);
      if (!*v10)
      {
        String = llvm::MDString::getString(v10);
        if (v12 == 12)
        {
          if (*String == 0x5F6772612E726961 && *(String + 8) == 1701667182)
          {
            ++v5;
            v9 = llvm::MDString::getString(*(v3 - 8 * *(v3 + 8) + 8 * v5));
            v6 = v17;
            goto LABEL_7;
          }
        }

        else if (v12 == 17)
        {
          v13 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
          if (v13 && *(String + 16) == 101)
          {
            ++v5;
            v8 = llvm::MDString::getString(*(v3 - 8 * *(v3 + 8) + 8 * v5));
            v7 = v15;
            goto LABEL_7;
          }
        }
      }

      ++v5;
LABEL_7:
      if (v5 >= v4)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_213C2A84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

void sub_213C2A9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLStructMemberInfo::~MTLStructMemberInfo(MTLStructMemberInfo *this)
{
  v3 = (this + 104);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 176;
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

__n128 std::__function::__func<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0,std::allocator<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0>,void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_282634328;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__120__shared_ptr_emplaceI15MTLArgumentDataNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_282634370;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void std::__shared_ptr_emplace<MTLArgumentData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_282634370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21604C990);
}

void std::__shared_ptr_emplace<MTLArgumentData>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 224);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void OGLCodeGenService::OGLCodeGenService(OGLCodeGenService *this)
{
  v2 = dlopen("/System/Library/Frameworks/OpenGLES.framework/libGLVMPlugin.dylib", 5);
  *this = v2;
  if (v2 && (v3 = dlsym(v2, "oglCodeGenServiceInitialize")) != 0 && (v4 = v3, v5 = dlsym(*this, "oglCodeGenServiceTerminate"), (*(this + 1) = v5) != 0) && (v6 = dlsym(*this, "oglCodeGenServiceGenerateIR"), (*(this + 2) = v6) != 0))
  {
    *(this + 3) = dlsym(*this, "oglCodeGenServiceGenerateIRWithPluginData");
    *(this + 4) = dlsym(*this, "oglCodeGenServiceGenerateIRWithPluginDataAndPluginReturnData");
    v4();
  }

  else
  {
    OGLCodeGenService::OGLCodeGenService();
  }
}

{
  OGLCodeGenService::OGLCodeGenService(this);
}

void OGLCodeGenService::~OGLCodeGenService(void (**this)(void))
{
  this[1]();
  dlclose(*this);
  this[4] = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t OGLCodeGenService::GenerateIR(OGLCodeGenService *this, uint64_t a2, llvm::LLVMContext *a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, void **a8, unint64_t *a9)
{
  if (this)
  {
    v12 = &OGLCodeGenService::oglCodeGenServiceGLES;
  }

  else
  {
    v12 = &OGLCodeGenService::oglCodeGenService;
  }

  v13 = *v12;
  if (!*v12)
  {
    operator new();
  }

  if (a5 && a7 && (this & 1) == 0)
  {
    v14 = v13[4];

    return v14(a2, a3, a4, a5, a6, a7, a8);
  }

  else if (!a5 || (this & 1) != 0)
  {
    v17 = v13[2];

    return v17(a2, a3, a4);
  }

  else
  {
    v16 = v13[3];

    return v16(a2, a3, a4, a5, a6);
  }
}

uint64_t MTLRuntimeStackTrace::MTLRuntimeStackTrace(uint64_t a1, uint64_t a2)
{
  v3 = MetalModulePass::MetalModulePass(a1, &MTLRuntimeStackTrace::ID, a2);
  *v3 = &unk_2826343A8;
  v3[25] = 0;
  v3[24] = 0;
  v4 = v3 + 24;
  v3[23] = v3 + 24;
  v5 = v3 + 23;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy((v3 + 23), 0);
  *v5 = v4;
  *(a1 + 200) = 0;
  *v4 = 0;
  return a1;
}

void MTLRuntimeStackTrace::~MTLRuntimeStackTrace(MTLRuntimeStackTrace *this)
{
  *this = &unk_2826343A8;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v2, v3, v4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_2826343A8;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v2, v3, v4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v5, v6, v7);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLRuntimeStackTrace::runOnModule(llvm::Type **this, llvm::Module *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy((this + 23), this[24]);
  this[24] = 0;
  this[25] = 0;
  this[23] = (this + 24);
  v4 = this[14];
  v24[0] = this[10];
  v24[1] = v4;
  v5 = llvm::StructType::create();
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (EntryFunction)
  {
    v7 = *(EntryFunction + 80);
    v8 = v7 ? (v7 - 24) : 0;
    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v24, v8, 0, 0, 0);
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v8);
    llvm::IRBuilderBase::SetInsertPoint(v24, v8, FirstInsertionPt);
    Int8PtrTy = llvm::Type::getInt8PtrTy(this[5], 0);
    v12 = llvm::ConstantPointerNull::get(Int8PtrTy, v11);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(this[8]);
    llvm::IRBuilderBase::CreateAlignedStore(v24, v12, inserted, 0, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v27);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v26);
    if (v24[0] != &v25)
    {
      free(v24[0]);
    }
  }

  v14 = a2 + 24;
  for (i = *(a2 + 4); i != v14; i = *(i + 8))
  {
    if (i)
    {
      v16 = (i - 56);
    }

    else
    {
      v16 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v16) & 1) == 0 && !llvm::Value::getMetadata())
    {
      for (j = *(v16 + 10); j != (v16 + 72); j = j[1])
      {
        v18 = j - 3;
        if (!j)
        {
          v18 = 0;
        }

        v19 = v18 + 5;
        for (k = v18[6]; k != v19; k = k[1])
        {
          if (k)
          {
            v21 = (k - 3);
          }

          else
          {
            v21 = 0;
          }

          if (k && *(v21 + 16) == 84 && MTLRuntimeStackTrace::checkIfValidForStackTrace(this, v21))
          {
            v22 = MTLRuntimeStackTrace::getOrInsertFrameAlloca(this, v16, v5);
            MTLRuntimeStackTrace::addCallStackTrace(this, v16, v21, v5, v22);
          }
        }
      }
    }
  }

  return 1;
}

BOOL MTLRuntimeStackTrace::checkIfValidForStackTrace(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 32);
  result = 1;
  if (v2 && !*(v2 + 16) && *(v2 + 24) == *(a2 + 72))
  {
    Name = llvm::Value::getName(*(a2 - 32));
    if (v5 >= 4 && *Name == 779250017)
    {
      v11 = llvm::Value::getName(v2);
      if (v12 < 0xD)
      {
        return 0;
      }

      if (*v11 != 0x65746E692E726961 || *(v11 + 5) != 0x746365737265746ELL)
      {
        return 0;
      }
    }

    if (llvm::Value::getMetadata())
    {
      return 0;
    }

    v6 = llvm::Value::getName(v2);
    if (v7 >= 4 && *v6 == 778859629)
    {
      return 0;
    }

    v8 = llvm::Value::getName(v2);
    if (v9 >= 5 && *v8 == 1836477548 && *(v8 + 4) == 46)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MTLRuntimeStackTrace::getOrInsertFrameAlloca(MTLRuntimeStackTrace *this, llvm::Function *a2, llvm::Type *a3)
{
  v18[7] = *MEMORY[0x277D85DE8];
  v14 = a2;
  for (i = *(this + 24); i; i = *i)
  {
    v6 = i[4];
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        v15[0] = &v14;
        return std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(this + 184, &v14, &std::piecewise_construct, v15)[5];
      }

      ++i;
    }
  }

  v7 = *(a2 + 10);
  if (v7)
  {
    v8 = (v7 - 24);
  }

  else
  {
    v8 = 0;
  }

  FirstNonPHIOrDbg = llvm::BasicBlock::getFirstNonPHIOrDbg(v8);
  v12[0] = v8;
  MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(v15, v12);
  llvm::IRBuilderBase::SetInsertPoint(v15, FirstNonPHIOrDbg);
  v13 = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(v15, a3, 0, v12);
  v12[0] = &v14;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(this + 184, &v14, &std::piecewise_construct, v12)[5] = Alloca;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v18);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v17);
  if (v15[0] != &v16)
  {
    free(v15[0]);
  }

  return Alloca;
}

void sub_213C2B684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLRuntimeStackTrace::addCallStackTrace(MTLBoundsCheck::SharedPassData **a1, int a2, llvm::Instruction *a3, llvm::Type *a4, llvm::Value *a5)
{
  v27[7] = *MEMORY[0x277D85DE8];
  if (MTLBoundsCheck::SharedPassData::indexForInstruction(a1[8], a3) != -1)
  {
    v23 = *(a3 + 5);
    MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(v24, &v23);
    llvm::IRBuilderBase::SetInsertPoint(v24, a3);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(a1[8]);
    v22 = 257;
    ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v24, a4, a5, 0, 1u, v21);
    v11 = *(inserted + 3);
    v22 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v24, v11, inserted, 0, 0, v21);
    llvm::IRBuilderBase::CreateAlignedStore(v24, AlignedLoad, ConstInBoundsGEP2_32, 0, 0);
    v22 = 257;
    v13 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v24, a4, a5, 0, 0, v21);
    v14 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore(v24, v14, v13, 0, 0);
    v15 = a1[14];
    v22 = 257;
    PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(v24, a5, v15, v21, v16);
    llvm::IRBuilderBase::CreateAlignedStore(v24, PointerBitCastOrAddrSpaceCast, inserted, 0, 0);
    v18 = *(a3 + 4);
    if (v18)
    {
      v19 = v18 == *(a3 + 5) + 40;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = (v18 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint(v24, v20);
    llvm::IRBuilderBase::CreateAlignedStore(v24, AlignedLoad, inserted, 0, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v27);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v26);
    if (v24[0] != &v25)
    {
      free(v24[0]);
    }
  }
}

void sub_213C2B8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

void MTLMemoryCheckPass::~MTLMemoryCheckPass(MTLMemoryCheckPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_282633520;
  v4 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v4, v5, v6, v7);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

uint64_t MTLMemoryCheckPass::runOnModule(MTLMemoryCheckPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  for (i = *(a2 + 4); i != (a2 + 24); i = i[1])
  {
    if (i)
    {
      v5 = (i - 7);
    }

    else
    {
      v5 = 0;
    }

    if ((*(v5 + 8) & 0xF) != 1 && (llvm::GlobalValue::isDeclaration(v5) & 1) == 0 && !llvm::Value::getMetadata())
    {
      MTLMemoryCheckPass::runOnFunction(this, v5);
    }
  }

  return 1;
}

uint64_t MTLMemoryCheckPass::runOnFunction(MTLMemoryCheckPass *this, llvm::Function *a2)
{
  v30[12] = *MEMORY[0x277D85DE8];
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v6 = *(v5 + 6);
      v7 = (v6 - 24);
      if (v6)
      {
        v8 = v6 - 24;
      }

      else
      {
        v8 = 0;
      }

      v27 = v30;
      v29 = 4;
      if (*(v8 + 16) - 29 >= 0xB)
      {
        do
        {
          v28 = 0;
          MTLBoundsCheck::gatherMemoryOperands(v7, &v27);
          if (!v28)
          {
            goto LABEL_30;
          }

          v9 = v27;
          v10 = 24 * v28;
          while (1)
          {
            v11 = *v9;
            v12 = **v9;
            v13 = *(v12 + 8);
            if ((v13 & 0xFE) == 0x12)
            {
              v13 = *(**(v12 + 16) + 8);
            }

            if (*(v11 + 16) == 3 && (v11[10] & 2) != 0)
            {
              llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(this + 8) + 88, v9, v25);
            }

            if ((v13 >> 8) - 1 <= 1 && *(v9 + 4) != 0)
            {
              break;
            }

            v9 += 3;
            v10 -= 24;
            if (!v10)
            {
              goto LABEL_30;
            }
          }

          if (!v28)
          {
            goto LABEL_30;
          }

          v15 = v27;
          v16 = 24 * v28;
          while (1)
          {
            v17 = *(this + 8);
            v25[0] = *v15;
            v26 = 0;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>((v17 + 88), v25, &v26) & 1) == 0)
            {
              break;
            }

            v15 += 3;
            v16 -= 24;
            if (!v16)
            {
              goto LABEL_30;
            }
          }

          if (v28 && (v18 = MTLMemoryCheckPass::createCheckedInstructionCall(this, v7), (v20 = v18) != 0))
          {
            *(v18 + 9) &= 0xFFFCu;
            llvm::ReplaceInstWithInst(v7, v18, v19);
          }

          else
          {
LABEL_30:
            v20 = v7;
          }

          v21 = *(v20 + 4);
          v7 = (v21 - 24);
          if (v21)
          {
            v22 = v21 == *(v20 + 5) + 40;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = v21 - 24;
          }
        }

        while (*(v23 + 16) - 29 > 0xA);
        if (v27 != v30)
        {
          free(v27);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return 1;
}

void sub_213C2BE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMemoryCheckPass::createCheckedInstructionCall(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl())
  {
    return 0;
  }

  v5 = *(a2 + 16);
  switch(v5)
  {
    case 'T':

      return MTLMemoryCheckPass::createCheckedFunction(a1, a2);
    case '=':

      return MTLMemoryCheckPass::createCheckedStoreCall(a1, a2);
    case '<':

      return MTLMemoryCheckPass::createCheckedLoadCall(a1, a2);
    default:
      return 0;
  }
}

uint64_t MTLMemoryCheckPass::createCheckedLoadCall(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = **(a2 - 32);
  v4 = *(a2 + 18);
  v5 = *(a1 + 48);
  v11[0] = "mtl.checked_load.";
  v11[2] = (1 << (v4 >> 1));
  v12 = 2307;
  v16[0] = v11;
  v16[2] = ".";
  v17 = 770;
  v14[0] = v16;
  v14[2] = (v4 & 1);
  v15 = 2306;
  v6 = getMangledFunction<llvm::Type *&,llvm::Type *&>(v5, v14, *a2, &v13, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v6))
  {
    *(v6 + 32) = *(v6 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    llvm::Function::addFnAttr();
    v7 = *(a1 + 40);
    v14[0] = "entry";
    v15 = 259;
    llvm::BasicBlock::Create(v7, v14, v6, 0, v8);
  }

  if (v6)
  {
    v9 = *(v6 + 24);
  }

  else
  {
    v9 = 0;
  }

  v16[0] = *(a2 - 32);
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v16[1] = llvm::ConstantInt::get();
  v15 = 257;
  return llvm::CallInst::Create(v9, v6, v16, 2, 0, 0, v14, 0);
}

void sub_213C2C5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createCheckedStoreCall(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = **(a2 - 32);
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v5 = *v4;
  v6 = *(a2 + 18);
  v16 = 1 << (v6 >> 1);
  v17 = v5;
  v7 = *(a1 + 48);
  v14[0] = "mtl.checked_store.";
  v14[2] = &v16;
  v15 = 3075;
  v21[0] = v14;
  v22 = ".";
  v23 = 770;
  v19[0] = v21;
  v19[2] = (v6 & 1);
  v20 = 2306;
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(v7, v19, *a2, &v18, &v17, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v9 = *(a1 + 40);
    v19[0] = "entry";
    v20 = 259;
    llvm::BasicBlock::Create(v9, v19, v8, 0, v10);
  }

  if (v8)
  {
    v11 = *(v8 + 24);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 - 64);
  v21[0] = *(a2 - 32);
  v21[1] = v12;
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v22 = llvm::ConstantInt::get();
  v20 = 257;
  return llvm::CallInst::Create(v11, v8, v21, 3, 0, 0, v19, 0);
}

void sub_213C2CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createCheckedFunction(uint64_t a1, uint64_t a2)
{
  v60[12] = *MEMORY[0x277D85DE8];
  v2 = *(a2 - 32);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 72);
  if (*(v2 + 24) != v4)
  {
    return 0;
  }

  if (!llvm::GlobalValue::isDeclaration(*(a2 - 32)))
  {
    return 0;
  }

  if (llvm::Value::getMetadata())
  {
    return 0;
  }

  Name = llvm::Value::getName(v2);
  v43 = Name;
  v44 = v7;
  if (v7 < 4)
  {
    return 0;
  }

  if (*Name != 779250017)
  {
    if (v7 == 4)
    {
      return 0;
    }

    if (*Name != 1836477548 || Name[4] != 46)
    {
      return 0;
    }
  }

  v58 = v60;
  v59 = 0x400000000;
  MTLBoundsCheck::gatherMemoryArguments(v2, &v58);
  v11 = v58;
  if (v59)
  {
    v12 = 0;
    while (1)
    {
      v13 = *v58[v12];
      v14 = *(v13 + 8);
      if ((v14 & 0xFE) == 0x12)
      {
        v14 = *(**(v13 + 16) + 8);
      }

      if ((v14 >> 8) - 1 < 2)
      {
        break;
      }

      v12 += 3;
      if (3 * v59 == v12)
      {
        goto LABEL_21;
      }
    }

    v15 = *(v4 + 12);
    v45[0] = 0;
    llvm::SmallVector<unsigned long,6u>::SmallVector(&v56, (v15 + 62) >> 6, v45);
    v16 = v15 - 1;
    v57[12] = v15 - 1;
    v53 = v55;
    v54 = 0x400000000;
    v50 = v52;
    v51 = xmmword_213C7D3E0;
    llvm::raw_svector_ostream::raw_svector_ostream(v41, &v50);
    llvm::raw_ostream::operator<<(v41, "mtl.checked.", 0xCuLL);
    llvm::raw_ostream::operator<<(v41, v43, v44);
    if (v44 < 0xB)
    {
      goto LABEL_59;
    }

    if ((*v43 != 0x6D656D2E6D766C6CLL || *(v43 + 3) != 0x7970636D656D2E6DLL) && (*v43 != 0x6D656D2E6D766C6CLL || *(v43 + 3) != 0x7465736D656D2E6DLL))
    {
      if (v44 == 11)
      {
LABEL_59:
        Function = llvm::Module::getFunction();
        if (!Function)
        {
          llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::init(v49, 64);
          v49[24] = 0;
          v49[48] = 0;
          v47[0] = &v48;
          v47[1] = 0x400000000;
          v31 = *(v4 + 12);
          if (v31 != 1)
          {
            v32 = 0;
            do
            {
              if (((*(v56 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                v45[0] = *(*(v4 + 16) + 8 * (v32 + 1));
                llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v47, v45);
                v45[0] = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * v32);
                llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v53, v45);
                v31 = *(v4 + 12);
              }

              ++v32;
            }

            while (v32 < (v31 - 1));
          }

          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v47, (a1 + 80));
          MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
          v45[0] = llvm::ConstantInt::get();
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v53, v45);
          v33 = llvm::FunctionType::get();
          v35 = *v42;
          v34 = v42[1];
          v46 = 261;
          v45[0] = v35;
          v45[1] = v34;
          v36 = llvm::Function::Create(v33, 7uLL, v45, *(a1 + 48));
          *(v36 + 9) = *(v36 + 9) & 0xC00F | *(v2 + 18) & 0x3FF0;
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          llvm::Function::addFnAttr();
          llvm::Function::addFnAttr();
          v37 = *(a1 + 40);
          v45[0] = "entry";
          v46 = 259;
          llvm::BasicBlock::Create(v37, v45, v36, 0, v38);
        }

        v28 = *(v4 + 12);
        if (v28 != 1)
        {
          v29 = 0;
          v30 = a2;
          do
          {
            if (((*(v56 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              v45[0] = *(v30 - 32 * (*(a2 + 20) & 0x7FFFFFF));
              llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v53, v45);
              v28 = *(v4 + 12);
            }

            ++v29;
            v30 += 32;
          }

          while (v29 < (v28 - 1));
        }

        MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
        v45[0] = llvm::ConstantInt::get();
        llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v53, v45);
        llvm::raw_ostream::~raw_ostream(v41);
        if (v50 != v52)
        {
          free(v50);
        }

        v39 = *(Function + 24);
        v46 = 257;
        v9 = llvm::CallInst::Create(v39, Function, v53, v54, v45, 0);
        v40 = *(v9 + 18) & 0xFFFC | *(a2 + 18) & 3;
        *(v9 + 18) = v40;
        *(v9 + 18) = v40 & 0xF003 | *(a2 + 18) & 0xFFC;
        if (v53 != v55)
        {
          free(v53);
        }

        if (v56 != v57)
        {
          free(v56);
        }

        v11 = v58;
        goto LABEL_79;
      }

      if (*v43 != 0x6D656D2E6D766C6CLL || *(v43 + 2) != 1702260589)
      {
        if (v44 >= 0x11)
        {
          v20 = *v43 == 0x6D6F74612E726961 && *(v43 + 1) == 0x61626F6C672E6369;
          if (v20 && v43[16] == 108)
          {
            v22 = llvm::StringRef::find() == -1 ? -3 : -4;
            v23 = v22 + v16;
            if (__CFADD__(v22, v16))
            {
              v24 = a2 + 32 * v23;
              do
              {
                *(v56 + (v23 >> 6)) |= 1 << v23;
                llvm::raw_ostream::operator<<(v41, ".", 1uLL);
                llvm::raw_ostream::operator<<();
                LODWORD(v23) = v23 + 1;
                v24 += 32;
              }

              while (!__CFADD__(v22++, 1));
            }
          }
        }

        goto LABEL_59;
      }
    }

    if (v16 >= 4)
    {
      v26 = 3;
      if (v15 == 6)
      {
        v26 = 4;
      }

      *v56 |= 1 << v26;
      llvm::raw_ostream::operator<<(v41, ".", 1uLL);
      llvm::raw_ostream::operator<<();
      if (v15 == 6)
      {
        *v56 |= 8uLL;
        llvm::raw_ostream::operator<<(v41, ".", 1uLL);
        llvm::raw_ostream::operator<<();
      }
    }

    goto LABEL_59;
  }

LABEL_21:
  v9 = 0;
LABEL_79:
  if (v11 != v60)
  {
    free(v11);
  }

  return v9;
}

void sub_213C2DB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  llvm::raw_ostream::~raw_ostream(&a35);
  if (STACK[0x280] != a17)
  {
    free(STACK[0x280]);
  }

  if (STACK[0x2D8] != a18)
  {
    free(STACK[0x2D8]);
  }

  if (STACK[0x308] != &STACK[0x318])
  {
    free(STACK[0x308]);
  }

  v37 = *(v35 - 224);
  if (v37 != a19)
  {
    free(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createQueryMemoryUsageCall(void *a1, MTLBoundsCheck *a2, unsigned int a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3 - 1;
  if (a3 - 1 > 2)
  {
    return 0;
  }

  v5 = qword_213C7D408[v4];
  v6 = off_278171720[v4];
  v7 = a1[6];
  v13 = 261;
  v12[0] = v6;
  v12[1] = v5;
  v8 = a1[12];
  v14[0] = llvm::PointerType::get();
  v9 = getMangledFunction<llvm::PointerType *>(v7, v12, v8, v14);
  if (!llvm::Value::getMetadata())
  {
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
  }

  if (!llvm::Value::getMetadata())
  {
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = *(v9 + 24);
LABEL_10:
  v14[0] = a2;
  v13 = 257;
  return llvm::CallInst::Create(v10, v9, v14, 1, 0, 0, v12, 0);
}