uint64_t setAllArgResAttrDicts<true>(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    v6 = a3;
    while (!*(*v6 + 16))
    {
      v6 += 2;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), a3, a4);
    v9 = *(*(a2 + 48) + 40);

    return v9();
  }

  else
  {
LABEL_5:
    v7 = *(*(a2 + 48) + 56);

    return v7();
  }
}

uint64_t setAllArgResAttrDicts<false>(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    v6 = a3;
    while (!*(*v6 + 16))
    {
      v6 += 2;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), a3, a4);
    v9 = *(*(a2 + 48) + 48);

    return v9();
  }

  else
  {
LABEL_5:
    v7 = *(*(a2 + 48) + 64);

    return v7();
  }
}

void setArgResAttrDict<true>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v10 = (*(*(a2 + 48) + 24))();
  if (v10)
  {
    v11 = *(v10 + 8);
    if (*&v11[8 * a4] == a5)
    {
      return;
    }

    v12 = *(v10 + 16);
    if (*(a5 + 16))
    {
      goto LABEL_4;
    }

    if (v12 >= a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = *(v10 + 16);
    }

    if (v15)
    {
      v16 = 8 * v15;
      v17 = *(v10 + 8);
      while (!*(*v17 + 16))
      {
        v17 += 8;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_17;
        }
      }

LABEL_4:
      v22 = v24;
      v23 = 0x800000000;
      llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v22, v11, &v11[8 * v12]);
      *(v22 + a4) = a5;
      mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v22, v23);
      (*(*(a2 + 48) + 40))();
      v13 = v22;
      if (v22 == v24)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_17:
    v18 = a4 + 1;
    if (v12 != v18)
    {
      v19 = &v11[8 * v18];
      v20 = 8 * v12 - 8 * v18;
      while (!*(*v19 + 16))
      {
        v19 += 8;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_4;
    }

LABEL_21:
    v21 = *(*(a2 + 48) + 56);

    v21();
  }

  else if (*(a5 + 16))
  {
    v14 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
    v22 = v24;
    v23 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Attribute>::assign(&v22, a3, v14);
    *(v22 + a4) = a5;
    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v22, v23);
    (*(*(a2 + 48) + 40))();
    v13 = v22;
    if (v22 != v24)
    {
LABEL_8:
      free(v13);
    }
  }
}

void mlir::function_interface_impl::setArgAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 8))();
  v9 = v8;
  if (!a4)
  {
    a4 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
  }

  setArgResAttrDict<true>(a1, a2, v9, a3, a4);
}

void setArgResAttrDict<false>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v10 = (*(*(a2 + 48) + 32))();
  if (v10)
  {
    v11 = *(v10 + 8);
    if (*&v11[8 * a4] == a5)
    {
      return;
    }

    v12 = *(v10 + 16);
    if (*(a5 + 16))
    {
      goto LABEL_4;
    }

    if (v12 >= a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = *(v10 + 16);
    }

    if (v15)
    {
      v16 = 8 * v15;
      v17 = *(v10 + 8);
      while (!*(*v17 + 16))
      {
        v17 += 8;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_17;
        }
      }

LABEL_4:
      v22 = v24;
      v23 = 0x800000000;
      llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v22, v11, &v11[8 * v12]);
      *(v22 + a4) = a5;
      mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v22, v23);
      (*(*(a2 + 48) + 48))();
      v13 = v22;
      if (v22 == v24)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_17:
    v18 = a4 + 1;
    if (v12 != v18)
    {
      v19 = &v11[8 * v18];
      v20 = 8 * v12 - 8 * v18;
      while (!*(*v19 + 16))
      {
        v19 += 8;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_4;
    }

LABEL_21:
    v21 = *(*(a2 + 48) + 64);

    v21();
  }

  else if (*(a5 + 16))
  {
    v14 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
    v22 = v24;
    v23 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Attribute>::assign(&v22, a3, v14);
    *(v22 + a4) = a5;
    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v22, v23);
    (*(*(a2 + 48) + 48))();
    v13 = v22;
    if (v22 != v24)
    {
LABEL_8:
      free(v13);
    }
  }
}

void mlir::function_interface_impl::setResultAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  if (!a4)
  {
    a4 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
  }

  setArgResAttrDict<false>(a1, a2, v9, a3, a4);
}

void *mlir::function_interface_impl::insertFunctionArguments(void *result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v37[4] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v15 = a4;
    v17 = a2;
    v18 = result;
    v19 = a12;
    v20 = *(((&result[2 * ((*(result + 11) >> 23) & 1) + 8] + ((*(result + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(result + 10) + 8);
    if (v20)
    {
      v21 = v20 - 8;
    }

    else
    {
      v21 = 0;
    }

    v22 = (*(*(a2 + 48) + 24))();
    if (v22 | a8)
    {
      v23 = v22;
      v35 = v37;
      v36 = 0x400000000;
      v24 = v15 + a11;
      if (v24 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v24, 8);
      }

      if (v15)
      {
        v33 = v17;
        v34 = v15;
        v25 = 0;
        v15 = v15;
        v26 = a3;
        while (1)
        {
          v28 = *v26++;
          v27 = v28;
          if (v23)
          {
            llvm::SmallVectorImpl<mlir::DictionaryAttr>::append<llvm::mapped_iterator<mlir::Attribute const*,mlir::DictionaryAttr (*)(mlir::Attribute),mlir::DictionaryAttr>,void>(&v35, (*(v23 + 8) + 8 * v25), mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke, (*(v23 + 8) + 8 * v27));
            if (!a8)
            {
              goto LABEL_14;
            }
          }

          else
          {
            llvm::SmallVectorImpl<mlir::DictionaryAttr>::resizeImpl<false>(&v35, v27 - v25 + v36);
            if (!a8)
            {
LABEL_14:
              v29 = 0;
              goto LABEL_15;
            }
          }

          v29 = *a7;
LABEL_15:
          llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(&v35, v29);
          ++a7;
          v25 = v27;
          if (!--v15)
          {
            v17 = v33;
            LODWORD(v15) = v34;
            if (v23)
            {
              goto LABEL_17;
            }

LABEL_19:
            llvm::SmallVectorImpl<mlir::DictionaryAttr>::resizeImpl<false>(&v35, a11 - v27 + v36);
            goto LABEL_20;
          }
        }
      }

      v27 = 0;
      if (!v23)
      {
        goto LABEL_19;
      }

LABEL_17:
      llvm::SmallVectorImpl<mlir::DictionaryAttr>::append<llvm::mapped_iterator<mlir::Attribute const*,mlir::DictionaryAttr (*)(mlir::Attribute),mlir::DictionaryAttr>,void>(&v35, (*(v23 + 8) + 8 * v27), mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke, (*(v23 + 8) + 8 * a11));
LABEL_20:
      mlir::function_interface_impl::setAllArgAttrDicts(v18, v17, v35, v36);
      v19 = a12;
      if (v35 != v37)
      {
        free(v35);
      }
    }

    v30 = mlir::TypeAttr::get(v19);
    result = (*(v17 + 8))(v17, v18, v30);
    if (v15)
    {
      v31 = *a3;
      v32 = mlir::TypeRange::dereference_iterator(a5, 0);
      mlir::Block::insertArgument(v21, v31, v32, *a9);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(uint64_t a1, uint64_t a2)
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

uint64_t mlir::function_interface_impl::eraseFunctionArguments(uint64_t a1, uint64_t a2, const llvm::BitVector *a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v8 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  v9 = (*(*(a2 + 48) + 24))();
  if (v9)
  {
    v10 = v9;
    v18 = v20;
    v19 = 0x400000000;
    v11 = *(v9 + 16);
    if (v11 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v11, 8);
    }

    v12 = *(a3 + 16);
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        if (((*(*a3 + 8 * (i >> 6)) >> i) & 1) == 0)
        {
          v14 = *(*(v10 + 8) + 8 * i);
          if (v19 >= HIDWORD(v19))
          {
            llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(&v18, v14);
          }

          else
          {
            *(v18 + v19) = v14;
            LODWORD(v19) = v19 + 1;
          }
        }
      }
    }

    mlir::function_interface_impl::setAllArgAttrDicts(a1, a2, v18, v19);
    if (v18 != v20)
    {
      free(v18);
    }
  }

  if (v8)
  {
    v15 = (v8 - 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = mlir::TypeAttr::get(a4);
  (*(a2 + 8))(a2, a1, v16);
  return mlir::Block::eraseArguments(v15, a3);
}

void mlir::function_interface_impl::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[6] = *MEMORY[0x277D85DE8];
  (*(*(a2 + 48) + 8))();
  v7 = v6;
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  v10 = mlir::TypeAttr::get(a3);
  (*(a2 + 8))(a2, a1, v10);
  (*(*(a2 + 48) + 8))();
  v12 = v11;
  (*(*(a2 + 48) + 16))();
  v14 = v13;
  v15 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
  if (v7 != v12)
  {
    v16 = *(a2 + 48);
    if (v12)
    {
      v17 = (*(v16 + 24))(v16, a1);
      if (v17)
      {
        if (v12 >= v7)
        {
          v19 = *(v17 + 8);
          v20 = &v19[8 * *(v17 + 16)];
          v28 = v30;
          v29 = 0x600000000;
          llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v28, v19, v20);
          v21 = v12;
          if (v29 != v12)
          {
            if (v29 <= v12)
            {
              llvm::SmallVectorImpl<mlir::Attribute>::append(&v28, v12 - v29, v15);
              v21 = v29;
            }

            else
            {
              LODWORD(v29) = v12;
            }
          }

          setAllArgResAttrDicts<true>(a1, a2, v28, v21);
          if (v28 != v30)
          {
            free(v28);
          }
        }

        else
        {
          if (*(v17 + 16) >= v12)
          {
            v18 = v12;
          }

          else
          {
            v18 = *(v17 + 16);
          }

          setAllArgResAttrDicts<true>(a1, a2, *(v17 + 8), v18);
        }
      }
    }

    else
    {
      (*(v16 + 56))(v16, a1);
    }
  }

  if (v9 != v14)
  {
    v22 = *(a2 + 48);
    if (v14)
    {
      v23 = (*(v22 + 32))(v22, a1);
      if (v23)
      {
        if (v14 >= v9)
        {
          v25 = *(v23 + 8);
          v26 = &v25[8 * *(v23 + 16)];
          v28 = v30;
          v29 = 0x600000000;
          llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v28, v25, v26);
          v27 = v14;
          if (v29 != v14)
          {
            if (v29 <= v14)
            {
              llvm::SmallVectorImpl<mlir::Attribute>::append(&v28, v14 - v29, v15);
              v27 = v29;
            }

            else
            {
              LODWORD(v29) = v14;
            }
          }

          setAllArgResAttrDicts<false>(a1, a2, v28, v27);
          if (v28 != v30)
          {
            free(v28);
          }
        }

        else
        {
          if (*(v23 + 16) >= v14)
          {
            v24 = v14;
          }

          else
          {
            v24 = *(v23 + 16);
          }

          setAllArgResAttrDicts<false>(a1, a2, *(v23 + 8), v24);
        }
      }
    }

    else
    {
      (*(v22 + 64))(v22, a1);
    }
  }
}

void llvm::SmallVectorImpl<mlir::DictionaryAttr>::append<llvm::mapped_iterator<mlir::Attribute const*,mlir::DictionaryAttr (*)(mlir::Attribute),mlir::DictionaryAttr>,void>(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t), char *a4)
{
  v6 = a2;
  v8 = a4 - a2;
  v9 = *(a1 + 8);
  v10 = v9 + ((a4 - a2) >> 3);
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    LODWORD(v9) = *(a1 + 8);
  }

  if (a4 != v6)
  {
    v11 = (*a1 + 8 * v9);
    do
    {
      v12 = *v6;
      v6 += 8;
      *v11++ = a3(v12);
    }

    while (v6 != a4);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + (v8 >> 3);
}

void llvm::SmallVectorImpl<mlir::DictionaryAttr>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

void llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

void llvm::SmallVectorImpl<mlir::Attribute>::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 + a2 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + a2, 8);
    v6 = *(a1 + 8);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = vdupq_n_s64(a2 - 1);
  v9 = (*a1 + 8 * v6 + 8);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
    if (v10.i8[0])
    {
      *(v9 - 1) = a3;
    }

    if (v10.i8[4])
    {
      *v9 = a3;
    }

    v7 += 2;
    v9 += 2;
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
LABEL_9:
  *(a1 + 8) = v6 + a2;
}

uint64_t mlir::function_interface_impl::parseFunctionSignatureWithArguments(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  *a4 = 0;
  v11[0] = a4;
  v11[1] = a1;
  v11[2] = &v12;
  v11[3] = a3;
  v9 = (*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>, v11, 0, 0);
  result = 0;
  if (v9)
  {
    if ((*(*a1 + 64))(a1))
    {
      return mlir::call_interface_impl::parseFunctionResultList(a1, a5, a6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::function_interface_impl::parseFunctionOp(mlir::AsmParser *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *, void, void *, void, void, void **), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70[8] = *MEMORY[0x277D85DE8];
  v68 = v70;
  v69 = 0x100000000;
  v65 = v67;
  v66 = 0x600000000;
  v62 = v64;
  v63 = 0x600000000;
  v39 = (*(*a1 + 32))(a1);
  mlir::impl::parseOptionalVisibilityKeyword(a1, a2 + 112);
  v46 = 0;
  if (mlir::AsmParser::parseSymbolName(a1, &v46, "sym_name", 8, a2 + 112))
  {
    v36 = (*(*a1 + 40))(a1);
    v45 = 0;
    v14 = mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, a3, &v68, &v45, &v62, &v65);
    v15 = 0;
    if (v14)
    {
      __p = 0;
      v43 = 0;
      v44 = 0;
      v59 = v61;
      v60 = 0x600000000;
      v16 = v69;
      if (v69 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v69, 8);
        v16 = v69;
      }

      if (v16)
      {
        v17 = v16 << 6;
        v18 = v68 + 4;
        do
        {
          v19 = *v18;
          v18 += 8;
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v59, v19);
          v17 -= 64;
        }

        while (v17);
      }

      v20 = a5(a6, v39, v59, v60, v62, v63, v45, &__p);
      if (v20)
      {
        v21 = mlir::TypeAttr::get(v20);
        mlir::NamedAttrList::push_back(a2 + 112, a4, v21);
        __src = v53;
        v52 = 0x400000000;
        v55 = 4;
        v22 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 496))(a1, &__src))
        {
          v23 = 0;
          v49[0] = "sym_visibility";
          v49[1] = 14;
          v49[2] = "sym_name";
          v49[3] = 8;
          v50 = *(a4 + 16);
          while (1)
          {
            v24 = v49[v23];
            v25 = v49[v23 + 1];
            v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(&__src, v24, v25);
            if (v27)
            {
              if (*(v26 + 8))
              {
                break;
              }
            }

            v23 += 2;
            if (v23 == 6)
            {
              v28 = __src;
              v29 = v52;
              *(a2 + 192) = 0;
              v30 = *(a2 + 120);
              if (v30 + v29 > *(a2 + 124))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v30 + v29, 16);
                LODWORD(v30) = *(a2 + 120);
              }

              if (v29)
              {
                memcpy((*(a2 + 112) + 16 * v30), v28, 16 * v29);
                LODWORD(v30) = *(a2 + 120);
              }

              *(a2 + 120) = v30 + v29;
              mlir::call_interface_impl::addArgAndResultAttrs(v39, a2, v68, v69, v65, v66, a7, a8);
              mlir::OperationState::addRegion(a2);
            }
          }

          v40 = "'";
          v41 = 259;
          (*(*a1 + 24))(&v56, a1, v22, &v40);
          if (v56)
          {
            v48 = 261;
            v47[0] = v24;
            v47[1] = v25;
            mlir::Diagnostic::operator<<(v57, v47);
            if (v56)
            {
              mlir::Diagnostic::operator<<<92ul>(v57, "' is an inferred attribute and should not be specified in the explicit attribute dictionary");
            }
          }

          v34 = v58 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
        }

        else
        {
          v34 = 0;
        }

        if (__src != v53)
        {
          free(__src);
        }
      }

      else
      {
        LOWORD(v50) = 257;
        (*(*a1 + 24))(&v56, a1, v36, v49);
        if (v56)
        {
          mlir::Diagnostic::operator<<<34ul>(v57, "failed to construct function type");
          v31 = HIBYTE(v44);
          if (v44 < 0)
          {
            v31 = v43;
          }

          if (v31)
          {
            v32 = ": ";
          }

          else
          {
            v32 = &byte_25D0A27DF;
          }

          if (v56)
          {
            v33 = 1;
            HIBYTE(v54) = 1;
            if (*v32)
            {
              __src = v32;
              v33 = 3;
            }

            LOBYTE(v54) = v33;
            mlir::Diagnostic::operator<<(v57, &__src);
            if (v56)
            {
              v54 = 260;
              __src = &__p;
              mlir::Diagnostic::operator<<(v57, &__src);
            }
          }
        }

        v34 = v58 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
      }

      if (v59 != v61)
      {
        free(v59);
      }

      v15 = v34 & 1;
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (v62 != v64)
  {
    free(v62);
  }

  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  return v15;
}

uint64_t mlir::AsmParser::parseSymbolName(mlir::AsmParser *a1, mlir::StringAttr *a2, const char *a3, const char *a4, uint64_t a5)
{
  if ((mlir::AsmParser::parseSymbolName(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v10 = *a2;
  v11 = *(**v10 + 32);
  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  v12 = mlir::StringAttr::get(v11, v14, v9);
  mlir::NamedAttrList::push_back(a5, v12, v10);
  return 1;
}

void mlir::function_interface_impl::printFunctionAttributes(uint64_t a1, mlir::Operation *a2, _BYTE *a3, uint64_t a4)
{
  v12[16] = *MEMORY[0x277D85DE8];
  __src[0] = "sym_name";
  __src[1] = 8;
  v10 = v12;
  v11 = 0x800000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v10, __src, &v10);
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v10, a3, &a3[16 * a4]);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a1 + 200))(a1, *(AttrDictionary + 8), *(AttrDictionary + 16), v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }
}

void mlir::function_interface_impl::printFunctionOp(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v13 = Attr;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  v16 = (*(*a1 + 16))(a1);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = mlir::Operation::getAttr(a2, "sym_visibility", 0xEuLL);
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v19 = v18[2];
    v20 = v18[3];
    v21 = (*(*a1 + 16))(a1);
    llvm::raw_ostream::operator<<(v21, v19, v20);
    v22 = (*(*a1 + 16))(a1);
    v23 = *(v22 + 4);
    if (v23 >= *(v22 + 3))
    {
      llvm::raw_ostream::write(v22, 32);
    }

    else
    {
      *(v22 + 4) = v23 + 1;
      *v23 = 32;
    }
  }

  (*(*a1 + 88))(a1, v15, v14);
  v24 = (*(*(a3 + 48) + 8))();
  v26 = v25;
  v27 = (*(*(a3 + 48) + 16))();
  v29 = v28;
  v30 = v24 & 0xFFFFFFFFFFFFFFF9;
  v31 = (*(*(a3 + 48) + 24))();
  v32 = (*(*(a3 + 48) + 32))();
  mlir::call_interface_impl::printFunctionSignature(a1, v30 | 2, v26, v31, a4, v27 & 0xFFFFFFFFFFFFFFF9 | 2, v29, v32, (((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10)), 0);
  v40[0] = "sym_visibility";
  v40[1] = 14;
  v40[2] = a5;
  v40[3] = a6;
  v41 = *(a7 + 16);
  v42 = *(a8 + 16);
  mlir::function_interface_impl::printFunctionAttributes(a1, a2, v40, 4);
  v33 = (((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
  if (*v33 != v33)
  {
    v34 = (*(*a1 + 16))(a1);
    v35 = *(v34 + 4);
    if (v35 >= *(v34 + 3))
    {
      llvm::raw_ostream::write(v34, 32);
    }

    else
    {
      *(v34 + 4) = v35 + 1;
      *v35 = 32;
    }

    (*(*a1 + 224))(a1, v33, 0, 1, 0);
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (**a1 != 1)
  {
    if (**(a1 + 16) == 1 && ((*(**(a1 + 8) + 352))(*(a1 + 8)) & 1) != 0)
    {
      v5 = *a1;
      v4 = 1;
      *v5 = 1;
      return v4 & 1;
    }

    memset(v24, 0, 24);
    v27[8] = 0;
    v25 = 0;
    Dictionary = 0;
    v27[0] = 0;
    v6 = (*(**(a1 + 8) + 760))();
    if ((v6 & 0x100) != 0)
    {
      if (v6)
      {
        v13 = *(a1 + 24);
        v14 = *(v13 + 8);
        if (v14 && !*(*v13 + (v14 << 6) - 48))
        {
          v11 = *(a1 + 8);
          v10 = v24[0];
          v12 = "expected type instead of SSA identifier";
          goto LABEL_15;
        }

LABEL_22:
        v4 = 1;
        v16 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(v13, v24, 1);
        v17 = (*v13 + (*(v13 + 8) << 6));
        v18 = *v16;
        v19 = v16[1];
        v20 = v16[3];
        v17[2] = v16[2];
        v17[3] = v20;
        *v17 = v18;
        v17[1] = v19;
        ++*(v13 + 8);
        return v4 & 1;
      }
    }

    else
    {
      v7 = (*(**(a1 + 8) + 40))(*(a1 + 8));
      v24[0] = v7;
      v8 = *(a1 + 24);
      v9 = *(v8 + 8);
      if (v9 && *(*v8 + (v9 << 6) - 48))
      {
        v10 = v7;
        v11 = *(a1 + 8);
        v12 = "expected SSA identifier";
LABEL_15:
        v22 = v12;
        v23 = 259;
        (*(*v11 + 24))(v28, v11, v10, &v22);
        goto LABEL_3;
      }

      v28[0] = v29;
      v28[1] = 0x400000000;
      v29[8] = 4;
      if ((*(**(a1 + 8) + 536))(*(a1 + 8), &v25) & 1) != 0 && ((*(**(a1 + 8) + 488))(*(a1 + 8), v28) & 1) != 0 && ((*(**(a1 + 8) + 656))(*(a1 + 8), v27))
      {
        v15 = (*(**(a1 + 8) + 32))(*(a1 + 8));
        Dictionary = mlir::NamedAttrList::getDictionary(v28, *v15);
        if (v28[0] != v29)
        {
          free(v28[0]);
        }

        v13 = *(a1 + 24);
        goto LABEL_22;
      }

      if (v28[0] != v29)
      {
        free(v28[0]);
      }
    }

    v4 = 0;
    return v4 & 1;
  }

  v2 = *(a1 + 8);
  v3 = (*(*v2 + 40))(v2);
  v24[0] = "variadic arguments must be in the end of the argument list";
  LOWORD(v25) = 259;
  (*(*v2 + 24))(v28, v2, v3, v24);
LABEL_3:
  v4 = v30 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  return v4 & 1;
}

uint64_t mlir::Diagnostic::operator<<<92ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::call_interface_impl::parseFunctionResultList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    v8[0] = 0;
    if (((*(*a1 + 536))(a1, v8) & 1) == 0)
    {
      return 0;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2, v8[0]);
    llvm::SmallVectorImpl<mlir::DictionaryAttr>::emplace_back<>(a3);
    return 1;
  }

  if ((*(*a1 + 304))(a1))
  {
    return 1;
  }

  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a1;
  v6 = (*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseTypeAndAttrList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>, v8, 0, 0);
  result = 0;
  if (v6)
  {
    return (*(*a1 + 296))(a1);
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::DictionaryAttr>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(a1, 0);
  }

  else
  {
    *(*a1 + 8 * v1) = 0;
    *(a1 + 8) = v1 + 1;
  }
}

uint64_t mlir::call_interface_impl::parseFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 304))(a1) & 1) == 0)
  {
    v13[0] = a2;
    v13[1] = a3;
    v13[2] = a1;
    if (((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseTypeAndAttrList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>, v13, 0, 0) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*a1 + 64))(a1))
  {
    return mlir::call_interface_impl::parseFunctionResultList(a1, a4, a5);
  }

  return a6 ^ 1u;
}

llvm::raw_ostream *mlir::call_interface_impl::printFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10)
{
  if (a9)
  {
    v17 = *a9 == a9;
    if (*a9 != a9 && a5 == 0 && a4 == 0 && a8 == 0 && a10 != 0)
    {
      v36 = (*(*a1 + 16))(a1, a2, a3, a4, a5);
      v37 = v36;
      v38 = *(v36 + 4);
      if (v38 >= *(v36 + 3))
      {
        llvm::raw_ostream::write(v36, 40);
        if (!a3)
        {
          goto LABEL_52;
        }
      }

      else
      {
        *(v36 + 4) = v38 + 1;
        *v38 = 40;
        if (!a3)
        {
          goto LABEL_52;
        }
      }

      v39 = mlir::TypeRange::dereference_iterator(a2, 0);
      (*(*a1 + 32))(a1, v39);
      if (a3 != 1)
      {
        v40 = 1;
        do
        {
          v41 = (*(*a1 + 16))(a1);
          v42 = *(v41 + 4);
          if (*(v41 + 3) - v42 > 1uLL)
          {
            *v42 = 8236;
            *(v41 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v41, ", ", 2uLL);
          }

          v43 = mlir::TypeRange::dereference_iterator(a2, v40);
          (*(*a1 + 32))(a1, v43);
          ++v40;
        }

        while (a3 != v40);
      }

LABEL_52:
      v44 = *(v37 + 4);
      if (v44 >= *(v37 + 3))
      {
        llvm::raw_ostream::write(v37, 41);
      }

      else
      {
        *(v37 + 4) = v44 + 1;
        *v44 = 41;
      }

      result = (*(*a1 + 16))(a1);
      v46 = result;
      v47 = *(result + 4);
      if (*(result + 3) - v47 > 3uLL)
      {
        *v47 = 540945696;
        *(result + 4) += 4;
      }

      else
      {
        result = llvm::raw_ostream::write(result, " -> ", 4uLL);
        v46 = result;
      }

      if (a7 == 1)
      {
        result = mlir::TypeRange::dereference_iterator(a6, 0);
        if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
        {
          v48 = mlir::TypeRange::dereference_iterator(a6, 0);
          v49 = *(*a1 + 32);

          return v49(a1, v48);
        }
      }

      v50 = *(v46 + 4);
      if (v50 >= *(v46 + 3))
      {
        result = llvm::raw_ostream::write(v46, 40);
        if (!a7)
        {
LABEL_110:
          v65 = *(v46 + 4);
          if (v65 < *(v46 + 3))
          {
            *(v46 + 4) = v65 + 1;
            goto LABEL_112;
          }

          v71 = v46;
LABEL_115:

          return llvm::raw_ostream::write(v71, 41);
        }
      }

      else
      {
        *(v46 + 4) = v50 + 1;
        *v50 = 40;
        if (!a7)
        {
          goto LABEL_110;
        }
      }

      v66 = mlir::TypeRange::dereference_iterator(a6, 0);
      result = (*(*a1 + 32))(a1, v66);
      if (a7 != 1)
      {
        v67 = 1;
        do
        {
          v68 = (*(*a1 + 16))(a1);
          v69 = *(v68 + 4);
          if (*(v68 + 3) - v69 > 1uLL)
          {
            *v69 = 8236;
            *(v68 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v68, ", ", 2uLL);
          }

          v70 = mlir::TypeRange::dereference_iterator(a6, v67);
          result = (*(*a1 + 32))(a1, v70);
          ++v67;
        }

        while (a7 != v67);
      }

      goto LABEL_110;
    }

    v72 = a5;
    v73 = a10;
  }

  else
  {
    v72 = a5;
    v73 = a10;
    v17 = 1;
  }

  v22 = (*(*a1 + 16))(a1);
  v23 = *(v22 + 4);
  v74 = a7;
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 40);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 40;
  }

  if (a3)
  {
    v24 = 0;
    while (1)
    {
      if (!v24)
      {
        goto LABEL_26;
      }

      v25 = (*(*a1 + 16))(a1);
      v26 = *(v25 + 4);
      if (*(v25 + 3) - v26 <= 1uLL)
      {
        break;
      }

      *v26 = 8236;
      *(v25 + 4) += 2;
      if (v17)
      {
LABEL_27:
        v27 = mlir::TypeRange::dereference_iterator(a2, v24);
        (*(*a1 + 32))(a1, v27);
        if (a4)
        {
          v28 = *(*(a4 + 8) + 8 * v24);
          (*(*a1 + 192))(a1, *(v28 + 8), *(v28 + 16), 0, 0);
        }

        goto LABEL_37;
      }

LABEL_30:
      if (a4)
      {
        v29 = *(*(a4 + 8) + 8 * v24);
        v30 = *(v29 + 8);
        v31 = *(v29 + 16);
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      v32 = a9[1];
      if (v32)
      {
        v33 = v32 - 8;
      }

      else
      {
        v33 = 0;
      }

      (*(*a1 + 152))(a1, *(*(v33 + 48) + 8 * v24), v30, v31, 0);
LABEL_37:
      if (a3 == ++v24)
      {
        goto LABEL_38;
      }
    }

    llvm::raw_ostream::write(v25, ", ", 2uLL);
LABEL_26:
    if (v17)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

LABEL_38:
  if (v72)
  {
    if (a3)
    {
      v34 = (*(*a1 + 16))(a1);
      v35 = *(v34 + 4);
      if (*(v34 + 3) - v35 > 1uLL)
      {
        *v35 = 8236;
        *(v34 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v34, ", ", 2uLL);
      }
    }

    v51 = (*(*a1 + 16))(a1);
    v52 = *(v51 + 4);
    if ((*(v51 + 3) - v52) > 2)
    {
      *(v52 + 2) = 46;
      *v52 = 11822;
      *(v51 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v51, "...", 3uLL);
    }
  }

  result = (*(*a1 + 16))(a1);
  v53 = *(result + 4);
  if (v53 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
  }

  else
  {
    *(result + 4) = v53 + 1;
    *v53 = 41;
  }

  if (v74)
  {
    v54 = (*(*a1 + 16))(a1);
    v55 = *(v54 + 4);
    if (*(v54 + 3) - v55 > 3uLL)
    {
      *v55 = 540945696;
      *(v54 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v54, " -> ", 4uLL);
    }

    v57 = (*(*a1 + 16))(a1);
    if (v74 != 1 || *(*mlir::TypeRange::dereference_iterator(a6, 0) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id || a8 && *(**(a8 + 8) + 16))
    {
      v58 = *(v57 + 4);
      if (v58 >= *(v57 + 3))
      {
        llvm::raw_ostream::write(v57, 40);
      }

      else
      {
        *(v57 + 4) = v58 + 1;
        *v58 = 40;
      }

      v59 = 1;
    }

    else
    {
      v59 = 0;
    }

    v60 = mlir::TypeRange::dereference_iterator(a6, 0);
    result = (*(*a1 + 32))(a1, v60);
    if (a8)
    {
      result = (*(*a1 + 192))(a1, *(**(a8 + 8) + 8), *(**(a8 + 8) + 16), 0, 0);
    }

    if (v74 != 1)
    {
      for (i = 1; i != v74; ++i)
      {
        v62 = *(v57 + 4);
        if (*(v57 + 3) - v62 > 1uLL)
        {
          *v62 = 8236;
          *(v57 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v57, ", ", 2uLL);
        }

        v63 = mlir::TypeRange::dereference_iterator(a6, i);
        result = (*(*a1 + 32))(a1, v63);
        if (a8)
        {
          v64 = *(*(a8 + 8) + 8 * i);
          result = (*(*a1 + 192))(a1, *(v64 + 8), *(v64 + 16), 0, 0);
        }
      }
    }

    if (v59)
    {
      v65 = *(v57 + 4);
      if (v65 < *(v57 + 3))
      {
        *(v57 + 4) = v65 + 1;
LABEL_112:
        *v65 = 41;
        return result;
      }

      v71 = v57;
      goto LABEL_115;
    }
  }

  else if (v73)
  {
    result = (*(*a1 + 16))(a1);
    v56 = *(result + 4);
    if ((*(result + 3) - v56) > 5)
    {
      *(v56 + 4) = 10536;
      *v56 = 540945696;
      *(result + 4) += 6;
    }

    else
    {

      return llvm::raw_ostream::write(result, " -> ()", 6uLL);
    }
  }

  return result;
}

void mlir::call_interface_impl::addArgAndResultAttrs(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27[6] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
LABEL_6:
    if (!a6)
    {
      return;
    }

    goto LABEL_7;
  }

  v14 = a3;
  v15 = 8 * a4;
  v16 = 8 * a4;
  v17 = a3;
  while (!*v17 || !*(*v17 + 16))
  {
    ++v17;
    v16 -= 8;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  v25 = v27;
  v26 = 0x600000000;
  do
  {
    v21 = *v14;
    if (!*v14)
    {
      v21 = mlir::DictionaryAttr::get(*result, 0, 0);
    }

    llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v25, v21);
    ++v14;
    v15 -= 8;
  }

  while (v15);
  v22 = mlir::ArrayAttr::get(*result, v25, v26);
  if (v25 != v27)
  {
    free(v25);
  }

  mlir::NamedAttrList::push_back(a2 + 112, a7, v22);
  if (a6)
  {
LABEL_7:
    v18 = 8 * a6;
    v19 = v18;
    for (i = a5; !*i || !*(*i + 16); ++i)
    {
      v19 -= 8;
      if (!v19)
      {
        return;
      }
    }

    v25 = v27;
    v26 = 0x600000000;
    do
    {
      v23 = *a5;
      if (!*a5)
      {
        v23 = mlir::DictionaryAttr::get(*result, 0, 0);
      }

      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v25, v23);
      ++a5;
      v18 -= 8;
    }

    while (v18);
    v24 = mlir::ArrayAttr::get(*result, v25, v26);
    if (v25 != v27)
    {
      free(v25);
    }

    mlir::NamedAttrList::push_back(a2 + 112, a8, v24);
  }
}

void mlir::call_interface_impl::addArgAndResultAttrs(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x600000000;
  if (a4)
  {
    v14 = a4 << 6;
    v15 = (a3 + 40);
    do
    {
      v16 = *v15;
      v15 += 8;
      llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(&v18, v16);
      v14 -= 64;
    }

    while (v14);
    v17 = v18;
    a4 = v19;
  }

  else
  {
    v17 = v20;
  }

  mlir::call_interface_impl::addArgAndResultAttrs(a1, a2, v17, a4, a5, a6, a7, a8);
  if (v18 != v20)
  {
    free(v18);
  }
}

unint64_t mlir::call_interface_impl::resolveCallable(mlir::SymbolTable *a1, uint64_t (**a2)(void, mlir::SymbolTable *), uint64_t a3)
{
  v5 = (*a2)(a2, a1);
  v7 = (v5 & 0xFFFFFFFFFFFFFFF8);
  if ((v5 & 4) != 0 && v7)
  {
    v8 = v7[1] & 7;
    v9 = v8 == 7;
    if (v8 == 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    if (!v9)
    {
      v11 = *(v10 + 8) & 7;
      if (v11 == 6)
      {
        return v10 + 24 * *(v10 + 16) + 120;
      }

      else
      {
        return v10 + 16 * v11 + 16;
      }
    }

    return 0;
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a1, v6);
  if (a3)
  {
    if (!NearestSymbolTable)
    {
      return 0;
    }

    return mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v7);
  }

  else
  {
    if (!NearestSymbolTable)
    {
      return 0;
    }

    return mlir::SymbolTable::lookupSymbolIn(NearestSymbolTable, v7);
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseTypeAndAttrList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>(uint64_t a1)
{
  v6[9] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(*a1);
  llvm::SmallVectorImpl<mlir::DictionaryAttr>::emplace_back<>(*(a1 + 8));
  v5[0] = v6;
  v5[1] = 0x400000000;
  v6[8] = 4;
  if ((*(**(a1 + 16) + 536))() & 1) != 0 && ((*(**(a1 + 16) + 488))(*(a1 + 16), v5))
  {
    v2 = (*(**(a1 + 16) + 32))(*(a1 + 16));
    *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = mlir::NamedAttrList::getDictionary(v5, *v2);
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if (v5[0] != v6)
  {
    free(v5[0]);
  }

  return v3;
}

uint64_t mlir::detail::verifyInferredResultTypes(mlir::detail *this, mlir::Operation *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  if (v3)
  {
    v4 = this - 16;
  }

  else
  {
    v4 = 0;
  }

  v12[0] = v13;
  v12[1] = 0x400000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(v12, v4, 0, v4, v3);
  InterfaceFor = mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  v6 = (*(InterfaceFor + 8))(*(***(this + 3) + 32));
  if ((v6 & 1) == 0)
  {
    v9 = 257;
    mlir::Operation::emitOpError(&v10, this, v8);
    if (v10)
    {
      mlir::Diagnostic::operator<<<31ul>(&v11, "failed to infer returned types");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  return v6;
}

void mlir::detail::reportFatalInferReturnTypesError(mlir::detail *this, mlir::OperationState *a2)
{
  memset(v12, 0, sizeof(v12));
  v3 = llvm::raw_string_ostream::raw_string_ostream(v11, v12);
  llvm::raw_ostream::operator<<(v3, "Failed to infer result type(s):\n");
  v4 = llvm::raw_ostream::operator<<(v11, "");
  v5 = mlir::operator<<(v4, *(this + 1));
  llvm::raw_ostream::operator<<(v5, "(...) ");
  Dictionary = mlir::NamedAttrList::getDictionary((this + 112), *(***this + 32));
  mlir::operator<<(v11, Dictionary);
  llvm::raw_ostream::operator<<(v11, " : (");
  llvm::interleaveComma<llvm::SmallVector<mlir::Value,4u>,mlir::detail::reportFatalInferReturnTypesError(mlir::OperationState &)::$_0,llvm::raw_string_ostream,mlir::Value>(this + 4, v11, v11);
  llvm::raw_ostream::operator<<(v11, ") ->(???)");
  v7 = *this;
  v8[0] = "location of op";
  v9 = 259;
  mlir::emitRemark(v7, v8, v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  llvm::StringRef::StringRef(v8, v12);
  llvm::report_fatal_error(v8[0], v8[1], 1);
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  llvm::raw_ostream::operator<<(a1, *(*(a2 + 8) + 16), *(*(a2 + 8) + 24));
  return a1;
}

{
  v4 = a2;
  mlir::Attribute::print(&v4, a1, 0);
  return a1;
}

{
  v4 = a2;
  mlir::Type::print(&v4, a1);
  return a1;
}

void llvm::interleaveComma<llvm::SmallVector<mlir::Value,4u>,mlir::detail::reportFatalInferReturnTypesError(mlir::OperationState &)::$_0,llvm::raw_string_ostream,mlir::Value>(unsigned int *a1, llvm::raw_ostream *a2, llvm::raw_ostream *a3)
{
  v3 = a1[2];
  if (v3)
  {
    v6 = *a1;
    v11 = *(**a1 + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::Type::print(&v11, a3);
    if (v3 != 1)
    {
      v7 = (v6 + 8);
      v8 = 8 * v3 - 8;
      do
      {
        v9 = *(a2 + 4);
        if (*(a2 + 3) - v9 > 1uLL)
        {
          *v9 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        v10 = *v7++;
        v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
        mlir::Type::print(&v11, a3);
        v8 -= 8;
      }

      while (v8);
    }
  }
}

uint64_t **llvm::StringRef::StringRef(uint64_t **result, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  *result = v2;
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  result[1] = v3;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[275];
}

uint64_t llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface>()
{
  {
    llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ReifyRankedShapedTypeOpInterface>();
    unk_27FC188B0 = v1;
  }

  return llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ReifyRankedShapedTypeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ReifyRankedShapedTypeOpInterface]";
  v6 = 100;
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

uint64_t mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

void mlir::ODIE::Compiler::CoreML::Specializer::~Specializer(mlir::ODIE::Compiler::CoreML::Specializer *this)
{
  if (*(this + 10))
  {
    v2 = *(this + 12);
    if (v2)
    {
      v3 = 24 * v2;
      v4 = *(this + 4);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 3;
        v3 -= 24;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v4 = *(this + 4);
    }

    v13 = *(this + 4) + 24 * v2;
LABEL_22:
    if (v4 != v13)
    {
      v14 = v4[1];
      v15 = *(v14 + 2);
      if (!v15)
      {
LABEL_27:
        mlir::Operation::destroy(v14);
        goto LABEL_28;
      }

      v16 = *(v15 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v16 || !*(v16 + 16))
      {
        *(v14 + 2) = 0;
        v18 = *v14;
        v17 = *(v14 + 1);
        *v17 = *v14;
        *(v18 + 8) = v17;
        *v14 = 0;
        *(v14 + 1) = 0;
        goto LABEL_27;
      }

LABEL_28:
      while (1)
      {
        v4 += 3;
        if (v4 == v13)
        {
          break;
        }

        if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_6:
  v5 = *(this + 14);
  v6 = *(this + 15);
  *(this + 18) = 0;
  v7 = v6 - v5;
  if (v7 >= 3)
  {
    do
    {
      operator delete(*v5);
      v6 = *(this + 15);
      v5 = (*(this + 14) + 8);
      *(this + 14) = v5;
      v7 = v6 - v5;
    }

    while (v7 > 2);
  }

  if (v7 == 1)
  {
    v8 = 128;
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v8 = 256;
LABEL_12:
    *(this + 17) = v8;
  }

  if (v5 != v6)
  {
    do
    {
      v9 = *v5++;
      operator delete(v9);
    }

    while (v5 != v6);
    v11 = *(this + 14);
    v10 = *(this + 15);
    if (v10 != v11)
    {
      *(this + 15) = v10 + ((v11 - v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v12 = *(this + 13);
  if (v12)
  {
    operator delete(v12);
  }

  MEMORY[0x25F891030](*(this + 10), 8);
  MEMORY[0x25F891030](*(this + 7), 8);
  MEMORY[0x25F891030](*(this + 4), 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(this + 2);
  MEMORY[0x25F891030](*(this + 1), 8);
}

uint64_t mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(void ****this, void ***a2)
{
  v106 = *MEMORY[0x277D85DE8];
  if (*this != a2)
  {
    v3 = a2;
    do
    {
      v4 = v3[2];
      if (!v4)
      {
        goto LABEL_93;
      }

      v5 = v4[3] & 0xFFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_93;
      }

      v3 = *(v5 + 16);
    }

    while (v3 != *this && v3 != 0);
    if (!v3)
    {
LABEL_93:
      *&v86 = "expected the specialization entrypoint to be within the provided module";
      LOWORD(v88) = 259;
      mlir::Operation::emitError(&v100, a2, &v86);
      v7 = (v105 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v100);
      return v7;
    }
  }

  v100 = this;
  v7 = 1;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(mlir::Operation *)::$_0>, &v100, 1);
  v8 = this[18];
  if (v8)
  {
    v9 = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
    while (1)
    {
      v10 = this[14];
      v11 = this[17];
      v12 = *(v10 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      v11 = (v11 + 1);
      this[17] = v11;
      this[18] = (v8 - 1);
      if (v11 >= 0x200)
      {
        operator delete(*v10);
        ++this[14];
        this[17] -= 32;
      }

      v15 = v14[1];
      v16 = *(*v15 + 136);
      if (v16 == v9)
      {
        v94 = v14[1];
      }

      else
      {
        if (v16 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v94 = 0;
LABEL_18:
          LOWORD(v88) = 257;
          emitDiag(v13, 2, &v86, &v100);
          if (v100)
          {
            mlir::Diagnostic::operator<<<56ul>(&v101, "could not lookup the concrete symbol for this binding: ");
            if (v100)
            {
              LODWORD(v86) = 0;
              *(&v86 + 1) = v14;
              goto LABEL_51;
            }
          }

          goto LABEL_52;
        }

        v94 = v15[1];
        if (!v94)
        {
          goto LABEL_18;
        }
      }

      v93 = 0uLL;
      v100 = &v93;
      v101 = this;
      v102 = &v94;
      mlir::detail::walk<mlir::ForwardIterator>(*this, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeBinding(mlir::ODIE::Compiler::CoreML::PendingSpecialization)::$_1>, &v100, 0);
      v17 = v93;
      if (!v93)
      {
        LOWORD(v88) = 257;
        emitDiag(v13, 2, &v86, &v100);
        if (v100)
        {
          mlir::Diagnostic::operator<<<39ul>(&v101, "could not resolve referred-to symbol: ");
          if (v100)
          {
            LODWORD(v86) = 0;
            *(&v86 + 1) = v94;
LABEL_51:
            v46 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v103, &v86, 1);
            v47 = &v103[3 * v104];
            v48 = *v46;
            v47[2] = *(v46 + 16);
            *v47 = v48;
            ++v104;
          }
        }

LABEL_52:
        v49 = v105;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v100);
        if (v49)
        {
          return 0;
        }

        goto LABEL_53;
      }

      v18 = v9;
      v19 = *(*(&v93 + 1) + 48);
      v100 = &v102;
      v101 = 0x600000000;
      do
      {
        if (!*((*v19)(v19, v17) + 24))
        {
          break;
        }

        v21 = (*v19)(v19, v17);
        v23 = mlir::SymbolRefAttr::get(v21, 0, 0, v22);
        llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v100, v23);
        v17 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(v17, v24);
        v19 = v25;
      }

      while (v17);
      v26 = v100;
      v27 = v101;
      v28 = v100 + 8 * v101 - 8;
      if (v101)
      {
        v29 = v28 > v100;
      }

      else
      {
        v29 = 0;
      }

      if (v29)
      {
        v30 = v100 + 8;
        do
        {
          v31 = *(v30 - 1);
          *(v30 - 1) = *v28;
          *v28 = v31;
          v28 -= 8;
          v32 = v30 >= v28;
          v30 += 8;
        }

        while (!v32);
        v26 = v100;
        v27 = v101;
      }

      v33 = mlir::SymbolRefAttr::get(*(*v26 + 8), v26 + 2, v27 - 1, v20);
      v34 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v33);
      v35 = *v34;
      v36 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v37 = mlir::detail::InterfaceMap::lookup(v35 + 8, v36);
      v39 = v14[3];
      v38 = v14[4];
      v40 = (*v37)(v37, v34);
      v41 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(*(**v34 + 32), v34, v40, v39, v38);
      if (v100 != &v102)
      {
        free(v100);
      }

      v92 = v41;
      v9 = v18;
      if (v14 == v41)
      {
        goto LABEL_46;
      }

      *&v86 = 0;
      v42 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(this[10], *(this + 24), v14, &v86);
      v43 = v86;
      if ((v42 & 1) == 0)
      {
        break;
      }

LABEL_45:
      v43[1] = v92;
LABEL_46:
      if (llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(this + 4, &v92))
      {
        goto LABEL_53;
      }

      v50 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::operator[](this + 7, &v92);
      *v50 = v93;
      v91[0] = 0;
      v91[1] = 0;
      v91[2] = 0x1000000000;
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v100 = &unk_286E80E98;
      v101 = v91;
      v103 = &v100;
      std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::emplace_back<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(&v86, &v100);
      std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](&v100);
      (*(*(&v93 + 1) + 16))(&v97);
      if (!v98 || (v51 = v92[4]) == 0)
      {
LABEL_63:
        v65 = mlir::Operation::clone(v93, 3);
        v66 = v65;
        if (v65)
        {
          InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v65);
        }

        else
        {
          InterfaceFor = 0;
        }

        (*(*(&v93 + 1) + 16))(&v100);
        (*(InterfaceFor + 8))(InterfaceFor, v66, v100, v101);
        if (v100 != &v102)
        {
          free(v100);
        }

        v100 = &v102;
        v101 = 0x300000000;
        v68 = (*(InterfaceFor + 24))(InterfaceFor, v66, v91, &v100);
        v9 = v18;
        if (v68)
        {
          if (v101)
          {
            v69 = v100;
            v70 = this[18];
            v71 = 16 * v101;
            do
            {
              v72 = this[15];
              v73 = this[14];
              v95[0] = *v69;
              if (v72 == v73)
              {
                v74 = 0;
              }

              else
              {
                v74 = 32 * (v72 - v73) - 1;
              }

              v75 = v70 + this[17];
              if (v74 == v75)
              {
                std::deque<mlir::ODIE::Compiler::CoreML::PendingSpecialization>::__add_back_capacity(this + 13);
                v73 = this[14];
                v75 = this[17] + this[18];
              }

              *&(*(v73 + ((v75 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v75] = v95[0];
              v70 = (this[18] + 1);
              this[18] = v70;
              ++v69;
              v71 -= 16;
            }

            while (v71);
          }

          v76 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::operator[](this + 4, &v92);
          *v76 = v66;
          v76[1] = InterfaceFor;
        }

        if (v100 != &v102)
        {
          free(v100);
        }

        goto LABEL_87;
      }

      v52 = v92[3];
      v53 = v97;
      v54 = 16 * v51 - 16;
      v55 = 8 * v98 - 8;
      while (1)
      {
        if (*(**v52 + 17) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
        {
          goto LABEL_61;
        }

        v56 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(&v86, *v53);
        v57 = v56[2];
        if ((*v52[1])() != v57)
        {
          break;
        }

        v60 = *(*v53 + 1);
        v61 = *(v60 + 16);
        v62 = *(v60 + 24);
        v63 = llvm::xxh3_64bits(v61, v62, v58, v59);
        (*llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::try_emplace_with_hash<>(v91, v61, v62, v63))[1] = *v52;
LABEL_61:
        if (v55)
        {
          ++v53;
          v52 += 2;
          v64 = v54;
          v54 -= 16;
          v55 -= 8;
          if (v64)
          {
            continue;
          }
        }

        goto LABEL_63;
      }

      v96 = 257;
      emitDiag(v13, 2, v95, &v100);
      if (v100)
      {
        mlir::Diagnostic::operator<<<55ul>(&v101, "declaration and binding types did not match, expected ");
        if (v100)
        {
          v77 = v56[2];
          LODWORD(v95[0]) = 4;
          *(&v95[0] + 1) = v77;
          v78 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v103, v95, 1);
          v79 = &v103[3 * v104];
          v80 = *v78;
          v79[2] = *(v78 + 16);
          *v79 = v80;
          ++v104;
          if (v100)
          {
            mlir::Diagnostic::operator<<<10ul>(&v101, " but got ");
          }
        }
      }

      v81 = (*v52[1])();
      v9 = v18;
      if (v100)
      {
        LODWORD(v95[0]) = 4;
        *(&v95[0] + 1) = v81;
        v82 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v103, v95, 1);
        v83 = &v103[3 * v104];
        v84 = *v82;
        v83[2] = *(v82 + 16);
        *v83 = v84;
        ++v104;
      }

      v68 = v105 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v100);
LABEL_87:
      if (v97 != &v99)
      {
        free(v97);
      }

      MEMORY[0x25F891030](v89, 8);
      v100 = &v87 + 8;
      std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&v100);
      v100 = &v86;
      std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&v100);
      llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::~StringMap(v91);
      if ((v68 & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v8 = this[18];
      if (!v8)
      {
        return 1;
      }
    }

    v100 = v86;
    v44 = *(this + 22);
    v45 = *(this + 24);
    if (4 * v44 + 4 >= 3 * v45)
    {
      v45 *= 2;
    }

    else if (v45 + ~v44 - *(this + 23) > v45 >> 3)
    {
LABEL_42:
      *(this + 22) = v44 + 1;
      if (*v43 != -4096)
      {
        --*(this + 23);
      }

      *v43 = v14;
      v43[1] = 0;
      goto LABEL_45;
    }

    llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::grow((this + 10), v45);
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(this[10], *(this + 24), v14, &v100);
    v44 = *(this + 22);
    v43 = v100;
    goto LABEL_42;
  }

  return v7;
}

uint64_t *mlir::ODIE::Compiler::CoreML::Specializer::lookupSpecialization@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>((a1 + 80), &v8);
  if (v5 && *(v5 + 8))
  {
    v8 = *(v5 + 8);
  }

  result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>((a1 + 32), &v8);
  if (!result || result == (*(a1 + 32) + 24 * *(a1 + 48)))
  {
    v7 = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = *(result + 1);
    v7 = 1;
  }

  a3[16] = v7;
  return result;
}

uint64_t *mlir::ODIE::Compiler::CoreML::Specializer::lookupOriginal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>((a1 + 80), &v8);
  if (v5 && *(v5 + 8))
  {
    v8 = *(v5 + 8);
  }

  result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>((a1 + 56), &v8);
  if (!result || result == (*(a1 + 56) + 24 * *(a1 + 72)))
  {
    v7 = 0;
    *a3 = 0;
  }

  else
  {
    *a3 = *(result + 1);
    v7 = 1;
  }

  a3[16] = v7;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::operator[](void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(*a1, *(a1 + 4), *a2, &v10);
  v5 = v10;
  if (v4)
  {
    return v5 + 1;
  }

  v11 = v10;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 3) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(*a1, *(a1 + 4), *a2, &v11);
    v6 = *(a1 + 2);
    v5 = v11;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  v8 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = v8;
  return v5 + 1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(mlir::Operation *)::$_0>(void ***a1, mlir::Operation *this)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v4 = this;
  v2 = *a1;
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v7 = 0;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v8[0] = &unk_286E80E50;
  v8[1] = v2;
  v8[2] = &v4;
  v8[3] = v8;
  mlir::AttrTypeWalker::addWalk(v5, v8);
  std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](v8);
  mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(v5, AttrDictionary, v5, 1);
  MEMORY[0x25F891030](v6, 8);
  v8[0] = &v5[1] + 1;
  std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](v8);
  v8[0] = v5;
  std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](v8);
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZNS2_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS2_9OperationEENK3__0clESA_EUlNS7_13ParamBindAttrEE_SC_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSE_E_NS_9allocatorISN_EEFNS2_10WalkResultESE_EE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E80E50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZNS2_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS2_9OperationEENK3__0clESA_EUlNS7_13ParamBindAttrEE_SC_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSE_E_NS_9allocatorISN_EEFNS2_10WalkResultESE_EEclEOSE_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v3 = *(a1 + 8);
    v4 = v3[15];
    v5 = v3[14];
    v6 = *(**(a1 + 16) + 24);
    if (v4 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 32 * (v4 - v5) - 1;
    }

    v8 = v3[18] + v3[17];
    if (v7 == v8)
    {
      std::deque<mlir::ODIE::Compiler::CoreML::PendingSpecialization>::__add_back_capacity(v3 + 13);
      v5 = v3[14];
      v8 = v3[18] + v3[17];
    }

    v9 = (*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8);
    *v9 = v6;
    v9[1] = v2;
    ++v3[18];
  }

  return 1;
}

void std::deque<mlir::ODIE::Compiler::CoreML::PendingSpecialization>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::PendingSpecialization *>>(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<mlir::ODIE::Compiler::CoreML::PendingSpecialization *>::emplace_back<mlir::ODIE::Compiler::CoreML::PendingSpecialization *&>(a1, &v9);
}

void std::__split_buffer<mlir::ODIE::Compiler::CoreML::PendingSpecialization *>::emplace_back<mlir::ODIE::Compiler::CoreML::PendingSpecialization *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::PendingSpecialization *>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::PendingSpecialization *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 24 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 24 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeBinding(mlir::ODIE::Compiler::CoreML::PendingSpecialization)::$_1>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), v5))
  {
    return 2;
  }

  v6 = mlir::SymbolTableCollection::lookupSymbolIn(v4 + 8, a2, **(a1 + 16));
  if (v6)
  {
    v6 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,void>>::doCastIfPossible(v6);
  }

  else
  {
    v7 = 0;
  }

  v9 = *a1;
  *v9 = v6;
  v9[1] = v7;
  return **a1 == 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 24 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::grow(uint64_t a1, int a2)
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
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_25D0A0500)));
      if (v23.i8[0])
      {
        *result = -4096;
      }

      if (v23.i8[4])
      {
        result[3] = -4096;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreML11Specializer17specializeBindingENSA_21PendingSpecializationEE3__0NSA_12ParamRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E80E98;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreML11Specializer17specializeBindingENSA_21PendingSpecializationEE3__0NSA_12ParamRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EEclEOSF_@<X0>(void *result@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v7 = result[1];
    result = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v7, *(*(v5 + 8) + 16), *(*(v5 + 8) + 24), a3);
    if ((*v7 + 8 * *(v7 + 8)) == result || (v8 = *(*result + 8)) == 0)
    {
      v8 = v5;
    }

    *a4 = v8;
    v6 = 1;
    *(a4 + 8) = 1;
  }

  else
  {
    v6 = 0;
    *a4 = 0;
  }

  *(a4 + 16) = v6;
  return result;
}

uint64_t mlir::ODIE::Compiler::isOperationDelegated(uint64_t this, mlir::Operation *a2)
{
  do
  {
    v2 = *(this + 16);
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v3)
    {
      return 0;
    }

    this = *(v3 + 16);
    if (!this)
    {
      return this;
    }
  }

  while (*(*(this + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id);
  v4 = *(this + 16 * ((*(this + 44) >> 23) & 1) + 72);
  if (*(v4 + 24) != 11)
  {
    return 1;
  }

  v5 = *(v4 + 16);
  v6 = *v5;
  v7 = *(v5 + 3);
  return v6 != 0x6572707265746E49 || v7 != 0x7265746572707265;
}

uint64_t mlir::ODIE::Compiler::getHandleForToken(uint64_t a1)
{
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16) + 120;
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = v1 + 16 * v2 + 16;
  }

  v4 = *(*(v3 + 48) + 16);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
  {
    return *(*(v3 + 72) + 24);
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return a1 == a2;
  }

  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = *(*v5 + 136);
    v7 = *(v3 + 32);
    if (v7)
    {
      if ((v6 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id) != (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id))
      {
        goto LABEL_19;
      }

      return a1 == a2;
    }
  }

  else
  {
    v8 = *(v3 + 32);
    if (!v8)
    {
      return a1 == a2;
    }

    v6 = *(*v8 + 136);
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    return a1 == a2;
  }

LABEL_19:
  if (*(v2 + 24) == *(v3 + 24) && (v10 = *(v2 + 16), v10 == *(v3 + 16)))
  {
    return memcmp(*(v2 + 8), *(v3 + 8), 8 * v10) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = mlir::TypeRange::dereference_iterator(a3, v6);
    result = mlir::ODIE::Compiler::areTypesCompatible(v8, v9);
    if (!result)
    {
      break;
    }
  }

  while (v7 != v6++);
  return result;
}

void mlir::detail::ConversionPatternRewriterImpl::undoRewrites(mlir::detail::ConversionPatternRewriterImpl *this, unsigned int a2)
{
  v2 = (this + 152);
  v3 = *(this + 40);
  if (v3 != a2)
  {
    v6 = a2;
    v7 = 8 * a2;
    v8 = v7 - 8 * v3;
    v9 = (*(this + 19) + 8 * v3 - 8);
    do
    {
      v10 = *v9--;
      (*(*v10 + 16))(v10);
      v8 += 8;
    }

    while (v8);
    v11 = *(this + 40);
    if (v11 != a2)
    {
      if (v11 <= a2)
      {
        if (*(this + 41) < a2)
        {
          v11 = *(this + 40);
        }

        if (v6 != v11)
        {
          bzero((*v2 + 8 * v11), 8 * (v6 - v11));
        }
      }

      else
      {
        v12 = *v2;
        v13 = v7 - 8 * v11;
        v14 = (v12 + 8 * v11 - 8);
        do
        {
          v15 = *v14;
          *v14 = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          --v14;
          v13 += 8;
        }

        while (v13);
      }

      *(this + 40) = a2;
    }
  }
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::remapValues(void *a1, void *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v9 = a8;
  v14 = a9;
  v61 = *MEMORY[0x277D85DE8];
  if (a8 <= *(a9 + 12))
  {
    v58 = 0;
    v59 = a7;
    v60 = 0;
    if (!a8)
    {
      return 1;
    }
  }

  else
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::grow(a9, a8);
    v58 = 0;
    v59 = a7;
    v60 = 0;
  }

  v15 = 0;
  v16 = 0;
  v43 = a5;
  v44 = v9;
  v41 = a1;
  v42 = a4;
  while (1)
  {
    v17 = mlir::ValueRange::dereference_iterator(&v59, v16);
    v18 = v17;
    v19 = *(v17 + 8);
    v20 = a4;
    if (a5)
    {
      goto LABEL_16;
    }

    if ((~v19 & 7) != 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = *(v21 + 8) & 7;
      if (v22 != 6)
      {
        v23 = v21 + 16 * v22 + 16;
LABEL_14:
        v24 = (v23 + 24);
        goto LABEL_15;
      }

      v23 = v21 + 24 * *(v21 + 16) + 120;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    v24 = (v17 + 32);
LABEL_15:
    v20 = *v24;
LABEL_16:
    v25 = a1[40];
    if (v25)
    {
      break;
    }

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::push_back(v14, &v52);
    if (v52 != v54)
    {
      free(v52);
    }

LABEL_46:
    ++v15;
    v16 = v60 + 1;
    v58 = v15;
    v60 = v16;
    if (v16 == v9)
    {
      return 1;
    }
  }

  v26 = v19 & 0xFFFFFFFFFFFFFFF8;
  v55 = &v57;
  v56 = 0x100000000;
  if (mlir::TypeConverter::convertType(v25, (v19 & 0xFFFFFFFFFFFFFFF8), &v55))
  {
    if (v56)
    {
      v47 = v53;
      if (!v53 || v53 != v56)
      {
        goto LABEL_32;
      }

      v27 = 0;
      v28 = 0;
      v29 = v52;
      v30 = v55;
      v40 = 8 * v56;
      v31 = 8 * v53 - 8;
      do
      {
        if (*(v30 + v27) != mlir::TypeRange::dereference_iterator(v29 & 0xFFFFFFFFFFFFFFF8, v28))
        {
          goto LABEL_32;
        }

        v32 = v27 + 8;
        if (v31 == v27)
        {
          break;
        }

        ++v28;
        v33 = v40 - 8 == v27;
        v27 += 8;
      }

      while (!v33);
      if (v32 != 8 * v47 || v40 != v32)
      {
LABEL_32:
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v52, &v50);
        if (v50 != &v51)
        {
          free(v50);
        }

        inserted = computeInsertPoint(v52, v53);
        v37 = v36;
        v48[0] = &v49;
        v48[1] = 0x100000000;
        if (v53)
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v48, &v52);
          v38 = v53;
        }

        else
        {
          v38 = 0;
        }

        mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(v41, 0, inserted, v37, v20, v48, v52 & 0xFFFFFFFFFFFFFFF9, v38, v55 & 0xFFFFFFFFFFFFFFF9 | 2, v56, v26, v41[40]);
      }

      v14 = a9;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::push_back(a9, &v52);
      v34 = 3;
      a5 = v43;
      v9 = v44;
      a1 = v41;
      a4 = v42;
      if (v52 != v54)
      {
        free(v52);
      }
    }

    else
    {
      v52 = v54;
      v53 = 0x100000000;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::push_back(v14, &v52);
      if (v52 != v54)
      {
        free(v52);
      }

      v34 = 3;
    }
  }

  else
  {
    v52 = a2;
    v53 = a3;
    v54[0] = v15;
    v54[1] = v18;
    v54[2] = v26;
    (*(*a1 + 88))(a1, v20, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::remapValues(llvm::StringRef,std::optional<mlir::Location>,mlir::PatternRewriter &,mlir::ValueRange,llvm::SmallVector<llvm::SmallVector<mlir::Value,1u>,2u> &)::$_0>, &v52);
    v34 = 1;
  }

  if (v55 != &v57)
  {
    free(v55);
  }

  if (v34 == 3)
  {
    goto LABEL_46;
  }

  return 0;
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::push_back(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= a2 && v5 + 24 * v4 > a2)
    {
      v8 = a2 - v5;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v8;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,1u>,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  result = (v5 + 24 * *(a1 + 8));
  *result = result + 2;
  result[1] = 0x100000000;
  if (*(v2 + 8))
  {
    result = llvm::SmallVectorImpl<mlir::Value>::operator=(result, v2);
  }

  ++*(a1 + 8);
  return result;
}

void anonymous namespace::ConversionValueMapping::lookupOrDefault(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v37 = v39;
  v38 = 0x100000000;
  __src = a3;
  v34 = &v36;
  v35 = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v34, &__src, &v32);
  do
  {
    if (v35)
    {
      v8 = v34 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v8 = 0;
    }

    if (a5 == v35)
    {
      if (a5)
      {
        v9 = 0;
        while (1)
        {
          v10 = mlir::TypeRange::dereference_iterator(v8, v9);
          if (v10 != mlir::TypeRange::dereference_iterator(a4, v9))
          {
            break;
          }

          if (a5 == ++v9)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v37, &v34);
      }
    }

    __src = &v33;
    v32 = 0x100000000;
    if (v35)
    {
      v11 = v34;
      v12 = 8 * v35;
      do
      {
        v13 = *v11;
        v28 = *v11;
        v29[0] = &v30;
        v29[1] = 0x100000000;
        llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v29, &v28, v29);
        v15 = *a2;
        v16 = *(a2 + 4);
        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = *a2 + 48 * v16;
        }

        if (v29[0] != &v30)
        {
          free(v29[0]);
          v15 = *a2;
          v16 = *(a2 + 4);
        }

        if (v17 == v15 + 48 * v16)
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&__src, v13);
        }

        else
        {
          llvm::SmallVectorImpl<mlir::Value>::insert<mlir::Value const*,void>(&__src, __src + 8 * v32, *(v17 + 24), (*(v17 + 24) + 8 * *(v17 + 32)));
        }

        ++v11;
        v12 -= 8;
      }

      while (v12);
      if (v32 != v35)
      {
        goto LABEL_33;
      }

      if (v32)
      {
        v18 = __src;
        v19 = v34;
        v20 = 8 * v32;
        while (*v18 == *v19)
        {
          ++v18;
          ++v19;
          v20 -= 8;
          if (!v20)
          {
            goto LABEL_27;
          }
        }

LABEL_33:
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v34, &__src);
        goto LABEL_34;
      }
    }

LABEL_27:
    if (v21)
    {
      v22 = v21 == *a2 + 48 * *(a2 + 4);
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = 1;
      goto LABEL_35;
    }

    llvm::SmallVectorImpl<mlir::Value>::operator=(&v34, v21 + 24);
LABEL_34:
    v23 = 0;
LABEL_35:
    if (__src != &v33)
    {
      free(__src);
    }
  }

  while (!v23);
  v24 = v38;
  v25 = v35;
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  if (v24 | v25)
  {
    if (v24)
    {
      v26 = &v37;
    }

    else
    {
      v26 = &v34;
    }

    llvm::SmallVectorImpl<mlir::Value>::operator=(a1, v26);
  }

  if (v34 != &v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }
}

BOOL mlir::TypeConverter::convertType(uint64_t a1, void *a2, uint64_t *a3)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v44 = a2;
  v6 = *(**(**a2 + 32) + 41);
  if (v6 == 1)
  {
    pthread_rwlock_rdlock(*(a1 + 520));
  }

  v7 = *(a1 + 488);
  v8 = a2 >> 4;
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = *(a1 + 472);
  v10 = (v8 ^ (a2 >> 9)) & (v7 - 1);
  v11 = *(v9 + 16 * v10);
  if (v11 != a2)
  {
    v23 = 1;
    while (v11 != -4096)
    {
      v24 = v10 + v23++;
      v10 = v24 & (v7 - 1);
      v11 = *(v9 + 16 * v10);
      if (v11 == a2)
      {
        goto LABEL_5;
      }
    }

LABEL_6:
    v12 = *(a1 + 512);
    if (v12)
    {
      v13 = *(a1 + 496);
      v14 = (v12 - 1) & (v8 ^ (a2 >> 9));
      v15 = v13 + 40 * v14;
      v16 = *v15;
      if (*v15 == a2)
      {
LABEL_8:
        if (v15 != v13 + 40 * v12)
        {
          llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(a3, *(v15 + 8), (*(v15 + 8) + 8 * *(v15 + 16)));
          v17 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        v25 = 1;
        while (v16 != -4096)
        {
          v26 = v14 + v25++;
          v14 = v26 & (v12 - 1);
          v15 = v13 + 40 * v14;
          v16 = *v15;
          if (*v15 == a2)
          {
            goto LABEL_8;
          }
        }
      }
    }

    v17 = 1;
LABEL_24:
    v22 = 1;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_5:
  if (v10 == v7)
  {
    goto LABEL_6;
  }

  v18 = v9 + 16 * v10;
  v21 = *(v18 + 8);
  v20 = (v18 + 8);
  v19 = v21;
  if (v21)
  {
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, v19);
    v22 = *v20 != 0;
  }

  else
  {
    v22 = 0;
  }

  v17 = 0;
  if (v6)
  {
LABEL_25:
    pthread_rwlock_unlock(*(a1 + 520));
  }

LABEL_26:
  if (!v17)
  {
    return v22;
  }

  v27 = *(a3 + 2);
  v28 = *(a1 + 16);
  v29 = *(a1 + 8) + 32 * v28;
  v30 = -32 * v28;
  do
  {
    if (!v30)
    {
      return 0;
    }

    v31 = *(v29 - 8);
    v47 = a2;
    if (!v31)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    v29 -= 32;
    v32 = (*(*v31 + 48))(v31, &v47, a3);
    v30 += 32;
  }

  while ((v32 & 0x100) == 0);
  v33 = v32;
  v34 = *(**(**a2 + 32) + 41);
  if (v34 == 1)
  {
    pthread_rwlock_wrlock(*(a1 + 520));
  }

  if ((v33 & 1) == 0)
  {
    v47 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::LookupBucketFor<mlir::Type>((a1 + 472), &v44, &v47) & 1) == 0)
    {
      v39 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::InsertIntoBucketImpl<mlir::Type>(a1 + 472, &v44, v47);
      *v39 = v44;
      v39[1] = 0;
    }

    v22 = 0;
    if (v34)
    {
      goto LABEL_52;
    }

    return v22;
  }

  v35 = *a3;
  v36 = *(a3 + 2);
  v37 = (*a3 + 8 * v27);
  if (v36 - v27 == 1)
  {
    v47 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::LookupBucketFor<mlir::Type>((a1 + 472), &v44, &v47) & 1) == 0)
    {
      v38 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::InsertIntoBucketImpl<mlir::Type>(a1 + 472, &v44, v47);
      *v38 = v44;
      v38[1] = *v37;
    }

    goto LABEL_51;
  }

  v47 = v49;
  v48 = 0x200000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v47, v37, (v35 + 8 * v36));
  v45 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::LookupBucketFor<mlir::Type>(*(a1 + 496), *(a1 + 512), v44, &v45) & 1) == 0)
  {
    v40 = v45;
    v46 = v45;
    v41 = *(a1 + 504);
    v42 = *(a1 + 512);
    if (4 * v41 + 4 >= 3 * v42)
    {
      v42 *= 2;
    }

    else if (v42 + ~v41 - *(a1 + 508) > v42 >> 3)
    {
LABEL_45:
      *(a1 + 504) = v41 + 1;
      if (*v40 != -4096)
      {
        --*(a1 + 508);
      }

      *v40 = v44;
      v40[1] = (v40 + 3);
      v40[2] = 0x200000000;
      if (v48)
      {
        llvm::SmallVectorImpl<mlir::Type>::operator=((v40 + 1), &v47);
      }

      goto LABEL_49;
    }

    llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(a1 + 496, v42);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::LookupBucketFor<mlir::Type>(*(a1 + 496), *(a1 + 512), v44, &v46);
    v41 = *(a1 + 504);
    v40 = v46;
    goto LABEL_45;
  }

LABEL_49:
  if (v47 != v49)
  {
    free(v47);
  }

LABEL_51:
  v22 = 1;
  if (v34)
  {
LABEL_52:
    pthread_rwlock_unlock(*(a1 + 520));
  }

  return v22;
}

void mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v28[0] = *(**mlir::TypeRange::dereference_iterator(a9, 0) + 32);
  v28[1] = 0;
  v28[2] = a3;
  v28[3] = a4;
  v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::UnrealizedConversionCastOp>(v28, *(**a5 + 32));
  v33[0] = a5;
  v33[1] = v19;
  v33[2] = v34;
  v33[3] = 0x400000000;
  v34[4] = v35;
  v34[5] = 0x400000000;
  v35[4] = v36;
  v35[5] = 0x400000000;
  v36[8] = 4;
  v36[9] = v37;
  v36[10] = 0x100000000;
  v37[1] = v38;
  v37[2] = 0x100000000;
  v38[1] = 0;
  v38[2] = 0;
  v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v38[4] = 0;
  v38[6] = 0;
  mlir::UnrealizedConversionCastOp::build(v28, v33, a9, a10, a7, a8, 0, 0);
  v20 = mlir::Operation::create(v33);
  mlir::OpBuilder::insert(v28, v20);
  if (*(*(v20 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v33);
  if (*(a6 + 8))
  {
    v21 = *(v20 + 9);
    if (v21)
    {
      v22 = (v20 - 16);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v32;
    v31 = 0x100000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v30, v22, 0, v22, v21);
    if (v31)
    {
      v23 = v30;
      v24 = 8 * v31;
      do
      {
        v25 = *v23++;
        v29 = v25;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 128, &v29, v33);
        v24 -= 8;
      }

      while (v24);
    }

    v33[0] = 0;
    v27 = v33[0];
    if ((v26 & 1) == 0)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(v27, a6);
      v27[3] = v27 + 5;
      v27[4] = 0x100000000;
    }

    llvm::SmallVectorImpl<mlir::Value>::operator=((v27 + 3), &v30);
    if (v30 != &v32)
    {
      free(v30);
    }
  }

  operator new();
}

uint64_t computeInsertPoint(uint64_t *a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  inserted = computeInsertPoint(*a1);
  v6 = v5;
  v7 = 8 * a2 - 8;
  if (8 * a2 != 8)
  {
    v8 = a1 + 1;
    do
    {
      v10 = computeInsertPoint(*v8);
      v11 = v9;
      v12 = inserted == v10 && v9 == v6;
      if (v12 || mlir::detail::DominanceInfoBase<false>::properlyDominatesImpl(v14, inserted, v6, v10, v9, 1))
      {
        inserted = v10;
        v6 = v11;
      }

      ++v8;
      v7 -= 8;
    }

    while (v7);
  }

  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase(v14);
  return inserted;
}

uint64_t *mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(uint64_t a1, uint64_t a2, void *a3, mlir::Block *a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>,mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>::LookupBucketFor<mlir::Region *>(*(a1 + 328), *(a1 + 344), a3, &v24);
  v11 = v24;
  if (v10)
  {
    goto LABEL_7;
  }

  v25[0] = v24;
  v12 = *(a1 + 336);
  v13 = *(a1 + 344);
  if (4 * v12 + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_39;
  }

  if (v13 + ~v12 - *(a1 + 340) <= v13 >> 3)
  {
LABEL_39:
    llvm::DenseMap<mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>::grow(a1 + 328, v13);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>,mlir::Region *,mlir::TypeConverter const*,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,mlir::TypeConverter const*>>::LookupBucketFor<mlir::Region *>(*(a1 + 328), *(a1 + 344), a3, v25);
    v12 = *(a1 + 336);
    v11 = v25[0];
  }

  *(a1 + 336) = v12 + 1;
  if (*v11 != -4096)
  {
    --*(a1 + 340);
  }

  *v11 = a3;
  v11[1] = 0;
LABEL_7:
  v11[1] = a4;
  if (*a3 == a3)
  {
    return 0;
  }

  v14 = *(a3[1] + 8);
  if (v14 == a3)
  {
LABEL_16:
    if (a5)
    {
      v16 = a3[1];
      if (v16)
      {
        v17 = v16 - 8;
      }

      else
      {
        v17 = 0;
      }

      return mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v17, a4, a5);
    }

    else
    {
      v19 = a3[1];
      if (v19)
      {
        v20 = v19 - 8;
      }

      else
      {
        v20 = 0;
      }

      mlir::TypeConverter::convertBlockSignature(v25, a4, v20);
      if (v29 == 1)
      {
        v21 = a3[1];
        if (v21)
        {
          v22 = v21 - 8;
        }

        else
        {
          v22 = 0;
        }

        v18 = mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v22, a4, v25);
        if (v29)
        {
          if (v27 != v28)
          {
            free(v27);
          }

          if (v25[0] != v26)
          {
            free(v25[0]);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v15 = (v14 - 1);
      v14 = v14[1];
      mlir::TypeConverter::convertBlockSignature(v25, a4, v15);
      if (v29 != 1)
      {
        return 0;
      }

      mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v15, a4, v25);
      if (v29)
      {
        if (v27 != v28)
        {
          free(v27);
        }

        if (v25[0] != v26)
        {
          free(v25[0]);
        }
      }

      if (v14 == a3)
      {
        goto LABEL_16;
      }
    }
  }

  return v18;
}

void mlir::TypeConverter::convertBlockSignature(void **this, mlir::Block *a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v6 = ((*(a3 + 56) - *(a3 + 48)) >> 3);
  __src = v17;
  v16 = 0x400000000;
  llvm::SmallVectorImpl<std::optional<mlir::TypeConverter::SignatureConversion::InputMapping>>::resizeImpl<false>(&__src, v6);
  v18 = v20;
  v19 = 0x400000000;
  v7 = *(a3 + 48);
  v8 = *(a3 + 56) - v7;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (mlir::TypeConverter::convertSignatureArgs(a2, v10, v8 >> 3, &__src))
  {
    *this = this + 2;
    this[1] = 0x400000000;
    v11 = v16;
    if (v16 && &__src != this)
    {
      if (__src == v17)
      {
        v14 = v16;
        if (v16 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(this, this + 2, v16, 32), (v14 = v16) != 0))
        {
          memcpy(*this, __src, 32 * v14);
        }

        *(this + 2) = v11;
      }

      else
      {
        *this = __src;
        v12 = HIDWORD(v16);
        *(this + 2) = v11;
        *(this + 3) = v12;
        __src = v17;
        HIDWORD(v16) = 0;
      }

      LODWORD(v16) = 0;
    }

    this[18] = this + 20;
    this[19] = 0x400000000;
    if (v19)
    {
      llvm::SmallVectorImpl<mlir::Type>::operator=((this + 18), &v18);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
    *this = 0;
  }

  *(this + 192) = v13;
  if (v18 != v20)
  {
    free(v18);
  }

  if (__src != v17)
  {
    free(__src);
  }
}

uint64_t *mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[14] = *MEMORY[0x277D85DE8];
  v7 = (a2 + 24);
  v8 = *(a2 + 24);
  v10 = *(a3 + 48);
  v9 = *(a3 + 56);
  v11 = v9 - v10;
  v12 = *(a5 + 144);
  v13 = *(a5 + 152);
  if (v9 - v10 != 8 * v13)
  {
    goto LABEL_15;
  }

  if (v10 != v9 && v13 != 0)
  {
    v15 = 8 * v13 - 8;
    v16 = *(a5 + 144);
    while (*v16 == (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v10 += 8;
      ++v16;
      if (v10 != v9)
      {
        v17 = v15;
        v15 -= 8;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v16 = *(a5 + 144);
LABEL_8:
  if (v10 != v9 || v16 != (v12 + 8 * v13))
  {
LABEL_15:
    v18 = (a2 + 8);
    v19 = *(**(a2 + 8) + 616);
    v29 = v31;
    v30 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Location>::assign(&v29, v13, v19);
    if ((v11 & 0x7FFFFFFF8) != 0)
    {
      v20 = 0;
      do
      {
        v21 = *a5 + 32 * v20;
        if ((*(v21 + 24) & 1) != 0 && !*(v21 + 16))
        {
          v22 = *(v21 + 8);
          if (v22)
          {
            v23 = *v21;
            v24 = *(*(*(a3 + 48) + 8 * v20) + 32);
            v25 = 8 * v23;
            v26 = 1;
            do
            {
              *(v29 + v25) = v24;
              v25 += 8;
            }

            while (v22 > v26++);
          }
        }

        ++v20;
      }

      while (v20 != (v11 >> 3));
    }

    mlir::OpBuilder::createBlock(v18, *(a3 + 24) & 0xFFFFFFFFFFFFFFF8, *(a3 + 16), v12 & 0xFFFFFFFFFFFFFFF9 | 2, v13, v29, v30);
  }

  if (v8)
  {
    *v7 = v8;
  }

  else
  {
    *v7 = 0;
    *(a2 + 32) = 0;
  }

  return a3;
}

void mlir::ConversionPatternRewriter::eraseBlock(mlir::detail::ConversionPatternRewriterImpl **this, mlir::Block *a2)
{
  v2 = *(a2 + 5);
  if (v2 != (a2 + 32))
  {
    mlir::ConversionPatternRewriter::eraseOp(this, v2);
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(this[5], a2);
}

void *mlir::detail::ConversionPatternRewriterImpl::findOrBuildReplacementValue(uint64_t a1, void **a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v23[0] = (a2[1] & 0xFFFFFFFFFFFFFFF8);
  if (v26)
  {
    v6 = *v25;
    goto LABEL_3;
  }

  v8 = *a2;
  if (*a2)
  {
    while (1)
    {
      v23[0] = v8[2];
      v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((a1 + 256), v23);
      if (!v9 || v9 == *(a1 + 256) + 8 * *(a1 + 272))
      {
        break;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v23[0] = a2;
    v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>((a1 + 128), v23);
    v6 = 0;
    if (!v10 || v10 == *(a1 + 128) + 8 * *(a1 + 144))
    {
      goto LABEL_3;
    }
  }

  llvm::SmallVectorImpl<mlir::Value>::operator=(&v25, v23);
  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v26)
  {
    inserted = computeInsertPoint(v25, v26);
    v13 = v12;
    v14 = a2[1];
    if ((~*(a2 + 2) & 7) != 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = v15[1] & 7;
    if (v16 == 6)
    {
      v17 = &v15[3 * v15[2] + 15];
      if (!v17)
      {
LABEL_21:
        v18 = a2 + 4;
        goto LABEL_25;
      }
    }

    else
    {
      v17 = &v15[2 * v16 + 2];
    }

    v18 = (v17 + 24);
LABEL_25:
    v19 = *v18;
    v21[0] = &v22;
    v21[1] = 0x100000000;
    if (v26)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(v21, &v25);
      v20 = v26;
      v14 = a2[1];
    }

    else
    {
      v20 = 0;
    }

    v23[0] = (v14 & 0xFFFFFFFFFFFFFFF8);
    mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 1u, inserted, v13, v19, v21, v25 & 0xFFFFFFFFFFFFFFF9, v20, v23 + 2, 1, 0, a3);
  }

  v6 = 0;
LABEL_3:
  if (v25 != v27)
  {
    free(v25);
  }

  return v6;
}

void anonymous namespace::ConversionValueMapping::lookupOrNull(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = &v22;
  v21 = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v20, &v19, &v20);
  if (v24 == v21)
  {
    if (!v24)
    {
LABEL_6:
      if (v20 != &v22)
      {
        free(v20);
      }

LABEL_25:
      *a1 = a1 + 2;
      a1[1] = 0x100000000;
      goto LABEL_28;
    }

    v9 = v23;
    v10 = 8 * v24;
    v11 = v20;
    while (*v9 == *v11)
    {
      ++v9;
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_6;
      }
    }
  }

  if (a5)
  {
    if (v24)
    {
      v12 = v23 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v12 = 0;
    }

    if (a5 == v24)
    {
      v13 = 0;
      v14 = a5 - 1;
      do
      {
        v15 = mlir::TypeRange::dereference_iterator(v12, v13);
        v16 = mlir::TypeRange::dereference_iterator(a4, v13);
        v17 = v15 == v16;
        v18 = v15 != v16;
        if (!v17)
        {
          break;
        }

        v17 = v14 == v13++;
      }

      while (!v17);
    }

    else
    {
      v18 = 1;
    }

    if (v20 != &v22)
    {
      free(v20);
    }

    if (v18)
    {
      goto LABEL_25;
    }
  }

  else if (v20 != &v22)
  {
    free(v20);
  }

  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  if (v24)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a1, &v23);
  }

LABEL_28:
  if (v23 != v25)
  {
    free(v23);
  }
}

void mlir::detail::ConversionPatternRewriterImpl::notifyOperationInserted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    operator new();
  }

  operator new();
}

void mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = 0;
  v40[1] = *MEMORY[0x277D85DE8];
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
  }

  v8 = a2 - 16;
  v32 = *(a2 + 36);
  if (v32)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (!a4)
  {
LABEL_32:
    operator new();
  }

  v10 = 0;
  v11 = 16 * a4;
  v12 = (a3 + 8);
  v13 = v8;
  v30 = a1;
  while (1)
  {
    v14 = v9;
    if (!v10)
    {
      goto LABEL_15;
    }

    v15 = v8;
    v16 = v10;
    if (v32)
    {
      v17 = *(v9 + 8) & 7;
      v15 = v8;
      v16 = v10;
      if (v17 != 6)
      {
        v18 = (5 - v17);
        v14 = v13;
        v16 = v10 - v18;
        if (v10 <= v18)
        {
          goto LABEL_15;
        }

        v15 = v8 - 16 * v18;
      }
    }

    v14 = (v15 - 24 * v16);
LABEL_15:
    if (*v12)
    {
      __src = v14;
      v38 = v40;
      v39 = 0x100000000;
      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v38, &__src, &v38);
      v19 = *(v12 - 1);
      v20 = *v12;
      v35[0] = &v36;
      v35[1] = 0x100000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v35, v19, 0, v19, v20);
      if (v35[0] != &v36)
      {
        free(v35[0]);
      }

      if (v38 != v40)
      {
        free(v38);
      }
    }

    else if (!v31)
    {
      inserted = computeInsertPoint(v14);
      v28 = v22;
      v29 = inserted;
      if ((~v14[2] & 7) != 0)
      {
        v23 = v14;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        v24 = *(v23 + 1) & 7;
        if (v24 == 6)
        {
          v25 = &v23[6 * *(v23 + 2) + 30];
          if (!v25)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v25 = &v23[4 * v24 + 4];
        }

        v26 = (v25 + 24);
      }

      else
      {
LABEL_27:
        v26 = (v14 + 8);
      }

      v27 = *v26;
      v38 = v14;
      v33[0] = &v34;
      v33[1] = 0x100000000;
      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v33, &v38, &v39);
      v35[0] = (*(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
      mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(v30, 1u, v29, v28, v27, v33, 0, 0, v35 + 2, 1, 0, *(v30 + 320));
    }

    ++v10;
    v13 -= 4;
    v12 += 2;
    v11 -= 16;
    if (!v11)
    {
      goto LABEL_32;
    }
  }
}

uint64_t computeInsertPoint(uint64_t a1)
{
  v1 = *(a1 + 8) & 7;
  if (v1 == 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 8) & 7;
  if (v3 != 6)
  {
    v4 = v2 + 16 * v3 + 16;
    return *(v4 + 16);
  }

  v4 = v2 + 24 * *(v2 + 16) + 120;
  if (!v4)
  {
LABEL_7:
    v4 = a1;
  }

  return *(v4 + 16);
}

void mlir::detail::ConversionPatternRewriterImpl::notifyBlockInserted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    operator new();
  }

  operator new();
}

void mlir::ConversionPatternRewriter::~ConversionPatternRewriter(mlir::ConversionPatternRewriter *this)
{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x25F891040);
}

void mlir::ConversionPatternRewriter::replaceOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v3 = *(a3 + 9);
  if (v3)
  {
    v4 = (a3 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v4 = 4;
  }

  mlir::ConversionPatternRewriter::replaceOp(this, a2, v4, v3);
}

void mlir::ConversionPatternRewriter::replaceOp(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = a3;
  v15[1] = a4;
  v12 = v14;
  v13 = 0x300000000;
  if (a4)
  {
    v6 = a4;
    for (i = 0; i != v6; ++i)
    {
      if (mlir::ValueRange::dereference_iterator(v15, i))
      {
        v9 = a3;
        if (i)
        {
          v9 = mlir::ValueRange::offset_base(v15, i);
        }

        v10 = 1;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(&v12, v9, v10);
    }

    v11 = v12;
    a4 = v13;
  }

  else
  {
    v11 = v14;
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(a1 + 40), a2, v11, a4);
}

void llvm::SmallVectorTemplateBase<mlir::ValueRange,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

void mlir::ConversionPatternRewriter::eraseOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9);
  v5 = v7;
  v6 = 0x300000000;
  llvm::SmallVectorImpl<mlir::ValueRange>::assign(&v5, v4, 0, 0);
  mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(this + 5), a2, v5, v6);
}

uint64_t mlir::ConversionPatternRewriter::getRemappedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9[0] = v10;
  v9[1] = 0x200000000;
  v6 = 0;
  if (mlir::detail::ConversionPatternRewriterImpl::remapValues(*(a1 + 40), "value", 5, 0, 0, a6, &v8, 1uLL, v9))
  {
    v6 = **v9[0];
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Value,1u>,2u>::~SmallVector(v9);
  return v6;
}

void mlir::ConversionPatternRewriter::inlineBlockBefore(mlir::ConversionPatternRewriter *this, mlir::Block *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v10 = *(this + 5);
  if (!*(*(v10 + 352) + 32))
  {
    mlir::detail::ConversionPatternRewriterImpl::notifyBlockBeingInlined(v10, a3, a2);
  }

  v11 = *(a2 + 6);
  v12 = *(a2 + 7);
  v17[0] = a5;
  v17[1] = 0;
  if (v11 != v12 && a6 != 0)
  {
    v14 = v11 + 8;
    v15 = mlir::ValueRange::dereference_iterator(v17, 0);
    mlir::ConversionPatternRewriter::replaceUsesOfBlockArgument(this, *(v14 - 8), v15);
  }

  v16 = a2 + 32;
  if (*(a2 + 4) != (a2 + 32))
  {
    do
    {
      mlir::RewriterBase::moveOpBefore(this, *(a2 + 5), a3, a4);
    }

    while (*(a2 + 4) != v16);
  }

  mlir::ConversionPatternRewriter::eraseBlock(this, a2);
}

_DWORD *mlir::ConversionPatternRewriter::finalizeOpModification(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  result = *(this + 2);
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 40))(result, a2);
    }
  }

  return result;
}

uint64_t mlir::ConversionPatternRewriter::cancelOpModification(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v3 = *(this + 5);
  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
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
        goto LABEL_13;
      }
    }

    v4 += v6;
  }

  else
  {
    v4 += 8 * v5;
  }

LABEL_13:
  (*(**(v4 - 8) + 16))(*(v4 - 8), a2);
  v9 = *(this + 5);
  v10 = *(v9 + 152);
  v11 = ((v4 - v10) << 29) - 0x100000000;
  v12 = (v10 + (v11 >> 29) + 8);
  v13 = *(v9 + 160);
  if (v12 != (v10 + 8 * v13))
  {
    v14 = (v11 >> 29) - 8 * v13 + 8;
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
    LODWORD(v13) = *(v9 + 160);
    v10 = *(v9 + 152);
  }

  v16 = v13 - 1;
  *(v9 + 160) = v16;
  result = *(v10 + 8 * v16);
  *(v10 + 8 * v16) = 0;
  if (result)
  {
    v18 = *(*result + 8);

    return v18();
  }

  return result;
}

void mlir::ConversionPattern::getOneToOneAdaptorOperands(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a4 + 2;
  a4[1] = 0x600000000;
  if (a3 < 7)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 2, a3, 8);
  }

  v8 = (a2 + 8);
  v9 = 16 * a3;
  v10 = (a2 + 8);
  do
  {
    v11 = *v10;
    v10 += 2;
    if (v11 != 1)
    {
      v16 = *(result + 64);
      v17 = *(result + 72);
      v21 = 1283;
      v20[0] = "pattern '";
      v20[2] = v16;
      v20[3] = v17;
      v18 = "' does not support 1:N conversion";
      v19 = 259;
      llvm::operator+(v20, &v18, v22);
      llvm::report_fatal_error(v22, 1);
    }

    v12 = *(v8 - 1);
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 6) != 0 || v13 == 0)
    {
      if ((*(v8 - 1) & 6) == 2 && v13 != 0)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a4, v13);
    v8 = v10;
    v9 -= 16;
  }

  while (v9);
}

uint64_t mlir::ConversionPattern::matchAndRewrite(mlir::ConversionPattern *this, mlir::Operation *a2, mlir::PatternRewriter *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 5);
  v9 = v8[40];
  v8[40] = *(this + 12);
  v26 = v28;
  v27 = 0x200000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 17);
    v11 = *(a2 + 9) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v10 = 0;
    v11 = 2;
  }

  if (!mlir::detail::ConversionPatternRewriterImpl::remapValues(v8, "operand", 7, *(a2 + 3), 1, a6, v11, v10, &v26))
  {
    v16 = 0;
    goto LABEL_14;
  }

  v12 = v26;
  v13 = v27;
  v23 = v25;
  v24 = 0x300000000;
  if (v27 < 4)
  {
    if (!v27)
    {
      v20 = 0;
      v21 = v25;
      goto LABEL_12;
    }

    v14 = 0;
    v15 = v25;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v27, 16);
    v14 = v24;
    v15 = v23;
  }

  v17 = &v12[3 * v13];
  v18 = &v15[16 * v14];
  do
  {
    v19 = *(v12 + 2);
    *v18 = *v12 & 0xFFFFFFFFFFFFFFF9;
    v18[1] = v19;
    v18 += 2;
    v12 += 3;
  }

  while (v12 != v17);
  v20 = v24;
  v21 = v23;
LABEL_12:
  LODWORD(v24) = v20 + v13;
  v16 = (*(*this + 72))(this, a2, v21);
  if (v23 != v25)
  {
    free(v23);
  }

LABEL_14:
  llvm::SmallVector<llvm::SmallVector<mlir::Value,1u>,2u>::~SmallVector(&v26);
  v8[40] = v9;
  return v16;
}

uint64_t anonymous namespace::OperationLegalizer::legalize(mlir::ConversionTarget **this, mlir::Operation *a2, mlir::ConversionPatternRewriter *a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v14 = a2;
  isLegal = mlir::ConversionTarget::isLegal(this[11], a2);
  if (isLegal < 0x100u)
  {
    v7 = *(a3 + 5);
    v20 = a2;
    if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((v7 + 256), &v20))
    {
      v20 = a2;
      if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>((v7 + 216), &v20))
      {
        v20 = v22;
        v21 = 0x200000000;
        *(a3 + 3) = *(a2 + 2);
        *(a3 + 4) = a2;
        if (mlir::OpBuilder::tryFold((a3 + 8), a2, &v20))
        {
          if (v21)
          {
            mlir::ConversionPatternRewriter::replaceOp(a3, a2, v20 & 0xFFFFFFFFFFFFFFF9, v21);
          }
        }

        else
        {
          v10 = 0;
        }

        if (v20 != v22)
        {
          free(v20);
        }

        if ((v10 & 1) == 0)
        {
          v18[2] = a3;
          v19 = a2;
          v12 = *(a3 + 5);
          v18[0] = this;
          v18[1] = &v19;
          v13 = v12[72];
          v16 = v12[40] | (v12[62] << 32);
          v17 = v13;
          v15[0] = this;
          v15[1] = v12;
          v15[2] = &v16;
          v20 = this;
          v21 = &v19;
          v22[0] = a3;
          v22[1] = &v16;
          v22[2] = v12;
        }
      }
    }

    return 1;
  }

  if ((isLegal & 1) == 0)
  {
    return 1;
  }

  v20 = &v14;
  v21 = a3;
  v9 = 1;
  return v9;
}

uint64_t mlir::OperationConverter::convertOperations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[32] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = 0;
    v5 = *(a1 + 136);
    v9[0] = &v10;
    v9[1] = 0x600000000;
    v6 = 8 * a3;
    do
    {
      v7 = *(a2 + v4);
      v11[0] = v9;
      v11[1] = v5;
      mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(v7, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>, v11);
      v4 += 8;
    }

    while (v6 != v4);
    operator new();
  }

  return 1;
}

void llvm::SmallVectorTemplateBase<mlir::UnrealizedConversionCastOp,true>::push_back(uint64_t a1, uint64_t a2)
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

void llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t mlir::TypeConverter::convertType(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
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

uint64_t mlir::TypeConverter::convertTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a3)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    v9 = mlir::TypeRange::dereference_iterator(a2, v8);
    if (!mlir::TypeConverter::convertType(a1, v9, a4))
    {
      break;
    }

    if (a3 == ++v8)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::TypeConverter::isLegal(mlir::TypeConverter *this, mlir::Operation *a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 9);
    v5 = *(a2 + 17);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v9[0] = v4;
  v9[1] = 0;
  v9[2] = v4;
  v9[3] = v5;
  result = mlir::TypeConverter::isLegal<mlir::ValueTypeRange<mlir::OperandRange>>(this, v9);
  if (result)
  {
    v7 = *(a2 + 9);
    if (v7)
    {
      v8 = a2 - 16;
    }

    else
    {
      v8 = 0;
    }

    v10 = this;
    return _ZNSt3__18__all_ofB8nn200100IN4mlir17ValueTypeIteratorIN4llvm6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESA_SA_E8iteratorEEESD_NS_10__identityEZNKS1_13TypeConverter7isLegalINS1_14ValueTypeRangeIS6_EEEENS_9enable_ifIXaantsr3std14is_convertibleIT_NS1_4TypeEEE5valuentsr3std14is_convertibleISK_PNS1_9OperationEEE5valueEbE4typeEOSK_EUlSL_E_EEbSK_T0_RT2_RT1_(v8, 0, v8, v7, &v10);
  }

  return result;
}

BOOL mlir::TypeConverter::isLegal<mlir::ValueTypeRange<mlir::OperandRange>>(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[3];
  if (v2 == v3)
  {
    return 1;
  }

  v6 = ~v2 + v3;
  v7 = (*a2 + 32 * v2 + 24);
  do
  {
    v8 = *v7;
    v7 += 4;
    v9 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    v10 = mlir::TypeConverter::convertType(a1, v9);
    v12 = v6-- != 0;
    v13 = v10 == v9;
    result = v10 == v9;
  }

  while (v13 && v12);
  return result;
}

uint64_t mlir::TypeConverter::convertSignatureArgs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = 1;
  v5 = a3;
  if (a3)
  {
    v9 = 0;
    for (i = 24; ; i += 32)
    {
      v11 = mlir::TypeRange::dereference_iterator(a2, v9);
      __src = v20;
      v19 = 0x100000000;
      v12 = mlir::TypeConverter::convertType(a1, v11, &__src);
      if (v12)
      {
        v13 = v19;
        if (v19)
        {
          v14 = __src;
          v15 = (*a4 + i);
          v16 = *v15;
          *(v15 - 3) = *(a4 + 152);
          *(v15 - 2) = v13;
          *(v15 - 1) = 0;
          if ((v16 & 1) == 0)
          {
            *v15 = 1;
          }

          llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a4 + 144), v14, &v14[8 * v13]);
        }
      }

      if (__src != v20)
      {
        free(__src);
      }

      if (!v12)
      {
        break;
      }

      if (v5 == ++v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4;
}

unint64_t mlir::TypeConverter::convertTypeAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 400);
  v6 = *(a1 + 392) + 32 * v5 - 32;
  for (i = -32 * v5; i; i += 32)
  {
    v8 = std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(v6, a2, a3);
    if ((v8 & 6) == 4)
    {
      break;
    }

    v6 -= 32;
    if ((v8 & 6) == 2)
    {
      return v8 & 0xFFFFFFFFFFFFFFF8;
    }
  }

  return 0;
}

uint64_t std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v8, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](v5, v6);
}

uint64_t llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](uint64_t a1, uint64_t *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>::try_emplace<unsigned int const&>(a1, &v10, v11, &v8);
  v4 = v8;
  if (v9)
  {
    memset(&v11[2], 0, 32);
    v11[2] = 2;
    v5 = *a2;
    v12 = 0;
    v13 = v5;
    v14 = 2;
    v15 = 0;
    v16[3] = 0;
    llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::push_back(a1 + 24, &v13);
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v16);
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](&v11[4]);
    v6 = *(a1 + 32) - 1;
    *(v4 + 8) = v6;
  }

  else
  {
    v6 = *(v8 + 8);
  }

  return *(a1 + 24) + 48 * v6 + 8;
}

uint64_t **mlir::ConversionTarget::setDialectAction(uint64_t **result, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a2;
    v6 = result;
    v7 = a2 + 16 * a3;
    do
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v5 += 16;
      v10 = llvm::xxh3_64bits(v8, v9, a3, a4);
      result = llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 9), v8, v9, v10);
      *(*result + 2) = v4;
    }

    while (v5 != v7);
  }

  return result;
}

uint64_t mlir::ConversionTarget::getOpAction(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::ConversionTarget::getOpInfo(&v4, a1, a2);
  if (v5[32] != 1)
  {
    return 0;
  }

  v2 = v4;
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v5);
  return v2 | 0x100000000;
}

uint64_t mlir::ConversionTarget::getOpInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  v31 = a3;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>::doFind<mlir::OperationName>((a2 + 8), &v31);
  v6 = v5 == *(a2 + 8) + 16 * *(a2 + 24) || v5 == 0;
  v7 = (v5 + 8);
  if (v6)
  {
    v7 = (a2 + 40);
  }

  v8 = *v7;
  if (v8 != *(a2 + 40))
  {
    v18 = *(a2 + 32) + 48 * v8;
    v19 = *(v18 + 12);
    *a1 = *(v18 + 8);
    *(a1 + 4) = v19;
    result = std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](a1 + 8, v18 + 16);
    *(a1 + 40) = 1;
    return result;
  }

  DialectNamespace = mlir::OperationName::getDialectNamespace(&v31);
  v11 = v10;
  v14 = llvm::xxh3_64bits(DialectNamespace, v10, v12, v13);
  result = llvm::StringMapImpl::FindKey((a2 + 72), DialectNamespace, v11, v14);
  if (result == -1 || (v16 = result, result == *(a2 + 80)))
  {
    if (!*(a2 + 144))
    {
      *a1 = 0;
      *(a1 + 40) = 0;
      return result;
    }

    v32 = 1;
    v33 = 0;
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v34, a2 + 120);
    *a1 = v32;
    *(a1 + 4) = v33;
    v17 = v36;
    if (v36)
    {
      if (v36 == v34)
      {
        *(a1 + 32) = a1 + 8;
        (*(*v17 + 24))(v17);
      }

      else
      {
        *(a1 + 32) = v36;
        v36 = 0;
      }
    }

    else
    {
      *(a1 + 32) = 0;
    }

    *(a1 + 40) = 1;
    v29 = v34;
  }

  else
  {
    v20 = *(a2 + 72);
    v38 = 0;
    v21 = mlir::OperationName::getDialectNamespace(&v31);
    v23 = v22;
    v26 = llvm::xxh3_64bits(v21, v22, v24, v25);
    Key = llvm::StringMapImpl::FindKey((a2 + 96), v21, v23, v26);
    if (Key != -1 && Key != *(a2 + 104))
    {
      std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](&v32, *(*(a2 + 96) + 8 * Key) + 8);
      v28 = v35;
      if (v35 == &v32)
      {
        if (v38 == v37)
        {
          (*(*v35 + 24))();
          (*(*v35 + 32))(v35);
          v35 = 0;
          (*(*v38 + 24))(v38, &v32);
          (*(*v38 + 32))(v38);
          v38 = 0;
          v35 = &v32;
          (*(v39[0] + 24))(v39, v37);
          (*(v39[0] + 32))(v39);
        }

        else
        {
          (*(*v35 + 24))();
          (*(*v35 + 32))(v35);
          v35 = v38;
        }

        v38 = v37;
      }

      else if (v38 == v37)
      {
        (*(*v38 + 24))(v38, &v32);
        (*(*v38 + 32))(v38);
        v38 = v35;
        v35 = &v32;
      }

      else
      {
        v35 = v38;
        v38 = v28;
      }

      std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](&v32);
    }

    v32 = *(*(v20 + 8 * v16) + 8);
    v33 = 0;
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v34, v37);
    *a1 = v32;
    *(a1 + 4) = v33;
    v30 = v36;
    if (v36)
    {
      if (v36 == v34)
      {
        *(a1 + 32) = a1 + 8;
        (*(*v30 + 24))(v30);
      }

      else
      {
        *(a1 + 32) = v36;
        v36 = 0;
      }
    }

    else
    {
      *(a1 + 32) = 0;
    }

    *(a1 + 40) = 1;
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v34);
    v29 = v37;
  }

  return std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v29);
}

uint64_t mlir::ConversionTarget::isLegal(mlir::ConversionTarget *this, mlir::Operation *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  mlir::ConversionTarget::getOpInfo(&v18, this, *(a2 + 6));
  if (v21 != 1)
  {
    goto LABEL_6;
  }

  v4 = v18;
  if (v18 != 1)
  {
LABEL_5:
    if (v4)
    {
LABEL_6:
      v6 = 0;
      v7 = 0;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v5 = std::function<std::optional<BOOL> ()(mlir::Operation *)>::operator()(v20[3], a2);
  if ((v5 & 0x100) == 0)
  {
    v4 = v18;
    goto LABEL_5;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (v19 != 1)
  {
    v6 = 0;
    goto LABEL_19;
  }

  v8 = *(this + 16);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = *(a2 + 6);
  v10 = *(this + 6);
  v11 = ((v9 >> 4) ^ (v9 >> 9)) & (v8 - 1);
  v12 = (v10 + 40 * v11);
  v13 = *v12;
  if (*v12 != v9)
  {
    v15 = 1;
    while (v13 != -4096)
    {
      v16 = v11 + v15++;
      v11 = v16 & (v8 - 1);
      v12 = (v10 + 40 * v11);
      v13 = *v12;
      if (*v12 == v9)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_18;
  }

LABEL_11:
  if (v12 == (v10 + 40 * v8))
  {
LABEL_18:
    v6 = 1;
    goto LABEL_19;
  }

  v14 = std::function<std::optional<BOOL> ()(mlir::Operation *)>::operator()(v12[4], a2);
  v6 = ((v14 & 0x100) == 0) | v14 & 1;
LABEL_19:
  v7 = 1;
LABEL_20:
  if (v21 == 1)
  {
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v20);
  }

  return v6 | (v7 << 8);
}

uint64_t std::function<std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::ConversionTarget::setLegalityCallback(v3, v4, v5);
}

uint64_t mlir::ConversionTarget::setLegalityCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>::doFind<mlir::OperationName>((a1 + 8), &v10);
  v6 = v5 == *(a1 + 8) + 16 * *(a1 + 24) || v5 == 0;
  v7 = (v5 + 8);
  if (v6)
  {
    v7 = (a1 + 40);
  }

  v8 = *(a1 + 32) + 48 * *v7;
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v12, v8 + 16);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v11, a3);
  composeLegalityCallbacks(v12, v11, v13);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::operator=[abi:nn200100](v8 + 16, v13);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v13);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v11);
  return std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v12);
}

uint64_t composeLegalityCallbacks@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v9, a1);
    std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v11, a2);
    if (v10)
    {
      if (v10 == v9)
      {
        v6 = &v5;
        (*(*v10 + 24))();
      }

      else
      {
        v6 = v10;
        v10 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v12)
    {
      if (v12 == v11)
      {
        v8 = &v7;
        (*(*v12 + 24))();
      }

      else
      {
        v8 = v12;
        v12 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    operator new();
  }

  return std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](a3, a2);
}

uint64_t mlir::ConversionTarget::setLegalityCallback(uint64_t result, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2;
    v6 = result;
    v7 = a2 + 16 * a3;
    do
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v5 += 16;
      v10 = llvm::xxh3_64bits(v8, v9, a3, a4);
      v11 = llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 96), v8, v9, v10);
      std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v17, (*v11 + 1));
      std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v16, a4);
      composeLegalityCallbacks(v17, v16, v18);
      v14 = llvm::xxh3_64bits(v8, v9, v12, v13);
      v15 = llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 96), v8, v9, v14);
      std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::operator=[abi:nn200100]((*v15 + 1), v18);
      std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v18);
      std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v16);
      result = std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v17);
    }

    while (v5 != v7);
  }

  return result;
}

uint64_t mlir::ConversionTarget::setLegalityCallback(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v6, a1 + 120);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v5, a2);
  composeLegalityCallbacks(v6, v5, v7);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::operator=[abi:nn200100](a1 + 120, v7);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v7);
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v5);
  return std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](v6);
}

uint64_t mlir::applyPartialConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v12[10] = *MEMORY[0x277D85DE8];
  mlir::OperationConverter::OperationConverter(v9, a3, a4, a5, 0);
  v7 = mlir::OperationConverter::convertOperations(v9, a1, a2);
  mlir::PatternApplicator::~PatternApplicator(v12);
  if ((v11 & 1) == 0)
  {
    free(v10);
  }

  return v7;
}

uint64_t mlir::OperationConverter::OperationConverter(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v6 = *a4;
  v7 = a4[2];
  *(a1 + 16) = a4[1];
  *(a1 + 32) = v7;
  *a1 = v6;
  *(a1 + 48) = a1 + 72;
  v8 = (a1 + 48);
  *(a1 + 56) = 8;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  *(a1 + 136) = a2;
  mlir::PatternApplicator::PatternApplicator(a1 + 144, a3);
  v86 = 0x100000000;
  *(a1 + 208) = a1;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v85 = v87;
  v82[0] = 0;
  v82[1] = 0;
  v83 = 0;
  v80[0] = 0;
  v80[1] = 0;
  v81 = 0;
  v77 = 0;
  v76 = 0u;
  v78 = v80;
  v79 = 0;
  v71 = &v85;
  v72 = v8;
  v73 = v80;
  v74 = v82;
  v75 = &v76;
  if (v86)
  {
    if (v79)
    {
      v9 = v78;
      v10 = 8 * v79;
      do
      {
        v11 = *v9;
        v12 = *(*v9 + 8);
        if (v12 == 1)
        {
          v13 = *v11;
        }

        else
        {
          LOBYTE(v12) = 0;
          v13 = 0;
        }

        v71 = v13;
        LOBYTE(v72) = v12;
        v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](&v68, &v71);
        llvm::SmallVectorTemplateBase<mlir::Pattern const*,true>::push_back(v14, v11);
        v9 += 8;
        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    for (i = v79; v79; i = v79)
    {
      v16 = *(v78 + i - 1);
      if (v77)
      {
        v17 = ((v16 >> 4) ^ (v16 >> 9)) & (v77 - 1);
        v18 = *(v76 + 8 * v17);
        if (v18 == v16)
        {
LABEL_12:
          *(v76 + 8 * v17) = -8192;
          *(&v76 + 1) = vadd_s32(*(&v76 + 8), 0x1FFFFFFFFLL);
        }

        else
        {
          v52 = 1;
          while (v18 != -4096)
          {
            v53 = v17 + v52++;
            v17 = v53 & (v77 - 1);
            v18 = *(v76 + 8 * v17);
            if (v18 == v16)
            {
              goto LABEL_12;
            }
          }
        }
      }

      LODWORD(v79) = i - 1;
      v19 = v16[8];
      if (v19)
      {
        v20 = *(v16 + 3);
        v21 = v68;
        v22 = 8 * v19;
        v23 = v70;
        while (1)
        {
          v24 = *v20;
          OpAction = mlir::ConversionTarget::getOpAction(*(a1 + 136), *v20);
          if (!llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::doFind<mlir::OperationName>(v21, v23, v24) && (!HIDWORD(OpAction) || OpAction == 2))
          {
            break;
          }

          ++v20;
          v22 -= 8;
          if (!v22)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        v27 = v16[2];
        if (v27 == 1)
        {
          v28 = *v16;
        }

        else
        {
          LOBYTE(v27) = 0;
          v28 = 0;
        }

        v71 = v28;
        LOBYTE(v72) = v27;
        v29 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](&v68, &v71);
        llvm::SmallVectorTemplateBase<mlir::Pattern const*,true>::push_back(v29, v16);
        v30 = v16[2];
        if (v30 == 1)
        {
          v31 = *v16;
        }

        else
        {
          LOBYTE(v30) = 0;
          v31 = 0;
        }

        v71 = v31;
        LOBYTE(v72) = v30;
        v84 = 0;
        v32 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::LookupBucketFor<mlir::OperationName>(v80[0], v81, v31, &v84);
        v33 = v84;
        if ((v32 & 1) == 0)
        {
          v33 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::InsertIntoBucketImpl<mlir::OperationName>(v80, &v71, v84);
          *v33 = v31;
          v33[1] = v33 + 4;
          v33[2] = 2;
          *(v33 + 6) = 0;
          *(v33 + 28) = 1;
        }

        llvm::SmallPtrSetImplBase::erase_imp(v33 + 1, v16);
        v34 = v16[2];
        if (v34 == 1)
        {
          v35 = *v16;
        }

        else
        {
          LOBYTE(v34) = 0;
          v35 = 0;
        }

        v71 = v35;
        LOBYTE(v72) = v34;
        v84 = 0;
        v36 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(v82[0], v83, v35, &v84);
        v37 = v84;
        if (v36)
        {
          v38 = v84[1];
          if (*(v84 + 28))
          {
            v39 = 12;
          }

          else
          {
            v39 = 8;
          }
        }

        else
        {
          v37 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::InsertIntoBucketImpl<mlir::OperationName>(v82, &v71, v84);
          v38 = v37 + 4;
          *v37 = v35;
          v37[1] = v37 + 4;
          v37[2] = 2;
          *(v37 + 6) = 0;
          *(v37 + 28) = 1;
          v39 = 12;
        }

        v40 = *(v37 + v39 + 8);
        v41 = v38;
        if (v40)
        {
          v42 = 8 * v40;
          v41 = v38;
          while (*v41 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v41;
            v42 -= 8;
            if (!v42)
            {
              goto LABEL_62;
            }
          }
        }

        v43 = &v38[v40];
        if (v41 != v43)
        {
          v44 = *v41;
LABEL_44:
          v84 = v44;
          v45 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](v80, &v84);
          if (*(v45 + 20))
          {
            v46 = 12;
          }

          else
          {
            v46 = 8;
          }

          v47 = *(v45 + v46);
          if (v47)
          {
            v48 = 8 * v47;
            v49 = *v45;
            while (*v49 >= 0xFFFFFFFFFFFFFFFELL)
            {
              ++v49;
              v48 -= 8;
              if (!v48)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            v49 = *v45;
          }

          v50 = *v45 + 8 * v47;
          if (v49 == v50)
          {
            goto LABEL_59;
          }

          v51 = *v49;
          do
          {
            v71 = v51;
            llvm::SetVector<mlir::Pattern const*,llvm::SmallVector<mlir::Pattern const*,0u>,llvm::DenseSet<mlir::Pattern const*,llvm::DenseMapInfo<mlir::Pattern const*,void>>,0u>::insert(&v76, &v71);
            do
            {
              if (++v49 == v50)
              {
                goto LABEL_59;
              }

              v51 = *v49;
            }

            while (*v49 >= 0xFFFFFFFFFFFFFFFELL);
          }

          while (v49 != v50);
LABEL_59:
          while (++v41 != v43)
          {
            v44 = *v41;
            if (*v41 < 0xFFFFFFFFFFFFFFFELL)
            {
              if (v41 != v43)
              {
                goto LABEL_44;
              }

              break;
            }
          }
        }
      }

LABEL_62:
      ;
    }
  }

  if (v78 != v80)
  {
    free(v78);
  }

  MEMORY[0x25F891030](v76, 8);
  v54 = v80[0];
  if (v81)
  {
    v55 = 48 * v81;
    do
    {
      if ((*v54 | 0x1000) != 0xFFFFFFFFFFFFF000 && (*(v54 + 28) & 1) == 0)
      {
        free(*(v54 + 8));
      }

      v54 += 48;
      v55 -= 48;
    }

    while (v55);
    v54 = v80[0];
  }

  MEMORY[0x25F891030](v54, 8);
  v56 = v82[0];
  if (v83)
  {
    v57 = 48 * v83;
    do
    {
      if ((*v56 | 0x1000) != 0xFFFFFFFFFFFFF000 && (*(v56 + 28) & 1) == 0)
      {
        free(*(v56 + 8));
      }

      v56 += 48;
      v57 -= 48;
    }

    while (v57);
    v56 = v82[0];
  }

  MEMORY[0x25F891030](v56, 8);
  v76 = 0uLL;
  v77 = 0;
  if (v69)
  {
    if (v70)
    {
      v59 = 32 * v70;
      v60 = v68;
      while ((*v60 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v60 += 4;
        v59 -= 32;
        if (!v59)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
      v60 = v68;
    }

    v66 = &v68[4 * v70];
LABEL_103:
    if (v60 != v66)
    {
      if (!llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>::doFind<mlir::OperationName>(&v76, v60))
      {
      }

      while (1)
      {
        v60 += 4;
        if (v60 == v66)
        {
          break;
        }

        if ((*v60 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_103;
        }
      }
    }
  }

LABEL_89:
  if (v86)
  {
  }

  v71 = &v68;
  v72 = &v85;
  MEMORY[0x25F891030](v76, 8);
  if (v85 != v87)
  {
    free(v85);
  }

  v61 = v68;
  if (v70)
  {
    v62 = v68 + 3;
    v63 = 32 * v70;
    do
    {
      if ((*(v62 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v64 = *(v62 - 2);
        if (v62 != v64)
        {
          free(v64);
        }
      }

      v62 += 4;
      v63 -= 32;
    }

    while (v63);
    v61 = v68;
  }

  MEMORY[0x25F891030](v61, 8);
  *(a1 + 216) = a5;
  return a1;
}

uint64_t mlir::applyFullConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v12[10] = *MEMORY[0x277D85DE8];
  mlir::OperationConverter::OperationConverter(v9, a3, a4, a5, 1);
  v7 = mlir::OperationConverter::convertOperations(v9, a1, a2);
  mlir::PatternApplicator::~PatternApplicator(v12);
  if ((v11 & 1) == 0)
  {
    free(v10);
  }

  return v7;
}

void mlir::detail::ConversionPatternRewriterImpl::~ConversionPatternRewriterImpl(mlir::detail::ConversionPatternRewriterImpl *this)
{
  mlir::detail::ConversionPatternRewriterImpl::~ConversionPatternRewriterImpl(this);

  JUMPOUT(0x25F891040);
}

{
  v27 = *MEMORY[0x277D85DE8];
  *this = &unk_286E80F48;
  MEMORY[0x25F891030](*(this + 41), 8);
  MEMORY[0x25F891030](*(this + 37), 8);
  v2 = *(this + 35);
  if (v2 != this + 296)
  {
    free(v2);
  }

  MEMORY[0x25F891030](*(this + 32), 8);
  v3 = *(this + 30);
  if (v3 != this + 256)
  {
    free(v3);
  }

  MEMORY[0x25F891030](*(this + 27), 8);
  v4 = *(this + 19);
  v5 = *(this + 40);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = v4 - 8;
    do
    {
      v8 = *&v7[v6];
      *&v7[v6] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      v6 -= 8;
    }

    while (v6);
    v4 = *(this + 19);
  }

  if (v4 != this + 168)
  {
    free(v4);
  }

  MEMORY[0x25F891030](*(this + 16), 8);
  if (*(this + 30))
  {
    __src = 0;
    v23 = &v25;
    v24 = 0x100000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v23, &__src, &v21);
    v26[0] = 0;
    v26[1] = 0;
    __src = &v22;
    v21 = 0x100000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&__src, v26, &v27);
    v9 = *(this + 30);
    if (v9)
    {
      v10 = *(this + 13);
      v11 = v10 + 48 * v9;
      do
      {
        v12 = *(v10 + 8);
        if (v12 == v24)
        {
          if (!v12)
          {
            goto LABEL_30;
          }

          v13 = *v10;
          v14 = v23;
          v15 = 8 * v12;
          while (*v13 == *v14)
          {
            ++v13;
            ++v14;
            v15 -= 8;
            if (!v15)
            {
              goto LABEL_30;
            }
          }
        }

        if (v12 != v21)
        {
          goto LABEL_28;
        }

        if (v12)
        {
          v16 = *v10;
          v17 = __src;
          v18 = 8 * v12;
          while (*v16 == *v17)
          {
            ++v16;
            ++v17;
            v18 -= 8;
            if (!v18)
            {
              goto LABEL_30;
            }
          }

LABEL_28:
          v19 = *(v10 + 24);
          if (v19 != (v10 + 40))
          {
            free(v19);
          }
        }

LABEL_30:
        if (*v10 != v10 + 16)
        {
          free(*v10);
        }

        v10 += 48;
      }

      while (v10 != v11);
    }

    if (__src != &v22)
    {
      free(__src);
    }

    if (v23 != &v25)
    {
      free(v23);
    }
  }

  MEMORY[0x25F891030](*(this + 13), 8);
  *(this + 3) = &unk_286E80FF0;
  *(this + 8) = &unk_286E81060;
  MEMORY[0x25F891030](*(this + 10), 8);
}

uint64_t mlir::RewriterBase::Listener::notifyOperationReplaced(mlir::RewriterBase::Listener *this, mlir::Operation *a2, mlir::Operation *a3)
{
  if (*(a3 + 9))
  {
    v3 = (a3 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v3 = 4;
  }

  return (*(*this + 56))(this, a2, v3);
}

void mlir::ConversionPattern::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, a3, a4, &v8);
  (*(*a1 + 48))(a1, a2, v8, v9, a5);
  if (v8 != v10)
  {
    free(v8);
  }
}

uint64_t mlir::ConversionPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, a3, a4, &v10);
  v8 = (*(*a1 + 64))(a1, a2, v10, v11, a5);
  if (v10 != v12)
  {
    free(v10);
  }

  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>,llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>::doFind<llvm::SmallVector<mlir::Value,1u>>(uint64_t a1, int a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  __src = 0;
  v22 = &v24;
  v23 = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v22, &__src, &v26);
  v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<mlir::Value const*>(*a3, (*a3 + 8 * *(a3 + 8)), v6, v7);
  v9 = *(a3 + 8);
  v10 = *a3;
  for (i = 1; ; ++i)
  {
    v12 = a1 + 48 * v8;
    v13 = *(v12 + 8);
    if (v9 == v13)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v14 = *v12;
      v15 = 8 * v9;
      v16 = v10;
      while (*v16 == *v14)
      {
        ++v16;
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_18;
        }
      }
    }

    if (v13 == v23)
    {
      break;
    }

LABEL_15:
    v20 = i + v8;
    v8 = v20 & (a2 - 1);
  }

  if (v23)
  {
    v17 = *v12;
    v18 = 8 * v23;
    v19 = v22;
    while (*v17 == *v19)
    {
      v12 = 0;
      ++v17;
      ++v19;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_18:
  if (v22 != &v24)
  {
    free(v22);
  }

  return v12;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::Value const*>(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v7 = 0;
    return llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v5 = a1;
    for (i = 0; i <= 0x38; i += 8)
    {
      v7 = i + 8;
      v8 = *v5++;
      v9 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
      *&__src[i] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9)) >> 47));
      if (v5 == a2)
      {
        return llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
      }
    }

    v19[0] = xmmword_25D0A0610;
    v19[1] = xmmword_25D0A0620;
    v19[2] = xmmword_25D0A0630;
    v20 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v19, __src, a3, a4);
    v11 = 64;
    while (v5 != a2)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 8;
        v14 = *v5++;
        v15 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
        *&__src[v12] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15)) >> 47));
        if (v5 == a2)
        {
          break;
        }

        v16 = v12 >= 0x31;
        v12 += 8;
      }

      while (!v16);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v22);
      llvm::hashing::detail::hash_state::mix(v19, __src, v17, v18);
      v11 += v13;
    }

    return llvm::hashing::detail::hash_state::finalize(v19, v11);
  }
}

char *llvm::SmallVectorImpl<mlir::Value>::insert<mlir::Value const*,void>(unsigned int *a1, uint64_t a2, char *__src, char *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = (a4 - __src) >> 3;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 4, v9 + v11, 8);
    v7 = *a1;
    v9 = a1[2];
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), v12, v15);
      v18 = v12;
      do
      {
        v19 = *v5;
        v5 += 8;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<mlir::Value>::append<std::move_iterator<mlir::Value*>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

void llvm::SmallVectorImpl<mlir::Value>::append<std::move_iterator<mlir::Value*>,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::UnrealizedConversionCastOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "builtin.unrealized_conversion_cast";
    v6[3] = 34;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::InsertIntoBucketImpl<mlir::Value>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v3 - 1;
    v8 = v5 & (v3 - 1);
    v9 = (*a1 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::InsertIntoBucketImpl<mlir::Value>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t **a1, int a2)
{
  v3 = *(a1 + 4);
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

  *(a1 + 4) = v8;
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>,llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>::LookupBucketFor<llvm::SmallVector<mlir::Value,1u>>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v35 = 0;
    *a4 = 0;
    return v35;
  }

  __src = 0;
  v40 = &v42;
  v41 = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v40, &__src, &v38);
  v43[0] = 0;
  v43[1] = 0;
  __src = &v39;
  v38 = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&__src, v43, &v44);
  v10 = llvm::hashing::detail::hash_combine_range_impl<mlir::Value const*>(*a3, (*a3 + 8 * *(a3 + 8)), v8, v9);
  v11 = 0;
  v12 = (a2 - 1) & v10;
  v13 = *(a3 + 8);
  v14 = *a3;
  v15 = v40;
  v16 = __src;
  for (i = 1; ; ++i)
  {
    v18 = a1 + 48 * v12;
    v19 = *(v18 + 8);
    if (v13 == v19)
    {
      if (!v13)
      {
LABEL_29:
        v35 = 1;
        goto LABEL_30;
      }

      v20 = *v18;
      v21 = 8 * v13;
      v22 = v14;
      while (*v22 == *v20)
      {
        ++v22;
        ++v20;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_29;
        }
      }
    }

    if (v19 == v41)
    {
      break;
    }

LABEL_15:
    if (v19 == v38)
    {
      if (v38)
      {
        v26 = *v18;
        v27 = 8 * v38 - 8;
        v28 = __src;
        do
        {
          v30 = *v26++;
          v29 = v30;
          v31 = *v28++;
          v32 = v29 == v31;
          v33 = !v32 || v27 == 0;
          v27 -= 8;
        }

        while (!v33);
      }

      else
      {
        v32 = 1;
      }
    }

    else
    {
      v32 = 0;
    }

    if (v32 && v11 == 0)
    {
      v11 = a1 + 48 * v12;
    }

    v34 = i + v12;
    v12 = v34 & (a2 - 1);
  }

  if (v41)
  {
    v23 = *v18;
    v24 = 8 * v41;
    v25 = v40;
    while (*v23 == *v25)
    {
      ++v23;
      ++v25;
      v24 -= 8;
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_15;
  }

LABEL_36:
  v35 = 0;
  if (v11)
  {
    v18 = v11;
  }

LABEL_30:
  *a4 = v18;
  if (v16 != &v39)
  {
    free(v16);
    v15 = v40;
  }

  if (v15 != &v42)
  {
    free(v15);
  }

  return v35;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>,llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>::InsertIntoBucketImpl<llvm::SmallVector<mlir::Value,1u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else
  {
    v7 = a3;
    if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
    {
      goto LABEL_3;
    }
  }

  v5 = *(a1 + 8);
  v7 = v14;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  __src = 0;
  v15 = &v17;
  v16 = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v15, &__src, &v19);
  v8 = *(v7 + 8);
  v9 = v15;
  if (v8 == v16)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    v10 = *v7;
    v11 = 8 * v8;
    v12 = v15;
    while (*v10 == *v12)
    {
      ++v10;
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  --*(a1 + 12);
LABEL_10:
  if (v9 != &v17)
  {
    free(v9);
  }

  return v7;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>,llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>::grow(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
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
  *a1 = llvm::allocate_buffer((48 * v8), 8uLL);
  if (v4)
  {
    __src = 0;
    v22 = &v24;
    v23 = 0x100000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v22, &__src, &v20);
    v25[0] = 0;
    v25[1] = 0;
    __src = &v21;
    v20 = 0x100000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&__src, v25, &v26);
    if (v3)
    {
      v9 = v4 + 48 * v3;
      for (i = v4; i != v9; i += 48)
      {
        v11 = *(i + 8);
        if (v11 == v23)
        {
          v12 = *i;
          if (!v11)
          {
            goto LABEL_24;
          }

          v13 = 0;
          while (*&v12[v13] == *(v22 + v13))
          {
            v13 += 8;
            if (8 * v11 == v13)
            {
              goto LABEL_24;
            }
          }
        }

        if (v11 != v20)
        {
          goto LABEL_19;
        }

        v12 = *i;
        if (v11)
        {
          v14 = 0;
          v15 = 8 * v11;
          while (*&v12[v14] == *(__src + v14))
          {
            v14 += 8;
            if (v15 == v14)
            {
              goto LABEL_24;
            }
          }

LABEL_19:
          v25[0] = 0;
          v16 = v25[0];
          llvm::SmallVectorImpl<mlir::Value>::operator=(v25[0], i);
          *(v16 + 24) = v16 + 40;
          v17 = v16 + 24;
          *(v17 + 8) = 0x100000000;
          if (*(i + 32))
          {
            llvm::SmallVectorImpl<mlir::Value>::operator=(v17, i + 24);
          }

          ++*(a1 + 8);
          v18 = *(i + 24);
          if (v18 != (i + 40))
          {
            free(v18);
          }

          v12 = *i;
        }

LABEL_24:
        if (v12 != (i + 16))
        {
          free(v12);
        }
      }
    }

    if (__src != &v21)
    {
      free(__src);
    }

    if (v22 != &v24)
    {
      free(v22);
    }

    MEMORY[0x25F891030](v4, 8);
  }

  else
  {
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>,llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>,anonymous namespace::ValueVectorMapInfo,llvm::detail::DenseMapPair<llvm::SmallVector<mlir::Value,1u>,llvm::SmallVector<mlir::Value,1u>>>::initEmpty(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  __src = 0;
  v5 = &v7;
  v6 = 0x100000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v5, &__src, &v9);
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = 48 * v2;
    do
    {
      *v3 = v3 + 2;
      v3[1] = 0x100000000;
      if (v6)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(v3, &v5);
      }

      v3 += 6;
      v4 -= 48;
    }

    while (v4);
  }

  if (v5 != &v7)
  {
    free(v5);
  }
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<anonymous namespace::IRRewrite>,false>::push_back(uint64_t result, char *a2)
{
  v2 = a2;
  v4 = *(result + 8);
  v5 = *result;
  if (v4 >= *(result + 12))
  {
    if (v5 <= a2 && v5 + 8 * v4 > a2)
    {
      v9 = &a2[-v5];
      v5 = *result;
      v2 = &v9[*result];
    }

    else
    {
      v5 = *result;
    }
  }

  v6 = *(result + 8);
  v7 = *v2;
  *v2 = 0;
  *(v5 + 8 * v6) = v7;
  *(result + 8) = v6 + 1;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<anonymous namespace::IRRewrite>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    v8 = 8 * v6;
    v9 = v4;
    v10 = *a1;
    do
    {
      v11 = *v10;
      *v10++ = 0;
      *v9++ = v11;
      v8 -= 8;
    }

    while (v8);
    v12 = (v5 - 1);
    do
    {
      v13 = *&v12[v7];
      *&v12[v7] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v7 -= 8;
    }

    while (v7);
    v5 = *a1;
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

void anonymous namespace::UnresolvedMaterializationRewrite::~UnresolvedMaterializationRewrite(_anonymous_namespace_::UnresolvedMaterializationRewrite *this)
{
  *this = &unk_286E80FB8;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }
}

{
  *this = &unk_286E80FB8;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void anonymous namespace::UnresolvedMaterializationRewrite::rollback(_anonymous_namespace_::UnresolvedMaterializationRewrite *this)
{
  if (*(this + 14))
  {
  }

  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v4)
  {
    *v4 = -8192;
    *(v3 + 304) = vadd_s32(*(v3 + 304), 0x1FFFFFFFFLL);
    v2 = *(this + 3);
  }

  if (*(v2 + 2))
  {
    *(v2 + 2) = 0;
    v6 = *v2;
    v5 = *(v2 + 1);
    *v5 = *v2;
    *(v6 + 8) = v5;
    *v2 = 0;
    *(v2 + 1) = 0;
  }

  mlir::Operation::destroy(v2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>,mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>::LookupBucketFor<mlir::UnrealizedConversionCastOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
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

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>,mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>::grow(uint64_t a1, int a2)
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
      v19 = (v4 + 8);
      do
      {
        v20 = *(v19 - 1);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          v21 = v30;
          *v30 = v20;
          v21[1] = *v19;
          ++*(a1 + 8);
        }

        v19 += 2;
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

int32x2_t anonymous namespace::ConversionValueMapping::erase(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (v3)
  {
    v5 = v3;
    v6 = *(v3 + 24);
    if (v6 != (v5 + 40))
    {
      free(v6);
    }

    __src[0] = 0;
    __src[1] = 0;
    v7[0] = &v8;
    v7[1] = 0x100000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v7, __src, &v10);
    llvm::SmallVectorImpl<mlir::Value>::operator=(v5, v7);
    if (v7[0] != &v8)
    {
      free(v7[0]);
    }

    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>,mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>::doFind<mlir::UnrealizedConversionCastOp>(uint64_t a1, int a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
    v5 = (-348639895 * ((v4 >> 47) ^ v4)) & (a2 - 1);
    v6 = *(a1 + 16 * v5);
    if (v6 == a3)
    {
      return a1 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (a2 - 1);
      v6 = *(a1 + 16 * v5);
      if (v6 == a3)
      {
        return a1 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 8 * v7);
    if (*a2 == v8)
    {
      return v3 + 8 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 8 * v7);
      if (*a2 == v8)
      {
        return v3 + 8 * v7;
      }
    }
  }

  return 0;
}

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::eraseOp(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this, uint64_t **a2)
{
  v4 = *(this + 18);
  if (v4)
  {
    v5 = *(this + 7);
    v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v5 + 8 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v4)
      {
        return;
      }
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & (v4 - 1);
        v7 = *(v5 + 8 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  mlir::Operation::dropAllUses(a2);

  mlir::RewriterBase::eraseOp(this, a2);
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::eraseBlock(uint64_t this, mlir::Block *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4)
  {
    v5 = *(this + 56);
    v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v5 + 8 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v4)
      {
        return this;
      }
    }

    else
    {
      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & (v4 - 1);
        v7 = *(v5 + 8 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  mlir::Block::dropAllDefinedValueUses(a2);

  return mlir::RewriterBase::eraseBlock(v3, a2);
}

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::~SingleEraseRewriter(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this)
{
  *this = &unk_286E80FF0;
  *(this + 5) = &unk_286E81060;
  MEMORY[0x25F891030](*(this + 7), 8);
}

{
  *this = &unk_286E80FF0;
  *(this + 5) = &unk_286E81060;
  MEMORY[0x25F891030](*(this + 7), 8);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::~SingleEraseRewriter(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this)
{
  *(this - 5) = &unk_286E80FF0;
  *this = &unk_286E81060;
  JUMPOUT(0x25F891030);
}

{
  *(this - 5) = &unk_286E80FF0;
  *this = &unk_286E81060;
  MEMORY[0x25F891030](*(this + 2), 8);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::LookupBucketFor<void *>(a2, a3, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::InsertIntoBucketImpl<void *>(a2, a3, v10);
    v7 = result;
    *result = *a3;
    v8 = 1;
  }

  v9 = *a2 + 8 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::OperationLegalizer::legalize(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_0>(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (**result != a2)
  {
    return llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::insert(*(*(result + 8) + 40) + 216, &v2);
  }

  return result;
}

void mlir::detail::ConversionPatternRewriterImpl::resetState(int32x2_t *a1, unint64_t a2, int a3)
{
  v5 = HIDWORD(a2);
  mlir::detail::ConversionPatternRewriterImpl::undoRewrites(a1, a2);
  while (v5 != a1[31].i32[0])
  {
    llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::pop_back(a1 + 27);
  }

  while (a1[36].i32[0] != a3)
  {
    llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::pop_back(a1 + 32);
  }
}

void *llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::pop_back(int32x2_t *a1)
{
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation *>(a1, (*&a1[3] + 8 * a1[4].u32[0] - 8));
  if (result)
  {
    *result = -8192;
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  }

  --a1[4].i32[0];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation *>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 8 * v5);
    if (*a2 == v6)
    {
      return v3 + 8 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 8 * v5);
      if (*a2 == v6)
      {
        return v3 + 8 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::function_ref<BOOL ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_0>(uint64_t a1, char *a2)
{
  v4 = *a1;
  if ((*(a2 + 2) & 4) == 0)
  {
    llvm::SmallPtrSetImpl<mlir::Pattern const*>::insert(v7, v4, a2);
    if ((v7[16] & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(*(v4 + 20) + 32);
  if (v5)
  {
    (*(*v5 + 72))(v5, a2, **(a1 + 8));
  }

  return 1;
}

const void **llvm::SmallPtrSetImpl<mlir::Pattern const*>::insert(uint64_t a1, llvm::SmallPtrSetImplBase *this, char *a3)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(this, a3);
  v7 = 8;
  if (*(this + 20))
  {
    v7 = 12;
  }

  v8 = (*this + 8 * *(this + v7));
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v6;
  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_1>(uint64_t a1, const void *a2)
{
  v4 = *a1;
  v5 = *(*(*a1 + 160) + 32);
  if (v5)
  {
    (*(*v5 + 80))(v5, a2, 0);
  }

  mlir::detail::ConversionPatternRewriterImpl::resetState(*(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8));

  return llvm::SmallPtrSetImplBase::erase_imp(v4, a2);
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_2>(uint64_t *a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(v5 + 40);
  v8 = *(v7 + 160);
  v53 = &v57;
  v54 = 16;
  v55 = 0;
  v56 = 1;
  v9 = *v6;
  if (v9 == v8)
  {
LABEL_2:
    llvm::SmallPtrSetImplBase::erase_imp(v3, a2);
    v10 = 1;
    v11 = 1;
    goto LABEL_51;
  }

  v51 = v6;
  v52 = v5;
  while (1)
  {
    v13 = *(*(v7 + 152) + 8 * v9);
    v14 = *(v13 + 8);
    if (v13)
    {
      v15 = v14 > 5;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_12;
    }

    v15 = v14 > 5;
    v16 = (1 << v14) & 0x32;
    if (!v15 && v16 != 0)
    {
      goto LABEL_12;
    }

    v18 = *(v13 + 24);
    v19 = v18[3] & 0xFFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = *(v19 + 16);
    v21 = !v20 || v20 == v4;
    if (v21 || ((v18[7] - v18[6]) & 0x7FFFFFFF8) == 0)
    {
      goto LABEL_12;
    }

    v49 = v4;
    v50 = a2;
    v22 = *(v7 + 344);
    if (v22)
    {
      break;
    }

LABEL_34:
    if (HIDWORD(v54) == v55)
    {
      v31 = *v51;
      v32 = *(v7 + 160);
      if (*v51 != v32)
      {
        do
        {
          v33 = *(*(v7 + 152) + 8 * v31);
          if (v33)
          {
            v34 = *(v33 + 8) == 9;
          }

          else
          {
            v34 = 0;
          }

          if (v34)
          {
            llvm::SmallPtrSetImpl<mlir::Operation *>::insert(&v53, *(v33 + 24), v58);
          }

          ++v31;
        }

        while (v32 != v31);
      }
    }

    llvm::SmallPtrSetImpl<mlir::Operation *>::insert(&v53, v20, v58);
    a2 = v50;
    if (v59 != 1)
    {
      goto LABEL_46;
    }

    v4 = v49;
    if ((v35 & 1) == 0)
    {
      v36 = 1;
      goto LABEL_47;
    }

LABEL_12:
    if (v8 == ++v9)
    {
      v36 = 0;
      goto LABEL_47;
    }
  }

  v23 = *(v7 + 328);
  v24 = v22 - 1;
  v25 = (v22 - 1) & ((v19 >> 4) ^ (v19 >> 9));
  v26 = *(v23 + 16 * v25);
  if (v26 != v19)
  {
    v29 = 1;
    while (v26 != -4096)
    {
      v30 = v25 + v29++;
      v25 = v30 & v24;
      v26 = *(v23 + 16 * v25);
      if (v26 == v19)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_34;
  }

LABEL_22:
  v27 = v23 + 16 * v25;
  v28 = *(v27 + 8);
  if (!v28)
  {
    goto LABEL_34;
  }

  mlir::TypeConverter::convertBlockSignature(v58, *(v27 + 8), v18);
  if (v62 == 1)
  {
    mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(v7, v52, v18, v28, v58);
    if (v62)
    {
      if (v60 != &v61)
      {
        free(v60);
      }

      a2 = v50;
      if (v58[0] != &v59)
      {
        free(v58[0]);
      }
    }

    else
    {
      a2 = v50;
    }

LABEL_46:
    v4 = v49;
    goto LABEL_12;
  }

  v36 = 1;
  a2 = v50;
LABEL_47:
  if ((v56 & 1) == 0)
  {
    free(v53);
  }

  if ((v36 & 1) == 0)
  {
    v39 = *v51;
    if (v8 != v39)
    {
      v40 = v8 - v39;
      v41 = 8 * v39;
      while (1)
      {
        v42 = *(*(v7 + 152) + v41);
        v43 = v42 && *(v42 + 8) == 7;
        {
          goto LABEL_50;
        }

        v41 += 8;
        if (!--v40)
        {
          v44 = *v51;
          if (v8 == v44)
          {
            goto LABEL_2;
          }

          v45 = v8 - v44;
          v46 = 8 * v44;
          while (1)
          {
            v47 = *(*(v7 + 152) + v46);
            v48 = v47 && *(v47 + 8) == 9;
            {
              goto LABEL_50;
            }

            v46 += 8;
            if (!--v45)
            {
              goto LABEL_2;
            }
          }
        }
      }
    }

    goto LABEL_2;
  }

LABEL_50:
  llvm::SmallPtrSetImplBase::erase_imp(v3, a2);
  mlir::detail::ConversionPatternRewriterImpl::resetState(a1[4], *a1[3], *(a1[3] + 8));
  v10 = 0;
  v11 = 0;
LABEL_51:
  v37 = *(*(v3 + 160) + 32);
  if (v37)
  {
    (*(*v37 + 80))(v37, a2, v10);
  }

  return v11;
}

void llvm::SetVector<mlir::UnrealizedConversionCastOp,llvm::SmallVector<mlir::UnrealizedConversionCastOp,0u>,llvm::DenseSet<mlir::UnrealizedConversionCastOp,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>>,0u>::insert(void *a1, unint64_t *a2)
{
  v8 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>,mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::LookupBucketFor<mlir::UnrealizedConversionCastOp>(*a1, *(a1 + 4), *a2, &v8))
  {
    return;
  }

  v4 = v8;
  v9 = v8;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_10;
  }

  if (v6 + ~v5 - *(a1 + 3) <= v6 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::grow(a1, v6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>,mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::LookupBucketFor<mlir::UnrealizedConversionCastOp>(*a1, *(a1 + 4), *a2, &v9);
    v5 = *(a1 + 2);
    v4 = v9;
  }

  *(a1 + 2) = v5 + 1;
  if (*v4 != -4096)
  {
    --*(a1 + 3);
  }

  v7 = *a2;
  *v4 = *a2;

  llvm::SmallVectorTemplateBase<mlir::UnrealizedConversionCastOp,true>::push_back((a1 + 3), v7);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>,mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::LookupBucketFor<mlir::UnrealizedConversionCastOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 8 * v7);
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
        v8 = (a1 + 8 * (v15 & v6));
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

uint64_t *llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 1;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>,mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::LookupBucketFor<mlir::UnrealizedConversionCastOp>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 1;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

void llvm::SmallVectorImpl<std::optional<mlir::TypeConverter::SignatureConversion::InputMapping>>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 32);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        v5 = *a1 + 32 * a2;
        v6 = (*a1 + 32 * v2);
        do
        {
          *v6 = 0;
          v6[24] = 0;
          v6 += 32;
        }

        while (v6 != v5);
      }
    }

    *(a1 + 8) = a2;
  }
}

void *std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::~__func(void *a1)
{
  *a1 = &unk_286E810D0;
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100]((a1 + 5));
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::~__func(void *a1)
{
  *a1 = &unk_286E810D0;
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100]((a1 + 5));
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E810D0;
  v3 = a2 + 5;
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);

  return std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::__value_func[abi:nn200100](v3, a1 + 40);
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::destroy(uint64_t a1)
{
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](a1 + 40);

  return std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100](a1 + 8);
}

void std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100]((a1 + 40));
  std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::~__value_func[abi:nn200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = std::function<std::optional<BOOL> ()(mlir::Operation *)>::operator()(*(a1 + 64), *a2);
  if ((v4 & 0x100) != 0)
  {
    v5 = 1;
  }

  else
  {
    v4 = std::function<std::optional<BOOL> ()(mlir::Operation *)>::operator()(*(a1 + 32), v3);
    v5 = HIBYTE(v4);
  }

  return v4 | (v5 << 8);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::InsertIntoBucketImpl<mlir::OperationName>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 3;
    v5[2] = 0x100000000;
  }

  return v5 + 1;
}

void llvm::SmallVectorTemplateBase<mlir::Pattern const*,true>::push_back(uint64_t a1, uint64_t a2)
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::InsertIntoBucketImpl<mlir::OperationName>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 4;
    v5[2] = 2;
    *(v5 + 6) = 0;
    *(v5 + 28) = 1;
  }

  return v5 + 1;
}

void llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::buildLegalizationGraph(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0>(uint64_t *a1, char **a2)
{
  if (*(a2 + 2) == 1)
  {
    v4 = a1[1];
    v5 = *a2;
    v18 = v5;
    v19 = 1;
    if (mlir::ConversionTarget::getOpAction(*(v4 + 88), v5) != 0x100000000)
    {
      v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](a1[2], &v18);
      llvm::SmallPtrSetImpl<mlir::Pattern const*>::insert(v17, v6, a2);
      v7 = *(a2 + 8);
      if (v7)
      {
        v8 = a2[3];
        v9 = 8 * v7;
        do
        {
          v10 = *v8;
          v16 = v10;
          v17[0] = 0;
          v11 = a1[3];
          v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(*v11, *(v11 + 16), v10, v17);
          v13 = v17[0];
          if ((v12 & 1) == 0)
          {
            v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::InsertIntoBucketImpl<mlir::OperationName>(v11, &v16, v17[0]);
            *v13 = v10;
            v13[1] = v13 + 4;
            v13[2] = 2;
            *(v13 + 6) = 0;
            *(v13 + 28) = 1;
          }

          llvm::SmallPtrSetImplBase::insert_imp((v13 + 1), v5);
          ++v8;
          v9 -= 8;
        }

        while (v9);
      }

      v14 = a1[4];
      v17[0] = a2;
      llvm::SetVector<mlir::Pattern const*,llvm::SmallVector<mlir::Pattern const*,0u>,llvm::DenseSet<mlir::Pattern const*,llvm::DenseMapInfo<mlir::Pattern const*,void>>,0u>::insert(v14, v17);
    }
  }

  else
  {
    v15 = *a1;

    llvm::SmallVectorTemplateBase<mlir::Pattern const*,true>::push_back(v15, a2);
  }
}

void llvm::SetVector<mlir::Pattern const*,llvm::SmallVector<mlir::Pattern const*,0u>,llvm::DenseSet<mlir::Pattern const*,llvm::DenseMapInfo<mlir::Pattern const*,void>>,0u>::insert(void *a1, uint64_t *a2)
{
  v8 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>,mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>::LookupBucketFor<mlir::Pattern const*>(*a1, *(a1 + 4), *a2, &v8))
  {
    return;
  }

  v4 = v8;
  v5 = *(a1 + 4);
  v9 = v8;
  v6 = *(a1 + 2);
  if (4 * v6 + 4 >= 3 * v5)
  {
    v5 *= 2;
    goto LABEL_10;
  }

  if (v5 + ~v6 - *(a1 + 3) <= v5 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>::grow(a1, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>,mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>::LookupBucketFor<mlir::Pattern const*>(*a1, *(a1 + 4), *a2, &v9);
    v6 = *(a1 + 2);
    v4 = v9;
  }

  *(a1 + 2) = v6 + 1;
  if (*v4 != -4096)
  {
    --*(a1 + 3);
  }

  v7 = *a2;
  *v4 = *a2;

  llvm::SmallVectorTemplateBase<mlir::Pattern const*,true>::push_back((a1 + 3), v7);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 48 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 48 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::InsertIntoBucketImpl<mlir::OperationName>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 16), *a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 48 * v10 - 48;
      v13 = vdupq_n_s64(v12 / 0x30);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[6] = -4096;
        }

        v11 += 2;
        result += 12;
      }

      while (((v12 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = v4 + 32;
      v16 = 48 * v3;
      do
      {
        v17 = *(v15 - 32);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 16), v17, &v25);
          v18 = v25;
          v19 = v25;
          *v25 = *(v15 - 32);
          llvm::SmallPtrSetImplBase::moveHelper((v19 + 1), v18 + 4, 2, v15, v15 - 24);
          ++*(a1 + 8);
          if ((*(v15 - 4) & 1) == 0)
          {
            free(*(v15 - 24));
          }
        }

        v15 += 48;
        v16 -= 48;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 48 * v20 - 48;
    v23 = vdupq_n_s64(v22 / 0x30);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[6] = -4096;
      }

      v21 += 2;
      result += 12;
    }

    while (((v22 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>,mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>::LookupBucketFor<mlir::Pattern const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 1;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>,mlir::Pattern const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseSetPair<mlir::Pattern const*>>::LookupBucketFor<mlir::Pattern const*>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 1;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::LookupBucketFor<mlir::OperationName>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
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
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::InsertIntoBucketImpl<mlir::OperationName>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::LookupBucketFor<mlir::OperationName>(*a1, *(a1 + 16), *a2, &v8);
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