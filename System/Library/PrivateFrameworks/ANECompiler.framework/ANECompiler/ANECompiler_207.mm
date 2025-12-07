uint64_t mlir::mpsx::MemrefBackedOp::verifyInvariantsImpl(uint64_t **this)
{
  v75 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(v1 + 17);
  if (!v2)
  {
    return 1;
  }

  v3 = this;
  v4 = 0;
  v5 = v1[9];
  v6 = &v74;
  v7 = &v68;
  while (1)
  {
    v8 = *v3;
    v9 = *(*(v5 + 32 * v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      break;
    }

    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v66[0] = v9;
    v66[1] = v10;
    mlir::ElementsAttr::isSplat(v66);
    if ((mlir::isStrided(v9) & 1) == 0)
    {
      break;
    }

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v62 = 261;
  v61[0] = "operand";
  v61[1] = 7;
  mlir::Operation::emitOpError(v8, v61, v66);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v66, " #");
  if (*v11)
  {
    v13 = v11 + 24;
    v12 = *(v11 + 24);
    v63 = 5;
    v64 = v4;
    v14 = *(v11 + 32);
    if (v14 >= *(v11 + 36))
    {
      if (v12 <= &v63 && v12 + 24 * v14 > &v63)
      {
        v45 = v3;
        v46 = v2;
        v47 = v5;
        v48 = v7;
        v49 = v6;
        v50 = &v63 - v12;
        v51 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v14 + 1, 24);
        v11 = v51;
        v12 = *(v51 + 24);
        v15 = &v50[v12];
        v6 = v49;
        v7 = v48;
        v5 = v47;
        v2 = v46;
        v3 = v45;
LABEL_11:
        v16 = v12 + 24 * *(v11 + 32);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 2);
        *v16 = v17;
        v18 = (*(v11 + 32) + 1);
        *(v11 + 32) = v18;
        if (!*v11)
        {
          goto LABEL_17;
        }

        v63 = 3;
        v64 = " must be variadic of strided memref of any type values, but got ";
        v65 = 64;
        v19 = *(v11 + 24);
        if (v18 >= *(v11 + 36))
        {
          if (v19 <= &v63 && v19 + 24 * v18 > &v63)
          {
            v52 = v3;
            v53 = v2;
            v54 = v5;
            v55 = v7;
            v56 = v6;
            v57 = &v63 - v19;
            v58 = v11;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 40), v18 + 1, 24);
            v11 = v58;
            v19 = *(v58 + 24);
            v20 = &v57[v19];
            v6 = v56;
            v7 = v55;
            v5 = v54;
            v2 = v53;
            v3 = v52;
LABEL_14:
            v21 = v19 + 24 * *(v11 + 32);
            v22 = *v20;
            *(v21 + 16) = *(v20 + 2);
            *v21 = v22;
            ++*(v11 + 32);
            if (*v11)
            {
              v23 = v3;
              v24 = v2;
              v25 = v5;
              v26 = v7;
              v27 = v6;
              v28 = &v63;
              v29 = v11;
              mlir::DiagnosticArgument::DiagnosticArgument(&v63, v9);
              v11 = v29;
              v30 = *(v29 + 32);
              v31 = *(v29 + 24);
              if (v30 >= *(v29 + 36))
              {
                if (v31 <= &v63 && v31 + 24 * v30 > &v63)
                {
                  v59 = &v63 - v31;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v29 + 40), v30 + 1, 24);
                  v11 = v29;
                  v31 = *(v29 + 24);
                  v28 = &v59[v31];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v29 + 40), v30 + 1, 24);
                  v11 = v29;
                  v31 = *(v29 + 24);
                  v28 = &v63;
                }
              }

              v32 = v31 + 24 * *(v11 + 32);
              v33 = *v28;
              *(v32 + 16) = *(v28 + 2);
              *v32 = v33;
              ++*(v11 + 32);
              v6 = v27;
              v7 = v26;
              v5 = v25;
              v2 = v24;
              v3 = v23;
            }

            goto LABEL_17;
          }

          v44 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 40), v18 + 1, 24);
          v11 = v44;
          v19 = *(v44 + 24);
        }

        v20 = &v63;
        goto LABEL_14;
      }

      v43 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, (v11 + 40), v14 + 1, 24);
      v11 = v43;
      v12 = *(v43 + 24);
    }

    v15 = &v63;
    goto LABEL_11;
  }

LABEL_17:
  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v66[0])
  {
    mlir::InFlightDiagnostic::report(v66);
  }

  if (v74 == 1)
  {
    if (v73 != v6)
    {
      free(v73);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v72;
      v37 = __p;
      if (v72 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v72 = v35;
      operator delete(v37);
    }

    v38 = v69;
    if (v69)
    {
      v39 = v70;
      v40 = v69;
      if (v70 != v69)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x1AC55A040](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v69;
      }

      v70 = v38;
      operator delete(v40);
    }

    if (v67 != v7)
    {
      free(v67);
    }
  }

  if (v34)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getWeightsQuantParamsAxis(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 144), v3, *(*(*(this + 1) + 96) + 80));
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    return v8 | v6 | v9;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v14 = v6;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  mlir::IntegerAttr::getValue(&v14, &v12);
  if (v13 > 0x40)
  {
    v11 = *v12;
    MEMORY[0x1AC55A040]();
  }

  else if (v13)
  {
    v11 = (v12 << -v13) >> -v13;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v6 = v11 & 0xFFFFFF00;
  v9 = v11;
  v8 = 0x100000000;
  return v8 | v6 | v9;
}

unint64_t mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  LODWORD(v2) = a2;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v5 + 16 * v6 - 64), *(*(*(*this + 6) + 96) + 40));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    v10 = 0;
    return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
  }

  AttrDictionary = 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  LODWORD(v10) = 0;
  v2 = v2;
  do
  {
    v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + v9) + v10);
    v9 += 4;
  }

  while (4 * v2 != v9);
  return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &v3);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *v3;
      MEMORY[0x1AC55A040]();
    }

    else if (v4)
    {
      v2 = (v3 << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 144), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 80));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::QuantizedConv2DOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v152 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v140[0] = "requires attribute 'data_layout'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v149;
      v10 = __p;
      if (v149 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v149 = v8;
      operator delete(v10);
    }

    v11 = v146;
    if (!v146)
    {
      goto LABEL_83;
    }

    v12 = v147;
    v13 = v146;
    if (v147 == v146)
    {
      goto LABEL_82;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
      }
    }

    while (v12 != v11);
    goto LABEL_81;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v5)) != **(*(*this + 6) + 96))
  {
    v5 += 16;
    if (v6 == v5)
    {
      goto LABEL_5;
    }
  }

  v16 = v6 - v5;
  if (v6 == v5)
  {
LABEL_25:
    v140[0] = "requires attribute 'dilation_rates'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v149;
      v20 = __p;
      if (v149 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v149 = v18;
      operator delete(v20);
    }

    v11 = v146;
    if (!v146)
    {
      goto LABEL_83;
    }

    v21 = v147;
    v13 = v146;
    if (v147 == v146)
    {
      goto LABEL_82;
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

    while (v21 != v11);
    goto LABEL_81;
  }

  v17 = *(v4 + v5 + 8);
  while (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v5)) != *(*(*(*this + 6) + 96) + 8))
  {
    v16 -= 16;
    v5 += 16;
    if (v6 == v5)
    {
      goto LABEL_25;
    }
  }

  if (v6 == v5)
  {
LABEL_45:
    v140[0] = "requires attribute 'explicit_padding'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v149;
      v28 = __p;
      if (v149 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v149 = v26;
      operator delete(v28);
    }

    v11 = v146;
    if (!v146)
    {
      goto LABEL_83;
    }

    v29 = v147;
    v13 = v146;
    if (v147 == v146)
    {
      goto LABEL_82;
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

    while (v29 != v11);
LABEL_81:
    v13 = v146;
    goto LABEL_82;
  }

  v24 = 0;
  v25 = *(v4 + v5 + 8);
  while (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v5 + v24)) != *(*(*(*this + 6) + 96) + 16))
  {
    v24 += 16;
    if (v16 == v24)
    {
      goto LABEL_45;
    }
  }

  v32 = v16 - v24;
  if (v16 == v24)
  {
LABEL_65:
    v140[0] = "requires attribute 'groups'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v149;
      v37 = __p;
      if (v149 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v149 = v35;
      operator delete(v37);
    }

    v11 = v146;
    if (v146)
    {
      v38 = v147;
      v13 = v146;
      if (v147 != v146)
      {
        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v11);
        goto LABEL_81;
      }

LABEL_82:
      v147 = v11;
      operator delete(v13);
    }

LABEL_83:
    if (v144 != &v145)
    {
      free(v144);
    }

    return v7;
  }

  v33 = *(v4 + v24 + v5 + 8);
  v34 = (v4 + v5 + v24 + 8);
  while (ZinCompressedFootprintInfo::GetCompressedBytes((v34 - 1)) != *(*(*(*this + 6) + 96) + 24))
  {
    v34 += 2;
    v32 -= 16;
    if (!v32)
    {
      goto LABEL_65;
    }
  }

  if (v32)
  {
    v42 = 0;
    v43 = 0;
    v137 = *v34;
    while (1)
    {
      v44 = &v34[v42 / 8];
      if (ZinCompressedFootprintInfo::GetCompressedBytes(&v34[v42 / 8 - 1]) == *(*(*(*this + 6) + 96) + 40))
      {
        break;
      }

      if (ZinCompressedFootprintInfo::GetCompressedBytes(&v34[v42 / 8 - 1]) == *(*(*(*this + 6) + 96) + 32))
      {
        v43 = v34[v42 / 8];
      }

      v42 += 16;
      if (v32 == v42)
      {
        goto LABEL_92;
      }
    }

    v45 = v32 - v42;
    if (v32 == v42)
    {
LABEL_100:
      v47 = "requires attribute 'output_type'";
    }

    else
    {
      v46 = *v44;
      while (ZinCompressedFootprintInfo::GetCompressedBytes((v44 - 1)) != *(*(*(*this + 6) + 96) + 48))
      {
        v44 += 2;
        v45 -= 16;
        if (!v45)
        {
          goto LABEL_100;
        }
      }

      if (v45)
      {
        v48 = 0;
        v136 = *v44;
        while (1)
        {
          v49 = &v44[v48 / 8];
          if (ZinCompressedFootprintInfo::GetCompressedBytes(&v44[v48 / 8 - 1]) == *(*(*(*this + 6) + 96) + 56))
          {
            break;
          }

          v48 += 16;
          if (v45 == v48)
          {
            goto LABEL_105;
          }
        }

        v50 = v45 - v48;
        if (v50)
        {
          v51 = *v49;
          while (ZinCompressedFootprintInfo::GetCompressedBytes((v49 - 1)) != *(*(*(*this + 6) + 96) + 64))
          {
            v49 += 2;
            v50 -= 16;
            if (!v50)
            {
              goto LABEL_110;
            }
          }

          v135 = v51;
          v52 = 0;
          v134 = *v49;
          while (1)
          {
            v53 = &v49[v52 / 8];
            if (ZinCompressedFootprintInfo::GetCompressedBytes(&v49[v52 / 8 - 1]) == *(*(*(*this + 6) + 96) + 72))
            {
              break;
            }

            v52 += 16;
            if (v50 == v52)
            {
              v47 = "requires attribute 'weights_layout'";
              goto LABEL_115;
            }
          }

          v56 = *v53;
          v55 = (v53 - 1);
          v133 = v56;
          v57 = 0;
          for (i = v50 - v52; i; i -= 16)
          {
            if (ZinCompressedFootprintInfo::GetCompressedBytes(v55) == *(*(*(*this + 6) + 96) + 80))
            {
              v57 = *(v55 + 1);
            }

            v55 = (v55 + 16);
          }

          v139 = v46;
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v139);
          v138 = v59;
          if (v59 == 11)
          {
            if (!mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v43, "input_quant_params_axis", 0x17) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v57, "weights_quant_params_axis", 0x19) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v137, "groups", 6) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps14(*this, v134, "strides", 7) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps14(*this, v25, "dilation_rates", 0xE) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps15(*this, v33, "explicit_padding", 16) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps16(*this, v135, "padding_style", 0xD) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps17(*this, v17, "data_layout", 0xB) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps17(*this, v133, "weights_layout", 0xE) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v136, "output_type", 0xB))
            {
              return 0;
            }

            LODWORD(v138) = 0;
            ODSOperands = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 0);
            if (v61)
            {
              v62 = v61;
              v63 = ODSOperands + 24;
              do
              {
                v64 = *this;
                v65 = *(*v63 + 8);
                v66 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v64, (v65 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v66))
                {
                  return 0;
                }

                v63 += 32;
              }

              while (--v62);
            }

            v67 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 1);
            v69 = v68;
            if (v68 >= 2)
            {
              goto LABEL_139;
            }

            if (!v68 || (v72 = *(v67 + 24), v73 = *this, v74 = *(v72 + 8), v75 = v138, LODWORD(v138) = v138 + 1, mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v73, (v74 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v75)))
            {
              v76 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 2);
              v69 = v77;
              if (v77 >= 2)
              {
                goto LABEL_139;
              }

              if (v77)
              {
                v78 = *(v76 + 24);
                v79 = *this;
                v80 = *(v78 + 8);
                v81 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v79, (v80 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v81))
                {
                  return 0;
                }
              }

              v82 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 3);
              v69 = v83;
              if (v83 >= 2)
              {
                goto LABEL_139;
              }

              if (v83)
              {
                v84 = *(v82 + 24);
                v85 = *this;
                v86 = *(v84 + 8);
                v87 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v85, (v86 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v87))
                {
                  return 0;
                }
              }

              v88 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 4);
              if (v89)
              {
                v90 = v89;
                v91 = v88 + 24;
                do
                {
                  v92 = *this;
                  v93 = *(*v91 + 8);
                  v94 = v138;
                  LODWORD(v138) = v138 + 1;
                  if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v92, (v93 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v94))
                  {
                    return 0;
                  }

                  v91 += 32;
                }

                while (--v90);
              }

              v95 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 5);
              v69 = v96;
              if (v96 >= 2)
              {
                goto LABEL_139;
              }

              if (v96)
              {
                v97 = *(v95 + 24);
                v98 = *this;
                v99 = *(v97 + 8);
                v100 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps13(v98, (v99 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v100))
                {
                  return 0;
                }
              }

              v101 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 6);
              v69 = v102;
              if (v102 >= 2)
              {
                goto LABEL_139;
              }

              if (v102)
              {
                v103 = *(v101 + 24);
                v104 = *this;
                v105 = *(v103 + 8);
                v106 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v104, (v105 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v106))
                {
                  return 0;
                }
              }

              v107 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 7);
              v69 = v108;
              if (v108 >= 2)
              {
                goto LABEL_139;
              }

              if (v108)
              {
                v109 = *(v107 + 24);
                v110 = *this;
                v111 = *(v109 + 8);
                v112 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v110, (v111 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v112))
                {
                  return 0;
                }
              }

              v113 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 8);
              v69 = v114;
              if (v114 >= 2)
              {
                goto LABEL_139;
              }

              if (v114)
              {
                v115 = *(v113 + 24);
                v116 = *this;
                v117 = *(v115 + 8);
                v118 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v116, (v117 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v118))
                {
                  return 0;
                }
              }

              v119 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 9);
              v69 = v120;
              if (v120 >= 2)
              {
                goto LABEL_139;
              }

              if (v120)
              {
                v121 = *(v119 + 24);
                v122 = *this;
                v123 = *(v121 + 8);
                v124 = v138;
                LODWORD(v138) = v138 + 1;
                if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v122, (v123 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v124))
                {
                  return 0;
                }
              }

              v125 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 10);
              v69 = v126;
              if (v126 >= 2)
              {
LABEL_139:
                v140[0] = "operand group starting at #";
                v141 = 259;
                mlir::OpState::emitOpError(this, v140, &AttrDictionary);
                mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&AttrDictionary, &v138);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v70, " requires 0 or 1 element, but found ");
                v139 = v69;
                mlir::InFlightDiagnostic::operator<<<unsigned long>(v71, &v139);
                goto LABEL_116;
              }

              if (!v126 || (v127 = *(v125 + 24), v128 = *this, v129 = *(v127 + 8), v130 = v138, LODWORD(v138) = v138 + 1, mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v128, (v129 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v130)))
              {
                if (*(*this + 9))
                {
                  v131 = *this - 16;
                }

                else
                {
                  v131 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v131, 0);
                return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
              }
            }

            return 0;
          }

          v140[0] = "'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
          v141 = 259;
          mlir::OpState::emitOpError(this, v140, &AttrDictionary);
          mlir::InFlightDiagnostic::operator<<<unsigned long>(&AttrDictionary, &v138);
LABEL_116:
          v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(p_AttrDictionary);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
          return v7;
        }

LABEL_110:
        v47 = "requires attribute 'strides'";
      }

      else
      {
LABEL_105:
        v47 = "requires attribute 'padding_style'";
      }
    }

LABEL_115:
    v140[0] = v47;
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    p_AttrDictionary = &AttrDictionary;
    goto LABEL_116;
  }

LABEL_92:
  v140[0] = "requires attribute 'operandSegmentSizes'";
  v141 = 259;
  mlir::OpState::emitOpError(this, v140, &AttrDictionary);
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v151 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v143);
  }

  return v7;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isSignedInteger = mlir::Type::isSignedInteger(v23, 32);
    a1 = v6;
    if (isSignedInteger)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 32-bit signed integer attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
      {
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::AffineMapAttr::getValue(v21);
    isUnsignedInteger = mlir::Type::isUnsignedInteger(v23, 64);
    a1 = v6;
    if (isUnsignedInteger)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(a1, v21, v23);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 64-bit unsigned integer attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
      {
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps14(uint64_t *a1, const char *a2, const char *a3, const char *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v39[0] = v10;
  v39[1] = Type;
  Shape = mlir::ShapedType::getShape(v39);
  v48 = 4;
  if (v12 == 1 && *Shape == v48)
  {
    v32 = a2;
    v33[0] = mlir::ArrayAttr::getValue(&v32);
    v33[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v33);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v38 = 257;
  mlir::Operation::emitOpError(a1, &v35, v39);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, "attribute '");
  if (*v15)
  {
    v38 = 261;
    v35 = a3;
    v36 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<(v15 + 8, &v35);
    v15 = v16;
    if (*v16)
    {
      v17 = *(v16 + 24);
      LODWORD(v35) = 3;
      v36 = "' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      v37 = 68;
      v18 = *(v16 + 32);
      v19 = &v35;
      if (v18 >= *(v16 + 36))
      {
        if (v17 <= &v35 && v17 + 24 * v18 > &v35)
        {
          v31 = &v35 - v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, (v16 + 40), v18 + 1, 24);
          v15 = v16;
          v17 = *(v16 + 24);
          v19 = &v31[v17];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, (v16 + 40), v18 + 1, 24);
          v15 = v16;
          v17 = *(v16 + 24);
          v19 = &v35;
        }
      }

      v20 = v17 + 24 * *(v15 + 32);
      v21 = *v19;
      *(v20 + 16) = v19[2];
      *v20 = v21;
      ++*(v15 + 32);
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v45;
      v24 = __p;
      if (v45 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v45 = v22;
      operator delete(v24);
    }

    v25 = v42;
    if (v42)
    {
      v26 = v43;
      v27 = v42;
      if (v43 != v42)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v42;
      }

      v43 = v25;
      operator delete(v27);
    }

    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v14;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps15(uint64_t *a1, const char *a2, const char *a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_13;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31 = a2;
  v32 = v8;
  Type = mlir::ElementsAttr::getType(&v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v34[0] = v10;
  v34[1] = Type;
  Shape = mlir::ShapedType::getShape(v34);
  v43 = xmmword_1A7595C20;
  if (v12 == 2 && *Shape == v43 && Shape[1] == *(&v43 + 1))
  {
    v28 = a2;
    v29[0] = mlir::ArrayAttr::getValue(&v28);
    v29[1] = v14;
    isSplat = mlir::ElementsAttr::isSplat(v29);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_13:
  v33 = 257;
  mlir::Operation::emitOpError(a1, &v31, v34);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v34, "attribute '");
  if (*v16)
  {
    v33 = 261;
    v31 = a3;
    v32 = a4;
    v17 = v16;
    mlir::Diagnostic::operator<<((v16 + 1), &v31);
    v16 = v17;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v16, "' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}");
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v40;
      v21 = __p;
      if (v40 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v40 = v19;
      operator delete(v21);
    }

    v22 = v37;
    if (v37)
    {
      v23 = v38;
      v24 = v37;
      if (v38 != v37)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v37;
      }

      v38 = v22;
      operator delete(v24);
    }

    if (v35 != &v36)
    {
      free(v35);
    }
  }

  return v15;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps16(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    return 1;
  }

  v20 = 257;
  mlir::Operation::emitOpError(a1, v19, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, "attribute '");
  if (*v6)
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v19);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: valid padding_style");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v9;
}

BOOL mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps17(uint64_t *a1, uint64_t a2, const char *a3, const char *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    return 1;
  }

  v27 = 257;
  mlir::Operation::emitOpError(a1, &v24, v28);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, "attribute '");
  if (*v6)
  {
    v27 = 261;
    v24 = a3;
    v25 = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<(v6 + 8, &v24);
    v6 = v7;
    if (*v7)
    {
      v8 = *(v7 + 24);
      LODWORD(v24) = 3;
      v25 = "' failed to satisfy constraint: valid TensorDataLayout";
      v26 = 54;
      v9 = *(v7 + 32);
      v10 = &v24;
      if (v9 >= *(v7 + 36))
      {
        if (v8 <= &v24 && v8 + 24 * v9 > &v24)
        {
          v23 = &v24 - v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v23[v8];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, (v7 + 40), v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v24;
        }
      }

      v11 = v8 + 24 * *(v6 + 32);
      v12 = *v10;
      *(v11 + 16) = v10[2];
      *v11 = v12;
      ++*(v6 + 32);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v34;
      v16 = __p;
      if (v34 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v34 = v14;
      operator delete(v16);
    }

    v17 = v31;
    if (v31)
    {
      v18 = v32;
      v19 = v31;
      if (v32 != v31)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v31;
      }

      v32 = v17;
      operator delete(v19);
    }

    if (v29 != &v30)
    {
      free(v29);
    }
  }

  return v13;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v40[0] = mlir::ElementsAttr::isSplat(v44);
    if (mlir::Type::isF16(v40))
    {
      return 1;
    }

    if (mlir::Type::isF32(v40))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v40))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 1))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 32))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v40[0] + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
    {
      return 1;
    }
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(a1, v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    v42 = 5;
    v43 = a5;
    v15 = *(v13 + 32);
    v16 = &v42;
    if (v15 >= *(v13 + 36))
    {
      if (v14 <= &v42 && v14 + 24 * v15 > &v42)
      {
        v37 = &v42 - v14;
        v38 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v15 + 1, 24);
        v13 = v38;
        v14 = *(v38 + 24);
        v16 = &v37[v14];
      }

      else
      {
        v36 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v15 + 1, 24);
        v13 = v36;
        v14 = *(v36 + 24);
        v16 = &v42;
      }
    }

    v17 = v14 + 24 * *(v13 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, " must be tensor of floating point or quantized values, but got ");
  if (*v19)
  {
    v20 = &v42;
    v21 = v19;
    mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
    v19 = v21;
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v42 && v22 + 24 * v23 > &v42)
      {
        v39 = &v42 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v39[v22];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v42;
      }
    }

    v24 = v22 + 24 * *(v19 + 32);
    v25 = *v20;
    *(v24 + 16) = *(v20 + 2);
    *v24 = v25;
    ++*(v19 + 32);
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = __p;
      if (v50 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = v47;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v26;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v56[0] = a2;
    v56[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ElementsAttr::getShapedType(v56))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v47 = a2;
      v48 = v11;
      mlir::ShapedType::getShape(&v47);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v54 = a2, v55 = v13, mlir::ShapedType::getShape(&v54), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v52[0] = a2, v52[1] = v15, mlir::ShapedType::getShape(v52), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v51[0] = a2, v51[1] = v17, mlir::ShapedType::getShape(v51), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v50[0] = a2;
        v50[1] = v19;
        isSplat = mlir::ElementsAttr::isSplat(v50);
        if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
        {
          return 1;
        }
      }
    }
  }

  v49 = 261;
  v47 = a3;
  v48 = a4;
  mlir::Operation::emitOpError(a1, &v47, v56);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v56, " #");
  if (*v21)
  {
    v22 = *(v21 + 24);
    LODWORD(v54) = 5;
    v55 = a5;
    v23 = *(v21 + 32);
    v24 = &v54;
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v54 && v22 + 24 * v23 > &v54)
      {
        v44 = &v54 - v22;
        v45 = v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v21 = v45;
        v22 = *(v45 + 24);
        v24 = &v44[v22];
      }

      else
      {
        v43 = v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v21 = v43;
        v22 = *(v43 + 24);
        v24 = &v54;
      }
    }

    v25 = v22 + 24 * *(v21 + 32);
    v26 = *v24;
    *(v25 + 16) = v24[2];
    *v25 = v26;
    ++*(v21 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, " must be 0D/1D/2D/3D tensor of floating point values, but got ");
  if (*v27)
  {
    v28 = &v54;
    v29 = v27;
    mlir::DiagnosticArgument::DiagnosticArgument(&v54, a2);
    v27 = v29;
    v30 = *(v29 + 24);
    v31 = *(v29 + 32);
    if (v31 >= *(v29 + 36))
    {
      if (v30 <= &v54 && v30 + 24 * v31 > &v54)
      {
        v46 = &v54 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 24, (v29 + 40), v31 + 1, 24);
        v27 = v29;
        v30 = *(v29 + 24);
        v28 = &v46[v30];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 24, (v29 + 40), v31 + 1, 24);
        v27 = v29;
        v30 = *(v29 + 24);
        v28 = &v54;
      }
    }

    v32 = v30 + 24 * *(v27 + 32);
    v33 = *v28;
    *(v32 + 16) = v28[2];
    *v32 = v33;
    ++*(v27 + 32);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v62;
      v36 = __p;
      if (v62 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v62 = v34;
      operator delete(v36);
    }

    v37 = v59;
    if (v59)
    {
      v38 = v60;
      v39 = v59;
      if (v60 != v59)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v59;
      }

      v60 = v37;
      operator delete(v39);
    }

    if (v57 != &v58)
    {
      free(v57);
    }
  }

  return v20;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v56[0] = a2;
    v56[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ElementsAttr::getShapedType(v56))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v47 = a2;
      v48 = v11;
      mlir::ShapedType::getShape(&v47);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v54 = a2, v55 = v13, mlir::ShapedType::getShape(&v54), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v52[0] = a2, v52[1] = v15, mlir::ShapedType::getShape(v52), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v51[0] = a2, v51[1] = v17, mlir::ShapedType::getShape(v51), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v50[0] = a2;
        v50[1] = v19;
        isSplat = mlir::ElementsAttr::isSplat(v50);
        if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v49 = 261;
  v47 = a3;
  v48 = a4;
  mlir::Operation::emitOpError(a1, &v47, v56);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v56, " #");
  if (*v20)
  {
    v21 = *(v20 + 24);
    LODWORD(v54) = 5;
    v55 = a5;
    v22 = *(v20 + 32);
    v23 = &v54;
    if (v22 >= *(v20 + 36))
    {
      if (v21 <= &v54 && v21 + 24 * v22 > &v54)
      {
        v44 = &v54 - v21;
        v45 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, (v20 + 40), v22 + 1, 24);
        v20 = v45;
        v21 = *(v45 + 24);
        v23 = &v44[v21];
      }

      else
      {
        v43 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, (v20 + 40), v22 + 1, 24);
        v20 = v43;
        v21 = *(v43 + 24);
        v23 = &v54;
      }
    }

    v24 = v21 + 24 * *(v20 + 32);
    v25 = *v23;
    *(v24 + 16) = v23[2];
    *v24 = v25;
    ++*(v20 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v20, " must be 0D/1D/2D/3D tensor of quantized values, but got ");
  if (*v26)
  {
    v27 = &v54;
    v28 = v26;
    mlir::DiagnosticArgument::DiagnosticArgument(&v54, a2);
    v26 = v28;
    v29 = *(v28 + 24);
    v30 = *(v28 + 32);
    if (v30 >= *(v28 + 36))
    {
      if (v29 <= &v54 && v29 + 24 * v30 > &v54)
      {
        v46 = &v54 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, (v28 + 40), v30 + 1, 24);
        v26 = v28;
        v29 = *(v28 + 24);
        v27 = &v46[v29];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, (v28 + 40), v30 + 1, 24);
        v26 = v28;
        v29 = *(v28 + 24);
        v27 = &v54;
      }
    }

    v31 = v29 + 24 * *(v26 + 32);
    v32 = *v27;
    *(v31 + 16) = v27[2];
    *v31 = v32;
    ++*(v26 + 32);
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v56[0])
  {
    mlir::InFlightDiagnostic::report(v56);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v62;
      v36 = __p;
      if (v62 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v62 = v34;
      operator delete(v36);
    }

    v37 = v59;
    if (v59)
    {
      v38 = v60;
      v39 = v59;
      if (v60 != v59)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v59;
      }

      v60 = v37;
      operator delete(v39);
    }

    if (v57 != &v58)
    {
      free(v57);
    }
  }

  return v33;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps13(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v65[0] = a2;
    v65[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ElementsAttr::getShapedType(v65))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v55 = a2;
      v56 = v11;
      mlir::ShapedType::getShape(&v55);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v62 = a2, v63 = v13, mlir::ShapedType::getShape(&v62), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v60[0] = a2, v60[1] = v15, mlir::ShapedType::getShape(v60), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v59[0] = a2, v59[1] = v17, mlir::ShapedType::getShape(v59), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v58[0] = a2;
        v58[1] = v19;
        isSplat = mlir::ElementsAttr::isSplat(v58);
        if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v57 = 261;
  v55 = a3;
  v56 = a4;
  mlir::Operation::emitOpError(a1, &v55, v65);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v65, " #");
  if (*v20)
  {
    v22 = v20 + 24;
    v21 = *(v20 + 24);
    LODWORD(v62) = 5;
    v63 = a5;
    v23 = *(v20 + 32);
    v24 = &v62;
    if (v23 >= *(v20 + 36))
    {
      if (v21 <= &v62 && v21 + 24 * v23 > &v62)
      {
        v50 = &v62 - v21;
        v51 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, (v20 + 40), v23 + 1, 24);
        v20 = v51;
        v21 = *(v51 + 24);
        v24 = &v50[v21];
      }

      else
      {
        v48 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, (v20 + 40), v23 + 1, 24);
        v20 = v48;
        v21 = *(v48 + 24);
        v24 = &v62;
      }
    }

    v25 = v21 + 24 * *(v20 + 32);
    v26 = *v24;
    *(v25 + 16) = v24[2];
    *v25 = v26;
    v27 = (*(v20 + 32) + 1);
    *(v20 + 32) = v27;
    if (*v20)
    {
      LODWORD(v62) = 3;
      v63 = " must be 0D/1D/2D/3D tensor of floating point or quantized values, but got ";
      v64 = 75;
      v28 = *(v20 + 24);
      v29 = &v62;
      if (v27 >= *(v20 + 36))
      {
        if (v28 <= &v62 && v28 + 24 * v27 > &v62)
        {
          v52 = &v62 - v28;
          v53 = v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v22, (v20 + 40), v27 + 1, 24);
          v20 = v53;
          v28 = *(v53 + 24);
          v29 = &v52[v28];
        }

        else
        {
          v49 = v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v22, (v20 + 40), v27 + 1, 24);
          v20 = v49;
          v28 = *(v49 + 24);
          v29 = &v62;
        }
      }

      v30 = v28 + 24 * *(v20 + 32);
      v31 = *v29;
      *(v30 + 16) = v29[2];
      *v30 = v31;
      ++*(v20 + 32);
      if (*v20)
      {
        v32 = &v62;
        v33 = v20;
        mlir::DiagnosticArgument::DiagnosticArgument(&v62, a2);
        v20 = v33;
        v34 = *(v33 + 32);
        v35 = *(v33 + 24);
        if (v34 >= *(v33 + 36))
        {
          if (v35 <= &v62 && v35 + 24 * v34 > &v62)
          {
            v54 = &v62 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v22, (v33 + 40), v34 + 1, 24);
            v20 = v33;
            v35 = *(v33 + 24);
            v32 = &v54[v35];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v22, (v33 + 40), v34 + 1, 24);
            v20 = v33;
            v35 = *(v33 + 24);
            v32 = &v62;
          }
        }

        v36 = v35 + 24 * *(v20 + 32);
        v37 = *v32;
        *(v36 + 16) = v32[2];
        *v36 = v37;
        ++*(v20 + 32);
      }
    }
  }

  v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v65[0])
  {
    mlir::InFlightDiagnostic::report(v65);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v71;
      v41 = __p;
      if (v71 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v71 = v39;
      operator delete(v41);
    }

    v42 = v68;
    if (v68)
    {
      v43 = v69;
      v44 = v68;
      if (v69 != v68)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
          }
        }

        while (v43 != v42);
        v44 = v68;
      }

      v69 = v42;
      operator delete(v44);
    }

    if (v66 != &v67)
    {
      free(v66);
    }
  }

  return v38;
}

unint64_t mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  LODWORD(v2) = a2;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v5 + 16 * v6), *(*(*(*this + 6) + 96) + 24));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    v10 = 0;
    return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
  }

  AttrDictionary = 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  LODWORD(v10) = 0;
  v2 = v2;
  do
  {
    v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + v9) + v10);
    v9 += 4;
  }

  while (4 * v2 != v9);
  return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
}

BOOL mlir::mpsx::QuantizedGatherOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v231 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_7:
    v208 = "requires attribute 'batch_dims'";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v229 != 1)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v8 = v226;
    if (v226)
    {
      v9 = v227;
      v10 = v226;
      if (v227 != v226)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = v226;
      }

      v227 = v8;
      operator delete(v10);
    }

    v11 = v224;
    if (!v224)
    {
      goto LABEL_89;
    }

    v12 = v225;
    v13 = v224;
    if (v225 == v224)
    {
      goto LABEL_88;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
      }
    }

    while (v12 != v11);
    goto LABEL_87;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v208 = "requires attribute 'dtype'";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v229 != 1)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v19 = v226;
    if (v226)
    {
      v20 = v227;
      v21 = v226;
      if (v227 != v226)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = v226;
      }

      v227 = v19;
      operator delete(v21);
    }

    v11 = v224;
    if (!v224)
    {
      goto LABEL_89;
    }

    v22 = v225;
    v13 = v224;
    if (v225 == v224)
    {
      goto LABEL_88;
    }

    do
    {
      v24 = *--v22;
      v23 = v24;
      *v22 = 0;
      if (v24)
      {
        MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
      }
    }

    while (v22 != v11);
    goto LABEL_87;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v25 = v6 - v16;
  if (!v25)
  {
LABEL_47:
    v208 = "requires attribute 'operandSegmentSizes'";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v229 != 1)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v27 = v226;
    if (v226)
    {
      v28 = v227;
      v29 = v226;
      if (v227 != v226)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = v226;
      }

      v227 = v27;
      operator delete(v29);
    }

    v11 = v224;
    if (!v224)
    {
      goto LABEL_89;
    }

    v30 = v225;
    v13 = v224;
    if (v225 == v224)
    {
      goto LABEL_88;
    }

    do
    {
      v32 = *--v30;
      v31 = v32;
      *v30 = 0;
      if (v32)
      {
        MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
      }
    }

    while (v30 != v11);
LABEL_87:
    v13 = v224;
    goto LABEL_88;
  }

  v26 = *(v18 + 1);
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v18) != *(*(*(*this + 6) + 96) + 24))
  {
    v18 = (v18 + 16);
    v25 -= 16;
    if (!v25)
    {
      goto LABEL_47;
    }
  }

  v213[0] = *(v18 + 1);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(v213);
  if (v33 != 6)
  {
    v34 = v33;
    v208 = "'operandSegmentSizes' attribute for specifying operand segments must have 6 elements, but got ";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    if (AttrDictionary)
    {
      LODWORD(isSplat) = 5;
      v216 = v34;
      v35 = &isSplat;
      v36 = v220;
      if (v221 >= v222)
      {
        if (v220 <= &isSplat && &v220[3 * v221] > &isSplat)
        {
          v205 = &isSplat - v220;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v220, v223, v221 + 1, 24);
          v36 = v220;
          v35 = (v220 + v205);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v220, v223, v221 + 1, 24);
          v35 = &isSplat;
          v36 = v220;
        }
      }

      v37 = &v36[3 * v221];
      v38 = *v35;
      v37[2] = v35[2];
      *v37 = v38;
      ++v221;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if ((v229 & 1) == 0)
    {
      return v7;
    }

    if (v228 != &v229)
    {
      free(v228);
    }

    v39 = v226;
    if (v226)
    {
      v40 = v227;
      v41 = v226;
      if (v227 != v226)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = v226;
      }

      v227 = v39;
      operator delete(v41);
    }

    v11 = v224;
    if (v224)
    {
      v42 = v225;
      v13 = v224;
      if (v225 != v224)
      {
        do
        {
          v44 = *--v42;
          v43 = v44;
          *v42 = 0;
          if (v44)
          {
            MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
          }
        }

        while (v42 != v11);
        goto LABEL_87;
      }

LABEL_88:
      v225 = v11;
      operator delete(v13);
    }

LABEL_89:
    if (v220 != v223)
    {
      free(v220);
    }

    return v7;
  }

  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v26, "dtype", 5) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, v17, "batch_dims", 0xA) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v5, "allow_negative_indices", 0x16))
  {
    return 0;
  }

  v207 = 0;
  ODSOperands = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 0);
  if (v47)
  {
    v48 = ODSOperands;
    v49 = v47;
    for (i = 0; i != v49; ++i)
    {
      v51 = *this;
      v52 = (*(*(v48 + 32 * i + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v53 = v207++;
      v54 = *v52;
      v55 = *(*v52 + 136);
      if (v55 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v55 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v54 + 8);
        AttrDictionary = v52;
        v219 = v57;
        isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
        if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          continue;
        }

        v54 = *v52;
        v55 = *(*v52 + 136);
      }

      if (v55 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v55 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v59 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v54 + 8);
        v208 = v52;
        v209 = v59;
        isSplat = mlir::ElementsAttr::isSplat(&v208);
        if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          continue;
        }
      }

      v210 = 261;
      v208 = "operand";
      v209 = 7;
      mlir::Operation::emitOpError(v51, &v208, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      if (*v60)
      {
        v62 = v60 + 24;
        v61 = *(v60 + 24);
        LODWORD(isSplat) = 5;
        v216 = v53;
        v63 = *(v60 + 32);
        if (v63 >= *(v60 + 36))
        {
          if (v61 <= &isSplat && v61 + 24 * v63 > &isSplat)
          {
            v89 = &isSplat - v61;
            v90 = v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v60 + 24, (v60 + 40), v63 + 1, 24);
            v60 = v90;
            v61 = *(v90 + 24);
            p_isSplat = &v89[v61];
          }

          else
          {
            v87 = v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v60 + 24, (v60 + 40), v63 + 1, 24);
            v60 = v87;
            v61 = *(v87 + 24);
            p_isSplat = &isSplat;
          }
        }

        else
        {
          p_isSplat = &isSplat;
        }

        v65 = v61 + 24 * *(v60 + 32);
        v66 = *p_isSplat;
        *(v65 + 16) = p_isSplat[2];
        *v65 = v66;
        v67 = (*(v60 + 32) + 1);
        *(v60 + 32) = v67;
        if (*v60)
        {
          LODWORD(isSplat) = 3;
          v216 = " must be tensor of mps native type values or tensor of quantized values, but got ";
          v217 = 81;
          v68 = *(v60 + 24);
          if (v67 >= *(v60 + 36))
          {
            if (v68 <= &isSplat && v68 + 24 * v67 > &isSplat)
            {
              v91 = &isSplat - v68;
              v92 = v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v62, (v60 + 40), v67 + 1, 24);
              v60 = v92;
              v68 = *(v92 + 24);
              v69 = &v91[v68];
            }

            else
            {
              v88 = v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v62, (v60 + 40), v67 + 1, 24);
              v60 = v88;
              v68 = *(v88 + 24);
              v69 = &isSplat;
            }
          }

          else
          {
            v69 = &isSplat;
          }

          v70 = v68 + 24 * *(v60 + 32);
          v71 = *v69;
          *(v70 + 16) = v69[2];
          *v70 = v71;
          ++*(v60 + 32);
          if (*v60)
          {
            v72 = &isSplat;
            v73 = v60;
            mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v52);
            v74 = *(v73 + 32);
            v75 = *(v73 + 24);
            if (v74 >= *(v73 + 36))
            {
              if (v75 <= &isSplat && v75 + 24 * v74 > &isSplat)
              {
                v93 = &isSplat - v75;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v62, (v73 + 40), v74 + 1, 24);
                v60 = v73;
                v75 = *(v73 + 24);
                v72 = &v93[v75];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v62, (v73 + 40), v74 + 1, 24);
                v60 = v73;
                v75 = *(v73 + 24);
                v72 = &isSplat;
              }
            }

            else
            {
              v60 = v73;
            }

            v76 = v75 + 24 * *(v60 + 32);
            v77 = *v72;
            *(v76 + 16) = v72[2];
            *v76 = v77;
            ++*(v60 + 32);
          }
        }
      }

      v78 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v229 == 1)
      {
        if (v228 != &v229)
        {
          free(v228);
        }

        v79 = v226;
        if (v226)
        {
          v80 = v227;
          v81 = v226;
          if (v227 != v226)
          {
            do
            {
              v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
            }

            while (v80 != v79);
            v81 = v226;
          }

          v227 = v79;
          operator delete(v81);
        }

        v82 = v224;
        if (v224)
        {
          v83 = v225;
          v84 = v224;
          if (v225 != v224)
          {
            do
            {
              v86 = *--v83;
              v85 = v86;
              *v83 = 0;
              if (v86)
              {
                MEMORY[0x1AC55A040](v85, 0x1000C8077774924);
              }
            }

            while (v83 != v82);
            v84 = v224;
          }

          v225 = v82;
          operator delete(v84);
        }

        if (v220 != v223)
        {
          free(v220);
        }

        if (!v78)
        {
          return 0;
        }
      }

      else if (!v78)
      {
        return 0;
      }
    }
  }

  v94 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 1);
  if (v95)
  {
    v96 = v94;
    v97 = v95;
    for (j = 0; j != v97; ++j)
    {
      v99 = *this;
      v100 = *(*(v96 + 32 * j + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v101 = v207++;
      v102 = *(*v100 + 136);
      if (v102 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v102 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
        AttrDictionary = v100;
        v219 = v104;
        v208 = mlir::ElementsAttr::isSplat(&AttrDictionary);
        if (mlir::Type::isSignedInteger(&v208, 8) || mlir::Type::isSignedInteger(&v208, 16) || mlir::Type::isSignedInteger(&v208, 32) || mlir::Type::isSignedInteger(&v208, 64) || mlir::Type::isUnsignedInteger(&v208, 8) || mlir::Type::isUnsignedInteger(&v208, 16) || mlir::Type::isUnsignedInteger(&v208, 32) || mlir::Type::isUnsignedInteger(&v208, 64))
        {
          continue;
        }
      }

      v210 = 261;
      v208 = "operand";
      v209 = 7;
      mlir::Operation::emitOpError(v99, &v208, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      if (*v105)
      {
        v106 = *(v105 + 24);
        LODWORD(isSplat) = 5;
        v216 = v101;
        v107 = *(v105 + 32);
        if (v107 >= *(v105 + 36))
        {
          if (v106 <= &isSplat && v106 + 24 * v107 > &isSplat)
          {
            v128 = &isSplat - v106;
            v129 = v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v105 + 24, (v105 + 40), v107 + 1, 24);
            v105 = v129;
            v106 = *(v129 + 24);
            v108 = &v128[v106];
          }

          else
          {
            v127 = v105;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v105 + 24, (v105 + 40), v107 + 1, 24);
            v105 = v127;
            v106 = *(v127 + 24);
            v108 = &isSplat;
          }
        }

        else
        {
          v108 = &isSplat;
        }

        v109 = v106 + 24 * *(v105 + 32);
        v110 = *v108;
        *(v109 + 16) = v108[2];
        *v109 = v110;
        ++*(v105 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v105, " must be tensor of int values, but got ");
      if (*v111)
      {
        v112 = &isSplat;
        v113 = v111;
        mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v100);
        v114 = *(v113 + 24);
        v115 = *(v113 + 32);
        if (v115 >= *(v113 + 36))
        {
          if (v114 <= &isSplat && v114 + 24 * v115 > &isSplat)
          {
            v130 = &isSplat - v114;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v113 + 24, (v113 + 40), v115 + 1, 24);
            v111 = v113;
            v114 = *(v113 + 24);
            v112 = &v130[v114];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v113 + 24, (v113 + 40), v115 + 1, 24);
            v111 = v113;
            v114 = *(v113 + 24);
            v112 = &isSplat;
          }
        }

        else
        {
          v111 = v113;
        }

        v116 = v114 + 24 * *(v111 + 32);
        v117 = *v112;
        *(v116 + 16) = v112[2];
        *v116 = v117;
        ++*(v111 + 32);
      }

      v118 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v111);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v229 == 1)
      {
        if (v228 != &v229)
        {
          free(v228);
        }

        v119 = v226;
        if (v226)
        {
          v120 = v227;
          v121 = v226;
          if (v227 != v226)
          {
            do
            {
              v120 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v120 - 1);
            }

            while (v120 != v119);
            v121 = v226;
          }

          v227 = v119;
          operator delete(v121);
        }

        v122 = v224;
        if (v224)
        {
          v123 = v225;
          v124 = v224;
          if (v225 != v224)
          {
            do
            {
              v126 = *--v123;
              v125 = v126;
              *v123 = 0;
              if (v126)
              {
                MEMORY[0x1AC55A040](v125, 0x1000C8077774924);
              }
            }

            while (v123 != v122);
            v124 = v224;
          }

          v225 = v122;
          operator delete(v124);
        }

        if (v220 != v223)
        {
          free(v220);
        }

        if (!v118)
        {
          return 0;
        }
      }

      else if (!v118)
      {
        return 0;
      }
    }
  }

  v206 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 2);
  if (v131)
  {
    v132 = v131;
    v133 = 0;
    while (1)
    {
      v134 = *this;
      v135 = (*(*(v206 + 32 * v133 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v136 = v207++;
      v137 = *v135;
      if (*(*v135 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v138 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
        AttrDictionary = v135;
        v219 = v138;
        ShapedType = mlir::ElementsAttr::getShapedType(&AttrDictionary);
        v137 = *v135;
        if (ShapedType)
        {
          v140 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
          v208 = v135;
          v209 = v140;
          mlir::ShapedType::getShape(&v208);
          v137 = *v135;
          if (!v141)
          {
            v175 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
            isSplat = v135;
            v216 = v175;
            v214 = mlir::ElementsAttr::isSplat(&isSplat);
            if (mlir::Type::isSignedInteger(&v214, 32) || mlir::Type::isSignedInteger(&v214, 64))
            {
              goto LABEL_234;
            }

            v137 = *v135;
          }
        }
      }

      v142 = *(v137 + 136);
      if (v142 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v142 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v144 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v137 + 8);
        v213[0] = v135;
        v213[1] = v144;
        v214 = mlir::ElementsAttr::isSplat(v213);
        if (mlir::Type::isSignedInteger(&v214, 32) || mlir::Type::isSignedInteger(&v214, 64))
        {
          v145 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
          v212[0] = v135;
          v212[1] = v145;
          Shape = mlir::ShapedType::getShape(v212);
          v230 = 1;
          if (v147 == 1 && *Shape == v230)
          {
            goto LABEL_234;
          }
        }
      }

      if (*(*v135 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v174 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
        v211[0] = v135;
        v211[1] = v174;
        v214 = mlir::ElementsAttr::isSplat(v211);
        if (mlir::Type::isSignedInteger(&v214, 32) || mlir::Type::isSignedInteger(&v214, 64))
        {
          goto LABEL_234;
        }
      }

      v210 = 261;
      v208 = "operand";
      v209 = 7;
      mlir::Operation::emitOpError(v134, &v208, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      v149 = v148;
      if (*v148)
      {
        v150 = *(v148 + 24);
        LODWORD(isSplat) = 5;
        v216 = v136;
        v151 = *(v148 + 32);
        if (v151 >= *(v148 + 36))
        {
          if (v150 <= &isSplat && v150 + 24 * v151 > &isSplat)
          {
            v176 = &isSplat - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v148 + 24, (v148 + 40), v151 + 1, 24);
            v150 = *(v149 + 24);
            v152 = &v176[v150];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v148 + 24, (v148 + 40), v151 + 1, 24);
            v150 = *(v149 + 24);
            v152 = &isSplat;
          }
        }

        else
        {
          v152 = &isSplat;
        }

        v153 = v150 + 24 * *(v149 + 32);
        v154 = *v152;
        *(v153 + 16) = v152[2];
        *v153 = v154;
        v155 = (*(v149 + 32) + 1);
        *(v149 + 32) = v155;
        if (*v149)
        {
          break;
        }
      }

LABEL_257:
      v165 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v229 == 1)
      {
        if (v228 != &v229)
        {
          free(v228);
        }

        v166 = v226;
        if (v226)
        {
          v167 = v227;
          v168 = v226;
          if (v227 != v226)
          {
            do
            {
              v167 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v167 - 1);
            }

            while (v167 != v166);
            v168 = v226;
          }

          v227 = v166;
          operator delete(v168);
        }

        v169 = v224;
        if (v224)
        {
          v170 = v225;
          v171 = v224;
          if (v225 != v224)
          {
            do
            {
              v173 = *--v170;
              v172 = v173;
              *v170 = 0;
              if (v173)
              {
                MEMORY[0x1AC55A040](v172, 0x1000C8077774924);
              }
            }

            while (v170 != v169);
            v171 = v224;
          }

          v225 = v169;
          operator delete(v171);
        }

        if (v220 != v223)
        {
          free(v220);
        }
      }

      if (!v165)
      {
        return 0;
      }

LABEL_234:
      if (++v133 == v132)
      {
        goto LABEL_298;
      }
    }

    LODWORD(isSplat) = 3;
    v216 = " must be 0D tensor of mps index type values or static-shape defined tensor with shape equal to [1] or unranked tensor of mps index type values, but got ";
    v217 = 152;
    v156 = *(v149 + 24);
    if (v155 >= *(v149 + 36))
    {
      if (v156 <= &isSplat && v156 + 24 * v155 > &isSplat)
      {
        v177 = &isSplat - v156;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, (v149 + 40), v155 + 1, 24);
        v156 = *(v149 + 24);
        v157 = &v177[v156];
LABEL_254:
        v158 = v156 + 24 * *(v149 + 32);
        v159 = *v157;
        *(v158 + 16) = v157[2];
        *v158 = v159;
        ++*(v149 + 32);
        if (*v149)
        {
          v160 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, v135);
          v161 = *(v149 + 32);
          v162 = *(v149 + 24);
          if (v161 >= *(v149 + 36))
          {
            if (v162 <= &isSplat && v162 + 24 * v161 > &isSplat)
            {
              v178 = &isSplat - v162;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, (v149 + 40), v161 + 1, 24);
              v162 = *(v149 + 24);
              v160 = &v178[v162];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, (v149 + 40), v161 + 1, 24);
              v162 = *(v149 + 24);
              v160 = &isSplat;
            }
          }

          v163 = v162 + 24 * *(v149 + 32);
          v164 = *v160;
          *(v163 + 16) = v160[2];
          *v163 = v164;
          ++*(v149 + 32);
        }

        goto LABEL_257;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(v149 + 24, (v149 + 40), v155 + 1, 24);
      v156 = *(v149 + 24);
    }

    v157 = &isSplat;
    goto LABEL_254;
  }

LABEL_298:
  v179 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 3);
  if (v180)
  {
    v181 = v180;
    v182 = v207;
    v183 = v179 + 24;
    do
    {
      v184 = *this;
      v185 = *(*v183 + 8);
      v186 = v182 + 1;
      v207 = v182 + 1;
      if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v184, (v185 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v182))
      {
        return 0;
      }

      v183 += 32;
      v182 = v186;
    }

    while (--v181);
  }

  v187 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 4);
  v189 = v188;
  if (v188 >= 2)
  {
LABEL_303:
    v208 = "operand group starting at #";
    v210 = 259;
    mlir::OpState::emitOpError(this, &v208, &AttrDictionary);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&AttrDictionary, &v207);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v190, " requires 0 or 1 element, but found ");
    isSplat = v189;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v191, &isSplat);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v192);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v7;
  }

  if (v188)
  {
    v193 = *(v187 + 24);
    v194 = *this;
    v195 = *(v193 + 8);
    v196 = v207++;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps18(v194, (v195 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v196))
    {
      return 0;
    }
  }

  v197 = mlir::mpsx::QuantizedGatherOp::getODSOperands(this, 5);
  v189 = v198;
  if (v198 >= 2)
  {
    goto LABEL_303;
  }

  if (v198)
  {
    v199 = *(v197 + 24);
    v200 = *this;
    v201 = *(v199 + 8);
    v202 = v207++;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v200, (v201 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v202))
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v203 = *this - 16;
  }

  else
  {
    v203 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v203, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps18(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v40[0] = mlir::ElementsAttr::isSplat(v44);
    if (mlir::Type::isSignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 1))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 32))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v40[0] + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
    {
      return 1;
    }
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(a1, v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    v42 = 5;
    v43 = a5;
    v15 = *(v13 + 32);
    v16 = &v42;
    if (v15 >= *(v13 + 36))
    {
      if (v14 <= &v42 && v14 + 24 * v15 > &v42)
      {
        v37 = &v42 - v14;
        v38 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v15 + 1, 24);
        v13 = v38;
        v14 = *(v38 + 24);
        v16 = &v37[v14];
      }

      else
      {
        v36 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, (v13 + 40), v15 + 1, 24);
        v13 = v36;
        v14 = *(v36 + 24);
        v16 = &v42;
      }
    }

    v17 = v14 + 24 * *(v13 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, " must be tensor of quantized values, but got ");
  if (*v19)
  {
    v20 = &v42;
    v21 = v19;
    mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
    v19 = v21;
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v42 && v22 + 24 * v23 > &v42)
      {
        v39 = &v42 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v39[v22];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, (v21 + 40), v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v42;
      }
    }

    v24 = v22 + 24 * *(v19 + 32);
    v25 = *v20;
    *(v24 + 16) = *(v20 + 2);
    *v24 = v25;
    ++*(v19 + 32);
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = __p;
      if (v50 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = v47;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v26;
}

uint64_t mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase::getWeightsQuantParamsAxis(mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), v3, *(*(*(this + 1) + 96) + 40));
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    return v8 | v6 | v9;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v14 = v6;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  mlir::IntegerAttr::getValue(&v14, &v12);
  if (v13 > 0x40)
  {
    v11 = *v12;
    MEMORY[0x1AC55A040]();
  }

  else if (v13)
  {
    v11 = (v12 << -v13) >> -v13;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v6 = v11 & 0xFFFFFF00;
  v9 = v11;
  v8 = 0x100000000;
  return v8 | v6 | v9;
}

unint64_t mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  LODWORD(v2) = a2;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v5 + 16 * v6 - 16), *(*(*(*this + 6) + 96) + 8));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    v10 = 0;
    return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
  }

  AttrDictionary = 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  LODWORD(v10) = 0;
  v2 = v2;
  do
  {
    v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + v9) + v10);
    v9 += 4;
  }

  while (4 * v2 != v9);
  return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 32), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &v3);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *v3;
      MEMORY[0x1AC55A040]();
    }

    else if (v4)
    {
      v2 = (v3 << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getTransposeLhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getTransposeRhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::populateDefaultAttrs(mlir::mpsx::QuantizedMatMulOp *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[3]))
  {
    v6 = v4[3];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0, v5);
    ZinMirCacheTensors::ZinMirCacheTensors(&v13, v6, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v13, v14);
  }

  result = mlir::NamedAttrList::get(a2, v4[4]);
  if (!result)
  {
    v10 = v4[4];
    v11 = mlir::Builder::getBoolAttr(&Context, 0, v9);
    ZinMirCacheTensors::ZinMirCacheTensors(&v13, v10, v11);
    return mlir::NamedAttrList::push_back(a2, v13, v14);
  }

  return result;
}

BOOL mlir::mpsx::QuantizedMatMulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v133 = *MEMORY[0x1E69E9840];
  v122[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v122);
  if (!v3)
  {
LABEL_7:
    v119[0] = "requires attribute 'operandSegmentSizes'";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
    if (v122[0])
    {
      mlir::InFlightDiagnostic::report(v122);
    }

    if (v132 != 1)
    {
      return v7;
    }

    if (v131 != &v132)
    {
      free(v131);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v130;
      v10 = __p;
      if (v130 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v130 = v8;
      operator delete(v10);
    }

    v11 = v127;
    if (!v127)
    {
      goto LABEL_81;
    }

    v12 = v128;
    v13 = v127;
    if (v128 == v127)
    {
      goto LABEL_80;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
      }
    }

    while (v12 != v11);
    goto LABEL_79;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v119[0] = "requires attribute 'output_type'";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
    if (v122[0])
    {
      mlir::InFlightDiagnostic::report(v122);
    }

    if (v132 != 1)
    {
      return v7;
    }

    if (v131 != &v132)
    {
      free(v131);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v130;
      v21 = __p;
      if (v130 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v130 = v19;
      operator delete(v21);
    }

    v11 = v127;
    if (!v127)
    {
      goto LABEL_81;
    }

    v22 = v128;
    v13 = v127;
    if (v128 == v127)
    {
      goto LABEL_80;
    }

    do
    {
      v24 = *--v22;
      v23 = v24;
      *v22 = 0;
      if (v24)
      {
        MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
      }
    }

    while (v22 != v11);
LABEL_79:
    v13 = v127;
    goto LABEL_80;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    if (ZinCompressedFootprintInfo::GetCompressedBytes((v4 + v16)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v25 = *(v18 + 1);
  v26 = v6 - v16;
  if (v6 == v16)
  {
    v29 = 0;
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(v18) == *(*(*(*this + 6) + 96) + 24))
      {
        v27 = *(v18 + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(v18) == *(*(*(*this + 6) + 96) + 32))
      {
        v28 = *(v18 + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(v18) == *(*(*(*this + 6) + 96) + 40))
      {
        v29 = *(v18 + 1);
      }

      v18 = (v18 + 16);
      v26 -= 16;
    }

    while (v26);
  }

  v118 = v17;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v118);
  if (v30 != 11)
  {
    v31 = v30;
    v119[0] = "'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    if (v122[0])
    {
      LODWORD(v121[0]) = 5;
      v121[1] = v31;
      v32 = v121;
      v33 = v123;
      if (v124 >= v125)
      {
        if (v123 <= v121 && v123 + 24 * v124 > v121)
        {
          v117 = v121 - v123;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
          v33 = v123;
          v32 = (v123 + v117);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v126, v124 + 1, 24);
          v32 = v121;
          v33 = v123;
        }
      }

      v34 = &v33[24 * v124];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++v124;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
    if (v122[0])
    {
      mlir::InFlightDiagnostic::report(v122);
    }

    if ((v132 & 1) == 0)
    {
      return v7;
    }

    if (v131 != &v132)
    {
      free(v131);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v130;
      v38 = __p;
      if (v130 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v130 = v36;
      operator delete(v38);
    }

    v11 = v127;
    if (v127)
    {
      v39 = v128;
      v13 = v127;
      if (v128 != v127)
      {
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

        while (v39 != v11);
        goto LABEL_79;
      }

LABEL_80:
      v128 = v11;
      operator delete(v13);
    }

LABEL_81:
    if (v123 != v126)
    {
      free(v123);
    }

    return v7;
  }

  if (!mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v5, "input_quant_params_axis", 0x17) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v29, "weights_quant_params_axis", 0x19) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v25, "output_type", 0xB) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v27, "transpose_lhs", 0xD) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v28, "transpose_rhs", 0xD))
  {
    return 0;
  }

  LODWORD(v118) = 0;
  ODSOperands = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 0);
  if (v44)
  {
    v45 = v44;
    v46 = ODSOperands + 24;
    do
    {
      v47 = *this;
      v48 = *(*v46 + 8);
      v49 = v118;
      LODWORD(v118) = v118 + 1;
      if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v47, (v48 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v49))
      {
        return 0;
      }

      v46 += 32;
    }

    while (--v45);
  }

  v50 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 1);
  v52 = v51;
  if (v51 >= 2)
  {
LABEL_89:
    v119[0] = "operand group starting at #";
    v120 = 259;
    mlir::OpState::emitOpError(this, v119, v122);
    mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v122, &v118);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v53, " requires 0 or 1 element, but found ");
    v121[0] = v52;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v54, v121);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v122);
    return v7;
  }

  if (v51)
  {
    v56 = *(v50 + 24);
    v57 = *this;
    v58 = *(v56 + 8);
    v59 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v57, (v58 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v59))
    {
      return 0;
    }
  }

  v60 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 2);
  v52 = v61;
  if (v61 >= 2)
  {
    goto LABEL_89;
  }

  if (v61)
  {
    v62 = *(v60 + 24);
    v63 = *this;
    v64 = *(v62 + 8);
    v65 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v63, (v64 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v65))
    {
      return 0;
    }
  }

  v66 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 3);
  v52 = v67;
  if (v67 >= 2)
  {
    goto LABEL_89;
  }

  if (v67)
  {
    v68 = *(v66 + 24);
    v69 = *this;
    v70 = *(v68 + 8);
    v71 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v69, (v70 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v71))
    {
      return 0;
    }
  }

  v72 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 4);
  if (v73)
  {
    v74 = v73;
    v75 = v72 + 24;
    do
    {
      v76 = *this;
      v77 = *(*v75 + 8);
      v78 = v118;
      LODWORD(v118) = v118 + 1;
      if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v76, (v77 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v78))
      {
        return 0;
      }

      v75 += 32;
    }

    while (--v74);
  }

  v79 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 5);
  v52 = v80;
  if (v80 >= 2)
  {
    goto LABEL_89;
  }

  if (v80)
  {
    v81 = *(v79 + 24);
    v82 = *this;
    v83 = *(v81 + 8);
    v84 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps13(v82, (v83 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v84))
    {
      return 0;
    }
  }

  v85 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 6);
  v52 = v86;
  if (v86 >= 2)
  {
    goto LABEL_89;
  }

  if (v86)
  {
    v87 = *(v85 + 24);
    v88 = *this;
    v89 = *(v87 + 8);
    v90 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v88, (v89 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v90))
    {
      return 0;
    }
  }

  v91 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 7);
  v52 = v92;
  if (v92 >= 2)
  {
    goto LABEL_89;
  }

  if (v92)
  {
    v93 = *(v91 + 24);
    v94 = *this;
    v95 = *(v93 + 8);
    v96 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v94, (v95 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v96))
    {
      return 0;
    }
  }

  v97 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 8);
  v52 = v98;
  if (v98 >= 2)
  {
    goto LABEL_89;
  }

  if (v98)
  {
    v99 = *(v97 + 24);
    v100 = *this;
    v101 = *(v99 + 8);
    v102 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v100, (v101 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v102))
    {
      return 0;
    }
  }

  v103 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 9);
  v52 = v104;
  if (v104 >= 2)
  {
    goto LABEL_89;
  }

  if (v104)
  {
    v105 = *(v103 + 24);
    v106 = *this;
    v107 = *(v105 + 8);
    v108 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v106, (v107 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v108))
    {
      return 0;
    }
  }

  v109 = mlir::mpsx::QuantizedMatMulOp::getODSOperands(this, 10);
  v52 = v110;
  if (v110 >= 2)
  {
    goto LABEL_89;
  }

  if (v110)
  {
    v111 = *(v109 + 24);
    v112 = *this;
    v113 = *(v111 + 8);
    v114 = v118;
    LODWORD(v118) = v118 + 1;
    if (!mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v112, (v113 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v114))
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v115 = *this - 16;
  }

  else
  {
    v115 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v115, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::populateDefaultAttrs(mlir::mpsx::SparseDenseMatMulOp *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[1]))
  {
    v6 = v4[1];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0, v5);
    ZinMirCacheTensors::ZinMirCacheTensors(&v13, v6, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v13, v14);
  }

  result = mlir::NamedAttrList::get(a2, v4[2]);
  if (!result)
  {
    v10 = v4[2];
    v11 = mlir::Builder::getBoolAttr(&Context, 0, v9);
    ZinMirCacheTensors::ZinMirCacheTensors(&v13, v10, v11);
    return mlir::NamedAttrList::push_back(a2, v13, v14);
  }

  return result;
}

BOOL mlir::mpsx::SparseDenseMatMulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v156 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v7 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v5)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
        v7 = *this;
        if (v20 == *(*(*(*this + 6) + 96) + 8))
        {
          v18 = *(v4 + 1);
        }

        else
        {
          v21 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
          v7 = *this;
          if (v21 == *(*(*(*this + 6) + 96) + 16))
          {
            v19 = *(v4 + 1);
          }
        }

        v4 = (v4 + 16);
        v5 -= 16;
      }

      while (v5);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    if (!mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(v7, v18, "transpose_lhs", 0xD) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v19, "transpose_rhs", 0xD))
    {
      return 0;
    }

    v22 = *this;
    if (v17 && *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
    {
      v140 = 257;
      mlir::Operation::emitOpError(v22, &v138, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, "attribute '");
      if (*v23)
      {
        v140 = 261;
        v138 = "storage_type";
        v139 = 12;
        v24 = v23;
        mlir::Diagnostic::operator<<((v23 + 1), &v138);
        v23 = v24;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: valid SparseTensorStorage");
      v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v155 == 1)
      {
        if (v154 != &v155)
        {
          free(v154);
        }

        v27 = __p;
        if (__p)
        {
          v28 = v153;
          v29 = __p;
          if (v153 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v153 = v27;
          operator delete(v29);
        }

        v30 = v150;
        if (v150)
        {
          v31 = v151;
          v32 = v150;
          if (v151 != v150)
          {
            do
            {
              v34 = *--v31;
              v33 = v34;
              *v31 = 0;
              if (v34)
              {
                MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
              }
            }

            while (v31 != v30);
            v32 = v150;
          }

          v151 = v30;
          operator delete(v32);
        }

        if (v148 != v149)
        {
          free(v148);
        }
      }

      if (!v26)
      {
        return 0;
      }

      v22 = *this;
    }

    v35 = (*(*(*(v22 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v36 = *v35;
    v37 = *(*v35 + 136);
    if (v37 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v36 + 8);
      AttrDictionary = v35;
      v147 = v38;
      isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
      if (mlir::Type::isF32(&isSplat))
      {
LABEL_96:
        if (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
        {
          v65 = *this;
          v66 = *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
          v67 = *(*v66 + 136);
          if (v67 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v67 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            v69 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v66 + 8);
            AttrDictionary = v66;
            v147 = v69;
            v138 = mlir::ElementsAttr::isSplat(&AttrDictionary);
            if (mlir::Type::isSignedInteger(&v138, 32) || mlir::Type::isSignedInteger(&v138, 64))
            {
              goto LABEL_133;
            }
          }

          v140 = 261;
          v138 = "operand";
          v139 = 7;
          mlir::Operation::emitOpError(v65, &v138, &AttrDictionary);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
          if (*v70)
          {
            v71 = *(v70 + 24);
            LODWORD(v144) = 5;
            v145 = 3;
            v72 = *(v70 + 32);
            v73 = &v144;
            if (v72 >= *(v70 + 36))
            {
              if (v71 <= &v144 && v71 + 24 * v72 > &v144)
              {
                v132 = &v144 - v71;
                v133 = v70;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v70 + 24, (v70 + 40), v72 + 1, 24);
                v70 = v133;
                v71 = *(v133 + 24);
                v73 = &v132[v71];
              }

              else
              {
                v127 = v70;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v70 + 24, (v70 + 40), v72 + 1, 24);
                v70 = v127;
                v71 = *(v127 + 24);
                v73 = &v144;
              }
            }

            v74 = v71 + 24 * *(v70 + 32);
            v75 = *v73;
            *(v74 + 16) = *(v73 + 2);
            *v74 = v75;
            ++*(v70 + 32);
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v70, " must be tensor of mps index type values, but got ");
          if (*v76)
          {
            v77 = &v144;
            v78 = v76;
            mlir::DiagnosticArgument::DiagnosticArgument(&v144, v66);
            v79 = *(v78 + 24);
            v80 = *(v78 + 32);
            if (v80 >= *(v78 + 36))
            {
              if (v79 <= &v144 && v79 + 24 * v80 > &v144)
              {
                v134 = &v144 - v79;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v78 + 24, (v78 + 40), v80 + 1, 24);
                v76 = v78;
                v79 = *(v78 + 24);
                v77 = &v134[v79];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v78 + 24, (v78 + 40), v80 + 1, 24);
                v76 = v78;
                v79 = *(v78 + 24);
                v77 = &v144;
              }
            }

            else
            {
              v76 = v78;
            }

            v81 = v79 + 24 * *(v76 + 32);
            v82 = *v77;
            *(v81 + 16) = *(v77 + 2);
            *v81 = v82;
            ++*(v76 + 32);
          }

          v83 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
          if (AttrDictionary)
          {
            mlir::InFlightDiagnostic::report(&AttrDictionary);
          }

          if (v155 == 1)
          {
            if (v154 != &v155)
            {
              free(v154);
            }

            v84 = __p;
            if (__p)
            {
              v85 = v153;
              v86 = __p;
              if (v153 != __p)
              {
                do
                {
                  v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
                }

                while (v85 != v84);
                v86 = __p;
              }

              v153 = v84;
              operator delete(v86);
            }

            v87 = v150;
            if (v150)
            {
              v88 = v151;
              v89 = v150;
              if (v151 != v150)
              {
                do
                {
                  v91 = *--v88;
                  v90 = v91;
                  *v88 = 0;
                  if (v91)
                  {
                    MEMORY[0x1AC55A040](v90, 0x1000C8077774924);
                  }
                }

                while (v88 != v87);
                v89 = v150;
              }

              v151 = v87;
              operator delete(v89);
            }

            if (v148 != v149)
            {
              free(v148);
            }
          }

          if (v83)
          {
LABEL_133:
            v92 = *this;
            v93 = (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
            v94 = *v93;
            v95 = *(*v93 + 136);
            if (v95 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
              v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v94 + 8);
              AttrDictionary = v93;
              v147 = v96;
              isSplat = mlir::ElementsAttr::isSplat(&AttrDictionary);
              if (mlir::Type::isF32(&isSplat))
              {
LABEL_168:
                if (*(*this + 9))
                {
                  v123 = *this - 16;
                }

                else
                {
                  v123 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v123, 0);
                return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
              }

              v94 = *v93;
              v95 = *(*v93 + 136);
            }

            if (v95 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v94 + 8);
              v138 = v93;
              v139 = v97;
              if (mlir::ElementsAttr::getShapedType(&v138))
              {
                v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v93 + 8);
                v144 = v93;
                v145 = v98;
                mlir::ShapedType::getShape(&v144);
                if (v99 == 2)
                {
                  v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v93 + 8);
                  v141 = v93;
                  v142 = v100;
                  isSplat = mlir::ElementsAttr::isSplat(&v141);
                  if (mlir::Type::isF32(&isSplat))
                  {
                    goto LABEL_168;
                  }
                }
              }
            }

            v140 = 261;
            v138 = "operand";
            v139 = 7;
            mlir::Operation::emitOpError(v92, &v138, &AttrDictionary);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
            if (*v101)
            {
              v102 = *(v101 + 24);
              LODWORD(v144) = 5;
              v145 = 4;
              v103 = *(v101 + 32);
              v104 = &v144;
              if (v103 >= *(v101 + 36))
              {
                if (v102 <= &v144 && v102 + 24 * v103 > &v144)
                {
                  v135 = &v144 - v102;
                  v136 = v101;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, (v101 + 40), v103 + 1, 24);
                  v101 = v136;
                  v102 = *(v136 + 24);
                  v104 = &v135[v102];
                }

                else
                {
                  v128 = v101;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v101 + 24, (v101 + 40), v103 + 1, 24);
                  v101 = v128;
                  v102 = *(v128 + 24);
                  v104 = &v144;
                }
              }

              v105 = v102 + 24 * *(v101 + 32);
              v106 = *v104;
              *(v105 + 16) = *(v104 + 2);
              *v105 = v106;
              ++*(v101 + 32);
            }

            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v101, " must be unranked tensor of 32-bit float values or 2D tensor of 32-bit float values, but got ");
            if (*v107)
            {
              v108 = &v144;
              v109 = v107;
              mlir::DiagnosticArgument::DiagnosticArgument(&v144, v93);
              v110 = *(v109 + 24);
              v111 = *(v109 + 32);
              if (v111 >= *(v109 + 36))
              {
                if (v110 <= &v144 && v110 + 24 * v111 > &v144)
                {
                  v137 = &v144 - v110;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v109 + 24, (v109 + 40), v111 + 1, 24);
                  v107 = v109;
                  v110 = *(v109 + 24);
                  v108 = &v137[v110];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(v109 + 24, (v109 + 40), v111 + 1, 24);
                  v107 = v109;
                  v110 = *(v109 + 24);
                  v108 = &v144;
                }
              }

              else
              {
                v107 = v109;
              }

              v112 = v110 + 24 * *(v107 + 32);
              v113 = *v108;
              *(v112 + 16) = *(v108 + 2);
              *v112 = v113;
              ++*(v107 + 32);
            }

            v114 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
            if (AttrDictionary)
            {
              mlir::InFlightDiagnostic::report(&AttrDictionary);
            }

            if (v155 == 1)
            {
              if (v154 != &v155)
              {
                free(v154);
              }

              v115 = __p;
              if (__p)
              {
                v116 = v153;
                v117 = __p;
                if (v153 != __p)
                {
                  do
                  {
                    v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
                  }

                  while (v116 != v115);
                  v117 = __p;
                }

                v153 = v115;
                operator delete(v117);
              }

              v118 = v150;
              if (v150)
              {
                v119 = v151;
                v120 = v150;
                if (v151 != v150)
                {
                  do
                  {
                    v122 = *--v119;
                    v121 = v122;
                    *v119 = 0;
                    if (v122)
                    {
                      MEMORY[0x1AC55A040](v121, 0x1000C8077774924);
                    }
                  }

                  while (v119 != v118);
                  v120 = v150;
                }

                v151 = v118;
                operator delete(v120);
              }

              if (v148 != v149)
              {
                free(v148);
              }
            }

            if (v114)
            {
              goto LABEL_168;
            }
          }
        }

        return 0;
      }

      v36 = *v35;
      v37 = *(*v35 + 136);
    }

    if (v37 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v36 + 8), v138 = v35, v139 = v39, !mlir::ElementsAttr::getShapedType(&v138)) || (v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8), v144 = v35, v145 = v40, mlir::ShapedType::getShape(&v144), v41 != 1) || (v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8), v141 = v35, v142 = v42, isSplat = mlir::ElementsAttr::isSplat(&v141), !mlir::Type::isF32(&isSplat)))
    {
      v140 = 261;
      v138 = "operand";
      v139 = 7;
      mlir::Operation::emitOpError(v22, &v138, &AttrDictionary);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&AttrDictionary, " #");
      if (*v43)
      {
        v44 = *(v43 + 24);
        LODWORD(v144) = 5;
        v145 = 0;
        v45 = *(v43 + 32);
        v46 = &v144;
        if (v45 >= *(v43 + 36))
        {
          if (v44 <= &v144 && v44 + 24 * v45 > &v144)
          {
            v129 = &v144 - v44;
            v130 = v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 24, (v43 + 40), v45 + 1, 24);
            v43 = v130;
            v44 = *(v130 + 24);
            v46 = &v129[v44];
          }

          else
          {
            v126 = v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v43 + 24, (v43 + 40), v45 + 1, 24);
            v43 = v126;
            v44 = *(v126 + 24);
            v46 = &v144;
          }
        }

        v47 = v44 + 24 * *(v43 + 32);
        v48 = *v46;
        *(v47 + 16) = *(v46 + 2);
        *v47 = v48;
        ++*(v43 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v43, " must be unranked tensor of 32-bit float values or 1D tensor of 32-bit float values, but got ");
      if (*v49)
      {
        v50 = &v144;
        v51 = v49;
        mlir::DiagnosticArgument::DiagnosticArgument(&v144, v35);
        v52 = *(v51 + 24);
        v53 = *(v51 + 32);
        if (v53 >= *(v51 + 36))
        {
          if (v52 <= &v144 && v52 + 24 * v53 > &v144)
          {
            v131 = &v144 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v51 + 24, (v51 + 40), v53 + 1, 24);
            v49 = v51;
            v52 = *(v51 + 24);
            v50 = &v131[v52];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v51 + 24, (v51 + 40), v53 + 1, 24);
            v49 = v51;
            v52 = *(v51 + 24);
            v50 = &v144;
          }
        }

        else
        {
          v49 = v51;
        }

        v54 = v52 + 24 * *(v49 + 32);
        v55 = *v50;
        *(v54 + 16) = *(v50 + 2);
        *v54 = v55;
        ++*(v49 + 32);
      }

      v56 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v155 == 1)
      {
        if (v154 != &v155)
        {
          free(v154);
        }

        v57 = __p;
        if (__p)
        {
          v58 = v153;
          v59 = __p;
          if (v153 != __p)
          {
            do
            {
              v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
            }

            while (v58 != v57);
            v59 = __p;
          }

          v153 = v57;
          operator delete(v59);
        }

        v60 = v150;
        if (v150)
        {
          v61 = v151;
          v62 = v150;
          if (v151 != v150)
          {
            do
            {
              v64 = *--v61;
              v63 = v64;
              *v61 = 0;
              if (v64)
              {
                MEMORY[0x1AC55A040](v63, 0x1000C8077774924);
              }
            }

            while (v61 != v60);
            v62 = v150;
          }

          v151 = v60;
          operator delete(v62);
        }

        if (v148 != v149)
        {
          free(v148);
        }
      }

      if (!v56)
      {
        return 0;
      }
    }

    goto LABEL_96;
  }

LABEL_5:
  v138 = "requires attribute 'storage_type'";
  v140 = 259;
  mlir::OpState::emitOpError(this, &v138, &AttrDictionary);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v155 == 1)
  {
    if (v154 != &v155)
    {
      free(v154);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v153;
      v11 = __p;
      if (v153 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v153 = v9;
      operator delete(v11);
    }

    v12 = v150;
    if (v150)
    {
      v13 = v151;
      v14 = v150;
      if (v151 != v150)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v150;
      }

      v151 = v12;
      operator delete(v14);
    }

    if (v148 != v149)
    {
      free(v148);
    }
  }

  return v8;
}

BOOL mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v58[0] = a2;
    v58[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v58);
    if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
    {
      return 1;
    }

    v10 = *a2;
    v11 = *(*a2 + 136);
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v50 = a2;
    v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ElementsAttr::getShapedType(&v50))
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v55 = a2;
      v56 = v12;
      mlir::ShapedType::getShape(&v55);
      if (v13 == 1)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v53[0] = a2;
        v53[1] = v14;
        isSplat = mlir::ElementsAttr::isSplat(v53);
        if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
        {
          return 1;
        }
      }
    }
  }

  v52 = 261;
  v50 = a3;
  v51 = a4;
  mlir::Operation::emitOpError(a1, &v50, v58);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v58, " #");
  if (*v15)
  {
    v17 = v15 + 24;
    v16 = *(v15 + 24);
    LODWORD(v55) = 5;
    v56 = a5;
    v18 = *(v15 + 32);
    v19 = &v55;
    if (v18 >= *(v15 + 36))
    {
      if (v16 <= &v55 && v16 + 24 * v18 > &v55)
      {
        v45 = &v55 - v16;
        v46 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, (v15 + 40), v18 + 1, 24);
        v15 = v46;
        v16 = *(v46 + 24);
        v19 = &v45[v16];
      }

      else
      {
        v43 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, (v15 + 40), v18 + 1, 24);
        v15 = v43;
        v16 = *(v43 + 24);
        v19 = &v55;
      }
    }

    v20 = v16 + 24 * *(v15 + 32);
    v21 = *v19;
    *(v20 + 16) = v19[2];
    *v20 = v21;
    v22 = (*(v15 + 32) + 1);
    *(v15 + 32) = v22;
    if (*v15)
    {
      LODWORD(v55) = 3;
      v56 = " must be unranked tensor of 32/64-bit signed integer values or 1D tensor of 32/64-bit signed integer values, but got ";
      v57 = 117;
      v23 = *(v15 + 24);
      v24 = &v55;
      if (v22 >= *(v15 + 36))
      {
        if (v23 <= &v55 && v23 + 24 * v22 > &v55)
        {
          v47 = &v55 - v23;
          v48 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 40), v22 + 1, 24);
          v15 = v48;
          v23 = *(v48 + 24);
          v24 = &v47[v23];
        }

        else
        {
          v44 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v15 + 40), v22 + 1, 24);
          v15 = v44;
          v23 = *(v44 + 24);
          v24 = &v55;
        }
      }

      v25 = v23 + 24 * *(v15 + 32);
      v26 = *v24;
      *(v25 + 16) = v24[2];
      *v25 = v26;
      ++*(v15 + 32);
      if (*v15)
      {
        v27 = &v55;
        v28 = v15;
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, a2);
        v15 = v28;
        v29 = *(v28 + 32);
        v30 = *(v28 + 24);
        if (v29 >= *(v28 + 36))
        {
          if (v30 <= &v55 && v30 + 24 * v29 > &v55)
          {
            v49 = &v55 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v28 + 40), v29 + 1, 24);
            v15 = v28;
            v30 = *(v28 + 24);
            v27 = &v49[v30];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v28 + 40), v29 + 1, 24);
            v15 = v28;
            v30 = *(v28 + 24);
            v27 = &v55;
          }
        }

        v31 = v30 + 24 * *(v15 + 32);
        v32 = *v27;
        *(v31 + 16) = v27[2];
        *v31 = v32;
        ++*(v15 + 32);
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v58[0])
  {
    mlir::InFlightDiagnostic::report(v58);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v64;
      v36 = __p;
      if (v64 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v64 = v34;
      operator delete(v36);
    }

    v37 = v61;
    if (v61)
    {
      v38 = v62;
      v39 = v61;
      if (v62 != v61)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v61;
      }

      v62 = v37;
      operator delete(v39);
    }

    if (v59 != &v60)
    {
      free(v59);
    }
  }

  return v33;
}

BOOL mlir::mpsx::TensorToBufferOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v55 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v55);
  if (Value == mlir::DictionaryAttr::end(&v55))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
      {
        v5 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 24))
      {
        v9 = *(Value + 1);
      }

      else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 32))
      {
        v8 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v55));
    if (v8)
    {
      if (!mlir::DenseIntElementsAttr::classof(v8))
      {
        goto LABEL_20;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v48 = v8;
      v49 = v10;
      Type = mlir::ElementsAttr::getType(&v48);
      v12 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v56 = v12;
      v57 = Type;
      mlir::ShapedType::getShape(&v56);
      if (v13 != 1 || (v51 = v8, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v14, isSplat = mlir::ElementsAttr::isSplat(&v52), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_20:
        v48 = "'mpsx.tensor_to_buffer' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v63;
            v18 = __p;
            if (v63 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v63 = v16;
            operator delete(v18);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v20 = v61;
          v21 = v60;
          if (v61 == v60)
          {
LABEL_100:
            v61 = v19;
            operator delete(v21);
LABEL_101:
            if (v58 != &v59)
            {
              free(v58);
            }

            return v15;
          }

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
LABEL_99:
          v21 = v60;
          goto LABEL_100;
        }

        return v15;
      }
    }
  }

  if (!v9)
  {
LABEL_56:
    if (!v5)
    {
      goto LABEL_63;
    }

    if (!mlir::DenseIntElementsAttr::classof(v5))
    {
      goto LABEL_67;
    }

    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    v48 = v5;
    v49 = v30;
    v31 = mlir::ElementsAttr::getType(&v48);
    v32 = v31;
    if (v31)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    v56 = v32;
    v57 = v31;
    mlir::ShapedType::getShape(&v56);
    if (v33 == 1 && (v51 = v5, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v34, isSplat = mlir::ElementsAttr::isSplat(&v52), mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_63:
      if (v7 && !mlir::BoolAttr::classof(v7))
      {
        v48 = "'mpsx.tensor_to_buffer' op attribute 'isTensorBufferOp' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v41 = __p;
          if (__p)
          {
            v42 = v63;
            v43 = __p;
            if (v63 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v63 = v41;
            operator delete(v43);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v44 = v61;
          v21 = v60;
          if (v61 == v60)
          {
            goto LABEL_100;
          }

          do
          {
            v46 = *--v44;
            v45 = v46;
            *v44 = 0;
            if (v46)
            {
              MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
            }
          }

          while (v44 != v19);
          goto LABEL_99;
        }
      }

      else if (v6 && !mlir::BoolAttr::classof(v6))
      {
        v48 = "'mpsx.tensor_to_buffer' op attribute 'isChannelAndInterleaveSame' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v57);
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
LABEL_67:
      v48 = "'mpsx.tensor_to_buffer' op attribute 'interleave' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v50 = 259;
      mlir::emitError(a2, &v48, &v56);
      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v63;
          v37 = __p;
          if (v63 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v63 = v35;
          operator delete(v37);
        }

        v19 = v60;
        if (!v60)
        {
          goto LABEL_101;
        }

        v38 = v61;
        v21 = v60;
        if (v61 == v60)
        {
          goto LABEL_100;
        }

        do
        {
          v40 = *--v38;
          v39 = v40;
          *v38 = 0;
          if (v40)
          {
            MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
          }
        }

        while (v38 != v19);
        goto LABEL_99;
      }
    }

    return v15;
  }

  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v56 = v9;
    mlir::AffineMapAttr::getValue(&v56);
    goto LABEL_56;
  }

  v48 = "'mpsx.tensor_to_buffer' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v50 = 259;
  mlir::emitError(a2, &v48, &v56);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v19 = v60;
    if (!v60)
    {
      goto LABEL_101;
    }

    v27 = v61;
    v21 = v60;
    if (v61 == v60)
    {
      goto LABEL_100;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x1AC55A040](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v19);
    goto LABEL_99;
  }

  return v15;
}

BOOL mlir::mpsx::TensorToBufferOp::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 16 * v3;
    do
    {
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
      v12 = *this;
      if (CompressedBytes == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v13 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
        v12 = *this;
        if (v13 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v14 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
          v12 = *this;
          if (v14 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }

          else
          {
            v15 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
            v12 = *this;
            if (v15 == *(*(*(*this + 6) + 96) + 24))
            {
              v8 = *(v4 + 1);
            }

            else
            {
              v16 = ZinCompressedFootprintInfo::GetCompressedBytes(v4);
              v12 = *this;
              if (v16 == *(*(*(*this + 6) + 96) + 32))
              {
                v9 = *(v4 + 1);
              }
            }
          }
        }
      }

      v4 = (v4 + 16);
      v10 -= 16;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v12 = *this;
  }

  if (!mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v12, v9, "shape", 5) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v8, "resultElementType", 0x11) || !mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(*this, v5, "interleave", 10) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v7, "isTensorBufferOp", 0x10) || !mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v6, "isChannelAndInterleaveSame", 0x1A) || !mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mpsx::VarHandleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(*this, v4[1], "identifier", 0xA))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'identifier'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
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
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::Diagnostic::append<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v12 = a1 + 16;
  v13 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v10;
  v14 = *(a1 + 24);
  v15 = &v21;
  if (v14 >= *(a1 + 28))
  {
    if (v13 <= &v21 && v13 + 24 * v14 > &v21)
    {
      v19 = &v21 - v13;
      v20 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (v11 + 32), v14 + 1, 24);
      v11 = v20;
      v13 = *(v20 + 16);
      v15 = &v19[v13];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v11 = a1;
      v13 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v13 + 24 * *(v11 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(v11 + 24);
  return mlir::Diagnostic::append<mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(v11, a3, a4, a5);
}

uint64_t mlir::Diagnostic::append<mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(uint64_t a1, uint64_t *a2, char *a3, uint64_t *a4)
{
  v7 = v14;
  mlir::DiagnosticArgument::DiagnosticArgument(v14, *a2);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= v14 && v8 + 24 * v9 > v14)
    {
      v13 = &v14[-v8];
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v7 = &v13[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v7 = v14;
    }
  }

  v10 = v8 + 24 * *(a1 + 24);
  v11 = *v7;
  *(v10 + 16) = *(v7 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[5],mlir::Type>(a1, a3, a4);
}

uint64_t mlir::Diagnostic::append<char const(&)[27],unsigned int &,char const(&)[47]>(uint64_t a1, char *__s, unsigned int *a3, char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return mlir::Diagnostic::append<unsigned int &,char const(&)[47]>(v9, a3, a4);
}

uint64_t mlir::Diagnostic::append<unsigned int &,char const(&)[47]>(uint64_t a1, unsigned int *a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 5;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

double mlir::Diagnostic::append<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(uint64_t a1, char *__s, char *a3, char **a4, char *a5, unsigned int *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v14 = a1 + 16;
  v15 = *(a1 + 16);
  v23 = 3;
  v24 = __s;
  v25 = v12;
  v16 = *(a1 + 24);
  v17 = &v23;
  if (v16 >= *(a1 + 28))
  {
    if (v15 <= &v23 && v15 + 24 * v16 > &v23)
    {
      v21 = &v23 - v15;
      v22 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, (v13 + 32), v16 + 1, 24);
      v13 = v22;
      v15 = *(v22 + 16);
      v17 = &v21[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v16 + 1, 24);
      v13 = a1;
      v15 = *(a1 + 16);
      v17 = &v23;
    }
  }

  v18 = v15 + 24 * *(v13 + 24);
  v19 = *v17;
  *(v18 + 16) = *(v17 + 2);
  *v18 = v19;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[19],long long &,char const(&)[4],unsigned int &>(v13, a3, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[19],long long &,char const(&)[4],unsigned int &>(uint64_t a1, char *__s, char **a3, char *a4, unsigned int *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 2;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[21],unsigned int>(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(uint64_t a1, char *__s, char *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v6;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v21 && v7 + 24 * v8 > &v21)
    {
      v19 = &v21 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v19[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v7 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(a3);
  v21 = 3;
  v22 = a3;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

__n128 std::__function::__func<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A163C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(void *isSplat, uint64_t *a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(**a2 + 136);
  {
    v25 = v6;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    v6 = v25;
  }

  v7 = &unk_1EB28E000;
  if (v6 != mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    goto LABEL_6;
  }

  v8 = *(*v5 + 136);
  {
    goto LABEL_34;
  }

  while (v8 == v7[27])
  {
    isSplat = isSplat[1];
    v19 = *(*v4 + 136);
    {
      v27 = v19;
      mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
      v19 = v27;
      v7 = &unk_1EB28E000;
    }

    if (v19 == v7[27])
    {
      v20 = v4;
    }

    else
    {
      v20 = 0;
    }

    v4 = *(v20 + 8);
    v21 = *(*v5 + 136);
    {
      v28 = v21;
      mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
      v21 = v28;
      v7 = &unk_1EB28E000;
    }

    if (v21 == v7[27])
    {
      v22 = v5;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22[1];
    v30[0] = v4;
    v29[0] = v23;
    v24 = isSplat[3];
    if (v24)
    {
      return (*(*v24 + 48))(v24, v30, v29);
    }

LABEL_33:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_34:
    v26 = v8;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    v8 = v26;
    v7 = &unk_1EB28E000;
  }

LABEL_6:
  v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  if (v9)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v30[0] = v4;
  v30[1] = v9;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v10 = 0;
  }

  result = 0;
  v29[0] = v5;
  v29[1] = v10;
  if (!v4 || !v5)
  {
    return result;
  }

  v5 = isSplat[2];
  isSplat = mlir::ElementsAttr::isSplat(v30);
  v12 = mlir::ElementsAttr::isSplat(v29);
  v32 = isSplat;
  v31 = v12;
  v13 = v5[3];
  if (!v13)
  {
    goto LABEL_33;
  }

  result = (*(*v13 + 48))(v13, &v32, &v31);
  if (result)
  {
    if (mlir::ElementsAttr::getShapedType(v29))
    {
      result = mlir::ElementsAttr::getShapedType(v30);
      if (result)
      {
        Shape = mlir::ShapedType::getShape(v30);
        v16 = v15;
        v17 = mlir::ShapedType::getShape(v29);
        return mlir::mps::isMoreSpecializedShape(Shape, v16, v17, v18);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::mpsx::ListType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mpsx::ListType]";
  v6 = 70;
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

float mlir::copyElementsAttrData<long long>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v89[5] = *MEMORY[0x1E69E9840];
  v86 = a1;
  v87 = a2;
  Type = mlir::ElementsAttr::getType(&v86);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v85[0] = v7;
  v85[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v85);
  v8 = mlir::ElementsAttr::isSplat(&v86);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v86);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (v8)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_105;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_116;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v88, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v88[0], v88[1]);
      v61 = v88[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v89)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (v8)
      {
        v75 = 0;
      }

      else
      {
        v75 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v75];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v26 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v27 = a3 + 1;
      do
      {
        if (v8)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        if (v8)
        {
          v29 = 0;
        }

        else
        {
          v29 = v26 + 1;
        }

        v30 = *&ElementsAttrRawData[2 * v29];
        *(v27 - 1) = *&ElementsAttrRawData[2 * v28];
        *v27 = v30;
        v27 += 2;
        v26 += 2;
      }

      while (v26 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (v8)
      {
        v76 = 0;
      }

      else
      {
        v76 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v76];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v32 = 0;
      v25 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (v8)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v8)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        v36 = *&ElementsAttrRawData[4 * v35];
        *(v33 - 1) = *&ElementsAttrRawData[4 * v34];
        *v33 = v36;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v25);
      goto LABEL_197;
    }

    v25 = 0;
    do
    {
      if (v8)
      {
        v77 = 0;
      }

      else
      {
        v77 = v25;
      }

      a3[v25++] = *&ElementsAttrRawData[4 * v77];
LABEL_197:
      ;
    }

    while (NumElements != v25);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v39 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v40 = a3 + 1;
      do
      {
        if (v8)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        if (v8)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        v43 = *&ElementsAttrRawData[4 * v42];
        *(v40 - 1) = *&ElementsAttrRawData[4 * v41];
        *v40 = v43;
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v31);
      goto LABEL_202;
    }

    v31 = 0;
    do
    {
      if (v8)
      {
        v78 = 0;
      }

      else
      {
        v78 = v31;
      }

      a3[v31++] = *&ElementsAttrRawData[4 * v78];
LABEL_202:
      ;
    }

    while (NumElements != v31);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_85:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v38 = 0;
      }

      else
      {
        v38 = m;
      }

      a3[m] = *&ElementsAttrRawData[8 * v38];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_105:
    for (n = 0; n != NumElements; ++n)
    {
      if (v8)
      {
        v45 = 0;
      }

      else
      {
        v45 = n;
      }

      a3[n] = *&ElementsAttrRawData[8 * v45];
    }

    return *&v12;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_116:
    if (NumElements >= 2)
    {
      v48 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (v8)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (v8)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v46);
      goto LABEL_207;
    }

    v46 = 0;
    do
    {
      if (v8)
      {
        v79 = 0;
      }

      else
      {
        v79 = v46;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v79];
      a3[v46++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v46);
    return *&v12;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (v8)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (v8)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (v8)
      {
        v80 = 0;
      }

      else
      {
        v80 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v80];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (v8)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (v8)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (v8)
      {
        v81 = 0;
      }

      else
      {
        v81 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v81];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3 + 1;
    do
    {
      if (v8)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (v8)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LODWORD(v12) = *&ElementsAttrRawData[2 * v72] << 16;
      v74 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v73] << 16);
      *(v71 - 1) = *&v12;
      *v71 = v74;
      v71 += 2;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (v8)
    {
      v82 = 0;
    }

    else
    {
      v82 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v82] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.ane", 8uLL, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A16408;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgumentTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v3);
  return mlir::FunctionType::getInputs(&FunctionType);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResultTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v3);
  return mlir::FunctionType::getResults(&FunctionType);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::FuncOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::cloneTypeWith(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v11);
  return mlir::FunctionType::clone(&FunctionType, a3, a4, a5, a6);
}

BOOL mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyBody(mlir::Operation **a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = (((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  FunctionType = mlir::mpsx::ANEOp::getFunctionType(a1);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v5 = v4;
  v6 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 + 48;
  v8 = *(v7 + 48);
  if (((*(v9 + 8) - v8) >> 3) != v4)
  {
    v52[0] = "entry block must have ";
    v53 = 259;
    mlir::OpState::emitOpError(a1, v52, &FunctionType);
    if (FunctionType)
    {
      v54 = 5;
      v55 = v5;
      v13 = &v54;
      v14 = v58;
      if (v59 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v59 > &v54)
        {
          v49 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v14 = v58;
          v13 = (v58 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v13 = &v54;
          v14 = v58;
        }
      }

      v15 = &v14[24 * v59];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v59;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&FunctionType, " arguments to match function signature");
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (FunctionType)
    {
      mlir::InFlightDiagnostic::report(&FunctionType);
    }

    if (v67 != 1)
    {
      return v12;
    }

    if (v66 != &v67)
    {
      free(v66);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v65;
      v20 = __p;
      if (v65 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v65 = v18;
      operator delete(v20);
    }

    v21 = v62;
    if (v62)
    {
      v22 = v63;
      v23 = v62;
      if (v63 != v62)
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
        v23 = v62;
      }

      v63 = v21;
      operator delete(v23);
    }

    v47 = v58;
    if (v58 == v61)
    {
      return v12;
    }

LABEL_57:
    free(v47);
    return v12;
  }

  if (!v4)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(v8 + 8 * v10) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v11)
    {
      break;
    }

    ++v10;
    ++Inputs;
    if (v4 == v10)
    {
      return 1;
    }
  }

  v26 = Inputs;
  v52[0] = "type of entry block argument #";
  v53 = 259;
  mlir::OpState::emitOpError(a1, v52, &FunctionType);
  if (FunctionType)
  {
    v54 = 5;
    v55 = v10;
    v27 = &v54;
    v28 = v58;
    if (v59 >= v60)
    {
      if (v58 <= &v54 && v58 + 24 * v59 > &v54)
      {
        v50 = &v54 - v58;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v28 = v58;
        v27 = (v58 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v27 = &v54;
        v28 = v58;
      }
    }

    v29 = &v28[24 * v59];
    v30 = *v27;
    *(v29 + 2) = *(v27 + 2);
    *v29 = v30;
    ++v59;
    if (FunctionType)
    {
      mlir::Diagnostic::operator<<(&v57, 40);
      if (FunctionType)
      {
        v31 = &v54;
        mlir::DiagnosticArgument::DiagnosticArgument(&v54, v11);
        v32 = v58;
        if (v59 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v59 > &v54)
          {
            v51 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v32 = v58;
            v31 = (v58 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
            v31 = &v54;
            v32 = v58;
          }
        }

        v33 = &v32[24 * v59];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        ++v59;
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&FunctionType, ") must match the type of the corresponding argument in ");
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v35, "function signature(");
  mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v36, v26);
  if (*v37)
  {
    v38 = v37;
    mlir::Diagnostic::operator<<((v37 + 1), 41);
    v37 = v38;
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (FunctionType)
  {
    mlir::InFlightDiagnostic::report(&FunctionType);
  }

  if (v67)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v65;
      v41 = __p;
      if (v65 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v65 = v39;
      operator delete(v41);
    }

    v42 = v62;
    if (v62)
    {
      v43 = v63;
      v44 = v62;
      if (v63 != v62)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            MEMORY[0x1AC55A040](v45, 0x1000C8077774924);
          }
        }

        while (v43 != v42);
        v44 = v62;
      }

      v63 = v42;
      operator delete(v44);
    }

    v47 = v58;
    if (v58 != v61)
    {
      goto LABEL_57;
    }
  }

  return v12;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBodyBlock;
  {
    v5 = v2;
    mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 16);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::build;
  {
    v5 = v2;
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>(uint64_t a1)
{
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a1 = v90;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v79 = v1;
    v91 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
    v1 = v79;
    a1 = v91;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v80 = v1;
    v92 = a1;
    v69 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v69;
    v1 = v80;
    a1 = v92;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v81 = v1;
    v93 = a1;
    v60 = v3;
    v70 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v3 = v60;
    v2 = v70;
    v1 = v81;
    a1 = v93;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v82 = v1;
    v94 = a1;
    v61 = v3;
    v71 = v2;
    v52 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v52;
    v3 = v61;
    v2 = v71;
    v1 = v82;
    a1 = v94;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v83 = v1;
    v95 = a1;
    v62 = v3;
    v72 = v2;
    v53 = v4;
    v45 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v5 = v45;
    v4 = v53;
    v3 = v62;
    v2 = v72;
    v1 = v83;
    a1 = v95;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v84 = v1;
    v96 = a1;
    v63 = v3;
    v73 = v2;
    v54 = v4;
    v39 = v6;
    v46 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v6 = v39;
    v5 = v46;
    v4 = v54;
    v3 = v63;
    v2 = v73;
    v1 = v84;
    a1 = v96;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v85 = v1;
    v97 = a1;
    v64 = v3;
    v74 = v2;
    v55 = v4;
    v40 = v6;
    v47 = v5;
    v34 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v7 = v34;
    v6 = v40;
    v5 = v47;
    v4 = v55;
    v3 = v64;
    v2 = v74;
    v1 = v85;
    a1 = v97;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v86 = v1;
    v98 = a1;
    v65 = v3;
    v75 = v2;
    v56 = v4;
    v41 = v6;
    v48 = v5;
    v30 = v8;
    v35 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v8 = v30;
    v7 = v35;
    v6 = v41;
    v5 = v48;
    v4 = v56;
    v3 = v65;
    v2 = v75;
    v1 = v86;
    a1 = v98;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v87 = v1;
    v99 = a1;
    v66 = v3;
    v76 = v2;
    v57 = v4;
    v42 = v6;
    v49 = v5;
    v31 = v8;
    v36 = v7;
    v27 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
    v9 = v27;
    v8 = v31;
    v7 = v36;
    v6 = v42;
    v5 = v49;
    v4 = v57;
    v3 = v66;
    v2 = v76;
    v1 = v87;
    a1 = v99;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v89 = v1;
    v101 = a1;
    v68 = v3;
    v78 = v2;
    v59 = v4;
    v44 = v6;
    v51 = v5;
    v33 = v8;
    v38 = v7;
    v26 = v10;
    v29 = v9;
    v24 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v11 = v24;
    v10 = v26;
    v9 = v29;
    v8 = v33;
    v7 = v38;
    v6 = v44;
    v5 = v51;
    v4 = v59;
    v3 = v68;
    v2 = v78;
    v1 = v89;
    a1 = v101;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TargetLegalizerInterface::Trait<Empty>]";
  v6 = 94;
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

const char *llvm::getTypeName<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FormableRegionOpInterface::Trait<Empty>]";
  v6 = 95;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 16);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, *(*(*(a2 + 48) + 96) + 8), *(*(*(a2 + 48) + 96) + 40));
}

BOOL mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::ANEOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::ANEOp>,mlir::SymbolOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::CallableOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::FunctionOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mpsx::ANEOp>,mlir::OpTrait::RegionOp<mlir::mpsx::ANEOp>,mlir::TargetLegalizerInterface::Trait<mlir::mpsx::ANEOp>,mlir::FormableRegionOpInterface::Trait<mlir::mpsx::ANEOp>>(a1, a2))
  {
    v5 = a1;
    return mlir::mpsx::ANEOp::verify(&v5);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::function_interface_impl::verifyTrait<mlir::mpsx::ANEOp>(uint64_t *a1)
{
  v152 = *MEMORY[0x1E69E9840];
  v141 = a1;
  ArgAttrsAttr = mlir::mpsx::ANEOp::getArgAttrsAttr(&v141);
  if (ArgAttrsAttr)
  {
    v143[0] = mlir::mpsx::ANEOp::getFunctionType(&v141);
    mlir::FunctionType::getInputs(v143);
    v2 = v1;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v3 = v2;
    if (v4 != v2)
    {
      v139 = 257;
      mlir::OpState::emitOpError(&v141, v138, v143);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      v31 = v30;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      if (*v31)
      {
        v33 = *(v31 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v32;
        v34 = *(v31 + 32);
        v35 = &v142;
        if (v34 >= *(v31 + 36))
        {
          if (v33 <= &v142 && v33 + 24 * v34 > &v142)
          {
            v128 = &v143[-1] - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, (v31 + 40), v34 + 1, 24);
            v33 = *(v31 + 24);
            v35 = &v128[v33];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, (v31 + 40), v34 + 1, 24);
            v33 = *(v31 + 24);
            v35 = &v142;
          }
        }

        v36 = v33 + 24 * *(v31 + 32);
        v37 = *v35;
        *(v36 + 16) = *(v35 + 2);
        *v36 = v37;
        ++*(v31 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v31, ", but expected ");
      if (*v38)
      {
        v39 = *(v38 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v3;
        v40 = *(v38 + 32);
        v41 = &v142;
        if (v40 >= *(v38 + 36))
        {
          if (v39 <= &v142 && v39 + 24 * v40 > &v142)
          {
            v129 = &v143[-1] - v39;
            v130 = v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, (v38 + 40), v40 + 1, 24);
            v38 = v130;
            v39 = *(v130 + 24);
            v41 = &v129[v39];
          }

          else
          {
            v126 = v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v38 + 24, (v38 + 40), v40 + 1, 24);
            v38 = v126;
            v39 = *(v126 + 24);
            v41 = &v142;
          }
        }

        v42 = v39 + 24 * *(v38 + 32);
        v43 = *v41;
        *(v42 + 16) = *(v41 + 2);
        *v42 = v43;
        ++*(v38 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 == 1)
      {
        if (v150 != &v151)
        {
          free(v150);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v149;
          v46 = __p;
          if (v149 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v149 = v44;
          operator delete(v46);
        }

        v47 = v146;
        if (!v146)
        {
          goto LABEL_174;
        }

        v48 = v147;
        v49 = v146;
        if (v147 == v146)
        {
          goto LABEL_173;
        }

        do
        {
          v51 = *--v48;
          v50 = v51;
          *v48 = 0;
          if (v51)
          {
            MEMORY[0x1AC55A040](v50, 0x1000C8077774924);
          }
        }

        while (v48 != v47);
        goto LABEL_172;
      }

      return v29;
    }

    if (v2)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v5);
        if (!v6)
        {
          v137 = 0;
LABEL_133:
          v139 = 257;
          mlir::OpState::emitOpError(&v141, v138, v143);
          v92 = v91;
          Value = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v92)
          {
            v94 = *(Value + 8 * v5);
            v95 = &v142;
            mlir::DiagnosticArgument::DiagnosticArgument(&v142, v94);
            v96 = v92 + 24;
            v97 = *(v92 + 24);
            v98 = *(v92 + 32);
            if (v98 >= *(v92 + 36))
            {
              if (v97 <= &v142 && v97 + 24 * v98 > &v142)
              {
                v135 = &v143[-1] - v97;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v96, (v92 + 40), v98 + 1, 24);
                v97 = *(v92 + 24);
                v95 = &v135[v97];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v96, (v92 + 40), v98 + 1, 24);
                v97 = *(v92 + 24);
                v95 = &v142;
              }
            }

            v99 = v97 + 24 * *(v92 + 32);
            v100 = *v95;
            *(v99 + 16) = *(v95 + 2);
            *v99 = v100;
            ++*(v92 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
          if (v143[0])
          {
            mlir::InFlightDiagnostic::report(v143);
          }

          if (v151 != 1)
          {
            return v29;
          }

          if (v150 != &v151)
          {
            free(v150);
          }

          v102 = __p;
          if (__p)
          {
            v103 = v149;
            v104 = __p;
            if (v149 != __p)
            {
              do
              {
                v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
              }

              while (v103 != v102);
              v104 = __p;
            }

            v149 = v102;
            operator delete(v104);
          }

          v47 = v146;
          if (!v146)
          {
            goto LABEL_174;
          }

          v105 = v147;
          v49 = v146;
          if (v147 == v146)
          {
            goto LABEL_173;
          }

          do
          {
            v107 = *--v105;
            v106 = v107;
            *v105 = 0;
            if (v107)
            {
              MEMORY[0x1AC55A040](v106, 0x1000C8077774924);
            }
          }

          while (v105 != v47);
          goto LABEL_172;
        }

        if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v6 = 0;
        }

        v137 = v6;
        if (!v6)
        {
          goto LABEL_133;
        }

        v7 = mlir::AffineMapAttr::getValue(&v137);
        v8 = mlir::DictionaryAttr::end(&v137);
        if (v7 != v8)
        {
          break;
        }

LABEL_18:
        if (++v5 == v2)
        {
          goto LABEL_19;
        }
      }

      v9 = v8;
      while (1)
      {
        v142 = *v7;
        v143[0] = ZinCompressedFootprintInfo::GetCompressedBytes(&v142);
        AttrData = mlir::OpaqueAttr::getAttrData(v143);
        if (!v11)
        {
          break;
        }

        v12 = AttrData;
        v13 = memchr(AttrData, 46, v11);
        if (!v13 || v13 - v12 == -1)
        {
          break;
        }

        NameDialect = mlir::NamedAttribute::getNameDialect(&v142);
        if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v141, 0, v5, v142, *(&v142 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v7 == v9)
        {
          goto LABEL_18;
        }
      }

      v138[0] = "arguments may only have dialect attributes";
      v139 = 259;
      mlir::OpState::emitOpError(&v141, v138, v143);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 != 1)
      {
        return v29;
      }

      if (v150 != &v151)
      {
        free(v150);
      }

      v73 = __p;
      if (__p)
      {
        v74 = v149;
        v75 = __p;
        if (v149 != __p)
        {
          do
          {
            v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v149 = v73;
        operator delete(v75);
      }

      v47 = v146;
      if (!v146)
      {
        goto LABEL_174;
      }

      v76 = v147;
      v49 = v146;
      if (v147 == v146)
      {
        goto LABEL_173;
      }

      do
      {
        v78 = *--v76;
        v77 = v78;
        *v76 = 0;
        if (v78)
        {
          MEMORY[0x1AC55A040](v77, 0x1000C8077774924);
        }
      }

      while (v76 != v47);
      goto LABEL_172;
    }
  }

LABEL_19:
  ArgAttrsAttr = mlir::mpsx::ANEOp::getResAttrsAttr(&v141);
  if (ArgAttrsAttr)
  {
    v143[0] = mlir::mpsx::ANEOp::getFunctionType(&v141);
    mlir::FunctionType::getResults(v143);
    v16 = v15;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v17 = v16;
    if (v18 != v16)
    {
      v139 = 257;
      mlir::OpState::emitOpError(&v141, v138, v143);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, "expects result attribute array to have the same number of elements as the number of function results, got ");
      v53 = v52;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      v55 = v53;
      if (*v53)
      {
        v56 = *(v53 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v54;
        v57 = *(v53 + 32);
        v58 = &v142;
        if (v57 >= *(v53 + 36))
        {
          if (v56 <= &v142 && v56 + 24 * v57 > &v142)
          {
            v131 = &v143[-1] - v56;
            v132 = v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v55 + 24, (v55 + 40), v57 + 1, 24);
            v55 = v132;
            v56 = *(v132 + 24);
            v58 = &v131[v56];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v53 + 24, (v53 + 40), v57 + 1, 24);
            v55 = v53;
            v56 = *(v53 + 24);
            v58 = &v142;
          }
        }

        v59 = v56 + 24 * *(v55 + 32);
        v60 = *v58;
        *(v59 + 16) = *(v58 + 2);
        *v59 = v60;
        ++*(v55 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v55, ", but expected ");
      if (*v61)
      {
        v62 = *(v61 + 24);
        LODWORD(v142) = 5;
        *(&v142 + 1) = v17;
        v63 = *(v61 + 32);
        v64 = &v142;
        if (v63 >= *(v61 + 36))
        {
          if (v62 <= &v142 && v62 + 24 * v63 > &v142)
          {
            v133 = &v143[-1] - v62;
            v134 = v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v61 + 24, (v61 + 40), v63 + 1, 24);
            v61 = v134;
            v62 = *(v134 + 24);
            v64 = &v133[v62];
          }

          else
          {
            v127 = v61;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v61 + 24, (v61 + 40), v63 + 1, 24);
            v61 = v127;
            v62 = *(v127 + 24);
            v64 = &v142;
          }
        }

        v65 = v62 + 24 * *(v61 + 32);
        v66 = *v64;
        *(v65 + 16) = *(v64 + 2);
        *v65 = v66;
        ++*(v61 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 == 1)
      {
        if (v150 != &v151)
        {
          free(v150);
        }

        v67 = __p;
        if (__p)
        {
          v68 = v149;
          v69 = __p;
          if (v149 != __p)
          {
            do
            {
              v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
            }

            while (v68 != v67);
            v69 = __p;
          }

          v149 = v67;
          operator delete(v69);
        }

        v47 = v146;
        if (!v146)
        {
          goto LABEL_174;
        }

        v70 = v147;
        v49 = v146;
        if (v147 == v146)
        {
          goto LABEL_173;
        }

        do
        {
          v72 = *--v70;
          v71 = v72;
          *v70 = 0;
          if (v72)
          {
            MEMORY[0x1AC55A040](v71, 0x1000C8077774924);
          }
        }

        while (v70 != v47);
        goto LABEL_172;
      }

      return v29;
    }

    if (v16)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v19);
        if (!v20)
        {
          v137 = 0;
LABEL_153:
          v139 = 257;
          mlir::OpState::emitOpError(&v141, v138, v143);
          v109 = v108;
          v110 = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v109)
          {
            v111 = *(v110 + 8 * v19);
            v112 = &v142;
            mlir::DiagnosticArgument::DiagnosticArgument(&v142, v111);
            v113 = v109 + 24;
            v114 = *(v109 + 24);
            v115 = *(v109 + 32);
            if (v115 >= *(v109 + 36))
            {
              if (v114 <= &v142 && v114 + 24 * v115 > &v142)
              {
                v136 = &v143[-1] - v114;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v113, (v109 + 40), v115 + 1, 24);
                v114 = *(v109 + 24);
                v112 = &v136[v114];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v113, (v109 + 40), v115 + 1, 24);
                v114 = *(v109 + 24);
                v112 = &v142;
              }
            }

            v116 = v114 + 24 * *(v109 + 32);
            v117 = *v112;
            *(v116 + 16) = *(v112 + 2);
            *v116 = v117;
            ++*(v109 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
          if (v143[0])
          {
            mlir::InFlightDiagnostic::report(v143);
          }

          if (v151 != 1)
          {
            return v29;
          }

          if (v150 != &v151)
          {
            free(v150);
          }

          v119 = __p;
          if (__p)
          {
            v120 = v149;
            v121 = __p;
            if (v149 != __p)
            {
              do
              {
                v120 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v120 - 1);
              }

              while (v120 != v119);
              v121 = __p;
            }

            v149 = v119;
            operator delete(v121);
          }

          v47 = v146;
          if (!v146)
          {
            goto LABEL_174;
          }

          v122 = v147;
          v49 = v146;
          if (v147 == v146)
          {
            goto LABEL_173;
          }

          do
          {
            v124 = *--v122;
            v123 = v124;
            *v122 = 0;
            if (v124)
            {
              MEMORY[0x1AC55A040](v123, 0x1000C8077774924);
            }
          }

          while (v122 != v47);
          goto LABEL_172;
        }

        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v20 = 0;
        }

        v137 = v20;
        if (!v20)
        {
          goto LABEL_153;
        }

        v21 = mlir::AffineMapAttr::getValue(&v137);
        v22 = mlir::DictionaryAttr::end(&v137);
        if (v21 != v22)
        {
          break;
        }

LABEL_36:
        if (++v19 == v16)
        {
          goto LABEL_37;
        }
      }

      v23 = v22;
      while (1)
      {
        v142 = *v21;
        v143[0] = ZinCompressedFootprintInfo::GetCompressedBytes(&v142);
        v24 = mlir::OpaqueAttr::getAttrData(v143);
        if (!v25)
        {
          break;
        }

        v26 = v24;
        v27 = memchr(v24, 46, v25);
        if (!v27 || v27 - v26 == -1)
        {
          break;
        }

        v28 = mlir::NamedAttribute::getNameDialect(&v142);
        if (v28 && ((*(*v28 + 88))(v28, v141, 0, v19, v142, *(&v142 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v21 == v23)
        {
          goto LABEL_36;
        }
      }

      v138[0] = "results may only have dialect attributes";
      v139 = 259;
      mlir::OpState::emitOpError(&v141, v138, v143);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
      if (v143[0])
      {
        mlir::InFlightDiagnostic::report(v143);
      }

      if (v151 != 1)
      {
        return v29;
      }

      if (v150 != &v151)
      {
        free(v150);
      }

      v85 = __p;
      if (__p)
      {
        v86 = v149;
        v87 = __p;
        if (v149 != __p)
        {
          do
          {
            v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
          }

          while (v86 != v85);
          v87 = __p;
        }

        v149 = v85;
        operator delete(v87);
      }

      v47 = v146;
      if (!v146)
      {
        goto LABEL_174;
      }

      v88 = v147;
      v49 = v146;
      if (v147 == v146)
      {
        goto LABEL_173;
      }

      do
      {
        v90 = *--v88;
        v89 = v90;
        *v88 = 0;
        if (v90)
        {
          MEMORY[0x1AC55A040](v89, 0x1000C8077774924);
        }
      }

      while (v88 != v47);
      goto LABEL_172;
    }
  }

LABEL_37:
  if ((*(v141 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyBody(&v141);
  }

  v138[0] = "expects one region";
  v139 = 259;
  mlir::OpState::emitOpError(&v141, v138, v143);
  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v143);
  if (v143[0])
  {
    mlir::InFlightDiagnostic::report(v143);
  }

  if (v151 == 1)
  {
    if (v150 != &v151)
    {
      free(v150);
    }

    v79 = __p;
    if (__p)
    {
      v80 = v149;
      v81 = __p;
      if (v149 != __p)
      {
        do
        {
          v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
        }

        while (v80 != v79);
        v81 = __p;
      }

      v149 = v79;
      operator delete(v81);
    }

    v47 = v146;
    if (!v146)
    {
      goto LABEL_174;
    }

    v82 = v147;
    v49 = v146;
    if (v147 == v146)
    {
LABEL_173:
      v147 = v47;
      operator delete(v49);
LABEL_174:
      if (v144 != &v145)
      {
        free(v144);
      }

      return v29;
    }

    do
    {
      v84 = *--v82;
      v83 = v84;
      *v82 = 0;
      if (v84)
      {
        MEMORY[0x1AC55A040](v83, 0x1000C8077774924);
      }
    }

    while (v82 != v47);
LABEL_172:
    v49 = v146;
    goto LABEL_173;
  }

  return v29;
}