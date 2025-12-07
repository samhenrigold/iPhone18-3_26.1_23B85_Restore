uint64_t mlir::mps::BatchToSpaceOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "pixel_shuffle", 0xDuLL);
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
    v43 = 58;
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

uint64_t mlir::mps::BatchToSpaceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "pixel_shuffle", 0xDuLL, *a2);
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

BOOL mlir::mps::BatchToSpaceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::BatchToSpaceOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v7 = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "pixel_shuffle", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps5(*this, (*(*((*this)[9] + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 2;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(uint64_t *ShapedType, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v153 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v10 + 8);
    v40 = *(v10 + 16);
    if (!v40)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v65 = v10;
    mlir::Builder::getZeroAttr();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v65 + 8);
    v40 = *(v65 + 16);
    if (!v40)
    {
      goto LABEL_75;
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
LABEL_75:
    v141 = a2;
    v142 = 0;
    v66 = mlir::ElementsAttr::getShapedType(&v141);
    v10 = *a2;
    if (!v66)
    {
      goto LABEL_2;
    }

    goto LABEL_78;
  }

  v67 = v41[1];
  v141 = a2;
  v142 = v67;
  v68 = mlir::ElementsAttr::getShapedType(&v141);
  v10 = *a2;
  if (!v68)
  {
    goto LABEL_2;
  }

LABEL_78:
  {
    v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v70 = *(v10 + 8);
    v71 = *(v10 + 16);
    if (!v71)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v127 = v10;
    mlir::Builder::getI32VectorAttr();
    v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v70 = *(v127 + 8);
    v71 = *(v127 + 16);
    if (!v71)
    {
      goto LABEL_113;
    }
  }

  v72 = v70;
  v73 = v71;
  do
  {
    v74 = v73 >> 1;
    v75 = &v72[2 * (v73 >> 1)];
    v77 = *v75;
    v76 = v75 + 2;
    v73 += ~(v73 >> 1);
    if (v77 < v69)
    {
      v72 = v76;
    }

    else
    {
      v73 = v74;
    }
  }

  while (v73);
  if (v72 == &v70[2 * v71] || *v72 != v69)
  {
LABEL_113:
    v128 = a2;
    v129 = 0;
    mlir::ShapedType::getShape(&v128);
    v10 = *a2;
    if (v93)
    {
      goto LABEL_2;
    }

    goto LABEL_116;
  }

  v94 = v72[1];
  v128 = a2;
  v129 = v94;
  mlir::ShapedType::getShape(&v128);
  v10 = *a2;
  if (v95)
  {
    goto LABEL_2;
  }

LABEL_116:
  {
    v121 = v10;
    mlir::Builder::getI32VectorAttr();
    v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v97 = *(v121 + 8);
    v98 = *(v121 + 16);
    if (v98)
    {
      goto LABEL_118;
    }

LABEL_152:
    v122 = 0;
    goto LABEL_154;
  }

  v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v97 = *(v10 + 8);
  v98 = *(v10 + 16);
  if (!v98)
  {
    goto LABEL_152;
  }

LABEL_118:
  v99 = v97;
  v100 = v98;
  do
  {
    v101 = v100 >> 1;
    v102 = &v99[2 * (v100 >> 1)];
    v104 = *v102;
    v103 = v102 + 2;
    v100 += ~(v100 >> 1);
    if (v104 < v96)
    {
      v99 = v103;
    }

    else
    {
      v100 = v101;
    }
  }

  while (v100);
  if (v99 == &v97[2 * v98] || *v99 != v96)
  {
    goto LABEL_152;
  }

  v122 = v99[1];
LABEL_154:
  v138 = a2;
  v139 = v122;
  isSplat = mlir::ElementsAttr::isSplat(&v138);
  if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
LABEL_2:
  if (*(v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v10 + 8);
    v49 = *(v10 + 16);
    if (!v49)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v78 = v10;
    mlir::Builder::getI32VectorAttr();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v78 + 8);
    v49 = *(v78 + 16);
    if (!v49)
    {
      goto LABEL_90;
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
  if (v50 == &v48[2 * v49] || *v50 != v47)
  {
LABEL_90:
    v135 = a2;
    v136 = 0;
    v79 = mlir::ElementsAttr::getShapedType(&v135);
    v10 = *a2;
    if (!v79)
    {
      goto LABEL_3;
    }

    goto LABEL_93;
  }

  v80 = v50[1];
  v135 = a2;
  v136 = v80;
  v81 = mlir::ElementsAttr::getShapedType(&v135);
  v10 = *a2;
  if (!v81)
  {
    goto LABEL_3;
  }

LABEL_93:
  {
    v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v83 = *(v10 + 8);
    v84 = *(v10 + 16);
    if (!v84)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v105 = v10;
    mlir::Builder::getI32VectorAttr();
    v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v83 = *(v105 + 8);
    v84 = *(v105 + 16);
    if (!v84)
    {
      goto LABEL_128;
    }
  }

  v85 = v83;
  v86 = v84;
  do
  {
    v87 = v86 >> 1;
    v88 = &v85[2 * (v86 >> 1)];
    v90 = *v88;
    v89 = v88 + 2;
    v86 += ~(v86 >> 1);
    if (v90 < v82)
    {
      v85 = v89;
    }

    else
    {
      v86 = v87;
    }
  }

  while (v86);
  if (v85 == &v83[2 * v84] || *v85 != v82)
  {
LABEL_128:
    v133 = a2;
    v134 = 0;
    mlir::ShapedType::getShape(&v133);
    v10 = *a2;
    if (v106 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_131;
  }

  v107 = v85[1];
  v133 = a2;
  v134 = v107;
  mlir::ShapedType::getShape(&v133);
  v10 = *a2;
  if (v108 != 1)
  {
    goto LABEL_3;
  }

LABEL_131:
  {
    v119 = v10;
    mlir::Builder::getI32VectorAttr();
    v109 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v110 = *(v119 + 8);
    v111 = *(v119 + 16);
    if (v111)
    {
      goto LABEL_133;
    }

LABEL_144:
    v120 = 0;
    goto LABEL_146;
  }

  v109 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v110 = *(v10 + 8);
  v111 = *(v10 + 16);
  if (!v111)
  {
    goto LABEL_144;
  }

LABEL_133:
  v112 = v110;
  v113 = v111;
  do
  {
    v114 = v113 >> 1;
    v115 = &v112[2 * (v113 >> 1)];
    v117 = *v115;
    v116 = v115 + 2;
    v113 += ~(v113 >> 1);
    if (v117 < v109)
    {
      v112 = v116;
    }

    else
    {
      v113 = v114;
    }
  }

  while (v113);
  if (v112 == &v110[2 * v111] || *v112 != v109)
  {
    goto LABEL_144;
  }

  v120 = v112[1];
LABEL_146:
  v132[0] = a2;
  v132[1] = v120;
  isSplat = mlir::ElementsAttr::isSplat(v132);
  if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
LABEL_3:
  if (*(v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v10 + 8);
      v58 = *(v10 + 16);
      if (!v58)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v91 = v10;
      mlir::Builder::getI32VectorAttr();
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v91 + 8);
      v58 = *(v91 + 16);
      if (!v58)
      {
        goto LABEL_105;
      }
    }

    v59 = v57;
    v60 = v58;
    do
    {
      v61 = v60 >> 1;
      v62 = &v59[2 * (v60 >> 1)];
      v64 = *v62;
      v63 = v62 + 2;
      v60 += ~(v60 >> 1);
      if (v64 < v56)
      {
        v59 = v63;
      }

      else
      {
        v60 = v61;
      }
    }

    while (v60);
    if (v59 != &v57[2 * v58] && *v59 == v56)
    {
      v92 = v59[1];
      goto LABEL_107;
    }

LABEL_105:
    v92 = 0;
LABEL_107:
    v131[0] = a2;
    v131[1] = v92;
    isSplat = mlir::ElementsAttr::isSplat(v131);
    if (!mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64))
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
        v118 = &v138 - v143;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
        v12 = v143;
        v11 = (v143 + v118);
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
        v139 = " must be 0D tensor of mps index type values or 1D tensor of mps index type values or unranked tensor of mps index type values, but got ";
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

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps5(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v121 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_80;
    }

    goto LABEL_3;
  }

  {
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v9 + 8);
    v22 = *(v9 + 16);
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v29 = a1;
    v30 = v9;
    mlir::Builder::getZeroAttr();
    a1 = v29;
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v30 + 8);
    v22 = *(v30 + 16);
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 != &v21[2 * v22] && *v23 == v20)
  {
    v31 = a1;
    v32 = v23[1];
    goto LABEL_26;
  }

LABEL_24:
  v31 = a1;
  v32 = 0;
LABEL_26:
  v110[0] = a2;
  v110[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v110);
  if (mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v9 = *a2;
  a1 = v31;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_80;
  }

LABEL_3:
  {
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v33 = a1;
    v34 = v9;
    mlir::Builder::getI32VectorAttr();
    a1 = v33;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v34 + 8);
    v13 = *(v34 + 16);
    if (!v13)
    {
      goto LABEL_39;
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
    v37 = a1;
    v38 = v14[1];
    v102 = a2;
    v103 = v38;
    ShapedType = mlir::ElementsAttr::getShapedType(&v102);
    a1 = v37;
    if (!ShapedType)
    {
      goto LABEL_80;
    }

    goto LABEL_42;
  }

LABEL_39:
  v35 = a1;
  v102 = a2;
  v103 = 0;
  v36 = mlir::ElementsAttr::getShapedType(&v102);
  a1 = v35;
  if (!v36)
  {
    goto LABEL_80;
  }

LABEL_42:
  v40 = *a2;
  {
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v101 = a1;
    mlir::Builder::getI32VectorAttr();
    a1 = v101;
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_54;
    }
  }

  v44 = v42;
  v45 = v43;
  do
  {
    v46 = v45 >> 1;
    v47 = &v44[2 * (v45 >> 1)];
    v49 = *v47;
    v48 = v47 + 2;
    v45 += ~(v45 >> 1);
    if (v49 < v41)
    {
      v44 = v48;
    }

    else
    {
      v45 = v46;
    }
  }

  while (v45);
  if (v44 == &v42[2 * v43] || *v44 != v41)
  {
LABEL_54:
    v50 = a1;
    v107 = a2;
    v108 = 0;
    mlir::ShapedType::getShape(&v107);
    a1 = v50;
    if (v51 != 1)
    {
      goto LABEL_80;
    }

LABEL_57:
    v55 = *a2;
    {
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      if (!v58)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v65 = a1;
      mlir::Builder::getI32VectorAttr();
      a1 = v65;
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      if (!v58)
      {
        goto LABEL_69;
      }
    }

    v59 = v57;
    v60 = v58;
    do
    {
      v61 = v60 >> 1;
      v62 = &v59[2 * (v60 >> 1)];
      v64 = *v62;
      v63 = v62 + 2;
      v60 += ~(v60 >> 1);
      if (v64 < v56)
      {
        v59 = v63;
      }

      else
      {
        v60 = v61;
      }
    }

    while (v60);
    if (v59 != &v57[2 * v58] && *v59 == v56)
    {
      v66 = a1;
      v67 = v59[1];
      goto LABEL_71;
    }

LABEL_69:
    v66 = a1;
    v67 = 0;
LABEL_71:
    v105[0] = a2;
    v105[1] = v67;
    isSplat = mlir::ElementsAttr::isSplat(v105);
    if (!mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      isUnsignedInteger = mlir::Type::isUnsignedInteger(&isSplat, 64);
      a1 = v66;
      if (!isUnsignedInteger)
      {
        goto LABEL_80;
      }
    }

    return 1;
  }

  v52 = a1;
  v53 = v44[1];
  v107 = a2;
  v108 = v53;
  mlir::ShapedType::getShape(&v107);
  a1 = v52;
  if (v54 == 1)
  {
    goto LABEL_57;
  }

LABEL_80:
  v104 = 261;
  v102 = a3;
  v103 = a4;
  mlir::Operation::emitOpError(a1, &v102, v110);
  if (v110[0])
  {
    LODWORD(v107) = 3;
    v108 = " #";
    v109 = 2;
    v70 = &v107;
    v71 = v111;
    if (v112 >= v113)
    {
      if (v111 <= &v107 && v111 + 24 * v112 > &v107)
      {
        v97 = &v107 - v111;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
        v71 = v111;
        v70 = (v111 + v97);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
        v70 = &v107;
        v71 = v111;
      }
    }

    v72 = &v71[24 * v112];
    v73 = *v70;
    *(v72 + 2) = v70[2];
    *v72 = v73;
    v74 = ++v112;
    if (v110[0])
    {
      LODWORD(v107) = 5;
      v108 = a5;
      v75 = &v107;
      v76 = v111;
      if (v74 >= v113)
      {
        if (v111 <= &v107 && v111 + 24 * v74 > &v107)
        {
          v98 = &v107 - v111;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v74 + 1, 24);
          v76 = v111;
          v75 = (v111 + v98);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v74 + 1, 24);
          v75 = &v107;
          v76 = v111;
        }
      }

      v77 = &v76[24 * v112];
      v78 = *v75;
      *(v77 + 2) = v75[2];
      *v77 = v78;
      v79 = ++v112;
      if (v110[0])
      {
        LODWORD(v107) = 3;
        v108 = " must be unranked tensor of int values or 1D tensor of int values, but got ";
        v109 = 75;
        v80 = &v107;
        v81 = v111;
        if (v79 >= v113)
        {
          if (v111 <= &v107 && v111 + 24 * v79 > &v107)
          {
            v99 = &v107 - v111;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v79 + 1, 24);
            v81 = v111;
            v80 = (v111 + v99);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v79 + 1, 24);
            v80 = &v107;
            v81 = v111;
          }
        }

        v82 = &v81[24 * v112];
        v83 = *v80;
        *(v82 + 2) = v80[2];
        *v82 = v83;
        ++v112;
        if (v110[0])
        {
          v84 = &v107;
          mlir::DiagnosticArgument::DiagnosticArgument(&v107, a2);
          v85 = v111;
          if (v112 >= v113)
          {
            if (v111 <= &v107 && v111 + 24 * v112 > &v107)
            {
              v100 = &v107 - v111;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
              v85 = v111;
              v84 = (v111 + v100);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
              v84 = &v107;
              v85 = v111;
            }
          }

          v86 = &v85[24 * v112];
          v87 = *v84;
          *(v86 + 2) = v84[2];
          *v86 = v87;
          ++v112;
        }
      }
    }
  }

  v69 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
  if (v110[0])
  {
    mlir::InFlightDiagnostic::report(v110);
  }

  if (v120 == 1)
  {
    if (v119 != &v120)
    {
      free(v119);
    }

    v88 = __p;
    if (__p)
    {
      v89 = v118;
      v90 = __p;
      if (v118 != __p)
      {
        do
        {
          v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
        }

        while (v89 != v88);
        v90 = __p;
      }

      v118 = v88;
      operator delete(v90);
    }

    v91 = v115;
    if (v115)
    {
      v92 = v116;
      v93 = v115;
      if (v116 != v115)
      {
        do
        {
          v95 = *--v92;
          v94 = v95;
          *v92 = 0;
          if (v95)
          {
            MEMORY[0x1AC55A040](v94, 0x1000C8077774924);
          }
        }

        while (v92 != v91);
        v93 = v115;
      }

      v116 = v91;
      operator delete(v93);
    }

    if (v111 != v114)
    {
      free(v111);
    }
  }

  return v69;
}

uint64_t mlir::mps::BiasAddGradOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "data_format", 0xBuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 56;
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

uint64_t mlir::mps::BiasAddGradOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "data_format", 0xBuLL, *a2);
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(_DWORD *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id && a1[2] < 2u)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v8 = &v27;
    v9 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v9 = v33;
        v8 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = &v27;
        v9 = v33;
      }
    }

    v10 = &v9[24 * v34];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
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
        v28 = "' failed to satisfy constraint: valid TensorDataLayout is NHWC or NCHW";
        v29 = 70;
        v12 = &v27;
        v13 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v13 = v33;
            v12 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = &v27;
            v13 = v33;
          }
        }

        v14 = &v13[24 * v34];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v34;
      }
    }
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
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

  return v7;
}

BOOL mlir::mps::BiasAddGradOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::TensorDataLayoutAttr]";
  v38 = 81;
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

BOOL mlir::mps::BiasAddGradOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v7 = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(v3, "data_format", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    mlir::Builder::getZeroAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isF16(v57))
  {
    return 1;
  }

  if (mlir::Type::isF32(v57))
  {
    return 1;
  }

  isBF16 = mlir::Type::isBF16(v57);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isBF16)
  {
    return 1;
  }

LABEL_24:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of floating point values, but got ";
        v61 = 50;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_33;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v55 = v7;
    mlir::Builder::getZeroAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isSignlessInteger(v56, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(v56))
  {
    return 1;
  }

  if (mlir::Type::isF32(v56))
  {
    return 1;
  }

  if (mlir::Type::isBF16(v56))
  {
    return 1;
  }

  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

LABEL_33:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v23 = &v58;
    v24 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v24 = v62;
        v23 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v23 = &v58;
        v24 = v62;
      }
    }

    v25 = &v24[24 * v63];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v28 = &v58;
      v29 = v62;
      if (v27 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v27 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v29 = v62;
          v28 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v28 = &v58;
          v29 = v62;
        }
      }

      v30 = &v29[24 * v63];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      v32 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be tensor of mps native type values, but got ";
        v60 = 51;
        v33 = &v58;
        v34 = v62;
        if (v32 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v32 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v34 = v62;
            v33 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v33 = &v58;
            v34 = v62;
          }
        }

        v35 = &v34[24 * v63];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v63;
        if (v61[0])
        {
          v37 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v38 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v38 = v62;
              v37 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v37 = &v58;
              v38 = v62;
            }
          }

          v39 = &v38[24 * v63];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v63;
        }
      }
    }
  }

  v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v69;
      v44 = __p;
      if (v69 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v69 = v42;
      operator delete(v44);
    }

    v45 = v66;
    if (v66)
    {
      v46 = v67;
      v47 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        v47 = v66;
      }

      v67 = v45;
      operator delete(v47);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v41;
}

BOOL mlir::mps::BiasAddOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v2);
}

BOOL mlir::mps::BiasAddOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v7 = v2;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(v3, "data_format", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

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

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    mlir::Builder::getZeroAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 32))
  {
    return 1;
  }

  isUnsignedInteger = mlir::Type::isUnsignedInteger(v57, 64);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isUnsignedInteger)
  {
    return 1;
  }

LABEL_29:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of int values, but got ";
        v61 = 39;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            MEMORY[0x1AC55A040](v49, 0x1000C8077774924);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

void mlir::mps::BroadcastToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  v9 = a4;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::mps::CallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v75 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v60 = v6;
  if (!v6)
  {
    a3(v64, a4);
    if (v64[0])
    {
      v61 = 3;
      v62 = "expected DictionaryAttr to set properties";
      v63 = 41;
      v26 = &v61;
      v27 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v66 > &v61)
        {
          v55 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v27 = v65;
          v26 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v26 = &v61;
          v27 = v65;
        }
      }

      v28 = &v27[24 * v66];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v66;
      if (v64[0])
      {
        mlir::InFlightDiagnostic::report(v64);
      }
    }

    if (v74 != 1)
    {
      return 0;
    }

    if (v73 != &v74)
    {
      free(v73);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v72;
      v32 = __p;
      if (v72 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v72 = v30;
      operator delete(v32);
    }

    v21 = v69;
    if (!v69)
    {
      goto LABEL_74;
    }

    v33 = v70;
    v23 = v69;
    if (v70 == v69)
    {
      goto LABEL_73;
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
    goto LABEL_72;
  }

  v8 = mlir::DictionaryAttr::get(&v60, "inlineMode", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
    {
      v9 = v8;
      a3(v64, a4);
      if (v64[0])
      {
        v61 = 3;
        v63 = 55;
        v10 = &v61;
        v11 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
          {
            v56 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v11 = v65;
            v10 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v10 = &v61;
            v11 = v65;
          }
        }

        v12 = &v11[24 * v66];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v66;
        if (v64[0])
        {
          v14 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, v9);
          v15 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v58 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v15 = v65;
              v14 = (v65 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v14 = &v61;
              v15 = v65;
            }
          }

          v16 = &v15[24 * v66];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v66;
          if (v64[0])
          {
            mlir::InFlightDiagnostic::report(v64);
          }
        }
      }

      if ((v74 & 1) == 0)
      {
        return 0;
      }

      if (v73 != &v74)
      {
        free(v73);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v72;
        v20 = __p;
        if (v72 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v72 = v18;
        operator delete(v20);
      }

      v21 = v69;
      if (!v69)
      {
        goto LABEL_74;
      }

      v22 = v70;
      v23 = v69;
      if (v70 == v69)
      {
        goto LABEL_73;
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
      goto LABEL_72;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v60, "symbolName", 0xAuLL);
  if (!v36)
  {
    return 1;
  }

  v37 = v36;
  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v64[0] = v38;
  if (v38)
  {
    mlir::OpaqueAttr::getAttrData(v64);
    if (!v39)
    {
      a1[1] = v37;
      return 1;
    }
  }

  a3(v64, a4);
  if (v64[0])
  {
    v61 = 3;
    v63 = 55;
    v40 = &v61;
    v41 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v57 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v41 = v65;
        v40 = (v65 + v57);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v40 = &v61;
        v41 = v65;
      }
    }

    v42 = &v41[24 * v66];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    ++v66;
    if (v64[0])
    {
      v44 = &v61;
      mlir::DiagnosticArgument::DiagnosticArgument(&v61, v37);
      v45 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v66 > &v61)
        {
          v59 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v45 = v65;
          v44 = (v65 + v59);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v44 = &v61;
          v45 = v65;
        }
      }

      v46 = &v45[24 * v66];
      v47 = *v44;
      *(v46 + 2) = *(v44 + 2);
      *v46 = v47;
      ++v66;
      if (v64[0])
      {
        mlir::InFlightDiagnostic::report(v64);
      }
    }
  }

  if (v74)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v72;
      v50 = __p;
      if (v72 != __p)
      {
        do
        {
          v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v72 = v48;
      operator delete(v50);
    }

    v21 = v69;
    if (!v69)
    {
      goto LABEL_74;
    }

    v51 = v70;
    v23 = v69;
    if (v70 == v69)
    {
LABEL_73:
      v70 = v21;
      operator delete(v23);
LABEL_74:
      if (v65 != v68)
      {
        free(v65);
      }

      return 0;
    }

    do
    {
      v53 = *--v51;
      v52 = v53;
      *v51 = 0;
      if (v53)
      {
        MEMORY[0x1AC55A040](v52, 0x1000C8077774924);
      }
    }

    while (v51 != v21);
LABEL_72:
    v23 = v69;
    goto LABEL_73;
  }

  return 0;
}

uint64_t mlir::mps::CallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "inlineMode", 0xAuLL, *a2);
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

  v12 = mlir::Builder::getNamedAttr(&v20, "symbolName", 0xAuLL, v8);
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

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid CallInlineMode";
        v29 = 52;
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

uint64_t mlir::mps::CallOp::getSymbolName(mlir::mps::CallOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&v2);
  return mlir::OpaqueAttr::getAttrData(&Value);
}

uint64_t mlir::mps::CallOp::verifyInvariantsImpl(uint64_t **this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v6 = v3[8];
  v4 = v3 + 8;
  v5 = v6;
  if (!v6)
  {
    v28[0] = "requires attribute 'inlineMode'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (*v30)
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 != 1)
    {
      return v12;
    }

    if (v37 != &v38)
    {
      free(v37);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v36;
      v15 = __p;
      if (v36 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v36 = v13;
      operator delete(v15);
    }

    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      if (v34 != v33)
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
        goto LABEL_45;
      }

LABEL_46:
      v34 = v16;
      operator delete(v18);
    }

LABEL_47:
    if (v31 != &v32)
    {
      free(v31);
    }

    return v12;
  }

  v7 = v4[1];
  if (!v7)
  {
    v28[0] = "requires attribute 'symbolName'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (*v30)
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 != 1)
    {
      return v12;
    }

    if (v37 != &v38)
    {
      free(v37);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v36;
      v23 = __p;
      if (v36 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v36 = v21;
      operator delete(v23);
    }

    v16 = v33;
    if (v33)
    {
      v24 = v34;
      v18 = v33;
      if (v34 != v33)
      {
        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v16);
LABEL_45:
        v18 = v33;
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    goto LABEL_47;
  }

  *v30 = v2;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v7, "symbolName", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
  {
    return 0;
  }

  *v30 = *this;
  if (!mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(v5, "inlineMode", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30))
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 17);
    if (v9)
    {
      v10 = 0;
      v11 = v8[9] + 24;
      while (mlir::mps::__mlir_ods_local_type_constraint_MPSOps9(*this, (*(*v11 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
      {
        ++v10;
        v11 += 32;
        if (v9 == v10)
        {
          v8 = *this;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

LABEL_11:
  mlir::mps::CallOp::verifyInvariantsImpl(this, v8, v30);
  return v30[0];
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps9(uint64_t *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_33;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v55 = v7;
    mlir::Builder::getZeroAttr();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isSignlessInteger(v56, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(v56))
  {
    return 1;
  }

  if (mlir::Type::isF32(v56))
  {
    return 1;
  }

  if (mlir::Type::isBF16(v56))
  {
    return 1;
  }

  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

LABEL_33:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v23 = &v58;
    v24 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v24 = v62;
        v23 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v23 = &v58;
        v24 = v62;
      }
    }

    v25 = &v24[24 * v63];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v28 = &v58;
      v29 = v62;
      if (v27 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v27 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v29 = v62;
          v28 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v28 = &v58;
          v29 = v62;
        }
      }

      v30 = &v29[24 * v63];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      v32 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be variadic of tensor of mps native type values, but got ";
        v60 = 63;
        v33 = &v58;
        v34 = v62;
        if (v32 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v32 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v34 = v62;
            v33 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v33 = &v58;
            v34 = v62;
          }
        }

        v35 = &v34[24 * v63];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v63;
        if (v61[0])
        {
          v37 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v38 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v38 = v62;
              v37 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v37 = &v58;
              v38 = v62;
            }
          }

          v39 = &v38[24 * v63];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v63;
        }
      }
    }
  }

  v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v69;
      v44 = __p;
      if (v69 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v69 = v42;
      operator delete(v44);
    }

    v45 = v66;
    if (v66)
    {
      v46 = v67;
      v47 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        v47 = v66;
      }

      v67 = v45;
      operator delete(v47);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v41;
}

uint64_t mlir::mps::CastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "resultElementType", 0x11uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 62;
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

uint64_t mlir::mps::CastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "resultElementType", 0x11uLL, *a2);
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

BOOL mlir::mps::CastOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2);
}

void mlir::mps::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a5;
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + 1, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v8 = mlir::TypeAttr::get(a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

void mlir::mps::CastOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v7 = mlir::TypeAttr::get(a4);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = v7;
  __src = v26;
  v25 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CastOp::inferReturnTypes(v9, v13, v14, v23[0], v23[1], Dictionary, v12, v15, v22[0], v22[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1, v16);
  }

  v17 = __src;
  v18 = v25;
  v19 = *(a2 + 72);
  v20 = v19 + v25;
  if (v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v20, 8);
    LODWORD(v19) = *(a2 + 72);
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v19), v17, 8 * v18);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::mps::CastOp::verifyInvariantsImpl(uint64_t **this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "resultElementType", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'resultElementType'";
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

BOOL mlir::mps::ClampOp::verifyInvariantsImpl(uint64_t **this)
{
  if (!mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*((*this)[9] + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

void *llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
      mlir::mps::ConstantOp::getAsAttribute();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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

uint64_t mlir::mps::ColToImOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_81;
    }

    v33 = v86;
    v23 = v85;
    if (v86 == v85)
    {
LABEL_80:
      v86 = v21;
      operator delete(v23);
LABEL_81:
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
    goto LABEL_79;
  }

  v8 = mlir::DictionaryAttr::get(&v75, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 56;
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
        goto LABEL_81;
      }

      v22 = v86;
      v23 = v85;
      if (v86 == v85)
      {
        goto LABEL_80;
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
      goto LABEL_79;
    }

    *a1 = v8;
  }

  v36 = mlir::DictionaryAttr::get(&v75, "dilation_rates", 0xEuLL);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v78 = 59;
      v45 = &v76;
      v46 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v71 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v46 = v81;
          v45 = (v81 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v45 = &v76;
          v46 = v81;
        }
      }

      v47 = &v46[24 * v82];
      v48 = *v45;
      *(v47 + 2) = v45[2];
      *v47 = v48;
      ++v82;
      if (v79)
      {
        v49 = &v76;
        mlir::DiagnosticArgument::DiagnosticArgument(&v76, v37);
        v50 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v73 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v50 = v81;
            v49 = (v81 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v49 = &v76;
            v50 = v81;
          }
        }

        v51 = &v50[24 * v82];
        v52 = *v49;
        *(v51 + 2) = v49[2];
        *v51 = v52;
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

    v53 = __p;
    if (__p)
    {
      v54 = v88;
      v55 = __p;
      if (v88 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v88 = v53;
      operator delete(v55);
    }

    v21 = v85;
    if (!v85)
    {
      goto LABEL_81;
    }

    v56 = v86;
    v23 = v85;
    if (v86 == v85)
    {
      goto LABEL_80;
    }

    do
    {
      v58 = *--v56;
      v57 = v58;
      *v56 = 0;
      if (v58)
      {
        MEMORY[0x1AC55A040](v57, 0x1000C8077774924);
      }
    }

    while (v56 != v21);
LABEL_79:
    v23 = v85;
    goto LABEL_80;
  }

LABEL_49:
  v38 = mlir::DictionaryAttr::get(&v75, "explicit_padding", 0x10uLL);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 61;
        v59 = &v76;
        v60 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v72 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v60 = v81;
            v59 = (v81 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v59 = &v76;
            v60 = v81;
          }
        }

        v61 = &v60[24 * v82];
        v62 = *v59;
        *(v61 + 2) = v59[2];
        *v61 = v62;
        ++v82;
        if (v79)
        {
          v63 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v39);
          v64 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v74 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v64 = v81;
              v63 = (v81 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v63 = &v76;
              v64 = v81;
            }
          }

          v65 = &v64[24 * v82];
          v66 = *v63;
          *(v65 + 2) = v63[2];
          *v65 = v66;
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

    a1[2] = v39;
  }

  v40 = mlir::DictionaryAttr::get(&v75, "kernel_sizes", 0xCuLL);
  v76 = v40;
  if (v40)
  {
    v41 = v40;
    if (!mlir::DenseIntElementsAttr::classof(v40))
    {
      a3(&v79, a4);
      goto LABEL_93;
    }

    a1[3] = v41;
  }

  v42 = mlir::DictionaryAttr::get(&v75, "strides", 7uLL);
  v76 = v42;
  if (!v42)
  {
    return 1;
  }

  v43 = v42;
  if (mlir::DenseIntElementsAttr::classof(v42))
  {
    a1[4] = v43;
    return 1;
  }

  a3(&v79, a4);
LABEL_93:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v67, &v76);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
  return 0;
}

uint64_t mlir::mps::ColToImOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v41 = a1;
  v42 = v44;
  v43 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v41, "data_layout", 0xBuLL, *a2);
  v5 = v43;
  if (v43 >= HIDWORD(v43))
  {
    v31 = NamedAttr;
    v32 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
    v4 = v32;
    NamedAttr = v31;
    v5 = v43;
  }

  v6 = (v42 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v43 + 1;
  LODWORD(v43) = v43 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v41, "dilation_rates", 0xEuLL, v8);
    v11 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v33 = v9;
      v34 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v10 = v34;
      v9 = v33;
      v11 = v43;
    }

    v12 = (v42 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v41, "explicit_padding", 0x10uLL, v13);
    v16 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v35 = v14;
      v36 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v15 = v36;
      v14 = v35;
      v16 = v43;
    }

    v17 = (v42 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v41, "kernel_sizes", 0xCuLL, v18);
    v21 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v37 = v19;
      v38 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v20 = v38;
      v19 = v37;
      v21 = v43;
    }

    v22 = (v42 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v41, "strides", 7uLL, v23);
    v26 = v43;
    if (v43 >= HIDWORD(v43))
    {
      v39 = v24;
      v40 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 16);
      v25 = v40;
      v24 = v39;
      v26 = v43;
    }

    v27 = (v42 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v43 + 1;
    LODWORD(v43) = v43 + 1;
  }

  v28 = v42;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v42 == v44)
    {
      return DictionaryAttr;
    }

    goto LABEL_24;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v41, v42, v7);
  v28 = v42;
  if (v42 != v44)
  {
LABEL_24:
    free(v28);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::ColToImOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 11)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "kernel_sizes", 0xCuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::ColToImOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 11)
  {
    if (a3 == 7)
    {
      result = memcmp(__s1, "strides", 7uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[4] = v10;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
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
      case 12:
        result = memcmp(__s1, "kernel_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (!result)
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

            v5[1] = v9;
          }

          else
          {
            v5[1] = 0;
          }
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
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

            v5[2] = v11;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::ColToImOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "kernel_sizes", 0xCuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }
}

BOOL mlir::mps::ColToImOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v8, "data_layout", 0xB, a3, a4))
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v9, "dilation_rates", 14, a3, a4))
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 0x10, a3, a4))
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v11, "kernel_sizes", 12, a3, a4))
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v12, "strides", 7, a3, a4))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(_DWORD *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id && a1[2] < 2u)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v8 = &v27;
    v9 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v9 = v33;
        v8 = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = &v27;
        v9 = v33;
      }
    }

    v10 = &v9[24 * v34];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
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
        v28 = "' failed to satisfy constraint: valid TensorDataLayout is one of NCHW or NHWC";
        v29 = 77;
        v12 = &v27;
        v13 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v13 = v33;
            v12 = (v33 + v26);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = &v27;
            v13 = v33;
          }
        }

        v14 = &v13[24 * v34];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v34;
      }
    }
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
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

  return v7;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v87 = *MEMORY[0x1E69E9840];
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
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
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
      v65 = a1;
      v66 = v21;
      Type = mlir::ElementsAttr::getType(&v65);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v65 = a1;
    v66 = 0;
    Type = mlir::ElementsAttr::getType(&v65);
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
      v32 = Type;
      mlir::Builder::getI32VectorAttr();
      Type = v32;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
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
      v33 = v26[1];
LABEL_31:
      v67[0] = Type;
      v67[1] = v33;
      Shape = mlir::ShapedType::getShape(v67);
      v86 = 2;
      if (v35 == 1 && *Shape == v86)
      {
        v64 = a1;
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v72, a1, 0);
        NumElements = mlir::DenseElementsAttr::getNumElements(&v64);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v68, a1, NumElements);
        v75 = v72;
        v76 = v73;
        for (i = v69; v76 != i; *&v76 = v76 + 1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v75, &v70);
          v57 = v71;
          v71 = 0;
          if (v57 > 0x40)
          {
            v58 = *v70;
            if (v70)
            {
              MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
              if (v71 >= 0x41)
              {
                if (v70)
                {
                  MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
                }
              }
            }

            if (!v58)
            {
              goto LABEL_33;
            }
          }

          else if (!v70)
          {
            goto LABEL_33;
          }
        }

        v61 = a1;
        v62[0] = mlir::ArrayAttr::getValue(&v61);
        v62[1] = v55;
        isSplat = mlir::ElementsAttr::isSplat(v62);
        if (mlir::Type::isUnsignedInteger(&isSplat, 64))
        {
          return 1;
        }
      }

      goto LABEL_33;
    }

LABEL_30:
    v33 = 0;
    goto LABEL_31;
  }

LABEL_33:
  a4(&v75, a5);
  if (v75)
  {
    LODWORD(v72) = 3;
    *(&v72 + 1) = "attribute '";
    *&v73 = 11;
    v36 = &v72;
    v37 = *(&v76 + 1);
    if (v77 >= v78)
    {
      if (*(&v76 + 1) <= &v72 && *(&v76 + 1) + 24 * v77 > &v72)
      {
        v59 = &v72 - *(&v76 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
        v37 = *(&v76 + 1);
        v36 = &v59[*(&v76 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
        v36 = &v72;
        v37 = *(&v76 + 1);
      }
    }

    v38 = v37 + 24 * v77;
    v39 = *v36;
    *(v38 + 16) = *(v36 + 2);
    *v38 = v39;
    ++v77;
    if (v75)
    {
      v74 = 261;
      *&v72 = a2;
      *(&v72 + 1) = a3;
      mlir::Diagnostic::operator<<(&v75 + 8, &v72);
      if (v75)
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = "' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
        *&v73 = 77;
        v40 = &v72;
        v41 = *(&v76 + 1);
        if (v77 >= v78)
        {
          if (*(&v76 + 1) <= &v72 && *(&v76 + 1) + 24 * v77 > &v72)
          {
            v60 = &v72 - *(&v76 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
            v41 = *(&v76 + 1);
            v40 = &v60[*(&v76 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76 + 8, v79, v77 + 1, 24);
            v40 = &v72;
            v41 = *(&v76 + 1);
          }
        }

        v42 = v41 + 24 * v77;
        v43 = *v40;
        *(v42 + 16) = *(v40 + 2);
        *v42 = v43;
        ++v77;
      }
    }
  }

  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
  if (v75)
  {
    mlir::InFlightDiagnostic::report(&v75);
  }

  if (v85 == 1)
  {
    if (v84 != &v85)
    {
      free(v84);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v83;
      v47 = __p;
      if (v83 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v83 = v45;
      operator delete(v47);
    }

    v48 = v80;
    if (v80)
    {
      v49 = v81;
      v50 = v80;
      if (v81 != v80)
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
        v50 = v80;
      }

      v81 = v48;
      operator delete(v50);
    }

    if (*(&v76 + 1) != v79)
    {
      free(*(&v76 + 1));
    }
  }

  return v44;
}

BOOL mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(const char *a1, const char *a2, const char *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v80 = *MEMORY[0x1E69E9840];
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
      v58 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v58 + 8);
      v13 = *(v58 + 16);
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
      v63 = a1;
      v64 = v21;
      Type = mlir::ElementsAttr::getType(&v63);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v63 = a1;
    v64 = 0;
    Type = mlir::ElementsAttr::getType(&v63);
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
      v57 = v22;
      v59 = Type;
      mlir::Builder::getI32VectorAttr();
      Type = v59;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v57 + 8);
      v25 = *(v57 + 16);
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
    v67 = Type;
    v68 = v32;
    Shape = mlir::ShapedType::getShape(&v67);
    v79 = xmmword_1A7595C20;
    if (v34 == 2 && *Shape == v79 && Shape[1] == *(&v79 + 1))
    {
      v60 = a1;
      v61[0] = mlir::ArrayAttr::getValue(&v60);
      v61[1] = v36;
      isSplat = mlir::ElementsAttr::isSplat(v61);
      if (mlir::Type::isUnsignedInteger(&isSplat, 64))
      {
        return 1;
      }
    }
  }

  a4(&v67, a5);
  if (v67)
  {
    LODWORD(v63) = 3;
    v64 = "attribute '";
    v65 = 11;
    v38 = &v63;
    v39 = v69;
    if (v70 >= v71)
    {
      if (v69 <= &v63 && v69 + 24 * v70 > &v63)
      {
        v55 = &v63 - v69;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v39 = v69;
        v38 = (v69 + v55);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
        v38 = &v63;
        v39 = v69;
      }
    }

    v40 = &v39[24 * v70];
    v41 = *v38;
    *(v40 + 2) = v38[2];
    *v40 = v41;
    ++v70;
    if (v67)
    {
      v66 = 261;
      v63 = a2;
      v64 = a3;
      mlir::Diagnostic::operator<<(&v68, &v63);
      if (v67)
      {
        LODWORD(v63) = 3;
        v64 = "' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        v65 = 71;
        v42 = &v63;
        v43 = v69;
        if (v70 >= v71)
        {
          if (v69 <= &v63 && v69 + 24 * v70 > &v63)
          {
            v56 = &v63 - v69;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
            v43 = v69;
            v42 = (v69 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
            v42 = &v63;
            v43 = v69;
          }
        }

        v44 = &v43[24 * v70];
        v45 = *v42;
        *(v44 + 2) = v42[2];
        *v44 = v45;
        ++v70;
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
  if (v67)
  {
    mlir::InFlightDiagnostic::report(&v67);
  }

  if (v78 == 1)
  {
    if (v77 != &v78)
    {
      free(v77);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v76;
      v48 = __p;
      if (v76 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v76 = v46;
      operator delete(v48);
    }

    v49 = v73;
    if (v73)
    {
      v50 = v74;
      v51 = v73;
      if (v74 != v73)
      {
        do
        {
          v53 = *--v50;
          v52 = v53;
          *v50 = 0;
          if (v53)
          {
            MEMORY[0x1AC55A040](v52, 0x1000C8077774924);
          }
        }

        while (v50 != v49);
        v51 = v73;
      }

      v74 = v49;
      operator delete(v51);
    }

    if (v69 != v72)
    {
      free(v69);
    }
  }

  return v37;
}

BOOL mlir::mps::ColToImOp::readProperties(uint64_t a1, void *a2)
{
  v3 = a2[32];
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, a2[32]) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::TensorDataLayoutAttr]";
  v38 = 81;
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

BOOL mlir::mps::ColToImOp::verifyInvariantsImpl(uint64_t **this)
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = &(*this)[2 * ((*(*this + 11) >> 23) & 1)];
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v42 = *this;
            if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v7, "kernel_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42) && (v42 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v3, "data_layout", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(*this, (*(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*((*this)[9] + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
            {
              if (*(*this + 9))
              {
                v10 = (*this - 2);
              }

              else
              {
                v10 = 0;
              }

              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
              return mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v40[0] = "requires attribute 'strides'";
            v41 = 259;
            mlir::OpState::emitOpError(this, v40, &v42);
            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
            if (v42)
            {
              mlir::InFlightDiagnostic::report(&v42);
            }

            if (v51 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v43);
            }
          }

          return v12;
        }

        v40[0] = "requires attribute 'kernel_sizes'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v33 = __p;
          if (__p)
          {
            v34 = v49;
            v35 = __p;
            if (v49 != __p)
            {
              do
              {
                v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
              }

              while (v34 != v33);
              v35 = __p;
            }

            v49 = v33;
            operator delete(v35);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_84;
          }

          v36 = v47;
          v18 = v46;
          if (v47 == v46)
          {
LABEL_83:
            v47 = v16;
            operator delete(v18);
LABEL_84:
            if (v44 != &v45)
            {
              free(v44);
            }

            return v12;
          }

          do
          {
            v38 = *--v36;
            v37 = v38;
            *v36 = 0;
            if (v38)
            {
              MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
            }
          }

          while (v36 != v16);
LABEL_82:
          v18 = v46;
          goto LABEL_83;
        }
      }

      else
      {
        v40[0] = "requires attribute 'explicit_padding'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v27 = __p;
          if (__p)
          {
            v28 = v49;
            v29 = __p;
            if (v49 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v49 = v27;
            operator delete(v29);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_84;
          }

          v30 = v47;
          v18 = v46;
          if (v47 == v46)
          {
            goto LABEL_83;
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

          while (v30 != v16);
          goto LABEL_82;
        }
      }
    }

    else
    {
      v40[0] = "requires attribute 'dilation_rates'";
      v41 = 259;
      mlir::OpState::emitOpError(this, v40, &v42);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v49;
          v23 = __p;
          if (v49 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v49 = v21;
          operator delete(v23);
        }

        v16 = v46;
        if (!v46)
        {
          goto LABEL_84;
        }

        v24 = v47;
        v18 = v46;
        if (v47 == v46)
        {
          goto LABEL_83;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v16);
        goto LABEL_82;
      }
    }
  }

  else
  {
    v40[0] = "requires attribute 'data_layout'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v42);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v49;
        v15 = __p;
        if (v49 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v49 = v13;
        operator delete(v15);
      }

      v16 = v46;
      if (!v46)
      {
        goto LABEL_84;
      }

      v17 = v47;
      v18 = v46;
      if (v47 == v46)
      {
        goto LABEL_83;
      }

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
      goto LABEL_82;
    }
  }

  return v12;
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(uint64_t *isF32, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v111 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v10 + 8);
      v41 = *(v10 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v48 = v10;
      mlir::Builder::getZeroAttr();
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v48 + 8);
      v41 = *(v48 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    v42 = v40;
    v43 = v41;
    do
    {
      v44 = v43 >> 1;
      v45 = &v42[2 * (v43 >> 1)];
      v47 = *v45;
      v46 = v45 + 2;
      v43 += ~(v43 >> 1);
      if (v47 < v39)
      {
        v42 = v46;
      }

      else
      {
        v43 = v44;
      }
    }

    while (v43);
    if (v42 != &v40[2 * v41] && *v42 == v39)
    {
      v49 = v42[1];
      goto LABEL_58;
    }

LABEL_56:
    v49 = 0;
LABEL_58:
    v100[0] = a2;
    v100[1] = v49;
    isSplat = mlir::ElementsAttr::isSplat(v100);
    if (mlir::Type::isF32(&isSplat))
    {
      return 1;
    }

    v10 = *a2;
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

LABEL_62:
    {
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v10 + 8);
      v53 = *(v10 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v60 = v10;
      mlir::Builder::getI32VectorAttr();
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v60 + 8);
      v53 = *(v60 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    v54 = v52;
    v55 = v53;
    do
    {
      v56 = v55 >> 1;
      v57 = &v54[2 * (v55 >> 1)];
      v59 = *v57;
      v58 = v57 + 2;
      v55 += ~(v55 >> 1);
      if (v59 < v51)
      {
        v54 = v58;
      }

      else
      {
        v55 = v56;
      }
    }

    while (v55);
    if (v54 != &v52[2 * v53] && *v54 == v51)
    {
      v61 = v54[1];
      v92 = a2;
      v93 = v61;
      if (!mlir::ElementsAttr::getShapedType(&v92))
      {
        goto LABEL_3;
      }

      goto LABEL_77;
    }

LABEL_74:
    v92 = a2;
    v93 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v92))
    {
      goto LABEL_3;
    }

LABEL_77:
    v62 = *a2;
    {
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v62 + 8);
      v65 = *(v62 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v91 = v62;
      mlir::Builder::getI32VectorAttr();
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v91 + 8);
      v65 = *(v91 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    v66 = v64;
    v67 = v65;
    do
    {
      v68 = v67 >> 1;
      v69 = &v66[2 * (v67 >> 1)];
      v71 = *v69;
      v70 = v69 + 2;
      v67 += ~(v67 >> 1);
      if (v71 < v63)
      {
        v66 = v70;
      }

      else
      {
        v67 = v68;
      }
    }

    while (v67);
    if (v66 != &v64[2 * v65] && *v66 == v63)
    {
      v73 = v66[1];
      v97 = a2;
      v98 = v73;
      mlir::ShapedType::getShape(&v97);
      if (v74 != 3)
      {
        goto LABEL_3;
      }

      goto LABEL_92;
    }

LABEL_89:
    v97 = a2;
    v98 = 0;
    mlir::ShapedType::getShape(&v97);
    if (v72 != 3)
    {
      goto LABEL_3;
    }

LABEL_92:
    v75 = *a2;
    {
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v87 = v75;
      mlir::Builder::getI32VectorAttr();
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v87 + 8);
      v78 = *(v87 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    v79 = v77;
    v80 = v78;
    do
    {
      v81 = v80 >> 1;
      v82 = &v79[2 * (v80 >> 1)];
      v84 = *v82;
      v83 = v82 + 2;
      v80 += ~(v80 >> 1);
      if (v84 < v76)
      {
        v79 = v83;
      }

      else
      {
        v80 = v81;
      }
    }

    while (v80);
    if (v79 != &v77[2 * v78] && *v79 == v76)
    {
      v88 = v79[1];
LABEL_108:
      v95[0] = a2;
      v95[1] = v88;
      isSplat = mlir::ElementsAttr::isSplat(v95);
      if (!mlir::Type::isF32(&isSplat))
      {
        goto LABEL_3;
      }

      return 1;
    }

LABEL_106:
    v88 = 0;
    goto LABEL_108;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_62;
  }

LABEL_3:
  v94 = 261;
  v92 = a3;
  v93 = a4;
  mlir::Operation::emitOpError(isF32, &v92, v100);
  if (v100[0])
  {
    LODWORD(v97) = 3;
    v98 = " #";
    v99 = 2;
    v12 = &v97;
    v13 = v101;
    if (v102 >= v103)
    {
      if (v101 <= &v97 && v101 + 24 * v102 > &v97)
      {
        v85 = &v97 - v101;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v13 = v101;
        v12 = (v101 + v85);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v12 = &v97;
        v13 = v101;
      }
    }

    v14 = &v13[24 * v102];
    v15 = *v12;
    *(v14 + 2) = v12[2];
    *v14 = v15;
    v16 = ++v102;
    if (v100[0])
    {
      LODWORD(v97) = 5;
      v98 = a5;
      v17 = &v97;
      v18 = v101;
      if (v16 >= v103)
      {
        if (v101 <= &v97 && v101 + 24 * v16 > &v97)
        {
          v86 = &v97 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v18 = v101;
          v17 = (v101 + v86);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v17 = &v97;
          v18 = v101;
        }
      }

      v19 = &v18[24 * v102];
      v20 = *v17;
      *(v19 + 2) = v17[2];
      *v19 = v20;
      v21 = ++v102;
      if (v100[0])
      {
        LODWORD(v97) = 3;
        v98 = " must be unranked tensor of 32-bit float values or 3D tensor of 32-bit float values, but got ";
        v99 = 93;
        v22 = &v97;
        v23 = v101;
        if (v21 >= v103)
        {
          if (v101 <= &v97 && v101 + 24 * v21 > &v97)
          {
            v89 = &v97 - v101;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v23 = v101;
            v22 = (v101 + v89);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v22 = &v97;
            v23 = v101;
          }
        }

        v24 = &v23[24 * v102];
        v25 = *v22;
        *(v24 + 2) = v22[2];
        *v24 = v25;
        ++v102;
        if (v100[0])
        {
          v26 = &v97;
          mlir::DiagnosticArgument::DiagnosticArgument(&v97, a2);
          v27 = v101;
          if (v102 >= v103)
          {
            if (v101 <= &v97 && v101 + 24 * v102 > &v97)
            {
              v90 = &v97 - v101;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v27 = v101;
              v26 = (v101 + v90);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v26 = &v97;
              v27 = v101;
            }
          }

          v28 = &v27[24 * v102];
          v29 = *v26;
          *(v28 + 2) = v26[2];
          *v28 = v29;
          ++v102;
        }
      }
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
  if (v100[0])
  {
    mlir::InFlightDiagnostic::report(v100);
  }

  if (v110 == 1)
  {
    if (v109 != &v110)
    {
      free(v109);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v108;
      v33 = __p;
      if (v108 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v108 = v31;
      operator delete(v33);
    }

    v34 = v105;
    if (v105)
    {
      v35 = v106;
      v36 = v105;
      if (v106 != v105)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
          }
        }

        while (v35 != v34);
        v36 = v105;
      }

      v106 = v34;
      operator delete(v36);
    }

    if (v101 != v104)
    {
      free(v101);
    }
  }

  return v30;
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(uint64_t *isF32, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v111 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v10 + 8);
      v41 = *(v10 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v48 = v10;
      mlir::Builder::getZeroAttr();
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v48 + 8);
      v41 = *(v48 + 16);
      if (!v41)
      {
        goto LABEL_56;
      }
    }

    v42 = v40;
    v43 = v41;
    do
    {
      v44 = v43 >> 1;
      v45 = &v42[2 * (v43 >> 1)];
      v47 = *v45;
      v46 = v45 + 2;
      v43 += ~(v43 >> 1);
      if (v47 < v39)
      {
        v42 = v46;
      }

      else
      {
        v43 = v44;
      }
    }

    while (v43);
    if (v42 != &v40[2 * v41] && *v42 == v39)
    {
      v49 = v42[1];
      goto LABEL_58;
    }

LABEL_56:
    v49 = 0;
LABEL_58:
    v100[0] = a2;
    v100[1] = v49;
    isSplat = mlir::ElementsAttr::isSplat(v100);
    if (mlir::Type::isF32(&isSplat))
    {
      return 1;
    }

    v10 = *a2;
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

LABEL_62:
    {
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v10 + 8);
      v53 = *(v10 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v60 = v10;
      mlir::Builder::getI32VectorAttr();
      v51 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v52 = *(v60 + 8);
      v53 = *(v60 + 16);
      if (!v53)
      {
        goto LABEL_74;
      }
    }

    v54 = v52;
    v55 = v53;
    do
    {
      v56 = v55 >> 1;
      v57 = &v54[2 * (v55 >> 1)];
      v59 = *v57;
      v58 = v57 + 2;
      v55 += ~(v55 >> 1);
      if (v59 < v51)
      {
        v54 = v58;
      }

      else
      {
        v55 = v56;
      }
    }

    while (v55);
    if (v54 != &v52[2 * v53] && *v54 == v51)
    {
      v61 = v54[1];
      v92 = a2;
      v93 = v61;
      if (!mlir::ElementsAttr::getShapedType(&v92))
      {
        goto LABEL_3;
      }

      goto LABEL_77;
    }

LABEL_74:
    v92 = a2;
    v93 = 0;
    if (!mlir::ElementsAttr::getShapedType(&v92))
    {
      goto LABEL_3;
    }

LABEL_77:
    v62 = *a2;
    {
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v62 + 8);
      v65 = *(v62 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v91 = v62;
      mlir::Builder::getI32VectorAttr();
      v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v64 = *(v91 + 8);
      v65 = *(v91 + 16);
      if (!v65)
      {
        goto LABEL_89;
      }
    }

    v66 = v64;
    v67 = v65;
    do
    {
      v68 = v67 >> 1;
      v69 = &v66[2 * (v67 >> 1)];
      v71 = *v69;
      v70 = v69 + 2;
      v67 += ~(v67 >> 1);
      if (v71 < v63)
      {
        v66 = v70;
      }

      else
      {
        v67 = v68;
      }
    }

    while (v67);
    if (v66 != &v64[2 * v65] && *v66 == v63)
    {
      v73 = v66[1];
      v97 = a2;
      v98 = v73;
      mlir::ShapedType::getShape(&v97);
      if (v74 != 4)
      {
        goto LABEL_3;
      }

      goto LABEL_92;
    }

LABEL_89:
    v97 = a2;
    v98 = 0;
    mlir::ShapedType::getShape(&v97);
    if (v72 != 4)
    {
      goto LABEL_3;
    }

LABEL_92:
    v75 = *a2;
    {
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v87 = v75;
      mlir::Builder::getI32VectorAttr();
      v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v77 = *(v87 + 8);
      v78 = *(v87 + 16);
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    v79 = v77;
    v80 = v78;
    do
    {
      v81 = v80 >> 1;
      v82 = &v79[2 * (v80 >> 1)];
      v84 = *v82;
      v83 = v82 + 2;
      v80 += ~(v80 >> 1);
      if (v84 < v76)
      {
        v79 = v83;
      }

      else
      {
        v80 = v81;
      }
    }

    while (v80);
    if (v79 != &v77[2 * v78] && *v79 == v76)
    {
      v88 = v79[1];
LABEL_108:
      v95[0] = a2;
      v95[1] = v88;
      isSplat = mlir::ElementsAttr::isSplat(v95);
      if (!mlir::Type::isF32(&isSplat))
      {
        goto LABEL_3;
      }

      return 1;
    }

LABEL_106:
    v88 = 0;
    goto LABEL_108;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_62;
  }

LABEL_3:
  v94 = 261;
  v92 = a3;
  v93 = a4;
  mlir::Operation::emitOpError(isF32, &v92, v100);
  if (v100[0])
  {
    LODWORD(v97) = 3;
    v98 = " #";
    v99 = 2;
    v12 = &v97;
    v13 = v101;
    if (v102 >= v103)
    {
      if (v101 <= &v97 && v101 + 24 * v102 > &v97)
      {
        v85 = &v97 - v101;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v13 = v101;
        v12 = (v101 + v85);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
        v12 = &v97;
        v13 = v101;
      }
    }

    v14 = &v13[24 * v102];
    v15 = *v12;
    *(v14 + 2) = v12[2];
    *v14 = v15;
    v16 = ++v102;
    if (v100[0])
    {
      LODWORD(v97) = 5;
      v98 = a5;
      v17 = &v97;
      v18 = v101;
      if (v16 >= v103)
      {
        if (v101 <= &v97 && v101 + 24 * v16 > &v97)
        {
          v86 = &v97 - v101;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v18 = v101;
          v17 = (v101 + v86);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v16 + 1, 24);
          v17 = &v97;
          v18 = v101;
        }
      }

      v19 = &v18[24 * v102];
      v20 = *v17;
      *(v19 + 2) = v17[2];
      *v19 = v20;
      v21 = ++v102;
      if (v100[0])
      {
        LODWORD(v97) = 3;
        v98 = " must be unranked tensor of 32-bit float values or 4D tensor of 32-bit float values, but got ";
        v99 = 93;
        v22 = &v97;
        v23 = v101;
        if (v21 >= v103)
        {
          if (v101 <= &v97 && v101 + 24 * v21 > &v97)
          {
            v89 = &v97 - v101;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v23 = v101;
            v22 = (v101 + v89);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v21 + 1, 24);
            v22 = &v97;
            v23 = v101;
          }
        }

        v24 = &v23[24 * v102];
        v25 = *v22;
        *(v24 + 2) = v22[2];
        *v24 = v25;
        ++v102;
        if (v100[0])
        {
          v26 = &v97;
          mlir::DiagnosticArgument::DiagnosticArgument(&v97, a2);
          v27 = v101;
          if (v102 >= v103)
          {
            if (v101 <= &v97 && v101 + 24 * v102 > &v97)
            {
              v90 = &v97 - v101;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v27 = v101;
              v26 = (v101 + v90);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v101, v104, v102 + 1, 24);
              v26 = &v97;
              v27 = v101;
            }
          }

          v28 = &v27[24 * v102];
          v29 = *v26;
          *(v28 + 2) = v26[2];
          *v28 = v29;
          ++v102;
        }
      }
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
  if (v100[0])
  {
    mlir::InFlightDiagnostic::report(v100);
  }

  if (v110 == 1)
  {
    if (v109 != &v110)
    {
      free(v109);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v108;
      v33 = __p;
      if (v108 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v108 = v31;
      operator delete(v33);
    }

    v34 = v105;
    if (v105)
    {
      v35 = v106;
      v36 = v105;
      if (v106 != v105)
      {
        do
        {
          v38 = *--v35;
          v37 = v38;
          *v35 = 0;
          if (v38)
          {
            MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
          }
        }

        while (v35 != v34);
        v36 = v105;
      }

      v106 = v34;
      operator delete(v36);
    }

    if (v101 != v104)
    {
      free(v101);
    }
  }

  return v30;
}

uint64_t mlir::mps::ConcatOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v40, "interleave", 0xAuLL);
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

uint64_t mlir::mps::ConcatOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "interleave", 0xAuLL, *a2);
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

BOOL mlir::mps::ConcatOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

BOOL mlir::mps::ConcatOp::verifyInvariantsImpl(uint64_t **this)
{
  v2 = *this;
  v3 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v20 = v2;
  if (!mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "interleave", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v20))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v7 = 0;
    v6 = 0xFFFFFFFFLL;
LABEL_5:
    v8 = 0;
    v9 = v7 + 24;
    while (mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(*this, (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v8))
    {
      ++v8;
      v9 += 32;
      if (v6 == v8)
      {
        v4 = *this;
        if ((*(*this + 46) & 0x80) != 0)
        {
          goto LABEL_11;
        }

        v10 = 0;
        v11 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }
    }

    return 0;
  }

  v5 = *(v4 + 17);
  v6 = (v5 - 1);
  if (v5 != 1)
  {
    v7 = v4[9];
    goto LABEL_5;
  }

  LODWORD(v8) = 0;
LABEL_11:
  v10 = v4[9];
  v11 = (*(v4 + 17) - 1);
LABEL_12:
  v12 = (v11 + 1);
  v13 = v12 - v11;
  if (v12 != v11)
  {
    v14 = v10 + 32 * v11 + 24;
    while (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v8))
    {
      LODWORD(v8) = v8 + 1;
      v14 += 32;
      if (!--v13)
      {
        v4 = *this;
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v15 = *(v4 + 9);
  v16 = v4 - 2;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  {
    v73 = a1;
    v21 = v9;
    mlir::Builder::getZeroAttr();
    a1 = v73;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v21 + 8);
    v14 = *(v21 + 16);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = a1;
    v23 = 0;
    goto LABEL_20;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v9 + 8);
  v14 = *(v9 + 16);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_18;
  }

  v22 = a1;
  v23 = v15[1];
LABEL_20:
  v83[0] = a2;
  v83[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 136);
  a1 = v22;
LABEL_34:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_55;
  }

  {
    v34 = a1;
    v35 = v9;
    mlir::Builder::getI32VectorAttr();
    a1 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v35 + 8);
    v27 = *(v35 + 16);
    if (v27)
    {
      goto LABEL_41;
    }

LABEL_51:
    v36 = a1;
    v37 = 0;
    goto LABEL_53;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = *(v9 + 8);
  v27 = *(v9 + 16);
  if (!v27)
  {
    goto LABEL_51;
  }

LABEL_41:
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
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_51;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_53:
  v74 = a2;
  v75 = v37;
  v38 = mlir::ElementsAttr::isSplat(&v74);
  if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v66 = v38;
    v79 = v38;
    isSplat = mlir::AffineMapAttr::getValue(&v79);
    if (!mlir::Type::isF16(&isSplat))
    {
      v77 = v66;
      Value = mlir::AffineMapAttr::getValue(&v77);
      isF32 = mlir::Type::isF32(&Value);
      a1 = v36;
      if (!isF32)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_55:
  v76 = 261;
  v74 = a3;
  v75 = a4;
  mlir::Operation::emitOpError(a1, &v74, v83);
  if (v83[0])
  {
    LODWORD(isSplat) = 3;
    v81 = " #";
    v82 = 2;
    p_isSplat = &isSplat;
    v40 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
      {
        v69 = &isSplat - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v40 = v84;
        p_isSplat = (v84 + v69);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        p_isSplat = &isSplat;
        v40 = v84;
      }
    }

    v41 = &v40[24 * v85];
    v42 = *p_isSplat;
    *(v41 + 2) = p_isSplat[2];
    *v41 = v42;
    v43 = ++v85;
    if (v83[0])
    {
      LODWORD(isSplat) = 5;
      v81 = a5;
      v44 = &isSplat;
      v45 = v84;
      if (v43 >= v86)
      {
        if (v84 <= &isSplat && v84 + 24 * v43 > &isSplat)
        {
          v70 = &isSplat - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v45 = v84;
          v44 = (v84 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v44 = &isSplat;
          v45 = v84;
        }
      }

      v46 = &v45[24 * v85];
      v47 = *v44;
      *(v46 + 2) = v44[2];
      *v46 = v47;
      v48 = ++v85;
      if (v83[0])
      {
        LODWORD(isSplat) = 3;
        v81 = " must be variadic of tensor of mps native type values or tensor of complex values, but got ";
        v82 = 91;
        v49 = &isSplat;
        v50 = v84;
        if (v48 >= v86)
        {
          if (v84 <= &isSplat && v84 + 24 * v48 > &isSplat)
          {
            v71 = &isSplat - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v50 = v84;
            v49 = (v84 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v49 = &isSplat;
            v50 = v84;
          }
        }

        v51 = &v50[24 * v85];
        v52 = *v49;
        *(v51 + 2) = v49[2];
        *v51 = v52;
        ++v85;
        if (v83[0])
        {
          v53 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, a2);
          v54 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
            {
              v72 = &isSplat - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v54 = v84;
              v53 = (v84 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v53 = &isSplat;
              v54 = v84;
            }
          }

          v55 = &v54[24 * v85];
          v56 = *v53;
          *(v55 + 2) = v53[2];
          *v55 = v56;
          ++v85;
        }
      }
    }
  }

  v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v83);
  if (v83[0])
  {
    mlir::InFlightDiagnostic::report(v83);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v91;
      v60 = __p;
      if (v91 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v91 = v58;
      operator delete(v60);
    }

    v61 = v88;
    if (v88)
    {
      v62 = v89;
      v63 = v88;
      if (v89 != v88)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            MEMORY[0x1AC55A040](v64, 0x1000C8077774924);
          }
        }

        while (v62 != v61);
        v63 = v88;
      }

      v89 = v61;
      operator delete(v63);
    }

    if (v84 != v87)
    {
      free(v84);
    }
  }

  return v57;
}

uint64_t mlir::mps::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64;
  v4 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(*v4 + 136);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    v7 = v5 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id ? v4 : 0;
    v18 = v7;
    if (v6)
    {
      v11 = v4[2];
      v13 = a2;
      Context = mlir::Attribute::getContext(&v18);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v15);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v11 + 88);
      llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
      a2 = v13;
      v2 = a1;
      v8 = *(v13 + 44);
      v9 = v8 & 0x7FFFFF;
      if ((v8 & 0x7FFFFF) != 0)
      {
        goto LABEL_7;
      }

LABEL_9:
      v10 = 0;
      v9 = 0;
      goto LABEL_10;
    }
  }

  v8 = *(a2 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = ((v3 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
LABEL_10:
  mlir::ValueRange::ValueRange((v2 + 32), v10, v9);
  return v2;
}

uint64_t mlir::mps::ConstantOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v29 = v4;
  if (v4)
  {
    v6 = mlir::DictionaryAttr::get(&v29, "value", 5uLL);
    if (v6)
    {
      v7 = *(*v6 + 136);
      v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
      if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      v33[0] = v9;
      if (v8)
      {
        v10 = v6[2];
        v11 = v6;
        Context = mlir::Attribute::getContext(v33);
        Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v13);
        llvm::sys::RWMutexImpl::lock((Manager + 48));
        ++*(v10 + 88);
        llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
        v6 = v11;
      }

      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v33, a4);
    if (v33[0])
    {
      v30 = 3;
      v31 = "expected DictionaryAttr to set properties";
      v32 = 41;
      v16 = &v30;
      v17 = v34;
      if (v35 >= v36)
      {
        if (v34 <= &v30 && v34 + 24 * v35 > &v30)
        {
          v28 = &v30 - v34;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v17 = v34;
          v16 = (v34 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
          v16 = &v30;
          v17 = v34;
        }
      }

      v18 = &v17[24 * v35];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      ++v35;
      if (v33[0])
      {
        mlir::InFlightDiagnostic::report(v33);
      }
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

      v23 = v38;
      if (v38)
      {
        v24 = v39;
        v25 = v38;
        if (v39 != v38)
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
          v25 = v38;
        }

        v39 = v23;
        operator delete(v25);
      }

      if (v34 != v37)
      {
        free(v34);
      }
    }

    return 0;
  }
}

uint64_t mlir::mps::ConstantOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, mlir::MLIRContext *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  v2 = *a2;
  if (!*a2)
  {
    v2 = mlir::UnitAttr::get(a1, a2);
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v14, "value", 5uLL, v2);
  v5 = v16;
  if (v16 >= HIDWORD(v16))
  {
    v12 = NamedAttr;
    v13 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v16 + 1, 16);
    v4 = v13;
    NamedAttr = v12;
    v5 = v16;
  }

  v6 = (v15 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = __CFADD__(v16, 1);
  v8 = (v16 + 1);
  LODWORD(v16) = v16 + 1;
  if (v7)
  {
    DictionaryAttr = 0;
    v10 = v15;
    if (v15 == v17)
    {
      return DictionaryAttr;
    }

    goto LABEL_10;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v15, v8);
  v10 = v15;
  if (v15 != v17)
  {
LABEL_10:
    free(v10);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::ConstantOp::computePropertiesHash(unint64_t *a1)
{
  v1 = *a1;
  if (*(**a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v4 = llvm::hash_value(**(v1 + 16), *(*(v1 + 16) + 8));
    v5 = HIDWORD(*(v1 + 40));
    v6 = 0x9DDFEA08EB382D69 * ((8 * *(v1 + 40) - 0xAE502812AA7333) ^ v5);
    v7 = (0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47);
    v8 = HIDWORD(*(v1 + 8));
    v9 = 0x9DDFEA08EB382D69 * ((8 * *(v1 + 8) - 0xAE502812AA7333) ^ v8);
    v10 = 0x86D804B173C04367 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
    v11 = __ROR8__(0xB492B66FBE98F273 * v4 - 0x9DDFEA08EB382D69 * v7, 43) + 0x6C105E72878303FFLL * v7 + __ROR8__(v10 ^ 0xFF51AFD7ED558CCDLL, 30);
    v2 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * v4 + __ROR8__((0x9DDFEA08EB382D69 * v7) ^ 0xC949D7C7509E6557, 20) - v10 + 24;
    v3 = v11 ^ v2;
  }

  else
  {
    v2 = HIDWORD(v1);
    v3 = (8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1);
  }

  v12 = 0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * v3) >> 47) ^ (0x9DDFEA08EB382D69 * v3));
  v13 = v12 ^ (v12 >> 47);
  v14 = ((0x9DDFEA08EB382D69 * v13) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (((0x759C16B48 * v13) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
}

uint64_t mlir::mps::ConstantOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  v12 = 0;
  if (((*(*a1 + 48))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  v3 = v12;
  if (v12)
  {
    v4 = *(*v12 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

    v13 = v6;
    if (v5)
    {
      v7 = v12[2];
      Context = mlir::Attribute::getContext(&v13);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v9);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v7 + 88);
      llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    }
  }

  *v2 = v3;
  return 1;
}

void mlir::mps::ConstantOp::build(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  if (a3 && ((v6 = *(*a3 + 136), v7 = v6 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v6 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id) ? (v8 = 0) : (v8 = a3), v17 = v8, v7))
  {
    v10 = a3[2];
    Context = mlir::Attribute::getContext(&v17);
    Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v12);
    llvm::sys::RWMutexImpl::lock((Manager + 48));
    ++*(v10 + 88);
    llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    v9 = *(a2 + 256);
    if (!v9)
    {
LABEL_7:
      operator new();
    }
  }

  else
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  *v9 = a3;
  Type = mlir::ElementsAttr::getType(v16);
  {
    mlir::Builder::getI32VectorAttr();
    v15 = *(a2 + 72);
    if (v15 < *(a2 + 76))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

LABEL_13:
  *(*(a2 + 64) + 8 * v15) = Type;
  ++*(a2 + 72);
}

void mlir::mps::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4 || ((v7 = *(*a4 + 136), v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v7 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id) ? (v9 = 0) : (v9 = a4), v16 = v9, !v8))
  {
    v10 = *(a2 + 256);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator new();
  }

  v12 = a4[2];
  Context = mlir::Attribute::getContext(&v16);
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v14);
  llvm::sys::RWMutexImpl::lock((Manager + 48));
  ++*(v12 + 88);
  llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
  v10 = *(a2 + 256);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  *v10 = a4;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
}

void mlir::mps::ConstantOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 1);
  v12 = mlir::RankedTensorType::get(v14, 1, IntegerType, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(&v12);
  v13 = mlir::DenseElementsAttr::getFromRawBuffer(v8, v9, a3, 8 * a4);
  v10 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v13);
  mlir::mps::ConstantOp::build(v10, a2, v10, v11);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps13(uint64_t *a1, const char *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  v98 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_52;
  }

  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v7 + 8);
    v12 = *(v7 + 16);
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v75 = a1;
    v19 = a4;
    v20 = a3;
    mlir::Builder::getZeroAttr();
    a3 = v20;
    a4 = v19;
    a1 = v75;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v7 + 8);
    v12 = *(v7 + 16);
    if (!v12)
    {
      goto LABEL_18;
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
    v21 = a3;
    v22 = a4;
    v23 = a1;
    v24 = v13[1];
    goto LABEL_20;
  }

LABEL_18:
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = 0;
LABEL_20:
  v87[0] = a2;
  v87[1] = v24;
  isSplat = mlir::ElementsAttr::isSplat(v87);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    return 1;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    return 1;
  }

  if (mlir::Type::isBF16(&isSplat))
  {
    return 1;
  }

  v25 = *(*isSplat + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  if (v25 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v82 = isSplat;
    Value = mlir::AffineMapAttr::getValue(&v82);
    if (mlir::Type::isF16(&Value))
    {
      return 1;
    }

    v80 = isSplat;
    v81 = mlir::AffineMapAttr::getValue(&v80);
    if (mlir::Type::isF32(&v81))
    {
      return 1;
    }
  }

  if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 3) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 6) || mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    return 1;
  }

  v8 = *(*a2 + 136);
  a1 = v23;
  a4 = v22;
  v7 = *a2;
  a3 = v21;
LABEL_52:
  if (v8 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v54 = *(v7 + 8);
      v55 = *(v7 + 16);
      if (!v55)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v76 = a1;
      v62 = a4;
      v63 = a3;
      mlir::Builder::getI32VectorAttr();
      a3 = v63;
      a4 = v62;
      a1 = v76;
      v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v54 = *(v7 + 8);
      v55 = *(v7 + 16);
      if (!v55)
      {
        goto LABEL_109;
      }
    }

    v56 = v54;
    v57 = v55;
    do
    {
      v58 = v57 >> 1;
      v59 = &v56[2 * (v57 >> 1)];
      v61 = *v59;
      v60 = v59 + 2;
      v57 += ~(v57 >> 1);
      if (v61 < v53)
      {
        v56 = v60;
      }

      else
      {
        v57 = v58;
      }
    }

    while (v57);
    if (v56 != &v54[2 * v55] && *v56 == v53)
    {
      v64 = a3;
      v65 = a4;
      v66 = a1;
      v67 = v56[1];
LABEL_111:
      v77 = a2;
      v78 = v67;
      isSplat = mlir::ElementsAttr::isSplat(&v77);
      if (!mlir::Type::isSignlessInteger(&isSplat, 1) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 64) && !mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat))
      {
        v68 = *(*isSplat + 136);
        if (v68 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          if (v68 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v82 = isSplat, Value = mlir::AffineMapAttr::getValue(&v82), !mlir::Type::isF16(&Value)) && (v80 = isSplat, v81 = mlir::AffineMapAttr::getValue(&v80), !mlir::Type::isF32(&v81)))
          {
            if (!mlir::Type::isSignedInteger(&isSplat, 2) && !mlir::Type::isSignedInteger(&isSplat, 4) && !mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isUnsignedInteger(&isSplat, 1) && !mlir::Type::isUnsignedInteger(&isSplat, 2) && !mlir::Type::isUnsignedInteger(&isSplat, 4) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32) && *(*isSplat + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isUnsignedInteger(&isSplat, 2) && !mlir::Type::isUnsignedInteger(&isSplat, 3) && !mlir::Type::isUnsignedInteger(&isSplat, 4) && !mlir::Type::isUnsignedInteger(&isSplat, 6))
            {
              isUnsignedInteger = mlir::Type::isUnsignedInteger(&isSplat, 8);
              a1 = v66;
              a4 = v65;
              a3 = v64;
              if (!isUnsignedInteger)
              {
                goto LABEL_53;
              }
            }
          }
        }
      }

      return 1;
    }

LABEL_109:
    v64 = a3;
    v65 = a4;
    v66 = a1;
    v67 = 0;
    goto LABEL_111;
  }

LABEL_53:
  v79 = 261;
  v77 = a3;
  v78 = a4;
  mlir::Operation::emitOpError(a1, &v77, v87);
  if (v87[0])
  {
    LODWORD(isSplat) = 3;
    v85 = " #";
    v86 = 2;
    p_isSplat = &isSplat;
    v27 = v88;
    if (v89 >= v90)
    {
      if (v88 <= &isSplat && v88 + 24 * v89 > &isSplat)
      {
        v71 = &isSplat - v88;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        v27 = v88;
        p_isSplat = (v88 + v71);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        p_isSplat = &isSplat;
        v27 = v88;
      }
    }

    v28 = &v27[24 * v89];
    v29 = *p_isSplat;
    *(v28 + 2) = p_isSplat[2];
    *v28 = v29;
    v30 = ++v89;
    if (v87[0])
    {
      LODWORD(isSplat) = 5;
      v85 = a5;
      v31 = &isSplat;
      v32 = v88;
      if (v30 >= v90)
      {
        if (v88 <= &isSplat && v88 + 24 * v30 > &isSplat)
        {
          v72 = &isSplat - v88;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v30 + 1, 24);
          v32 = v88;
          v31 = (v88 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v30 + 1, 24);
          v31 = &isSplat;
          v32 = v88;
        }
      }

      v33 = &v32[24 * v89];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v89;
      if (v87[0])
      {
        LODWORD(isSplat) = 3;
        v85 = " must be tensor of mps native type or complex or quantized or palette LUT index values or memref of mps native type or complex or quantized or palette LUT index values, but got ";
        v86 = 177;
        v36 = &isSplat;
        v37 = v88;
        if (v35 >= v90)
        {
          if (v88 <= &isSplat && v88 + 24 * v35 > &isSplat)
          {
            v73 = &isSplat - v88;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v35 + 1, 24);
            v37 = v88;
            v36 = (v88 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v35 + 1, 24);
            v36 = &isSplat;
            v37 = v88;
          }
        }

        v38 = &v37[24 * v89];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v89;
        if (v87[0])
        {
          v40 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, a2);
          v41 = v88;
          if (v89 >= v90)
          {
            if (v88 <= &isSplat && v88 + 24 * v89 > &isSplat)
            {
              v74 = &isSplat - v88;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v41 = v88;
              v40 = (v88 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v40 = &isSplat;
              v41 = v88;
            }
          }

          v42 = &v41[24 * v89];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v89;
        }
      }
    }
  }

  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
  if (v87[0])
  {
    mlir::InFlightDiagnostic::report(v87);
  }

  if (v97 == 1)
  {
    if (v96 != &v97)
    {
      free(v96);
    }

    v45 = __p;
    if (__p)
    {
      v46 = v95;
      v47 = __p;
      if (v95 != __p)
      {
        do
        {
          v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
        }

        while (v46 != v45);
        v47 = __p;
      }

      v95 = v45;
      operator delete(v47);
    }

    v48 = v92;
    if (v92)
    {
      v49 = v93;
      v50 = v92;
      if (v93 != v92)
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
        v50 = v92;
      }

      v93 = v48;
      operator delete(v50);
    }

    if (v88 != v91)
    {
      free(v88);
    }
  }

  return v44;
}