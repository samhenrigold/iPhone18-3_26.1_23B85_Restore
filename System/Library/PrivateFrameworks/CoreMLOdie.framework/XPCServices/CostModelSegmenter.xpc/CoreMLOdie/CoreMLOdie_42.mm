BOOL mlir::ODIE::Compiler::CoreML::SpaceToBatch::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10020FDD4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || !sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_10021189C(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_10020FDD4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = sub_10020BDF0(&v25);
    v28[1] = v5;
    mlir::ShapedType::getShape(v28);
    v7 = v6;
    v24 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v26[0] = sub_10020BDF0(&v24);
    v26[1] = v8;
    mlir::ShapedType::getShape(v26);
    if (v7 == v9)
    {
      return sub_100211FE8(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "decomposition", 13, 0);
    }

    v26[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
    v27 = 259;
    mlir::OpState::emitOpError(v28, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
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
            v20 = sub_100052FFC(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_47;
      }

      v22 = v32;
      v17 = v31;
      if (v32 == v31)
      {
LABEL_46:
        v32 = v15;
        operator delete(v17);
        result = v11;
LABEL_47:
        if (v29 != &v30)
        {
          free(v29);
          return v11;
        }

        return result;
      }

      do
      {
        v23 = *--v22;
        *v22 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v22 != v15);
LABEL_45:
      v17 = v31;
      goto LABEL_46;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v27 = 259;
    mlir::OpState::emitOpError(v28, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v34;
        v14 = __p;
        if (v34 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v34 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_47;
      }

      v16 = v32;
      v17 = v31;
      if (v32 == v31)
      {
        goto LABEL_46;
      }

      do
      {
        v18 = *--v16;
        *v16 = 0;
        if (v18)
        {
          operator delete[]();
        }
      }

      while (v16 != v15);
      goto LABEL_45;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::SpaceToBatch::parse(mlir::ODIE::Compiler::CoreML::SpaceToBatch *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v3 = &v5;
  v4 = 0x400000000;
  operator new();
}

uint64_t mlir::ODIE::Compiler::CoreML::SpaceToBatch::verifyRegions(unsigned int **this)
{
  v1 = *this;
  v2 = *(((&v1[4 * ((v1[11] >> 23) & 1) + 17] + ((v1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v1[10] + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  return sub_1002126F0(v1, v3);
}

BOOL mlir::ODIE::Compiler::CoreML::SplitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    if (*(v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_4;
    }

    goto LABEL_128;
  }

  {
    v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v32 = *(v4 + 8);
    v33 = *(v4 + 16);
    if (!v33)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v55 = v4;
    sub_100289E80();
    v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v32 = *(v55 + 8);
    v33 = *(v55 + 16);
    if (!v33)
    {
      goto LABEL_91;
    }
  }

  v34 = v32;
  v35 = v33;
  do
  {
    v36 = v35 >> 1;
    v37 = &v34[2 * (v35 >> 1)];
    v39 = *v37;
    v38 = v37 + 2;
    v35 += ~(v35 >> 1);
    if (v39 < v31)
    {
      v34 = v38;
    }

    else
    {
      v35 = v36;
    }
  }

  while (v35);
  if (v34 == &v32[2 * v33] || *v34 != v31)
  {
LABEL_91:
    v134 = v3;
    v135 = 0;
    hasRank = mlir::ShapedType::hasRank(&v134);
    v4 = *v3;
    if (!hasRank)
    {
      goto LABEL_3;
    }

    goto LABEL_94;
  }

  v57 = v34[1];
  v134 = v3;
  v135 = v57;
  v58 = mlir::ShapedType::hasRank(&v134);
  v4 = *v3;
  if (!v58)
  {
    goto LABEL_3;
  }

LABEL_94:
  {
    v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v60 = *(v4 + 8);
    v61 = *(v4 + 16);
    if (!v61)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v121 = v4;
    sub_100289E80();
    v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v60 = *(v121 + 8);
    v61 = *(v121 + 16);
    if (!v61)
    {
      goto LABEL_106;
    }
  }

  v62 = v60;
  v63 = v61;
  do
  {
    v64 = v63 >> 1;
    v65 = &v62[2 * (v63 >> 1)];
    v67 = *v65;
    v66 = v65 + 2;
    v63 += ~(v63 >> 1);
    if (v67 < v59)
    {
      v62 = v66;
    }

    else
    {
      v63 = v64;
    }
  }

  while (v63);
  if (v62 == &v60[2 * v61] || *v62 != v59)
  {
LABEL_106:
    v122 = v3;
    v123 = 0;
    mlir::ShapedType::getShape(&v122);
    v4 = *v3;
    if (v68)
    {
      goto LABEL_3;
    }

    goto LABEL_109;
  }

  v69 = v62[1];
  v122 = v3;
  v123 = v69;
  mlir::ShapedType::getShape(&v122);
  v4 = *v3;
  if (v70)
  {
    goto LABEL_3;
  }

LABEL_109:
  {
    v71 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v72 = *(v4 + 8);
    v73 = *(v4 + 16);
    if (v73)
    {
      goto LABEL_111;
    }

LABEL_120:
    v73 = 0;
    v74 = v72;
    goto LABEL_121;
  }

  v82 = v4;
  sub_100289E80();
  v71 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v72 = *(v82 + 8);
  v73 = *(v82 + 16);
  if (!v73)
  {
    goto LABEL_120;
  }

LABEL_111:
  v74 = v72;
  v75 = v73;
  do
  {
    v76 = v75 >> 1;
    v77 = &v74[2 * (v75 >> 1)];
    v79 = *v77;
    v78 = v77 + 2;
    v75 += ~(v75 >> 1);
    if (v79 < v71)
    {
      v74 = v78;
    }

    else
    {
      v75 = v76;
    }
  }

  while (v75);
LABEL_121:
  if (v74 != &v72[2 * v73] && *v74 == v71)
  {
    v83 = v74[1];
  }

  else
  {
    v83 = 0;
  }

  v131 = v3;
  v132 = v83;
  ElementType = mlir::ShapedType::getElementType(&v131);
  if (mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32))
  {
    goto LABEL_43;
  }

  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_4;
  }

LABEL_128:
  {
    v84 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v85 = *(v4 + 8);
    v86 = *(v4 + 16);
    if (!v86)
    {
      goto LABEL_140;
    }
  }

  else
  {
    v93 = v4;
    sub_100289E80();
    v84 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v85 = *(v93 + 8);
    v86 = *(v93 + 16);
    if (!v86)
    {
      goto LABEL_140;
    }
  }

  v87 = v85;
  v88 = v86;
  do
  {
    v89 = v88 >> 1;
    v90 = &v87[2 * (v88 >> 1)];
    v92 = *v90;
    v91 = v90 + 2;
    v88 += ~(v88 >> 1);
    if (v92 < v84)
    {
      v87 = v91;
    }

    else
    {
      v88 = v89;
    }
  }

  while (v88);
  if (v87 == &v85[2 * v86] || *v87 != v84)
  {
LABEL_140:
    v128 = v3;
    v129 = 0;
    if (!mlir::ShapedType::hasRank(&v128))
    {
      goto LABEL_4;
    }

    goto LABEL_143;
  }

  v94 = v87[1];
  v128 = v3;
  v129 = v94;
  if (!mlir::ShapedType::hasRank(&v128))
  {
    goto LABEL_4;
  }

LABEL_143:
  v95 = *v3;
  {
    v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v97 = *(v95 + 8);
    v98 = *(v95 + 16);
    if (!v98)
    {
      goto LABEL_155;
    }
  }

  else
  {
    sub_100289E80();
    v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v97 = *(v95 + 8);
    v98 = *(v95 + 16);
    if (!v98)
    {
      goto LABEL_155;
    }
  }

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
  if (v99 != &v97[2 * v98] && *v99 == v96)
  {
    v106 = v99[1];
    v126 = v3;
    v127 = v106;
    mlir::ShapedType::getShape(&v126);
    if (v107 == 1)
    {
      goto LABEL_158;
    }

    goto LABEL_4;
  }

LABEL_155:
  v126 = v3;
  v127 = 0;
  mlir::ShapedType::getShape(&v126);
  if (v105 == 1)
  {
LABEL_158:
    v108 = *v3;
    {
      v109 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v110 = *(v108 + 8);
      v111 = *(v108 + 16);
      if (!v111)
      {
        goto LABEL_170;
      }
    }

    else
    {
      sub_100289E80();
      v109 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v110 = *(v108 + 8);
      v111 = *(v108 + 16);
      if (!v111)
      {
        goto LABEL_170;
      }
    }

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
    if (v112 != &v110[2 * v111] && *v112 == v109)
    {
      v118 = v112[1];
      goto LABEL_172;
    }

LABEL_170:
    v118 = 0;
LABEL_172:
    v125[0] = v3;
    v125[1] = v118;
    ElementType = mlir::ShapedType::getElementType(v125);
    if (mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32))
    {
      goto LABEL_43;
    }
  }

LABEL_4:
  v124 = 261;
  v122 = "operand";
  v123 = 7;
  mlir::Operation::emitOpError(&v134, v2, &v122);
  if (v134)
  {
    LODWORD(v131) = 3;
    v132 = " #";
    v133 = 2;
    v5 = &v131;
    v6 = v136;
    if (v137 >= v138)
    {
      if (v136 <= &v131 && v136 + 24 * v137 > &v131)
      {
        v80 = &v131 - v136;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v137 + 1, 24);
        v6 = v136;
        v5 = (v136 + v80);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v137 + 1, 24);
        v5 = &v131;
        v6 = v136;
      }
    }

    v7 = &v6[24 * v137];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    v9 = ++v137;
    if (v134)
    {
      LODWORD(v131) = 5;
      v132 = 1;
      v10 = &v131;
      v11 = v136;
      if (v9 >= v138)
      {
        if (v136 <= &v131 && v136 + 24 * v9 > &v131)
        {
          v81 = &v131 - v136;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v9 + 1, 24);
          v11 = v136;
          v10 = (v136 + v81);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v9 + 1, 24);
          v10 = &v131;
          v11 = v136;
        }
      }

      v12 = &v11[24 * v137];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      v14 = ++v137;
      if (v134)
      {
        LODWORD(v131) = 3;
        v132 = " must be 0D tensor of Index type. values or 1D tensor of Index type. values, but got ";
        v133 = 85;
        v15 = &v131;
        v16 = v136;
        if (v14 >= v138)
        {
          if (v136 <= &v131 && v136 + 24 * v14 > &v131)
          {
            v119 = &v131 - v136;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v14 + 1, 24);
            v16 = v136;
            v15 = (v136 + v119);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v14 + 1, 24);
            v15 = &v131;
            v16 = v136;
          }
        }

        v17 = &v16[24 * v137];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v137;
        if (v134)
        {
          v19 = &v131;
          mlir::DiagnosticArgument::DiagnosticArgument(&v131, v3);
          v20 = v136;
          if (v137 >= v138)
          {
            if (v136 <= &v131 && v136 + 24 * v137 > &v131)
            {
              v120 = &v131 - v136;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v137 + 1, 24);
              v20 = v136;
              v19 = (v136 + v120);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v139, v137 + 1, 24);
              v19 = &v131;
              v20 = v136;
            }
          }

          v21 = &v20[24 * v137];
          v22 = *v19;
          *(v21 + 2) = v19[2];
          *v21 = v22;
          ++v137;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
  if (v134)
  {
    mlir::InFlightDiagnostic::report(&v134);
  }

  if (v145 == 1)
  {
    if (v144 != &v145)
    {
      free(v144);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v143;
      v26 = __p;
      if (v143 != __p)
      {
        do
        {
          v25 = sub_100052FFC(v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v143 = v24;
      operator delete(v26);
    }

    v27 = v140;
    if (v140)
    {
      v28 = v141;
      v29 = v140;
      if (v141 != v140)
      {
        do
        {
          v30 = *--v28;
          *v28 = 0;
          if (v30)
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = v140;
      }

      v141 = v27;
      operator delete(v29);
    }

    if (v136 != v139)
    {
      free(v136);
    }
  }

  if (!v23)
  {
    return 0;
  }

LABEL_43:
  if (!sub_10020B0FC(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v40 = *this;
  v41 = *(*this + 9);
  if (*(*this + 9))
  {
    v42 = *this - 16;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, v43);
      if ((sub_10024B8D0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v43) & 1) == 0)
      {
        return 0;
      }

      if (v41 == ++v43)
      {
        v40 = *this;
        break;
      }
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v40 - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v122 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v124 = 259;
  mlir::OpState::emitOpError(&v134, this, &v122);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
  v47 = result;
  if (v134)
  {
    mlir::InFlightDiagnostic::report(&v134);
    result = v47;
  }

  if (v145 == 1)
  {
    if (v144 != &v145)
    {
      free(v144);
      result = v47;
    }

    v48 = __p;
    if (__p)
    {
      v49 = v143;
      v50 = __p;
      if (v143 != __p)
      {
        do
        {
          v49 = sub_100052FFC(v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v143 = v48;
      operator delete(v50);
      result = v47;
    }

    v51 = v140;
    if (v140)
    {
      v52 = v141;
      v53 = v140;
      if (v141 != v140)
      {
        do
        {
          v54 = *--v52;
          *v52 = 0;
          if (v54)
          {
            operator delete[]();
          }
        }

        while (v52 != v51);
        v53 = v140;
      }

      v141 = v51;
      operator delete(v53);
      result = v47;
    }

    if (v136 != v139)
    {
      free(v136);
      return v47;
    }
  }

  return result;
}

uint64_t sub_10024B8D0(mlir::Operation *this, void *a2, const char *a3, const char *a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_100251438(a2, this))
  {
    goto LABEL_40;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_100289EC4();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56))
  {
    return 1;
  }

  v23 = *(*v56[0] + 136);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 4))
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

  if (mlir::Type::isUnsignedInteger(v56, 4))
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

  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v60 = v56[0];
    ElementType = mlir::ComplexType::getElementType(&v60);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v58 = v56[0];
      v59 = mlir::ComplexType::getElementType(&v58);
      if (mlir::Type::isF32(&v59))
      {
        return 1;
      }
    }
  }

  v25 = 1;
  if (mlir::Type::isSignlessInteger(v56, 1))
  {
    return v25;
  }

LABEL_40:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v64, this, v56);
  if (v64[0])
  {
    LODWORD(ElementType) = 3;
    v62 = " #";
    v63 = 2;
    p_ElementType = &ElementType;
    v27 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
      {
        v52 = &ElementType - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v27 = v65;
        p_ElementType = (v65 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        p_ElementType = &ElementType;
        v27 = v65;
      }
    }

    v28 = &v27[24 * v66];
    v29 = *p_ElementType;
    *(v28 + 2) = p_ElementType[2];
    *v28 = v29;
    v30 = ++v66;
    if (v64[0])
    {
      LODWORD(ElementType) = 5;
      v62 = a5;
      v31 = &ElementType;
      v32 = v65;
      if (v30 >= v67)
      {
        if (v65 <= &ElementType && v65 + 24 * v30 > &ElementType)
        {
          v53 = &ElementType - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v32 = v65;
          v31 = (v65 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v31 = &ElementType;
          v32 = v65;
        }
      }

      v33 = &v32[24 * v66];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v66;
      if (v64[0])
      {
        LODWORD(ElementType) = 3;
        v62 = " must be variadic of CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v63 = 290;
        v36 = &ElementType;
        v37 = v65;
        if (v35 >= v67)
        {
          if (v65 <= &ElementType && v65 + 24 * v35 > &ElementType)
          {
            v54 = &ElementType - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v37 = v65;
            v36 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v36 = &ElementType;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
        if (v64[0])
        {
          v40 = &ElementType;
          mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, a2);
          v41 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
            {
              v55 = &ElementType - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v41 = v65;
              v40 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v40 = &ElementType;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v66;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v72;
      v46 = __p;
      if (v72 != __p)
      {
        do
        {
          v45 = sub_100052FFC(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v72 = v44;
      operator delete(v46);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::SqrtOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10020B0FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    v5 = 32;
LABEL_5:
    v6 = v5 + 24;
    v7 = 1;
    while ((sub_10024B8D0(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v7) & 1) != 0)
    {
      ++v7;
      v6 += 32;
      if (!--v4)
      {
        v2 = *this;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v3 = *(v2 + 17);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = *(v2 + 9) + 32;
    goto LABEL_5;
  }

LABEL_9:
  v8 = *(v2 + 9);
  v9 = v2 - 16;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  return sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::SubOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_1002088C4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(v22, this, v20);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(v22, this, v20);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::TanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::TanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v38 = v6;
  if (!v6)
  {
    a3(v42, a4);
    if (v42[0])
    {
      v39 = 3;
      v40 = "expected DictionaryAttr to set properties";
      v41 = 41;
      v25 = &v39;
      v26 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v44 > &v39)
        {
          v35 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v26 = v43;
          v25 = (v43 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v25 = &v39;
          v26 = v43;
        }
      }

      v27 = &v26[24 * v44];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v44;
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }
    }

    if (v52 != 1)
    {
      return 0;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v50;
      v31 = __p;
      if (v50 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v50 = v29;
      operator delete(v31);
    }

    v21 = v47;
    if (!v47)
    {
      goto LABEL_49;
    }

    v32 = v48;
    v23 = v47;
    if (v48 == v47)
    {
      goto LABEL_48;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v38, "target_spec", 0xBuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v42, a4);
  if (v42[0])
  {
    v39 = 3;
    v41 = 56;
    v10 = &v39;
    v11 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v39 && v43 + 24 * v44 > &v39)
      {
        v36 = &v39 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v11 = v43;
        v10 = (v43 + v36);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v10 = &v39;
        v11 = v43;
      }
    }

    v12 = &v11[24 * v44];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v44;
    if (v42[0])
    {
      v14 = &v39;
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, v9);
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v44 > &v39)
        {
          v37 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v39;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v44;
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }
    }
  }

  if (v52)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v50;
      v20 = __p;
      if (v50 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v50 = v18;
      operator delete(v20);
    }

    v21 = v47;
    if (!v47)
    {
      goto LABEL_49;
    }

    v22 = v48;
    v23 = v47;
    if (v48 == v47)
    {
LABEL_48:
      v48 = v21;
      operator delete(v23);
LABEL_49:
      if (v43 != v46)
      {
        free(v43);
      }

      return 0;
    }

    do
    {
      v24 = *--v22;
      *v22 = 0;
      if (v24)
      {
        operator delete[]();
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v47;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "target_spec", 0xB, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x735F746567726174 ? (v4 = *(a3 + 3) == 0x636570735F746567) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::ODIE::Compiler::CoreML::TargetSpecOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x735F746567726174 && *(a2 + 3) == 0x636570735F746567)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "target_spec", 0xB, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

BOOL sub_10024D320(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
  {
    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v26) = 3;
    v27 = "attribute '";
    v28 = 11;
    v7 = &v26;
    v8 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v26 && v32 + 24 * v33 > &v26)
      {
        v24 = &v26 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v8 = v32;
        v7 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = &v26;
        v8 = v32;
      }
    }

    v9 = &v8[24 * v33];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      v26 = a2;
      v27 = a3;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v27 = "' failed to satisfy constraint: ";
        v28 = 32;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::TargetSpecOp::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return sub_10024D728(a1, v2);
}

BOOL sub_10024D728(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v36, a1, v30);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "expected ";
    v34 = 9;
    v6 = &v32;
    v7 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = v38;
        v6 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = &v32;
        v7 = v38;
      }
    }

    v8 = &v7[24 * v39];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v39;
  }

  {
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_10028AC60();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(void)::Name;
      v33 = *algn_1002C3238;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = ", but got: ";
        v34 = 11;
        v10 = &v32;
        v11 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v28 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = v38;
            v10 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v10 = &v32;
            v11 = v38;
          }
        }

        v12 = &v11[24 * v39];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v39;
        if (v36)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v38;
          if (v39 >= v40)
          {
            if (v38 <= &v32 && v38 + 24 * v39 > &v32)
            {
              v29 = &v32 - v38;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v15 = v38;
              v14 = (v38 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
              v14 = &v32;
              v15 = v38;
            }
          }

          v16 = &v15[24 * v39];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v39;
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = sub_100052FFC(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
      {
        do
        {
          v25 = *--v23;
          *v23 = 0;
          if (v25)
          {
            operator delete[]();
          }
        }

        while (v23 != v22);
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::TargetSpecOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v13[0] = *this;
    return sub_10024D320(v1, "target_spec", 0xB, sub_100251AEC, v13);
  }

  else
  {
    v11 = "requires attribute 'target_spec'";
    v12 = 259;
    mlir::OpState::emitOpError(v13, this, &v11);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v13[0])
    {
      mlir::InFlightDiagnostic::report(v13);
    }

    if (v21 == 1)
    {
      if (v20 != &v21)
      {
        free(v20);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v19;
        v5 = __p;
        if (v19 != __p)
        {
          do
          {
            v4 = sub_100052FFC(v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v19 = v3;
        operator delete(v5);
      }

      v6 = v16;
      if (v16)
      {
        v7 = v17;
        v8 = v16;
        if (v17 != v16)
        {
          do
          {
            v9 = *--v7;
            *v7 = 0;
            if (v9)
            {
              operator delete[]();
            }
          }

          while (v7 != v6);
          v8 = v16;
        }

        v17 = v6;
        operator delete(v8);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::TargetSpecOp::parse(mlir::ODIE::Compiler::CoreML::TargetSpecOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v11 = 0;
  if (!sub_10024DF40(this, &v11, 0))
  {
    return 0;
  }

  if (v11)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v11;
  }

  v10 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((v6 = *(a2 + 1), v9[0] = this, v9[1] = &v10, v9[2] = a2, (v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96))) == 0) || sub_10024D320(v7, "target_spec", 0xB, sub_1002593D0, v9)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10024DF40(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  v20[0] = a1;
  if (((*(*a1 + 448))(a1, &v19, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML14TargetSpecAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v20) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id)
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
          v11 = sub_100052FFC(v11 - 1);
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

void mlir::ODIE::Compiler::CoreML::TargetSpecOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v11 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = (*(*v6 + 80))(v6) + v6[4] - v6[2];
    mlir::ODIE::Compiler::CoreML::TargetSpecAttr::print(&v11, a2);
    if (v7 == (*(*v6 + 80))(v6) + v6[4] - v6[2])
    {
      (*(*a2 + 40))(a2, v11);
    }
  }

  v11 = v13;
  v13[0] = "target_spec";
  v13[1] = 11;
  v12 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v9, v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::TileOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || !sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(v16, this, &v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || !sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = sub_10020BDF0(&v25);
    v28[1] = v5;
    mlir::ShapedType::getShape(v28);
    v7 = v6;
    v24 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v26[0] = sub_10020BDF0(&v24);
    v26[1] = v8;
    mlir::ShapedType::getShape(v26);
    if (v7 == v9)
    {
      return 1;
    }

    v26[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
    v27 = 259;
    mlir::OpState::emitOpError(v28, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
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
            v20 = sub_100052FFC(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_46;
      }

      v22 = v32;
      v17 = v31;
      if (v32 == v31)
      {
LABEL_45:
        v32 = v15;
        operator delete(v17);
        result = v11;
LABEL_46:
        if (v29 != &v30)
        {
          free(v29);
          return v11;
        }

        return result;
      }

      do
      {
        v23 = *--v22;
        *v22 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v22 != v15);
LABEL_44:
      v17 = v31;
      goto LABEL_45;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v27 = 259;
    mlir::OpState::emitOpError(v28, this, v26);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v34;
        v14 = __p;
        if (v34 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v34 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_46;
      }

      v16 = v32;
      v17 = v31;
      if (v32 == v31)
      {
        goto LABEL_45;
      }

      do
      {
        v18 = *--v16;
        *v16 = 0;
        if (v18)
        {
          operator delete[]();
        }
      }

      while (v16 != v15);
      goto LABEL_44;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::WhereOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002090B0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_1002088C4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_1002088C4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 88));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      v6 = *this;
      v25 = &_mh_execute_header;
      LODWORD(v26) = 2;
      if (sub_10021134C(v6, &v25, 3))
      {
        return 1;
      }

      v23[0] = "failed to verify that Operands should have same shape.";
      v24 = 259;
      mlir::OpState::emitOpError(&v25, this, v23);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
      if (v25)
      {
        v21 = result;
        mlir::InFlightDiagnostic::report(&v25);
        result = v21;
      }

      if (v34 == 1)
      {
        v22 = result;
        sub_100052F18(&v26);
        return v22;
      }

      return result;
    }

    v23[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v24 = 259;
    mlir::OpState::emitOpError(&v25, this, v23);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
    v8 = result;
    if (v25)
    {
      mlir::InFlightDiagnostic::report(&v25);
      result = v8;
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
        result = v8;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v32;
        v18 = __p;
        if (v32 != __p)
        {
          do
          {
            v17 = sub_100052FFC(v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v32 = v16;
        operator delete(v18);
        result = v8;
      }

      v12 = v29;
      if (!v29)
      {
        goto LABEL_48;
      }

      v19 = v30;
      v14 = v29;
      if (v30 == v29)
      {
LABEL_47:
        v30 = v12;
        operator delete(v14);
        result = v8;
LABEL_48:
        if (v27 != &v28)
        {
          free(v27);
          return v8;
        }

        return result;
      }

      do
      {
        v20 = *--v19;
        *v19 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v19 != v12);
LABEL_46:
      v14 = v29;
      goto LABEL_47;
    }
  }

  else
  {
    v23[0] = "failed to verify that Operands should have same element type.";
    v24 = 259;
    mlir::OpState::emitOpError(&v25, this, v23);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
    v8 = result;
    if (v25)
    {
      mlir::InFlightDiagnostic::report(&v25);
      result = v8;
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
        result = v8;
      }

      v9 = __p;
      if (__p)
      {
        v10 = v32;
        v11 = __p;
        if (v32 != __p)
        {
          do
          {
            v10 = sub_100052FFC(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v32 = v9;
        operator delete(v11);
        result = v8;
      }

      v12 = v29;
      if (!v29)
      {
        goto LABEL_48;
      }

      v13 = v30;
      v14 = v29;
      if (v30 == v29)
      {
        goto LABEL_47;
      }

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
      goto LABEL_46;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::WhileOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = v2[9];
  if (v2[9])
  {
    v4 = (v2 - 4);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  v6 = sub_100211FE8(v2, ((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10], "before", 6, 0);
  result = 0;
  if (v6)
  {
    return sub_100211FE8(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, "after", 5, 1u);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::WriteHandleOp::inferReturnTypes(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        v14 = a1;
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        a1 = v14;
        goto LABEL_7;
      }

      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
      a1 = v13;
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  **a11 = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10023DDFC(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !sub_10021C7B4(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10021C7B4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v4 = *(*this + 9);
  v5 = *(v4 + 24);
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v4 + 88));
  if (HandleForToken)
  {
    v7 = HandleForToken == v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  v17 = "failed to verify that input token must come from an operation on the same handle";
  v18 = 259;
  mlir::OpState::emitOpError(v19, this, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v9 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v9;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v25;
      v12 = __p;
      if (v25 != __p)
      {
        do
        {
          v11 = sub_100052FFC(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v25 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v22;
    if (v22)
    {
      v14 = v23;
      v15 = v22;
      if (v23 != v22)
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
        v15 = v22;
      }

      v23 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::XorOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[0] = a4;
  v15[1] = a5;
  v12 = *(a11 + 8);
  if (v12 == 1)
  {
    goto LABEL_8;
  }

  if (!v12)
  {
    if (*(a11 + 12))
    {
      v13 = 0;
LABEL_6:
      bzero((*a11 + 8 * v13), 8 - 8 * v13);
      goto LABEL_7;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
    v13 = *(a11 + 8);
    if (v13 != 1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  *(a11 + 8) = 1;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::XorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002090B0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002090B0(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002090B0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

char *sub_10024F448(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_10028ACA0(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, &v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

char *sub_10024F584(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_10028ACE4(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, &v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t sub_10024F730(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002BDD78;
  a2[1] = v2;
  return result;
}

uint64_t sub_10024F75C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v4 = *(result + 8);
    v11 = *a2;
    Name = mlir::ODIE::Compiler::CoreML::ParamRefAttr::getName(&v11);
    Value = mlir::StringAttr::getValue(&Name);
    v7 = v6;
    v8 = llvm::StringMapImpl::hash(Value, v6);
    result = llvm::StringMapImpl::FindKey(v4, Value, v7, v8);
    if (result == -1 || result == *(v4 + 8) || (v9 = *(*(*v4 + 8 * result) + 8)) == 0)
    {
      v9 = v11;
    }

    *a3 = v9;
    *(a3 + 8) = 1;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_10024F840(uint64_t a1, mlir::Operation *a2)
{
  v22 = a2;
  if (!sub_100181E38(a2) || **a1 == a2)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(*(a1 + 8), a2, 1, 1, 1);
    v6 = *(a1 + 16);
    AttrDictionary = mlir::Operation::getAttrDictionary(a2);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v28 = off_1002BDDC0;
    v29 = v6;
    v30 = &v22;
    v31 = &v28;
    *(&v23 + 1) = sub_100130CBC(&v23, &v28);
    if (v31 == &v28)
    {
      ((*v31)[4])(v31);
    }

    else if (v31)
    {
      ((*v31)[5])(v31);
    }

    mlir::AttrTypeWalker::walkImpl(&v23, AttrDictionary, 1);
    sub_100130EE4(&v23);
    if ((*(v22 + 46) & 0x80) != 0)
    {
      v8 = *(v22 + 9);
      v9 = *(v22 + 17);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *&v23 = v8;
    *(&v23 + 1) = v9;
    mlir::OperandRange::getTypes(&v23, &v19);
    v10 = v21 - v20;
    if (v21 != v20)
    {
      v15 = v19 + 32 * v20 + 24;
      do
      {
        v16 = *(*v15 + 8);
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v28 = off_1002BDDC0;
        v29 = v6;
        v30 = &v22;
        v31 = &v28;
        *(&v23 + 1) = sub_100130CBC(&v23, &v28);
        if (v31 == &v28)
        {
          ((*v31)[4])(v31);
        }

        else if (v31)
        {
          ((*v31)[5])(v31);
        }

        mlir::AttrTypeWalker::walkImpl(&v23, (v16 & 0xFFFFFFFFFFFFFFF8), 1);
        sub_100130EE4(&v23);
        v15 += 32;
        --v10;
      }

      while (v10);
    }

    v11 = *(v22 + 9);
    v12 = v22 - 16;
    if (!v11)
    {
      v12 = 0;
    }

    *&v23 = v12;
    *(&v23 + 1) = v11;
    mlir::ResultRange::getTypes(&v19, &v23);
    v13 = v20;
    v14 = v21;
    if (v20 != v21)
    {
      v17 = v19;
      do
      {
        v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v13) + 8);
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v28 = off_1002BDDC0;
        v29 = v6;
        v30 = &v22;
        v31 = &v28;
        *(&v23 + 1) = sub_100130CBC(&v23, &v28);
        if (v31 == &v28)
        {
          ((*v31)[4])(v31);
        }

        else if (v31)
        {
          ((*v31)[5])(v31);
        }

        mlir::AttrTypeWalker::walkImpl(&v23, (v18 & 0xFFFFFFFFFFFFFFF8), 1);
        sub_100130EE4(&v23);
        ++v13;
      }

      while (v14 != v13);
    }

    return 1;
  }

  else
  {
    mlir::Operation::erase(a2, v4);
    return 2;
  }
}

__n128 sub_10024FC80(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002BDDC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10024FCB0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = *(**(a1 + 16) + 24);
  v6 = *(v4 + 8);
  if (v6 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 8), (v4 + 16), v6 + 1, 16);
    LODWORD(v6) = *(v4 + 8);
  }

  v7 = (*v4 + 16 * v6);
  *v7 = v5;
  v7[1] = v2;
  ++*(v4 + 8);
  return 1;
}

__n128 sub_10024FDC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1002BDE08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10024FDF8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v19[7] = v3;
    v19[8] = v4;
    v6 = *(result + 8);
    v7 = *(result + 16);
    v19[0] = v5;
    v8 = *(v6 + 8);
    v9 = v7[1];
    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = a3;
      v12 = *v6;
      v13 = *v7;
      v14 = 16 * v9 - 16;
      v15 = 8 * v8 - 8;
      while (1)
      {
        Name = mlir::ODIE::Compiler::CoreML::ParamRefAttr::getName(v19);
        result = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(v12);
        if (Name == result)
        {
          break;
        }

        v17 = v19;
        if (v15)
        {
          v12 = (v12 + 8);
          v13 += 2;
          v18 = v14;
          v14 -= 16;
          v15 -= 8;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v17 = v13;
LABEL_13:
      v5 = *v17;
      a3 = v11;
    }

    *a3 = v5;
    *(a3 + 8) = 1;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_10024FEEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v24 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v24);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v23 = ReferencedDialect;
      sub_10028AD28();
      ReferencedDialect = v23;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = v3;
    v21 = a1;
    sub_100284E48();
    v3 = v20;
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v14 = v7[1];
    if (v14)
    {
      return v14;
    }
  }

LABEL_23:
  v16 = *(v3 + 24);
  v17 = *(a1 + 48);
  {
    v22 = v17;
    sub_100284E48();
    v17 = v22;
  }

  v18 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
  v19 = *(*v16 + 104);

  return v19(v16, v18, v17);
}

uint64_t sub_1002500E0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v24 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v24);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v23 = ReferencedDialect;
      sub_10028AD6C();
      ReferencedDialect = v23;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = v3;
    v21 = a1;
    sub_1002825CC();
    v3 = v20;
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v14 = v7[1];
    if (v14)
    {
      return v14;
    }
  }

LABEL_23:
  v16 = *(v3 + 24);
  v17 = *(a1 + 48);
  {
    v22 = v17;
    sub_1002825CC();
    v17 = v22;
  }

  v18 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;
  v19 = *(*v16 + 104);

  return v19(v16, v18, v17);
}

uint64_t sub_1002502D4(uint64_t ParentOp)
{
  while (1)
  {
    v2 = *(ParentOp + 16);
    if (!v2)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v2);
    if (ParentOp)
    {
      {
        sub_1002840B8();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

__n128 sub_10025036C@<Q0>(mlir::DenseElementsAttr *a1@<X0>, __n128 *a2@<X8>)
{
  Type = mlir::DenseElementsAttr::getType(a1);
  v6 = v5;
  mlir::DenseElementsAttr::getType(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(v15, *a1, 0);
  v7 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v14, v7, NumElements);
  v9 = v15[0];
  v10 = v15[1];
  mlir::DenseElementsAttr::getType(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(v15, *a1, 0);
  v11 = *a1;
  v12 = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v14, v11, v12);
  result = v14;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  a2[1] = result;
  a2[2].n128_u64[0] = Type;
  a2[2].n128_u64[1] = v6;
  a2[3].n128_u8[0] = 1;
  return result;
}

void sub_100250440(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = (a2 + 16);
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
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
        LODWORD(v7) = -1;
      }
    }

    else
    {
      LODWORD(v7) = v9;
    }

    v8 = *(a2 + 8);
    if (v8 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v4, v8 + 1, 4);
      v8 = *(a2 + 8);
    }

    *(*a2 + 4 * v8) = v7;
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

double sub_100250590@<D0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  *v14 = mlir::DenseElementsAttr::getElementType(a1);
  if (mlir::Type::isInteger(v14, 1))
  {
    Type = mlir::DenseElementsAttr::getType(a1);
    v2 = v6;
    mlir::DenseElementsAttr::BoolElementIterator::BoolElementIterator(&v12, *a1, 0);
    v7 = *a1;
    NumElements = mlir::DenseElementsAttr::getNumElements(a1);
    mlir::DenseElementsAttr::BoolElementIterator::BoolElementIterator(&v14[24], v7, NumElements);
    *v14 = v12;
    *&v14[16] = v13;
    v9 = v12;
    *&v16[15] = *&v14[32];
    v15 = *&v14[1];
    *v16 = *&v14[17];
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  v10 = *v16;
  *(a2 + 1) = v15;
  *(a2 + 17) = v10;
  result = *&v16[15];
  *(a2 + 32) = *&v16[15];
  *(a2 + 48) = Type;
  *(a2 + 56) = v2;
  return result;
}

uint64_t *sub_10025069C@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == 0x8000000000000000;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
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
      if (*v8 == 0x7FFFFFFFFFFFFFFFLL)
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
    sub_1002508C4(result, v4);
    sub_10025081C(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 2);
    if (*v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_10025081C(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
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
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
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

void sub_1002508C4(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset_pattern16(buffer, &unk_10028FE10, 8 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        v17 = *v14;
        if ((*v14 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
        {
          v18 = (37 * v17) & v13;
          v16 = &buffer[8 * v18];
          v19 = *v16;
          if (v17 != *v16)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x8000000000000000;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &buffer[8 * (v23 & v13)];
              v19 = *v16;
              if (v17 == *v16)
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

        v14 = (v14 + 8);
      }

      while (v14 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v15 = *(a1 + 16);
    if (v15)
    {

      memset_pattern16(buffer, &unk_10028FE10, 8 * v15);
    }
  }
}

uint64_t sub_100250A7C(uint64_t **a1, uint64_t a2)
{
  {
    sub_100284728();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v9[0] = &v10;
    v9[1] = &_mh_execute_header;
    mlir::Operation::fold(a2, 0, 0, v9);
    v6 = sub_100250BA0((*v9[0] & 0xFFFFFFFFFFFFFFF8));
    result = v6 != 0;
    if (v6)
    {
      v7 = *a1;
      if (*a1)
      {
        *v7 = v6;
        v7[1] = v5;
      }
    }

    if (v9[0] != &v10)
    {
      v8 = v6 != 0;
      free(v9[0]);
      return v8;
    }
  }

  return result;
}

void *sub_100250BA0(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    sub_10028ADB0();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
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
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    sub_10028ADB0();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

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
  return result;
}

void sub_100250D40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = &v9;
  v9 = 0;
  __src = a1;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (DefiningOp && (sub_10025106C(&v8, DefiningOp) & 1) != 0)
  {
    sub_100250E98(v9, &__src);
    *a2 = a2 + 16;
    *(a2 + 8) = 0xC00000000;
    v4 = v11;
    v5 = __src;
    if (v11 && &__src != a2)
    {
      if (__src == v13)
      {
        v7 = v11;
        if (v11 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v11, 4), v7 = v11, v5 = __src, v11))
        {
          memcpy(*a2, v5, 4 * v7);
          v5 = __src;
        }

        *(a2 + 8) = v4;
      }

      else
      {
        *a2 = __src;
        v6 = v12;
        *(a2 + 8) = v4;
        *(a2 + 12) = v6;
        __src = v13;
        v12 = 0;
        v5 = v13;
      }

      v11 = 0;
    }

    *(a2 + 64) = 1;
    if (v5 != v13)
    {
      free(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

void sub_100250E98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v3 = (a2 + 16);
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  mlir::DenseElementsAttr::tryGetFloatValues(v21, &v18);
  v15 = v21[0];
  v16 = v21[1];
  v17 = v22;
  mlir::DenseElementsAttr::tryGetFloatValues(v21, &v18);
  for (i = v23; v16 != i; *&v16 = v16 + 1)
  {
    while (1)
    {
      v5 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v15, &v19);
      v6 = v17;
      v8 = llvm::APFloatBase::PPCDoubleDouble(v5);
      if (v8 == v6)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v21, v6, &v19);
      }

      llvm::detail::IEEEFloat::IEEEFloat(v21, v6, &v19, v7);
      if (v20 >= 0x41 && v19)
      {
        operator delete[]();
      }

      v12 = llvm::APFloat::convertToFloat(v21, v9, v10, v11);
      v13 = *(a2 + 8);
      if (v13 >= *(a2 + 12))
      {
        v14 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, v3, v13 + 1, 4);
        v12 = v14;
        v13 = *(a2 + 8);
      }

      *(*a2 + 4 * v13) = v12;
      ++*(a2 + 8);
      if (v8 != *&v21[0])
      {
        break;
      }

      sub_100029F40(v21);
      *&v16 = v16 + 1;
      if (v16 == i)
      {
        return;
      }
    }

    llvm::detail::IEEEFloat::~IEEEFloat(v21);
  }
}

uint64_t sub_10025106C(unint64_t **a1, uint64_t a2)
{
  {
    sub_100284728();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = &v9;
    v8[1] = &_mh_execute_header;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseFPElementsAttr::classof(v5))
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

void sub_100251198(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = &v8;
  v8 = 0;
  v9 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (DefiningOp && (sub_100277970(&v7, DefiningOp) & 1) != 0)
  {
    sub_1002512E0(v8, &v9);
    *a2 = a2 + 24;
    *(a2 + 8) = xmmword_10028F060;
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
      if (v10 < 0x29 || (llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v10, 1), v4 = v9, (v6 = v10) != 0))
      {
        memcpy(*a2, v4, v6);
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

void sub_1002512E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = (a2 + 24);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_10028F060;
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
        v7 = -1;
      }
    }

    else
    {
      v7 = v9;
    }

    v8 = *(a2 + 8);
    if ((v8 + 1) > *(a2 + 16))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, v4, v8 + 1, 1);
      v8 = *(a2 + 8);
    }

    *(*a2 + v8) = v7 != 0;
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

uint64_t sub_100251438(void *a1, uint64_t a2)
{
  v30 = a1;
  CoreMLTensorEncoding = mlir::ODIE::Compiler::CoreML::getCoreMLTensorEncoding(a1);
  v4 = sub_10005E890(a1);
  result = 0;
  v28[0] = v4;
  v28[1] = v6;
  if (CoreMLTensorEncoding && v4)
  {
    Shape = mlir::ShapedType::getShape(v28);
    v9 = v8;
    ElementType = mlir::ShapedType::getElementType(v28);
    v26[0] = &v30;
    if (mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(&CoreMLTensorEncoding, v11, v12, v13, v14, Shape, v9, ElementType, sub_10025164C, v26))
    {
      DimsOrdering = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::getDimsOrdering(&CoreMLTensorEncoding);
      if (v16 < 1)
      {
        return 1;
      }

      v17 = 0;
      while (v17 == *(DimsOrdering + 4 * v17))
      {
        if ((v16 & 0x7FFFFFFF) == ++v17)
        {
          return 1;
        }
      }

      v18 = *(a2 + 24);
      v26[0] = "only contiguous layout is supported";
      v27 = 259;
      mlir::emitError(v18, v26, v31);
      if (v31[0])
      {
        mlir::InFlightDiagnostic::report(v31);
      }

      if (v39 == 1)
      {
        if (v38 != &v39)
        {
          free(v38);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v37;
          v21 = __p;
          if (v37 != __p)
          {
            do
            {
              v20 = sub_100052FFC(v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v37 = v19;
          operator delete(v21);
        }

        v22 = v34;
        if (v34)
        {
          v23 = v35;
          v24 = v34;
          if (v35 != v34)
          {
            do
            {
              v25 = *--v23;
              *v23 = 0;
              if (v25)
              {
                operator delete[]();
              }
            }

            while (v23 != v22);
            v24 = v34;
          }

          v35 = v22;
          operator delete(v24);
        }

        if (v32 != &v33)
        {
          free(v32);
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_10025164C(mlir::Type **a1@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Type::getContext(*a1);
  v5 = mlir::UnknownLoc::get(Context, v4);

  mlir::emitError(v5, a2);
}

void sub_10025168C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_1002516BC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_1002516EC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_10025171C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_10025174C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_10025177C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_1002517AC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_1002517DC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_10025180C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_10025183C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_10025186C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_10025189C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void *sub_1002518CC(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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
      sub_1002855B8();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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

void sub_1002519CC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_1002519FC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_100251A2C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_100251A5C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_100251A8C(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_100251ABC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void sub_100251AEC(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void *sub_100251DD8(void *a1)
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

  return a1;
}

void sub_100251E24(void *a1)
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

uint64_t sub_100251EFC(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = *(a2 + 72);
  v109 = *(v5 + 24);
  v6 = *(v109 + 1) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v5 + 56);
  v107 = *(v7 + 1) & 0xFFFFFFFFFFFFFFF8;
  v108 = v6;
  result = mlir::TensorType::hasRank(&v108);
  if (result)
  {
    Shape = mlir::TensorType::getShape(&v108);
    if (v10)
    {
      v11 = 8 * v10;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    result = mlir::TensorType::hasRank(&v107);
    if (!result)
    {
      return result;
    }

    v12 = mlir::RankedTensorType::getShape(&v107);
    if (v13)
    {
      v14 = 8 * v13;
      while (*v12 != 0x8000000000000000)
      {
        ++v12;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    __src = 0;
    v119 = 0;
    p_src = &__src;
    v122 = v7;
    result = mlir::Value::getDefiningOp(&v122);
    if (result)
    {
      result = sub_100250A7C(&p_src, result);
      if (result)
      {
        mlir::TensorType::getShape(&v108);
        v16 = v15;
        sub_1001F2F84(v7, &__src);
        if ((v121 & 1) == 0)
        {
          v101 = sub_10024F430();
          return sub_10025276C(v101, v102, v103);
        }

        v122 = v124;
        v123 = 0xC00000000;
        v17 = v119;
        if (v119)
        {
          if (__src == v120)
          {
            v18 = v119;
            if (v119 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, v119, 4), (v18 = v119) != 0))
            {
              memcpy(v122, __src, 4 * v18);
            }

            LODWORD(v123) = v17;
            LODWORD(v119) = 0;
            if ((v121 & 1) == 0)
            {
LABEL_25:
              v19 = v17 - v16;
              if (v17 <= v16)
              {
                goto LABEL_63;
              }

              __src = v120;
              v119 = 0xC00000000;
              if (v17)
              {
                if (v17 < 0xD)
                {
                  v20 = 0;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v120, v17, 4);
                  v20 = v119;
                }

                if (v17 != v20)
                {
                  bzero(__src + 4 * v20, 4 * (v17 - v20));
                }

                LODWORD(v119) = v17;
              }

              if (v19 >= 1)
              {
                memset_pattern16(__src, &unk_10028FE00, 4 * v19);
              }

              v21 = mlir::TensorType::getShape(&v108);
              if (v16 >= 1)
              {
                v22 = __src;
                if (v16 <= 7)
                {
                  v23 = 0;
LABEL_41:
                  v31 = v23 - v16;
                  v32 = (v21 + 8 * v23);
                  v33 = &v22[4 * v17];
                  do
                  {
                    v34 = *v32++;
                    *&v33[4 * v31] = v34;
                  }

                  while (!__CFADD__(v31++, 1));
                  goto LABEL_44;
                }

                v23 = v16 & 0x7FFFFFFFFFFFFFF8;
                v24 = (v21 + 32);
                v25 = (__src + 4 * v17 + -4 * v16 + 16);
                v26 = v16 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v28 = v24[-2];
                  v27 = v24[-1];
                  v30 = *v24;
                  v29 = v24[1];
                  v24 += 4;
                  v25[-1] = vuzp1q_s32(v28, v27);
                  *v25 = vuzp1q_s32(v30, v29);
                  v25 += 2;
                  v26 -= 8;
                }

                while (v26);
                if (v16 != v23)
                {
                  goto LABEL_41;
                }
              }

LABEL_44:
              p_src = v117;
              v116 = 0x600000000;
              if (v17)
              {
                if (v17 < 7)
                {
                  v36 = 0;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, v117, v17, 8);
                  v36 = v116;
                }

                if (v17 != v36)
                {
                  bzero(p_src + 8 * v36, 8 * (v17 - v36));
                }

                LODWORD(v116) = v17;
              }

              v37 = v119;
              if (!v119)
              {
                goto LABEL_59;
              }

              v38 = __src;
              v39 = p_src;
              v40 = (v119 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v40 > 6)
              {
                v43 = v40 + 1;
                v41 = (v40 + 1) & 0x7FFFFFFFFFFFFFF8;
                v42 = (__src + 4 * v41);
                v44 = p_src + 32;
                v45 = __src + 16;
                v46 = v41;
                do
                {
                  v47 = *(v45 - 1);
                  *&v48 = v47;
                  *(&v48 + 1) = SDWORD1(v47);
                  v49 = v48;
                  *&v48 = SDWORD2(v47);
                  *(&v48 + 1) = SHIDWORD(v47);
                  v50 = v48;
                  *&v48 = *v45;
                  *(&v48 + 1) = HIDWORD(*v45);
                  v51 = v48;
                  *&v48 = *(v45 + 1);
                  *(&v48 + 1) = HIDWORD(*v45);
                  *(v44 - 2) = v49;
                  *(v44 - 1) = v50;
                  *v44 = v51;
                  v44[1] = v48;
                  v44 += 4;
                  v45 += 32;
                  v46 -= 8;
                }

                while (v46);
                if (v43 == v41)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v41 = 0;
                v42 = __src;
              }

              v52 = &v38[4 * v37];
              v53 = &v39[8 * v41];
              do
              {
                v54 = *v42++;
                *v53 = v54;
                v53 += 8;
              }

              while (v42 != v52);
LABEL_59:
              v55 = *(a2 + 24);
              v114 = v17;
              IntegerType = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v105 = mlir::RankedTensorType::get(&v114, 1, IntegerType, 0);
              v57 = sub_10005CD80(&v105);
              RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v57, v58, __src, 4 * v119);
              v110 = sub_10025276C(a3 + 1, v55, &RawIntOrFloat);
              v59 = *(a2 + 24);
              v60 = p_src;
              v61 = v116;
              ElementType = mlir::TensorType::getElementType(&v108);
              RawIntOrFloat = mlir::RankedTensorType::get(v60, v61, ElementType, 0);
              v63 = sub_1002528D0(a3 + 1, v59, &RawIntOrFloat, &v109, &v110);
              v109 = v63 - 16;
              v108 = *(v63 - 1) & 0xFFFFFFFFFFFFFFF8;
              if (p_src != v117)
              {
                free(p_src);
              }

              if (__src != v120)
              {
                free(__src);
              }

LABEL_63:
              mlir::TensorType::getShape(&v108);
              __src = v120;
              v119 = 0xC00000000;
              p_src = v117;
              v116 = 0xC00000000;
              v64 = mlir::TensorType::getShape(&v108);
              if (v65)
              {
                v66 = 0;
                v67 = 8 * v65;
                do
                {
                  if (*(v64 + 8 * v66) != *&v122[4 * v66])
                  {
                    v68 = v119;
                    if (v119 >= HIDWORD(v119))
                    {
                      v71 = v64;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v120, v119 + 1, 4);
                      v64 = v71;
                      v68 = v119;
                    }

                    *(__src + v68) = v66;
                    LODWORD(v119) = v119 + 1;
                    v69 = *&v122[4 * v66];
                    v70 = v116;
                    if (v116 >= HIDWORD(v116))
                    {
                      v104 = v64;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, v117, v116 + 1, 4);
                      v64 = v104;
                      v70 = v116;
                    }

                    *(p_src + v70) = v69;
                    LODWORD(v116) = v116 + 1;
                  }

                  ++v66;
                  v67 -= 8;
                }

                while (v67);
              }

              v72 = *(a2 + 24);
              v114 = v119;
              v73 = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v105 = mlir::RankedTensorType::get(&v114, 1, v73, 0);
              v74 = sub_10005CD80(&v105);
              v110 = mlir::DenseElementsAttr::getRawIntOrFloat(v74, v75, p_src, 4 * v116);
              RawIntOrFloat = sub_10025276C(a3 + 1, v72, &v110);
              v76 = *(a2 + 24);
              v113 = v119;
              v77 = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v114 = mlir::RankedTensorType::get(&v113, 1, v77, 0);
              v78 = sub_10005CD80(&v114);
              v110 = mlir::DenseElementsAttr::getRawIntOrFloat(v78, v79, __src, 4 * v119);
              v105 = sub_10025276C(a3 + 1, v76, &v110);
              v110 = v112;
              v111 = 0x600000000;
              if (v17)
              {
                if (v17 < 7)
                {
                  v80 = 0;
                  v81 = v112;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v110, v112, v17, 8);
                  v80 = v111;
                  v81 = v110;
                }

                if (v17 != v80)
                {
                  bzero(&v81[v80], 8 * (v17 - v80));
                }

                LODWORD(v111) = v17;
              }

              else
              {
                v81 = v112;
              }

              v82 = v123;
              if (!v123)
              {
                goto LABEL_88;
              }

              v83 = v122;
              v84 = (v123 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v84 > 6)
              {
                v87 = v84 + 1;
                v85 = (v84 + 1) & 0x7FFFFFFFFFFFFFF8;
                v86 = &v122[4 * v85];
                v88 = v81 + 4;
                v89 = v122 + 16;
                v90 = v85;
                do
                {
                  v91 = *(v89 - 1);
                  *&v92 = v91;
                  *(&v92 + 1) = SDWORD1(v91);
                  v93 = v92;
                  *&v92 = SDWORD2(v91);
                  *(&v92 + 1) = SHIDWORD(v91);
                  v94 = v92;
                  *&v92 = *v89;
                  *(&v92 + 1) = HIDWORD(*v89);
                  v95 = v92;
                  *&v92 = *(v89 + 1);
                  *(&v92 + 1) = HIDWORD(*v89);
                  *(v88 - 2) = v93;
                  *(v88 - 1) = v94;
                  *v88 = v95;
                  v88[1] = v92;
                  v88 += 4;
                  v89 += 32;
                  v90 -= 8;
                }

                while (v90);
                if (v87 == v85)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                v85 = 0;
                v86 = v122;
              }

              v96 = &v83[4 * v82];
              v97 = &v81[v85];
              do
              {
                v98 = *v86++;
                *v97++ = v98;
              }

              while (v86 != v96);
LABEL_88:
              v99 = mlir::TensorType::getElementType(&v108);
              v114 = mlir::RankedTensorType::get(v81, v17, v99, 0);
              v100 = sub_100252A2C(a3 + 1, *(a2 + 24), &v114, &v109, &RawIntOrFloat, &v105);
              ((*a3)[1])(a3, a2, v100);
              if (v110 != v112)
              {
                free(v110);
              }

              if (p_src != v117)
              {
                free(p_src);
              }

              if (__src != v120)
              {
                free(__src);
              }

              if (v122 != v124)
              {
                free(v122);
              }

              return 1;
            }
          }

          else
          {
            v122 = __src;
            v123 = v119;
            __src = v120;
            v119 = 0;
          }
        }

        if (__src != v120)
        {
          free(__src);
          v17 = v123;
        }

        goto LABEL_25;
      }
    }
  }

  return result;
}

char *sub_10025276C(void *a1, uint64_t a2, void **a3)
{
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    sub_100282480(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v7);
  v9 = sub_1000B0F60(a3);
  if (v9)
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
  }

  v18[0] = v9;
  v18[1] = v11;
  mlir::NamedAttribute::NamedAttribute(v19, **(v20[1] + 96), v9);
  mlir::NamedAttrList::push_back(&v25, v19[0], v19[1]);
  Type = mlir::TypedAttr::getType(v18);
  v13 = v22;
  if (v22 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, &v24, v22 + 1, 8);
    v13 = v22;
  }

  *(v21 + 8 * v13) = Type;
  ++v22;
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

char *sub_1002528D0(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_10028AE48(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

char *sub_100252A2C(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    sub_10028AE8C(v26, v24, v23);
  }

  mlir::OperationState::OperationState(v26, a2, v13);
  v15 = *a3;
  v16 = *a5 - 16;
  v17 = *a6 - 16;
  v24[0] = *a4;
  v23[0] = v16;
  v25 = v17;
  mlir::OperationState::addOperands(v26, v24, 1uLL);
  mlir::OperationState::addOperands(v26, v23, 1uLL);
  mlir::OperationState::addOperands(v26, &v25, 1uLL);
  v18 = v28;
  if (v28 >= v29)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, &v30, v28 + 1, 8);
    v18 = v28;
  }

  *(v27 + 8 * v18) = v15;
  ++v28;
  v19 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v20;
}

const char *sub_100252BB0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims]";
  v6 = 129;
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

uint64_t sub_100252F58(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v43 = 0;
  v5 = *(*(a2 + 72) + 24);
  v35[0] = &v43;
  *&v42[0] = v5;
  result = mlir::Value::getDefiningOp(v42);
  if (!result)
  {
    return result;
  }

  result = sub_100277970(v35, result);
  if (!result)
  {
    return result;
  }

  sub_1000B83F8(&v43, v42);
  *v35 = v42[0];
  *v36 = v42[1];
  v7 = &v46;
  mlir::DenseElementsAttr::IntElementIterator::operator*(v35, &v46);
  v8 = v47;
  if (v47 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(&v46) > 0x40)
    {
      goto LABEL_12;
    }

    v7 = v46;
  }

  if (*v7 != 1)
  {
LABEL_12:
    v11 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v12 = *(v11 + 24);
    if (v12 == v11 + 24 || v12 == 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = (v12 - 8);
    }

    if (v8 < 0x41)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (v46)
    {
      operator delete[]();
    }

    goto LABEL_21;
  }

  v9 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (v9)
  {
    v10 = (v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  if (v8 >= 0x41)
  {
    goto LABEL_19;
  }

LABEL_21:
  v14 = *(a2 + 16);
  llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr();
  a3[3] = v14;
  a3[4] = v15;
  v35[0] = 0;
  v35[1] = 0;
  LODWORD(v36[0]) = 0;
  v38 = 0;
  v36[1] = 0;
  v37 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v16 = v10[5];
  v17 = v10 + 4;
  if (v16 != v10 + 4)
  {
    for (i = *v17; v16 != i; v16 = v16[1])
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr();
      mlir::OpBuilder::clone(a3 + 1, v19, v35);
    }
  }

  v46 = v48;
  v47 = 0x600000000;
  mlir::Block::getTerminator(v10);
  if ((*(v20 + 46) & 0x80) != 0)
  {
    v21 = *(v20 + 68);
    if (v21)
    {
      v22 = 0;
      v23 = *(v20 + 72);
      while (1)
      {
        if (!LODWORD(v36[0]))
        {
          goto LABEL_27;
        }

        v26 = *(v23 + 32 * v22 + 24);
        v27 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ HIDWORD(v26));
        v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
        v29 = (-348639895 * ((v28 >> 47) ^ v28)) & (LODWORD(v36[0]) - 1);
        v30 = *(v35[0] + 2 * v29);
        if (v30 != v26)
        {
          break;
        }

LABEL_31:
        if (v29 == LODWORD(v36[0]))
        {
          goto LABEL_27;
        }

        v24 = *(v35[0] + 2 * v29 + 1);
        v25 = v47;
        if (v47 >= HIDWORD(v47))
        {
LABEL_33:
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v25 + 1, 8);
          v25 = v47;
        }

LABEL_28:
        v46[v25] = v24;
        LODWORD(v47) = v47 + 1;
        if (++v22 == v21)
        {
          goto LABEL_38;
        }
      }

      v31 = 1;
      while (v30 != -4096)
      {
        v32 = v29 + v31++;
        v29 = v32 & (LODWORD(v36[0]) - 1);
        v30 = *(v35[0] + 2 * v29);
        if (v30 == v26)
        {
          goto LABEL_31;
        }
      }

LABEL_27:
      v24 = 0;
      v25 = v47;
      if (v47 >= HIDWORD(v47))
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

LABEL_38:
  v33 = *(a2 + 36);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  mlir::ValueRange::ValueRange(v45, v34, v33);
  mlir::ValueRange::ValueRange(v44, v46, v47);
  sub_100142774(a3, v45[0], v45[1], v44[0], v44[1]);
  ((*a3)[2])(a3, a2);
  if (v46 != v48)
  {
    free(v46);
  }

  llvm::deallocate_buffer(v39, (16 * v41), 8uLL);
  llvm::deallocate_buffer(v36[1], (16 * v38), 8uLL);
  llvm::deallocate_buffer(v35[0], (16 * LODWORD(v36[0])), 8uLL);
  return 1;
}

const char *sub_100253364()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock]";
  v6 = 111;
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

uint64_t sub_1002533E4(uint64_t a1, uint64_t *a2)
{
  v10 = *a2;
  v3 = &v10;
  mlir::ValueRange::ValueRange(&v11, 0, 0);
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v10 && v5 + 24 * v4 > &v10)
    {
      v9 = &v10 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 24);
      v5 = *a1;
      v3 = &v9[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 24);
      v5 = *a1;
      v3 = &v10;
    }
  }

  v6 = v5 + 24 * *(a1 + 8);
  v7 = *v3;
  *(v6 + 16) = *(v3 + 2);
  *v6 = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 24 * v6 - 24;
}

uint64_t sub_1002534FC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v12 = 0;
  v5 = &v12;
  mlir::ValueRange::ValueRange(&v13, v4, v3);
  v6 = *(a1 + 8);
  v7 = *a1;
  if (v6 >= *(a1 + 12))
  {
    if (v7 <= &v12 && v7 + 24 * v6 > &v12)
    {
      v11 = &v12 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 24);
      v7 = *a1;
      v5 = &v11[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 24);
      v7 = *a1;
      v5 = &v12;
    }
  }

  v8 = v7 + 24 * *(a1 + 8);
  v9 = *v5;
  *(v8 + 16) = *(v5 + 2);
  *v8 = v9;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 24 * v8 - 24;
}

uint64_t sub_100253610(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  v14 = v4;
  v7 = &v14;
  mlir::ValueRange::ValueRange(&v15, v5, v6);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *(a1 + 12))
  {
    if (v9 <= &v14 && v9 + 24 * v8 > &v14)
    {
      v13 = &v14 - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + 1, 24);
      v9 = *a1;
      v7 = &v13[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8 + 1, 24);
      v9 = *a1;
      v7 = &v14;
    }
  }

  v10 = v9 + 24 * *(a1 + 8);
  v11 = *v7;
  *(v10 + 16) = *(v7 + 2);
  *v10 = v11;
  LODWORD(v10) = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 24 * v10 - 24;
}

void sub_100253724(uint64_t *a1, unint64_t a2)
{
  v16 = 0;
  v3 = a1 + 2;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 64, &v16);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = v7 << 6;
    v9 = v4;
    do
    {
      *v9 = v9 + 16;
      *(v9 + 8) = 0x300000000;
      if (*(v6 + 8))
      {
        sub_100056AF0(v9, v6);
      }

      v10 = *(v6 + 40);
      *(v9 + 56) = *(v6 + 56);
      *(v9 + 40) = v10;
      v9 += 64;
      v6 += 64;
      v8 -= 64;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 2);
    if (v11)
    {
      v12 = v11 << 6;
      v13 = (v12 + v6 - 64);
      v14 = -v12;
      do
      {
        if (v13 + 2 != *v13)
        {
          free(*v13);
        }

        v13 -= 8;
        v14 += 64;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v15 = v16;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 3) = v15;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_10025388C(uint64_t a1, uint64_t a2)
{
  {
    sub_10028AF10();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_1002538D4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties]";
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

const char *sub_100253954()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr]";
  v6 = 110;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100253A0C(uint64_t a1, uint64_t a2)
{
  {
    sub_10028AF64();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100253A54()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties]";
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

uint64_t sub_100253AD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v26 = 1;
  v25 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v11 = BYTE1(v7);
    return v7 | (v11 << 8);
  }

  llvm::APInt::sextOrTrunc(&v25, 0x40u, &v27);
  v8 = v28;
  if (v28 < 0x41)
  {
    v9 = v27;
    *a2 = v27;
    v10 = v26;
    v28 = v26;
    if (v26 > 0x40)
    {
LABEL_16:
      llvm::APInt::initSlowCase(&v27, v9, 0);
    }

    goto LABEL_10;
  }

  v12 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v27);
  v13 = v27;
  if (v12 <= 0x40)
  {
    *a2 = *v27;
LABEL_15:
    operator delete[]();
  }

  v9 = -1;
  *a2 = -1;
  if (v13)
  {
    goto LABEL_15;
  }

  v10 = v26;
  v28 = v26;
  if (v26 > 0x40)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v10)
  {
    v14 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  }

  else
  {
    v14 = 0;
  }

  v27 = (v14 & v9);
  if (v27 == v25)
  {
    LOBYTE(v7) = 1;
    v11 = 1;
  }

  else
  {
    v23 = "integer value too large";
    v24 = 259;
    (*(*a1 + 24))(&v27, a1, v6, &v23);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v34;
        v17 = __p;
        if (v34 != __p)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v34 = v15;
        operator delete(v17);
      }

      v18 = v31;
      if (v31)
      {
        v19 = v32;
        v20 = v31;
        if (v32 != v31)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v31;
        }

        v32 = v18;
        operator delete(v20);
      }

      if (v29 != &v30)
      {
        free(v29);
      }
    }

    LOBYTE(v7) = 0;
    v11 = 1;
    if (v26 >= 0x41 && v25)
    {
      operator delete[]();
    }
  }

  return v7 | (v11 << 8);
}

BOOL sub_100253E64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if ((*(**a1 - 8) & 0xFFFFFFFFFFFFFFF8) == a2)
  {
    return 1;
  }

  v37 = 257;
  mlir::OpState::emitError(v2, v36, v41);
  if (v41[0])
  {
    LODWORD(v38) = 3;
    v39 = "getting a member of type ";
    v40 = 25;
    v5 = &v38;
    v6 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v32 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v6 = v42;
        v5 = v42 + v32;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v5 = &v38;
        v6 = v42;
      }
    }

    v7 = &v6[24 * v43];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v43;
  }

  v38 = *(**(a1 + 8) + 16 * ((*(**(a1 + 8) + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&v38);
  if (v41[0])
  {
    v10 = &v38;
    mlir::DiagnosticArgument::DiagnosticArgument(&v38, Value);
    v11 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v33 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v11 = v42;
        v10 = v42 + v33;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v10 = &v38;
        v11 = v42;
      }
    }

    v12 = &v11[24 * v43];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v43;
    if (v41[0])
    {
      LODWORD(v38) = 3;
      v39 = " cannot produce a value of type ";
      v40 = 32;
      v15 = &v38;
      v16 = v42;
      if (v14 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v14 > &v38)
        {
          v34 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
          v16 = v42;
          v15 = v42 + v34;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
          v15 = &v38;
          v16 = v42;
        }
      }

      v17 = &v16[24 * v43];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      ++v43;
      if (v41[0])
      {
        v19 = *(*v2 - 1);
        v20 = &v38;
        mlir::DiagnosticArgument::DiagnosticArgument(&v38, v19 & 0xFFFFFFFFFFFFFFF8);
        v21 = v42;
        if (v43 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v43 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v21 = v42;
            v20 = v42 + v35;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v20 = &v38;
            v21 = v42;
          }
        }

        v22 = &v21[24 * v43];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v43;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v49;
      v26 = __p;
      if (v49 != __p)
      {
        do
        {
          v25 = sub_100052FFC(v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v49 = v24;
      operator delete(v26);
    }

    v27 = v46;
    if (v46)
    {
      v28 = v47;
      v29 = v46;
      if (v47 != v46)
      {
        do
        {
          v30 = *--v28;
          *v28 = 0;
          if (v30)
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = v46;
      }

      v47 = v27;
      operator delete(v29);
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }

  return v3;
}

BOOL sub_100254328(mlir::Operation ***a1, uint64_t a2)
{
  v2 = *a1;
  if ((*(*(*(**a1 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) == a2)
  {
    return 1;
  }

  v37 = 257;
  mlir::OpState::emitError(v2, v36, v41);
  if (v41[0])
  {
    LODWORD(v38) = 3;
    v39 = "getting a member of type ";
    v40 = 25;
    v5 = &v38;
    v6 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v32 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v6 = v42;
        v5 = v42 + v32;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v5 = &v38;
        v6 = v42;
      }
    }

    v7 = &v6[24 * v43];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v43;
  }

  v38 = *(*a1[1] + 2 * ((*(*a1[1] + 11) >> 23) & 1) + 10);
  Value = mlir::TypeAttr::getValue(&v38);
  if (v41[0])
  {
    v10 = &v38;
    mlir::DiagnosticArgument::DiagnosticArgument(&v38, Value);
    v11 = v42;
    if (v43 >= v44)
    {
      if (v42 <= &v38 && v42 + 24 * v43 > &v38)
      {
        v33 = &v38 - v42;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v11 = v42;
        v10 = v42 + v33;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
        v10 = &v38;
        v11 = v42;
      }
    }

    v12 = &v11[24 * v43];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    v14 = ++v43;
    if (v41[0])
    {
      LODWORD(v38) = 3;
      v39 = " cannot produce a value of type ";
      v40 = 32;
      v15 = &v38;
      v16 = v42;
      if (v14 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v14 > &v38)
        {
          v34 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
          v16 = v42;
          v15 = v42 + v34;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v14 + 1, 24);
          v15 = &v38;
          v16 = v42;
        }
      }

      v17 = &v16[24 * v43];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      ++v43;
      if (v41[0])
      {
        v19 = *(*(*(*v2 + 9) + 56) + 8);
        v20 = &v38;
        mlir::DiagnosticArgument::DiagnosticArgument(&v38, v19 & 0xFFFFFFFFFFFFFFF8);
        v21 = v42;
        if (v43 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v43 > &v38)
          {
            v35 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v21 = v42;
            v20 = v42 + v35;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
            v20 = &v38;
            v21 = v42;
          }
        }

        v22 = &v21[24 * v43];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v43;
      }
    }
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v49;
      v26 = __p;
      if (v49 != __p)
      {
        do
        {
          v25 = sub_100052FFC(v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v49 = v24;
      operator delete(v26);
    }

    v27 = v46;
    if (v46)
    {
      v28 = v47;
      v29 = v46;
      if (v47 != v46)
      {
        do
        {
          v30 = *--v28;
          *v28 = 0;
          if (v30)
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = v46;
      }

      v47 = v27;
      operator delete(v29);
    }

    if (v42 != v45)
    {
      free(v42);
    }
  }

  return v3;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100254834(uint64_t a1, uint64_t a2)
{
  {
    sub_10028AFB8();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_10025487C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties]";
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

const char *sub_1002548FC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ArrayAttr]";
  v6 = 77;
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

const char *sub_10025497C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::UnitAttr]";
  v6 = 76;
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

const char *sub_1002549FC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypeAttr]";
  v6 = 76;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_100254AB4(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B00C();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100254AFC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete();
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t sub_100254BAC(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B060();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100254BF4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties]";
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

const char *sub_100254C74()
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

uint64_t sub_100254D2C(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B0B4();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100254D74()
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

uint64_t sub_100254E24(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B108();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100254E6C()
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

const char *sub_100254EEC()
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

uint64_t sub_100254F7C(unint64_t **a1, uint64_t a2)
{
  {
    sub_100284728();
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

uint64_t sub_1002553D0(uint64_t a1, uint64_t a2, uint64_t **a3)
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
      result = sub_100250A7C(&RawIntOrFloat, result);
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
            v35 = sub_10005CD80(&v38);
            RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v35, v36, v45, 4 * v46);
            v43 = sub_10025276C(a3 + 1, v32, &RawIntOrFloat);
            v37 = sub_1002528D0(a3 + 1, *(a2 + 24), &v39, &v41, &v43);
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

const char *sub_1002556D0()
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

const char *sub_100255A78()
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

void sub_100255AF8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = &v8;
  v8 = 0;
  v9 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (DefiningOp && (sub_100277970(&v7, DefiningOp) & 1) != 0)
  {
    sub_100255C44(v8, &v9);
    *a2 = a2 + 24;
    *(a2 + 8) = xmmword_10028FD10;
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

void sub_100255C44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v4 = (a2 + 24);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_10028FD10;
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

uint64_t *sub_100255D94@<X0>(uint64_t *result@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
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
    sub_100255FCC(result, v4);
    sub_100255F1C(v17, a2, &v19);
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

uint64_t sub_100255F1C(uint64_t *a1, unsigned __int16 *a2, void *a3)
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

void sub_100255FCC(uint64_t a1, int a2)
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
      memset_pattern16(buffer, &unk_10028FE20, 2 * v10);
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

      memset_pattern16(buffer, &unk_10028FE20, 2 * v15);
    }
  }
}

uint64_t *sub_100256190@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    sub_1002563B8(result, v4);
    sub_100256310(v16, a2, &v18);
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

uint64_t sub_100256310(uint64_t *a1, _DWORD *a2, void *a3)
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

void sub_1002563B8(uint64_t a1, int a2)
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
      memset_pattern16(buffer, &unk_10028FE30, 4 * v10);
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

      memset_pattern16(buffer, &unk_10028FE30, 4 * v14);
    }
  }
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_(mlir::ODIE::Compiler::CoreML::AsyncValueType **a1, mlir::AsmParser *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(*a1, a2);
  *a2 = v3;
  return v3 != 0;
}

void *sub_100256598(void *result, _OWORD *a2, unsigned int a3, uint64_t *a4, uint64_t a5)
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

BOOL sub_1002566A4(uint64_t a1, void *a2)
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
          v11 = sub_100052FFC(v11 - 1);
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

uint64_t sub_100256938(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B1DC();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100256980()
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

uint64_t sub_100256A30(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B230();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100256A78()
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

void sub_100256AF8(void *a1@<X0>, uint64_t a2@<X8>)
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

  sub_100062C04(a2, &v27);
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
          v15 = sub_100052FFC(v15 - 1);
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

uint64_t sub_100256E88(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B284();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100256ED0()
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

void sub_100256F50(void *a1@<X0>, uint64_t a2@<X8>)
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

  sub_100062C04(a2, &v27);
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
          v15 = sub_100052FFC(v15 - 1);
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

BOOL sub_1002572B0(uint64_t a1, void *a2)
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
          v9 = sub_100052FFC(v9 - 1);
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

uint64_t sub_100257540(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B2D8();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100257588()
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

BOOL sub_100257608(uint64_t a1, void *a2, uint64_t a3)
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
          v11 = sub_100052FFC(v11 - 1);
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

void sub_100257868(void *a1@<X0>, uint64_t a2@<X8>)
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

  sub_100062C04(a2, &v27);
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
          v15 = sub_100052FFC(v15 - 1);
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

unint64_t sub_100257BC8(char *a1, uint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v22 = a2;
  v15 = sub_10002CAB8(a1, &v22, a3, a4, *a5);
  v23 = v22;
  v16 = sub_10002CAB8(a1, &v23, v15, a4, *a6);
  v24 = v23;
  v17 = sub_10002CAB8(a1, &v24, v16, a4, *a7);
  v25 = v24;
  v18 = sub_10002CAB8(a1, &v25, v17, a4, *a8);
  v26 = v25;
  v19 = sub_10002CAB8(a1, &v26, v18, a4, *a9);
  v27 = v26;
  v20 = sub_10002CAB8(a1, &v27, v19, a4, *a10);
  return sub_10002C12C(a1, v27, v20, a4);
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

uint64_t sub_100257D18(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B32C();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100257D60()
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

const char *sub_100257DE0()
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

uint64_t sub_100257E90(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B380();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100257ED8()
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

const char *sub_100257F58()
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

uint64_t sub_100258008(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B3D4();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100258050()
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

uint64_t sub_100258108(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B428();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100258150()
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

const char *sub_1002581D0()
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

uint64_t sub_100258280(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B47C();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_1002582C8()
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

const char *sub_100258348()
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

uint64_t sub_1002583F8(uint64_t a1, uint64_t a2)
{
  {
    sub_10028B4D0();
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::Name;
}

const char *sub_100258440()
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