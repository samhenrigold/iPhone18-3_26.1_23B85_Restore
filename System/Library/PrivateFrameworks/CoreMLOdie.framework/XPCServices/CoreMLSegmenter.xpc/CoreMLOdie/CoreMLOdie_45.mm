const char *sub_10027061C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int8_t>]";
  v6 = 102;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1002706D4(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABCAC();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_10027071C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t sub_1002707CC(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABD00();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100270814()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

const char *sub_100270894()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolRefAttr]";
  v6 = 81;
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

uint64_t sub_100270924(unint64_t **a1, uint64_t a2)
{
  {
    sub_1002A53B8();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = &v9;
    v8[1] = &_mh_execute_header;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != &v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

uint64_t sub_100270D78(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v41 = *(*(a2 + 72) + 24);
  v40 = *(v41 + 8) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::TensorType::hasRank(&v40);
  if (result)
  {
    Shape = mlir::TensorType::getShape(&v40);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    result = mlir::TensorType::hasRank(&v39);
    if (!result)
    {
      return result;
    }

    v9 = mlir::TensorType::getShape(&v39);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    v12 = *(*(a2 + 72) + 56);
    v45 = 0;
    v46 = 0;
    RawIntOrFloat = &v45;
    v43 = v12;
    result = mlir::Value::getDefiningOp(&v43);
    if (result)
    {
      result = sub_10026C424(&RawIntOrFloat, result);
      if (result)
      {
        mlir::TensorType::getShape(&v39);
        v45 = v47;
        v46 = 0xC00000000;
        if (v13)
        {
          v14 = v13;
          if (v13 < 0xD)
          {
            v15 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v13, 4);
            v15 = v46;
          }

          if (v14 != v15)
          {
            bzero(v45 + 4 * v15, 4 * (v14 - v15));
          }

          LODWORD(v46) = v14;
        }

        v16 = mlir::TensorType::getShape(&v39);
        if (!v17)
        {
          goto LABEL_30;
        }

        v18 = v45;
        v19 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v19 > 6)
        {
          v22 = v19 + 1;
          v20 = (v19 + 1) & 0x3FFFFFFFFFFFFFF8;
          v21 = (v16 + 8 * v20);
          v23 = (v45 + 16);
          v24 = (v16 + 32);
          v25 = v20;
          do
          {
            v27 = v24[-2];
            v26 = v24[-1];
            v29 = *v24;
            v28 = v24[1];
            v24 += 4;
            v23[-1] = vuzp1q_s32(v27, v26);
            *v23 = vuzp1q_s32(v29, v28);
            v23 += 2;
            v25 -= 8;
          }

          while (v25);
          if (v22 == v20)
          {
LABEL_30:
            v32 = *(a2 + 24);
            mlir::TensorType::getShape(&v39);
            v44 = v33;
            IntegerType = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
            v38 = mlir::RankedTensorType::get(&v44, 1, IntegerType, 0);
            v35 = sub_100065C78(&v38);
            RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v35, v36, v45, 4 * v46);
            v43 = sub_10026E114(a3 + 1, v32, &RawIntOrFloat);
            v37 = sub_10026E278(a3 + 1, *(a2 + 24), &v39, &v41, &v43);
            ((*a3)[1])(a3, a2, v37);
            if (v45 != v47)
            {
              free(v45);
            }

            return 1;
          }
        }

        else
        {
          v20 = 0;
          v21 = v16;
        }

        v30 = &v18[4 * v20];
        do
        {
          v31 = *v21++;
          *v30 = v31;
          v30 += 4;
        }

        while (v21 != (v16 + 8 * v17));
        goto LABEL_30;
      }
    }
  }

  return result;
}

const char *sub_100271078()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>]";
  v6 = 154;
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

const char *sub_100271420()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>]";
  v6 = 154;
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

void sub_1002714A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = &v8;
  v8 = 0;
  v9 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (DefiningOp && (sub_100297C38(&v7, DefiningOp) & 1) != 0)
  {
    sub_1002715EC(v8, &v9);
    *a2 = a2 + 24;
    *(a2 + 8) = xmmword_1002B0E50;
    v4 = v9;
    v5 = v10;
    if (v10 && &v9 != a2)
    {
      if (v9 != v12)
      {
        *a2 = v9;
        *(a2 + 8) = v5;
        *(a2 + 16) = v11;
        *(a2 + 64) = 1;
        return;
      }

      v6 = v10;
      if (v10 < 0x15 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v10, 2), v4 = v9, (v6 = v10) != 0))
      {
        memcpy(*a2, v4, 2 * v6);
        v4 = v9;
      }

      *(a2 + 8) = v5;
      v10 = 0;
    }

    *(a2 + 64) = 1;
    if (v4 != v12)
    {
      free(v4);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

void sub_1002715EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = (a2 + 24);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_1002B0E50;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v11, a1, NumElements);
  for (; v14 != v12; ++v14)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &v9);
    v6 = v10;
    if (v10 >= 0x41)
    {
      if (v6 - llvm::APInt::countLeadingZerosSlowCase(&v9) <= 0x40)
      {
        v7 = *v9;
      }

      else
      {
        LOWORD(v7) = -1;
      }
    }

    else
    {
      LOWORD(v7) = v9;
    }

    v8 = *(a2 + 8);
    if ((v8 + 1) > *(a2 + 16))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, v4, v8 + 1, 2);
      v8 = *(a2 + 8);
    }

    *(*a2 + 2 * v8) = v7;
    ++*(a2 + 8);
    if (v10 >= 0x41)
    {
      if (v9)
      {
        operator delete[]();
      }
    }
  }
}

uint64_t *sub_10027173C@<X0>(uint64_t *result@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = *a2;
  v7 = v4 - 1;
  v8 = (37 * *a2) & (v4 - 1);
  v9 = (*result + 2 * v8);
  v10 = *v9;
  if (v6 != v10)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != 0x7FFF)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == 0x8000;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v5 + 2 * (v16 & v7));
      v10 = *v9;
      if (v6 == v10)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v19 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v12 - *(result + 3) > v4 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == 0x7FFF)
      {
LABEL_9:
        *v9 = *a2;
        v5 = *result;
        v4 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a3;
    sub_100271974(result, v4);
    sub_1002718C4(v17, a2, &v19);
    result = v17;
    a3 = v18;
    v9 = v19;
    ++*(v17 + 2);
    if (*v9 == 0x7FFF)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a3 = v9;
  *(a3 + 8) = v5 + 2 * v4;
  *(a3 + 16) = v11;
  return result;
}

uint64_t sub_1002718C4(uint64_t *a1, unsigned __int16 *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = v3 - 1;
    v7 = (37 * *a2) & (v3 - 1);
    v8 = (*a1 + 2 * v7);
    v9 = *v8;
    if (v5 == v9)
    {
      result = 1;
      *a3 = v8;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      result = 1;
      while (v9 != 0x7FFF)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = v9 == 0x8000;
        }

        if (v13)
        {
          v11 = v8;
        }

        v14 = v7 + v12++;
        v7 = v14 & v6;
        v8 = (v4 + 2 * (v14 & v6));
        v9 = *v8;
        if (v5 == v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v8 = v11;
      }

      *a3 = v8;
    }
  }

  else
  {
    v8 = 0;
    result = 0;
LABEL_5:
    *a3 = v8;
  }

  return result;
}

void sub_100271974(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((2 * v8), 2uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset_pattern16(buffer, &unk_1002B0F80, 2 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        if ((*v14 - 0x7FFF) >= 2u)
        {
          v17 = *v14;
          v18 = (37 * *v14) & v13;
          v16 = &buffer[2 * v18];
          v19 = *v16;
          if (v17 != v19)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFF)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x8000;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &buffer[2 * (v23 & v13)];
              v19 = *v16;
              if (v17 == v19)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v16 = v20;
            }
          }

LABEL_16:
          *v16 = v17;
          *(a1 + 8) = ++v12;
        }

        v14 = (v14 + 2);
      }

      while (v14 != (v4 + 2 * v3));
    }

    llvm::deallocate_buffer(v4, (2 * v3), 2uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v15 = *(a1 + 16);
    if (v15)
    {

      memset_pattern16(buffer, &unk_1002B0F80, 2 * v15);
    }
  }
}

uint64_t *sub_100271B38@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = (*result + 4 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != 0x7FFFFFFF)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == 0x80000000;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 4 * (v15 & v6));
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
      if (*v8 == 0x7FFFFFFF)
      {
LABEL_9:
        *v8 = *a2;
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
    sub_100271D60(result, v4);
    sub_100271CB8(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 4 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_100271CB8(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 4 * v6);
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
      while (v8 != 0x7FFFFFFF)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x80000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 4 * (v13 & v5));
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

void sub_100271D60(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((4 * v8), 4uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset_pattern16(buffer, &unk_1002B0F90, 4 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v4;
      do
      {
        v16 = *v13;
        if ((*v13 - 0x7FFFFFFF) >= 2)
        {
          v17 = *(a1 + 16) - 1;
          v18 = v17 & (37 * v16);
          v15 = &buffer[4 * v18];
          v19 = *v15;
          if (v16 != *v15)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFFFFFF)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x80000000;
              }

              if (v22)
              {
                v20 = v15;
              }

              v23 = v18 + v21++;
              v18 = v23 & v17;
              v15 = &buffer[4 * (v23 & v17)];
              v19 = *v15;
              if (v16 == *v15)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v15 = v20;
            }
          }

LABEL_16:
          *v15 = v16;
          *(a1 + 8) = ++v12;
        }

        v13 = (v13 + 4);
      }

      while (v13 != (v4 + 4 * v3));
    }

    llvm::deallocate_buffer(v4, (4 * v3), 4uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v14 = *(a1 + 16);
    if (v14)
    {

      memset_pattern16(buffer, &unk_1002B0F90, 4 * v14);
    }
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_(mlir::ODIE::Compiler::CoreML::AsyncValueType **a1, mlir::AsmParser *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(*a1, a2);
  *a2 = v3;
  return v3 != 0;
}

void *sub_100271F40(void *result, _OWORD *a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v5 = 0;
  v6 = result + 2;
  *result = result + 2;
  result[1] = &_mh_execute_header;
  if (a3 && a5)
  {
    v7 = a3;
    v8 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 >= ((a3 - 1) & 0x7FFFFFFFFFFFFFFuLL))
    {
      v8 = (a3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = v8 + 1;
      v10 = result;
      v11 = a2;
      v12 = a4;
      v13 = a5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v8 + 1, 64);
      a5 = v13;
      a2 = v11;
      a4 = v12;
      result = v10;
      v8 = *(v10 + 2);
      v6 = *v10;
    }

    else
    {
      v9 = 1;
    }

    v14 = &v6[8 * v8];
    v15 = 32 * v7 - 32;
    v16 = 8 * a5 - 8;
    do
    {
      v17 = *a2;
      *(v14 + 12) = *(a2 + 12);
      *v14 = v17;
      v18 = *a4++;
      *(v14 + 56) = 0;
      v14[4] = v18;
      v14[5] = 0;
      *(v14 + 48) = 0;
      if (!v15)
      {
        break;
      }

      a2 += 2;
      v14 += 8;
      v15 -= 32;
      v19 = v16;
      v16 -= 8;
    }

    while (v19);
    v5 = *(result + 2) + v9;
  }

  *(result + 2) = v5;
  return result;
}

BOOL sub_10027204C(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 536))(a1, &v19) & 1) == 0)
  {
    return 0;
  }

  v5 = v19;
  v6 = *(*v19 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v17 = "invalid kind of type specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v4, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
      {
        do
        {
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
          }
        }

        while (v14 != v13);
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_1002722E0(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABDD4();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100272328()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_1002723D8(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABE28();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100272420()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

void sub_1002724A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 24))(&v27);
  if (v27)
  {
    LODWORD(v23) = 3;
    v24 = "'";
    v25 = 1;
    v4 = &v23;
    v5 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v23 && v29 + 24 * v30 > &v23)
      {
        v21 = &v23 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = v29;
        v4 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v4 = &v23;
        v5 = v29;
      }
    }

    v6 = &v5[24 * v30];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v30;
  }

  v23 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v23);
  if (v27)
  {
    v26 = 261;
    v23 = Value;
    v24 = v9;
    mlir::Diagnostic::operator<<(&v28, &v23);
    if (v27)
    {
      LODWORD(v23) = 3;
      v24 = "' op ";
      v25 = 5;
      v10 = &v23;
      v11 = v29;
      if (v30 >= v31)
      {
        if (v29 <= &v23 && v29 + 24 * v30 > &v23)
        {
          v22 = &v23 - v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v11 = v29;
          v10 = (v29 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v10 = &v23;
          v11 = v29;
        }
      }

      v12 = &v11[24 * v30];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v30;
    }
  }

  sub_10006BAFC(a2, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
      {
        do
        {
          v20 = *--v18;
          *v18 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v18 != v17);
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100272830(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABE7C();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100272878()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void sub_1002728F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 24))(&v27);
  if (v27)
  {
    LODWORD(v23) = 3;
    v24 = "'";
    v25 = 1;
    v4 = &v23;
    v5 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v23 && v29 + 24 * v30 > &v23)
      {
        v21 = &v23 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = v29;
        v4 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v4 = &v23;
        v5 = v29;
      }
    }

    v6 = &v5[24 * v30];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v30;
  }

  v23 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v23);
  if (v27)
  {
    v26 = 261;
    v23 = Value;
    v24 = v9;
    mlir::Diagnostic::operator<<(&v28, &v23);
    if (v27)
    {
      LODWORD(v23) = 3;
      v24 = "' op ";
      v25 = 5;
      v10 = &v23;
      v11 = v29;
      if (v30 >= v31)
      {
        if (v29 <= &v23 && v29 + 24 * v30 > &v23)
        {
          v22 = &v23 - v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v11 = v29;
          v10 = (v29 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v10 = &v23;
          v11 = v29;
        }
      }

      v12 = &v11[24 * v30];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v30;
    }
  }

  sub_10006BAFC(a2, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
      {
        do
        {
          v20 = *--v18;
          *v18 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v18 != v17);
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }
}

BOOL sub_100272C58(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  if (((*(*a1 + 536))(a1, &v17) & 1) == 0)
  {
    return 0;
  }

  v5 = v17;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v15 = "invalid kind of type specified";
  v16 = 259;
  (*(*a1 + 24))(v18, a1, v4, &v15);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  v7 = result;
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
    result = v7;
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v24;
      v10 = __p;
      if (v24 != __p)
      {
        do
        {
          v9 = sub_10005BEF4(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v24 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v21;
    if (v21)
    {
      v12 = v22;
      v13 = v21;
      if (v22 != v21)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v21;
      }

      v22 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v19 != &v20)
    {
      free(v19);
      return v7;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100272EE8(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABED0();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100272F30()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties]";
  v6 = 141;
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

BOOL sub_100272FB0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
      {
        do
        {
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
          }
        }

        while (v14 != v13);
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

void sub_100273210(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 24))(&v27);
  if (v27)
  {
    LODWORD(v23) = 3;
    v24 = "'";
    v25 = 1;
    v4 = &v23;
    v5 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v23 && v29 + 24 * v30 > &v23)
      {
        v21 = &v23 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = v29;
        v4 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v4 = &v23;
        v5 = v29;
      }
    }

    v6 = &v5[24 * v30];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v30;
  }

  v23 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v23);
  if (v27)
  {
    v26 = 261;
    v23 = Value;
    v24 = v9;
    mlir::Diagnostic::operator<<(&v28, &v23);
    if (v27)
    {
      LODWORD(v23) = 3;
      v24 = "' op ";
      v25 = 5;
      v10 = &v23;
      v11 = v29;
      if (v30 >= v31)
      {
        if (v29 <= &v23 && v29 + 24 * v30 > &v23)
        {
          v22 = &v23 - v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v11 = v29;
          v10 = (v29 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v10 = &v23;
          v11 = v29;
        }
      }

      v12 = &v11[24 * v30];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v30;
    }
  }

  sub_10006BAFC(a2, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
      {
        do
        {
          v20 = *--v18;
          *v18 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v18 != v17);
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }
}

unint64_t sub_100273570(char *a1, uint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v22 = a2;
  v15 = sub_10002DCBC(a1, &v22, a3, a4, *a5);
  v23 = v22;
  v16 = sub_10002DCBC(a1, &v23, v15, a4, *a6);
  v24 = v23;
  v17 = sub_10002DCBC(a1, &v24, v16, a4, *a7);
  v25 = v24;
  v18 = sub_10002DCBC(a1, &v25, v17, a4, *a8);
  v26 = v25;
  v19 = sub_10002DCBC(a1, &v26, v18, a4, *a9);
  v27 = v26;
  v20 = sub_10002DCBC(a1, &v27, v19, a4, *a10);
  return sub_10002D330(a1, v27, v20, a4);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1002736C0(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABF24();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100273708()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *sub_100273788()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ExternAttr]";
  v6 = 102;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100273838(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABF78();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100273880()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

const char *sub_100273900()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ApproximateAttr]";
  v6 = 107;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_1002739B0(uint64_t a1, uint64_t a2)
{
  {
    sub_1002ABFCC();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_1002739F8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties]";
  v6 = 141;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_100273AB0(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AC020();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100273AF8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

const char *sub_100273B78()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::IntegerAttr]";
  v6 = 79;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100273C28(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AC074();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100273C70()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

const char *sub_100273CF0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::PaddingModeAttr]";
  v6 = 107;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100273DA0(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AC0C8();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100273DE8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties]";
  v6 = 143;
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

void *sub_100273E68(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v7 = a1[1];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      sub_100003FC0();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_100003FC0();
    }

    v13 = (v4 - v7) >> 3;
    v14 = (8 * v9);
    v15 = *a2;
    *a2 = 0;
    v16 = (8 * v9 - 8 * v13);
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    a1[1] = v16;
    a1[2] = v6;
    a1[3] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 8;
  }

  a1[2] = v6;
  return a1;
}

void sub_100273F78(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  operator delete();
}

void sub_100274060(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 24))(&v27);
  if (v27)
  {
    LODWORD(v23) = 3;
    v24 = "'";
    v25 = 1;
    v4 = &v23;
    v5 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v23 && v29 + 24 * v30 > &v23)
      {
        v21 = &v23 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = v29;
        v4 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v4 = &v23;
        v5 = v29;
      }
    }

    v6 = &v5[24 * v30];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v30;
  }

  v23 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v23);
  if (v27)
  {
    v26 = 261;
    v23 = Value;
    v24 = v9;
    mlir::Diagnostic::operator<<(&v28, &v23);
    if (v27)
    {
      LODWORD(v23) = 3;
      v24 = "' op ";
      v25 = 5;
      v10 = &v23;
      v11 = v29;
      if (v30 >= v31)
      {
        if (v29 <= &v23 && v29 + 24 * v30 > &v23)
        {
          v22 = &v23 - v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v11 = v29;
          v10 = (v29 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v10 = &v23;
          v11 = v29;
        }
      }

      v12 = &v11[24 * v30];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v30;
    }
  }

  sub_10006BAFC(a2, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
      {
        do
        {
          v20 = *--v18;
          *v18 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v18 != v17);
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }
}

llvm::raw_ostream *sub_1002743C0(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  v5 = result;
  v6 = *(result + 4);
  if (*(result + 3) - v6 > 3uLL)
  {
    *v6 = 540945696;
    *(result + 4) += 4;
    v7 = a2[1];
    v10 = a2[3];
    if (v7 == v10 || v7 + 1 != v10)
    {
LABEL_20:
      v20 = *(v5 + 4);
      if (v20 >= *(v5 + 3))
      {
        result = llvm::raw_ostream::write(v5, 40);
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(v5 + 4) = v20 + 1;
        *v20 = 40;
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
LABEL_25:
          v26 = *(v5 + 4);
          if (v26 >= *(v5 + 3))
          {

            return llvm::raw_ostream::write(v5, 41);
          }

          else
          {
            *(v5 + 4) = v26 + 1;
            *v26 = 41;
          }

          return result;
        }
      }

      v23 = *a2;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v21);
      result = (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v21 + 1; v22 != i; ++i)
      {
        v28 = (*(*a1 + 16))(a1);
        v29 = v28[4];
        if (v28[3] - v29 > 1uLL)
        {
          *v29 = 8236;
          v28[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, i);
        result = (*(*a1 + 32))(a1, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
      }

      goto LABEL_25;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " -> ", 4uLL);
    v5 = result;
    v7 = a2[1];
    v8 = a2[3];
    if (v7 == v8 || v7 + 1 != v8)
    {
      goto LABEL_20;
    }
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, v7);
  if (*(*(*(result + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_20;
  }

  v12 = a2[1];
  v13 = a2[3];
  if (v12 != v13)
  {
    v14 = *a2;
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
    result = (*(*a1 + 32))(a1, *(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
    for (j = v12 + 1; v13 != j; ++j)
    {
      v18 = (*(*a1 + 16))(a1);
      v19 = v18[4];
      if (v18[3] - v19 > 1uLL)
      {
        *v19 = 8236;
        v18[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v18, ", ", 2uLL);
      }

      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, j);
      result = (*(*a1 + 32))(a1, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_100274790(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AC11C();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_1002747D8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties]";
  v6 = 145;
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

const char *sub_100274858()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr]";
  v6 = 113;
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

const char *sub_1002748D8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::SamplingModeAttr]";
  v6 = 108;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100274988(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AC170();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_1002749D0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties]";
  v6 = 148;
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

const char *sub_100274A50()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ScatterModeAttr]";
  v6 = 107;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_100274B00(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AC1C4();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100274B48()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties]";
  v6 = 141;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

uint64_t sub_100274BF8(uint64_t a1, uint64_t a2)
{
  {
    sub_1002AC218();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100274C40()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties]";
  v6 = 142;
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

const char *sub_100274CC0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::TargetSpecAttr]";
  v6 = 106;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML14TargetSpecAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void sub_100274D78(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 24))(&v27);
  if (v27)
  {
    LODWORD(v23) = 3;
    v24 = "'";
    v25 = 1;
    v4 = &v23;
    v5 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v23 && v29 + 24 * v30 > &v23)
      {
        v21 = &v23 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = v29;
        v4 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v4 = &v23;
        v5 = v29;
      }
    }

    v6 = &v5[24 * v30];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v30;
  }

  v23 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v23);
  if (v27)
  {
    v26 = 261;
    v23 = Value;
    v24 = v9;
    mlir::Diagnostic::operator<<(&v28, &v23);
    if (v27)
    {
      LODWORD(v23) = 3;
      v24 = "' op ";
      v25 = 5;
      v10 = &v23;
      v11 = v29;
      if (v30 >= v31)
      {
        if (v29 <= &v23 && v29 + 24 * v30 > &v23)
        {
          v22 = &v23 - v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v11 = v29;
          v10 = (v29 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
          v10 = &v23;
          v11 = v29;
        }
      }

      v12 = &v11[24 * v30];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v30;
    }
  }

  sub_10006BAFC(a2, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
      {
        do
        {
          v20 = *--v18;
          *v18 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v18 != v17);
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }
}

__n128 sub_1002750E4@<Q0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 24 * v1);
  result = *v2;
  v3[1].n128_u64[0] = v2[1].n128_u64[0];
  *v3 = result;
  return result;
}

uint64_t *sub_100275290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(v15 + 36);
  v18 = v15 - 16;
  if (!v17)
  {
    v18 = 0;
  }

  a14 = v18;
  a15 = v17;

  return mlir::ResultRange::getTypes(&a10, &a14);
}

uint64_t sub_1002752D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 2) = 32;
  *a2 = 14880;
  *(result + 32) += 3;
  return result;
}

void sub_100275304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, a12, v12 + 1, 24);
}

void sub_100275324()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void sub_100275344()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v1 + 32), v0 + 1, 24);
}

void sub_100275364()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (v1 + 32), v0 + 1, 24);
}

void *sub_1002753E8()
{

  return llvm::raw_ostream::write(v0, v1, 2uLL);
}

void sub_100275444(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 24, a5, a1 + 1, 24);
}

void sub_100275464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, a12, v12 + 1, 24);
}

void sub_100275484(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, a1 + 1, 24);
}

void sub_1002754A4()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void sub_1002754C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = *(**v16 + 24);

  mlir::emitError(v18, va);
}

llvm::raw_ostream *sub_1002755E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return mlir::call_interface_impl::printFunctionSignature(v13, a2, a3, v14, 0, a12, a13, a8, 0, 1u);
}

uint64_t sub_10027560C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return mlir::DiagnosticArgument::DiagnosticArgument(va, a13);
}

uint64_t *sub_100275628@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v5 = a1;
  v7 = v2;

  return mlir::OperandRange::getTypes(va, va1);
}

llvm::raw_ostream *sub_100275650(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return sub_100257B04(v2, va1, va);
}

uint64_t *sub_1002756E0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  a10 = a1;
  a11 = v36;

  return mlir::ResultRange::getTypes(&a36, &a10);
}

uint64_t *sub_100275704@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  a10 = a1;
  a11 = v36;

  return mlir::OperandRange::getTypes(&a10, &a36);
}

uint64_t sub_10027573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = a1;

  return mlir::DictionaryAttr::getValue(&a16);
}

BOOL sub_100275810()
{
  v3 = *v0;
  v4 = *(*v1 + 8) & 0xFFFFFFFFFFFFFFF8;

  return mlir::ODIE::Compiler::areTypesCompatible(v3, v4);
}

void sub_100275860(void *a1@<X8>)
{

  operator delete(a1);
}

uint64_t sub_100275878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  return sub_10006BAFC(va, &a17);
}

unint64_t sub_100275890(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return mlir::Operation::getAttrDictionary(v21);
}

BOOL mlir::ODIE::Compiler::CoreML::TransformCastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_100275940(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_100275940(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL sub_100275940(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v7 = *a2;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = a3;
    v61 = a1;
    v59 = a4;
    sub_1002AAB00();
    a4 = v59;
    a3 = v60;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    v43 = *a2;
    {
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (!v46)
      {
        goto LABEL_68;
      }
    }

    else
    {
      sub_1002AAB00();
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (!v46)
      {
        goto LABEL_68;
      }
    }

    v47 = v45;
    v48 = v46;
    do
    {
      v49 = v48 >> 1;
      v50 = &v47[2 * (v48 >> 1)];
      v52 = *v50;
      v51 = v50 + 2;
      v48 += ~(v48 >> 1);
      if (v52 < v44)
      {
        v47 = v51;
      }

      else
      {
        v48 = v49;
      }
    }

    while (v48);
    if (v47 != &v45[2 * v46] && *v47 == v44)
    {
      v54 = v47[1];
      goto LABEL_70;
    }

LABEL_68:
    v54 = 0;
LABEL_70:
    v67[0] = a2;
    v67[1] = v54;
    mlir::ShapedType::getElementType(v67);
    return 1;
  }

LABEL_13:
  v63 = 261;
  v62[0] = a3;
  v62[1] = a4;
  mlir::Operation::emitOpError(v67, a1, v62);
  if (v67[0])
  {
    v64 = 3;
    v65 = " #";
    v66 = 2;
    v17 = &v64;
    v18 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v64 && v68 + 24 * v69 > &v64)
      {
        v55 = &v64 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v18 = v68;
        v17 = (v68 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v17 = &v64;
        v18 = v68;
      }
    }

    v19 = &v18[24 * v69];
    v20 = *v17;
    *(v19 + 2) = *(v17 + 2);
    *v19 = v20;
    v21 = ++v69;
    if (v67[0])
    {
      v64 = 5;
      v65 = a5;
      v22 = &v64;
      v23 = v68;
      if (v21 >= v70)
      {
        if (v68 <= &v64 && v68 + 24 * v21 > &v64)
        {
          v56 = &v64 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
          v23 = v68;
          v22 = (v68 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v21 + 1, 24);
          v22 = &v64;
          v23 = v68;
        }
      }

      v24 = &v23[24 * v69];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v69;
      if (v67[0])
      {
        v64 = 3;
        v65 = " must be shaped of any type values, but got ";
        v66 = 44;
        v27 = &v64;
        v28 = v68;
        if (v26 >= v70)
        {
          if (v68 <= &v64 && v68 + 24 * v26 > &v64)
          {
            v57 = &v64 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v26 + 1, 24);
            v28 = v68;
            v27 = (v68 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v26 + 1, 24);
            v27 = &v64;
            v28 = v68;
          }
        }

        v29 = &v28[24 * v69];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v69;
        if (v67[0])
        {
          v31 = &v64;
          mlir::DiagnosticArgument::DiagnosticArgument(&v64, a2);
          v32 = v68;
          if (v69 >= v70)
          {
            if (v68 <= &v64 && v68 + 24 * v69 > &v64)
            {
              v58 = &v64 - v68;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v32 = v68;
              v31 = (v68 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
              v31 = &v64;
              v32 = v68;
            }
          }

          v33 = &v32[24 * v69];
          v34 = *v31;
          *(v33 + 2) = *(v31 + 2);
          *v33 = v34;
          ++v69;
        }
      }
    }
  }

  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
  if (v67[0])
  {
    mlir::InFlightDiagnostic::report(v67);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v75;
      v38 = __p;
      if (v75 != __p)
      {
        do
        {
          v37 = sub_10005BEF4(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v75 = v36;
      operator delete(v38);
    }

    v39 = v72;
    if (v72)
    {
      v40 = v73;
      v41 = v72;
      if (v73 != v72)
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v72;
      }

      v73 = v39;
      operator delete(v41);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v35;
}

BOOL mlir::ODIE::Compiler::CoreML::TransformCastOp::parse(mlir::ODIE::Compiler::CoreML::TransformCastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  if (!sub_100276760(this, &v13))
  {
    return 0;
  }

  v9 = v13;
  v15 = 257;
  if (((*(*this + 400))(this, "to", 2, &v13) & 1) == 0)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  if (!sub_100276760(this, &v13))
  {
    return 0;
  }

  v7 = v13;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  sub_1001EFDBC(a2, &v7, 1);
  return sub_10022A240(this, v10, v8, v5, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::TransformCastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  NextResultAtOffset = *(*(*this + 9) + 24);
  v12 = sub_100276570(&NextResultAtOffset);
  v13 = sub_100276660(v12);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  (*(*a2 + 32))(a2, v14);
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] - v18 > 1uLL)
  {
    *v18 = 28532;
    v17[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, "to", 2uLL);
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  if (*(*this + 9))
  {
    v21 = *this - 16;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v22 = sub_100276570(&NextResultAtOffset);
  v23 = sub_100276660(v22);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  (*(*a2 + 32))(a2, v24);
  NextResultAtOffset = v30;
  v29 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v26, NextResultAtOffset, v29);
  if (NextResultAtOffset != v30)
  {
    free(NextResultAtOffset);
  }
}

void *sub_100276570(uint64_t a1)
{
  result = (*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      sub_1002AAB00();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

void *sub_100276660(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v11 = v1;
      v12 = result;
      sub_1002AAB00();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v3 = *(v11 + 8);
      v4 = *(v11 + 16);
      if (!v4)
      {
        return result;
      }
    }

    v5 = v3;
    v6 = v4;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[2 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v6 += ~(v6 >> 1);
      if (v10 < v2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  return result;
}

BOOL sub_100276760(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_100067788(v18);
  *a2 = v5;
  a2[1] = v6;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v8 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v8;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v8;
    }

    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = sub_10005BEF4(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
      result = v8;
    }

    v12 = v22;
    if (v22)
    {
      v13 = v23;
      v14 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v22;
      }

      v23 = v12;
      operator delete(v14);
      result = v8;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Transforms::getValuesNotUsedByOps@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 24);
  v4 = *(result + 32);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v4)
  {
    v5 = result;
    v6 = v3 + 8 * v4;
    do
    {
      v7 = *(*v3 + 36);
      if (v7)
      {
        v8 = *v3 - 16;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
          v13 = *result;
          if (*result)
          {
            v16 = *(v5 + 16);
            if (v16)
            {
              v17 = *v5;
              v18 = v16 - 1;
              while (1)
              {
                v10 = v13[2];
                v11 = ((v10 >> 4) ^ (v10 >> 9)) & v18;
                v12 = *(v17 + 8 * v11);
                if (v12 != v10)
                {
                  break;
                }

LABEL_10:
                if (v11 == v16)
                {
                  goto LABEL_20;
                }

                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_23;
                }
              }

              v14 = 1;
              while (v12 != -4096)
              {
                v15 = v11 + v14++;
                v11 = v15 & v18;
                v12 = *(v17 + 8 * v11);
                if (v12 == v10)
                {
                  goto LABEL_10;
                }
              }
            }

LABEL_20:
            result = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
            v19 = *(a2 + 8);
            if (v19 >= *(a2 + 12))
            {
              v20 = result;
              llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v19 + 1, 8);
              result = v20;
              v19 = *(a2 + 8);
            }

            *(*a2 + 8 * v19) = result;
            ++*(a2 + 8);
          }

LABEL_23:
          ;
        }
      }

      v3 += 8;
    }

    while (v3 != v6);
  }

  return result;
}

void mlir::ODIE::Compiler::Transforms::fixupResultTokens(llvm *a1, uint64_t a2, uint64_t *a3)
{
  v37[0] = a1;
  v37[1] = 0;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(v37, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v5 = (v37[1] + 1);
      v37[1] = v5;
    }

    while (v5 != *(&v38 + 1));
  }

  v34 = *v37;
  v35 = v38;
  v36 = v39;
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v38) = 0;
  __src = 0;
  v6 = *(&v34 + 1);
  while (v6 != a2)
  {
    v31 = __src;
    v32 = mlir::ValueRange::dereference_iterator(&v34, v6);
    *sub_100083360(v37, &v32) = v31;
    v6 = *(&v34 + 1) + 1;
    __src = __src + 1;
    for (*(&v34 + 1) = v6; v6 != *(&v35 + 1); *(&v34 + 1) = v6)
    {
      v18 = mlir::ValueRange::dereference_iterator(&v34, v6);
      v6 = *(&v34 + 1);
      if (*(*(*(v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v6 = *(&v34 + 1) + 1;
    }
  }

  v7 = *a3;
  v8 = *(a3 + 2);
  v9 = *a3 + 8 * v8;
  v10 = *a3;
  if (v8)
  {
    v11 = 8 * v8;
    v10 = *a3;
    while (*(*(*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        __src = &v34 + 8;
        *&v34 = 0x600000000;
        v12 = &v34 + 8;
        goto LABEL_35;
      }
    }
  }

  __src = &v34 + 8;
  *&v34 = 0x600000000;
  if (v10 == v9)
  {
    LODWORD(v11) = 0;
    v12 = &v34 + 8;
    LODWORD(v34) = 0;
    v9 = v7 + 8 * v8;
    v19 = v7;
    if (!v8)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v13 = 0;
  v14 = v10;
LABEL_13:
  v15 = v13++;
  while (++v14 != v9)
  {
    if (*(*(*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      if (v14 != v9)
      {
        goto LABEL_13;
      }

      break;
    }
  }

  if (v15 < 6)
  {
    v16 = 0;
    v17 = 0;
    v12 = &v34 + 8;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v34 + 8, v13, 8);
    v16 = v34;
    v12 = __src;
    v17 = v34;
  }

  v20 = &v12[8 * v16];
  do
  {
    v21 = *v10++;
    *v20 = v21;
    if (v10 == v9)
    {
      break;
    }

    while (*(*(*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      if (++v10 == v9)
      {
        goto LABEL_34;
      }
    }

    v20 += 8;
  }

  while (v10 != v9);
LABEL_34:
  LODWORD(v11) = v17 + v13;
  v7 = *a3;
  v22 = *(a3 + 2);
  LODWORD(v34) = v11;
  v9 = v7 + 8 * v22;
  v19 = v7;
  if (v22)
  {
LABEL_35:
    v19 = v7;
    while (*(*(*(*v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      v19 += 8;
      if (v19 == v9)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_39:
  if (v19 != v9)
  {
    for (i = v19 + 8; i != v9; i += 8)
    {
      if (*(*(*(*i + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        *v19 = *i;
        v19 += 8;
      }
    }
  }

  v9 = v19;
LABEL_46:
  *(a3 + 2) = (v9 - v7) >> 3;
  v30 = v37;
  v31 = &v30;
  v24 = 126 - 2 * __clz(v11);
  if (v11)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_100277A44(v12, &v12[8 * v11], &v31, v25, 1);
  v26 = __src;
  v27 = v34;
  v28 = *(a3 + 2);
  v29 = v28 + v34;
  if (v29 > *(a3 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v29, 8);
    LODWORD(v28) = *(a3 + 2);
  }

  if (v27)
  {
    memcpy((*a3 + 8 * v28), v26, 8 * v27);
    LODWORD(v28) = *(a3 + 2);
  }

  *(a3 + 2) = v28 + v27;
  if (__src != &v34 + 8)
  {
    free(__src);
  }

  llvm::deallocate_buffer(v37[0], (16 * v38), 8uLL);
}

uint64_t mlir::ODIE::Compiler::Transforms::segmentFunctionOpInterfaceForDelegate(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, mlir::ForwardIterator *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54[0] = a5;
  v54[1] = a6;
  v7 = a1 + 64;
  v8 = *(a1 + 44);
  v9 = (v8 >> 23) & 1;
  v10 = (v8 >> 21) & 0x7F8;
  v11 = 32 * *(a1 + 40);
  v12 = (((a1 + 64 + 16 * v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11);
  if (*v12 != v12)
  {
    v58 = v60;
    v59 = 0x600000000;
    v16 = v12[1];
    if (v16)
    {
      v17 = v16 - 8;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v17 + 40);
    v19 = (v17 + 32);
    if (v18 == v19 || (v20 = *v19, v18 == *v19))
    {
      v23 = 0;
      v26 = v60;
    }

    else
    {
      do
      {
        llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
        v22 = v59;
        if (v59 >= HIDWORD(v59))
        {
          v24 = v21;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v59 + 1, 8);
          v21 = v24;
          v22 = v59;
        }

        v58[v22] = v21;
        v23 = v59 + 1;
        LODWORD(v59) = v59 + 1;
        v18 = v18[1];
      }

      while (v18 != v20);
      v25 = *(a1 + 44);
      v26 = v58;
      v9 = (v25 >> 23) & 1;
      v10 = (v25 >> 21) & 0x7F8;
      v11 = 32 * *(a1 + 40);
    }

    v53 = 0;
    v45[0] = 0;
    v45[1] = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v56[0] = v57;
    v56[1] = 0x600000000;
    v44[0] = a7;
    v44[1] = &v53;
    v44[2] = v45;
    v44[3] = v56;
    v27 = *(a1 + 24);
    v44[4] = v54;
    v44[5] = v27;
    v43[0] = a7;
    v43[1] = v45;
    v42[0] = a7;
    v42[1] = &v53;
    v28 = *(((v7 + 16 * v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8);
    if (v28)
    {
      v29 = v28 - 8;
    }

    else
    {
      v29 = 0;
    }

    v42[2] = v29;
    v42[3] = v45;
    v42[4] = v56;
    if (v23)
    {
      v30 = 8 * v23;
      while (1)
      {
        v31 = *v26;
        if (*v26)
        {
          v32 = *(*(*v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          goto LABEL_17;
        }

        {
          sub_1002AB034();
        }

        if ((*(**(v31 + 6) + 32))(*(v31 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          goto LABEL_18;
        }

        if ((a3(a4, v31) & 1) == 0)
        {
LABEL_17:
          sub_10027739C(v44, v31);
        }

        else
        {
          v33 = v53;
          if (!v53)
          {
            v34 = (((v7 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
            mlir::TypeRange::TypeRange(v55, 0, 0);
            mlir::OpBuilder::createBlock((a7 + 8), v34, 0, v55[0], v55[1], 0, 0);
          }

          v41 = *(a7 + 24);
          *(a7 + 24) = v53;
          *(a7 + 32) = v33 + 32;
          sub_1000B05C8(v31, sub_1002AC26C, v42, 0);
          mlir::RewriterBase::moveOpBefore(a7, v31, v53, v53 + 4);
          sub_1000B05C8(v31, sub_1002AC618, v43, 0);
          if (v41)
          {
            *(a7 + 24) = v41;
          }

          else
          {
            *(a7 + 24) = 0;
            *(a7 + 32) = 0;
          }
        }

LABEL_18:
        v26 += 8;
        v30 -= 8;
        if (!v30)
        {
          v35 = *(a1 + 44);
          v9 = (v35 >> 23) & 1;
          v10 = (v35 >> 21) & 0x7F8;
          v11 = 32 * *(a1 + 40);
          break;
        }
      }
    }

    v36 = *(((v7 + 16 * v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8);
    if (v36)
    {
      v37 = (v36 - 8);
    }

    else
    {
      v37 = 0;
    }

    mlir::Block::getTerminator(v37);
    sub_10027739C(v44, v38);
    if (v56[0] != v57)
    {
      free(v56[0]);
    }

    llvm::deallocate_buffer(v50, (16 * v52), 8uLL);
    llvm::deallocate_buffer(v47, (16 * v49), 8uLL);
    llvm::deallocate_buffer(v45[0], (16 * v46), 8uLL);
    if (v58 != v60)
    {
      free(v58);
    }
  }

  return 1;
}

void sub_10027739C(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = (v2 + 4);
    if (v2[4] != v2 + 4)
    {
      v5 = *a1;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 24);
      v9 = *v6;
      v20 = *(v6 + 8);
      v23 = 0;
      *v22 = 0u;
      v24 = &v26;
      v25 = 0;
      v32 = v22;
      v10 = v2[5];
      if (v10 != v3)
      {
        do
        {
          v11 = *(v10 + 1);
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
          sub_1000B05C8(v12, sub_10027795C, &v32, 1);
          v10 = v11;
        }

        while (v11 != v3);
      }

      mlir::ODIE::Compiler::Transforms::getValuesNotUsedByOps(v22, &v32);
      mlir::ValueRange::ValueRange(&v26, v2[6], (v2[7] - v2[6]) >> 3);
      mlir::ODIE::Compiler::Transforms::fixupResultTokens(v26, v27, &v32);
      v5[3] = v2;
      v5[4] = v3;
      sub_100277740(v5 + 1, v7, &v32);
      v13 = *(a2 + 16);
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
      v5[3] = v13;
      v5[4] = v14;
      v15 = v5[1];
      mlir::ValueRange::ValueRange(&Results, *v8, *(v8 + 8));
      mlir::TypeRange::TypeRange(&v26, Results, v31);
      v16 = v26;
      v17 = v27;
      mlir::ValueRange::ValueRange(v29, v32, v33);
      mlir::TypeRange::TypeRange(&v26, v29[0], v29[1]);
      v21 = mlir::FunctionType::get(v15, v16, v17, v26, v27);
      Results = mlir::FunctionType::getResults(&v21);
      v31 = v18;
      v28 = 261;
      v26 = v9;
      v27 = v20;
      v29[0] = mlir::Builder::getStringAttr(v5 + 1, &v26, v19);
      sub_100277838(v5 + 1, v7, &Results, v8, v29);
    }
  }
}

char *sub_100277740(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    sub_1002AC7BC(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::ODIE::Compiler::CoreML::YieldOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void sub_100277838(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v14, a2, v11);
    mlir::TypeRange::TypeRange(v16, *a3, *(a3 + 8));
    mlir::ValueRange::ValueRange(v15, *a4, *(a4 + 8));
    mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::build(a1, v14, v16[0], v16[1], v15[0], v15[1], *a5, 0, 0);
  }

  sub_1002AC800(v14, v16, v15);
}

void sub_10027795C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  sub_100153A08(v2, &v5, v6);
  if (v6[16] == 1)
  {
    v3 = v5;
    v4 = *(v2 + 32);
    if (v4 >= *(v2 + 36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, (v2 + 40), v4 + 1, 8);
      LODWORD(v4) = *(v2 + 32);
    }

    *(*(v2 + 24) + 8 * v4) = v3;
    ++*(v2 + 32);
  }
}

uint64_t sub_1002779E8(uint64_t a1, uint64_t a2)
{
  ParentOp = *(a2 + 16);
  while (1)
  {
    v3 = *(ParentOp + 16);
    if (!v3)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v3);
    if (!ParentOp)
    {
      break;
    }

    if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_100277A44(unint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v527 = result;
LABEL_2:
  v513 = a2 - 1;
  v6 = v527;
  while (1)
  {
    v7 = a2 - v6;
    v527 = v6;
    if (v7 > 2)
    {
      v8 = v6;
      switch(v7)
      {
        case 3:
          return sub_10027A7F0(v6, v6 + 1, v513, a3);
        case 4:
          return sub_10027AAF4(v6, v6 + 1, v6 + 2, v513, a3);
        case 5:
          return sub_10027ACF0(v6, v6 + 1, v6 + 2, v6 + 3, v513, a3);
      }

      goto LABEL_10;
    }

    if (v7 < 2)
    {
      return result;
    }

    v8 = v6;
    if (v7 == 2)
    {
      break;
    }

LABEL_10:
    if (v7 <= 23)
    {
      v280 = v8 + 1;
      v282 = v8 == a2 || v280 == a2;
      if (a5)
      {
        if (v282)
        {
          return result;
        }

        v283 = v6;
LABEL_438:
        v285 = v280;
        v286 = *v283;
        v287 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v283[1]);
        if (HandleForToken)
        {
          v288 = *sub_100083360(*v287, &HandleForToken);
          v289 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v286);
          HandleForToken = result;
          if (result)
          {
            goto LABEL_440;
          }
        }

        else
        {
          v288 = -1;
          v289 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v286);
          HandleForToken = result;
          if (result)
          {
LABEL_440:
            result = sub_100083360(*v289, &HandleForToken);
            if (v288 >= *result)
            {
              goto LABEL_437;
            }

LABEL_444:
            v290 = *v285;
            v284 = v285;
            while (1)
            {
              while (1)
              {
                *v284 = *v283;
                if (v283 == v527)
                {
                  v284 = v527;
LABEL_436:
                  *v284 = v290;
LABEL_437:
                  v280 = v285 + 1;
                  v283 = v285;
                  if (v285 + 1 == a2)
                  {
                    return result;
                  }

                  goto LABEL_438;
                }

                v284 = v283;
                v292 = *--v283;
                v291 = v292;
                v293 = *a3;
                v294 = mlir::ODIE::Compiler::getHandleForToken(v290);
                if (v294)
                {
                  break;
                }

                v307 = -1;
                v308 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v291);
                if (result)
                {
                  goto LABEL_467;
                }

LABEL_445:
                if (v307 >= -1)
                {
                  goto LABEL_436;
                }
              }

              v295 = *v293;
              v296 = *(v295 + 16);
              if (!v296)
              {
                break;
              }

              v297 = 0x9DDFEA08EB382D69 * ((8 * v294 - 0xAE502812AA7333) ^ HIDWORD(v294));
              v298 = 0x9DDFEA08EB382D69 * (HIDWORD(v294) ^ (v297 >> 47) ^ v297);
              v299 = v296 - 1;
              v300 = (v296 - 1) & (-348639895 * ((v298 >> 47) ^ v298));
              v301 = (*v295 + 16 * v300);
              v302 = *v301;
              if (*v301 == v294)
              {
                goto LABEL_466;
              }

              v303 = 0;
              v304 = 1;
              while (v302 != -4096)
              {
                if (v303)
                {
                  v305 = 0;
                }

                else
                {
                  v305 = v302 == -8192;
                }

                if (v305)
                {
                  v303 = v301;
                }

                v306 = v300 + v304++;
                v300 = v306 & v299;
                v301 = (*v295 + 16 * (v306 & v299));
                v302 = *v301;
                if (*v301 == v294)
                {
                  goto LABEL_466;
                }
              }

              if (v303)
              {
                v301 = v303;
              }

              v321 = *(v295 + 8);
              if (4 * v321 + 4 >= 3 * v296)
              {
                break;
              }

              if (v296 + ~v321 - *(v295 + 12) <= v296 >> 3)
              {
                v322 = v294;
LABEL_494:
                sub_100083608(v295, v296);
                v325 = *(v295 + 16);
                if (v325)
                {
                  v294 = v322;
                  v326 = 0x9DDFEA08EB382D69 * ((8 * v322 - 0xAE502812AA7333) ^ HIDWORD(v322));
                  v327 = 0x9DDFEA08EB382D69 * (HIDWORD(v322) ^ (v326 >> 47) ^ v326);
                  LODWORD(v326) = -348639895 * ((v327 >> 47) ^ v327);
                  v328 = v325 - 1;
                  v329 = (v325 - 1) & v326;
                  v301 = (*v295 + 16 * v329);
                  v330 = *v301;
                  if (*v301 != v322)
                  {
                    v331 = 0;
                    v332 = 1;
                    while (v330 != -4096)
                    {
                      if (v331)
                      {
                        v333 = 0;
                      }

                      else
                      {
                        v333 = v330 == -8192;
                      }

                      if (v333)
                      {
                        v331 = v301;
                      }

                      v334 = v329 + v332++;
                      v329 = v334 & v328;
                      v301 = (*v295 + 16 * (v334 & v328));
                      v330 = *v301;
                      if (*v301 == v322)
                      {
                        goto LABEL_518;
                      }
                    }

                    if (v331)
                    {
                      v301 = v331;
                    }
                  }
                }

                else
                {
                  v301 = 0;
                  v294 = v322;
                }

LABEL_518:
                ++*(v295 + 8);
                if (*v301 == -4096)
                {
                  goto LABEL_465;
                }

LABEL_464:
                --*(v295 + 12);
                goto LABEL_465;
              }

              *(v295 + 8) = v321 + 1;
              if (*v301 != -4096)
              {
                goto LABEL_464;
              }

LABEL_465:
              *v301 = v294;
              v301[1] = 0;
LABEL_466:
              v307 = *(v301 + 2);
              v308 = *a3;
              result = mlir::ODIE::Compiler::getHandleForToken(v291);
              if (!result)
              {
                goto LABEL_445;
              }

LABEL_467:
              v309 = *v308;
              v310 = *(*v308 + 16);
              if (!v310)
              {
                goto LABEL_492;
              }

              v311 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
              v312 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v311 >> 47) ^ v311);
              v313 = v310 - 1;
              v314 = (v310 - 1) & (-348639895 * ((v312 >> 47) ^ v312));
              v315 = (*v309 + 16 * v314);
              v316 = *v315;
              if (*v315 != result)
              {
                v317 = 0;
                v318 = 1;
                while (v316 != -4096)
                {
                  if (v317)
                  {
                    v319 = 0;
                  }

                  else
                  {
                    v319 = v316 == -8192;
                  }

                  if (v319)
                  {
                    v317 = v315;
                  }

                  v320 = v314 + v318++;
                  v314 = v320 & v313;
                  v315 = (*v309 + 16 * (v320 & v313));
                  v316 = *v315;
                  if (*v315 == result)
                  {
                    goto LABEL_483;
                  }
                }

                if (v317)
                {
                  v315 = v317;
                }

                v323 = *(v309 + 8);
                if (4 * v323 + 4 >= 3 * v310)
                {
LABEL_492:
                  v324 = result;
                  v310 *= 2;
                  goto LABEL_506;
                }

                if (v310 + ~v323 - *(v309 + 12) <= v310 >> 3)
                {
                  v324 = result;
LABEL_506:
                  sub_100083608(v309, v310);
                  v335 = *(v309 + 16);
                  if (v335)
                  {
                    result = v324;
                    v336 = 0x9DDFEA08EB382D69 * ((8 * v324 - 0xAE502812AA7333) ^ HIDWORD(v324));
                    v337 = 0x9DDFEA08EB382D69 * (HIDWORD(v324) ^ (v336 >> 47) ^ v336);
                    LODWORD(v336) = -348639895 * ((v337 >> 47) ^ v337);
                    v338 = v335 - 1;
                    v339 = (v335 - 1) & v336;
                    v315 = (*v309 + 16 * v339);
                    v340 = *v315;
                    if (*v315 != v324)
                    {
                      v341 = 0;
                      v342 = 1;
                      while (v340 != -4096)
                      {
                        if (v341)
                        {
                          v343 = 0;
                        }

                        else
                        {
                          v343 = v340 == -8192;
                        }

                        if (v343)
                        {
                          v341 = v315;
                        }

                        v344 = v339 + v342++;
                        v339 = v344 & v338;
                        v315 = (*v309 + 16 * (v344 & v338));
                        v340 = *v315;
                        if (*v315 == v324)
                        {
                          goto LABEL_521;
                        }
                      }

                      if (v341)
                      {
                        v315 = v341;
                      }
                    }
                  }

                  else
                  {
                    v315 = 0;
                    result = v324;
                  }

LABEL_521:
                  ++*(v309 + 8);
                  if (*v315 != -4096)
                  {
LABEL_481:
                    --*(v309 + 12);
                  }
                }

                else
                {
                  *(v309 + 8) = v323 + 1;
                  if (*v315 != -4096)
                  {
                    goto LABEL_481;
                  }
                }

                *v315 = result;
                v315[1] = 0;
              }

LABEL_483:
              if (v307 >= *(v315 + 2))
              {
                goto LABEL_436;
              }
            }

            v322 = v294;
            v296 *= 2;
            goto LABEL_494;
          }
        }

        if (v288 >= -1)
        {
          goto LABEL_437;
        }

        goto LABEL_444;
      }

      if (v282)
      {
        return result;
      }

      while (1)
      {
        v447 = v280;
        v448 = *v527;
        v449 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v527[1]);
        if (HandleForToken)
        {
          v450 = *sub_100083360(*v449, &HandleForToken);
          v451 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v448);
          HandleForToken = result;
          if (!result)
          {
            goto LABEL_685;
          }
        }

        else
        {
          v450 = -1;
          v451 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v448);
          HandleForToken = result;
          if (!result)
          {
LABEL_685:
            if (v450 >= -1)
            {
              goto LABEL_679;
            }

LABEL_686:
            v452 = *v447;
            v453 = v447;
            while (2)
            {
              while (2)
              {
                v454 = v453;
                v453 = v527;
                *v454 = *v527;
                v455 = *--v527;
                v456 = *a3;
                v457 = mlir::ODIE::Compiler::getHandleForToken(v452);
                if (v457)
                {
                  v458 = *v456;
                  v459 = *(v458 + 16);
                  if (!v459)
                  {
                    goto LABEL_729;
                  }

                  v460 = 0x9DDFEA08EB382D69 * ((8 * v457 - 0xAE502812AA7333) ^ HIDWORD(v457));
                  v461 = 0x9DDFEA08EB382D69 * (HIDWORD(v457) ^ (v460 >> 47) ^ v460);
                  v462 = v459 - 1;
                  v463 = (v459 - 1) & (-348639895 * ((v461 >> 47) ^ v461));
                  v464 = (*v458 + 16 * v463);
                  v465 = *v464;
                  if (*v464 != v457)
                  {
                    v466 = 0;
                    v467 = 1;
                    while (v465 != -4096)
                    {
                      if (v466)
                      {
                        v468 = 0;
                      }

                      else
                      {
                        v468 = v465 == -8192;
                      }

                      if (v468)
                      {
                        v466 = v464;
                      }

                      v469 = v463 + v467++;
                      v463 = v469 & v462;
                      v464 = (*v458 + 16 * (v469 & v462));
                      v465 = *v464;
                      if (*v464 == v457)
                      {
                        goto LABEL_707;
                      }
                    }

                    if (v466)
                    {
                      v464 = v466;
                    }

                    v484 = *(v458 + 8);
                    if (4 * v484 + 4 >= 3 * v459)
                    {
LABEL_729:
                      v485 = v457;
                      v459 *= 2;
                      goto LABEL_735;
                    }

                    if (v459 + ~v484 - *(v458 + 12) <= v459 >> 3)
                    {
                      v485 = v457;
LABEL_735:
                      sub_100083608(v458, v459);
                      v488 = *(v458 + 16);
                      if (v488)
                      {
                        v457 = v485;
                        v489 = 0x9DDFEA08EB382D69 * ((8 * v485 - 0xAE502812AA7333) ^ HIDWORD(v485));
                        v490 = 0x9DDFEA08EB382D69 * (HIDWORD(v485) ^ (v489 >> 47) ^ v489);
                        LODWORD(v489) = -348639895 * ((v490 >> 47) ^ v490);
                        v491 = v488 - 1;
                        v492 = (v488 - 1) & v489;
                        v464 = (*v458 + 16 * v492);
                        v493 = *v464;
                        if (*v464 != v485)
                        {
                          v494 = 0;
                          v495 = 1;
                          while (v493 != -4096)
                          {
                            if (v494)
                            {
                              v496 = 0;
                            }

                            else
                            {
                              v496 = v493 == -8192;
                            }

                            if (v496)
                            {
                              v494 = v464;
                            }

                            v497 = v492 + v495++;
                            v492 = v497 & v491;
                            v464 = (*v458 + 16 * (v497 & v491));
                            v493 = *v464;
                            if (*v464 == v485)
                            {
                              goto LABEL_759;
                            }
                          }

                          if (v494)
                          {
                            v464 = v494;
                          }
                        }
                      }

                      else
                      {
                        v464 = 0;
                        v457 = v485;
                      }

LABEL_759:
                      ++*(v458 + 8);
                      if (*v464 != -4096)
                      {
LABEL_705:
                        --*(v458 + 12);
                      }
                    }

                    else
                    {
                      *(v458 + 8) = v484 + 1;
                      if (*v464 != -4096)
                      {
                        goto LABEL_705;
                      }
                    }

                    *v464 = v457;
                    v464[1] = 0;
                  }

LABEL_707:
                  v470 = *(v464 + 2);
                  v471 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v455);
                  if (!result)
                  {
LABEL_687:
                    if (v470 >= -1)
                    {
                      goto LABEL_678;
                    }

                    continue;
                  }
                }

                else
                {
                  v470 = -1;
                  v471 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v455);
                  if (!result)
                  {
                    goto LABEL_687;
                  }
                }

                break;
              }

              v472 = *v471;
              v473 = *(*v471 + 16);
              if (v473)
              {
                v474 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
                v475 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v474 >> 47) ^ v474);
                v476 = v473 - 1;
                v477 = (v473 - 1) & (-348639895 * ((v475 >> 47) ^ v475));
                v478 = (*v472 + 16 * v477);
                v479 = *v478;
                if (*v478 != result)
                {
                  v480 = 0;
                  v481 = 1;
                  while (v479 != -4096)
                  {
                    if (v480)
                    {
                      v482 = 0;
                    }

                    else
                    {
                      v482 = v479 == -8192;
                    }

                    if (v482)
                    {
                      v480 = v478;
                    }

                    v483 = v477 + v481++;
                    v477 = v483 & v476;
                    v478 = (*v472 + 16 * (v483 & v476));
                    v479 = *v478;
                    if (*v478 == result)
                    {
                      goto LABEL_724;
                    }
                  }

                  if (v480)
                  {
                    v478 = v480;
                  }

                  v486 = *(v472 + 8);
                  if (4 * v486 + 4 >= 3 * v473)
                  {
                    break;
                  }

                  if (v473 + ~v486 - *(v472 + 12) > v473 >> 3)
                  {
                    *(v472 + 8) = v486 + 1;
                    if (*v478 != -4096)
                    {
                      goto LABEL_722;
                    }

                    goto LABEL_723;
                  }

                  v487 = result;
LABEL_747:
                  sub_100083608(v472, v473);
                  v498 = *(v472 + 16);
                  if (v498)
                  {
                    result = v487;
                    v499 = 0x9DDFEA08EB382D69 * ((8 * v487 - 0xAE502812AA7333) ^ HIDWORD(v487));
                    v500 = 0x9DDFEA08EB382D69 * (HIDWORD(v487) ^ (v499 >> 47) ^ v499);
                    LODWORD(v499) = -348639895 * ((v500 >> 47) ^ v500);
                    v501 = v498 - 1;
                    v502 = (v498 - 1) & v499;
                    v478 = (*v472 + 16 * v502);
                    v503 = *v478;
                    if (*v478 != v487)
                    {
                      v504 = 0;
                      v505 = 1;
                      while (v503 != -4096)
                      {
                        if (v504)
                        {
                          v506 = 0;
                        }

                        else
                        {
                          v506 = v503 == -8192;
                        }

                        if (v506)
                        {
                          v504 = v478;
                        }

                        v507 = v502 + v505++;
                        v502 = v507 & v501;
                        v478 = (*v472 + 16 * (v507 & v501));
                        v503 = *v478;
                        if (*v478 == v487)
                        {
                          goto LABEL_762;
                        }
                      }

                      if (v504)
                      {
                        v478 = v504;
                      }
                    }
                  }

                  else
                  {
                    v478 = 0;
                    result = v487;
                  }

LABEL_762:
                  ++*(v472 + 8);
                  if (*v478 != -4096)
                  {
LABEL_722:
                    --*(v472 + 12);
                  }

LABEL_723:
                  *v478 = result;
                  v478[1] = 0;
                }

LABEL_724:
                if (v470 >= *(v478 + 2))
                {
LABEL_678:
                  *v453 = v452;
                  goto LABEL_679;
                }

                continue;
              }

              break;
            }

            v487 = result;
            v473 *= 2;
            goto LABEL_747;
          }
        }

        result = sub_100083360(*v451, &HandleForToken);
        if (v450 < *result)
        {
          goto LABEL_686;
        }

LABEL_679:
        v280 = v447 + 1;
        v527 = v447;
        if (v447 + 1 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v8 == a2)
      {
        return result;
      }

      v345 = (v7 - 2) >> 1;
      v521 = a2 - v6;
      v524 = v345;
      v346 = v6;
      while (1)
      {
        v347 = v345;
        if (v524 < v345)
        {
          goto LABEL_532;
        }

        v511 = v345;
        v348 = (2 * v345) | 1;
        v349 = &v346[v348];
        v350 = 2 * v345 + 2;
        if (v350 < v7)
        {
          break;
        }

LABEL_543:
        v347 = v511;
        v356 = &v346[v511];
        v357 = *v356;
        v358 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
        if (HandleForToken)
        {
          v359 = *sub_100083360(*v358, &HandleForToken);
          v360 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v357);
          HandleForToken = result;
          if (!result)
          {
            goto LABEL_548;
          }
        }

        else
        {
          v359 = -1;
          v360 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v357);
          HandleForToken = result;
          if (!result)
          {
LABEL_548:
            v346 = v527;
            v7 = v521;
            if (v359 >= -1)
            {
LABEL_549:
              v518 = *v356;
              while (1)
              {
                while (1)
                {
                  v361 = v349;
                  *v356 = *v349;
                  if (v524 < v348)
                  {
LABEL_531:
                    *v361 = v518;
                    v347 = v511;
                    goto LABEL_532;
                  }

                  v362 = (2 * v348) | 1;
                  v349 = &v346[v362];
                  v363 = 2 * v348 + 2;
                  if (v363 < v7)
                  {
                    break;
                  }

                  v348 = (2 * v348) | 1;
                  v368 = *a3;
                  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
                  if (!HandleForToken)
                  {
                    goto LABEL_565;
                  }

LABEL_557:
                  v369 = *sub_100083360(*v368, &HandleForToken);
                  v370 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v518);
                  HandleForToken = result;
                  if (!result)
                  {
                    goto LABEL_566;
                  }

LABEL_550:
                  result = sub_100083360(*v370, &HandleForToken);
                  v7 = v521;
                  v356 = v361;
                  if (v369 < *result)
                  {
                    goto LABEL_531;
                  }
                }

                v364 = v349[1];
                v365 = *a3;
                HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
                if (HandleForToken)
                {
                  v514 = *sub_100083360(*v365, &HandleForToken);
                  v366 = *a3;
                  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v364);
                  if (HandleForToken)
                  {
                    goto LABEL_555;
                  }
                }

                else
                {
                  v514 = -1;
                  v366 = *a3;
                  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v364);
                  if (HandleForToken)
                  {
LABEL_555:
                    v367 = *sub_100083360(*v366, &HandleForToken);
                    goto LABEL_561;
                  }
                }

                v367 = -1;
LABEL_561:
                if (v514 >= v367)
                {
                  v348 = v362;
                }

                else
                {
                  ++v349;
                  v348 = v363;
                }

                v346 = v527;
                v368 = *a3;
                HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
                if (HandleForToken)
                {
                  goto LABEL_557;
                }

LABEL_565:
                v369 = -1;
                v370 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v518);
                HandleForToken = result;
                if (result)
                {
                  goto LABEL_550;
                }

LABEL_566:
                v7 = v521;
                v356 = v361;
                if (v369 < -1)
                {
                  goto LABEL_531;
                }
              }
            }

            goto LABEL_532;
          }
        }

        result = sub_100083360(*v360, &HandleForToken);
        v346 = v527;
        v7 = v521;
        if (v359 >= *result)
        {
          goto LABEL_549;
        }

LABEL_532:
        v345 = v347 - 1;
        if (!v347)
        {
          while (1)
          {
            v372 = 0;
            v373 = v527;
            v515 = *v527;
            v374 = (v7 - 2) >> 1;
            v519 = v374;
            v522 = v7;
            do
            {
              while (1)
              {
                v375 = &v373[v372];
                v376 = v375 + 1;
                v377 = (2 * v372) | 1;
                v378 = 2 * v372 + 2;
                if (v378 < v7)
                {
                  break;
                }

                v372 = (2 * v372) | 1;
                *v373 = *v376;
                v373 = v375 + 1;
                if (v377 > v374)
                {
                  goto LABEL_659;
                }
              }

              v381 = v375[2];
              v380 = v375 + 2;
              v379 = v381;
              v382 = *a3;
              v383 = mlir::ODIE::Compiler::getHandleForToken(*(v380 - 1));
              if (!v383)
              {
                v525 = -1;
                v396 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v379);
                if (!result)
                {
                  goto LABEL_586;
                }

                goto LABEL_593;
              }

              v384 = *v382;
              v385 = *(v384 + 16);
              if (!v385)
              {
                goto LABEL_618;
              }

              v386 = 0x9DDFEA08EB382D69 * ((8 * v383 - 0xAE502812AA7333) ^ HIDWORD(v383));
              v387 = 0x9DDFEA08EB382D69 * (HIDWORD(v383) ^ (v386 >> 47) ^ v386);
              v388 = v385 - 1;
              v389 = (v385 - 1) & (-348639895 * ((v387 >> 47) ^ v387));
              v390 = (*v384 + 16 * v389);
              v391 = *v390;
              if (*v390 == v383)
              {
                goto LABEL_592;
              }

              v392 = 0;
              v393 = 1;
              while (v391 != -4096)
              {
                if (v392)
                {
                  v394 = 0;
                }

                else
                {
                  v394 = v391 == -8192;
                }

                if (v394)
                {
                  v392 = v390;
                }

                v395 = v389 + v393++;
                v389 = v395 & v388;
                v390 = (*v384 + 16 * (v395 & v388));
                v391 = *v390;
                if (*v390 == v383)
                {
                  goto LABEL_592;
                }
              }

              if (v392)
              {
                v390 = v392;
              }

              v410 = *(v384 + 8);
              if (4 * v410 + 4 >= 3 * v385)
              {
LABEL_618:
                v526 = v383;
                v385 *= 2;
                goto LABEL_624;
              }

              if (v385 + ~v410 - *(v384 + 12) <= v385 >> 3)
              {
                v526 = v383;
LABEL_624:
                sub_100083608(v384, v385);
                v412 = *(v384 + 16);
                if (v412)
                {
                  v383 = v526;
                  v413 = 0x9DDFEA08EB382D69 * ((8 * v526 - 0xAE502812AA7333) ^ HIDWORD(v526));
                  v414 = 0x9DDFEA08EB382D69 * (HIDWORD(v526) ^ (v413 >> 47) ^ v413);
                  LODWORD(v413) = -348639895 * ((v414 >> 47) ^ v414);
                  v415 = v412 - 1;
                  v416 = (v412 - 1) & v413;
                  v390 = (*v384 + 16 * v416);
                  v417 = *v390;
                  if (*v390 != v526)
                  {
                    v418 = 0;
                    v419 = 1;
                    while (v417 != -4096)
                    {
                      if (v418)
                      {
                        v420 = 0;
                      }

                      else
                      {
                        v420 = v417 == -8192;
                      }

                      if (v420)
                      {
                        v418 = v390;
                      }

                      v421 = v416 + v419++;
                      v416 = v421 & v415;
                      v390 = (*v384 + 16 * (v421 & v415));
                      v417 = *v390;
                      if (*v390 == v526)
                      {
                        goto LABEL_648;
                      }
                    }

                    if (v418)
                    {
                      v390 = v418;
                    }
                  }
                }

                else
                {
                  v390 = 0;
                  v383 = v526;
                }

LABEL_648:
                ++*(v384 + 8);
                if (*v390 == -4096)
                {
                  goto LABEL_591;
                }

LABEL_590:
                --*(v384 + 12);
                goto LABEL_591;
              }

              *(v384 + 8) = v410 + 1;
              if (*v390 != -4096)
              {
                goto LABEL_590;
              }

LABEL_591:
              *v390 = v383;
              v390[1] = 0;
LABEL_592:
              v525 = *(v390 + 2);
              v396 = *a3;
              result = mlir::ODIE::Compiler::getHandleForToken(v379);
              if (!result)
              {
LABEL_586:
                v397 = -1;
                goto LABEL_610;
              }

LABEL_593:
              v398 = *v396;
              v399 = *(*v396 + 16);
              if (!v399)
              {
                goto LABEL_622;
              }

              v400 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
              v401 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v400 >> 47) ^ v400);
              v402 = v399 - 1;
              v403 = (v399 - 1) & (-348639895 * ((v401 >> 47) ^ v401));
              v404 = (*v398 + 16 * v403);
              v405 = *v404;
              if (*v404 != result)
              {
                v406 = 0;
                v407 = 1;
                while (v405 != -4096)
                {
                  if (v406)
                  {
                    v408 = 0;
                  }

                  else
                  {
                    v408 = v405 == -8192;
                  }

                  if (v408)
                  {
                    v406 = v404;
                  }

                  v409 = v403 + v407++;
                  v403 = v409 & v402;
                  v404 = (*v398 + 16 * (v409 & v402));
                  v405 = *v404;
                  if (*v404 == result)
                  {
                    goto LABEL_609;
                  }
                }

                if (v406)
                {
                  v404 = v406;
                }

                v411 = *(v398 + 8);
                if (4 * v411 + 4 >= 3 * v399)
                {
LABEL_622:
                  v512 = result;
                  v399 *= 2;
                  goto LABEL_636;
                }

                if (v399 + ~v411 - *(v398 + 12) <= v399 >> 3)
                {
                  v512 = result;
LABEL_636:
                  sub_100083608(v398, v399);
                  v422 = *(v398 + 16);
                  if (v422)
                  {
                    result = v512;
                    v423 = 0x9DDFEA08EB382D69 * ((8 * v512 - 0xAE502812AA7333) ^ HIDWORD(v512));
                    v424 = 0x9DDFEA08EB382D69 * (HIDWORD(v512) ^ (v423 >> 47) ^ v423);
                    LODWORD(v423) = -348639895 * ((v424 >> 47) ^ v424);
                    v425 = v422 - 1;
                    v426 = (v422 - 1) & v423;
                    v404 = (*v398 + 16 * v426);
                    v427 = *v404;
                    if (*v404 != v512)
                    {
                      v428 = 0;
                      v429 = 1;
                      while (v427 != -4096)
                      {
                        if (v428)
                        {
                          v430 = 0;
                        }

                        else
                        {
                          v430 = v427 == -8192;
                        }

                        if (v430)
                        {
                          v428 = v404;
                        }

                        v431 = v426 + v429++;
                        v426 = v431 & v425;
                        v404 = (*v398 + 16 * (v431 & v425));
                        v427 = *v404;
                        if (*v404 == v512)
                        {
                          goto LABEL_651;
                        }
                      }

                      if (v428)
                      {
                        v404 = v428;
                      }
                    }
                  }

                  else
                  {
                    v404 = 0;
                    result = v512;
                  }

LABEL_651:
                  ++*(v398 + 8);
                  if (*v404 != -4096)
                  {
LABEL_607:
                    --*(v398 + 12);
                  }
                }

                else
                {
                  *(v398 + 8) = v411 + 1;
                  if (*v404 != -4096)
                  {
                    goto LABEL_607;
                  }
                }

                *v404 = result;
                v404[1] = 0;
              }

LABEL_609:
              v397 = *(v404 + 2);
LABEL_610:
              v374 = v519;
              v7 = v522;
              if (v525 >= v397)
              {
                v372 = v377;
              }

              else
              {
                v376 = v380;
                v372 = v378;
              }

              *v373 = *v376;
              v373 = v376;
            }

            while (v372 <= v519);
LABEL_659:
            v432 = a2 - 1;
            v49 = v376 == --a2;
            if (v49)
            {
              *v376 = v515;
              goto LABEL_569;
            }

            *v376 = *v432;
            *v432 = v515;
            v433 = (v376 - v527 + 8) >> 3;
            v371 = v433 < 2;
            v434 = v433 - 2;
            if (!v371)
            {
              v435 = v434 >> 1;
              v436 = &v527[v434 >> 1];
              v437 = *v376;
              v438 = *a3;
              HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v436);
              if (HandleForToken)
              {
                v439 = *sub_100083360(*v438, &HandleForToken);
                v440 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v437);
                HandleForToken = result;
                if (result)
                {
LABEL_663:
                  result = sub_100083360(*v440, &HandleForToken);
                  v441 = v527;
                  v7 = v522;
                  if (v439 >= *result)
                  {
                    goto LABEL_569;
                  }

                  goto LABEL_667;
                }
              }

              else
              {
                v439 = -1;
                v440 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v437);
                HandleForToken = result;
                if (result)
                {
                  goto LABEL_663;
                }
              }

              v441 = v527;
              v7 = v522;
              if (v439 >= -1)
              {
                goto LABEL_569;
              }

LABEL_667:
              v442 = *v376;
              while (1)
              {
                v443 = v436;
                *v376 = *v436;
                if (!v435)
                {
LABEL_675:
                  *v443 = v442;
                  v7 = v522;
                  break;
                }

                v435 = (v435 - 1) >> 1;
                v436 = &v441[v435];
                v444 = *a3;
                HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v436);
                if (HandleForToken)
                {
                  v445 = *sub_100083360(*v444, &HandleForToken);
                  v446 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v442);
                  HandleForToken = result;
                  if (result)
                  {
                    goto LABEL_668;
                  }
                }

                else
                {
                  v445 = -1;
                  v446 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v442);
                  HandleForToken = result;
                  if (result)
                  {
LABEL_668:
                    result = sub_100083360(*v446, &HandleForToken);
                    v376 = v443;
                    v441 = v527;
                    if (v445 >= *result)
                    {
                      goto LABEL_675;
                    }

                    continue;
                  }
                }

                v376 = v443;
                v441 = v527;
                if (v445 >= -1)
                {
                  goto LABEL_675;
                }
              }
            }

LABEL_569:
            v371 = v7-- <= 2;
            if (v371)
            {
              return result;
            }
          }
        }
      }

      v351 = v349[1];
      v352 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v349);
      if (HandleForToken)
      {
        v353 = *sub_100083360(*v352, &HandleForToken);
        v354 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v351);
        if (HandleForToken)
        {
LABEL_537:
          v355 = *sub_100083360(*v354, &HandleForToken);
LABEL_540:
          if (v353 < v355)
          {
            ++v349;
            v348 = v350;
          }

          v346 = v527;
          goto LABEL_543;
        }
      }

      else
      {
        v353 = -1;
        v354 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v351);
        if (HandleForToken)
        {
          goto LABEL_537;
        }
      }

      v355 = -1;
      goto LABEL_540;
    }

    v9 = v7 >> 1;
    v10 = &v8[v7 >> 1];
    if (v7 < 0x81)
    {
      sub_10027A7F0(&v8[v7 >> 1], v8, v513, a3);
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_19:
      v17 = 0;
      v18 = *v8;
      do
      {
        while (1)
        {
          v19 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v8[v17 + 1]);
          if (HandleForToken)
          {
            break;
          }

          v20 = -1;
          v21 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
          if (!HandleForToken)
          {
            goto LABEL_25;
          }

LABEL_20:
          ++v17;
          if (v20 >= *sub_100083360(*v21, &HandleForToken))
          {
            goto LABEL_26;
          }
        }

        v20 = *sub_100083360(*v19, &HandleForToken);
        v21 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
        if (HandleForToken)
        {
          goto LABEL_20;
        }

LABEL_25:
        ++v17;
      }

      while (v20 < -1);
LABEL_26:
      v22 = &v8[v17];
      v23 = a2;
      if (v17 == 1)
      {
        v23 = a2;
        while (1)
        {
          if (v22 >= v23)
          {
            goto LABEL_42;
          }

          v28 = *--v23;
          v29 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v28);
          if (HandleForToken)
          {
            v30 = *sub_100083360(*v29, &HandleForToken);
            v31 = *a3;
            HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (!HandleForToken)
            {
              goto LABEL_41;
            }

LABEL_35:
            if (v30 < *sub_100083360(*v31, &HandleForToken))
            {
              goto LABEL_42;
            }
          }

          else
          {
            v30 = -1;
            v31 = *a3;
            HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (HandleForToken)
            {
              goto LABEL_35;
            }

LABEL_41:
            if (v30 < -1)
            {
              goto LABEL_42;
            }
          }
        }
      }

      while (2)
      {
        while (2)
        {
          v24 = *--v23;
          v25 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v24);
          if (HandleForToken)
          {
            v26 = *sub_100083360(*v25, &HandleForToken);
            v27 = *a3;
            HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (!HandleForToken)
            {
              break;
            }

            goto LABEL_28;
          }

          v26 = -1;
          v27 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
          if (HandleForToken)
          {
LABEL_28:
            if (v26 < *sub_100083360(*v27, &HandleForToken))
            {
              goto LABEL_42;
            }

            continue;
          }

          break;
        }

        if (v26 >= -1)
        {
          continue;
        }

        break;
      }

LABEL_42:
      v520 = v22;
      if (v22 < v23)
      {
        v32 = v23;
        v33 = v22;
        while (1)
        {
          v34 = *v33;
          *v33 = *v32;
          *v32 = v34;
          do
          {
            while (1)
            {
              v35 = v33;
              v36 = v33[1];
              ++v33;
              v37 = *a3;
              v38 = mlir::ODIE::Compiler::getHandleForToken(v36);
              if (!v38)
              {
                break;
              }

              v39 = *v37;
              v40 = *(*v37 + 16);
              if (!v40)
              {
                goto LABEL_88;
              }

              v41 = 0x9DDFEA08EB382D69 * ((8 * v38 - 0xAE502812AA7333) ^ HIDWORD(v38));
              v42 = 0x9DDFEA08EB382D69 * (HIDWORD(v38) ^ (v41 >> 47) ^ v41);
              v43 = v40 - 1;
              v44 = (v40 - 1) & (-348639895 * ((v42 >> 47) ^ v42));
              v45 = (*v39 + 16 * v44);
              v46 = *v45;
              if (*v45 == v38)
              {
                goto LABEL_66;
              }

              v47 = 0;
              v48 = 1;
              while (v46 != -4096)
              {
                if (v47)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = v46 == -8192;
                }

                if (v49)
                {
                  v47 = v45;
                }

                v50 = v44 + v48++;
                v44 = v50 & v43;
                v45 = (*v39 + 16 * (v50 & v43));
                v46 = *v45;
                if (*v45 == v38)
                {
                  goto LABEL_66;
                }
              }

              if (v47)
              {
                v45 = v47;
              }

              v66 = *(v39 + 8);
              if (4 * v66 + 4 >= 3 * v40)
              {
LABEL_88:
                v67 = v38;
                sub_100083608(v39, 2 * v40);
                v68 = *(v39 + 16);
                if (v68)
                {
LABEL_89:
                  v38 = v67;
                  v69 = 0x9DDFEA08EB382D69 * ((8 * v67 - 0xAE502812AA7333) ^ HIDWORD(v67));
                  v70 = 0x9DDFEA08EB382D69 * (HIDWORD(v67) ^ (v69 >> 47) ^ v69);
                  LODWORD(v69) = -348639895 * ((v70 >> 47) ^ v70);
                  v71 = v68 - 1;
                  v72 = (v68 - 1) & v69;
                  v45 = (*v39 + 16 * v72);
                  v73 = *v45;
                  if (*v45 != v67)
                  {
                    v74 = 0;
                    v75 = 1;
                    while (v73 != -4096)
                    {
                      if (v74)
                      {
                        v76 = 0;
                      }

                      else
                      {
                        v76 = v73 == -8192;
                      }

                      if (v76)
                      {
                        v74 = v45;
                      }

                      v77 = v72 + v75++;
                      v72 = v77 & v71;
                      v45 = (*v39 + 16 * (v77 & v71));
                      v73 = *v45;
                      if (*v45 == v67)
                      {
                        goto LABEL_115;
                      }
                    }

                    if (v74)
                    {
                      v45 = v74;
                    }
                  }

LABEL_115:
                  ++*(v39 + 8);
                  if (*v45 == -4096)
                  {
                    goto LABEL_65;
                  }

LABEL_64:
                  --*(v39 + 12);
                  goto LABEL_65;
                }

LABEL_114:
                v45 = 0;
                v38 = v67;
                goto LABEL_115;
              }

              if (v40 + ~v66 - *(v39 + 12) <= v40 >> 3)
              {
                v67 = v38;
                sub_100083608(v39, v40);
                v68 = *(v39 + 16);
                if (v68)
                {
                  goto LABEL_89;
                }

                goto LABEL_114;
              }

              *(v39 + 8) = v66 + 1;
              if (*v45 != -4096)
              {
                goto LABEL_64;
              }

LABEL_65:
              *v45 = v38;
              v45[1] = 0;
LABEL_66:
              v51 = *(v45 + 2);
              v52 = *a3;
              v53 = mlir::ODIE::Compiler::getHandleForToken(v18);
              if (v53)
              {
                goto LABEL_67;
              }

LABEL_46:
              if (v51 >= -1)
              {
                goto LABEL_128;
              }
            }

            v51 = -1;
            v52 = *a3;
            v53 = mlir::ODIE::Compiler::getHandleForToken(v18);
            if (!v53)
            {
              goto LABEL_46;
            }

LABEL_67:
            v54 = *v52;
            v55 = *(v54 + 16);
            if (!v55)
            {
              goto LABEL_102;
            }

            v56 = 0x9DDFEA08EB382D69 * ((8 * v53 - 0xAE502812AA7333) ^ HIDWORD(v53));
            v57 = 0x9DDFEA08EB382D69 * (HIDWORD(v53) ^ (v56 >> 47) ^ v56);
            v58 = v55 - 1;
            v59 = (v55 - 1) & (-348639895 * ((v57 >> 47) ^ v57));
            v60 = (*v54 + 16 * v59);
            v61 = *v60;
            if (*v60 == v53)
            {
              continue;
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
              v60 = (*v54 + 16 * (v65 & v58));
              v61 = *v60;
              if (*v60 == v53)
              {
                goto LABEL_83;
              }
            }

            if (v62)
            {
              v60 = v62;
            }

            v78 = *(v54 + 8);
            if (4 * v78 + 4 >= 3 * v55)
            {
LABEL_102:
              v509 = v53;
              sub_100083608(v54, 2 * v55);
              v79 = *(v54 + 16);
              if (v79)
              {
LABEL_103:
                v53 = v509;
                v80 = 0x9DDFEA08EB382D69 * ((8 * v509 - 0xAE502812AA7333) ^ HIDWORD(v509));
                v81 = 0x9DDFEA08EB382D69 * (HIDWORD(v509) ^ (v80 >> 47) ^ v80);
                LODWORD(v80) = -348639895 * ((v81 >> 47) ^ v81);
                v82 = v79 - 1;
                v83 = (v79 - 1) & v80;
                v60 = (*v54 + 16 * v83);
                v84 = *v60;
                if (*v60 != v509)
                {
                  v85 = 0;
                  v86 = 1;
                  while (v84 != -4096)
                  {
                    if (v85)
                    {
                      v87 = 0;
                    }

                    else
                    {
                      v87 = v84 == -8192;
                    }

                    if (v87)
                    {
                      v85 = v60;
                    }

                    v88 = v83 + v86++;
                    v83 = v88 & v82;
                    v60 = (*v54 + 16 * (v88 & v82));
                    v84 = *v60;
                    if (*v60 == v509)
                    {
                      goto LABEL_119;
                    }
                  }

                  if (v85)
                  {
                    v60 = v85;
                  }
                }

LABEL_119:
                ++*(v54 + 8);
                if (*v60 == -4096)
                {
                  goto LABEL_82;
                }

LABEL_81:
                --*(v54 + 12);
                goto LABEL_82;
              }

LABEL_118:
              v60 = 0;
              v53 = v509;
              goto LABEL_119;
            }

            if (v55 + ~v78 - *(v54 + 12) <= v55 >> 3)
            {
              v509 = v53;
              sub_100083608(v54, v55);
              v79 = *(v54 + 16);
              if (v79)
              {
                goto LABEL_103;
              }

              goto LABEL_118;
            }

            *(v54 + 8) = v78 + 1;
            if (*v60 != -4096)
            {
              goto LABEL_81;
            }

LABEL_82:
            *v60 = v53;
            v60[1] = 0;
LABEL_83:
            ;
          }

          while (v51 < *(v60 + 2));
          do
          {
            while (1)
            {
LABEL_128:
              v89 = *--v32;
              v90 = *a3;
              v91 = mlir::ODIE::Compiler::getHandleForToken(v89);
              if (!v91)
              {
                v104 = -1;
                v105 = *a3;
                v106 = mlir::ODIE::Compiler::getHandleForToken(v18);
                if (!v106)
                {
                  goto LABEL_127;
                }

                break;
              }

              v92 = *v90;
              v93 = *(*v90 + 16);
              if (!v93)
              {
                goto LABEL_169;
              }

              v94 = 0x9DDFEA08EB382D69 * ((8 * v91 - 0xAE502812AA7333) ^ HIDWORD(v91));
              v95 = 0x9DDFEA08EB382D69 * (HIDWORD(v91) ^ (v94 >> 47) ^ v94);
              v96 = v93 - 1;
              v97 = (v93 - 1) & (-348639895 * ((v95 >> 47) ^ v95));
              v98 = (*v92 + 16 * v97);
              v99 = *v98;
              if (*v98 == v91)
              {
                goto LABEL_147;
              }

              v100 = 0;
              v101 = 1;
              while (v99 != -4096)
              {
                if (v100)
                {
                  v102 = 0;
                }

                else
                {
                  v102 = v99 == -8192;
                }

                if (v102)
                {
                  v100 = v98;
                }

                v103 = v97 + v101++;
                v97 = v103 & v96;
                v98 = (*v92 + 16 * (v103 & v96));
                v99 = *v98;
                if (*v98 == v91)
                {
                  goto LABEL_147;
                }
              }

              if (v100)
              {
                v98 = v100;
              }

              v119 = *(v92 + 8);
              if (4 * v119 + 4 >= 3 * v93)
              {
LABEL_169:
                v120 = v91;
                sub_100083608(v92, 2 * v93);
                v121 = *(v92 + 16);
                if (v121)
                {
LABEL_170:
                  v91 = v120;
                  v122 = 0x9DDFEA08EB382D69 * ((8 * v120 - 0xAE502812AA7333) ^ HIDWORD(v120));
                  v123 = 0x9DDFEA08EB382D69 * (HIDWORD(v120) ^ (v122 >> 47) ^ v122);
                  LODWORD(v122) = -348639895 * ((v123 >> 47) ^ v123);
                  v124 = v121 - 1;
                  v125 = (v121 - 1) & v122;
                  v98 = (*v92 + 16 * v125);
                  v126 = *v98;
                  if (*v98 != v120)
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
                        v127 = v98;
                      }

                      v130 = v125 + v128++;
                      v125 = v130 & v124;
                      v98 = (*v92 + 16 * (v130 & v124));
                      v126 = *v98;
                      if (*v98 == v120)
                      {
                        goto LABEL_196;
                      }
                    }

                    if (v127)
                    {
                      v98 = v127;
                    }
                  }

LABEL_196:
                  ++*(v92 + 8);
                  if (*v98 == -4096)
                  {
                    goto LABEL_146;
                  }

LABEL_145:
                  --*(v92 + 12);
                  goto LABEL_146;
                }

LABEL_195:
                v98 = 0;
                v91 = v120;
                goto LABEL_196;
              }

              if (v93 + ~v119 - *(v92 + 12) <= v93 >> 3)
              {
                v120 = v91;
                sub_100083608(v92, v93);
                v121 = *(v92 + 16);
                if (v121)
                {
                  goto LABEL_170;
                }

                goto LABEL_195;
              }

              *(v92 + 8) = v119 + 1;
              if (*v98 != -4096)
              {
                goto LABEL_145;
              }

LABEL_146:
              *v98 = v91;
              v98[1] = 0;
LABEL_147:
              v104 = *(v98 + 2);
              v105 = *a3;
              v106 = mlir::ODIE::Compiler::getHandleForToken(v18);
              if (v106)
              {
                break;
              }

LABEL_127:
              if (v104 < -1)
              {
                goto LABEL_44;
              }
            }

            v107 = *v105;
            v108 = *(v107 + 16);
            if (!v108)
            {
              goto LABEL_183;
            }

            v109 = 0x9DDFEA08EB382D69 * ((8 * v106 - 0xAE502812AA7333) ^ HIDWORD(v106));
            v110 = 0x9DDFEA08EB382D69 * (HIDWORD(v106) ^ (v109 >> 47) ^ v109);
            v111 = v108 - 1;
            v112 = (v108 - 1) & (-348639895 * ((v110 >> 47) ^ v110));
            v113 = (*v107 + 16 * v112);
            v114 = *v113;
            if (*v113 == v106)
            {
              continue;
            }

            v115 = 0;
            v116 = 1;
            while (v114 != -4096)
            {
              if (v115)
              {
                v117 = 0;
              }

              else
              {
                v117 = v114 == -8192;
              }

              if (v117)
              {
                v115 = v113;
              }

              v118 = v112 + v116++;
              v112 = v118 & v111;
              v113 = (*v107 + 16 * (v118 & v111));
              v114 = *v113;
              if (*v113 == v106)
              {
                goto LABEL_164;
              }
            }

            if (v115)
            {
              v113 = v115;
            }

            v131 = *(v107 + 8);
            if (4 * v131 + 4 >= 3 * v108)
            {
LABEL_183:
              v510 = v106;
              sub_100083608(v107, 2 * v108);
              v132 = *(v107 + 16);
              if (v132)
              {
LABEL_184:
                v106 = v510;
                v133 = 0x9DDFEA08EB382D69 * ((8 * v510 - 0xAE502812AA7333) ^ HIDWORD(v510));
                v134 = 0x9DDFEA08EB382D69 * (HIDWORD(v510) ^ (v133 >> 47) ^ v133);
                LODWORD(v133) = -348639895 * ((v134 >> 47) ^ v134);
                v135 = v132 - 1;
                v136 = (v132 - 1) & v133;
                v113 = (*v107 + 16 * v136);
                v137 = *v113;
                if (*v113 != v510)
                {
                  v138 = 0;
                  v139 = 1;
                  while (v137 != -4096)
                  {
                    if (v138)
                    {
                      v140 = 0;
                    }

                    else
                    {
                      v140 = v137 == -8192;
                    }

                    if (v140)
                    {
                      v138 = v113;
                    }

                    v141 = v136 + v139++;
                    v136 = v141 & v135;
                    v113 = (*v107 + 16 * (v141 & v135));
                    v137 = *v113;
                    if (*v113 == v510)
                    {
                      goto LABEL_200;
                    }
                  }

                  if (v138)
                  {
                    v113 = v138;
                  }
                }

LABEL_200:
                ++*(v107 + 8);
                if (*v113 == -4096)
                {
                  goto LABEL_163;
                }

LABEL_162:
                --*(v107 + 12);
                goto LABEL_163;
              }

LABEL_199:
              v113 = 0;
              v106 = v510;
              goto LABEL_200;
            }

            if (v108 + ~v131 - *(v107 + 12) <= v108 >> 3)
            {
              v510 = v106;
              sub_100083608(v107, v108);
              v132 = *(v107 + 16);
              if (v132)
              {
                goto LABEL_184;
              }

              goto LABEL_199;
            }

            *(v107 + 8) = v131 + 1;
            if (*v113 != -4096)
            {
              goto LABEL_162;
            }

LABEL_163:
            *v113 = v106;
            v113[1] = 0;
LABEL_164:
            ;
          }

          while (v104 >= *(v113 + 2));
LABEL_44:
          if (v33 >= v32)
          {
            goto LABEL_209;
          }
        }
      }

      v35 = v22 - 1;
LABEL_209:
      if (v35 != v527)
      {
        *v527 = *v35;
      }

      *v35 = v18;
      if (v520 < v23)
      {
LABEL_214:
        result = sub_100277A44(v527, v35, a3, a4, a5 & 1);
        a5 = 0;
        v6 = v35 + 1;
      }

      else
      {
        v142 = sub_10027AF84(v527, v35, a3);
        v6 = v35 + 1;
        result = sub_10027AF84(v35 + 1, a2, a3);
        if (result)
        {
          a2 = v35;
          if (v142)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v142)
        {
          goto LABEL_214;
        }
      }
    }

    else
    {
      sub_10027A7F0(v8, &v8[v7 >> 1], v513, a3);
      v11 = v9;
      sub_10027A7F0(v8 + 1, &v8[v11 - 1], a2 - 2, a3);
      sub_10027A7F0(v8 + 2, &v8[v11 + 1], a2 - 3, a3);
      sub_10027A7F0(&v8[v11 - 1], v10, &v8[v11 + 1], a3);
      v12 = *v8;
      *v8 = v8[v11];
      v8[v11] = v12;
      --a4;
      if (a5)
      {
        goto LABEL_19;
      }

LABEL_16:
      v13 = *v8;
      v14 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v8 - 1));
      if (HandleForToken)
      {
        v15 = *sub_100083360(*v14, &HandleForToken);
        v16 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
        if (!HandleForToken)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v15 = -1;
        v16 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
        if (!HandleForToken)
        {
LABEL_216:
          if (v15 < -1)
          {
            goto LABEL_19;
          }

          goto LABEL_217;
        }
      }

      if (v15 < *sub_100083360(*v16, &HandleForToken))
      {
        goto LABEL_19;
      }

LABEL_217:
      v143 = *v8;
      v144 = *v513;
      v145 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v8);
      if (HandleForToken)
      {
        v146 = *sub_100083360(*v145, &HandleForToken);
        v147 = *a3;
        result = mlir::ODIE::Compiler::getHandleForToken(v144);
        HandleForToken = result;
        if (result)
        {
          goto LABEL_219;
        }
      }

      else
      {
        v146 = -1;
        v147 = *a3;
        result = mlir::ODIE::Compiler::getHandleForToken(v144);
        HandleForToken = result;
        if (result)
        {
LABEL_219:
          result = sub_100083360(*v147, &HandleForToken);
          if (v146 < *result)
          {
            goto LABEL_220;
          }

          goto LABEL_230;
        }
      }

      if (v146 < -1)
      {
LABEL_220:
        v6 = v8;
        while (1)
        {
          v149 = v6[1];
          ++v6;
          v148 = v149;
          v150 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v143);
          if (HandleForToken)
          {
            v151 = *sub_100083360(*v150, &HandleForToken);
            v152 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v148);
            HandleForToken = result;
            if (!result)
            {
              goto LABEL_226;
            }

LABEL_221:
            result = sub_100083360(*v152, &HandleForToken);
            if (v151 < *result)
            {
              goto LABEL_238;
            }
          }

          else
          {
            v151 = -1;
            v152 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v148);
            HandleForToken = result;
            if (result)
            {
              goto LABEL_221;
            }

LABEL_226:
            if (v151 < -1)
            {
              goto LABEL_238;
            }
          }
        }
      }

LABEL_230:
      v153 = v8 + 1;
      while (1)
      {
        v6 = v153;
        if (v153 >= a2)
        {
          break;
        }

        v154 = *v153;
        v155 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v143);
        if (HandleForToken)
        {
          v156 = *sub_100083360(*v155, &HandleForToken);
          v157 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v154);
          HandleForToken = result;
          if (!result)
          {
            goto LABEL_237;
          }

LABEL_231:
          result = sub_100083360(*v157, &HandleForToken);
          v153 = v6 + 1;
          if (v156 < *result)
          {
            break;
          }
        }

        else
        {
          v156 = -1;
          v157 = *a3;
          result = mlir::ODIE::Compiler::getHandleForToken(v154);
          HandleForToken = result;
          if (result)
          {
            goto LABEL_231;
          }

LABEL_237:
          v153 = v6 + 1;
          if (v156 < -1)
          {
            break;
          }
        }
      }

LABEL_238:
      v158 = a2;
      if (v6 < a2)
      {
        v158 = a2;
        while (1)
        {
          v160 = *--v158;
          v159 = v160;
          v161 = *a3;
          HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v143);
          if (HandleForToken)
          {
            v162 = *sub_100083360(*v161, &HandleForToken);
            v163 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v159);
            HandleForToken = result;
            if (!result)
            {
              goto LABEL_245;
            }

LABEL_240:
            result = sub_100083360(*v163, &HandleForToken);
            if (v162 >= *result)
            {
              break;
            }
          }

          else
          {
            v162 = -1;
            v163 = *a3;
            result = mlir::ODIE::Compiler::getHandleForToken(v159);
            HandleForToken = result;
            if (result)
            {
              goto LABEL_240;
            }

LABEL_245:
            if (v162 >= -1)
            {
              break;
            }
          }
        }
      }

LABEL_246:
      if (v6 < v158)
      {
        v164 = *v6;
        *v6 = *v158;
        *v158 = v164;
        while (2)
        {
          while (1)
          {
            v166 = v6[1];
            ++v6;
            v165 = v166;
            v167 = *a3;
            v168 = mlir::ODIE::Compiler::getHandleForToken(v143);
            if (v168)
            {
              break;
            }

            v181 = -1;
            v182 = *a3;
            v183 = mlir::ODIE::Compiler::getHandleForToken(v165);
            if (v183)
            {
              goto LABEL_269;
            }

LABEL_248:
            if (v181 < -1)
            {
              goto LABEL_332;
            }
          }

          v169 = *v167;
          v170 = *(*v167 + 16);
          if (v170)
          {
            v171 = 0x9DDFEA08EB382D69 * ((8 * v168 - 0xAE502812AA7333) ^ HIDWORD(v168));
            v172 = 0x9DDFEA08EB382D69 * (HIDWORD(v168) ^ (v171 >> 47) ^ v171);
            v173 = v170 - 1;
            v174 = (v170 - 1) & (-348639895 * ((v172 >> 47) ^ v172));
            v175 = (*v169 + 16 * v174);
            v176 = *v175;
            if (*v175 != v168)
            {
              v177 = 0;
              v178 = 1;
              while (v176 != -4096)
              {
                if (v177)
                {
                  v179 = 0;
                }

                else
                {
                  v179 = v176 == -8192;
                }

                if (v179)
                {
                  v177 = v175;
                }

                v180 = v174 + v178++;
                v174 = v180 & v173;
                v175 = (*v169 + 16 * (v180 & v173));
                v176 = *v175;
                if (*v175 == v168)
                {
                  goto LABEL_268;
                }
              }

              if (v177)
              {
                v175 = v177;
              }

              v196 = *(v169 + 8);
              if (4 * v196 + 4 >= 3 * v170)
              {
                break;
              }

              if (v170 + ~v196 - *(v169 + 12) > v170 >> 3)
              {
                *(v169 + 8) = v196 + 1;
                if (*v175 != -4096)
                {
                  goto LABEL_266;
                }

                goto LABEL_267;
              }

              v197 = v168;
LABEL_296:
              sub_100083608(v169, v170);
              v200 = *(v169 + 16);
              if (v200)
              {
                v168 = v197;
                v201 = 0x9DDFEA08EB382D69 * ((8 * v197 - 0xAE502812AA7333) ^ HIDWORD(v197));
                v202 = 0x9DDFEA08EB382D69 * (HIDWORD(v197) ^ (v201 >> 47) ^ v201);
                LODWORD(v201) = -348639895 * ((v202 >> 47) ^ v202);
                v203 = v200 - 1;
                v204 = (v200 - 1) & v201;
                v175 = (*v169 + 16 * v204);
                v205 = *v175;
                if (*v175 != v197)
                {
                  v206 = 0;
                  v207 = 1;
                  while (v205 != -4096)
                  {
                    if (v206)
                    {
                      v208 = 0;
                    }

                    else
                    {
                      v208 = v205 == -8192;
                    }

                    if (v208)
                    {
                      v206 = v175;
                    }

                    v209 = v204 + v207++;
                    v204 = v209 & v203;
                    v175 = (*v169 + 16 * (v209 & v203));
                    v205 = *v175;
                    if (*v175 == v197)
                    {
                      goto LABEL_320;
                    }
                  }

                  if (v206)
                  {
                    v175 = v206;
                  }
                }
              }

              else
              {
                v175 = 0;
                v168 = v197;
              }

LABEL_320:
              ++*(v169 + 8);
              if (*v175 != -4096)
              {
LABEL_266:
                --*(v169 + 12);
              }

LABEL_267:
              *v175 = v168;
              v175[1] = 0;
            }

LABEL_268:
            v181 = *(v175 + 2);
            v8 = v527;
            v182 = *a3;
            v183 = mlir::ODIE::Compiler::getHandleForToken(v165);
            if (!v183)
            {
              goto LABEL_248;
            }

LABEL_269:
            v184 = *v182;
            v185 = *(*v182 + 16);
            if (!v185)
            {
              goto LABEL_294;
            }

            v186 = 0x9DDFEA08EB382D69 * ((8 * v183 - 0xAE502812AA7333) ^ HIDWORD(v183));
            v187 = 0x9DDFEA08EB382D69 * (HIDWORD(v183) ^ (v186 >> 47) ^ v186);
            v188 = v185 - 1;
            v189 = (v185 - 1) & (-348639895 * ((v187 >> 47) ^ v187));
            v190 = (*v184 + 16 * v189);
            v191 = *v190;
            if (*v190 != v183)
            {
              v192 = 0;
              v193 = 1;
              while (v191 != -4096)
              {
                if (v192)
                {
                  v194 = 0;
                }

                else
                {
                  v194 = v191 == -8192;
                }

                if (v194)
                {
                  v192 = v190;
                }

                v195 = v189 + v193++;
                v189 = v195 & v188;
                v190 = (*v184 + 16 * (v195 & v188));
                v191 = *v190;
                if (*v190 == v183)
                {
                  goto LABEL_285;
                }
              }

              if (v192)
              {
                v190 = v192;
              }

              v198 = *(v184 + 8);
              if (4 * v198 + 4 >= 3 * v185)
              {
LABEL_294:
                v199 = v183;
                v185 *= 2;
                goto LABEL_308;
              }

              if (v185 + ~v198 - *(v184 + 12) <= v185 >> 3)
              {
                v199 = v183;
LABEL_308:
                sub_100083608(v184, v185);
                v210 = *(v184 + 16);
                if (v210)
                {
                  v183 = v199;
                  v211 = 0x9DDFEA08EB382D69 * ((8 * v199 - 0xAE502812AA7333) ^ HIDWORD(v199));
                  v212 = 0x9DDFEA08EB382D69 * (HIDWORD(v199) ^ (v211 >> 47) ^ v211);
                  LODWORD(v211) = -348639895 * ((v212 >> 47) ^ v212);
                  v213 = v210 - 1;
                  v214 = (v210 - 1) & v211;
                  v190 = (*v184 + 16 * v214);
                  v215 = *v190;
                  if (*v190 != v199)
                  {
                    v216 = 0;
                    v217 = 1;
                    while (v215 != -4096)
                    {
                      if (v216)
                      {
                        v218 = 0;
                      }

                      else
                      {
                        v218 = v215 == -8192;
                      }

                      if (v218)
                      {
                        v216 = v190;
                      }

                      v219 = v214 + v217++;
                      v214 = v219 & v213;
                      v190 = (*v184 + 16 * (v219 & v213));
                      v215 = *v190;
                      v8 = v527;
                      if (*v190 == v199)
                      {
                        goto LABEL_323;
                      }
                    }

                    if (v216)
                    {
                      v190 = v216;
                    }

                    v8 = v527;
                  }
                }

                else
                {
                  v190 = 0;
                  v183 = v199;
                }

LABEL_323:
                ++*(v184 + 8);
                if (*v190 != -4096)
                {
LABEL_283:
                  --*(v184 + 12);
                }
              }

              else
              {
                *(v184 + 8) = v198 + 1;
                if (*v190 != -4096)
                {
                  goto LABEL_283;
                }
              }

              *v190 = v183;
              v190[1] = 0;
            }

LABEL_285:
            if (v181 < *(v190 + 2))
            {
              while (1)
              {
LABEL_332:
                while (1)
                {
                  v221 = *--v158;
                  v220 = v221;
                  v222 = *a3;
                  v223 = mlir::ODIE::Compiler::getHandleForToken(v143);
                  if (v223)
                  {
                    break;
                  }

                  v236 = -1;
                  v237 = *a3;
                  result = mlir::ODIE::Compiler::getHandleForToken(v220);
                  if (result)
                  {
                    goto LABEL_352;
                  }

LABEL_331:
                  if (v236 >= -1)
                  {
                    goto LABEL_246;
                  }
                }

                v224 = *v222;
                v225 = *(*v222 + 16);
                if (!v225)
                {
                  break;
                }

                v226 = 0x9DDFEA08EB382D69 * ((8 * v223 - 0xAE502812AA7333) ^ HIDWORD(v223));
                v227 = 0x9DDFEA08EB382D69 * (HIDWORD(v223) ^ (v226 >> 47) ^ v226);
                v228 = v225 - 1;
                v229 = (v225 - 1) & (-348639895 * ((v227 >> 47) ^ v227));
                v230 = (*v224 + 16 * v229);
                v231 = *v230;
                if (*v230 == v223)
                {
                  goto LABEL_351;
                }

                v232 = 0;
                v233 = 1;
                while (v231 != -4096)
                {
                  if (v232)
                  {
                    v234 = 0;
                  }

                  else
                  {
                    v234 = v231 == -8192;
                  }

                  if (v234)
                  {
                    v232 = v230;
                  }

                  v235 = v229 + v233++;
                  v229 = v235 & v228;
                  v230 = (*v224 + 16 * (v235 & v228));
                  v231 = *v230;
                  if (*v230 == v223)
                  {
                    goto LABEL_351;
                  }
                }

                if (v232)
                {
                  v230 = v232;
                }

                v250 = *(v224 + 8);
                if (4 * v250 + 4 >= 3 * v225)
                {
                  break;
                }

                if (v225 + ~v250 - *(v224 + 12) <= v225 >> 3)
                {
                  v251 = v223;
LABEL_379:
                  sub_100083608(v224, v225);
                  v254 = *(v224 + 16);
                  if (v254)
                  {
                    v223 = v251;
                    v255 = 0x9DDFEA08EB382D69 * ((8 * v251 - 0xAE502812AA7333) ^ HIDWORD(v251));
                    v256 = 0x9DDFEA08EB382D69 * (HIDWORD(v251) ^ (v255 >> 47) ^ v255);
                    LODWORD(v255) = -348639895 * ((v256 >> 47) ^ v256);
                    v257 = v254 - 1;
                    v258 = (v254 - 1) & v255;
                    v230 = (*v224 + 16 * v258);
                    v259 = *v230;
                    if (*v230 != v251)
                    {
                      v260 = 0;
                      v261 = 1;
                      while (v259 != -4096)
                      {
                        if (v260)
                        {
                          v262 = 0;
                        }

                        else
                        {
                          v262 = v259 == -8192;
                        }

                        if (v262)
                        {
                          v260 = v230;
                        }

                        v263 = v258 + v261++;
                        v258 = v263 & v257;
                        v230 = (*v224 + 16 * (v263 & v257));
                        v259 = *v230;
                        if (*v230 == v251)
                        {
                          goto LABEL_403;
                        }
                      }

                      if (v260)
                      {
                        v230 = v260;
                      }
                    }
                  }

                  else
                  {
                    v230 = 0;
                    v223 = v251;
                  }

LABEL_403:
                  ++*(v224 + 8);
                  if (*v230 == -4096)
                  {
                    goto LABEL_350;
                  }

LABEL_349:
                  --*(v224 + 12);
                  goto LABEL_350;
                }

                *(v224 + 8) = v250 + 1;
                if (*v230 != -4096)
                {
                  goto LABEL_349;
                }

LABEL_350:
                *v230 = v223;
                v230[1] = 0;
LABEL_351:
                v236 = *(v230 + 2);
                v8 = v527;
                v237 = *a3;
                result = mlir::ODIE::Compiler::getHandleForToken(v220);
                if (!result)
                {
                  goto LABEL_331;
                }

LABEL_352:
                v238 = *v237;
                v239 = *(*v237 + 16);
                if (!v239)
                {
                  goto LABEL_377;
                }

                v240 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
                v241 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v240 >> 47) ^ v240);
                v242 = v239 - 1;
                v243 = (v239 - 1) & (-348639895 * ((v241 >> 47) ^ v241));
                v244 = (*v238 + 16 * v243);
                v245 = *v244;
                if (*v244 != result)
                {
                  v246 = 0;
                  v247 = 1;
                  while (v245 != -4096)
                  {
                    if (v246)
                    {
                      v248 = 0;
                    }

                    else
                    {
                      v248 = v245 == -8192;
                    }

                    if (v248)
                    {
                      v246 = v244;
                    }

                    v249 = v243 + v247++;
                    v243 = v249 & v242;
                    v244 = (*v238 + 16 * (v249 & v242));
                    v245 = *v244;
                    if (*v244 == result)
                    {
                      goto LABEL_368;
                    }
                  }

                  if (v246)
                  {
                    v244 = v246;
                  }

                  v252 = *(v238 + 8);
                  if (4 * v252 + 4 >= 3 * v239)
                  {
LABEL_377:
                    v253 = result;
                    v239 *= 2;
                    goto LABEL_391;
                  }

                  if (v239 + ~v252 - *(v238 + 12) <= v239 >> 3)
                  {
                    v253 = result;
LABEL_391:
                    sub_100083608(v238, v239);
                    v264 = *(v238 + 16);
                    if (v264)
                    {
                      result = v253;
                      v265 = 0x9DDFEA08EB382D69 * ((8 * v253 - 0xAE502812AA7333) ^ HIDWORD(v253));
                      v266 = 0x9DDFEA08EB382D69 * (HIDWORD(v253) ^ (v265 >> 47) ^ v265);
                      LODWORD(v265) = -348639895 * ((v266 >> 47) ^ v266);
                      v267 = v264 - 1;
                      v268 = (v264 - 1) & v265;
                      v244 = (*v238 + 16 * v268);
                      v269 = *v244;
                      if (*v244 != v253)
                      {
                        v270 = 0;
                        v271 = 1;
                        while (v269 != -4096)
                        {
                          if (v270)
                          {
                            v272 = 0;
                          }

                          else
                          {
                            v272 = v269 == -8192;
                          }

                          if (v272)
                          {
                            v270 = v244;
                          }

                          v273 = v268 + v271++;
                          v268 = v273 & v267;
                          v244 = (*v238 + 16 * (v273 & v267));
                          v269 = *v244;
                          v8 = v527;
                          if (*v244 == v253)
                          {
                            goto LABEL_406;
                          }
                        }

                        if (v270)
                        {
                          v244 = v270;
                        }

                        v8 = v527;
                      }
                    }

                    else
                    {
                      v244 = 0;
                      result = v253;
                    }

LABEL_406:
                    ++*(v238 + 8);
                    if (*v244 != -4096)
                    {
LABEL_366:
                      --*(v238 + 12);
                    }
                  }

                  else
                  {
                    *(v238 + 8) = v252 + 1;
                    if (*v244 != -4096)
                    {
                      goto LABEL_366;
                    }
                  }

                  *v244 = result;
                  v244[1] = 0;
                }

LABEL_368:
                if (v236 >= *(v244 + 2))
                {
                  goto LABEL_246;
                }
              }

              v251 = v223;
              v225 *= 2;
              goto LABEL_379;
            }

            continue;
          }

          break;
        }

        v197 = v168;
        v170 *= 2;
        goto LABEL_296;
      }

      v274 = v6 - 1;
      if (v6 - 1 != v8)
      {
        *v8 = *v274;
      }

      a5 = 0;
      *v274 = v143;
    }
  }

  v275 = *v6;
  v276 = *a3;
  v277 = mlir::ODIE::Compiler::getHandleForToken(*(a2 - 1));
  HandleForToken = v277;
  if (v277)
  {
    v278 = *sub_100083360(*v276, &HandleForToken);
    v279 = *a3;
    result = mlir::ODIE::Compiler::getHandleForToken(v275);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_422;
    }

LABEL_771:
    if (v278 < -1)
    {
      goto LABEL_772;
    }
  }

  else
  {
    v278 = -1;
    v279 = *a3;
    result = mlir::ODIE::Compiler::getHandleForToken(v275);
    HandleForToken = result;
    if (!result)
    {
      goto LABEL_771;
    }

LABEL_422:
    result = sub_100083360(*v279, &HandleForToken);
    if (v278 < *result)
    {
LABEL_772:
      v508 = *v6;
      *v6 = *(a2 - 1);
      *(a2 - 1) = v508;
    }
  }

  return result;
}

void *sub_10027A7F0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v8 = *a1;
  v9 = *a4;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v10 = *sub_100083360(*v9, &HandleForToken);
    v11 = *a4;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v8);
    if (HandleForToken)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = -1;
    v11 = *a4;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v8);
    if (HandleForToken)
    {
LABEL_3:
      v12 = *sub_100083360(*v11, &HandleForToken);
      v13 = *a3;
      v14 = *a2;
      v15 = *a4;
      if (v10 < v12)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v13 = *a3;
  v14 = *a2;
  v15 = *a4;
  if (v10 < -1)
  {
LABEL_4:
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
    if (HandleForToken)
    {
      v16 = *sub_100083360(*v15, &HandleForToken);
      v17 = *a4;
      result = mlir::ODIE::Compiler::getHandleForToken(v14);
      HandleForToken = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v16 = -1;
      v17 = *a4;
      result = mlir::ODIE::Compiler::getHandleForToken(v14);
      HandleForToken = result;
      if (result)
      {
LABEL_6:
        result = sub_100083360(*v17, &HandleForToken);
        v19 = *a1;
        if (v16 < *result)
        {
LABEL_7:
          *a1 = *a3;
          *a3 = v19;
          return result;
        }

LABEL_16:
        *a1 = *a2;
        *a2 = v19;
        v22 = *a4;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a3);
        if (HandleForToken)
        {
          v23 = *sub_100083360(*v22, &HandleForToken);
          v24 = *a4;
          result = mlir::ODIE::Compiler::getHandleForToken(v19);
          HandleForToken = result;
          if (result)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v23 = -1;
          v24 = *a4;
          result = mlir::ODIE::Compiler::getHandleForToken(v19);
          HandleForToken = result;
          if (result)
          {
LABEL_18:
            result = sub_100083360(*v24, &HandleForToken);
            if (v23 >= *result)
            {
              return result;
            }

LABEL_28:
            v30 = *a2;
            *a2 = *a3;
            *a3 = v30;
            return result;
          }
        }

        if (v23 >= -1)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    v19 = *a1;
    if (v16 < -1)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_10:
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
  if (HandleForToken)
  {
    v20 = *sub_100083360(*v15, &HandleForToken);
    v21 = *a4;
    result = mlir::ODIE::Compiler::getHandleForToken(v14);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (v20 >= -1)
    {
      return result;
    }

    goto LABEL_22;
  }

  v20 = -1;
  v21 = *a4;
  result = mlir::ODIE::Compiler::getHandleForToken(v14);
  HandleForToken = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_12:
  result = sub_100083360(*v21, &HandleForToken);
  if (v20 >= *result)
  {
    return result;
  }

LABEL_22:
  v25 = *a2;
  *a2 = *a3;
  *a3 = v25;
  v26 = *a1;
  v27 = *a4;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v28 = *sub_100083360(*v27, &HandleForToken);
    v29 = *a4;
    result = mlir::ODIE::Compiler::getHandleForToken(v26);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_24;
    }

LABEL_30:
    if (v28 >= -1)
    {
      return result;
    }

    goto LABEL_31;
  }

  v28 = -1;
  v29 = *a4;
  result = mlir::ODIE::Compiler::getHandleForToken(v26);
  HandleForToken = result;
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_24:
  result = sub_100083360(*v29, &HandleForToken);
  if (v28 < *result)
  {
LABEL_31:
    v31 = *a1;
    *a1 = *a2;
    *a2 = v31;
  }

  return result;
}

void *sub_10027AAF4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  sub_10027A7F0(a1, a2, a3, a5);
  v10 = *a3;
  v11 = *a5;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a4);
  if (HandleForToken)
  {
    v12 = *sub_100083360(*v11, &HandleForToken);
    v13 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v10);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = -1;
    v13 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v10);
    HandleForToken = result;
    if (result)
    {
LABEL_3:
      result = sub_100083360(*v13, &HandleForToken);
      if (v12 >= *result)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (v12 >= -1)
  {
    return result;
  }

LABEL_7:
  v15 = *a3;
  *a3 = *a4;
  *a4 = v15;
  v16 = *a2;
  v17 = *a5;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a3);
  if (HandleForToken)
  {
    v18 = *sub_100083360(*v17, &HandleForToken);
    v19 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v16);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = -1;
    v19 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v16);
    HandleForToken = result;
    if (result)
    {
LABEL_9:
      result = sub_100083360(*v19, &HandleForToken);
      if (v18 >= *result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (v18 >= -1)
  {
    return result;
  }

LABEL_13:
  v20 = *a2;
  *a2 = *a3;
  *a3 = v20;
  v21 = *a1;
  v22 = *a5;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v23 = *sub_100083360(*v22, &HandleForToken);
    v24 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v21);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = -1;
    v24 = *a5;
    result = mlir::ODIE::Compiler::getHandleForToken(v21);
    HandleForToken = result;
    if (result)
    {
LABEL_15:
      result = sub_100083360(*v24, &HandleForToken);
      if (v23 >= *result)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  if (v23 >= -1)
  {
    return result;
  }

LABEL_16:
  v25 = *a1;
  *a1 = *a2;
  *a2 = v25;
  return result;
}

void *sub_10027ACF0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  sub_10027AAF4(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a5);
  if (HandleForToken)
  {
    v14 = *sub_100083360(*v13, &HandleForToken);
    v15 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v12);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = -1;
    v15 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v12);
    HandleForToken = result;
    if (result)
    {
LABEL_3:
      result = sub_100083360(*v15, &HandleForToken);
      if (v14 >= *result)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (v14 >= -1)
  {
    return result;
  }

LABEL_7:
  v17 = *a4;
  *a4 = *a5;
  *a5 = v17;
  v18 = *a3;
  v19 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a4);
  if (HandleForToken)
  {
    v20 = *sub_100083360(*v19, &HandleForToken);
    v21 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v18);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = -1;
    v21 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v18);
    HandleForToken = result;
    if (result)
    {
LABEL_9:
      result = sub_100083360(*v21, &HandleForToken);
      if (v20 >= *result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (v20 >= -1)
  {
    return result;
  }

LABEL_13:
  v22 = *a3;
  *a3 = *a4;
  *a4 = v22;
  v23 = *a2;
  v24 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a3);
  if (HandleForToken)
  {
    v25 = *sub_100083360(*v24, &HandleForToken);
    v26 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v23);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25 = -1;
    v26 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v23);
    HandleForToken = result;
    if (result)
    {
LABEL_15:
      result = sub_100083360(*v26, &HandleForToken);
      if (v25 >= *result)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  if (v25 >= -1)
  {
    return result;
  }

LABEL_19:
  v27 = *a2;
  *a2 = *a3;
  *a3 = v27;
  v28 = *a1;
  v29 = *a6;
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*a2);
  if (HandleForToken)
  {
    v30 = *sub_100083360(*v29, &HandleForToken);
    v31 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v28);
    HandleForToken = result;
    if (result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v30 = -1;
    v31 = *a6;
    result = mlir::ODIE::Compiler::getHandleForToken(v28);
    HandleForToken = result;
    if (result)
    {
LABEL_21:
      result = sub_100083360(*v31, &HandleForToken);
      if (v30 >= *result)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  if (v30 >= -1)
  {
    return result;
  }

LABEL_22:
  v32 = *a1;
  *a1 = *a2;
  *a2 = v32;
  return result;
}

BOOL sub_10027AF84(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        sub_10027A7F0(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_10027AAF4(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_10027ACF0(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v6 = *a1;
      v7 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(a2 - 1));
      if (HandleForToken)
      {
        v8 = *sub_100083360(*v7, &HandleForToken);
        v9 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v6);
        if (HandleForToken)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v8 = -1;
        v9 = *a3;
        HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v6);
        if (HandleForToken)
        {
LABEL_6:
          if (v8 >= *sub_100083360(*v9, &HandleForToken))
          {
            return 1;
          }

          goto LABEL_37;
        }
      }

      if (v8 < -1)
      {
LABEL_37:
        v24 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v24;
      }

      return 1;
    }
  }

  v10 = a1 + 2;
  sub_10027A7F0(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = *a3;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v11);
    if (HandleForToken)
    {
      v16 = *sub_100083360(*v15, &HandleForToken);
      v17 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v14);
      if (HandleForToken)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = -1;
      v17 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v14);
      if (HandleForToken)
      {
LABEL_19:
        if (v16 < *sub_100083360(*v17, &HandleForToken))
        {
          break;
        }

        goto LABEL_32;
      }
    }

    if (v16 < -1)
    {
      break;
    }

LABEL_32:
    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }

  v18 = *v11;
  v19 = v12;
  do
  {
    while (1)
    {
      *(a1 + v19 + 24) = *(a1 + v19 + 16);
      if (v19 == -16)
      {
        *a1 = v18;
        if (++v13 != 8)
        {
          goto LABEL_32;
        }

        return v11 + 1 == a2;
      }

      v20 = *(a1 + v19 + 8);
      v21 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v18);
      if (HandleForToken)
      {
        break;
      }

      v22 = -1;
      v23 = *a3;
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v20);
      if (!HandleForToken)
      {
        goto LABEL_30;
      }

LABEL_24:
      v19 -= 8;
      if (v22 >= *sub_100083360(*v23, &HandleForToken))
      {
        goto LABEL_31;
      }
    }

    v22 = *sub_100083360(*v21, &HandleForToken);
    v23 = *a3;
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v20);
    if (HandleForToken)
    {
      goto LABEL_24;
    }

LABEL_30:
    v19 -= 8;
  }

  while (v22 < -1);
LABEL_31:
  *(a1 + v19 + 24) = v18;
  if (++v13 != 8)
  {
    goto LABEL_32;
  }

  return v11 + 1 == a2;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 - 16;
  do
  {
    v8 = v3[2];
    v3 = *v3;
    if (v8 != a2)
    {
      v9 = *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id ? v8 : 0;
      if (v9)
      {
        if (*(v9 + 36))
        {
          v10 = v9 - 16;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8);
        if (*(a2 + 36))
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) ^ v11) <= 7)
        {
          (*(*a3 + 8))(a3, v9, a2);
          v6 = 1;
        }
      }
    }
  }

  while (v3);
  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = **(*(a2 + 72) + 24);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = v3[2];
    v3 = *v3;
    if (v7 != a2)
    {
      if (v7)
      {
        v8 = *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        (*(*a3 + 8))(a3);
        result = 1;
      }
    }
  }

  while (v3);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v32.n128_u64[0] = v7;
  v32.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v32, v40);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v37[0].n128_u64[0] = v9;
  v37[0].n128_u64[1] = v8;
  mlir::ResultRange::use_end(v37, v35);
  v34 = v42;
  v32 = *v40;
  v33 = v41;
  v10 = v36;
  if (v42 == v36)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      ++v11;
      mlir::ResultRange::UseIterator::operator++(v40);
    }

    while (v42 != v10);
  }

  v40[0] = &v41;
  v40[1] = 0x600000000;
  v12 = *(a2 + 36);
  if (v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  v32.n128_u64[0] = v13;
  v32.n128_u64[1] = v12;
  mlir::ResultRange::use_begin(&v32, v37);
  v14 = *(a2 + 36);
  if (v14)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  v39.n128_u64[0] = v15;
  v39.n128_u64[1] = v14;
  mlir::ResultRange::use_end(&v39, v35);
  v16 = v38;
  v34 = v38;
  v32 = v37[0];
  v33 = v37[1];
  for (i = v36; v38 != i; v16 = v38)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = *(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = LODWORD(v40[1]);
      if (LODWORD(v40[1]) >= HIDWORD(v40[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v40, &v41, LODWORD(v40[1]) + 1, 8);
        v20 = LODWORD(v40[1]);
      }

      *(v40[0] + v20) = v18;
      ++LODWORD(v40[1]);
    }

    mlir::ResultRange::UseIterator::operator++(v37);
  }

  if (LODWORD(v40[1]))
  {
    v21 = v40[0];
    v22 = 8 * LODWORD(v40[1]);
    do
    {
      v24 = *v21++;
      v23 = v24;
      v25 = v24 - 16;
      if (*(v24 + 36))
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v32.n128_u64[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37[0].n128_u64[0] = *(*(a2 + 72) + 24);
      v27 = sub_10027BD40(a3 + 1, *(v23 + 24), &v32, v37);
      (*(*a3 + 8))(a3, v23, v27);
      v22 -= 8;
    }

    while (v22);
    if (v11 == LODWORD(v40[1]))
    {
      (*(*a3 + 16))(a3, a2);
    }

    v28 = 1;
    v29 = v40[0];
    if (v40[0] != &v41)
    {
LABEL_38:
      free(v29);
    }
  }

  else
  {
    v32.n128_u64[0] = "no coremlax.copy_with_constraints users";
    LOWORD(v34) = 259;
    v37[0].n128_u64[0] = &v32;
    v31 = a3[2];
    if (v31 && mlir::RewriterBase::Listener::classof(v31))
    {
      (*(*v31 + 88))(v31, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v37);
    }

    v28 = 0;
    v29 = v40[0];
    if (v40[0] != &v41)
    {
      goto LABEL_38;
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a2 + 72) + 24);
  if (!*v3)
  {
    return 0;
  }

  if (**v3)
  {
    return 0;
  }

  v12 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v12);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
    {
      return 0;
    }

    if (*(a2 + 36))
    {
      v7 = a2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v8 = result;
    v9 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(*(v8 + 72) + 24);
    v12 = v9;
    v10 = sub_10027BE30(a3 + 1, *(v8 + 24), &v12, &v11);
    (*(*a3 + 8))(a3, v8, v10);
    (*(*a3 + 8))(a3, a2, v10);
    return 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(&v19);
  if (ElementType == mlir::RankedTensorType::getElementType(&v18))
  {
    mlir::ODIE::Compiler::CoreMLAX::getStrides(v19, &v26);
    mlir::ODIE::Compiler::CoreMLAX::getStrides(v18, &__s2);
    if (v27)
    {
      v7 = 8 * v27;
      v8 = v26;
      while (*v8 != 0x8000000000000000)
      {
        v8 += 8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (!v24)
      {
LABEL_13:
        if (v27 == v24 && !memcmp(v26, __s2, 8 * v27))
        {
          v20[0] = *(*(a2 + 72) + 24);
          v17 = sub_10027BF30(a3 + 1, *(a2 + 24), &v18, v20);
          (*(*a3 + 8))(a3, a2, v17);
          v13 = 1;
          v15 = __s2;
          if (__s2 == v25)
          {
LABEL_26:
            if (v26 != v28)
            {
              free(v26);
            }

            return v13;
          }

LABEL_25:
          free(v15);
          goto LABEL_26;
        }

        v11 = "source strides don't match dest strides";
LABEL_21:
        v20[0] = v11;
        v21 = 259;
        v22 = v20;
        v14 = a3[2];
        if (v14 && mlir::RewriterBase::Listener::classof(v14))
        {
          (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v22);
        }

        v13 = 0;
        v15 = __s2;
        if (__s2 == v25)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v9 = 8 * v24;
      v10 = __s2;
      while (*v10 != 0x8000000000000000)
      {
        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = "source or result have dynamic shape";
    goto LABEL_21;
  }

  v26 = "source dtype and result dtype are different";
  v28[8] = 259;
  __s2 = &v26;
  v12 = a3[2];
  if (v12 && mlir::RewriterBase::Listener::classof(v12))
  {
    (*(*v12 + 88))(v12, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CastOp &>(mlir::ODIE::Compiler::CoreMLAX::CastOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__s2);
  }

  return 0;
}

char *sub_10027BD40(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002AC844(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::CastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

char *sub_10027BE30(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002AC888(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

char *sub_10027BF30(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002AC8CC(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Alignments = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
  v8 = v7;
  Interleave = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
  v11 = v10;
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v8)
  {
    if (v8 < 7)
    {
      v12 = 0;
      v13 = v8;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v8, 8);
      v12 = *(a3 + 2);
      v13 = v8 - v12;
      if (v8 == v12)
      {
        goto LABEL_7;
      }
    }

    bzero((*a3 + 8 * v12), 8 * v13);
LABEL_7:
    *(a3 + 2) = v8;
  }

  if (v11)
  {
    v14 = 8 * v11;
    v15 = 1;
    v16 = Interleave;
    while (*v16 != 0x8000000000000000)
    {
      v15 *= *v16++;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v15 = 0x8000000000000000;
    if (v8)
    {
LABEL_17:
      v17 = *a3 - 8;
      v18 = Alignments - 8;
      v19 = Interleave - 16;
      v20 = a2 - 16;
      v21 = 1;
      v22 = 8;
      v23 = 0x8000000000000000;
      v24 = v15 == 0x8000000000000000;
      if (v15 == 0x8000000000000000)
      {
        goto LABEL_19;
      }

LABEL_18:
      v23 = (*(v18 + 8 * v8) + v21 * v15 - 1) / *(v18 + 8 * v8) * *(v18 + 8 * v8);
LABEL_19:
      while (1)
      {
        *(v17 + 8 * v8) = v23;
        if (8 * v8 == v22)
        {
          break;
        }

        v25 = *(v20 + 8 * v8);
        v26 = *(v19 + 8 * v8);
        v17 -= 8;
        v18 -= 8;
        v22 += 8;
        v19 -= 8;
        v20 -= 8;
        v21 = v23;
        v15 = v25 / v26;
        v23 = 0x8000000000000000;
        v24 |= v15 == 0x8000000000000000;
        if ((v24 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v15 = 1;
LABEL_14:
    if (v8)
    {
      goto LABEL_17;
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::verifyEncoding(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
  if (v12 == a3 + 1)
  {
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
    if (v13 == a3)
    {
      Alignments = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
      if (v15)
      {
        v16 = 8 * v15;
        while (*Alignments != 0x8000000000000000)
        {
          ++Alignments;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        a5(v149, a6);
        if (v149[0])
        {
          v146 = 3;
          v147 = "expected alignments to be statically defined";
          v148 = 44;
          v77 = &v146;
          v78 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v146 && v150 + 24 * v151 > &v146)
            {
              v135 = &v146 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v78 = v150;
              v77 = (v150 + v135);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v77 = &v146;
              v78 = v150;
            }
          }

          v79 = &v78[24 * v151];
          v80 = *v77;
          *(v79 + 2) = *(v77 + 2);
          *v79 = v80;
          ++v151;
        }

        v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
        if (v149[0])
        {
          mlir::InFlightDiagnostic::report(v149);
        }

        if (v159 == 1)
        {
          if (v158 != &v159)
          {
            free(v158);
          }

          v81 = __p;
          if (__p)
          {
            v82 = v157;
            v83 = __p;
            if (v157 != __p)
            {
              do
              {
                v82 = sub_10005BEF4(v82 - 1);
              }

              while (v82 != v81);
              v83 = __p;
            }

            v157 = v81;
            operator delete(v83);
          }

          v52 = v154;
          if (!v154)
          {
            goto LABEL_168;
          }

          v84 = v155;
          v54 = v154;
          if (v155 == v154)
          {
LABEL_167:
            v155 = v52;
            operator delete(v54);
LABEL_168:
            if (v150 != v153)
            {
              free(v150);
            }

            return v48;
          }

          do
          {
            v85 = *--v84;
            *v84 = 0;
            if (v85)
            {
              operator delete[]();
            }
          }

          while (v84 != v52);
LABEL_166:
          v54 = v154;
          goto LABEL_167;
        }
      }

      else
      {
LABEL_7:
        Interleave = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
        if (a3)
        {
          v19 = 0;
          v20 = 8 * v18;
          v21 = 8 * a3;
          v22 = a2;
          while (v20)
          {
            v23 = *v22;
            v24 = *Interleave;
            if (*Interleave != 1 && (*v22 == 0x8000000000000000) == (*Interleave != 0x8000000000000000))
            {
              a5(v149, a6);
              if (v149[0])
              {
                v146 = 3;
                v147 = "dimension shape and dimension interleave factor must both be static or both be dynamic";
                v148 = 86;
                v87 = &v146;
                v88 = v150;
                if (v151 >= v152)
                {
                  if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                  {
                    v136 = &v146 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v88 = v150;
                    v87 = (v150 + v136);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v87 = &v146;
                    v88 = v150;
                  }
                }

                v89 = &v88[24 * v151];
                v90 = *v87;
                *(v89 + 2) = *(v87 + 2);
                *v89 = v90;
                ++v151;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
              if (v149[0])
              {
                mlir::InFlightDiagnostic::report(v149);
              }

              if (v159 != 1)
              {
                return v48;
              }

              if (v158 != &v159)
              {
                free(v158);
              }

              v91 = __p;
              if (__p)
              {
                v92 = v157;
                v93 = __p;
                if (v157 != __p)
                {
                  do
                  {
                    v92 = sub_10005BEF4(v92 - 1);
                  }

                  while (v92 != v91);
                  v93 = __p;
                }

                v157 = v91;
                operator delete(v93);
              }

              v52 = v154;
              if (!v154)
              {
                goto LABEL_168;
              }

              v94 = v155;
              v54 = v154;
              if (v155 == v154)
              {
                goto LABEL_167;
              }

              do
              {
                v95 = *--v94;
                *v94 = 0;
                if (v95)
                {
                  operator delete[]();
                }
              }

              while (v94 != v52);
              goto LABEL_166;
            }

            if (v24 != 1 && ((v19 ^ 1) & 1) == 0)
            {
              a5(v149, a6);
              if (v149[0])
              {
                v146 = 3;
                v147 = "interleave is only supported for a single dimension";
                v148 = 51;
                v96 = &v146;
                v97 = v150;
                if (v151 >= v152)
                {
                  if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                  {
                    v137 = &v146 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v97 = v150;
                    v96 = (v150 + v137);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v96 = &v146;
                    v97 = v150;
                  }
                }

                v98 = &v97[24 * v151];
                v99 = *v96;
                *(v98 + 2) = *(v96 + 2);
                *v98 = v99;
                ++v151;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
              if (v149[0])
              {
                mlir::InFlightDiagnostic::report(v149);
              }

              if (v159 != 1)
              {
                return v48;
              }

              if (v158 != &v159)
              {
                free(v158);
              }

              v100 = __p;
              if (__p)
              {
                v101 = v157;
                v102 = __p;
                if (v157 != __p)
                {
                  do
                  {
                    v101 = sub_10005BEF4(v101 - 1);
                  }

                  while (v101 != v100);
                  v102 = __p;
                }

                v157 = v100;
                operator delete(v102);
              }

              v52 = v154;
              if (!v154)
              {
                goto LABEL_168;
              }

              v103 = v155;
              v54 = v154;
              if (v155 == v154)
              {
                goto LABEL_167;
              }

              do
              {
                v104 = *--v103;
                *v103 = 0;
                if (v104)
                {
                  operator delete[]();
                }
              }

              while (v103 != v52);
              goto LABEL_166;
            }

            if (v23 != 0x8000000000000000)
            {
              if (v23 < v24)
              {
                v105 = Interleave;
                a5(v149, a6);
                if (v149[0])
                {
                  v146 = 3;
                  v147 = "dimension interleave factor ";
                  v148 = 28;
                  v106 = &v146;
                  v107 = v150;
                  if (v151 >= v152)
                  {
                    if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                    {
                      v138 = &v146 - v150;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v107 = v150;
                      v106 = (v150 + v138);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v106 = &v146;
                      v107 = v150;
                    }
                  }

                  v108 = &v107[24 * v151];
                  v109 = *v106;
                  *(v108 + 2) = *(v106 + 2);
                  *v108 = v109;
                  v110 = ++v151;
                  if (v149[0])
                  {
                    v111 = *v105;
                    v146 = 2;
                    v147 = v111;
                    v112 = &v146;
                    v113 = v150;
                    if (v110 >= v152)
                    {
                      if (v150 <= &v146 && v150 + 24 * v110 > &v146)
                      {
                        v140 = &v146 - v150;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v110 + 1, 24);
                        v113 = v150;
                        v112 = (v150 + v140);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v110 + 1, 24);
                        v112 = &v146;
                        v113 = v150;
                      }
                    }

                    v114 = &v113[24 * v151];
                    v115 = *v112;
                    *(v114 + 2) = *(v112 + 2);
                    *v114 = v115;
                    v116 = ++v151;
                    if (v149[0])
                    {
                      v146 = 3;
                      v147 = " must not be greater than dimension shape ";
                      v148 = 42;
                      v117 = &v146;
                      v118 = v150;
                      if (v116 >= v152)
                      {
                        if (v150 <= &v146 && v150 + 24 * v116 > &v146)
                        {
                          v142 = &v146 - v150;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v116 + 1, 24);
                          v118 = v150;
                          v117 = (v150 + v142);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v116 + 1, 24);
                          v117 = &v146;
                          v118 = v150;
                        }
                      }

                      v119 = &v118[24 * v151];
                      v120 = *v117;
                      *(v119 + 2) = *(v117 + 2);
                      *v119 = v120;
                      v121 = ++v151;
                      if (v149[0])
                      {
                        v122 = *v22;
                        v146 = 2;
                        v147 = v122;
                        v123 = &v146;
                        v124 = v150;
                        if (v121 >= v152)
                        {
                          if (v150 <= &v146 && v150 + 24 * v121 > &v146)
                          {
                            v144 = &v146 - v150;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v121 + 1, 24);
                            v124 = v150;
                            v123 = (v150 + v144);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v121 + 1, 24);
                            v123 = &v146;
                            v124 = v150;
                          }
                        }

                        v125 = &v124[24 * v151];
                        v126 = *v123;
                        *(v125 + 2) = *(v123 + 2);
                        *v125 = v126;
                        ++v151;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
                if (v149[0])
                {
                  mlir::InFlightDiagnostic::report(v149);
                }

                if (v159 != 1)
                {
                  return v48;
                }

                if (v158 != &v159)
                {
                  free(v158);
                }

                v127 = __p;
                if (__p)
                {
                  v128 = v157;
                  v129 = __p;
                  if (v157 != __p)
                  {
                    do
                    {
                      v128 = sub_10005BEF4(v128 - 1);
                    }

                    while (v128 != v127);
                    v129 = __p;
                  }

                  v157 = v127;
                  operator delete(v129);
                }

                v52 = v154;
                if (!v154)
                {
                  goto LABEL_168;
                }

                v130 = v155;
                v54 = v154;
                if (v155 == v154)
                {
                  goto LABEL_167;
                }

                do
                {
                  v131 = *--v130;
                  *v130 = 0;
                  if (v131)
                  {
                    operator delete[]();
                  }
                }

                while (v130 != v52);
                goto LABEL_166;
              }

              if (v23 % v24)
              {
                v25 = Interleave;
                a5(v149, a6);
                if (v149[0])
                {
                  v146 = 3;
                  v147 = "dimension shape ";
                  v148 = 16;
                  v26 = &v146;
                  v27 = v150;
                  if (v151 >= v152)
                  {
                    if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                    {
                      v139 = &v146 - v150;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v27 = v150;
                      v26 = (v150 + v139);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v26 = &v146;
                      v27 = v150;
                    }
                  }

                  v28 = v25;
                  v29 = &v27[24 * v151];
                  v30 = *v26;
                  *(v29 + 2) = *(v26 + 2);
                  *v29 = v30;
                  v31 = ++v151;
                  if (v149[0])
                  {
                    v32 = *v22;
                    v146 = 2;
                    v147 = v32;
                    v33 = &v146;
                    v34 = v150;
                    if (v31 >= v152)
                    {
                      if (v150 <= &v146 && v150 + 24 * v31 > &v146)
                      {
                        v141 = &v146 - v150;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v31 + 1, 24);
                        v34 = v150;
                        v33 = (v150 + v141);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v31 + 1, 24);
                        v33 = &v146;
                        v34 = v150;
                      }

                      v28 = v25;
                    }

                    v35 = &v34[24 * v151];
                    v36 = *v33;
                    *(v35 + 2) = *(v33 + 2);
                    *v35 = v36;
                    v37 = ++v151;
                    if (v149[0])
                    {
                      v146 = 3;
                      v147 = " must be a multiple of dimension interleave factor ";
                      v148 = 51;
                      v38 = &v146;
                      v39 = v150;
                      if (v37 >= v152)
                      {
                        if (v150 <= &v146 && v150 + 24 * v37 > &v146)
                        {
                          v143 = &v146 - v150;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v37 + 1, 24);
                          v39 = v150;
                          v38 = (v150 + v143);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v37 + 1, 24);
                          v38 = &v146;
                          v39 = v150;
                        }

                        v28 = v25;
                      }

                      v40 = &v39[24 * v151];
                      v41 = *v38;
                      *(v40 + 2) = *(v38 + 2);
                      *v40 = v41;
                      v42 = ++v151;
                      if (v149[0])
                      {
                        v43 = *v28;
                        v146 = 2;
                        v147 = v43;
                        v44 = &v146;
                        v45 = v150;
                        if (v42 >= v152)
                        {
                          if (v150 <= &v146 && v150 + 24 * v42 > &v146)
                          {
                            v145 = &v146 - v150;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v42 + 1, 24);
                            v45 = v150;
                            v44 = (v150 + v145);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v42 + 1, 24);
                            v44 = &v146;
                            v45 = v150;
                          }
                        }

                        v46 = &v45[24 * v151];
                        v47 = *v44;
                        *(v46 + 2) = *(v44 + 2);
                        *v46 = v47;
                        ++v151;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
                if (v149[0])
                {
                  mlir::InFlightDiagnostic::report(v149);
                }

                if (v159 != 1)
                {
                  return v48;
                }

                if (v158 != &v159)
                {
                  free(v158);
                }

                v49 = __p;
                if (__p)
                {
                  v50 = v157;
                  v51 = __p;
                  if (v157 != __p)
                  {
                    do
                    {
                      v50 = sub_10005BEF4(v50 - 1);
                    }

                    while (v50 != v49);
                    v51 = __p;
                  }

                  v157 = v49;
                  operator delete(v51);
                }

                v52 = v154;
                if (!v154)
                {
                  goto LABEL_168;
                }

                v53 = v155;
                v54 = v154;
                if (v155 == v154)
                {
                  goto LABEL_167;
                }

                do
                {
                  v86 = *--v53;
                  *v53 = 0;
                  if (v86)
                  {
                    operator delete[]();
                  }
                }

                while (v53 != v52);
                goto LABEL_166;
              }
            }

            v19 |= v24 != 1;
            ++v22;
            ++Interleave;
            v20 -= 8;
            v21 -= 8;
            if (!v21)
            {
              break;
            }
          }
        }

        v149[0] = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getBaseEncoding(a1);
        return !v149[0] || mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(v149, v73, v74, v75, v76, a2, a3, a4, a5, a6);
      }
    }

    else
    {
      a5(v149, a6);
      if (v149[0])
      {
        v146 = 3;
        v147 = "expected interleave to have (rank) elements";
        v148 = 43;
        v64 = &v146;
        v65 = v150;
        if (v151 >= v152)
        {
          if (v150 <= &v146 && v150 + 24 * v151 > &v146)
          {
            v134 = &v146 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v65 = v150;
            v64 = (v150 + v134);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v64 = &v146;
            v65 = v150;
          }
        }

        v66 = &v65[24 * v151];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        ++v151;
      }

      v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
      if (v149[0])
      {
        mlir::InFlightDiagnostic::report(v149);
      }

      if (v159 == 1)
      {
        if (v158 != &v159)
        {
          free(v158);
        }

        v68 = __p;
        if (__p)
        {
          v69 = v157;
          v70 = __p;
          if (v157 != __p)
          {
            do
            {
              v69 = sub_10005BEF4(v69 - 1);
            }

            while (v69 != v68);
            v70 = __p;
          }

          v157 = v68;
          operator delete(v70);
        }

        v52 = v154;
        if (!v154)
        {
          goto LABEL_168;
        }

        v71 = v155;
        v54 = v154;
        if (v155 == v154)
        {
          goto LABEL_167;
        }

        do
        {
          v72 = *--v71;
          *v71 = 0;
          if (v72)
          {
            operator delete[]();
          }
        }

        while (v71 != v52);
        goto LABEL_166;
      }
    }
  }

  else
  {
    a5(v149, a6);
    if (v149[0])
    {
      v146 = 3;
      v147 = "expected alignments to have (rank + 1) elements";
      v148 = 47;
      v55 = &v146;
      v56 = v150;
      if (v151 >= v152)
      {
        if (v150 <= &v146 && v150 + 24 * v151 > &v146)
        {
          v133 = &v146 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v56 = v150;
          v55 = (v150 + v133);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v55 = &v146;
          v56 = v150;
        }
      }

      v57 = &v56[24 * v151];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      ++v151;
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
    if (v149[0])
    {
      mlir::InFlightDiagnostic::report(v149);
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v157;
        v61 = __p;
        if (v157 != __p)
        {
          do
          {
            v60 = sub_10005BEF4(v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v157 = v59;
        operator delete(v61);
      }

      v52 = v154;
      if (!v154)
      {
        goto LABEL_168;
      }

      v62 = v155;
      v54 = v154;
      if (v155 == v154)
      {
        goto LABEL_167;
      }

      do
      {
        v63 = *--v62;
        *v62 = 0;
        if (v63)
        {
          operator delete[]();
        }
      }

      while (v62 != v52);
      goto LABEL_166;
    }
  }

  return v48;
}