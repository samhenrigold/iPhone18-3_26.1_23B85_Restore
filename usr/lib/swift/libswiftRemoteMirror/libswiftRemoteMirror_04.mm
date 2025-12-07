void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readELFSections<anonymous namespace::ELFTraits<(unsigned char)2>>(swift::remote::RemoteAddress,std::optional<llvm::sys::MemoryBlock>,llvm::SmallVector<llvm::StringRef,1u>)::{lambda(llvm::StringRef,BOOL)#1}::operator()(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((**a1 & 1) != 0 || (v6 = *(a1 + 8), v7 = *v6, v8 = v6[1], *v6 == v8))
  {
LABEL_70:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v41 = *(a1 + 48);
  v10 = &v53;
  v45 = v6[1];
  while (1)
  {
    v11 = *v7;
    if ((*v7)[1])
    {
      break;
    }

LABEL_5:
    if (++v7 == v8)
    {
      goto LABEL_70;
    }
  }

  v12 = a3;
  v13 = v10;
  v14 = *v11;
  v15 = **(a1 + 16);
  v16 = **(a1 + 24) - v14;
  v17 = strnlen((v15 + v14), v16);
  if (v17 > v16)
  {
    **a1 = 1;
    goto LABEL_70;
  }

  v18 = v17;
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  v56 = v17;
  if (v17)
  {
    memmove(__dst, (v15 + v14), v17);
  }

  v10 = v13;
  *(__dst + v18) = 0;
  v19 = v56;
  v21 = __dst[0];
  v20 = __dst[1];
  if (v56 >= 0)
  {
    v22 = __dst;
  }

  else
  {
    v22 = __dst[0];
  }

  if (v56 >= 0)
  {
    v20 = v56;
  }

  a3 = v12;
  if (v20 != v12 || v12 && memcmp(v22, a2, v12) || ((*(v11 + 10) & 0x20) == 0) == a4)
  {
    v30 = 3;
    goto LABEL_27;
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  v25 = *(v11 + 2) + *v24;
  v26 = v42 & 0xFFFFFFFFFFFFFF00 | *(v24 + 8);
  v27 = *(v11 + 4);
  v52 = 0;
  v54 = 0;
  v42 = v26;
  if (*(v23 + 24) != 1)
  {
    v40 = v25;
    (*(**(v41 + 2800) + 24))(&v49);
    std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v52, &v49);
    v31 = v49;
    v49 = 0;
    if (v31)
    {
      v47[0] = v31;
      if (!v51)
      {
        goto LABEL_72;
      }

      (*(*v51 + 48))(v51, v47);
    }

    if (v51 == v50)
    {
      (*(*v51 + 32))(v51);
    }

    else if (v51)
    {
      (*(*v51 + 40))();
      v32 = v52;
      if (v52)
      {
        goto LABEL_44;
      }

LABEL_55:
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      v30 = 1;
      v29 = v54;
      v10 = v13;
      v52 = 0;
      goto LABEL_64;
    }

    v32 = v52;
    if (v52)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

  v28 = *(v11 + 3);
  if (*(v23 + 8) < v28 + v27)
  {
    v29 = 0;
    **a1 = 1;
    v30 = 2;
    v52 = 0;
    goto LABEL_64;
  }

  v40 = v25;
  v33 = malloc_type_malloc(v27, 0xFC2F0DA2uLL);
  v47[0] = off_E0D90;
  v48 = v47;
  v49 = v33;
  v39 = v33;
  v51 = v50;
  v50[0] = off_E0D90;
  std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v52, &v49);
  v34 = v49;
  v49 = 0;
  if (v34)
  {
    v57 = v34;
    if (!v51)
    {
      goto LABEL_72;
    }

    (*(*v51 + 48))(v51, &v57);
  }

  if (v51 == v50)
  {
    (*(*v51 + 32))(v51);
  }

  else if (v51)
  {
    (*(*v51 + 40))(v51);
  }

  if (v48 == v47)
  {
    (*(*v48 + 32))(v48);
  }

  else if (v48)
  {
    (*(*v48 + 40))(v48);
  }

  memcpy(v39, (v28 + **(a1 + 40)), v27);
  v32 = v52;
  if (!v52)
  {
    goto LABEL_55;
  }

LABEL_44:
  v35 = v41;
  v36 = *(v41 + 2856);
  if (v36 >= *(v41 + 2864))
  {
    v37 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>((v41 + 2848), &v52);
  }

  else
  {
    v52 = 0;
    *v36 = v32;
    if (v54)
    {
      if (v54 == v13)
      {
        v36[4] = (v36 + 1);
        (*(*v54 + 24))(v54);
      }

      else
      {
        v36[4] = v54;
        v54 = 0;
      }
    }

    else
    {
      v36[4] = 0;
    }

    v37 = v36 + 5;
    v35 = v41;
  }

  v10 = v13;
  *(v35 + 2856) = v37;
  *a5 = v40;
  *(a5 + 8) = v42;
  *(a5 + 16) = v32;
  *(a5 + 24) = v27;
  v38 = v52;
  v29 = v54;
  v52 = 0;
  if (v38)
  {
    v49 = v38;
    v8 = v45;
    if (!v54)
    {
LABEL_72:
      std::__throw_bad_function_call[abi:nn200100]();
      return;
    }

    a3 = v12;
    (*(*v54 + 48))();
    v30 = 1;
    v29 = v54;
    if (v54 != v13)
    {
      goto LABEL_65;
    }

LABEL_62:
    (*(*v29 + 32))(v29);
    goto LABEL_27;
  }

  v30 = 1;
LABEL_64:
  v8 = v45;
  a3 = v12;
  if (v29 == v10)
  {
    goto LABEL_62;
  }

LABEL_65:
  if (v29)
  {
    (*(*v29 + 40))(v29);
  }

LABEL_27:
  if (v19 < 0)
  {
    operator delete(v21);
  }

  if (v30 == 3)
  {
    goto LABEL_5;
  }

  if (v30 == 2)
  {
    goto LABEL_70;
  }
}

void swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::readELFSections<anonymous namespace::ELFTraits<(unsigned char)1>>(swift::remote::RemoteAddress,std::optional<llvm::sys::MemoryBlock>,llvm::SmallVector<llvm::StringRef,1u>)::{lambda(llvm::StringRef,BOOL)#1}::operator()(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((**a1 & 1) != 0 || (v6 = *(a1 + 8), v7 = *v6, v8 = v6[1], *v6 == v8))
  {
LABEL_71:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v41 = *(a1 + 48);
  v10 = &v53;
  v45 = v6[1];
  while (1)
  {
    v12 = *v7;
    if (!(*v7)[1])
    {
      goto LABEL_6;
    }

    v13 = a3;
    v14 = v10;
    v15 = *v12;
    v16 = **(a1 + 16);
    v17 = (**(a1 + 24) - v15);
    v18 = strnlen((v16 + v15), v17);
    if (v18 > v17)
    {
      **a1 = 1;
      goto LABEL_71;
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v56 = v18;
    if (v18)
    {
      memmove(__dst, (v16 + v15), v18);
    }

    v10 = v14;
    *(__dst + v19) = 0;
    v20 = v56;
    v22 = __dst[0];
    v21 = __dst[1];
    if (v56 >= 0)
    {
      v23 = __dst;
    }

    else
    {
      v23 = __dst[0];
    }

    if (v56 >= 0)
    {
      v21 = v56;
    }

    a3 = v13;
    if (v21 != v13 || v13 && memcmp(v23, a2, v13) || ((*(v12 + 10) & 0x20) == 0) == a4)
    {
      v11 = 3;
      if (v20 < 0)
      {
        break;
      }

      goto LABEL_5;
    }

    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v26 = *v25 + v12[3];
    v27 = v42 & 0xFFFFFFFFFFFFFF00 | *(v25 + 8);
    v28 = v12[5];
    v52 = 0;
    v54 = 0;
    v42 = v27;
    if (*(v24 + 24) == 1)
    {
      v29 = v12[4];
      if (*(v24 + 8) < (v29 + v28))
      {
        v30 = 0;
        **a1 = 1;
        v11 = 2;
LABEL_53:
        v52 = 0;
        v8 = v45;
        v10 = v14;
        goto LABEL_63;
      }

      v40 = v26;
      v33 = malloc_type_malloc(v28, 0xFC2F0DA2uLL);
      v47[0] = off_E0DD8;
      v48 = v47;
      v49 = v33;
      v39 = v33;
      v51 = v50;
      v50[0] = off_E0DD8;
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v52, &v49);
      v34 = v49;
      v49 = 0;
      if (v34)
      {
        v57 = v34;
        if (!v51)
        {
          goto LABEL_72;
        }

        (*(*v51 + 48))(v51, &v57);
      }

      if (v51 == v50)
      {
        (*(*v51 + 32))(v51);
      }

      else if (v51)
      {
        (*(*v51 + 40))(v51);
      }

      if (v48 == v47)
      {
        (*(*v48 + 32))(v48);
      }

      else if (v48)
      {
        (*(*v48 + 40))(v48);
      }

      memcpy(v39, (**(a1 + 40) + v29), v28);
      v32 = v52;
      if (!v52)
      {
LABEL_52:
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v11 = 1;
        v30 = v54;
        goto LABEL_53;
      }
    }

    else
    {
      v40 = v26;
      (*(**(v41 + 2800) + 24))(&v49);
      std::unique_ptr<void const,std::function<void ()(void const*)>>::operator=[abi:nn200100](&v52, &v49);
      v31 = v49;
      v49 = 0;
      if (v31)
      {
        v47[0] = v31;
        if (!v51)
        {
          goto LABEL_72;
        }

        (*(*v51 + 48))(v51, v47);
      }

      if (v51 == v50)
      {
        (*(*v51 + 32))(v51);
      }

      else if (v51)
      {
        (*(*v51 + 40))();
        v32 = v52;
        if (!v52)
        {
          goto LABEL_52;
        }

        goto LABEL_41;
      }

      v32 = v52;
      if (!v52)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v35 = v41;
    v36 = *(v41 + 2856);
    if (v36 >= *(v41 + 2864))
    {
      v37 = std::vector<std::unique_ptr<void const,std::function<void ()(void const*)>>>::__emplace_back_slow_path<std::unique_ptr<void const,std::function<void ()(void const*)>>>((v41 + 2848), &v52);
    }

    else
    {
      v52 = 0;
      *v36 = v32;
      if (v54)
      {
        if (v54 == v14)
        {
          v36[4] = (v36 + 1);
          (*(*v54 + 24))(v54);
        }

        else
        {
          v36[4] = v54;
          v54 = 0;
        }
      }

      else
      {
        v36[4] = 0;
      }

      v37 = v36 + 5;
      v35 = v41;
    }

    v10 = v14;
    *(v35 + 2856) = v37;
    *a5 = v40;
    *(a5 + 8) = v42;
    *(a5 + 16) = v32;
    *(a5 + 24) = v28;
    v38 = v52;
    v30 = v54;
    v52 = 0;
    if (!v38)
    {
      v11 = 1;
      v8 = v45;
LABEL_63:
      a3 = v13;
      if (v30 == v10)
      {
        goto LABEL_60;
      }

      goto LABEL_64;
    }

    v49 = v38;
    v8 = v45;
    if (!v54)
    {
LABEL_72:
      std::__throw_bad_function_call[abi:nn200100]();
      return;
    }

    a3 = v13;
    (*(*v54 + 48))();
    v11 = 1;
    v30 = v54;
    if (v54 == v14)
    {
LABEL_60:
      (*(*v30 + 32))(v30);
      if (v20 < 0)
      {
        break;
      }

      goto LABEL_5;
    }

LABEL_64:
    if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    if (v20 < 0)
    {
      break;
    }

LABEL_5:
    if (v11 != 3)
    {
      goto LABEL_68;
    }

LABEL_6:
    if (++v7 == v8)
    {
      goto LABEL_71;
    }
  }

  operator delete(v22);
  if (v11 == 3)
  {
    goto LABEL_6;
  }

LABEL_68:
  if (v11 == 2)
  {
    goto LABEL_71;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_readIsaMask::$_0>(swift_reflection_readIsaMask::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  IsaEncoding = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(*a2);
  if (IsaEncoding == 2)
  {
    v5 = 0;
    result = 1;
  }

  else if (IsaEncoding == 3)
  {
    v5 = *(v3 + 104);
    result = 1;
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  ***v2 = v5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_readIsaMask::$_0>(swift_reflection_readIsaMask::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  IsaEncoding = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(*a2);
  if (IsaEncoding == 2)
  {
    v5 = 0;
    result = 1;
  }

  else if (IsaEncoding == 3)
  {
    v5 = *(v3 + 104);
    result = 1;
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  ***v2 = v5;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(uint64_t a1)
{
  result = *(a1 + 96);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void **swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  *&v246 = a2;
  *(&v246 + 1) = a3;
  LOBYTE(v247) = a4;
  __src[0] = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v246, __src, a4, a5, a6, a7, a8) && __src[0] != (*a1 + 32 * *(a1 + 16)))
  {
    return *(__src[0] + 3);
  }

  v19 = __OFSUB__(v8, 1);
  v20 = (v8 - 1);
  if (v20 < 0 != v19)
  {
    return 0;
  }

  *__src = v246;
  v204 = v247;
  v205 = 0;
  v164.__r_.__value_.__r.__words[0] = 0;
  if ((__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, &v164, v13, v14, v15, v16, v17) & 1) == 0)
  {
    v21 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, __src, v164.__r_.__value_.__l.__data_);
    v22 = __src[1];
    *v21 = __src[0];
    *(v21 + 8) = v22;
    *(v21 + 16) = v204;
    v21[3] = v205;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v244);
  v24 = v245;
  if (!v245)
  {
    return 0;
  }

  v25 = *v245;
  if (*v245 > 0x7FF)
  {
    LODWORD(v25) = 0;
  }

  if (v25 <= 770)
  {
    if (v25 <= 514)
    {
      if ((v25 - 512) < 3)
      {
        *__src = v244;
        v204 = v245;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, __src, v20, 0);
      }

      if (!v25)
      {
        *__src = v244;
        v204 = v245;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(a1, __src, v20, a4);
      }

      goto LABEL_46;
    }

    if ((v25 - 515) >= 2)
    {
      if (v25 == 769)
      {
        v204 = 0;
        __src[1] = 0;
        __src[0] = 0;
        std::vector<swift::reflection::TypeRef const*>::reserve(__src, v245[1]);
        v45 = *(v24 + 8);
        if (*(v24 + 8))
        {
          v46 = (v24 + 24);
          do
          {
            v48 = *v46;
            v46 += 2;
            result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v48, a3, 0, v20);
            if (!result)
            {
              goto LABEL_157;
            }

            v49 = __src[1];
            if (__src[1] < v204)
            {
              *__src[1] = result;
              v47 = v49 + 8;
            }

            else
            {
              v50 = __src[0];
              v51 = __src[1] - __src[0];
              v52 = (__src[1] - __src[0]) >> 3;
              v53 = v52 + 1;
              if ((v52 + 1) >> 61)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v54 = v204 - __src[0];
              if ((v204 - __src[0]) >> 2 > v53)
              {
                v53 = v54 >> 2;
              }

              if (v54 >= 0x7FFFFFFFFFFFFFF8)
              {
                v55 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v53;
              }

              if (v55)
              {
                if (!(v55 >> 61))
                {
                  operator new();
                }

                goto LABEL_224;
              }

              *(8 * v52) = result;
              v47 = (8 * v52 + 8);
              memcpy(0, v50, v51);
              __src[0] = 0;
              __src[1] = v47;
              v204 = 0;
              if (v50)
              {
                operator delete(v50);
              }
            }

            __src[1] = v47;
            --v45;
          }

          while (v45);
        }

        v69 = *(v24 + 16);
        memset(&v164, 0, sizeof(v164));
        if (v69 && !(*(**(a1 + 2800) + 16))(*(a1 + 2800), v69, a3, &v164))
        {
          result = 0;
        }

        else
        {
          memset(&v243, 0, sizeof(v243));
          v70 = std::string::find(&v164, 32, 0);
          if (v70 == -1)
          {
            v74 = 0;
            size = 0;
          }

          else
          {
            v71 = v70;
            v72 = 0;
            do
            {
              if ((v164.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v73 = &v164;
              }

              else
              {
                v73 = v164.__r_.__value_.__r.__words[0];
              }

              v202.__r_.__value_.__r.__words[0] = v73 + v72;
              v202.__r_.__value_.__l.__size_ = v71 - v72;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v243, &v202);
              v72 = v71 + 1;
              v71 = std::string::find(&v164, 32, v71 + 1);
            }

            while (v71 != -1);
            size = v243.__r_.__value_.__l.__size_;
            v74 = v243.__r_.__value_.__r.__words[0];
          }

          v110 = (size - v74) >> 4;
          v111 = __src[0];
          v112 = (__src[1] - __src[0]) >> 3;
          if (v112 > v110)
          {
            v113 = v110 + 1;
            do
            {
              *&v202.__r_.__value_.__l.__data_ = 0uLL;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v243, &v202);
              v111 = __src[0];
              v112 = (__src[1] - __src[0]) >> 3;
            }

            while (v112 > v113++);
            v74 = v243.__r_.__value_.__r.__words[0];
          }

          TupleType = swift::reflection::TypeRefBuilder::createTupleType(a1 + 328, v111, v112, v74, (v243.__r_.__value_.__l.__size_ - v74) >> 4);
          v122 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v246, v116, v117, v118, v119, v120, v121);
          result = TupleType;
          *v122 = TupleType;
          if (v243.__r_.__value_.__r.__words[0])
          {
            v243.__r_.__value_.__l.__size_ = v243.__r_.__value_.__r.__words[0];
            operator delete(v243.__r_.__value_.__l.__data_);
            result = TupleType;
          }
        }

        if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
        {
          v123 = result;
          operator delete(v164.__r_.__value_.__l.__data_);
          result = v123;
        }

LABEL_157:
        v39 = __src[0];
        if (!__src[0])
        {
          return result;
        }

        __src[1] = __src[0];
        goto LABEL_169;
      }

      if (v25 == 770)
      {
        memset(&v164, 0, sizeof(v164));
        v33 = *(v245 + 4);
        if (*(v245 + 4))
        {
          v34 = v245 + 3;
          v35 = a3;
          v36 = v245 + 3;
          while (1)
          {
            v38 = *v36++;
            result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v38, v35, 0, v20);
            if (!result)
            {
              goto LABEL_167;
            }

            __src[1] = 0;
            __src[0] = 0;
            v204 = result;
            if ((*(v24 + 8) & 0x2000000) != 0)
            {
              v37 = v34[*(v24 + 8)];
            }

            else
            {
              v37 = 0;
            }

            LODWORD(v205) = v37;
            std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](&v164, __src);
            v34 = (v34 + 4);
            if (!--v33)
            {
              goto LABEL_132;
            }
          }
        }

        v35 = a3;
LABEL_132:
        result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v24 + 16), v35, 0, v20);
        if (!result)
        {
          goto LABEL_167;
        }

        v94 = result;
        v95 = *(v24 + 8);
        if ((v95 & 0x80000000) != 0)
        {
          ExtendedFlags = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getExtendedFlags(v24);
        }

        else
        {
          ExtendedFlags = 0;
        }

        v97 = *(v24 + 8);
        if ((v97 & 0x10000000) != 0)
        {
          result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(((v24 + 8 * *(v24 + 8) + 4 * (*(v24 + 8) & ((*(v24 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((*(v24 + 8) >> 27) & 1)), v35, 0, v20);
          if (!result)
          {
            goto LABEL_167;
          }

          v108 = result;
          v97 = *(v24 + 8);
        }

        else
        {
          v108 = 0;
        }

        if ((v97 & 0x8000000) != 0)
        {
          v124 = *((v24 + 8 * v97 + 4 * (v97 & (v97 << 38 >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8);
          if ((v124 - 1) >= 4)
          {
            v109 = 0;
          }

          else
          {
            v109 = v124;
          }
        }

        else
        {
          v109 = 0;
        }

        if (swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::hasThrownError(v24))
        {
          ThrownError = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getThrownError(v24);
          result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, ThrownError, v35, 0, v20);
          if (!result)
          {
            goto LABEL_167;
          }
        }

        else
        {
          result = 0;
        }

        FunctionType = swift::reflection::TypeRefBuilder::createFunctionType(a1 + 328, v164.__r_.__value_.__l.__data_, (v164.__r_.__value_.__l.__size_ - v164.__r_.__value_.__r.__words[0]) >> 5, v94, v95, ExtendedFlags, v109, v108, result);
        v133 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v246, v127, v128, v129, v130, v131, v132);
        result = FunctionType;
        *v133 = FunctionType;
LABEL_167:
        v39 = v164.__r_.__value_.__r.__words[0];
        if (!v164.__r_.__value_.__r.__words[0])
        {
          return result;
        }

        v164.__r_.__value_.__l.__size_ = v164.__r_.__value_.__r.__words[0];
        goto LABEL_169;
      }

LABEL_46:
      v26 = swift::reflection::OpaqueTypeRef::get(v23);
      goto LABEL_47;
    }

    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v244, 0);
    if (!result)
    {
      return result;
    }

    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, result, v40, &v243);
    if (v243.__r_.__value_.__r.__words[2])
    {
      v204 = 0;
      __src[1] = 0;
      v205 = 0;
      v206 = 2400;
      v207 = 0;
      v208 = 0;
      v242 = 0;
      __src[0] = off_E13E8;
      v209 = 0;
      v211 = 0;
      v210 = 0;
      v212 = 0;
      v224 = 0u;
      v225 = 0u;
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      v236 = 0u;
      v237 = 0u;
      v238 = 0u;
      v239 = 0u;
      v240 = 0u;
      v213 = 0u;
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v218 = 0u;
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v223 = 0u;
      v241 = 0;
      v164 = v243;
      v41 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextMangling(a1, &v164, __src);
      if (v41 && *(v41 + 8) == 243)
      {
        swift::Demangle::__runtime::mangleNode(v41, 0);
        if (LODWORD(v164.__r_.__value_.__l.__data_))
        {
          v42 = 0;
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v202, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v202 = __p;
          }

          v42 = swift::reflection::ForeignClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, &v202);
          *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v246, v134, v135, v136, v137, v138, v139) = v42;
          if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v202.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v42 = 0;
      }

      swift::Demangle::__runtime::Demangler::~Demangler(__src);
      return v42;
    }

    return 0;
  }

  if (v25 <= 774)
  {
    if (v25 <= 772)
    {
      if (v25 == 771)
      {
        v56 = *(v245 + 2);
        if ((v56 & 0x40000000) != 0)
        {
          result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v245[2], a3, 0, v20);
          if (!result)
          {
            return result;
          }

          v57 = result;
          v58 = 1;
        }

        else
        {
          v57 = 0;
          v58 = v56 >= 0;
        }

        v204 = 0;
        __src[1] = 0;
        v205 = 0;
        v206 = 2400;
        v207 = 0;
        v208 = 0;
        v242 = 0;
        __src[0] = off_E13E8;
        v209 = 0;
        v211 = 0;
        v210 = 0;
        v212 = 0;
        v224 = 0u;
        v225 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        v239 = 0u;
        v240 = 0u;
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v222 = 0u;
        v223 = 0u;
        v241 = 0;
        memset(&v243, 0, sizeof(v243));
        v76 = *(v24 + 12);
        if (v76)
        {
          v162 = v58;
          v77 = 0;
          v78 = (v24 + 8 * ((*(v24 + 8) >> 30) & 1) + 16);
          v79 = 8 * v76;
          v163 = v57;
          do
          {
            v202.__r_.__value_.__r.__words[0] = *v78;
            v202.__r_.__value_.__l.__size_ = v202.__r_.__value_.__r.__words[0];
            v202.__r_.__value_.__r.__words[2] = a3;
            swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver>(a1, &v202, __src, a1 + 328, &v164);
            if (__p.__r_.__value_.__s.__data_[8] != 1)
            {
              v99 = 0;
              goto LABEL_139;
            }

            if (v77 >= v243.__r_.__value_.__r.__words[2])
            {
              v81 = v243.__r_.__value_.__r.__words[0];
              v82 = (v77 - v243.__r_.__value_.__r.__words[0]);
              v83 = 1 - 0x3333333333333333 * ((v77 - v243.__r_.__value_.__r.__words[0]) >> 3);
              if (v83 > 0x666666666666666)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              if (0x999999999999999ALL * ((v243.__r_.__value_.__r.__words[2] - v243.__r_.__value_.__r.__words[0]) >> 3) > v83)
              {
                v83 = 0x999999999999999ALL * ((v243.__r_.__value_.__r.__words[2] - v243.__r_.__value_.__r.__words[0]) >> 3);
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v243.__r_.__value_.__r.__words[2] - v243.__r_.__value_.__r.__words[0]) >> 3) >= 0x333333333333333)
              {
                v84 = 0x666666666666666;
              }

              else
              {
                v84 = v83;
              }

              if (v84)
              {
                if (v84 <= 0x666666666666666)
                {
                  operator new();
                }

LABEL_224:
                std::string::__throw_length_error[abi:nn200100]();
              }

              v82[1].__r_.__value_.__s.__data_[8] = 0;
              v85 = &v82[1].__r_.__value_.__s.__data_[8];
              v86 = v82;
              if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(v82, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
                v81 = v243.__r_.__value_.__r.__words[0];
                v82 = (v243.__r_.__value_.__l.__size_ - v243.__r_.__value_.__r.__words[0]);
              }

              else
              {
                *v82 = v164;
              }

              v86[1].__r_.__value_.__s.__data_[0] = __p.__r_.__value_.__s.__data_[0];
              *v85 = 1;
              v77 = (v86 + 40);
              v87 = (v86 - v82);
              memcpy(v87, v81, v82);
              v243.__r_.__value_.__r.__words[0] = v87;
              *&v243.__r_.__value_.__r.__words[1] = v77;
              if (v81)
              {
                operator delete(v81);
              }
            }

            else
            {
              v77->__r_.__value_.__s.__data_[0] = 0;
              v77[1].__r_.__value_.__s.__data_[8] = 0;
              if (__p.__r_.__value_.__s.__data_[8] == 1)
              {
                if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(v77, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
                }

                else
                {
                  v80 = *&v164.__r_.__value_.__l.__data_;
                  v77->__r_.__value_.__r.__words[2] = v164.__r_.__value_.__r.__words[2];
                  *&v77->__r_.__value_.__l.__data_ = v80;
                }

                v77[1].__r_.__value_.__s.__data_[0] = __p.__r_.__value_.__s.__data_[0];
                v77[1].__r_.__value_.__s.__data_[8] = 1;
              }

              v77 = (v77 + 40);
            }

            v243.__r_.__value_.__l.__size_ = v77;
            if (__p.__r_.__value_.__s.__data_[8] == 1 && SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v164.__r_.__value_.__l.__data_);
            }

            ++v78;
            v79 -= 8;
          }

          while (v79);
          v98 = v243.__r_.__value_.__r.__words[0];
          v57 = v163;
          v58 = v162;
        }

        else
        {
          v77 = 0;
          v98 = 0;
        }

        ProtocolCompositionType = swift::reflection::TypeRefBuilder::createProtocolCompositionType(a1 + 328, v98, 0xCCCCCCCCCCCCCCCDLL * ((v77 - v98) >> 3), v57, v58);
        v107 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v246, v101, v102, v103, v104, v105, v106);
        v99 = ProtocolCompositionType;
        *v107 = ProtocolCompositionType;
LABEL_139:
        std::vector<std::optional<std::pair<std::string,BOOL>>>::~vector[abi:nn200100](&v243);
        swift::Demangle::__runtime::Demangler::~Demangler(__src);
        return v99;
      }

      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v245[1], a3, 0, v20);
      if (!result)
      {
        return result;
      }

      v26 = swift::reflection::MetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result, 0);
LABEL_47:
      v43 = v26;
      v44 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v246, v27, v28, v29, v30, v31, v32);
      result = v43;
      *v44 = v43;
      return result;
    }

    if (v25 != 773)
    {
      result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v245[1], a3, 0, v20);
      if (!result)
      {
        return result;
      }

      v26 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result);
      goto LABEL_47;
    }

    v59 = v245[1];
    __src[1] = 0;
    __src[0] = 0;
    v204 = 0;
    ObjCClassName = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCClassName(a1, v59, a3, __src);
    result = 0;
    if (ObjCClassName)
    {
      v61 = swift::reflection::ObjCClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
      v68 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v246, v62, v63, v64, v65, v66, v67);
      result = v61;
      *v68 = v61;
    }

LABEL_33:
    if ((SHIBYTE(v204) & 0x80000000) == 0)
    {
      return result;
    }

    v39 = __src[0];
LABEL_169:
    v99 = result;
    operator delete(v39);
    return v99;
  }

  if ((v25 - 1280) < 2)
  {
LABEL_32:
    strcpy(__src, "Bo");
    HIBYTE(v204) = 2;
    result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
    goto LABEL_33;
  }

  if (v25 != 775)
  {
    if (v25 != 1024)
    {
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(a1, *(a1 + 2816) & v245[1], 0, &v243);
  if (!v243.__r_.__value_.__r.__words[2])
  {
    return 0;
  }

  if ((*(v243.__r_.__value_.__r.__words[2] + 1) & 1) != 0 && *(v243.__r_.__value_.__r.__words[2] + 20))
  {
    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v24 + 16), a3, 0, v20);
    if (result)
    {
      operator new();
    }

    return result;
  }

  v204 = 0;
  __src[1] = 0;
  v205 = 0;
  v206 = 2400;
  v207 = 0;
  v208 = 0;
  v242 = 0;
  __src[0] = off_E13E8;
  v209 = 0;
  v211 = 0;
  v210 = 0;
  v212 = 0;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v241 = 0;
  v88 = *(v243.__r_.__value_.__r.__words[2] + 4);
  if (v88)
  {
    v89 = (v243.__r_.__value_.__r.__words[0] + v88 + 4);
  }

  else
  {
    v89 = 0;
  }

  if (v88)
  {
    v90 = v243.__r_.__value_.__s.__data_[8];
  }

  else
  {
    v90 = 0;
  }

  MangledName = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v89, v90, 0, __src);
  if (!MangledName)
  {
    goto LABEL_128;
  }

  v202.__r_.__value_.__r.__words[0] = a1 + 328;
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v202, MangledName, 0, 0, &v164, v92);
  if (LOWORD(v164.__r_.__value_.__r.__words[2]))
  {
    if (LOWORD(v164.__r_.__value_.__r.__words[2]) == 1)
    {
      (v164.__r_.__value_.__l.__size_)(v164.__r_.__value_.__r.__words[0], 3, 0);
    }

    goto LABEL_128;
  }

  v93 = v164.__r_.__value_.__r.__words[0];
  if (!v164.__r_.__value_.__r.__words[0])
  {
    goto LABEL_129;
  }

  v201 = v243;
  swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v243.__r_.__value_.__r.__words[2], &v164);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(a1, &v201, &v164, &v202);
  if (LOWORD(v202.__r_.__value_.__r.__words[2]))
  {
    if (LOWORD(v202.__r_.__value_.__r.__words[2]) == 1)
    {
      (v202.__r_.__value_.__l.__size_)(v202.__r_.__value_.__r.__words[0], 3, 0);
    }

    goto LABEL_128;
  }

  if (!v202.__r_.__value_.__r.__words[0])
  {
LABEL_128:
    v93 = 0;
    goto LABEL_129;
  }

  swift::reflection::TypeRefBuilder::createSubstitutionMap(v202.__r_.__value_.__l.__data_, 0, 0, &v202);
  if (!LODWORD(v202.__r_.__value_.__r.__words[1]))
  {
    v93 = 0;
    goto LABEL_222;
  }

  v93 = swift::reflection::TypeRef::subst(v93, a1 + 328, &v202);
  if (!v93)
  {
    goto LABEL_222;
  }

  v146 = *v243.__r_.__value_.__r.__words[2];
  if ((v146 & 0x200) == 0)
  {
    goto LABEL_221;
  }

  *&v164.__r_.__value_.__r.__words[1] = 0uLL;
  __p.__r_.__value_.__r.__words[0] = 0;
  *&__p.__r_.__value_.__r.__words[1] = 0x960uLL;
  v166 = 0;
  v200 = 0;
  v164.__r_.__value_.__r.__words[0] = off_E13E8;
  v167 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v147 = ((v243.__r_.__value_.__r.__words[2] + 8 * ((v146 >> 8) & 1) + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v148 = v147 + v243.__r_.__value_.__r.__words[0] - v243.__r_.__value_.__r.__words[2];
  v199 = 0;
  v149 = *v147;
  v150 = (v148 + v149);
  if (v149)
  {
    v151 = v150;
  }

  else
  {
    v151 = 0;
  }

  if (v149)
  {
    v152 = v243.__r_.__value_.__s.__data_[8];
  }

  else
  {
    v152 = 0;
  }

  v153 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v151, v152, 0, &v164);
  if (!v153)
  {
    swift::Demangle::__runtime::Demangler::~Demangler(&v164);
    v93 = 0;
    goto LABEL_222;
  }

  for (i = v153; *(i + 16) == 243; i = *v161)
  {
    v155 = *(i + 18);
    v156 = i;
    if ((v155 - 1) >= 2)
    {
      if (v155 != 5 || !*(i + 8))
      {
        break;
      }

      v156 = *i;
    }

    if (*(*v156 + 16) != 154)
    {
      break;
    }

    v157 = i;
    if ((v155 - 1) >= 2)
    {
      if (v155 != 5 || !*(i + 8))
      {
        v158 = 0;
        goto LABEL_208;
      }

      v157 = *i;
    }

    v158 = *v157;
LABEL_208:
    v159 = *(v158 + 18);
    if ((v159 - 1) >= 2 && (v159 != 5 || !*(v158 + 8)))
    {
      break;
    }

    v93 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, v93);
    v160 = *(i + 18);
    if ((v160 - 1) < 2)
    {
      goto LABEL_215;
    }

    if (v160 == 5 && *(i + 8))
    {
      i = *i;
LABEL_215:
      v161 = *i;
      goto LABEL_217;
    }

    v161 = 0;
LABEL_217:
    if (*(v161 + 18) - 1 >= 2)
    {
      v161 = *v161;
    }
  }

  swift::Demangle::__runtime::Demangler::~Demangler(&v164);
LABEL_221:
  *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v246, v140, v141, v142, v143, v144, v145) = v93;
LABEL_222:
  __swift::__runtime::llvm::deallocate_buffer(v202.__r_.__value_.__l.__data_, (16 * LODWORD(v202.__r_.__value_.__r.__words[2])), 8uLL);
LABEL_129:
  swift::Demangle::__runtime::Demangler::~Demangler(__src);
  return v93;
}

int32x2_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata@<D0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(result + 24);
  v9 = *(result + 40);
  if (!v9)
  {
    v19 = 0;
LABEL_15:
    v12 = (v8 + 56 * v19);
    goto LABEL_16;
  }

  v34 = a2;
  v35[0] = a3;
  v10 = (v9 - 1) & __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v34, v35);
  v12 = (v8 + 56 * v10);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (a2 != *v12 || a3 != v14)
  {
    v16 = 1;
    while (v13 != -1 || v14)
    {
      v17 = v10 + v16++;
      v10 = v17 & (v9 - 1);
      v12 = (v8 + 56 * v10);
      v13 = *v12;
      v14 = *(v12 + 8);
      if (a2 == *v12 && a3 == v14)
      {
        goto LABEL_16;
      }
    }

    v8 = *(result + 24);
    v19 = *(result + 40);
    goto LABEL_15;
  }

LABEL_16:
  if (v12 != (*(result + 24) + 56 * *(result + 40)))
  {
    v20 = v12[2];
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v20;
    return v11;
  }

  v40 = 0;
  if (((*(**(result + 2800) + 32))(*(result + 2800), a2, a3, &v40, 8) & 1) == 0)
  {
    goto LABEL_67;
  }

  v21 = v40;
  if (v40 > 0x7FF)
  {
    v21 = 0;
  }

  if (v21 <= 770)
  {
    if (v21 <= 514)
    {
      if (v21 <= 512)
      {
        if (!v21)
        {
          v28 = a4;
          v29 = result;
          v30 = a2;
          v31 = a3;
          v27 = 80;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
        }

        if (v21 != 512)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_52;
    }

    if (v21 <= 768)
    {
      if (v21 == 515)
      {
        v28 = a4;
        v29 = result;
        v30 = a2;
        v31 = a3;
        v27 = 32;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
      }

      if (v21 != 516)
      {
        goto LABEL_68;
      }

      goto LABEL_53;
    }

    if (v21 != 769)
    {
      v34 = 0;
      if ((*(**(result + 2800) + 32))(*(result + 2800), a2 + 8, a3, &v34, 8))
      {
        v22 = 4 * v34;
        if ((v34 & 0x2000000) == 0)
        {
          v22 = 0;
        }

        v23 = v22 + 8 * v34;
        v24 = v23 + 24;
        v25 = ((v23 + 31) & 0x1FFFF8) + 8;
        if ((v34 & 0x8000000) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        v27 = (v26 + 7) & 0xFFFFF8;
        goto LABEL_70;
      }

LABEL_67:
      *a4 = 0;
      *(a4 + 8) = 0;
      a4[2] = 0;
      return v11;
    }

    v34 = 0;
    if (((*(**(result + 2800) + 32))(*(result + 2800), a2 + 8, a3, &v34, 8) & 1) == 0 || v34 >= 0x100)
    {
      goto LABEL_67;
    }

    v27 = 16 * v34 + 24;
LABEL_70:
    v28 = a4;
    v29 = result;
    v30 = a2;
    v31 = a3;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
  }

  if (v21 > 774)
  {
    if (v21 > 1279)
    {
      if (v21 != 1280)
      {
        if (v21 != 1281)
        {
LABEL_68:
          v28 = a4;
          v29 = result;
          v30 = a2;
          v31 = a3;
          v27 = 8;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v21 == 775)
      {
        v38 = 0;
        v39 = 0;
        if (((*(**(result + 2800) + 96))(*(result + 2800), a2 + 8, a3, &v38, 8) & 1) == 0)
        {
          goto LABEL_67;
        }

        v33 = v38;
        if (!v39)
        {
          v33 = *(result + 2816) & v38;
        }

        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(result, v33, v39, v36);
        if (!v37)
        {
          goto LABEL_67;
        }

        swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v37, &v34);
        v27 = 8 * WORD2(v34) + 16;
        goto LABEL_70;
      }

      if (v21 != 1024)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_53;
  }

  if (v21 > 772)
  {
    if (v21 == 773)
    {
      goto LABEL_52;
    }

LABEL_53:
    v28 = a4;
    v29 = result;
    v30 = a2;
    v31 = a3;
    v27 = 24;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
  }

  if (v21 == 771)
  {
    LODWORD(v34) = 0;
    if (((*(**(result + 2800) + 32))(*(result + 2800), a2 + 8, a3, &v34, 4) & 1) == 0)
    {
      goto LABEL_67;
    }

    v32 = v34;
    v36[0] = 0;
    if (((*(**(result + 2800) + 32))(*(result + 2800), a2 + 12, a3, v36, 4) & 1) == 0 || v36[0] >= 0x100u)
    {
      goto LABEL_67;
    }

    v27 = ((v32 >> 27) & 8) + 8 * v36[0] + 16;
    goto LABEL_70;
  }

LABEL_52:
  v28 = a4;
  v29 = result;
  v30 = a2;
  v31 = a3;
  v27 = 16;
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[2];
  if ((swift_reflection_classIsSwiftMask & *(v4 + 32)) != 0)
  {
    *__p = *a2;
    v28 = v4;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, __p, a3, a4);
  }

  v6 = a3;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  v8 = *a2;
  v9 = *(a2 + 8);
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, *a2, v9);
  if (result)
  {
    v24 = 0;
    LOBYTE(v25) = 0;
    if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), result + 24, v11, &v24, 8) && v24 && (*(**(a1 + 2800) + 16))(*(a1 + 2800), v24, v25, __p))
    {
      TypeFromMetadata = swift::reflection::ObjCClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __p);
      if (TypeFromMetadata)
      {
LABEL_10:
        v19 = TypeFromMetadata;
        v24 = v8;
        v25 = v9;
        v26 = a4;
        v29 = 0;
        v20 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v24, &v29, v13, v14, v15, v16, v17);
        v21 = v29;
        if ((v20 & 1) == 0)
        {
          v21 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v24, &v24, v29);
          v22 = v25;
          *v21 = v24;
          *(v21 + 8) = v22;
          *(v21 + 16) = v26;
          v21[3] = 0;
        }

        result = v19;
        v21[3] = v19;
        goto LABEL_14;
      }

      v18 = *(a1 + 2816) & *(v4 + 8);
      if (v18)
      {
        TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v18, 0, a4, v6);
        goto LABEL_10;
      }
    }

    result = 0;
  }

LABEL_14:
  if (SHIBYTE(v28) < 0)
  {
    v23 = result;
    operator delete(__p[0]);
    return v23;
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(int32x2_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v63 = *a2;
  v64 = *(a2 + 2);
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v63, a4);
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (v4 && (v63 != *a2 || BYTE8(v63) != *(a2 + 8)))
  {
    v53 = v63;
    v54 = BYTE8(v63);
    v55 = v4;
    *&v61 = 0;
    v21 = v9;
    v22 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v53, &v61, v10, v11, v12, v13, v14);
    v9 = v21;
    if (v22)
    {
      v28 = v61;
      if (v61 != *a1 + 32 * a1[2].u32[0])
      {
        v29 = *(a2 + 1);
        v53 = *a2;
        v54 = v29;
        v55 = v4;
        *&v61 = 0;
        if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v53, &v61, v23, v24, v25, v26, v27))
        {
          v30 = v61;
          *v61 = -2;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
        }

        return *(v28 + 24);
      }
    }
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v15, v9, &v61);
  if (!v62)
  {
    return 0;
  }

  *__p = v61;
  v52 = v62;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(a1, __p, &v53);
  if (v60 != 1)
  {
    goto LABEL_26;
  }

  if ((*v62 & 0x80) == 0)
  {
    result = swift::reflection::NominalTypeRef::create<swift::reflection::TypeRefBuilder>(&a1[41], &v53, 0);
    goto LABEL_19;
  }

  v49 = v63;
  v50 = v64;
  v47 = v61;
  v48 = v62;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(a1, &v49, &v47, v5, __p);
  v31 = __p[0];
  v32 = __p[1];
  if (__p[0] != __p[1])
  {
    *&v49 = __p[0];
    *(&v49 + 1) = (__p[1] - __p[0]) >> 3;
    result = swift::reflection::TypeRefBuilder::createBoundGenericType(&a1[41], &v53, &v49);
    v33 = __p[0];
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  result = 0;
  v33 = __p[0];
  if (__p[0])
  {
LABEL_17:
    __p[1] = v33;
    v34 = result;
    operator delete(v33);
    result = v34;
  }

LABEL_18:
  if (v31 != v32)
  {
LABEL_19:
    if (result)
    {
      v35 = result;
      __p[0] = v63;
      LOBYTE(__p[1]) = BYTE8(v63);
      LOBYTE(v52) = v4;
      *&v49 = 0;
      v36 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, &v49, v16, v17, v18, v19, v20);
      v42 = v49;
      if ((v36 & 1) == 0)
      {
        v42 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, __p, v49);
        v43 = __p[1];
        *v42 = __p[0];
        *(v42 + 8) = v43;
        *(v42 + 16) = v52;
        v42[3] = 0;
      }

      result = v35;
      v42[3] = v35;
      if (v4)
      {
        v44 = *(a2 + 8);
        if (v63 != *a2 || BYTE8(v63) != v44)
        {
          __p[0] = *a2;
          LOBYTE(__p[1]) = v44;
          LOBYTE(v52) = v4;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(a1, __p, v37, v42, v38, v39, v40, v41);
          result = v35;
        }
      }
    }

    goto LABEL_27;
  }

LABEL_26:
  result = 0;
LABEL_27:
  if (v60 == 1)
  {
    if (v59 == 1 && v57)
    {
      v58 = v57;
      v45 = result;
      operator delete(v57);
      result = v45;
    }

    if (v56 < 0)
    {
      v46 = result;
      operator delete(v53);
      return v46;
    }
  }

  return result;
}

void std::vector<swift::reflection::TypeRef const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v10 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, a2, &v14, a4, a5, a6, a7, a8);
  v11 = v14;
  if ((v10 & 1) == 0)
  {
    v11 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, a2, a2, v14);
    v12 = *(a2 + 8);
    *v11 = *a2;
    *(v11 + 8) = v12;
    *(v11 + 16) = *(a2 + 16);
    v11[3] = 0;
  }

  return v11 + 3;
}

void std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getExtendedFlags(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    return *(((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((v1 >> 28) & 1));
  }

  else
  {
    return 0;
  }
}

uint64_t swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::hasThrownError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    return *(((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((v1 >> 28) & 1)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getThrownError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 & 0x80000000) != 0 && (v2 = (((a1 + 8 * *(a1 + 8) + 4 * (*(a1 + 8) & ((*(a1 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((v1 >> 27) & 1) + 8 * ((*(a1 + 8) >> 28) & 1)), (*v2))
  {
    return *((v2 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    return 0;
  }
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver>(uint64_t *a1@<X0>, uint64_t a2@<X1>, swift::Demangle::__runtime::NodeFactory *a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  v25 = a4;
  v8 = *a2;
  if (v8)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCProtocolName(a1, v8 & 0xFFFFFFFFFFFFFFFELL, *(a2 + 16), &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v27;
    }

    else
    {
      v16 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    if (size >= 4 && LODWORD(v16->__r_.__value_.__l.__data_) == 1349801055)
    {
      v24 = 0;
      v19 = swift::Demangle::__runtime::Demangler::demangleSymbol(a3, v16, size, v23);
      if (v24 == v23)
      {
        (*(*v24 + 32))(v24);
        if (v19)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v24)
        {
          (*(*v24 + 40))();
        }

        if (v19)
        {
LABEL_34:
          while (1)
          {
            v20 = *(v19 + 16);
            v21 = (v20 - 200) > 0x2F || ((1 << (v20 + 56)) & 0xC80000000001) == 0;
            if (v21 && v20 != 101)
            {
              break;
            }

            v22 = *(v19 + 18);
            if (v22 != 1)
            {
              if (v22 != 5 || *(v19 + 8) != 1)
              {
                goto LABEL_44;
              }

              v19 = *v19;
            }

            v19 = *v19;
          }

          swift::reflection::TypeRefBuilder::createProtocolDecl(v19, a5);
          goto LABEL_21;
        }
      }

LABEL_44:
      a5->__r_.__value_.__s.__data_[0] = 0;
      a5[1].__r_.__value_.__s.__data_[8] = 0;
    }

    else
    {
      swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver::objcProtocol(size, v16, a5);
    }

LABEL_21:
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v18 = v27.__r_.__value_.__r.__words[0];
    goto LABEL_48;
  }

  if (!*(a2 + 16))
  {
    v8 &= a1[352];
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v8, *(a2 + 16), &v26);
  v10 = v26.__r_.__value_.__r.__words[2];
  if (!v26.__r_.__value_.__r.__words[2] || (v27 = v26, (v11 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v27, a3, 50)) == 0) || ((*v10 & 0x10) != 0 || (*v10 & 0x1F) == 3) && (v12 = v11, Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 243), swift::Demangle::__runtime::Node::addChild(Node, v12, a3, v14, v15), (v11 = Node) == 0))
  {
    a5->__r_.__value_.__s.__data_[0] = 0;
    a5[1].__r_.__value_.__s.__data_[8] = 0;
    return;
  }

  swift::Demangle::__runtime::mangleNode(v11, 0);
  if (LODWORD(v27.__r_.__value_.__l.__data_))
  {
    a5->__r_.__value_.__s.__data_[0] = 0;
    a5[1].__r_.__value_.__s.__data_[8] = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_47;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = __p;
  }

  *a5 = v26;
  a5[1].__r_.__value_.__s.__data_[0] = 0;
  a5[1].__r_.__value_.__s.__data_[8] = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_47:
    v18 = __p.__r_.__value_.__r.__words[0];
LABEL_48:
    operator delete(v18);
  }
}

void ***std::vector<std::optional<std::pair<std::string,BOOL>>>::~vector[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3;
        v3 -= 5;
        if (*(v5 - 8) == 1 && *(v5 - 17) < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
LABEL_25:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  v8 = (result + 72);
  v9 = *(result + 72);
  v10 = *(result + 88);
  if (!v10)
  {
    v19 = 0;
LABEL_16:
    v12 = (v9 + 56 * v19);
    goto LABEL_17;
  }

  *&v29 = a2;
  *(&v29 + 1) = a3;
  v11 = (v10 - 1) & __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v29, &v29 + 8);
  v12 = (v9 + 56 * v11);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (a2 != *v12 || a3 != v14)
  {
    v16 = 1;
    while (v13 != -1 || v14)
    {
      v17 = v11 + v16++;
      v11 = v17 & (v10 - 1);
      v12 = (v9 + 56 * v11);
      v13 = *v12;
      v14 = *(v12 + 8);
      if (a2 == *v12 && a3 == v14)
      {
        goto LABEL_17;
      }
    }

    v9 = *(result + 72);
    v19 = *(result + 88);
    goto LABEL_16;
  }

LABEL_17:
  if (v12 != (*(result + 72) + 56 * *(result + 88)))
  {
    v20 = v12[2];
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = v20;
    return;
  }

  v36 = 0;
  if (((*(**(result + 2800) + 32))(*(result + 2800), a2, a3, &v36, 4) & 1) == 0)
  {
    goto LABEL_25;
  }

  WORD3(v29) = 0;
  if (((*(**(result + 2800) + 32))(*(result + 2800), a2 + 4, a3, &v29, 8) & 1) == 0)
  {
    goto LABEL_25;
  }

  (*(**(result + 2800) + 24))(&v33);
  v21 = v33;
  if (!v33)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    goto LABEL_40;
  }

  *&v29 = a2;
  *(&v29 + 1) = a3;
  v33 = 0;
  v30 = v21;
  if (v35)
  {
    if (v35 == v34)
    {
      v32 = v31;
      (*(*v35 + 24))();
    }

    else
    {
      v32 = v35;
      v35 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::try_emplace<std::unique_ptr<void const,std::function<void ()(void const*)>>>(v8, &v29, &v30, v28);
  v22 = v30;
  v30 = 0;
  if (v22)
  {
    v28[0] = v22;
    if (!v32)
    {
      goto LABEL_45;
    }

    (*(*v32 + 48))(v32, v28);
  }

  if (v32 == v31)
  {
    (*(*v32 + 32))(v32);
  }

  else if (v32)
  {
    (*(*v32 + 40))(v32);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v21;
  v23 = v33;
  v33 = 0;
  if (!v23)
  {
    goto LABEL_40;
  }

  *&v29 = v23;
  if (!v35)
  {
LABEL_45:
    std::__throw_bad_function_call[abi:nn200100]();
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(v24, v25, v26, v27);
    return;
  }

  (*(*v35 + 48))(v35, &v29);
LABEL_40:
  if (v35 == v34)
  {
    (*(*v35 + 32))(v35);
  }

  else if (v35)
  {
    (*(*v35 + 40))(v35);
  }
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(uint64_t a1@<X0>, const char *a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  if (*a3)
  {
    if (swift::reflection::GenericTypeParameterTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, 0, 0))
    {
      operator new();
    }

    *(a4 + 16) = 1;
    *a4 = "Failed to read generic parameter type in runtime generic signature.";
    *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    return;
  }

  v5 = a4;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v6 = a3[1];
  if (!a3[1])
  {
    v39 = 0;
LABEL_67:
    GenericSignature = swift::reflection::TypeRefBuilder::createGenericSignature(v4 + 328, 0, 0, v39, (v6 - v39) >> 4);
    *(v5 + 16) = 0;
    *v5 = GenericSignature;
    if (!GenericSignature)
    {
      *v5 = "unknown error";
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(v5 + 16) = 1;
    }

LABEL_69:
    v41 = v139;
    if (v139)
    {
      goto LABEL_70;
    }

    return;
  }

  v7 = 0;
  v8 = *(a3 + 2);
  v49 = a1 + 328;
  v51 = 12 * v6;
  v52 = v8 + 8;
  while (1)
  {
    v9 = v52 + v7;
    if ((*(v52 + v7 - 8) & 0x1Fu) >= 6 && (*(v52 + v7 - 8) & 0x1F) != 31)
    {
      break;
    }

    v99[1] = 0;
    v99[2] = 0;
    v100 = 0;
    v101 = 2400;
    v102 = 0;
    v103 = 0;
    v99[0] = off_E13E8;
    v138 = 0;
    v105 = 0;
    v106 = 0;
    v104 = 0;
    v107 = 0;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0;
    SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v8 + v7 + *(v9 - 4) + 4), a2);
    v98 = 0;
    v14 = swift::Demangle::__runtime::Demangler::demangleType(v99, SymbolicMangledNameStringRef, v12, v97);
    if (v98 == v97)
    {
      (*(*v98 + 32))(v98);
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v98)
      {
        (*(*v98 + 40))();
      }

      if (!v14)
      {
        goto LABEL_29;
      }
    }

    v142 = v49;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v142, v14, 0, 0, &v55, v13);
    if (v57)
    {
      if (v57 == 1)
      {
        v56(v55, 3, 0);
      }

LABEL_28:
      LOBYTE(v14) = 0;
LABEL_29:
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v17 = "Failed to read subject type in requirement of runtime generic signature.";
      goto LABEL_30;
    }

    if (!v55)
    {
      goto LABEL_28;
    }

    v16 = *(v9 - 8) & 0x1F;
    if (v16 <= 2)
    {
      v46 = v8;
      if (v16)
      {
        if (v16 != 1)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 2400;
          v60 = 0;
          v61 = 0;
          v55 = off_E13E8;
          v96 = 0;
          v63 = 0;
          v64 = 0;
          v62 = 0;
          v65 = 0;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0;
          v18 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v8 + v7 + *(v52 + v7) + 8), v15);
          v20 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v8 + v7 + *(v52 + v7) + 8), v19);
          *&v53 = v18;
          *(&v53 + 1) = v42 & 0xFFFFFFFFFFFFFF00;
          v54 = v20;
          v145 = 0;
          swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v20, v21);
          operator new();
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = 2400;
        v60 = 0;
        v61 = 0;
        v55 = off_E13E8;
        v96 = 0;
        v63 = 0;
        v64 = 0;
        v62 = 0;
        v65 = 0;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0;
        v34 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v8 + v7 + *(v52 + v7) + 8), v15);
        v36 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v8 + v7 + *(v52 + v7) + 8), v35);
        *&v53 = v34;
        *(&v53 + 1) = v43 & 0xFFFFFFFFFFFFFF00;
        v54 = v36;
        v145 = 0;
        swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v36, v37);
        operator new();
      }

      v45 = v55;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 2400;
      v60 = 0;
      v61 = 0;
      v55 = off_E13E8;
      v96 = 0;
      v63 = 0;
      v64 = 0;
      v62 = 0;
      v65 = 0;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0;
      v22 = *a2;
      v23 = *(a2 + 8);
      v24 = *(a2 + 2);
      v25 = v46 + v7 + *a2 - v24;
      LODWORD(v53) = 0;
      v26 = (*(**(a1 + 2800) + 32))(*(a1 + 2800), v25 + 8, v23, &v53, 4);
      v27 = 0;
      v28 = 0;
      v29 = v44;
      if (v26)
      {
        v30 = v53;
        v31 = v53 & 0xFFFFFFFFFFFFFFFCLL;
        LODWORD(v53) = v53 & 0xFFFFFFFC;
        v32 = v46 + v7 + v22 + v31 - v24 + 8;
        v142 = v32;
        LOBYTE(v143) = v23;
        if ((v30 & 1) == 0)
        {
          goto LABEL_50;
        }

        v33 = v30;
        if ((*(**(a1 + 2800) + 96))(*(a1 + 2800)))
        {
          v32 = v142;
          v29 = v44;
          v30 = v33;
LABEL_50:
          v27 = v32 | (v30 >> 1) & 1;
          v28 = v143;
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = v44;
        }
      }

      v142 = v27;
      v143 = v27;
      v44 = v28 | v29 & 0xFFFFFFFFFFFFFF00;
      v144 = v44;
      v38 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver>(a1, &v142, &v55, v49);
      v14 = v38;
      if (v38)
      {
        *&v53 = v45 & 0xFFFFFFFFFFFFFFF8;
        *(&v53 + 1) = v38;
        std::vector<swift::reflection::TypeRefRequirement>::push_back[abi:nn200100](&v139, &v53);
        v5 = a4;
      }

      else
      {
        v5 = a4;
        *(a4 + 16) = 1;
        *a4 = "Failed to read protocol type in conformance requirement of runtime generic signature.";
        *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      }

      v8 = v46;
      v55 = off_E13E8;
      if (v96 == &v95)
      {
        (*(*v96 + 32))(v96);
      }

      else if (v96)
      {
        (*(*v96 + 40))();
      }

      v55 = off_E13C0;
      swift::Demangle::__runtime::NodeFactory::freeSlabs(v58);
      if (v60)
      {
        *(v60 + 48) = 0;
      }

      if (!v14)
      {
        goto LABEL_31;
      }

LABEL_65:
      LOBYTE(v14) = 1;
      goto LABEL_31;
    }

    if ((*(v9 - 8) & 0x1Fu) > 4)
    {
      if (v16 == 5)
      {
        LOBYTE(v14) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v17 = "Unexpected invertible protocol in runtime generic signature";
      }

      else
      {
        if (v16 != 31)
        {
          goto LABEL_65;
        }

        LOBYTE(v14) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v17 = "Unexpected layout requirement in runtime generic signature";
      }
    }

    else if (v16 == 3)
    {
      LOBYTE(v14) = 0;
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v17 = "Unexpected same conformance requirement in runtime generic signature";
    }

    else
    {
      if (v16 != 4)
      {
        goto LABEL_65;
      }

      LOBYTE(v14) = 0;
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v17 = "Unexpected same-shape requirement in runtime generic signature";
    }

LABEL_30:
    *v5 = v17;
LABEL_31:
    v99[0] = off_E13E8;
    if (v138 == &v137)
    {
      (*(*v138 + 32))(v138);
    }

    else if (v138)
    {
      (*(*v138 + 40))();
    }

    v99[0] = off_E13C0;
    swift::Demangle::__runtime::NodeFactory::freeSlabs(v100);
    if (v102)
    {
      *(v102 + 48) = 0;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_69;
    }

    v7 += 12;
    if (v51 == v7)
    {
      v39 = v139;
      v6 = v140;
      v4 = a1;
      goto LABEL_67;
    }
  }

  *(v5 + 16) = 1;
  *v5 = "unknown kind";
  *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
  v41 = v139;
  if (!v139)
  {
    return;
  }

LABEL_70:
  v140 = v41;
  operator delete(v41);
}

unsigned int *swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((v2 & 0x100) == 0)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 24) = 0;
    return result;
  }

  if ((v2 & 0x1000) != 0)
  {
    v3 = &swift::externalTargetImplicitGenericParamDescriptors(void)::buffer;
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = (((result + 27) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v2 >> 9) & 1) + 4 * ((v2 >> 10) & 1));
    if ((v2 & 0x800) == 0)
    {
      v3 += *(result + 4);
LABEL_7:
      v4 = *(result + 4);
      v5 = 1;
      goto LABEL_9;
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_9:
  v6 = *result & 0x1100;
  if (v6 == 256)
  {
    v7 = *(result + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = ((result + 27) & 0xFFFFFFFFFFFFFFFCLL) + 4 * ((v2 >> 9) & 1) + 4 * ((v2 >> 10) & 1);
  v9 = ((v8 + v7 + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 5);
  if ((v2 & 0x2000) != 0)
  {
    if (v5)
    {
      v12 = *(result + 4);
      if (v6 != 256)
      {
LABEL_16:
        v13 = 0;
LABEL_19:
        v14 = ((v8 + v13 + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 9);
        if (v5)
        {
          v15 = *(result + 4);
        }

        else
        {
          v15 = 0;
        }

        v10 = *(v14 + 12 * *(result + 5));
        if (v6 == 256)
        {
          v16 = *(result + 8);
        }

        else
        {
          v16 = 0;
        }

        v11 = ((v8 + v16 + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * *(result + 9) + 12 * *(result + 5) + 4;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = 0;
      if (v6 != 256)
      {
        goto LABEL_16;
      }
    }

    v13 = *(result + 8);
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
LABEL_26:
  *a2 = *(result + 2);
  *(a2 + 8) = v3;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void swift::reflection::TypeRefBuilder::createSubstitutionMap(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (a3 == v7 >> 3 && v6 != v5)
  {
    v12 = 0;
    do
    {
      v13 = 8 * v12;
      v14 = *(a2 + v13);
      v17 = *(*(*a1 + v13) + 12);
      v18 = 0;
      v15 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<unsigned int,unsigned int>>(a4, &v17, &v18);
      v16 = v18;
      if ((v15 & 1) == 0)
      {
        v16 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>,std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<unsigned int,unsigned int>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<unsigned int,unsigned int>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<unsigned int,unsigned int>>(a4, &v17, &v17, v18);
        *v16 = v17;
        *(v16 + 1) = 0;
      }

      *(v16 + 1) = v14;
      ++v12;
    }

    while (a3 != v12);
  }
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCClassName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, a2, a3);
  if (result)
  {
    v8 = 0;
    LOBYTE(v9) = 0;
    result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), result + 24, v7, &v8, 8);
    if (result)
    {
      if (v8)
      {
        return (*(**(a1 + 2800) + 16))(*(a1 + 2800), v8, v9, a4);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  v5 = *(a2 + 16);
  v6 = *v5;
  if (*v5 > 0x7FF)
  {
    LODWORD(v6) = 0;
  }

  if (v6 > 514)
  {
    if (v6 != 515 && v6 != 516)
    {
      return result;
    }

    return *(a1 + 2816) & v5[1];
  }

  if ((v6 - 512) < 3)
  {
    return *(a1 + 2816) & v5[1];
  }

  if (!v6)
  {
    if ((swift_reflection_classIsSwiftMask & v5[4]) != 0)
    {
      do
      {
        v9 = *(a1 + 2816);
        result = v9 & v5[8];
        if (result || a3 == 0)
        {
          break;
        }

        v11 = v5[1] & v9;
        if (!v11)
        {
          return 0;
        }

        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v11, 0, &v12);
        v5 = v14;
        if (!v14 || (*v14 - 2048) >= 0xFFFFFFFFFFFFF801)
        {
          return 0;
        }

        result = 0;
        *a2 = v12;
        *(a2 + 8) = v13;
        *(a2 + 16) = v5;
      }

      while ((swift_reflection_classIsSwiftMask & v5[4]) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 4);
  if (v9)
  {
    v10 = *a1;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    memset(v31, 0, sizeof(v31));
    {
      v30 = a2;
      __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>();
      a2 = v30;
    }

    v34 = __swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed;
    v11 = a2;
    v12 = (v9 - 1) & __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine<swift::remote::RemoteAddress,BOOL>(v31, 0, v31, v32, a2, (a2 + 16), a7, a8);
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = v10 + 32 * v12;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (*v11 == *v15 && v13 == v17 && v14 == v18)
    {
      result = 1;
    }

    else
    {
      v21 = 0;
      v22 = 1;
      result = 1;
      while (v16 != -1 || v17 || v18)
      {
        if (v21)
        {
          v24 = 0;
        }

        else
        {
          v24 = v18 == 0;
        }

        if (v24 && v17 == 0 && v16 == -2)
        {
          v21 = v15;
        }

        v27 = v12 + v22++;
        v12 = v27 & (v9 - 1);
        v15 = v10 + 32 * v12;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        if (*v11 == *v15 && v13 == v17 && v14 == v18)
        {
          goto LABEL_14;
        }
      }

      result = 0;
      if (v21)
      {
        v15 = v21;
      }
    }
  }

  else
  {
    v15 = 0;
    result = 0;
  }

LABEL_14:
  *a3 = v15;
  return result;
}

unint64_t __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine<swift::remote::RemoteAddress,BOOL>(__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unint64_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v20 = a2;
  v10 = *a5;
  {
    v19 = a3;
    v17 = a1;
    __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>();
    a1 = v17;
    v9 = a4;
    a3 = v19;
  }

  v11 = 0x9DDFEA08EB382D69 * ((__swift::__runtime::llvm::hashing::detail::get_execution_seed(void)::seed + 8 * v10) ^ HIDWORD(v10));
  v12 = 0x9DDFEA08EB382D69 * (HIDWORD(v10) ^ (v11 >> 47) ^ v11);
  v13 = a1;
  v14 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, a3, v9, 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47)));
  v21 = v20;
  v15 = __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned char>(v13, &v21, v14, v9, *a6);
  return __swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine(v13, v21, v15, v9);
}

void *__swift::__runtime::llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      __swift::__runtime::llvm::hashing::detail::hash_state::mix((a1 + 64), a1);
      v9 = *a2 + 64;
    }

    else
    {
      v10 = *(a1 + 120);
      v11 = __ROR8__(v10 ^ 0xB492B66FBE98F273, 49);
      v12 = v10 ^ (v10 >> 47);
      v13 = *(a1 + 8);
      v14 = v13 + v10 + v11;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = v17 + v11 - 0x4B6D499041670D8DLL * __ROR8__(v15 + v10 - 0x4B6D499041670D8DLL * v10, 42);
      v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
      v20 = 0x9DDFEA08EB382D69 * (v10 ^ (((0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))) ^ v10) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (0xB492B66FBE98F273 * v10))));
      v21 = 0x9DDFEA08EB382D69 * (v20 ^ (v20 >> 47));
      v22 = 0xB492B66FBE98F273 * __ROR8__(v12 - 0x622015F714C7D297 * (v19 ^ (v19 >> 47)), 33);
      v23 = *a1 - 0x6D8ED9027DD26057 * v10;
      v25 = *(a1 + 16);
      v24 = *(a1 + 24);
      v26 = v23 + v13 + v25;
      v27 = v21 ^ (0xB492B66FBE98F273 * __ROR8__(v14, 37));
      v28 = __ROR8__(v26, 44) + v23 + __ROR8__(v23 + v12 + v24 + v27, 21);
      v29 = v22 + *(a1 + 32) + v21;
      *(a1 + 64) = v22;
      *(a1 + 72) = v18;
      *(a1 + 80) = v27;
      *(a1 + 88) = v26 + v24;
      *(a1 + 96) = v28;
      *(a1 + 104) = v17 + v15 + v29 + v16;
      *(a1 + 112) = __ROR8__(v18 + v25 + v16 + v29, 21) + v29 + __ROR8__(v17 + v15 + v29, 44);
      v9 = 64;
    }

    *a2 = v9;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

uint64_t *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
  {
    goto LABEL_3;
  }

  v9 = a1;
  __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::grow(a1, v5);
  v16 = 0;
  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(v9, a3, &v16, v11, v12, v13, v14, v15);
  a1 = v9;
  a4 = v16;
LABEL_3:
  ++*(a1 + 2);
  if (*a4 != -1 || *(a4 + 8) != 0 || *(a4 + 16) != 0)
  {
    --*(a1 + 3);
  }

  return a4;
}

void __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::grow(uint64_t a1, int a2)
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
  buffer = __swift::__runtime::llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = &buffer[32 * v15];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        buffer[16] = 0;
        buffer += 32;
      }

      while (buffer != v16);
    }

    v17 = (32 * v3);
    if (v3)
    {
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        if ((*v19 != -1 || v20 != 0 || v21 != 0) && (*v19 != -2 || v20 != 0 || v21 != 0))
        {
          v30 = 0;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, v19, &v30, v10, v11, v12, v13, v14);
          v26 = v30;
          v27 = *v19;
          *(v30 + 8) = *(v19 + 8);
          *v26 = v27;
          *(v26 + 16) = *(v19 + 16);
          v26[3] = *(v19 + 24);
          ++*(a1 + 8);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
    }

    __swift::__runtime::llvm::deallocate_buffer(v4, v17, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v28 = *(a1 + 16);
    if (v28)
    {
      v29 = &buffer[32 * v28];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        buffer[16] = 0;
        buffer += 32;
      }

      while (buffer != v29);
    }
  }
}

int32x2_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata@<D0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4 > 0x100000)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return v9;
  }

  (*(**(result + 2800) + 24))(&v26);
  v10 = v26;
  if (!v26)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    goto LABEL_20;
  }

  *&v22 = a2;
  *(&v22 + 1) = a3;
  v26 = 0;
  v23 = v10;
  if (v28)
  {
    if (v28 == v27)
    {
      v25 = v24;
      (*(*v28 + 24))();
    }

    else
    {
      v25 = v28;
      v28 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>,swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>,__swift::__runtime::llvm::DenseMapInfo<swift::remote::RemoteAddress>,__swift::__runtime::llvm::detail::DenseMapPair<swift::remote::RemoteAddress,std::unique_ptr<void const,std::function<void ()(void const*)>>>>::try_emplace<std::unique_ptr<void const,std::function<void ()(void const*)>>>((result + 24), &v22, &v23, v21);
  v11 = v23;
  v23 = 0;
  if (v11)
  {
    v21[0] = v11;
    if (!v25)
    {
      goto LABEL_25;
    }

    (*(*v25 + 48))(v25, v21);
  }

  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
  }

  else if (v25)
  {
    (*(*v25 + 40))();
  }

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v10;
  v12 = v26;
  v26 = 0;
  if (!v12)
  {
    goto LABEL_20;
  }

  *&v22 = v12;
  if (!v28)
  {
LABEL_25:
    std::__throw_bad_function_call[abi:nn200100]();
    return __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  (*(*v28 + 48))(v28, &v22);
LABEL_20:
  if (v28 == v27)
  {
    (*(*v28 + 32))(v28);
  }

  else if (v28)
  {
    (*(*v28 + 40))();
  }

  return v9;
}

int32x2_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, a2, &v11, a4, a5, a6, a7, a8))
  {
    v10 = v11;
    *v11 = -2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

void *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v17[1] = 0;
  v17[2] = 0;
  v18 = 0;
  v19 = 2400;
  v20 = 0;
  v21 = 0;
  v56 = 0;
  v17[0] = off_E13E8;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v54 = 0;
  v11 = *a2;
  v4 = *(a2 + 2);
  v12 = v4;
  v5 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v11, v17, 50);
  if (v5)
  {
    if ((v6 = v5, (*v4 & 0x10) == 0) && (*v4 & 0x1F) != 3 || (Node = swift::Demangle::__runtime::NodeFactory::createNode(v17, 243), swift::Demangle::__runtime::Node::addChild(Node, v6, v17, v8, v9), (v6 = Node) != 0))
    {
      if (*(v6 + 8) == 243)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v13 = 0;
        operator new();
      }
    }
  }

  *a3 = 0;
  a3[56] = 0;
  v17[0] = off_E13E8;
  if (v56 == &v55)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))();
  }

  v17[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v18);
  if (v20)
  {
    *(v20 + 48) = 0;
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a3 + 2));
  if (!GenericContext)
  {
    goto LABEL_23;
  }

  v11 = *(GenericContext + 4);
  v12 = *(a3 + 2);
  v13 = *v12 & 0x1F;
  if ((v13 - 17) < 2)
  {
    LODWORD(v14) = 0;
    LOBYTE(v15) = 2;
    goto LABEL_4;
  }

  if (v13 != 16)
  {
LABEL_23:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  if (v12)
  {
    v17 = *(a3 + 2);
  }

  else
  {
    v17 = 0;
  }

  if ((*v17 & 0x20000000) != 0)
  {
    v22 = *a3;
    v23 = v12;
    v19 = a5;
    v20 = GenericContext;
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v22, &v24);
    GenericContext = v20;
    a5 = v19;
    v15 = v25 >> 3;
    v14 = (v25 >> 3) & 0xFFFFFF00;
    if (!v26)
    {
      LOBYTE(v15) = 0;
      LODWORD(v14) = 0;
    }

    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if ((*v17 & 0x10000000) != 0)
  {
    v18 = 0;
    v14 = 24;
  }

  else
  {
    v18 = v17[7];
    v14 = 32;
  }

  LODWORD(v15) = v18 - *(v17 + v14);
  LODWORD(v14) = v15 & 0xFFFFFF00;
LABEL_4:
  if (*(GenericContext + 2))
  {
    v21 = *(a2 + 8);
    v16 = *a2 + 8 * (v14 | v15);
    if ((GenericContext[12] & 0x3F) == 0 && GenericContext[12] < 0)
    {
      if (v11)
      {
        v24 = 0;
        LOBYTE(v25) = 0;
        if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), v16, v21, &v24, 8))
        {
          if (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v24, v25, 0, a4))
          {
            operator new();
          }
        }
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

void swift::reflection::TypeRefBuilder::createTypeDecl(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  swift::Demangle::__runtime::mangleNode(a1, 0);
  if (LODWORD(v13[0]))
  {
    *a3 = 0;
    *(a3 + 56) = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = __p;
  }

  v5 = a2[1];
  if (v5 != *a2)
  {
    if (((v5 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v7;
  }

  v12 = 1;
  *a3 = *&v8.__r_.__value_.__l.__data_;
  v6 = v8.__r_.__value_.__r.__words[2];
  memset(&v8, 0, sizeof(v8));
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 1;
  if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  operator delete(v7.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

__n128 std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E0E40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::operator()(uint64_t a1, __int128 *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()((a1 + 8), &v3, a3);
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()(uint64_t **a1, __int128 *a2, void *a3)
{
  v6 = *a1;
  v21 = *a2;
  v22 = *(a2 + 2);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readParentContextDescriptor(v6, &v21, v23);
  if (v26 == 1)
  {
    if (v23[0] != 1 || !v25)
    {
      goto LABEL_7;
    }

    v7 = a1[1];
    v21 = *__p;
    v22 = v25;
    v8 = *(v7 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      goto LABEL_27;
    }

    (*(*v8 + 48))(v8, &v21, a3);
    if (v26)
    {
LABEL_7:
      if ((v23[0] & 1) == 0 && SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a2 + 2));
  if (GenericContext && (**(a2 + 2) & 0x1Fu) - 16 <= 2)
  {
    v10 = a1[2];
    v11 = *(GenericContext + 2) - *a3;
    v13 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (v13 < v12)
    {
      *v13 = v11;
      v14 = (v13 + 1);
LABEL_24:
      *(v10 + 8) = v14;
      *a3 += *(a1[2][1] - 8);
      return;
    }

    v15 = *v10;
    v16 = v13 - *v10;
    v17 = v16 >> 3;
    v18 = (v16 >> 3) + 1;
    if (!(v18 >> 61))
    {
      v19 = v12 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      *(8 * v17) = v11;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      *v10 = 0;
      *(v10 + 8) = v14;
      *(v10 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }

      goto LABEL_24;
    }

LABEL_27:
    std::string::__throw_length_error[abi:nn200100]();
  }
}

_BYTE *swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(_DWORD *a1)
{
  v1 = *a1;
  if ((*a1 & 0x80) == 0)
  {
    return 0;
  }

  result = 0;
  v4 = v1 & 0x1F;
  if (v4 > 15)
  {
    switch(v4)
    {
      case 16:
        if (a1)
        {
          v8 = a1;
        }

        else
        {
          v8 = 0;
        }

        if ((*v8 & 0x80) != 0)
        {
          if (!v8)
          {
            v8 = 0;
          }

          return v8 + 48;
        }

        else
        {
          return 0;
        }

      case 17:
        if (a1)
        {
          v10 = a1;
        }

        else
        {
          v10 = 0;
        }

        if ((*v10 & 0x80) != 0)
        {
          if (!v10)
          {
            v10 = 0;
          }

          return v10 + 32;
        }

        else
        {
          return 0;
        }

      case 18:
        if (a1)
        {
          v6 = a1;
        }

        else
        {
          v6 = 0;
        }

        if ((*v6 & 0x80) != 0)
        {
          if (!v6)
          {
            v6 = 0;
          }

          return v6 + 32;
        }

        else
        {
          return 0;
        }
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        if (a1)
        {
          v7 = a1;
        }

        else
        {
          v7 = 0;
        }

        if ((*v7 & 0x80) == 0)
        {
          return 0;
        }

        if (!v7)
        {
          v7 = 0;
        }

        v11 = v7 + 12;
        break;
      case 2:
        if (a1)
        {
          v9 = a1;
        }

        else
        {
          v9 = 0;
        }

        if ((*v9 & 0x80) == 0)
        {
          return 0;
        }

        if (!v9)
        {
          v9 = 0;
        }

        v11 = v9 + 8;
        break;
      case 4:
        if (a1)
        {
          v5 = a1;
        }

        else
        {
          v5 = 0;
        }

        if ((*v5 & 0x80) == 0)
        {
          return 0;
        }

        if (!v5)
        {
          v5 = 0;
        }

        v11 = v5 + 8;
        break;
      default:
        return result;
    }

    return v11 - 4;
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  if (v5)
  {
    v6 = a2[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = *v6;
  if ((*v6 & 0x20000000) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 1;
    LODWORD(v11) = 10;
    v12 = 3;
    goto LABEL_6;
  }

  v19 = *a2;
  v20 = *(a2 + 8);
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v21);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(v21);
  if (!v24)
  {
    v25 = 0;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v25 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v24 - 2);
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_21:
  v26 = v21;
LABEL_24:
  if ((*v26 & 0x80) != 0)
  {
    if (v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = 0;
    }

    v27 = (*(v28 + 29) >> 2) & 1;
  }

  else
  {
    v27 = 0;
  }

  v29 = (TrailingObjectsImpl + 12 * v25 + 4 * v27 + 4 * swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(v21));
  if (v5)
  {
    v30 = v5;
  }

  else
  {
    v30 = 0;
  }

  v31 = *v29;
  v32 = v29 + v19 - v30 + v31;
  if (v31)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (v33 || (v34 = (*v7 >> 25) & 7, v35 = a1, swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>(a1, v34, v32, v20, &v35, &v36), v10 = v37, (v37 & 1) == 0))
  {
    v10 = 0;
    *a3 = 0;
    goto LABEL_40;
  }

  v12 = v36;
  v11 = HIDWORD(v36);
  LODWORD(v9) = v36 >> 8;
  v8 = *v7;
LABEL_6:
  v13 = v7[8];
  v14 = v13 + v11;
  v15 = (v12 | (v9 << 8)) + v13;
  v16 = (v8 & 0x10000000) == 0;
  if ((v8 & 0x10000000) != 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = v14;
  }

  if (v16)
  {
    v9 = v9;
  }

  else
  {
    v12 = v15;
    v9 = v15 >> 8;
  }

  if (v16)
  {
    v18 = 8 * v11;
  }

  else
  {
    v18 = -8 * v15;
  }

  *a3 = v12 | (v9 << 8) | (v17 << 32);
  *(a3 + 8) = v18;
LABEL_40:
  *(a3 + 16) = v10;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      *&v24 = 0;
      BYTE8(v24) = 0;
      v12 = result;
      if ((*(**(result + 2800) + 96))(*(result + 2800), a3, a4, &v24, 8))
      {
        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(v12, v24, *(&v24 + 1), &v26);
        if (v27)
        {
          if ((*v27 - 1) > 0x7FE)
          {
            if ((swift_reflection_classIsSwiftMask & *(v27 + 4)) != 0)
            {
              v13 = v27[15];
              v14 = v27[14] - v13;
              v15 = v13 >> 3;
              v16 = v13 >= 0x18;
              v17 = 3;
              if (v16)
              {
                v17 = v15;
              }

              v18 = 10;
              if ((v14 >> 3) > 0xAuLL)
              {
                v18 = (v14 >> 3);
              }

              v19 = v17 | (v18 << 32);
            }

            else
            {
              v19 = 0xA00000003;
              v14 = 80;
            }

            *a6 = v19;
            goto LABEL_29;
          }
        }
      }
    }

    goto LABEL_23;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_23;
    }

    v8 = a5;
    v9 = result;
    if (!(*(**(result + 2800) + 32))(*(result + 2800), a3, a4, &v26, 8))
    {
      goto LABEL_23;
    }

    v10 = 0;
    result = v9;
    v11 = *(v9 + 2816) & v26;
  }

  else
  {
    v11 = a3;
    v8 = a5;
    v10 = a4;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(result, v11, v10 | a4 & 0xFFFFFFFFFFFFFF00, &v24);
  if (!v25 || (v20 = *v25, (*v25 & 0x1F) != 0x10))
  {
LABEL_23:
    *a6 = 0;
    *(a6 + 16) = 0;
    return;
  }

  if ((v20 & 0x20000000) != 0)
  {
    v23 = *v8;
    v26 = v24;
    v27 = v25;
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(v23, &v26, a6);
    return;
  }

  v21 = *(v25 + 3);
  if ((v20 & 0x10000000) != 0)
  {
    v22 = -v25[6];
  }

  else
  {
    v22 = HIDWORD(v21) - v25[8];
  }

  v14 = 8 * v22;
  *a6 = v21;
LABEL_29:
  *(a6 + 8) = v14;
  *(a6 + 16) = 1;
}

void swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(swift::remote::RemoteAddress,BOOL,int)::ProtocolResolver::objcProtocol(size_t __len@<X2>, const void *a2@<X1>, std::string *a3@<X8>)
{
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v7) = __len;
    if (__len)
    {
      memmove(&__dst, a2, __len);
    }

    *(&__dst + __len) = 0;
    if (SHIBYTE(v7) < 0)
    {
      v5 = __dst;
      std::string::__init_copy_ctor_external(&v8, __dst, *(&__dst + 1));
      *a3 = v8;
      operator delete(v5);
      goto LABEL_12;
    }
  }

  else
  {
    __dst = 0uLL;
    v7 = 0;
  }

  *&a3->__r_.__value_.__l.__data_ = __dst;
  a3->__r_.__value_.__r.__words[2] = v7;
LABEL_12:
  a3[1].__r_.__value_.__s.__data_[0] = 1;
  a3[1].__r_.__value_.__s.__data_[8] = 1;
}

void std::vector<swift::reflection::TypeRefRequirement>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readProtocol<swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver>(uint64_t *a1, uint64_t a2, swift::Demangle::__runtime::NodeFactory *a3, uint64_t a4)
{
  v24 = a4;
  v6 = *a2;
  if ((v6 & 1) == 0)
  {
    if (!*(a2 + 16))
    {
      v6 &= a1[352];
    }

    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v6, *(a2 + 16), &v25);
    v8 = v26;
    if (v26 && (*__p = v25, v28 = v26, (v9 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, __p, a3, 50)) != 0) && ((v10 = v9, (*v8 & 0x10) == 0) && (*v8 & 0x1F) != 3 || (Node = swift::Demangle::__runtime::NodeFactory::createNode(a3, 243), swift::Demangle::__runtime::Node::addChild(Node, v10, a3, v12, v13), (v10 = Node) != 0)))
    {
      return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(&v24, v10);
    }

    else
    {
      return 0;
    }
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCProtocolName(a1, v6 & 0xFFFFFFFFFFFFFFFELL, *(a2 + 16), __p);
  if (SHIBYTE(v28) >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (SHIBYTE(v28) >= 0)
  {
    v16 = SHIBYTE(v28);
  }

  else
  {
    v16 = __p[1];
  }

  if (v16 >= 4 && *v15 == 1349801055)
  {
    v23 = 0;
    v18 = swift::Demangle::__runtime::Demangler::demangleSymbol(a3, v15, v16, v22);
    if (v23 == v22)
    {
      (*(*v23 + 32))(v23);
      if (v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v23)
      {
        (*(*v23 + 40))();
      }

      if (v18)
      {
LABEL_31:
        while (1)
        {
          v19 = *(v18 + 16);
          v20 = (v19 - 200) > 0x2F || ((1 << (v19 + 56)) & 0xC80000000001) == 0;
          if (v20 && v19 != 101)
          {
            break;
          }

          v21 = *(v18 + 18);
          if (v21 != 1)
          {
            if (v21 != 5 || *(v18 + 8) != 1)
            {
              goto LABEL_41;
            }

            v18 = *v18;
          }

          v18 = *v18;
        }

        result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(&v24, v18);
        goto LABEL_19;
      }
    }

LABEL_41:
    result = 0;
  }

  else
  {
    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::objcProtocol(&v24, v15, v16);
  }

LABEL_19:
  if (SHIBYTE(v28) < 0)
  {
    v17 = result;
    operator delete(__p[0]);
    return v17;
  }

  return result;
}

uint64_t swift::reflection::TypeRefBuilder::createGenericSignature(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    swift::reflection::TypeRefBuilder::makeGenericSignatureRef<llvm::ArrayRef<swift::reflection::GenericTypeParameterTypeRef const*>,llvm::ArrayRef<swift::reflection::TypeRefRequirement>>(a1, 0, 0, a4, a5);
  }

  if (*a2)
  {
    v5 = *(*a2 + 8) == 9;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    operator new();
  }

  return 0;
}

void *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(uint64_t *a1, uint64_t a2)
{
  swift::Demangle::__runtime::mangleNode(a2, 0);
  v5 = v16[0];
  if (LODWORD(v16[0]))
  {
    v6 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = __p;
  }

  size = v15.__r_.__value_.__l.__size_;
  v6 = v15.__r_.__value_.__r.__words[0];
  v14[0] = v15.__r_.__value_.__r.__words[2];
  *(v14 + 3) = *(&v15.__r_.__value_.__r.__words[2] + 3);
  v3 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v5)
  {
    return 0;
  }

LABEL_10:
  v8 = *a1;
  v11.__r_.__value_.__s.__data_[0] = 0;
  v13 = 0;
  if (v3 < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v6, size);
  }

  else
  {
    v11.__r_.__value_.__r.__words[0] = v6;
    v11.__r_.__value_.__l.__size_ = size;
    LODWORD(v11.__r_.__value_.__r.__words[2]) = v14[0];
    *(&v11.__r_.__value_.__r.__words[2] + 3) = *(v14 + 3);
    *(&v11.__r_.__value_.__s + 23) = v3;
  }

  v12 = 0;
  v13 = 1;
  result = swift::reflection::TypeRefBuilder::createProtocolTypeFromDecl(v8, &v11);
  if (v13 == 1 && SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = result;
    operator delete(v11.__r_.__value_.__l.__data_);
    result = v9;
  }

  if (v3 < 0)
  {
    v10 = result;
    operator delete(v6);
    return v10;
  }

  return result;
}

void *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::objcProtocol(uint64_t *a1, const void *a2, size_t __len)
{
  if (!a2)
  {
    memset(&__dst, 0, sizeof(__dst));
LABEL_10:
    v17 = __dst;
    size = __dst.__r_.__value_.__l.__size_;
    v5 = __dst.__r_.__value_.__r.__words[0];
    v16[0] = __dst.__r_.__value_.__r.__words[2];
    *(v16 + 3) = *(&__dst.__r_.__value_.__r.__words[2] + 3);
    v7 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    goto LABEL_12;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(&__dst, a2, __len);
  }

  __dst.__r_.__value_.__s.__data_[__len] = 0;
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v8 = __dst.__r_.__value_.__r.__words[0];
  std::string::__init_copy_ctor_external(&v17, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  size = v17.__r_.__value_.__l.__size_;
  v5 = v17.__r_.__value_.__r.__words[0];
  v16[0] = v17.__r_.__value_.__r.__words[2];
  *(v16 + 3) = *(&v17.__r_.__value_.__r.__words[2] + 3);
  v7 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  operator delete(v8);
LABEL_12:
  v9 = *a1;
  v12.__r_.__value_.__s.__data_[0] = 0;
  v14 = 0;
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v5, size);
  }

  else
  {
    v12.__r_.__value_.__r.__words[0] = v5;
    v12.__r_.__value_.__l.__size_ = size;
    LODWORD(v12.__r_.__value_.__r.__words[2]) = v16[0];
    *(&v12.__r_.__value_.__r.__words[2] + 3) = *(v16 + 3);
    *(&v12.__r_.__value_.__s + 23) = v7;
  }

  v13 = 1;
  v14 = 1;
  ProtocolTypeFromDecl = swift::reflection::TypeRefBuilder::createProtocolTypeFromDecl(v9, &v12);
  if (v14 == 1 && SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v7 < 0)
  {
    operator delete(v5);
  }

  return ProtocolTypeFromDecl;
}

void *swift::reflection::GenericSignatureRef::GenericSignatureRef(void *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (((8 * a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (a5)
  {
    if (((16 * a5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (!(*(**(a1 + 2800) + 32))(*(a1 + 2800), a2 + 32, a3, &v8, 8))
  {
    return 0;
  }

  v4 = v8 & *(a1 + 2816) & 0x7FFFFFFFFFF8;
  if (v4)
  {
    v7 = 0;
    if (!(*(**(a1 + 2800) + 32))(*(a1 + 2800), v4, 0, &v7, 4))
    {
      return 0;
    }

    if (v7 < 0)
    {
      if (!(*(**(a1 + 2800) + 32))(*(a1 + 2800), v4 + 8, 0, &v8, 8))
      {
        return 0;
      }

      v5 = *(a1 + 2816);
      v4 = v5 & v8;
      if (v5 & v8)
      {
        if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), v4 & 0xFFFFFFFFFFFFFFFELL, 0, &v8, 8))
        {
          return *(a1 + 2816) & v8;
        }

        return 0;
      }
    }
  }

  return v4;
}

uint64_t swift::reflection::ForeignClassTypeRef::create<swift::reflection::TypeRefBuilder>(uint64_t a1, char *a2)
{
  v2 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = a2[23];
  v5 = *(a2 + 1);
  if (v4 < 0)
  {
    a2 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  swift::reflection::TypeRefID::addString(&v11, a2, v6);
  v7 = std::__hash_table<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,std::__unordered_map_hasher<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Hash,swift::reflection::TypeRefID::Equal,true>,std::__unordered_map_equal<swift::reflection::TypeRefID,std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>,swift::reflection::TypeRefID::Equal,swift::reflection::TypeRefID::Hash,true>,std::allocator<std::__hash_value_type<swift::reflection::TypeRefID,swift::reflection::ObjCClassTypeRef const*>>>::find<swift::reflection::TypeRefID>((a1 + 1296), &v11);
  if (!v7)
  {
    if (v2[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v10, *v2, *(v2 + 1));
    }

    else
    {
      v10 = *v2;
    }

    operator new();
  }

  v8 = v7[5];
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v8;
}

void swift::reflection::ForeignClassTypeRef::~ForeignClassTypeRef(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
    v1 = vars8;
  }

  operator delete();
}

void **swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  *&v272 = a2;
  *(&v272 + 1) = a3;
  LOBYTE(v273) = a4;
  __src[0] = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v272, __src, a4, a5, a6, a7, a8) && __src[0] != (*a1 + 32 * *(a1 + 16)))
  {
    return *(__src[0] + 3);
  }

  v20 = __OFSUB__(v9, 1);
  v21 = (v9 - 1);
  if (v21 < 0 != v20)
  {
    return 0;
  }

  *__src = v272;
  v231 = v273;
  v232 = 0;
  v191.__r_.__value_.__r.__words[0] = 0;
  if ((__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, &v191, v14, v15, v16, v17, v18) & 1) == 0)
  {
    v22 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __src, __src, v191.__r_.__value_.__l.__data_);
    v23 = __src[1];
    *v22 = __src[0];
    *(v22 + 8) = v23;
    *(v22 + 16) = v231;
    v22[3] = v232;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v270);
  v28 = v271;
  if (!v271)
  {
    return 0;
  }

  v29 = __src;
  v30 = *v271;
  if (*v271 > 0x7FF)
  {
    LODWORD(v30) = 0;
  }

  if (v30 <= 770)
  {
    if (v30 <= 514)
    {
      if ((v30 - 512) < 3)
      {
        *__src = v270;
        v231 = v271;
        return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, __src, v21, 0);
      }

      if (!v30)
      {
        *__src = v270;
        v231 = v271;
        return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(a1, __src, v21, a4);
      }

      goto LABEL_46;
    }

    if ((v30 - 515) >= 2)
    {
      if (v30 == 769)
      {
        v231 = 0;
        __src[1] = 0;
        __src[0] = 0;
        std::vector<swift::reflection::TypeRef const*>::reserve(__src, v271[1]);
        v53 = *(v28 + 8);
        if (*(v28 + 8))
        {
          v54 = (v28 + 24);
          do
          {
            v56 = *v54;
            v54 += 2;
            result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v56, a3, 0, v21, v50, v51, v52);
            if (!result)
            {
              goto LABEL_166;
            }

            v57 = __src[1];
            if (__src[1] < v231)
            {
              *__src[1] = result;
              v55 = v57 + 8;
            }

            else
            {
              v58 = __src[0];
              v59 = __src[1] - __src[0];
              v60 = (__src[1] - __src[0]) >> 3;
              v61 = v60 + 1;
              if ((v60 + 1) >> 61)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              v62 = v231 - __src[0];
              if ((v231 - __src[0]) >> 2 > v61)
              {
                v61 = v62 >> 2;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFF8)
              {
                v63 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v63 = v61;
              }

              if (v63)
              {
                if (!(v63 >> 61))
                {
                  operator new();
                }

                goto LABEL_236;
              }

              *(8 * v60) = result;
              v55 = (8 * v60 + 8);
              memcpy(0, v58, v59);
              __src[0] = 0;
              __src[1] = v55;
              v231 = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            __src[1] = v55;
            --v53;
          }

          while (v53);
        }

        v80 = *(v28 + 16);
        memset(&v191, 0, sizeof(v191));
        if (v80 && !(*(**(a1 + 2800) + 16))(*(a1 + 2800), v80, a3, &v191))
        {
          result = 0;
        }

        else
        {
          memset(&v274, 0, sizeof(v274));
          v81 = std::string::find(&v191, 32, 0);
          if (v81 == -1)
          {
            v85 = 0;
            size = 0;
          }

          else
          {
            v82 = v81;
            v83 = 0;
            do
            {
              if ((v191.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v84 = &v191;
              }

              else
              {
                v84 = v191.__r_.__value_.__r.__words[0];
              }

              v229.__r_.__value_.__r.__words[0] = v84 + v83;
              v229.__r_.__value_.__l.__size_ = v82 - v83;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v274, &v229);
              v83 = v82 + 1;
              v82 = std::string::find(&v191, 32, v82 + 1);
            }

            while (v82 != -1);
            size = v274.__r_.__value_.__l.__size_;
            v85 = v274.__r_.__value_.__r.__words[0];
          }

          v123 = (size - v85) >> 4;
          v124 = __src[0];
          v125 = (__src[1] - __src[0]) >> 3;
          if (v125 > v123)
          {
            v126 = v123 + 1;
            do
            {
              *&v229.__r_.__value_.__l.__data_ = 0uLL;
              std::vector<__swift::__runtime::llvm::StringRef>::push_back[abi:nn200100](&v274, &v229);
              v124 = __src[0];
              v125 = (__src[1] - __src[0]) >> 3;
            }

            while (v125 > v126++);
            v85 = v274.__r_.__value_.__r.__words[0];
          }

          TupleType = swift::reflection::TypeRefBuilder::createTupleType(a1 + 328, v124, v125, v85, (v274.__r_.__value_.__l.__size_ - v85) >> 4);
          v135 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v272, v129, v130, v131, v132, v133, v134);
          result = TupleType;
          *v135 = TupleType;
          if (v274.__r_.__value_.__r.__words[0])
          {
            v274.__r_.__value_.__l.__size_ = v274.__r_.__value_.__r.__words[0];
            operator delete(v274.__r_.__value_.__l.__data_);
            result = TupleType;
          }
        }

        if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
        {
          v136 = result;
          operator delete(v191.__r_.__value_.__l.__data_);
          result = v136;
        }

LABEL_166:
        v44 = __src[0];
        if (!__src[0])
        {
          return result;
        }

        __src[1] = __src[0];
LABEL_178:
        v150 = result;
        operator delete(v44);
        return v150;
      }

      if (v30 == 770)
      {
        memset(&v191, 0, sizeof(v191));
        v38 = *(v271 + 4);
        if (*(v271 + 4))
        {
          v39 = v271 + 3;
          v40 = a3;
          v41 = v271 + 3;
          while (1)
          {
            v43 = *v41++;
            result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v43, v40, 0, v21, v25, v26, v27);
            if (!result)
            {
              goto LABEL_176;
            }

            __src[1] = 0;
            __src[0] = 0;
            v231 = result;
            if ((*(v28 + 8) & 0x2000000) != 0)
            {
              v42 = v39[*(v28 + 8)];
            }

            else
            {
              v42 = 0;
            }

            LODWORD(v232) = v42;
            std::vector<swift::Demangle::__runtime::FunctionParam<swift::reflection::TypeRef const*>>::push_back[abi:nn200100](&v191, __src);
            v39 = (v39 + 4);
            if (!--v38)
            {
              goto LABEL_145;
            }
          }
        }

        v40 = a3;
LABEL_145:
        result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v28 + 16), v40, 0, v21, v25, v26, v27);
        if (!result)
        {
          goto LABEL_176;
        }

        v116 = result;
        v117 = *(v28 + 8);
        if ((v117 & 0x80000000) != 0)
        {
          ExtendedFlags = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getExtendedFlags(v28);
        }

        else
        {
          ExtendedFlags = 0;
        }

        v119 = *(v28 + 8);
        if ((v119 & 0x10000000) != 0)
        {
          result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(((v28 + 8 * *(v28 + 8) + 4 * (*(v28 + 8) & ((*(v28 + 8) << 38) >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8) + 8 * ((*(v28 + 8) >> 27) & 1)), v40, 0, v21, v113, v114, v115);
          if (!result)
          {
            goto LABEL_176;
          }

          v121 = result;
          v119 = *(v28 + 8);
        }

        else
        {
          v121 = 0;
        }

        if ((v119 & 0x8000000) != 0)
        {
          v137 = *((v28 + 8 * v119 + 4 * (v119 & (v119 << 38 >> 63)) + 31) & 0xFFFFFFFFFFFFFFF8);
          if ((v137 - 1) >= 4)
          {
            v122 = 0;
          }

          else
          {
            v122 = v137;
          }
        }

        else
        {
          v122 = 0;
        }

        if (swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::hasThrownError(v28))
        {
          ThrownError = swift::TargetFunctionTypeMetadata<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getThrownError(v28);
          result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, ThrownError, v40, 0, v21, v139, v140, v141);
          if (!result)
          {
            goto LABEL_176;
          }
        }

        else
        {
          result = 0;
        }

        FunctionType = swift::reflection::TypeRefBuilder::createFunctionType(a1 + 328, v191.__r_.__value_.__l.__data_, (v191.__r_.__value_.__l.__size_ - v191.__r_.__value_.__r.__words[0]) >> 5, v116, v117, ExtendedFlags, v122, v121, result);
        v149 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v272, v143, v144, v145, v146, v147, v148);
        result = FunctionType;
        *v149 = FunctionType;
LABEL_176:
        v44 = v191.__r_.__value_.__r.__words[0];
        if (!v191.__r_.__value_.__r.__words[0])
        {
          return result;
        }

        v191.__r_.__value_.__l.__size_ = v191.__r_.__value_.__r.__words[0];
        goto LABEL_178;
      }

LABEL_46:
      v31 = swift::reflection::OpaqueTypeRef::get(v24);
      goto LABEL_47;
    }

    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v270, 0);
    if (!result)
    {
      return result;
    }

    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, result, v45, &v274);
    if (v274.__r_.__value_.__r.__words[2])
    {
      v231 = 0;
      __src[1] = 0;
      v232 = 0;
      v233 = 2400;
      v234 = 0;
      v235 = 0;
      v269 = 0;
      __src[0] = off_E13E8;
      v236 = 0;
      v238 = 0;
      v237 = 0;
      v239 = 0;
      v251 = 0u;
      v252 = 0u;
      v253 = 0u;
      v254 = 0u;
      v255 = 0u;
      v256 = 0u;
      v257 = 0u;
      v258 = 0u;
      v259 = 0u;
      v260 = 0u;
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v265 = 0u;
      v266 = 0u;
      v267 = 0u;
      v240 = 0u;
      v241 = 0u;
      v242 = 0u;
      v243 = 0u;
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      v268 = 0;
      v191 = v274;
      v46 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextMangling(a1, &v191, __src);
      if (v46 && *(v46 + 8) == 243)
      {
        swift::Demangle::__runtime::mangleNode(v46, 0);
        if (LODWORD(v191.__r_.__value_.__l.__data_))
        {
          v47 = 0;
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v229, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v229 = __p;
          }

          v47 = swift::reflection::ForeignClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, &v229);
          *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v272, v159, v160, v161, v162, v163, v164) = v47;
          if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v229.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v47 = 0;
      }

      swift::Demangle::__runtime::Demangler::~Demangler(__src);
      return v47;
    }

    return 0;
  }

  if (v30 > 774)
  {
    if ((v30 - 1280) < 2)
    {
LABEL_32:
      strcpy(__src, "Bo");
      HIBYTE(v231) = 2;
      result = swift::reflection::BuiltinTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
      goto LABEL_33;
    }

    if (v30 != 775)
    {
      if (v30 != 1024)
      {
        goto LABEL_46;
      }

      goto LABEL_32;
    }

    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(a1, *(a1 + 2816) & v271[1], 0, &v274);
    if (!v274.__r_.__value_.__r.__words[2])
    {
      return 0;
    }

    if ((*(v274.__r_.__value_.__r.__words[2] + 1) & 1) != 0 && *(v274.__r_.__value_.__r.__words[2] + 20))
    {
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, *(v28 + 16), a3, 0, v21, v64, v65, v66);
      if (result)
      {
        operator new();
      }

      return result;
    }

    v231 = 0;
    __src[1] = 0;
    v232 = 0;
    v233 = 2400;
    v234 = 0;
    v235 = 0;
    v269 = 0;
    __src[0] = off_E13E8;
    v236 = 0;
    v238 = 0;
    v237 = 0;
    v239 = 0;
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v255 = 0u;
    v256 = 0u;
    v257 = 0u;
    v258 = 0u;
    v259 = 0u;
    v260 = 0u;
    v261 = 0u;
    v262 = 0u;
    v263 = 0u;
    v264 = 0u;
    v265 = 0u;
    v266 = 0u;
    v267 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v268 = 0;
    v106 = *(v274.__r_.__value_.__r.__words[2] + 4);
    if (v106)
    {
      v107 = (v274.__r_.__value_.__r.__words[0] + v106 + 4);
    }

    else
    {
      v107 = 0;
    }

    if (v106)
    {
      v108 = v274.__r_.__value_.__s.__data_[8];
    }

    else
    {
      v108 = 0;
    }

    MangledName = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v107, v108, 0, __src);
    if (!MangledName)
    {
      goto LABEL_140;
    }

    v229.__r_.__value_.__r.__words[0] = a1 + 328;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v229, MangledName, 0, 0, &v191, v110);
    if (LOWORD(v191.__r_.__value_.__r.__words[2]))
    {
      if (LOWORD(v191.__r_.__value_.__r.__words[2]) == 1)
      {
        (v191.__r_.__value_.__l.__size_)(v191.__r_.__value_.__r.__words[0], 3, 0);
      }

      goto LABEL_140;
    }

    v111 = v191.__r_.__value_.__r.__words[0];
    if (!v191.__r_.__value_.__r.__words[0])
    {
      goto LABEL_141;
    }

    v228 = v274;
    swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v274.__r_.__value_.__r.__words[2], &v191);
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(a1, &v228, &v191, &v229);
    if (LOWORD(v229.__r_.__value_.__r.__words[2]))
    {
      if (LOWORD(v229.__r_.__value_.__r.__words[2]) == 1)
      {
        (v229.__r_.__value_.__l.__size_)(v229.__r_.__value_.__r.__words[0], 3, 0);
      }

      goto LABEL_140;
    }

    if (!v229.__r_.__value_.__r.__words[0])
    {
LABEL_140:
      v111 = 0;
      goto LABEL_141;
    }

    swift::reflection::TypeRefBuilder::createSubstitutionMap(v229.__r_.__value_.__l.__data_, 0, 0, &v229);
    if (!LODWORD(v229.__r_.__value_.__r.__words[1]))
    {
      v111 = 0;
      goto LABEL_233;
    }

    v111 = swift::reflection::TypeRef::subst(v111, a1 + 328, &v229);
    if (!v111)
    {
      goto LABEL_233;
    }

    v171 = *v274.__r_.__value_.__r.__words[2];
    if ((v171 & 0x200) == 0)
    {
      goto LABEL_232;
    }

    *&v191.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = 0;
    *&__p.__r_.__value_.__r.__words[1] = 0x960uLL;
    v193 = 0;
    v227 = 0;
    v191.__r_.__value_.__r.__words[0] = off_E13E8;
    v194 = 0;
    v195 = 0;
    v196 = 0;
    v197 = 0;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v172 = ((v274.__r_.__value_.__r.__words[2] + 8 * ((v171 >> 8) & 1) + 19) & 0xFFFFFFFFFFFFFFFCLL);
    v173 = v172 + v274.__r_.__value_.__r.__words[0] - v274.__r_.__value_.__r.__words[2];
    v226 = 0;
    v174 = *v172;
    v175 = (v173 + v174);
    if (v174)
    {
      v176 = v175;
    }

    else
    {
      v176 = 0;
    }

    if (v174)
    {
      v177 = v274.__r_.__value_.__s.__data_[8];
    }

    else
    {
      v177 = 0;
    }

    v178 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMangledName(a1, v176, v177, 0, &v191);
    if (!v178)
    {
      swift::Demangle::__runtime::Demangler::~Demangler(&v191);
      v111 = 0;
      goto LABEL_233;
    }

    for (i = v178; ; i = *v186)
    {
      if (*(i + 16) != 243)
      {
LABEL_231:
        swift::Demangle::__runtime::Demangler::~Demangler(&v191);
LABEL_232:
        *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v272, v165, v166, v167, v168, v169, v170) = v111;
LABEL_233:
        __swift::__runtime::llvm::deallocate_buffer(v229.__r_.__value_.__l.__data_, (16 * LODWORD(v229.__r_.__value_.__r.__words[2])), 8uLL);
LABEL_141:
        swift::Demangle::__runtime::Demangler::~Demangler(__src);
        return v111;
      }

      v180 = *(i + 18);
      v181 = i;
      if ((v180 - 1) >= 2)
      {
        if (v180 != 5 || !*(i + 8))
        {
          goto LABEL_231;
        }

        v181 = *i;
      }

      if (*(*v181 + 16) != 154)
      {
        goto LABEL_231;
      }

      v182 = i;
      if ((v180 - 1) >= 2)
      {
        if (v180 != 5 || !*(i + 8))
        {
          v183 = 0;
          goto LABEL_219;
        }

        v182 = *i;
      }

      v183 = *v182;
LABEL_219:
      v184 = *(v183 + 18);
      if ((v184 - 1) >= 2 && (v184 != 5 || !*(v183 + 8)))
      {
        goto LABEL_231;
      }

      v111 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, v111);
      v185 = *(i + 18);
      if ((v185 - 1) < 2)
      {
        goto LABEL_226;
      }

      if (v185 == 5 && *(i + 8))
      {
        i = *i;
LABEL_226:
        v186 = *i;
        goto LABEL_228;
      }

      v186 = 0;
LABEL_228:
      if (*(v186 + 18) - 1 >= 2)
      {
        v186 = *v186;
      }
    }
  }

  if (v30 > 772)
  {
    if (v30 != 773)
    {
      result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v271[1], a3, 0, v21, v25, v26, v27);
      if (!result)
      {
        return result;
      }

      v31 = swift::reflection::ExistentialMetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result);
LABEL_47:
      v48 = v31;
      v49 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v272, v32, v33, v34, v35, v36, v37);
      result = v48;
      *v49 = v48;
      return result;
    }

    v70 = v271[1];
    __src[1] = 0;
    __src[0] = 0;
    v231 = 0;
    ObjCClassName = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCClassName(a1, v70, a3, __src);
    result = 0;
    if (ObjCClassName)
    {
      v72 = swift::reflection::ObjCClassTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, __src);
      v79 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v272, v73, v74, v75, v76, v77, v78);
      result = v72;
      *v79 = v72;
    }

LABEL_33:
    if ((SHIBYTE(v231) & 0x80000000) == 0)
    {
      return result;
    }

    v44 = __src[0];
    goto LABEL_178;
  }

  if (v30 != 771)
  {
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v271[1], a3, 0, v21, v25, v26, v27);
    if (!result)
    {
      return result;
    }

    v31 = swift::reflection::MetatypeTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, result, 0);
    goto LABEL_47;
  }

  v67 = *(v271 + 2);
  if ((v67 & 0x40000000) != 0)
  {
    result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v271[2], a3, 0, v21, v25, v26, v27);
    if (!result)
    {
      return result;
    }

    v68 = result;
    v69 = 1;
  }

  else
  {
    v68 = 0;
    v69 = v67 >= 0;
  }

  v231 = 0;
  __src[1] = 0;
  v232 = 0;
  v233 = 2400;
  v234 = 0;
  v235 = 0;
  v269 = 0;
  __src[0] = off_E13E8;
  v236 = 0;
  v238 = 0;
  v237 = 0;
  v239 = 0;
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  v263 = 0u;
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v268 = 0;
  memset(&v229, 0, sizeof(v229));
  v87 = *(v28 + 12);
  if (v87)
  {
    v187 = v69;
    v88 = 0;
    v89 = (v28 + 8 * ((*(v28 + 8) >> 30) & 1) + 16);
    v90 = a3;
    v91 = 8 * v87;
    v188 = v68;
    v189 = a3;
    do
    {
      v92 = *v89 & 0xFFFFFFFFFFFFFFFELL;
      if (!v90)
      {
        v92 &= *(a1 + 2816);
      }

      swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v92, v90, &v274);
      v93 = v274.__r_.__value_.__r.__words[2];
      if (!v274.__r_.__value_.__r.__words[2])
      {
        goto LABEL_143;
      }

      v191 = v274;
      v94 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v191, __src, 50);
      if (!v94)
      {
        goto LABEL_143;
      }

      if ((*v93 & 0x10) != 0 || (*v93 & 0x1F) == 3)
      {
        v95 = v94;
        Node = swift::Demangle::__runtime::NodeFactory::createNode(__src, 243);
        swift::Demangle::__runtime::Node::addChild(Node, v95, __src, v97, v98);
        v94 = Node;
        if (!Node)
        {
          goto LABEL_143;
        }
      }

      swift::Demangle::__runtime::mangleNode(v94, 0);
      data = v191.__r_.__value_.__l.__data_;
      if (LODWORD(v191.__r_.__value_.__l.__data_))
      {
        v29 &= 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v274, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v274 = __p;
        }

        __sz = v274.__r_.__value_.__l.__size_;
        v29 = v274.__r_.__value_.__r.__words[0];
        LODWORD(v228.__r_.__value_.__l.__data_) = v274.__r_.__value_.__r.__words[2];
        *(v228.__r_.__value_.__r.__words + 3) = *(&v274.__r_.__value_.__r.__words[2] + 3);
        v8 = HIBYTE(v274.__r_.__value_.__r.__words[2]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (data)
      {
LABEL_143:
        v112 = 0;
        goto LABEL_185;
      }

      if (v88 >= v229.__r_.__value_.__r.__words[2])
      {
        v100 = v229.__r_.__value_.__r.__words[0];
        v101 = v88 - v229.__r_.__value_.__r.__words[0];
        v102 = 0xCCCCCCCCCCCCCCCDLL * ((v88 - v229.__r_.__value_.__r.__words[0]) >> 3) + 1;
        if (v102 > 0x666666666666666)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (0x999999999999999ALL * ((v229.__r_.__value_.__r.__words[2] - v229.__r_.__value_.__r.__words[0]) >> 3) > v102)
        {
          v102 = 0x999999999999999ALL * ((v229.__r_.__value_.__r.__words[2] - v229.__r_.__value_.__r.__words[0]) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v229.__r_.__value_.__r.__words[2] - v229.__r_.__value_.__r.__words[0]) >> 3) >= 0x333333333333333)
        {
          v103 = 0x666666666666666;
        }

        else
        {
          v103 = v102;
        }

        if (v103)
        {
          if (v103 <= 0x666666666666666)
          {
            operator new();
          }

LABEL_236:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v104 = 8 * ((v88 - v229.__r_.__value_.__r.__words[0]) >> 3);
        *v104 = 0;
        *(v104 + 32) = 0;
        if (v8 < 0)
        {
          std::string::__init_copy_ctor_external(v104, v29, __sz);
          v100 = v229.__r_.__value_.__r.__words[0];
          v101 = v229.__r_.__value_.__l.__size_ - v229.__r_.__value_.__r.__words[0];
        }

        else
        {
          *v104 = v29;
          *(v104 + 8) = __sz;
          *(v104 + 16) = v228.__r_.__value_.__l.__data_;
          *(v104 + 19) = *(v228.__r_.__value_.__r.__words + 3);
          *(v104 + 23) = v8;
        }

        *(v104 + 24) = 0;
        *(v104 + 32) = 1;
        v88 = v104 + 40;
        v105 = (v104 - v101);
        memcpy(v105, v100, v101);
        v229.__r_.__value_.__r.__words[0] = v105;
        v229.__r_.__value_.__r.__words[2] = 0;
        if (v100)
        {
          operator delete(v100);
        }

        v90 = v189;
      }

      else
      {
        *v88 = 0;
        *(v88 + 32) = 0;
        if (v8 < 0)
        {
          std::string::__init_copy_ctor_external(v88, v29, __sz);
        }

        else
        {
          *v88 = v29;
          *(v88 + 8) = __sz;
          *(v88 + 16) = v228.__r_.__value_.__l.__data_;
          *(v88 + 19) = *(v228.__r_.__value_.__r.__words + 3);
          *(v88 + 23) = v8;
        }

        *(v88 + 24) = 0;
        *(v88 + 32) = 1;
        v88 += 40;
      }

      v229.__r_.__value_.__l.__size_ = v88;
      if (v8 < 0)
      {
        operator delete(v29);
      }

      ++v89;
      v91 -= 8;
    }

    while (v91);
    v120 = v229.__r_.__value_.__r.__words[0];
    v68 = v188;
    v69 = v187;
  }

  else
  {
    v88 = 0;
    v120 = 0;
  }

  ProtocolCompositionType = swift::reflection::TypeRefBuilder::createProtocolCompositionType(a1 + 328, v120, 0xCCCCCCCCCCCCCCCDLL * ((v88 - v120) >> 3), v68, v69);
  v158 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::operator[](a1, &v272, v152, v153, v154, v155, v156, v157);
  v112 = ProtocolCompositionType;
  *v158 = ProtocolCompositionType;
LABEL_185:
  std::vector<std::optional<std::pair<std::string,BOOL>>>::~vector[abi:nn200100](&v229);
  swift::Demangle::__runtime::Demangler::~Demangler(__src);
  return v112;
}

int32x2_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata@<D0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(result + 24);
  v9 = *(result + 40);
  if (!v9)
  {
    v19 = 0;
LABEL_15:
    v12 = (v8 + 56 * v19);
    goto LABEL_16;
  }

  v34 = a2;
  v35[0] = a3;
  v10 = (v9 - 1) & __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v34, v35);
  v12 = (v8 + 56 * v10);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (a2 != *v12 || a3 != v14)
  {
    v16 = 1;
    while (v13 != -1 || v14)
    {
      v17 = v10 + v16++;
      v10 = v17 & (v9 - 1);
      v12 = (v8 + 56 * v10);
      v13 = *v12;
      v14 = *(v12 + 8);
      if (a2 == *v12 && a3 == v14)
      {
        goto LABEL_16;
      }
    }

    v8 = *(result + 24);
    v19 = *(result + 40);
    goto LABEL_15;
  }

LABEL_16:
  if (v12 != (*(result + 24) + 56 * *(result + 40)))
  {
    v20 = v12[2];
    *a4 = a2;
    a4[1] = a3;
    a4[2] = v20;
    return v11;
  }

  v40 = 0;
  if (((*(**(result + 2800) + 32))(*(result + 2800), a2, a3, &v40, 8) & 1) == 0)
  {
    goto LABEL_67;
  }

  v21 = v40;
  if (v40 > 0x7FF)
  {
    v21 = 0;
  }

  if (v21 <= 770)
  {
    if (v21 <= 514)
    {
      if (v21 <= 512)
      {
        if (!v21)
        {
          v28 = a4;
          v29 = result;
          v30 = a2;
          v31 = a3;
          v27 = 56;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
        }

        if (v21 != 512)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_52;
    }

    if (v21 <= 768)
    {
      if (v21 == 515)
      {
        v28 = a4;
        v29 = result;
        v30 = a2;
        v31 = a3;
        v27 = 32;
        return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
      }

      if (v21 != 516)
      {
        goto LABEL_68;
      }

      goto LABEL_53;
    }

    if (v21 != 769)
    {
      v34 = 0;
      if ((*(**(result + 2800) + 32))(*(result + 2800), a2 + 8, a3, &v34, 8))
      {
        v22 = 4 * v34;
        if ((v34 & 0x2000000) == 0)
        {
          v22 = 0;
        }

        v23 = v22 + 8 * v34;
        v24 = v23 + 24;
        v25 = ((v23 + 31) & 0x1FFFF8) + 8;
        if ((v34 & 0x8000000) != 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = v24;
        }

        v27 = (v26 + 7) & 0xFFFFF8;
        goto LABEL_70;
      }

LABEL_67:
      *a4 = 0;
      *(a4 + 8) = 0;
      a4[2] = 0;
      return v11;
    }

    v34 = 0;
    if (((*(**(result + 2800) + 32))(*(result + 2800), a2 + 8, a3, &v34, 8) & 1) == 0 || v34 >= 0x100)
    {
      goto LABEL_67;
    }

    v27 = 16 * v34 + 24;
LABEL_70:
    v28 = a4;
    v29 = result;
    v30 = a2;
    v31 = a3;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
  }

  if (v21 > 774)
  {
    if (v21 > 1279)
    {
      if (v21 != 1280)
      {
        if (v21 != 1281)
        {
LABEL_68:
          v28 = a4;
          v29 = result;
          v30 = a2;
          v31 = a3;
          v27 = 8;
          return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v21 == 775)
      {
        v38 = 0;
        v39 = 0;
        if (((*(**(result + 2800) + 96))(*(result + 2800), a2 + 8, a3, &v38, 8) & 1) == 0)
        {
          goto LABEL_67;
        }

        v33 = v38;
        if (!v39)
        {
          v33 = *(result + 2816) & v38;
        }

        swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readShape(result, v33, v39, v36);
        if (!v37)
        {
          goto LABEL_67;
        }

        swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGeneralizationSignature(v37, &v34);
        v27 = 8 * WORD2(v34) + 16;
        goto LABEL_70;
      }

      if (v21 != 1024)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_53;
  }

  if (v21 > 772)
  {
    if (v21 == 773)
    {
      goto LABEL_52;
    }

LABEL_53:
    v28 = a4;
    v29 = result;
    v30 = a2;
    v31 = a3;
    v27 = 24;
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
  }

  if (v21 == 771)
  {
    LODWORD(v34) = 0;
    if (((*(**(result + 2800) + 32))(*(result + 2800), a2 + 8, a3, &v34, 4) & 1) == 0)
    {
      goto LABEL_67;
    }

    v32 = v34;
    v36[0] = 0;
    if (((*(**(result + 2800) + 32))(*(result + 2800), a2 + 12, a3, v36, 4) & 1) == 0 || v36[0] >= 0x100u)
    {
      goto LABEL_67;
    }

    v27 = ((v32 >> 27) & 8) + 8 * v36[0] + 16;
    goto LABEL_70;
  }

LABEL_52:
  v28 = a4;
  v29 = result;
  v30 = a2;
  v31 = a3;
  v27 = 16;
  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::_readMetadata(v29, v30, v31, v27, v28);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromClassMetadata(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v6 = *a2;
  v7 = v4;
  return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(a1, &v6, a3, a4);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readNominalTypeFromMetadata(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v63 = *a2;
  v64 = *(a2 + 2);
  result = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, &v63, a4);
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (v4 && (v63 != *a2 || BYTE8(v63) != *(a2 + 8)))
  {
    v53 = v63;
    v54 = BYTE8(v63);
    v55 = v4;
    *&v61 = 0;
    v21 = v9;
    v22 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v53, &v61, v10, v11, v12, v13, v14);
    v9 = v21;
    if (v22)
    {
      v28 = v61;
      if (v61 != *a1 + 32 * *(a1 + 16))
      {
        v29 = *(a2 + 1);
        v53 = *a2;
        v54 = v29;
        v55 = v4;
        *&v61 = 0;
        if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, &v53, &v61, v23, v24, v25, v26, v27))
        {
          v30 = v61;
          *v61 = -2;
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
          *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
        }

        return *(v28 + 24);
      }
    }
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(a1, v15, v9, &v61);
  if (!v62)
  {
    return 0;
  }

  *__p = v61;
  v52 = v62;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(a1, __p, &v53);
  if (v60 != 1)
  {
    goto LABEL_26;
  }

  if ((*v62 & 0x80) == 0)
  {
    result = swift::reflection::NominalTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, &v53, 0);
    goto LABEL_19;
  }

  v49 = v63;
  v50 = v64;
  v47 = v61;
  v48 = v62;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(a1, &v49, &v47, a3, __p);
  v31 = __p[0];
  v32 = __p[1];
  if (__p[0] != __p[1])
  {
    *&v49 = __p[0];
    *(&v49 + 1) = (__p[1] - __p[0]) >> 3;
    result = swift::reflection::TypeRefBuilder::createBoundGenericType(a1 + 328, &v53, &v49);
    v33 = __p[0];
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  result = 0;
  v33 = __p[0];
  if (__p[0])
  {
LABEL_17:
    __p[1] = v33;
    v34 = result;
    operator delete(v33);
    result = v34;
  }

LABEL_18:
  if (v31 != v32)
  {
LABEL_19:
    if (result)
    {
      v35 = result;
      __p[0] = v63;
      LOBYTE(__p[1]) = BYTE8(v63);
      LOBYTE(v52) = v4;
      *&v49 = 0;
      v36 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, &v49, v16, v17, v18, v19, v20);
      v42 = v49;
      if ((v36 & 1) == 0)
      {
        v42 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,BOOL>>(a1, __p, __p, v49);
        v43 = __p[1];
        *v42 = __p[0];
        *(v42 + 8) = v43;
        *(v42 + 16) = v52;
        v42[3] = 0;
      }

      result = v35;
      v42[3] = v35;
      if (v4)
      {
        v44 = *(a2 + 8);
        if (v63 != *a2 || BYTE8(v63) != v44)
        {
          __p[0] = *a2;
          LOBYTE(__p[1]) = v44;
          LOBYTE(v52) = v4;
          __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>,std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*,swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::DenseMapInfoTypeCacheKey,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,BOOL>,swift::reflection::TypeRef const*>>::erase(a1, __p, v37, v42, v38, v39, v40, v41);
          result = v35;
        }
      }
    }

    goto LABEL_27;
  }

LABEL_26:
  result = 0;
LABEL_27:
  if (v60 == 1)
  {
    if (v59 == 1 && v57)
    {
      v58 = v57;
      v45 = result;
      operator delete(v57);
      result = v45;
    }

    if (v56 < 0)
    {
      v46 = result;
      operator delete(v53);
      return v46;
    }
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(uint64_t a1@<X0>, const char *a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v5 = a4;
  if (*a3)
  {
    if (swift::reflection::GenericTypeParameterTypeRef::create<swift::reflection::TypeRefBuilder>(a1 + 328, 0, 0))
    {
      operator new();
    }

    *(a4 + 16) = 1;
    *a4 = "Failed to read generic parameter type in runtime generic signature.";
    *(a4 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    return;
  }

  v144 = 0;
  v145 = 0;
  v146 = 0;
  v6 = a3[1];
  if (!a3[1])
  {
    v45 = 0;
LABEL_78:
    GenericSignature = swift::reflection::TypeRefBuilder::createGenericSignature(v4 + 328, 0, 0, v45, (v6 - v45) >> 4);
    *(v5 + 16) = 0;
    *v5 = GenericSignature;
    if (!GenericSignature)
    {
      *v5 = "unknown error";
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      *(v5 + 16) = 1;
    }

LABEL_80:
    v47 = v144;
    if (v144)
    {
      goto LABEL_81;
    }

    return;
  }

  v7 = 0;
  v8 = *(a3 + 2);
  v58 = 12 * v6;
  v59 = v8 + 8;
  while (1)
  {
    v9 = v59 + v7;
    if ((*(v59 + v7 - 8) & 0x1Fu) >= 6 && (*(v59 + v7 - 8) & 0x1F) != 31)
    {
      break;
    }

    v104[1] = 0;
    v104[2] = 0;
    v105 = 0;
    v106 = 2400;
    v107 = 0;
    v108 = 0;
    v104[0] = off_E13E8;
    v143 = 0;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    v112 = 0;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0;
    SymbolicMangledNameStringRef = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v8 + v7 + *(v9 - 4) + 4), a2);
    v103 = 0;
    v14 = swift::Demangle::__runtime::Demangler::demangleType(v104, SymbolicMangledNameStringRef, v12, v102);
    if (v103 == v102)
    {
      (*(*v103 + 32))(v103);
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v103)
      {
        (*(*v103 + 40))();
      }

      if (!v14)
      {
        goto LABEL_29;
      }
    }

    *&v148 = v4 + 328;
    swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v148, v14, 0, 0, &v60, v13);
    if (v62)
    {
      if (v62 == 1)
      {
        v61(v60, 3, 0);
      }

LABEL_28:
      LOBYTE(v14) = 0;
LABEL_29:
      *(v5 + 16) = 1;
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
      v17 = "Failed to read subject type in requirement of runtime generic signature.";
LABEL_30:
      *v5 = v17;
      goto LABEL_31;
    }

    if (!v60)
    {
      goto LABEL_28;
    }

    v16 = *(v9 - 8) & 0x1F;
    if (v16 > 2)
    {
      if ((*(v9 - 8) & 0x1Fu) > 4)
      {
        if (v16 == 5)
        {
          LOBYTE(v14) = 0;
          *(v5 + 16) = 1;
          *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          v17 = "Unexpected invertible protocol in runtime generic signature";
        }

        else
        {
          if (v16 != 31)
          {
            goto LABEL_76;
          }

          LOBYTE(v14) = 0;
          *(v5 + 16) = 1;
          *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
          v17 = "Unexpected layout requirement in runtime generic signature";
        }
      }

      else if (v16 == 3)
      {
        LOBYTE(v14) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v17 = "Unexpected same conformance requirement in runtime generic signature";
      }

      else
      {
        if (v16 != 4)
        {
          goto LABEL_76;
        }

        LOBYTE(v14) = 0;
        *(v5 + 16) = 1;
        *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
        v17 = "Unexpected same-shape requirement in runtime generic signature";
      }

      goto LABEL_30;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 2400;
        v65 = 0;
        v66 = 0;
        v60 = off_E13E8;
        v101 = 0;
        v68 = 0;
        v69 = 0;
        v67 = 0;
        v70 = 0;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v18 = v8 + v7;
        v99 = 0;
        v48 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v18 + *(v59 + v7) + 8), v15);
        v20 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v18 + *(v59 + v7) + 8), v19);
        *&v150 = v48;
        *(&v150 + 1) = v50 & 0xFFFFFFFFFFFFFF00;
        v151 = v20;
        LOBYTE(v147) = 0;
        swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v20, v21);
        operator new();
      }

      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 2400;
      v65 = 0;
      v66 = 0;
      v60 = off_E13E8;
      v101 = 0;
      v68 = 0;
      v69 = 0;
      v67 = 0;
      v70 = 0;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v30 = v8 + v7;
      v99 = 0;
      v49 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v30 + *(v59 + v7) + 8), v15);
      v32 = swift::Demangle::__runtime::makeSymbolicMangledNameStringRef((v30 + *(v59 + v7) + 8), v31);
      *&v150 = v49;
      *(&v150 + 1) = v51 & 0xFFFFFFFFFFFFFF00;
      v151 = v32;
      LOBYTE(v147) = 0;
      swift::Demangle::__runtime::makeSymbolicMangledNameStringRef(v32, v33);
      operator new();
    }

    v52 = v60;
    v56 = v5;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 2400;
    v65 = 0;
    v66 = 0;
    v60 = off_E13E8;
    v101 = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    v70 = 0;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
    v22 = v8;
    v23 = *a2;
    v24 = *(a2 + 8);
    v25 = *(a2 + 2);
    v53 = v22;
    v26 = v22 + v7;
    v27 = v22 + v7 + *a2 - v25;
    LODWORD(v150) = 0;
    if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), v27 + 8, v24, &v150, 4))
    {
      v28 = v150;
      LODWORD(v150) = v150 & 0xFFFFFFFC;
      v29 = v26 + v23 + (v28 & 0xFFFFFFFFFFFFFFFCLL) - v25 + 8;
      *&v148 = v29;
      BYTE8(v148) = v24;
      if ((v28 & 1) == 0)
      {
        v5 = v56;
        goto LABEL_55;
      }

      v5 = v56;
      if ((*(**(a1 + 2800) + 96))(*(a1 + 2800)))
      {
        v29 = v148;
LABEL_55:
        v36 = BYTE8(v148);
        v34 = v29 & 0xFFFFFFFFFFFFFFFELL;
        v35 = a1;
        v147 = v4 + 328;
        if (BYTE8(v148))
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v34 = 0;
      v35 = a1;
      v147 = v4 + 328;
    }

    else
    {
      v34 = 0;
      v35 = a1;
      v147 = v4 + 328;
      v5 = v56;
    }

LABEL_58:
    v36 = 0;
    v34 &= *(v35 + 2816);
LABEL_59:
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v35, v34, v36, &v150);
    v37 = v151;
    if (v151 && (v148 = v150, v149 = v151, (v38 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v35, &v148, &v60, 50)) != 0) && ((v39 = v38, (*v37 & 0x10) == 0) && (*v37 & 0x1F) != 3 || (v40 = swift::Demangle::__runtime::NodeFactory::createNode(&v60, 243), swift::Demangle::__runtime::Node::addChild(v40, v39, &v60, v41, v42), (v39 = v40) != 0)) && (v43 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::decodeRuntimeGenericSignature(swift::remote::RemoteRef<swift::TargetExtendedExistentialTypeShape<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const>,swift::RuntimeGenericSignature<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>> const&)::ProtocolReferenceResolver::swiftProtocol(&v147, v39)) != 0)
    {
      *&v148 = v52 & 0xFFFFFFFFFFFFFFF8;
      *(&v148 + 1) = v43;
      std::vector<swift::reflection::TypeRefRequirement>::push_back[abi:nn200100](&v144, &v148);
      v44 = 0;
    }

    else
    {
      v44 = 1;
      *(v5 + 16) = 1;
      *v5 = "Failed to read protocol type in conformance requirement of runtime generic signature.";
      *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
    }

    v60 = off_E13E8;
    if (v101 == &v100)
    {
      (*(*v101 + 32))(v101);
    }

    else if (v101)
    {
      (*(*v101 + 40))();
    }

    v60 = off_E13C0;
    swift::Demangle::__runtime::NodeFactory::freeSlabs(v63);
    if (v65)
    {
      *(v65 + 48) = 0;
    }

    if ((v44 & 1) == 0)
    {
      v8 = v53;
LABEL_76:
      LOBYTE(v14) = 1;
      goto LABEL_31;
    }

    LOBYTE(v14) = 0;
    v8 = v53;
LABEL_31:
    v104[0] = off_E13E8;
    if (v143 == &v142)
    {
      (*(*v143 + 32))(v143);
    }

    else if (v143)
    {
      (*(*v143 + 40))();
    }

    v104[0] = off_E13C0;
    swift::Demangle::__runtime::NodeFactory::freeSlabs(v105);
    if (v107)
    {
      *(v107 + 48) = 0;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_80;
    }

    v7 += 12;
    if (v58 == v7)
    {
      v45 = v144;
      v6 = v145;
      v4 = a1;
      goto LABEL_78;
    }
  }

  *(v5 + 16) = 1;
  *v5 = "unknown kind";
  *(v5 + 8) = swift::TypeLookupError::TypeLookupError(char const*)::{lambda(void *,swift::TypeLookupError::Command,void *)#1}::__invoke;
  v47 = v144;
  if (!v144)
  {
    return;
  }

LABEL_81:
  v145 = v47;
  operator delete(v47);
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  v5 = *(a2 + 16);
  v6 = *v5;
  if (*v5 > 0x7FF)
  {
    LODWORD(v6) = 0;
  }

  if (v6 > 514)
  {
    if (v6 != 515 && v6 != 516)
    {
      return result;
    }

    return *(a1 + 2816) & v5[1];
  }

  if ((v6 - 512) < 3)
  {
    return *(a1 + 2816) & v5[1];
  }

  if (!v6)
  {
    v7 = *(a1 + 2816);
    result = v7 & v5[5];
    if (!result && a3 != 0)
    {
      while (1)
      {
        v10 = v5[1] & v7;
        if (!v10)
        {
          break;
        }

        swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v10, 0, &v11);
        v5 = v13;
        if (!v13 || (*v13 - 2048) >= 0xFFFFFFFFFFFFF801)
        {
          break;
        }

        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v5;
        v7 = *(a1 + 2816);
        result = v7 & v5[5];
        if (result)
        {
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

void *swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v17[1] = 0;
  v17[2] = 0;
  v18 = 0;
  v19 = 2400;
  v20 = 0;
  v21 = 0;
  v56 = 0;
  v17[0] = off_E13E8;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v54 = 0;
  v11 = *a2;
  v4 = *(a2 + 2);
  v12 = v4;
  v5 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(a1, &v11, v17, 50);
  if (v5)
  {
    if ((v6 = v5, (*v4 & 0x10) == 0) && (*v4 & 0x1F) != 3 || (Node = swift::Demangle::__runtime::NodeFactory::createNode(v17, 243), swift::Demangle::__runtime::Node::addChild(Node, v6, v17, v8, v9), (v6 = Node) != 0))
    {
      if (*(v6 + 8) == 243)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v13 = 0;
        operator new();
      }
    }
  }

  *a3 = 0;
  a3[56] = 0;
  v17[0] = off_E13E8;
  if (v56 == &v55)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))();
  }

  v17[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v18);
  if (v20)
  {
    *(v20 + 48) = 0;
  }

  return result;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getGenericSubst(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a3 + 2));
  if (!GenericContext)
  {
    goto LABEL_23;
  }

  v11 = *(GenericContext + 4);
  v12 = *(a3 + 2);
  v13 = *v12 & 0x1F;
  if ((v13 - 17) < 2)
  {
    LODWORD(v14) = 0;
    LOBYTE(v15) = 2;
    goto LABEL_4;
  }

  if (v13 != 16)
  {
LABEL_23:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  if (v12)
  {
    v20 = *(a3 + 2);
  }

  else
  {
    v20 = 0;
  }

  if ((*v20 & 0x20000000) != 0)
  {
    v25 = *a3;
    v26 = v12;
    v22 = a5;
    v23 = GenericContext;
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(a1, &v25, &v27);
    GenericContext = v23;
    a5 = v22;
    v15 = v28 >> 3;
    v14 = (v28 >> 3) & 0xFFFFFF00;
    if (!v29)
    {
      LOBYTE(v15) = 0;
      LODWORD(v14) = 0;
    }

    if (v29)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if ((*v20 & 0x10000000) != 0)
  {
    v21 = 0;
    v14 = 24;
  }

  else
  {
    v21 = v20[7];
    v14 = 32;
  }

  LODWORD(v15) = v21 - *(v20 + v14);
  LODWORD(v14) = v15 & 0xFFFFFF00;
LABEL_4:
  if (*(GenericContext + 2))
  {
    v24 = *(a2 + 8);
    v16 = *a2 + 8 * (v14 | v15);
    if ((GenericContext[12] & 0x3F) == 0 && GenericContext[12] < 0)
    {
      if (v11)
      {
        v27 = 0;
        LOBYTE(v28) = 0;
        if ((*(**(a1 + 2800) + 96))(*(a1 + 2800), v16, v24, &v27, 8))
        {
          if (swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v27, v28, 0, a4, v17, v18, v19))
          {
            operator new();
          }
        }
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }
}

__n128 std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = off_E0EA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1},std::allocator<std::optional<swift::reflection::TypeRefDecl> swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}>,void ()(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)>::operator()(uint64_t a1, __int128 *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()((a1 + 8), &v3, a3);
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildNominalTypeDecl<swift::reflection::TypeRefBuilder,true>(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>,unsigned long &)#1}::operator()(uint64_t *a1, __int128 *a2, void *a3)
{
  v6 = *a1;
  v21 = *a2;
  v22 = *(a2 + 2);
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readParentContextDescriptor(v6, &v21, v23);
  if (v26 == 1)
  {
    if (v23[0] != 1 || !v25)
    {
      goto LABEL_7;
    }

    v7 = a1[1];
    v21 = *__p;
    v22 = v25;
    v8 = *(v7 + 24);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      goto LABEL_27;
    }

    (*(*v8 + 48))(v8, &v21, a3);
    if (v26)
    {
LABEL_7:
      if ((v23[0] & 1) == 0 && SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  GenericContext = swift::TargetContextDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getGenericContext(*(a2 + 2));
  if (GenericContext && (**(a2 + 2) & 0x1Fu) - 16 <= 2)
  {
    v10 = a1[2];
    v11 = *(GenericContext + 2) - *a3;
    v13 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (v13 < v12)
    {
      *v13 = v11;
      v14 = (v13 + 1);
LABEL_24:
      *(v10 + 8) = v14;
      *a3 += *(*(a1[2] + 8) - 8);
      return;
    }

    v15 = *v10;
    v16 = v13 - *v10;
    v17 = v16 >> 3;
    v18 = (v16 >> 3) + 1;
    if (!(v18 >> 61))
    {
      v19 = v12 - v15;
      if (v19 >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      *(8 * v17) = v11;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      *v10 = 0;
      *(v10 + 8) = v14;
      *(v10 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }

      goto LABEL_24;
    }

LABEL_27:
    std::string::__throw_length_error[abi:nn200100]();
  }
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[2];
  if (v5)
  {
    v6 = a2[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = *v6;
  if ((*v6 & 0x20000000) == 0)
  {
    LODWORD(v9) = 0;
    v10 = 1;
    LODWORD(v11) = 7;
    v12 = 3;
    goto LABEL_6;
  }

  v19 = *a2;
  v20 = *(a2 + 8);
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  TrailingObjectsImpl = swift::ABI::trailing_objects_internal::TrailingObjectsImpl<4,swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getTrailingObjectsImpl(v21);
  ConditionalInvertibleProtocolRequirementCounts = swift::TrailingGenericContextObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::getConditionalInvertibleProtocolRequirementCounts(v21);
  if (!v24)
  {
    v25 = 0;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v25 = *(ConditionalInvertibleProtocolRequirementCounts + 2 * v24 - 2);
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_21:
  v26 = v21;
LABEL_24:
  if ((*v26 & 0x80) != 0)
  {
    if (v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = 0;
    }

    v27 = (*(v28 + 29) >> 2) & 1;
  }

  else
  {
    v27 = 0;
  }

  v29 = (TrailingObjectsImpl + 12 * v25 + 4 * v27 + 4 * swift::ABI::TrailingObjects<swift::TargetClassDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetTypeGenericContextDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericParamDescriptor,swift::TargetGenericRequirementDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericPackShapeHeader,swift::GenericPackShapeDescriptor,swift::ConditionalInvertibleProtocolSet,swift::ConditionalInvertibleProtocolsRequirementCount,swift::TargetConditionalInvertibleProtocolRequirement<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::GenericValueHeader,swift::GenericValueDescriptor,swift::TargetResilientSuperclass<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetForeignMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetSingletonMetadataInitialization<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetVTableDescriptorHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetObjCResilientClassStubInfo<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListCount<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadataAccessorsListEntry<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetCanonicalSpecializedMetadatasCachingOnceToken<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::InvertibleProtocolSet,swift::TargetSingletonMetadataPointer<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideTableHeader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>,swift::TargetMethodDefaultOverrideDescriptor<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>>::callNumTrailingObjects<swift::GenericValueDescriptor>(v21));
  if (v5)
  {
    v30 = v5;
  }

  else
  {
    v30 = 0;
  }

  v31 = *v29;
  v32 = v29 + v19 - v30 + v31;
  if (v31)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (v33 || (v34 = (*v7 >> 25) & 7, v35 = a1, swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>(a1, v34, v32, v20, &v35, &v36), v10 = v37, (v37 & 1) == 0))
  {
    v10 = 0;
    *a3 = 0;
    goto LABEL_40;
  }

  v12 = v36;
  v11 = HIDWORD(v36);
  LODWORD(v9) = v36 >> 8;
  v8 = *v7;
LABEL_6:
  v13 = v7[8];
  v14 = v13 + v11;
  v15 = (v12 | (v9 << 8)) + v13;
  v16 = (v8 & 0x10000000) == 0;
  if ((v8 & 0x10000000) != 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = v14;
  }

  if (v16)
  {
    v9 = v9;
  }

  else
  {
    v12 = v15;
    v9 = v15 >> 8;
  }

  if (v16)
  {
    v18 = 8 * v11;
  }

  else
  {
    v18 = -8 * v15;
  }

  *a3 = v12 | (v9 << 8) | (v17 << 32);
  *(a3 + 8) = v18;
LABEL_40:
  *(a3 + 16) = v10;
}

void swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::forTypeReference<swift::TargetClassMetadataBounds<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>,swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteRef<swift::TargetMetadata<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)#1},swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(swift::remote::RemoteRef<swift::TargetContextDescriptor<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>> const>)::{lambda(swift::remote::RemoteAddress)#1}>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      *&v23 = 0;
      BYTE8(v23) = 0;
      v12 = result;
      if ((*(**(result + 2800) + 96))(*(result + 2800), a3, a4, &v23, 8))
      {
        swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(v12, v23, *(&v23 + 1), &v25);
        if (v26)
        {
          if ((*v26 - 1) > 0x7FE)
          {
            v13 = v26[9];
            v14 = v26[8] - v13;
            v15 = v13 >> 3;
            v16 = v13 >= 0x18;
            v17 = 3;
            if (v16)
            {
              v17 = v15;
            }

            v18 = 7;
            if (((v14 >> 3) & 0xFFFFFFF8) != 0)
            {
              v18 = (v14 >> 3);
            }

            *a6 = v17 | (v18 << 32);
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_22;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_22;
    }

    v8 = a5;
    v9 = result;
    if (!(*(**(result + 2800) + 32))(*(result + 2800), a3, a4, &v25, 8))
    {
      goto LABEL_22;
    }

    v10 = 0;
    result = v9;
    v11 = *(v9 + 2816) & v25;
  }

  else
  {
    v11 = a3;
    v8 = a5;
    v10 = a4;
  }

  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(result, v11, v10 | a4 & 0xFFFFFFFFFFFFFF00, &v23);
  if (!v24 || (v19 = *v24, (*v24 & 0x1F) != 0x10))
  {
LABEL_22:
    *a6 = 0;
    *(a6 + 16) = 0;
    return;
  }

  if ((v19 & 0x20000000) != 0)
  {
    v22 = *v8;
    v25 = v23;
    v26 = v24;
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::computeMetadataBoundsFromSuperclass(v22, &v25, a6);
    return;
  }

  v20 = *(v24 + 3);
  if ((v19 & 0x10000000) != 0)
  {
    v21 = -v24[6];
  }

  else
  {
    v21 = HIDWORD(v20) - v24[8];
  }

  v14 = 8 * v21;
  *a6 = v20;
LABEL_26:
  *(a6 + 8) = v14;
  *(a6 + 16) = 1;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsObject::$_0>(swift_reflection_ownsObject::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v4);
  if (v5 == 1)
  {
    return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(v2, v4[0], v4[1], 1);
  }

  else
  {
    return 1;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsObject::$_0>(swift_reflection_ownsObject::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v4);
  if (v5 == 1)
  {
    return swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(v2, v4[0], v4[1], 1);
  }

  else
  {
    return 1;
  }
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getTaggedPointerEncoding(a1) != 2 || ((*(a1 + 264) ^ a2) & *(a1 + 184)) == 0)
  {
    result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), a2, a3, &v15, 8);
    if ((result & 1) == 0)
    {
LABEL_9:
      *a4 = 0;
      a4[16] = 0;
      return result;
    }

    result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getIsaEncoding(a1);
    if (result > 2)
    {
      if (result == 3)
      {
        v9 = *(a1 + 2816) & v15 & *(a1 + 104);
        goto LABEL_20;
      }

      if (result == 4)
      {
        v9 = v15;
        if ((*(a1 + 120) & v15) == *(a1 + 128))
        {
          v10 = (*(a1 + 104) & v15) >> *(a1 + 112);
          if (!v10)
          {
            goto LABEL_9;
          }

          if (v10 >= *(a1 + 168))
          {
            *&v14 = 0;
            result = (*(**(a1 + 2800) + 32))(*(a1 + 2800), *(a1 + 152), *(a1 + 160), &v14, 8);
            if (!result)
            {
              goto LABEL_9;
            }

            v13 = v14;
            *(a1 + 168) = v14;
            if (v10 >= v13)
            {
              goto LABEL_9;
            }
          }

          v11 = *(a1 + 136) + 8 * v10;
          v12 = *(a1 + 144);
          *&v14 = 0;
          BYTE8(v14) = 0;
          result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v11, v12, &v14, 8);
          if ((result & 1) == 0)
          {
            goto LABEL_9;
          }

          *a4 = v14;
LABEL_21:
          a4[16] = 1;
          return result;
        }

LABEL_20:
        *a4 = v9;
        a4[8] = 0;
        goto LABEL_21;
      }
    }

    else
    {
      if (result < 2)
      {
        goto LABEL_9;
      }

      if (result == 2)
      {
        v9 = *(a1 + 2816) & v15;
        goto LABEL_20;
      }
    }

    __break(1u);
    return result;
  }

  return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromTaggedPointer(a1, a2, a4);
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a1[359];
  v6 = a1[360];
  if (v5 != v6)
  {
    v7 = v5 + 2;
    do
    {
      v8 = v7 - 2;
      v9 = *(v7 - 8) != a3 || *(v7 - 2) > a2;
      if (!v9 && a2 < *v7)
      {
        return 1;
      }

      v7 += 4;
    }

    while (v8 + 4 != v6);
  }

  v10 = a1[362];
  v11 = a1[363];
  if (v10 != v11)
  {
    v12 = v10 + 2;
    do
    {
      v13 = v12 - 2;
      v14 = *(v12 - 8) != a3 || *(v12 - 2) > a2;
      if (!v14 && a2 < *v12)
      {
        return 1;
      }

      v12 += 4;
    }

    while (v13 + 4 != v11);
  }

  if (a4)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, v23);
    if (v23[2])
    {
      AddressOfNominalTypeDescriptor = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, v23, 1);
      if (AddressOfNominalTypeDescriptor)
      {
        v18 = a1[359];
        v19 = a1[360];
        if (v18 != v19)
        {
          for (i = v18 + 2; ; i += 4)
          {
            v21 = i - 2;
            v22 = *(i - 8) != v17 || *(i - 2) > AddressOfNominalTypeDescriptor;
            if (!v22 && AddressOfNominalTypeDescriptor < *i)
            {
              break;
            }

            if (v21 + 4 == v19)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromTaggedPointer@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 224);
  if (v5 && (v5 & ~(*(a1 + 264) ^ a2)) == 0)
  {
    v6 = *(a1 + 256);
    v7 = *(a1 + 248) + 8 * ((a2 >> *(a1 + 232)) & *(a1 + 240));
    v14 = 0;
    v15 = 0;
    result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v7, v6, &v14, 8);
    if ((result & 1) == 0)
    {
      *a3 = 0;
      a3[16] = 0;
      return result;
    }

    goto LABEL_6;
  }

  v9 = *(a1 + 216);
  v10 = *(a1 + 208) + 8 * ((a2 >> *(a1 + 192)) & *(a1 + 200));
  v14 = 0;
  v15 = 0;
  result = (*(**(a1 + 2800) + 96))(*(a1 + 2800), v10, v9, &v14, 8);
  if (result)
  {
LABEL_6:
    v11 = v14;
    v12 = v15;
    if (!v15)
    {
      v11 = *(a1 + 2816) & v14;
    }

    *a3 = v11;
    a3[8] = v12;
    v13 = 1;
    goto LABEL_10;
  }

  v13 = 0;
  *a3 = 0;
LABEL_10:
  a3[16] = v13;
  return result;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::getTaggedPointerEncoding(uint64_t a1)
{
  result = *(a1 + 176);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::ownsAddress(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a1[359];
  v6 = a1[360];
  if (v5 != v6)
  {
    v7 = v5 + 2;
    do
    {
      v8 = v7 - 2;
      v9 = *(v7 - 8) != a3 || *(v7 - 2) > a2;
      if (!v9 && a2 < *v7)
      {
        return 1;
      }

      v7 += 4;
    }

    while (v8 + 4 != v6);
  }

  v10 = a1[362];
  v11 = a1[363];
  if (v10 != v11)
  {
    v12 = v10 + 2;
    do
    {
      v13 = v12 - 2;
      v14 = *(v12 - 8) != a3 || *(v12 - 2) > a2;
      if (!v14 && a2 < *v12)
      {
        return 1;
      }

      v12 += 4;
    }

    while (v13 + 4 != v11);
  }

  if (a4)
  {
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, v23);
    if (v23[2])
    {
      AddressOfNominalTypeDescriptor = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(a1, v23, 1);
      if (AddressOfNominalTypeDescriptor)
      {
        v18 = a1[359];
        v19 = a1[360];
        if (v18 != v19)
        {
          for (i = v18 + 2; ; i += 4)
          {
            v21 = i - 2;
            v22 = *(i - 8) != v17 || *(i - 2) > AddressOfNominalTypeDescriptor;
            if (!v22 && AddressOfNominalTypeDescriptor < *i)
            {
              break;
            }

            if (v21 + 4 == v19)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsAddressStrict::$_0>(swift_reflection_ownsAddressStrict::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = ****a1;
  v4 = *(*a2 + 2872);
  v5 = *(*a2 + 2880);
  if (v4 == v5)
  {
LABEL_10:
    v10 = *(v2 + 2896);
    v11 = *(v2 + 2904);
    if (v10 == v11)
    {
      return 0;
    }

    else
    {
      for (i = v10 + 2; ; i += 4)
      {
        v13 = i - 2;
        v14 = *(i - 8) || *(i - 2) > v3;
        if (!v14 && v3 < *i)
        {
          break;
        }

        if (v13 + 4 == v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v6 = v4 + 2;
    while (1)
    {
      v7 = v6 - 2;
      v8 = *(v6 - 8) || *(v6 - 2) > v3;
      if (!v8 && v3 < *v6)
      {
        return 1;
      }

      v6 += 4;
      if (v7 + 4 == v5)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<int SwiftReflectionContext::withContext<int,swift_reflection_ownsAddressStrict::$_0>(swift_reflection_ownsAddressStrict::$_0 const&)::{lambda(int&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = ****a1;
  v4 = *(*a2 + 2872);
  v5 = *(*a2 + 2880);
  if (v4 == v5)
  {
LABEL_10:
    v10 = *(v2 + 2896);
    v11 = *(v2 + 2904);
    if (v10 == v11)
    {
      return 0;
    }

    else
    {
      for (i = v10 + 2; ; i += 4)
      {
        v13 = i - 2;
        v14 = *(i - 8) || *(i - 2) > v3;
        if (!v14 && v3 < *i)
        {
          break;
        }

        if (v13 + 4 == v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v6 = v4 + 2;
    while (1)
    {
      v7 = v6 - 2;
      v8 = *(v6 - 8) || *(v6 - 2) > v3;
      if (!v8 && v3 < *v6)
      {
        return 1;
      }

      v6 += 4;
      if (v7 + 4 == v5)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long SwiftReflectionContext::withContext<unsigned long,swift_reflection_metadataForObject::$_0>(swift_reflection_metadataForObject::$_0 const&)::{lambda(unsigned long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, &v3);
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long SwiftReflectionContext::withContext<unsigned long,swift_reflection_metadataForObject::$_0>(swift_reflection_metadataForObject::$_0 const&)::{lambda(unsigned long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, &v3);
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_metadataNominalTypeDescriptor::$_0>(swift_reflection_metadataNominalTypeDescriptor::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(*a2, ****a1, 0, v4);
  if (v4[2])
  {
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(v2, v4, 1);
  }

  else
  {
    return 0;
  }
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_metadataNominalTypeDescriptor::$_0>(swift_reflection_metadataNominalTypeDescriptor::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(*a2, ****a1, 0, v4);
  if (v4[2])
  {
    return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readAddressOfNominalTypeDescriptor(v2, v4, 1);
  }

  else
  {
    return 0;
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::metadataIsActor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.n128_u64[0] = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v21);
  if (!v22)
  {
    return 0;
  }

  if ((*v22 - 2048) > 0xFFFFFFFFFFFFF800)
  {
    return 0;
  }

  if ((swift_reflection_classIsSwiftMask & v22[4]) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2816) & v22[8];
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 2872);
  v7 = *(a1 + 2880);
  if (v6 == v7)
  {
    return 0;
  }

  for (i = v6 + 2; ; i += 4)
  {
    v9 = i - 2;
    v10 = *(i - 8) || *(i - 2) > v5;
    if (!v10 && v5 < *i)
    {
      break;
    }

    if (v9 + 4 == v7)
    {
      return 0;
    }
  }

  (*(**(a1 + 2800) + 24))(&v18, v4);
  v11 = v18;
  if (v18)
  {
    v12 = *v18;
    v18 = 0;
    v23 = v11;
    if (!v20)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataIsActor(v15, v16, v17);
    }

    v13 = (v12 >> 23) & 1;
    (*(*v20 + 48))(v20, &v23);
  }

  else
  {
    v13 = 0;
  }

  if (v20 == &v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))();
  }

  return v13;
}

void *swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::metadataIsActor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.n128_u64[0] = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v20);
  if (!v21)
  {
    return 0;
  }

  if ((*v21 - 2048) > 0xFFFFFFFFFFFFF800)
  {
    return 0;
  }

  v5 = *(a1 + 2816) & v21[5];
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 2872);
  v7 = *(a1 + 2880);
  if (v6 == v7)
  {
    return 0;
  }

  for (i = v6 + 2; ; i += 4)
  {
    v9 = i - 2;
    v10 = *(i - 8) || *(i - 2) > v5;
    if (!v10 && v5 < *i)
    {
      break;
    }

    if (v9 + 4 == v7)
    {
      return 0;
    }
  }

  (*(**(a1 + 2800) + 24))(&v17, v4);
  v11 = v17;
  if (v17)
  {
    v12 = *v17;
    v17 = 0;
    v22 = v11;
    if (!v19)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForInstance::$_0>(swift_reflection_typeRefForInstance::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(v15, v16);
    }

    v13 = (v12 >> 23) & 1;
    (*(*v19 + 48))(v19, &v22);
  }

  else
  {
    v13 = 0;
  }

  if (v19 == &v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  return v13;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForInstance::$_0>(swift_reflection_typeRefForInstance::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v7);
  result = 0;
  if (v8 == 1)
  {
    return swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(v2, v7[0], v7[1], 0, 50, v3, v4, v5);
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForInstance::$_0>(swift_reflection_typeRefForInstance::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(unint64_t ****a1, uint64_t *a2)
{
  v2 = *a2;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(*a2, ****a1, 0, v7);
  result = 0;
  if (v8 == 1)
  {
    return swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(v2, v7[0], v7[1], 0, 50, v3, v4, v5);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForMangledTypeName::$_0>(swift_reflection_typeRefForMangledTypeName::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void ****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMangledName(*a2, ****a1, *(**a1)[1], v3);
  if (v4 == 1)
  {
    (v3[1])(v3[0], 3, 0);
  }

  else if (!v4)
  {
    return v3[0];
  }

  return 0;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<unsigned long long SwiftReflectionContext::withContext<unsigned long long,swift_reflection_typeRefForMangledTypeName::$_0>(swift_reflection_typeRefForMangledTypeName::$_0 const&)::{lambda(unsigned long long&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(void ****a1, uint64_t *a2)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMangledName(*a2, ****a1, *(**a1)[1], v3);
  if (v4 == 1)
  {
    (v3[1])(v3[0], 3, 0);
  }

  else if (!v4)
  {
    return v3[0];
  }

  return 0;
}

void *swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMangledName@<X0>(uint64_t a1@<X0>, _WORD *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v13 = 2400;
  v14 = 0;
  v15 = 0;
  v50 = 0;
  v11[0] = off_E13E8;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v48 = 0;
  v10 = 0;
  v7 = swift::Demangle::__runtime::Demangler::demangleSymbol(v11, a2, a3, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))();
  }

  v51 = a1 + 328;
  swift::Demangle::__runtime::TypeDecoder<swift::reflection::TypeRefBuilder>::decodeMangledType(&v51, v7, 0, 0, a4, v6);
  v11[0] = off_E13E8;
  if (v50 == &v49)
  {
    (*(*v50 + 32))(v50);
  }

  else if (v50)
  {
    (*(*v50 + 40))();
  }

  v11[0] = off_E13C0;
  result = swift::Demangle::__runtime::NodeFactory::freeSlabs(v12);
  if (v14)
  {
    *(v14 + 48) = 0;
  }

  return result;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char * SwiftReflectionContext::withContext<char *,swift_reflection_copyDemangledNameForProtocolDescriptor::$_0>(swift_reflection_copyDemangledNameForProtocolDescriptor::$_0 const&)::{lambda(char *&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = *a2;
  v19[1] = 0;
  v19[2] = 0;
  v20 = 0;
  v21 = 2400;
  v22 = 0;
  v23 = 0;
  v58 = 0;
  v19[0] = off_E13E8;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v56 = 0;
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v3, **v2, 0, &__s1);
  v5 = v60;
  if (v60)
  {
    *v14 = __s1;
    *&v14[16] = v60;
    v6 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v3, v14, v19, 50);
    if (v6 && ((*v5 & 0x10) != 0 || (*v5 & 0x1F) == 3))
    {
      v7 = v6;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v19, 243);
      swift::Demangle::__runtime::Node::addChild(Node, v7, v19, v9, v10);
      v6 = Node;
    }
  }

  else
  {
    v6 = 0;
  }

  v14[0] = 0;
  *&v14[1] = 0x101010101010101;
  v14[9] = 1;
  *&v14[10] = 0x101010100000000;
  v14[18] = 1;
  *&v14[19] = 256;
  v14[21] = 1;
  v15 = 0;
  v16 = 0;
  v17[0] = off_E0BC8;
  v17[1] = swift::Demangle::__runtime::genericParameterName;
  v18 = v17;
  swift::Demangle::__runtime::nodeToString(&__s1, v6, v14, v4);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
LABEL_11:
      v11 = strdup(&__s1);
      goto LABEL_14;
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = __s1;
  v11 = strdup(__s1);
  operator delete(v12);
LABEL_14:
  v19[0] = off_E13E8;
  if (v58 == &v57)
  {
    (*(*v58 + 32))(v58);
  }

  else if (v58)
  {
    (*(*v58 + 40))();
  }

  v19[0] = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v20);
  if (v22)
  {
    *(v22 + 48) = 0;
  }

  return v11;
}

char *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<char * SwiftReflectionContext::withContext<char *,swift_reflection_copyDemangledNameForProtocolDescriptor::$_0>(swift_reflection_copyDemangledNameForProtocolDescriptor::$_0 const&)::{lambda(char *&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>(uint64_t ****a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = *a2;
  v19[1] = 0;
  v19[2] = 0;
  v20 = 0;
  v21 = 2400;
  v22 = 0;
  v23 = 0;
  v58 = 0;
  v19[0] = off_E13E8;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v56 = 0;
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readContextDescriptor(v3, **v2, 0, &__s1);
  v5 = v60;
  if (v60)
  {
    *v14 = __s1;
    *&v14[16] = v60;
    v6 = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::buildContextDescriptorMangling(v3, v14, v19, 50);
    if (v6 && ((*v5 & 0x10) != 0 || (*v5 & 0x1F) == 3))
    {
      v7 = v6;
      Node = swift::Demangle::__runtime::NodeFactory::createNode(v19, 243);
      swift::Demangle::__runtime::Node::addChild(Node, v7, v19, v9, v10);
      v6 = Node;
    }
  }

  else
  {
    v6 = 0;
  }

  v14[0] = 0;
  *&v14[1] = 0x101010101010101;
  v14[9] = 1;
  *&v14[10] = 0x101010100000000;
  v14[18] = 1;
  *&v14[19] = 256;
  v14[21] = 1;
  v15 = 0;
  v16 = 0;
  v17[0] = off_E0BC8;
  v17[1] = swift::Demangle::__runtime::genericParameterName;
  v18 = v17;
  swift::Demangle::__runtime::nodeToString(&__s1, v6, v14, v4);
  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
LABEL_11:
      v11 = strdup(&__s1);
      goto LABEL_14;
    }
  }

  else
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = __s1;
  v11 = strdup(__s1);
  operator delete(v12);
LABEL_14:
  v19[0] = off_E13E8;
  if (v58 == &v57)
  {
    (*(*v58 + 32))(v58);
  }

  else if (v58)
  {
    (*(*v58 + 40))();
  }

  v19[0] = off_E13C0;
  swift::Demangle::__runtime::NodeFactory::freeSlabs(v20);
  if (v22)
  {
    *(v22 + 48) = 0;
  }

  return v11;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForTypeRef::$_0>(swift_reflection_infoForTypeRef::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(swift::reflection::TypeRefBuilder ******a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = ****a1;
  if (v4 && (TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, v4, 0)) != 0)
  {
    v7 = *(TypeInfo + 2);
    if (v7 == 4 || v7 == 1)
    {
      v9 = -1431655765 * ((TypeInfo[6] - TypeInfo[5]) >> 4);
    }

    else
    {
      v9 = 0;
    }

    v10 = TypeInfo;
    *a3 = getTypeInfoKind(TypeInfo);
    result = *(v10 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v10 + 5);
    *(a3 + 16) = v9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForTypeRef::$_0>(swift_reflection_infoForTypeRef::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(swift::reflection::TypeRefBuilder ******a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = ****a1;
  if (v4 && (TypeInfo = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, v4, 0)) != 0)
  {
    v7 = *(TypeInfo + 2);
    if (v7 == 4 || v7 == 1)
    {
      v9 = -1431655765 * ((TypeInfo[6] - TypeInfo[5]) >> 4);
    }

    else
    {
      v9 = 0;
    }

    v10 = TypeInfo;
    *a3 = getTypeInfoKind(TypeInfo);
    result = *(v10 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v10 + 5);
    *(a3 + 16) = v9;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t **std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfTypeRef::$_0>(swift_reflection_childOfTypeRef::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **result;
  if (**v4 && (result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v4, 0)) != 0)
  {
    v5 = *(result + 2);
    if (v5 == 1 || v5 == 4)
    {
      v7 = &result[5][6 * **(v4 + 8)];
      v8 = v7;
      if (*(v7 + 23) < 0)
      {
        v8 = *v7;
      }

      *a3 = v8;
      *(a3 + 8) = *(v7 + 24);
      result = getTypeInfoKind(*(v7 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v7 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfTypeRef::$_0>(swift_reflection_childOfTypeRef::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **result;
  if (**v4 && (result = swift::reflection::TypeConverter::getTypeInfo(*a2 + 976, **v4, 0)) != 0)
  {
    v5 = *(result + 2);
    if (v5 == 1 || v5 == 4)
    {
      v7 = &result[5][6 * **(v4 + 8)];
      v8 = v7;
      if (*(v7 + 23) < 0)
      {
        v8 = *v7;
      }

      *a3 = v8;
      *(a3 + 8) = *(v7 + 24);
      result = getTypeInfoKind(*(v7 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v7 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForMetadata::$_0>(swift_reflection_infoForMetadata::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {
    v6 = *(MetadataTypeInfo + 8);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((*(MetadataTypeInfo + 48) - *(MetadataTypeInfo + 40)) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = MetadataTypeInfo;
    *a3 = getTypeInfoKind(MetadataTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 20);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForMetadata::$_0>(swift_reflection_infoForMetadata::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(uint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  MetadataTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, ****a1, 0, 0);
  if (MetadataTypeInfo)
  {
    v6 = *(MetadataTypeInfo + 8);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((*(MetadataTypeInfo + 48) - *(MetadataTypeInfo + 40)) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = MetadataTypeInfo;
    *a3 = getTypeInfoKind(MetadataTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 20);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = (*(*a4 + 24))(a4);
  }

  else
  {
    v8 = 0;
  }

  *&v23 = a2;
  *(&v23 + 1) = a3;
  v24 = v8;
  v25 = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v23, &v25) && v25 != (*(a1 + 2824) + 32 * *(a1 + 2840)))
  {
    return v25[3];
  }

  TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, a2, a3, 0, 50, v9, v10, v11);
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v23);
  if (!v24)
  {
    goto LABEL_21;
  }

  v12 = 0;
  v15 = *v24 < 0x800uLL && *v24 != 0;
  if (TypeFromMetadata && !v15)
  {
    swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v23);
    if (v24)
    {
      if ((*v24 - 2048) <= 0xFFFFFFFFFFFFF800)
      {
        ObjCRODataPtr = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readObjCRODataPtr(a1, a2, a3);
        if (ObjCRODataPtr)
        {
          LODWORD(v25) = 0;
          if ((*(**(a1 + 2800) + 32))(*(a1 + 2800), ObjCRODataPtr + 4, v17, &v25, 4))
          {
            swift::reflection::TypeConverter::getClassInstanceTypeInfo((a1 + 976), TypeFromMetadata, v25, a4);
            v12 = v18;
            goto LABEL_22;
          }
        }
      }
    }

LABEL_21:
    v12 = 0;
  }

LABEL_22:
  *&v23 = a2;
  *(&v23 + 1) = a3;
  v24 = v8;
  v25 = 0;
  v19 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v23, &v25);
  v20 = v25;
  if ((v19 & 1) == 0)
  {
    v20 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v23, &v23, v25);
    v21 = BYTE8(v23);
    *v20 = v23;
    *(v20 + 8) = v21;
    v20[2] = v24;
    v20[3] = 0;
  }

  v20[3] = v12;
  return v12;
}

uint64_t __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>(uint64_t *a1, __int128 *a2, uint64_t **a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v15 = 0;
    result = 0;
    goto LABEL_27;
  }

  v5 = *a1;
  v24 = *a2;
  v7 = __swift::__runtime::llvm::hash_combine<unsigned long long,unsigned char>(&v24, &v24 + 8);
  v8 = 0;
  v9 = *(a2 + 2);
  v10 = ((v9 >> 4) ^ (v9 >> 9) | (v7 << 32)) + ~(((v9 >> 4) ^ (v9 >> 9)) << 32);
  v11 = (v10 ^ (v10 >> 22)) + ~((v10 ^ (v10 >> 22)) << 13);
  v12 = (9 * (v11 ^ (v11 >> 8))) ^ ((9 * (v11 ^ (v11 >> 8))) >> 15);
  v13 = (v4 - 1) & (((v12 + ~(v12 << 27)) >> 31) ^ (v12 + ~(v12 << 27)));
  for (i = 1; ; ++i)
  {
    v15 = v5 + 32 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *a2 == *v15 && *(a2 + 8) == v17;
    if (v18 && v9 == *(v15 + 16))
    {
      result = 1;
      goto LABEL_27;
    }

    if (v16 == -1 && v17 == 0)
    {
      break;
    }

    if (v16 != -2 || v17 != 0)
    {
      goto LABEL_20;
    }

    v21 = *(v15 + 16) == -8192;
LABEL_22:
    if (v21 && v8 == 0)
    {
      v8 = v5 + 32 * v13;
    }

    v22 = v13 + i;
    v13 = v22 & (v4 - 1);
  }

  if (*(v15 + 16) != -4096)
  {
LABEL_20:
    v21 = 0;
    goto LABEL_22;
  }

  result = 0;
  if (v8)
  {
    v15 = v8;
  }

LABEL_27:
  *a3 = v15;
  return result;
}

uint64_t *__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,void *>>(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
  {
    goto LABEL_3;
  }

  v8 = a1;
  __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::grow(a1, v5);
  v10 = 0;
  __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>(v8, a3, &v10);
  a1 = v8;
  a4 = v10;
LABEL_3:
  ++*(a1 + 2);
  v6 = *a4 == -1 && *(a4 + 8) == 0;
  if (!v6 || a4[2] != -4096)
  {
    --*(a1 + 3);
  }

  return a4;
}

void __swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::grow(uint64_t a1, int a2)
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
  buffer = __swift::__runtime::llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = &buffer[32 * v10];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        *(buffer + 2) = -4096;
        buffer += 32;
      }

      while (buffer != v11);
    }

    v12 = (32 * v3);
    if (v3)
    {
      v13 = 32 * v3;
      v14 = v4;
      while (1)
      {
        v17 = *(v14 + 8);
        if (*v14 != -1 || v17 != 0)
        {
          break;
        }

        if (*(v14 + 2) != -4096)
        {
          goto LABEL_11;
        }

LABEL_12:
        v14 = (v14 + 32);
        v13 -= 32;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v19 = *v14 == -2 && v17 == 0;
      if (v19 && *(v14 + 2) == -8192)
      {
        goto LABEL_12;
      }

LABEL_11:
      v22 = 0;
      __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>(a1, v14, &v22);
      v15 = v22;
      v16 = *v14;
      *(v22 + 8) = *(v14 + 8);
      *v15 = v16;
      v15[2] = *(v14 + 2);
      v15[3] = *(v14 + 3);
      ++*(a1 + 8);
      goto LABEL_12;
    }

LABEL_24:
    __swift::__runtime::llvm::deallocate_buffer(v4, v12, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = &buffer[32 * v20];
      do
      {
        *buffer = -1;
        buffer[8] = 0;
        *(buffer + 2) = -4096;
        buffer += 32;
      }

      while (buffer != v21);
    }
  }
}

uint64_t swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = (*(*a4 + 24))(a4);
  }

  else
  {
    v8 = 0;
  }

  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = v8;
  v24 = 0;
  if (__swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v22, &v24) && v24 != (*(a1 + 2824) + 32 * *(a1 + 2840)))
  {
    return v24[3];
  }

  TypeFromMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, a2, a3, 0, 50, v9, v10, v11);
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v22);
  if (!v23)
  {
LABEL_17:
    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
  v15 = *v23 < 0x800uLL && *v23 != 0;
  if (TypeFromMetadata && !v15)
  {
    InstanceStartFromClassMetadata = swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readInstanceStartFromClassMetadata(a1, a2, a3);
    if ((InstanceStartFromClassMetadata & 0x100000000) != 0)
    {
      swift::reflection::TypeConverter::getClassInstanceTypeInfo((a1 + 976), TypeFromMetadata, InstanceStartFromClassMetadata, a4);
      v12 = v17;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_19:
  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = v8;
  v24 = 0;
  v18 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::LookupBucketFor<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v22, &v24);
  v19 = v24;
  if ((v18 & 1) == 0)
  {
    v19 = __swift::__runtime::llvm::DenseMapBase<__swift::__runtime::llvm::DenseMap<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>,std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*,__swift::__runtime::llvm::DenseMapInfo<std::pair<swift::remote::RemoteAddress,void *>>,__swift::__runtime::llvm::detail::DenseMapPair<std::pair<swift::remote::RemoteAddress,void *>,swift::reflection::RecordTypeInfo const*>>::InsertIntoBucketImpl<std::pair<swift::remote::RemoteAddress,void *>>((a1 + 2824), &v22, &v22, v24);
    v20 = BYTE8(v22);
    *v19 = v22;
    *(v19 + 8) = v20;
    v19[2] = v23;
    v19[3] = 0;
  }

  v19[3] = v12;
  return v12;
}

uint64_t swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readInstanceStartFromClassMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, a2, a3, &v14);
  v4 = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

  if ((*v16 - 2048) > 0xFFFFFFFFFFFFF800)
  {
LABEL_8:
    v4 = 0;
LABEL_9:
    v9 = 0;
    v8 = 0;
    return v9 | v4 | v8;
  }

  v5 = v16[1];
  v6 = *(a1 + 2816);
  for (i = 16; (v6 & v5) != 0; v6 = *(a1 + 2816))
  {
    swift::remote::MetadataReader<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v5 & v6, 0, &v11);
    v14 = v11;
    v15 = v12;
    v4 = v13;
    v16 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    if ((*v13 - 2048) > 0xFFFFFFFFFFFFF800)
    {
      goto LABEL_8;
    }

    i = i + *(v13 + 24) - 16;
    v5 = *(v13 + 8);
  }

  v8 = i & 0xFFFFFF00;
  v9 = i;
  v4 = 0x100000000;
  return v9 | v4 | v8;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfMetadata::$_0>(swift_reflection_childOfMetadata::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_childinfo SwiftReflectionContext::withContext<swift_childinfo,swift_reflection_childOfMetadata::$_0>(swift_reflection_childOfMetadata::$_0 const&)::{lambda(swift_childinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = **a1;
  result = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(*a2, **v4, 0, 0);
  if (result)
  {
    v6 = *(result + 8);
    if (v6 == 1 || v6 == 4)
    {
      v8 = *(result + 40) + 48 * **(v4 + 8);
      v9 = v8;
      if (*(v8 + 23) < 0)
      {
        v9 = *v8;
      }

      *a3 = v9;
      *(a3 + 8) = *(v8 + 24);
      result = getTypeInfoKind(*(v8 + 40));
      *(a3 + 12) = result;
      *(a3 + 16) = *(v8 + 32);
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = "unknown TypeInfo kind";
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForInstance::$_0>(swift_reflection_infoForInstance::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(unint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {
    v6 = *(InstanceTypeInfo + 2);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((InstanceTypeInfo[6] - InstanceTypeInfo[5]) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = InstanceTypeInfo;
    *a3 = getTypeInfoKind(InstanceTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 5);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<swift_typeinfo SwiftReflectionContext::withContext<swift_typeinfo,swift_reflection_infoForInstance::$_0>(swift_reflection_infoForInstance::$_0 const&)::{lambda(swift_typeinfo&&)#1}> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<swift::reflection::ReflectionContext<std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>>>>,std::__variant_detail::__base<swift<swift::reflection<std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>,std::__variant_detail::_Trait::External<std::__variant_detail::_Trait::WithObjCInterop<std::__variant_detail::_Trait::RuntimeTarget<8u>>><std::__variant_detail::_Trait::NoObjCInterop<std::__variant_detail::_Trait::WithObjCInterop>>>> &>@<D0>(unint64_t ****a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  InstanceTypeInfo = swift::reflection::ReflectionContext<swift::External<swift::NoObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(*a2, ****a1, 0, 0);
  if (InstanceTypeInfo)
  {
    v6 = *(InstanceTypeInfo + 2);
    if (v6 == 4 || v6 == 1)
    {
      v8 = -1431655765 * ((InstanceTypeInfo[6] - InstanceTypeInfo[5]) >> 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = InstanceTypeInfo;
    *a3 = getTypeInfoKind(InstanceTypeInfo);
    result = *(v9 + 12);
    *(a3 + 4) = result;
    *(a3 + 12) = *(v9 + 5);
    *(a3 + 16) = v8;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t *swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getInstanceTypeInfo(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadataFromInstance(a1, a2, a3, &v24);
  if (v26 != 1)
  {
    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v24, v25, __p);
  if (!v19)
  {
    return 0;
  }

  v8 = *v19;
  if (*v19 > 0x7FF)
  {
    LODWORD(v8) = 0;
  }

  if (v8 != 1280)
  {
    if (v8 != 1024)
    {
      if (!v8)
      {
        return swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getMetadataTypeInfo(a1, v24, v25, a4);
      }

      return 0;
    }

    *&v10 = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v24, v25, &v27);
    if (v28 && *v28 == 1024)
    {
      (*(**(a1 + 2800) + 40))(__p, v10);
      v11 = __p[0];
      v12 = SHIBYTE(v19);
      if (v20 && ((swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getCaptureDescriptor((a1 + 2216), v20, v21, &v22), v22) || BYTE8(v22)))
      {
        v27 = v22;
        v28 = v23;
        swift::reflection::TypeRefBuilder::ReflectionTypeDescriptorFinder::getClosureContextInfo((a1 + 2216), &v27, __p);
        ClosureContextInfo = swift::reflection::ReflectionContext<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>>::getClosureContextInfo(a1, a2, a3, __p, a4);
        swift::reflection::ClosureContextInfo::~ClosureContextInfo(__p);
        result = ClosureContextInfo;
      }

      else
      {
        result = 0;
      }

      if (v12 < 0)
      {
        v17 = result;
        operator delete(v11);
        return v17;
      }

      return result;
    }

    return 0;
  }

  swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readMetadata(a1, v24, v25, __p);
  if (!v19)
  {
    return 0;
  }

  result = swift::remote::MetadataReader<swift::External<swift::WithObjCInterop<swift::RuntimeTarget<8u>>>,swift::reflection::TypeRefBuilder>::readTypeFromMetadata(a1, v19[2], a3, 0, 50, v13, v14, v15);
  if (result)
  {
    return swift::reflection::TypeConverter::getTypeInfo(a1 + 976, result, a4);
  }

  return result;
}