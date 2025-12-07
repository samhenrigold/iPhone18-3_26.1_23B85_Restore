void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
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
      v7 = (*a1 + 72 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
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
  v7[1] = v7 + 3;
  v7[2] = 0x600000000;
  return v7 + 1;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 16 * v7);
  v9 = *v8;
  if (*a2 != *v8)
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
      v8 = (v5 + 16 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 2);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v8[1] = 0;
        v5 = *result;
        v4 = *(result + 4);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Operation *,mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Operation *>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 16 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t mlir::TypeConverter::isSignatureLegal(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  Inputs = mlir::FunctionType::getInputs(&v9);
  v5 = v4;
  Results = mlir::FunctionType::getResults(&v9);
  v14 = a1;
  v11[0] = Inputs;
  v11[1] = Results;
  v12 = Inputs + 8 * v5;
  v13 = Results + 8 * v7;
  v10[0] = v12;
  v10[1] = v13;
  v10[2] = v12;
  v10[3] = v13;
  return _ZNSt3__18__all_ofB8nn200100IN4llvm15concat_iteratorIKN4mlir4TypeEJPS5_S6_EEES7_NS_10__identityEZNKS3_13TypeConverter7isLegalINS1_6detail12concat_rangeIS5_JNS1_8ArrayRefIS4_EESE_EEEEENS_9enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISH_PNS3_9OperationEEE5valueEbE4typeEOSH_EUlS4_E_EEbSH_T0_RT2_RT1_(v11, v10, &v14);
}

uint64_t mlir::TypeConverter::convertSignatureArgs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  result = 1;
  v7 = a3;
  if (a3)
  {
    v10 = 0;
    while (1)
    {
      v12 = mlir::TypeRange::dereference_iterator(a2, v10);
      __src = v21;
      v20 = 0x100000000;
      v13 = mlir::TypeConverter::convertType(a1, v12, &__src);
      if (v13)
      {
        v14 = v20;
        if (v20)
        {
          v15 = __src;
          v16 = *a4 + 32 * (a5 + v10);
          v17 = *(v16 + 24);
          *v16 = *(a4 + 152);
          *(v16 + 8) = v14;
          *(v16 + 16) = 0;
          if ((v17 & 1) == 0)
          {
            *(v16 + 24) = 1;
          }

          v18 = *(a4 + 152);
          if (v18 + v14 > *(a4 + 156))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 144, (a4 + 160), v18 + v14, 8);
            v18 = *(a4 + 152);
          }

          memcpy((*(a4 + 144) + 8 * v18), v15, 8 * v14);
          *(a4 + 152) += v14;
        }
      }

      if (__src != v21)
      {
        free(__src);
      }

      if (!v13)
      {
        break;
      }

      if (v7 == ++v10)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

_DWORD *mlir::ConversionTarget::setOpAction(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  result = llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](a1 + 8, &v5);
  *result = a3;
  return result;
}

uint64_t llvm::MapVector<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>>,llvm::SmallVector<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,0u>>::operator[](uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = *a2;
  v20[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(a1, &v19, v20, &v17);
  v4 = v17;
  if (v18)
  {
    v5 = *(a1 + 24);
    memset(&v20[2], 0, 32);
    v20[2] = 2;
    v6 = *a2;
    v21 = 0;
    v22 = v6;
    v23 = 2;
    v24 = 0;
    v26 = 0;
    v7 = *(a1 + 32);
    if (v7 >= *(a1 + 36))
    {
      if (v5 <= &v22 && v5 + 48 * v7 > &v22)
      {
        v16 = &v22 - v5;
        llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow((a1 + 24), v7 + 1);
        v5 = *(a1 + 24);
        v8 = &v16[v5];
LABEL_4:
        v9 = v5 + 48 * *(a1 + 32);
        *v9 = *v8;
        v10 = *(v8 + 2);
        *(v9 + 12) = v8[12];
        *(v9 + 8) = v10;
        v11 = *(v8 + 5);
        if (v11)
        {
          if (v11 != v8 + 16)
          {
            *(v9 + 40) = v11;
            *(v8 + 5) = 0;
            ++*(a1 + 32);
            v12 = v26;
            if (v26 != v25)
            {
              goto LABEL_7;
            }

LABEL_14:
            (*(*v12 + 32))(v12);
            v13 = v21;
            if (v21 != &v20[4])
            {
LABEL_10:
              if (v13)
              {
                (*(*v13 + 40))(v13);
              }

              goto LABEL_16;
            }

LABEL_15:
            (*(*v13 + 32))(v13);
LABEL_16:
            v14 = *(a1 + 32) - 1;
            *(v4 + 8) = v14;
            return *(a1 + 24) + 48 * v14 + 8;
          }

          *(v9 + 40) = v9 + 16;
          (*(**(v8 + 5) + 24))(*(v8 + 5));
          ++*(a1 + 32);
          v12 = v26;
          if (v26 == v25)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *(v9 + 40) = 0;
          ++*(a1 + 32);
          v12 = v26;
          if (v26 == v25)
          {
            goto LABEL_14;
          }
        }

LABEL_7:
        if (v12)
        {
          (*(*v12 + 40))(v12);
        }

        v13 = v21;
        if (v21 != &v20[4])
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

      llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow((a1 + 24), v7 + 1);
      v5 = *(a1 + 24);
    }

    v8 = &v22;
    goto LABEL_4;
  }

  v14 = *(v17 + 8);
  return *(a1 + 24) + 48 * v14 + 8;
}

uint64_t *mlir::ConversionTarget::setDialectAction(uint64_t *result, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
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
      v10 = llvm::StringMapImpl::hash(v8, v9, a3, a4);
      result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 9), v8, v9, v10);
      *(*result + 8) = v4;
    }

    while (v5 != v7);
  }

  return result;
}

_BYTE *mlir::ConversionTarget::getOpInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v38 = a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = *(v6 + 16 * v7);
    if (v8 == a2)
    {
LABEL_3:
      if (v7 != v5)
      {
        v18 = *(v6 + 16 * v7 + 8);
        if (v18 != *(a1 + 40))
        {
          v19 = *(a1 + 32) + 48 * v18;
          v21 = *(v19 + 8);
          v20 = v19 + 8;
          v22 = *(v20 + 4);
          *a3 = v21;
          *(a3 + 4) = v22;
          result = *(v20 + 32);
          if (result)
          {
            if (result == (v20 + 8))
            {
              *(a3 + 32) = a3 + 8;
              result = (*(**(v20 + 32) + 24))(*(v20 + 32));
LABEL_28:
              *(a3 + 40) = 1;
              return result;
            }

            result = (*(*result + 16))(result);
LABEL_26:
            *(a3 + 32) = result;
            goto LABEL_28;
          }

LABEL_27:
          *(a3 + 32) = 0;
          goto LABEL_28;
        }
      }
    }

    else
    {
      v36 = 1;
      while (v8 != -4096)
      {
        v37 = v7 + v36++;
        v7 = v37 & (v5 - 1);
        v8 = *(v6 + 16 * v7);
        if (v8 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  DialectNamespace = mlir::OperationName::getDialectNamespace(&v38);
  v11 = v10;
  v14 = llvm::StringMapImpl::hash(DialectNamespace, v10, v12, v13);
  Key = llvm::StringMapImpl::FindKey((a1 + 72), DialectNamespace, v11, v14);
  if (Key != -1)
  {
    v16 = Key;
    if (Key != *(a1 + 80))
    {
      v23 = *(a1 + 72);
      v45 = 0;
      v24 = mlir::OperationName::getDialectNamespace(&v38);
      v26 = v25;
      v29 = llvm::StringMapImpl::hash(v24, v25, v27, v28);
      v30 = llvm::StringMapImpl::FindKey((a1 + 96), v24, v26, v29);
      if (v30 == -1 || v30 == *(a1 + 104))
      {
        v39 = *(*(v23 + 8 * v16) + 8);
        v40 = 0;
      }

      else
      {
        v32 = *(*(a1 + 96) + 8 * v30);
        v33 = *(v32 + 32);
        if (v33)
        {
          if (v33 == v32 + 8)
          {
            v42 = &v39;
            (*(*v33 + 24))(v33, &v39);
          }

          else
          {
            v42 = (*(*v33 + 16))(v33);
          }
        }

        else
        {
          v42 = 0;
        }

        std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::swap[abi:nn200100](&v39, v44);
        if (v42 == &v39)
        {
          (*(*v42 + 32))(v42);
        }

        else if (v42)
        {
          (*(*v42 + 40))();
        }

        v39 = *(*(v23 + 8 * v16) + 8);
        v40 = 0;
        if (v45)
        {
          if (v45 == v44)
          {
            v43 = v41;
            (*(*v45 + 24))();
            v34 = v43;
          }

          else
          {
            v34 = (*(*v45 + 16))();
            v43 = v34;
          }

          *a3 = v39;
          *(a3 + 4) = v40;
          if (v34)
          {
            if (v34 == v41)
            {
              *(a3 + 32) = a3 + 8;
              (*(*v34 + 24))(v34);
              v35 = v43;
              *(a3 + 40) = 1;
              if (v35 == v41)
              {
                (*(*v35 + 32))(v35);
              }

              else if (v35)
              {
                (*(*v35 + 40))(v35);
              }

              goto LABEL_20;
            }

            *(a3 + 32) = v34;
LABEL_19:
            *(a3 + 40) = 1;
LABEL_20:
            result = v45;
            if (v45 != v44)
            {
              goto LABEL_31;
            }

            v31 = *(*v45 + 32);
            return v31();
          }

LABEL_18:
          *(a3 + 32) = 0;
          goto LABEL_19;
        }
      }

      *a3 = v39;
      *(a3 + 4) = v40;
      goto LABEL_18;
    }
  }

  result = *(a1 + 144);
  if (!result)
  {
    *a3 = 0;
    *(a3 + 40) = 0;
    return result;
  }

  v39 = 1;
  v40 = 0;
  if (result == (a1 + 120))
  {
    v43 = v41;
    (*(*result + 24))(result, v41);
    result = v43;
    *a3 = v39;
    *(a3 + 4) = v40;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    v43 = result;
    *a3 = v39;
    *(a3 + 4) = v40;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (result != v41)
  {
    goto LABEL_26;
  }

  *(a3 + 32) = a3 + 8;
  (*(*result + 24))(result);
  result = v43;
  *(a3 + 40) = 1;
  if (result == v41)
  {
    v31 = *(*result + 32);
    return v31();
  }

LABEL_31:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t mlir::ConversionTarget::isLegal(mlir::ConversionTarget *this, mlir::Operation *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  mlir::ConversionTarget::getOpInfo(this, *(a2 + 6), &v22);
  if (v26 != 1)
  {
    goto LABEL_7;
  }

  v4 = v22;
  if (v22 != 1)
  {
    goto LABEL_6;
  }

  v21 = a2;
  if (!v25)
  {
    goto LABEL_30;
  }

  v5 = (*(*v25 + 48))(v25, &v21);
  if ((v5 & 0x100) != 0)
  {
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_7:
    v6 = 0;
    v7 = 0;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

    goto LABEL_25;
  }

  v4 = v22;
LABEL_6:
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v23 != 1)
  {
    v6 = 0;
    v7 = 1;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

    goto LABEL_25;
  }

  v8 = *(this + 6);
  v9 = *(this + 16);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 6);
  v11 = ((v10 >> 4) ^ (v10 >> 9)) & (v9 - 1);
  v12 = (v8 + 40 * v11);
  v13 = *v12;
  if (v10 != *v12)
  {
    v14 = 1;
    while (v13 != -4096)
    {
      v15 = v11 + v14++;
      v11 = v15 & (v9 - 1);
      v12 = (v8 + 40 * v11);
      v13 = *v12;
      if (v10 == *v12)
      {
        goto LABEL_20;
      }
    }

LABEL_19:
    v12 = (v8 + 40 * v9);
  }

LABEL_20:
  if (v12 == (v8 + 40 * v9))
  {
    v6 = 1;
    v7 = 1;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

LABEL_25:
    if (v25 == &v24)
    {
      (*(*v25 + 32))(v25);
    }

    else if (v25)
    {
      (*(*v25 + 40))(v25);
    }

    return v6 | (v7 << 8);
  }

  v21 = a2;
  v16 = v12[4];
  if (v16)
  {
    v17 = (*(*v16 + 48))(v16, &v21);
    v6 = ((v17 & 0x100) == 0) | v17 & 1;
    v7 = 1;
    if (v26 != 1)
    {
      return v6 | (v7 << 8);
    }

    goto LABEL_25;
  }

LABEL_30:
  v19 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::ConversionTarget::isIllegal(v19, v20);
}

uint64_t mlir::ConversionTarget::isIllegal(mlir::ConversionTarget *this, mlir::Operation *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  mlir::ConversionTarget::getOpInfo(this, *(a2 + 6), &v10);
  if (v13 != 1)
  {
    goto LABEL_5;
  }

  if (v10 != 1)
  {
    v4 = v10 == 2;
    if (v13 != 1)
    {
      return v4 & 1;
    }

    goto LABEL_10;
  }

  v9 = a2;
  if (v12)
  {
    v3 = (*(*v12 + 48))(v12, &v9);
    if ((v3 & 0x100) != 0)
    {
      v4 = v3 ^ 1;
      if (v13 != 1)
      {
        return v4 & 1;
      }

LABEL_10:
      if (v12 == &v11)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      return v4 & 1;
    }

LABEL_5:
    v4 = 0;
    if (v13 != 1)
    {
      return v4 & 1;
    }

    goto LABEL_10;
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::ConversionTarget::setLegalityCallback(v6, v7, v8);
}

_BYTE *mlir::ConversionTarget::setLegalityCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 8);
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v16 = 1;
    while (v6 != -4096)
    {
      v17 = v5 + v16++;
      v5 = v17 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_4;
  }

LABEL_3:
  if (v5 == v3)
  {
LABEL_4:
    v7 = (a1 + 40);
    goto LABEL_6;
  }

  v7 = (v4 + 16 * v5 + 8);
LABEL_6:
  v8 = *(a1 + 32) + 48 * *v7;
  v9 = v8 + 16;
  v10 = *(v8 + 40);
  if (!v10)
  {
    v21 = 0;
    v11 = *(a3 + 24);
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (v10 == v9)
  {
    v21 = v20;
    v12 = a3;
    (*(*v10 + 24))(v10, v20);
    a3 = v12;
    v11 = *(v12 + 24);
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_16;
  }

  v21 = *(v8 + 40);
  *(v8 + 40) = 0;
  v11 = *(a3 + 24);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v11 == a3)
  {
    v19 = v18;
    (*(*v11 + 24))(v11, v18);
  }

  else
  {
    v19 = (*(*v11 + 16))(v11, a2);
  }

LABEL_16:
  composeLegalityCallbacks(v22, v20, v18);
  v13 = *(v9 + 24);
  *(v9 + 24) = 0;
  if (v13 != v9)
  {
    if (v13)
    {
      (*(*v13 + 40))(v13);
    }

    v14 = v23;
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_23:
    *(v9 + 24) = 0;
    goto LABEL_24;
  }

  (*(*v13 + 32))(v13);
  v14 = v23;
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v14 == v22)
  {
    *(v9 + 24) = v9;
    (*(*v14 + 24))(v14, v9);
    if (v23 == v22)
    {
      (*(*v23 + 32))(v23);
    }

    else if (v23)
    {
      (*(*v23 + 40))(v23);
    }
  }

  else
  {
    *(v9 + 24) = v14;
    v23 = 0;
  }

LABEL_24:
  if (v19 != v18)
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    result = v21;
    if (v21 != v20)
    {
      goto LABEL_28;
    }

    return (*(*result + 32))(result);
  }

  (*(*v19 + 32))(v19);
  result = v21;
  if (v21 == v20)
  {
    return (*(*result + 32))(result);
  }

LABEL_28:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t composeLegalityCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v16 = v15;
      v9 = a3;
      (*(*v4 + 24))(v4, v15);
      a3 = v9;
      v5 = *(v9 + 24);
      if (v5)
      {
LABEL_4:
        if (v5 == a3)
        {
          v18 = v17;
          (*(*v5 + 24))(v5, v17);
          v6 = v16;
          if (v16)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v18 = v5;
          *(a3 + 24) = 0;
          v6 = v16;
          if (v16)
          {
LABEL_6:
            if (v6 != v15)
            {
              v12 = v6;
              v16 = 0;
              v7 = v18;
              if (v18)
              {
                goto LABEL_8;
              }

LABEL_16:
              v14 = 0;
              goto LABEL_22;
            }

            v12 = v11;
            (*(*v6 + 24))(v6, v11);
            v7 = v18;
            if (!v18)
            {
              goto LABEL_16;
            }

LABEL_8:
            if (v7 == v17)
            {
              v14 = v13;
              (*(*v7 + 24))(v7, v13);
            }

            else
            {
              v14 = v7;
              v18 = 0;
            }

LABEL_22:
            operator new();
          }
        }

LABEL_15:
        v12 = 0;
        v7 = v18;
        if (!v18)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v16 = *(a2 + 24);
      *(a2 + 24) = 0;
      v5 = *(a3 + 24);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v18 = 0;
    v6 = v16;
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = *(a3 + 24);
  if (result)
  {
    if (result == a3)
    {
      *(a1 + 24) = a1;
      v10 = *(*result + 24);

      return v10();
    }

    else
    {
      *(a1 + 24) = result;
      *(a3 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return result;
}

_BYTE *mlir::ConversionTarget::setLegalityCallback(_BYTE *result, unsigned int **a2, const unsigned __int8 *a3, unint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a2;
    v6 = result;
    v7 = &a2[2 * a3];
    do
    {
      v8 = *v5;
      v9 = v5[1];
      v10 = llvm::StringMapImpl::hash(*v5, v9, a3, a4);
      v11 = llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 96), v8, v9, v10);
      v12 = *v11;
      v13 = *(*v11 + 32);
      if (v13)
      {
        if (v13 == (v12 + 8))
        {
          v26 = v25;
          (*(*v13 + 24))(v13, v25);
          v14 = *(a4 + 24);
          if (!v14)
          {
LABEL_13:
            v24 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v26 = v13;
          *(v12 + 32) = 0;
          v14 = *(a4 + 24);
          if (!v14)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v26 = 0;
        v14 = *(a4 + 24);
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      if (v14 == a4)
      {
        v24 = v23;
        (*(*v14 + 24))(v14, v23);
      }

      else
      {
        v24 = (*(*v14 + 16))(v14);
      }

LABEL_15:
      composeLegalityCallbacks(v27, v25, v23);
      v17 = llvm::StringMapImpl::hash(v8, v9, v15, v16);
      v18 = llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>((v6 + 96), v8, v9, v17);
      v19 = *v18;
      v20 = *v18 + 8;
      v21 = *(*v18 + 32);
      *(v19 + 32) = 0;
      if (v21 == v20)
      {
        (*(*v21 + 32))(v21);
        v22 = v28;
        if (!v28)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v21)
        {
          (*(*v21 + 40))(v21);
        }

        v22 = v28;
        if (!v28)
        {
LABEL_22:
          *(v19 + 32) = 0;
          goto LABEL_23;
        }
      }

      if (v22 == v27)
      {
        *(v19 + 32) = v20;
        (*(*v22 + 24))(v22, v20);
        if (v28 == v27)
        {
          (*(*v28 + 32))(v28);
        }

        else if (v28)
        {
          (*(*v28 + 40))();
        }
      }

      else
      {
        *(v19 + 32) = v22;
        v28 = 0;
      }

LABEL_23:
      if (v24 == v23)
      {
        (*(*v24 + 32))(v24);
        result = v26;
        if (v26 != v25)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v24)
        {
          (*(*v24 + 40))();
        }

        result = v26;
        if (v26 != v25)
        {
LABEL_29:
          if (result)
          {
            result = (*(*result + 40))(result);
          }

          goto LABEL_4;
        }
      }

      result = (*(*result + 32))(result);
LABEL_4:
      v5 += 2;
    }

    while (v5 != v7);
  }

  return result;
}

void mlir::OperationConverter::OperationConverter(uint64_t a1, uint64_t a2, mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  v134 = *MEMORY[0x1E69E9840];
  v5 = *a4;
  v6 = a4[2];
  *(a1 + 16) = a4[1];
  *(a1 + 32) = v6;
  *a1 = v5;
  *(a1 + 48) = a1 + 80;
  v7 = a1 + 48;
  *(a1 + 56) = a1 + 80;
  *(a1 + 64) = 8;
  *(a1 + 72) = 0;
  *(a1 + 144) = a2;
  mlir::PatternApplicator::PatternApplicator((a1 + 152), a3);
  v128 = 0x100000000;
  *(a1 + 216) = a1;
  v116[0] = 0;
  v116[1] = 0;
  v117 = 0;
  v127 = &v129;
  v125[0] = 0;
  v125[1] = 0;
  v126 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v119 = 0;
  *v118 = 0u;
  v120 = &v122;
  v121 = 0;
  v130 = &v127;
  v131[0] = v7;
  v131[1] = &v122;
  v131[2] = v125;
  v132 = v118;
  if (v128)
  {
    if (v121)
    {
      v8 = v120;
      v9 = 8 * v121;
      do
      {
        v10 = *v8;
        v11 = *(*v8 + 2);
        if (v11 == 1)
        {
          v12 = *v10;
        }

        else
        {
          LOBYTE(v11) = 0;
          v12 = 0;
        }

        v130 = v12;
        LOBYTE(v131[0]) = v11;
        v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](v116, &v130);
        v14 = *(v13 + 2);
        if (v14 >= *(v13 + 3))
        {
          v15 = v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v13 + 2, v14 + 1, 8);
          v13 = v15;
          v14 = *(v15 + 2);
        }

        *(*v13 + 8 * v14) = v10;
        ++*(v13 + 2);
        ++v8;
        v9 -= 8;
      }

      while (v9);
    }

    goto LABEL_177;
  }

  v16 = v121;
  if (!v121)
  {
    goto LABEL_177;
  }

LABEL_14:
  v17 = *(v120 + v16 - 1);
  if (v119)
  {
    v18 = ((v17 >> 4) ^ (v17 >> 9)) & (v119 - 1);
    v19 = *(v118[0] + v18);
    if (v17 == v19)
    {
LABEL_16:
      *(v118[0] + v18) = -8192;
      v118[1] = vadd_s32(v118[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v114 = 1;
      while (v19 != -4096)
      {
        v115 = v18 + v114++;
        v18 = v115 & (v119 - 1);
        v19 = *(v118[0] + v18);
        if (v17 == v19)
        {
          goto LABEL_16;
        }
      }
    }
  }

  LODWORD(v121) = v16 - 1;
  v20 = v17[8];
  if (v20)
  {
    v21 = *(v17 + 3);
    v22 = &v21[v20];
    do
    {
      v27 = *v21;
      mlir::ConversionTarget::getOpInfo(*(a1 + 144), *v21, &v130);
      v28 = v133;
      if (v133 == 1)
      {
        v29 = v130;
        v30 = v130 >> 8;
        if (v132 == v131)
        {
          (*(*v132 + 4))(v132);
          v23 = v117;
          if (!v117)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }

        if (v132)
        {
          (*(*v132 + 5))(v132);
          v23 = v117;
          if (!v117)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }
      }

      else
      {
        v30 = 0;
        v29 = 0;
      }

      v23 = v117;
      if (!v117)
      {
        goto LABEL_29;
      }

LABEL_20:
      v24 = v23 - 1;
      v25 = v24 & ((v27 >> 4) ^ (v27 >> 9));
      v26 = *(v116[0] + 4 * v25);
      if (v26 != v27)
      {
        v31 = 1;
        while (v26 != -4096)
        {
          v32 = v25 + v31++;
          v25 = v32 & v24;
          v26 = *(v116[0] + 4 * v25);
          if (v26 == v27)
          {
            goto LABEL_21;
          }
        }

LABEL_29:
        if (!v28 || (v29 | (v30 << 8)) == 2)
        {
          goto LABEL_13;
        }
      }

LABEL_21:
      ++v21;
    }

    while (v21 != v22);
  }

  v33 = v17[2];
  if (v33 == 1)
  {
    v34 = *v17;
  }

  else
  {
    LOBYTE(v33) = 0;
    v34 = 0;
  }

  v130 = v34;
  LOBYTE(v131[0]) = v33;
  v35 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](v116, &v130);
  v36 = *(v35 + 2);
  if (v36 >= *(v35 + 3))
  {
    v113 = v35;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v35, v35 + 2, v36 + 1, 8);
    v35 = v113;
    v36 = *(v113 + 2);
  }

  *(*v35 + 8 * v36) = v17;
  ++*(v35 + 2);
  v37 = v17[2];
  if (v37 == 1)
  {
    v38 = *v17;
  }

  else
  {
    LOBYTE(v37) = 0;
    v38 = 0;
  }

  v130 = v38;
  LOBYTE(v131[0]) = v37;
  v39 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](&v122, &v130);
  v40 = v39;
  v41 = *v39;
  if (*(v39 + 8) == *v39)
  {
    v45 = *(v39 + 20);
    if (v45)
    {
      v46 = 8 * v45;
      v47 = *v39;
      while (*v47 != v17)
      {
        ++v47;
        v46 -= 8;
        if (!v46)
        {
          goto LABEL_52;
        }
      }

      v112 = v45 - 1;
      *(v39 + 20) = v112;
      *v47 = v41[v112];
      v43 = v17[2];
      if (v43 != 1)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v42 = llvm::SmallPtrSetImplBase::doFind(v39, v17);
    if (v42)
    {
      *v42 = -2;
      ++*(v40 + 24);
      v43 = v17[2];
      if (v43 != 1)
      {
LABEL_47:
        LOBYTE(v43) = 0;
        v44 = 0;
LABEL_54:
        v130 = v44;
        LOBYTE(v131[0]) = v43;
        v48 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](v125, &v130);
        v49 = v48[1];
        v50 = 16;
        if (v49 == *v48)
        {
          v50 = 20;
        }

        v51 = *(v48 + v50);
        if (v51)
        {
          v52 = 8 * v51;
          v53 = v48[1];
          while (*v53 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v53;
            v52 -= 8;
            if (!v52)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v53 = v48[1];
        }

        v54 = (v49 + 8 * v51);
        if (v53 == v54)
        {
          goto LABEL_13;
        }

        v55 = *v53;
        while (1)
        {
          v56 = v122;
          v57 = v124;
          if (!v124)
          {
            v60 = 0;
            v66 = v123;
            if (4 * v123 + 4 >= 3 * v124)
            {
              goto LABEL_141;
            }

            goto LABEL_76;
          }

          v58 = v124 - 1;
          v59 = ((v55 >> 4) ^ (v55 >> 9)) & (v124 - 1);
          v60 = v122 + 56 * v59;
          v61 = *v60;
          if (v55 != *v60)
          {
            break;
          }

LABEL_80:
          v69 = *(v60 + 1);
          v68 = *(v60 + 2);
          v67 = v60 + 8;
          v64 = v68 == v69;
          v70 = 16;
          if (v64)
          {
            v70 = 20;
          }

          v71 = *&v67[v70];
          if (v71)
          {
            v72 = 8 * v71;
            v73 = v68;
            while (*v73 >= 0xFFFFFFFFFFFFFFFELL)
            {
              ++v73;
              v72 -= 8;
              if (!v72)
              {
                goto LABEL_134;
              }
            }
          }

          else
          {
            v73 = v68;
          }

          v74 = &v68[v71];
          if (v73 == v74)
          {
            goto LABEL_134;
          }

          v75 = *v73;
          do
          {
            v76 = v119;
            if (!v119)
            {
              goto LABEL_116;
            }

            v77 = ((v75 >> 4) ^ (v75 >> 9)) & (v119 - 1);
            v78 = (v118[0] + 8 * v77);
            v79 = *v78;
            if (v75 == *v78)
            {
              goto LABEL_108;
            }

            v80 = 0;
            v81 = 1;
            while (v79 != -4096)
            {
              if (v80)
              {
                v82 = 0;
              }

              else
              {
                v82 = v79 == -8192;
              }

              if (v82)
              {
                v80 = v78;
              }

              v83 = v77 + v81++;
              v77 = v83 & (v119 - 1);
              v78 = (v118[0] + 8 * v77);
              v79 = *v78;
              if (v75 == *v78)
              {
                goto LABEL_108;
              }
            }

            v85 = (v80 ? v80 : v78);
            if (4 * LODWORD(v118[1]) + 4 >= 3 * v119)
            {
LABEL_116:
              v76 = 2 * v119;
LABEL_117:
              llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v118, v76);
              if (v119)
              {
                v86 = v119 - 1;
                v87 = (v119 - 1) & ((v75 >> 4) ^ (v75 >> 9));
                v85 = v118[0] + 8 * v87;
                v88 = *v85;
                if (v75 != *v85)
                {
                  v89 = 0;
                  v90 = 1;
                  while (v88 != -4096)
                  {
                    if (v89)
                    {
                      v91 = 0;
                    }

                    else
                    {
                      v91 = v88 == -8192;
                    }

                    if (v91)
                    {
                      v89 = v85;
                    }

                    v92 = v87 + v90++;
                    v87 = v92 & v86;
                    v85 = v118[0] + 8 * (v92 & v86);
                    v88 = *v85;
                    if (v75 == *v85)
                    {
                      goto LABEL_129;
                    }
                  }

                  if (v89)
                  {
                    v85 = v89;
                  }
                }
              }

              else
              {
                v85 = 0;
              }

LABEL_129:
              ++LODWORD(v118[1]);
              if (*v85 == -4096)
              {
                goto LABEL_105;
              }

LABEL_104:
              --HIDWORD(v118[1]);
              goto LABEL_105;
            }

            if (v119 + ~LODWORD(v118[1]) - HIDWORD(v118[1]) <= v119 >> 3)
            {
              goto LABEL_117;
            }

            ++LODWORD(v118[1]);
            if (*v85 != -4096)
            {
              goto LABEL_104;
            }

LABEL_105:
            *v85 = v75;
            v84 = v121;
            if (v121 >= HIDWORD(v121))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, &v122, v121 + 1, 8);
              v84 = v121;
            }

            *(v120 + v84) = v75;
            LODWORD(v121) = v121 + 1;
            do
            {
LABEL_108:
              if (++v73 == v74)
              {
                goto LABEL_134;
              }

              v75 = *v73;
            }

            while (*v73 >= 0xFFFFFFFFFFFFFFFELL);
          }

          while (v73 != v74);
          do
          {
LABEL_134:
            if (++v53 == v54)
            {
              goto LABEL_13;
            }

            v55 = *v53;
          }

          while (*v53 >= 0xFFFFFFFFFFFFFFFELL);
          if (v53 == v54)
          {
LABEL_13:
            v16 = v121;
            if (v121)
            {
              goto LABEL_14;
            }

LABEL_177:
            if (v120 != &v122)
            {
              free(v120);
            }

            llvm::deallocate_buffer(v118[0], (8 * v119));
          }
        }

        v62 = 0;
        v63 = 1;
        while (v61 != -4096)
        {
          if (v62)
          {
            v64 = 0;
          }

          else
          {
            v64 = v61 == -8192;
          }

          if (v64)
          {
            v62 = v60;
          }

          v65 = v59 + v63++;
          v59 = v65 & v58;
          v60 = v122 + 56 * (v65 & v58);
          v61 = *v60;
          if (v55 == *v60)
          {
            goto LABEL_80;
          }
        }

        if (v62)
        {
          v60 = v62;
        }

        v66 = v123;
        if (4 * v123 + 4 >= 3 * v124)
        {
LABEL_141:
          v93 = 2 * v124;
          goto LABEL_143;
        }

LABEL_76:
        if (v124 + ~v66 - HIDWORD(v123) <= v124 >> 3)
        {
          v93 = v124;
LABEL_143:
          v94 = (v93 - 1) | ((v93 - 1) >> 1);
          v95 = v94 | (v94 >> 2) | ((v94 | (v94 >> 2)) >> 4);
          v96 = ((v95 | (v95 >> 8)) >> 16) | v95 | (v95 >> 8);
          if ((v96 + 1) > 0x40)
          {
            v97 = v96 + 1;
          }

          else
          {
            v97 = 64;
          }

          v124 = v97;
          buffer = llvm::allocate_buffer(56 * v97, 8uLL);
          v122 = buffer;
          if (v56)
          {
            llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::moveFromOldBuckets(&v122, v56, &v56[7 * v57]);
            llvm::deallocate_buffer(v56, (56 * v57));
          }

          v123 = 0;
          v99 = v124;
          if (!v124)
          {
            goto LABEL_165;
          }

          v100 = 56 * v124 - 56;
          v101 = buffer;
          if (v100 < 0x38)
          {
            goto LABEL_182;
          }

          v102 = v100 / 0x38 + 1;
          v101 = (buffer + 56 * (v102 & 0xFFFFFFFFFFFFFFELL));
          v103 = buffer;
          v104 = v102 & 0xFFFFFFFFFFFFFFELL;
          do
          {
            *v103 = -4096;
            *(v103 + 7) = -4096;
            v103 = (v103 + 112);
            v104 -= 2;
          }

          while (v104);
          if (v102 != (v102 & 0xFFFFFFFFFFFFFFELL))
          {
LABEL_182:
            do
            {
              *v101 = -4096;
              v101 = (v101 + 56);
            }

            while (v101 != (buffer + 56 * v99));
          }

          if (v99)
          {
            v105 = v99 - 1;
            v106 = (v99 - 1) & ((v55 >> 4) ^ (v55 >> 9));
            v60 = buffer + 56 * v106;
            v107 = *v60;
            if (v55 != *v60)
            {
              v108 = 0;
              v109 = 1;
              while (v107 != -4096)
              {
                if (v108)
                {
                  v110 = 0;
                }

                else
                {
                  v110 = v107 == -8192;
                }

                if (v110)
                {
                  v108 = v60;
                }

                v111 = v106 + v109++;
                v106 = v111 & v105;
                v60 = buffer + 56 * (v111 & v105);
                v107 = *v60;
                if (v55 == *v60)
                {
                  goto LABEL_166;
                }
              }

              if (v108)
              {
                v60 = v108;
              }
            }
          }

          else
          {
LABEL_165:
            v60 = 0;
          }

LABEL_166:
          LODWORD(v123) = v123 + 1;
          if (*v60 != -4096)
          {
            goto LABEL_78;
          }
        }

        else
        {
          LODWORD(v123) = v66 + 1;
          if (*v60 != -4096)
          {
LABEL_78:
            --HIDWORD(v123);
          }
        }

        *v60 = v55;
        *(v60 + 1) = v60 + 40;
        *(v60 + 2) = v60 + 40;
        *(v60 + 3) = 2;
        *(v60 + 8) = 0;
        goto LABEL_80;
      }

LABEL_53:
      v44 = *v17;
      goto LABEL_54;
    }
  }

LABEL_52:
  v43 = v17[2];
  if (v43 != 1)
  {
    goto LABEL_47;
  }

  goto LABEL_53;
}

void mlir::applyFullConversion(uint64_t a1, uint64_t a2, mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v4 = a4[1];
  v5[0] = *a4;
  v5[1] = v4;
  v5[2] = a4[2];
  mlir::OperationConverter::OperationConverter(v7, a2, a3, v5);
}

void sub_1A6E3A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, void);
  mlir::OperationConverter::convertOperations(va1, va, 1);
  mlir::PatternApplicator::~PatternApplicator((v14 + 152));
}

void mlir::applyAnalysisConversion(uint64_t a1, uint64_t a2, mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v4 = a4[1];
  v5[0] = *a4;
  v5[1] = v4;
  v5[2] = a4[2];
  mlir::OperationConverter::OperationConverter(v7, a2, a3, v5);
}

void sub_1A6E3A1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, void);
  mlir::OperationConverter::convertOperations(va1, va, 1);
  mlir::PatternApplicator::~PatternApplicator((v14 + 152));
}

void mlir::detail::ConversionPatternRewriterImpl::~ConversionPatternRewriterImpl(llvm **this)
{
  mlir::detail::ConversionPatternRewriterImpl::~ConversionPatternRewriterImpl(this);
}

{
  *this = &unk_1F1A0B7F8;
  llvm::deallocate_buffer(this[44], (16 * *(this + 92)));
}

void sub_1A6E3A24C()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RewriterBase::Listener::notifyOperationReplaced(mlir::RewriterBase::Listener *this, mlir::Operation *a2, mlir::Operation *a3)
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
  return (*(*this + 56))(this, a2, v7[0], v7[1]);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, a3, 1uLL);
  mlir::arith::ExtSIOp::build(a1, v16, v17[0], v17[1], *a4, a4[1], 0, 0);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<anonymous namespace::IRRewrite>,false>::grow(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v24);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_19:
  v23 = v24;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v23;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>,mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>::LookupBucketFor<mlir::UnrealizedConversionCastOp>(uint64_t result, int a2, void *a3, void *a4)
{
  if (a2)
  {
    v4 = HIDWORD(*a3);
    v5 = 0x9DDFEA08EB382D69 * ((8 * *a3 - 0xAE502812AA7333) ^ v4);
    LODWORD(v4) = -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5)));
    v6 = a2 - 1;
    v7 = v4 & (a2 - 1);
    v8 = (result + 16 * v7);
    v9 = *v8;
    if (*a3 == *v8)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 16 * (v13 & v6));
        v9 = *v8;
        if (*a3 == *v8)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>,mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseMapPair<mlir::UnrealizedConversionCastOp,anonymous namespace::UnresolvedMaterializationRewrite *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ HIDWORD(*v16));
          v25 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v24 >> 47) ^ v24);
          LODWORD(v24) = -348639895 * ((v25 >> 47) ^ v25);
          v26 = *(a1 + 16) - 1;
          v27 = v26 & v24;
          v22 = (*a1 + 16 * v27);
          v28 = *v22;
          if (v23 != *v22)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v22;
              }

              v32 = v27 + v30++;
              v27 = v32 & v26;
              v22 = (*a1 + 16 * (v32 & v26));
              v28 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v29)
            {
              v22 = v29;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::eraseOp(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this, mlir::Operation *a2)
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
      v15 = 1;
      while (v7 != -4096)
      {
        v16 = v6 + v15++;
        v6 = v16 & (v4 - 1);
        v7 = *(v5 + 8 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = *(a2 + 9);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, i);
      while (1)
      {
        v12 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v13 = v12[1];
        if (v13)
        {
          v14 = *v12;
          *v13 = *v12;
          if (v14)
          {
            *(v14 + 8) = v13;
          }
        }

        *v12 = 0;
        v12[1] = 0;
        v12[3] = 0;
      }
    }
  }

  mlir::RewriterBase::eraseOp(this, a2);
}

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::eraseBlock(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this, uint64_t **a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    v4 = *(this + 7);
    v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 8 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 != v3)
      {
        return;
      }
    }

    else
    {
      v8 = 1;
      while (v6 != -4096)
      {
        v9 = v5 + v8++;
        v5 = v9 & (v3 - 1);
        v6 = *(v4 + 8 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  mlir::Block::dropAllDefinedValueUses(a2);

  mlir::RewriterBase::eraseBlock(this, a2);
}

void mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::~SingleEraseRewriter(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this)
{
  *this = &unk_1F1A0B990;
  *(this + 5) = &unk_1F1A0BA00;
  llvm::deallocate_buffer(*(this + 7), (8 * *(this + 18)));
}

{
  *this = &unk_1F1A0B990;
  *(this + 5) = &unk_1F1A0BA00;
  llvm::deallocate_buffer(*(this + 7), (8 * *(this + 18)));
}

void sub_1A6E3AB1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  ZinIrHalH13g::~ZinIrHalH13g(v12);
}

void sub_1A6E3ABA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ZinIrHalH13g::~ZinIrHalH13g(v12);

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk tomlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter::~SingleEraseRewriter(mlir::detail::ConversionPatternRewriterImpl::SingleEraseRewriter *this)
{
  *(this - 5) = &unk_1F1A0B990;
  *this = &unk_1F1A0BA00;
  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

{
  *(this - 5) = &unk_1F1A0B990;
  *this = &unk_1F1A0BA00;
  llvm::deallocate_buffer(*(this + 2), (8 * *(this + 8)));
}

void sub_1A6E3ACA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  ZinIrHalH13g::~ZinIrHalH13g(v12);
}

void sub_1A6E3AD24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ZinIrHalH13g::~ZinIrHalH13g(v12);

  JUMPOUT(0x1AC55A070);
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::OperationLegalizer::legalize(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_0>(uint64_t *result, uint64_t a2)
{
  v5 = a2;
  if (**result != a2)
  {
    v2 = *(result[1] + 40);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 240), &v5, v6);
    if (v6[16] == 1)
    {
      v3 = v5;
      v4 = *(v2 + 272);
      if (v4 >= *(v2 + 276))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 264, (v2 + 280), v4 + 1, 8);
        LODWORD(v4) = *(v2 + 272);
      }

      *(*(v2 + 264) + 8 * v4) = v3;
      ++*(v2 + 272);
    }
  }
}

void mlir::detail::ConversionPatternRewriterImpl::resetState(int32x2_t *a1, unint64_t a2, __int32 a3)
{
  v5 = HIDWORD(a2);
  mlir::detail::ConversionPatternRewriterImpl::undoRewrites(a1, a2);
  v6 = a1[34].u32[0];
  if (v5 == v6)
  {
    v7 = a1[39].u32[0];
    if (v7 == a3)
    {
      return;
    }

    goto LABEL_25;
  }

  v8 = a1[32].i32[0];
  if (v8)
  {
    v9 = a1[30];
    v10 = v8 - 1;
    v11 = *&a1[33] - 8;
    do
    {
      v12 = *(v11 + 8 * v6);
      v13 = ((v12 >> 4) ^ (v12 >> 9)) & v10;
      v14 = *(*&v9 + 8 * v13);
      if (v12 == v14)
      {
LABEL_7:
        *(*&v9 + 8 * v13) = -8192;
        a1[31] = vadd_s32(a1[31], 0x1FFFFFFFFLL);
      }

      else
      {
        v15 = 1;
        while (v14 != -4096)
        {
          v16 = v13 + v15++;
          v13 = v16 & v10;
          v14 = *(*&v9 + 8 * v13);
          if (v12 == v14)
          {
            goto LABEL_7;
          }
        }
      }

      v6 = (v6 - 1);
    }

    while (v5 != v6);
  }

  else
  {
    v17 = v6 - v5;
    if ((v6 - v5) < 2)
    {
      goto LABEL_38;
    }

    v18 = (v6 - 1);
    v19 = v18 >= v18 - v5;
    v20 = (v18 - v5) >> 32;
    if (!v19 || v20 != 0)
    {
      goto LABEL_38;
    }

    LODWORD(v6) = v6 - (v17 & 0xFFFFFFFE);
    v22 = v17 & 0xFFFFFFFE;
    do
    {
      v22 -= 2;
    }

    while (v22);
    if (v17 != (v17 & 0xFFFFFFFE))
    {
LABEL_38:
      do
      {
        v6 = (v6 - 1);
      }

      while (v5 != v6);
    }
  }

  a1[34].i32[0] = v6;
  v7 = a1[39].u32[0];
  if (v7 != a3)
  {
LABEL_25:
    v23 = a1[37].i32[0];
    if (v23)
    {
      v24 = a1[35];
      v25 = v23 - 1;
      v26 = *&a1[38] - 8;
      do
      {
        v27 = *(v26 + 8 * v7);
        v28 = ((v27 >> 4) ^ (v27 >> 9)) & v25;
        v29 = *(*&v24 + 8 * v28);
        if (v27 == v29)
        {
LABEL_28:
          *(*&v24 + 8 * v28) = -8192;
          a1[36] = vadd_s32(a1[36], 0x1FFFFFFFFLL);
        }

        else
        {
          v30 = 1;
          while (v29 != -4096)
          {
            v31 = v28 + v30++;
            v28 = v31 & v25;
            v29 = *(*&v24 + 8 * v28);
            if (v27 == v29)
            {
              goto LABEL_28;
            }
          }
        }

        --v7;
      }

      while (v7 != a3);
    }

    a1[39].i32[0] = a3;
  }
}

uint64_t llvm::function_ref<BOOL ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_0>(uint64_t a1, char *a2)
{
  v3 = *a1;
  if ((a2[16] & 4) == 0)
  {
    v4 = *v3;
    if (*(v3 + 1) != *v3)
    {
      goto LABEL_3;
    }

    v9 = *(v3 + 5);
    if (v9)
    {
      v10 = 8 * v9;
      v11 = *v3;
      while (*v11 != a2)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      return 0;
    }

LABEL_9:
    if (v9 < *(v3 + 4))
    {
      *(v3 + 5) = v9 + 1;
      v4[v9] = a2;
    }

    else
    {
LABEL_3:
      v5 = a2;
      llvm::SmallPtrSetImplBase::insert_imp_big(*a1, a2);
      v7 = v6;
      a2 = v5;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v12 = *(*(v3 + 21) + 32);
  if (v12)
  {
    (*(*v12 + 72))(v12, a2, **(a1 + 8));
  }

  return 1;
}

void llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_1>(uint64_t *a1, const void *a2)
{
  v4 = *a1;
  v5 = *(*(*a1 + 168) + 32);
  if (v5)
  {
    (*(*v5 + 80))(v5, a2, 0);
  }

  mlir::detail::ConversionPatternRewriterImpl::resetState(a1[1], *a1[2], *(a1[2] + 8));
  v6 = *v4;
  if (*(v4 + 8) == *v4)
  {
    v8 = *(v4 + 20);
    if (v8)
    {
      v9 = 8 * v8;
      for (i = *v4; *i != a2; ++i)
      {
        v9 -= 8;
        if (!v9)
        {
          return;
        }
      }

      v11 = v8 - 1;
      *(v4 + 20) = v11;
      *i = v6[v11];
    }
  }

  else
  {
    v7 = llvm::SmallPtrSetImplBase::doFind(v4, a2);
    if (v7)
    {
      *v7 = -2;
      ++*(v4 + 24);
    }
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::legalizeWithPattern(mlir::Operation *,mlir::ConversionPatternRewriter &)::$_2>(uint64_t *a1, void *a2)
{
  v2 = a2;
  v74 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(v6 + 5);
  v8 = *(v7 + 184);
  v63 = *a1[1];
  v64 = v68;
  v65 = v68;
  v66 = 16;
  v67 = 0;
  v9 = *v5;
  if (v9 == v8)
  {
    goto LABEL_2;
  }

  v61 = v5;
  v62 = v6;
  while (1)
  {
    v11 = *(*(v7 + 176) + 8 * v9);
    v12 = *(v11 + 8);
    if (v11)
    {
      v13 = v12 > 5;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_5;
    }

    v13 = v12 > 5;
    v14 = (1 << v12) & 0x32;
    if (!v13 && v14 != 0)
    {
      goto LABEL_5;
    }

    v16 = *(v11 + 24);
    ParentOp = mlir::Block::getParentOp(v16);
    v18 = !ParentOp || ParentOp == v63;
    if (v18 || ((*(v16 + 7) - *(v16 + 6)) & 0x7FFFFFFF8) == 0)
    {
      goto LABEL_5;
    }

    v19 = ParentOp;
    Parent = mlir::Block::getParent(v16);
    v21 = *(v7 + 368);
    if (v21)
    {
      v22 = *(v7 + 352);
      v23 = v21 - 1;
      v24 = ((Parent >> 4) ^ (Parent >> 9)) & (v21 - 1);
      v25 = *(v22 + 16 * v24);
      if (v25 != Parent)
      {
        v27 = 1;
        while (v25 != -4096)
        {
          v28 = v24 + v27++;
          v24 = v28 & v23;
          v25 = *(v22 + 16 * v24);
          if (v25 == Parent)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_33;
      }

LABEL_22:
      v26 = *(v22 + 16 * v24 + 8);
      if (v26)
      {
        break;
      }
    }

LABEL_33:
    v29 = HIDWORD(v66);
    if (HIDWORD(v66) == v67)
    {
      v30 = *v61;
      v31 = *(v7 + 184);
      while (1)
      {
        if (v30 == v31)
        {
          goto LABEL_51;
        }

        v32 = *(*(v7 + 176) + 8 * v30);
        if (v32 && *(v32 + 8) == 9)
        {
          break;
        }

LABEL_37:
        ++v30;
      }

      v34 = *(v32 + 24);
      if (v65 != v64)
      {
        goto LABEL_35;
      }

      if (v29)
      {
        v35 = 8 * v29;
        v36 = v64;
        while (*v36 != v34)
        {
          ++v36;
          v35 -= 8;
          if (!v35)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_36;
      }

LABEL_49:
      if (v29 < v66)
      {
        HIDWORD(v66) = v29 + 1;
        v64[v29] = v34;
      }

      else
      {
LABEL_35:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v64, v34);
      }

LABEL_36:
      v29 = HIDWORD(v66);
      goto LABEL_37;
    }

LABEL_51:
    v6 = v62;
    if (v65 == v64)
    {
      if (v29)
      {
        v38 = 8 * v29;
        v39 = v64;
        while (*v39 != v19)
        {
          ++v39;
          v38 -= 8;
          if (!v38)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_5;
      }

LABEL_59:
      if (v29 < v66)
      {
        HIDWORD(v66) = v29 + 1;
        v64[v29] = v19;
        {
          goto LABEL_61;
        }

        goto LABEL_5;
      }
    }

    llvm::SmallPtrSetImplBase::insert_imp_big(&v64, v19);
    {
LABEL_61:
      v40 = 1;
      v41 = v65;
      if (v65 == v64)
      {
        goto LABEL_65;
      }

LABEL_64:
      free(v41);
      goto LABEL_65;
    }

LABEL_5:
    if (v8 == ++v9)
    {
      v40 = 0;
      v41 = v65;
      if (v65 == v64)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  mlir::TypeConverter::convertBlockSignature(v69, v26, v16);
  if (v73 == 1)
  {
    mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(v7, v62, v16, v26, v69);
    if (v73)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v6 = v62;
      if (v69[0] != &v70)
      {
        free(v69[0]);
      }
    }

    else
    {
      v6 = v62;
    }

    goto LABEL_5;
  }

  v40 = 1;
  v6 = v62;
  v41 = v65;
  if (v65 != v64)
  {
    goto LABEL_64;
  }

LABEL_65:
  v2 = a2;
  if ((v40 & 1) == 0)
  {
    v49 = *v61;
    if (v8 == v49)
    {
LABEL_2:
      v10 = 1;
      goto LABEL_67;
    }

    v50 = v8 - v49;
    v51 = 8 * v49;
    while (1)
    {
      v52 = *(*(v7 + 176) + v51);
      v53 = v52 && *(v52 + 8) == 7;
      {
        break;
      }

      v51 += 8;
      if (!--v50)
      {
        v55 = *v61;
        if (v8 == v55)
        {
          goto LABEL_2;
        }

        v56 = v8 - v55;
        v57 = 8 * v55;
        while (1)
        {
          v58 = *(*(v7 + 176) + v57);
          v59 = v58 && *(v58 + 8) == 9;
          {
            goto LABEL_66;
          }

          v57 += 8;
          v10 = 1;
          if (!--v56)
          {
            goto LABEL_67;
          }
        }
      }
    }
  }

LABEL_66:
  v10 = 0;
LABEL_67:
  v42 = *v4;
  if (*(v4 + 8) != *v4)
  {
    v43 = llvm::SmallPtrSetImplBase::doFind(v4, v2);
    if (v43)
    {
      *v43 = -2;
      ++*(v4 + 24);
      if (v10)
      {
        goto LABEL_77;
      }

LABEL_76:
      mlir::detail::ConversionPatternRewriterImpl::resetState(a1[4], *a1[3], *(a1[3] + 8));
      goto LABEL_77;
    }

LABEL_75:
    if (v10)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v44 = *(v4 + 20);
  if (!v44)
  {
    goto LABEL_75;
  }

  v45 = 8 * v44;
  v46 = *v4;
  while (*v46 != v2)
  {
    v46 = (v46 + 8);
    v45 -= 8;
    if (!v45)
    {
      goto LABEL_75;
    }
  }

  v54 = v44 - 1;
  *(v4 + 20) = v54;
  *v46 = *(v42 + v54);
  if ((v10 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_77:
  v47 = *(*(v4 + 168) + 32);
  if (v47)
  {
    (*(*v47 + 80))(v47, v2, v10);
  }

  return v10;
}

__n128 llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::OperandRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(void)#1},void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char **a7)
{
  if (a2 != a4)
  {
    v40 = v7;
    v41 = v8;
    v14 = a1 + 32 * a2;
    v15 = &v37;
    mlir::DiagnosticArgument::DiagnosticArgument(&v37, *(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = (a5 + 16);
    v16 = *(a5 + 16);
    v18 = *(a5 + 24);
    if (v18 >= *(a5 + 28))
    {
      if (v16 <= &v37 && v16 + 24 * v18 > &v37)
      {
        v36 = &v37 - v16;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v18 + 1, 24);
        v16 = *(a5 + 16);
        v15 = &v36[v16];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v18 + 1, 24);
        v16 = *(a5 + 16);
        v15 = &v37;
      }
    }

    v19 = (v16 + 24 * *(a5 + 24));
    result = *v15;
    v19[1].n128_u64[0] = v15[1].n128_u64[0];
    *v19 = result;
    ++*(a5 + 24);
    if (a2 + 1 != a4)
    {
      v21 = ~a2 + a4;
      v22 = v14 + 56;
      do
      {
        v23 = *a7;
        if (*a7)
        {
          v24 = strlen(*a7);
          v37 = 3;
          v38 = v23;
          v39 = v24;
          v25 = *(a6 + 24);
          v26 = *(a6 + 16);
          if (v25 < *(a6 + 28))
          {
            goto LABEL_10;
          }
        }

        else
        {
          v37 = 3;
          v38 = 0;
          v39 = 0;
          v25 = *(a6 + 24);
          v26 = *(a6 + 16);
          if (v25 < *(a6 + 28))
          {
            goto LABEL_10;
          }
        }

        if (v26 <= &v37 && v26 + 24 * v25 > &v37)
        {
          v34 = &v37 - v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 16, (a6 + 32), v25 + 1, 24);
          v26 = *(a6 + 16);
          v27 = &v34[v26];
          goto LABEL_11;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 16, (a6 + 32), v25 + 1, 24);
        v26 = *(a6 + 16);
LABEL_10:
        v27 = &v37;
LABEL_11:
        v28 = v26 + 24 * *(a6 + 24);
        v29 = *v27;
        *(v28 + 16) = *(v27 + 2);
        *v28 = v29;
        ++*(a6 + 24);
        v30 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8);
        v31 = *(a5 + 24);
        v32 = *(a5 + 16);
        if (v31 >= *(a5 + 28))
        {
          if (v32 <= &v37 && v32 + 24 * v31 > &v37)
          {
            v35 = &v37 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v31 + 1, 24);
            v32 = *v17;
            v30 = &v35[*v17];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v31 + 1, 24);
            v32 = *v17;
            v30 = &v37;
          }
        }

        v33 = (v32 + 24 * *(a5 + 24));
        result = *v30;
        v33[1].n128_u64[0] = v30[1].n128_u64[0];
        *v33 = result;
        ++*(a5 + 24);
        v22 += 32;
        --v21;
      }

      while (v21);
    }
  }

  return result;
}

void *std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::~__func(void *a1)
{
  *a1 = &unk_1F1A0BAA8;
  v2 = a1 + 1;
  v3 = a1 + 5;
  v4 = a1[8];
  if (v4 != v3)
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = a1[4];
    if (v5 != v2)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v5 + 32))(v5);
    return a1;
  }

  (*(*v4 + 32))(v4);
  v5 = a1[4];
  if (v5 == v2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return a1;
}

void std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::~__func(void *a1)
{
  *a1 = &unk_1F1A0BAA8;
  v2 = a1 + 1;
  v3 = a1 + 5;
  v4 = a1[8];
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    v5 = a1[4];
    if (v5 != v2)
    {
LABEL_5:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

LABEL_9:

      JUMPOUT(0x1AC55A070);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = a1[4];
    if (v5 != v2)
    {
      goto LABEL_5;
    }
  }

  (*(*v5 + 32))(v5);
  goto LABEL_9;
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F1A0BAA8;
  v4 = a2 + 1;
  v5 = *(a1 + 32);
  if (!v5)
  {
    a2[4] = 0;
    result = *(a1 + 64);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v5 == a1 + 8)
  {
    a2[4] = v4;
    (*(**(a1 + 32) + 24))(*(a1 + 32));
    result = *(a1 + 64);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_9:
    a2[8] = 0;
    return result;
  }

  a2[4] = (*(*v5 + 16))(v5, v4);
  result = *(a1 + 64);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (result == a1 + 40)
  {
    a2[8] = a2 + 5;
    v7 = *(**(a1 + 64) + 24);

    return v7();
  }

  else
  {
    result = (*(*result + 16))(result);
    a2[8] = result;
  }

  return result;
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::destroy(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = a1 + 40;
  v4 = *(a1 + 64);
  if (v4 != v3)
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    result = *(a1 + 32);
    if (result != v2)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = *(*result + 32);

    return v6();
  }

  (*(*v4 + 32))(v4);
  result = *(a1 + 32);
  if (result == v2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!result)
  {
    return result;
  }

  v6 = *(*result + 40);

  return v6();
}

void std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = __p + 40;
  v4 = *(__p + 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    v5 = *(__p + 4);
    if (v5 != v2)
    {
LABEL_5:
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      v6 = __p;

      goto LABEL_9;
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = *(__p + 4);
    if (v5 != v2)
    {
      goto LABEL_5;
    }
  }

  (*(*v5 + 32))(v5);
  v6 = __p;

LABEL_9:
  operator delete(v6);
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v11 = *a2;
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = (*(*v4 + 48))(v4, &v11);
    if ((v5 & 0x100) != 0)
    {
      return v5 | 0x100u;
    }

    v11 = v3;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = (*(*v6 + 48))(v6, &v11);
      return v7 | (HIBYTE(v7) << 8);
    }
  }

  v9 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::target(v9, v10);
}

uint64_t std::__function::__func<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0,std::allocator<composeLegalityCallbacks(std::function<std::optional<BOOL> ()(mlir::Operation *)>,std::function<std::optional<BOOL> ()(mlir::Operation *)>)::$_0>,std::optional<BOOL> ()(mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL24composeLegalityCallbacksNSt3__18functionIFNS_8optionalIbEEPN4mlir9OperationEEEES7_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = v4 + 3;
  v4[2] = 0x100000000;
  return v4 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 56 * v4;
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
      v5 = *a1 + 56 * (v12 & v3);
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(v14, v13, &v15);
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
  *(v5 + 8) = v5 + 40;
  *(v5 + 16) = v5 + 40;
  *(v5 + 24) = 2;
  *(v5 + 32) = 0;
  return v5 + 8;
}

void llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::buildLegalizationGraph(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0>(uint64_t *result, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) == 1)
  {
    v4 = result[1];
    v5 = *a2;
    v27 = *a2;
    v28 = 1;
    mlir::ConversionTarget::getOpInfo(*(v4 + 96), v5, &v29);
    if (v32)
    {
      v6 = v29;
      if (v31 == v30)
      {
        (*(*v31 + 32))(v31);
        if (!v6)
        {
          return;
        }
      }

      else
      {
        if (v31)
        {
          (*(*v31 + 40))();
        }

        if (!v6)
        {
          return;
        }
      }
    }

    v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](result[2], &v27);
    v10 = *v9;
    if (*(v9 + 8) != *v9)
    {
      goto LABEL_13;
    }

    v23 = *(v9 + 20);
    if (v23)
    {
      v24 = 8 * v23;
      v25 = *v9;
      while (*v25 != a2)
      {
        ++v25;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_14;
    }

LABEL_34:
    if (v23 < *(v9 + 16))
    {
      *(v9 + 20) = v23 + 1;
      v10[v23] = a2;
    }

    else
    {
LABEL_13:
      llvm::SmallPtrSetImplBase::insert_imp_big(v9, a2);
    }

LABEL_14:
    v11 = *(a2 + 32);
    if (!v11)
    {
LABEL_25:
      v20 = result[4];
      v26 = a2;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v20, &v26, &v29);
      if (v30[8] == 1)
      {
        v21 = v26;
        v22 = *(v20 + 32);
        if (v22 >= *(v20 + 36))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, (v20 + 40), v22 + 1, 8);
          LODWORD(v22) = *(v20 + 32);
        }

        *(*(v20 + 24) + 8 * v22) = v21;
        ++*(v20 + 32);
      }

      return;
    }

    v12 = *(a2 + 24);
    v13 = &v12[v11];
    while (1)
    {
      v29 = *v12;
      v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::Pattern const*,2u>>>::operator[](result[3], &v29);
      v15 = v27;
      v16 = *v14;
      if (*(v14 + 8) != *v14)
      {
        goto LABEL_16;
      }

      v17 = *(v14 + 20);
      if (v17)
      {
        v18 = 8 * v17;
        v19 = *v14;
        while (*v19 != v27)
        {
          ++v19;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_17;
      }

LABEL_23:
      if (v17 < *(v14 + 16))
      {
        *(v14 + 20) = v17 + 1;
        v16[v17] = v15;
      }

      else
      {
LABEL_16:
        llvm::SmallPtrSetImplBase::insert_imp_big(v14, v27);
      }

LABEL_17:
      if (++v12 == v13)
      {
        goto LABEL_25;
      }
    }
  }

  v7 = *result;
  v8 = *(*result + 8);
  if (v8 >= *(*result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v8 + 1, 8);
    LODWORD(v8) = *(v7 + 8);
  }

  *(*v7 + 8 * v8) = a2;
  ++*(v7 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::LookupBucketFor<mlir::OperationName>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 56 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + 56 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(56 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 7 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 56 * v11 - 56;
    if (v12 < 0x38)
    {
      v13 = result;
LABEL_14:
      v17 = &result[7 * v11];
      do
      {
        *v13 = -4096;
        v13 += 7;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x38 + 1;
    v13 = &result[7 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[7] = -4096;
      v15 += 14;
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

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>,mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallPtrSet<mlir::OperationName,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 56 * v6 - 56;
    if (v8 < 0x38)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[7 * v6];
      do
      {
        *v9 = -4096;
        v9 += 7;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x38 + 1;
    v9 = &v7[7 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[7] = -4096;
      v11 += 14;
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
        v17 = (*a1 + 56 * v16);
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
            v17 = (*a1 + 56 * (v23 & v15));
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
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v17 + 1), v17 + 5, 2, v4 + 1);
        ++*(a1 + 8);
        v19 = v4[2];
        if (v19 != v4[1])
        {
          free(v19);
        }
      }

      v4 += 7;
    }

    while (v4 != a3);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[4 * v10];
      v12 = v7 + 4;
      v13 = v10;
      do
      {
        *(v12 - 4) = -4096;
        *v12 = -4096;
        v12 += 8;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[4 * v6];
    do
    {
      *v11 = -4096;
      v11 += 4;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + 32 * v17);
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -4096)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -8192;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = (*a1 + 32 * v17);
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        *v18 = v15;
        v18[1] = (v18 + 3);
        v18[2] = 0x100000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v18 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v20 = v4[1];
        if (v20 != v4 + 3)
        {
          free(v20);
        }
      }

      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t anonymous namespace::OperationLegalizer::computeOpLegalizationDepth(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = a1;
  v3 = *(a2 + 16);
  v4 = a1 >> 4;
  if (v3)
  {
    v5 = *a2;
    v6 = (v3 - 1) & (v4 ^ (a1 >> 9));
    v7 = *(*a2 + 16 * v6);
    if (v7 == a1)
    {
LABEL_3:
      if (v6 != v3)
      {
        return *(v5 + 16 * v6 + 8);
      }
    }

    else
    {
      v19 = 1;
      while (v7 != -4096)
      {
        v20 = v6 + v19++;
        v6 = v20 & (v3 - 1);
        v7 = *(v5 + 16 * v6);
        if (v7 == a1)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v8 = *(a3 + 4);
  if (v8)
  {
    v9 = *a3;
    v10 = (v8 - 1) & (v4 ^ (a1 >> 9));
    v11 = *(*a3 + 32 * v10);
    if (v11 == a1)
    {
LABEL_6:
      if (v10 != v8)
      {
        v12 = v9 + 32 * v10;
        if (*(v12 + 16))
        {
          v24 = -1;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(a2, &v25, &v24, v23);
          v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a2, &v25);
          result = v16;
          *v17 = v16;
          return result;
        }
      }
    }

    else
    {
      v21 = 1;
      while (v11 != -4096)
      {
        v22 = v10 + v21++;
        v10 = v22 & (v8 - 1);
        v11 = *(v9 + 32 * v10);
        if (v11 == a1)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return 0;
}

uint64_t anonymous namespace::OperationLegalizer::applyCostModelToPatterns(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 a4)
{
  v37[8] = *MEMORY[0x1E69E9840];
  v35 = v37;
  a4.n128_u64[0] = 0x400000000;
  v36 = 0x400000000;
  v7 = *(a1 + 8);
  if (v7 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v7, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (v7)
  {
    v8 = *a1;
    v9 = *a1 + 8 * v7;
    LODWORD(v10) = -1;
    do
    {
      v11 = *v8;
      v34 = v11;
      v12 = 1;
      v33 = 1;
      v13 = *(v11 + 32);
      if (v13)
      {
        v14 = *(v11 + 24);
        v15 = 8 * v13;
        do
        {
          v16 = *v14++;
          if (v33 <= v17 + 1)
          {
            v12 = v17 + 1;
          }

          else
          {
            v12 = v33;
          }

          v33 = v12;
          v15 -= 8;
        }

        while (v15);
      }

      v18 = v36;
      if (v36 >= HIDWORD(v36))
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::Pattern const*,unsigned int>,true>::growAndEmplaceBack<mlir::Pattern const*&,unsigned int &>(&v35, &v34, &v33);
      }

      else
      {
        v19 = v35 + 16 * v36;
        *v19 = v34;
        *(v19 + 2) = v12;
        LODWORD(v36) = v18 + 1;
      }

      if (v33 >= v10)
      {
        v10 = v10;
      }

      else
      {
        v10 = v33;
      }

      ++v8;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v20 = v36;
  v21 = v35;
  if (v36 != 1)
  {
    if (v36)
    {
      v22 = MEMORY[0x1E69E5398];
      v23 = v36;
      while (1)
      {
        v24 = operator new(16 * v23, v22);
        if (v24)
        {
          break;
        }

        v25 = v23 >> 1;
        v26 = v23 > 1;
        v23 >>= 1;
        if (!v26)
        {
          goto LABEL_27;
        }
      }

      v28 = v24;
      operator delete(v28);
      *(a1 + 8) = 0;
      v21 = v35;
      v27 = v36;
      if (v36)
      {
LABEL_30:
        v29 = 0;
        v30 = 16 * v27;
        do
        {
          v31 = *v21;
          if (v29 >= *(a1 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v29 + 1, 8);
            v29 = *(a1 + 8);
          }

          *(*a1 + 8 * v29) = v31;
          v29 = *(a1 + 8) + 1;
          *(a1 + 8) = v29;
          v21 += 4;
          v30 -= 16;
        }

        while (v30);
        v21 = v35;
      }
    }

    else
    {
      v25 = 0;
LABEL_27:
      *(a1 + 8) = 0;
      v21 = v35;
      v27 = v36;
      if (v36)
      {
        goto LABEL_30;
      }
    }
  }

  if (v21 != v37)
  {
    free(v21);
  }

  return v10;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Pattern const*,unsigned int>,true>::growAndEmplaceBack<mlir::Pattern const*&,unsigned int &>(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void std::__stable_sort<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(_DWORD *result, _DWORD *a2, unint64_t a3, __n128 *a4, int64_t a5, __n128 a6)
{
  if (a3 < 2)
  {
    return;
  }

  if (a3 == 2)
  {
    v6 = *(a2 - 2);
    v7 = *(a2 - 2);
    v8 = *result;
    v9 = result[2];
    if (v7 == v9)
    {
      if (*(v8 + 12) >= *(v6 + 12))
      {
        return;
      }
    }

    else if (v7 >= v9)
    {
      return;
    }

    *result = v6;
    *(a2 - 2) = v8;
    result[2] = v7;
    *(a2 - 2) = v9;
    return;
  }

  if (a3 <= 0)
  {
    if (result == a2)
    {
      return;
    }

    v17 = result + 4;
    if (result + 4 == a2)
    {
      return;
    }

    v18 = 0;
    v19 = result;
    while (1)
    {
      v21 = v19;
      v19 = v17;
      v22 = *(v21 + 2);
      v23 = v21[6];
      v24 = v21[2];
      if (v23 != v24)
      {
        break;
      }

      if (*(*v21 + 12) >= *(v22 + 12))
      {
        goto LABEL_19;
      }

      *(v21 + 2) = *v21;
      v19[2] = v24;
      v20 = result;
      if (v21 != result)
      {
        goto LABEL_26;
      }

LABEL_18:
      *v20 = v22;
      v20[2] = v23;
LABEL_19:
      v17 = v19 + 4;
      v18 += 16;
      if (v19 + 4 == a2)
      {
        return;
      }
    }

    if (v23 >= v24)
    {
      goto LABEL_19;
    }

    *(v21 + 2) = *v21;
    v19[2] = v24;
    v20 = result;
    if (v21 == result)
    {
      goto LABEL_18;
    }

LABEL_26:
    v25 = v18;
    while (1)
    {
      while (1)
      {
        v28 = result + v25;
        v29 = *(result + v25 - 8);
        if (v23 == v29)
        {
          break;
        }

        if (v23 >= v29)
        {
          v20 = (result + v25);
          goto LABEL_18;
        }

        v21 -= 4;
        v30 = result + v25;
        *v30 = *(v28 - 2);
        *(v30 + 2) = v29;
        v25 -= 16;
        if (!v25)
        {
LABEL_32:
          v20 = result;
          goto LABEL_18;
        }
      }

      v26 = *(v28 - 2);
      if (*(v26 + 12) >= *(v22 + 12))
      {
        break;
      }

      v21 -= 4;
      v27 = result + v25;
      *v27 = v26;
      *(v27 + 2) = v29;
      v25 -= 16;
      if (!v25)
      {
        goto LABEL_32;
      }
    }

    v20 = v21;
    goto LABEL_18;
  }

  v11 = a3 >> 1;
  v12 = &result[4 * (a3 >> 1)];
  v13 = a3 - (a3 >> 1);
  v14 = result;
  if (a3 <= a5)
  {
    v32 = a4;
    v34 = &v32[v11];
    v35 = &v32[a3];
    v36 = v34;
    while (v36 != v35)
    {
      v37 = v36->n128_u64[0];
      v38 = v36->n128_u32[2];
      v39 = v32->n128_u64[0];
      v40 = v32->n128_u32[2];
      v41 = v38 >= v40;
      if (v38 == v40)
      {
        v41 = *(v39 + 12) >= *(v37 + 12);
      }

      if (v41)
      {
        *v14 = v39;
        *(v14 + 2) = v40;
        ++v32;
        v14 += 16;
        if (v32 == v34)
        {
LABEL_42:
          if (v36 != v35)
          {
            v42 = 0;
            do
            {
              v43 = &v36[v42];
              v44 = &v14[v42 * 16];
              *v44 = v36[v42].n128_u64[0];
              *(v44 + 2) = v36[v42++].n128_u32[2];
            }

            while (&v43[1] != v35);
          }

          return;
        }
      }

      else
      {
        *v14 = v37;
        *(v14 + 2) = v38;
        ++v36;
        v14 += 16;
        if (v32 == v34)
        {
          goto LABEL_42;
        }
      }
    }

    if (v32 != v34)
    {
      v45 = 0;
      do
      {
        v46 = &v14[v45 * 16];
        v47 = &v32[v45];
        *v46 = v32[v45].n128_u64[0];
        *(v46 + 2) = v32[v45++].n128_u32[2];
      }

      while (&v47[1] != v34);
    }
  }

  else
  {
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(_DWORD *a1, _DWORD *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  switch(a3)
  {
    case 0uLL:
      return a5.n128_f64[0];
    case 2uLL:
      v5 = a2 - 4;
      v6 = *(a2 - 2);
      v7 = a1[2];
      if (v6 == v7)
      {
        if (*(*a1 + 12) >= *(*v5 + 12))
        {
LABEL_7:
          *a4 = *a1;
          a5 = *v5;
LABEL_29:
          a4[1] = a5;
          return a5.n128_f64[0];
        }
      }

      else if (v6 >= v7)
      {
        goto LABEL_7;
      }

      *a4 = *v5;
      a5 = *a1;
      goto LABEL_29;
    case 1uLL:
      a5 = *a1;
      *a4 = *a1;
      return a5.n128_f64[0];
  }

  if (a3 > 8)
  {
    v21 = a3 >> 1;
    v22 = 16 * (a3 >> 1);
    v23 = &a1[v22 / 4];
    v24 = a1;
    v27 = a4;
    v28 = v23;
    while (v28 != a2)
    {
      v30 = v28[2];
      v31 = v24[2];
      v32 = v30 >= v31;
      if (v30 == v31)
      {
        v32 = *(*v24 + 12) >= *(*v28 + 12);
      }

      if (v32)
      {
        v33 = *v24;
        v24 += 4;
        a5.n128_u64[0] = v33.n128_u64[0];
        *v27++ = v33;
        if (v24 == v23)
        {
LABEL_43:
          while (v28 != a2)
          {
            v35 = *v28;
            v28 += 4;
            a5.n128_u64[0] = v35.n128_u64[0];
            *v27++ = v35;
          }

          return a5.n128_f64[0];
        }
      }

      else
      {
        v29 = *v28;
        v28 += 4;
        a5.n128_u64[0] = v29.n128_u64[0];
        *v27++ = v29;
        if (v24 == v23)
        {
          goto LABEL_43;
        }
      }
    }

    while (v24 != v23)
    {
      v34 = *v24;
      v24 += 4;
      a5.n128_u64[0] = v34.n128_u64[0];
      *v27++ = v34;
    }
  }

  else if (a1 != a2)
  {
    a5 = *a1;
    *a4 = *a1;
    v8 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v9 = 0;
      v10 = a4;
      while (1)
      {
        v12 = v8;
        v13 = v10 + 1;
        v14 = a1[6];
        v15 = v10->n128_u32[2];
        if (v14 != v15)
        {
          break;
        }

        if (*(v10->n128_u64[0] + 12) < *(*v12 + 12))
        {
LABEL_19:
          a5 = *v10;
          *v13 = *v10;
          v11 = a4;
          if (v10 == a4)
          {
            goto LABEL_13;
          }

          v16 = v9;
          while (1)
          {
            v18 = a1[6];
            v19 = *(a4[-1].n128_i64 + v16);
            v20 = *(&a4->n128_u32[-2] + v16);
            if (v18 != v20)
            {
              break;
            }

            if (*(v19 + 12) >= *(*v12 + 12))
            {
              v11 = v10;
              goto LABEL_13;
            }

LABEL_22:
            --v10;
            v17 = a4 + v16;
            *v17 = v19;
            *(v17 + 2) = v20;
            v16 -= 16;
            if (!v16)
            {
              v11 = a4;
              goto LABEL_13;
            }
          }

          if (v18 < v20)
          {
            goto LABEL_22;
          }

          v11 = (a4 + v16);
LABEL_13:
          v11->n128_u64[0] = *v12;
          v11->n128_u32[2] = a1[6];
          v8 = v12 + 4;
          v9 += 16;
          v10 = v13;
          a1 = v12;
          if (v12 + 4 == a2)
          {
            return a5.n128_f64[0];
          }
        }

        else
        {
LABEL_16:
          a5 = *v12;
          *v13 = *v12;
          v8 = v12 + 4;
          v9 += 16;
          ++v10;
          a1 = v12;
          if (v12 + 4 == a2)
          {
            return a5.n128_f64[0];
          }
        }
      }

      if (v14 >= v15)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  return a5.n128_f64[0];
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,anonymous namespace::OperationLegalizer::applyCostModelToPatterns(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,unsigned int,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,unsigned int>> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0 &,std::pair<mlir::Pattern const*,unsigned int> *>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

LABEL_2:
  if (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v9 = 0;
    v10 = *a2;
    v11 = *(a2 + 2);
    v12 = -a4;
    while (1)
    {
      v13 = *&result[v9];
      v14 = *&result[v9 + 8];
      if (v11 == v14)
      {
        if (*(v13 + 12) < *(v10 + 12))
        {
          v14 = *(a2 + 2);
LABEL_11:
          v15 = -v12;
          v16 = &result[v9];
          if (-v12 >= a5)
          {
            if (v12 != -1)
            {
              v26 = v15 / 2;
              v22 = &result[16 * (v15 / 2) + v9];
              v18 = 0;
              if (a3 != a2)
              {
                v27 = *(v22 + 2);
                v28 = (a3 - a2) >> 4;
                do
                {
                  v29 = v28 >> 1;
                  v30 = v18 + 16 * (v28 >> 1);
                  v31 = *&a2[v30 + 8];
                  v32 = v31 >= v27;
                  if (v31 == v27)
                  {
                    v32 = *(*v22 + 12) >= *(*&a2[v30] + 12);
                  }

                  if (!v32)
                  {
                    v18 = v30 + 16;
                    v29 = v28 + ~v29;
                  }

                  v28 = v29;
                }

                while (v29);
              }

              v17 = v18 >> 4;
              v33 = &a2[v18];
              v34 = &a2[v18];
              if (v22 != a2)
              {
                goto LABEL_34;
              }

              goto LABEL_51;
            }

            v67 = &result[v9];
            *v67 = v10;
            *a2 = v13;
            *(v67 + 2) = v11;
            *(a2 + 2) = v14;
            return result;
          }

          v17 = a5 / 2;
          v18 = 16 * (a5 / 2);
          if (v16 == a2)
          {
            v22 = &result[v9];
            v26 = 0;
            v33 = &a2[v18];
            v34 = &a2[v18];
            goto LABEL_51;
          }

          v19 = *&a2[v18 + 8];
          v20 = &result[v9];
          v21 = (a2 - result - v9) >> 4;
          v22 = v16;
          while (2)
          {
            v23 = v21 >> 1;
            v24 = &v22[16 * (v21 >> 1)];
            v25 = *(v24 + 2);
            if (v25 != v19)
            {
              if (v25 > v19)
              {
                goto LABEL_15;
              }

LABEL_14:
              v22 = v24 + 16;
              v23 = v21 + ~v23;
              goto LABEL_15;
            }

            if (*(*v24 + 12) >= *(*&a2[v18] + 12))
            {
              goto LABEL_14;
            }

LABEL_15:
            v21 = v23;
            if (v23)
            {
              continue;
            }

            break;
          }

          v26 = (v22 - v20) >> 4;
          v33 = &a2[v18];
          v34 = &a2[v18];
          if (v22 == a2)
          {
            goto LABEL_51;
          }

LABEL_34:
          v34 = v22;
          if (v18)
          {
            v35 = *v22;
            *v22 = v10;
            *a2 = v35;
            v36 = *(v22 + 2);
            *(v22 + 2) = v11;
            *(a2 + 2) = v36;
            v34 = v22 + 16;
            if (v18 != 16)
            {
              v37 = a2 + 16;
              do
              {
                if (v34 == a2)
                {
                  a2 = v37;
                }

                v38 = *v34;
                *v34 = *v37;
                *v37 = v38;
                LODWORD(v38) = *(v34 + 2);
                *(v34 + 2) = *(v37 + 2);
                *(v37 + 2) = v38;
                v34 += 16;
                v37 += 16;
              }

              while (v37 != v33);
            }

            if (v34 != a2)
            {
              v39 = v34;
              v40 = a2;
              while (1)
              {
                v41 = *v39;
                *v39 = *a2;
                *a2 = v41;
                LODWORD(v41) = *(v39 + 2);
                *(v39 + 2) = *(a2 + 2);
                *(a2 + 2) = v41;
                v39 += 16;
                a2 += 16;
                v42 = v39 == v40;
                if (a2 == v33)
                {
                  if (v39 == v40)
                  {
                    goto LABEL_51;
                  }

                  a2 = v40 + 16;
                  while (1)
                  {
                    v43 = *v39;
                    *v39 = *v40;
                    *v40 = v43;
                    LODWORD(v43) = *(v39 + 2);
                    *(v39 + 2) = *(v40 + 2);
                    *(v40 + 2) = v43;
                    v39 += 16;
                    v42 = v39 == v40;
                    if (a2 != v33)
                    {
                      break;
                    }

                    if (v39 == v40)
                    {
                      goto LABEL_51;
                    }
                  }
                }

                if (v42)
                {
                  v40 = a2;
                }
              }
            }

            v34 = a2;
          }

LABEL_51:
          v44 = a5 - v17;
          if (v26 + v17 >= a5 - (v26 + v17) - v12)
          {
            a4 = v26;
            a3 = v34;
            a5 = v17;
            result = v16;
            a2 = v22;
            if (v17)
            {
              goto LABEL_2;
            }

            return result;
          }

          v45 = v16;
          v46 = v22;
          v47 = a3;
          v48 = -v12 - v26;
          a4 = v48;
          a3 = v47;
          a5 = v44;
          result = v34;
          a2 = v33;
          if (!v44)
          {
            return result;
          }

          goto LABEL_2;
        }
      }

      else if (v11 < v14)
      {
        goto LABEL_11;
      }

      v9 += 16;
      v32 = __CFADD__(v12++, 1);
      if (v32)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (result == a2)
    {
      return result;
    }

    v58 = a6;
    v59 = result;
    do
    {
      v60 = *v59;
      v59 += 16;
      *v58 = v60;
      v58 += 2;
    }

    while (v59 != a2);
    v61 = v58 - 2;
    while (a2 != a3)
    {
      v62 = *a2;
      v63 = *(a2 + 2);
      v64 = *a6;
      v65 = *(a6 + 2);
      v66 = v63 >= v65;
      if (v63 == v65)
      {
        v66 = *(v64 + 12) >= *(v62 + 12);
      }

      if (v66)
      {
        *result = v64;
        *(result + 2) = v65;
        a6 += 2;
        result += 16;
        if (v58 == a6)
        {
          return result;
        }
      }

      else
      {
        *result = v62;
        *(result + 2) = v63;
        a2 += 16;
        result += 16;
        if (v58 == a6)
        {
          return result;
        }
      }
    }

    v68 = 0;
    do
    {
      v69 = &result[v68 * 8];
      v70 = &a6[v68];
      *v69 = a6[v68];
      *(v69 + 2) = a6[v68 + 1];
      v68 += 2;
    }

    while (v61 != v70);
  }

  else
  {
    if (a2 == a3)
    {
      return result;
    }

    v49 = 0;
    do
    {
      *&a6[v49] = *&a2[v49 * 8];
      v49 += 2;
    }

    while (&a2[v49 * 8] != a3);
    v50 = a3 - 8;
    v51 = &a6[v49];
    while (a2 != result)
    {
      v52 = a2 - 16;
      v53 = *(a2 - 2);
      v54 = *(a2 - 2);
      v55 = *(v51 - 2);
      v56 = v55 >= v54;
      if (v55 == v54)
      {
        v56 = *(v53 + 12) >= *(*(v51 - 2) + 12);
      }

      if (v56)
      {
        v53 = *(v51 - 2);
        v54 = *(v51 - 2);
        v52 = a2;
        v51 -= 2;
      }

      *(v50 - 1) = v53;
      *v50 = v54;
      v50 -= 16;
      a2 = v52;
      if (v51 == a6)
      {
        return result;
      }
    }

    while (v51 != a6)
    {
      v57 = *(v51 - 2);
      v51 -= 2;
      *(v50 - 1) = v57;
      *v50 = *(v51 + 2);
      v50 -= 16;
    }
  }

  return result;
}

uint64_t llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::OperationLegalizer::computeLegalizationGraphBenefit(llvm::SmallVector<mlir::Pattern const*,1u> &,llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>> &)::$_0>(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 2) == 1)
  {
    v11 = *a2;
    v12 = 1;
    v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>,mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::Pattern const*,1u>>>::operator[](*a1, &v11);
    v4 = *v3;
    v5 = *(v3 + 2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = a1[1];
    v4 = *v8;
    v5 = *(v8 + 8);
    if (v5)
    {
LABEL_3:
      v6 = 8 * v5;
      for (i = v4; *i != a2; ++i)
      {
        v6 -= 8;
        if (!v6)
        {
          return 0xFFFFLL;
        }
      }

      goto LABEL_9;
    }
  }

  i = v4;
LABEL_9:
  v9 = &v4[v5];
  if (i == v9)
  {
    return 0xFFFFLL;
  }

  mlir::PatternBenefit::PatternBenefit(&v11, (v9 - i) >> 3);
  return v11;
}

void sub_1A6E3DFF8()
{
  *(v0 + 24) = &unk_1F1A0B990;
  *(v0 + 64) = &unk_1F1A0BA00;
  llvm::deallocate_buffer(*(v0 + 80), (8 * *(v0 + 96)));
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[9 * v11];
      do
      {
        *v13 = -4096;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[9] = -4096;
      v15 += 18;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -4096;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[9] = -4096;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
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
        v15 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15);
        LODWORD(v15) = -348639895 * ((v16 >> 47) ^ v16);
        v17 = *(a1 + 16) - 1;
        v18 = v17 & v15;
        v19 = (*a1 + 72 * v18);
        v20 = *v19;
        if (v14 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*a1 + 72 * (v25 & v17));
            v20 = *v19;
            if (v14 == *v19)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_14:
        *v19 = v14;
        v19[1] = (v19 + 3);
        v19[2] = 0x600000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=((v19 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v21 = v4[1];
        if (v21 != v4 + 3)
        {
          free(v21);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::remapValues(llvm::StringRef,std::optional<mlir::Location>,mlir::PatternRewriter &,mlir::ValueRange,llvm::SmallVectorImpl<mlir::Value> &)::$_0>(const char **a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 16);
  LODWORD(v43) = 3;
  v44 = "unable to convert type for ";
  v45 = 27;
  v6 = *(a2 + 24);
  v7 = &v43;
  if (v6 >= *(a2 + 28))
  {
    if (v5 <= &v43 && v5 + 24 * v6 > &v43)
    {
      v38 = &v43 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (a2 + 32), v6 + 1, 24);
      v5 = *(a2 + 16);
      v7 = &v38[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (a2 + 32), v6 + 1, 24);
      v5 = *(a2 + 16);
      v7 = &v43;
    }
  }

  v8 = v5 + 24 * *(a2 + 24);
  v9 = *v7;
  *(v8 + 16) = v7[2];
  *v8 = v9;
  ++*(a2 + 24);
  v46 = 261;
  v10 = a1[1];
  v43 = *a1;
  v44 = v10;
  v11 = mlir::Diagnostic::operator<<(a2, &v43);
  v12 = v11;
  v14 = v11 + 16;
  v13 = *(v11 + 16);
  v47 = 3;
  v48 = " #";
  v49 = 2;
  v15 = *(v11 + 24);
  v16 = &v47;
  if (v15 >= *(v11 + 28))
  {
    if (v13 <= &v47 && v13 + 24 * v15 > &v47)
    {
      v39 = &v47 - v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 16, (v11 + 32), v15 + 1, 24);
      v13 = *(v12 + 16);
      v16 = &v39[v13];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 16, (v11 + 32), v15 + 1, 24);
      v13 = *(v12 + 16);
      v16 = &v47;
    }
  }

  v17 = v13 + 24 * *(v12 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v12 + 28);
  v20 = (*(v12 + 24) + 1);
  *(v12 + 24) = v20;
  v21 = a1[2];
  v47 = 5;
  v48 = v21;
  v22 = *(v12 + 16);
  v23 = &v47;
  if (v20 >= v19)
  {
    if (v22 <= &v47 && v22 + 24 * v20 > &v47)
    {
      v40 = &v47 - v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 32), v20 + 1, 24);
      v22 = *(v12 + 16);
      v23 = &v40[v22];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 32), v20 + 1, 24);
      v22 = *(v12 + 16);
      v23 = &v47;
    }
  }

  v24 = v22 + 24 * *(v12 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  v26 = *(v12 + 28);
  v27 = (*(v12 + 24) + 1);
  *(v12 + 24) = v27;
  v47 = 3;
  v48 = ", type was ";
  v49 = 11;
  v28 = *(v12 + 16);
  v29 = &v47;
  if (v27 >= v26)
  {
    if (v28 <= &v47 && v28 + 24 * v27 > &v47)
    {
      v41 = &v47 - v28;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 32), v27 + 1, 24);
      v28 = *(v12 + 16);
      v29 = &v41[v28];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 32), v27 + 1, 24);
      v28 = *(v12 + 16);
      v29 = &v47;
    }
  }

  v30 = v28 + 24 * *(v12 + 24);
  v31 = *v29;
  *(v30 + 16) = *(v29 + 2);
  *v30 = v31;
  ++*(v12 + 24);
  v32 = a1[4];
  v33 = &v47;
  mlir::DiagnosticArgument::DiagnosticArgument(&v47, v32);
  v34 = *(v12 + 24);
  v35 = *(v12 + 16);
  if (v34 >= *(v12 + 28))
  {
    if (v35 <= &v47 && v35 + 24 * v34 > &v47)
    {
      v42 = &v47 - v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 32), v34 + 1, 24);
      v35 = *(v12 + 16);
      v33 = &v42[v35];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v12 + 32), v34 + 1, 24);
      v35 = *(v12 + 16);
      v33 = &v47;
    }
  }

  v36 = (v35 + 24 * *(v12 + 24));
  result = *v33;
  v36[1].n128_u64[0] = v33[1].n128_u64[0];
  *v36 = result;
  ++*(v12 + 24);
  return result;
}

void anonymous namespace::InlineBlockRewrite::rollback(_anonymous_namespace_::InlineBlockRewrite *this)
{
  if (*(this + 5))
  {
    v2 = *(this + 3);
    v1 = *(this + 4);
    v3 = *(v1 + 40);
    ZinIrHalH13g::~ZinIrHalH13g(*(this + 5));
    v6 = v5;
    ZinIrHalH13g::~ZinIrHalH13g(*(this + 6));
    v8 = *(v7 + 8);
    if (v6 != v8 && v3 != v8)
    {
      llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v1 + 32, v2 + 32, v6, v8);
      v10 = *v8;
      v11 = *v6;
      *(v11 + 8) = v8;
      *v8 = v11;
      v12 = *v3;
      *(v10 + 8) = v3;
      *v6 = v12;
      *(v12 + 8) = v6;
      *v3 = v10;
    }
  }
}

uint64_t anonymous namespace::ReplaceBlockArgRewrite::rollback(uint64_t this)
{
  v1 = *(this + 16);
  v2 = v1[15].i32[0];
  if (v2)
  {
    v3 = *(this + 32);
    v4 = v1[13];
    v5 = 0x9DDFEA08EB382D69 * ((8 * v3 - 0xAE502812AA7333) ^ HIDWORD(v3));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ (v5 >> 47) ^ v5);
    LODWORD(v5) = -348639895 * ((v6 >> 47) ^ v6);
    v7 = v2 - 1;
    v8 = v5 & (v2 - 1);
    v9 = *(*&v4 + 16 * v8);
    if (v9 == v3)
    {
LABEL_3:
      *(*&v4 + 16 * v8) = -8192;
      v1[14] = vadd_s32(v1[14], 0x1FFFFFFFFLL);
    }

    else
    {
      v10 = 1;
      while (v9 != -4096)
      {
        v11 = v8 + v10++;
        v8 = v11 & v7;
        v9 = *(*&v4 + 16 * v8);
        if (v9 == v3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return this;
}

uint64_t *anonymous namespace::ReplaceBlockArgRewrite::commit(_anonymous_namespace_::ReplaceBlockArgRewrite *this, mlir::RewriterBase *a2)
{
  v4 = *(this + 4);
  v5 = v4[1] & 0xFFFFFFFFFFFFFFF8;
  if (result == v4)
  {
    return result;
  }

  v7 = result;
  if (v5)
  {
    if ((result[1] & 0xFFFFFFFFFFFFFFF8) != v5 || result == 0)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  if ((~*(result + 2) & 7) != 0)
  {
    Owner = mlir::detail::OpResultImpl::getOwner(result);
    v18 = *(Owner + 16);
    v19 = Owner;
    v16 = *(this + 4);
    v17[0] = &v18;
    v17[1] = &v19;
  }

  else
  {
    v9 = *v4;
    if (*v4)
    {
      do
      {
        v10 = *v9;
        v11 = v9[2];
        (*(*a2 + 40))(a2, v11);
        v12 = v9[1];
        if (v12)
        {
          v13 = *v9;
          *v12 = *v9;
          if (v13)
          {
            v13[1] = v12;
          }
        }

        v9[3] = v7;
        v14 = *v7;
        *v9 = *v7;
        v9[1] = v7;
        if (v14)
        {
          *(v14 + 8) = v9;
        }

        *v7 = v9;
        result = (*(*a2 + 48))(a2, v11);
        v9 = v10;
      }

      while (v10);
    }
  }

  return result;
}

void anonymous namespace::BlockTypeConversionRewrite::rollback(_anonymous_namespace_::BlockTypeConversionRewrite *this)
{
  v1 = *(this + 3);
  for (i = *v1; *v1; i = *v1)
  {
    v4 = *(this + 4);
    v5 = i[1];
    if (v5)
    {
      v6 = *i;
      *v5 = *i;
      if (v6)
      {
        *(v6 + 8) = v5;
      }
    }

    i[3] = v4;
    ZinIrHalH13g::~ZinIrHalH13g(v4);
    v8 = *v7;
    *i = *v7;
    i[1] = v7;
    if (v8)
    {
      *(v8 + 8) = i;
    }

    *v7 = i;
  }
}

uint64_t anonymous namespace::BlockTypeConversionRewrite::commit(uint64_t this, mlir::RewriterBase *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = this;
    this = instruction::util::IsTasklet(*(a2 + 2));
    if (this)
    {
      for (i = **(v3 + 24); i; i = *i)
      {
        this = (*(*v2 + 40))(v2, i[2]);
      }
    }
  }

  return this;
}

void anonymous namespace::CreateOperationRewrite::rollback(_anonymous_namespace_::CreateOperationRewrite *this, unsigned int a2)
{
  v3 = *(this + 3);
  v4 = v3[11];
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((&v3[4 * ((v4 >> 23) & 1) + 17] + ((v4 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v3[10]);
    v6 = &v5[3 * (v4 & 0x7FFFFF)];
    do
    {
      while (*v5 != v5)
      {
        v7 = v5[1];
        if (v7)
        {
          v8 = v7 - 8;
        }

        else
        {
          v8 = 0;
        }

        llvm::ilist_traits<mlir::Block>::removeNodeFromList(v5, v8);
        v9 = *(v8 + 8);
        v10 = *(v8 + 16);
        *v10 = v9;
        *(v9 + 8) = v10;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
      }

      v5 += 3;
    }

    while (v5 != v6);
    v3 = *(this + 3);
  }

  v11 = v3[9];
  if (v11)
  {
    v12 = (v3 - 4);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, i);
      while (1)
      {
        v15 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v16 = v15[1];
        if (v16)
        {
          v17 = *v15;
          *v16 = *v15;
          if (v17)
          {
            *(v17 + 8) = v16;
          }
        }

        *v15 = 0;
        v15[1] = 0;
        v15[3] = 0;
      }
    }

    v3 = *(this + 3);
  }

  mlir::Operation::erase(v3, a2);
}

uint64_t anonymous namespace::CreateOperationRewrite::commit(_anonymous_namespace_::CreateOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), 0, 0);
  }

  return result;
}

void anonymous namespace::MoveOperationRewrite::rollback(_anonymous_namespace_::MoveOperationRewrite *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    ZinIrHalH13g::~ZinIrHalH13g(v2);
    v4 = v3;
    v5 = *(this + 4);
  }

  else
  {
    v5 = *(this + 4);
    v4 = (v5 + 32);
  }

  v6 = *(this + 3);
  v7 = *(v6 + 2);
  ZinIrHalH13g::~ZinIrHalH13g(v6);
  v9 = *(v8 + 8);
  if (v8 != v4 && v9 != v4)
  {
    v11 = v8;
    llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v5 + 32, v7 + 32, v8, v9);
    if (v9 != v11)
    {
      v12 = *v9;
      v13 = *v11;
      *(v13 + 8) = v9;
      *v9 = v13;
      v14 = *v4;
      *(v12 + 8) = v4;
      *v11 = v14;
      *(v14 + 8) = v11;
      *v4 = v12;
    }
  }
}

uint64_t anonymous namespace::MoveOperationRewrite::commit(_anonymous_namespace_::MoveOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

unint64_t anonymous namespace::ReplaceOperationRewrite::rollback(unint64_t this)
{
  v1 = *(this + 24);
  v2 = *(v1 + 36);
  v3 = v1 - 16;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = this;
    for (i = 0; i != v2; ++i)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
      v11 = *(v5 + 16);
      v12 = v11[15].i32[0];
      if (v12)
      {
        v13 = v11[13];
        v14 = 0x9DDFEA08EB382D69 * ((8 * this - 0xAE502812AA7333) ^ HIDWORD(this));
        v15 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v14 >> 47) ^ v14);
        LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
        v16 = v12 - 1;
        v9 = v14 & (v12 - 1);
        v10 = *(*&v13 + 16 * v9);
        if (v10 == this)
        {
LABEL_8:
          *(*&v13 + 16 * v9) = -8192;
          v11[14] = vadd_s32(v11[14], 0x1FFFFFFFFLL);
        }

        else
        {
          v8 = 1;
          while (v10 != -4096)
          {
            v7 = v9 + v8++;
            v9 = v7 & v16;
            v10 = *(*&v13 + 16 * v9);
            if (v10 == this)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

  return this;
}

void anonymous namespace::ReplaceOperationRewrite::commit(_anonymous_namespace_::ReplaceOperationRewrite *this, mlir::RewriterBase *a2)
{
  v50[6] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 2);
  if (v4)
  {
    if (instruction::util::IsTasklet(*(a2 + 2)))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 3);
  v7 = *(v6 + 36);
  if (v7)
  {
    v8 = v6 - 16;
  }

  else
  {
    v8 = 0;
  }

  v48 = v50;
  v49 = 0x600000000;
  v46 = v5;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v50, v7, 8);
    v9 = v49;
    v10 = v48;
LABEL_13:
    v11 = 0;
    v12 = &v10[v9];
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v11);
      v15 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v13 == NextResultAtOffset || v15 && (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) != v15)
      {
        v13 = 0;
      }

      v12[v11++] = v13;
    }

    while (v7 != v11);
    v5 = v46;
    v6 = *(this + 3);
    v16 = (v49 + v7);
    LODWORD(v49) = v49 + v7;
    if (v46)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v7)
  {
    v9 = 0;
    v10 = v50;
    goto LABEL_13;
  }

  v16 = 0;
  LODWORD(v49) = 0;
  if (v5)
  {
LABEL_21:
    mlir::ValueRange::ValueRange(v47, v48, v16);
    (*(*v5 + 56))(v5, v6, v47[0], v47[1]);
    v6 = *(this + 3);
  }

LABEL_22:
  v17 = *(v6 + 36);
  if (v17)
  {
    v18 = v6 - 16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = 0;
    v20 = v48;
    do
    {
      v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v19);
      v22 = *v20;
      if (*v20)
      {
        v23 = *v21;
        if (*v21)
        {
          do
          {
            v24 = *v23;
            v25 = v23[2];
            (*(*a2 + 40))(a2, v25);
            v26 = v23[1];
            if (v26)
            {
              v27 = *v23;
              *v26 = *v23;
              if (v27)
              {
                v27[1] = v26;
              }
            }

            v23[3] = v22;
            v23[1] = v22;
            v28 = *v22;
            *v23 = *v22;
            if (v28)
            {
              *(v28 + 8) = v23;
            }

            *v22 = v23;
            (*(*a2 + 48))(a2, v25);
            v23 = v24;
          }

          while (v24);
        }
      }

      ++v19;
      ++v20;
    }

    while (v19 != v17);
  }

  v29 = *(*(*(this + 2) + 376) + 16);
  if (v29)
  {
    v30 = v29[2].i32[0];
    if (v30)
    {
      v31 = *v29;
      v32 = *(this + 3);
      v33 = v30 - 1;
      v34 = ((v32 >> 4) ^ (v32 >> 9)) & (v30 - 1);
      v35 = *(*v29 + 8 * v34);
      if (v32 == v35)
      {
LABEL_40:
        *(*&v31 + 8 * v34) = -8192;
        v29[1] = vadd_s32(v29[1], 0x1FFFFFFFFLL);
      }

      else
      {
        v44 = 1;
        while (v35 != -4096)
        {
          v45 = v34 + v44++;
          v34 = v45 & v33;
          v35 = *(*&v31 + 8 * v34);
          if (v32 == v35)
          {
            goto LABEL_40;
          }
        }
      }
    }
  }

  v36 = *(this + 3);
  if (v46)
  {
    v47[0] = &v46;
    v36 = *(this + 3);
  }

  v37 = *(v36 + 2);
  ZinIrHalH13g::~ZinIrHalH13g(v36);
  ZinIrHalH13g::~ZinIrHalH13g(v38);
  v40 = v39;
  llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v37 + 32, v39);
  ZinIrHalH13g::~ZinIrHalH13g(v40);
  v42 = *v41;
  v43 = v41[1];
  *v43 = *v41;
  *(v42 + 8) = v43;
  *v41 = 0;
  v41[1] = 0;
  if (v48 != v50)
  {
    free(v48);
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(mlir::Operation *,mlir::ValueRange)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 280), &v5, v6);
  if (v6[16] == 1)
  {
    v3 = v5;
    v4 = *(v2 + 312);
    if (v4 >= *(v2 + 316))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 304, (v2 + 320), v4 + 1, 8);
      LODWORD(v4) = *(v2 + 312);
    }

    *(*(v2 + 304) + 8 * v4) = v3;
    ++*(v2 + 312);
  }
}

void anonymous namespace::EraseBlockRewrite::~EraseBlockRewrite(_anonymous_namespace_::EraseBlockRewrite *this)
{
  *this = &unk_1F1A0BD30;
}

{
  *this = &unk_1F1A0BD30;
  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::EraseBlockRewrite::rollback(_anonymous_namespace_::EraseBlockRewrite *this)
{
  v4 = this + 32;
  v2 = *(this + 4);
  v3 = *(v4 + 1);
  v5 = *(this + 3);
  if (v3)
  {
    v6 = (v3 + 8);
  }

  else
  {
    v6 = v2;
  }

  result = llvm::ilist_traits<mlir::Block>::addNodeToList(v2, *(this + 3));
  v8 = *v6;
  *(v5 + 8) = *v6;
  *(v5 + 16) = v6;
  v9 = v5 + 8;
  *(v8 + 8) = v9;
  *v6 = v9;
  *(this + 3) = 0;
  return result;
}

uint64_t anonymous namespace::EraseBlockRewrite::commit(uint64_t this, mlir::RewriterBase *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = this;
    this = instruction::util::IsTasklet(*(a2 + 2));
    if (this)
    {
      v4 = *(v3 + 24);
      v5 = *(*v2 + 32);

      return v5(v2, v4);
    }
  }

  return this;
}

ZinIrHalH13g **anonymous namespace::EraseBlockRewrite::cleanup(uint64_t ***this, mlir::RewriterBase *a2)
{
  mlir::Block::dropAllDefinedValueUses(this[3]);
  result = this[3];
  if (result)
  {
    mlir::Block::~Block(result);
    result = MEMORY[0x1AC55A070]();
  }

  this[3] = 0;
  return result;
}

void anonymous namespace::CreateBlockRewrite::rollback(_anonymous_namespace_::CreateBlockRewrite *this)
{
  v2 = *(this + 3);
  v3 = v2 + 32;
  if (*(v2 + 32) != v2 + 32)
  {
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(*(v2 + 40));
      v5 = v4;
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v3, v4);
      ZinIrHalH13g::~ZinIrHalH13g(v5);
      v7 = *v6;
      v8 = v6[1];
      *v8 = *v6;
      *(v7 + 8) = v8;
      *v6 = 0;
      v6[1] = 0;
    }

    while (*(v2 + 32) != v3);
    v2 = *(this + 3);
  }

  v9 = *v2;
  if (*v2)
  {
    do
    {
      v12 = v9[1];
      if (v12)
      {
        v13 = *v9;
        *v12 = *v9;
        if (v13)
        {
          *(v13 + 8) = v12;
        }
      }

      *v9 = 0;
      v9[1] = 0;
      v9[3] = 0;
      v9 = *v2;
    }

    while (*v2);
    Parent = mlir::Block::getParent(*(this + 3));
    v11 = *(this + 3);
    if (Parent)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = mlir::Block::getParent(v2);
    v11 = *(this + 3);
    if (v10)
    {
LABEL_6:

      mlir::Block::erase(v11);
      return;
    }
  }

  if (v11)
  {
    mlir::Block::~Block(v11);

    JUMPOUT(0x1AC55A070);
  }
}

uint64_t anonymous namespace::CreateBlockRewrite::commit(_anonymous_namespace_::CreateBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), 0, 0);
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::rollback(_anonymous_namespace_::MoveBlockRewrite *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = (v2 + 8);
    v4 = *(this + 4);
  }

  else
  {
    v4 = *(this + 4);
    v3 = v4;
  }

  result = mlir::Block::getParent(*(this + 3));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7[1];
  if (v7 != v3 && v8 != v3)
  {
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(v4, result, v7, v7[1]);
    if (v8 != v7)
    {
      v10 = *v8;
      v11 = *v7;
      *(v11 + 8) = v8;
      *v8 = v11;
      v12 = *v3;
      *(v10 + 8) = v3;
      *v7 = v12;
      *(v12 + 8) = v7;
      *v3 = v10;
    }
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::commit(_anonymous_namespace_::MoveBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

void anonymous namespace::ModifyOperationRewrite::~ModifyOperationRewrite(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  *this = &unk_1F1A0BE20;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3 != this + 72)
  {
    free(v3);
  }
}

{
  *this = &unk_1F1A0BE20;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3 != this + 72)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::ModifyOperationRewrite::rollback(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(this + 3) + 24) = *(this + 5);
  mlir::Operation::setAttrs(*(this + 3), *(this + 6));
  v2 = *(this + 3);
  mlir::ValueRange::ValueRange(&v8, *(this + 7), *(this + 16));
  mlir::Operation::setOperands(v2, v8, v9);
  v3 = *(this + 36);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 17);
    v6 = 8 * v3;
    do
    {
      mlir::Operation::setSuccessor(*(this + 3), *(v5 + 8 * v4), v4);
      ++v4;
      v6 -= 8;
    }

    while (v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    mlir::Operation::copyProperties(*(this + 3), *(this + 21));
    (*(**(this + 4) + 128))(*(this + 4), v7);
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

void anonymous namespace::ModifyOperationRewrite::commit(_anonymous_namespace_::ModifyOperationRewrite *this, mlir::RewriterBase *a2)
{
  v3 = *(a2 + 2);
  if (v3 && instruction::util::IsTasklet(*(a2 + 2)))
  {
    (*(*v3 + 40))(v3, *(this + 3));
  }

  if (*(this + 21))
  {
    (*(**(this + 4) + 128))(*(this + 4));
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

uint64_t mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v9)
  {
    goto LABEL_77;
  }

  v10 = Iterable;
  v11 = (Iterable + 24 * v9);
  do
  {
    mlir::ForwardDominanceIterator<false>::makeIterable(v10, &v62);
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v54, &v58, &v62);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    if (v65 != v64)
    {
      if (((v65 - v64) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_84;
    }

    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v48, &v50, &v66);
    __p = 0;
    v52 = 0;
    v53 = 0;
    if (v69 != v68)
    {
      if (((v69 - v68) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_84:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v12 = 0;
    v13 = v59;
    v14 = v60;
    if (v60 != v59)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (v13 != v14)
    {
      v15 = v12 + 16;
      v16 = (v13 + 2);
      do
      {
        v17 = v16 - 16;
        if (*(v16 - 2) != *(v15 - 2))
        {
          goto LABEL_21;
        }

        v18 = v16[8];
        v19 = v15[8];
        if (v18 != v19 || v18 == 0)
        {
          if (v18 != v19)
          {
            goto LABEL_21;
          }
        }

        else if (*v16 != *v15)
        {
LABEL_21:
          while (2)
          {
            v21 = *(v14 - 4);
            v22 = *(v21 + 40);
            v23 = (v21 + 32);
            while (v22 != v23)
            {
              v24 = *(v22 + 1);
              ZinIrHalH13g::~ZinIrHalH13g(v22);
              v26 = mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(v25, a2, a3, a4);
              v22 = v24;
              if (!v26)
              {
                v46 = 0;
                v12 = __p;
                if (__p)
                {
                  goto LABEL_57;
                }

                goto LABEL_58;
              }
            }

            v14 = v60;
LABEL_27:
            v27 = *(v14 - 4);
            if ((*(v14 - 1) & 1) == 0)
            {
              mlir::SuccessorRange::SuccessorRange(v70, *(v14 - 4));
              *(v14 - 3) = v70[0];
              *(v14 - 2) = 0;
              *(v14 - 8) = 1;
            }

            while (1)
            {
              mlir::SuccessorRange::SuccessorRange(v70, v27);
              v29 = *(v14 - 2);
              if (v29 == v70[1])
              {
                v14 = v60 - 4;
                v60 = v14;
                if (v59 == v14)
                {
                  goto LABEL_54;
                }

                goto LABEL_27;
              }

              v30 = *(v14 - 3);
              *(v14 - 2) = (v29 + 1);
              v31 = *(v30 + 32 * v29 + 24);
              if (v55 == v54)
              {
                v32 = v57;
                if (v57)
                {
                  v33 = 8 * v57;
                  v34 = v54;
                  while (*v34 != v31)
                  {
                    ++v34;
                    v33 -= 8;
                    if (!v33)
                    {
                      goto LABEL_29;
                    }
                  }

                  continue;
                }

LABEL_29:
                if (v57 < v56)
                {
                  break;
                }
              }

              llvm::SmallPtrSetImplBase::insert_imp_big(&v54, v31);
              if (v28)
              {
                goto LABEL_39;
              }
            }

            ++v57;
            v54[v32] = v31;
LABEL_39:
            v35 = v60;
            if (v60 < v61)
            {
              *v60 = v31;
              *(v35 + 8) = 0;
              v14 = v35 + 4;
              *(v35 + 24) = 0;
              goto LABEL_53;
            }

            v36 = v59;
            v37 = v60 - v59;
            v38 = (v60 - v59) >> 5;
            v39 = v38 + 1;
            if ((v38 + 1) >> 59)
            {
              goto LABEL_84;
            }

            v40 = v11;
            v41 = v61 - v59;
            if ((v61 - v59) >> 4 > v39)
            {
              v39 = v41 >> 4;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFE0)
            {
              v42 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v39;
            }

            if (v42)
            {
              if (!(v42 >> 59))
              {
                operator new();
              }

              std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
            }

            v43 = (v60 - v59) >> 5;
            v44 = 32 * v38;
            *v44 = v31;
            *(v44 + 8) = 0;
            *(v44 + 24) = 0;
            v14 = (32 * v38 + 32);
            v45 = (v44 - 32 * v43);
            memcpy(v45, v36, v37);
            v59 = v45;
            v60 = v14;
            v61 = 0;
            if (v36)
            {
              operator delete(v36);
            }

            v11 = v40;
LABEL_53:
            v60 = v14;
LABEL_54:
            v12 = __p;
            v13 = v59;
            if (v14 - v59 != v52 - __p)
            {
              continue;
            }

            goto LABEL_11;
          }
        }

        v15 += 32;
        v16 += 32;
      }

      while (v17 + 32 != v14);
    }

    v46 = 1;
    if (v12)
    {
LABEL_57:
      v52 = v12;
      operator delete(v12);
    }

LABEL_58:
    if (v49 != v48)
    {
      free(v49);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v55 != v54)
    {
      free(v55);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v67 != v66)
    {
      free(v67);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (v63 != v62)
    {
      free(v63);
    }

    if ((v46 & 1) == 0)
    {
      return 0;
    }

    v10 += 3;
  }

  while (v10 != v11);
LABEL_77:
  if (a4 == 1)
  {
    return (a2)(a3, a1);
  }

  return 1;
}

void mlir::ForwardDominanceIterator<false>::makeIterable(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 != a1)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = v3 - 8;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    llvm::depth_first<mlir::Block *>(&v5);
  }

  v18 = 0;
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v14 = &v17[8];
  v15 = &v17[8];
  v16 = 8;
  v20 = 0;
  v21 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = v9 + 8;
  v7 = v9 + 8;
  v8 = 8;
  v10 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  llvm::make_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v14, &v6, &v22);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v7 != v6)
  {
    free(v7);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  llvm::make_pointee_range<llvm::iterator_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>> &,llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v22, a2);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v27 != v26)
  {
    free(v27);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v23 != v22)
  {
    free(v23);
  }
}

void llvm::make_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v11, &v13, 8, a1);
  __p = *(a1 + 96);
  v15 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v6, &v8, 8, a2);
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v11);
  *(a3 + 96) = __p;
  *(a3 + 112) = v15;
  v15 = 0;
  __p = 0uLL;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3 + 120, (a3 + 152), 8, &v6);
  *(a3 + 216) = v9;
  *(a3 + 232) = v10;
  v10 = 0;
  v9 = 0uLL;
  if (v7 != v6)
  {
    free(v7);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

void llvm::depth_first<mlir::Block *>(uint64_t *a1)
{
  v2 = *a1;
  v3 = v7;
  v4 = v7;
  v6 = 0;
  v8 = 0u;
  v5 = 0x100000008;
  v7[8] = 0;
  v7[0] = v2;
  operator new();
}

void llvm::make_pointee_range<llvm::iterator_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>> &,llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(llvm::SmallPtrSetImplBase *a1@<X0>, uint64_t a2@<X8>)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v18, &v20, a1);
  v21 = 0uLL;
  v22 = 0;
  v5 = *(a1 + 12);
  v4 = *(a1 + 13);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_28;
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, v30, 8, &v18);
  v31 = v21;
  v32 = v22;
  v22 = 0;
  v21 = 0uLL;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v23, &v25, 8, &v28);
  v26 = v31;
  v27 = v32;
  v32 = 0;
  v31 = 0uLL;
  if (v29 != v28)
  {
    free(v29);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, (a1 + 120));
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v7 = *(a1 + 27);
  v6 = *(a1 + 28);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_28:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, v30, 8, &v8);
  v31 = *v11;
  v32 = v12;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v13, &v15, 8, &v28);
  __p = v31;
  v17 = v32;
  v32 = 0;
  v31 = 0uLL;
  if (v29 != v28)
  {
    free(v29);
  }

  llvm::make_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v23, &v13, a2);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v14 != v13)
  {
    free(v14);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }

  if (v24 != v23)
  {
    free(v24);
  }

  if (v21)
  {
    *(&v21 + 1) = v21;
    operator delete(v21);
  }

  if (v19 != v18)
  {
    free(v19);
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>(mlir::ConversionTarget **a1, mlir::Operation *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  if (v3 >= *(*a1 + 3))
  {
    v6 = a2;
    v7 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(*a1, v2 + 16, v3 + 1, 8);
    a1 = v7;
    a2 = v6;
    LODWORD(v3) = *(v2 + 2);
  }

  *(*v2 + 8 * v3) = a2;
  ++*(v2 + 2);
  isLegal = mlir::ConversionTarget::isLegal(a1[1], a2);
  if (isLegal & 0x100) != 0 && (isLegal)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::InsertIntoBucket<mlir::Type const&,llvm::SmallVector<mlir::Type,2u>>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v8 = a3;
    v9 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      *(a1 + 2) = v5 + 1;
      if (*v4 == -4096)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = a3;
    v9 = a4;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(v10, v8, &v12);
  a1 = v10;
  a3 = v8;
  v11 = *(v10 + 2);
  v4 = v12;
  a4 = v9;
  *(a1 + 2) = v11 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = 0x200000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v4 + 1), a4);
  }

  return v4;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

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

uint64_t _ZNSt3__18__all_ofB8nn200100IN4llvm15concat_iteratorIKN4mlir4TypeEJPS5_S6_EEES7_NS_10__identityEZNKS3_13TypeConverter7isLegalINS1_6detail12concat_rangeIS5_JNS1_8ArrayRefIS4_EESE_EEEEENS_9enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISH_PNS3_9OperationEEE5valueEbE4typeEOSH_EUlS4_E_EEbSH_T0_RT2_RT1_(uint64_t *a1, void *a2, uint64_t *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  while (v6 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    v9 = &unk_1F1A0BE68;
    do
    {
      while (1)
      {
        v11 = *(v9 - 1);
        v12 = (a1 + (*v9 >> 1));
        if (*v9)
        {
          break;
        }

        v9 += 2;
        v10 = v11(v12);
        if (v10)
        {
          goto LABEL_16;
        }
      }

      v9 += 2;
      v10 = (*(*v12 + v11))();
    }

    while (!v10);
LABEL_16:
    v13 = *v10;
    v14 = *a3;
    v18 = v20;
    v19 = 0x100000000;
    v15 = 0;
    if (mlir::TypeConverter::convertType(v14, v13, &v18) && v19 == 1)
    {
      v15 = *v18;
    }

    if (v18 != v20)
    {
      free(v18);
    }

    if (v15 != v13)
    {
      return 0;
    }

    v6 = *a1;
    if (*a1 == a1[2])
    {
      v16 = a1[1];
      if (v16 != a1[3])
      {
        a1[1] = v16 + 8;
      }
    }

    else
    {
      v6 += 8;
      *a1 = v6;
    }
  }

  return 1;
}

void anonymous namespace::FunctionOpInterfaceSignatureConversion::~FunctionOpInterfaceSignatureConversion(_anonymous_namespace_::FunctionOpInterfaceSignatureConversion *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::FunctionOpInterfaceSignatureConversion::matchAndRewrite(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v8 = *(a1 + 96);

  return convertFuncOpTypes(v6, InterfaceFor, v8, a5);
}

uint64_t convertFuncOpTypes(uint64_t a1, uint64_t a2, mlir::TypeConverter *a3, void *a4)
{
  v49[4] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v37 = a2;
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v36);
  if (*(*FunctionType + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v7 = FunctionType;
  }

  else
  {
    v7 = 0;
  }

  v35 = v7;
  if (!v7)
  {
    return 0;
  }

  Value = mlir::arith::FastMathFlagsAttr::getValue(&v35);
  v44 = v46;
  v45 = 0x400000000;
  if (Value)
  {
    v9 = Value;
    if (Value < 5)
    {
      v11 = 0;
      v12 = v46;
    }

    else
    {
      v10 = Value;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, Value, 32);
      Value = v10;
      v11 = v45;
      v12 = v44;
      if (v45 == v9)
      {
LABEL_17:
        LODWORD(v45) = Value;
        goto LABEL_18;
      }
    }

    v14 = 32 * v11;
    v15 = &v12[32 * v11];
    v16 = 32 * v9 - 32 - v14;
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = (v16 >> 5) + 1;
    v15 += 32 * (v17 & 0xFFFFFFFFFFFFFFELL);
    v18 = &v12[v14 + 32];
    v19 = v17 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v18 - 32) = 0;
      *v18 = 0;
      *(v18 - 8) = 0;
      v18[24] = 0;
      v18 += 64;
      v19 -= 2;
    }

    while (v19);
    if (v17 != (v17 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_15:
      v20 = &v12[32 * v9];
      do
      {
        *v15 = 0;
        v15[24] = 0;
        v15 += 32;
      }

      while (v15 != v20);
    }

    goto LABEL_17;
  }

LABEL_18:
  v47 = v49;
  v48 = 0x400000000;
  v41 = &v43;
  v42 = 0x100000000;
  Inputs = mlir::FunctionType::getInputs(&v35);
  mlir::ValueRange::ValueRange(&v39, Inputs, v22);
  if (mlir::TypeConverter::convertSignatureArgs(a3, v39, v40, &v44, 0))
  {
    Results = mlir::FunctionType::getResults(&v35);
    mlir::ValueRange::ValueRange(&v39, Results, v24);
    v25 = v40;
    if (v40)
    {
      v26 = 0;
      v27 = v39;
      while (1)
      {
        v28 = mlir::TypeRange::dereference_iterator(v27, v26);
        if (!mlir::TypeConverter::convertType(a3, v28, &v41))
        {
          break;
        }

        if (v25 == ++v26)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(a4[5], a4, (((v36 + 16 * ((*(v36 + 44) >> 23) & 1) + ((*(v36 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v36 + 40)), a3, &v44);
      if (v29)
      {
        v30 = a4[1];
        mlir::ValueRange::ValueRange(&v39, v47, v48);
        mlir::ValueRange::ValueRange(v38, v41, v42);
        v31 = mlir::FunctionType::get(v30, v39, v40, v38[0], v38[1]);
        v32 = v36;
        (*(*a4 + 40))(a4, v36);
        mlir::function_interface_impl::setFunctionType(v36, v37, v31);
        (*(*a4 + 48))(a4, v32);
        v13 = 1;
        v33 = v41;
        if (v41 == &v43)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }
  }

  v13 = 0;
  v33 = v41;
  if (v41 != &v43)
  {
LABEL_27:
    free(v33);
  }

LABEL_28:
  if (v47 != v49)
  {
    free(v47);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v13;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::OperationName,mlir::ConversionTarget::LegalizationInfo>,false>::grow(uint64_t *a1, unint64_t a2)
{
  v18 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 48, &v18);
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = (v4 + 40);
    v8 = 48 * v6;
    v9 = (v5 + 5);
    do
    {
      *(v7 - 5) = *(v9 - 5);
      v10 = *(v9 - 8);
      *(v7 - 28) = *(v9 - 28);
      *(v7 - 8) = v10;
      v11 = *v9;
      if (*v9)
      {
        if (v9 - 24 == v11)
        {
          *v7 = (v7 - 3);
          (*(**v9 + 24))();
        }

        else
        {
          *v7 = v11;
          *v9 = 0;
        }
      }

      else
      {
        *v7 = 0;
      }

      v7 += 6;
      v9 += 48;
      v8 -= 48;
    }

    while (v8);
    v5 = *a1;
    v12 = *(a1 + 2);
    if (v12)
    {
      v13 = &v5[6 * v12 - 4];
      v14 = -48 * v12;
      v15 = v13;
      do
      {
        v16 = *(v15 + 24);
        if (v15 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 48;
        v13 -= 48;
        v14 += 48;
      }

      while (v14);
      v5 = *a1;
    }
  }

  v17 = v18;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 3) = v17;
}

uint64_t *llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[4] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t std::__function::__value_func<std::optional<BOOL> ()(mlir::Operation *)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

int32x2_t mlir::OperationFolder::notifyRemoval(int32x2_t *this, mlir::Block **a2)
{
  v2 = this[4];
  v3 = this[6].u32[0];
  if (v3)
  {
    v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *&v2 + 40 * v4;
    v6 = *v5;
    if (*v5 == a2)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = *&v2 + 40 * v4;
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = *&v2 + 40 * v3;
LABEL_8:
  if (v5 != *&v2 + 40 * v3)
  {
    v22 = 0;
    v21[0] = &v22;
    mlir::detail::constant_op_binder<mlir::Attribute>::match(v21, a2);
    v11 = a2;
    v21[0] = getInsertionRegion(&this[7], a2[2]);
    v12 = this;
    v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&this[1], v21);
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    if (v15)
    {
      v16 = v13;
      v17 = (*(v11 - 1) & 0xFFFFFFFFFFFFFFF8);
      v18 = 8 * v15;
      do
      {
        v19 = *v14++;
        v21[0] = v19;
        v21[1] = v22;
        v21[2] = v17;
        llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::erase(v16, v21);
        v18 -= 8;
      }

      while (v18);
      v14 = *(v5 + 8);
    }

    if (v14 != (v5 + 24))
    {
      free(v14);
    }

    *v5 = -8192;
    result = vadd_s32(v12[5], 0x1FFFFFFFFLL);
    v12[5] = result;
  }

  return result;
}

uint64_t mlir::OperationFolder::insertKnownConstant(int32x2_t *a1, int32x2_t *a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v54 = a2;
  v55 = a3;
  v5 = a2[2];
  v7 = a1 + 4;
  v6 = a1[4];
  v8 = a1[6].i32[0];
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v9 & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(*&v6 + 40 * v10);
    if (v11 == a2)
    {
LABEL_3:
      ZinIrHalH13g::~ZinIrHalH13g(v5[5]);
      if (v12 != a2)
      {
        if (*(*&a2[2] + 40) == a2)
        {
          v13 = 0;
          v14 = a1[6].i32[0];
          if (!v14)
          {
LABEL_13:
            ZinIrHalH13g::~ZinIrHalH13g(v5[5]);
            mlir::Operation::moveBefore(a2, v22);
            a2[3] = *a1;
            return 1;
          }
        }

        else
        {
          ZinIrHalH13g::~ZinIrHalH13g(*a2);
          v14 = a1[6].i32[0];
          if (!v14)
          {
            goto LABEL_13;
          }
        }

        v15 = a1[4];
        v16 = v14 - 1;
        v17 = ((v13 >> 4) ^ (v13 >> 9)) & (v14 - 1);
        v18 = *(*&v15 + 40 * v17);
        if (v18 != v13)
        {
          v19 = 1;
          while (v18 != -4096)
          {
            v20 = v17 + v19++;
            v17 = v20 & v16;
            v18 = *(*&v15 + 40 * (v20 & v16));
            v21 = 1;
            if (v18 == v13)
            {
              return v21;
            }
          }

          goto LABEL_13;
        }
      }

      return 1;
    }

    v24 = 1;
    while (v11 != -4096)
    {
      v25 = v10 + v24++;
      v10 = v25 & v9;
      v11 = *(*&v6 + 40 * v10);
      if (v11 == a2)
      {
        goto LABEL_3;
      }
    }
  }

  if (!a3)
  {
    v57 = &v55;
    mlir::detail::constant_op_binder<mlir::Attribute>::match(&v57, a2);
  }

  InsertionRegion = getInsertionRegion(&a1[7], v5);
  v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &InsertionRegion);
  v27 = a2[6];
  if (*(*&v27 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v57 = *(*&v27 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v57);
  }

  else
  {
    Values = *(*&v27 + 24);
  }

  v29 = a2[4].u32[1];
  v30 = &a2[-2];
  if (!v29)
  {
    v30 = 0;
  }

  v56[0] = v30;
  v56[1] = v29;
  mlir::OperandRange::getTypes(&v57, v56);
  v31 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v57, v58) + 8) & 0xFFFFFFFFFFFFFFF8;
  v57 = Values;
  v58 = v55;
  v59 = v31;
  v32 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](v26, &v57);
  v33 = *v32 == 0;
  if (*v32)
  {
    mlir::OperationFolder::notifyRemoval(a1, a2);
    v34 = (*v32)[4].u32[1];
    if (v34)
    {
      v35 = &(*v32)[-2];
    }

    else
    {
      v35 = 0;
    }

    mlir::ValueRange::ValueRange(&v57, v35, v34);
    mlir::RewriterBase::replaceOp(&a1[14], a2, v57, v58);
    v21 = v33;
    (*v32)[3] = *a1;
    return v21;
  }

  v36 = *(InsertionRegion + 8);
  if (v36)
  {
    v37 = (v36 - 8);
  }

  else
  {
    v37 = 0;
  }

  if (v5 == v37)
  {
    ZinIrHalH13g::~ZinIrHalH13g(v37[5]);
    if (v42 == a2)
    {
      goto LABEL_37;
    }

    if (*(*&a2[2] + 40) == a2)
    {
      v43 = 0;
    }

    else
    {
      ZinIrHalH13g::~ZinIrHalH13g(*a2);
    }

    v45 = a1[6].i32[0];
    if (v45)
    {
      v46 = a1[4];
      v47 = v45 - 1;
      v48 = ((v43 >> 4) ^ (v43 >> 9)) & v47;
      v49 = *(*&v46 + 40 * v48);
      if (v49 == v43)
      {
        goto LABEL_37;
      }

      v50 = 1;
      while (v49 != -4096)
      {
        v51 = v48 + v50++;
        v48 = v51 & v47;
        v49 = *(*&v46 + 40 * v48);
        if (v49 == v43)
        {
          goto LABEL_37;
        }
      }
    }
  }

  ZinIrHalH13g::~ZinIrHalH13g(v37[5]);
  mlir::Operation::moveBefore(a2, v38);
  a2[3] = *a1;
LABEL_37:
  *v32 = a2;
  v39 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](v7, &v54);
  v40 = v54[6];
  if (*(*&v40 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v57 = *(*&v40 + 8);
    v41 = mlir::SparseElementsAttr::getValues(&v57);
  }

  else
  {
    v41 = *(*&v40 + 24);
  }

  v44 = *(v39 + 2);
  v21 = v33;
  if (v44 >= *(v39 + 3))
  {
    v52 = v41;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v39, v39 + 2, v44 + 1, 8);
    v41 = v52;
    v21 = v33;
    LODWORD(v44) = *(v39 + 2);
  }

  *(*v39 + 8 * v44) = v41;
  ++*(v39 + 2);
  return v21;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = *a1 + 32 * v3;
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v5 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v5 == -8192;
      }

      if (v11)
      {
        v9 = v4;
      }

      v12 = v3 + v10++;
      v3 = v12 & (v2 - 1);
      v4 = *a1 + 32 * v3;
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 8;
      }
    }

    if (v9)
    {
      v4 = v9;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v4 = v15;
    ++*(v14 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v8 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = v8;
  *(v4 + 24) = 0;
  return v4 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](uint64_t *a1, uint64_t a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 2);
    v7 = *(a1 + 4);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 != -4096)
      {
LABEL_5:
        --*(a1 + 3);
LABEL_6:
        *v5 = *a2;
        *(v5 + 8) = *(a2 + 8);
        *(v5 + 24) = 0;
        return v5 + 24;
      }

LABEL_10:
      if (*(v5 + 8) == -4096 && *(v5 + 16) == -4096)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 2);
    if (*v5 != -4096)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  return v5 + 24;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 40 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
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
      v5 = (*a1 + 40 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::LookupBucketFor<mlir::Block *>(v14, v13, &v15);
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
  v5[1] = v5 + 3;
  v5[2] = 0x200000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::erase(int32x2_t *a1, void *a2)
{
  v2 = a1[2].i32[0];
  if (v2)
  {
    v3 = a2[1];
    v4 = a2[2];
    v5 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v4 >> 4) ^ (v4 >> 9))) | (((v3 >> 4) ^ (v3 >> 9)) << 32));
    v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ v5 | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v7 = v2 - 1;
    v8 = v7 & ((v6 >> 31) ^ v6);
    v9 = 1;
    v10 = *a1 + 32 * v8;
    v11 = *v10;
    if (*a2 != *v10)
    {
      goto LABEL_7;
    }

LABEL_3:
    if (v3 == *(v10 + 8) && v4 == *(v10 + 16))
    {
      *v10 = -8192;
      *(v10 + 8) = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
      return 1;
    }

LABEL_7:
    while (v11 != -4096 || *(v10 + 8) != -4096 || *(v10 + 16) != -4096)
    {
      v13 = v8 + v9++;
      v8 = v13 & v7;
      v10 = *a1 + 32 * v8;
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(result + 16) - 1;
        v18 = v17 & ((v16 >> 4) ^ (v16 >> 9));
        v13 = *result + 32 * v18;
        v19 = *v13;
        if (v16 != *v13)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v13;
            }

            v23 = v18 + v21++;
            v18 = v23 & v17;
            v13 = *result + 32 * v18;
            v19 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v13 = v20;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (32 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  v4 = 0;
  v5 = *a1;
  v6 = a2[1];
  v7 = a2[2];
  v8 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v7 >> 4) ^ (v7 >> 9))) | (((v6 >> 4) ^ (v6 >> 9)) << 32));
  v9 = 0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ v8 | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v10 = v3 - 1;
  v11 = v10 & ((v9 >> 31) ^ v9);
  v12 = 1;
  v13 = (*a1 + 32 * v11);
  v14 = *v13;
  if (*a2 != *v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v6 == v13[1] && v7 == v13[2])
  {
    result = 1;
    *a3 = v13;
    return result;
  }

  while (1)
  {
LABEL_7:
    if (v14 != -4096)
    {
      v16 = v14 == -8192 && v13[1] == -8192 && v13[2] == -8192;
      goto LABEL_19;
    }

    v16 = 0;
    if (v13[1] == -4096 && v13[2] == -4096)
    {
      break;
    }

LABEL_19:
    if (v16 && v4 == 0)
    {
      v4 = v13;
    }

    v18 = v11 + v12++;
    v11 = v18 & v10;
    v13 = (v5 + 32 * v11);
    v14 = *v13;
    if (*a2 == *v13)
    {
      goto LABEL_3;
    }
  }

  result = 0;
  if (v4)
  {
    v13 = v4;
  }

  *a3 = v13;
  return result;
}

char *llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[32 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 40;
      v14 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v15 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 5) = -4096;
        *(v13 - 1) = -4096;
        *(v13 - 2) = v14;
        *v13 = v14;
        v13 += 64;
        v15 -= 2;
      }

      while (v15);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v16 = &result[32 * v11];
        v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        do
        {
          *v10 = -4096;
          *(v10 + 8) = v17;
          v10 += 32;
        }

        while (v10 != v16);
      }
    }

    v18 = (32 * v3);
    if (!v3)
    {
LABEL_24:
      llvm::deallocate_buffer(v4, v18);
    }

    v19 = 32 * v3;
    v20 = v4;
    while (1)
    {
      if (*v20 == -8192)
      {
        if (*(v20 + 1) == -8192 && *(v20 + 2) == -8192)
        {
          goto LABEL_15;
        }
      }

      else if (*v20 == -4096 && *(v20 + 1) == -4096 && *(v20 + 2) == -4096)
      {
        goto LABEL_15;
      }

      v29 = 0;
      llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, v20, &v29);
      v21 = v29;
      *v29 = *v20;
      *(v21 + 1) = *(v20 + 8);
      v21[3] = *(v20 + 3);
      ++*(a1 + 8);
LABEL_15:
      v20 = (v20 + 32);
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_24;
      }
    }
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    if (((v22 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_30;
    }

    v23 = ((v22 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[32 * (v23 & 0xFFFFFFFFFFFFFFELL)];
    v24 = result + 40;
    v25 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v26 = v23 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v24 - 5) = -4096;
      *(v24 - 1) = -4096;
      *(v24 - 2) = v25;
      *v24 = v25;
      v24 += 64;
      v26 -= 2;
    }

    while (v26);
    if (v23 != (v23 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_30:
      v27 = &result[32 * v22];
      v28 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *v10 = -4096;
        *(v10 + 8) = v28;
        v10 += 32;
      }

      while (v10 != v27);
    }
  }

  return result;
}

void mlir::applyPatternsAndFoldGreedily(mlir::Region **this, const mlir::FrozenRewritePatternSet *a2, uint64_t a3, _BYTE *a4)
{
  v7[34] = *MEMORY[0x1E69E9840];
  if (!*(a3 + 24))
  {
    *(a3 + 24) = this;
  }

  Context = mlir::Region::getContext(this);
}

void sub_1A6E42DF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, llvm *a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, llvm *a57, int a58)
{
  if ((a56 & 1) == 0)
  {
    llvm::deallocate_buffer(a57, (8 * a58));
  }

  llvm::deallocate_buffer(a47, (16 * a49));
}

uint64_t sub_1A6E42E20()
{
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  ZinIrHalH13g::~ZinIrHalH13g(&v2);
  return v1;
}

void anonymous namespace::RegionPatternRewriteDriver::~RegionPatternRewriteDriver(_anonymous_namespace_::RegionPatternRewriteDriver *this)
{
  *this = &unk_1F1A0BF98;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

{
  *this = &unk_1F1A0BF98;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

void sub_1A6E42EB0()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void *sub_1A6E42EE0()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  ZinIrHalH13g::~ZinIrHalH13g((v0 + 2));
  return v0;
}

void anonymous namespace::GreedyPatternRewriteDriver::GreedyPatternRewriteDriver(uint64_t a1, uint64_t a2, const mlir::FrozenRewritePatternSet *a3, __int128 *a4)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F1A0BF98;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = &unk_1F1A0C008;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  operator new();
}

void sub_1A6E43088()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void sub_1A6E430B8()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  ZinIrHalH13g::~ZinIrHalH13g((v0 + 2));

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationInserted(uint64_t a1, mlir::Operation *a2)
{
  v5 = a2;
  v3 = *(a1 + 144);
  if (v3)
  {
    v4 = a2;
    (*(*v3 + 16))(v3);
    a2 = v4;
  }

  if (*(a1 + 136) == 1)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 152), &v5, v6);
    a2 = v5;
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockInserted(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockErased(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Block *a2)
{
  result = *(this + 18);
  if (result)
  {
    return (*(*result + 32))(result, a2);
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationModified(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Block **a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    v4 = this;
    v5 = a2;
    (*(*v3 + 40))(*(this + 18));
    this = v4;
    a2 = v5;
    v2 = vars8;
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyOperationReplaced(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyMatchFailure(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::~GreedyPatternRewriteDriver(_anonymous_namespace_::GreedyPatternRewriteDriver *this)
{
  *this = &unk_1F1A0BF98;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

{
  *this = &unk_1F1A0BF98;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

void sub_1A6E432EC()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void *sub_1A6E4331C()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  ZinIrHalH13g::~ZinIrHalH13g((v0 + 2));
  return v0;
}

void sub_1A6E43378()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void sub_1A6E433A8()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  ZinIrHalH13g::~ZinIrHalH13g((v0 + 2));

  JUMPOUT(0x1AC55A070);
}

void mlir::PatternRewriter::~PatternRewriter(mlir::PatternRewriter *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

unsigned int *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::RegionPatternRewriteDriver(mlir::MLIRContext *,mlir::FrozenRewritePatternSet const&,mlir::GreedyRewriteConfig const&,mlir::Region &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 152), &v4, v5);
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = &v7[2 * v9];
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v12 = result[4];
    }

    *a3 = v10;
    *(a3 + 8) = &v4[2 * v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -4096)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -8192;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[2 * (v18 & v8)];
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - result[1] <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -4096)
  {
    --result[1];
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v14 = result[4];
  }

  *a3 = v10;
  *(a3 + 8) = &v4[2 * v14];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(uint64_t result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  v57[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v8 = (result + 8);
    v7 = *(result + 8);
    v9 = *(result + 16);
    if (v2 > 4)
    {
      buffer = llvm::allocate_buffer(8 * v2, 8uLL);
      *(v3 + 8) = buffer;
      *(v3 + 16) = v2;
      v23 = *v3;
      v10 = (v7 + 8 * v9);
      *v3 = *v3 & 1;
      if ((v23 & 1) == 0)
      {
        v24 = &buffer->i8[8 * v2];
        v25 = 8 * v2 - 8;
        if (v25 < 0x18)
        {
          v27 = buffer;
          goto LABEL_24;
        }

LABEL_18:
        v26 = (v25 >> 3) + 1;
        v27 = &buffer->i8[8 * (v26 & 0x3FFFFFFFFFFFFFFCLL)];
        v28 = buffer + 1;
        v29 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v30 = v26 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v28[-1] = v29;
          *v28 = v29;
          v28 += 2;
          v30 -= 4;
        }

        while (v30);
        if (v26 == (v26 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_25:
          if (v9)
          {
            v31 = v7;
            do
            {
              v37 = *v31;
              if ((*v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*v3)
                {
                  v33 = 3;
                  v32 = v3 + 8;
                }

                else
                {
                  v32 = *v8;
                  v33 = v2 - 1;
                }

                v34 = v33 & ((v37 >> 4) ^ (v37 >> 9));
                v35 = (v32 + 8 * v34);
                v36 = *v35;
                if (v37 != *v35)
                {
                  v38 = 0;
                  v39 = 1;
                  while (v36 != -4096)
                  {
                    if (v38)
                    {
                      v40 = 0;
                    }

                    else
                    {
                      v40 = v36 == -8192;
                    }

                    if (v40)
                    {
                      v38 = v35;
                    }

                    v41 = v34 + v39++;
                    v34 = v41 & v33;
                    v35 = (v32 + 8 * (v41 & v33));
                    v36 = *v35;
                    if (v37 == *v35)
                    {
                      goto LABEL_29;
                    }
                  }

                  if (v38)
                  {
                    v35 = v38;
                  }
                }

LABEL_29:
                *v35 = v37;
                *v3 += 2;
              }

              v31 = (v31 + 8);
            }

            while (v31 != v10);
          }

          llvm::deallocate_buffer(v7, (8 * v9));
        }

        do
        {
LABEL_24:
          *v27 = -4096;
          v27 += 8;
        }

        while (v27 != v24);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = (v7 + 8 * v9);
      *result = 1;
      v2 = v9;
    }

    v24 = (v3 + 40);
    buffer = (v3 + 8);
    v25 = 24;
    goto LABEL_18;
  }

  v11 = (result + 8);
  v12 = &v56;
  if ((*(result + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v13 = *(result + 16);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v56 = *(result + 8);
    v12 = v57;
    v13 = *(result + 16);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v14 = *(result + 24);
      if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }
  }

  *v12++ = v13;
  v14 = *(result + 24);
  if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v15 = *(result + 32);
    if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *v12++ = v14;
  v15 = *(result + 32);
  if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v16 = *result;
    if (v2 >= 5)
    {
      goto LABEL_13;
    }

LABEL_53:
    v2 = v13;
    *result = v16 & 1;
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_52:
  *v12++ = v15;
  v16 = *result;
  if (v2 < 5)
  {
    goto LABEL_53;
  }

LABEL_13:
  *result = v16 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * v2, 8uLL);
  *(v3 + 8) = result;
  *(v3 + 16) = v2;
  v17 = *v3;
  *v3 = *v3 & 1;
  if (v17)
  {
LABEL_14:
    v18 = v3 + 40;
    v19 = (v3 + 8);
    v20 = 24;
    goto LABEL_56;
  }

LABEL_54:
  if (!v2)
  {
    goto LABEL_60;
  }

  v19 = *v11;
  v18 = *v11 + 8 * v2;
  v20 = 8 * v2 - 8;
  if (v20 < 0x18)
  {
    v21 = *v11;
    do
    {
LABEL_59:
      *v21++ = -4096;
    }

    while (v21 != v18);
    goto LABEL_60;
  }

LABEL_56:
  v42 = (v20 >> 3) + 1;
  v21 = &v19->i64[v42 & 0x3FFFFFFFFFFFFFFCLL];
  v43 = v19 + 1;
  v44 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v43[-1] = v44;
    *v43 = v44;
    v43 += 2;
    v45 -= 4;
  }

  while (v45);
  if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_59;
  }

LABEL_60:
  if (&v56 != v12)
  {
    v46 = &v56;
    do
    {
      v52 = *v46;
      if ((*v46 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v3)
        {
          v48 = 3;
          v47 = v3 + 8;
        }

        else
        {
          v47 = *v11;
          v48 = v2 - 1;
        }

        v49 = v48 & ((v52 >> 4) ^ (v52 >> 9));
        v50 = (v47 + 8 * v49);
        v51 = *v50;
        if (v52 != *v50)
        {
          v53 = 0;
          result = 1;
          while (v51 != -4096)
          {
            if (v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = v51 == -8192;
            }

            if (v54)
            {
              v53 = v50;
            }

            v55 = v49 + result;
            result = (result + 1);
            v49 = v55 & v48;
            v50 = (v47 + 8 * (v55 & v48));
            v51 = *v50;
            if (v52 == *v50)
            {
              goto LABEL_64;
            }
          }

          if (v53)
          {
            v50 = v53;
          }
        }

LABEL_64:
        *v50 = v52;
        *v3 += 2;
      }

      ++v46;
    }

    while (v46 != v12);
  }

  return result;
}