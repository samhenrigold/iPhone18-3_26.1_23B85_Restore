BOOL mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReverseOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

void mlir::ODIE::Compiler::CoreML::ReverseOp::verify(mlir::ODIE::Compiler::CoreML::ReverseOp *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v100 = *MEMORY[0x277D85DE8];
  v12 = *this;
  v13 = *(v12 + 72);
  v14 = *(v13 + 56);
  v15 = *(v14 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
  if (*(*(v15 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return;
  }

  v17 = *(v13 + 24);
  v18 = v16[2];
  if (v18)
  {
    v19 = v16[1];
    v20 = 8 * v18;
    v21 = 8 * v18;
    v22 = v19;
    do
    {
      if (*v22 == 0x8000000000000000)
      {
        return;
      }

      ++v22;
      v21 -= 8;
    }

    while (v21);
    v23 = *((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v83 = v23;
    v24 = 1;
    do
    {
      v25 = *v19++;
      v24 *= v25;
      v20 -= 8;
    }

    while (v20);
  }

  else
  {
    v23 = *((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v83 = v23;
    v24 = 1;
  }

  if (v24 > v23)
  {
    v99[4] = 257;
    mlir::Operation::emitError(&v92, v12, &v97);
    if (v92)
    {
      mlir::Diagnostic::operator<<<23ul>(&v93, " number of dimensions ");
    }

    v26 = v16[2];
    if (v26)
    {
      v27 = v16[1];
      v28 = 8 * v26;
      v29 = 1;
      do
      {
        v30 = *v27++;
        v29 *= v30;
        v28 -= 8;
      }

      while (v28);
    }

    else
    {
      v29 = 1;
    }

    v85[0] = v29;
    v34 = mlir::InFlightDiagnostic::operator<<<long long>(&v92, v85);
    v35 = v34;
    if (*v34)
    {
      mlir::Diagnostic::operator<<<24ul>((v34 + 1), " must be <= input rank ");
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(v35, &v83);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
    return;
  }

  v92 = 0;
  v93 = 0;
  v97 = &v92;
  if ((~v15 & 7) == 0)
  {
    v14 = 0;
  }

  if (v14)
  {
    v31 = *(v14 + 8) & 7;
    if (v31 == 6)
    {
      v32 = v14 + 24 * *(v14 + 16);
      v33 = v32 + 120;
      if (v32 == -120)
      {
        return;
      }
    }

    else
    {
      v33 = v14 + 16 * v31 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v97, v33))
    {
      v36 = v16[3];
      if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v37 = v36[2], v37 >> 30 == 1))
      {
        v38 = *this;
        if ((v37 & 0x3FFFFFFF) == 0x10)
        {
          v91 = v23;
          mlir::ODIE::Compiler::extract1DIntVector<short>(&v92, *(*(v38 + 72) + 56));
          if (v96)
          {
            v97 = v99;
            v98 = xmmword_25D0A07A0;
            if (!v93 || (llvm::SmallVectorImpl<short>::operator=(&v97, &v92), (v96 & 1) != 0))
            {
              if (v92 != &v95)
              {
                free(v92);
              }
            }

            v88 = 0;
            v89 = 0;
            v90 = 0;
            if (!v98)
            {
              v39 = 0;
              goto LABEL_122;
            }

            v39 = 0;
            v40 = v97;
            v41 = (v97 + 2 * v98);
            while (1)
            {
              v42 = *v40;
              v43 = *v40;
              v44 = v90;
              if (v90)
              {
                v45 = (v90 - 1) & (37 * v42);
                v46 = *(v39 + 2 * v45);
                if (v43 == v46)
                {
LABEL_41:
                  if (v45 != v90)
                  {
                    v86 = 257;
                    mlir::Operation::emitError(&v92, v38, v85);
                    if (v92)
                    {
                      mlir::Diagnostic::operator<<<12ul>(&v93, " dimension ");
                    }

                    mlir::InFlightDiagnostic::operator<<<short &>(&v92, v43);
                    if (v92)
                    {
                      mlir::Diagnostic::operator<<<51ul>(&v93, " is specified more than once in dimensions operand");
                    }

                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
LABEL_122:
                    MEMORY[0x25F891030](v39, 2);
                    v71 = v97;
                    if (v97 == v99)
                    {
                      return;
                    }

LABEL_106:
                    free(v71);
                    return;
                  }
                }

                else
                {
                  v50 = 1;
                  while (v46 != 0x7FFF)
                  {
                    v51 = v45 + v50++;
                    v45 = v51 & (v90 - 1);
                    v46 = *(v39 + 2 * v45);
                    if (v43 == v46)
                    {
                      goto LABEL_41;
                    }
                  }
                }
              }

              v85[0] = 0;
              if ((llvm::DenseMapBase<llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>,short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::LookupBucketFor<short>(v39, v90, v43, v85) & 1) == 0)
              {
                break;
              }

LABEL_48:
              if (v42 < -v23 || v23 <= v42)
              {
                v86 = 257;
                mlir::Operation::emitError(&v92, v38, v85);
                if (v92)
                {
                  mlir::Diagnostic::operator<<<12ul>(&v93, " dimension ");
                }

                mlir::InFlightDiagnostic::operator<<<short &>(&v92, v43);
                if (v92)
                {
                  mlir::Diagnostic::operator<<<29ul>(&v93, " is beyond the legal range [");
                }

                v84 = -v23;
                v72 = mlir::InFlightDiagnostic::operator<<<long long>(&v92, &v84);
                v73 = v72;
                if (*v72)
                {
                  mlir::Diagnostic::operator<<<3ul>((v72 + 1), ", ");
                }

                v74 = mlir::InFlightDiagnostic::operator<<<long long &>(v73, &v91);
                if (*v74)
                {
                  mlir::Diagnostic::operator<<<2ul>((v74 + 1), ")");
                }

                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
                goto LABEL_122;
              }

              v40 = (v40 + 2);
              if (v40 == v41)
              {
                goto LABEL_122;
              }
            }

            v47 = v85[0];
            v92 = v85[0];
            v48 = v89;
            if (4 * v89 + 4 >= 3 * v44)
            {
              v44 *= 2;
            }

            else if (v44 + ~v89 - HIDWORD(v89) > v44 >> 3)
            {
LABEL_45:
              LODWORD(v89) = v48 + 1;
              if (*v47 != 0x7FFF)
              {
                --HIDWORD(v89);
              }

              *v47 = v43;
              goto LABEL_48;
            }

            llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::grow(&v88, v44);
            v39 = v88;
            llvm::DenseMapBase<llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>,short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::LookupBucketFor<short>(v88, v90, v43, &v92);
            v48 = v89;
            v47 = v92;
            goto LABEL_45;
          }

LABEL_124:
          v75 = std::__throw_bad_optional_access[abi:nn200100]();
          mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11);
          return;
        }
      }

      else
      {
        v38 = *this;
      }

      v91 = v23;
      mlir::ODIE::Compiler::extract1DIntVector<int>(*(*(v38 + 72) + 56), &v92);
      if ((v96 & 1) == 0)
      {
        goto LABEL_124;
      }

      v97 = &v98 + 1;
      *&v98 = 0xC00000000;
      if (!v93 || (llvm::SmallVectorImpl<int>::operator=(&v97, &v92), (v96 & 1) != 0))
      {
        if (v92 != &v94)
        {
          free(v92);
        }
      }

      v88 = 0;
      v89 = 0;
      v90 = 0;
      if (!v98)
      {
        v52 = 0;
        goto LABEL_105;
      }

      v52 = 0;
      v53 = v97;
      v54 = v97 + v98;
      while (1)
      {
        v55 = *v53;
        v87 = *v53;
        v56 = v90;
        if (v90)
        {
          v57 = (v90 - 1) & (37 * v55);
          v58 = *(v52 + 4 * v57);
          if (v55 == v58)
          {
LABEL_71:
            if (v57 != v90)
            {
              v86 = 257;
              mlir::Operation::emitError(&v92, v38, v85);
              if (v92)
              {
                mlir::Diagnostic::operator<<<12ul>(&v93, " dimension ");
              }

              v70 = mlir::InFlightDiagnostic::operator<<<int &>(&v92, &v87);
              if (*v70)
              {
                mlir::Diagnostic::operator<<<51ul>((v70 + 1), " is specified more than once in dimensions operand");
              }

LABEL_104:
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v92);
LABEL_105:
              MEMORY[0x25F891030](v52, 4);
              v71 = v97;
              if (v97 == (&v98 + 8))
              {
                return;
              }

              goto LABEL_106;
            }
          }

          else
          {
            v63 = 1;
            while (v58 != 0x7FFFFFFF)
            {
              v64 = v57 + v63++;
              v57 = v64 & (v90 - 1);
              v58 = *(v52 + 4 * v57);
              if (v55 == v58)
              {
                goto LABEL_71;
              }
            }
          }
        }

        v85[0] = 0;
        if (llvm::DenseMapBase<llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>,int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::LookupBucketFor<int>(v52, v90, v55, v85))
        {
          v59 = v87;
          goto LABEL_79;
        }

        v60 = v85[0];
        v92 = v85[0];
        v61 = v89;
        if (4 * v89 + 4 >= 3 * v56)
        {
          break;
        }

        if (v56 + ~v89 - HIDWORD(v89) <= v56 >> 3)
        {
          goto LABEL_90;
        }

LABEL_76:
        LODWORD(v89) = v61 + 1;
        if (*v60 != 0x7FFFFFFF)
        {
          --HIDWORD(v89);
        }

        v59 = v87;
        *v60 = v87;
LABEL_79:
        if (v59 < -v23 || v23 <= v59)
        {
          v86 = 257;
          mlir::Operation::emitError(&v92, v38, v85);
          if (v92)
          {
            mlir::Diagnostic::operator<<<12ul>(&v93, " dimension ");
          }

          v65 = mlir::InFlightDiagnostic::operator<<<int &>(&v92, &v87);
          v66 = v65;
          if (*v65)
          {
            mlir::Diagnostic::operator<<<29ul>((v65 + 1), " is beyond the legal range [");
          }

          v84 = -v23;
          v67 = mlir::InFlightDiagnostic::operator<<<long long>(v66, &v84);
          v68 = v67;
          if (*v67)
          {
            mlir::Diagnostic::operator<<<3ul>((v67 + 1), ", ");
          }

          v69 = mlir::InFlightDiagnostic::operator<<<long long &>(v68, &v91);
          if (*v69)
          {
            mlir::Diagnostic::operator<<<2ul>((v69 + 1), ")");
          }

          goto LABEL_104;
        }

        if (++v53 == v54)
        {
          goto LABEL_105;
        }
      }

      v56 *= 2;
LABEL_90:
      llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::grow(&v88, v56);
      v52 = v88;
      llvm::DenseMapBase<llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>,int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::LookupBucketFor<int>(v88, v90, v87, &v92);
      v61 = v89;
      v60 = v92;
      goto LABEL_76;
    }
  }
}

void mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61[5] = *MEMORY[0x277D85DE8];
  v48[0] = a4;
  v48[1] = a5;
  if (a5 == 4)
  {
    v12 = mlir::ValueRange::dereference_iterator(v48, 2);
    v13 = mlir::ValueRange::dereference_iterator(v48, 1);
    v14 = v13;
    v15 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v15)
    {
      if ((a4 & 6) == 2 && v15)
      {
        v15 = v15[3];
      }
    }

    else
    {
      v15 = *v15;
    }

    v16 = v15[1] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = v17[1];
      v21 = v17[2];
      v22 = v18[3];
      LOBYTE(v44) = 0;
      v47 = 0;
      v55 = 0uLL;
      v59 = &v55;
      if ((~*(v13 + 8) & 7) != 0)
      {
        v23 = v13;
      }

      else
      {
        v23 = 0;
      }

      if (!v23)
      {
        goto LABEL_39;
      }

      v24 = *(v23 + 8) & 7;
      if (v24 == 6)
      {
        v25 = v23 + 24 * *(v23 + 16);
        v26 = v25 + 120;
        if (v25 == -120)
        {
LABEL_39:
          if (v47 == 1 && v44 != &v46)
          {
            free(v44);
          }

          return;
        }
      }

      else
      {
        v26 = v23 + 16 * v24 + 16;
      }

      if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v59, v26))
      {
        goto LABEL_39;
      }

      if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v30 = v22[2];
        if (v30 == 1073741856)
        {
          mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<int>(&v55, v20, v21, v14, v12);
          goto LABEL_33;
        }

        if (v30 == 1073741840)
        {
          mlir::ODIE::Compiler::extract1DIntVector<short>(&v55, v14);
          if ((v58 & 1) == 0)
          {
            goto LABEL_72;
          }

          v49 = v51;
          v50 = xmmword_25D0A07A0;
          if (!*(&v55 + 1) || (llvm::SmallVectorImpl<short>::operator=(&v49, &v55), (v58 & 1) != 0))
          {
            if (v55 != v57)
            {
              free(v55);
            }
          }

          mlir::ODIE::Compiler::extract1DIntVector<BOOL>(v12, &v55);
          if ((v58 & 1) == 0)
          {
LABEL_72:
            v39 = std::__throw_bad_optional_access[abi:nn200100]();
            mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<int>(v39, v40, v41, v42, v43);
            return;
          }

          v59 = v61;
          v60 = xmmword_25D0A0550;
          if (!*(&v55 + 1) || (llvm::SmallVectorImpl<BOOL>::operator=(&v59, &v55), (v58 & 1) != 0))
          {
            if (v55 != v57)
            {
              free(v55);
            }
          }

          v52 = v54;
          v53 = 0x600000000;
          llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v52, v20, &v20[8 * v21]);
          v31 = v53;
          if (v53)
          {
            v32 = v59;
            v33 = v49;
            v34 = v52;
            do
            {
              v36 = *v32;
              v32 = (v32 + 1);
              v35 = v36;
              v38 = *v20;
              v20 += 8;
              v37 = v38;
              if (v35 == 1)
              {
                v37 = (v37 * *v33);
              }

              *v34++ = v37;
              ++v33;
              --v31;
            }

            while (v31);
            *&v55 = &v56;
            *(&v55 + 1) = 0x600000000;
            llvm::SmallVectorImpl<long long>::operator=(&v55, &v52);
          }

          else
          {
            *&v55 = &v56;
            *(&v55 + 1) = 0x600000000;
          }

          v58 = 1;
          if (v52 != v54)
          {
            free(v52);
          }

          if (v59 != v61)
          {
            free(v59);
          }

          if (v49 != v51)
          {
            free(v49);
          }

          std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v44, &v55);
          if (v58 != 1)
          {
            goto LABEL_37;
          }

          v27 = v55;
          goto LABEL_35;
        }
      }

      mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<float>(&v55, v20, v21, v14, v12);
LABEL_33:
      std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v44, &v55);
      if (v58 != 1)
      {
LABEL_37:
        if (v47 == 1)
        {
          v28 = v17[3];
          *&v55 = v44;
          *(&v55 + 1) = v45;
          v59 = v28;
          v52 = 0;
          v29 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &v55, &v59, &v52);
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v29);
        }

        goto LABEL_39;
      }

      v27 = v55;
LABEL_35:
      if (v27 != &v56)
      {
        free(v27);
      }

      goto LABEL_37;
    }
  }

  else
  {

    mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 4 operands");
  }
}

void mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<int>(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[5] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DIntVector<int>(a4, &v19);
  if ((v23 & 1) == 0)
  {
    goto LABEL_25;
  }

  v17[0] = v18;
  v17[1] = 0xC00000000;
  if (!v20 || (llvm::SmallVectorImpl<int>::operator=(v17, &v19), (v23 & 1) != 0))
  {
    if (v19 != &v21)
    {
      free(v19);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<BOOL>(a5, &v19);
  if ((v23 & 1) == 0)
  {
LABEL_25:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v24 = v26;
  v25 = xmmword_25D0A0550;
  if (!v20 || (llvm::SmallVectorImpl<BOOL>::operator=(&v24, &v19), (v23 & 1) != 0))
  {
    if (v19 != &v22)
    {
      free(v19);
    }
  }

  v19 = &v21;
  v20 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v19, a2, &a2[8 * a3]);
  v9 = v20;
  if (v20)
  {
    v10 = v24;
    v11 = v17[0];
    v12 = v19;
    do
    {
      v14 = *v10++;
      v13 = v14;
      v16 = *a2;
      a2 += 8;
      v15 = v16;
      if (v13 == 1)
      {
        v15 = (v15 * *v11);
      }

      *v12++ = v15;
      ++v11;
      --v9;
    }

    while (v9);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    llvm::SmallVectorImpl<long long>::operator=(a1, &v19);
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }

  *(a1 + 64) = 1;
  if (v19 != &v21)
  {
    free(v19);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }
}

void mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<float>(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[5] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DFloatVector<float>(a4, &v19);
  if ((v23 & 1) == 0)
  {
    goto LABEL_25;
  }

  v17[0] = v18;
  v17[1] = 0xC00000000;
  if (!v20 || (llvm::SmallVectorImpl<float>::operator=(v17, &v19), (v23 & 1) != 0))
  {
    if (v19 != &v21)
    {
      free(v19);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<BOOL>(a5, &v19);
  if ((v23 & 1) == 0)
  {
LABEL_25:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v24 = v26;
  v25 = xmmword_25D0A0550;
  if (!v20 || (llvm::SmallVectorImpl<BOOL>::operator=(&v24, &v19), (v23 & 1) != 0))
  {
    if (v19 != &v22)
    {
      free(v19);
    }
  }

  v19 = &v21;
  v20 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v19, a2, &a2[8 * a3]);
  v9 = v20;
  if (v20)
  {
    v10 = v24;
    v11 = v17[0];
    v12 = v19;
    do
    {
      v14 = *v10++;
      v13 = v14;
      v16 = *a2;
      a2 += 8;
      v15 = v16;
      if (v13 == 1)
      {
        v15 = vcvtms_s32_f32(*v11 * v15);
      }

      *v12++ = v15;
      ++v11;
      --v9;
    }

    while (v9);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    llvm::SmallVectorImpl<long long>::operator=(a1, &v19);
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }

  *(a1 + 64) = 1;
  if (v19 != &v21)
  {
    free(v19);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src);
  if (v11)
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v12 = __src;
      v13 = __src + 8 * v19;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verify(mlir::ODIE::Compiler::CoreML::ResizeByScaleOp *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(v2 + 72) + 88);
  v18 = 0;
  v19[0] = 0;
  v16[0] = &v18;
  if ((~*(v3 + 8) & 7) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
LABEL_13:
    v17 = 257;
    mlir::Operation::emitError(&v18, v2, v16);
    if (v18)
    {
    }

LABEL_15:
    v10 = v20;
    goto LABEL_16;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16);
    v7 = v6 + 120;
    if (v6 == -120)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v4 + 16 * v5 + 16;
  }

  v8 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v16, v7);
  v2 = *this;
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = (*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v17 = 257;
    mlir::Operation::emitError(&v18, v2, v16);
    if (v18)
    {
    }

    goto LABEL_15;
  }

  if (v9[2] == **((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
    v11 = 1;
    return v11 & 1;
  }

  v17 = 257;
  mlir::Operation::emitError(&v18, v2, v16);
  if (v18)
  {
    mlir::Diagnostic::operator<<<65ul>(v19, " Rank of input needs to be same as len(axes), but input.rank == ");
  }

  v15 = v9[2];
  v13 = mlir::InFlightDiagnostic::operator<<<long long>(&v18, &v15);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<23ul>((v13 + 1), " whereas len(axes) == ");
  }

  v10 = *(mlir::InFlightDiagnostic::operator<<<long long const&>(v14, *((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8)) + 200);
LABEL_16:
  v11 = v10 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v11 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::RoundOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RoundOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::RoundOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreML::SoftmaxOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v13 = __src;
      v14 = __src + 8 * v20;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[38]>(a2, a3, "fails to infer the type of softmax op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::SelectOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v58[2] = *MEMORY[0x277D85DE8];
  v58[0] = a4;
  v58[1] = a5;
  if (a5 == 3)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v15 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }

    v16 = v15[1];
    v17 = v15[2];
    v18 = mlir::ValueRange::dereference_iterator(v58, 1);
    __src = 0;
    v55 = 0;
    *&v53 = &__src;
    if ((~*(v18 + 8) & 7) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      goto LABEL_47;
    }

    v20 = v18;
    v21 = *(v19 + 8) & 7;
    if (v21 == 6)
    {
      v22 = v19 + 24 * *(v19 + 16);
      v23 = v22 + 120;
      if (v22 == -120)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v23 = v19 + 16 * v21 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v53, v23))
    {
      mlir::ODIE::Compiler::extract1DIntVector<int>(v20, &__src);
      if ((v57 & 1) == 0)
      {
        v43 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::ODIE::Compiler::CoreML::SelectOp::refineReturnTypes(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11);
      }

      v24 = *__src;
      if (__src != v56)
      {
        free(__src);
      }

      v25 = (v17 & (v24 >> 31)) + v24;
      if (v25 < 0 || v17 <= v25)
      {
        return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "invalid dim for select op.");
      }

      __src = 0;
      v55 = 0;
      v56[0] = 0;
      if (v17 < 1)
      {
        v26 = 0;
        v38 = 0;
      }

      else
      {
        v26 = 0;
        v27 = v17 & 0x7FFFFFFF;
        do
        {
          if (v25)
          {
            if (v26 >= v56[0])
            {
              v28 = __src;
              v29 = v26 - __src;
              v30 = (v26 - __src) >> 3;
              v31 = v30 + 1;
              if ((v30 + 1) >> 61)
              {
                std::vector<long long>::__throw_length_error[abi:nn200100]();
              }

              v32 = v56[0] - __src;
              if ((v56[0] - __src) >> 2 > v31)
              {
                v31 = v32 >> 2;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__src, v33);
              }

              v34 = (v26 - __src) >> 3;
              v35 = (8 * v30);
              v36 = (8 * v30 - 8 * v34);
              *v35 = *v16;
              v26 = (v35 + 1);
              memcpy(v36, v28, v29);
              v37 = __src;
              __src = v36;
              v55 = v26;
              v56[0] = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              *v26 = *v16;
              v26 += 8;
            }

            v55 = v26;
          }

          ++v16;
          --v25;
          --v27;
        }

        while (v27);
        v38 = __src;
      }

      v41 = v15[3];
      *&v53 = v38;
      *(&v53 + 1) = (v26 - v38) >> 3;
      v51 = 0;
      v52 = v41;
      v42 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v41 + 32), &v53, &v52, &v51);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v42);
      if (__src)
      {
        v55 = __src;
        operator delete(__src);
      }

      return 1;
    }

LABEL_47:
    __src = v56;
    v55 = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&__src, v17 - 1, 0x8000000000000000);
    v39 = v15[3];
    *&v53 = __src;
    *(&v53 + 1) = v55;
    v51 = 0;
    v52 = v39;
    v40 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v39 + 32), &v53, &v52, &v51);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v40);
    if (__src != v56)
    {
      free(__src);
    }

    return 1;
  }

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands");
}

BOOL mlir::ODIE::Compiler::CoreML::SelectOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  if (mlir::ODIE::Compiler::CoreML::SelectOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v13 = __src;
      v14 = __src + 8 * v20;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[37]>(a2, a3, "fails to infer the type of select op");
  }

  if (__src != v21)
  {
    free(__src);
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::CumSumOp::verify(void ****this)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = (*this)[9][7];
  v26[0] = 0uLL;
  *&v23[0] = v26;
  if ((~v1[2] & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    goto LABEL_29;
  }

  v3 = *(v1 + 1) & 7;
  if (v3 == 6)
  {
    v4 = &v1[6 * *(v1 + 2)];
    v5 = (v4 + 120);
    if (v4 == -120)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = &v1[4 * v3 + 4];
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v23, v5))
  {
LABEL_29:
    v15 = 1;
    return v15 & 1;
  }

  v6 = *this;
  v7 = (*this)[9];
  v8 = *((*(v7[3] + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  v9 = v7[7];
  v25 = 0;
  *&v26[0] = &v25;
  if ((~v9[2] & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = *(v9 + 1) & 7;
  if (v10 == 6)
  {
    v11 = &v9[6 * *(v9 + 2)];
    v12 = (v11 + 120);
    if (v11 == -120)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = &v9[4 * v10 + 4];
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v26, v12))
  {
    v6 = *this;
LABEL_22:
    v24 = 257;
    mlir::Operation::emitError(v26, v6, v23);
    if (*&v26[0])
    {
      mlir::Diagnostic::operator<<<37ul>(v26 + 8, "Unable to get value of constant axis");
    }

    v14 = v27;
    goto LABEL_25;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v25, v26);
  v23[0] = v26[0];
  v23[1] = v26[1];
  mlir::DenseElementsAttr::IntElementIterator::operator*(v23, v26);
  if (DWORD2(v26[0]) > 0x40)
  {
    v13 = **&v26[0];
    MEMORY[0x25F891010]();
  }

  else if (DWORD2(v26[0]))
  {
    v13 = (*&v26[0] << -BYTE8(v26[0])) >> -BYTE8(v26[0]);
  }

  else
  {
    v13 = 0;
  }

  v22 = v13;
  if ((v13 & 0x8000000000000000) == 0 && v13 < v8)
  {
    goto LABEL_29;
  }

  v24 = 257;
  mlir::Operation::emitError(v26, *this, v23);
  if (*&v26[0])
  {
    mlir::Diagnostic::operator<<<26ul>(v26 + 8, "Axis passed to cumsum is:");
  }

  v17 = mlir::InFlightDiagnostic::operator<<<long long &>(v26, &v22);
  v18 = v17;
  if (*v17)
  {
    mlir::Diagnostic::operator<<<31ul>((v17 + 1), ", expected Axis between 0 and ");
  }

  v21 = v8 - 1;
  v19 = mlir::InFlightDiagnostic::operator<<<long long>(v18, &v21);
  v20 = v19;
  if (*v19)
  {
    mlir::Diagnostic::operator<<<12ul>((v19 + 1), ", inclusive");
  }

  v14 = *(v20 + 200);
LABEL_25:
  v15 = v14 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
  return v15 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::CumSumOp::inferReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 4)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 4 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CumSumOp::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::CumSumOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, a11[2], __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
    {
      v11 = __src;
      v12 = __src + 8 * v18;
      a11[2] = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v19)
  {
    free(__src);
  }

  return v13;
}

void mlir::ODIE::Compiler::CoreML::AcosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v43[25] = *MEMORY[0x277D85DE8];
  v38 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v11 = *a2;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      return 1;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      return 1;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v21 = v14[2];
      v18 = 1;
      if ((v21 + 2147483644) <= 0x3C && ((1 << (v21 - 4)) & 0x1000000010001011) != 0)
      {
        return v18;
      }

      v23 = v21 - 1073741828;
      v24 = v23 > 0x3C;
      v25 = (1 << v23) & 0x1000000010001011;
      if (!v24 && v25 != 0)
      {
        return v18;
      }

      goto LABEL_34;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v19 = *(**(v14 + 1) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        return 1;
      }
    }
  }

LABEL_34:
  v37 = 261;
  v36[0] = a3;
  v36[1] = a4;
  mlir::Operation::emitOpError(&v42, a1, v36);
  if (v42)
  {
    mlir::Diagnostic::operator<<<3ul>(v43, " #");
  }

  v27 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v42, &v38);
  v28 = v27;
  if (*v27)
  {
    v39 = 3;
    v40 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
    v41 = 261;
    v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v27 + 3), &v39, 1);
    v30 = v28[3] + 24 * *(v28 + 8);
    v31 = *v29;
    *(v30 + 16) = *(v29 + 16);
    *v30 = v31;
    ++*(v28 + 8);
    if (*v28)
    {
      v39 = 4;
      v40 = a2;
      v32 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v28 + 3), &v39, 1);
      v33 = v28[3] + 24 * *(v28 + 8);
      v34 = *v32;
      *(v33 + 16) = *(v32 + 16);
      *v33 = v34;
      ++*(v28 + 8);
    }
  }

  v18 = (v28[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v18 = a3[1];
  v19 = v6;
  if (v6 == v18)
  {
    if (v6)
    {
      v8 = *a2;
      v9 = *a3;
      v10 = 32 * v6;
      while (((*(*a1 + 728))(a1, v8, *v9, a5) & 1) != 0)
      {
        v8 += 32;
        ++v9;
        v10 -= 32;
        if (!v10)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v17[16] = 257;
    (*(*a1 + 24))(&v20, a1, a4, v17);
    if (v20)
    {
      mlir::Diagnostic::operator<<<48ul>(v21, "number of operands and types do not match: got ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v20, &v19);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " operands and ");
    }

    v14 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v18);
    v15 = v14;
    if (*v14)
    {
      mlir::Diagnostic::operator<<<7ul>((v14 + 1), " types");
    }

    v11 = (v15[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  return v11;
}

void mlir::ODIE::Compiler::CoreML::AcosOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

void mlir::ODIE::Compiler::CoreML::AcoshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AcoshOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

void mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
    v13 = v11;
    if (v11)
    {
      v11 = (*(v12 + 8))(v12, v11);
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v9 == v14)
    {
      v16 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v16);
      v19 = v17;
      if (v17)
      {
        v17 = (*(v18 + 8))(v18, v17);
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
      v24 = v22;
      if (v22)
      {
        v22 = (*(v23 + 8))(v23, v22);
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      if (v20 == v25)
      {
        v7 = 1;
        return v7 & 1;
      }

      v15 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v26 = v15;
    v27 = 259;
    mlir::Operation::emitOpError(v28, *this, &v26);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v41[25] = *MEMORY[0x277D85DE8];
  v36 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v11 = *a2;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      return 1;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      return 1;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v21 = v14[2];
      v18 = 1;
      if ((v21 + 2147483644) <= 0x3C && ((1 << (v21 - 4)) & 0x1000000010001011) != 0)
      {
        return v18;
      }

      v23 = (v21 - 1073741828) > 0x3C || ((1 << (v21 - 4)) & 0x1000000010001011) == 0;
      if (!v23 || v21 == 1)
      {
        return v18;
      }

      goto LABEL_36;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v19 = *(**(v14 + 1) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        return 1;
      }
    }
  }

LABEL_36:
  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(&v40, a1, v34);
  if (v40)
  {
    mlir::Diagnostic::operator<<<3ul>(v41, " #");
  }

  v25 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v40, &v36);
  v26 = v25;
  if (*v25)
  {
    v37 = 3;
    v38 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
    v39 = 278;
    v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v25 + 3), &v37, 1);
    v28 = v26[3] + 24 * *(v26 + 8);
    v29 = *v27;
    *(v28 + 16) = *(v27 + 16);
    *v28 = v29;
    ++*(v26 + 8);
    if (*v26)
    {
      v37 = 4;
      v38 = a2;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v26 + 3), &v37, 1);
      v31 = v26[3] + 24 * *(v26 + 8);
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++*(v26 + 8);
    }
  }

  v18 = (v26[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::AddOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AddOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::AllOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v7 = a6;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
}

BOOL mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v28[25] = *MEMORY[0x277D85DE8];
  v24 = a5;
  v9 = *(*a2 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
    {
      v11 = *a2;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      v14 = (*(v13 + 8))(v13, a2);
      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v14[2] == 1)
      {
        return 1;
      }
    }
  }

  v23 = 261;
  v22[0] = a3;
  v22[1] = a4;
  mlir::Operation::emitOpError(&v27, a1, v22);
  if (v27)
  {
    mlir::Diagnostic::operator<<<3ul>(v28, " #");
  }

  v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v24);
  v17 = v16;
  if (*v16)
  {
    mlir::Diagnostic::operator<<<57ul>((v16 + 1), " must be CoreML Tensor of Boolean type. values, but got ");
    if (*v17)
    {
      v25 = 4;
      v26 = a2;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v25, 1);
      v19 = v17[3] + 24 * *(v17 + 8);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++*(v17 + 8);
    }
  }

  v15 = (v17[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v35[25] = *MEMORY[0x277D85DE8];
  v31 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    if ((*(v11 + 16))(v11, a2))
    {
      v12 = *a2;
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
      (*(v14 + 24))(v14, a2);
      if (v15 == 1)
      {
        v16 = *a2;
        v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
        v19 = (*(v18 + 8))(v18, a2);
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v27 = v19[2];
          if (v27 == 1073741840 || v27 == 1073741856)
          {
            return 1;
          }
        }
      }
    }
  }

  v30 = 261;
  v29[0] = a3;
  v29[1] = a4;
  mlir::Operation::emitOpError(&v34, a1, v29);
  if (v34)
  {
    mlir::Diagnostic::operator<<<3ul>(v35, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v34, &v31);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<51ul>((v20 + 1), " must be 1D tensor of Index type. values, but got ");
    if (*v21)
    {
      v32 = 4;
      v33 = a2;
      v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v32, 1);
      v23 = v21[3] + 24 * *(v21 + 8);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 16);
      *v23 = v24;
      ++*(v21 + 8);
    }
  }

  v25 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v33[25] = *MEMORY[0x277D85DE8];
  v29 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    if ((*(v11 + 16))(v11, a2))
    {
      v12 = *a2;
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
      (*(v14 + 24))(v14, a2);
      if (!v15)
      {
        v16 = *a2;
        v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
        v19 = (*(v18 + 8))(v18, a2);
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v19[2] == 1)
        {
          return 1;
        }
      }
    }
  }

  v28 = 261;
  v27[0] = a3;
  v27[1] = a4;
  mlir::Operation::emitOpError(&v32, a1, v27);
  if (v32)
  {
    mlir::Diagnostic::operator<<<3ul>(v33, " #");
  }

  v21 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, &v29);
  v22 = v21;
  if (*v21)
  {
    mlir::Diagnostic::operator<<<53ul>((v21 + 1), " must be 0D tensor of Boolean type. values, but got ");
    if (*v22)
    {
      v30 = 4;
      v31 = a2;
      v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v22 + 3), &v30, 1);
      v24 = v22[3] + 24 * *(v22 + 8);
      v25 = *v23;
      *(v24 + 16) = *(v23 + 16);
      *v24 = v25;
      ++*(v22 + 8);
    }
  }

  v20 = (v22[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::AllOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AllOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::AndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::AndOp::build(void **a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v16, 0, &v16, 1);
  __src = v20;
  v19 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = a2[6];
  mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  if (!mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AndOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::AnyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v7 = a6;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
}

BOOL mlir::ODIE::Compiler::CoreML::AnyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AnyOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AnyOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}

void mlir::ODIE::Compiler::CoreML::ArgSortOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __src = a3;
  v10 = a5;
  v11 = a4;
  v8 = a7;
  v9 = a6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v13);
}

BOOL mlir::ODIE::Compiler::CoreML::ArgSortOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps8(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = 1;
  if ((mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 0) & 1) == 0)
  {
    v5 = "failed to verify that Result 0 and operand 0 must have the same shape.";
    v6 = 259;
    mlir::Operation::emitOpError(v7, *this, &v5);
    v3 = (v8 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  return v3;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v41[25] = *MEMORY[0x277D85DE8];
  v36 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v10 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_18;
  }

  v11 = *a2;
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  v14 = (*(v13 + 8))(v13, a2);
  v15 = *(*v14 + 136);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return 1;
  }

  if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((v28 = v14[2], v18 = 1, (v28 + 2147483644) <= 0x3C) ? (v29 = ((1 << (v28 - 4)) & 0x1000000010001011) == 0) : (v29 = 1), v29 && ((v30 = v28 - 1073741828, v31 = v30 > 0x3C, v32 = (1 << v30) & 0x1000000010001011, !v31) ? (v33 = v32 == 0) : (v33 = 1), v33)))
  {
LABEL_18:
    v35 = 261;
    v34[0] = a3;
    v34[1] = a4;
    mlir::Operation::emitOpError(&v40, a1, v34);
    if (v40)
    {
      mlir::Diagnostic::operator<<<3ul>(v41, " #");
    }

    v19 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v40, &v36);
    v20 = v19;
    if (*v19)
    {
      v37 = 3;
      v38 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer values, but got ";
      v39 = 175;
      v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v37, 1);
      v22 = v20[3] + 24 * *(v20 + 8);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 16);
      *v22 = v23;
      ++*(v20 + 8);
      if (*v20)
      {
        v37 = 4;
        v38 = a2;
        v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v37, 1);
        v25 = v20[3] + 24 * *(v20 + 8);
        v26 = *v24;
        *(v25 + 16) = *(v24 + 16);
        *v25 = v26;
        ++*(v20 + 8);
      }
    }

    v18 = (v20[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
  }

  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v35[25] = *MEMORY[0x277D85DE8];
  v31 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    if ((*(v11 + 16))(v11, a2))
    {
      v12 = *a2;
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
      (*(v14 + 24))(v14, a2);
      if (!v15)
      {
        v16 = *a2;
        v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
        v19 = (*(v18 + 8))(v18, a2);
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v27 = v19[2];
          if (v27 == 1073741840 || v27 == 1073741856)
          {
            return 1;
          }
        }
      }
    }
  }

  v30 = 261;
  v29[0] = a3;
  v29[1] = a4;
  mlir::Operation::emitOpError(&v34, a1, v29);
  if (v34)
  {
    mlir::Diagnostic::operator<<<3ul>(v35, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v34, &v31);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<51ul>((v20 + 1), " must be 0D tensor of Index type. values, but got ");
    if (*v21)
    {
      v32 = 4;
      v33 = a2;
      v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v32, 1);
      v23 = v21[3] + 24 * *(v21 + 8);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 16);
      *v23 = v24;
      ++*(v21 + 8);
    }
  }

  v25 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps8(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v26 = a5;
  v9 = *(*a2 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
    {
      v11 = *a2;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      v14 = (*(v13 + 8))(v13, a2);
      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v22 = v14[2];
        if (v22 == 1073741840 || v22 == 1073741856)
        {
          return 1;
        }
      }
    }
  }

  v25 = 261;
  v24[0] = a3;
  v24[1] = a4;
  mlir::Operation::emitOpError(&v29, a1, v24);
  if (v29)
  {
    mlir::Diagnostic::operator<<<3ul>(v30, " #");
  }

  v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, &v26);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<55ul>((v15 + 1), " must be CoreML Tensor of Index type. values, but got ");
    if (*v16)
    {
      v27 = 4;
      v28 = a2;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), &v27, 1);
      v18 = v16[3] + 24 * *(v16 + 8);
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++*(v16 + 8);
    }
  }

  v20 = (v16[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::ArgSortOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v16 = 0;
  v17[0] = &v18;
  v15[0] = &v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v11[0] = &v12;
  v11[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v29, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v26, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v23, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v18 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v16 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v14 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v9)) && (__src = v9, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v11), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v17, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v15, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v13, v6, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v11, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ArgSortOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v48[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
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

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++*(v24 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ",", 1uLL);
  }

  else
  {
    *v35 = 44;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ")", 1uLL);
  }

  else
  {
    *v39 = 41;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) - v43 > 1uLL)
  {
    *v43 = 15917;
    *(v42 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v42, "->", 2uLL);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  v46 = *this - 16;
  if (!*(*this + 9))
  {
    v46 = 0;
  }

  (*(*a2 + 32))(a2, *(v46 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v48, 0);
}

void mlir::ODIE::Compiler::CoreML::AsinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AsinOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

void mlir::ODIE::Compiler::CoreML::AsinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AsinhOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

void mlir::ODIE::Compiler::CoreML::AtanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AtanOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

void mlir::ODIE::Compiler::CoreML::AtanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  v7 = 1;
  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v16 = 259;
    mlir::Operation::emitOpError(v17, *this, &v15);
    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  }

  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AtanhOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, 0);
}

void mlir::ODIE::Compiler::CoreML::AvgPool2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = a4;
  __src = a3;
  v15 = a6;
  v16 = a5;
  v13 = a8;
  v14 = a7;
  v11 = a10;
  v12 = a9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v19);
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  v4 = 1;
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v6 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v7 = 259;
    mlir::Operation::emitOpError(v8, *this, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4)
{
  v43[25] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v8 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    if ((*(v10 + 16))(v10, a2))
    {
      v11 = *a2;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      (*(v13 + 24))(v13, a2);
      if (v14 == 4)
      {
        v15 = *a2;
        v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        v18 = (*(v17 + 8))(v17, a2);
        v19 = *(*v18 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          return 1;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          return 1;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v25 = v18[2];
          v22 = 1;
          if ((v25 + 2147483644) <= 0x3C && ((1 << (v25 - 4)) & 0x1000000010001011) != 0)
          {
            return v22;
          }

          v27 = v25 - 1073741828;
          v28 = v27 > 0x3C;
          v29 = (1 << v27) & 0x1000000010001011;
          if (!v28 && v29 != 0)
          {
            return v22;
          }

          goto LABEL_31;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v23 = *(**(v18 + 1) + 136);
          if (v23 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            return 1;
          }
        }
      }
    }
  }

LABEL_31:
  v38 = 261;
  v37[0] = a3;
  v37[1] = a4;
  mlir::Operation::emitOpError(&v42, a1, v37);
  if (v42)
  {
    mlir::Diagnostic::operator<<<3ul>(v43, " #");
  }

  v31 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v42, &v39);
  v32 = v31;
  if (*v31)
  {
    mlir::Diagnostic::operator<<<258ul>((v31 + 1), " must be 4D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ");
    if (*v32)
    {
      v40 = 4;
      v41 = a2;
      v33 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v32 + 3), &v40, 1);
      v34 = v32[3] + 24 * *(v32 + 8);
      v35 = *v33;
      *(v34 + 16) = *(v33 + 16);
      *v34 = v35;
      ++*(v32 + 8);
    }
  }

  v22 = (v32[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  return v22;
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  v46[0] = v47;
  v46[1] = 1;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  v43[0] = v44;
  v43[1] = 1;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  v26[1] = 1;
  v27 = 0;
  v25 = 0;
  v26[0] = &v27;
  v24[0] = &v25;
  v24[1] = 1;
  v22[1] = 1;
  v23 = 0;
  v21 = 0;
  v22[0] = &v23;
  v20[0] = &v21;
  v20[1] = 1;
  v18[1] = 1;
  v19 = 0;
  v17 = 0;
  v18[0] = &v19;
  v16[0] = &v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v47, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v44, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v41, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v38, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v35, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v32, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v29, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v27 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v25 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v23 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v21 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v19 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v17 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v12 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v12)) && (__src = v12, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v46, v26, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v43, v24, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v22, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v20, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v18, v8, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v16, v9, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v14, v10, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AvgPool2dOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v72[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 184));
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 216));
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++*(v32 + 4);
  }

  v34 = (*(*a2 + 16))(a2);
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

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) == v37)
  {
    llvm::raw_ostream::write(v36, "(", 1uLL);
  }

  else
  {
    *v37 = 40;
    ++*(v36 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++*(v42 + 4);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if (*(v50 + 3) == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++*(v50 + 4);
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ",", 1uLL);
  }

  else
  {
    *v55 = 44;
    ++*(v54 + 4);
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (*(v58 + 3) == v59)
  {
    llvm::raw_ostream::write(v58, ",", 1uLL);
  }

  else
  {
    *v59 = 44;
    ++*(v58 + 4);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8);
  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (*(v62 + 3) == v63)
  {
    llvm::raw_ostream::write(v62, ")", 1uLL);
  }

  else
  {
    *v63 = 41;
    ++*(v62 + 4);
  }

  v64 = (*(*a2 + 16))(a2);
  v65 = *(v64 + 4);
  if (v65 >= *(v64 + 3))
  {
    llvm::raw_ostream::write(v64, 32);
  }

  else
  {
    *(v64 + 4) = v65 + 1;
    *v65 = 32;
  }

  v66 = (*(*a2 + 16))(a2);
  v67 = *(v66 + 4);
  if (*(v66 + 3) - v67 > 1uLL)
  {
    *v67 = 15917;
    *(v66 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v66, "->", 2uLL);
  }

  v68 = (*(*a2 + 16))(a2);
  v69 = *(v68 + 4);
  if (v69 >= *(v68 + 3))
  {
    llvm::raw_ostream::write(v68, 32);
  }

  else
  {
    *(v68 + 4) = v69 + 1;
    *v69 = 32;
  }

  v70 = *this - 16;
  if (!*(*this + 9))
  {
    v70 = 0;
  }

  (*(*a2 + 32))(a2, *(v70 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v72, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  v4 = 1;
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v6 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v7 = 259;
    mlir::Operation::emitOpError(v8, *this, &v6);
    v4 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4)
{
  v43[25] = *MEMORY[0x277D85DE8];
  v39 = 0;
  v8 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    if ((*(v10 + 16))(v10, a2))
    {
      v11 = *a2;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      (*(v13 + 24))(v13, a2);
      if (v14 == 5)
      {
        v15 = *a2;
        v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        v18 = (*(v17 + 8))(v17, a2);
        v19 = *(*v18 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          return 1;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          return 1;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v25 = v18[2];
          v22 = 1;
          if ((v25 + 2147483644) <= 0x3C && ((1 << (v25 - 4)) & 0x1000000010001011) != 0)
          {
            return v22;
          }

          v27 = v25 - 1073741828;
          v28 = v27 > 0x3C;
          v29 = (1 << v27) & 0x1000000010001011;
          if (!v28 && v29 != 0)
          {
            return v22;
          }

          goto LABEL_31;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v23 = *(**(v18 + 1) + 136);
          if (v23 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            return 1;
          }
        }
      }
    }
  }

LABEL_31:
  v38 = 261;
  v37[0] = a3;
  v37[1] = a4;
  mlir::Operation::emitOpError(&v42, a1, v37);
  if (v42)
  {
    mlir::Diagnostic::operator<<<3ul>(v43, " #");
  }

  v31 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v42, &v39);
  v32 = v31;
  if (*v31)
  {
    mlir::Diagnostic::operator<<<258ul>((v31 + 1), " must be 5D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ");
    if (*v32)
    {
      v40 = 4;
      v41 = a2;
      v33 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v32 + 3), &v40, 1);
      v34 = v32[3] + 24 * *(v32 + 8);
      v35 = *v33;
      *(v34 + 16) = *(v33 + 16);
      *v34 = v35;
      ++*(v32 + 8);
    }
  }

  v22 = (v32[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  return v22;
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool3dOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  v46[0] = v47;
  v46[1] = 1;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  v43[0] = v44;
  v43[1] = 1;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  v26[1] = 1;
  v27 = 0;
  v25 = 0;
  v26[0] = &v27;
  v24[0] = &v25;
  v24[1] = 1;
  v22[1] = 1;
  v23 = 0;
  v21 = 0;
  v22[0] = &v23;
  v20[0] = &v21;
  v20[1] = 1;
  v18[1] = 1;
  v19 = 0;
  v17 = 0;
  v18[0] = &v19;
  v16[0] = &v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v47, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v44, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v41, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v38, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v35, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v32, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v29, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v27 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v25 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v23 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v21 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v19 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v17 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v12 = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v12)) && (__src = v12, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v14), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v46, v26, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v43, v24, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v22, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v20, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v18, v8, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v16, v9, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v14, v10, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AvgPool3dOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v72[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 184));
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 216));
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++*(v32 + 4);
  }

  v34 = (*(*a2 + 16))(a2);
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

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (*(v36 + 3) == v37)
  {
    llvm::raw_ostream::write(v36, "(", 1uLL);
  }

  else
  {
    *v37 = 40;
    ++*(v36 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++*(v42 + 4);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if (*(v50 + 3) == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++*(v50 + 4);
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ",", 1uLL);
  }

  else
  {
    *v55 = 44;
    ++*(v54 + 4);
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (*(v58 + 3) == v59)
  {
    llvm::raw_ostream::write(v58, ",", 1uLL);
  }

  else
  {
    *v59 = 44;
    ++*(v58 + 4);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8);
  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (*(v62 + 3) == v63)
  {
    llvm::raw_ostream::write(v62, ")", 1uLL);
  }

  else
  {
    *v63 = 41;
    ++*(v62 + 4);
  }

  v64 = (*(*a2 + 16))(a2);
  v65 = *(v64 + 4);
  if (v65 >= *(v64 + 3))
  {
    llvm::raw_ostream::write(v64, 32);
  }

  else
  {
    *(v64 + 4) = v65 + 1;
    *v65 = 32;
  }

  v66 = (*(*a2 + 16))(a2);
  v67 = *(v66 + 4);
  if (*(v66 + 3) - v67 > 1uLL)
  {
    *v67 = 15917;
    *(v66 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v66, "->", 2uLL);
  }

  v68 = (*(*a2 + 16))(a2);
  v69 = *(v68 + 4);
  if (v69 >= *(v68 + 3))
  {
    llvm::raw_ostream::write(v68, 32);
  }

  else
  {
    *(v68 + 4) = v69 + 1;
    *v69 = 32;
  }

  v70 = *this - 16;
  if (!*(*this + 9))
  {
    v70 = 0;
  }

  (*(*a2 + 32))(a2, *(v70 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v72, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AwaitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v16[25] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*(*(v1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = 0;
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    return 1;
  }

  v11 = 261;
  v10[0] = "operand";
  v10[1] = 7;
  mlir::Operation::emitOpError(&v15, v1, v10);
  if (v15)
  {
    mlir::Diagnostic::operator<<<3ul>(v16, " #");
  }

  v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v15, &v12);
  v4 = v3;
  if (*v3)
  {
    mlir::Diagnostic::operator<<<20ul>((v3 + 1), " must be , but got ");
    if (*v4)
    {
      v13 = 4;
      v14 = v2;
      v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v4 + 3), &v13, 1);
      v6 = v4[3] + 24 * *(v4 + 8);
      v7 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *v6 = v7;
      ++*(v4 + 8);
    }
  }

  v8 = *(v4 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return (v8 & 1) == 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::parse(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  v20[1] = 1;
  v21 = 0;
  v20[0] = &v21;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  v27 = 0;
  __src = a1;
  if (((*(*a1 + 544))(a1, &v27, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = v27;
  if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v25 = "invalid kind of Type specified";
    v26 = 259;
    (*(*a1 + 24))(&__src, a1, v5, &v25);
    v7 = v30[184];
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    if (v7)
    {
      return 0;
    }

    v6 = 0;
  }

  v21 = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v20, v4, a2 + 16))
  {
    return 0;
  }

  __src = v30;
  v29 = 0x600000000;
  (*(*a1 + 32))(a1);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = (*(*a1 + 32))(a1);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *v11);
  if (mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(Dictionary, v8, 1, v9 & 0xFFFFFFFFFFFFFFF9, v10, v13, v14, v15, v18, v19, &__src))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v29);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (__src != v30)
  {
    free(__src);
  }

  return v16;
}

void mlir::ODIE::Compiler::CoreML::AwaitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  v12 = *(*(*(*this + 9) + 24) + 8);
  v13 = v12 & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v17 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((*(*a2 + 64))(a2))
    {
      goto LABEL_18;
    }

    v14 = (*(*a2 + 16))(a2);
    v15 = (*(*v14 + 80))(v14) + v14[4] - v14[2];
    mlir::ODIE::Compiler::CoreML::AsyncValueType::print(&v17, a2);
    if (v15 != (*(*v14 + 80))(v14) + v14[4] - v14[2])
    {
      goto LABEL_18;
    }

    v13 = v17;
  }

  (*(*a2 + 32))(a2, v13);
LABEL_18:
  v17 = v19;
  v18 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }
}

void mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v48 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      v3 = *this;
      if ((*(*this + 46) & 0x80) != 0 && v3[17] >= 2u)
      {
        v4 = *(v3 + 9);
        v5 = (*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*(*(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_26;
        }

        v6 = mlir::Type::cast<mlir::ShapedType>(v5);
        v8 = v7;
        v9 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8));
        v11 = v10;
        (*(v8 + 24))(v8, v6);
        v13 = v12;
        (*(v11 + 24))(v11, v9);
        if (v13 == v14)
        {
          (*(v8 + 24))(v8, v6);
          v16 = v15 - 2;
          if (v15 >= 2)
          {
            v20 = v15 - 1;
            v21 = *((*(v8 + 24))(v8, v6) + 8 * (v15 - 1));
            if (v21 == *((*(v11 + 24))(v11, v9) + 8 * v16) || *((*(v8 + 24))(v8, v6) + 8 * v20) == 0x8000000000000000 || *((*(v11 + 24))(v11, v9) + 8 * v16) == 0x8000000000000000)
            {
              if (v16)
              {
                v22 = 0;
                do
                {
                  if (*((*(v8 + 24))(v8, v6) + 8 * v22) != 0x8000000000000000 && *((*(v11 + 24))(v11, v9) + 8 * v22) != 0x8000000000000000)
                  {
                    v23 = *((*(v8 + 24))(v8, v6) + 8 * v22);
                    if (v23 != *((*(v11 + 24))(v11, v9) + 8 * v22))
                    {
                      goto LABEL_13;
                    }
                  }
                }

                while (v16 != ++v22);
              }

              v3 = *this;
LABEL_26:
              v24 = (*(v3 - 1) & 0xFFFFFFFFFFFFFFF8);
              v25 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v24);
              v27 = v25;
              if (v25)
              {
                v25 = (*(v26 + 8))(v26, v25);
              }

              if (v27)
              {
                v28 = v25;
              }

              else
              {
                v28 = v24;
              }

              v29 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v29);
              v32 = v30;
              if (v30)
              {
                v30 = (*(v31 + 8))(v31, v30);
              }

              if (v32)
              {
                v33 = v30;
              }

              else
              {
                v33 = v29;
              }

              if (v28 == v33)
              {
                v34 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
                v35 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v34);
                v37 = v35;
                if (v35)
                {
                  v35 = (*(v36 + 8))(v36, v35);
                }

                if (v37)
                {
                  v38 = v35;
                }

                else
                {
                  v38 = v34;
                }

                v39 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
                v40 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v39);
                v42 = v40;
                if (v40)
                {
                  v40 = (*(v41 + 8))(v41, v40);
                }

                if (v42)
                {
                  v43 = v40;
                }

                else
                {
                  v43 = v39;
                }

                if (v38 == v43)
                {
                  v18 = 1;
                  return v18 & 1;
                }

                v17 = "failed to verify that Result 0 element type must match element type of operand 1.";
              }

              else
              {
                v17 = "failed to verify that Result 0 element type must match element type of operand 0.";
              }

              goto LABEL_50;
            }
          }
        }
      }

LABEL_13:
      v17 = "failed to verify that number of dims >=2 and last dim of operand 0 equals second last dim of operand 1";
LABEL_50:
      v44 = v17;
      v45 = 259;
      mlir::Operation::emitOpError(v46, *this, &v44);
      v18 = v47 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v46);
      return v18 & 1;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t *mlir::Type::cast<mlir::ShapedType>(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return a1;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::BatchMatmulOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::BatchNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a4;
  __src = a3;
  v13 = a6;
  v14 = a5;
  v11 = a8;
  v12 = a7;
  v10 = a9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v17);
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchNormOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps14(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps14(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps14(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps14(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), 4u))
  {
    goto LABEL_38;
  }

  if ((v2 = *this, v3 = *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8, v46 = v3, v45 = 5, v4 = *v3, *(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) || (v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5), !(*(v6 + 16))(v6, v3)) || (v7 = *v3, v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8), (*(v9 + 24))(v9, v3), v10) || ((v36 = *v3, v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v38 = mlir::detail::InterfaceMap::lookup(v36 + 8, v37), v39 = *(*(*(v38 + 8))(v38, v3) + 136), v39 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) ? (v40 = v39 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v40 = 1), !v40 ? (v41 = v39 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v41 = 1), !v41 ? (v42 = v39 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v42 = 1), !v42))
  {
    v44 = 261;
    v43[0] = "operand";
    v43[1] = 7;
    mlir::Operation::emitOpError(v47, v2, v43);
    if (v47[0])
    {
      mlir::Diagnostic::operator<<<3ul>(&v47[1], " #");
    }

    v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v47, &v45);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<100ul>((v11 + 1), " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type values, but got ");
      if (*v12)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>((v12 + 1), &v46);
      }
    }

    v13 = *(v12 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v47);
    if (v13)
    {
      goto LABEL_38;
    }
  }

  v14 = *(*this + 9) ? *this - 16 : 0;
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(v14 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
  {
    v15 = &dword_25D09F65C;
    v16 = 16;
    v17 = &dword_25D09F65C;
    do
    {
      v18 = *v17++;
      v19 = (*(*(*(*this + 9) + 32 * v18 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v19);
      v22 = v20;
      if (v20)
      {
        v20 = (*(v21 + 8))(v21, v20);
      }

      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = v19;
      }

      v24 = (*(*(*(*this + 9) + 32 * *(v15 - 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v25 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v24);
      v27 = v25;
      if (v25)
      {
        v25 = (*(v26 + 8))(v26, v25);
      }

      if (v27)
      {
        v28 = v25;
      }

      else
      {
        v28 = v24;
      }

      if (v23 != v28)
      {
        v35 = "failed to verify that Operands should have same element type.";
        goto LABEL_55;
      }

      v15 = v17;
      v16 -= 4;
    }

    while (v16);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 184)) || (v30 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 184)), (*v30)[17] != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) || mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)) == v30[1])
    {
      v31 = *this;
      *v47 = xmmword_25D0A0790;
      if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v31, v47, 4))
      {
        v32 = mlir::getElementTypeOrSelf(*this - 16);
        if (v32 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
        {
          v33 = 1;
          return v33 & 1;
        }

        v35 = "failed to verify that Result 0 element type must match element type of operand 0.";
      }

      else
      {
        v35 = "failed to verify that Operands should have same shape.";
      }
    }

    else
    {
      v35 = "failed to verify that Operand 5 and operand 0 must have the same inner element type.";
    }

LABEL_55:
    v43[0] = v35;
    v44 = 259;
    mlir::Operation::emitOpError(v47, *this, v43);
    v33 = v48 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v47);
  }

  else
  {
LABEL_38:
    v33 = 0;
  }

  return v33 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4)
{
  v32[25] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v8 = *(*a2 + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v9 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v10 = *a2;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
    v13 = (*(v12 + 8))(v12, a2);
    v14 = (*v13)[17];
    if (v14 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      return 1;
    }

    if (v14 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      return 1;
    }

    if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v18 = *(*v13[1] + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        return 1;
      }
    }
  }

  v27 = 261;
  v26[0] = a3;
  v26[1] = a4;
  mlir::Operation::emitOpError(&v31, a1, v26);
  if (v31)
  {
    mlir::Diagnostic::operator<<<3ul>(v32, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v28);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<190ul>((v20 + 1), " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ");
    if (*v21)
    {
      v29 = 4;
      v30 = a2;
      v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v29, 1);
      v23 = v21[3] + 24 * *(v21 + 8);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 16);
      *v23 = v24;
      ++*(v21 + 8);
    }
  }

  v17 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  return v17;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps14(mlir::Operation *a1, uint64_t *a2, unsigned int a3)
{
  v34[25] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v5 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
    if ((*(v7 + 16))(v7, a2))
    {
      v8 = *a2;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
      (*(v10 + 24))(v10, a2);
      if (v11 == 1)
      {
        v12 = *a2;
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
        v15 = (*(v14 + 8))(v14, a2);
        v16 = (*v15)[17];
        if (v16 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          return 1;
        }

        if (v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          return 1;
        }

        if (v16 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v20 = *(*v15[1] + 136);
          if (v20 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
            return 1;
          }
        }
      }
    }
  }

  v29 = 261;
  v28[0] = "operand";
  v28[1] = 7;
  mlir::Operation::emitOpError(&v33, a1, v28);
  if (v33)
  {
    mlir::Diagnostic::operator<<<3ul>(v34, " #");
  }

  v22 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v33, &v30);
  v23 = v22;
  if (*v22)
  {
    mlir::Diagnostic::operator<<<186ul>((v22 + 1), " must be 1D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ");
    if (*v23)
    {
      v31 = 4;
      v32 = a2;
      v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v23 + 3), &v31, 1);
      v25 = v23[3] + 24 * *(v23 + 8);
      v26 = *v24;
      *(v25 + 16) = *(v24 + 16);
      *v25 = v26;
      ++*(v23 + 8);
    }
  }

  v19 = (v23[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  return v19;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a2;
  v5 = 0;
  v6 = 0;
  v7 = &a2[a3];
  while (1)
  {
    v8 = (*(*(*(a1 + 72) + 32 * *v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v8)
    {
      goto LABEL_17;
    }

    v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
    v11 = v9;
    if (!v10 || !(*(v9 + 16))(v9, v10))
    {
      goto LABEL_17;
    }

    v12 = (*(v11 + 24))(v11, v10);
    if (v13)
    {
      v14 = 8 * v13;
      while (*v12 != 0x8000000000000000)
      {
        ++v12;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_17;
    }

LABEL_12:
    if (v6)
    {
      break;
    }

    v5 = v11;
    v6 = v10;
LABEL_17:
    if (++v3 == v7)
    {
      return 1;
    }
  }

  v15 = (*(v5 + 24))(v5, v6);
  v17 = v16;
  v18 = (*(v11 + 24))(v11, v10);
  if (v17 == v19 && !memcmp(v15, v18, 8 * v17))
  {
    goto LABEL_17;
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchNormOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  v23[1] = 1;
  v24 = 0;
  v22 = 0;
  v23[0] = &v24;
  v21[0] = &v22;
  v21[1] = 1;
  v19[1] = 1;
  v20 = 0;
  v18 = 0;
  v19[0] = &v20;
  v17[0] = &v18;
  v17[1] = 1;
  v15[1] = 1;
  v16 = 0;
  v14 = 0;
  v15[0] = &v16;
  v13[0] = &v14;
  v13[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v41, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v38, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v35, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v32, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v29, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v9 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v26, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v24 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v22 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v20 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v18 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v16 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v14 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v11 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v11)) && (__src = v11, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v13), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v23, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v21, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v34, v19, v6, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v17, v7, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v15, v8, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v13, v9, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::BatchNormOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v64[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 184));
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (*(v28 + 3) == v29)
  {
    llvm::raw_ostream::write(v28, ":", 1uLL);
  }

  else
  {
    *v29 = 58;
    ++*(v28 + 4);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, "(", 1uLL);
  }

  else
  {
    *v33 = 40;
    ++*(v32 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ",", 1uLL);
  }

  else
  {
    *v35 = 44;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++*(v42 + 4);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if (*(v50 + 3) == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++*(v50 + 4);
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ")", 1uLL);
  }

  else
  {
    *v55 = 41;
    ++*(v54 + 4);
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (*(v58 + 3) - v59 > 1uLL)
  {
    *v59 = 15917;
    *(v58 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "->", 2uLL);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  v62 = *this - 16;
  if (!*(*this + 9))
  {
    v62 = 0;
  }

  (*(*a2 + 32))(a2, *(v62 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v64, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::BatchToSpace::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps13(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6))
  {
    return 0;
  }

  v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
  v6 = v4;
  if (v4)
  {
    v4 = (*(v5 + 8))(v5, v4);
  }

  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
  v13 = v11;
  if (v11)
  {
    v11 = (*(v12 + 8))(v12, v11);
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v9 != v14)
  {
    v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
LABEL_25:
    v23 = v15;
    v24 = 259;
    mlir::Operation::emitOpError(v25, *this, &v23);
    v7 = (v26 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
    return v7;
  }

  v16 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  (*(v17 + 24))(v17, v16);
  v19 = v18;
  v20 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
  (*(v21 + 24))(v21, v20);
  if (v19 != v22)
  {
    v15 = "failed to verify that Result 0 and operand 0 must have the same rank.";
    goto LABEL_25;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "decomposition", 13, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v35[25] = *MEMORY[0x277D85DE8];
  v31 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    if ((*(v11 + 16))(v11, a2))
    {
      v12 = *a2;
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
      (*(v14 + 24))(v14, a2);
      if (v15 == 2)
      {
        v16 = *a2;
        v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
        v19 = (*(v18 + 8))(v18, a2);
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v27 = v19[2];
          if (v27 == 1073741840 || v27 == 1073741856)
          {
            return 1;
          }
        }
      }
    }
  }

  v30 = 261;
  v29[0] = a3;
  v29[1] = a4;
  mlir::Operation::emitOpError(&v34, a1, v29);
  if (v34)
  {
    mlir::Diagnostic::operator<<<3ul>(v35, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v34, &v31);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<51ul>((v20 + 1), " must be 2D tensor of Index type. values, but got ");
    if (*v21)
    {
      v32 = 4;
      v33 = a2;
      v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v32, 1);
      v23 = v21[3] + 24 * *(v21 + 8);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 16);
      *v23 = v24;
      ++*(v21 + 8);
    }
  }

  v25 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[26] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v23[0] = *(a2 + 8);
  v20[0] = a2;
  v17[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__0;
  v8 = 1;
  if ((llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v23, v20, 1, v17) & 1) == 0)
  {
    v20[0] = "region #";
    v21 = 259;
    mlir::Operation::emitOpError(v23, a1, v20);
    v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v23, &v22);
    v10 = v9;
    if (a4)
    {
      v16 = 1283;
      v15[0] = " ('";
      v15[2] = a3;
      v15[3] = a4;
      v11 = v15;
      v17[2] = "') ";
      v12 = 2;
      v13 = 3;
    }

    else
    {
      v12 = 3;
      v11 = " ";
      v13 = 1;
    }

    v19 = v13;
    v17[0] = v11;
    v18 = v12;
    if (*v9)
    {
      mlir::Diagnostic::operator<<((v9 + 1), v17);
      if (*v10)
      {
        mlir::Diagnostic::operator<<<50ul>((v10 + 1), "failed to verify constraint: region with 1 blocks");
      }
    }

    v8 = (v10[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  }

  return v8;
}

void mlir::ODIE::Compiler::CoreML::BatchToSpace::parse(uint64_t a1, uint64_t a2)
{
  v4[16] = *MEMORY[0x277D85DE8];
  v2 = v4;
  v3 = 0x400000000;
  operator new();
}

void mlir::ODIE::Compiler::CoreML::BatchToSpace::print(mlir::ODIE::Compiler::CoreML::BatchToSpace *this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v3 = *this;
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  if ((*(v3 + 46) & 0x80) != 0)
  {
    v6 = *(v3 + 72);
    v7 = *(v3 + 68);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v28 = v6;
  v29 = v7;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v28);
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ")", 1uLL);
  }

  else
  {
    *v9 = 41;
    ++*(v8 + 4);
  }

  v28 = v30;
  v29 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v3);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v28, v29);
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ":", 1uLL);
  }

  else
  {
    *v14 = 58;
    ++*(v13 + 4);
  }

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

  if ((*(v3 + 46) & 0x80) != 0)
  {
    v17 = *(v3 + 72);
    v18 = *(v3 + 68);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v27[0] = v17;
  v27[1] = 0;
  v27[2] = v17;
  v27[3] = v18;
  v19 = *(v3 + 36);
  v20 = v3 - 16;
  if (!v19)
  {
    v20 = 0;
  }

  v26[0] = v20;
  v26[1] = 0;
  v26[2] = v20;
  v26[3] = v19;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v27, v26);
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *(v3 + 44);
  if ((v23 & 0x800000) != 0)
  {
    v24 = *(v3 + 68);
    v25 = *(v3 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v24 = 0;
    v25 = 2;
  }

  (*(*a2 + 232))(a2, ((v3 + 64 + 16 * ((v23 >> 23) & 1) + ((v23 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40), v25, v24);
  (*(*a2 + 224))(a2, ((v3 + 64 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40), 0, 1, 0);
  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyDecompositionBlock(mlir::ODIE::Compiler::CoreML *this, mlir::Operation *a2, mlir::Block *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 4);
  if (*(*(v3 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
  {
    v4 = "expected YieldOp to terminate the decomposition block.";
LABEL_9:
    v9 = v4;
    v10 = 259;
    mlir::Operation::emitOpError(v11, this, &v9);
    v8 = v12 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
    return v8 & 1;
  }

  v5 = *(a2 + 5);
  if (v5 == (a2 + 32) || v5 == v3)
  {
    v4 = "expected the decomposition block to contain ops.";
    goto LABEL_9;
  }

  v8 = 1;
  return v8 & 1;
}

void mlir::ODIE::Compiler::CoreML::BitwiseAndOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::BitwiseAndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseAndOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
    v13 = v11;
    if (v11)
    {
      v11 = (*(v12 + 8))(v12, v11);
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v9 == v14)
    {
      v16 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v16);
      v19 = v17;
      if (v17)
      {
        v17 = (*(v18 + 8))(v18, v17);
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
      v24 = v22;
      if (v22)
      {
        v22 = (*(v23 + 8))(v23, v22);
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      if (v20 == v25)
      {
        v7 = 1;
        return v7 & 1;
      }

      v15 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v26 = v15;
    v27 = 259;
    mlir::Operation::emitOpError(v28, *this, &v26);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v32[25] = *MEMORY[0x277D85DE8];
  v28 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v10 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1) || (v11 = *a2, v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12), v14 = (*(v13 + 8))(v13, a2), *(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || ((v22 = v14[2], v20 = 1, (v22 + 2147483644) <= 0x3C) ? (v23 = ((1 << (v22 - 4)) & 0x1000000010001011) == 0) : (v23 = 1), v23 && ((v22 - 1073741828) <= 0x3C ? (v24 = ((1 << (v22 - 4)) & 0x1000000010001011) == 0) : (v24 = 1), v24 ? (v25 = v22 == 1) : (v25 = 1), !v25)))
  {
    v27 = 261;
    v26[0] = a3;
    v26[1] = a4;
    mlir::Operation::emitOpError(&v31, a1, v26);
    if (v31)
    {
      mlir::Diagnostic::operator<<<3ul>(v32, " #");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v28);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<129ul>((v15 + 1), " must be CoreML Tensor of 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or Boolean type. values, but got ");
      if (*v16)
      {
        v29 = 4;
        v30 = a2;
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), &v29, 1);
        v18 = v16[3] + 24 * *(v16 + 8);
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++*(v16 + 8);
      }
    }

    v20 = (v16[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  }

  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::BitwiseAndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::BitwiseAndOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::BitwiseOrOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::BitwiseOrOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseOrOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
    v13 = v11;
    if (v11)
    {
      v11 = (*(v12 + 8))(v12, v11);
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v9 == v14)
    {
      v16 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v16);
      v19 = v17;
      if (v17)
      {
        v17 = (*(v18 + 8))(v18, v17);
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
      v24 = v22;
      if (v22)
      {
        v22 = (*(v23 + 8))(v23, v22);
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      if (v20 == v25)
      {
        v7 = 1;
        return v7 & 1;
      }

      v15 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v26 = v15;
    v27 = 259;
    mlir::Operation::emitOpError(v28, *this, &v26);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::BitwiseOrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::BitwiseOrOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::BitwiseXorOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v7[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v7);
}

void mlir::ODIE::Compiler::CoreML::BitwiseXorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseXorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
    v13 = v11;
    if (v11)
    {
      v11 = (*(v12 + 8))(v12, v11);
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v9 == v14)
    {
      v16 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v16);
      v19 = v17;
      if (v17)
      {
        v17 = (*(v18 + 8))(v18, v17);
      }

      if (v19)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v21);
      v24 = v22;
      if (v22)
      {
        v22 = (*(v23 + 8))(v23, v22);
      }

      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = v21;
      }

      if (v20 == v25)
      {
        v7 = 1;
        return v7 & 1;
      }

      v15 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v26 = v15;
    v27 = 259;
    mlir::Operation::emitOpError(v28, *this, &v26);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::BitwiseXorOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v17, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::BitwiseXorOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
}

void mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v7 = a6;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v11);
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(v2 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v3;
    }

    v10 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v10);
    v13 = v11;
    if (v11)
    {
      v11 = (*(v12 + 8))(v12, v11);
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v9 != v14)
    {
      v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
LABEL_25:
      v23 = v15;
      v24 = 259;
      mlir::Operation::emitOpError(v25, *this, &v23);
      v7 = v26 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
      return v7 & 1;
    }

    v16 = mlir::Type::cast<mlir::ShapedType>((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    (*(v17 + 24))(v17, v16);
    v19 = v18;
    v20 = mlir::Type::cast<mlir::ShapedType>((*(*this - 1) & 0xFFFFFFFFFFFFFFF8));
    (*(v21 + 24))(v21, v20);
    if (v19 != v22)
    {
      v15 = "failed to verify that Result 0 and operand 0 must have the same rank.";
      goto LABEL_25;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(mlir::Operation *a1, char *a2, const char *a3, const char *a4, unsigned int a5)
{
  v41[25] = *MEMORY[0x277D85DE8];
  v36 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v11 = *a2;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      return 1;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      return 1;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v21 = v14[2];
      v18 = 1;
      if ((v21 + 2147483644) <= 0x3C && ((1 << (v21 - 4)) & 0x1000000010001011) != 0)
      {
        return v18;
      }

      v23 = (v21 - 1073741828) > 0x3C || ((1 << (v21 - 4)) & 0x1000000010001011) == 0;
      if (!v23 || v21 == 1)
      {
        return v18;
      }

      goto LABEL_36;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v19 = *(**(v14 + 1) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        return 1;
      }
    }
  }

LABEL_36:
  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(&v40, a1, v34);
  if (v40)
  {
    mlir::Diagnostic::operator<<<3ul>(v41, " #");
  }

  v25 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v40, &v36);
  v26 = v25;
  if (*v25)
  {
    v37 = 3;
    v38 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
    v39 = 278;
    v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v25 + 3), &v37, 1);
    v28 = v26[3] + 24 * *(v26 + 8);
    v29 = *v27;
    *(v28 + 16) = *(v27 + 16);
    *v28 = v29;
    ++*(v26 + 8);
    if (*v26)
    {
      v37 = 4;
      v38 = a2;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v26 + 3), &v37, 1);
      v31 = v26[3] + 24 * *(v26 + 8);
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++*(v26 + 8);
    }
  }

  v18 = (v26[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v23, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v20, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && (v6 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v17, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v15 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v13 = __src, ((*(*a1 + 120))(a1)) && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v40, 0);
}