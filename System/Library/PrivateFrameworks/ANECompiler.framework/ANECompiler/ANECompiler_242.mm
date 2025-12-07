uint64_t mlir::mps::RandomUniformOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "result_element_type", 0x13uLL, *a2);
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

BOOL mlir::mps::RandomUniformOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2);
}

BOOL mlir::mps::RandomUniformOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "result_element_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
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
    v16 = "requires attribute 'result_element_type'";
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

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(uint64_t *ShapedType, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    if (!v24)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v84 = v10;
    mlir::Builder::getZeroAttr();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v84 + 8);
    v24 = *(v84 + 16);
    if (!v24)
    {
      goto LABEL_105;
    }
  }

  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
LABEL_105:
    v130 = a2;
    v131 = 0;
    v85 = mlir::ElementsAttr::getShapedType(&v130);
    v10 = *a2;
    if (!v85)
    {
      goto LABEL_2;
    }

    goto LABEL_108;
  }

  v86 = v25[1];
  v130 = a2;
  v131 = v86;
  v87 = mlir::ElementsAttr::getShapedType(&v130);
  v10 = *a2;
  if (!v87)
  {
    goto LABEL_2;
  }

LABEL_108:
  {
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v10 + 8);
    v90 = *(v10 + 16);
    if (!v90)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v119 = v10;
    mlir::Builder::getI32VectorAttr();
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v119 + 8);
    v90 = *(v119 + 16);
    if (!v90)
    {
      goto LABEL_131;
    }
  }

  v91 = v89;
  v92 = v90;
  do
  {
    v93 = v92 >> 1;
    v94 = &v91[2 * (v92 >> 1)];
    v96 = *v94;
    v95 = v94 + 2;
    v92 += ~(v92 >> 1);
    if (v96 < v88)
    {
      v91 = v95;
    }

    else
    {
      v92 = v93;
    }
  }

  while (v92);
  if (v91 != &v89[2 * v90] && *v91 == v88)
  {
    v99 = v91[1];
    v120 = a2;
    v121 = v99;
    mlir::ShapedType::getShape(&v120);
    v10 = *a2;
    if (!v100)
    {
      goto LABEL_134;
    }

LABEL_2:
    v11 = *(v10 + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

LABEL_131:
  v120 = a2;
  v121 = 0;
  mlir::ShapedType::getShape(&v120);
  v10 = *a2;
  if (v98)
  {
    goto LABEL_2;
  }

LABEL_134:
  {
    v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v102 = *(v10 + 8);
    v103 = *(v10 + 16);
    if (!v103)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v111 = v10;
    mlir::Builder::getI32VectorAttr();
    v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v102 = *(v111 + 8);
    v103 = *(v111 + 16);
    if (!v103)
    {
      goto LABEL_147;
    }
  }

  v104 = v102;
  v105 = v103;
  do
  {
    v106 = v105 >> 1;
    v107 = &v104[2 * (v105 >> 1)];
    v109 = *v107;
    v108 = v107 + 2;
    v105 += ~(v105 >> 1);
    if (v109 < v101)
    {
      v104 = v108;
    }

    else
    {
      v105 = v106;
    }
  }

  while (v105);
  if (v104 != &v102[2 * v103] && *v104 == v101)
  {
    v112 = v104[1];
    goto LABEL_149;
  }

LABEL_147:
  v112 = 0;
LABEL_149:
  v127 = a2;
  v128 = v112;
  isSplat = mlir::ElementsAttr::isSplat(&v127);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
  v114 = *(*a2 + 136);
  if (v114 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v114 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_51;
  }

LABEL_7:
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = v10;
    mlir::Builder::getI32VectorAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v31 + 8);
    v15 = *(v31 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v32 = v16[1];
    goto LABEL_30;
  }

LABEL_28:
  v32 = 0;
LABEL_30:
  v125[0] = a2;
  v125[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v125);
  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64))
  {
    goto LABEL_51;
  }

  v33 = *a2;
  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v43 = v33;
    mlir::Builder::getI32VectorAttr();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v43 + 8);
    v36 = *(v43 + 16);
    if (!v36)
    {
      goto LABEL_47;
    }
  }

  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 != &v35[2 * v36] && *v37 == v34)
  {
    v44 = v37[1];
    goto LABEL_49;
  }

LABEL_47:
  v44 = 0;
LABEL_49:
  v124[0] = a2;
  v124[1] = v44;
  Shape = mlir::ShapedType::getShape(v124);
  v142 = 1;
  if (v46 == 1 && *Shape == v142)
  {
    return 1;
  }

LABEL_51:
  v47 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = *(v47 + 8);
      v77 = *(v47 + 16);
      if (!v77)
      {
        goto LABEL_120;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = *(v47 + 8);
      v77 = *(v47 + 16);
      if (!v77)
      {
        goto LABEL_120;
      }
    }

    v78 = v76;
    v79 = v77;
    do
    {
      v80 = v79 >> 1;
      v81 = &v78[2 * (v79 >> 1)];
      v83 = *v81;
      v82 = v81 + 2;
      v79 += ~(v79 >> 1);
      if (v83 < v75)
      {
        v78 = v82;
      }

      else
      {
        v79 = v80;
      }
    }

    while (v79);
    if (v78 != &v76[2 * v77] && *v78 == v75)
    {
      v97 = v78[1];
      goto LABEL_122;
    }

LABEL_120:
    v97 = 0;
LABEL_122:
    v123[0] = a2;
    v123[1] = v97;
    isSplat = mlir::ElementsAttr::isSplat(v123);
    if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64))
    {
      goto LABEL_52;
    }

    return 1;
  }

LABEL_52:
  v122 = 261;
  v120 = a3;
  v121 = a4;
  mlir::Operation::emitOpError(ShapedType, &v120, &v130);
  if (v130)
  {
    LODWORD(v127) = 3;
    v128 = " #";
    v129 = 2;
    v48 = &v127;
    v49 = v132;
    if (v133 >= v134)
    {
      if (v132 <= &v127 && v132 + 24 * v133 > &v127)
      {
        v110 = &v127 - v132;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v49 = v132;
        v48 = (v132 + v110);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v48 = &v127;
        v49 = v132;
      }
    }

    v50 = &v49[24 * v133];
    v51 = *v48;
    *(v50 + 2) = v48[2];
    *v50 = v51;
    v52 = ++v133;
    if (v130)
    {
      LODWORD(v127) = 5;
      v128 = a5;
      v53 = &v127;
      v54 = v132;
      if (v52 >= v134)
      {
        if (v132 <= &v127 && v132 + 24 * v52 > &v127)
        {
          v116 = &v127 - v132;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v52 + 1, 24);
          v54 = v132;
          v53 = (v132 + v116);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v52 + 1, 24);
          v53 = &v127;
          v54 = v132;
        }
      }

      v55 = &v54[24 * v133];
      v56 = *v53;
      *(v55 + 2) = v53[2];
      *v55 = v56;
      v57 = ++v133;
      if (v130)
      {
        LODWORD(v127) = 3;
        v128 = " must be 0D tensor of floating point or 32/64-bit signed integer values or static-shape defined tensor with shape equal to [1] or unranked tensor of floating point or 32/64-bit signed integer values, but got ";
        v129 = 208;
        v58 = &v127;
        v59 = v132;
        if (v57 >= v134)
        {
          if (v132 <= &v127 && v132 + 24 * v57 > &v127)
          {
            v117 = &v127 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v57 + 1, 24);
            v59 = v132;
            v58 = (v132 + v117);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v57 + 1, 24);
            v58 = &v127;
            v59 = v132;
          }
        }

        v60 = &v59[24 * v133];
        v61 = *v58;
        *(v60 + 2) = v58[2];
        *v60 = v61;
        ++v133;
        if (v130)
        {
          v62 = &v127;
          mlir::DiagnosticArgument::DiagnosticArgument(&v127, a2);
          v63 = v132;
          if (v133 >= v134)
          {
            if (v132 <= &v127 && v132 + 24 * v133 > &v127)
            {
              v118 = &v127 - v132;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v63 = v132;
              v62 = (v132 + v118);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v62 = &v127;
              v63 = v132;
            }
          }

          v64 = &v63[24 * v133];
          v65 = *v62;
          *(v64 + 2) = v62[2];
          *v64 = v65;
          ++v133;
        }
      }
    }
  }

  v66 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
  if (v130)
  {
    mlir::InFlightDiagnostic::report(&v130);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v67 = __p;
    if (__p)
    {
      v68 = v139;
      v69 = __p;
      if (v139 != __p)
      {
        do
        {
          v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
        }

        while (v68 != v67);
        v69 = __p;
      }

      v139 = v67;
      operator delete(v69);
    }

    v70 = v136;
    if (v136)
    {
      v71 = v137;
      v72 = v136;
      if (v137 != v136)
      {
        do
        {
          v74 = *--v71;
          v73 = v74;
          *v71 = 0;
          if (v74)
          {
            MEMORY[0x1AC55A040](v73, 0x1000C8077774924);
          }
        }

        while (v71 != v70);
        v72 = v136;
      }

      v137 = v70;
      operator delete(v72);
    }

    if (v132 != v135)
    {
      free(v132);
    }
  }

  return v66;
}

uint64_t mlir::mps::ReadDataFromFileOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v70 = v6;
  if (!v6)
  {
    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v72 = "expected DictionaryAttr to set properties";
      v73 = 41;
      v26 = &v71;
      v27 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v27 = v76;
          v26 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v26 = &v71;
          v27 = v76;
        }
      }

      v28 = &v27[24 * v77];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }

    if (v85 != 1)
    {
      return 0;
    }

    if (v84 != &v85)
    {
      free(v84);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v83;
      v32 = __p;
      if (v83 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v83 = v30;
      operator delete(v32);
    }

    v21 = v80;
    if (!v80)
    {
      goto LABEL_70;
    }

    v33 = v81;
    v23 = v80;
    if (v81 == v80)
    {
LABEL_69:
      v81 = v21;
      operator delete(v23);
LABEL_70:
      if (v76 != v79)
      {
        free(v76);
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
    v23 = v80;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v70, "file_path", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 54;
        v10 = &v71;
        v11 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v11 = v76;
            v10 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v10 = &v71;
            v11 = v76;
          }
        }

        v12 = &v11[24 * v77];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v77;
        if (v74)
        {
          v14 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v15 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v65 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v15 = v76;
              v14 = (v76 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v14 = &v71;
              v15 = v76;
            }
          }

          v16 = &v15[24 * v77];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v83;
        v20 = __p;
        if (v83 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v83 = v18;
        operator delete(v20);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v22 = v81;
      v23 = v80;
      if (v81 == v80)
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

  v36 = mlir::DictionaryAttr::get(&v70, "file_symbol", 0xBuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v37 = v36;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 56;
        v38 = &v71;
        v39 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v66 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v39 = v76;
            v38 = (v76 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v38 = &v71;
            v39 = v76;
          }
        }

        v40 = &v39[24 * v77];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v77;
        if (v74)
        {
          v42 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v37);
          v43 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v67 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v43 = v76;
              v42 = (v76 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v42 = &v71;
              v43 = v76;
            }
          }

          v44 = &v43[24 * v77];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v83;
        v48 = __p;
        if (v83 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v83 = v46;
        operator delete(v48);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v49 = v81;
      v23 = v80;
      if (v81 == v80)
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

  v53 = mlir::DictionaryAttr::get(&v70, "offset", 6uLL);
  if (!v53)
  {
    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[2] = v53;
    return 1;
  }

  v54 = v53;
  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 51;
    v55 = &v71;
    v56 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v68 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v56 = v76;
        v55 = (v76 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v55 = &v71;
        v56 = v76;
      }
    }

    v57 = &v56[24 * v77];
    v58 = *v55;
    *(v57 + 2) = *(v55 + 2);
    *v57 = v58;
    ++v77;
    if (v74)
    {
      v59 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v54);
      v60 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v69 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v60 = v76;
          v59 = (v76 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v59 = &v71;
          v60 = v76;
        }
      }

      v61 = &v60[24 * v77];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }
  }

  if (v85 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v75);
  }

  return 0;
}

uint64_t mlir::mps::ReadDataFromFileOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "file_path", 9uLL, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "file_symbol", 0xBuLL, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "offset", 6uLL, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::ReadDataFromFileOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 6)
  {
    result = memcmp(__s1, "offset", 6uLL);
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

        *(v5 + 16) = v8;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 11)
  {
    result = memcmp(__s1, "file_symbol", 0xBuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

  else if (a3 == 9 && *__s1 == 0x7461705F656C6966 && *(__s1 + 8) == 104)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::ReadDataFromFileOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v8, "file_path", 9, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v9, "file_symbol", 0xB, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v10, "offset", 6, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::mps::ReadDataFromFileOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 16));
}

void mlir::mps::ReadDataFromFileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a4;
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 16) = a5;
  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *(v11 + 8) = a6;
    v10 = *(a2 + 72);
    if (v10 >= *(a2 + 76))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(a2 + 72);
    if (v10 >= *(a2 + 76))
    {
LABEL_5:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v10 + 1, 8);
      LODWORD(v10) = *(a2 + 72);
    }
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

BOOL mlir::mps::ReadDataFromFileOp::verifyInvariantsImpl(uint64_t **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v1[8];
  v3 = v1 + 8;
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v7 = v3[1];
      v28[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v2, "file_path", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps40(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
      {
        return 0;
      }

      v28[0] = *this;
      if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(v5, "offset", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
      {
        return 0;
      }

      v28[0] = *this;
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v7, "file_symbol", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps40(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
      {
        return 0;
      }

      if (*(*this + 9))
      {
        v8 = *this - 2;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps13(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    v26[0] = "requires attribute 'offset'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
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

      v19 = __p;
      if (__p)
      {
        v20 = v34;
        v21 = __p;
        if (v34 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
      }

      v14 = v31;
      if (!v31)
      {
        goto LABEL_45;
      }

      v22 = v32;
      v16 = v31;
      if (v32 == v31)
      {
LABEL_44:
        v32 = v14;
        operator delete(v16);
LABEL_45:
        if (v29 != &v30)
        {
          free(v29);
        }

        return v10;
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

      while (v22 != v14);
LABEL_43:
      v16 = v31;
      goto LABEL_44;
    }
  }

  else
  {
    v26[0] = "requires attribute 'file_path'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
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

      v11 = __p;
      if (__p)
      {
        v12 = v34;
        v13 = __p;
        if (v34 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v34 = v11;
        operator delete(v13);
      }

      v14 = v31;
      if (!v31)
      {
        goto LABEL_45;
      }

      v15 = v32;
      v16 = v31;
      if (v32 == v31)
      {
        goto LABEL_44;
      }

      do
      {
        v18 = *--v15;
        v17 = v18;
        *v15 = 0;
        if (v18)
        {
          MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
        }
      }

      while (v15 != v14);
      goto LABEL_43;
    }
  }

  return v10;
}

void mlir::mps::ReadVariableOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::memref::AtomicRMWOp::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v10;
      v5 = v9;
      *v3 = v11;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = v4;
      *(v3 + 36) = v5;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v7 = a2;
    mlir::memref::AtomicRMWOp::getEffects();
    a2 = v7;
    v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v7 + 8);
    if (v2 < *(v7 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
}

BOOL mlir::mps::RealToHermiteanFFTOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::RealToHermiteanFFTOp::verifyInvariantsImpl(uint64_t **this)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[9];
  if (v4)
  {
    v5 = v3[8];
    v20[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(v4, "scaling_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) && (v20[0] = *this, mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "inverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v6 = *this - 2;
      }

      else
      {
        v6 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = "requires attribute 'scaling_mode'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
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
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

void mlir::mps::ReciprocalSquareRootOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (HIDWORD(v15))
      {
        v5 = 0;
LABEL_6:
        bzero(__src + 8 * v5, 8 - 8 * v5);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v16, 1uLL, 8);
      v5 = v15;
      if (v15 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  v10 = v9 + v15;
  if (v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v10, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  if (v8)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ReductionAndOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "keep_dims", 9uLL);
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
    v43 = 54;
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

uint64_t mlir::mps::ReductionAndOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "keep_dims", 9uLL, *a2);
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

BOOL mlir::mps::ReductionAndOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReductionAndOp::verifyInvariantsImpl(uint64_t **this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v41[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "keep_dims", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    goto LABEL_5;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 1;
  if ((v5 - 1) <= 1)
  {
    if (v5 == 1)
    {
LABEL_31:
      if (*(v4 + 9))
      {
        v31 = (v4 - 2);
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v4, (*(*(v4[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v4 = *this;
      goto LABEL_31;
    }

    return 0;
  }

LABEL_5:
  v36 = "operand group starting at #";
  v37 = 259;
  mlir::OpState::emitOpError(this, &v36, v41);
  if (v41[0])
  {
    v38 = 5;
    v39 = 1;
    v7 = &v38;
    v8 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v33 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v8 = v42;
        v7 = (v42 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v7 = &v38;
        v8 = v42;
      }
    }

    v9 = &v8[24 * v43];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v43;
    if (v41[0])
    {
      v38 = 3;
      v39 = " requires 0 or 1 element, but found ";
      v40 = 36;
      v12 = &v38;
      v13 = v42;
      if (v11 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v11 > &v38)
        {
          v34 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v13 = v42;
          v12 = (v42 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v12 = &v38;
          v13 = v42;
        }
      }

      v14 = &v13[24 * v43];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v43;
      if (v41[0])
      {
        v38 = 5;
        v39 = v6;
        v17 = &v38;
        v18 = v42;
        if (v16 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v16 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v18 = v42;
            v17 = (v42 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v17 = &v38;
            v18 = v42;
          }
        }

        v19 = &v18[24 * v43];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v43;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  v22 = result;
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
    result = v22;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v22;
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
      result = v22;
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
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
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
      result = v22;
    }

    if (v42 != v45)
    {
      free(v42);
      return v22;
    }
  }

  return result;
}

unint64_t mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "SDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_1A75EBD5A + v6 + 3;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_1A75EBD5A + v23 + 3);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_1A75EBD5A + v5 + 3))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

BOOL mlir::mps::ReductionArgMaxOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReductionArgMaxOp::verifyInvariantsImpl(uint64_t **this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v41[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "keep_dims", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    goto LABEL_5;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 1;
  if ((v5 - 1) <= 1)
  {
    if (v5 == 1)
    {
LABEL_31:
      if (*(v4 + 9))
      {
        v31 = (v4 - 2);
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v4, (*(*(v4[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v4 = *this;
      goto LABEL_31;
    }

    return 0;
  }

LABEL_5:
  v36 = "operand group starting at #";
  v37 = 259;
  mlir::OpState::emitOpError(this, &v36, v41);
  if (v41[0])
  {
    v38 = 5;
    v39 = 1;
    v7 = &v38;
    v8 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v33 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v8 = v42;
        v7 = (v42 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v7 = &v38;
        v8 = v42;
      }
    }

    v9 = &v8[24 * v43];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v43;
    if (v41[0])
    {
      v38 = 3;
      v39 = " requires 0 or 1 element, but found ";
      v40 = 36;
      v12 = &v38;
      v13 = v42;
      if (v11 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v11 > &v38)
        {
          v34 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v13 = v42;
          v12 = (v42 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v12 = &v38;
          v13 = v42;
        }
      }

      v14 = &v13[24 * v43];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v43;
      if (v41[0])
      {
        v38 = 5;
        v39 = v6;
        v17 = &v38;
        v18 = v42;
        if (v16 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v16 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v18 = v42;
            v17 = (v42 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v17 = &v38;
            v18 = v42;
          }
        }

        v19 = &v18[24 * v43];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v43;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  v22 = result;
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
    result = v22;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v22;
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
      result = v22;
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
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
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
      result = v22;
    }

    if (v42 != v45)
    {
      free(v42);
      return v22;
    }
  }

  return result;
}

BOOL mlir::mps::ReductionArgMinOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReductionLogSumExpOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

uint64_t mlir::mps::ReductionMaxOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v58, "keep_dims", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v62, a4);
      if (v62[0])
      {
        v59 = 3;
        v61 = 54;
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

  v36 = mlir::DictionaryAttr::get(&v58, "propagate_nans", 0xEuLL);
  if (!v36)
  {
    return 1;
  }

  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v36;
    return 1;
  }

  v37 = v36;
  a3(v62, a4);
  if (v62[0])
  {
    v59 = 3;
    v61 = 59;
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

uint64_t mlir::mps::ReductionMaxOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "keep_dims", 9uLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "propagate_nans", 0xEuLL, v8);
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

BOOL mlir::mps::ReductionMaxOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::ReductionMaxOp::verifyInvariantsImpl(uint64_t **this)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = v3[8];
  v5 = v3[9];
  v43[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v4, "keep_dims", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v43))
  {
    return 0;
  }

  v43[0] = *this;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "propagate_nans", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v43) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v8 = -1;
    goto LABEL_6;
  }

  v7 = *(v6 + 17);
  v8 = v7 - 1;
  if ((v7 - 1) <= 1)
  {
    if (v7 == 1)
    {
LABEL_32:
      if (*(v6 + 9))
      {
        v33 = (v6 - 2);
      }

      else
      {
        v33 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v6, (*(*(v6[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v6 = *this;
      goto LABEL_32;
    }

    return 0;
  }

LABEL_6:
  v38 = "operand group starting at #";
  v39 = 259;
  mlir::OpState::emitOpError(this, &v38, v43);
  if (v43[0])
  {
    v40 = 5;
    v41 = 1;
    v9 = &v40;
    v10 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v40 && v44 + 24 * v45 > &v40)
      {
        v35 = &v40 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v10 = v44;
        v9 = (v44 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v9 = &v40;
        v10 = v44;
      }
    }

    v11 = &v10[24 * v45];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    v13 = ++v45;
    if (v43[0])
    {
      v40 = 3;
      v41 = " requires 0 or 1 element, but found ";
      v42 = 36;
      v14 = &v40;
      v15 = v44;
      if (v13 >= v46)
      {
        if (v44 <= &v40 && v44 + 24 * v13 > &v40)
        {
          v36 = &v40 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v13 + 1, 24);
          v15 = v44;
          v14 = (v44 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v13 + 1, 24);
          v14 = &v40;
          v15 = v44;
        }
      }

      v16 = &v15[24 * v45];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      v18 = ++v45;
      if (v43[0])
      {
        v40 = 5;
        v41 = v8;
        v19 = &v40;
        v20 = v44;
        if (v18 >= v46)
        {
          if (v44 <= &v40 && v44 + 24 * v18 > &v40)
          {
            v37 = &v40 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v18 + 1, 24);
            v20 = v44;
            v19 = (v44 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v18 + 1, 24);
            v19 = &v40;
            v20 = v44;
          }
        }

        v21 = &v20[24 * v45];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v45;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v24 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v24;
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
      result = v24;
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
      result = v24;
    }

    v28 = v48;
    if (v48)
    {
      v29 = v49;
      v30 = v48;
      if (v49 != v48)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v48;
      }

      v49 = v28;
      operator delete(v30);
      result = v24;
    }

    if (v44 != v47)
    {
      free(v44);
      return v24;
    }
  }

  return result;
}

BOOL mlir::mps::ReductionMeanOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReductionMeanOp::verifyInvariantsImpl(uint64_t **this)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v41[0] = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "keep_dims", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v41) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    goto LABEL_5;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 1;
  if ((v5 - 1) <= 1)
  {
    if (v5 == 1)
    {
LABEL_31:
      if (*(v4 + 9))
      {
        v31 = (v4 - 2);
      }

      else
      {
        v31 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v4, (*(*(v4[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v4 = *this;
      goto LABEL_31;
    }

    return 0;
  }

LABEL_5:
  v36 = "operand group starting at #";
  v37 = 259;
  mlir::OpState::emitOpError(this, &v36, v41);
  if (v41[0])
  {
    v38 = 5;
    v39 = 1;
    v7 = &v38;
    v8 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v33 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v8 = v42;
        v7 = (v42 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v7 = &v38;
        v8 = v42;
      }
    }

    v9 = &v8[24 * v43];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v43;
    if (v41[0])
    {
      v38 = 3;
      v39 = " requires 0 or 1 element, but found ";
      v40 = 36;
      v12 = &v38;
      v13 = v42;
      if (v11 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v11 > &v38)
        {
          v34 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v13 = v42;
          v12 = (v42 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v11 + 1, 24);
          v12 = &v38;
          v13 = v42;
        }
      }

      v14 = &v13[24 * v43];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v43;
      if (v41[0])
      {
        v38 = 5;
        v39 = v6;
        v17 = &v38;
        v18 = v42;
        if (v16 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v16 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v18 = v42;
            v17 = (v42 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v16 + 1, 24);
            v17 = &v38;
            v18 = v42;
          }
        }

        v19 = &v18[24 * v43];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v43;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  v22 = result;
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
    result = v22;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v22;
    }

    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
      result = v22;
    }

    v26 = v46;
    if (v46)
    {
      v27 = v47;
      v28 = v46;
      if (v47 != v46)
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
        v28 = v46;
      }

      v47 = v26;
      operator delete(v28);
      result = v22;
    }

    if (v42 != v45)
    {
      free(v42);
      return v22;
    }
  }

  return result;
}

BOOL mlir::mps::ReductionMinOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

BOOL mlir::mps::ReductionOrOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReductionProdOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReductionSumOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReductionVarianceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ReinterpretCastOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2);
}

BOOL mlir::mps::ReinterpretCastOp::verifyInvariantsImpl(uint64_t **this)
{
  v112 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v101[0] = v2;
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "result_element_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v101))
    {
      return 0;
    }

    v4 = *this;
    v5 = (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = *v5;
    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_4;
    }

    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v6 + 8);
      v30 = *(v6 + 16);
      if (!v30)
      {
        goto LABEL_50;
      }
    }

    else
    {
      mlir::Builder::getI32VectorAttr();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v6 + 8);
      v30 = *(v6 + 16);
      if (!v30)
      {
        goto LABEL_50;
      }
    }

    v31 = v29;
    v32 = v30;
    do
    {
      v33 = v32 >> 1;
      v34 = &v31[2 * (v32 >> 1)];
      v36 = *v34;
      v35 = v34 + 2;
      v32 += ~(v32 >> 1);
      if (v36 < v28)
      {
        v31 = v35;
      }

      else
      {
        v32 = v33;
      }
    }

    while (v32);
    if (v31 != &v29[2 * v30] && *v31 == v28)
    {
      v37 = v31[1];
      goto LABEL_52;
    }

LABEL_50:
    v37 = 0;
LABEL_52:
    v101[0] = v5;
    v101[1] = v37;
    isSplat = mlir::ElementsAttr::isSplat(v101);
    if (mlir::Type::isSignlessInteger(&isSplat, 1))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isSignedInteger(&isSplat, 8))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isSignedInteger(&isSplat, 16))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isSignedInteger(&isSplat, 32))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isSignedInteger(&isSplat, 64))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      goto LABEL_135;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      goto LABEL_135;
    }

    v38 = *(*isSplat + 136);
    if (v38 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_135;
    }

    if (v38 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v95 = isSplat;
      Value = mlir::AffineMapAttr::getValue(&v95);
      if (mlir::Type::isF16(&Value))
      {
        goto LABEL_135;
      }

      v93 = isSplat;
      v94 = mlir::AffineMapAttr::getValue(&v93);
      if (mlir::Type::isF32(&v94))
      {
        goto LABEL_135;
      }
    }

LABEL_4:
    v7 = *v5;
    v8 = *(*v5 + 136);
    if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
LABEL_105:
      v92 = 261;
      v90 = "operand";
      v91 = 7;
      mlir::Operation::emitOpError(v4, &v90, v101);
      if (v101[0])
      {
        LODWORD(v98) = 3;
        v99 = " #";
        v100 = 2;
        v56 = &v98;
        v57 = v102;
        if (v103 >= v104)
        {
          if (v102 <= &v98 && v102 + 24 * v103 > &v98)
          {
            v86 = &v98 - v102;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
            v57 = v102;
            v56 = (v102 + v86);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
            v56 = &v98;
            v57 = v102;
          }
        }

        v58 = &v57[24 * v103];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        v60 = ++v103;
        if (v101[0])
        {
          LODWORD(v98) = 5;
          v99 = 0;
          v61 = &v98;
          v62 = v102;
          if (v60 >= v104)
          {
            if (v102 <= &v98 && v102 + 24 * v60 > &v98)
            {
              v87 = &v98 - v102;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v60 + 1, 24);
              v62 = v102;
              v61 = (v102 + v87);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v60 + 1, 24);
              v61 = &v98;
              v62 = v102;
            }
          }

          v63 = &v62[24 * v103];
          v64 = *v61;
          *(v63 + 2) = v61[2];
          *v63 = v64;
          v65 = ++v103;
          if (v101[0])
          {
            LODWORD(v98) = 3;
            v99 = " must be unranked tensor of mps native type or complex values or ranked tensor type with rank equal to or greater than 1, but got ";
            v100 = 130;
            v66 = &v98;
            v67 = v102;
            if (v65 >= v104)
            {
              if (v102 <= &v98 && v102 + 24 * v65 > &v98)
              {
                v88 = &v98 - v102;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v65 + 1, 24);
                v67 = v102;
                v66 = (v102 + v88);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v65 + 1, 24);
                v66 = &v98;
                v67 = v102;
              }
            }

            v68 = &v67[24 * v103];
            v69 = *v66;
            *(v68 + 2) = v66[2];
            *v68 = v69;
            ++v103;
            if (v101[0])
            {
              v70 = &v98;
              mlir::DiagnosticArgument::DiagnosticArgument(&v98, v5);
              v71 = v102;
              if (v103 >= v104)
              {
                if (v102 <= &v98 && v102 + 24 * v103 > &v98)
                {
                  v89 = &v98 - v102;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
                  v71 = v102;
                  v70 = (v102 + v89);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
                  v70 = &v98;
                  v71 = v102;
                }
              }

              v72 = &v71[24 * v103];
              v73 = *v70;
              *(v72 + 2) = v70[2];
              *v72 = v73;
              ++v103;
            }
          }
        }
      }

      v74 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
      if (v101[0])
      {
        mlir::InFlightDiagnostic::report(v101);
      }

      if (v111 == 1)
      {
        if (v110 != &v111)
        {
          free(v110);
        }

        v75 = __p;
        if (__p)
        {
          v76 = v109;
          v77 = __p;
          if (v109 != __p)
          {
            do
            {
              v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
            }

            while (v76 != v75);
            v77 = __p;
          }

          v109 = v75;
          operator delete(v77);
        }

        v78 = v106;
        if (v106)
        {
          v79 = v107;
          v80 = v106;
          if (v107 != v106)
          {
            do
            {
              v82 = *--v79;
              v81 = v82;
              *v79 = 0;
              if (v82)
              {
                MEMORY[0x1AC55A040](v81, 0x1000C8077774924);
              }
            }

            while (v79 != v78);
            v80 = v106;
          }

          v107 = v78;
          operator delete(v80);
        }

        if (v102 != v105)
        {
          free(v102);
        }
      }

      if (v74)
      {
        goto LABEL_135;
      }

      return 0;
    }

    {
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v11 = *(v7 + 8);
      v12 = *(v7 + 16);
      if (!v12)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v39 = v7;
      mlir::Builder::getI32VectorAttr();
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v11 = *(v39 + 8);
      v12 = *(v39 + 16);
      if (!v12)
      {
        goto LABEL_72;
      }
    }

    v13 = v11;
    v14 = v12;
    do
    {
      v15 = v14 >> 1;
      v16 = &v13[2 * (v14 >> 1)];
      v18 = *v16;
      v17 = v16 + 2;
      v14 += ~(v14 >> 1);
      if (v18 < v10)
      {
        v13 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
    if (v13 != &v11[2 * v12] && *v13 == v10)
    {
      v40 = v13[1];
      goto LABEL_74;
    }

LABEL_72:
    v40 = 0;
LABEL_74:
    v90 = v5;
    v91 = v40;
    isSplat = mlir::ElementsAttr::isSplat(&v90);
    if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
    {
      v41 = *(*isSplat + 136);
      if (v41 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        if (v41 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          goto LABEL_105;
        }

        v95 = isSplat;
        Value = mlir::AffineMapAttr::getValue(&v95);
        if (!mlir::Type::isF16(&Value))
        {
          v93 = isSplat;
          v94 = mlir::AffineMapAttr::getValue(&v93);
          if (!mlir::Type::isF32(&v94))
          {
            goto LABEL_105;
          }
        }
      }
    }

    v42 = *v5;
    {
      v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v44 = *(v42 + 8);
      v45 = *(v42 + 16);
      if (!v45)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v52 = v42;
      mlir::Builder::getI32VectorAttr();
      v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v44 = *(v52 + 8);
      v45 = *(v52 + 16);
      if (!v45)
      {
        goto LABEL_102;
      }
    }

    v46 = v44;
    v47 = v45;
    do
    {
      v48 = v47 >> 1;
      v49 = &v46[2 * (v47 >> 1)];
      v51 = *v49;
      v50 = v49 + 2;
      v47 += ~(v47 >> 1);
      if (v51 < v43)
      {
        v46 = v50;
      }

      else
      {
        v47 = v48;
      }
    }

    while (v47);
    if (v46 != &v44[2 * v45] && *v46 == v43)
    {
      v54 = v46[1];
      v98 = v5;
      v99 = v54;
      mlir::ShapedType::getShape(&v98);
      if (v55 < 1)
      {
        goto LABEL_105;
      }

      goto LABEL_135;
    }

LABEL_102:
    v98 = v5;
    v99 = 0;
    mlir::ShapedType::getShape(&v98);
    if (v53 < 1)
    {
      goto LABEL_105;
    }

LABEL_135:
    if (*(*this + 9))
    {
      v83 = *this - 2;
    }

    else
    {
      v83 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v83, 0);
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  v90 = "requires attribute 'result_element_type'";
  v92 = 259;
  mlir::OpState::emitOpError(this, &v90, v101);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
  if (v101[0])
  {
    mlir::InFlightDiagnostic::report(v101);
  }

  if (v111 == 1)
  {
    if (v110 != &v111)
    {
      free(v110);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v109;
      v22 = __p;
      if (v109 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v109 = v20;
      operator delete(v22);
    }

    v23 = v106;
    if (v106)
    {
      v24 = v107;
      v25 = v106;
      if (v107 != v106)
      {
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
        v25 = v106;
      }

      v107 = v23;
      operator delete(v25);
    }

    if (v102 != v105)
    {
      free(v102);
    }
  }

  return v19;
}

uint64_t mlir::mps::ReshapeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "zero_is_copy", 0xCuLL);
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
    v43 = 57;
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

uint64_t mlir::mps::ReshapeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "zero_is_copy", 0xCuLL, *a2);
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

BOOL mlir::mps::ReshapeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

void mlir::mps::ReshapeOp::build(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = a5;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 1);
  v16 = mlir::RankedTensorType::get(&v15, 1, IntegerType, 0);
  v11 = *a2;
  v12 = mlir::TensorType::operator mlir::ShapedType(&v16);
  v15 = mlir::DenseElementsAttr::getFromRawBuffer(v12, v13, a4, 8 * a5);
  v14 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseIntElementsAttr>(a1, v11, &v15);
  mlir::mps::ReshapeOp::build(a1, a2, a3, v14 - 16, 0);
}

void mlir::mps::ReshapeOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v23 = a4;
  v24 = a3;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  if (a5)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v8);
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = UnitAttr;
  }

  __src = v29;
  v28 = 0x200000000;
  mlir::ValueRange::ValueRange(v26, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  v14 = mlir::ValueRange::ValueRange(v25, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ReshapeOp::inferReturnTypes(v14, v15, v16, v26[0], v26[1], Dictionary, v13, v17, v25[0], v25[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v18);
  }

  v19 = __src;
  v20 = v28;
  v21 = *(a2 + 72);
  v22 = v21 + v28;
  if (v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v22, 8);
    LODWORD(v21) = *(a2 + 72);
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v20);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v29)
  {
    free(__src);
  }
}

void mlir::mps::ReshapeOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = a5;
  v15 = a4;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v10);
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = UnitAttr;
  }

  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v13 + 1, 8);
    LODWORD(v13) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
}

BOOL mlir::mps::ReshapeOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v7 = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "zero_is_copy", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps46(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = (*this - 2);
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps46(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps46(uint64_t *isBF16, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v105 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  {
    v22 = v10;
    mlir::Builder::getZeroAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v22 + 8);
    v15 = *(v22 + 16);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_18:
    v23 = 0;
    goto LABEL_20;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v10 + 8);
  v15 = *(v10 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_8:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_18;
  }

  v23 = v16[1];
LABEL_20:
  v94[0] = a2;
  v94[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v94);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v10 = *a2;
  v11 = *(*a2 + 136);
LABEL_34:
  if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_54;
  }

  {
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v10 + 8);
    v27 = *(v10 + 16);
    if (!v27)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v34 = v10;
    mlir::Builder::getI32VectorAttr();
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v34 + 8);
    v27 = *(v34 + 16);
    if (!v27)
    {
      goto LABEL_51;
    }
  }

  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 != &v26[2 * v27] && *v28 == v25)
  {
    v35 = v28[1];
    goto LABEL_53;
  }

LABEL_51:
  v35 = 0;
LABEL_53:
  v84 = a2;
  v85 = v35;
  v36 = mlir::ElementsAttr::isSplat(&v84);
  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v49 = v36;
    v89 = v36;
    isSplat = mlir::AffineMapAttr::getValue(&v89);
    if (mlir::Type::isF16(&isSplat))
    {
      return 1;
    }

    v87 = v49;
    Value = mlir::AffineMapAttr::getValue(&v87);
    if (mlir::Type::isF32(&Value))
    {
      return 1;
    }
  }

LABEL_54:
  v37 = *a2;
  v38 = *(*a2 + 136);
  if (v38 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v38 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_80;
  }

  {
    v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v41 = *(v37 + 8);
    v42 = *(v37 + 16);
    if (!v42)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v50 = v37;
    mlir::Builder::getI32VectorAttr();
    v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v41 = *(v50 + 8);
    v42 = *(v50 + 16);
    if (!v42)
    {
      goto LABEL_74;
    }
  }

  v43 = v41;
  v44 = v42;
  do
  {
    v45 = v44 >> 1;
    v46 = &v43[2 * (v44 >> 1)];
    v48 = *v46;
    v47 = v46 + 2;
    v44 += ~(v44 >> 1);
    if (v48 < v40)
    {
      v43 = v47;
    }

    else
    {
      v44 = v45;
    }
  }

  while (v44);
  if (v43 != &v41[2 * v42] && *v43 == v40)
  {
    v51 = v43[1];
    goto LABEL_76;
  }

LABEL_74:
  v51 = 0;
LABEL_76:
  v91 = a2;
  v92 = v51;
  isSplat = mlir::ElementsAttr::isSplat(&v91);
  if (mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 4))
  {
    return 1;
  }

LABEL_80:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(isBF16, &v84, v94);
  if (v94[0])
  {
    LODWORD(v91) = 3;
    v92 = " #";
    v93 = 2;
    v54 = &v91;
    v55 = v95;
    if (v96 >= v97)
    {
      if (v95 <= &v91 && v95 + 24 * v96 > &v91)
      {
        v80 = &v91 - v95;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v55 = v95;
        v54 = (v95 + v80);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v54 = &v91;
        v55 = v95;
      }
    }

    v56 = &v55[24 * v96];
    v57 = *v54;
    *(v56 + 2) = v54[2];
    *v56 = v57;
    v58 = ++v96;
    if (v94[0])
    {
      LODWORD(v91) = 5;
      v92 = a5;
      v59 = &v91;
      v60 = v95;
      if (v58 >= v97)
      {
        if (v95 <= &v91 && v95 + 24 * v58 > &v91)
        {
          v81 = &v91 - v95;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v58 + 1, 24);
          v60 = v95;
          v59 = (v95 + v81);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v58 + 1, 24);
          v59 = &v91;
          v60 = v95;
        }
      }

      v61 = &v60[24 * v96];
      v62 = *v59;
      *(v61 + 2) = v59[2];
      *v61 = v62;
      v63 = ++v96;
      if (v94[0])
      {
        LODWORD(v91) = 3;
        v92 = " must be tensor of mps native type values or tensor of complex values or tensor of 4-bit signed integer or 4-bit unsigned integer values, but got ";
        v93 = 146;
        v64 = &v91;
        v65 = v95;
        if (v63 >= v97)
        {
          if (v95 <= &v91 && v95 + 24 * v63 > &v91)
          {
            v82 = &v91 - v95;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v63 + 1, 24);
            v65 = v95;
            v64 = (v95 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v63 + 1, 24);
            v64 = &v91;
            v65 = v95;
          }
        }

        v66 = &v65[24 * v96];
        v67 = *v64;
        *(v66 + 2) = v64[2];
        *v66 = v67;
        ++v96;
        if (v94[0])
        {
          v68 = &v91;
          mlir::DiagnosticArgument::DiagnosticArgument(&v91, a2);
          v69 = v95;
          if (v96 >= v97)
          {
            if (v95 <= &v91 && v95 + 24 * v96 > &v91)
            {
              v83 = &v91 - v95;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v69 = v95;
              v68 = (v95 + v83);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v68 = &v91;
              v69 = v95;
            }
          }

          v70 = &v69[24 * v96];
          v71 = *v68;
          *(v70 + 2) = v68[2];
          *v70 = v71;
          ++v96;
        }
      }
    }
  }

  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v94);
  if (v94[0])
  {
    mlir::InFlightDiagnostic::report(v94);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v72 = __p;
    if (__p)
    {
      v73 = v102;
      v74 = __p;
      if (v102 != __p)
      {
        do
        {
          v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
        }

        while (v73 != v72);
        v74 = __p;
      }

      v102 = v72;
      operator delete(v74);
    }

    v75 = v99;
    if (v99)
    {
      v76 = v100;
      v77 = v99;
      if (v100 != v99)
      {
        do
        {
          v79 = *--v76;
          v78 = v79;
          *v76 = 0;
          if (v79)
          {
            MEMORY[0x1AC55A040](v78, 0x1000C8077774924);
          }
        }

        while (v76 != v75);
        v77 = v99;
      }

      v100 = v75;
      operator delete(v77);
    }

    if (v95 != v98)
    {
      free(v95);
    }
  }

  return v52;
}

BOOL mlir::mps::ResizeGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v89 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v73 = v6;
  if (!v6)
  {
    a3(&v77, a4);
    if (v77)
    {
      LODWORD(v74) = 3;
      v75 = "expected DictionaryAttr to set properties";
      v76 = 41;
      v26 = &v74;
      v27 = v79;
      if (v80 >= v81)
      {
        if (v79 <= &v74 && v79 + 24 * v80 > &v74)
        {
          v66 = &v74 - v79;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v27 = v79;
          v26 = (v79 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
          v26 = &v74;
          v27 = v79;
        }
      }

      v28 = &v27[24 * v80];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v80;
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }
    }

    if (v88 != 1)
    {
      return 0;
    }

    if (v87 != &v88)
    {
      free(v87);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v86;
      v32 = __p;
      if (v86 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v86 = v30;
      operator delete(v32);
    }

    v21 = v83;
    if (!v83)
    {
      goto LABEL_70;
    }

    v33 = v84;
    v23 = v83;
    if (v84 == v83)
    {
LABEL_69:
      v84 = v21;
      operator delete(v23);
LABEL_70:
      if (v79 != v82)
      {
        free(v79);
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
    v23 = v83;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v73, "align_corners", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 58;
        v10 = &v74;
        v11 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v67 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v11 = v79;
            v10 = (v79 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v10 = &v74;
            v11 = v79;
          }
        }

        v12 = &v11[24 * v80];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v80;
        if (v77)
        {
          v14 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v9);
          v15 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v68 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v15 = v79;
              v14 = (v79 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v14 = &v74;
              v15 = v79;
            }
          }

          v16 = &v15[24 * v80];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if ((v88 & 1) == 0)
      {
        return 0;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v86;
        v20 = __p;
        if (v86 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v86 = v18;
        operator delete(v20);
      }

      v21 = v83;
      if (!v83)
      {
        goto LABEL_70;
      }

      v22 = v84;
      v23 = v83;
      if (v84 == v83)
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

  v36 = mlir::DictionaryAttr::get(&v73, "center_result", 0xDuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 58;
        v38 = &v74;
        v39 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v69 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v39 = v79;
            v38 = (v79 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v38 = &v74;
            v39 = v79;
          }
        }

        v40 = &v39[24 * v80];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v80;
        if (v77)
        {
          v42 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v37);
          v43 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v70 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v43 = v79;
              v42 = (v79 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v42 = &v74;
              v43 = v79;
            }
          }

          v44 = &v43[24 * v80];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if ((v88 & 1) == 0)
      {
        return 0;
      }

      if (v87 != &v88)
      {
        free(v87);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v86;
        v48 = __p;
        if (v86 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v86 = v46;
        operator delete(v48);
      }

      v21 = v83;
      if (!v83)
      {
        goto LABEL_70;
      }

      v49 = v84;
      v23 = v83;
      if (v84 == v83)
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

  v53 = mlir::DictionaryAttr::get(&v73, "mode", 4uLL);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
    {
      v54 = v53;
      a3(&v77, a4);
      if (v77)
      {
        LODWORD(v74) = 3;
        v76 = 49;
        v55 = &v74;
        v56 = v79;
        if (v80 >= v81)
        {
          if (v79 <= &v74 && v79 + 24 * v80 > &v74)
          {
            v71 = &v74 - v79;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v56 = v79;
            v55 = (v79 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
            v55 = &v74;
            v56 = v79;
          }
        }

        v57 = &v56[24 * v80];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v80;
        if (v77)
        {
          v59 = &v74;
          mlir::DiagnosticArgument::DiagnosticArgument(&v74, v54);
          v60 = v79;
          if (v80 >= v81)
          {
            if (v79 <= &v74 && v79 + 24 * v80 > &v74)
            {
              v72 = &v74 - v79;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v60 = v79;
              v59 = (v79 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v79, v82, v80 + 1, 24);
              v59 = &v74;
              v60 = v79;
            }
          }

          v61 = &v60[24 * v80];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v80;
          if (v77)
          {
            mlir::InFlightDiagnostic::report(&v77);
          }
        }
      }

      if (v88 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v78);
      }

      return 0;
    }

    a1[2] = v53;
  }

  v63 = mlir::DictionaryAttr::get(&v73, "nearest_rounding_mode", 0x15uLL);
  v74 = v63;
  if (v63)
  {
    if (*(*v63 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
    {
      a3(&v77, a4);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v74);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v77);
      return 0;
    }

    a1[3] = v63;
  }

  v65 = mlir::DictionaryAttr::get(&v73, "operandSegmentSizes", 0x13uLL);
  if (!v65)
  {
    v65 = mlir::DictionaryAttr::get(&v73, "operand_segment_sizes", 0x15uLL);
    if (!v65)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 4, 4, v65, a3, a4) & 1) != 0;
}

uint64_t mlir::mps::ResizeGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v46[6] = *MEMORY[0x1E69E9840];
  v43 = a1;
  v44 = v46;
  v45 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v43, "align_corners", 0xDuLL, *a2);
    v6 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v35 = NamedAttr;
      v36 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v5 = v36;
      NamedAttr = v35;
      v6 = v45;
    }

    v7 = (v44 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v45) = v45 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v43, "center_result", 0xDuLL, v8);
    v11 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v37 = v9;
      v38 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v10 = v38;
      v9 = v37;
      v11 = v45;
    }

    v12 = (v44 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v45) = v45 + 1;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v43, "mode", 4uLL, v13);
    v16 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v39 = v14;
      v40 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v15 = v40;
      v14 = v39;
      v16 = v45;
    }

    v17 = (v44 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    LODWORD(v45) = v45 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v43, "nearest_rounding_mode", 0x15uLL, v18);
    v21 = v45;
    if (v45 >= HIDWORD(v45))
    {
      v41 = v19;
      v42 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
      v20 = v42;
      v19 = v41;
      v21 = v45;
    }

    v22 = (v44 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    LODWORD(v45) = v45 + 1;
  }

  v23 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 4);
  v24 = mlir::Builder::getNamedAttr(&v43, "operandSegmentSizes", 0x13uLL, v23);
  v26 = v45;
  if (v45 >= HIDWORD(v45))
  {
    v33 = v24;
    v34 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 16);
    v25 = v34;
    v24 = v33;
    v26 = v45;
  }

  v27 = (v44 + 16 * v26);
  *v27 = v24;
  v27[1] = v25;
  v28 = __CFADD__(v45, 1);
  v29 = (v45 + 1);
  LODWORD(v45) = v45 + 1;
  if (v28)
  {
    DictionaryAttr = 0;
    v31 = v44;
    if (v44 == v46)
    {
      return DictionaryAttr;
    }

    goto LABEL_24;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v43, v44, v29);
  v31 = v44;
  if (v44 != v46)
  {
LABEL_24:
    free(v31);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::ResizeGradientOp::getInherentAttr(mlir::MLIRContext *a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else
    {
      if (__n != 21)
      {
        return 0;
      }

      if (!memcmp(__s1, "nearest_rounding_mode", 0x15uLL))
      {
        return a2[3];
      }

      v10 = *__s1 == 0x5F646E617265706FLL && *(__s1 + 1) == 0x5F746E656D676573;
      if (!v10 || *(__s1 + 13) != 0x73657A69735F746ELL)
      {
        return 0;
      }
    }

    return mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 4);
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "mode", 4uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 13)
  {
    return 0;
  }

  if (*__s1 != 0x6F635F6E67696C61 || *(__s1 + 5) != 0x7372656E726F635FLL)
  {
    if (*__s1 == 0x725F7265746E6563 && *(__s1 + 5) == 0x746C757365725F72)
    {
      return a2[1];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::ResizeGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
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

      result = memcmp(__s1, "nearest_rounding_mode", 0x15uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[3] = v15;
        }

        else
        {
          v5[3] = 0;
        }

        return result;
      }

      if (*__s1 != 0x5F646E617265706FLL || *(__s1 + 1) != 0x5F746E656D676573 || *(__s1 + 13) != 0x73657A69735F746ELL)
      {
        return result;
      }
    }

    if (a4)
    {
      result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
      v12 = result ? a4 : 0;
      v17 = v12;
      if (v12)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v17);
        if (result == 4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v17);
          if (v13)
          {
            return memmove(v5 + 4, result, 4 * v13);
          }
        }
      }
    }
  }

  else if (a3 == 4)
  {
    result = memcmp(__s1, "mode", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        v5[2] = v11;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    if (*__s1 == 0x6F635F6E67696C61 && *(__s1 + 5) == 0x7372656E726F635FLL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        *result = v14;
      }

      else
      {
        *result = 0;
      }
    }

    else if (*__s1 == 0x725F7265746E6563 && *(__s1 + 5) == 0x746C757365725F72)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }

        *(result + 8) = v16;
      }

      else
      {
        *(result + 8) = 0;
      }
    }
  }

  return result;
}

void mlir::mps::ResizeGradientOp::populateInherentAttrs(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "align_corners", 0xDuLL, *a2);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "center_result", 0xDuLL, v6);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "mode", 4uLL, v7);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "nearest_rounding_mode", 0x15uLL, v8);
  }

  v9 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 4), 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 0x13uLL, v9);
}

BOOL mlir::mps::ResizeGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "align_corners", 0xD, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "center_result", 0xD, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v10, "mode", 4, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v11, "nearest_rounding_mode", 0x15, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid NearestRoundingMode";
        v29 = 57;
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

BOOL mlir::mps::ResizeGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(a1, v3 + 3))
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 5)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove(v3 + 4, v4, 4 * v5);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 4) & 1) != 0;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::SamplingModeAttr]";
  v38 = 77;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::NearestRoundingModeAttr]";
  v38 = 84;
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

uint64_t mlir::mps::ResizeGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = (v4 + 64);
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 1));
  (*(*a2 + 16))(a2, *(v5 + 2));
  (*(*a2 + 24))(a2, *(v5 + 3));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 8), 4);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, v5 + 8, 4);
  }

  return result;
}

BOOL mlir::mps::ResizeGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v4 = v3 + 8;
  v5 = v6;
  v7 = v4[2];
  if (v7)
  {
    v8 = v4[1];
    v9 = v4[3];
    v55[0] = v2;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v7, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55))
    {
      return 0;
    }

    v55[0] = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "center_result", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55))
    {
      return 0;
    }

    v55[0] = *this;
    if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "align_corners", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55))
    {
      return 0;
    }

    v55[0] = *this;
    if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v9, "nearest_rounding_mode", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v55))
    {
      return 0;
    }

    v52 = 0;
    v10 = *(*this + 11);
    v11 = LODWORD((*this)[2 * ((v10 >> 23) & 1) + 12]);
    if ((v10 & 0x800000) != 0)
    {
      v12 = (*this)[9];
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = 0;
      if (v11)
      {
LABEL_8:
        v13 = 0;
        v14 = v12 + 24;
        while (1)
        {
          v15 = *this;
          v16 = *(*v14 + 8);
          v52 = v13 + 1;
          if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, (v16 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
          {
            return 0;
          }

          ++v13;
          v14 += 32;
          if (v11 == v13)
          {
            goto LABEL_34;
          }
        }
      }
    }

    LODWORD(v13) = 0;
LABEL_34:
    ODSOperands = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 1u);
    if (v27)
    {
      v28 = v27;
      v29 = ODSOperands + 24;
      while (1)
      {
        v30 = *this;
        v31 = *(*v29 + 8);
        v32 = v13 + 1;
        v52 = v13 + 1;
        if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v30, (v31 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
        {
          return 0;
        }

        v29 += 32;
        LODWORD(v13) = v13 + 1;
        if (!--v28)
        {
          goto LABEL_40;
        }
      }
    }

    v32 = v13;
LABEL_40:
    v33 = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 2u);
    v35 = v34;
    if (v34 >= 2)
    {
      goto LABEL_41;
    }

    if (v34)
    {
      v39 = *(v33 + 24);
      v40 = *this;
      v41 = *(v39 + 8);
      v52 = v32 + 1;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(v40, (v41 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v32))
      {
        return 0;
      }
    }

    v43 = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 3u);
    v35 = v44;
    if (v44 >= 2)
    {
LABEL_41:
      v53[0] = "operand group starting at #";
      v54 = 259;
      mlir::OpState::emitOpError(this, v53, v55);
      mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v55, &v52);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v36, " requires 0 or 1 element, but found ");
      v51 = v35;
      mlir::InFlightDiagnostic::operator<<<unsigned long>(v37, &v51);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
      return v17;
    }

    if (v44)
    {
      v45 = *(v43 + 24);
      v46 = *this;
      v47 = *(v45 + 8);
      v48 = v52++;
      if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(v46, (v47 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v48))
      {
        return 0;
      }
    }

    if (*(*this + 9))
    {
      v49 = *this - 2;
    }

    else
    {
      v49 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0);
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    v53[0] = "requires attribute 'mode'";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v61;
        v20 = __p;
        if (v61 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v61 = v18;
        operator delete(v20);
      }

      v21 = v58;
      if (v58)
      {
        v22 = v59;
        v23 = v58;
        if (v59 != v58)
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
          v23 = v58;
        }

        v59 = v21;
        operator delete(v23);
      }

      if (v56 != &v57)
      {
        free(v56);
      }
    }
  }

  return v17;
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps47(uint64_t *ShapedType, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
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

    goto LABEL_112;
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
      goto LABEL_90;
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
      goto LABEL_90;
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
LABEL_90:
    v128 = a2;
    v129 = 0;
    mlir::ShapedType::getShape(&v128);
    v10 = *a2;
    if (v71)
    {
      goto LABEL_2;
    }

    goto LABEL_93;
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

LABEL_93:
  {
    v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v75 = *(v10 + 8);
    v76 = *(v10 + 16);
    if (!v76)
    {
      goto LABEL_106;
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
      goto LABEL_106;
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
    goto LABEL_108;
  }

LABEL_106:
  v85 = 0;
LABEL_108:
  v138 = a2;
  v139 = v85;
  isSplat = mlir::ElementsAttr::isSplat(&v138);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
  {
    return 1;
  }

  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

LABEL_112:
  {
    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v87 = *(v10 + 8);
    v88 = *(v10 + 16);
    if (!v88)
    {
      goto LABEL_124;
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
      goto LABEL_124;
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
LABEL_124:
    v135 = a2;
    v136 = 0;
    v96 = mlir::ElementsAttr::getShapedType(&v135);
    v10 = *a2;
    if (!v96)
    {
      goto LABEL_3;
    }

    goto LABEL_127;
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

LABEL_127:
  {
    v99 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v100 = *(v10 + 8);
    v101 = *(v10 + 16);
    if (!v101)
    {
      goto LABEL_139;
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
      goto LABEL_139;
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
LABEL_139:
    v133 = a2;
    v134 = 0;
    mlir::ShapedType::getShape(&v133);
    v10 = *a2;
    if (v109 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_142;
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

LABEL_142:
  {
    v121 = v10;
    mlir::Builder::getI32VectorAttr();
    v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v113 = *(v121 + 8);
    v114 = *(v121 + 16);
    if (v114)
    {
      goto LABEL_144;
    }

LABEL_154:
    v122 = 0;
    goto LABEL_156;
  }

  v112 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v113 = *(v10 + 8);
  v114 = *(v10 + 16);
  if (!v114)
  {
    goto LABEL_154;
  }

LABEL_144:
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
    goto LABEL_154;
  }

  v122 = v115[1];
LABEL_156:
  v132[0] = a2;
  v132[1] = v122;
  isSplat = mlir::ElementsAttr::isSplat(v132);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
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
    if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
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
        v139 = " must be 0D tensor of floating point values or 1D tensor of floating point values or unranked tensor of floating point values, but got ";
        v140 = 135;
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

unint64_t mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::ResizeOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 56);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 72);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 56);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

BOOL mlir::mps::ResizeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NearestRoundingModeAttr>(a1, v3 + 3))
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

    if (mlir::AffineBinaryOpExpr::getLHS(&v9) >= 5)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      return 0;
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v9);
    if (v5)
    {
      memmove(v3 + 4, v4, 4 * v5);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 4) & 1) != 0;
}

BOOL mlir::mps::ReverseOp::verifyInvariantsImpl(uint64_t **this)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    goto LABEL_4;
  }

  v3 = *(v2 + 17);
  v4 = v3 - 1;
  if ((v3 - 1) <= 1)
  {
    if (v3 == 1)
    {
LABEL_30:
      if (*(v2 + 9))
      {
        v28 = (v2 - 2);
      }

      else
      {
        v28 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v2, (*(*(v2[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v2 = *this;
      goto LABEL_30;
    }

    return 0;
  }

LABEL_4:
  v34 = "operand group starting at #";
  v35 = 259;
  mlir::OpState::emitOpError(this, &v34, v39);
  if (v39[0])
  {
    v36 = 5;
    v37 = 1;
    v5 = &v36;
    v6 = v40;
    if (v41 >= v42)
    {
      if (v40 <= &v36 && v40 + 24 * v41 > &v36)
      {
        v31 = &v36 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v6 = v40;
        v5 = (v40 + v31);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v5 = &v36;
        v6 = v40;
      }
    }

    v7 = &v6[24 * v41];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v41;
    if (v39[0])
    {
      v36 = 3;
      v37 = " requires 0 or 1 element, but found ";
      v38 = 36;
      v10 = &v36;
      v11 = v40;
      if (v9 >= v42)
      {
        if (v40 <= &v36 && v40 + 24 * v9 > &v36)
        {
          v32 = &v36 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v9 + 1, 24);
          v11 = v40;
          v10 = (v40 + v32);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v9 + 1, 24);
          v10 = &v36;
          v11 = v40;
        }
      }

      v12 = &v11[24 * v41];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v41;
      if (v39[0])
      {
        v36 = 5;
        v37 = v4;
        v15 = &v36;
        v16 = v40;
        if (v14 >= v42)
        {
          if (v40 <= &v36 && v40 + 24 * v14 > &v36)
          {
            v33 = &v36 - v40;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v14 + 1, 24);
            v16 = v40;
            v15 = (v40 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v14 + 1, 24);
            v15 = &v36;
            v16 = v40;
          }
        }

        v17 = &v16[24 * v41];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v41;
      }
    }
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v47;
      v22 = __p;
      if (v47 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v47 = v20;
      operator delete(v22);
    }

    v23 = v44;
    if (v44)
    {
      v24 = v45;
      v25 = v44;
      if (v45 != v44)
      {
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
        v25 = v44;
      }

      v45 = v23;
      operator delete(v25);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

  return v19;
}

uint64_t mlir::mps::SampleGridDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v72, "normalize_coordinates", 0x15uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 66;
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

  v36 = mlir::DictionaryAttr::get(&v72, "padding_mode", 0xCuLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
    {
      v37 = v36;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 57;
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

  v53 = mlir::DictionaryAttr::get(&v72, "relative_coordinates", 0x14uLL);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v54 = v53;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 65;
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

  v63 = mlir::DictionaryAttr::get(&v72, "sampling_mode", 0xDuLL);
  v73 = v63;
  if (!v63)
  {
    return 1;
  }

  if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
  {
    a1[3] = v63;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::mps::SampleGridDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "normalize_coordinates", 0x15uLL, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v34, "padding_mode", 0xCuLL, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v34, "relative_coordinates", 0x14uLL, v13);
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
    v19 = mlir::Builder::getNamedAttr(&v34, "sampling_mode", 0xDuLL, v18);
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

uint64_t mlir::mps::SampleGridDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 19)
  {
    if (__n == 20)
    {
      if (!memcmp(__s1, "relative_coordinates", 0x14uLL))
      {
        return a2[2];
      }
    }

    else if (__n == 21)
    {
      v6 = *__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65;
      if (v6 && *(__s1 + 13) == 0x736574616E696472)
      {
        return *a2;
      }
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "padding_mode", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 13 || memcmp(__s1, "sampling_mode", 0xDuLL))
  {
    return 0;
  }

  return a2[3];
}

uint64_t mlir::mps::SampleGridDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 19)
  {
    if (a3 == 20)
    {
      result = memcmp(__s1, "relative_coordinates", 0x14uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[2] = v10;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }

    else if (a3 == 21)
    {
      v6 = *__s1 == 0x7A696C616D726F6ELL && *(__s1 + 1) == 0x6964726F6F635F65;
      if (v6 && *(__s1 + 13) == 0x736574616E696472)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  else if (a3 == 13)
  {
    result = memcmp(__s1, "sampling_mode", 0xDuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
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

  return result;
}

BOOL mlir::mps::SampleGridDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v8, "normalize_coordinates", 0x15, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v9, "padding_mode", 0xC, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v10, "relative_coordinates", 0x14, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v11, "sampling_mode", 0xD, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::SampleGridDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingModeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::mps::SamplingModeAttr>(a1, v3 + 3);
}

BOOL mlir::mps::SampleGridDataGradientOp::verifyInvariantsImpl(uint64_t **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v2 = v1[8];
  v4 = v1[9];
  v3 = v1 + 8;
  if (v4)
  {
    v5 = v3[3];
    if (v5)
    {
      v7 = v3[2];
      v28[0] = *this;
      if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v2, "normalize_coordinates", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
      {
        return 0;
      }

      v28[0] = *this;
      if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "relative_coordinates", 0x14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
      {
        return 0;
      }

      v28[0] = *this;
      if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v4, "padding_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28))
      {
        return 0;
      }

      v28[0] = *this;
      if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v5, "sampling_mode", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
      {
        return 0;
      }

      if (*(*this + 9))
      {
        v8 = *this - 2;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    v26[0] = "requires attribute 'sampling_mode'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
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

      v19 = __p;
      if (__p)
      {
        v20 = v34;
        v21 = __p;
        if (v34 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
      }

      v14 = v31;
      if (!v31)
      {
        goto LABEL_49;
      }

      v22 = v32;
      v16 = v31;
      if (v32 == v31)
      {
LABEL_48:
        v32 = v14;
        operator delete(v16);
LABEL_49:
        if (v29 != &v30)
        {
          free(v29);
        }

        return v10;
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

      while (v22 != v14);
LABEL_47:
      v16 = v31;
      goto LABEL_48;
    }
  }

  else
  {
    v26[0] = "requires attribute 'padding_mode'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
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

      v11 = __p;
      if (__p)
      {
        v12 = v34;
        v13 = __p;
        if (v34 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v34 = v11;
        operator delete(v13);
      }

      v14 = v31;
      if (!v31)
      {
        goto LABEL_49;
      }

      v15 = v32;
      v16 = v31;
      if (v32 == v31)
      {
        goto LABEL_48;
      }

      do
      {
        v18 = *--v15;
        v17 = v18;
        *v15 = 0;
        if (v18)
        {
          MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
        }
      }

      while (v15 != v14);
      goto LABEL_47;
    }
  }

  return v10;
}

uint64_t mlir::mps::SampleGridOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v75 = v6;
  if (!v6)
  {
    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v77 = "expected DictionaryAttr to set properties";
      v78 = 41;
      v26 = &v76;
      v27 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v68 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v27 = v81;
          v26 = (v81 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v26 = &v76;
          v27 = v81;
        }
      }

      v28 = &v27[24 * v82];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v82;
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }
    }

    if (v90 != 1)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v88;
      v32 = __p;
      if (v88 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v88 = v30;
      operator delete(v32);
    }

    v21 = v85;
    if (!v85)
    {
      goto LABEL_70;
    }

    v33 = v86;
    v23 = v85;
    if (v86 == v85)
    {
LABEL_69:
      v86 = v21;
      operator delete(v23);
LABEL_70:
      if (v81 != v84)
      {
        free(v81);
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
    v23 = v85;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v75, "align_corners", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 58;
        v10 = &v76;
        v11 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v69 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v11 = v81;
            v10 = (v81 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v10 = &v76;
            v11 = v81;
          }
        }

        v12 = &v11[24 * v82];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v82;
        if (v79)
        {
          v14 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v9);
          v15 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v70 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v15 = v81;
              v14 = (v81 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v14 = &v76;
              v15 = v81;
            }
          }

          v16 = &v15[24 * v82];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if ((v90 & 1) == 0)
      {
        return 0;
      }

      if (v89 != &v90)
      {
        free(v89);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v88;
        v20 = __p;
        if (v88 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v88 = v18;
        operator delete(v20);
      }

      v21 = v85;
      if (!v85)
      {
        goto LABEL_70;
      }

      v22 = v86;
      v23 = v85;
      if (v86 == v85)
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

  v36 = mlir::DictionaryAttr::get(&v75, "layout", 6uLL);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v37 = v36;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 51;
        v38 = &v76;
        v39 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v71 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v39 = v81;
            v38 = (v81 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v38 = &v76;
            v39 = v81;
          }
        }

        v40 = &v39[24 * v82];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v82;
        if (v79)
        {
          v42 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v37);
          v43 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v72 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v43 = v81;
              v42 = (v81 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v42 = &v76;
              v43 = v81;
            }
          }

          v44 = &v43[24 * v82];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if ((v90 & 1) == 0)
      {
        return 0;
      }

      if (v89 != &v90)
      {
        free(v89);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v88;
        v48 = __p;
        if (v88 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v88 = v46;
        operator delete(v48);
      }

      v21 = v85;
      if (!v85)
      {
        goto LABEL_70;
      }

      v49 = v86;
      v23 = v85;
      if (v86 == v85)
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

  v52 = mlir::DictionaryAttr::get(&v75, "nearest_rounding_mode", 0x15uLL);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
    {
      v53 = v52;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 66;
        v54 = &v76;
        v55 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v73 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v55 = v81;
            v54 = (v81 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v54 = &v76;
            v55 = v81;
          }
        }

        v56 = &v55[24 * v82];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v82;
        if (v79)
        {
          v58 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v53);
          v59 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v74 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v59 = v81;
              v58 = (v81 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v58 = &v76;
              v59 = v81;
            }
          }

          v60 = &v59[24 * v82];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if (v90 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v80);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v62 = mlir::DictionaryAttr::get(&v75, "normalize_coordinates", 0x15uLL);
  v76 = v62;
  if (!v62)
  {
LABEL_88:
    v64 = mlir::DictionaryAttr::get(&v75, "padding_mode", 0xCuLL);
    v76 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_99;
      }

      a1[4] = v64;
    }

    v65 = mlir::DictionaryAttr::get(&v75, "relative_coordinates", 0x14uLL);
    v76 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_99;
      }

      a1[5] = v65;
    }

    v66 = mlir::DictionaryAttr::get(&v75, "sampling_mode", 0xDuLL);
    v76 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
      {
        a3(&v79, a4);
        goto LABEL_99;
      }

      a1[6] = v66;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_88;
  }

  a3(&v79, a4);
LABEL_99:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v76);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
  return 0;
}

uint64_t mlir::mps::SampleGridOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v58[6] = *MEMORY[0x1E69E9840];
  v55 = a1;
  v56 = v58;
  v57 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v55, "align_corners", 0xDuLL, *a2);
  v5 = v57;
  if (v57 >= HIDWORD(v57))
  {
    v41 = NamedAttr;
    v42 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
    v4 = v42;
    NamedAttr = v41;
    v5 = v57;
  }

  v6 = (v56 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v57 + 1;
  LODWORD(v57) = v57 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v55, "layout", 6uLL, v8);
    v11 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v43 = v9;
      v44 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v10 = v44;
      v9 = v43;
      v11 = v57;
    }

    v12 = (v56 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v55, "nearest_rounding_mode", 0x15uLL, v13);
    v16 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v45 = v14;
      v46 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v15 = v46;
      v14 = v45;
      v16 = v57;
    }

    v17 = (v56 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v55, "normalize_coordinates", 0x15uLL, v18);
    v21 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v47 = v19;
      v48 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v20 = v48;
      v19 = v47;
      v21 = v57;
    }

    v22 = (v56 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v55, "padding_mode", 0xCuLL, v23);
    v26 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v49 = v24;
      v50 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v25 = v50;
      v24 = v49;
      v26 = v57;
    }

    v27 = (v56 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v55, "relative_coordinates", 0x14uLL, v28);
    v31 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v51 = v29;
      v52 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v30 = v52;
      v29 = v51;
      v31 = v57;
    }

    v32 = (v56 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v55, "sampling_mode", 0xDuLL, v33);
    v36 = v57;
    if (v57 >= HIDWORD(v57))
    {
      v53 = v34;
      v54 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 16);
      v35 = v54;
      v34 = v53;
      v36 = v57;
    }

    v37 = (v56 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v57 + 1;
    LODWORD(v57) = v57 + 1;
  }

  v38 = v56;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v56 == v58)
    {
      return DictionaryAttr;
    }

    goto LABEL_32;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v55, v56, v7);
  v38 = v56;
  if (v56 != v58)
  {
LABEL_32:
    free(v38);
  }

  return DictionaryAttr;
}