void mlir::mps::CPUNDArrayArithmeticBinaryKernel::arithmeticBinaryTileKernel(uint64_t ***a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 16);
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v33 = *a3;
        v32 = *(a3 + 8);
        v34 = v32 - *a3;
        if (v32 != *a3)
        {
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          v35 = operator new(v32 - *a3);
          v36 = &v35[v34];
          v119 = v35;
          v121 = &v35[v34];
          memcpy(v35, v33, v34);
          v120 = v36;
        }

        v116 = 0;
        v117 = 0;
        v118 = 0;
        v37 = *a4;
        v38 = *(a4 + 8) - *a4;
        if (v38)
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          v39 = operator new(v38);
          v40 = &v39[v38];
          v116 = v39;
          v118 = &v39[v38];
          memcpy(v39, v37, v38);
          v117 = v40;
        }

        mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)2>(a1, a2, &v119, &v116, a5, a6);
        if (v116)
        {
          v117 = v116;
          operator delete(v116);
        }

        v22 = v119;
        if (v119)
        {
          v120 = v119;
          goto LABEL_88;
        }

        return;
      }

      v113 = 0;
      v114 = 0;
      v115 = 0;
      v69 = *a3;
      v68 = *(a3 + 8);
      v70 = v68 - *a3;
      if (v68 != *a3)
      {
        if ((v70 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v71 = operator new(v68 - *a3);
        v72 = &v71[v70];
        v113 = v71;
        v115 = &v71[v70];
        memcpy(v71, v69, v70);
        v114 = v72;
      }

      v110 = 0;
      v111 = 0;
      v112 = 0;
      v73 = *a4;
      v74 = *(a4 + 8) - *a4;
      if (v74)
      {
        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v75 = operator new(v74);
        v76 = &v75[v74];
        v110 = v75;
        v112 = &v75[v74];
        memcpy(v75, v73, v74);
        v111 = v76;
      }

      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)3>(a1, a2, &v113, &v110, a5, a6);
      if (v110)
      {
        v111 = v110;
        operator delete(v110);
      }

      v22 = v113;
      if (v113)
      {
        v114 = v113;
        goto LABEL_88;
      }

      return;
    }

    if (v12)
    {
      v125 = 0;
      v126 = 0;
      v127 = 0;
      v51 = *a3;
      v50 = *(a3 + 8);
      v52 = v50 - *a3;
      if (v50 != *a3)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v53 = operator new(v50 - *a3);
        v54 = &v53[v52];
        v125 = v53;
        v127 = &v53[v52];
        memcpy(v53, v51, v52);
        v126 = v54;
      }

      v122 = 0;
      v123 = 0;
      v124 = 0;
      v55 = *a4;
      v56 = *(a4 + 8) - *a4;
      if (v56)
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v57 = operator new(v56);
        v58 = &v57[v56];
        v122 = v57;
        v124 = &v57[v56];
        memcpy(v57, v55, v56);
        v123 = v58;
      }

      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)1>(a1, a2, &v125, &v122, a5, a6);
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      v22 = v125;
      if (v125)
      {
        v126 = v125;
        goto LABEL_88;
      }

      return;
    }

    v131 = 0;
    v132 = 0;
    v133 = 0;
    v14 = *a3;
    v13 = *(a3 + 8);
    v15 = v13 - *a3;
    if (v13 != *a3)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v16 = operator new(v13 - *a3);
      v17 = &v16[v15];
      v131 = v16;
      v133 = &v16[v15];
      memcpy(v16, v14, v15);
      v132 = v17;
    }

    v128 = 0;
    v129 = 0;
    v130 = 0;
    v18 = *a4;
    v19 = *(a4 + 8) - *a4;
    if (!v19)
    {
      goto LABEL_10;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = &v20[v19];
      v128 = v20;
      v130 = &v20[v19];
      memcpy(v20, v18, v19);
      v129 = v21;
LABEL_10:
      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(a1, a2, &v131, &v128, a5, a6);
      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      v22 = v131;
      if (v131)
      {
        v132 = v131;
LABEL_88:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_90:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v12 > 14)
  {
    if (v12 == 15)
    {
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v42 = *a3;
      v41 = *(a3 + 8);
      v43 = v41 - *a3;
      if (v41 != *a3)
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v44 = operator new(v41 - *a3);
        v45 = &v44[v43];
        v95 = v44;
        v97 = &v44[v43];
        memcpy(v44, v42, v43);
        v96 = v45;
      }

      v92 = 0;
      v93 = 0;
      v94 = 0;
      v46 = *a4;
      v47 = *(a4 + 8) - *a4;
      if (v47)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v48 = operator new(v47);
        v49 = &v48[v47];
        v92 = v48;
        v94 = &v48[v47];
        memcpy(v48, v46, v47);
        v93 = v49;
      }

      mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)15>(a1, a2, &v95, &v92, a5, a6);
      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      v22 = v95;
      if (v95)
      {
        v96 = v95;
        goto LABEL_88;
      }

      return;
    }

    v89 = 0;
    v90 = 0;
    v91 = 0;
    v78 = *a3;
    v77 = *(a3 + 8);
    v79 = v77 - *a3;
    if (v77 != *a3)
    {
      if ((v79 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v80 = operator new(v77 - *a3);
      v81 = &v80[v79];
      v89 = v80;
      v91 = &v80[v79];
      memcpy(v80, v78, v79);
      v90 = v81;
    }

    v86 = 0;
    v87 = 0;
    v88 = 0;
    v82 = *a4;
    v83 = *(a4 + 8) - *a4;
    if (v83)
    {
      if ((v83 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v84 = operator new(v83);
      v85 = &v84[v83];
      v86 = v84;
      v88 = &v84[v83];
      memcpy(v84, v82, v83);
      v87 = v85;
    }

    mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)16>(a1, a2, &v89, &v86, a5, a6);
    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }

    v22 = v89;
    if (v89)
    {
      v90 = v89;
      goto LABEL_88;
    }

    return;
  }

  if (v12 != 4)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v60 = *a3;
    v59 = *(a3 + 8);
    v61 = v59 - *a3;
    if (v59 != *a3)
    {
      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v62 = operator new(v59 - *a3);
      v63 = &v62[v61];
      v101 = v62;
      v103 = &v62[v61];
      memcpy(v62, v60, v61);
      v102 = v63;
    }

    v98 = 0;
    v99 = 0;
    v100 = 0;
    v64 = *a4;
    v65 = *(a4 + 8) - *a4;
    if (v65)
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      v66 = operator new(v65);
      v67 = &v66[v65];
      v98 = v66;
      v100 = &v66[v65];
      memcpy(v66, v64, v65);
      v99 = v67;
    }

    mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)5>(a1, a2, &v101, &v98, a5, a6);
    if (v98)
    {
      v99 = v98;
      operator delete(v98);
    }

    v22 = v101;
    if (v101)
    {
      v102 = v101;
      goto LABEL_88;
    }

    return;
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  v24 = *a3;
  v23 = *(a3 + 8);
  v25 = v23 - *a3;
  if (v23 != *a3)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    v26 = operator new(v23 - *a3);
    v27 = &v26[v25];
    v107 = v26;
    v109 = &v26[v25];
    memcpy(v26, v24, v25);
    v108 = v27;
  }

  __p = 0;
  v105 = 0;
  v106 = 0;
  v28 = *a4;
  v29 = *(a4 + 8) - *a4;
  if (v29)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    v30 = operator new(v29);
    v31 = &v30[v29];
    __p = v30;
    v106 = &v30[v29];
    memcpy(v30, v28, v29);
    v105 = v31;
  }

  mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)4>(a1, a2, &v107, &__p, a5, a6);
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  v22 = v107;
  if (v107)
  {
    v108 = v107;
    goto LABEL_88;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v212[0] = ElementType;
  v210 = ***a1;
  v11 = mlir::TensorType::getElementType(&v210);
  Value = v11;
  v209 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v209);
  v209 = ElementType;
  v210 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v208 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v207 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v206 = v15;
    v212[0] = mlir::AffineMapAttr::getValue(&v208);
    Value = mlir::AffineMapAttr::getValue(&v207);
    v210 = mlir::AffineMapAttr::getValue(&v206);
  }

  if (mlir::Type::isF32(v212) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v210))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v100 = *a3;
      v101 = a3[1] - *a3;
      if (v101)
      {
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v102 = operator new(v101);
        v103 = &v102[v101];
        v203 = v102;
        v205 = &v102[v101];
        memcpy(v102, v100, v101);
        v204 = v103;
      }

      v200 = 0;
      v201 = 0;
      v202 = 0;
      v104 = *a4;
      v105 = a4[1] - *a4;
      if (v105)
      {
        if ((v105 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v106 = operator new(v105);
        v107 = (v106 + v105);
        v200 = v106;
        v202 = v106 + v105;
        memcpy(v106, v104, v105);
        v201 = v107;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v203, &v200);
      if (v200)
      {
        v201 = v200;
        operator delete(v200);
      }

      v24 = v203;
      if (v203)
      {
        v204 = v203;
        goto LABEL_173;
      }

      return;
    }

    v197 = 0;
    v198 = 0;
    v199 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v197 = v18;
      v199 = &v18[v17];
      memcpy(v18, v16, v17);
      v198 = v19;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v194 = v22;
      v196 = v22 + v21;
      memcpy(v22, v20, v21);
      v195 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v197, &v194);
      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }

      v24 = v197;
      if (v197)
      {
        v198 = v197;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v212) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v210))
  {
    if (!mlir::Type::isF32(v212) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v210))
    {
      if (mlir::Type::isF32(v212) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v210))
      {
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v44 = *a3;
        v45 = a3[1] - *a3;
        if (v45)
        {
          if ((v45 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v46 = operator new(v45);
          v47 = &v46[v45];
          v167 = v46;
          v169 = &v46[v45];
          memcpy(v46, v44, v45);
          v168 = v47;
        }

        v164 = 0;
        v165 = 0;
        v166 = 0;
        v48 = *a4;
        v49 = a4[1] - *a4;
        if (v49)
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v50 = operator new(v49);
          v51 = &v50[v49];
          v164 = v50;
          v166 = &v50[v49];
          memcpy(v50, v48, v49);
          v165 = v51;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v167, &v164);
        if (v164)
        {
          v165 = v164;
          operator delete(v164);
        }

        v24 = v167;
        if (v167)
        {
          v168 = v167;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v212) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v210))
      {
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v52 = *a3;
        v53 = a3[1] - *a3;
        if (v53)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v54 = operator new(v53);
          v55 = &v54[v53];
          v161 = v54;
          v163 = &v54[v53];
          memcpy(v54, v52, v53);
          v162 = v55;
        }

        v158 = 0;
        v159 = 0;
        v160 = 0;
        v56 = *a4;
        v57 = a4[1] - *a4;
        if (v57)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v58 = operator new(v57);
          v59 = &v58[v57];
          v158 = v58;
          v160 = &v58[v57];
          memcpy(v58, v56, v57);
          v159 = v59;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v161, &v158);
        if (v158)
        {
          v159 = v158;
          operator delete(v158);
        }

        v24 = v161;
        if (v161)
        {
          v162 = v161;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v212))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v149 = 0;
          v150 = 0;
          v151 = 0;
          v60 = *a3;
          v61 = a3[1] - *a3;
          if (v61)
          {
            if ((v61 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v62 = operator new(v61);
            v63 = &v62[v61];
            v149 = v62;
            v151 = &v62[v61];
            memcpy(v62, v60, v61);
            v150 = v63;
          }

          v146 = 0;
          v147 = 0;
          v148 = 0;
          v64 = *a4;
          v65 = a4[1] - *a4;
          if (v65)
          {
            if ((v65 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v66 = operator new(v65);
            v67 = &v66[v65];
            v146 = v66;
            v148 = &v66[v65];
            memcpy(v66, v64, v65);
            v147 = v67;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)0>(a1, a2, &v149, &v146);
          if (v146)
          {
            v147 = v146;
            operator delete(v146);
          }

          v24 = v149;
          if (v149)
          {
            v150 = v149;
            goto LABEL_173;
          }

          return;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v84 = *a3;
        v85 = a3[1] - *a3;
        if (v85)
        {
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v86 = operator new(v85);
          v87 = &v86[v85];
          v155 = v86;
          v157 = &v86[v85];
          memcpy(v86, v84, v85);
          v156 = v87;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v88 = *a4;
        v89 = a4[1] - *a4;
        if (v89)
        {
          if ((v89 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v90 = operator new(v89);
          v91 = &v90[v89];
          v152 = v90;
          v154 = &v90[v89];
          memcpy(v90, v88, v89);
          v153 = v91;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v155, &v152);
        if (v152)
        {
          v153 = v152;
          operator delete(v152);
        }

        v24 = v155;
        if (v155)
        {
          v156 = v155;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v212))
      {
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v68 = *a3;
        v69 = a3[1] - *a3;
        if (v69)
        {
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v70 = operator new(v69);
          v71 = &v70[v69];
          v143 = v70;
          v145 = &v70[v69];
          memcpy(v70, v68, v69);
          v144 = v71;
        }

        v140 = 0;
        v141 = 0;
        v142 = 0;
        v72 = *a4;
        v73 = a4[1] - *a4;
        if (v73)
        {
          if ((v73 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v74 = operator new(v73);
          v75 = &v74[v73];
          v140 = v74;
          v142 = &v74[v73];
          memcpy(v74, v72, v73);
          v141 = v75;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)0>(a1, a2, &v143, &v140);
        if (v140)
        {
          v141 = v140;
          operator delete(v140);
        }

        v24 = v143;
        if (v143)
        {
          v144 = v143;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v212, 64))
      {
        v137 = 0;
        v138 = 0;
        v139 = 0;
        v76 = *a3;
        v77 = a3[1] - *a3;
        if (v77)
        {
          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v78 = operator new(v77);
          v79 = &v78[v77];
          v137 = v78;
          v139 = &v78[v77];
          memcpy(v78, v76, v77);
          v138 = v79;
        }

        v134 = 0;
        v135 = 0;
        v136 = 0;
        v80 = *a4;
        v81 = a4[1] - *a4;
        if (v81)
        {
          if ((v81 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v82 = operator new(v81);
          v83 = &v82[v81];
          v134 = v82;
          v136 = &v82[v81];
          memcpy(v82, v80, v81);
          v135 = v83;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)0>(a1, a2, &v137, &v134);
        if (v134)
        {
          v135 = v134;
          operator delete(v134);
        }

        v24 = v137;
        if (v137)
        {
          v138 = v137;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v212, 32))
      {
        if (mlir::Type::isInteger(v212, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v127, a3);
          std::vector<long long>::vector[abi:nn200100](v126, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)0>(a1, a2, v127, v126);
          if (v126[0])
          {
            v126[1] = v126[0];
            operator delete(v126[0]);
          }

          v24 = v127[0];
          if (v127[0])
          {
            v127[1] = v127[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v212, 8) && !mlir::Type::isInteger(v212, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v209);
          }

          std::vector<long long>::vector[abi:nn200100](v125, a3);
          std::vector<long long>::vector[abi:nn200100](v124, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)0>(a1, a2, v125, v124);
          if (v124[0])
          {
            v124[1] = v124[0];
            operator delete(v124[0]);
          }

          v24 = v125[0];
          if (v125[0])
          {
            v125[1] = v125[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v131 = 0;
      v132 = 0;
      v133 = 0;
      v92 = *a3;
      v93 = a3[1] - *a3;
      if (v93)
      {
        if ((v93 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v94 = operator new(v93);
        v95 = &v94[v93];
        v131 = v94;
        v133 = &v94[v93];
        memcpy(v94, v92, v93);
        v132 = v95;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v96 = *a4;
      v97 = a4[1] - *a4;
      if (v97)
      {
        if ((v97 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v98 = operator new(v97);
        v99 = &v98[v97];
        v128 = v98;
        v130 = &v98[v97];
        memcpy(v98, v96, v97);
        v129 = v99;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)0>(a1, a2, &v131, &v128);
      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      v24 = v131;
      if (v131)
      {
        v132 = v131;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v173 = 0;
      v174 = 0;
      v175 = 0;
      v36 = *a3;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v38 = operator new(v37);
        v39 = &v38[v37];
        v173 = v38;
        v175 = &v38[v37];
        memcpy(v38, v36, v37);
        v174 = v39;
      }

      v170 = 0;
      v171 = 0;
      v172 = 0;
      v40 = *a4;
      v41 = a4[1] - *a4;
      if (v41)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v42 = operator new(v41);
        v43 = &v42[v41];
        v170 = v42;
        v172 = &v42[v41];
        memcpy(v42, v40, v41);
        v171 = v43;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v173, &v170);
      if (v170)
      {
        v171 = v170;
        operator delete(v170);
      }

      v24 = v173;
      if (v173)
      {
        v174 = v173;
        goto LABEL_173;
      }

      return;
    }

    v179 = 0;
    v180 = 0;
    v181 = 0;
    v116 = *a3;
    v117 = a3[1] - *a3;
    if (v117)
    {
      if ((v117 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v118 = operator new(v117);
      v119 = &v118[v117];
      v179 = v118;
      v181 = &v118[v117];
      memcpy(v118, v116, v117);
      v180 = v119;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v120 = *a4;
    v121 = a4[1] - *a4;
    if (v121)
    {
      if ((v121 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v122 = operator new(v121);
      v123 = &v122[v121];
      v176 = v122;
      v178 = &v122[v121];
      memcpy(v122, v120, v121);
      v177 = v123;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v179, &v176, v34, v35);
    if (v176)
    {
      v177 = v176;
      operator delete(v176);
    }

    v24 = v179;
    if (v179)
    {
      v180 = v179;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v192 = 0;
    v191 = 0;
    v193 = 0;
    v108 = *a3;
    v109 = a3[1] - *a3;
    if (v109)
    {
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v110 = operator new(v109);
      v111 = &v110[v109];
      v191 = v110;
      v193 = &v110[v109];
      memcpy(v110, v108, v109);
      v192 = v111;
    }

    v189 = 0;
    v188 = 0;
    v190 = 0;
    v112 = *a4;
    v113 = a4[1] - *a4;
    if (v113)
    {
      if ((v113 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v114 = operator new(v113);
      v115 = &v114[v113];
      v188 = v114;
      v190 = &v114[v113];
      memcpy(v114, v112, v113);
      v189 = v115;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(a1, a2, &v191, &v188, v25);
    if (v188)
    {
      v189 = v188;
      operator delete(v188);
    }

    v24 = v191;
    if (v191)
    {
      v192 = v191;
      goto LABEL_173;
    }

    return;
  }

  v186 = 0;
  v185 = 0;
  v187 = 0;
  v26 = *a3;
  v27 = a3[1] - *a3;
  if (v27)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v28 = operator new(v27);
    v29 = &v28[v27];
    v185 = v28;
    v187 = &v28[v27];
    memcpy(v28, v26, v27);
    v186 = v29;
  }

  v183 = 0;
  __p = 0;
  v184 = 0;
  v30 = *a4;
  v31 = a4[1] - *a4;
  if (v31)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v32 = operator new(v31);
    v33 = &v32[v31];
    __p = v32;
    v184 = &v32[v31];
    memcpy(v32, v30, v31);
    v183 = v33;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)0>(a1, a2, &v185, &__p);
  if (__p)
  {
    v183 = __p;
    operator delete(__p);
  }

  v24 = v185;
  if (v185)
  {
    v186 = v185;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)1>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v212[0] = ElementType;
  v210 = ***a1;
  v11 = mlir::TensorType::getElementType(&v210);
  Value = v11;
  v209 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v209);
  v209 = ElementType;
  v210 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v208 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v207 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v206 = v15;
    v212[0] = mlir::AffineMapAttr::getValue(&v208);
    Value = mlir::AffineMapAttr::getValue(&v207);
    v210 = mlir::AffineMapAttr::getValue(&v206);
  }

  if (mlir::Type::isF32(v212) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v210))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v100 = *a3;
      v101 = a3[1] - *a3;
      if (v101)
      {
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v102 = operator new(v101);
        v103 = &v102[v101];
        v203 = v102;
        v205 = &v102[v101];
        memcpy(v102, v100, v101);
        v204 = v103;
      }

      v200 = 0;
      v201 = 0;
      v202 = 0;
      v104 = *a4;
      v105 = a4[1] - *a4;
      if (v105)
      {
        if ((v105 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v106 = operator new(v105);
        v107 = (v106 + v105);
        v200 = v106;
        v202 = v106 + v105;
        memcpy(v106, v104, v105);
        v201 = v107;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v203, &v200);
      if (v200)
      {
        v201 = v200;
        operator delete(v200);
      }

      v24 = v203;
      if (v203)
      {
        v204 = v203;
        goto LABEL_173;
      }

      return;
    }

    v197 = 0;
    v198 = 0;
    v199 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v197 = v18;
      v199 = &v18[v17];
      memcpy(v18, v16, v17);
      v198 = v19;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v194 = v22;
      v196 = v22 + v21;
      memcpy(v22, v20, v21);
      v195 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v197, &v194);
      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }

      v24 = v197;
      if (v197)
      {
        v198 = v197;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v212) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v210))
  {
    if (!mlir::Type::isF32(v212) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v210))
    {
      if (mlir::Type::isF32(v212) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v210))
      {
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v44 = *a3;
        v45 = a3[1] - *a3;
        if (v45)
        {
          if ((v45 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v46 = operator new(v45);
          v47 = &v46[v45];
          v167 = v46;
          v169 = &v46[v45];
          memcpy(v46, v44, v45);
          v168 = v47;
        }

        v164 = 0;
        v165 = 0;
        v166 = 0;
        v48 = *a4;
        v49 = a4[1] - *a4;
        if (v49)
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v50 = operator new(v49);
          v51 = &v50[v49];
          v164 = v50;
          v166 = &v50[v49];
          memcpy(v50, v48, v49);
          v165 = v51;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v167, &v164);
        if (v164)
        {
          v165 = v164;
          operator delete(v164);
        }

        v24 = v167;
        if (v167)
        {
          v168 = v167;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v212) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v210))
      {
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v52 = *a3;
        v53 = a3[1] - *a3;
        if (v53)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v54 = operator new(v53);
          v55 = &v54[v53];
          v161 = v54;
          v163 = &v54[v53];
          memcpy(v54, v52, v53);
          v162 = v55;
        }

        v158 = 0;
        v159 = 0;
        v160 = 0;
        v56 = *a4;
        v57 = a4[1] - *a4;
        if (v57)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v58 = operator new(v57);
          v59 = &v58[v57];
          v158 = v58;
          v160 = &v58[v57];
          memcpy(v58, v56, v57);
          v159 = v59;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v161, &v158);
        if (v158)
        {
          v159 = v158;
          operator delete(v158);
        }

        v24 = v161;
        if (v161)
        {
          v162 = v161;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v212))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v149 = 0;
          v150 = 0;
          v151 = 0;
          v60 = *a3;
          v61 = a3[1] - *a3;
          if (v61)
          {
            if ((v61 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v62 = operator new(v61);
            v63 = &v62[v61];
            v149 = v62;
            v151 = &v62[v61];
            memcpy(v62, v60, v61);
            v150 = v63;
          }

          v146 = 0;
          v147 = 0;
          v148 = 0;
          v64 = *a4;
          v65 = a4[1] - *a4;
          if (v65)
          {
            if ((v65 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v66 = operator new(v65);
            v67 = &v66[v65];
            v146 = v66;
            v148 = &v66[v65];
            memcpy(v66, v64, v65);
            v147 = v67;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)1>(a1, a2, &v149, &v146);
          if (v146)
          {
            v147 = v146;
            operator delete(v146);
          }

          v24 = v149;
          if (v149)
          {
            v150 = v149;
            goto LABEL_173;
          }

          return;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v84 = *a3;
        v85 = a3[1] - *a3;
        if (v85)
        {
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v86 = operator new(v85);
          v87 = &v86[v85];
          v155 = v86;
          v157 = &v86[v85];
          memcpy(v86, v84, v85);
          v156 = v87;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v88 = *a4;
        v89 = a4[1] - *a4;
        if (v89)
        {
          if ((v89 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v90 = operator new(v89);
          v91 = &v90[v89];
          v152 = v90;
          v154 = &v90[v89];
          memcpy(v90, v88, v89);
          v153 = v91;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v155, &v152);
        if (v152)
        {
          v153 = v152;
          operator delete(v152);
        }

        v24 = v155;
        if (v155)
        {
          v156 = v155;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v212))
      {
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v68 = *a3;
        v69 = a3[1] - *a3;
        if (v69)
        {
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v70 = operator new(v69);
          v71 = &v70[v69];
          v143 = v70;
          v145 = &v70[v69];
          memcpy(v70, v68, v69);
          v144 = v71;
        }

        v140 = 0;
        v141 = 0;
        v142 = 0;
        v72 = *a4;
        v73 = a4[1] - *a4;
        if (v73)
        {
          if ((v73 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v74 = operator new(v73);
          v75 = &v74[v73];
          v140 = v74;
          v142 = &v74[v73];
          memcpy(v74, v72, v73);
          v141 = v75;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)1>(a1, a2, &v143, &v140);
        if (v140)
        {
          v141 = v140;
          operator delete(v140);
        }

        v24 = v143;
        if (v143)
        {
          v144 = v143;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v212, 64))
      {
        v137 = 0;
        v138 = 0;
        v139 = 0;
        v76 = *a3;
        v77 = a3[1] - *a3;
        if (v77)
        {
          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v78 = operator new(v77);
          v79 = &v78[v77];
          v137 = v78;
          v139 = &v78[v77];
          memcpy(v78, v76, v77);
          v138 = v79;
        }

        v134 = 0;
        v135 = 0;
        v136 = 0;
        v80 = *a4;
        v81 = a4[1] - *a4;
        if (v81)
        {
          if ((v81 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v82 = operator new(v81);
          v83 = &v82[v81];
          v134 = v82;
          v136 = &v82[v81];
          memcpy(v82, v80, v81);
          v135 = v83;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)1>(a1, a2, &v137, &v134);
        if (v134)
        {
          v135 = v134;
          operator delete(v134);
        }

        v24 = v137;
        if (v137)
        {
          v138 = v137;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v212, 32))
      {
        if (mlir::Type::isInteger(v212, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v127, a3);
          std::vector<long long>::vector[abi:nn200100](v126, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)1>(a1, a2, v127, v126);
          if (v126[0])
          {
            v126[1] = v126[0];
            operator delete(v126[0]);
          }

          v24 = v127[0];
          if (v127[0])
          {
            v127[1] = v127[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v212, 8) && !mlir::Type::isInteger(v212, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v209);
          }

          std::vector<long long>::vector[abi:nn200100](v125, a3);
          std::vector<long long>::vector[abi:nn200100](v124, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)1>(a1, a2, v125, v124);
          if (v124[0])
          {
            v124[1] = v124[0];
            operator delete(v124[0]);
          }

          v24 = v125[0];
          if (v125[0])
          {
            v125[1] = v125[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v131 = 0;
      v132 = 0;
      v133 = 0;
      v92 = *a3;
      v93 = a3[1] - *a3;
      if (v93)
      {
        if ((v93 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v94 = operator new(v93);
        v95 = &v94[v93];
        v131 = v94;
        v133 = &v94[v93];
        memcpy(v94, v92, v93);
        v132 = v95;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v96 = *a4;
      v97 = a4[1] - *a4;
      if (v97)
      {
        if ((v97 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v98 = operator new(v97);
        v99 = &v98[v97];
        v128 = v98;
        v130 = &v98[v97];
        memcpy(v98, v96, v97);
        v129 = v99;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)1>(a1, a2, &v131, &v128);
      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      v24 = v131;
      if (v131)
      {
        v132 = v131;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v173 = 0;
      v174 = 0;
      v175 = 0;
      v36 = *a3;
      v37 = a3[1] - *a3;
      if (v37)
      {
        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v38 = operator new(v37);
        v39 = &v38[v37];
        v173 = v38;
        v175 = &v38[v37];
        memcpy(v38, v36, v37);
        v174 = v39;
      }

      v170 = 0;
      v171 = 0;
      v172 = 0;
      v40 = *a4;
      v41 = a4[1] - *a4;
      if (v41)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v42 = operator new(v41);
        v43 = &v42[v41];
        v170 = v42;
        v172 = &v42[v41];
        memcpy(v42, v40, v41);
        v171 = v43;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v173, &v170);
      if (v170)
      {
        v171 = v170;
        operator delete(v170);
      }

      v24 = v173;
      if (v173)
      {
        v174 = v173;
        goto LABEL_173;
      }

      return;
    }

    v179 = 0;
    v180 = 0;
    v181 = 0;
    v116 = *a3;
    v117 = a3[1] - *a3;
    if (v117)
    {
      if ((v117 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v118 = operator new(v117);
      v119 = &v118[v117];
      v179 = v118;
      v181 = &v118[v117];
      memcpy(v118, v116, v117);
      v180 = v119;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v120 = *a4;
    v121 = a4[1] - *a4;
    if (v121)
    {
      if ((v121 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v122 = operator new(v121);
      v123 = &v122[v121];
      v176 = v122;
      v178 = &v122[v121];
      memcpy(v122, v120, v121);
      v177 = v123;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v179, &v176, v34, v35);
    if (v176)
    {
      v177 = v176;
      operator delete(v176);
    }

    v24 = v179;
    if (v179)
    {
      v180 = v179;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v192 = 0;
    v191 = 0;
    v193 = 0;
    v108 = *a3;
    v109 = a3[1] - *a3;
    if (v109)
    {
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v110 = operator new(v109);
      v111 = &v110[v109];
      v191 = v110;
      v193 = &v110[v109];
      memcpy(v110, v108, v109);
      v192 = v111;
    }

    v189 = 0;
    v188 = 0;
    v190 = 0;
    v112 = *a4;
    v113 = a4[1] - *a4;
    if (v113)
    {
      if ((v113 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v114 = operator new(v113);
      v115 = &v114[v113];
      v188 = v114;
      v190 = &v114[v113];
      memcpy(v114, v112, v113);
      v189 = v115;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)1>(a1, a2, &v191, &v188, v25);
    if (v188)
    {
      v189 = v188;
      operator delete(v188);
    }

    v24 = v191;
    if (v191)
    {
      v192 = v191;
      goto LABEL_173;
    }

    return;
  }

  v186 = 0;
  v185 = 0;
  v187 = 0;
  v26 = *a3;
  v27 = a3[1] - *a3;
  if (v27)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v28 = operator new(v27);
    v29 = &v28[v27];
    v185 = v28;
    v187 = &v28[v27];
    memcpy(v28, v26, v27);
    v186 = v29;
  }

  v183 = 0;
  __p = 0;
  v184 = 0;
  v30 = *a4;
  v31 = a4[1] - *a4;
  if (v31)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v32 = operator new(v31);
    v33 = &v32[v31];
    __p = v32;
    v184 = &v32[v31];
    memcpy(v32, v30, v31);
    v183 = v33;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)1>(a1, a2, &v185, &__p);
  if (__p)
  {
    v183 = __p;
    operator delete(__p);
  }

  v24 = v185;
  if (v185)
  {
    v186 = v185;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)2>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v209[0] = ElementType;
  v207 = ***a1;
  v11 = mlir::TensorType::getElementType(&v207);
  Value = v11;
  v206 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v206);
  v206 = ElementType;
  v207 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v205 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v204 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    v209[0] = mlir::AffineMapAttr::getValue(&v205);
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v99 = operator new(v98);
        v100 = (v99 + v98);
        v200 = v99;
        v202 = v99 + v98;
        memcpy(v99, v97, v98);
        v201 = v100;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v103 = operator new(v102);
        v104 = (v103 + v102);
        v197 = v103;
        v199 = v103 + v102;
        memcpy(v103, v101, v102);
        v198 = v104;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_173;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v194 = v18;
      v196 = &v18[v17];
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v209) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
  {
    if (!mlir::Type::isF32(v209) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
    {
      if (mlir::Type::isF32(v209) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v41 = *a3;
        v42 = a3[1] - *a3;
        if (v42)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v43 = operator new(v42);
          v44 = &v43[v42];
          v164 = v43;
          v166 = &v43[v42];
          memcpy(v43, v41, v42);
          v165 = v44;
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v45 = *a4;
        v46 = a4[1] - *a4;
        if (v46)
        {
          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v47 = operator new(v46);
          v48 = &v47[v46];
          v161 = v47;
          v163 = &v47[v46];
          memcpy(v47, v45, v46);
          v162 = v48;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v164, &v161);
        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        v24 = v164;
        if (v164)
        {
          v165 = v164;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v51 = operator new(v50);
          v52 = &v51[v50];
          v158 = v51;
          v160 = &v51[v50];
          memcpy(v51, v49, v50);
          v159 = v52;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v155 = v55;
          v157 = &v55[v54];
          memcpy(v55, v53, v54);
          v156 = v56;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v158, &v155);
        if (v155)
        {
          v156 = v155;
          operator delete(v155);
        }

        v24 = v158;
        if (v158)
        {
          v159 = v158;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v209))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v57 = *a3;
          v58 = a3[1] - *a3;
          if (v58)
          {
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v59 = operator new(v58);
            v60 = &v59[v58];
            v146 = v59;
            v148 = &v59[v58];
            memcpy(v59, v57, v58);
            v147 = v60;
          }

          v143 = 0;
          v144 = 0;
          v145 = 0;
          v61 = *a4;
          v62 = a4[1] - *a4;
          if (v62)
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v63 = operator new(v62);
            v64 = &v63[v62];
            v143 = v63;
            v145 = &v63[v62];
            memcpy(v63, v61, v62);
            v144 = v64;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)2>(a1, a2, &v146, &v143);
          if (v143)
          {
            v144 = v143;
            operator delete(v143);
          }

          v24 = v146;
          if (v146)
          {
            v147 = v146;
            goto LABEL_173;
          }

          return;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v81 = *a3;
        v82 = a3[1] - *a3;
        if (v82)
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v83 = operator new(v82);
          v84 = (v83 + v82);
          v152 = v83;
          v154 = v83 + v82;
          memcpy(v83, v81, v82);
          v153 = v84;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v85 = *a4;
        v86 = a4[1] - *a4;
        if (v86)
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v87 = operator new(v86);
          v88 = &v87[v86];
          v149 = v87;
          v151 = &v87[v86];
          memcpy(v87, v85, v86);
          v150 = v88;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v209))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v67 = operator new(v66);
          v68 = &v67[v66];
          v140 = v67;
          v142 = &v67[v66];
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)2>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v209, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v75 = operator new(v74);
          v76 = &v75[v74];
          v134 = v75;
          v136 = &v75[v74];
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)2>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v209, 32))
      {
        if (mlir::Type::isInteger(v209, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)2>(a1, a2, v124, v123);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v209, 8) && !mlir::Type::isInteger(v209, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v206);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)2>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v89 = *a3;
      v90 = a3[1] - *a3;
      if (v90)
      {
        if ((v90 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v91 = operator new(v90);
        v92 = &v91[v90];
        v128 = v91;
        v130 = &v91[v90];
        memcpy(v91, v89, v90);
        v129 = v92;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v93 = *a4;
      v94 = a4[1] - *a4;
      if (v94)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v95 = operator new(v94);
        v96 = &v95[v94];
        v125 = v95;
        v127 = &v95[v94];
        memcpy(v95, v93, v94);
        v126 = v96;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)2>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v33 = *a3;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v35 = operator new(v34);
        v36 = &v35[v34];
        v170 = v35;
        v172 = &v35[v34];
        memcpy(v35, v33, v34);
        v171 = v36;
      }

      v167 = 0;
      v168 = 0;
      v169 = 0;
      v37 = *a4;
      v38 = a4[1] - *a4;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v39 = operator new(v38);
        v40 = &v39[v38];
        v167 = v39;
        v169 = &v39[v38];
        memcpy(v39, v37, v38);
        v168 = v40;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v170, &v167);
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      v24 = v170;
      if (v170)
      {
        v171 = v170;
        goto LABEL_173;
      }

      return;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v115 = operator new(v114);
      v116 = (v115 + v114);
      v176 = v115;
      v178 = v115 + v114;
      memcpy(v115, v113, v114);
      v177 = v116;
    }

    v173 = 0;
    v174 = 0;
    v175 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v173 = v119;
      v175 = &v119[v118];
      memcpy(v119, v117, v118);
      v174 = v120;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v176, &v173);
    if (v173)
    {
      v174 = v173;
      operator delete(v173);
    }

    v24 = v176;
    if (v176)
    {
      v177 = v176;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v189 = 0;
    v188 = 0;
    v190 = 0;
    v105 = *a3;
    v106 = a3[1] - *a3;
    if (v106)
    {
      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v107 = operator new(v106);
      v108 = (v107 + v106);
      v188 = v107;
      v190 = v107 + v106;
      memcpy(v107, v105, v106);
      v189 = v108;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v109 = *a4;
    v110 = a4[1] - *a4;
    if (v110)
    {
      if ((v110 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v111 = operator new(v110);
      v112 = &v111[v110];
      v185 = v111;
      v187 = &v111[v110];
      memcpy(v111, v109, v110);
      v186 = v112;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)2>(a1, a2, &v188, &v185);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_173;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v27 = operator new(v26);
    v28 = &v27[v26];
    v182 = v27;
    v184 = &v27[v26];
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)2>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)3>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v209[0] = ElementType;
  v207 = ***a1;
  v11 = mlir::TensorType::getElementType(&v207);
  Value = v11;
  v206 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v206);
  v206 = ElementType;
  v207 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v205 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v204 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    v209[0] = mlir::AffineMapAttr::getValue(&v205);
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v99 = operator new(v98);
        v100 = &v99[v98];
        v200 = v99;
        v202 = &v99[v98];
        memcpy(v99, v97, v98);
        v201 = v100;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v103 = operator new(v102);
        v104 = (v103 + v102);
        v197 = v103;
        v199 = v103 + v102;
        memcpy(v103, v101, v102);
        v198 = v104;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_173;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v194 = v18;
      v196 = &v18[v17];
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v209) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
  {
    if (!mlir::Type::isF32(v209) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
    {
      if (mlir::Type::isF32(v209) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v41 = *a3;
        v42 = a3[1] - *a3;
        if (v42)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v43 = operator new(v42);
          v44 = &v43[v42];
          v164 = v43;
          v166 = &v43[v42];
          memcpy(v43, v41, v42);
          v165 = v44;
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v45 = *a4;
        v46 = a4[1] - *a4;
        if (v46)
        {
          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v47 = operator new(v46);
          v48 = &v47[v46];
          v161 = v47;
          v163 = &v47[v46];
          memcpy(v47, v45, v46);
          v162 = v48;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v164, &v161);
        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        v24 = v164;
        if (v164)
        {
          v165 = v164;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v51 = operator new(v50);
          v52 = &v51[v50];
          v158 = v51;
          v160 = &v51[v50];
          memcpy(v51, v49, v50);
          v159 = v52;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v155 = v55;
          v157 = &v55[v54];
          memcpy(v55, v53, v54);
          v156 = v56;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v158, &v155);
        if (v155)
        {
          v156 = v155;
          operator delete(v155);
        }

        v24 = v158;
        if (v158)
        {
          v159 = v158;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v209))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v57 = *a3;
          v58 = a3[1] - *a3;
          if (v58)
          {
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v59 = operator new(v58);
            v60 = &v59[v58];
            v146 = v59;
            v148 = &v59[v58];
            memcpy(v59, v57, v58);
            v147 = v60;
          }

          v143 = 0;
          v144 = 0;
          v145 = 0;
          v61 = *a4;
          v62 = a4[1] - *a4;
          if (v62)
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v63 = operator new(v62);
            v64 = &v63[v62];
            v143 = v63;
            v145 = &v63[v62];
            memcpy(v63, v61, v62);
            v144 = v64;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)3>(a1, a2, &v146, &v143);
          if (v143)
          {
            v144 = v143;
            operator delete(v143);
          }

          v24 = v146;
          if (v146)
          {
            v147 = v146;
            goto LABEL_173;
          }

          return;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v81 = *a3;
        v82 = a3[1] - *a3;
        if (v82)
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v83 = operator new(v82);
          v84 = &v83[v82];
          v152 = v83;
          v154 = &v83[v82];
          memcpy(v83, v81, v82);
          v153 = v84;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v85 = *a4;
        v86 = a4[1] - *a4;
        if (v86)
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v87 = operator new(v86);
          v88 = &v87[v86];
          v149 = v87;
          v151 = &v87[v86];
          memcpy(v87, v85, v86);
          v150 = v88;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v209))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v67 = operator new(v66);
          v68 = &v67[v66];
          v140 = v67;
          v142 = &v67[v66];
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)3>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v209, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v75 = operator new(v74);
          v76 = &v75[v74];
          v134 = v75;
          v136 = &v75[v74];
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)3>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v209, 32))
      {
        if (mlir::Type::isInteger(v209, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)3>(a1, a2, v124, v123);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v209, 8) && !mlir::Type::isInteger(v209, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v206);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)3>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v89 = *a3;
      v90 = a3[1] - *a3;
      if (v90)
      {
        if ((v90 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v91 = operator new(v90);
        v92 = &v91[v90];
        v128 = v91;
        v130 = &v91[v90];
        memcpy(v91, v89, v90);
        v129 = v92;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v93 = *a4;
      v94 = a4[1] - *a4;
      if (v94)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v95 = operator new(v94);
        v96 = &v95[v94];
        v125 = v95;
        v127 = &v95[v94];
        memcpy(v95, v93, v94);
        v126 = v96;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)3>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v33 = *a3;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v35 = operator new(v34);
        v36 = &v35[v34];
        v170 = v35;
        v172 = &v35[v34];
        memcpy(v35, v33, v34);
        v171 = v36;
      }

      v167 = 0;
      v168 = 0;
      v169 = 0;
      v37 = *a4;
      v38 = a4[1] - *a4;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v39 = operator new(v38);
        v40 = &v39[v38];
        v167 = v39;
        v169 = &v39[v38];
        memcpy(v39, v37, v38);
        v168 = v40;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v170, &v167);
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      v24 = v170;
      if (v170)
      {
        v171 = v170;
        goto LABEL_173;
      }

      return;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v115 = operator new(v114);
      v116 = &v115[v114];
      v176 = v115;
      v178 = &v115[v114];
      memcpy(v115, v113, v114);
      v177 = v116;
    }

    v173 = 0;
    v174 = 0;
    v175 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v173 = v119;
      v175 = &v119[v118];
      memcpy(v119, v117, v118);
      v174 = v120;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v176, &v173);
    if (v173)
    {
      v174 = v173;
      operator delete(v173);
    }

    v24 = v176;
    if (v176)
    {
      v177 = v176;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v189 = 0;
    v188 = 0;
    v190 = 0;
    v105 = *a3;
    v106 = a3[1] - *a3;
    if (v106)
    {
      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v107 = operator new(v106);
      v108 = &v107[v106];
      v188 = v107;
      v190 = &v107[v106];
      memcpy(v107, v105, v106);
      v189 = v108;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v109 = *a4;
    v110 = a4[1] - *a4;
    if (v110)
    {
      if ((v110 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v111 = operator new(v110);
      v112 = &v111[v110];
      v185 = v111;
      v187 = &v111[v110];
      memcpy(v111, v109, v110);
      v186 = v112;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)3>(a1, a2, &v188, &v185);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_173;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v27 = operator new(v26);
    v28 = &v27[v26];
    v182 = v27;
    v184 = &v27[v26];
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)3>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)4>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v211[0] = ElementType;
  v209 = ***a1;
  v11 = mlir::TensorType::getElementType(&v209);
  Value = v11;
  v208 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v208);
  v208 = ElementType;
  v209 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v207 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v206 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v205 = v15;
    v211[0] = mlir::AffineMapAttr::getValue(&v207);
    Value = mlir::AffineMapAttr::getValue(&v206);
    v209 = mlir::AffineMapAttr::getValue(&v205);
  }

  if (mlir::Type::isF32(v211) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v209))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v202 = 0;
      v203 = 0;
      v204 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v99 = operator new(v98);
        v100 = &v99[v98];
        v202 = v99;
        v204 = &v99[v98];
        memcpy(v99, v97, v98);
        v203 = v100;
      }

      v199 = 0;
      v200 = 0;
      v201 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v103 = operator new(v102);
        v104 = (v103 + v102);
        v199 = v103;
        v201 = v103 + v102;
        memcpy(v103, v101, v102);
        v200 = v104;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v202, &v199);
      if (v199)
      {
        v200 = v199;
        operator delete(v199);
      }

      v24 = v202;
      if (v202)
      {
        v203 = v202;
        goto LABEL_173;
      }

      return;
    }

    v196 = 0;
    v197 = 0;
    v198 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v196 = v18;
      v198 = &v18[v17];
      memcpy(v18, v16, v17);
      v197 = v19;
    }

    v193 = 0;
    v194 = 0;
    v195 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v193 = v22;
      v195 = v22 + v21;
      memcpy(v22, v20, v21);
      v194 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v196, &v193);
      if (v193)
      {
        v194 = v193;
        operator delete(v193);
      }

      v24 = v196;
      if (v196)
      {
        v197 = v196;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v211) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v209))
  {
    if (!mlir::Type::isF32(v211) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v209))
    {
      if (mlir::Type::isF32(v211) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v209))
      {
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v41 = *a3;
        v42 = a3[1] - *a3;
        if (v42)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v43 = operator new(v42);
          v44 = &v43[v42];
          v166 = v43;
          v168 = &v43[v42];
          memcpy(v43, v41, v42);
          v167 = v44;
        }

        v163 = 0;
        v164 = 0;
        v165 = 0;
        v45 = *a4;
        v46 = a4[1] - *a4;
        if (v46)
        {
          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v47 = operator new(v46);
          v48 = &v47[v46];
          v163 = v47;
          v165 = &v47[v46];
          memcpy(v47, v45, v46);
          v164 = v48;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v166, &v163);
        if (v163)
        {
          v164 = v163;
          operator delete(v163);
        }

        v24 = v166;
        if (v166)
        {
          v167 = v166;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v211) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v209))
      {
        v160 = 0;
        v161 = 0;
        v162 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v51 = operator new(v50);
          v52 = &v51[v50];
          v160 = v51;
          v162 = &v51[v50];
          memcpy(v51, v49, v50);
          v161 = v52;
        }

        v157 = 0;
        v158 = 0;
        v159 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v157 = v55;
          v159 = &v55[v54];
          memcpy(v55, v53, v54);
          v158 = v56;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v160, &v157);
        if (v157)
        {
          v158 = v157;
          operator delete(v157);
        }

        v24 = v160;
        if (v160)
        {
          v161 = v160;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v211))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v148 = 0;
          v149 = 0;
          v150 = 0;
          v57 = *a3;
          v58 = a3[1] - *a3;
          if (v58)
          {
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v59 = operator new(v58);
            v60 = &v59[v58];
            v148 = v59;
            v150 = &v59[v58];
            memcpy(v59, v57, v58);
            v149 = v60;
          }

          v145 = 0;
          v146 = 0;
          v147 = 0;
          v61 = *a4;
          v62 = a4[1] - *a4;
          if (v62)
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v63 = operator new(v62);
            v64 = &v63[v62];
            v145 = v63;
            v147 = &v63[v62];
            memcpy(v63, v61, v62);
            v146 = v64;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)4>(a1, a2, &v148, &v145);
          if (v145)
          {
            v146 = v145;
            operator delete(v145);
          }

          v24 = v148;
          if (v148)
          {
            v149 = v148;
            goto LABEL_173;
          }

          return;
        }

        v154 = 0;
        v155 = 0;
        v156 = 0;
        v81 = *a3;
        v82 = a3[1] - *a3;
        if (v82)
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v83 = operator new(v82);
          v84 = &v83[v82];
          v154 = v83;
          v156 = &v83[v82];
          memcpy(v83, v81, v82);
          v155 = v84;
        }

        v151 = 0;
        v152 = 0;
        v153 = 0;
        v85 = *a4;
        v86 = a4[1] - *a4;
        if (v86)
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v87 = operator new(v86);
          v88 = &v87[v86];
          v151 = v87;
          v153 = &v87[v86];
          memcpy(v87, v85, v86);
          v152 = v88;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v154, &v151);
        if (v151)
        {
          v152 = v151;
          operator delete(v151);
        }

        v24 = v154;
        if (v154)
        {
          v155 = v154;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v211))
      {
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v67 = operator new(v66);
          v68 = &v67[v66];
          v142 = v67;
          v144 = &v67[v66];
          memcpy(v67, v65, v66);
          v143 = v68;
        }

        v139 = 0;
        v140 = 0;
        v141 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v139 = v71;
          v141 = &v71[v70];
          memcpy(v71, v69, v70);
          v140 = v72;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)4>(a1, a2, &v142, &v139);
        if (v139)
        {
          v140 = v139;
          operator delete(v139);
        }

        v24 = v142;
        if (v142)
        {
          v143 = v142;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v211, 64))
      {
        v136 = 0;
        v137 = 0;
        v138 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v75 = operator new(v74);
          v76 = &v75[v74];
          v136 = v75;
          v138 = &v75[v74];
          memcpy(v75, v73, v74);
          v137 = v76;
        }

        v133 = 0;
        v134 = 0;
        v135 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v133 = v79;
          v135 = &v79[v78];
          memcpy(v79, v77, v78);
          v134 = v80;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)4>(a1, a2, &v136, &v133);
        if (v133)
        {
          v134 = v133;
          operator delete(v133);
        }

        v24 = v136;
        if (v136)
        {
          v137 = v136;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v211, 32))
      {
        if (mlir::Type::isInteger(v211, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v126, a3);
          std::vector<long long>::vector[abi:nn200100](v125, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)4>(a1, a2, v126, v125, v121, v122);
          if (v125[0])
          {
            v125[1] = v125[0];
            operator delete(v125[0]);
          }

          v24 = v126[0];
          if (v126[0])
          {
            v126[1] = v126[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v211, 8) && !mlir::Type::isInteger(v211, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v208);
          }

          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)4>(a1, a2, v124, v123);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v130 = 0;
      v131 = 0;
      v132 = 0;
      v89 = *a3;
      v90 = a3[1] - *a3;
      if (v90)
      {
        if ((v90 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v91 = operator new(v90);
        v92 = &v91[v90];
        v130 = v91;
        v132 = &v91[v90];
        memcpy(v91, v89, v90);
        v131 = v92;
      }

      v127 = 0;
      v128 = 0;
      v129 = 0;
      v93 = *a4;
      v94 = a4[1] - *a4;
      if (v94)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v95 = operator new(v94);
        v96 = &v95[v94];
        v127 = v95;
        v129 = &v95[v94];
        memcpy(v95, v93, v94);
        v128 = v96;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)4>(a1, a2, &v130, &v127);
      if (v127)
      {
        v128 = v127;
        operator delete(v127);
      }

      v24 = v130;
      if (v130)
      {
        v131 = v130;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v172 = 0;
      v173 = 0;
      v174 = 0;
      v33 = *a3;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v35 = operator new(v34);
        v36 = &v35[v34];
        v172 = v35;
        v174 = &v35[v34];
        memcpy(v35, v33, v34);
        v173 = v36;
      }

      v169 = 0;
      v170 = 0;
      v171 = 0;
      v37 = *a4;
      v38 = a4[1] - *a4;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v39 = operator new(v38);
        v40 = &v39[v38];
        v169 = v39;
        v171 = &v39[v38];
        memcpy(v39, v37, v38);
        v170 = v40;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v172, &v169);
      if (v169)
      {
        v170 = v169;
        operator delete(v169);
      }

      v24 = v172;
      if (v172)
      {
        v173 = v172;
        goto LABEL_173;
      }

      return;
    }

    v178 = 0;
    v179 = 0;
    v180 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v115 = operator new(v114);
      v116 = &v115[v114];
      v178 = v115;
      v180 = &v115[v114];
      memcpy(v115, v113, v114);
      v179 = v116;
    }

    v175 = 0;
    v176 = 0;
    v177 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v175 = v119;
      v177 = &v119[v118];
      memcpy(v119, v117, v118);
      v176 = v120;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v178, &v175);
    if (v175)
    {
      v176 = v175;
      operator delete(v175);
    }

    v24 = v178;
    if (v178)
    {
      v179 = v178;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v191 = 0;
    v190 = 0;
    v192 = 0;
    v105 = *a3;
    v106 = a3[1] - *a3;
    if (v106)
    {
      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v107 = operator new(v106);
      v108 = &v107[v106];
      v190 = v107;
      v192 = &v107[v106];
      memcpy(v107, v105, v106);
      v191 = v108;
    }

    v188 = 0;
    v187 = 0;
    v189 = 0;
    v109 = *a4;
    v110 = a4[1] - *a4;
    if (v110)
    {
      if ((v110 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v111 = operator new(v110);
      v112 = &v111[v110];
      v187 = v111;
      v189 = &v111[v110];
      memcpy(v111, v109, v110);
      v188 = v112;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)4>(a1, a2, &v190, &v187);
    if (v187)
    {
      v188 = v187;
      operator delete(v187);
    }

    v24 = v190;
    if (v190)
    {
      v191 = v190;
      goto LABEL_173;
    }

    return;
  }

  v185 = 0;
  v184 = 0;
  v186 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v27 = operator new(v26);
    v28 = &v27[v26];
    v184 = v27;
    v186 = &v27[v26];
    memcpy(v27, v25, v26);
    v185 = v28;
  }

  v182 = 0;
  __p = 0;
  v183 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v183 = &v31[v30];
    memcpy(v31, v29, v30);
    v182 = v32;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)4>(a1, a2, &v184, &__p);
  if (__p)
  {
    v182 = __p;
    operator delete(__p);
  }

  v24 = v184;
  if (v184)
  {
    v185 = v184;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)5>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v209[0] = ElementType;
  v207 = ***a1;
  v11 = mlir::TensorType::getElementType(&v207);
  Value = v11;
  v206 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v206);
  v206 = ElementType;
  v207 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v205 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v204 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    v209[0] = mlir::AffineMapAttr::getValue(&v205);
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v99 = operator new(v98);
        v100 = &v99[v98];
        v200 = v99;
        v202 = &v99[v98];
        memcpy(v99, v97, v98);
        v201 = v100;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v103 = operator new(v102);
        v104 = (v103 + v102);
        v197 = v103;
        v199 = v103 + v102;
        memcpy(v103, v101, v102);
        v198 = v104;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_173;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v194 = v18;
      v196 = &v18[v17];
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v209) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
  {
    if (!mlir::Type::isF32(v209) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
    {
      if (mlir::Type::isF32(v209) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v41 = *a3;
        v42 = a3[1] - *a3;
        if (v42)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v43 = operator new(v42);
          v44 = &v43[v42];
          v164 = v43;
          v166 = &v43[v42];
          memcpy(v43, v41, v42);
          v165 = v44;
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v45 = *a4;
        v46 = a4[1] - *a4;
        if (v46)
        {
          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v47 = operator new(v46);
          v48 = &v47[v46];
          v161 = v47;
          v163 = &v47[v46];
          memcpy(v47, v45, v46);
          v162 = v48;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v164, &v161);
        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        v24 = v164;
        if (v164)
        {
          v165 = v164;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v51 = operator new(v50);
          v52 = &v51[v50];
          v158 = v51;
          v160 = &v51[v50];
          memcpy(v51, v49, v50);
          v159 = v52;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v155 = v55;
          v157 = &v55[v54];
          memcpy(v55, v53, v54);
          v156 = v56;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v158, &v155);
        if (v155)
        {
          v156 = v155;
          operator delete(v155);
        }

        v24 = v158;
        if (v158)
        {
          v159 = v158;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v209))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v57 = *a3;
          v58 = a3[1] - *a3;
          if (v58)
          {
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v59 = operator new(v58);
            v60 = &v59[v58];
            v146 = v59;
            v148 = &v59[v58];
            memcpy(v59, v57, v58);
            v147 = v60;
          }

          v143 = 0;
          v144 = 0;
          v145 = 0;
          v61 = *a4;
          v62 = a4[1] - *a4;
          if (v62)
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v63 = operator new(v62);
            v64 = &v63[v62];
            v143 = v63;
            v145 = &v63[v62];
            memcpy(v63, v61, v62);
            v144 = v64;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)5>(a1, a2, &v146, &v143);
          if (v143)
          {
            v144 = v143;
            operator delete(v143);
          }

          v24 = v146;
          if (v146)
          {
            v147 = v146;
            goto LABEL_173;
          }

          return;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v81 = *a3;
        v82 = a3[1] - *a3;
        if (v82)
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v83 = operator new(v82);
          v84 = &v83[v82];
          v152 = v83;
          v154 = &v83[v82];
          memcpy(v83, v81, v82);
          v153 = v84;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v85 = *a4;
        v86 = a4[1] - *a4;
        if (v86)
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v87 = operator new(v86);
          v88 = &v87[v86];
          v149 = v87;
          v151 = &v87[v86];
          memcpy(v87, v85, v86);
          v150 = v88;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v209))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v67 = operator new(v66);
          v68 = &v67[v66];
          v140 = v67;
          v142 = &v67[v66];
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)5>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v209, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v75 = operator new(v74);
          v76 = &v75[v74];
          v134 = v75;
          v136 = &v75[v74];
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)5>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v209, 32))
      {
        if (mlir::Type::isInteger(v209, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)5>(a1, a2, v124, v123);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v209, 8) && !mlir::Type::isInteger(v209, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v206);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)5>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v89 = *a3;
      v90 = a3[1] - *a3;
      if (v90)
      {
        if ((v90 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v91 = operator new(v90);
        v92 = &v91[v90];
        v128 = v91;
        v130 = &v91[v90];
        memcpy(v91, v89, v90);
        v129 = v92;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v93 = *a4;
      v94 = a4[1] - *a4;
      if (v94)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v95 = operator new(v94);
        v96 = &v95[v94];
        v125 = v95;
        v127 = &v95[v94];
        memcpy(v95, v93, v94);
        v126 = v96;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)5>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v33 = *a3;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v35 = operator new(v34);
        v36 = &v35[v34];
        v170 = v35;
        v172 = &v35[v34];
        memcpy(v35, v33, v34);
        v171 = v36;
      }

      v167 = 0;
      v168 = 0;
      v169 = 0;
      v37 = *a4;
      v38 = a4[1] - *a4;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v39 = operator new(v38);
        v40 = &v39[v38];
        v167 = v39;
        v169 = &v39[v38];
        memcpy(v39, v37, v38);
        v168 = v40;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v170, &v167);
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      v24 = v170;
      if (v170)
      {
        v171 = v170;
        goto LABEL_173;
      }

      return;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v115 = operator new(v114);
      v116 = &v115[v114];
      v176 = v115;
      v178 = &v115[v114];
      memcpy(v115, v113, v114);
      v177 = v116;
    }

    v173 = 0;
    v174 = 0;
    v175 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v173 = v119;
      v175 = &v119[v118];
      memcpy(v119, v117, v118);
      v174 = v120;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v176, &v173);
    if (v173)
    {
      v174 = v173;
      operator delete(v173);
    }

    v24 = v176;
    if (v176)
    {
      v177 = v176;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v189 = 0;
    v188 = 0;
    v190 = 0;
    v105 = *a3;
    v106 = a3[1] - *a3;
    if (v106)
    {
      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v107 = operator new(v106);
      v108 = &v107[v106];
      v188 = v107;
      v190 = &v107[v106];
      memcpy(v107, v105, v106);
      v189 = v108;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v109 = *a4;
    v110 = a4[1] - *a4;
    if (v110)
    {
      if ((v110 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v111 = operator new(v110);
      v112 = &v111[v110];
      v185 = v111;
      v187 = &v111[v110];
      memcpy(v111, v109, v110);
      v186 = v112;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)5>(a1, a2, &v188, &v185);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_173;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v27 = operator new(v26);
    v28 = &v27[v26];
    v182 = v27;
    v184 = &v27[v26];
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)5>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)15>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v209[0] = ElementType;
  v207 = ***a1;
  v11 = mlir::TensorType::getElementType(&v207);
  Value = v11;
  v206 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v206);
  v206 = ElementType;
  v207 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v205 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v204 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    v209[0] = mlir::AffineMapAttr::getValue(&v205);
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v99 = operator new(v98);
        v100 = &v99[v98];
        v200 = v99;
        v202 = &v99[v98];
        memcpy(v99, v97, v98);
        v201 = v100;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v103 = operator new(v102);
        v104 = (v103 + v102);
        v197 = v103;
        v199 = v103 + v102;
        memcpy(v103, v101, v102);
        v198 = v104;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_173;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v194 = v18;
      v196 = &v18[v17];
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v209) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
  {
    if (!mlir::Type::isF32(v209) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
    {
      if (mlir::Type::isF32(v209) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v41 = *a3;
        v42 = a3[1] - *a3;
        if (v42)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v43 = operator new(v42);
          v44 = &v43[v42];
          v164 = v43;
          v166 = &v43[v42];
          memcpy(v43, v41, v42);
          v165 = v44;
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v45 = *a4;
        v46 = a4[1] - *a4;
        if (v46)
        {
          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v47 = operator new(v46);
          v48 = &v47[v46];
          v161 = v47;
          v163 = &v47[v46];
          memcpy(v47, v45, v46);
          v162 = v48;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v164, &v161);
        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        v24 = v164;
        if (v164)
        {
          v165 = v164;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v51 = operator new(v50);
          v52 = &v51[v50];
          v158 = v51;
          v160 = &v51[v50];
          memcpy(v51, v49, v50);
          v159 = v52;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v155 = v55;
          v157 = &v55[v54];
          memcpy(v55, v53, v54);
          v156 = v56;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v158, &v155);
        if (v155)
        {
          v156 = v155;
          operator delete(v155);
        }

        v24 = v158;
        if (v158)
        {
          v159 = v158;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v209))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v57 = *a3;
          v58 = a3[1] - *a3;
          if (v58)
          {
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v59 = operator new(v58);
            v60 = &v59[v58];
            v146 = v59;
            v148 = &v59[v58];
            memcpy(v59, v57, v58);
            v147 = v60;
          }

          v143 = 0;
          v144 = 0;
          v145 = 0;
          v61 = *a4;
          v62 = a4[1] - *a4;
          if (v62)
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v63 = operator new(v62);
            v64 = &v63[v62];
            v143 = v63;
            v145 = &v63[v62];
            memcpy(v63, v61, v62);
            v144 = v64;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)15>(a1, a2, &v146, &v143);
          if (v143)
          {
            v144 = v143;
            operator delete(v143);
          }

          v24 = v146;
          if (v146)
          {
            v147 = v146;
            goto LABEL_173;
          }

          return;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v81 = *a3;
        v82 = a3[1] - *a3;
        if (v82)
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v83 = operator new(v82);
          v84 = &v83[v82];
          v152 = v83;
          v154 = &v83[v82];
          memcpy(v83, v81, v82);
          v153 = v84;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v85 = *a4;
        v86 = a4[1] - *a4;
        if (v86)
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v87 = operator new(v86);
          v88 = &v87[v86];
          v149 = v87;
          v151 = &v87[v86];
          memcpy(v87, v85, v86);
          v150 = v88;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v209))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v67 = operator new(v66);
          v68 = &v67[v66];
          v140 = v67;
          v142 = &v67[v66];
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)15>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v209, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v75 = operator new(v74);
          v76 = &v75[v74];
          v134 = v75;
          v136 = &v75[v74];
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)15>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v209, 32))
      {
        if (mlir::Type::isInteger(v209, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)15>(a1, a2, v124, v123);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v209, 8) && !mlir::Type::isInteger(v209, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v206);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)15>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v89 = *a3;
      v90 = a3[1] - *a3;
      if (v90)
      {
        if ((v90 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v91 = operator new(v90);
        v92 = &v91[v90];
        v128 = v91;
        v130 = &v91[v90];
        memcpy(v91, v89, v90);
        v129 = v92;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v93 = *a4;
      v94 = a4[1] - *a4;
      if (v94)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v95 = operator new(v94);
        v96 = &v95[v94];
        v125 = v95;
        v127 = &v95[v94];
        memcpy(v95, v93, v94);
        v126 = v96;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)15>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v33 = *a3;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v35 = operator new(v34);
        v36 = &v35[v34];
        v170 = v35;
        v172 = &v35[v34];
        memcpy(v35, v33, v34);
        v171 = v36;
      }

      v167 = 0;
      v168 = 0;
      v169 = 0;
      v37 = *a4;
      v38 = a4[1] - *a4;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v39 = operator new(v38);
        v40 = &v39[v38];
        v167 = v39;
        v169 = &v39[v38];
        memcpy(v39, v37, v38);
        v168 = v40;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v170, &v167);
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      v24 = v170;
      if (v170)
      {
        v171 = v170;
        goto LABEL_173;
      }

      return;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v115 = operator new(v114);
      v116 = &v115[v114];
      v176 = v115;
      v178 = &v115[v114];
      memcpy(v115, v113, v114);
      v177 = v116;
    }

    v173 = 0;
    v174 = 0;
    v175 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v173 = v119;
      v175 = &v119[v118];
      memcpy(v119, v117, v118);
      v174 = v120;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v176, &v173);
    if (v173)
    {
      v174 = v173;
      operator delete(v173);
    }

    v24 = v176;
    if (v176)
    {
      v177 = v176;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v189 = 0;
    v188 = 0;
    v190 = 0;
    v105 = *a3;
    v106 = a3[1] - *a3;
    if (v106)
    {
      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v107 = operator new(v106);
      v108 = &v107[v106];
      v188 = v107;
      v190 = &v107[v106];
      memcpy(v107, v105, v106);
      v189 = v108;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v109 = *a4;
    v110 = a4[1] - *a4;
    if (v110)
    {
      if ((v110 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v111 = operator new(v110);
      v112 = &v111[v110];
      v185 = v111;
      v187 = &v111[v110];
      memcpy(v111, v109, v110);
      v186 = v112;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)15>(a1, a2, &v188, &v185);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_173;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v27 = operator new(v26);
    v28 = &v27[v26];
    v182 = v27;
    v184 = &v27[v26];
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)15>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_173;
  }
}

void mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)16>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6)
{
  Value = ***a2;
  ElementType = mlir::TensorType::getElementType(&Value);
  v209[0] = ElementType;
  v207 = ***a1;
  v11 = mlir::TensorType::getElementType(&v207);
  Value = v11;
  v206 = *(*a1)[1];
  v12 = mlir::TensorType::getElementType(&v206);
  v206 = ElementType;
  v207 = v12;
  v13 = *(*ElementType + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v205 = ElementType;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v204 = v14;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    v209[0] = mlir::AffineMapAttr::getValue(&v205);
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v99 = operator new(v98);
        v100 = &v99[v98];
        v200 = v99;
        v202 = &v99[v98];
        memcpy(v99, v97, v98);
        v201 = v100;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v103 = operator new(v102);
        v104 = (v103 + v102);
        v197 = v103;
        v199 = v103 + v102;
        memcpy(v103, v101, v102);
        v198 = v104;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_173;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v18 = operator new(v17);
      v19 = &v18[v17];
      v194 = v18;
      v196 = &v18[v17];
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_19;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_19:
      mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_173:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_175:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(v209) || !mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
  {
    if (!mlir::Type::isF32(v209) || !mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
    {
      if (mlir::Type::isF32(v209) && mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v164 = 0;
        v165 = 0;
        v166 = 0;
        v41 = *a3;
        v42 = a3[1] - *a3;
        if (v42)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v43 = operator new(v42);
          v44 = &v43[v42];
          v164 = v43;
          v166 = &v43[v42];
          memcpy(v43, v41, v42);
          v165 = v44;
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v45 = *a4;
        v46 = a4[1] - *a4;
        if (v46)
        {
          if ((v46 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v47 = operator new(v46);
          v48 = &v47[v46];
          v161 = v47;
          v163 = &v47[v46];
          memcpy(v47, v45, v46);
          v162 = v48;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v164, &v161);
        if (v161)
        {
          v162 = v161;
          operator delete(v161);
        }

        v24 = v164;
        if (v164)
        {
          v165 = v164;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF32(v209) && mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v51 = operator new(v50);
          v52 = &v51[v50];
          v158 = v51;
          v160 = &v51[v50];
          memcpy(v51, v49, v50);
          v159 = v52;
        }

        v155 = 0;
        v156 = 0;
        v157 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v155 = v55;
          v157 = &v55[v54];
          memcpy(v55, v53, v54);
          v156 = v56;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v158, &v155);
        if (v155)
        {
          v156 = v155;
          operator delete(v155);
        }

        v24 = v158;
        if (v158)
        {
          v159 = v158;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isF16(v209))
      {
        if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v146 = 0;
          v147 = 0;
          v148 = 0;
          v57 = *a3;
          v58 = a3[1] - *a3;
          if (v58)
          {
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v59 = operator new(v58);
            v60 = &v59[v58];
            v146 = v59;
            v148 = &v59[v58];
            memcpy(v59, v57, v58);
            v147 = v60;
          }

          v143 = 0;
          v144 = 0;
          v145 = 0;
          v61 = *a4;
          v62 = a4[1] - *a4;
          if (v62)
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              goto LABEL_175;
            }

            v63 = operator new(v62);
            v64 = &v63[v62];
            v143 = v63;
            v145 = &v63[v62];
            memcpy(v63, v61, v62);
            v144 = v64;
          }

          mlir::mps::arithmeticBinaryTileBaseKernel<half,half,half,(mlir::mps::arithmeticOp)16>(a1, a2, &v146, &v143);
          if (v143)
          {
            v144 = v143;
            operator delete(v143);
          }

          v24 = v146;
          if (v146)
          {
            v147 = v146;
            goto LABEL_173;
          }

          return;
        }

        v152 = 0;
        v153 = 0;
        v154 = 0;
        v81 = *a3;
        v82 = a3[1] - *a3;
        if (v82)
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v83 = operator new(v82);
          v84 = &v83[v82];
          v152 = v83;
          v154 = &v83[v82];
          memcpy(v83, v81, v82);
          v153 = v84;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v85 = *a4;
        v86 = a4[1] - *a4;
        if (v86)
        {
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v87 = operator new(v86);
          v88 = &v87[v86];
          v149 = v87;
          v151 = &v87[v86];
          memcpy(v87, v85, v86);
          v150 = v88;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isBF16(v209))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v67 = operator new(v66);
          v68 = &v67[v66];
          v140 = v67;
          v142 = &v67[v66];
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)16>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_173;
        }

        return;
      }

      if (mlir::Type::isInteger(v209, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v75 = operator new(v74);
          v76 = &v75[v74];
          v134 = v75;
          v136 = &v75[v74];
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_175;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticBinaryTileBaseKernel<long long,long long,long long,(mlir::mps::arithmeticOp)16>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_173;
        }

        return;
      }

      if (!mlir::Type::isInteger(v209, 32))
      {
        if (mlir::Type::isInteger(v209, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<short,short,short,(mlir::mps::arithmeticOp)16>(a1, a2, v124, v123);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_173;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(v209, 8) && !mlir::Type::isInteger(v209, 1))
          {
            mlir::mps::arithmeticBinaryTileKernelType<(mlir::mps::arithmeticOp)0>(&v206);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticBinaryTileBaseKernel<signed char,signed char,signed char,(mlir::mps::arithmeticOp)16>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_173;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v89 = *a3;
      v90 = a3[1] - *a3;
      if (v90)
      {
        if ((v90 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v91 = operator new(v90);
        v92 = &v91[v90];
        v128 = v91;
        v130 = &v91[v90];
        memcpy(v91, v89, v90);
        v129 = v92;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v93 = *a4;
      v94 = a4[1] - *a4;
      if (v94)
      {
        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v95 = operator new(v94);
        v96 = &v95[v94];
        v125 = v95;
        v127 = &v95[v94];
        memcpy(v95, v93, v94);
        v126 = v96;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<int,int,int,(mlir::mps::arithmeticOp)16>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_173;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v33 = *a3;
      v34 = a3[1] - *a3;
      if (v34)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v35 = operator new(v34);
        v36 = &v35[v34];
        v170 = v35;
        v172 = &v35[v34];
        memcpy(v35, v33, v34);
        v171 = v36;
      }

      v167 = 0;
      v168 = 0;
      v169 = 0;
      v37 = *a4;
      v38 = a4[1] - *a4;
      if (v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_175;
        }

        v39 = operator new(v38);
        v40 = &v39[v38];
        v167 = v39;
        v169 = &v39[v38];
        memcpy(v39, v37, v38);
        v168 = v40;
      }

      mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v170, &v167);
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      v24 = v170;
      if (v170)
      {
        v171 = v170;
        goto LABEL_173;
      }

      return;
    }

    v176 = 0;
    v177 = 0;
    v178 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v115 = operator new(v114);
      v116 = &v115[v114];
      v176 = v115;
      v178 = &v115[v114];
      memcpy(v115, v113, v114);
      v177 = v116;
    }

    v173 = 0;
    v174 = 0;
    v175 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v173 = v119;
      v175 = &v119[v118];
      memcpy(v119, v117, v118);
      v174 = v120;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v176, &v173);
    if (v173)
    {
      v174 = v173;
      operator delete(v173);
    }

    v24 = v176;
    if (v176)
    {
      v177 = v176;
      goto LABEL_173;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v189 = 0;
    v188 = 0;
    v190 = 0;
    v105 = *a3;
    v106 = a3[1] - *a3;
    if (v106)
    {
      if ((v106 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v107 = operator new(v106);
      v108 = &v107[v106];
      v188 = v107;
      v190 = &v107[v106];
      memcpy(v107, v105, v106);
      v189 = v108;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v109 = *a4;
    v110 = a4[1] - *a4;
    if (v110)
    {
      if ((v110 & 0x8000000000000000) != 0)
      {
        goto LABEL_175;
      }

      v111 = operator new(v110);
      v112 = &v111[v110];
      v185 = v111;
      v187 = &v111[v110];
      memcpy(v111, v109, v110);
      v186 = v112;
    }

    mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)16>(a1, a2, &v188, &v185);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_173;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v27 = operator new(v26);
    v28 = &v27[v26];
    v182 = v27;
    v184 = &v27[v26];
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)16>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
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

void mlir::mps::CPUNDArrayArithmeticUnaryKernel::arithmeticUnaryTileKernel(uint64_t ***a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 16);
  if (v12 <= 10)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v32 = *(a7 + 24);
        v157 = 0;
        v158 = 0;
        v156 = 0;
        v34 = *a3;
        v33 = *(a3 + 8);
        v35 = v33 - *a3;
        if (v33 != *a3)
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_112;
          }

          v36 = operator new(v33 - *a3);
          v37 = &v36[v35];
          v156 = v36;
          v158 = &v36[v35];
          memcpy(v36, v34, v35);
          v157 = v37;
        }

        v153 = 0;
        v154 = 0;
        v155 = 0;
        v38 = *a4;
        v39 = *(a4 + 8) - *a4;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_112;
          }

          v40 = operator new(v39);
          v41 = &v40[v39];
          v153 = v40;
          v155 = &v40[v39];
          memcpy(v40, v38, v39);
          v154 = v41;
        }

        mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(a1, a2, &v156, &v153, a5, a6, v32);
        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        v22 = v156;
        if (v156)
        {
          v157 = v156;
          goto LABEL_110;
        }

        return;
      }

      v150 = 0;
      v151 = 0;
      v152 = 0;
      v88 = *a3;
      v87 = *(a3 + 8);
      v89 = v87 - *a3;
      if (v87 != *a3)
      {
        if ((v89 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v90 = operator new(v87 - *a3);
        v91 = &v90[v89];
        v150 = v90;
        v152 = &v90[v89];
        memcpy(v90, v88, v89);
        v151 = v91;
      }

      v147 = 0;
      v148 = 0;
      v149 = 0;
      v92 = *a4;
      v93 = *(a4 + 8) - *a4;
      if (v93)
      {
        if ((v93 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v94 = operator new(v93);
        v95 = &v94[v93];
        v147 = v94;
        v149 = &v94[v93];
        memcpy(v94, v92, v93);
        v148 = v95;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(a1, a2, &v150, &v147, a5, a6, 0);
      if (v147)
      {
        v148 = v147;
        operator delete(v147);
      }

      v22 = v150;
      if (v150)
      {
        v151 = v150;
        goto LABEL_110;
      }

      return;
    }

    if (v12 == 8)
    {
      v144 = 0;
      v145 = 0;
      v146 = 0;
      v52 = *a3;
      v51 = *(a3 + 8);
      v53 = v51 - *a3;
      if (v51 != *a3)
      {
        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v54 = operator new(v51 - *a3);
        v55 = &v54[v53];
        v144 = v54;
        v146 = &v54[v53];
        memcpy(v54, v52, v53);
        v145 = v55;
      }

      v141 = 0;
      v142 = 0;
      v143 = 0;
      v56 = *a4;
      v57 = *(a4 + 8) - *a4;
      if (v57)
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v58 = operator new(v57);
        v59 = &v58[v57];
        v141 = v58;
        v143 = &v58[v57];
        memcpy(v58, v56, v57);
        v142 = v59;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)8>(a1, a2, &v144, &v141, a5, a6, 0);
      if (v141)
      {
        v142 = v141;
        operator delete(v141);
      }

      v22 = v144;
      if (v144)
      {
        v145 = v144;
        goto LABEL_110;
      }

      return;
    }

    if (v12 != 9)
    {
      v132 = 0;
      v133 = 0;
      v134 = 0;
      v70 = *a3;
      v69 = *(a3 + 8);
      v71 = v69 - *a3;
      if (v69 != *a3)
      {
        if ((v71 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v72 = operator new(v69 - *a3);
        v73 = &v72[v71];
        v132 = v72;
        v134 = &v72[v71];
        memcpy(v72, v70, v71);
        v133 = v73;
      }

      v129 = 0;
      v130 = 0;
      v131 = 0;
      v74 = *a4;
      v75 = *(a4 + 8) - *a4;
      if (v75)
      {
        if ((v75 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v76 = operator new(v75);
        v77 = &v76[v75];
        v129 = v76;
        v131 = &v76[v75];
        memcpy(v76, v74, v75);
        v130 = v77;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)10>(a1, a2, &v132, &v129, a5, a6, 0.0);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      v22 = v132;
      if (v132)
      {
        v133 = v132;
        goto LABEL_110;
      }

      return;
    }

    v138 = 0;
    v139 = 0;
    v140 = 0;
    v14 = *a3;
    v13 = *(a3 + 8);
    v15 = v13 - *a3;
    if (v13 != *a3)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v16 = operator new(v13 - *a3);
      v17 = &v16[v15];
      v138 = v16;
      v140 = &v16[v15];
      memcpy(v16, v14, v15);
      v139 = v17;
    }

    __p = 0;
    v136 = 0;
    v137 = 0;
    v18 = *a4;
    v19 = *(a4 + 8) - *a4;
    if (!v19)
    {
      goto LABEL_11;
    }

    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = operator new(v19);
      v21 = &v20[v19];
      __p = v20;
      v137 = &v20[v19];
      memcpy(v20, v18, v19);
      v136 = v21;
LABEL_11:
      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)9>(a1, a2, &v138, &__p, a5, a6, 0);
      if (__p)
      {
        v136 = __p;
        operator delete(__p);
      }

      v22 = v138;
      if (v138)
      {
        v139 = v138;
LABEL_110:
        operator delete(v22);
        return;
      }

      return;
    }

LABEL_112:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (v12 <= 12)
  {
    if (v12 == 11)
    {
      v126 = 0;
      v127 = 0;
      v128 = 0;
      v43 = *a3;
      v42 = *(a3 + 8);
      v44 = v42 - *a3;
      if (v42 != *a3)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v45 = operator new(v42 - *a3);
        v46 = &v45[v44];
        v126 = v45;
        v128 = &v45[v44];
        memcpy(v45, v43, v44);
        v127 = v46;
      }

      v123 = 0;
      v124 = 0;
      v125 = 0;
      v47 = *a4;
      v48 = *(a4 + 8) - *a4;
      if (v48)
      {
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_112;
        }

        v49 = operator new(v48);
        v50 = &v49[v48];
        v123 = v49;
        v125 = &v49[v48];
        memcpy(v49, v47, v48);
        v124 = v50;
      }

      mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)11>(a1, a2, &v126, &v123, a5, a6, 0);
      if (v123)
      {
        v124 = v123;
        operator delete(v123);
      }

      v22 = v126;
      if (v126)
      {
        v127 = v126;
        goto LABEL_110;
      }

      return;
    }

    v120 = 0;
    v121 = 0;
    v122 = 0;
    v97 = *a3;
    v96 = *(a3 + 8);
    v98 = v96 - *a3;
    if (v96 != *a3)
    {
      if ((v98 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v99 = operator new(v96 - *a3);
      v100 = &v99[v98];
      v120 = v99;
      v122 = &v99[v98];
      memcpy(v99, v97, v98);
      v121 = v100;
    }

    v117 = 0;
    v118 = 0;
    v119 = 0;
    v101 = *a4;
    v102 = *(a4 + 8) - *a4;
    if (v102)
    {
      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v103 = operator new(v102);
      v104 = &v103[v102];
      v117 = v103;
      v119 = &v103[v102];
      memcpy(v103, v101, v102);
      v118 = v104;
    }

    mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)12>(a1, a2, &v120, &v117, a5, a6, 0.0);
    if (v117)
    {
      v118 = v117;
      operator delete(v117);
    }

    v22 = v120;
    if (v120)
    {
      v121 = v120;
      goto LABEL_110;
    }

    return;
  }

  if (v12 == 13)
  {
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v61 = *a3;
    v60 = *(a3 + 8);
    v62 = v60 - *a3;
    if (v60 != *a3)
    {
      if ((v62 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v63 = operator new(v60 - *a3);
      v64 = &v63[v62];
      v114 = v63;
      v116 = &v63[v62];
      memcpy(v63, v61, v62);
      v115 = v64;
    }

    v111 = 0;
    v112 = 0;
    v113 = 0;
    v65 = *a4;
    v66 = *(a4 + 8) - *a4;
    if (v66)
    {
      if ((v66 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v67 = operator new(v66);
      v68 = &v67[v66];
      v111 = v67;
      v113 = &v67[v66];
      memcpy(v67, v65, v66);
      v112 = v68;
    }

    mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)13>(a1, a2, &v114, &v111, a5, a6, 0);
    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    v22 = v114;
    if (v114)
    {
      v115 = v114;
      goto LABEL_110;
    }

    return;
  }

  if (v12 != 14)
  {
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v79 = *a3;
    v78 = *(a3 + 8);
    v80 = v78 - *a3;
    if (v78 != *a3)
    {
      if ((v80 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v81 = operator new(v78 - *a3);
      v82 = &v81[v80];
      v162 = v81;
      v164 = &v81[v80];
      memcpy(v81, v79, v80);
      v163 = v82;
    }

    v159 = 0;
    v160 = 0;
    v161 = 0;
    v83 = *a4;
    v84 = *(a4 + 8) - *a4;
    if (v84)
    {
      if ((v84 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v85 = operator new(v84);
      v86 = &v85[v84];
      v159 = v85;
      v161 = &v85[v84];
      memcpy(v85, v83, v84);
      v160 = v86;
    }

    mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(a1, a2, &v162, &v159, a5, a6, 0.0);
    if (v159)
    {
      v160 = v159;
      operator delete(v159);
    }

    v22 = v162;
    if (v162)
    {
      v163 = v162;
      goto LABEL_110;
    }

    return;
  }

  v108 = 0;
  v109 = 0;
  v110 = 0;
  v24 = *a3;
  v23 = *(a3 + 8);
  v25 = v23 - *a3;
  if (v23 != *a3)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    v26 = operator new(v23 - *a3);
    v27 = &v26[v25];
    v108 = v26;
    v110 = &v26[v25];
    memcpy(v26, v24, v25);
    v109 = v27;
  }

  v105 = 0;
  v106 = 0;
  v107 = 0;
  v28 = *a4;
  v29 = *(a4 + 8) - *a4;
  if (v29)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    v30 = operator new(v29);
    v31 = &v30[v29];
    v105 = v30;
    v107 = &v30[v29];
    memcpy(v30, v28, v29);
    v106 = v31;
  }

  mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)14>(a1, a2, &v108, &v105, a5, a6, 0.0);
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  v22 = v108;
  if (v108)
  {
    v109 = v108;
    goto LABEL_110;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207 = ElementType;
  v205 = ***a2;
  v13 = mlir::TensorType::getElementType(&v205);
  v205 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v204 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v81 = *a3;
      v82 = a3[1] - *a3;
      if (v82)
      {
        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v83 = operator new(v82);
        v84 = (v83 + v82);
        v200 = v83;
        v202 = v83 + v82;
        memcpy(v83, v81, v82);
        v201 = v84;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v85 = *a4;
      v86 = a4[1] - *a4;
      if (v86)
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v87 = operator new(v86);
        v88 = (v87 + v86);
        v197 = v87;
        v199 = v87 + v86;
        memcpy(v87, v85, v86);
        v198 = v88;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_167;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v18 = operator new(v17);
      v19 = (v18 + v17);
      v194 = v18;
      v196 = v18 + v17;
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_15;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_167:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v207))
    {
      if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v33 = *a3;
        v34 = a3[1] - *a3;
        if (v34)
        {
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v35 = operator new(v34);
          v36 = (v35 + v34);
          v170 = v35;
          v172 = v35 + v34;
          memcpy(v35, v33, v34);
          v171 = v36;
        }

        v167 = 0;
        v168 = 0;
        v169 = 0;
        v37 = *a4;
        v38 = a4[1] - *a4;
        if (v38)
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v39 = operator new(v38);
          v40 = &v39[v38];
          v167 = v39;
          v169 = &v39[v38];
          memcpy(v39, v37, v38);
          v168 = v40;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v170, &v167);
        if (v167)
        {
          v168 = v167;
          operator delete(v167);
        }

        v24 = v170;
        if (v170)
        {
          v171 = v170;
          goto LABEL_167;
        }

        return;
      }

      v177 = 0;
      v176 = 0;
      v178 = 0;
      v105 = *a3;
      v106 = a3[1] - *a3;
      if (v106)
      {
        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v107 = operator new(v106);
        v108 = (v107 + v106);
        v176 = v107;
        v178 = v107 + v106;
        memcpy(v107, v105, v106);
        v177 = v108;
      }

      v173 = 0;
      v174 = 0;
      v175 = 0;
      v109 = *a4;
      v110 = a4[1] - *a4;
      if (v110)
      {
        if ((v110 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v111 = operator new(v110);
        v112 = &v111[v110];
        v173 = v111;
        v175 = &v111[v110];
        memcpy(v111, v109, v110);
        v174 = v112;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v176, &v173, a7);
      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

      v24 = v176;
      if (v176)
      {
        v177 = v176;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v51 = operator new(v50);
          v52 = (v51 + v50);
          v152 = v51;
          v154 = v51 + v50;
          memcpy(v51, v49, v50);
          v153 = v52;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v149 = v55;
          v151 = &v55[v54];
          memcpy(v55, v53, v54);
          v150 = v56;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v207))
      {
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v57 = *a3;
        v58 = a3[1] - *a3;
        if (v58)
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v59 = operator new(v58);
          v60 = (v59 + v58);
          v146 = v59;
          v148 = v59 + v58;
          memcpy(v59, v57, v58);
          v147 = v60;
        }

        v143 = 0;
        v144 = 0;
        v145 = 0;
        v61 = *a4;
        v62 = a4[1] - *a4;
        if (v62)
        {
          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v63 = operator new(v62);
          v64 = &v63[v62];
          v143 = v63;
          v145 = &v63[v62];
          memcpy(v63, v61, v62);
          v144 = v64;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v146, &v143);
        if (v143)
        {
          v144 = v143;
          operator delete(v143);
        }

        v24 = v146;
        if (v146)
        {
          v147 = v146;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v67 = operator new(v66);
          v68 = (v67 + v66);
          v140 = v67;
          v142 = v67 + v66;
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)17>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v75 = operator new(v74);
          v76 = (v75 + v74);
          v134 = v75;
          v136 = v75 + v74;
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)17>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)17>(a1, a2, v124, v123, a7);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v205);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)17>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v99 = operator new(v98);
        v100 = (v99 + v98);
        v128 = v99;
        v130 = v99 + v98;
        memcpy(v99, v97, v98);
        v129 = v100;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v103 = operator new(v102);
        v104 = &v103[v102];
        v125 = v103;
        v127 = &v103[v102];
        memcpy(v103, v101, v102);
        v126 = v104;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)17>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_167;
      }

      return;
    }

    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v41 = *a3;
      v42 = a3[1] - *a3;
      if (v42)
      {
        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v43 = operator new(v42);
        v44 = (v43 + v42);
        v158 = v43;
        v160 = v43 + v42;
        memcpy(v43, v41, v42);
        v159 = v44;
      }

      v155 = 0;
      v156 = 0;
      v157 = 0;
      v45 = *a4;
      v46 = a4[1] - *a4;
      if (v46)
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v47 = operator new(v46);
        v48 = &v47[v46];
        v155 = v47;
        v157 = &v47[v46];
        memcpy(v47, v45, v46);
        v156 = v48;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)17>(a1, a2, &v158, &v155);
      if (v155)
      {
        v156 = v155;
        operator delete(v155);
      }

      v24 = v158;
      if (v158)
      {
        v159 = v158;
        goto LABEL_167;
      }

      return;
    }

    v164 = 0;
    v165 = 0;
    v166 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v115 = operator new(v114);
      v116 = (v115 + v114);
      v164 = v115;
      v166 = v115 + v114;
      memcpy(v115, v113, v114);
      v165 = v116;
    }

    v161 = 0;
    v162 = 0;
    v163 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v161 = v119;
      v163 = &v119[v118];
      memcpy(v119, v117, v118);
      v162 = v120;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v164, &v161);
    if (v161)
    {
      v162 = v161;
      operator delete(v161);
    }

    v24 = v164;
    if (v164)
    {
      v165 = v164;
      goto LABEL_167;
    }

    return;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v89 = *a3;
    v90 = a3[1] - *a3;
    if (v90)
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v91 = operator new(v90);
      v92 = (v91 + v90);
      v188 = v91;
      v190 = v91 + v90;
      memcpy(v91, v89, v90);
      v189 = v92;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v93 = *a4;
    v94 = a4[1] - *a4;
    if (v94)
    {
      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v95 = operator new(v94);
      v96 = &v95[v94];
      v185 = v95;
      v187 = &v95[v94];
      memcpy(v95, v93, v94);
      v186 = v96;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)17>(a1, a2, &v188, &v185, *&a7);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_167;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v27 = operator new(v26);
    v28 = (v27 + v26);
    v182 = v27;
    v184 = v27 + v26;
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)17>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)6>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207 = ElementType;
  v205 = ***a2;
  v13 = mlir::TensorType::getElementType(&v205);
  v205 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v204 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v81 = *a3;
      v82 = a3[1] - *a3;
      if (v82)
      {
        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v83 = operator new(v82);
        v84 = (v83 + v82);
        v200 = v83;
        v202 = v83 + v82;
        memcpy(v83, v81, v82);
        v201 = v84;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v85 = *a4;
      v86 = a4[1] - *a4;
      if (v86)
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v87 = operator new(v86);
        v88 = (v87 + v86);
        v197 = v87;
        v199 = v87 + v86;
        memcpy(v87, v85, v86);
        v198 = v88;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v200, &v197, a7);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_167;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v18 = operator new(v17);
      v19 = (v18 + v17);
      v194 = v18;
      v196 = v18 + v17;
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_15;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v194, &v191, a7);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_167:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v207))
    {
      if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v33 = *a3;
        v34 = a3[1] - *a3;
        if (v34)
        {
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v35 = operator new(v34);
          v36 = (v35 + v34);
          v170 = v35;
          v172 = v35 + v34;
          memcpy(v35, v33, v34);
          v171 = v36;
        }

        v167 = 0;
        v168 = 0;
        v169 = 0;
        v37 = *a4;
        v38 = a4[1] - *a4;
        if (v38)
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v39 = operator new(v38);
          v40 = &v39[v38];
          v167 = v39;
          v169 = &v39[v38];
          memcpy(v39, v37, v38);
          v168 = v40;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v170, &v167, a7);
        if (v167)
        {
          v168 = v167;
          operator delete(v167);
        }

        v24 = v170;
        if (v170)
        {
          v171 = v170;
          goto LABEL_167;
        }

        return;
      }

      v177 = 0;
      v176 = 0;
      v178 = 0;
      v105 = *a3;
      v106 = a3[1] - *a3;
      if (v106)
      {
        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v107 = operator new(v106);
        v108 = (v107 + v106);
        v176 = v107;
        v178 = v107 + v106;
        memcpy(v107, v105, v106);
        v177 = v108;
      }

      v173 = 0;
      v174 = 0;
      v175 = 0;
      v109 = *a4;
      v110 = a4[1] - *a4;
      if (v110)
      {
        if ((v110 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v111 = operator new(v110);
        v112 = &v111[v110];
        v173 = v111;
        v175 = &v111[v110];
        memcpy(v111, v109, v110);
        v174 = v112;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v176, &v173, a7);
      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

      v24 = v176;
      if (v176)
      {
        v177 = v176;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v51 = operator new(v50);
          v52 = (v51 + v50);
          v152 = v51;
          v154 = v51 + v50;
          memcpy(v51, v49, v50);
          v153 = v52;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v149 = v55;
          v151 = &v55[v54];
          memcpy(v55, v53, v54);
          v150 = v56;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v152, &v149, a7);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v207))
      {
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v57 = *a3;
        v58 = a3[1] - *a3;
        if (v58)
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v59 = operator new(v58);
          v60 = (v59 + v58);
          v146 = v59;
          v148 = v59 + v58;
          memcpy(v59, v57, v58);
          v147 = v60;
        }

        v143 = 0;
        v144 = 0;
        v145 = 0;
        v61 = *a4;
        v62 = a4[1] - *a4;
        if (v62)
        {
          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v63 = operator new(v62);
          v64 = &v63[v62];
          v143 = v63;
          v145 = &v63[v62];
          memcpy(v63, v61, v62);
          v144 = v64;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v146, &v143, a7);
        if (v143)
        {
          v144 = v143;
          operator delete(v143);
        }

        v24 = v146;
        if (v146)
        {
          v147 = v146;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v67 = operator new(v66);
          v68 = (v67 + v66);
          v140 = v67;
          v142 = v67 + v66;
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)6>(a1, a2, &v140, &v137, a7);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v75 = operator new(v74);
          v76 = (v75 + v74);
          v134 = v75;
          v136 = v75 + v74;
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)6>(a1, a2, &v134, &v131, a7);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)6>(a1, a2, v124, v123, a7);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v205);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)6>(a1, a2, v122, v121, a7);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v99 = operator new(v98);
        v100 = (v99 + v98);
        v128 = v99;
        v130 = v99 + v98;
        memcpy(v99, v97, v98);
        v129 = v100;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v103 = operator new(v102);
        v104 = &v103[v102];
        v125 = v103;
        v127 = &v103[v102];
        memcpy(v103, v101, v102);
        v126 = v104;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)6>(a1, a2, &v128, &v125, a7);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_167;
      }

      return;
    }

    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v41 = *a3;
      v42 = a3[1] - *a3;
      if (v42)
      {
        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v43 = operator new(v42);
        v44 = (v43 + v42);
        v158 = v43;
        v160 = v43 + v42;
        memcpy(v43, v41, v42);
        v159 = v44;
      }

      v155 = 0;
      v156 = 0;
      v157 = 0;
      v45 = *a4;
      v46 = a4[1] - *a4;
      if (v46)
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v47 = operator new(v46);
        v48 = &v47[v46];
        v155 = v47;
        v157 = &v47[v46];
        memcpy(v47, v45, v46);
        v156 = v48;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)6>(a1, a2, &v158, &v155, a7);
      if (v155)
      {
        v156 = v155;
        operator delete(v155);
      }

      v24 = v158;
      if (v158)
      {
        v159 = v158;
        goto LABEL_167;
      }

      return;
    }

    v164 = 0;
    v165 = 0;
    v166 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v115 = operator new(v114);
      v116 = (v115 + v114);
      v164 = v115;
      v166 = v115 + v114;
      memcpy(v115, v113, v114);
      v165 = v116;
    }

    v161 = 0;
    v162 = 0;
    v163 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v161 = v119;
      v163 = &v119[v118];
      memcpy(v119, v117, v118);
      v162 = v120;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v164, &v161, a7);
    if (v161)
    {
      v162 = v161;
      operator delete(v161);
    }

    v24 = v164;
    if (v164)
    {
      v165 = v164;
      goto LABEL_167;
    }

    return;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v89 = *a3;
    v90 = a3[1] - *a3;
    if (v90)
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v91 = operator new(v90);
      v92 = (v91 + v90);
      v188 = v91;
      v190 = v91 + v90;
      memcpy(v91, v89, v90);
      v189 = v92;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v93 = *a4;
    v94 = a4[1] - *a4;
    if (v94)
    {
      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v95 = operator new(v94);
      v96 = &v95[v94];
      v185 = v95;
      v187 = &v95[v94];
      memcpy(v95, v93, v94);
      v186 = v96;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)6>(a1, a2, &v188, &v185, a7);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_167;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v27 = operator new(v26);
    v28 = (v27 + v26);
    v182 = v27;
    v184 = v27 + v26;
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)6>(a1, a2, &v182, &__p, a7);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)7>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v207 = ElementType;
  v205 = ***a2;
  v13 = mlir::TensorType::getElementType(&v205);
  v205 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v204 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v203 = v15;
    Value = mlir::AffineMapAttr::getValue(&v204);
    v207 = mlir::AffineMapAttr::getValue(&v203);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v207))
  {
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v81 = *a3;
      v82 = a3[1] - *a3;
      if (v82)
      {
        if ((v82 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v83 = operator new(v82);
        v84 = (v83 + v82);
        v200 = v83;
        v202 = v83 + v82;
        memcpy(v83, v81, v82);
        v201 = v84;
      }

      v197 = 0;
      v198 = 0;
      v199 = 0;
      v85 = *a4;
      v86 = a4[1] - *a4;
      if (v86)
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v87 = operator new(v86);
        v88 = (v87 + v86);
        v197 = v87;
        v199 = v87 + v86;
        memcpy(v87, v85, v86);
        v198 = v88;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v200, &v197);
      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      v24 = v200;
      if (v200)
      {
        v201 = v200;
        goto LABEL_167;
      }

      return;
    }

    v194 = 0;
    v195 = 0;
    v196 = 0;
    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v18 = operator new(v17);
      v19 = (v18 + v17);
      v194 = v18;
      v196 = v18 + v17;
      memcpy(v18, v16, v17);
      v195 = v19;
    }

    v191 = 0;
    v192 = 0;
    v193 = 0;
    v20 = *a4;
    v21 = a4[1] - *a4;
    if (!v21)
    {
      goto LABEL_15;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = operator new(v21);
      v23 = (v22 + v21);
      v191 = v22;
      v193 = v22 + v21;
      memcpy(v22, v20, v21);
      v192 = v23;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v194, &v191);
      if (v191)
      {
        v192 = v191;
        operator delete(v191);
      }

      v24 = v194;
      if (v194)
      {
        v195 = v194;
LABEL_167:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v207))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v207))
    {
      if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v33 = *a3;
        v34 = a3[1] - *a3;
        if (v34)
        {
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v35 = operator new(v34);
          v36 = (v35 + v34);
          v170 = v35;
          v172 = v35 + v34;
          memcpy(v35, v33, v34);
          v171 = v36;
        }

        v167 = 0;
        v168 = 0;
        v169 = 0;
        v37 = *a4;
        v38 = a4[1] - *a4;
        if (v38)
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v39 = operator new(v38);
          v40 = &v39[v38];
          v167 = v39;
          v169 = &v39[v38];
          memcpy(v39, v37, v38);
          v168 = v40;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v170, &v167);
        if (v167)
        {
          v168 = v167;
          operator delete(v167);
        }

        v24 = v170;
        if (v170)
        {
          v171 = v170;
          goto LABEL_167;
        }

        return;
      }

      v177 = 0;
      v176 = 0;
      v178 = 0;
      v105 = *a3;
      v106 = a3[1] - *a3;
      if (v106)
      {
        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v107 = operator new(v106);
        v108 = (v107 + v106);
        v176 = v107;
        v178 = v107 + v106;
        memcpy(v107, v105, v106);
        v177 = v108;
      }

      v173 = 0;
      v174 = 0;
      v175 = 0;
      v109 = *a4;
      v110 = a4[1] - *a4;
      if (v110)
      {
        if ((v110 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v111 = operator new(v110);
        v112 = &v111[v110];
        v173 = v111;
        v175 = &v111[v110];
        memcpy(v111, v109, v110);
        v174 = v112;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v176, &v173);
      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

      v24 = v176;
      if (v176)
      {
        v177 = v176;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v207))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v207))
      {
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v49 = *a3;
        v50 = a3[1] - *a3;
        if (v50)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v51 = operator new(v50);
          v52 = (v51 + v50);
          v152 = v51;
          v154 = v51 + v50;
          memcpy(v51, v49, v50);
          v153 = v52;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        v53 = *a4;
        v54 = a4[1] - *a4;
        if (v54)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v55 = operator new(v54);
          v56 = &v55[v54];
          v149 = v55;
          v151 = &v55[v54];
          memcpy(v55, v53, v54);
          v150 = v56;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v152, &v149);
        if (v149)
        {
          v150 = v149;
          operator delete(v149);
        }

        v24 = v152;
        if (v152)
        {
          v153 = v152;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v207))
      {
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v57 = *a3;
        v58 = a3[1] - *a3;
        if (v58)
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v59 = operator new(v58);
          v60 = (v59 + v58);
          v146 = v59;
          v148 = v59 + v58;
          memcpy(v59, v57, v58);
          v147 = v60;
        }

        v143 = 0;
        v144 = 0;
        v145 = 0;
        v61 = *a4;
        v62 = a4[1] - *a4;
        if (v62)
        {
          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v63 = operator new(v62);
          v64 = &v63[v62];
          v143 = v63;
          v145 = &v63[v62];
          memcpy(v63, v61, v62);
          v144 = v64;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v146, &v143);
        if (v143)
        {
          v144 = v143;
          operator delete(v143);
        }

        v24 = v146;
        if (v146)
        {
          v147 = v146;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v207))
      {
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v65 = *a3;
        v66 = a3[1] - *a3;
        if (v66)
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v67 = operator new(v66);
          v68 = (v67 + v66);
          v140 = v67;
          v142 = v67 + v66;
          memcpy(v67, v65, v66);
          v141 = v68;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v69 = *a4;
        v70 = a4[1] - *a4;
        if (v70)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v71 = operator new(v70);
          v72 = &v71[v70];
          v137 = v71;
          v139 = &v71[v70];
          memcpy(v71, v69, v70);
          v138 = v72;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)7>(a1, a2, &v140, &v137);
        if (v137)
        {
          v138 = v137;
          operator delete(v137);
        }

        v24 = v140;
        if (v140)
        {
          v141 = v140;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v73 = *a3;
        v74 = a3[1] - *a3;
        if (v74)
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v75 = operator new(v74);
          v76 = (v75 + v74);
          v134 = v75;
          v136 = v75 + v74;
          memcpy(v75, v73, v74);
          v135 = v76;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        v77 = *a4;
        v78 = a4[1] - *a4;
        if (v78)
        {
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v79 = operator new(v78);
          v80 = &v79[v78];
          v131 = v79;
          v133 = &v79[v78];
          memcpy(v79, v77, v78);
          v132 = v80;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)7>(a1, a2, &v134, &v131);
        if (v131)
        {
          v132 = v131;
          operator delete(v131);
        }

        v24 = v134;
        if (v134)
        {
          v135 = v134;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v124, a3);
          std::vector<long long>::vector[abi:nn200100](v123, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v124, v123);
          if (v123[0])
          {
            v123[1] = v123[0];
            operator delete(v123[0]);
          }

          v24 = v124[0];
          if (v124[0])
          {
            v124[1] = v124[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v205);
          }

          std::vector<long long>::vector[abi:nn200100](v122, a3);
          std::vector<long long>::vector[abi:nn200100](v121, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v122, v121);
          if (v121[0])
          {
            v121[1] = v121[0];
            operator delete(v121[0]);
          }

          v24 = v122[0];
          if (v122[0])
          {
            v122[1] = v122[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v128 = 0;
      v129 = 0;
      v130 = 0;
      v97 = *a3;
      v98 = a3[1] - *a3;
      if (v98)
      {
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v99 = operator new(v98);
        v100 = (v99 + v98);
        v128 = v99;
        v130 = v99 + v98;
        memcpy(v99, v97, v98);
        v129 = v100;
      }

      v125 = 0;
      v126 = 0;
      v127 = 0;
      v101 = *a4;
      v102 = a4[1] - *a4;
      if (v102)
      {
        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v103 = operator new(v102);
        v104 = &v103[v102];
        v125 = v103;
        v127 = &v103[v102];
        memcpy(v103, v101, v102);
        v126 = v104;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v128, &v125);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      v24 = v128;
      if (v128)
      {
        v129 = v128;
        goto LABEL_167;
      }

      return;
    }

    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v41 = *a3;
      v42 = a3[1] - *a3;
      if (v42)
      {
        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v43 = operator new(v42);
        v44 = (v43 + v42);
        v158 = v43;
        v160 = v43 + v42;
        memcpy(v43, v41, v42);
        v159 = v44;
      }

      v155 = 0;
      v156 = 0;
      v157 = 0;
      v45 = *a4;
      v46 = a4[1] - *a4;
      if (v46)
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v47 = operator new(v46);
        v48 = &v47[v46];
        v155 = v47;
        v157 = &v47[v46];
        memcpy(v47, v45, v46);
        v156 = v48;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)7>(a1, a2, &v158, &v155);
      if (v155)
      {
        v156 = v155;
        operator delete(v155);
      }

      v24 = v158;
      if (v158)
      {
        v159 = v158;
        goto LABEL_167;
      }

      return;
    }

    v164 = 0;
    v165 = 0;
    v166 = 0;
    v113 = *a3;
    v114 = a3[1] - *a3;
    if (v114)
    {
      if ((v114 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v115 = operator new(v114);
      v116 = (v115 + v114);
      v164 = v115;
      v166 = v115 + v114;
      memcpy(v115, v113, v114);
      v165 = v116;
    }

    v161 = 0;
    v162 = 0;
    v163 = 0;
    v117 = *a4;
    v118 = a4[1] - *a4;
    if (v118)
    {
      if ((v118 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v119 = operator new(v118);
      v120 = &v119[v118];
      v161 = v119;
      v163 = &v119[v118];
      memcpy(v119, v117, v118);
      v162 = v120;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v164, &v161);
    if (v161)
    {
      v162 = v161;
      operator delete(v161);
    }

    v24 = v164;
    if (v164)
    {
      v165 = v164;
      goto LABEL_167;
    }

    return;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v89 = *a3;
    v90 = a3[1] - *a3;
    if (v90)
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v91 = operator new(v90);
      v92 = (v91 + v90);
      v188 = v91;
      v190 = v91 + v90;
      memcpy(v91, v89, v90);
      v189 = v92;
    }

    v186 = 0;
    v185 = 0;
    v187 = 0;
    v93 = *a4;
    v94 = a4[1] - *a4;
    if (v94)
    {
      if ((v94 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v95 = operator new(v94);
      v96 = &v95[v94];
      v185 = v95;
      v187 = &v95[v94];
      memcpy(v95, v93, v94);
      v186 = v96;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)7>(a1, a2, &v188, &v185, a7);
    if (v185)
    {
      v186 = v185;
      operator delete(v185);
    }

    v24 = v188;
    if (v188)
    {
      v189 = v188;
      goto LABEL_167;
    }

    return;
  }

  v183 = 0;
  v182 = 0;
  v184 = 0;
  v25 = *a3;
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v27 = operator new(v26);
    v28 = (v27 + v26);
    v182 = v27;
    v184 = v27 + v26;
    memcpy(v27, v25, v26);
    v183 = v28;
  }

  v180 = 0;
  __p = 0;
  v181 = 0;
  v29 = *a4;
  v30 = a4[1] - *a4;
  if (v30)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v31 = operator new(v30);
    v32 = &v31[v30];
    __p = v31;
    v181 = &v31[v30];
    memcpy(v31, v29, v30);
    v180 = v32;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)7>(a1, a2, &v182, &__p);
  if (__p)
  {
    v180 = __p;
    operator delete(__p);
  }

  v24 = v182;
  if (v182)
  {
    v183 = v182;
    goto LABEL_167;
  }
}