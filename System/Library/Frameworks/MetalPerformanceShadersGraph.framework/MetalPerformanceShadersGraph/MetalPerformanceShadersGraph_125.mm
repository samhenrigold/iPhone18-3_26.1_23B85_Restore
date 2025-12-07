void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)8>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v200, &v197);
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
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v194, &v191);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)8>(a1, a2, &v170, &v167);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v176, &v173);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v152, &v149);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)8>(a1, a2, &v146, &v143);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)8>(a1, a2, &v140, &v137);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)8>(a1, a2, &v158, &v155);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v164, &v161);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)8>(a1, a2, &v188, &v185, a7);
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

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)8>(a1, a2, &v182, &__p);
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

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)9>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v200, &v197);
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
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v194, &v191);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)9>(a1, a2, &v170, &v167);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v176, &v173);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v152, &v149);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)9>(a1, a2, &v146, &v143);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)9>(a1, a2, &v140, &v137);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)9>(a1, a2, &v134, &v131);
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
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)9>(a1, a2, v124, v123);
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
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)9>(a1, a2, v122, v121);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)9>(a1, a2, &v128, &v125);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)9>(a1, a2, &v158, &v155);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v164, &v161);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)9>(a1, a2, &v188, &v185, a7);
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

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)9>(a1, a2, &v182, &__p);
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

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)10>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v206 = ElementType;
  v204 = ***a2;
  v12 = mlir::TensorType::getElementType(&v204);
  v204 = v12;
  Value = v12;
  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v203 = v12;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = ElementType;
    }

    else
    {
      v14 = 0;
    }

    v202 = v14;
    Value = mlir::AffineMapAttr::getValue(&v203);
    v206 = mlir::AffineMapAttr::getValue(&v202);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v206))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v199 = 0;
      v200 = 0;
      v201 = 0;
      v80 = *a3;
      v81 = a3[1] - *a3;
      if (v81)
      {
        if ((v81 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v82 = operator new(v81);
        v83 = (v82 + v81);
        v199 = v82;
        v201 = v82 + v81;
        memcpy(v82, v80, v81);
        v200 = v83;
      }

      v196 = 0;
      v197 = 0;
      v198 = 0;
      v84 = *a4;
      v85 = a4[1] - *a4;
      if (v85)
      {
        if ((v85 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v86 = operator new(v85);
        v87 = (v86 + v85);
        v196 = v86;
        v198 = v86 + v85;
        memcpy(v86, v84, v85);
        v197 = v87;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v199, &v196);
      if (v196)
      {
        v197 = v196;
        operator delete(v196);
      }

      v23 = v199;
      if (v199)
      {
        v200 = v199;
        goto LABEL_167;
      }

      return;
    }

    v193 = 0;
    v194 = 0;
    v195 = 0;
    v15 = *a3;
    v16 = a3[1] - *a3;
    if (v16)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v17 = operator new(v16);
      v18 = (v17 + v16);
      v193 = v17;
      v195 = v17 + v16;
      memcpy(v17, v15, v16);
      v194 = v18;
    }

    v190 = 0;
    v191 = 0;
    v192 = 0;
    v19 = *a4;
    v20 = a4[1] - *a4;
    if (!v20)
    {
      goto LABEL_15;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = operator new(v20);
      v22 = (v21 + v20);
      v190 = v21;
      v192 = v21 + v20;
      memcpy(v21, v19, v20);
      v191 = v22;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v193, &v190);
      if (v190)
      {
        v191 = v190;
        operator delete(v190);
      }

      v23 = v193;
      if (v193)
      {
        v194 = v193;
LABEL_167:
        operator delete(v23);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v206))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v206))
    {
      if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v32 = *a3;
        v33 = a3[1] - *a3;
        if (v33)
        {
          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v34 = operator new(v33);
          v35 = v34 + v33;
          v169 = v34;
          v171 = v34 + v33;
          memcpy(v34, v32, v33);
          v170 = v35;
        }

        v166 = 0;
        v167 = 0;
        v168 = 0;
        v36 = *a4;
        v37 = a4[1] - *a4;
        if (v37)
        {
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v38 = operator new(v37);
          v39 = &v38[v37];
          v166 = v38;
          v168 = &v38[v37];
          memcpy(v38, v36, v37);
          v167 = v39;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)10>(a1, a2, &v169, &v166);
        if (v166)
        {
          v167 = v166;
          operator delete(v166);
        }

        v23 = v169;
        if (v169)
        {
          v170 = v169;
          goto LABEL_167;
        }

        return;
      }

      v176 = 0;
      v175 = 0;
      v177 = 0;
      v104 = *a3;
      v105 = a3[1] - *a3;
      if (v105)
      {
        if ((v105 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v106 = operator new(v105);
        v107 = (v106 + v105);
        v175 = v106;
        v177 = v106 + v105;
        memcpy(v106, v104, v105);
        v176 = v107;
      }

      v172 = 0;
      v173 = 0;
      v174 = 0;
      v108 = *a4;
      v109 = a4[1] - *a4;
      if (v109)
      {
        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v110 = operator new(v109);
        v111 = &v110[v109];
        v172 = v110;
        v174 = &v110[v109];
        memcpy(v110, v108, v109);
        v173 = v111;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v175, &v172);
      if (v172)
      {
        v173 = v172;
        operator delete(v172);
      }

      v23 = v175;
      if (v175)
      {
        v176 = v175;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v206))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v206))
      {
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v48 = *a3;
        v49 = a3[1] - *a3;
        if (v49)
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v50 = operator new(v49);
          v51 = (v50 + v49);
          v151 = v50;
          v153 = v50 + v49;
          memcpy(v50, v48, v49);
          v152 = v51;
        }

        v148 = 0;
        v149 = 0;
        v150 = 0;
        v52 = *a4;
        v53 = a4[1] - *a4;
        if (v53)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v54 = operator new(v53);
          v55 = &v54[v53];
          v148 = v54;
          v150 = &v54[v53];
          memcpy(v54, v52, v53);
          v149 = v55;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v151, &v148);
        if (v148)
        {
          v149 = v148;
          operator delete(v148);
        }

        v23 = v151;
        if (v151)
        {
          v152 = v151;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v206))
      {
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v56 = *a3;
        v57 = a3[1] - *a3;
        if (v57)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v58 = operator new(v57);
          v59 = (v58 + v57);
          v145 = v58;
          v147 = v58 + v57;
          memcpy(v58, v56, v57);
          v146 = v59;
        }

        v142 = 0;
        v143 = 0;
        v144 = 0;
        v60 = *a4;
        v61 = a4[1] - *a4;
        if (v61)
        {
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v62 = operator new(v61);
          v63 = &v62[v61];
          v142 = v62;
          v144 = &v62[v61];
          memcpy(v62, v60, v61);
          v143 = v63;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)10>(a1, a2, &v145, &v142);
        if (v142)
        {
          v143 = v142;
          operator delete(v142);
        }

        v23 = v145;
        if (v145)
        {
          v146 = v145;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v206))
      {
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v64 = *a3;
        v65 = a3[1] - *a3;
        if (v65)
        {
          if ((v65 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v66 = operator new(v65);
          v67 = (v66 + v65);
          v139 = v66;
          v141 = v66 + v65;
          memcpy(v66, v64, v65);
          v140 = v67;
        }

        v136 = 0;
        v137 = 0;
        v138 = 0;
        v68 = *a4;
        v69 = a4[1] - *a4;
        if (v69)
        {
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v70 = operator new(v69);
          v71 = &v70[v69];
          v136 = v70;
          v138 = &v70[v69];
          memcpy(v70, v68, v69);
          v137 = v71;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)10>(a1, a2, &v139, &v136);
        if (v136)
        {
          v137 = v136;
          operator delete(v136);
        }

        v23 = v139;
        if (v139)
        {
          v140 = v139;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v72 = *a3;
        v73 = a3[1] - *a3;
        if (v73)
        {
          if ((v73 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v74 = operator new(v73);
          v75 = (v74 + v73);
          v133 = v74;
          v135 = v74 + v73;
          memcpy(v74, v72, v73);
          v134 = v75;
        }

        v130 = 0;
        v131 = 0;
        v132 = 0;
        v76 = *a4;
        v77 = a4[1] - *a4;
        if (v77)
        {
          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v78 = operator new(v77);
          v79 = &v78[v77];
          v130 = v78;
          v132 = &v78[v77];
          memcpy(v78, v76, v77);
          v131 = v79;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)10>(a1, a2, &v133, &v130);
        if (v130)
        {
          v131 = v130;
          operator delete(v130);
        }

        v23 = v133;
        if (v133)
        {
          v134 = v133;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v123, a3);
          std::vector<long long>::vector[abi:nn200100](v122, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)10>(a1, a2, v123, v122);
          if (v122[0])
          {
            v122[1] = v122[0];
            operator delete(v122[0]);
          }

          v23 = v123[0];
          if (v123[0])
          {
            v123[1] = v123[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v204);
          }

          std::vector<long long>::vector[abi:nn200100](v121, a3);
          std::vector<long long>::vector[abi:nn200100](v120, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)10>(a1, a2, v121, v120);
          if (v120[0])
          {
            v120[1] = v120[0];
            operator delete(v120[0]);
          }

          v23 = v121[0];
          if (v121[0])
          {
            v121[1] = v121[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v127 = 0;
      v128 = 0;
      v129 = 0;
      v96 = *a3;
      v97 = a3[1] - *a3;
      if (v97)
      {
        if ((v97 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v98 = operator new(v97);
        v99 = (v98 + v97);
        v127 = v98;
        v129 = v98 + v97;
        memcpy(v98, v96, v97);
        v128 = v99;
      }

      v124 = 0;
      v125 = 0;
      v126 = 0;
      v100 = *a4;
      v101 = a4[1] - *a4;
      if (v101)
      {
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v102 = operator new(v101);
        v103 = &v102[v101];
        v124 = v102;
        v126 = &v102[v101];
        memcpy(v102, v100, v101);
        v125 = v103;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)10>(a1, a2, &v127, &v124);
      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      v23 = v127;
      if (v127)
      {
        v128 = v127;
        goto LABEL_167;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v40 = *a3;
      v41 = a3[1] - *a3;
      if (v41)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v42 = operator new(v41);
        v43 = (v42 + v41);
        v157 = v42;
        v159 = v42 + v41;
        memcpy(v42, v40, v41);
        v158 = v43;
      }

      v154 = 0;
      v155 = 0;
      v156 = 0;
      v44 = *a4;
      v45 = a4[1] - *a4;
      if (v45)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v46 = operator new(v45);
        v47 = &v46[v45];
        v154 = v46;
        v156 = &v46[v45];
        memcpy(v46, v44, v45);
        v155 = v47;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)10>(a1, a2, &v157, &v154);
      if (v154)
      {
        v155 = v154;
        operator delete(v154);
      }

      v23 = v157;
      if (v157)
      {
        v158 = v157;
        goto LABEL_167;
      }

      return;
    }

    v163 = 0;
    v164 = 0;
    v165 = 0;
    v112 = *a3;
    v113 = a3[1] - *a3;
    if (v113)
    {
      if ((v113 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v114 = operator new(v113);
      v115 = (v114 + v113);
      v163 = v114;
      v165 = v114 + v113;
      memcpy(v114, v112, v113);
      v164 = v115;
    }

    v160 = 0;
    v161 = 0;
    v162 = 0;
    v116 = *a4;
    v117 = a4[1] - *a4;
    if (v117)
    {
      if ((v117 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v118 = operator new(v117);
      v119 = &v118[v117];
      v160 = v118;
      v162 = &v118[v117];
      memcpy(v118, v116, v117);
      v161 = v119;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v163, &v160);
    if (v160)
    {
      v161 = v160;
      operator delete(v160);
    }

    v23 = v163;
    if (v163)
    {
      v164 = v163;
      goto LABEL_167;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v88 = *a3;
    v89 = a3[1] - *a3;
    if (v89)
    {
      if ((v89 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v90 = operator new(v89);
      v91 = (v90 + v89);
      v187 = v90;
      v189 = v90 + v89;
      memcpy(v90, v88, v89);
      v188 = v91;
    }

    v185 = 0;
    v184 = 0;
    v186 = 0;
    v92 = *a4;
    v93 = a4[1] - *a4;
    if (v93)
    {
      if ((v93 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v94 = operator new(v93);
      v95 = &v94[v93];
      v184 = v94;
      v186 = &v94[v93];
      memcpy(v94, v92, v93);
      v185 = v95;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)10>(a1, a2, &v187, &v184);
    if (v184)
    {
      v185 = v184;
      operator delete(v184);
    }

    v23 = v187;
    if (v187)
    {
      v188 = v187;
      goto LABEL_167;
    }

    return;
  }

  v182 = 0;
  v181 = 0;
  v183 = 0;
  v24 = *a3;
  v25 = a3[1] - *a3;
  if (v25)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v26 = operator new(v25);
    v27 = v26 + v25;
    v181 = v26;
    v183 = v26 + v25;
    memcpy(v26, v24, v25);
    v182 = v27;
  }

  v179 = 0;
  __p = 0;
  v180 = 0;
  v28 = *a4;
  v29 = a4[1] - *a4;
  if (v29)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v30 = operator new(v29);
    v31 = &v30[v29];
    __p = v30;
    v180 = &v30[v29];
    memcpy(v30, v28, v29);
    v179 = v31;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)10>(a1, a2, &v181, &__p);
  if (__p)
  {
    v179 = __p;
    operator delete(__p);
  }

  v23 = v181;
  if (v181)
  {
    v182 = v181;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)11>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v200, &v197);
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
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v194, &v191);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)11>(a1, a2, &v170, &v167);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v176, &v173);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v152, &v149);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)11>(a1, a2, &v146, &v143);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)11>(a1, a2, &v140, &v137);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)11>(a1, a2, &v158, &v155);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v164, &v161);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)11>(a1, a2, &v188, &v185, a7);
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

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)11>(a1, a2, &v182, &__p);
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

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)12>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v206 = ElementType;
  v204 = ***a2;
  v12 = mlir::TensorType::getElementType(&v204);
  v204 = v12;
  Value = v12;
  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v203 = v12;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = ElementType;
    }

    else
    {
      v14 = 0;
    }

    v202 = v14;
    Value = mlir::AffineMapAttr::getValue(&v203);
    v206 = mlir::AffineMapAttr::getValue(&v202);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v206))
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v199 = 0;
      v200 = 0;
      v201 = 0;
      v80 = *a3;
      v81 = a3[1] - *a3;
      if (v81)
      {
        if ((v81 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v82 = operator new(v81);
        v83 = (v82 + v81);
        v199 = v82;
        v201 = v82 + v81;
        memcpy(v82, v80, v81);
        v200 = v83;
      }

      v196 = 0;
      v197 = 0;
      v198 = 0;
      v84 = *a4;
      v85 = a4[1] - *a4;
      if (v85)
      {
        if ((v85 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v86 = operator new(v85);
        v87 = (v86 + v85);
        v196 = v86;
        v198 = v86 + v85;
        memcpy(v86, v84, v85);
        v197 = v87;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v199, &v196);
      if (v196)
      {
        v197 = v196;
        operator delete(v196);
      }

      v23 = v199;
      if (v199)
      {
        v200 = v199;
        goto LABEL_167;
      }

      return;
    }

    v193 = 0;
    v194 = 0;
    v195 = 0;
    v15 = *a3;
    v16 = a3[1] - *a3;
    if (v16)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v17 = operator new(v16);
      v18 = (v17 + v16);
      v193 = v17;
      v195 = v17 + v16;
      memcpy(v17, v15, v16);
      v194 = v18;
    }

    v190 = 0;
    v191 = 0;
    v192 = 0;
    v19 = *a4;
    v20 = a4[1] - *a4;
    if (!v20)
    {
      goto LABEL_15;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 = operator new(v20);
      v22 = (v21 + v20);
      v190 = v21;
      v192 = v21 + v20;
      memcpy(v21, v19, v20);
      v191 = v22;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v193, &v190);
      if (v190)
      {
        v191 = v190;
        operator delete(v190);
      }

      v23 = v193;
      if (v193)
      {
        v194 = v193;
LABEL_167:
        operator delete(v23);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v206))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v206))
    {
      if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v32 = *a3;
        v33 = a3[1] - *a3;
        if (v33)
        {
          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v34 = operator new(v33);
          v35 = (v34 + v33);
          v169 = v34;
          v171 = v34 + v33;
          memcpy(v34, v32, v33);
          v170 = v35;
        }

        v166 = 0;
        v167 = 0;
        v168 = 0;
        v36 = *a4;
        v37 = a4[1] - *a4;
        if (v37)
        {
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v38 = operator new(v37);
          v39 = &v38[v37];
          v166 = v38;
          v168 = &v38[v37];
          memcpy(v38, v36, v37);
          v167 = v39;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)12>(a1, a2, &v169, &v166);
        if (v166)
        {
          v167 = v166;
          operator delete(v166);
        }

        v23 = v169;
        if (v169)
        {
          v170 = v169;
          goto LABEL_167;
        }

        return;
      }

      v176 = 0;
      v175 = 0;
      v177 = 0;
      v104 = *a3;
      v105 = a3[1] - *a3;
      if (v105)
      {
        if ((v105 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v106 = operator new(v105);
        v107 = (v106 + v105);
        v175 = v106;
        v177 = v106 + v105;
        memcpy(v106, v104, v105);
        v176 = v107;
      }

      v172 = 0;
      v173 = 0;
      v174 = 0;
      v108 = *a4;
      v109 = a4[1] - *a4;
      if (v109)
      {
        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v110 = operator new(v109);
        v111 = &v110[v109];
        v172 = v110;
        v174 = &v110[v109];
        memcpy(v110, v108, v109);
        v173 = v111;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v175, &v172);
      if (v172)
      {
        v173 = v172;
        operator delete(v172);
      }

      v23 = v175;
      if (v175)
      {
        v176 = v175;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v206))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v206))
      {
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v48 = *a3;
        v49 = a3[1] - *a3;
        if (v49)
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v50 = operator new(v49);
          v51 = (v50 + v49);
          v151 = v50;
          v153 = v50 + v49;
          memcpy(v50, v48, v49);
          v152 = v51;
        }

        v148 = 0;
        v149 = 0;
        v150 = 0;
        v52 = *a4;
        v53 = a4[1] - *a4;
        if (v53)
        {
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v54 = operator new(v53);
          v55 = &v54[v53];
          v148 = v54;
          v150 = &v54[v53];
          memcpy(v54, v52, v53);
          v149 = v55;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v151, &v148);
        if (v148)
        {
          v149 = v148;
          operator delete(v148);
        }

        v23 = v151;
        if (v151)
        {
          v152 = v151;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v206))
      {
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v56 = *a3;
        v57 = a3[1] - *a3;
        if (v57)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v58 = operator new(v57);
          v59 = (v58 + v57);
          v145 = v58;
          v147 = v58 + v57;
          memcpy(v58, v56, v57);
          v146 = v59;
        }

        v142 = 0;
        v143 = 0;
        v144 = 0;
        v60 = *a4;
        v61 = a4[1] - *a4;
        if (v61)
        {
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v62 = operator new(v61);
          v63 = &v62[v61];
          v142 = v62;
          v144 = &v62[v61];
          memcpy(v62, v60, v61);
          v143 = v63;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)12>(a1, a2, &v145, &v142);
        if (v142)
        {
          v143 = v142;
          operator delete(v142);
        }

        v23 = v145;
        if (v145)
        {
          v146 = v145;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v206))
      {
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v64 = *a3;
        v65 = a3[1] - *a3;
        if (v65)
        {
          if ((v65 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v66 = operator new(v65);
          v67 = (v66 + v65);
          v139 = v66;
          v141 = v66 + v65;
          memcpy(v66, v64, v65);
          v140 = v67;
        }

        v136 = 0;
        v137 = 0;
        v138 = 0;
        v68 = *a4;
        v69 = a4[1] - *a4;
        if (v69)
        {
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v70 = operator new(v69);
          v71 = &v70[v69];
          v136 = v70;
          v138 = &v70[v69];
          memcpy(v70, v68, v69);
          v137 = v71;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)12>(a1, a2, &v139, &v136);
        if (v136)
        {
          v137 = v136;
          operator delete(v136);
        }

        v23 = v139;
        if (v139)
        {
          v140 = v139;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v133 = 0;
        v134 = 0;
        v135 = 0;
        v72 = *a3;
        v73 = a3[1] - *a3;
        if (v73)
        {
          if ((v73 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v74 = operator new(v73);
          v75 = (v74 + v73);
          v133 = v74;
          v135 = v74 + v73;
          memcpy(v74, v72, v73);
          v134 = v75;
        }

        v130 = 0;
        v131 = 0;
        v132 = 0;
        v76 = *a4;
        v77 = a4[1] - *a4;
        if (v77)
        {
          if ((v77 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v78 = operator new(v77);
          v79 = &v78[v77];
          v130 = v78;
          v132 = &v78[v77];
          memcpy(v78, v76, v77);
          v131 = v79;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)12>(a1, a2, &v133, &v130);
        if (v130)
        {
          v131 = v130;
          operator delete(v130);
        }

        v23 = v133;
        if (v133)
        {
          v134 = v133;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v123, a3);
          std::vector<long long>::vector[abi:nn200100](v122, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)12>(a1, a2, v123, v122);
          if (v122[0])
          {
            v122[1] = v122[0];
            operator delete(v122[0]);
          }

          v23 = v123[0];
          if (v123[0])
          {
            v123[1] = v123[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v204);
          }

          std::vector<long long>::vector[abi:nn200100](v121, a3);
          std::vector<long long>::vector[abi:nn200100](v120, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)12>(a1, a2, v121, v120);
          if (v120[0])
          {
            v120[1] = v120[0];
            operator delete(v120[0]);
          }

          v23 = v121[0];
          if (v121[0])
          {
            v121[1] = v121[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v127 = 0;
      v128 = 0;
      v129 = 0;
      v96 = *a3;
      v97 = a3[1] - *a3;
      if (v97)
      {
        if ((v97 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v98 = operator new(v97);
        v99 = (v98 + v97);
        v127 = v98;
        v129 = v98 + v97;
        memcpy(v98, v96, v97);
        v128 = v99;
      }

      v124 = 0;
      v125 = 0;
      v126 = 0;
      v100 = *a4;
      v101 = a4[1] - *a4;
      if (v101)
      {
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v102 = operator new(v101);
        v103 = &v102[v101];
        v124 = v102;
        v126 = &v102[v101];
        memcpy(v102, v100, v101);
        v125 = v103;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)12>(a1, a2, &v127, &v124);
      if (v124)
      {
        v125 = v124;
        operator delete(v124);
      }

      v23 = v127;
      if (v127)
      {
        v128 = v127;
        goto LABEL_167;
      }

      return;
    }

    if (v13 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v40 = *a3;
      v41 = a3[1] - *a3;
      if (v41)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v42 = operator new(v41);
        v43 = (v42 + v41);
        v157 = v42;
        v159 = v42 + v41;
        memcpy(v42, v40, v41);
        v158 = v43;
      }

      v154 = 0;
      v155 = 0;
      v156 = 0;
      v44 = *a4;
      v45 = a4[1] - *a4;
      if (v45)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v46 = operator new(v45);
        v47 = &v46[v45];
        v154 = v46;
        v156 = &v46[v45];
        memcpy(v46, v44, v45);
        v155 = v47;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)12>(a1, a2, &v157, &v154);
      if (v154)
      {
        v155 = v154;
        operator delete(v154);
      }

      v23 = v157;
      if (v157)
      {
        v158 = v157;
        goto LABEL_167;
      }

      return;
    }

    v163 = 0;
    v164 = 0;
    v165 = 0;
    v112 = *a3;
    v113 = a3[1] - *a3;
    if (v113)
    {
      if ((v113 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v114 = operator new(v113);
      v115 = (v114 + v113);
      v163 = v114;
      v165 = v114 + v113;
      memcpy(v114, v112, v113);
      v164 = v115;
    }

    v160 = 0;
    v161 = 0;
    v162 = 0;
    v116 = *a4;
    v117 = a4[1] - *a4;
    if (v117)
    {
      if ((v117 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v118 = operator new(v117);
      v119 = &v118[v117];
      v160 = v118;
      v162 = &v118[v117];
      memcpy(v118, v116, v117);
      v161 = v119;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v163, &v160);
    if (v160)
    {
      v161 = v160;
      operator delete(v160);
    }

    v23 = v163;
    if (v163)
    {
      v164 = v163;
      goto LABEL_167;
    }

    return;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v88 = *a3;
    v89 = a3[1] - *a3;
    if (v89)
    {
      if ((v89 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v90 = operator new(v89);
      v91 = (v90 + v89);
      v187 = v90;
      v189 = v90 + v89;
      memcpy(v90, v88, v89);
      v188 = v91;
    }

    v185 = 0;
    v184 = 0;
    v186 = 0;
    v92 = *a4;
    v93 = a4[1] - *a4;
    if (v93)
    {
      if ((v93 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v94 = operator new(v93);
      v95 = &v94[v93];
      v184 = v94;
      v186 = &v94[v93];
      memcpy(v94, v92, v93);
      v185 = v95;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)12>(a1, a2, &v187, &v184);
    if (v184)
    {
      v185 = v184;
      operator delete(v184);
    }

    v23 = v187;
    if (v187)
    {
      v188 = v187;
      goto LABEL_167;
    }

    return;
  }

  v182 = 0;
  v181 = 0;
  v183 = 0;
  v24 = *a3;
  v25 = a3[1] - *a3;
  if (v25)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v26 = operator new(v25);
    v27 = (v26 + v25);
    v181 = v26;
    v183 = v26 + v25;
    memcpy(v26, v24, v25);
    v182 = v27;
  }

  v179 = 0;
  __p = 0;
  v180 = 0;
  v28 = *a4;
  v29 = a4[1] - *a4;
  if (v29)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v30 = operator new(v29);
    v31 = &v30[v29];
    __p = v30;
    v180 = &v30[v29];
    memcpy(v30, v28, v29);
    v179 = v31;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)12>(a1, a2, &v181, &__p);
  if (__p)
  {
    v179 = __p;
    operator delete(__p);
  }

  v23 = v181;
  if (v181)
  {
    v182 = v181;
    goto LABEL_167;
  }
}

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)13>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, float16x4_t a7)
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v200, &v197);
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
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v194, &v191);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)13>(a1, a2, &v170, &v167);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v176, &v173);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v152, &v149);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, &v146, &v143);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)13>(a1, a2, &v140, &v137);
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

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(a1, a2, &v134, &v131);
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

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)13>(a1, a2, &v158, &v155);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v164, &v161);
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

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)13>(a1, a2, &v188, &v185, a7);
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

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)13>(a1, a2, &v182, &__p);
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

void mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)14>(uint64_t ***a1, uint64_t ***a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, double a7)
{
  Value = ***a1;
  ElementType = mlir::TensorType::getElementType(&Value);
  v208 = ElementType;
  v206 = ***a2;
  v13 = mlir::TensorType::getElementType(&v206);
  v206 = v13;
  Value = v13;
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v205 = v13;
    if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v15 = ElementType;
    }

    else
    {
      v15 = 0;
    }

    v204 = v15;
    Value = mlir::AffineMapAttr::getValue(&v205);
    v208 = mlir::AffineMapAttr::getValue(&v204);
  }

  if (mlir::Type::isF32(&Value) && mlir::Type::isF32(&v208))
  {
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v201 = 0;
      v202 = 0;
      v203 = 0;
      v82 = *a3;
      v83 = a3[1] - *a3;
      if (v83)
      {
        if ((v83 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v84 = operator new(v83);
        v85 = (v84 + v83);
        v201 = v84;
        v203 = v84 + v83;
        memcpy(v84, v82, v83);
        v202 = v85;
      }

      v198 = 0;
      v199 = 0;
      v200 = 0;
      v86 = *a4;
      v87 = a4[1] - *a4;
      if (v87)
      {
        if ((v87 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v88 = operator new(v87);
        v89 = (v88 + v87);
        v198 = v88;
        v200 = v88 + v87;
        memcpy(v88, v86, v87);
        v199 = v89;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v201, &v198);
      if (v198)
      {
        v199 = v198;
        operator delete(v198);
      }

      v24 = v201;
      if (v201)
      {
        v202 = v201;
        goto LABEL_167;
      }

      return;
    }

    v195 = 0;
    v196 = 0;
    v197 = 0;
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
      v195 = v18;
      v197 = v18 + v17;
      memcpy(v18, v16, v17);
      v196 = v19;
    }

    v192 = 0;
    v193 = 0;
    v194 = 0;
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
      v192 = v22;
      v194 = v22 + v21;
      memcpy(v22, v20, v21);
      v193 = v23;
LABEL_15:
      mlir::mps::arithmeticUnaryTileBaseKernel<float,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v195, &v192);
      if (v192)
      {
        v193 = v192;
        operator delete(v192);
      }

      v24 = v195;
      if (v195)
      {
        v196 = v195;
LABEL_167:
        operator delete(v24);
        return;
      }

      return;
    }

LABEL_169:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (!mlir::Type::isF32(&Value) || !mlir::Type::isF16(&v208))
  {
    if (mlir::Type::isF16(&Value) && mlir::Type::isF16(&v208))
    {
      if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v34 = *a3;
        v35 = a3[1] - *a3;
        if (v35)
        {
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v36 = operator new(v35);
          v37 = (v36 + v35);
          v171 = v36;
          v173 = v36 + v35;
          memcpy(v36, v34, v35);
          v172 = v37;
        }

        v168 = 0;
        v169 = 0;
        v170 = 0;
        v38 = *a4;
        v39 = a4[1] - *a4;
        if (v39)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v40 = operator new(v39);
          v41 = &v40[v39];
          v168 = v40;
          v170 = &v40[v39];
          memcpy(v40, v38, v39);
          v169 = v41;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<half,half,(mlir::mps::arithmeticOp)14>(a1, a2, &v171, &v168);
        if (v168)
        {
          v169 = v168;
          operator delete(v168);
        }

        v24 = v171;
        if (v171)
        {
          v172 = v171;
          goto LABEL_167;
        }

        return;
      }

      v178 = 0;
      v177 = 0;
      v179 = 0;
      v106 = *a3;
      v107 = a3[1] - *a3;
      if (v107)
      {
        if ((v107 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v108 = operator new(v107);
        v109 = (v108 + v107);
        v177 = v108;
        v179 = v108 + v107;
        memcpy(v108, v106, v107);
        v178 = v109;
      }

      v174 = 0;
      v175 = 0;
      v176 = 0;
      v110 = *a4;
      v111 = a4[1] - *a4;
      if (v111)
      {
        if ((v111 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v112 = operator new(v111);
        v113 = &v112[v111];
        v174 = v112;
        v176 = &v112[v111];
        memcpy(v112, v110, v111);
        v175 = v113;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v177, &v174);
      if (v174)
      {
        v175 = v174;
        operator delete(v174);
      }

      v24 = v177;
      if (v177)
      {
        v178 = v177;
        goto LABEL_167;
      }

      return;
    }

    if (!mlir::Type::isF16(&Value) || !mlir::Type::isF32(&v208))
    {
      if (mlir::Type::isF32(&Value) && mlir::Type::isBF16(&v208))
      {
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v50 = *a3;
        v51 = a3[1] - *a3;
        if (v51)
        {
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v52 = operator new(v51);
          v53 = (v52 + v51);
          v153 = v52;
          v155 = v52 + v51;
          memcpy(v52, v50, v51);
          v154 = v53;
        }

        v150 = 0;
        v151 = 0;
        v152 = 0;
        v54 = *a4;
        v55 = a4[1] - *a4;
        if (v55)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v56 = operator new(v55);
          v57 = &v56[v55];
          v150 = v56;
          v152 = &v56[v55];
          memcpy(v56, v54, v55);
          v151 = v57;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v153, &v150);
        if (v150)
        {
          v151 = v150;
          operator delete(v150);
        }

        v24 = v153;
        if (v153)
        {
          v154 = v153;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isBF16(&v208))
      {
        v147 = 0;
        v148 = 0;
        v149 = 0;
        v58 = *a3;
        v59 = a3[1] - *a3;
        if (v59)
        {
          if ((v59 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v60 = operator new(v59);
          v61 = (v60 + v59);
          v147 = v60;
          v149 = v60 + v59;
          memcpy(v60, v58, v59);
          v148 = v61;
        }

        v144 = 0;
        v145 = 0;
        v146 = 0;
        v62 = *a4;
        v63 = a4[1] - *a4;
        if (v63)
        {
          if ((v63 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v64 = operator new(v63);
          v65 = &v64[v63];
          v144 = v64;
          v146 = &v64[v63];
          memcpy(v64, v62, v63);
          v145 = v65;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<__emulated_bf16,__emulated_bf16,(mlir::mps::arithmeticOp)14>(a1, a2, &v147, &v144);
        if (v144)
        {
          v145 = v144;
          operator delete(v144);
        }

        v24 = v147;
        if (v147)
        {
          v148 = v147;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isBF16(&Value) && mlir::Type::isF32(&v208))
      {
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v66 = *a3;
        v67 = a3[1] - *a3;
        if (v67)
        {
          if ((v67 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v68 = operator new(v67);
          v69 = v68 + v67;
          v141 = v68;
          v143 = v68 + v67;
          memcpy(v68, v66, v67);
          v142 = v69;
        }

        v138 = 0;
        v139 = 0;
        v140 = 0;
        v70 = *a4;
        v71 = a4[1] - *a4;
        if (v71)
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v72 = operator new(v71);
          v73 = &v72[v71];
          v138 = v72;
          v140 = &v72[v71];
          memcpy(v72, v70, v71);
          v139 = v73;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<float,__emulated_bf16,(mlir::mps::arithmeticOp)14>(a1, a2, &v141, &v138);
        if (v138)
        {
          v139 = v138;
          operator delete(v138);
        }

        v24 = v141;
        if (v141)
        {
          v142 = v141;
          goto LABEL_167;
        }

        return;
      }

      if (mlir::Type::isInteger(&Value, 64))
      {
        v135 = 0;
        v136 = 0;
        v137 = 0;
        v74 = *a3;
        v75 = a3[1] - *a3;
        if (v75)
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v76 = operator new(v75);
          v77 = (v76 + v75);
          v135 = v76;
          v137 = v76 + v75;
          memcpy(v76, v74, v75);
          v136 = v77;
        }

        v132 = 0;
        v133 = 0;
        v134 = 0;
        v78 = *a4;
        v79 = a4[1] - *a4;
        if (v79)
        {
          if ((v79 & 0x8000000000000000) != 0)
          {
            goto LABEL_169;
          }

          v80 = operator new(v79);
          v81 = &v80[v79];
          v132 = v80;
          v134 = &v80[v79];
          memcpy(v80, v78, v79);
          v133 = v81;
        }

        mlir::mps::arithmeticUnaryTileBaseKernel<long long,long long,(mlir::mps::arithmeticOp)13>(a1, a2, &v135, &v132);
        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        v24 = v135;
        if (v135)
        {
          v136 = v135;
          goto LABEL_167;
        }

        return;
      }

      if (!mlir::Type::isInteger(&Value, 32))
      {
        if (mlir::Type::isInteger(&Value, 16))
        {
          std::vector<long long>::vector[abi:nn200100](v125, a3);
          std::vector<long long>::vector[abi:nn200100](v124, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<short,short,(mlir::mps::arithmeticOp)7>(a1, a2, v125, v124);
          if (v124[0])
          {
            v124[1] = v124[0];
            operator delete(v124[0]);
          }

          v24 = v125[0];
          if (v125[0])
          {
            v125[1] = v125[0];
            goto LABEL_167;
          }
        }

        else
        {
          if (!mlir::Type::isInteger(&Value, 8) && !mlir::Type::isInteger(&Value, 1))
          {
            mlir::mps::arithmeticUnaryTileKernelType<(mlir::mps::arithmeticOp)17>(&v206);
          }

          std::vector<long long>::vector[abi:nn200100](v123, a3);
          std::vector<long long>::vector[abi:nn200100](v122, a4);
          mlir::mps::arithmeticUnaryTileBaseKernel<signed char,signed char,(mlir::mps::arithmeticOp)7>(a1, a2, v123, v122);
          if (v122[0])
          {
            v122[1] = v122[0];
            operator delete(v122[0]);
          }

          v24 = v123[0];
          if (v123[0])
          {
            v123[1] = v123[0];
            goto LABEL_167;
          }
        }

        return;
      }

      v129 = 0;
      v130 = 0;
      v131 = 0;
      v98 = *a3;
      v99 = a3[1] - *a3;
      if (v99)
      {
        if ((v99 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v100 = operator new(v99);
        v101 = (v100 + v99);
        v129 = v100;
        v131 = v100 + v99;
        memcpy(v100, v98, v99);
        v130 = v101;
      }

      v126 = 0;
      v127 = 0;
      v128 = 0;
      v102 = *a4;
      v103 = a4[1] - *a4;
      if (v103)
      {
        if ((v103 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v104 = operator new(v103);
        v105 = &v104[v103];
        v126 = v104;
        v128 = &v104[v103];
        memcpy(v104, v102, v103);
        v127 = v105;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<int,int,(mlir::mps::arithmeticOp)7>(a1, a2, &v129, &v126);
      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      v24 = v129;
      if (v129)
      {
        v130 = v129;
        goto LABEL_167;
      }

      return;
    }

    if (v14 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v159 = 0;
      v160 = 0;
      v161 = 0;
      v42 = *a3;
      v43 = a3[1] - *a3;
      if (v43)
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v44 = operator new(v43);
        v45 = (v44 + v43);
        v159 = v44;
        v161 = v44 + v43;
        memcpy(v44, v42, v43);
        v160 = v45;
      }

      v156 = 0;
      v157 = 0;
      v158 = 0;
      v46 = *a4;
      v47 = a4[1] - *a4;
      if (v47)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_169;
        }

        v48 = operator new(v47);
        v49 = &v48[v47];
        v156 = v48;
        v158 = &v48[v47];
        memcpy(v48, v46, v47);
        v157 = v49;
      }

      mlir::mps::arithmeticUnaryTileBaseKernel<float,half,(mlir::mps::arithmeticOp)14>(a1, a2, &v159, &v156);
      if (v156)
      {
        v157 = v156;
        operator delete(v156);
      }

      v24 = v159;
      if (v159)
      {
        v160 = v159;
        goto LABEL_167;
      }

      return;
    }

    v165 = 0;
    v166 = 0;
    v167 = 0;
    v114 = *a3;
    v115 = a3[1] - *a3;
    if (v115)
    {
      if ((v115 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v116 = operator new(v115);
      v117 = (v116 + v115);
      v165 = v116;
      v167 = v116 + v115;
      memcpy(v116, v114, v115);
      v166 = v117;
    }

    v162 = 0;
    v163 = 0;
    v164 = 0;
    v118 = *a4;
    v119 = a4[1] - *a4;
    if (v119)
    {
      if ((v119 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v120 = operator new(v119);
      v121 = &v120[v119];
      v162 = v120;
      v164 = &v120[v119];
      memcpy(v120, v118, v119);
      v163 = v121;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v165, &v162);
    if (v162)
    {
      v163 = v162;
      operator delete(v162);
    }

    v24 = v165;
    if (v165)
    {
      v166 = v165;
      goto LABEL_167;
    }

    return;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v189 = 0;
    v190 = 0;
    v191 = 0;
    v90 = *a3;
    v91 = a3[1] - *a3;
    if (v91)
    {
      if ((v91 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v92 = operator new(v91);
      v93 = (v92 + v91);
      v189 = v92;
      v191 = v92 + v91;
      memcpy(v92, v90, v91);
      v190 = v93;
    }

    v187 = 0;
    v186 = 0;
    v188 = 0;
    v94 = *a4;
    v95 = a4[1] - *a4;
    if (v95)
    {
      if ((v95 & 0x8000000000000000) != 0)
      {
        goto LABEL_169;
      }

      v96 = operator new(v95);
      v97 = &v96[v95];
      v186 = v96;
      v188 = &v96[v95];
      memcpy(v96, v94, v95);
      v187 = v97;
    }

    mlir::mps::arithmeticUnaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)14>(a1, a2, &v189, &v186, a7, v25);
    if (v186)
    {
      v187 = v186;
      operator delete(v186);
    }

    v24 = v189;
    if (v189)
    {
      v190 = v189;
      goto LABEL_167;
    }

    return;
  }

  v184 = 0;
  v183 = 0;
  v185 = 0;
  v26 = *a3;
  v27 = a3[1] - *a3;
  if (v27)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v28 = operator new(v27);
    v29 = (v28 + v27);
    v183 = v28;
    v185 = v28 + v27;
    memcpy(v28, v26, v27);
    v184 = v29;
  }

  v181 = 0;
  __p = 0;
  v182 = 0;
  v30 = *a4;
  v31 = a4[1] - *a4;
  if (v31)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_169;
    }

    v32 = operator new(v31);
    v33 = &v32[v31];
    __p = v32;
    v182 = &v32[v31];
    memcpy(v32, v30, v31);
    v181 = v33;
  }

  mlir::mps::arithmeticUnaryTileBaseKernel<half,float,(mlir::mps::arithmeticOp)14>(a1, a2, &v183, &__p);
  if (__p)
  {
    v181 = __p;
    operator delete(__p);
  }

  v24 = v183;
  if (v183)
  {
    v184 = v183;
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

void mlir::mps::transpose(mlir::AffineBinaryOpExpr *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return;
  }

  v9 = *(this + 3);
  v32 = *(this + 4);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if ((*(this + 58) & 1) == 0 && (*(a2 + 58) & 1) == 0 && *(*mlir::AffineBinaryOpExpr::getRHS(this) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::AffineBinaryOpExpr::getRHS(a2) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v47 = 0u;
    memset(v48, 0, 48);
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *__p = 0u;
    v36 = 0u;
    v12 = *(this + 2);
    if (v12 < 1)
    {
      goto LABEL_14;
    }

    if (v12 > 3)
    {
      v14 = vdupq_n_s64(v12);
      v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
      v15 = (a3 + 8 * v12 - 16);
      v16 = v48;
      v17 = v12 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = vmvnq_s8(*v15);
        v19 = vmvnq_s8(v15[-1]);
        v16[-1] = vaddq_s64(v14, vextq_s8(v18, v18, 8uLL));
        *v16 = vaddq_s64(v14, vextq_s8(v19, v19, 8uLL));
        v15 -= 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v12 == v13)
      {
LABEL_14:
        mlir::mps::CPUNDArray::getBNNSDescriptor(this, __p);
        mlir::mps::CPUNDArray::getBNNSDescriptor(a2, v46);
        memset(v34, 0, sizeof(v34));
        LODWORD(v34[0]) = 1;
        v22 = MEMORY[0x1E12E4630](__p, v34);
        if (v22)
        {
          v23 = v22;
          v24 = BNNSFilterApply(v22, *(this + 5), *(a2 + 40));
          BNNSFilterDestroy(v23);
          if (!v24)
          {
            return;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
    }

    v20 = v12 - v13;
    v21 = &v48[8 * v13 - 16];
    do
    {
      *v21++ = v12 + ~*(a3 - 8 + 8 * v20--);
    }

    while (v20);
    goto LABEL_14;
  }

LABEL_16:
  __p[0] = 0;
  __p[1] = 0;
  *&v36 = 0;
  std::vector<mlir::Value>::__append(__p, v4);
  v25 = __p[0];
  if (v4 >= 1)
  {
    v26 = 1;
    v27 = v4;
    do
    {
      v25[v27 - 1] = v26;
      v26 *= *(v9 - 8 + 8 * v27--);
    }

    while (v27);
  }

  v33 = *(a2 + 40);
  v28 = (__p[1] - v25) >> 3;
  *&v34[0] = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(v34, 1))
  {
    ElementsAttrElementBitWidth = 8;
  }

  else
  {
    ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*this);
  }

  v31 = (ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3;
  if (ElementsAttrElementBitWidth)
  {
    ++v31;
  }

  mlir::mps::recurseTransposeImpl(v4, v9, v32, v11, v10, a3, a4, v29, v25, v28, 0, 0, this, a2, &v33, v31);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

BOOL mlir::mps::doBNNSConv2D(const void **this, uint64_t **a2, void **a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15)
{
  if (*(*mlir::AffineBinaryOpExpr::getRHS(this) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || *(*mlir::AffineBinaryOpExpr::getRHS(a2) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || *(*mlir::AffineBinaryOpExpr::getRHS(a3) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (*(this + 58) & 1) != 0 || (*(a2 + 58) & 1) != 0)
  {
    return 0;
  }

  BNNSDataType = mlir::mps::getBNNSDataType(*this);
  v25 = mlir::mps::getBNNSDataType(*a2);
  v26 = mlir::mps::getBNNSDataType(*a3);
  result = 0;
  if (BNNSDataType == v25 && BNNSDataType == v26)
  {
    if (this[2])
    {
      v27 = this[3];
      v46 = v27[3];
      v47 = v27[2];
      v28 = *v27;
      v45 = *(this[3] + 1);
    }

    else
    {
      v47 = 1;
      v45 = 1;
      v46 = 1;
      v28 = 1;
    }

    batch_size = v28;
    if (a3[2])
    {
      v29 = a3[3];
      v30 = v29[2];
      v42 = v29[1];
      v43 = v29[3];
    }

    else
    {
      v43 = 1;
      v42 = 1;
      v30 = 1;
    }

    if (a2[2])
    {
      v31 = a2[3];
      v41 = *v31;
      v40 = v31[3];
      v32 = v31[1];
      v33 = v31[2];
    }

    else
    {
      v40 = 1;
      v41 = 1;
      v32 = 1;
      v33 = 1;
    }

    v38 = v32 * a4;
    v39 = v33;
    memset(v121, 0, 32);
    v121[0] = 1;
    bzero(&v57, 0x230uLL);
    v34 = mlir::mps::getBNNSDataType(*this);
    v48[0] = 0x3000000000000;
    v48[1] = v46;
    v48[2] = v47;
    v48[3] = v45;
    v49 = vdupq_n_s64(1uLL);
    v50 = v49;
    v51 = 1;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
    v57 = v34;
    v58 = 0;
    v59 = 65568;
    v60 = 1065353216;
    v35 = a2[5];
    v61 = 0x4000000000000;
    v62 = v40;
    v63 = v39;
    v64 = v38 / a4;
    v65 = v41;
    v66 = v49;
    v67 = v49;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v68 = 0u;
    v72 = v35;
    v73 = BNNSDataType;
    v74 = 0;
    v75 = BNNSDataType;
    v76 = 1065353216;
    v77 = 0x3000000000000;
    v78 = v43;
    v79 = v30;
    v80 = v42;
    v81 = v49;
    v82 = v49;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v83 = 1;
    v88 = 0;
    v89 = BNNSDataType;
    v90 = 0;
    v91 = BNNSDataType;
    v92 = 1065353216;
    v93 = 0x1000000000000;
    v94 = v41;
    v95 = v49;
    v96 = v49;
    v97 = v49;
    v98 = 1;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v103 = 0;
    v104 = BNNSDataType;
    v105 = 0;
    v106 = BNNSDataType;
    v107 = 1065353216;
    v109 = 0u;
    v110 = 0u;
    v108 = 0u;
    v111 = a7;
    v112 = a8;
    v113 = a5;
    v114 = a6;
    v115 = 0u;
    v116 = a4;
    v117 = a11;
    v118 = a12;
    v119 = a13;
    v120 = a14;
    v36 = MEMORY[0x1E12E4620](v48, v121);
    v37 = BNNSFilterApplyBatch(v36, batch_size, this[5], v45 * v47 * v46, a3[5], v42 * v43 * v30);
    BNNSFilterDestroy(v36);
    return v37 == 0;
  }

  return result;
}

void mlir::mps::recurseNonZeroImpl(mlir::AffineBinaryOpExpr *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; ++i)
  {
    v9 = *(result + 2);
    v10 = 1;
    v11 = (v9 & (a2 >> 63)) + a2;
    if (v11 >= 0 && v9)
    {
      v10 = *(*(result + 3) + 8 * v11);
    }

    if (i >= v10)
    {
      break;
    }

    v12 = *a3;
    *(*a3 + 8 * a2) = i;
    if (*(result + 2) - 1 == a2)
    {
      v37 = 0;
      v13 = *(a3 + 8);
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v16 = *(result + 8);
        if (v13 == 1)
        {
          goto LABEL_14;
        }

        v17 = 0;
        v18 = 0;
        v14 = v13 & 0xFFFFFFFE;
        v19 = v12 + 2;
        v20 = (v16 + 8);
        v21 = v14;
        do
        {
          v17 += *(v20 - 1) * *(v19 - 1);
          v18 += *v20 * *v19;
          v19 += 2;
          v20 += 2;
          v21 -= 2;
        }

        while (v21);
        v15 = v18 + v17;
        if (v14 != v13)
        {
LABEL_14:
          v22 = v13 - v14;
          v23 = 2 * v14;
          v24 = (v16 + v23 * 4);
          v25 = &v12[v23];
          do
          {
            v27 = *v25++;
            v26 = v27;
            v28 = *v24++;
            v15 += v28 * v26;
            --v22;
          }

          while (v22);
        }
      }

      else
      {
        v15 = *(a3 + 8);
      }

      v29 = *(result + 5);
      RHS = mlir::AffineBinaryOpExpr::getRHS(result);
      if (mlir::Type::isInteger(&RHS, 1))
      {
        ElementsAttrElementBitWidth = 8;
      }

      else
      {
        ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*result);
      }

      if (ElementsAttrElementBitWidth)
      {
        v31 = ((ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3) + 1;
      }

      else
      {
        v31 = 0;
      }

      memcpy(&v37, (v29 + v15), v31);
      if (v37)
      {
        v32 = *(a3 + 8);
        if (v32)
        {
          v33 = *a3;
          v34 = *(a4 + 8);
          v35 = 8 * v32;
          do
          {
            v36 = *v33;
            if (v34 >= *(a4 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v34 + 1, 4);
              v34 = *(a4 + 8);
            }

            *(*a4 + 4 * v34) = v36;
            v34 = *(a4 + 8) + 1;
            *(a4 + 8) = v34;
            v33 += 2;
            v35 -= 8;
          }

          while (v35);
        }
      }
    }

    else
    {
      mlir::mps::recurseNonZeroImpl(result, a2 + 1, a3, a4);
    }
  }
}

void mlir::mps::computeNonZeroIndices(uint64_t *__return_ptr a1@<X8>, mlir::mps *this@<X0>)
{
  v15[32] = *MEMORY[0x1E69E9840];
  RHS = mlir::AffineBinaryOpExpr::getRHS(this);
  if (mlir::Type::isInteger(&RHS, 1))
  {
    ElementsAttrElementBitWidth = 8;
  }

  else
  {
    ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*this);
  }

  v5 = (ElementsAttrElementBitWidth - (ElementsAttrElementBitWidth != 0)) >> 3;
  if (ElementsAttrElementBitWidth)
  {
    ++v5;
  }

  if (v5 >= 9)
  {
    *a1 = 0;
    *(a1 + 272) = 0;
    return;
  }

  RHS = v15;
  v14 = 0x4000000000;
  v6 = *(this + 2);
  v9 = v12;
  v11 = 4;
  if (v6 >= 5)
  {
    v10 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v9, v12, v6, 8);
    v7 = v9;
    v8 = 8 * v6;
LABEL_12:
    bzero(v7, v8);
    goto LABEL_13;
  }

  if (v6)
  {
    v8 = 8 * v6;
    v7 = v12;
    goto LABEL_12;
  }

LABEL_13:
  v10 = v6;
  mlir::mps::recurseNonZeroImpl(this, 0, &v9, &RHS);
  *a1 = (a1 + 2);
  a1[1] = 0x4000000000;
  if (v14)
  {
    llvm::SmallVectorImpl<int>::operator=(a1, &RHS);
  }

  *(a1 + 272) = 1;
  if (v9 != v12)
  {
    free(v9);
  }

  if (RHS != v15)
  {
    free(RHS);
  }
}

uint64_t mlir::mps::writeConstantData(llvm::raw_ostream *a1, uint64_t a2, uint64_t a3)
{
  mlir::mps::CPUNDArray::CPUNDArray(v6, a2, a3);
  v4 = mlir::mps::writeConstantData(a1, v6);
  if (v8 == 1 && v7)
  {
    free(v7);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v4;
}

uint64_t mlir::mps::writeConstantData(llvm::raw_ostream *a1, void *a2)
{
  v3 = a1;
  v4 = a2[5];
  if (*(a2 + 58) != 1)
  {
    v6 = a2[6];
    v7 = a2[5];
LABEL_5:
    llvm::raw_ostream::write(a1, v7, v6);
    goto LABEL_15;
  }

  RHS = mlir::AffineBinaryOpExpr::getRHS(a2);
  if (mlir::Type::isInteger(&RHS, 1))
  {
    ElementsAttrElementBitWidth = 8;
    goto LABEL_12;
  }

  ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(*a2);
  if (ElementsAttrElementBitWidth >= 8)
  {
LABEL_12:
    Value = mlir::ArrayAttr::getValue(a2);
    if (mlir::ShapedType::getNumElements(Value, v18))
    {
      v19 = 0;
      v20 = ElementsAttrElementBitWidth >> 3;
      do
      {
        llvm::raw_ostream::write(v3, v4, v20);
        ++v19;
        v21 = mlir::ArrayAttr::getValue(a2);
      }

      while (v19 < mlir::ShapedType::getNumElements(v21, v22));
    }

    goto LABEL_15;
  }

  v8 = *a2[5];
  v9 = mlir::ArrayAttr::getValue(a2);
  if (mlir::ShapedType::getNumElements(v9, v10))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v8 & ~(-1 << ElementsAttrElementBitWidth);
    do
    {
      v11 |= v14 << v13;
      v13 += ElementsAttrElementBitWidth;
      if (v13 >= 8)
      {
        v25 = v11;
        llvm::raw_ostream::write(v3, &v25, 1uLL);
        v11 = v14 >> (ElementsAttrElementBitWidth - (v13 - 8));
        v13 -= 8;
      }

      ++v12;
      v15 = mlir::ArrayAttr::getValue(a2);
    }

    while (v12 < mlir::ShapedType::getNumElements(v15, v16));
    if (v13)
    {
      v26 = v11;
      v7 = &v26;
      a1 = v3;
      v6 = 1;
      goto LABEL_5;
    }
  }

LABEL_15:
  if (*(v3 + 4) != *(v3 + 2))
  {
    llvm::raw_ostream::flush_nonempty(v3);
  }

  return (*(*v3 + 80))(v3) + *(v3 + 4) - *(v3 + 2);
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = vadd_f32(*v53, *v54);
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,float,float,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  *v55 = *v53 + *v54;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v56);
      v41 = (v41 + v57);
    }

    while (v40 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4, float16x4_t a5)
{
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = **a2;
  v8 = *(v7 + 16);
  v9 = v8 - 1;
  if (v8 <= 0)
  {
    v12 = v8 - 2;
    v11 = 1;
    goto LABEL_5;
  }

  v10 = *(v7 + 24);
  v11 = *(v10 + 8 * v9);
  if (v8 == 1)
  {
    v12 = -1;
LABEL_5:
    v13 = v8 - 3;
    v14 = 1;
    v15 = 1;
LABEL_6:
    v16 = v8 - 4;
    v17 = 1;
    v18 = 1;
    v19 = 1;
LABEL_7:
    v20 = 1;
    goto LABEL_8;
  }

  v12 = v8 - 2;
  v14 = *(v10 + 8 * (v8 - 2));
  if (v8 <= 2)
  {
    v12 = 0;
    v15 = 0;
    v13 = -1;
    goto LABEL_6;
  }

  v13 = v8 - 3;
  v18 = *(v10 + 8 * (v8 - 3));
  if (v8 == 3)
  {
    v15 = 0;
    v13 = 0;
    v19 = 0;
    v16 = -1;
    v12 = 1;
    v17 = 1;
    goto LABEL_7;
  }

  v17 = 0;
  v15 = 0;
  v19 = 0;
  v16 = v8 - 4;
  v20 = *(v10 + 8 * (v8 - 4));
LABEL_8:
  v59 = v20;
  if (*(v5 + 58))
  {
    v21 = 0;
    v58 = 0;
    result = 0;
    goto LABEL_38;
  }

  v23 = *(v5 + 16);
  v24 = v23 - 4;
  if (v23 >= 4)
  {
    if (v24 > v23 - 1 || *(*(v5 + 24) + 8 * v24) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v5 + 64) + 8 * v24);
    }

    v25 = v23 - 3;
    goto LABEL_27;
  }

  if (v23 == 3)
  {
    v25 = 0;
    v58 = 0;
LABEL_27:
    if (v25 > v23 - 1 || *(*(v5 + 24) + 8 * v25) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v5 + 64) + 8 * v25);
    }

    v30 = v23 - 2;
    goto LABEL_32;
  }

  if (v23 >= 2)
  {
    v30 = 0;
    result = 0;
    v58 = 0;
LABEL_32:
    if (v30 > v23 - 1 || *(*(v5 + 24) + 8 * v30) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(*(v5 + 64) + 8 * v30);
    }

    v26 = v23 - 1;
    goto LABEL_37;
  }

  v26 = 0;
  v21 = 0;
  v58 = 0;
  result = 0;
  v27 = 0;
  if (v23 != 1)
  {
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v26 > v23 - 1)
  {
LABEL_38:
    v27 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v28 = 0;
    v57 = 0;
    v29 = 0;
    goto LABEL_68;
  }

  if (*(*(v5 + 24) + 8 * v26) == 1)
  {
    v27 = 0;
    if (*(v6 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v27 = *(*(v5 + 64) + 8 * v26);
    if (*(v6 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v31 = *(v6 + 16);
  v32 = v31 - 4;
  if (v31 >= 4)
  {
    if (v32 > v31 - 1 || *(*(v6 + 24) + 8 * v32) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v6 + 64) + 8 * v32);
    }

    v33 = v31 - 3;
    goto LABEL_57;
  }

  if (v31 == 3)
  {
    v33 = 0;
    v57 = 0;
LABEL_57:
    if (v33 > v31 - 1 || *(*(v6 + 24) + 8 * v33) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*(v6 + 64) + 8 * v33);
    }

    v39 = v31 - 2;
    goto LABEL_62;
  }

  if (v31 >= 2)
  {
    v39 = 0;
    v29 = 0;
    v57 = 0;
LABEL_62:
    if (v39 > v31 - 1 || *(*(v6 + 24) + 8 * v39) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v6 + 64) + 8 * v39);
    }

    v34 = v31 - 1;
LABEL_67:
    if (v34 <= v31 - 1)
    {
      if (*(*(v6 + 24) + 8 * v34) == 1)
      {
        v35 = 0;
        if ((*(v7 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v35 = *(*(v6 + 64) + 8 * v34);
        if ((*(v7 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v35 = 0;
    if ((*(v7 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_92;
  }

  v34 = 0;
  v28 = 0;
  v57 = 0;
  v29 = 0;
  v35 = 0;
  if (v31 == 1)
  {
    goto LABEL_67;
  }

  if (*(v7 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v17 & 1) != 0 || v16 > v8 - 1 || *(*(v7 + 24) + 8 * v16) == 1)
  {
    v37 = 0;
    if (v19)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v37 = *(*(v7 + 64) + 8 * v16);
    if (v19)
    {
      goto LABEL_84;
    }
  }

  if (v13 > v8 - 1 || *(*(v7 + 24) + 8 * v13) == 1)
  {
LABEL_84:
    v38 = 0;
    if (v15)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v38 = *(*(v7 + 64) + 8 * v13);
  if (v15)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v12 > v8 - 1 || *(*(v7 + 24) + 8 * v12) == 1)
  {
LABEL_87:
    v36 = 0;
    if (v8 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v36 = *(*(v7 + 64) + 8 * v12);
  if (v8 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v9 <= v8 - 1 && *(*(v7 + 24) + 8 * v9) != 1)
  {
    v40 = *(*(v7 + 64) + 8 * v9);
    goto LABEL_93;
  }

LABEL_92:
  v40 = 0;
LABEL_93:
  if (v59 >= 1)
  {
    v41 = 0;
    v42 = (**a3 + *(v5 + 40));
    v43 = (*(*a3 + 8) + *(v6 + 40));
    v44 = (**a4 + *(v7 + 40));
    do
    {
      if (v18 >= 1)
      {
        v45 = 0;
        v46 = v42;
        v47 = v43;
        v48 = v44;
        do
        {
          if (v14 >= 1)
          {
            v49 = 0;
            v50 = v46;
            v51 = v47;
            v52 = v48;
            do
            {
              v53 = v11;
              v54 = v50;
              v55 = v51;
              v56 = v52;
              if (v11 >= 1)
              {
                do
                {
                  a5.i32[0] = *v54;
                  a5 = vadd_f32(*v55, *&vcvtq_f32_f16(a5));
                  *v56 = a5;
                  v56 = (v56 + v40);
                  v55 = (v55 + v35);
                  v54 = (v54 + v27);
                  --v53;
                }

                while (v53);
              }

              ++v49;
              v52 = (v52 + v36);
              v51 = (v51 + v28);
              v50 = (v50 + v21);
            }

            while (v49 != v14);
          }

          ++v45;
          v48 = (v48 + v38);
          v47 = (v47 + v29);
          v46 = (v46 + result);
        }

        while (v45 != v18);
      }

      ++v41;
      v44 = (v44 + v37);
      v43 = (v43 + v57);
      v42 = (v42 + v58);
    }

    while (v41 != v59);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<half,float,float,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v64 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v63 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v63 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v63 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v63 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v62 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v62 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v62 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v62 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v64 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  _H0 = *v53;
                  __asm { FCVT            S0, H0 }

                  *v55 = *v54 + _S0;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v62);
      v41 = (v41 + v63);
    }

    while (v40 != v64);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,complex_support::complex_fp<float,(void *)0>,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4, double a5, float16x4_t a6)
{
  v6 = **a1;
  v7 = (*a1)[1];
  v8 = **a2;
  v9 = *(v8 + 16);
  v10 = v9 - 1;
  if (v9 <= 0)
  {
    v13 = v9 - 2;
    v12 = 1;
    goto LABEL_5;
  }

  v11 = *(v8 + 24);
  v12 = *(v11 + 8 * v10);
  if (v9 == 1)
  {
    v13 = -1;
LABEL_5:
    v14 = v9 - 3;
    v15 = 1;
    v16 = 1;
LABEL_6:
    v17 = v9 - 4;
    v18 = 1;
    v19 = 1;
    v20 = 1;
LABEL_7:
    v21 = 1;
    goto LABEL_8;
  }

  v13 = v9 - 2;
  v15 = *(v11 + 8 * (v9 - 2));
  if (v9 <= 2)
  {
    v13 = 0;
    v16 = 0;
    v14 = -1;
    goto LABEL_6;
  }

  v14 = v9 - 3;
  v19 = *(v11 + 8 * (v9 - 3));
  if (v9 == 3)
  {
    v16 = 0;
    v14 = 0;
    v20 = 0;
    v17 = -1;
    v13 = 1;
    v18 = 1;
    goto LABEL_7;
  }

  v18 = 0;
  v16 = 0;
  v20 = 0;
  v17 = v9 - 4;
  v21 = *(v11 + 8 * (v9 - 4));
LABEL_8:
  v60 = v21;
  if (*(v6 + 58))
  {
    v22 = 0;
    v59 = 0;
    result = 0;
    goto LABEL_38;
  }

  v24 = *(v6 + 16);
  v25 = v24 - 4;
  if (v24 >= 4)
  {
    if (v25 > v24 - 1 || *(*(v6 + 24) + 8 * v25) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(*(v6 + 64) + 8 * v25);
    }

    v26 = v24 - 3;
    goto LABEL_27;
  }

  if (v24 == 3)
  {
    v26 = 0;
    v59 = 0;
LABEL_27:
    if (v26 > v24 - 1 || *(*(v6 + 24) + 8 * v26) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v6 + 64) + 8 * v26);
    }

    v31 = v24 - 2;
    goto LABEL_32;
  }

  if (v24 >= 2)
  {
    v31 = 0;
    result = 0;
    v59 = 0;
LABEL_32:
    if (v31 > v24 - 1 || *(*(v6 + 24) + 8 * v31) == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(*(v6 + 64) + 8 * v31);
    }

    v27 = v24 - 1;
    goto LABEL_37;
  }

  v27 = 0;
  v22 = 0;
  v59 = 0;
  result = 0;
  v28 = 0;
  if (v24 != 1)
  {
    if ((*(v7 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v27 > v24 - 1)
  {
LABEL_38:
    v28 = 0;
    if ((*(v7 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v29 = 0;
    v58 = 0;
    v30 = 0;
    goto LABEL_68;
  }

  if (*(*(v6 + 24) + 8 * v27) == 1)
  {
    v28 = 0;
    if (*(v7 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v28 = *(*(v6 + 64) + 8 * v27);
    if (*(v7 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v32 = *(v7 + 16);
  v33 = v32 - 4;
  if (v32 >= 4)
  {
    if (v33 > v32 - 1 || *(*(v7 + 24) + 8 * v33) == 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = *(*(v7 + 64) + 8 * v33);
    }

    v34 = v32 - 3;
    goto LABEL_57;
  }

  if (v32 == 3)
  {
    v34 = 0;
    v58 = 0;
LABEL_57:
    if (v34 > v32 - 1 || *(*(v7 + 24) + 8 * v34) == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(*(v7 + 64) + 8 * v34);
    }

    v40 = v32 - 2;
    goto LABEL_62;
  }

  if (v32 >= 2)
  {
    v40 = 0;
    v30 = 0;
    v58 = 0;
LABEL_62:
    if (v40 > v32 - 1 || *(*(v7 + 24) + 8 * v40) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*(v7 + 64) + 8 * v40);
    }

    v35 = v32 - 1;
LABEL_67:
    if (v35 <= v32 - 1)
    {
      if (*(*(v7 + 24) + 8 * v35) == 1)
      {
        v36 = 0;
        if ((*(v8 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v36 = *(*(v7 + 64) + 8 * v35);
        if ((*(v8 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v36 = 0;
    if ((*(v8 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_92;
  }

  v35 = 0;
  v29 = 0;
  v58 = 0;
  v30 = 0;
  v36 = 0;
  if (v32 == 1)
  {
    goto LABEL_67;
  }

  if (*(v8 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v18 & 1) != 0 || v17 > v9 - 1 || *(*(v8 + 24) + 8 * v17) == 1)
  {
    v38 = 0;
    if (v20)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v38 = *(*(v8 + 64) + 8 * v17);
    if (v20)
    {
      goto LABEL_84;
    }
  }

  if (v14 > v9 - 1 || *(*(v8 + 24) + 8 * v14) == 1)
  {
LABEL_84:
    v39 = 0;
    if (v16)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v39 = *(*(v8 + 64) + 8 * v14);
  if (v16)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v13 > v9 - 1 || *(*(v8 + 24) + 8 * v13) == 1)
  {
LABEL_87:
    v37 = 0;
    if (v9 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v37 = *(*(v8 + 64) + 8 * v13);
  if (v9 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v10 <= v9 - 1 && *(*(v8 + 24) + 8 * v10) != 1)
  {
    v41 = *(*(v8 + 64) + 8 * v10);
    goto LABEL_93;
  }

LABEL_92:
  v41 = 0;
LABEL_93:
  if (v60 >= 1)
  {
    v42 = 0;
    v43 = (**a3 + *(v6 + 40));
    v44 = (*(*a3 + 8) + *(v7 + 40));
    v45 = (**a4 + *(v8 + 40));
    do
    {
      if (v19 >= 1)
      {
        v46 = 0;
        v47 = v43;
        v48 = v44;
        v49 = v45;
        do
        {
          if (v15 >= 1)
          {
            v50 = 0;
            v51 = v47;
            v52 = v48;
            v53 = v49;
            do
            {
              v54 = v12;
              v55 = v51;
              v56 = v52;
              v57 = v53;
              if (v12 >= 1)
              {
                do
                {
                  a6.i32[0] = *v56;
                  a6 = vcvtq_f32_f16(a6).u64[0];
                  *v57 = vadd_f32(*v55, a6);
                  v57 = (v57 + v41);
                  v56 = (v56 + v36);
                  v55 = (v55 + v28);
                  --v54;
                }

                while (v54);
              }

              ++v50;
              v53 = (v53 + v37);
              v52 = (v52 + v29);
              v51 = (v51 + v22);
            }

            while (v50 != v15);
          }

          ++v46;
          v49 = (v49 + v39);
          v48 = (v48 + v30);
          v47 = (v47 + result);
        }

        while (v46 != v19);
      }

      ++v42;
      v45 = (v45 + v38);
      v44 = (v44 + v58);
      v43 = (v43 + v59);
    }

    while (v42 != v60);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,half,float,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v64 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v63 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v63 = 0;
    }

    else
    {
      v63 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v63 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v63 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v63 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v62 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v62 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v38 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v38 = 0;
    v28 = 0;
    v62 = 0;
LABEL_62:
    if (v38 > v30 - 1 || *(*(v5 + 24) + 8 * v38) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v38);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v62 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v36 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v36 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v37 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v37 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v39 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v39 = 0;
LABEL_93:
  if (v64 >= 1)
  {
    v40 = 0;
    v41 = (**a3 + *(v4 + 40));
    v42 = (*(*a3 + 8) + *(v5 + 40));
    v43 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v44 = 0;
        v45 = v41;
        v46 = v42;
        v47 = v43;
        do
        {
          if (v13 >= 1)
          {
            v48 = 0;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            do
            {
              v52 = v10;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if (v10 >= 1)
              {
                do
                {
                  _H1 = *v54;
                  __asm { FCVT            S1, H1 }

                  *v55 = *v53 + _S1;
                  v55 = (v55 + v39);
                  v54 = (v54 + v34);
                  v53 = (v53 + v26);
                  --v52;
                }

                while (v52);
              }

              ++v48;
              v51 = (v51 + v35);
              v50 = (v50 + v27);
              v49 = (v49 + v20);
            }

            while (v48 != v13);
          }

          ++v44;
          v47 = (v47 + v37);
          v46 = (v46 + v28);
          v45 = (v45 + result);
        }

        while (v44 != v17);
      }

      ++v40;
      v43 = (v43 + v36);
      v42 = (v42 + v62);
      v41 = (v41 + v63);
    }

    while (v40 != v64);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<__emulated_bf16,float,float,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v37 > v30 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v37);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v55 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v36 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v36 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v38 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v38 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v39 = 0;
    v40 = (**a3 + *(v4 + 40));
    v41 = (*(*a3 + 8) + *(v5 + 40));
    v42 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v43 = 0;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        do
        {
          if (v13 >= 1)
          {
            v47 = 0;
            v48 = v44;
            v49 = v45;
            v50 = v46;
            do
            {
              v51 = v10;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              if (v10 >= 1)
              {
                do
                {
                  *v54 = *v53 + COERCE_FLOAT(*v52 << 16);
                  v54 = (v54 + v38);
                  v53 = (v53 + v34);
                  v52 = (v52 + v26);
                  --v51;
                }

                while (v51);
              }

              ++v47;
              v50 = (v50 + v35);
              v49 = (v49 + v27);
              v48 = (v48 + v20);
            }

            while (v47 != v13);
          }

          ++v43;
          v46 = (v46 + v36);
          v45 = (v45 + v28);
          v44 = (v44 + result);
        }

        while (v43 != v17);
      }

      ++v39;
      v42 = (v42 + v55);
      v41 = (v41 + v56);
      v40 = (v40 + v57);
    }

    while (v39 != v58);
  }

  return result;
}

uint64_t mlir::mps::arithmeticBinaryTileBaseKernel<float,__emulated_bf16,float,(mlir::mps::arithmeticOp)0>(uint64_t **a1, uint64_t **a2, uint64_t a3, void **a4)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = **a2;
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (v7 <= 0)
  {
    v11 = v7 - 2;
    v10 = 1;
    goto LABEL_5;
  }

  v9 = *(v6 + 24);
  v10 = *(v9 + 8 * v8);
  if (v7 == 1)
  {
    v11 = -1;
LABEL_5:
    v12 = v7 - 3;
    v13 = 1;
    v14 = 1;
LABEL_6:
    v15 = v7 - 4;
    v16 = 1;
    v17 = 1;
    v18 = 1;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v11 = v7 - 2;
  v13 = *(v9 + 8 * (v7 - 2));
  if (v7 <= 2)
  {
    v11 = 0;
    v14 = 0;
    v12 = -1;
    goto LABEL_6;
  }

  v12 = v7 - 3;
  v17 = *(v9 + 8 * (v7 - 3));
  if (v7 == 3)
  {
    v14 = 0;
    v12 = 0;
    v18 = 0;
    v15 = -1;
    v11 = 1;
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 0;
  v14 = 0;
  v18 = 0;
  v15 = v7 - 4;
  v19 = *(v9 + 8 * (v7 - 4));
LABEL_8:
  v58 = v19;
  if (*(v4 + 58))
  {
    v20 = 0;
    v57 = 0;
    result = 0;
    goto LABEL_38;
  }

  v22 = *(v4 + 16);
  v23 = v22 - 4;
  if (v22 >= 4)
  {
    if (v23 > v22 - 1 || *(*(v4 + 24) + 8 * v23) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = *(*(v4 + 64) + 8 * v23);
    }

    v24 = v22 - 3;
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    v24 = 0;
    v57 = 0;
LABEL_27:
    if (v24 > v22 - 1 || *(*(v4 + 24) + 8 * v24) == 1)
    {
      result = 0;
    }

    else
    {
      result = *(*(v4 + 64) + 8 * v24);
    }

    v29 = v22 - 2;
    goto LABEL_32;
  }

  if (v22 >= 2)
  {
    v29 = 0;
    result = 0;
    v57 = 0;
LABEL_32:
    if (v29 > v22 - 1 || *(*(v4 + 24) + 8 * v29) == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(*(v4 + 64) + 8 * v29);
    }

    v25 = v22 - 1;
    goto LABEL_37;
  }

  v25 = 0;
  v20 = 0;
  v57 = 0;
  result = 0;
  v26 = 0;
  if (v22 != 1)
  {
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

LABEL_37:
  if (v25 > v22 - 1)
  {
LABEL_38:
    v26 = 0;
    if ((*(v5 + 58) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_23:
    v27 = 0;
    v56 = 0;
    v28 = 0;
    goto LABEL_68;
  }

  if (*(*(v4 + 24) + 8 * v25) == 1)
  {
    v26 = 0;
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *(*(v4 + 64) + 8 * v25);
    if (*(v5 + 58))
    {
      goto LABEL_23;
    }
  }

LABEL_39:
  v30 = *(v5 + 16);
  v31 = v30 - 4;
  if (v30 >= 4)
  {
    if (v31 > v30 - 1 || *(*(v5 + 24) + 8 * v31) == 1)
    {
      v56 = 0;
    }

    else
    {
      v56 = *(*(v5 + 64) + 8 * v31);
    }

    v32 = v30 - 3;
    goto LABEL_57;
  }

  if (v30 == 3)
  {
    v32 = 0;
    v56 = 0;
LABEL_57:
    if (v32 > v30 - 1 || *(*(v5 + 24) + 8 * v32) == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(v5 + 64) + 8 * v32);
    }

    v37 = v30 - 2;
    goto LABEL_62;
  }

  if (v30 >= 2)
  {
    v37 = 0;
    v28 = 0;
    v56 = 0;
LABEL_62:
    if (v37 > v30 - 1 || *(*(v5 + 24) + 8 * v37) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(*(v5 + 64) + 8 * v37);
    }

    v33 = v30 - 1;
LABEL_67:
    if (v33 <= v30 - 1)
    {
      if (*(*(v5 + 24) + 8 * v33) == 1)
      {
        v34 = 0;
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v34 = *(*(v5 + 64) + 8 * v33);
        if ((*(v6 + 58) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_51;
    }

LABEL_68:
    v34 = 0;
    if ((*(v6 + 58) & 1) == 0)
    {
      goto LABEL_69;
    }

LABEL_51:
    v35 = 0;
    v55 = 0;
    v36 = 0;
    goto LABEL_92;
  }

  v33 = 0;
  v27 = 0;
  v56 = 0;
  v28 = 0;
  v34 = 0;
  if (v30 == 1)
  {
    goto LABEL_67;
  }

  if (*(v6 + 58))
  {
    goto LABEL_51;
  }

LABEL_69:
  if ((v16 & 1) != 0 || v15 > v7 - 1 || *(*(v6 + 24) + 8 * v15) == 1)
  {
    v55 = 0;
    if (v18)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v55 = *(*(v6 + 64) + 8 * v15);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  if (v12 > v7 - 1 || *(*(v6 + 24) + 8 * v12) == 1)
  {
LABEL_84:
    v36 = 0;
    if (v14)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  v36 = *(*(v6 + 64) + 8 * v12);
  if (v14)
  {
    goto LABEL_87;
  }

LABEL_85:
  if (v11 > v7 - 1 || *(*(v6 + 24) + 8 * v11) == 1)
  {
LABEL_87:
    v35 = 0;
    if (v7 < 1)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v35 = *(*(v6 + 64) + 8 * v11);
  if (v7 < 1)
  {
    goto LABEL_92;
  }

LABEL_88:
  if (v8 <= v7 - 1 && *(*(v6 + 24) + 8 * v8) != 1)
  {
    v38 = *(*(v6 + 64) + 8 * v8);
    goto LABEL_93;
  }

LABEL_92:
  v38 = 0;
LABEL_93:
  if (v58 >= 1)
  {
    v39 = 0;
    v40 = (**a3 + *(v4 + 40));
    v41 = (*(*a3 + 8) + *(v5 + 40));
    v42 = (**a4 + *(v6 + 40));
    do
    {
      if (v17 >= 1)
      {
        v43 = 0;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        do
        {
          if (v13 >= 1)
          {
            v47 = 0;
            v48 = v44;
            v49 = v45;
            v50 = v46;
            do
            {
              v51 = v10;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              if (v10 >= 1)
              {
                do
                {
                  *v54 = *v52 + COERCE_FLOAT(*v53 << 16);
                  v54 = (v54 + v38);
                  v53 = (v53 + v34);
                  v52 = (v52 + v26);
                  --v51;
                }

                while (v51);
              }

              ++v47;
              v50 = (v50 + v35);
              v49 = (v49 + v27);
              v48 = (v48 + v20);
            }

            while (v47 != v13);
          }

          ++v43;
          v46 = (v46 + v36);
          v45 = (v45 + v28);
          v44 = (v44 + result);
        }

        while (v43 != v17);
      }

      ++v39;
      v42 = (v42 + v55);
      v41 = (v41 + v56);
      v40 = (v40 + v57);
    }

    while (v39 != v58);
  }

  return result;
}