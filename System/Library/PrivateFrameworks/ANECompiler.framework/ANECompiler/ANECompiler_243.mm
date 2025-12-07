uint64_t mlir::mps::SampleGridOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 6)
    {
      if (!memcmp(__s1, "layout", 6uLL))
      {
        return a2[1];
      }
    }

    else if (__n == 12 && !memcmp(__s1, "padding_mode", 0xCuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 21)
  {
    if (!memcmp(__s1, "nearest_rounding_mode", 0x15uLL))
    {
      return a2[2];
    }

    if (*__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65 && *(__s1 + 13) == 0x736574616E696472)
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 20)
  {
    if (!memcmp(__s1, "relative_coordinates", 0x14uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (*__s1 == 0x6F635F6E67696C61 && *(__s1 + 5) == 0x7372656E726F635FLL)
  {
    return *a2;
  }

  if (memcmp(__s1, "sampling_mode", 0xDuLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::mps::SampleGridOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    if (a3 == 6)
    {
      result = memcmp(__s1, "layout", 6uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          v5[1] = v13;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 12)
    {
      result = memcmp(__s1, "padding_mode", 0xCuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[4] = v7;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 21:
        result = memcmp(__s1, "nearest_rounding_mode", 0x15uLL);
        if (result)
        {
          if (*__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65 && *(__s1 + 13) == 0x736574616E696472)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                v11 = a4;
              }

              else
              {
                v11 = 0;
              }

              v5[3] = v11;
            }

            else
            {
              v5[3] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[2] = v14;
        }

        else
        {
          v5[2] = 0;
        }

        break;
      case 20:
        result = memcmp(__s1, "relative_coordinates", 0x14uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }

            v5[5] = v12;
          }

          else
          {
            v5[5] = 0;
          }
        }

        break;
      case 13:
        if (*__s1 == 0x6F635F6E67696C61 && *(__s1 + 5) == 0x7372656E726F635FLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            *result = v15;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "sampling_mode", 0xDuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
              {
                v16 = a4;
              }

              else
              {
                v16 = 0;
              }

              v5[6] = v16;
            }

            else
            {
              v5[6] = 0;
            }
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::SampleGridOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "align_corners", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "layout", 6uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "nearest_rounding_mode", 0x15uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "normalize_coordinates", 0x15uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "padding_mode", 0xCuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "relative_coordinates", 0x14uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {

    mlir::NamedAttrList::append(a3, "sampling_mode", 0xDuLL, v10);
  }
}

BOOL mlir::mps::SampleGridOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "align_corners", 0xD, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v9, "layout", 6, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v10, "nearest_rounding_mode", 0x15, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "normalize_coordinates", 0x15, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v12, "padding_mode", 0xC, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v13, "relative_coordinates", 0x14, a3, a4))
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v14, "sampling_mode", 0xD, a3, a4))
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::SampleGridOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, v3 + 6);
}

BOOL mlir::mps::SampleGridOp::verifyInvariantsImpl(uint64_t **this)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = v2[8];
  v4 = v2[9];
  v3 = v2 + 8;
  if (v4)
  {
    v6 = v3[4];
    if (v6)
    {
      v7 = v3[6];
      if (v7)
      {
        v10 = v3[2];
        v9 = v3[3];
        v11 = v3[5];
        v38[0] = v1;
        if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "normalize_coordinates", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
        {
          return 0;
        }

        v38[0] = *this;
        if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "relative_coordinates", 0x14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
        {
          return 0;
        }

        v38[0] = *this;
        if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "align_corners", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
        {
          return 0;
        }

        v38[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v6, "padding_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
        {
          return 0;
        }

        v38[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v7, "sampling_mode", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
        {
          return 0;
        }

        v38[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v4, "layout", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
        {
          return 0;
        }

        v38[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v10, "nearest_rounding_mode", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v12 = *this - 2;
        }

        else
        {
          v12 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
      }

      v36[0] = "requires attribute 'sampling_mode'";
      v37 = 259;
      mlir::OpState::emitOpError(this, v36, v38);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      if (v38[0])
      {
        mlir::InFlightDiagnostic::report(v38);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v44;
          v31 = __p;
          if (v44 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v44 = v29;
          operator delete(v31);
        }

        v18 = v41;
        if (!v41)
        {
          goto LABEL_69;
        }

        v32 = v42;
        v20 = v41;
        if (v42 == v41)
        {
LABEL_68:
          v42 = v18;
          operator delete(v20);
LABEL_69:
          if (v39 != &v40)
          {
            free(v39);
          }

          return v14;
        }

        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v18);
LABEL_67:
        v20 = v41;
        goto LABEL_68;
      }
    }

    else
    {
      v36[0] = "requires attribute 'padding_mode'";
      v37 = 259;
      mlir::OpState::emitOpError(this, v36, v38);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      if (v38[0])
      {
        mlir::InFlightDiagnostic::report(v38);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v44;
          v25 = __p;
          if (v44 != __p)
          {
            do
            {
              v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
            }

            while (v24 != v23);
            v25 = __p;
          }

          v44 = v23;
          operator delete(v25);
        }

        v18 = v41;
        if (!v41)
        {
          goto LABEL_69;
        }

        v26 = v42;
        v20 = v41;
        if (v42 == v41)
        {
          goto LABEL_68;
        }

        do
        {
          v28 = *--v26;
          v27 = v28;
          *v26 = 0;
          if (v28)
          {
            MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
          }
        }

        while (v26 != v18);
        goto LABEL_67;
      }
    }
  }

  else
  {
    v36[0] = "requires attribute 'layout'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v44;
        v17 = __p;
        if (v44 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v44 = v15;
        operator delete(v17);
      }

      v18 = v41;
      if (!v41)
      {
        goto LABEL_69;
      }

      v19 = v42;
      v20 = v41;
      if (v42 == v41)
      {
        goto LABEL_68;
      }

      do
      {
        v22 = *--v19;
        v21 = v22;
        *v19 = 0;
        if (v22)
        {
          MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
        }
      }

      while (v19 != v18);
      goto LABEL_67;
    }
  }

  return v14;
}

uint64_t mlir::mps::ScatterAlongAxisOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "mode", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 49;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::ScatterAlongAxisOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "mode", 4uLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid ScatterMode";
        v29 = 49;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::mps::ScatterAlongAxisOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::ScatterModeAttr]";
  v38 = 76;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

BOOL mlir::mps::ScatterAlongAxisOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(v3, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
    {
      if (*(*this + 9))
      {
        v4 = *this - 2;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'mode'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::mps::ScatterNDOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v58 = v6;
  if (!v6)
  {
    a3(v62, a4);
    if (v62[0])
    {
      v59 = 3;
      v60 = "expected DictionaryAttr to set properties";
      v61 = 41;
      v26 = &v59;
      v27 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v27 = v63;
          v26 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v26 = &v59;
          v27 = v63;
        }
      }

      v28 = &v27[24 * v64];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }

    if (v72 != 1)
    {
      return 0;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v70;
      v32 = __p;
      if (v70 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v70 = v30;
      operator delete(v32);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v33 = v68;
    v23 = v67;
    if (v68 == v67)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v58, "batch_dims", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 55;
        v10 = &v59;
        v11 = v63;
        if (v64 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v64 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v11 = v63;
            v10 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
            v10 = &v59;
            v11 = v63;
          }
        }

        v12 = &v11[24 * v64];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v64;
        if (v62[0])
        {
          v14 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v9);
          v15 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v15 = v63;
              v14 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v14 = &v59;
              v15 = v63;
            }
          }

          v16 = &v15[24 * v64];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v64;
          if (v62[0])
          {
            mlir::InFlightDiagnostic::report(v62);
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return 0;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v70;
        v20 = __p;
        if (v70 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v70 = v18;
        operator delete(v20);
      }

      v21 = v67;
      if (!v67)
      {
        goto LABEL_70;
      }

      v22 = v68;
      v23 = v67;
      if (v68 == v67)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v58, "mode", 4uLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 49;
    v38 = &v59;
    v39 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v56 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v39 = v63;
        v38 = (v63 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v38 = &v59;
        v39 = v63;
      }
    }

    v40 = &v39[24 * v64];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    ++v64;
    if (v62[0])
    {
      v42 = &v59;
      mlir::DiagnosticArgument::DiagnosticArgument(&v59, v37);
      v43 = v63;
      if (v64 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v64 > &v59)
        {
          v57 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v43 = v63;
          v42 = (v63 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
          v42 = &v59;
          v43 = v63;
        }
      }

      v44 = &v43[24 * v64];
      v45 = *v42;
      *(v44 + 2) = *(v42 + 2);
      *v44 = v45;
      ++v64;
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }
    }
  }

  if (v72)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v70;
      v48 = __p;
      if (v70 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v70 = v46;
      operator delete(v48);
    }

    v21 = v67;
    if (!v67)
    {
      goto LABEL_70;
    }

    v49 = v68;
    v23 = v67;
    if (v68 == v67)
    {
LABEL_69:
      v68 = v21;
      operator delete(v23);
LABEL_70:
      if (v63 != v66)
      {
        free(v63);
      }

      return 0;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
      }
    }

    while (v49 != v21);
LABEL_68:
    v23 = v67;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::ScatterNDOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "batch_dims", 0xAuLL, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "mode", 4uLL, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

BOOL mlir::mps::ScatterNDOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::ScatterNDOp::verifyInvariantsImpl(uint64_t **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (v4)
  {
    v5 = v3[1];
    if (v5)
    {
      v27[0] = *this;
      if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "batch_dims", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
      {
        return 0;
      }

      v27[0] = *this;
      if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(v5, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
      {
        return 0;
      }

      if (*(*this + 9))
      {
        v7 = *this - 2;
      }

      else
      {
        v7 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    v25[0] = "requires attribute 'mode'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v33;
        v20 = __p;
        if (v33 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v33 = v18;
        operator delete(v20);
      }

      v13 = v30;
      if (!v30)
      {
        goto LABEL_47;
      }

      v21 = v31;
      v15 = v30;
      if (v31 == v30)
      {
LABEL_46:
        v31 = v13;
        operator delete(v15);
LABEL_47:
        if (v28 != &v29)
        {
          free(v28);
        }

        return v9;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v13);
LABEL_45:
      v15 = v30;
      goto LABEL_46;
    }
  }

  else
  {
    v25[0] = "requires attribute 'batch_dims'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v33;
        v12 = __p;
        if (v33 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v33 = v10;
        operator delete(v12);
      }

      v13 = v30;
      if (!v30)
      {
        goto LABEL_47;
      }

      v14 = v31;
      v15 = v30;
      if (v31 == v30)
      {
        goto LABEL_46;
      }

      do
      {
        v17 = *--v14;
        v16 = v17;
        *v14 = 0;
        if (v17)
        {
          MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
        }
      }

      while (v14 != v13);
      goto LABEL_45;
    }
  }

  return v9;
}

BOOL mlir::mps::ScatterOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(a1, v2);
}

BOOL mlir::mps::SelectOp::verifyInvariantsImpl(uint64_t **this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 2 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*((*this)[9] + 56));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*((*this)[9] + 88)))
  {
    v5 = mlir::getElementTypeOrSelf(*((*this)[9] + 88));
    v6 = *(*this + 9) ? *this - 2 : 0;
    v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    if (v5 == mlir::getElementTypeOrSelf(v7))
    {
      v8 = *(*this + 9) ? *this - 2 : 0;
      v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      v10 = mlir::getElementTypeOrSelf(v9);
      if (v10 == mlir::getElementTypeOrSelf(*((*this)[9] + 56)))
      {
        return 1;
      }
    }
  }

  v21 = "failed to verify that all of {true_value, false_value, result} have same element type";
  v22 = 259;
  mlir::OpState::emitOpError(this, &v21, v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  v12 = result;
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
    result = v12;
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
      result = v12;
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
      result = v12;
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
      {
        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v24 != &v25)
    {
      free(v24);
      return v12;
    }
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::getAsmResultNames(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "gradient_output_sequence", 24);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  a2(a3, v9, "gradient_recurrent_weight", 25);
  v10 = *a1;
  v11 = *(*a1 + 36);
  v12 = v10 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 2);
  if (v11 != 2)
  {
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return a2(a3, v15, "gradient_input_state", 20);
  }

  return result;
}

BOOL mlir::mps::SingleGateRNNGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v61 = "expected DictionaryAttr to set properties";
      v62 = 41;
      v26 = &v60;
      v27 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v54 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v27 = v64;
          v26 = (v64 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v26 = &v60;
          v27 = v64;
        }
      }

      v28 = &v27[24 * v65];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v65;
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v71;
      v32 = __p;
      if (v71 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v71 = v30;
      operator delete(v32);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_70;
    }

    v33 = v69;
    v23 = v68;
    if (v69 == v68)
    {
LABEL_69:
      v69 = v21;
      operator delete(v23);
LABEL_70:
      if (v64 != v67)
      {
        free(v64);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v68;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v59, "activation", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v9 = v8;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 55;
        v10 = &v60;
        v11 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v55 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v11 = v64;
            v10 = (v64 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v10 = &v60;
            v11 = v64;
          }
        }

        v12 = &v11[24 * v65];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v65;
        if (v63[0])
        {
          v14 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
          v15 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v56 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v15 = v64;
              v14 = (v64 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v14 = &v60;
              v15 = v64;
            }
          }

          v16 = &v15[24 * v65];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v71;
        v20 = __p;
        if (v71 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v71 = v18;
        operator delete(v20);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v59, "gradient_for_input_state", 0x18uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 69;
        v38 = &v60;
        v39 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v57 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v39 = v64;
            v38 = (v64 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v38 = &v60;
            v39 = v64;
          }
        }

        v40 = &v39[24 * v65];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v65;
        if (v63[0])
        {
          v42 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v37);
          v43 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v58 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v43 = v64;
              v42 = (v64 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v42 = &v60;
              v43 = v64;
            }
          }

          v44 = &v43[24 * v65];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v71;
        v48 = __p;
        if (v71 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v71 = v46;
        operator delete(v48);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v49 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v52 = mlir::DictionaryAttr::get(&v59, "operandSegmentSizes", 0x13uLL);
  if (!v52)
  {
    v52 = mlir::DictionaryAttr::get(&v59, "operand_segment_sizes", 0x15uLL);
    if (!v52)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 2, 5, v52, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = v32;
  v31 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v29, "activation", 0xAuLL, *a2);
    v6 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v25 = NamedAttr;
      v26 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v5 = v26;
      NamedAttr = v25;
      v6 = v31;
    }

    v7 = (v30 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v31) = v31 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v29, "gradient_for_input_state", 0x18uLL, v8);
    v11 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v27 = v9;
      v28 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v10 = v28;
      v9 = v27;
      v11 = v31;
    }

    v12 = (v30 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v31) = v31 + 1;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 5);
  v14 = mlir::Builder::getNamedAttr(&v29, "operandSegmentSizes", 0x13uLL, v13);
  v16 = v31;
  if (v31 >= HIDWORD(v31))
  {
    v23 = v14;
    v24 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
    v15 = v24;
    v14 = v23;
    v16 = v31;
  }

  v17 = (v30 + 16 * v16);
  *v17 = v14;
  v17[1] = v15;
  v18 = __CFADD__(v31, 1);
  v19 = (v31 + 1);
  LODWORD(v31) = v31 + 1;
  if (v18)
  {
    DictionaryAttr = 0;
    v21 = v30;
    if (v30 == v32)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v29, v30, v19);
  v21 = v30;
  if (v30 != v32)
  {
LABEL_16:
    free(v21);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::SingleGateRNNGradientOp::computePropertiesHash(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0xB492B66FBE98F273 * a1[2];
  v8 = a1[3];
  v9 = 0x9AE16A3B2F90404FLL * *(a1 + 28);
  v10 = __ROR8__(v7 - v8, 43) - 0x3C5A37A36834CED9 * *(a1 + 20) + __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = v7 + __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v9 + 20;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v15[0] = v3;
  v15[1] = v6;
  v14 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v15, &v14, v16, v17, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v15, v14, v12, v17);
}

uint64_t mlir::mps::SingleGateRNNGradientOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, _WORD *__s1, uint64_t __n)
{
  if (__n <= 20)
  {
    if (__n == 10)
    {
      if (*__s1 == 0x6974617669746361 && __s1[4] == 28271)
      {
        return *a2;
      }
    }

    else if (__n == 19 && !memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 5);
    }

    return 0;
  }

  if (__n != 21)
  {
    if (__n == 24 && !memcmp(__s1, "gradient_for_input_state", 0x18uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (memcmp(__s1, "operand_segment_sizes", 0x15uLL))
  {
    return 0;
  }

  return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 5);
}

uint64_t mlir::mps::SingleGateRNNGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 20)
  {
    if (a3 == 21)
    {
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }

LABEL_25:
      if (a4)
      {
        result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
        if (result)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v11 = v9;
        if (v9)
        {
          result = mlir::AffineBinaryOpExpr::getLHS(&v11);
          if (result == 5)
          {
            result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v11);
            if (v10)
            {
              return memmove((v5 + 16), result, 4 * v10);
            }
          }
        }
      }

      return result;
    }

    if (a3 == 24)
    {
      result = memcmp(__s1, "gradient_for_input_state", 0x18uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          *(v5 + 8) = v6;
        }

        else
        {
          *(v5 + 8) = 0;
        }
      }
    }
  }

  else
  {
    if (a3 != 10)
    {
      if (a3 != 19)
      {
        return result;
      }

      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }

      goto LABEL_25;
    }

    if (*__s1 == 0x6974617669746361 && *(__s1 + 4) == 28271)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *result = v8;
      }

      else
      {
        *result = 0;
      }
    }
  }

  return result;
}

BOOL mlir::mps::SingleGateRNNGradientOp::readProperties(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(a1, a2[32]) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8)))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 6)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(&v10, a1, &v7);
      if (v10)
      {
        mlir::InFlightDiagnostic::report(&v10);
      }

      if (v11[192] == 1)
      {
        mlir::Diagnostic::~Diagnostic(v11);
      }

      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove((v3 + 16), v4, 4 * v5);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 16), 5) & 1) != 0;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::RNNActivationAttr]";
  v38 = 78;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v50;
      v25 = __p;
      if (v50 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v50 = v23;
      operator delete(v25);
    }

    v26 = v47;
    if (v47)
    {
      v27 = v48;
      v28 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v47;
      }

      v48 = v26;
      operator delete(v28);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v22;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 16), 5);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 5);
  }

  return result;
}

BOOL mlir::mps::SingleGateRNNGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (v6)
  {
    v7 = v5[1];
    v79[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "activation", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v79))
    {
      v79[0] = *this;
      if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "gradient_for_input_state", 0x18, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v79))
      {
        v76 = 0;
        v8 = *this;
        v9 = *(*this + 11);
        v10 = (v9 >> 23) & 1;
        v11 = LODWORD((*this)[2 * v10 + 10]);
        if ((v9 & 0x800000) != 0)
        {
          v12 = v8[9];
          if (v11)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v12 = 0;
          if (v11)
          {
LABEL_6:
            v13 = 0;
            v14 = v12 + 24;
            while (1)
            {
              v15 = *this;
              v16 = *(*v14 + 8);
              v76 = v13 + 1;
              if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, (v16 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
              {
                return 0;
              }

              ++v13;
              v14 += 32;
              if (v11 == v13)
              {
                v8 = *this;
                v9 = *(*this + 11);
                v10 = (v9 >> 23) & 1;
                goto LABEL_32;
              }
            }
          }
        }

        LODWORD(v13) = 0;
LABEL_32:
        v26 = v9 & 0x800000;
        v27 = &v8[2 * v10];
        v28 = *(v27 + 21);
        if (v26)
        {
          v29 = v8[9];
          if (v28)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v29 = 0;
          if (v28)
          {
LABEL_34:
            v30 = *(v27 + 20);
            v31 = (v28 + v30) - v30;
            v32 = v29 + 32 * v30 + 24;
            while (1)
            {
              v33 = v13;
              v34 = *this;
              v35 = *(*v32 + 8);
              LODWORD(v13) = v13 + 1;
              v76 = v13;
              if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v34, (v35 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v33))
              {
                return 0;
              }

              v32 += 32;
              if (!--v31)
              {
                v8 = *this;
                v36 = *(*this + 11);
                v10 = (v36 >> 23) & 1;
                v26 = v36 & 0x800000;
                break;
              }
            }
          }
        }

        v37 = &v8[2 * v10];
        v38 = *(v37 + 22);
        if (v26)
        {
          v39 = v8[9];
          if (v38)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v39 = 0;
          if (v38)
          {
LABEL_40:
            v40 = (*(v37 + 21) + *(v37 + 20));
            v41 = (v38 + v40) - v40;
            v42 = v39 + 32 * v40 + 24;
            while (1)
            {
              v43 = *this;
              v44 = *(*v42 + 8);
              v45 = v13 + 1;
              v76 = v13 + 1;
              if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v43, (v44 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
              {
                return 0;
              }

              v42 += 32;
              LODWORD(v13) = v13 + 1;
              if (!--v41)
              {
                goto LABEL_48;
              }
            }
          }
        }

        v45 = v13;
LABEL_48:
        ODSOperands = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 3u);
        v48 = v47;
        if (v47 >= 2)
        {
          goto LABEL_49;
        }

        if (!v47 || (v53 = *(ODSOperands + 24), v54 = *this, v55 = *(v53 + 8), v76 = v45 + 1, mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v54, (v55 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v45)))
        {
          v57 = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 4u);
          v48 = v58;
          if (v58 >= 2)
          {
LABEL_49:
            v49 = "operand group starting at #";
LABEL_50:
            v77[0] = v49;
            v78 = 259;
            mlir::OpState::emitOpError(this, v77, v79);
            mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v79, &v76);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, " requires 0 or 1 element, but found ");
            v75 = v48;
            mlir::InFlightDiagnostic::operator<<<unsigned long>(v51, &v75);
            v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v79);
            return v17;
          }

          if (!v58 || (v59 = *(v57 + 24), v60 = *this, v61 = *(v59 + 8), v62 = v76, ++v76, mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v60, (v61 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v62)))
          {
            v63 = *(*this + 9) ? *this - 2 : 0;
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v63, 0);
            if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
            {
              v65 = *(*this + 9) ? *this - 2 : 0;
              v66 = mlir::detail::OpResultImpl::getNextResultAtOffset(v65, 1);
              v67 = mlir::detail::OpResultImpl::getNextResultAtOffset(v66, 0);
              v68 = *this;
              v69 = *(v67 + 8);
              v76 = 2;
              if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v68, (v69 & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u))
              {
                ODSResults = mlir::mps::LSTMOp::getODSResults(this, 2u, v70, v71);
                v48 = v73;
                if (v73 < 2)
                {
                  if (!v73)
                  {
                    return 1;
                  }

                  v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(ODSResults, 0);
                  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(v74 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 2u);
                }

                v49 = "result group starting at #";
                goto LABEL_50;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  v77[0] = "requires attribute 'activation'";
  v78 = 259;
  mlir::OpState::emitOpError(this, v77, v79);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
  if (v79[0])
  {
    mlir::InFlightDiagnostic::report(v79);
  }

  if (v87 == 1)
  {
    if (v86 != &v87)
    {
      free(v86);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v85;
      v20 = __p;
      if (v85 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v85 = v18;
      operator delete(v20);
    }

    v21 = v82;
    if (v82)
    {
      v22 = v83;
      v23 = v82;
      if (v83 != v82)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v82;
      }

      v83 = v21;
      operator delete(v23);
    }

    if (v80 != &v81)
    {
      free(v80);
    }
  }

  return v17;
}

BOOL mlir::mps::SingleGateRNNOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v61 = "expected DictionaryAttr to set properties";
      v62 = 41;
      v26 = &v60;
      v27 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v54 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v27 = v64;
          v26 = (v64 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v26 = &v60;
          v27 = v64;
        }
      }

      v28 = &v27[24 * v65];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v65;
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v71;
      v32 = __p;
      if (v71 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v71 = v30;
      operator delete(v32);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_70;
    }

    v33 = v69;
    v23 = v68;
    if (v69 == v68)
    {
LABEL_69:
      v69 = v21;
      operator delete(v23);
LABEL_70:
      if (v64 != v67)
      {
        free(v64);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v68;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v59, "activation", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v9 = v8;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 55;
        v10 = &v60;
        v11 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v55 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v11 = v64;
            v10 = (v64 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v10 = &v60;
            v11 = v64;
          }
        }

        v12 = &v11[24 * v65];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v65;
        if (v63[0])
        {
          v14 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
          v15 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v56 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v15 = v64;
              v14 = (v64 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v14 = &v60;
              v15 = v64;
            }
          }

          v16 = &v15[24 * v65];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v71;
        v20 = __p;
        if (v71 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v71 = v18;
        operator delete(v20);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v22 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v59, "training", 8uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(v63, a4);
      if (v63[0])
      {
        v60 = 3;
        v62 = 53;
        v38 = &v60;
        v39 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v57 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v39 = v64;
            v38 = (v64 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v38 = &v60;
            v39 = v64;
          }
        }

        v40 = &v39[24 * v65];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v65;
        if (v63[0])
        {
          v42 = &v60;
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v37);
          v43 = v64;
          if (v65 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v65 > &v60)
            {
              v58 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v43 = v64;
              v42 = (v64 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
              v42 = &v60;
              v43 = v64;
            }
          }

          v44 = &v43[24 * v65];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v65;
          if (v63[0])
          {
            mlir::InFlightDiagnostic::report(v63);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v71;
        v48 = __p;
        if (v71 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v71 = v46;
        operator delete(v48);
      }

      v21 = v68;
      if (!v68)
      {
        goto LABEL_70;
      }

      v49 = v69;
      v23 = v68;
      if (v69 == v68)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v52 = mlir::DictionaryAttr::get(&v59, "operandSegmentSizes", 0x13uLL);
  if (!v52)
  {
    v52 = mlir::DictionaryAttr::get(&v59, "operand_segment_sizes", 0x15uLL);
    if (!v52)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 2, 4, v52, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::SingleGateRNNOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = v32;
  v31 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v29, "activation", 0xAuLL, *a2);
    v6 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v25 = NamedAttr;
      v26 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v5 = v26;
      NamedAttr = v25;
      v6 = v31;
    }

    v7 = (v30 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v31) = v31 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v29, "training", 8uLL, v8);
    v11 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v27 = v9;
      v28 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v10 = v28;
      v9 = v27;
      v11 = v31;
    }

    v12 = (v30 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v31) = v31 + 1;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 4);
  v14 = mlir::Builder::getNamedAttr(&v29, "operandSegmentSizes", 0x13uLL, v13);
  v16 = v31;
  if (v31 >= HIDWORD(v31))
  {
    v23 = v14;
    v24 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
    v15 = v24;
    v14 = v23;
    v16 = v31;
  }

  v17 = (v30 + 16 * v16);
  *v17 = v14;
  v17[1] = v15;
  v18 = __CFADD__(v31, 1);
  v19 = (v31 + 1);
  LODWORD(v31) = v31 + 1;
  if (v18)
  {
    DictionaryAttr = 0;
    v21 = v30;
    if (v30 == v32)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v29, v30, v19);
  v21 = v30;
  if (v30 != v32)
  {
LABEL_16:
    free(v21);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::SingleGateRNNOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 18)
  {
    if (__n == 8)
    {
      if (!memcmp(__s1, "training", 8uLL))
      {
        return a2[1];
      }
    }

    else if (__n == 10 && *__s1 == 0x6974617669746361 && *(__s1 + 4) == 28271)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 19)
  {
    if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 4);
    }

    return 0;
  }

  if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
  {
    return 0;
  }

  return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 2), 4);
}

uint64_t mlir::mps::SingleGateRNNOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      v8 = result ? a4 : 0;
      v11 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v11);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v11);
          if (v9)
          {
            return memmove((v5 + 16), result, 4 * v9);
          }
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "training", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 8) = v7;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 10 && *__s1 == 0x6974617669746361 && *(__s1 + 4) == 28271)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::SingleGateRNNOp::readProperties(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(a1, *(a2 + 256)))
  {
    return 0;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v17 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v17))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v17) >= 5)
    {
      v15 = "size mismatch for operand/result_segment_size";
      v16 = 259;
      (*(*a1 + 16))(v18, a1, &v15);
      if (v18[0])
      {
        mlir::InFlightDiagnostic::report(v18);
      }

      if (v26 == 1)
      {
        if (v25 != &v26)
        {
          free(v25);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v24;
          v6 = __p;
          if (v24 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v24 = v4;
          operator delete(v6);
        }

        v7 = v21;
        if (v21)
        {
          v8 = v22;
          v9 = v21;
          if (v22 != v21)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
              }
            }

            while (v8 != v7);
            v9 = v21;
          }

          v22 = v7;
          operator delete(v9);
        }

        if (v19 != &v20)
        {
          free(v19);
        }
      }

      return 0;
    }

    v12 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
    if (v13)
    {
      memmove((v3 + 16), v12, 4 * v13);
    }
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8)) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 16), 4) & 1) != 0);
}

uint64_t mlir::mps::SingleGateRNNOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 16), 4);
    (*(*a2 + 16))(a2, v8);
  }

  (*(*a2 + 24))(a2, *(v5 + 8));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 4);
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNOp::verifyInvariantsImpl(uint64_t **this)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v5 = v3 + 8;
  v4 = v6;
  if (v6)
  {
    v7 = v5[1];
    v72[0] = v2;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "activation", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v72))
    {
      return 0;
    }

    v72[0] = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "training", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v72))
    {
      return 0;
    }

    v69 = 0;
    v8 = *this;
    v9 = *(*this + 11);
    v10 = (v9 >> 23) & 1;
    v11 = LODWORD((*this)[2 * v10 + 10]);
    if ((v9 & 0x800000) != 0)
    {
      v12 = v8[9];
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = 0;
      if (v11)
      {
LABEL_6:
        v13 = 0;
        v14 = v12 + 24;
        while (1)
        {
          v15 = *this;
          v16 = *(*v14 + 8);
          v69 = v13 + 1;
          if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, (v16 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
          {
            return 0;
          }

          ++v13;
          v14 += 32;
          if (v11 == v13)
          {
            v8 = *this;
            v9 = *(*this + 11);
            v10 = (v9 >> 23) & 1;
            goto LABEL_32;
          }
        }
      }
    }

    LODWORD(v13) = 0;
LABEL_32:
    v26 = v9 & 0x800000;
    v27 = &v8[2 * v10];
    v28 = *(v27 + 21);
    if (v26)
    {
      v29 = v8[9];
      if (v28)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v29 = 0;
      if (v28)
      {
LABEL_34:
        v30 = *(v27 + 20);
        v31 = (v28 + v30) - v30;
        v32 = v29 + 32 * v30 + 24;
        while (1)
        {
          v33 = *this;
          v34 = *(*v32 + 8);
          v69 = v13 + 1;
          if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v33, (v34 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
          {
            return 0;
          }

          v32 += 32;
          LODWORD(v13) = v13 + 1;
          if (!--v31)
          {
            v8 = *this;
            v35 = *(*this + 11);
            v10 = (v35 >> 23) & 1;
            v26 = v35 & 0x800000;
            break;
          }
        }
      }
    }

    v36 = &v8[2 * v10];
    v37 = (*(v36 + 21) + *(v36 + 20));
    v38 = *(v36 + 22);
    if (v26)
    {
      v39 = v8[9];
      v40 = (v38 + v37) - v37;
      if (v40 > 1)
      {
LABEL_40:
        v41 = "operand group starting at #";
LABEL_41:
        v70[0] = v41;
        v71 = 259;
        mlir::OpState::emitOpError(this, v70, v72);
        mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v72, &v69);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, " requires 0 or 1 element, but found ");
        v68 = v40;
LABEL_42:
        mlir::InFlightDiagnostic::operator<<<unsigned long>(v43, &v68);
        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v72);
        return v17;
      }
    }

    else
    {
      v39 = 0;
      v40 = (v38 + v37) - v37;
      if (v40 > 1)
      {
        goto LABEL_40;
      }
    }

    if (v38)
    {
      v45 = v39 + 32 * v37 + 24;
      do
      {
        v46 = *this;
        v47 = *(*v45 + 8);
        v48 = v69++;
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v46, (v47 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v48))
        {
          return 0;
        }

        v45 += 32;
      }

      while (--v40);
    }

    ODSOperands = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 3u);
    v51 = v50;
    if (v50 >= 2)
    {
      v70[0] = "operand group starting at #";
      v71 = 259;
      mlir::OpState::emitOpError(this, v70, v72);
      mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v72, &v69);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v52, " requires 0 or 1 element, but found ");
      v68 = v51;
      goto LABEL_42;
    }

    if (v50)
    {
      v53 = *(ODSOperands + 24);
      v54 = *this;
      v55 = *(v53 + 8);
      v56 = v69++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v54, (v55 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v56))
      {
        return 0;
      }
    }

    if (*(*this + 9))
    {
      v57 = *this - 2;
    }

    else
    {
      v57 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 0);
    v59 = *this;
    v60 = *(NextResultAtOffset + 8);
    v69 = 1;
    v17 = 0;
    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v59, (v60 & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      v61 = *(*this + 9);
      if (*(*this + 9))
      {
        v62 = *this - 2;
      }

      else
      {
        v62 = 0;
      }

      v63 = mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 1);
      v40 = v61 - 1;
      if ((v61 - 1) > 1)
      {
        v41 = "result group starting at #";
        goto LABEL_41;
      }

      if (v61 == 1)
      {
        return 1;
      }

      v64 = v63;
      v65 = 1;
      while (1)
      {
        v66 = mlir::detail::OpResultImpl::getNextResultAtOffset(v64, v65 - 1);
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(v66 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v65))
        {
          break;
        }

        if (v61 == ++v65)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else
  {
    v70[0] = "requires attribute 'activation'";
    v71 = 259;
    mlir::OpState::emitOpError(this, v70, v72);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v72);
    if (v72[0])
    {
      mlir::InFlightDiagnostic::report(v72);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v78;
        v20 = __p;
        if (v78 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v78 = v18;
        operator delete(v20);
      }

      v21 = v75;
      if (v75)
      {
        v22 = v76;
        v23 = v75;
        if (v76 != v75)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
            }
          }

          while (v22 != v21);
          v23 = v75;
        }

        v76 = v21;
        operator delete(v23);
      }

      if (v73 != &v74)
      {
        free(v73);
      }
    }
  }

  return v17;
}

BOOL mlir::mps::SliceOp::verifyInvariantsImpl(uint64_t **this)
{
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

void mlir::mps::SoftplusParametricOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v25;
  v24 = 0x200000000;
  v7 = *a2;
  mlir::ValueRange::ValueRange(&v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  v26[0] = v21;
  v26[1] = v22;
  if (v22)
  {
    v9 = *(mlir::ValueRange::dereference_iterator(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = v24;
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v25, v24 + 1, 8);
      v10 = v24;
    }

    *(__src + v10) = v9;
    v11 = v24 + 1;
    LODWORD(v24) = v11;
    v12 = __src;
    v13 = *(a2 + 72);
    v14 = v13 + v11;
    if (v14 > *(a2 + 76))
    {
LABEL_5:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v14, 8);
      LODWORD(v13) = *(a2 + 72);
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[41]>(v7, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1, v15);
    }

    v11 = v24;
    v12 = __src;
    v13 = *(a2 + 72);
    v14 = v13 + v24;
    if (v14 > *(a2 + 76))
    {
      goto LABEL_5;
    }
  }

  if (v11)
  {
    memcpy((*(a2 + 64) + 8 * v13), v12, 8 * v11);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v11;
  if (__src != v25)
  {
    free(__src);
  }
}

BOOL mlir::mps::SoftplusParametricOp::verifyInvariantsImpl(uint64_t **this)
{
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps48(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps48(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 2;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps48(uint64_t *ShapedType, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v153 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_2:
    if (*(v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

    goto LABEL_132;
  }

  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v10 + 8);
    v40 = *(v10 + 16);
    if (!v40)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v56 = v10;
    mlir::Builder::getZeroAttr();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v56 + 8);
    v40 = *(v56 + 16);
    if (!v40)
    {
      goto LABEL_66;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 == &v39[2 * v40] || *v41 != v38)
  {
LABEL_66:
    v141 = a2;
    v142 = 0;
    v57 = mlir::ElementsAttr::getShapedType(&v141);
    v10 = *a2;
    if (!v57)
    {
      goto LABEL_2;
    }

    goto LABEL_69;
  }

  v58 = v41[1];
  v141 = a2;
  v142 = v58;
  v59 = mlir::ElementsAttr::getShapedType(&v141);
  v10 = *a2;
  if (!v59)
  {
    goto LABEL_2;
  }

LABEL_69:
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v10 + 8);
    v62 = *(v10 + 16);
    if (!v62)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v127 = v10;
    mlir::Builder::getI32VectorAttr();
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v127 + 8);
    v62 = *(v127 + 16);
    if (!v62)
    {
      goto LABEL_100;
    }
  }

  v63 = v61;
  v64 = v62;
  do
  {
    v65 = v64 >> 1;
    v66 = &v63[2 * (v64 >> 1)];
    v68 = *v66;
    v67 = v66 + 2;
    v64 += ~(v64 >> 1);
    if (v68 < v60)
    {
      v63 = v67;
    }

    else
    {
      v64 = v65;
    }
  }

  while (v64);
  if (v63 == &v61[2 * v62] || *v63 != v60)
  {
LABEL_100:
    v128 = a2;
    v129 = 0;
    mlir::ShapedType::getShape(&v128);
    v10 = *a2;
    if (v71)
    {
      goto LABEL_2;
    }

    goto LABEL_103;
  }

  v72 = v63[1];
  v128 = a2;
  v129 = v72;
  mlir::ShapedType::getShape(&v128);
  v10 = *a2;
  if (v73)
  {
    goto LABEL_2;
  }

LABEL_103:
  {
    v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v75 = *(v10 + 8);
    v76 = *(v10 + 16);
    if (!v76)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v84 = v10;
    mlir::Builder::getI32VectorAttr();
    v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v75 = *(v84 + 8);
    v76 = *(v84 + 16);
    if (!v76)
    {
      goto LABEL_116;
    }
  }

  v77 = v75;
  v78 = v76;
  do
  {
    v79 = v78 >> 1;
    v80 = &v77[2 * (v78 >> 1)];
    v82 = *v80;
    v81 = v80 + 2;
    v78 += ~(v78 >> 1);
    if (v82 < v74)
    {
      v77 = v81;
    }

    else
    {
      v78 = v79;
    }
  }

  while (v78);
  if (v77 != &v75[2 * v76] && *v77 == v74)
  {
    v85 = v77[1];
    goto LABEL_118;
  }

LABEL_116:
  v85 = 0;
LABEL_118:
  v138 = a2;
  v139 = v85;
  isSplat = mlir::ElementsAttr::isSplat(&v138);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

LABEL_132:
  {
    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v87 = *(v10 + 8);
    v88 = *(v10 + 16);
    if (!v88)
    {
      goto LABEL_144;
    }
  }

  else
  {
    v95 = v10;
    mlir::Builder::getI32VectorAttr();
    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v87 = *(v95 + 8);
    v88 = *(v95 + 16);
    if (!v88)
    {
      goto LABEL_144;
    }
  }

  v89 = v87;
  v90 = v88;
  do
  {
    v91 = v90 >> 1;
    v92 = &v89[2 * (v90 >> 1)];
    v94 = *v92;
    v93 = v92 + 2;
    v90 += ~(v90 >> 1);
    if (v94 < v86)
    {
      v89 = v93;
    }

    else
    {
      v90 = v91;
    }
  }

  while (v90);
  if (v89 == &v87[2 * v88] || *v89 != v86)
  {
LABEL_144:
    v135 = a2;
    v136 = 0;
    v96 = mlir::ElementsAttr::getShapedType(&v135);
    v10 = *a2;
    if (!v96)
    {
      goto LABEL_3;
    }

    goto LABEL_147;
  }

  v97 = v89[1];
  v135 = a2;
  v136 = v97;
  v98 = mlir::ElementsAttr::getShapedType(&v135);
  v10 = *a2;
  if (!v98)
  {
    goto LABEL_3;
  }

LABEL_147:
  {
    v99 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v100 = *(v10 + 8);
    v101 = *(v10 + 16);
    if (!v101)
    {
      goto LABEL_159;
    }
  }

  else
  {
    v108 = v10;
    mlir::Builder::getI32VectorAttr();
    v99 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v100 = *(v108 + 8);
    v101 = *(v108 + 16);
    if (!v101)
    {
      goto LABEL_159;
    }
  }

  v102 = v100;
  v103 = v101;
  do
  {
    v104 = v103 >> 1;
    v105 = &v102[2 * (v103 >> 1)];
    v107 = *v105;
    v106 = v105 + 2;
    v103 += ~(v103 >> 1);
    if (v107 < v99)
    {
      v102 = v106;
    }

    else
    {
      v103 = v104;
    }
  }

  while (v103);
  if (v102 == &v100[2 * v101] || *v102 != v99)
  {
LABEL_159:
    v133 = a2;
    v134 = 0;
    mlir::ShapedType::getShape(&v133);
    v10 = *a2;
    if (v109 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_162;
  }

  v110 = v102[1];
  v133 = a2;
  v134 = v110;
  mlir::ShapedType::getShape(&v133);
  v10 = *a2;
  if (v111 != 1)
  {
    goto LABEL_3;
  }

LABEL_162:
  {
    v121 = v10;
    mlir::Builder::getI32VectorAttr();
    v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v113 = *(v121 + 8);
    v114 = *(v121 + 16);
    if (v114)
    {
      goto LABEL_164;
    }

LABEL_174:
    v122 = 0;
    goto LABEL_176;
  }

  v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v113 = *(v10 + 8);
  v114 = *(v10 + 16);
  if (!v114)
  {
    goto LABEL_174;
  }

LABEL_164:
  v115 = v113;
  v116 = v114;
  do
  {
    v117 = v116 >> 1;
    v118 = &v115[2 * (v116 >> 1)];
    v120 = *v118;
    v119 = v118 + 2;
    v116 += ~(v116 >> 1);
    if (v120 < v112)
    {
      v115 = v119;
    }

    else
    {
      v116 = v117;
    }
  }

  while (v116);
  if (v115 == &v113[2 * v114] || *v115 != v112)
  {
    goto LABEL_174;
  }

  v122 = v115[1];
LABEL_176:
  v132[0] = a2;
  v132[1] = v122;
  isSplat = mlir::ElementsAttr::isSplat(v132);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v10 = *a2;
LABEL_3:
  if (*(v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v48 = *(v10 + 8);
      v49 = *(v10 + 16);
      if (!v49)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v69 = v10;
      mlir::Builder::getI32VectorAttr();
      v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v48 = *(v69 + 8);
      v49 = *(v69 + 16);
      if (!v49)
      {
        goto LABEL_81;
      }
    }

    v50 = v48;
    v51 = v49;
    do
    {
      v52 = v51 >> 1;
      v53 = &v50[2 * (v51 >> 1)];
      v55 = *v53;
      v54 = v53 + 2;
      v51 += ~(v51 >> 1);
      if (v55 < v47)
      {
        v50 = v54;
      }

      else
      {
        v51 = v52;
      }
    }

    while (v51);
    if (v50 != &v48[2 * v49] && *v50 == v47)
    {
      v70 = v50[1];
      goto LABEL_83;
    }

LABEL_81:
    v70 = 0;
LABEL_83:
    v131[0] = a2;
    v131[1] = v70;
    isSplat = mlir::ElementsAttr::isSplat(v131);
    if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_4;
    }

    return 1;
  }

LABEL_4:
  v130 = 261;
  v128 = a3;
  v129 = a4;
  mlir::Operation::emitOpError(ShapedType, &v128, &v141);
  if (v141)
  {
    LODWORD(v138) = 3;
    v139 = " #";
    v140 = 2;
    v11 = &v138;
    v12 = v143;
    if (v144 >= v145)
    {
      if (v143 <= &v138 && v143 + 24 * v144 > &v138)
      {
        v83 = &v138 - v143;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
        v12 = v143;
        v11 = (v143 + v83);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
        v11 = &v138;
        v12 = v143;
      }
    }

    v13 = &v12[24 * v144];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    v15 = ++v144;
    if (v141)
    {
      LODWORD(v138) = 5;
      v139 = a5;
      v16 = &v138;
      v17 = v143;
      if (v15 >= v145)
      {
        if (v143 <= &v138 && v143 + 24 * v15 > &v138)
        {
          v124 = &v138 - v143;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v15 + 1, 24);
          v17 = v143;
          v16 = (v143 + v124);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v15 + 1, 24);
          v16 = &v138;
          v17 = v143;
        }
      }

      v18 = &v17[24 * v144];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      v20 = ++v144;
      if (v141)
      {
        LODWORD(v138) = 3;
        v139 = " must be 0D tensor of mps native type values or 1D tensor of mps native type values or unranked tensor of mps native type values, but got ";
        v140 = 138;
        v21 = &v138;
        v22 = v143;
        if (v20 >= v145)
        {
          if (v143 <= &v138 && v143 + 24 * v20 > &v138)
          {
            v125 = &v138 - v143;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v20 + 1, 24);
            v22 = v143;
            v21 = (v143 + v125);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v20 + 1, 24);
            v21 = &v138;
            v22 = v143;
          }
        }

        v23 = &v22[24 * v144];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        ++v144;
        if (v141)
        {
          v25 = &v138;
          mlir::DiagnosticArgument::DiagnosticArgument(&v138, a2);
          v26 = v143;
          if (v144 >= v145)
          {
            if (v143 <= &v138 && v143 + 24 * v144 > &v138)
            {
              v126 = &v138 - v143;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
              v26 = v143;
              v25 = (v143 + v126);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
              v25 = &v138;
              v26 = v143;
            }
          }

          v27 = &v26[24 * v144];
          v28 = *v25;
          *(v27 + 2) = v25[2];
          *v27 = v28;
          ++v144;
        }
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
  if (v141)
  {
    mlir::InFlightDiagnostic::report(&v141);
  }

  if (v152 == 1)
  {
    if (v151 != &v152)
    {
      free(v151);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v150;
      v32 = __p;
      if (v150 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v150 = v30;
      operator delete(v32);
    }

    v33 = v147;
    if (v147)
    {
      v34 = v148;
      v35 = v147;
      if (v148 != v147)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            MEMORY[0x1AC55A040](v36, 0x1000C8077774924);
          }
        }

        while (v34 != v33);
        v35 = v147;
      }

      v148 = v33;
      operator delete(v35);
    }

    if (v143 != v146)
    {
      free(v143);
    }
  }

  return v29;
}

uint64_t mlir::mps::SortOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "descending", 0xAuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 55;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::SortOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "descending", 0xAuLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::SortOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::SortOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v10 = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "descending", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 2 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v6 = *this - 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u);
}

BOOL mlir::mps::SpaceToBatchOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::SpaceToDepth2DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

uint64_t mlir::mps::SplitOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "num_splits", 0xAuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 55;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::SplitOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "num_splits", 0xAuLL, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::SplitOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

BOOL mlir::mps::SplitOp::verifyInvariantsImpl(uint64_t **this)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v46[0] = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v3, "num_splits", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -2;
    goto LABEL_6;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 2;
  if ((v5 - 2) <= 1)
  {
    if (v5 == 2)
    {
LABEL_34:
      v33 = *(v4 + 9);
      v34 = v4 - 2;
      if (v33)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if (!v33)
      {
        return 1;
      }

      v36 = 0;
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v36);
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v36))
        {
          break;
        }

        ++v36;
        result = 1;
        if (v33 == v36)
        {
          return result;
        }
      }
    }

    else
    {
      v31 = v4[9] + 88;
      v32 = 2;
      while (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*v31 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v32))
      {
        ++v32;
        v31 += 32;
        if (v5 == v32)
        {
          v4 = *this;
          goto LABEL_34;
        }
      }
    }

    return 0;
  }

LABEL_6:
  v41 = "operand group starting at #";
  v42 = 259;
  mlir::OpState::emitOpError(this, &v41, v46);
  if (v46[0])
  {
    v43 = 5;
    v44 = 2;
    v7 = &v43;
    v8 = v47;
    if (v48 >= v49)
    {
      if (v47 <= &v43 && v47 + 24 * v48 > &v43)
      {
        v38 = &v43 - v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v8 = v47;
        v7 = (v47 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
        v7 = &v43;
        v8 = v47;
      }
    }

    v9 = &v8[24 * v48];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v48;
    if (v46[0])
    {
      v43 = 3;
      v44 = " requires 0 or 1 element, but found ";
      v45 = 36;
      v12 = &v43;
      v13 = v47;
      if (v11 >= v49)
      {
        if (v47 <= &v43 && v47 + 24 * v11 > &v43)
        {
          v39 = &v43 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v11 + 1, 24);
          v13 = v47;
          v12 = (v47 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v11 + 1, 24);
          v12 = &v43;
          v13 = v47;
        }
      }

      v14 = &v13[24 * v48];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v48;
      if (v46[0])
      {
        v43 = 5;
        v44 = v6;
        v17 = &v43;
        v18 = v47;
        if (v16 >= v49)
        {
          if (v47 <= &v43 && v47 + 24 * v16 > &v43)
          {
            v40 = &v43 - v47;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v16 + 1, 24);
            v18 = v47;
            v17 = (v47 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v16 + 1, 24);
            v17 = &v43;
            v18 = v47;
          }
        }

        v19 = &v18[24 * v48];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v48;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
  v22 = result;
  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
    result = v22;
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
      result = v22;
    }

    v23 = __p;
    if (__p)
    {
      v24 = v54;
      v25 = __p;
      if (v54 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v54 = v23;
      operator delete(v25);
      result = v22;
    }

    v26 = v51;
    if (v51)
    {
      v27 = v52;
      v28 = v51;
      if (v52 != v51)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v51;
      }

      v52 = v26;
      operator delete(v28);
      result = v22;
    }

    if (v47 != v50)
    {
      free(v47);
      return v22;
    }
  }

  return result;
}

uint64_t mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(a1 + 72) = v3[3];
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 88), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 88), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::StencilOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v78 = v6;
  if (!v6)
  {
    a3(&v82, a4);
    if (v82)
    {
      LODWORD(v79) = 3;
      v80 = "expected DictionaryAttr to set properties";
      v81 = 41;
      v16 = &v79;
      v17 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v79 && v84 + 24 * v85 > &v79)
        {
          v71 = &v79 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v17 = v84;
          v16 = (v84 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v16 = &v79;
          v17 = v84;
        }
      }

      v18 = &v17[24 * v85];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v85;
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }
    }

    if (v93 != 1)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v91;
      v22 = __p;
      if (v91 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v91 = v20;
      operator delete(v22);
    }

    v23 = v88;
    if (!v88)
    {
      goto LABEL_77;
    }

    v24 = v89;
    v25 = v88;
    if (v89 == v88)
    {
LABEL_76:
      v89 = v23;
      operator delete(v25);
LABEL_77:
      if (v84 != v87)
      {
        free(v84);
      }

      return 0;
    }

    do
    {
      v27 = *--v24;
      v26 = v27;
      *v24 = 0;
      if (v27)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
      }
    }

    while (v24 != v23);
LABEL_75:
    v25 = v88;
    goto LABEL_76;
  }

  v8 = mlir::DictionaryAttr::get(&v78, "dilation_rates", 0xEuLL);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::DenseIntElementsAttr::classof(v8))
  {
    a3(&v82, a4);
    if (v82)
    {
      LODWORD(v79) = 3;
      v81 = 59;
      v28 = &v79;
      v29 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v79 && v84 + 24 * v85 > &v79)
        {
          v72 = &v79 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v29 = v84;
          v28 = (v84 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v28 = &v79;
          v29 = v84;
        }
      }

      v30 = &v29[24 * v85];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v85;
      if (v82)
      {
        v32 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v9);
        v33 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v79 && v84 + 24 * v85 > &v79)
          {
            v74 = &v79 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v33 = v84;
            v32 = (v84 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v32 = &v79;
            v33 = v84;
          }
        }

        v34 = &v33[24 * v85];
        v35 = *v32;
        *(v34 + 2) = v32[2];
        *v34 = v35;
        ++v85;
        if (v82)
        {
          mlir::InFlightDiagnostic::report(&v82);
        }
      }
    }

    if ((v93 & 1) == 0)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v91;
      v38 = __p;
      if (v91 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v91 = v36;
      operator delete(v38);
    }

    v23 = v88;
    if (!v88)
    {
      goto LABEL_77;
    }

    v39 = v89;
    v25 = v88;
    if (v89 == v88)
    {
      goto LABEL_76;
    }

    do
    {
      v41 = *--v39;
      v40 = v41;
      *v39 = 0;
      if (v41)
      {
        MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
      }
    }

    while (v39 != v23);
    goto LABEL_75;
  }

  *a1 = v9;
LABEL_8:
  v10 = mlir::DictionaryAttr::get(&v78, "explicit_padding", 0x10uLL);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::DenseIntElementsAttr::classof(v10))
  {
    a3(&v82, a4);
    if (v82)
    {
      LODWORD(v79) = 3;
      v81 = 61;
      v42 = &v79;
      v43 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v79 && v84 + 24 * v85 > &v79)
        {
          v73 = &v79 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v43 = v84;
          v42 = (v84 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v42 = &v79;
          v43 = v84;
        }
      }

      v44 = &v43[24 * v85];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v85;
      if (v82)
      {
        v46 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v11);
        v47 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v79 && v84 + 24 * v85 > &v79)
          {
            v76 = &v79 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v47 = v84;
            v46 = (v84 + v76);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v46 = &v79;
            v47 = v84;
          }
        }

        v48 = &v47[24 * v85];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v85;
        if (v82)
        {
          mlir::InFlightDiagnostic::report(&v82);
        }
      }
    }

    if ((v93 & 1) == 0)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v91;
      v52 = __p;
      if (v91 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v91 = v50;
      operator delete(v52);
    }

    v23 = v88;
    if (!v88)
    {
      goto LABEL_77;
    }

    v53 = v89;
    v25 = v88;
    if (v89 == v88)
    {
      goto LABEL_76;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        MEMORY[0x1AC55A040](v54, 0x1000C8077774924);
      }
    }

    while (v53 != v23);
    goto LABEL_75;
  }

  a1[1] = v11;
LABEL_11:
  v12 = mlir::DictionaryAttr::get(&v78, "offsets", 7uLL);
  if (v12)
  {
    v13 = v12;
    if (!mlir::DenseIntElementsAttr::classof(v12))
    {
      a3(&v82, a4);
      if (v82)
      {
        LODWORD(v79) = 3;
        v81 = 52;
        v56 = &v79;
        v57 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v79 && v84 + 24 * v85 > &v79)
          {
            v75 = &v79 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v57 = v84;
            v56 = (v84 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v56 = &v79;
            v57 = v84;
          }
        }

        v58 = &v57[24 * v85];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v85;
        if (v82)
        {
          v60 = &v79;
          mlir::DiagnosticArgument::DiagnosticArgument(&v79, v13);
          v61 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v79 && v84 + 24 * v85 > &v79)
            {
              v77 = &v79 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v61 = v84;
              v60 = (v84 + v77);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v60 = &v79;
              v61 = v84;
            }
          }

          v62 = &v61[24 * v85];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v85;
          if (v82)
          {
            mlir::InFlightDiagnostic::report(&v82);
          }
        }
      }

      if (v93 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v83);
      }

      return 0;
    }

    a1[2] = v13;
  }

  v14 = mlir::DictionaryAttr::get(&v78, "paddingConstant", 0xFuLL);
  v79 = v14;
  if (!v14)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v78, "paddingMode", 0xBuLL);
    v79 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
      {
        a3(&v82, a4);
        goto LABEL_100;
      }

      a1[4] = v64;
    }

    v65 = mlir::DictionaryAttr::get(&v78, "padding_style", 0xDuLL);
    v79 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v82, a4);
LABEL_99:
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v82, v66);
        goto LABEL_100;
      }

      a1[5] = v65;
    }

    v67 = mlir::DictionaryAttr::get(&v78, "reductionMode", 0xDuLL);
    v79 = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
      {
        a3(&v82, a4);
        goto LABEL_99;
      }

      a1[6] = v67;
    }

    v69 = mlir::DictionaryAttr::get(&v78, "strides", 7uLL);
    v79 = v69;
    if (v69)
    {
      v70 = v69;
      if (!mlir::DenseIntElementsAttr::classof(v69))
      {
        a3(&v82, a4);
        goto LABEL_100;
      }

      a1[7] = v70;
    }

    return 1;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[3] = v14;
    goto LABEL_88;
  }

  a3(&v82, a4);
LABEL_100:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v15, &v79);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
  return 0;
}

uint64_t mlir::mps::StencilOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v65[6] = *MEMORY[0x1E69E9840];
  v62 = a1;
  v63 = v65;
  v64 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v62, "dilation_rates", 0xEuLL, *a2);
  v5 = v64;
  if (v64 >= HIDWORD(v64))
  {
    v46 = NamedAttr;
    v47 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
    v4 = v47;
    NamedAttr = v46;
    v5 = v64;
  }

  v6 = (v63 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v64 + 1;
  LODWORD(v64) = v64 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v62, "explicit_padding", 0x10uLL, v8);
    v11 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v48 = v9;
      v49 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v10 = v49;
      v9 = v48;
      v11 = v64;
    }

    v12 = (v63 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v62, "offsets", 7uLL, v13);
    v16 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v50 = v14;
      v51 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v15 = v51;
      v14 = v50;
      v16 = v64;
    }

    v17 = (v63 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v62, "paddingConstant", 0xFuLL, v18);
    v21 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v52 = v19;
      v53 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v20 = v53;
      v19 = v52;
      v21 = v64;
    }

    v22 = (v63 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v62, "paddingMode", 0xBuLL, v23);
    v26 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v54 = v24;
      v55 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v25 = v55;
      v24 = v54;
      v26 = v64;
    }

    v27 = (v63 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v62, "padding_style", 0xDuLL, v28);
    v31 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v56 = v29;
      v57 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v30 = v57;
      v29 = v56;
      v31 = v64;
    }

    v32 = (v63 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v62, "reductionMode", 0xDuLL, v33);
    v36 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v58 = v34;
      v59 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v35 = v59;
      v34 = v58;
      v36 = v64;
    }

    v37 = (v63 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v62, "strides", 7uLL, v38);
    v41 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v60 = v39;
      v61 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v40 = v61;
      v39 = v60;
      v41 = v64;
    }

    v42 = (v63 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v43 = v63;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v63 == v65)
    {
      return DictionaryAttr;
    }

    goto LABEL_36;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v62, v63, v7);
  v43 = v63;
  if (v63 != v65)
  {
LABEL_36:
    free(v43);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::StencilOp::computePropertiesHash(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v28 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v26 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v24 = v19;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v33 = 0xFF51AFD7ED558CCDLL;
  v29[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v29[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v29, 0, v30, v31, &v28, &v27, &v26, &v25, &v24, &v23);
}

uint64_t mlir::mps::StencilOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 13)
  {
    switch(__n)
    {
      case 16:
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[1];
        }

        break;
      case 15:
        if (!memcmp(__s1, "paddingConstant", 0xFuLL))
        {
          return a2[3];
        }

        break;
      case 14:
        if (*__s1 != 0x6E6F6974616C6964 || *(__s1 + 6) != 0x73657461725F6E6FLL)
        {
          return 0;
        }

        return *a2;
      default:
        return 0;
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "offsets", 7uLL))
    {
      return a2[2];
    }

    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 11)
  {
    if (!memcmp(__s1, "paddingMode", 0xBuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (!memcmp(__s1, "padding_style", 0xDuLL))
  {
    return a2[5];
  }

  if (*__s1 != 0x6F69746375646572 || *(__s1 + 5) != 0x65646F4D6E6F6974)
  {
    return 0;
  }

  return a2[6];
}

uint64_t *mlir::mps::StencilOp::setInherentAttr(uint64_t *result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 13)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 15)
    {
      result = memcmp(__s1, "paddingConstant", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[3] = v14;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }

    else if (a3 == 14 && *__s1 == 0x6E6F6974616C6964 && *(__s1 + 6) == 0x73657461725F6E6FLL)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        *v5 = v9;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "offsets", 7uLL);
        if (result)
        {
          result = memcmp(__s1, "strides", 7uLL);
          if (!result)
          {
            if (a4)
            {
              result = mlir::DenseIntElementsAttr::classof(a4);
              if (result)
              {
                v11 = a4;
              }

              else
              {
                v11 = 0;
              }

              v5[7] = v11;
            }

            else
            {
              v5[7] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[2] = v15;
        }

        else
        {
          v5[2] = 0;
        }

        break;
      case 11:
        result = memcmp(__s1, "paddingMode", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[4] = v13;
          }

          else
          {
            v5[4] = 0;
          }
        }

        break;
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (result)
        {
          if (*__s1 == 0x6F69746375646572 && *(__s1 + 5) == 0x65646F4D6E6F6974)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
              {
                v17 = a4;
              }

              else
              {
                v17 = 0;
              }

              v5[6] = v17;
            }

            else
            {
              v5[6] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
          {
            v16 = a4;
          }

          else
          {
            v16 = 0;
          }

          v5[5] = v16;
        }

        else
        {
          v5[5] = 0;
        }

        break;
    }
  }

  return result;
}

void mlir::mps::StencilOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "offsets", 7uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "paddingConstant", 0xFuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "paddingMode", 0xBuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "reductionMode", 0xDuLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {

    mlir::NamedAttrList::append(a3, "strides", 7uLL, v11);
  }
}

BOOL mlir::mps::StencilOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v8, "dilation_rates", 0xE, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v9, "explicit_padding", 0x10, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(v10, "offsets", 7, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "paddingConstant", 0xF, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(v12, "paddingMode", 0xB, a3, a4))
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v13, "padding_style", 0xD, a3, a4))
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(v14, "reductionMode", 0xD, a3, a4))
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v15, "strides", 7, a3, a4))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(const char *a1, const char *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v57 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v57 + 8);
      v13 = *(v57 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      v62 = a1;
      v63 = v21;
      Type = mlir::ElementsAttr::getType(&v62);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v62 = a1;
    v63 = 0;
    Type = mlir::ElementsAttr::getType(&v62);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v56 = v22;
      v58 = Type;
      mlir::Builder::getI32VectorAttr();
      Type = v58;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v56 + 8);
      v25 = *(v56 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v66 = Type;
    v67 = v32;
    Shape = mlir::ShapedType::getShape(&v66);
    v78 = 4;
    if (v34 == 1 && *Shape == v78)
    {
      v59 = a1;
      v60[0] = mlir::ArrayAttr::getValue(&v59);
      v60[1] = v35;
      isSplat = mlir::ElementsAttr::isSplat(v60);
      if (mlir::Type::isSignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

  a4(&v66, a5);
  if (v66)
  {
    LODWORD(v62) = 3;
    v63 = "attribute '";
    v64 = 11;
    v37 = &v62;
    v38 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v62 && v68 + 24 * v69 > &v62)
      {
        v54 = &v62 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v38 = v68;
        v37 = (v68 + v54);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v37 = &v62;
        v38 = v68;
      }
    }

    v39 = &v38[24 * v69];
    v40 = *v37;
    *(v39 + 2) = v37[2];
    *v39 = v40;
    ++v69;
    if (v66)
    {
      v65 = 261;
      v62 = a2;
      v63 = a3;
      mlir::Diagnostic::operator<<(&v67, &v62);
      if (v66)
      {
        LODWORD(v62) = 3;
        v63 = "' failed to satisfy constraint: si64 elements attribute of shape {4}";
        v64 = 68;
        v41 = &v62;
        v42 = v68;
        if (v69 >= v70)
        {
          if (v68 <= &v62 && v68 + 24 * v69 > &v62)
          {
            v55 = &v62 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v42 = v68;
            v41 = (v68 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
            v41 = &v62;
            v42 = v68;
          }
        }

        v43 = &v42[24 * v69];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        ++v69;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v75;
      v47 = __p;
      if (v75 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v75 = v45;
      operator delete(v47);
    }

    v48 = v72;
    if (v72)
    {
      v49 = v73;
      v50 = v72;
      if (v73 != v72)
      {
        do
        {
          v52 = *--v49;
          v51 = v52;
          *v49 = 0;
          if (v52)
          {
            MEMORY[0x1AC55A040](v51, 0x1000C8077774924);
          }
        }

        while (v49 != v48);
        v50 = v72;
      }

      v73 = v48;
      operator delete(v50);
    }

    if (v68 != v71)
    {
      free(v68);
    }
  }

  return v36;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid StencilPaddingMode";
        v29 = 56;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid ReductionMode";
        v29 = 51;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::mps::StencilOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::StencilPaddingModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::ReductionModeAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::StencilPaddingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::StencilPaddingModeAttr]";
  v38 = 83;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::ReductionModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::ReductionModeAttr]";
  v38 = 78;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

mlir::MLIRContext *mlir::mps::StencilOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v24 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v24);
  v19 = result;
  if (a2[7])
  {
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = 4;
    IntegerType = mlir::Builder::getIntegerType(&v19, 64, 0);
    v20 = mlir::RankedTensorType::get(&v26, 1, IntegerType, 0);
    v6 = mlir::TensorType::operator mlir::ShapedType(&v20);
    v24 = xmmword_1A75F4140;
    v25 = unk_1A75F4150;
    result = mlir::DenseElementsAttr::getFromRawBuffer(v6, v7, &v24, 32);
    a2[7] = result;
    if (*a2)
    {
LABEL_3:
      if (a2[3])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v26 = 4;
  v8 = mlir::Builder::getIntegerType(&v19, 64, 0);
  v20 = mlir::RankedTensorType::get(&v26, 1, v8, 0);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v20);
  v24 = xmmword_1A75F4140;
  v25 = unk_1A75F4150;
  result = mlir::DenseElementsAttr::getFromRawBuffer(v9, v10, &v24, 32);
  *a2 = result;
  if (a2[3])
  {
LABEL_4:
    if (a2[6])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  F32Type = mlir::Builder::getF32Type(&v19, v4);
  v12.n128_u64[0] = 0;
  result = mlir::Builder::getFloatAttr(v12, &v19, F32Type);
  a2[3] = result;
  if (a2[6])
  {
LABEL_5:
    if (a2[4])
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v13 = v19;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v19);
  v26 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v27 = v13;
  *&v24 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v24 + 1) = &v26;
  v23 = 2;
  v20 = &v23;
  v21 = &v24;
  v22 = &v23;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
  a2[6] = result;
  if (a2[4])
  {
LABEL_6:
    if (a2[5])
    {
      return result;
    }

LABEL_13:
    v17 = v19;
    v18 = mlir::MLIRContext::getAttributeUniquer(v19);
    v26 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
    v27 = v17;
    *&v24 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *(&v24 + 1) = &v26;
    v23 = 2;
    v20 = &v23;
    v21 = &v24;
    v22 = &v23;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v18, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
    a2[5] = result;
    return result;
  }

LABEL_12:
  v15 = v19;
  v16 = mlir::MLIRContext::getAttributeUniquer(v19);
  v26 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v27 = v15;
  *&v24 = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v24 + 1) = &v26;
  v23 = 4;
  v20 = &v23;
  v21 = &v24;
  v22 = &v23;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v16, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, 0xCA312C5D, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
  a2[4] = result;
  if (!a2[5])
  {
    goto LABEL_13;
  }

  return result;
}

BOOL mlir::mps::StencilOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v5 = v3[8];
  v4 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  v9 = v3[12];
  v8 = v3[13];
  v10 = v3[14];
  v11 = v3[15];
  v15 = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(v6, "offsets", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v11, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v4, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v7, "paddingConstant", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(v10, "reductionMode", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(v9, "paddingMode", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15))
  {
    return 0;
  }

  v15 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v12 = *this - 2;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::mps::StridedSliceGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72 = v6;
  if (!v6)
  {
    a3(&v76, a4);
    if (v76)
    {
      LODWORD(v73) = 3;
      v74 = "expected DictionaryAttr to set properties";
      v75 = 41;
      v26 = &v73;
      v27 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v27 = v78;
          v26 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v26 = &v73;
          v27 = v78;
        }
      }

      v28 = &v27[24 * v79];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }

    if (v87 != 1)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v85;
      v32 = __p;
      if (v85 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v85 = v30;
      operator delete(v32);
    }

    v21 = v82;
    if (!v82)
    {
      goto LABEL_70;
    }

    v33 = v83;
    v23 = v82;
    if (v83 == v82)
    {
LABEL_69:
      v83 = v21;
      operator delete(v23);
LABEL_70:
      if (v78 != v81)
      {
        free(v78);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v82;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v72, "begin_mask", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 55;
        v10 = &v73;
        v11 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v66 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v11 = v78;
            v10 = (v78 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v10 = &v73;
            v11 = v78;
          }
        }

        v12 = &v11[24 * v79];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v79;
        if (v76)
        {
          v14 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
          v15 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v67 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v15 = v78;
              v14 = (v78 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v14 = &v73;
              v15 = v78;
            }
          }

          v16 = &v15[24 * v79];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v85;
        v20 = __p;
        if (v85 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v85 = v18;
        operator delete(v20);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v22 = v83;
      v23 = v82;
      if (v83 == v82)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v72, "end_is_size", 0xBuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 56;
        v38 = &v73;
        v39 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v68 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v39 = v78;
            v38 = (v78 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v38 = &v73;
            v39 = v78;
          }
        }

        v40 = &v39[24 * v79];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v79;
        if (v76)
        {
          v42 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v37);
          v43 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v69 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v43 = v78;
              v42 = (v78 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v42 = &v73;
              v43 = v78;
            }
          }

          v44 = &v43[24 * v79];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if ((v87 & 1) == 0)
      {
        return 0;
      }

      if (v86 != &v87)
      {
        free(v86);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v85;
        v48 = __p;
        if (v85 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v85 = v46;
        operator delete(v48);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v49 = v83;
      v23 = v82;
      if (v83 == v82)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v53 = mlir::DictionaryAttr::get(&v72, "end_mask", 8uLL);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v54 = v53;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 53;
        v55 = &v73;
        v56 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v70 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v56 = v78;
            v55 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v55 = &v73;
            v56 = v78;
          }
        }

        v57 = &v56[24 * v79];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v79;
        if (v76)
        {
          v59 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v54);
          v60 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v71 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v60 = v78;
              v59 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v59 = &v73;
              v60 = v78;
            }
          }

          v61 = &v60[24 * v79];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v79;
          if (v76)
          {
            mlir::InFlightDiagnostic::report(&v76);
          }
        }
      }

      if (v87 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v77);
      }

      return 0;
    }

    a1[2] = v53;
  }

  v63 = mlir::DictionaryAttr::get(&v72, "shrink_axis_mask", 0x10uLL);
  v73 = v63;
  if (!v63)
  {
    return 1;
  }

  if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[3] = v63;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::mps::StridedSliceGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "begin_mask", 0xAuLL, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "end_is_size", 0xBuLL, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "end_mask", 8uLL, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "shrink_axis_mask", 0x10uLL, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::StridedSliceGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "end_is_size", 0xBuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 16 && !memcmp(__s1, "shrink_axis_mask", 0x10uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "end_mask", 8uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 10)
  {
    return 0;
  }

  if (*__s1 != 0x616D5F6E69676562 || *(__s1 + 4) != 27507)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::StridedSliceGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      result = memcmp(__s1, "end_is_size", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          v5[1] = v9;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 16)
    {
      result = memcmp(__s1, "shrink_axis_mask", 0x10uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[3] = v7;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "end_mask", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[2] = v8;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 10 && *__s1 == 0x616D5F6E69676562 && *(__s1 + 4) == 27507)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::StridedSliceGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "begin_mask", 0xA, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "end_is_size", 0xB, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v10, "end_mask", 8, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v11, "shrink_axis_mask", 0x10, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::StridedSliceGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3);
}

BOOL mlir::mps::StridedSliceGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      if (v6)
      {
        v8 = v3[1];
        v35[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "begin_mask", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
        {
          return 0;
        }

        v35[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v5, "end_mask", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
        {
          return 0;
        }

        v35[0] = *this;
        if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v6, "shrink_axis_mask", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35))
        {
          return 0;
        }

        v35[0] = *this;
        if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "end_is_size", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u))
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v9 = *this - 2;
        }

        else
        {
          v9 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
      }

      v33[0] = "requires attribute 'shrink_axis_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v41;
          v28 = __p;
          if (v41 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v41 = v26;
          operator delete(v28);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v29 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_67:
          v39 = v15;
          operator delete(v17);
LABEL_68:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
        }

        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v15);
LABEL_66:
        v17 = v38;
        goto LABEL_67;
      }
    }

    else
    {
      v33[0] = "requires attribute 'end_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 == 1)
      {
        if (v42 != &v43)
        {
          free(v42);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v41;
          v22 = __p;
          if (v41 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v41 = v20;
          operator delete(v22);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v23 = v39;
        v17 = v38;
        if (v39 == v38)
        {
          goto LABEL_67;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v15);
        goto LABEL_66;
      }
    }
  }

  else
  {
    v33[0] = "requires attribute 'begin_mask'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v16 = v39;
      v17 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
        }
      }

      while (v16 != v15);
      goto LABEL_66;
    }
  }

  return v11;
}