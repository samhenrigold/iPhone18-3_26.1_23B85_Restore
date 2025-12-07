void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)5>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v131[0] = ElementType;
  v129 = ***a1;
  v11 = mlir::TensorType::getElementType(&v129);
  Value = v11;
  v128 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v128);
  v128 = ElementType;
  v129 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v127 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v126 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v131[0] = mlir::AffineMapAttr::getValue(&v127);
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v37 = a3[1] - *a3;
    if (v37)
    {
      if ((v37 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v38 = a4[1] - *a4;
      if (!v38)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_173;
        }

        return;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v131) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v129))
  {
    if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v129))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_173;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_173;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v23 = a3[1] - *a3;
      if (v23)
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v86, &v83);
          if (v83)
          {
            v84 = v83;
            operator delete(v83);
          }

          v18 = v86;
          if (v86)
          {
            v87 = v86;
            goto LABEL_173;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v80, &v77);
          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          v18 = v80;
          if (v80)
          {
            v81 = v80;
            goto LABEL_173;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v131))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v33 = a3[1] - *a3;
        if (v33)
        {
          if ((v33 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v34 = a4[1] - *a4;
          if (!v34)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v74, &v71);
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            v18 = v74;
            if (v74)
            {
              v75 = v74;
              goto LABEL_173;
            }

            return;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v27 = a3[1] - *a3;
        if (v27)
        {
          if ((v27 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v28 = a4[1] - *a4;
          if (!v28)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)5>(a1, a2, &v68, &v65);
            if (v65)
            {
              v66 = v65;
              operator delete(v65);
            }

            v18 = v68;
            if (v68)
            {
              v69 = v68;
              goto LABEL_173;
            }

            return;
          }

          if ((v28 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v131))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)5>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_173;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v131, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)5>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_173;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(v131, 32))
      {
        if (mlir::Type::isInteger(v131, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)5>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v131, 8) && !mlir::Type::isInteger(v131, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v128);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)5>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v35 = a3[1] - *a3;
      if (v35)
      {
        if ((v35 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)5>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_173;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v111 = 0;
    v110 = 0;
    v112 = 0;
    v39 = a3[1] - *a3;
    if (v39)
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v40 = a4[1] - *a4;
      if (!v40)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v110, &v107);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_173;
        }

        return;
      }

      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)15>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v131[0] = ElementType;
  v129 = ***a1;
  v11 = mlir::TensorType::getElementType(&v129);
  Value = v11;
  v128 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v128);
  v128 = ElementType;
  v129 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v127 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v126 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v131[0] = mlir::AffineMapAttr::getValue(&v127);
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v37 = a3[1] - *a3;
    if (v37)
    {
      if ((v37 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v38 = a4[1] - *a4;
      if (!v38)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_173;
        }

        return;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v131) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v129))
  {
    if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v129))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_173;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_173;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v23 = a3[1] - *a3;
      if (v23)
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v86, &v83);
          if (v83)
          {
            v84 = v83;
            operator delete(v83);
          }

          v18 = v86;
          if (v86)
          {
            v87 = v86;
            goto LABEL_173;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v80, &v77);
          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          v18 = v80;
          if (v80)
          {
            v81 = v80;
            goto LABEL_173;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v131))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v33 = a3[1] - *a3;
        if (v33)
        {
          if ((v33 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v34 = a4[1] - *a4;
          if (!v34)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v74, &v71);
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            v18 = v74;
            if (v74)
            {
              v75 = v74;
              goto LABEL_173;
            }

            return;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v27 = a3[1] - *a3;
        if (v27)
        {
          if ((v27 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v28 = a4[1] - *a4;
          if (!v28)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)15>(a1, a2, &v68, &v65);
            if (v65)
            {
              v66 = v65;
              operator delete(v65);
            }

            v18 = v68;
            if (v68)
            {
              v69 = v68;
              goto LABEL_173;
            }

            return;
          }

          if ((v28 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v131))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)15>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_173;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v131, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)15>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_173;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(v131, 32))
      {
        if (mlir::Type::isInteger(v131, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)15>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v131, 8) && !mlir::Type::isInteger(v131, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v128);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)15>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v35 = a3[1] - *a3;
      if (v35)
      {
        if ((v35 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)15>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_173;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v111 = 0;
    v110 = 0;
    v112 = 0;
    v39 = a3[1] - *a3;
    if (v39)
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v40 = a4[1] - *a4;
      if (!v40)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v110, &v107);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_173;
        }

        return;
      }

      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)16>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v131[0] = ElementType;
  v129 = ***a1;
  v11 = mlir::TensorType::getElementType(&v129);
  Value = v11;
  v128 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v128);
  v128 = ElementType;
  v129 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v127 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v126 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    v131[0] = mlir::AffineMapAttr::getValue(&v127);
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_175;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_173:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v37 = a3[1] - *a3;
    if (v37)
    {
      if ((v37 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v38 = a4[1] - *a4;
      if (!v38)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_173;
        }

        return;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_175:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v131) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v129))
  {
    if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isF16(&v129))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_173;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_173;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v23 = a3[1] - *a3;
      if (v23)
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v24 = a4[1] - *a4;
        if (!v24)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v86, &v83);
          if (v83)
          {
            v84 = v83;
            operator delete(v83);
          }

          v18 = v86;
          if (v86)
          {
            v87 = v86;
            goto LABEL_173;
          }

          return;
        }

        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF32(v131) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v80, &v77);
          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          v18 = v80;
          if (v80)
          {
            v81 = v80;
            goto LABEL_173;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isF16(v131))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v33 = a3[1] - *a3;
        if (v33)
        {
          if ((v33 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v34 = a4[1] - *a4;
          if (!v34)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v74, &v71);
            if (v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            v18 = v74;
            if (v74)
            {
              v75 = v74;
              goto LABEL_173;
            }

            return;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v27 = a3[1] - *a3;
        if (v27)
        {
          if ((v27 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v28 = a4[1] - *a4;
          if (!v28)
          {
            mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)16>(a1, a2, &v68, &v65);
            if (v65)
            {
              v66 = v65;
              operator delete(v65);
            }

            v18 = v68;
            if (v68)
            {
              v69 = v68;
              goto LABEL_173;
            }

            return;
          }

          if ((v28 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isBF16(v131))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)16>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_173;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(v131, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)16>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_173;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(v131, 32))
      {
        if (mlir::Type::isInteger(v131, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)16>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v131, 8) && !mlir::Type::isInteger(v131, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v128);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)16>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v35 = a3[1] - *a3;
      if (v35)
      {
        if ((v35 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v36 = a4[1] - *a4;
        if (!v36)
        {
          mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)16>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_173;
          }

          return;
        }

        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_175;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v111 = 0;
    v110 = 0;
    v112 = 0;
    v39 = a3[1] - *a3;
    if (v39)
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v40 = a4[1] - *a4;
      if (!v40)
      {
        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v110, &v107);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_173;
        }

        return;
      }

      if ((v40 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_175;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_175;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_173;
  }
}

uint64_t mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(uint64_t result, int a2)
{
  *result = mlir::mps::CPUNDArrayArithmeticBinaryKernel::arithmeticBinaryTileKernel;
  *(result + 8) = 4;
  *(result + 16) = a2;
  return result;
}

void mlir::mps::CPUNDArrayArithmeticUnaryKernel::arithmeticUnaryTileKernel(uint64_t ***a1, uint64_t ***a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 16);
  if (v7 <= 10)
  {
    if (v7 <= 7)
    {
      if (v7 == 6)
      {
        v13 = *(a7 + 24);
        v82 = 0;
        v83 = 0;
        v81 = 0;
        v14 = a3[1];
        if (v14 == *a3)
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v15 = a4[1] - *a4;
          if (!v15)
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(a1, a2, &v81, &v78, a5, a6, v13);
            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            v10 = v81;
            if (v81)
            {
              v82 = v81;
              goto LABEL_110;
            }

            return;
          }

          if ((v15 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else if (((v14 - *a3) & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v26 = a3[1];
        if (v26 == *a3)
        {
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v27 = a4[1] - *a4;
          if (!v27)
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(a1, a2, &v75, &v72, a5, a6, 0);
            if (v72)
            {
              v73 = v72;
              operator delete(v72);
            }

            v10 = v75;
            if (v75)
            {
              v76 = v75;
              goto LABEL_110;
            }

            return;
          }

          if ((v27 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else if (((v26 - *a3) & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (v7 == 8)
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v18 = a3[1];
      if (v18 == *a3)
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v19 = a4[1] - *a4;
        if (!v19)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)8>(a1, a2, &v69, &v66, a5, a6, 0);
          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          v10 = v69;
          if (v69)
          {
            v70 = v69;
            goto LABEL_110;
          }

          return;
        }

        if ((v19 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v18 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      if (v7 == 9)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v8 = a3[1];
        if (v8 != *a3)
        {
          if (((v8 - *a3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_112;
        }

        __p = 0;
        v61 = 0;
        v62 = 0;
        v9 = a4[1] - *a4;
        if (v9)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_112;
        }

        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)9>(a1, a2, &v63, &__p, a5, a6, 0);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        v10 = v63;
        if (v63)
        {
          v64 = v63;
LABEL_110:
          operator delete(v10);
          return;
        }

        return;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      v22 = a3[1];
      if (v22 == *a3)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v23 = a4[1] - *a4;
        if (!v23)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)10>(a1, a2, &v57, &v54, a5, a6, 0.0);
          if (v54)
          {
            v55 = v54;
            operator delete(v54);
          }

          v10 = v57;
          if (v57)
          {
            v58 = v57;
            goto LABEL_110;
          }

          return;
        }

        if ((v23 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v22 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_112:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v7 <= 12)
  {
    if (v7 == 11)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v16 = a3[1];
      if (v16 == *a3)
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v17 = a4[1] - *a4;
        if (!v17)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)11>(a1, a2, &v51, &v48, a5, a6, 0);
          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          v10 = v51;
          if (v51)
          {
            v52 = v51;
            goto LABEL_110;
          }

          return;
        }

        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v16 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v28 = a3[1];
      if (v28 == *a3)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)12>(a1, a2, &v45, &v42, a5, a6, 0.0);
          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          v10 = v45;
          if (v45)
          {
            v46 = v45;
            goto LABEL_110;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else if (((v28 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_112;
  }

  if (v7 == 13)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v20 = a3[1];
    if (v20 == *a3)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v21 = a4[1] - *a4;
      if (!v21)
      {
        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)13>(a1, a2, &v39, &v36, a5, a6, 0);
        if (v36)
        {
          v37 = v36;
          operator delete(v36);
        }

        v10 = v39;
        if (v39)
        {
          v40 = v39;
          goto LABEL_110;
        }

        return;
      }

      if ((v21 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if (((v20 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  if (v7 != 14)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v24 = a3[1];
    if (v24 == *a3)
    {
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v25 = a4[1] - *a4;
      if (!v25)
      {
        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(a1, a2, &v87, &v84, a5, a6, 0.0);
        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        v10 = v87;
        if (v87)
        {
          v88 = v87;
          goto LABEL_110;
        }

        return;
      }

      if ((v25 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if (((v24 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v11 = a3[1];
  if (v11 != *a3)
  {
    if (((v11 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v12 = a4[1] - *a4;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_112;
  }

  mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)14>(a1, a2, &v33, &v30, a5, a6, 0.0);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v10 = v33;
  if (v33)
  {
    v34 = v33;
    goto LABEL_110;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v98, &v95, a7);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)17>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)17>(a1, a2, v46, v45, a7);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)17>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)17>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v110, &v107, *&a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v116, &v113, a7);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v122, &v119, a7);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v98, &v95, a7);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v92, &v89, a7);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v86, &v83, a7);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v80, &v77, a7);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v74, &v71, a7);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v68, &v65, a7);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v62, &v59, a7);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)6>(a1, a2, &v56, &v53, a7);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)6>(a1, a2, v46, v45, a7);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)6>(a1, a2, v44, v43, a7);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)6>(a1, a2, &v50, &v47, a7);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v104, &__p, a7);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)8>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)8>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)8>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)8>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)8>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)9>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)9>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)9>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)9>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)9>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)9>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)9>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)9>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)9>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)10>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v128 = ElementType;
  v126 = ***a2;
  v12 = mlir::TensorType::getElementType(&v126);
  v126 = v12;
  Value = v12;
  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v125 = v12;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = ElementType;
    }

    else
    {
      v14 = 0;
    }

    v124 = v14;
    Value = mlir::AffineMapAttr::getValue(&v125);
    v128 = mlir::AffineMapAttr::getValue(&v124);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v128))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v15 = a3[1] - *a3;
      if (v15)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v112 = 0;
      v113 = 0;
      v114 = 0;
      v16 = a4[1] - *a4;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v115, &v112);
      if (v112)
      {
        v113 = v112;
        operator delete(v112);
      }

      v17 = v115;
      if (v115)
      {
        v116 = v115;
LABEL_167:
        operator delete(v17);
        return;
      }

      return;
    }

    v121 = 0;
    v122 = 0;
    v123 = 0;
    v32 = a3[1] - *a3;
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v33 = a4[1] - *a4;
      if (!v33)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v121, &v118);
        if (v118)
        {
          v119 = v118;
          operator delete(v118);
        }

        v17 = v121;
        if (v121)
        {
          v122 = v121;
          goto LABEL_167;
        }

        return;
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v128))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v128))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v97 = 0;
        v99 = 0;
        v38 = a3[1] - *a3;
        if (v38)
        {
          if ((v38 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v39 = a4[1] - *a4;
          if (!v39)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v97, &v94);
            if (v94)
            {
              v95 = v94;
              operator delete(v94);
            }

            v17 = v97;
            if (v97)
            {
              v98 = v97;
              goto LABEL_167;
            }

            return;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v20 = a3[1] - *a3;
        if (v20)
        {
          if ((v20 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v21 = a4[1] - *a4;
          if (!v21)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)10>(a1, a2, &v91, &v88);
            if (v88)
            {
              v89 = v88;
              operator delete(v88);
            }

            v17 = v91;
            if (v91)
            {
              v92 = v91;
              goto LABEL_167;
            }

            return;
          }

          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v128))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v41 = a4[1] - *a4;
          if (!v41)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v85, &v82);
            if (v82)
            {
              v83 = v82;
              operator delete(v82);
            }

            v17 = v85;
            if (v85)
            {
              v86 = v85;
              goto LABEL_167;
            }

            return;
          }

          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v22 = a3[1] - *a3;
        if (v22)
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v23 = a4[1] - *a4;
          if (!v23)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)10>(a1, a2, &v79, &v76);
            if (v76)
            {
              v77 = v76;
              operator delete(v76);
            }

            v17 = v79;
            if (v79)
            {
              v80 = v79;
              goto LABEL_167;
            }

            return;
          }

          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v128))
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v24 = a3[1] - *a3;
      if (v24)
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v25 = a4[1] - *a4;
        if (!v25)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v73, &v70);
          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v17 = v73;
          if (v73)
          {
            v74 = v73;
            goto LABEL_167;
          }

          return;
        }

        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v128))
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v26 = a3[1] - *a3;
      if (v26)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v27 = a4[1] - *a4;
        if (!v27)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)10>(a1, a2, &v67, &v64);
          if (v64)
          {
            v65 = v64;
            operator delete(v64);
          }

          v17 = v67;
          if (v67)
          {
            v68 = v67;
            goto LABEL_167;
          }

          return;
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v128))
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v28 = a3[1] - *a3;
      if (v28)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)10>(a1, a2, &v61, &v58);
          if (v58)
          {
            v59 = v58;
            operator delete(v58);
          }

          v17 = v61;
          if (v61)
          {
            v62 = v61;
            goto LABEL_167;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v30 = a3[1] - *a3;
      if (v30)
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v31 = a4[1] - *a4;
        if (!v31)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)10>(a1, a2, &v55, &v52);
          if (v52)
          {
            v53 = v52;
            operator delete(v52);
          }

          v17 = v55;
          if (v55)
          {
            v56 = v55;
            goto LABEL_167;
          }

          return;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v45, a3);
          std::vector<long long>::vector[abi:nn200100](v44, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)10>(a1, a2, v45, v44);
          if (v44[0])
          {
            v44[1] = v44[0];
            operator delete(v44[0]);
          }

          v17 = v45[0];
          if (v45[0])
          {
            v45[1] = v45[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v126);
          }

          std::vector<long long>::vector[abi:nn200100](v43, a3);
          std::vector<long long>::vector[abi:nn200100](v42, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)10>(a1, a2, v43, v42);
          if (v42[0])
          {
            v42[1] = v42[0];
            operator delete(v42[0]);
          }

          v17 = v43[0];
          if (v43[0])
          {
            v43[1] = v43[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      v36 = a3[1] - *a3;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v37 = a4[1] - *a4;
        if (!v37)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)10>(a1, a2, &v49, &v46);
          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          v17 = v49;
          if (v49)
          {
            v50 = v49;
            goto LABEL_167;
          }

          return;
        }

        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v34 = a3[1] - *a3;
    if (v34)
    {
      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v107 = 0;
      v106 = 0;
      v108 = 0;
      v35 = a4[1] - *a4;
      if (!v35)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v109, &v106);
        if (v106)
        {
          v107 = v106;
          operator delete(v106);
        }

        v17 = v109;
        if (v109)
        {
          v110 = v109;
          goto LABEL_167;
        }

        return;
      }

      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v104 = 0;
  v103 = 0;
  v105 = 0;
  v18 = a3[1] - *a3;
  if (v18)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v101 = 0;
  __p = 0;
  v102 = 0;
  v19 = a4[1] - *a4;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v103, &__p);
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  v17 = v103;
  if (v103)
  {
    v104 = v103;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)11>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)11>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)11>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)11>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)11>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)12>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v128 = ElementType;
  v126 = ***a2;
  v12 = mlir::TensorType::getElementType(&v126);
  v126 = v12;
  Value = v12;
  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v125 = v12;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = ElementType;
    }

    else
    {
      v14 = 0;
    }

    v124 = v14;
    Value = mlir::AffineMapAttr::getValue(&v125);
    v128 = mlir::AffineMapAttr::getValue(&v124);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v128))
  {
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v15 = a3[1] - *a3;
      if (v15)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v112 = 0;
      v113 = 0;
      v114 = 0;
      v16 = a4[1] - *a4;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v115, &v112);
      if (v112)
      {
        v113 = v112;
        operator delete(v112);
      }

      v17 = v115;
      if (v115)
      {
        v116 = v115;
LABEL_167:
        operator delete(v17);
        return;
      }

      return;
    }

    v121 = 0;
    v122 = 0;
    v123 = 0;
    v32 = a3[1] - *a3;
    if (v32)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v33 = a4[1] - *a4;
      if (!v33)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v121, &v118);
        if (v118)
        {
          v119 = v118;
          operator delete(v118);
        }

        v17 = v121;
        if (v121)
        {
          v122 = v121;
          goto LABEL_167;
        }

        return;
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v128))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v128))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v98 = 0;
        v97 = 0;
        v99 = 0;
        v38 = a3[1] - *a3;
        if (v38)
        {
          if ((v38 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v39 = a4[1] - *a4;
          if (!v39)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v97, &v94);
            if (v94)
            {
              v95 = v94;
              operator delete(v94);
            }

            v17 = v97;
            if (v97)
            {
              v98 = v97;
              goto LABEL_167;
            }

            return;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v20 = a3[1] - *a3;
        if (v20)
        {
          if ((v20 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v21 = a4[1] - *a4;
          if (!v21)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)12>(a1, a2, &v91, &v88);
            if (v88)
            {
              v89 = v88;
              operator delete(v88);
            }

            v17 = v91;
            if (v91)
            {
              v92 = v91;
              goto LABEL_167;
            }

            return;
          }

          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v128))
    {
      if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v41 = a4[1] - *a4;
          if (!v41)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v85, &v82);
            if (v82)
            {
              v83 = v82;
              operator delete(v82);
            }

            v17 = v85;
            if (v85)
            {
              v86 = v85;
              goto LABEL_167;
            }

            return;
          }

          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v22 = a3[1] - *a3;
        if (v22)
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v23 = a4[1] - *a4;
          if (!v23)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)12>(a1, a2, &v79, &v76);
            if (v76)
            {
              v77 = v76;
              operator delete(v76);
            }

            v17 = v79;
            if (v79)
            {
              v80 = v79;
              goto LABEL_167;
            }

            return;
          }

          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v128))
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v24 = a3[1] - *a3;
      if (v24)
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v25 = a4[1] - *a4;
        if (!v25)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v73, &v70);
          if (v70)
          {
            v71 = v70;
            operator delete(v70);
          }

          v17 = v73;
          if (v73)
          {
            v74 = v73;
            goto LABEL_167;
          }

          return;
        }

        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v128))
    {
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v26 = a3[1] - *a3;
      if (v26)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v27 = a4[1] - *a4;
        if (!v27)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)12>(a1, a2, &v67, &v64);
          if (v64)
          {
            v65 = v64;
            operator delete(v64);
          }

          v17 = v67;
          if (v67)
          {
            v68 = v67;
            goto LABEL_167;
          }

          return;
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v128))
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v28 = a3[1] - *a3;
      if (v28)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)12>(a1, a2, &v61, &v58);
          if (v58)
          {
            v59 = v58;
            operator delete(v58);
          }

          v17 = v61;
          if (v61)
          {
            v62 = v61;
            goto LABEL_167;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v30 = a3[1] - *a3;
      if (v30)
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v31 = a4[1] - *a4;
        if (!v31)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)12>(a1, a2, &v55, &v52);
          if (v52)
          {
            v53 = v52;
            operator delete(v52);
          }

          v17 = v55;
          if (v55)
          {
            v56 = v55;
            goto LABEL_167;
          }

          return;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v45, a3);
          std::vector<long long>::vector[abi:nn200100](v44, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)12>(a1, a2, v45, v44);
          if (v44[0])
          {
            v44[1] = v44[0];
            operator delete(v44[0]);
          }

          v17 = v45[0];
          if (v45[0])
          {
            v45[1] = v45[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v126);
          }

          std::vector<long long>::vector[abi:nn200100](v43, a3);
          std::vector<long long>::vector[abi:nn200100](v42, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)12>(a1, a2, v43, v42);
          if (v42[0])
          {
            v42[1] = v42[0];
            operator delete(v42[0]);
          }

          v17 = v43[0];
          if (v43[0])
          {
            v43[1] = v43[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      v36 = a3[1] - *a3;
      if (v36)
      {
        if ((v36 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v37 = a4[1] - *a4;
        if (!v37)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)12>(a1, a2, &v49, &v46);
          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }

          v17 = v49;
          if (v49)
          {
            v50 = v49;
            goto LABEL_167;
          }

          return;
        }

        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v34 = a3[1] - *a3;
    if (v34)
    {
      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v107 = 0;
      v106 = 0;
      v108 = 0;
      v35 = a4[1] - *a4;
      if (!v35)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v109, &v106);
        if (v106)
        {
          v107 = v106;
          operator delete(v106);
        }

        v17 = v109;
        if (v109)
        {
          v110 = v109;
          goto LABEL_167;
        }

        return;
      }

      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v104 = 0;
  v103 = 0;
  v105 = 0;
  v18 = a3[1] - *a3;
  if (v18)
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v101 = 0;
  __p = 0;
  v102 = 0;
  v19 = a4[1] - *a4;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v103, &__p);
  if (__p)
  {
    v101 = __p;
    operator delete(__p);
  }

  v17 = v103;
  if (v103)
  {
    v104 = v103;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)13>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v129 = ElementType;
  v127 = ***a2;
  v13 = mlir::TensorType::getElementType(&v127);
  v127 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v126 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v125 = v15;
    Value = mlir::AffineMapAttr::getValue(&v126);
    v129 = mlir::AffineMapAttr::getValue(&v125);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v129))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v116, &v113);
      if (v113)
      {
        v114 = v113;
        operator delete(v113);
      }

      v18 = v116;
      if (v116)
      {
        v117 = v116;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v122 = 0;
    v123 = 0;
    v124 = 0;
    v33 = a3[1] - *a3;
    if (v33)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v34 = a4[1] - *a4;
      if (!v34)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v122, &v119);
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        v18 = v122;
        if (v122)
        {
          v123 = v122;
          goto LABEL_167;
        }

        return;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v129))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v99 = 0;
        v98 = 0;
        v100 = 0;
        v39 = a3[1] - *a3;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v40 = a4[1] - *a4;
          if (!v40)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v98, &v95);
            if (v95)
            {
              v96 = v95;
              operator delete(v95);
            }

            v18 = v98;
            if (v98)
            {
              v99 = v98;
              goto LABEL_167;
            }

            return;
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v21 = a3[1] - *a3;
        if (v21)
        {
          if ((v21 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v22 = a4[1] - *a4;
          if (!v22)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)13>(a1, a2, &v92, &v89);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            v18 = v92;
            if (v92)
            {
              v93 = v92;
              goto LABEL_167;
            }

            return;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v129))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v41 = a3[1] - *a3;
        if (v41)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v42 = a4[1] - *a4;
          if (!v42)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v86, &v83);
            if (v83)
            {
              v84 = v83;
              operator delete(v83);
            }

            v18 = v86;
            if (v86)
            {
              v87 = v86;
              goto LABEL_167;
            }

            return;
          }

          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v23 = a3[1] - *a3;
        if (v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v24 = a4[1] - *a4;
          if (!v24)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)13>(a1, a2, &v80, &v77);
            if (v77)
            {
              v78 = v77;
              operator delete(v77);
            }

            v18 = v80;
            if (v80)
            {
              v81 = v80;
              goto LABEL_167;
            }

            return;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v129))
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v25 = a3[1] - *a3;
      if (v25)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v26 = a4[1] - *a4;
        if (!v26)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v74, &v71);
          if (v71)
          {
            v72 = v71;
            operator delete(v71);
          }

          v18 = v74;
          if (v74)
          {
            v75 = v74;
            goto LABEL_167;
          }

          return;
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v129))
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v27 = a3[1] - *a3;
      if (v27)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v28 = a4[1] - *a4;
        if (!v28)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, &v68, &v65);
          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          v18 = v68;
          if (v68)
          {
            v69 = v68;
            goto LABEL_167;
          }

          return;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v129))
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v29 = a3[1] - *a3;
      if (v29)
      {
        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v30 = a4[1] - *a4;
        if (!v30)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)13>(a1, a2, &v62, &v59);
          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v18 = v62;
          if (v62)
          {
            v63 = v62;
            goto LABEL_167;
          }

          return;
        }

        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v31 = a3[1] - *a3;
      if (v31)
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v32 = a4[1] - *a4;
        if (!v32)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(a1, a2, &v56, &v53);
          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v18 = v56;
          if (v56)
          {
            v57 = v56;
            goto LABEL_167;
          }

          return;
        }

        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v46, a3);
          std::vector<long long>::vector[abi:nn200100](v45, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v46, v45);
          if (v45[0])
          {
            v45[1] = v45[0];
            operator delete(v45[0]);
          }

          v18 = v46[0];
          if (v46[0])
          {
            v46[1] = v46[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v127);
          }

          std::vector<long long>::vector[abi:nn200100](v44, a3);
          std::vector<long long>::vector[abi:nn200100](v43, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v44, v43);
          if (v43[0])
          {
            v43[1] = v43[0];
            operator delete(v43[0]);
          }

          v18 = v44[0];
          if (v44[0])
          {
            v44[1] = v44[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v38 = a4[1] - *a4;
        if (!v38)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v50, &v47);
          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v18 = v50;
          if (v50)
          {
            v51 = v50;
            goto LABEL_167;
          }

          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v35 = a3[1] - *a3;
    if (v35)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v108 = 0;
      v107 = 0;
      v109 = 0;
      v36 = a4[1] - *a4;
      if (!v36)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v110, &v107, a7);
        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        v18 = v110;
        if (v110)
        {
          v111 = v110;
          goto LABEL_167;
        }

        return;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v105 = 0;
  v104 = 0;
  v106 = 0;
  v19 = a3[1] - *a3;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v102 = 0;
  __p = 0;
  v103 = 0;
  v20 = a4[1] - *a4;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v104, &__p);
  if (__p)
  {
    v102 = __p;
    operator delete(__p);
  }

  v18 = v104;
  if (v104)
  {
    v105 = v104;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)14>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v130 = ElementType;
  v128 = ***a2;
  v13 = mlir::TensorType::getElementType(&v128);
  v128 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v127 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v126 = v15;
    Value = mlir::AffineMapAttr::getValue(&v127);
    v130 = mlir::AffineMapAttr::getValue(&v126);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v130))
  {
    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v117 = 0;
      v118 = 0;
      v119 = 0;
      v16 = a3[1] - *a3;
      if (v16)
      {
        if ((v16 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      v114 = 0;
      v115 = 0;
      v116 = 0;
      v17 = a4[1] - *a4;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_169;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v117, &v114);
      if (v114)
      {
        v115 = v114;
        operator delete(v114);
      }

      v18 = v117;
      if (v117)
      {
        v118 = v117;
LABEL_167:
        operator delete(v18);
        return;
      }

      return;
    }

    v123 = 0;
    v124 = 0;
    v125 = 0;
    v34 = a3[1] - *a3;
    if (v34)
    {
      if ((v34 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v120 = 0;
      v121 = 0;
      v122 = 0;
      v35 = a4[1] - *a4;
      if (!v35)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v123, &v120);
        if (v120)
        {
          v121 = v120;
          operator delete(v120);
        }

        v18 = v123;
        if (v123)
        {
          v124 = v123;
          goto LABEL_167;
        }

        return;
      }

      if ((v35 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

LABEL_169:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v130))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v130))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v100 = 0;
        v99 = 0;
        v101 = 0;
        v40 = a3[1] - *a3;
        if (v40)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v96 = 0;
          v97 = 0;
          v98 = 0;
          v41 = a4[1] - *a4;
          if (!v41)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v99, &v96);
            if (v96)
            {
              v97 = v96;
              operator delete(v96);
            }

            v18 = v99;
            if (v99)
            {
              v100 = v99;
              goto LABEL_167;
            }

            return;
          }

          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v22 = a3[1] - *a3;
        if (v22)
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v23 = a4[1] - *a4;
          if (!v23)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)14>(a1, a2, &v93, &v90);
            if (v90)
            {
              v91 = v90;
              operator delete(v90);
            }

            v18 = v93;
            if (v93)
            {
              v94 = v93;
              goto LABEL_167;
            }

            return;
          }

          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF16(&Value) && mlir::Type::isF32(&v130))
    {
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v87 = 0;
        v88 = 0;
        v89 = 0;
        v42 = a3[1] - *a3;
        if (v42)
        {
          if ((v42 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v43 = a4[1] - *a4;
          if (!v43)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v87, &v84);
            if (v84)
            {
              v85 = v84;
              operator delete(v84);
            }

            v18 = v87;
            if (v87)
            {
              v88 = v87;
              goto LABEL_167;
            }

            return;
          }

          if ((v43 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }

      else
      {
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v24 = a3[1] - *a3;
        if (v24)
        {
          if ((v24 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }

        else
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v25 = a4[1] - *a4;
          if (!v25)
          {
            mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)14>(a1, a2, &v81, &v78);
            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            v18 = v81;
            if (v81)
            {
              v82 = v81;
              goto LABEL_167;
            }

            return;
          }

          if ((v25 & 0x8000000000000000) == 0)
          {
            operator new();
          }
        }
      }
    }

    else if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v130))
    {
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v26 = a3[1] - *a3;
      if (v26)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v27 = a4[1] - *a4;
        if (!v27)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v75, &v72);
          if (v72)
          {
            v73 = v72;
            operator delete(v72);
          }

          v18 = v75;
          if (v75)
          {
            v76 = v75;
            goto LABEL_167;
          }

          return;
        }

        if ((v27 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v130))
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v28 = a3[1] - *a3;
      if (v28)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v29 = a4[1] - *a4;
        if (!v29)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)14>(a1, a2, &v69, &v66);
          if (v66)
          {
            v67 = v66;
            operator delete(v66);
          }

          v18 = v69;
          if (v69)
          {
            v70 = v69;
            goto LABEL_167;
          }

          return;
        }

        if ((v29 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v130))
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v30 = a3[1] - *a3;
      if (v30)
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v31 = a4[1] - *a4;
        if (!v31)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)14>(a1, a2, &v63, &v60);
          if (v60)
          {
            v61 = v60;
            operator delete(v60);
          }

          v18 = v63;
          if (v63)
          {
            v64 = v63;
            goto LABEL_167;
          }

          return;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else if (mlir::Type::isInteger(&Value, 64))
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v32 = a3[1] - *a3;
      if (v32)
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v33 = a4[1] - *a4;
        if (!v33)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(a1, a2, &v57, &v54);
          if (v54)
          {
            v55 = v54;
            operator delete(v54);
          }

          v18 = v57;
          if (v57)
          {
            v58 = v57;
            goto LABEL_167;
          }

          return;
        }

        if ((v33 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    else
    {
      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v47, a3);
          std::vector<long long>::vector[abi:nn200100](v46, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v47, v46);
          if (v46[0])
          {
            v46[1] = v46[0];
            operator delete(v46[0]);
          }

          v18 = v47[0];
          if (v47[0])
          {
            v47[1] = v47[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v128);
          }

          std::vector<long long>::vector[abi:nn200100](v45, a3);
          std::vector<long long>::vector[abi:nn200100](v44, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v45, v44);
          if (v44[0])
          {
            v44[1] = v44[0];
            operator delete(v44[0]);
          }

          v18 = v45[0];
          if (v45[0])
          {
            v45[1] = v45[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      v38 = a3[1] - *a3;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v39 = a4[1] - *a4;
        if (!v39)
        {
          mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v51, &v48);
          if (v48)
          {
            v49 = v48;
            operator delete(v48);
          }

          v18 = v51;
          if (v51)
          {
            v52 = v51;
            goto LABEL_167;
          }

          return;
        }

        if ((v39 & 0x8000000000000000) == 0)
        {
          operator new();
        }
      }
    }

    goto LABEL_169;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v36 = a3[1] - *a3;
    if (v36)
    {
      if ((v36 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else
    {
      v109 = 0;
      v108 = 0;
      v110 = 0;
      v37 = a4[1] - *a4;
      if (!v37)
      {
        mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v111, &v108, a7, v19);
        if (v108)
        {
          v109 = v108;
          operator delete(v108);
        }

        v18 = v111;
        if (v111)
        {
          v112 = v111;
          goto LABEL_167;
        }

        return;
      }

      if ((v37 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    goto LABEL_169;
  }

  v106 = 0;
  v105 = 0;
  v107 = 0;
  v20 = a3[1] - *a3;
  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  v103 = 0;
  __p = 0;
  v104 = 0;
  v21 = a4[1] - *a4;
  if (v21)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_169;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v105, &__p);
  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }

  v18 = v105;
  if (v105)
  {
    v106 = v105;
    goto LABEL_167;
  }
}

uint64_t mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(uint64_t result, int a2, double a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  *result = mlir::mps::CPUNDArrayArithmeticUnaryKernel::arithmeticUnaryTileKernel;
  *(result + 8) = 4;
  return result;
}

void *mlir::mps::recurseTransposeImpl(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, size_t a16)
{
  v25 = result;
  v16 = *(a4 + 8 * a11);
  if (*(a4 + 8 * a11))
  {
    v17 = *(a9 + 8 * *(a6 + 8 * a11));
    v18 = a12;
    v19 = a16 * a12;
    do
    {
      if ((v25 - 1) > a11)
      {
        result = mlir::mps::recurseTransposeImpl(v25, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11 + 1, v18, a13, a14, a15, a16);
      }

      else
      {
        result = memcpy(*a15, (*(a13 + 40) + v19), a16);
        *a15 = *a15 + a16;
      }

      v18 += v17;
      v19 += v17 * a16;
      --v16;
    }

    while (v16);
  }

  return result;
}