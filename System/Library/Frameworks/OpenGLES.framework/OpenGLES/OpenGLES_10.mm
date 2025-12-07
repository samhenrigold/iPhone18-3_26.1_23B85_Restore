uint64_t glpLLVMBuildSmoothStep(uint64_t a1, uint64_t *a2, unsigned int *a3, int a4, uint64_t a5)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v9 = glpLLVMTypeOf(a1, a2[2]);
  if (glpPrimitiveTypeGetCategory(a3[2]) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3[2]);
    v9 = glpLLVMGetElementType(a1, v9);
    if (glpPrimitiveTypeGetCategory(*a3) != 2)
    {
      *a2 = glpLLVMSplatElement(a1, *a2, Length);
      a2[1] = glpLLVMSplatElement(a1, a2[1], Length);
    }
  }

  else
  {
    Length = 1;
  }

  v11 = glpLLVMBinaryOperation(a1, 56, a2[2], *a2, "");
  v12 = glpLLVMBinaryOperation(a1, 56, a2[1], *a2, "");
  v13 = glpLLVMConstRealCache(a1, v9, 0.0);
  v14 = glpLLVMConstRealCache(a1, v9, 1.0);
  if (Length >= 2)
  {
    v13 = glpLLVMSplatConstantVector(a1, v13, Length);
    v14 = glpLLVMSplatConstantVector(a1, v14, Length);
  }

  v25[0] = glpLLVMBinaryOperation(a1, 61, v11, v12, "");
  v25[1] = v13;
  v25[2] = v14;
  v15 = glpLLVMGetTypeString(&v24, a3[2], a4);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  snprintf_l(v26, 0x200uLL, 0, "%s.%s", "air.clamp", v15);
  v58[0] = 0x300000001;
  v16 = glpLLVMCallFunction(a1, v26, a5, v25, 3, v58, 2);
  v17 = glpLLVMBinaryOperation(a1, 58, v16, v16, "");
  v18 = glpLLVMConstRealCache(a1, v9, 2.0);
  v19 = glpLLVMConstRealCache(a1, v9, 3.0);
  if (Length >= 2)
  {
    v18 = glpLLVMSplatConstantVector(a1, v18, Length);
    v19 = glpLLVMSplatConstantVector(a1, v19, Length);
  }

  v20 = glpLLVMBinaryOperation(a1, 58, v18, v16, "");
  v21 = glpLLVMBinaryOperation(a1, 56, v19, v20, "");
  return glpLLVMBinaryOperation(a1, 58, v17, v21, "smoothStep");
}

uint64_t glpBuildTextureOperation(uint64_t a1, uint64_t a2, const char **a3, unsigned int *a4, int *a5, int a6)
{
  v242 = a5;
  v286[1] = *MEMORY[0x277D85DE8];
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v13 = glpPrecisionIndexFromSAFlags(SaFlags);
  v252 = 0;
  v251 = 0u;
  v250 = 0u;
  v249 = 0u;
  v248 = 0u;
  v247 = 0u;
  v14 = a3[a6 - 2];
  if (Opcode == 130)
  {
    v15 = 1;
  }

  else
  {
    *&v247 = a3[a6 - 1];
    v15 = 2;
  }

  LODWORD(v235) = v15;
  v230 = v13;
  v246 = v14;
  v226 = *a3;
  ChildCount = glpASTNodeGetChildCount(a2);
  Child = glpASTNodeGetChild(a2, ChildCount - 1);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(PrimitiveType);
  v20 = PPTextarget;
  v21 = (PPTextarget - 5) < 8 && ((0xCFu >> (PPTextarget - 5)) & 1) != 0 || PPTextarget == 17;
  v243 = v21;
  v24 = Opcode == 99 || (Opcode & 0xFFFFFFFB) == 67 || Opcode == 69;
  v232 = v24 & ((PPTextarget > 0x11) | (0xFEFEu >> PPTextarget));
  v241 = a4;
  v25 = *a4;
  if (glpPrimitiveTypeGetCategory(v25) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v25);
  }

  else
  {
    Length = 1;
  }

  v27 = (Length - 1);
  v240 = v20;
  if (v232)
  {
    if (v27 > 7)
    {
      v28 = glpLLVMConstIntCache(a1, *(a1 + 40), v27, 1);
    }

    else
    {
      v28 = *(a1 + 520 + 8 * v27);
      if (!v28)
      {
        v28 = glpLLVMConstIntCache(a1, *(a1 + 40), (Length - 1), 0);
        *(a1 + 520 + 8 * v27) = v28;
      }
    }

    Element = glpLLVMBuildExtractElement(a1, v226, v28, "divisor");
    v27 = (Length - 2);
    LODWORD(v20) = v240;
  }

  else
  {
    Element = 0;
  }

  v219 = v27;
  v29 = v241;
  if (v21)
  {
    v30 = *(a1 + 528);
    if (!v30)
    {
      v30 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
      *(a1 + 528) = v30;
    }

    v31 = v235;
    *(&v246 + v235) = v30;
    LODWORD(v235) = v31 + 1;
  }

  v227 = v20 > 0x11;
  TextureSize = glpGetTextureSize(v20, &v243);
  v223 = (v20 > 0x10 || ((1 << v20) & 0x10101) == 0) && v20 != 17;
  v221 = *(a1 + 832);
  HasOffset = glpPPStreamOpNodeGetHasOffset(a2);
  v231 = 0;
  v228 = HasOffset;
  v229 = 1;
  if (Opcode > 97)
  {
    if (Opcode > 164)
    {
      if (Opcode == 165)
      {
        if (v228)
        {
          v43 = a6 - 3;
        }

        else
        {
          v43 = 0;
        }

        v234 = v243;
        v231 = !v243;
        v229 = 1;
        v224 = 1;
        v225 = v43;
        goto LABEL_48;
      }

      v224 = v231;
      v225 = v231;
      v34 = 1;
      v234 = v231;
      if (Opcode != 166)
      {
        goto LABEL_55;
      }

      v229 = 0;
      v223 = 0;
      v225 = 0;
      v234 = v243;
      v231 = !v243;
    }

    else
    {
      if ((Opcode - 98) >= 2)
      {
        v224 = v231;
        v225 = v231;
        v34 = 1;
        v234 = v231;
        if (Opcode != 130)
        {
          goto LABEL_55;
        }

        v231 = 0;
        v223 = 0;
      }

      else
      {
        v231 = 0;
        v34 = 0;
      }

      v234 = 0;
      v35 = a6 - 3;
      if (!HasOffset)
      {
        v35 = 0;
      }

      v225 = v35;
      v229 = 1;
    }

    v224 = 1;
  }

  else
  {
    if ((Opcode - 66) < 2)
    {
      v231 = 0;
      v224 = 0;
      v234 = 0;
      v33 = HasOffset != 0;
      goto LABEL_47;
    }

    if ((Opcode - 68) < 2 || (Opcode - 70) < 2)
    {
      v231 = 0;
      v224 = 0;
      v234 = 0;
      v33 = 2 * (HasOffset != 0);
LABEL_47:
      v225 = v33;
      v229 = 1;
LABEL_48:
      v34 = 1;
      goto LABEL_55;
    }

    v224 = v231;
    v225 = v231;
    v34 = 1;
    v234 = v231;
  }

LABEL_55:
  memset(v253, 0, sizeof(v253));
  v36 = *a3;
  v236 = a3;
  v238 = Opcode;
  if (v232)
  {
    v37 = *v29;
    v38 = *v242;
    v245 = v36;
    v39 = glpLLVMGetTypeString(&v244, v37, 3);
    v40 = glpPrimitiveTypeToLLVMType(a1, v37, 3);
    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    v280 = 0u;
    v281 = 0u;
    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    snprintf_l(&v254, 0x200uLL, 0, "%s.%s", "air.projective_coordinates", v39);
    if (v38 && v38 != 3)
    {
      v41 = *(a1 + 72);
      if (glpPrimitiveTypeGetCategory(v37) == 2)
      {
        v42 = glpPrimitiveVectorGetLength(v37);
      }

      else
      {
        v42 = 1;
      }

      v40 = glpLLVMVectorType(a1, v41, v42);
      v245 = glpLLVMCastOperation(a1, 82, v36, v40, "coords");
    }

    v286[0] = 0x300000001;
    v36 = glpLLVMCallFunction(a1, &v254, v40, &v245, 1, v286, 2);
    a3 = v236;
    Opcode = v238;
    v29 = v241;
  }

  v44 = *v29;
  Category = glpPrimitiveTypeGetCategory(v44);
  v46 = TextureSize;
  v222 = a6;
  if (TextureSize != 1)
  {
    if (Category == 2)
    {
      Category = glpPrimitiveVectorGetLength(v44);
      v46 = TextureSize;
    }

    v49 = v46;
    MEMORY[0x28223BE20](Category);
    v51 = &v212 - v50;
    bzero(&v212 - v50, v52);
    v53 = 0;
    do
    {
      v54 = a1 + 8 * v53;
      v55 = *(v54 + 520);
      if (!v55)
      {
        v55 = glpLLVMConstIntCache(a1, *(a1 + 40), v53, 0);
        *(v54 + 520) = v55;
      }

      *&v51[8 * v53++] = v55;
    }

    while (v49 != v53);
    v56 = glpLLVMConstVectorCache(a1, v51, TextureSize);
    v57 = glpLLVMTypeOf(a1, v36);
    v58 = glpLLVMConstFromTypeCache(a1, 37, v57);
    v36 = glpLLVMBuildShuffleVector(a1, v36, v58, v56, "texCoord");
    a3 = v236;
    Opcode = v238;
    goto LABEL_80;
  }

  if (Category != 2 || glpPrimitiveVectorGetLength(v44) < 2)
  {
LABEL_80:
    v48 = v241;
    goto LABEL_81;
  }

  v47 = *(a1 + 520);
  v48 = v241;
  if (!v47)
  {
    v47 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
    *(a1 + 520) = v47;
  }

  v36 = glpLLVMBuildExtractElement(a1, v36, v47, "texCoord");
LABEL_81:
  ScalarType = glpPrimitiveTypeGetScalarType(*v48);
  if (!*v242)
  {
LABEL_94:
    v60 = v228;
    goto LABEL_95;
  }

  v60 = v228;
  if (*v242 != 3)
  {
    if (ScalarType == 5)
    {
      v62 = *(a1 + 40);
      if (TextureSize >= 2)
      {
        v62 = glpLLVMVectorType(a1, *(a1 + 40), TextureSize);
      }

      v63 = a1;
      v64 = 76;
LABEL_93:
      v36 = glpLLVMCastOperation(v63, v64, v36, v62, "texCoord");
      goto LABEL_94;
    }

    if (ScalarType == 1)
    {
      if (v232)
      {
        v61 = v228 != 0;
LABEL_100:
        v67 = v235;
        goto LABEL_105;
      }

      v62 = *(a1 + 72);
      if (TextureSize >= 2)
      {
        v62 = glpLLVMVectorType(a1, *(a1 + 72), TextureSize);
      }

      v63 = a1;
      v64 = 82;
      goto LABEL_93;
    }
  }

LABEL_95:
  v61 = v60 != 0;
  if (Opcode != 130 || !v60)
  {
    goto LABEL_100;
  }

  v65 = a3[v225];
  v66 = v242[v225];
  if (v66 && v66 != 3)
  {
    v68 = *(a1 + 40);
    v67 = v235;
    if (TextureSize >= 2)
    {
      v68 = glpLLVMVectorType(a1, *(a1 + 40), TextureSize);
    }

    v65 = glpLLVMCastOperation(a1, 76, v65, v68, "texCoord");
  }

  else
  {
    v67 = v235;
  }

  v36 = glpLLVMBinaryOperation(a1, 53, v36, v65, "texCoord");
  v61 = 1;
LABEL_105:
  v69 = 0x61FFu >> v240;
  *(&v246 + v67) = v36;
  v233 = v243;
  v218 = v34;
  v214 = v61;
  if (!v243)
  {
    switch(Opcode)
    {
      case 130:
        v75 = ReturnPrimitiveType;
        v72 = glpTextureNameFromSamplerType(PrimitiveType);
        v71 = "air.read_";
        goto LABEL_124;
      case 165:
        v75 = ReturnPrimitiveType;
        v71 = "air.gather_";
        break;
      case 166:
        v75 = ReturnPrimitiveType;
        v71 = "air.gather_offsets_";
        break;
      default:
        v71 = "air.sample_";
        goto LABEL_111;
    }

    v76 = glpTextureNameFromSamplerType(PrimitiveType);
    v216 = 0;
    v217 = v76;
    v215 = 0;
    v73 = "";
    goto LABEL_125;
  }

  v70 = "air.sample_compare_";
  if (Opcode == 166)
  {
    v70 = "air.gather_compare_offsets_";
  }

  if (Opcode == 165)
  {
    v71 = "air.gather_compare_";
  }

  else
  {
    v71 = v70;
  }

LABEL_111:
  v72 = glpTextureNameFromSamplerType(PrimitiveType);
  v73 = "";
  v74 = Opcode - 70;
  if ((Opcode - 70) > 0x3C)
  {
    v216 = 0;
    v217 = v72;
    v75 = ReturnPrimitiveType;
    v215 = 0;
  }

  else
  {
    if (((1 << v74) & 0x1000000000000003) != 0)
    {
      v75 = ReturnPrimitiveType;
LABEL_124:
      v73 = "";
      v216 = 1;
      v217 = v72;
      v215 = 1;
      goto LABEL_125;
    }

    v75 = ReturnPrimitiveType;
    v216 = 0;
    v217 = v72;
    v215 = 0;
    if (((1 << v74) & 0x30000000) != 0)
    {
      v73 = "_grad";
    }
  }

LABEL_125:
  v77 = v67 + 1;
  v78 = v227 | v69;
  v245 = 0;
  if (v233)
  {
    v79 = 1;
  }

  else
  {
    v79 = v75;
  }

  if (glpPrimitiveTypeGetScalarType(v75) == 1)
  {
    v80 = v230;
  }

  else
  {
    v80 = 3;
  }

  PrimitiveType = v80;
  v81 = glpLLVMGetTypeString(&v245, v79, v80);
  if (glpPrimitiveTypeGetScalarType(v75) == 1)
  {
    v82 = "";
    v245 = "";
  }

  else
  {
    v82 = v245;
  }

  v83 = v236;
  snprintf_l(v253, 0x200uLL, 0, "%s%s%s%s.%s", v71, v217, v73, v82, v81);
  if ((v78 & 1) == 0)
  {
    v84 = *(a1 + 520 + 8 * TextureSize);
    if (!v84)
    {
      v85 = TextureSize;
      v84 = glpLLVMConstIntCache(a1, *(a1 + 40), TextureSize, 0);
      *(a1 + 520 + 8 * v85) = v84;
    }

    v86 = glpLLVMBuildExtractElement(a1, v226, v84, "");
    v87 = v241;
    v88 = glpPrimitiveTypeGetScalarType(*v241);
    v89 = v235;
    if (v88 == 1)
    {
      v90 = glpLLVMTypeOf(a1, v86);
      v91 = glpLLVMConstRealCache(a1, v90, 0.5);
      v244 = glpLLVMBinaryOperation(a1, 54, v86, v91, "");
      v284 = 0u;
      v285 = 0u;
      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      v278 = 0u;
      v279 = 0u;
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v272 = 0u;
      v273 = 0u;
      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
      v266 = 0u;
      v267 = 0u;
      v264 = 0u;
      v265 = 0u;
      v262 = 0u;
      v263 = 0u;
      v260 = 0u;
      v261 = 0u;
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v254 = 0u;
      v255 = 0u;
      snprintf_l(&v254, 0x200uLL, 0, "%s.%s", "air.floor", "f32");
      v286[0] = 0x300000001;
      v92 = glpLLVMCallFunction(a1, &v254, v90, &v244, 1, v286, 2);
      v93 = glpLLVMBuildConversion(a1, v92, *(a1 + 40), 1, 0, 36, 0);
    }

    else
    {
      if (glpPrimitiveTypeGetScalarType(*v87) != 5)
      {
LABEL_142:
        *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = v86;
        v77 = v89 + 2;
        goto LABEL_143;
      }

      v94 = glpLLVMTypeOf(a1, v86);
      v95 = glpLLVMConstFromTypeCache(a1, 35, v94);
      v96 = glpLLVMBuildICmp(a1, 7, v86, v95, "");
      v93 = glpLLVMBuildSelect(a1, v96, v86, v95, "");
    }

    v86 = v93;
    goto LABEL_142;
  }

LABEL_143:
  if (v233)
  {
    if (v240 == 17 || v234)
    {
      v99 = v83[1];
      v100 = v242[1];
      if (v100 && v100 != 3)
      {
        v101 = v241[1];
        v102 = *(a1 + 72);
        if (glpPrimitiveTypeGetCategory(v241[1]) == 2)
        {
          v103 = glpPrimitiveVectorGetLength(v101);
          v102 = glpLLVMVectorType(a1, v102, v103);
        }

        v99 = glpLLVMCastOperation(a1, 88, v99, v102, "f32");
        v83 = v236;
      }
    }

    else
    {
      if (v219 > 7)
      {
        v97 = glpLLVMConstIntCache(a1, *(a1 + 40), v219, 1);
      }

      else
      {
        v97 = *(a1 + 520 + 8 * v219);
        if (!v97)
        {
          v98 = v219;
          v97 = glpLLVMConstIntCache(a1, *(a1 + 40), v219, 0);
          *(a1 + 520 + 8 * v98) = v97;
        }
      }

      v99 = glpLLVMBuildExtractElement(a1, v226, v97, "refZ");
      if (v232)
      {
        v99 = glpLLVMBinaryOperation(a1, 61, v99, Element, "refZ");
      }
    }

    *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = v99;
    ++v77;
  }

  if ((v218 & 1) == 0)
  {
    v104 = v83[1];
    v105 = v242[1];
    if (v105 && v105 != 3)
    {
      v106 = v241[1];
      v107 = *(a1 + 72);
      if (glpPrimitiveTypeGetCategory(v241[1]) == 2)
      {
        v108 = glpPrimitiveVectorGetLength(v106);
        v107 = glpLLVMVectorType(a1, v107, v108);
      }

      v83 = v236;
      v104 = glpLLVMCastOperation(a1, 88, v104, v107, "f32");
    }

    *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = v104;
    v109 = v83[2];
    v110 = v242[2];
    if (v110 && v110 != 3)
    {
      v111 = v241[2];
      v235 = *(a1 + 72);
      if (glpPrimitiveTypeGetCategory(v111) == 2)
      {
        v112 = glpPrimitiveVectorGetLength(v111);
        v113 = glpLLVMVectorType(a1, v235, v112);
      }

      else
      {
        v113 = v235;
      }

      v109 = glpLLVMCastOperation(a1, 88, v109, v113, "f32");
      v83 = v236;
    }

    *(&v246 + (v77 + 1 - 12 * ((357913942 * (v77 + 1)) >> 32))) = v109;
    *(&v246 + (v77 + 2 - 12 * ((357913942 * (v77 + 2)) >> 32))) = glpLLVMConstFromTypeCache(a1, 35, *(a1 + 72));
    v77 += 3;
  }

  if (v223)
  {
    v114 = v225;
    *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = glpLLVMConstIntCache(a1, *(a1 + 64), v225 > 0, 0);
    if (v114 < 1)
    {
      v116 = *(a1 + 40);
      if (TextureSize >= 2)
      {
        v116 = glpLLVMVectorType(a1, *(a1 + 40), TextureSize);
      }

      v115 = glpLLVMConstFromTypeCache(a1, 35, v116);
    }

    else
    {
      v115 = v83[v114];
    }

    *(&v246 + (v77 + 1 - 12 * ((357913942 * (v77 + 1)) >> 32))) = v115;
    v77 += 2;
  }

  if ((v229 & 1) == 0)
  {
    if (v233)
    {
      v117 = 2;
    }

    else
    {
      v117 = 1;
    }

    v118 = glpLLVMVectorType(a1, *(a1 + 40), 2);
    v119 = glpLLVMArrayType(a1, v118, 4);
    v120 = glpLLVMConstFromTypeCache(a1, 37, v119);
    v121 = 0;
    v122 = 0;
    v123 = &v83[v117];
    v124 = (a1 + 528);
    do
    {
      v125 = *(v124 - 1);
      if (!v125)
      {
        v125 = glpLLVMConstIntCache(a1, *(a1 + 40), v121, 0);
        *(v124 - 1) = v125;
      }

      *&v254 = v125;
      v126 = *v124;
      if (!*v124)
      {
        v126 = glpLLVMConstIntCache(a1, *(a1 + 40), v121 + 1, 0);
        *v124 = v126;
      }

      *(&v254 + 1) = v126;
      v127 = glpLLVMConstVectorCache(a1, &v254, 2);
      v128 = glpLLVMBuildShuffleVector(a1, *v123, v123[1], v127, "");
      inserted = glpLLVMBuildInsertValue(a1, v120, v128, v122, "");
      v120 = inserted;
      ++v122;
      v121 += 2;
      v124 += 2;
    }

    while (v122 != 4);
    *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = inserted;
    ++v77;
    v83 = v236;
  }

  v130 = v222;
  if ((v224 & 1) == 0)
  {
    v131 = v227 | (0x1EFDBu >> v240);
    v132 = (v238 & 0xFFFFFFFE) == 68;
    *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = glpLLVMConstIntCache(a1, *(a1 + 64), v215, 0);
    if ((v216 | v132 & v131) == 1)
    {
      v133 = v83[1];
      v134 = v242[1];
      if (!v134 || v134 == 3)
      {
        goto LABEL_199;
      }

      v135 = v241[1];
      v136 = *(a1 + 72);
      if (glpPrimitiveTypeGetCategory(v241[1]) == 2)
      {
        v137 = glpPrimitiveVectorGetLength(v135);
        v136 = glpLLVMVectorType(a1, v136, v137);
      }

      v130 = v222;
      v138 = glpLLVMCastOperation(a1, 88, v133, v136, "f32");
    }

    else
    {
      v138 = glpLLVMConstFromTypeCache(a1, 35, *(a1 + 72));
    }

    v133 = v138;
LABEL_199:
    *(&v246 + (v77 + 1 - 12 * ((357913942 * (v77 + 1)) >> 32))) = v133;
    *(&v246 + (v77 + 2 - 12 * ((357913942 * (v77 + 2)) >> 32))) = glpLLVMConstFromTypeCache(a1, 35, *(a1 + 72));
    v77 += 3;
  }

  if (!v231)
  {
    goto LABEL_217;
  }

  if (v238 == 165)
  {
    v139 = v130 == 5 && v214;
    if (v228)
    {
      v140 = 0;
    }

    else
    {
      v140 = v130 == 4;
    }

    v141 = 1;
    if (v140 || v139)
    {
      goto LABEL_213;
    }

LABEL_214:
    v142 = *(a1 + 520);
    if (!v142)
    {
      v142 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
      *(a1 + 520) = v142;
    }

    goto LABEL_216;
  }

  if (v130 != 6)
  {
    goto LABEL_214;
  }

  v141 = 3;
LABEL_213:
  v142 = v83[v141];
LABEL_216:
  *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = v142;
  ++v77;
LABEL_217:
  if (v238 == 130)
  {
    if (v240 == 13 || v240 == 2)
    {
      v143 = *(a1 + 520);
      v145 = PrimitiveType;
      v144 = v221;
      if (!v143)
      {
        v143 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
        *(a1 + 520) = v143;
      }
    }

    else
    {
      v143 = v83[1];
      v146 = v242[1];
      if (v146)
      {
        v145 = PrimitiveType;
        v144 = v221;
        if (v146 != 3)
        {
          v143 = glpLLVMCastOperation(a1, 76, v143, *(a1 + 40), "lod");
        }
      }

      else
      {
        v145 = PrimitiveType;
        v144 = v221;
      }
    }

    *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = v143;
    ++v77;
  }

  else
  {
    v145 = PrimitiveType;
    v144 = v221;
  }

  v147 = *(a1 + 520);
  if (!v147)
  {
    v147 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
    *(a1 + 520) = v147;
  }

  *(&v246 + (v77 - 12 * ((357913942 * v77) >> 32))) = v147;
  v148 = v243;
  if (v234)
  {
    v149 = 1;
  }

  else
  {
    v149 = !v243;
  }

  if (v149)
  {
    v150 = ReturnPrimitiveType;
  }

  else
  {
    v150 = 1;
  }

  v151 = glpPrimitiveTypeToLLVMType(a1, v150, v145);
  if (v144)
  {
    *&v254 = v151;
    *(&v254 + 1) = *(a1 + 56);
    v154 = glpLLVMStructTypeInContext(a1, &v254, 2);
    *&v254 = 0x400000001;
    v155 = glpLLVMCallFunction(a1, v253, v154, &v246, v77 + 1, &v254, 2);
    v156 = *(a1 + 260);
    v157 = v156 + 1;
    v158 = *(a1 + 256);
    if (v156 + 1 <= v158)
    {
      v161 = *(a1 + 264);
      v162 = *(a1 + 260);
    }

    else
    {
      if (v158 <= 1)
      {
        v158 = 1;
      }

      v159 = 2 * v158;
      if (v159 <= v157)
      {
        v160 = v157;
      }

      else
      {
        v160 = v159;
      }

      v161 = (*(a1 + 232))(*(a1 + 224), v160, "Vector Storage (uint8_t, growth)");
      memcpy(v161, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v160;
      *(a1 + 264) = v161;
      v162 = *(a1 + 260);
    }

    v153 = ReturnPrimitiveType;
    memmove(&v161[v156 + 1], &v161[v156], (v162 - v156));
    *(*(a1 + 264) + v156) = 52;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMValue(a1, v155);
    v163 = glp_serialized_integer32_control(0);
    v164 = *(a1 + 260);
    v165 = v164 + 1;
    v166 = *(a1 + 256);
    if (v164 + 1 <= v166)
    {
      v169 = *(a1 + 264);
      v170 = *(a1 + 260);
    }

    else
    {
      if (v166 <= 1)
      {
        v166 = 1;
      }

      v167 = 2 * v166;
      if (v167 <= v165)
      {
        v168 = v165;
      }

      else
      {
        v168 = v167;
      }

      v169 = (*(a1 + 232))(*(a1 + 224), v168, "Vector Storage (uint8_t, growth)");
      memcpy(v169, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v168;
      *(a1 + 264) = v169;
      v170 = *(a1 + 260);
    }

    memmove(&v169[v164 + 1], &v169[v164], (v170 - v164));
    *(*(a1 + 264) + v164) = v163;
    v171 = *(a1 + 260);
    v172 = v171 + 1;
    *(a1 + 260) = v171 + 1;
    if ((v163 & 0x80000000) != 0)
    {
      v173 = (v163 >> 1) & 7;
      if (v173 > 1)
      {
        if (v173 == 2)
        {
          v192 = v171 + 4;
          v193 = *(a1 + 256);
          if (v192 <= v193)
          {
            v196 = *(a1 + 264);
            v197 = v172;
          }

          else
          {
            if (v193 <= 1)
            {
              v193 = 1;
            }

            v194 = 2 * v193;
            if (v194 <= v192)
            {
              v195 = v192;
            }

            else
            {
              v195 = v194;
            }

            v196 = (*(a1 + 232))(*(a1 + 224), v195, "Vector Storage (uint8_t, growth)");
            memcpy(v196, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v195;
            *(a1 + 264) = v196;
            v197 = *(a1 + 260);
          }

          memmove(&v196[v172 + 1], &v196[v172], v197 - v172);
          v199 = *(a1 + 264) + v172;
          *(v199 + 2) = 0;
          *v199 = 0;
          v198 = 3;
        }

        else
        {
          if (v173 != 3)
          {
            goto LABEL_299;
          }

          v180 = v171 + 5;
          v181 = *(a1 + 256);
          if (v180 <= v181)
          {
            v184 = *(a1 + 264);
            v185 = v172;
          }

          else
          {
            if (v181 <= 1)
            {
              v181 = 1;
            }

            v182 = 2 * v181;
            if (v182 <= v180)
            {
              v183 = v180;
            }

            else
            {
              v183 = v182;
            }

            v184 = (*(a1 + 232))(*(a1 + 224), v183, "Vector Storage (uint8_t, growth)");
            memcpy(v184, *(a1 + 264), *(a1 + 260));
            (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
            *(a1 + 256) = v183;
            *(a1 + 264) = v184;
            v185 = *(a1 + 260);
          }

          memmove(&v184[v172 + 1], &v184[v172], v185 - v172);
          *(*(a1 + 264) + v172) = 0;
          v198 = 4;
        }
      }

      else if (v173)
      {
        v174 = v171 + 3;
        v175 = *(a1 + 256);
        if (v174 <= v175)
        {
          v178 = *(a1 + 264);
          v179 = v172;
        }

        else
        {
          if (v175 <= 1)
          {
            v175 = 1;
          }

          v176 = 2 * v175;
          if (v176 <= v174)
          {
            v177 = v174;
          }

          else
          {
            v177 = v176;
          }

          v178 = (*(a1 + 232))(*(a1 + 224), v177, "Vector Storage (uint8_t, growth)");
          memcpy(v178, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v177;
          *(a1 + 264) = v178;
          v179 = *(a1 + 260);
        }

        memmove(&v178[v172 + 1], &v178[v172], v179 - v172);
        *(*(a1 + 264) + v172) = 0;
        v198 = 2;
      }

      else
      {
        v186 = v171 + 2;
        v187 = *(a1 + 256);
        if (v186 <= v187)
        {
          v190 = *(a1 + 264);
          v191 = v172;
        }

        else
        {
          if (v187 <= 1)
          {
            v187 = 1;
          }

          v188 = 2 * v187;
          if (v188 <= v186)
          {
            v189 = v186;
          }

          else
          {
            v189 = v188;
          }

          v190 = (*(a1 + 232))(*(a1 + 224), v189, "Vector Storage (uint8_t, growth)");
          memcpy(v190, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v189;
          *(a1 + 264) = v190;
          v191 = *(a1 + 260);
        }

        memmove(&v190[v172 + 1], &v190[v172], v191 - v172);
        *(*(a1 + 264) + v172) = 0;
        v198 = 1;
      }

      v172 = *(a1 + 260) + v198;
      *(a1 + 260) = v172;
    }

LABEL_299:
    if (*(a1 + 300))
    {
      v200 = v172 + 7;
      v201 = *(a1 + 256);
      if (v172 + 7 <= v201)
      {
        v204 = *(a1 + 264);
        v205 = v172;
      }

      else
      {
        if (v201 <= 1)
        {
          v201 = 1;
        }

        v202 = 2 * v201;
        if (v202 <= v200)
        {
          v203 = v200;
        }

        else
        {
          v203 = v202;
        }

        v204 = (*(a1 + 232))(*(a1 + 224), v203, "Vector Storage (uint8_t, growth)");
        memcpy(v204, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v203;
        *(a1 + 264) = v204;
        v205 = *(a1 + 260);
      }

      memmove(&v204[v172 + 1], &v204[v172], v205 - v172);
      strcpy((*(a1 + 264) + v172), "texVal");
      *(a1 + 260) += 7;
    }

    v152 = *(a1 + 308);
    *(a1 + 308) = v152 + 1;
    if (!v243)
    {
      goto LABEL_315;
    }

    goto LABEL_310;
  }

  *&v254 = 0x400000001;
  v152 = glpLLVMCallFunction(a1, v253, v151, &v246, v77 + 1, &v254, 2);
  v153 = ReturnPrimitiveType;
  if (!v148)
  {
    goto LABEL_315;
  }

LABEL_310:
  if (v234)
  {
LABEL_315:
    v206 = v230;
    goto LABEL_316;
  }

  v206 = v230;
  if (v153 != 1)
  {
    v207 = glpPrimitiveTypeToLLVMType(a1, v153, v145);
    v208 = glpLLVMConstFromTypeCache(a1, 37, v207);
    v209 = *(a1 + 520);
    if (!v209)
    {
      v209 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
      *(a1 + 520) = v209;
    }

    v152 = glpLLVMBuildInsertElement(a1, v208, v152, v209, "shadow");
  }

LABEL_316:
  if (!glpLLVMTypesEqual(a1, v153, v145, v153, v206))
  {
    v210 = glpPrimitiveTypeToLLVMType(a1, v153, v206);
    return glpLLVMBuildConversion(a1, v152, v210, v153, v145, v153, v206);
  }

  return v152;
}

uint64_t glpBuildTextureSizeOperation(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v51[1] = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v10 = glpPrecisionIndexFromSAFlags(SaFlags);
  ChildCount = glpASTNodeGetChildCount(a2);
  Child = glpASTNodeGetChild(a2, ChildCount - 1);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(PrimitiveType);
  v50 = 0;
  v49 = 0;
  if (a4 == 1)
  {
    v49 = *a3;
    v16 = a1[65];
    if (!v16)
    {
      v16 = glpLLVMConstIntCache(a1, a1[5], 0, 0);
      a1[65] = v16;
    }
  }

  else
  {
    v16 = *a3;
    v49 = a3[1];
  }

  v50 = v16;
  if (PPTextarget - 13 < 3)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v45 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v10);
  TextureSize = glpGetTextureSize(PPTextarget, &v47);
  v19 = TextureSize;
  if (PPTextarget <= 0x11 && ((1 << PPTextarget) & 0x30101) != 0)
  {
    v19 = TextureSize - 1;
  }

  memset(v48, 0, sizeof(v48));
  v20 = glpTextureNameFromSamplerType(PrimitiveType);
  snprintf_l(v48, 0x200uLL, 0, "%s%s", "air.get_width_", v20);
  v46 = PrimitiveType;
  if (PPTextarget <= 0x11 && ((1 << PPTextarget) & 0x39E00) != 0)
  {
    v21 = v17;
    v22 = v19 > 1;
    v23 = 1;
  }

  else
  {
    if (v19 <= 1)
    {
      v51[0] = 0x400000001;
      return glpLLVMCallFunction(a1, v48, v45, &v49, v17, v51, 2);
    }

    v21 = v17;
    v23 = 0;
    v22 = 1;
  }

  v24 = v19;
  v25 = v45;
  v26 = glpLLVMGetElementType(a1, v45);
  v51[0] = 0x400000001;
  v27 = glpLLVMCallFunction(a1, v48, v26, &v49, v21, v51, 2);
  v44 = &v42;
  v42 = v23;
  v43 = v24;
  v28 = v24 + v23;
  MEMORY[0x28223BE20](v27);
  v30 = (&v42 - v29);
  bzero(&v42 - v29, v31);
  *v30 = v27;
  v32 = v21;
  inserted = glpLLVMConstFromTypeCache(a1, 37, v25);
  if (v22)
  {
    v34 = glpTextureNameFromSamplerType(v46);
    snprintf_l(v48, 0x200uLL, 0, "%s%s", "air.get_height_", v34);
    v51[0] = 0x400000001;
    v30[1] = glpLLVMCallFunction(a1, v48, v26, &v49, v32, v51, 2);
  }

  if (v42)
  {
    v35 = glpTextureNameFromSamplerType(v46);
    snprintf_l(v48, 0x200uLL, 0, "%s%s", "air.get_array_size_", v35);
    v51[0] = 0x400000001;
    v36 = glpLLVMCallFunction(a1, v48, v26, &v49, v32, v51, 2);
    v30[v43] = v36;
  }

  else if (v43 >= 3)
  {
    v37 = glpTextureNameFromSamplerType(v46);
    snprintf_l(v48, 0x200uLL, 0, "%s%s", "air.get_depth_", v37);
    v51[0] = 0x400000001;
    v30[2] = glpLLVMCallFunction(a1, v48, v26, &v49, v32, v51, 2);
  }

  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v39 = &a1[i];
      v40 = v39[65];
      if (!v40)
      {
        v40 = glpLLVMConstIntCache(a1, a1[5], i, 0);
        v39[65] = v40;
      }

      inserted = glpLLVMBuildInsertElement(a1, inserted, v30[i], v40, "imgDim");
    }
  }

  return inserted;
}

uint64_t glpLLVMBuildRefract(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v74[1] = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v38 = *a2;
  v10 = a2[2];
  v11 = *(a3 + 4);
  v37 = v9;
  if (glpPrimitiveTypeGetCategory(*(a3 + 4)) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v11);
    v13 = glpLLVMTypeOf(a1, v9);
    v36 = Length;
    if (Length >= 2)
    {
      v13 = glpLLVMGetElementType(a1, v13);
    }
  }

  else
  {
    v13 = glpLLVMTypeOf(a1, v9);
    v36 = 1;
  }

  v14 = glpLLVMGetTypeString(&v41, *a3, a4);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v42 = 0u;
  v43 = 0u;
  snprintf_l(v42, 0x200uLL, 0, "%s.%s", "air.dot", v14);
  v74[0] = 0x300000001;
  v15 = glpLLVMCallFunction(a1, v42, v13, a2, 2, v74, 2);
  v16 = glpLLVMBinaryOperation(a1, 58, v15, v15, "");
  v17 = glpLLVMConstRealCache(a1, v13, 1.0);
  v18 = glpLLVMBinaryOperation(a1, 58, v10, v10, "");
  v19 = glpLLVMBinaryOperation(a1, 56, v17, v16, "");
  v20 = glpLLVMBinaryOperation(a1, 58, v18, v19, "");
  v40 = glpLLVMBinaryOperation(a1, 56, v17, v20, "");
  v21 = glpLLVMConstFromTypeCache(a1, 35, v13);
  v22 = glpLLVMBuildFCmp(a1, 4, v40, v21, "cmp");
  if (a4)
  {
    v23 = a4 == 3;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v24 = "air.fast_sqrt";
  }

  else
  {
    v24 = "air.sqrt";
  }

  v25 = glpLLVMGetTypeString(&v41, *(a3 + 8), a4);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v42 = 0u;
  v43 = 0u;
  snprintf_l(v42, 0x200uLL, 0, "%s.%s", v24, v25);
  v74[0] = 0x300000001;
  v26 = glpLLVMCallFunction(a1, v42, v13, &v40, 1, v74, 2);
  v27 = glpLLVMBinaryOperation(a1, 58, v10, v15, "");
  v28 = glpLLVMBinaryOperation(a1, 54, v27, v26, "");
  v29 = glpLLVMSplatElement(a1, v28, v36);
  v30 = glpLLVMSplatElement(a1, v10, v36);
  v31 = glpLLVMBinaryOperation(a1, 58, v30, v38, "");
  v32 = glpLLVMBinaryOperation(a1, 58, v29, v37, "");
  v33 = glpLLVMBinaryOperation(a1, 56, v31, v32, "");
  v34 = glpLLVMConstFromTypeCache(a1, 35, a5);
  return glpLLVMBuildSelect(a1, v22, v34, v33, "refract");
}

uint64_t glpLLVMf32Extend(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4 || a4 == 3)
  {
    return a2;
  }

  v8 = *(a1 + 72);
  if (glpPrimitiveTypeGetCategory(a3) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3);
    v8 = glpLLVMVectorType(a1, v8, Length);
  }

  return glpLLVMCastOperation(a1, 88, a2, v8, "f32");
}

uint64_t glpLLVMGetInfinityProxy(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 109;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildLoad2(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 45;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  if (*(a1 + 300))
  {
    v13 = strlen(a3) + 1;
    v14 = *(a1 + 260);
    v15 = v13 + v14;
    v16 = *(a1 + 256);
    if (v13 + v14 <= v16)
    {
      v19 = *(a1 + 264);
      v20 = *(a1 + 260);
    }

    else
    {
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = 2 * v16;
      if (v17 <= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
      memcpy(v19, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v18;
      *(a1 + 264) = v19;
      v20 = *(a1 + 260);
    }

    memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
    memcpy((*(a1 + 264) + v14), a3, v13);
    *(a1 + 260) += v13;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMBuildGEP2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 50;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeArrayOfLLVMValues(a1, a3, a4);
  if (*(a1 + 300))
  {
    v17 = strlen(a5) + 1;
    v18 = *(a1 + 260);
    v19 = v17 + v18;
    v20 = *(a1 + 256);
    if (v17 + v18 <= v20)
    {
      v23 = *(a1 + 264);
      v24 = *(a1 + 260);
    }

    else
    {
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = 2 * v20;
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
      memcpy(v23, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v22;
      *(a1 + 264) = v23;
      v24 = *(a1 + 260);
    }

    memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
    memcpy((*(a1 + 264) + v18), a5, v17);
    *(a1 + 260) += v17;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMGetParam(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 17;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  v13 = glp_serialized_integer32_control(a3);
  v14 = *(a1 + 260);
  v15 = v14 + 1;
  v16 = *(a1 + 256);
  if (v14 + 1 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  *(*(a1 + 264) + v14) = v13;
  v21 = *(a1 + 260);
  v22 = v21 + 1;
  *(a1 + 260) = v21 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    v23 = (v13 >> 1) & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v42 = v21 + 4;
        v43 = *(a1 + 256);
        if (v42 <= v43)
        {
          v46 = *(a1 + 264);
          v47 = v22;
        }

        else
        {
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v44 = 2 * v43;
          if (v44 <= v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = v44;
          }

          v46 = (*(a1 + 232))(*(a1 + 224), v45, "Vector Storage (uint8_t, growth)");
          memcpy(v46, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v45;
          *(a1 + 264) = v46;
          v47 = *(a1 + 260);
        }

        memmove(&v46[v22 + 1], &v46[v22], v47 - v22);
        v49 = *(a1 + 264) + v22;
        *(v49 + 2) = BYTE2(a3);
        *v49 = a3;
        v48 = 3;
        goto LABEL_59;
      }

      if (v23 == 3)
      {
        v30 = v21 + 5;
        v31 = *(a1 + 256);
        if (v30 <= v31)
        {
          v34 = *(a1 + 264);
          v35 = v22;
        }

        else
        {
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = 2 * v31;
          if (v32 <= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v32;
          }

          v34 = (*(a1 + 232))(*(a1 + 224), v33, "Vector Storage (uint8_t, growth)");
          memcpy(v34, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v33;
          *(a1 + 264) = v34;
          v35 = *(a1 + 260);
        }

        memmove(&v34[v22 + 1], &v34[v22], v35 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 4;
        goto LABEL_59;
      }
    }

    else
    {
      if (!v23)
      {
        v36 = v21 + 2;
        v37 = *(a1 + 256);
        if (v36 <= v37)
        {
          v40 = *(a1 + 264);
          v41 = v22;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v39;
          *(a1 + 264) = v40;
          v41 = *(a1 + 260);
        }

        memmove(&v40[v22 + 1], &v40[v22], v41 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 1;
        goto LABEL_59;
      }

      if (v23 == 1)
      {
        v24 = v21 + 3;
        v25 = *(a1 + 256);
        if (v24 <= v25)
        {
          v28 = *(a1 + 264);
          v29 = v22;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v27;
          *(a1 + 264) = v28;
          v29 = *(a1 + 260);
        }

        memmove(&v28[v22 + 1], &v28[v22], v29 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 2;
LABEL_59:
        *(a1 + 260) += v48;
      }
    }
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMSplatConstantVector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    MEMORY[0x28223BE20](a1);
    v7 = v16 - v6;
    bzero(v16 - v6, v8);
    if (a3 >= 1)
    {
      v9 = (a3 + 1) & 0xFFFFFFFE;
      v10 = vdupq_n_s64(a3 - 1);
      v11 = xmmword_23A29C340;
      v12 = v7 + 8;
      v13 = vdupq_n_s64(2uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v10, v11));
        if (v14.i8[0])
        {
          *(v12 - 1) = a2;
        }

        if (v14.i8[4])
        {
          *v12 = a2;
        }

        v11 = vaddq_s64(v11, v13);
        v12 += 2;
        v9 -= 2;
      }

      while (v9);
    }

    return glpLLVMConstVectorCache(a1, v7, a3);
  }

  return a2;
}

uint64_t glpBuildGetLODOperation(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a2;
  v42[1] = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(v6);
  v10 = glpPrecisionIndexFromSAFlags(SaFlags);
  v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  v11 = 1;
  Child = glpASTNodeGetChild(v6, 1u);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  LODWORD(v6) = PrimitiveType;
  v15 = glpTextureNameFromSamplerType(PrimitiveType);
  snprintf_l(v38, 0x40uLL, 0, "air.compute_lod_%s", v15);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(v6);
  TextureSize = glpGetTextureSize(PPTextarget, &v34);
  v18 = *a3;
  v19 = *a4;
  Category = glpPrimitiveTypeGetCategory(v19);
  if (Category == 2)
  {
    Category = glpPrimitiveVectorGetLength(v19);
    v11 = Category;
  }

  if (TextureSize != v11)
  {
    MEMORY[0x28223BE20](Category);
    v22 = &v33[-v21];
    bzero(&v33[-v21], v23);
    v24 = 0;
    do
    {
      v25 = &a1[v24];
      v26 = v25[65];
      if (!v26)
      {
        v26 = glpLLVMConstIntCache(a1, a1[5], v24, 0);
        v25[65] = v26;
      }

      *&v22[8 * v24++] = v26;
    }

    while (TextureSize != v24);
    v27 = glpLLVMConstVectorCache(a1, v22, TextureSize);
    v28 = *a3;
    v29 = glpLLVMTypeOf(a1, *a3);
    v30 = glpLLVMConstFromTypeCache(a1, 37, v29);
    v18 = glpLLVMBuildShuffleVector(a1, v28, v30, v27, "texCoord");
  }

  v35 = *(a3 + 8);
  v36 = v18;
  v37 = glpLLVMConstIntCache(a1, a1[8], 0, 0);
  v31 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v10);
  v42[0] = 0x400000001;
  return glpLLVMCallFunction(a1, v38, v31, &v35, 4, v42, 2);
}

uint64_t glpLLVMGetVariablePointer(uint64_t a1, unint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 144);
  v3 = *v2;
  if (*v2 && (*(a2 + 51) & 0x86) != 0)
  {
    v3 = glpPointerHashGet(*(a1 + 344), a2);
    if (!v3)
    {
      if (*(a1 + 324))
      {
        v6 = glpLLVMGetElementType(a1, *v2);
        v7 = glpBuildAlloca(a1, v6);
      }

      else
      {
        v9 = glpPointerHashGet(*(a1 + 336), a2);
        v7 = glpLLVMGetParam(a1, *(a1 + 160), (v9 - 1));
      }

      v3 = v7;
      glpPointerHashPut(*(a1 + 344), a2, v7, v8);
    }

    if ((*(v2 + 32) & 4) != 0)
    {
      v10 = glpLLVMBuildLoad2(a1, *(a1 + 584), "vrl");
      v11 = *(a1 + 520);
      if (!v11)
      {
        v11 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
        *(a1 + 520) = v11;
      }

      v13[0] = v11;
      v13[1] = v10;
      return glpLLVMBuildGEP2(a1, v3, v13, 2, "ptr");
    }
  }

  return v3;
}

uint64_t glpBuildInterpolateAt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 144);
  v12 = *(v11 + 24);
  v13 = *(v11 + 28);
  v14 = glpPrimitiveTypeToLLVMType(a1, v12, v13);
  v53 = glpLLVMBuildLoad2(a1, a2, "srcPointerInterpolant");
  v15 = a4 & 0x46000800000;
  if ((a4 & 0x46000800000uLL) > 0x3FFFFFFFFFLL)
  {
    if ((a4 & 0x46000800000uLL) > 0x3FFFFFFFFFFLL)
    {
      if (v15 == 0x40000000000)
      {
        v16 = "air.interpolate_sample_perspective";
      }

      else
      {
        if (v15 != 0x42000000000)
        {
          goto LABEL_24;
        }

        v16 = "air.interpolate_sample_no_perspective";
      }
    }

    else if (v15 == 0x4000000000)
    {
      v16 = "air.interpolate_centroid_perspective";
    }

    else
    {
      if (v15 != 0x6000000000)
      {
        goto LABEL_24;
      }

      v16 = "air.interpolate_centroid_no_perspective";
    }
  }

  else if ((a4 & 0x46000800000uLL) > 0x1FFFFFFFFFLL)
  {
    if (v15 == 0x2000000000)
    {
      v16 = "air.interpolate_center_no_perspective";
    }

    else
    {
      if (v15 != 0x2000800000)
      {
        goto LABEL_24;
      }

      v16 = "air.interpolate_offset_no_perspective";
    }
  }

  else
  {
    if (v15)
    {
      if (v15 == 0x800000)
      {
        v16 = "air.interpolate_offset_perspective";
        goto LABEL_20;
      }

LABEL_24:
      abort();
    }

    v16 = "air.interpolate_center_perspective";
  }

LABEL_20:
  v54 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  snprintf_l(v21, 0x200uLL, 0, "%s%s", v16, a5);
  if (a6)
  {
    v54 = a6;
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = glpLLVMGetTypeString(&v20, v12, v13);
  memset(v55, 0, sizeof(v55));
  snprintf_l(v55, 0x200uLL, 0, "%s.%s", v21, v18);
  v56[0] = 0x300000001;
  return glpLLVMCallFunction(a1, v55, v14, &v53, v17, v56, 2);
}

uint64_t glpCGSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t inserted, uint64_t a5, unsigned int a6)
{
  v114 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    return inserted;
  }

  Category = glpPrimitiveTypeGetCategory(a5);
  v13 = Category;
  v14 = a6 & 7;
  if (!a2)
  {
    MEMORY[0x28223BE20](Category);
    v49 = (&v109 - v48);
    bzero(&v109 - v48, v50);
    if ((a6 & 7) == 0)
    {
      goto LABEL_47;
    }

    v112 = inserted;
    v113 = &v109;
    v51 = 0;
    v52 = a1 + 520;
    v53 = 3;
    do
    {
      v54 = (a6 >> v53) & 3;
      v55 = *(v52 + 8 * v54);
      if (!v55)
      {
        v55 = glpLLVMConstIntCache(a1, *(a1 + 40), (a6 >> v53) & 3, 0);
        *(v52 + 8 * v54) = v55;
      }

      v49[v51] = v55;
      v53 += 2;
      ++v51;
    }

    while (v14 != v51);
    inserted = v112;
    if (v14 == 1)
    {
      if (v13 != 2)
      {
        return inserted;
      }

      return glpLLVMBuildExtractElement(a1, v112, *v49, "swz");
    }

    else
    {
LABEL_47:
      if (v13 != 2)
      {
        v60 = glpLLVMTypeOf(a1, inserted);
        v61 = glpLLVMVectorType(a1, v60, a6 & 7);
        v62 = glpLLVMConstFromTypeCache(a1, 37, v61);
        inserted = glpLLVMBuildInsertElement(a1, v62, inserted, *v49, "");
      }

      v63 = glpLLVMConstVectorCache(a1, v49, a6 & 7);
      return glpLLVMBuildShuffleVector(a1, inserted, inserted, v63, "swz");
    }
  }

  v15 = glpPrimitiveTypeGetCategory(a3);
  if (v13 == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3);
    v17 = Length;
    MEMORY[0x28223BE20](Length);
    v113 = (&v109 - v18);
    bzero(&v109 - v18, v19);
    MEMORY[0x28223BE20](v20);
    v22 = (&v109 - v21);
    bzero(&v109 - v21, v23);
    v24 = glpPrimitiveVectorGetLength(a5);
    v111 = Length;
    if (Length == v24)
    {
      if (Length)
      {
        v25 = 0;
        v26 = vdupq_n_s64(Length - 1);
        v27 = xmmword_23A29C350;
        v28 = xmmword_23A29C340;
        v29 = v22 + 2;
        v30 = vdupq_n_s64(4uLL);
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v26, v28));
          if (vuzp1_s16(v31, *v26.i8).u8[0])
          {
            *(v29 - 2) = v25;
          }

          if (vuzp1_s16(v31, *&v26).i8[2])
          {
            *(v29 - 1) = v25 + 1;
          }

          if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
          {
            *v29 = v25 + 2;
            v29[1] = v25 + 3;
          }

          v25 += 4;
          v27 = vaddq_s64(v27, v30);
          v28 = vaddq_s64(v28, v30);
          v29 += 4;
        }

        while (((Length + 3) & 0x1FFFFFFFCLL) != v25);
      }

      if ((a6 & 7) != 0)
      {
        v32 = 0;
        v33 = vdupq_n_s32(v14 - 1);
        v34 = xmmword_23A29C2D0;
        v35.i64[0] = 0x400000004;
        v35.i64[1] = 0x400000004;
        v36 = Length;
        do
        {
          v37 = vmovn_s32(vcgeq_u32(v33, v34));
          if (v37.i8[0])
          {
            v22[(a6 >> (v32 + 3)) & 3] = v36;
          }

          if (v37.i8[2])
          {
            v22[(a6 >> (v32 + 5)) & 3] = v36 + 1;
          }

          if (v37.i8[4])
          {
            v22[(a6 >> (v32 + 7)) & 3] = v36 + 2;
          }

          if (v37.i8[6])
          {
            v22[(a6 >> (v32 + 9)) & 3] = v36 + 3;
          }

          v34 = vaddq_s32(v34, v35);
          v32 += 8;
          v36 += 4;
        }

        while (((2 * (a6 & 7) + 6) & 0x18) != v32);
      }

      if (Length)
      {
        v38 = a1 + 520;
        v39 = v113;
        do
        {
          v41 = *v22++;
          v40 = v41;
          if (v41 > 7)
          {
            v42 = glpLLVMConstIntCache(a1, *(a1 + 40), v40, 1);
          }

          else
          {
            v42 = *(v38 + 8 * v40);
            if (!v42)
            {
              v42 = glpLLVMConstIntCache(a1, *(a1 + 40), v40, 0);
              *(v38 + 8 * v40) = v42;
            }
          }

          *v39++ = v42;
          --v17;
        }

        while (v17);
      }

      v43 = glpLLVMConstVectorCache(a1, v113, v111);
      v44 = "swz";
      v45 = a1;
      v46 = a2;
      v47 = inserted;
    }

    else
    {
      v112 = inserted;
      if (Length)
      {
        v64 = (Length + 3) & 0x1FFFFFFFCLL;
        v65 = vdupq_n_s64(Length - 1);
        v66 = xmmword_23A29C350;
        v67 = xmmword_23A29C340;
        v68 = v22 + 2;
        v69 = vdupq_n_s64(4uLL);
        do
        {
          v70 = vmovn_s64(vcgeq_u64(v65, v67));
          if (vuzp1_s16(v70, *v65.i8).u8[0])
          {
            *(v68 - 2) = v14;
          }

          if (vuzp1_s16(v70, *&v65).i8[2])
          {
            *(v68 - 1) = v14;
          }

          if (vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v65, *&v66))).i32[1])
          {
            *v68 = v14;
            v68[1] = v14;
          }

          v66 = vaddq_s64(v66, v69);
          v67 = vaddq_s64(v67, v69);
          v68 += 4;
          v64 -= 4;
        }

        while (v64);
      }

      if ((a6 & 7) != 0)
      {
        v71 = vdupq_n_s32(v14 - 1);
        v72 = xmmword_23A29C2D0;
        v73 = 9;
        v74 = 3;
        v75.i64[0] = 0x400000004;
        v75.i64[1] = 0x400000004;
        do
        {
          v76 = vmovn_s32(vcgeq_u32(v71, v72));
          if (v76.i8[0])
          {
            v22[(a6 >> (v73 - 6)) & 3] = v74 - 3;
          }

          if (v76.i8[2])
          {
            v22[(a6 >> (v73 - 4)) & 3] = v74 - 2;
          }

          if (v76.i8[4])
          {
            v22[(a6 >> (v73 - 2)) & 3] = v74 - 1;
          }

          if (v76.i8[6])
          {
            v22[(a6 >> v73) & 3] = v74;
          }

          v72 = vaddq_s32(v72, v75);
          v73 += 8;
          v74 += 4;
        }

        while (v74 - (((a6 & 7) + 3) & 0xC) != 3);
      }

      v109 = &v109;
      v110 = a2;
      if (Length)
      {
        v77 = a1 + 520;
        v78 = v17;
        v79 = v113;
        v80 = v22;
        do
        {
          v82 = *v80++;
          v81 = v82;
          if (v82 > 7)
          {
            v83 = glpLLVMConstIntCache(a1, *(a1 + 40), v81, 1);
          }

          else
          {
            v83 = *(v77 + 8 * v81);
            if (!v83)
            {
              v83 = glpLLVMConstIntCache(a1, *(a1 + 40), v81, 0);
              *(v77 + 8 * v81) = v83;
            }
          }

          *v79++ = v83;
          --v78;
        }

        while (v78);
      }

      v84 = v113;
      v85 = v111;
      v86 = glpLLVMConstVectorCache(a1, v113, v111);
      v87 = v112;
      v88 = glpLLVMTypeOf(a1, v112);
      v89 = glpLLVMConstFromTypeCache(a1, 37, v88);
      v90 = glpLLVMBuildShuffleVector(a1, v87, v89, v86, "shuffle0");
      if (v85)
      {
        v91 = 0;
        v92 = vdupq_n_s64(v17 - 1);
        v93 = xmmword_23A29C350;
        v94 = xmmword_23A29C340;
        v95 = v22 + 2;
        v96 = vdupq_n_s64(4uLL);
        do
        {
          v97 = vmovn_s64(vcgeq_u64(v92, v94));
          if (vuzp1_s16(v97, *v92.i8).u8[0])
          {
            *(v95 - 2) = v91;
          }

          if (vuzp1_s16(v97, *&v92).i8[2])
          {
            *(v95 - 1) = v91 + 1;
          }

          if (vuzp1_s16(*&v92, vmovn_s64(vcgeq_u64(v92, *&v93))).i32[1])
          {
            *v95 = v91 + 2;
            v95[1] = v91 + 3;
          }

          v91 += 4;
          v93 = vaddq_s64(v93, v96);
          v94 = vaddq_s64(v94, v96);
          v95 += 4;
        }

        while (((v17 + 3) & 0x1FFFFFFFCLL) != v91);
      }

      if ((a6 & 7) != 0)
      {
        v98 = ((a6 & 7) + 3) & 0xC;
        v99 = xmmword_23A29C2D0;
        v100 = vdupq_n_s32(v14 - 1);
        v101 = 9;
        v102.i64[0] = 0x400000004;
        v102.i64[1] = 0x400000004;
        do
        {
          v103 = vmovn_s32(vcgeq_u32(v100, v99));
          if (v103.i8[0])
          {
            v22[(a6 >> (v101 - 6)) & 3] = ((a6 >> (v101 - 6)) & 3) + v85;
          }

          if (v103.i8[2])
          {
            v22[(a6 >> (v101 - 4)) & 3] = ((a6 >> (v101 - 4)) & 3) + v85;
          }

          if (v103.i8[4])
          {
            v22[(a6 >> (v101 - 2)) & 3] = ((a6 >> (v101 - 2)) & 3) + v85;
          }

          if (v103.i8[6])
          {
            v22[(a6 >> v101) & 3] = ((a6 >> v101) & 3) + v85;
          }

          v99 = vaddq_s32(v99, v102);
          v101 += 8;
          v98 -= 4;
        }

        while (v98);
      }

      if (v85)
      {
        v104 = a1 + 520;
        v105 = v84;
        do
        {
          v107 = *v22++;
          v106 = v107;
          if (v107 > 7)
          {
            v108 = glpLLVMConstIntCache(a1, *(a1 + 40), v106, 1);
          }

          else
          {
            v108 = *(v104 + 8 * v106);
            if (!v108)
            {
              v108 = glpLLVMConstIntCache(a1, *(a1 + 40), v106, 0);
              *(v104 + 8 * v106) = v108;
            }
          }

          *v105++ = v108;
          --v17;
        }

        while (v17);
      }

      v43 = glpLLVMConstVectorCache(a1, v84, v111);
      v44 = "merge";
      v45 = a1;
      v46 = v110;
      v47 = v90;
    }

    return glpLLVMBuildShuffleVector(v45, v46, v47, v43, v44);
  }

  if (v15 != 2)
  {
    return inserted;
  }

  v57 = (a6 >> 3) & 3;
  v58 = *(a1 + 520 + 8 * v57);
  if (!v58)
  {
    v58 = glpLLVMConstIntCache(a1, *(a1 + 40), (a6 >> 3) & 3, 0);
    *(a1 + 520 + 8 * v57) = v58;
  }

  return glpLLVMBuildInsertElement(a1, a2, inserted, v58, "swz");
}

void *glpSerializeLLVMBlock(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = glp_serialized_integer32_control(a2);
  v5 = *(a1 + 260);
  v6 = v5 + 1;
  v7 = *(a1 + 256);
  if (v5 + 1 <= v7)
  {
    v10 = *(a1 + 264);
    v11 = *(a1 + 260);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 2 * v7;
    if (v8 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v10 = (*(a1 + 232))(*(a1 + 224), v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v9;
    *(a1 + 264) = v10;
    v11 = *(a1 + 260);
  }

  result = memmove(&v10[v5 + 1], &v10[v5], (v11 - v5));
  *(*(a1 + 264) + v5) = v4;
  v13 = *(a1 + 260);
  v14 = v13 + 1;
  *(a1 + 260) = v13 + 1;
  if ((v4 & 0x80000000) != 0)
  {
    v15 = (v4 >> 1) & 7;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = v13 + 4;
        v35 = *(a1 + 256);
        if (v34 <= v35)
        {
          v38 = *(a1 + 264);
          v39 = v14;
        }

        else
        {
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = 2 * v35;
          if (v36 <= v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = v36;
          }

          v38 = (*(a1 + 232))(*(a1 + 224), v37, "Vector Storage (uint8_t, growth)");
          memcpy(v38, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v37;
          *(a1 + 264) = v38;
          v39 = *(a1 + 260);
        }

        result = memmove(&v38[v14 + 1], &v38[v14], v39 - v14);
        v41 = *(a1 + 264) + v14;
        *(v41 + 2) = BYTE2(v2);
        *v41 = v2;
        v40 = 3;
      }

      else
      {
        if (v15 != 3)
        {
          return result;
        }

        v22 = v13 + 5;
        v23 = *(a1 + 256);
        if (v22 <= v23)
        {
          v26 = *(a1 + 264);
          v27 = v14;
        }

        else
        {
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v24 = 2 * v23;
          if (v24 <= v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = v24;
          }

          v26 = (*(a1 + 232))(*(a1 + 224), v25, "Vector Storage (uint8_t, growth)");
          memcpy(v26, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v25;
          *(a1 + 264) = v26;
          v27 = *(a1 + 260);
        }

        result = memmove(&v26[v14 + 1], &v26[v14], v27 - v14);
        *(*(a1 + 264) + v14) = v2;
        v40 = 4;
      }
    }

    else if (v15)
    {
      if (v15 != 1)
      {
        return result;
      }

      v16 = v13 + 3;
      v17 = *(a1 + 256);
      if (v16 <= v17)
      {
        v20 = *(a1 + 264);
        v21 = v14;
      }

      else
      {
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = (*(a1 + 232))(*(a1 + 224), v19, "Vector Storage (uint8_t, growth)");
        memcpy(v20, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v19;
        *(a1 + 264) = v20;
        v21 = *(a1 + 260);
      }

      result = memmove(&v20[v14 + 1], &v20[v14], v21 - v14);
      *(*(a1 + 264) + v14) = v2;
      v40 = 2;
    }

    else
    {
      v28 = v13 + 2;
      v29 = *(a1 + 256);
      if (v28 <= v29)
      {
        v32 = *(a1 + 264);
        v33 = v14;
      }

      else
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = 2 * v29;
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v31;
        *(a1 + 264) = v32;
        v33 = *(a1 + 260);
      }

      result = memmove(&v32[v14 + 1], &v32[v14], v33 - v14);
      *(*(a1 + 264) + v14) = v2;
      v40 = 1;
    }

    *(a1 + 260) += v40;
  }

  return result;
}

BOOL glpGetConstantOffset(uint64_t a1, _DWORD *a2)
{
  result = glpIsConstantNode(a1);
  if (result)
  {
    *a2 = *glpConstantNodeGetValue(a1);
    return 1;
  }

  return result;
}

uint64_t glpBuildUniformElementPtr(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v39[1] = *MEMORY[0x277D85DE8];
  Gep = glpFindGep(a1, a2, a5, a6);
  if (!Gep)
  {
    v39[0] = glpLLVMConstIntCache(a1, *(a1 + 40), v6, 1);
    v13 = *(a1 + 260);
    v14 = v13 + 1;
    v15 = *(a1 + 256);
    if (v13 + 1 <= v15)
    {
      v18 = *(a1 + 264);
      v19 = *(a1 + 260);
    }

    else
    {
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = 2 * v15;
      if (v16 <= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      v18 = (*(a1 + 232))(*(a1 + 224), v17, "Vector Storage (uint8_t, growth)");
      memcpy(v18, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v17;
      *(a1 + 264) = v18;
      v19 = *(a1 + 260);
    }

    memmove(&v18[v13 + 1], &v18[v13], (v19 - v13));
    *(*(a1 + 264) + v13) = 21;
    v20 = *(a1 + 260);
    v21 = v20 + 1;
    *(a1 + 260) = v20 + 1;
    ++*(a1 + 296);
    v22 = *(a1 + 312);
    *(a1 + 312) = v22 + 1;
    v23 = *(a1 + 184);
    v24 = v20 + 2;
    v25 = *(a1 + 256);
    if (v24 <= v25)
    {
      v28 = *(a1 + 264);
      v29 = v21;
    }

    else
    {
      if (v25 <= 1)
      {
        v25 = 1;
      }

      v26 = 2 * v25;
      v38 = v22;
      if (v26 <= v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = v26;
      }

      v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
      memcpy(v28, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v27;
      v22 = v38;
      *(a1 + 264) = v28;
      v29 = *(a1 + 260);
    }

    memmove(&v28[v21 + 1], &v28[v21], v29 - v21);
    *(*(a1 + 264) + v21) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v23);
    if (a4)
    {
      a3 = glpLLVMCastOperation(a1, 86, a3, a4, "ptr");
    }

    Gep = glpLLVMBuildGEP2(a1, a3, v39, 1, "ptr");
    v30 = *(a1 + 260);
    v31 = v30 + 1;
    v32 = *(a1 + 256);
    if (v30 + 1 <= v32)
    {
      v35 = *(a1 + 264);
      v36 = *(a1 + 260);
    }

    else
    {
      if (v32 <= 1)
      {
        v32 = 1;
      }

      v33 = 2 * v32;
      if (v33 <= v31)
      {
        v34 = v31;
      }

      else
      {
        v34 = v33;
      }

      v35 = (*(a1 + 232))(*(a1 + 224), v34, "Vector Storage (uint8_t, growth)");
      memcpy(v35, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v34;
      *(a1 + 264) = v35;
      v36 = *(a1 + 260);
    }

    memmove(&v35[v30 + 1], &v35[v30], (v36 - v30));
    *(*(a1 + 264) + v30) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v22);
    glpAddGep(a1, a2, v7, v6, Gep);
  }

  return Gep;
}

uint64_t glpMakeSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  v12 = &a9;
  LODWORD(result) = 4;
  do
  {
    v11 = v12;
    v12 += 8;
    result = (*v11 << (v9 + 3)) | result & ~(24 << v9);
    v9 += 2;
  }

  while (v9 != 8);
  return result;
}

uint64_t glpFindGep(uint64_t a1, unint64_t a2, int a3, int a4)
{
  result = glpPointerHashGet(*(a1 + 352), a2);
  if (result)
  {
    v7 = *(result + 4);
    if (v7)
    {
      for (i = *(result + 8) + 8; *(i - 4) != a4 || *(i - 8) != a3; i += 16)
      {
        if (!--v7)
        {
          return 0;
        }
      }

      return *i;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *glpAddGep(void *a1, unint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = glpPointerHashGet(a1[44], a2);
  if (!v10)
  {
    v10 = glpLinkerPoolAlloc(a1[16]);
    v11 = a1[19];
    *v10 = 4;
    *(v10 + 8) = (*(v11 + 8))(*v11, 64, "Vector Storage (GLPGepEntry)");
    glpPointerHashPut(a1[44], a2, v10, v12);
  }

  v13 = *v10;
  v14 = *(v10 + 4);
  if ((v14 + 1) <= *v10)
  {
    v18 = *(v10 + 8);
    v19 = *(v10 + 4);
  }

  else
  {
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v15 = 2 * v13;
    if (v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = a1[19];
    v18 = (v17[1])(*v17, 16 * v16, "Vector Storage (GLPGepEntry, growth)");
    memcpy(v18, *(v10 + 8), 16 * *(v10 + 4));
    (v17[3])(*v17, *(v10 + 8));
    *v10 = v16;
    *(v10 + 8) = v18;
    v19 = *(v10 + 4);
  }

  result = memmove(&v18[16 * v14 + 16], &v18[16 * v14], 16 * (v19 - v14));
  v21 = *(v10 + 8) + 16 * v14;
  *v21 = a3;
  *(v21 + 4) = a4;
  *(v21 + 8) = a5;
  ++*(v10 + 4);
  return result;
}

uint64_t glpLLVMCGInsertBasicBlock(uint64_t a1, const char *a2)
{
  v3 = glpLLVMAppendBasicBlock(a1, *(a1 + 160), a2);
  v4 = *(a1 + 432);
  if (v4)
  {
    v5 = *(a1 + 260);
    v6 = v5 + 1;
    v7 = *(a1 + 256);
    if (v5 + 1 <= v7)
    {
      v10 = *(a1 + 264);
      v11 = *(a1 + 260);
    }

    else
    {
      if (v7 <= 1)
      {
        v7 = 1;
      }

      v8 = 2 * v7;
      if (v8 <= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v8;
      }

      v10 = (*(a1 + 232))(*(a1 + 224), v9, "Vector Storage (uint8_t, growth)");
      memcpy(v10, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v9;
      *(a1 + 264) = v10;
      v11 = *(a1 + 260);
    }

    memmove(&v10[v5 + 1], &v10[v5], (v11 - v5));
    *(*(a1 + 264) + v5) = 22;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v3);
    glpSerializeLLVMBlock(a1, v4);
  }

  return v3;
}

uint64_t glpLLVMBuildSwitch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 260);
  v9 = v8 + 1;
  v10 = *(a1 + 256);
  if (v8 + 1 <= v10)
  {
    v13 = *(a1 + 264);
    v14 = *(a1 + 260);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 2 * v10;
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = (*(a1 + 232))(*(a1 + 224), v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v12;
    *(a1 + 264) = v13;
    v14 = *(a1 + 260);
  }

  memmove(&v13[v8 + 1], &v13[v8], (v14 - v8));
  *(*(a1 + 264) + v8) = 92;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeLLVMBlock(a1, a3);
  v15 = glp_serialized_integer32_control(a4);
  v16 = *(a1 + 260);
  v17 = v16 + 1;
  v18 = *(a1 + 256);
  if (v16 + 1 <= v18)
  {
    v21 = *(a1 + 264);
    v22 = *(a1 + 260);
  }

  else
  {
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v19 = 2 * v18;
    if (v19 <= v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    v21 = (*(a1 + 232))(*(a1 + 224), v20, "Vector Storage (uint8_t, growth)");
    memcpy(v21, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v20;
    *(a1 + 264) = v21;
    v22 = *(a1 + 260);
  }

  memmove(&v21[v16 + 1], &v21[v16], (v22 - v16));
  *(*(a1 + 264) + v16) = v15;
  v23 = *(a1 + 260);
  v24 = v23 + 1;
  *(a1 + 260) = v23 + 1;
  if ((v15 & 0x80000000) != 0)
  {
    v25 = (v15 >> 1) & 7;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v44 = v23 + 4;
        v45 = *(a1 + 256);
        if (v44 <= v45)
        {
          v48 = *(a1 + 264);
          v49 = v24;
        }

        else
        {
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = 2 * v45;
          if (v46 <= v44)
          {
            v47 = v44;
          }

          else
          {
            v47 = v46;
          }

          v48 = (*(a1 + 232))(*(a1 + 224), v47, "Vector Storage (uint8_t, growth)");
          memcpy(v48, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v47;
          *(a1 + 264) = v48;
          v49 = *(a1 + 260);
        }

        memmove(&v48[v24 + 1], &v48[v24], v49 - v24);
        v51 = *(a1 + 264) + v24;
        *(v51 + 2) = BYTE2(a4);
        *v51 = a4;
        v50 = 3;
        goto LABEL_59;
      }

      if (v25 == 3)
      {
        v32 = v23 + 5;
        v33 = *(a1 + 256);
        if (v32 <= v33)
        {
          v36 = *(a1 + 264);
          v37 = v24;
        }

        else
        {
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = 2 * v33;
          if (v34 <= v32)
          {
            v35 = v32;
          }

          else
          {
            v35 = v34;
          }

          v36 = (*(a1 + 232))(*(a1 + 224), v35, "Vector Storage (uint8_t, growth)");
          memcpy(v36, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v35;
          *(a1 + 264) = v36;
          v37 = *(a1 + 260);
        }

        memmove(&v36[v24 + 1], &v36[v24], v37 - v24);
        *(*(a1 + 264) + v24) = a4;
        v50 = 4;
        goto LABEL_59;
      }
    }

    else
    {
      if (!v25)
      {
        v38 = v23 + 2;
        v39 = *(a1 + 256);
        if (v38 <= v39)
        {
          v42 = *(a1 + 264);
          v43 = v24;
        }

        else
        {
          if (v39 <= 1)
          {
            v39 = 1;
          }

          v40 = 2 * v39;
          if (v40 <= v38)
          {
            v41 = v38;
          }

          else
          {
            v41 = v40;
          }

          v42 = (*(a1 + 232))(*(a1 + 224), v41, "Vector Storage (uint8_t, growth)");
          memcpy(v42, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v41;
          *(a1 + 264) = v42;
          v43 = *(a1 + 260);
        }

        memmove(&v42[v24 + 1], &v42[v24], v43 - v24);
        *(*(a1 + 264) + v24) = a4;
        v50 = 1;
        goto LABEL_59;
      }

      if (v25 == 1)
      {
        v26 = v23 + 3;
        v27 = *(a1 + 256);
        if (v26 <= v27)
        {
          v30 = *(a1 + 264);
          v31 = v24;
        }

        else
        {
          if (v27 <= 1)
          {
            v27 = 1;
          }

          v28 = 2 * v27;
          if (v28 <= v26)
          {
            v29 = v26;
          }

          else
          {
            v29 = v28;
          }

          v30 = (*(a1 + 232))(*(a1 + 224), v29, "Vector Storage (uint8_t, growth)");
          memcpy(v30, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v29;
          *(a1 + 264) = v30;
          v31 = *(a1 + 260);
        }

        memmove(&v30[v24 + 1], &v30[v24], v31 - v24);
        *(*(a1 + 264) + v24) = a4;
        v50 = 2;
LABEL_59:
        *(a1 + 260) += v50;
      }
    }
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

void *glpLLVMAddCase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 260);
  v9 = v8 + 1;
  v10 = *(a1 + 256);
  if (v8 + 1 <= v10)
  {
    v13 = *(a1 + 264);
    v14 = *(a1 + 260);
  }

  else
  {
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 2 * v10;
    if (v11 <= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = (*(a1 + 232))(*(a1 + 224), v12, "Vector Storage (uint8_t, growth)");
    memcpy(v13, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v12;
    *(a1 + 264) = v13;
    v14 = *(a1 + 260);
  }

  memmove(&v13[v8 + 1], &v13[v8], (v14 - v8));
  *(*(a1 + 264) + v8) = 93;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeLLVMValue(a1, a3);

  return glpSerializeLLVMBlock(a1, a4);
}

uint64_t glpLLVMBuildPhi(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 94;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  if (*(a1 + 300))
  {
    v13 = strlen(a3) + 1;
    v14 = *(a1 + 260);
    v15 = v13 + v14;
    v16 = *(a1 + 256);
    if (v13 + v14 <= v16)
    {
      v19 = *(a1 + 264);
      v20 = *(a1 + 260);
    }

    else
    {
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = 2 * v16;
      if (v17 <= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
      memcpy(v19, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v18;
      *(a1 + 264) = v19;
      v20 = *(a1 + 260);
    }

    memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
    memcpy((*(a1 + 264) + v14), a3, v13);
    *(a1 + 260) += v13;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

void *glpLLVMAddIncoming(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 95;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  v17 = glp_serialized_integer32_control(a5);
  v18 = *(a1 + 260);
  v19 = v18 + 1;
  v20 = *(a1 + 256);
  if (v18 + 1 <= v20)
  {
    v23 = *(a1 + 264);
    v24 = *(a1 + 260);
  }

  else
  {
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v21 = 2 * v20;
    if (v21 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
    memcpy(v23, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v22;
    *(a1 + 264) = v23;
    v24 = *(a1 + 260);
  }

  result = memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
  *(*(a1 + 264) + v18) = v17;
  v26 = *(a1 + 260);
  v27 = v26 + 1;
  *(a1 + 260) = v26 + 1;
  if ((v17 & 0x80000000) != 0)
  {
    v28 = (v17 >> 1) & 7;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v47 = v26 + 4;
        v48 = *(a1 + 256);
        if (v47 <= v48)
        {
          v51 = *(a1 + 264);
          v52 = v27;
        }

        else
        {
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = 2 * v48;
          if (v49 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v49;
          }

          v51 = (*(a1 + 232))(*(a1 + 224), v50, "Vector Storage (uint8_t, growth)");
          memcpy(v51, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v50;
          *(a1 + 264) = v51;
          v52 = *(a1 + 260);
        }

        result = memmove(&v51[v27 + 1], &v51[v27], v52 - v27);
        v54 = *(a1 + 264) + v27;
        *(v54 + 2) = BYTE2(a5);
        *v54 = a5;
        v53 = 3;
      }

      else
      {
        if (v28 != 3)
        {
          goto LABEL_59;
        }

        v35 = v26 + 5;
        v36 = *(a1 + 256);
        if (v35 <= v36)
        {
          v39 = *(a1 + 264);
          v40 = v27;
        }

        else
        {
          if (v36 <= 1)
          {
            v36 = 1;
          }

          v37 = 2 * v36;
          if (v37 <= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          v39 = (*(a1 + 232))(*(a1 + 224), v38, "Vector Storage (uint8_t, growth)");
          memcpy(v39, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v38;
          *(a1 + 264) = v39;
          v40 = *(a1 + 260);
        }

        result = memmove(&v39[v27 + 1], &v39[v27], v40 - v27);
        *(*(a1 + 264) + v27) = a5;
        v53 = 4;
      }
    }

    else if (v28)
    {
      v29 = v26 + 3;
      v30 = *(a1 + 256);
      if (v29 <= v30)
      {
        v33 = *(a1 + 264);
        v34 = v27;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (*(a1 + 232))(*(a1 + 224), v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v32;
        *(a1 + 264) = v33;
        v34 = *(a1 + 260);
      }

      result = memmove(&v33[v27 + 1], &v33[v27], v34 - v27);
      *(*(a1 + 264) + v27) = a5;
      v53 = 2;
    }

    else
    {
      v41 = v26 + 2;
      v42 = *(a1 + 256);
      if (v41 <= v42)
      {
        v45 = *(a1 + 264);
        v46 = v27;
      }

      else
      {
        if (v42 <= 1)
        {
          v42 = 1;
        }

        v43 = 2 * v42;
        if (v43 <= v41)
        {
          v44 = v41;
        }

        else
        {
          v44 = v43;
        }

        v45 = (*(a1 + 232))(*(a1 + 224), v44, "Vector Storage (uint8_t, growth)");
        memcpy(v45, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v44;
        *(a1 + 264) = v45;
        v46 = *(a1 + 260);
      }

      result = memmove(&v45[v27 + 1], &v45[v27], v46 - v27);
      *(*(a1 + 264) + v27) = a5;
      v53 = 1;
    }

    *(a1 + 260) += v53;
  }

LABEL_59:
  if (a5)
  {
    a5 = a5;
    do
    {
      v55 = *a3++;
      glpSerializeLLVMValue(a1, v55);
      v56 = *a4++;
      result = glpSerializeLLVMBlock(a1, v56);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t glpLLVMAppendBasicBlock(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 20;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  v13 = strlen(a3) + 1;
  v14 = *(a1 + 260);
  v15 = v13 + v14;
  v16 = *(a1 + 256);
  if (v13 + v14 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  memcpy((*(a1 + 264) + v14), a3, v13);
  *(a1 + 260) += v13;
  result = *(a1 + 312);
  *(a1 + 312) = result + 1;
  return result;
}

uint64_t glpLLVMSplatScalar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 520);
  if (!v6)
  {
    v6 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
    *(a1 + 520) = v6;
  }

  v7 = glpLLVMTypeOf(a1, a2);
  v8 = glpLLVMVectorType(a1, v7, a3);
  v9 = glpLLVMConstFromTypeCache(a1, 37, v8);
  inserted = glpLLVMBuildInsertElement(a1, v9, a2, v6, "");
  MEMORY[0x28223BE20](inserted);
  v12 = (v22 - v11);
  bzero(v22 - v11, v13);
  if (a3)
  {
    v14 = (a3 + 1) & 0x1FFFFFFFELL;
    v15 = vdupq_n_s64(a3 - 1);
    v16 = xmmword_23A29C340;
    v17 = v12 + 1;
    v18 = vdupq_n_s64(2uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v15, v16));
      if (v19.i8[0])
      {
        *(v17 - 1) = v6;
      }

      if (v19.i8[4])
      {
        *v17 = v6;
      }

      v16 = vaddq_s64(v16, v18);
      v17 += 2;
      v14 -= 2;
    }

    while (v14);
  }

  v20 = glpLLVMConstVectorCache(a1, v12, a3);

  return glpLLVMBuildShuffleVector(a1, inserted, inserted, v20, "");
}

uint64_t glpLLVMSplatElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    return a2;
  }

  v7 = glpLLVMTypeOf(a1, a2);
  v8 = glpLLVMVectorType(a1, v7, a3);
  v9 = glpLLVMConstFromTypeCache(a1, 37, v8);
  v10 = *(a1 + 520);
  if (!v10)
  {
    v10 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
    *(a1 + 520) = v10;
  }

  inserted = glpLLVMBuildInsertElement(a1, v9, a2, v10, "");
  MEMORY[0x28223BE20](inserted);
  v13 = (v22 - v12);
  bzero(v22 - v12, v14);
  if (a3 >= 1)
  {
    v15 = (a3 + 1) & 0xFFFFFFFE;
    v16 = vdupq_n_s64(a3 - 1);
    v17 = xmmword_23A29C340;
    v18 = v13 + 1;
    v19 = vdupq_n_s64(2uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v16, v17));
      if (v20.i8[0])
      {
        *(v18 - 1) = v10;
      }

      if (v20.i8[4])
      {
        *v18 = v10;
      }

      v17 = vaddq_s64(v17, v19);
      v18 += 2;
      v15 -= 2;
    }

    while (v15);
  }

  v21 = glpLLVMConstVectorCache(a1, v13, a3);
  return glpLLVMBuildShuffleVector(a1, inserted, inserted, v21, "");
}

uint64_t glpGetTextureSize(int a1, int *a2)
{
  v3 = 0;
  result = 2;
  if (a1 > 7)
  {
    if (a1 > 11)
    {
      if (a1 <= 15)
      {
        if (a1 != 12)
        {
          if (a1 != 13)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (a1 != 16)
      {
        if (a1 != 17)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

LABEL_20:
      result = 3;
      goto LABEL_24;
    }

    if (a1 == 8)
    {
LABEL_19:
      v3 = 1;
      goto LABEL_20;
    }

    if (a1 != 9)
    {
      if (a1 != 11)
      {
        goto LABEL_24;
      }

LABEL_22:
      v3 = 1;
    }

LABEL_23:
    result = 1;
    goto LABEL_24;
  }

  if (a1 <= 4)
  {
    if (a1 < 2)
    {
      goto LABEL_20;
    }

    if (a1 != 4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((a1 - 5) >= 2)
  {
    if (a1 != 7)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_16:
  v3 = 1;
LABEL_24:
  *a2 = v3;
  return result;
}

char *glpTextureNameFromSamplerType(uint64_t a1)
{
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(a1);
  if (PPTextarget >= 0x12)
  {
    abort();
  }

  return off_278B49190[PPTextarget];
}

uint64_t glpLLVMBuildInsertValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v10 = *(a1 + 260);
  v11 = v10 + 1;
  v12 = *(a1 + 256);
  if (v10 + 1 <= v12)
  {
    v15 = *(a1 + 264);
    v16 = *(a1 + 260);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
    memcpy(v15, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v14;
    *(a1 + 264) = v15;
    v16 = *(a1 + 260);
  }

  memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
  *(*(a1 + 264) + v10) = 51;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  glpSerializeLLVMValue(a1, a3);
  v17 = glp_serialized_integer32_control(a4);
  v18 = *(a1 + 260);
  v19 = v18 + 1;
  v20 = *(a1 + 256);
  if (v18 + 1 <= v20)
  {
    v23 = *(a1 + 264);
    v24 = *(a1 + 260);
  }

  else
  {
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v21 = 2 * v20;
    if (v21 <= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    v23 = (*(a1 + 232))(*(a1 + 224), v22, "Vector Storage (uint8_t, growth)");
    memcpy(v23, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v22;
    *(a1 + 264) = v23;
    v24 = *(a1 + 260);
  }

  memmove(&v23[v18 + 1], &v23[v18], (v24 - v18));
  *(*(a1 + 264) + v18) = v17;
  v25 = *(a1 + 260);
  v26 = v25 + 1;
  *(a1 + 260) = v25 + 1;
  if ((v17 & 0x80000000) != 0)
  {
    v27 = (v17 >> 1) & 7;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v46 = v25 + 4;
        v47 = *(a1 + 256);
        if (v46 <= v47)
        {
          v50 = *(a1 + 264);
          v51 = v26;
        }

        else
        {
          if (v47 <= 1)
          {
            v47 = 1;
          }

          v48 = 2 * v47;
          if (v48 <= v46)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          v50 = (*(a1 + 232))(*(a1 + 224), v49, "Vector Storage (uint8_t, growth)");
          memcpy(v50, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v49;
          *(a1 + 264) = v50;
          v51 = *(a1 + 260);
        }

        memmove(&v50[v26 + 1], &v50[v26], v51 - v26);
        v53 = *(a1 + 264) + v26;
        *(v53 + 2) = BYTE2(a4);
        *v53 = a4;
        v52 = 3;
      }

      else
      {
        if (v27 != 3)
        {
          goto LABEL_60;
        }

        v34 = v25 + 5;
        v35 = *(a1 + 256);
        if (v34 <= v35)
        {
          v38 = *(a1 + 264);
          v39 = v26;
        }

        else
        {
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = 2 * v35;
          if (v36 <= v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = v36;
          }

          v38 = (*(a1 + 232))(*(a1 + 224), v37, "Vector Storage (uint8_t, growth)");
          memcpy(v38, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v37;
          *(a1 + 264) = v38;
          v39 = *(a1 + 260);
        }

        memmove(&v38[v26 + 1], &v38[v26], v39 - v26);
        *(*(a1 + 264) + v26) = a4;
        v52 = 4;
      }
    }

    else if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_60;
      }

      v28 = v25 + 3;
      v29 = *(a1 + 256);
      if (v28 <= v29)
      {
        v32 = *(a1 + 264);
        v33 = v26;
      }

      else
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = 2 * v29;
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v31;
        *(a1 + 264) = v32;
        v33 = *(a1 + 260);
      }

      memmove(&v32[v26 + 1], &v32[v26], v33 - v26);
      *(*(a1 + 264) + v26) = a4;
      v52 = 2;
    }

    else
    {
      v40 = v25 + 2;
      v41 = *(a1 + 256);
      if (v40 <= v41)
      {
        v44 = *(a1 + 264);
        v45 = v26;
      }

      else
      {
        if (v41 <= 1)
        {
          v41 = 1;
        }

        v42 = 2 * v41;
        if (v42 <= v40)
        {
          v43 = v40;
        }

        else
        {
          v43 = v42;
        }

        v44 = (*(a1 + 232))(*(a1 + 224), v43, "Vector Storage (uint8_t, growth)");
        memcpy(v44, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v43;
        *(a1 + 264) = v44;
        v45 = *(a1 + 260);
      }

      memmove(&v44[v26 + 1], &v44[v26], v45 - v26);
      *(*(a1 + 264) + v26) = a4;
      v52 = 1;
    }

    v26 = *(a1 + 260) + v52;
    *(a1 + 260) = v26;
  }

LABEL_60:
  if (*(a1 + 300))
  {
    v54 = strlen(a5) + 1;
    v55 = v54 + v26;
    v56 = *(a1 + 256);
    if (v54 + v26 <= v56)
    {
      v59 = *(a1 + 264);
      v60 = v26;
    }

    else
    {
      if (v56 <= 1)
      {
        v56 = 1;
      }

      v57 = 2 * v56;
      if (v57 <= v55)
      {
        v58 = v55;
      }

      else
      {
        v58 = v57;
      }

      v59 = (*(a1 + 232))(*(a1 + 224), v58, "Vector Storage (uint8_t, growth)");
      memcpy(v59, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v58;
      *(a1 + 264) = v59;
      v60 = *(a1 + 260);
    }

    memmove(&v59[v26 + 1], &v59[v26], v60 - v26);
    memcpy((*(a1 + 264) + v26), a5, v54);
    *(a1 + 260) += v54;
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMStructTypeInContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 39;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeArrayOfLLVMTypes(a1, a2, a3);
  v13 = glp_serialized_integer32_control(0);
  v14 = *(a1 + 260);
  v15 = v14 + 1;
  v16 = *(a1 + 256);
  if (v14 + 1 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  *(*(a1 + 264) + v14) = v13;
  v21 = *(a1 + 260);
  v22 = v21 + 1;
  *(a1 + 260) = v21 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    v23 = (v13 >> 1) & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v42 = v21 + 4;
        v43 = *(a1 + 256);
        if (v42 <= v43)
        {
          v46 = *(a1 + 264);
          v47 = v22;
        }

        else
        {
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v44 = 2 * v43;
          if (v44 <= v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = v44;
          }

          v46 = (*(a1 + 232))(*(a1 + 224), v45, "Vector Storage (uint8_t, growth)");
          memcpy(v46, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v45;
          *(a1 + 264) = v46;
          v47 = *(a1 + 260);
        }

        memmove(&v46[v22 + 1], &v46[v22], v47 - v22);
        v49 = *(a1 + 264) + v22;
        *(v49 + 2) = 0;
        *v49 = 0;
        v48 = 3;
        goto LABEL_59;
      }

      if (v23 == 3)
      {
        v30 = v21 + 5;
        v31 = *(a1 + 256);
        if (v30 <= v31)
        {
          v34 = *(a1 + 264);
          v35 = v22;
        }

        else
        {
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = 2 * v31;
          if (v32 <= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v32;
          }

          v34 = (*(a1 + 232))(*(a1 + 224), v33, "Vector Storage (uint8_t, growth)");
          memcpy(v34, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v33;
          *(a1 + 264) = v34;
          v35 = *(a1 + 260);
        }

        memmove(&v34[v22 + 1], &v34[v22], v35 - v22);
        *(*(a1 + 264) + v22) = 0;
        v48 = 4;
        goto LABEL_59;
      }
    }

    else
    {
      if (!v23)
      {
        v36 = v21 + 2;
        v37 = *(a1 + 256);
        if (v36 <= v37)
        {
          v40 = *(a1 + 264);
          v41 = v22;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v39;
          *(a1 + 264) = v40;
          v41 = *(a1 + 260);
        }

        memmove(&v40[v22 + 1], &v40[v22], v41 - v22);
        *(*(a1 + 264) + v22) = 0;
        v48 = 1;
        goto LABEL_59;
      }

      if (v23 == 1)
      {
        v24 = v21 + 3;
        v25 = *(a1 + 256);
        if (v24 <= v25)
        {
          v28 = *(a1 + 264);
          v29 = v22;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v27;
          *(a1 + 264) = v28;
          v29 = *(a1 + 260);
        }

        memmove(&v28[v22 + 1], &v28[v22], v29 - v22);
        *(*(a1 + 264) + v22) = 0;
        v48 = 2;
LABEL_59:
        *(a1 + 260) += v48;
      }
    }
  }

  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

BOOL glpLLVMTypesEqual(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v10 = glpPrimitiveTypeGetScalarType(a2) == 5 || glpPrimitiveTypeGetScalarType(a2) == 36;
  v11 = glpPrimitiveTypeGetScalarType(a4) == 5 || glpPrimitiveTypeGetScalarType(a4) == 36;
  if (glpPrimitiveTypeGetCategory(a2) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a2);
  }

  else
  {
    Length = 1;
  }

  if (glpPrimitiveTypeGetCategory(a4) == 2)
  {
    v13 = glpPrimitiveVectorGetLength(a4);
  }

  else
  {
    v13 = 1;
  }

  if (a2 == a4 || (result = 0, v10 && v11) && Length == v13)
  {
    if (a3 == a5)
    {
      return 1;
    }

    ScalarType = glpPrimitiveTypeGetScalarType(a2);
    v16 = ScalarType;
    if (ScalarType <= 8)
    {
      if (ScalarType == 1)
      {
        v17 = &unk_23A29C360;
        goto LABEL_27;
      }

      if (ScalarType != 5)
      {
        return 0;
      }
    }

    else
    {
      result = 1;
      if (v16 == 9)
      {
        return result;
      }

      if (v16 != 36)
      {
        if (v16 == 62)
        {
          return result;
        }

        return 0;
      }
    }

    v17 = qword_23A29C380;
LABEL_27:
    if (a3 <= 3 && *(a1 + v17[a3]) > 0x10u)
    {
      v18 = 32;
    }

    else
    {
      v18 = 16;
    }

    if (a5 <= 3 && *(a1 + v17[a5]) > 0x10u)
    {
      v19 = 32;
    }

    else
    {
      v19 = 16;
    }

    return v18 == v19;
  }

  return result;
}

void *glpSerializeArrayOfLLVMTypes(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  LODWORD(v3) = a3;
  v6 = glp_serialized_integer32_control(a3);
  v7 = *(a1 + 260);
  v8 = v7 + 1;
  v9 = *(a1 + 256);
  if (v7 + 1 <= v9)
  {
    v12 = *(a1 + 264);
    v13 = *(a1 + 260);
  }

  else
  {
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 2 * v9;
    if (v10 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    v12 = (*(a1 + 232))(*(a1 + 224), v11, "Vector Storage (uint8_t, growth)");
    memcpy(v12, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v11;
    *(a1 + 264) = v12;
    v13 = *(a1 + 260);
  }

  result = memmove(&v12[v7 + 1], &v12[v7], (v13 - v7));
  *(*(a1 + 264) + v7) = v6;
  v15 = *(a1 + 260);
  v16 = v15 + 1;
  *(a1 + 260) = v15 + 1;
  if ((v6 & 0x80000000) != 0)
  {
    v17 = (v6 >> 1) & 7;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v36 = v15 + 4;
        v37 = *(a1 + 256);
        if (v36 <= v37)
        {
          v40 = *(a1 + 264);
          v41 = v16;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v39;
          *(a1 + 264) = v40;
          v41 = *(a1 + 260);
        }

        result = memmove(&v40[v16 + 1], &v40[v16], v41 - v16);
        v43 = *(a1 + 264) + v16;
        *(v43 + 2) = BYTE2(v3);
        *v43 = v3;
        v42 = 3;
      }

      else
      {
        if (v17 != 3)
        {
          goto LABEL_51;
        }

        v24 = v15 + 5;
        v25 = *(a1 + 256);
        if (v24 <= v25)
        {
          v28 = *(a1 + 264);
          v29 = v16;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v27;
          *(a1 + 264) = v28;
          v29 = *(a1 + 260);
        }

        result = memmove(&v28[v16 + 1], &v28[v16], v29 - v16);
        *(*(a1 + 264) + v16) = v3;
        v42 = 4;
      }
    }

    else if (v17)
    {
      v18 = v15 + 3;
      v19 = *(a1 + 256);
      if (v18 <= v19)
      {
        v22 = *(a1 + 264);
        v23 = v16;
      }

      else
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = 2 * v19;
        if (v20 <= v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = v20;
        }

        v22 = (*(a1 + 232))(*(a1 + 224), v21, "Vector Storage (uint8_t, growth)");
        memcpy(v22, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v21;
        *(a1 + 264) = v22;
        v23 = *(a1 + 260);
      }

      result = memmove(&v22[v16 + 1], &v22[v16], v23 - v16);
      *(*(a1 + 264) + v16) = v3;
      v42 = 2;
    }

    else
    {
      v30 = v15 + 2;
      v31 = *(a1 + 256);
      if (v30 <= v31)
      {
        v34 = *(a1 + 264);
        v35 = v16;
      }

      else
      {
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v32 = 2 * v31;
        if (v32 <= v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v32;
        }

        v34 = (*(a1 + 232))(*(a1 + 224), v33, "Vector Storage (uint8_t, growth)");
        memcpy(v34, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v33;
        *(a1 + 264) = v34;
        v35 = *(a1 + 260);
      }

      result = memmove(&v34[v16 + 1], &v34[v16], v35 - v16);
      *(*(a1 + 264) + v16) = v3;
      v42 = 1;
    }

    *(a1 + 260) += v42;
  }

LABEL_51:
  if (v3)
  {
    v3 = v3;
    do
    {
      v44 = *a2++;
      result = glpSerializeLLVMType(a1, v44);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t glpBuildArrayElementPtr(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (glpIsConstantNode(a4) && (Value = glpConstantNodeGetValue(a4), !a6))
  {
    v18 = *Value;
    v15 = glpBuildArrayElementPtrCst(a1, a2, a3, *Value);
    if (a5)
    {
      v17 = glpBuildArrayElementPtrCst(a1, a2, a3, v18 + 1);
LABEL_11:
      *a5 = v17;
    }
  }

  else
  {
    v13 = a1[65];
    if (!v13)
    {
      v13 = glpLLVMConstIntCache(a1, a1[5], 0, 0);
      a1[65] = v13;
    }

    v20 = v13;
    v14 = glpLLVMCGNode(a1, a4, 1);
    v21 = v14;
    v15 = glpLLVMBuildGEP2(a1, a3, &v20, 2, "ptr");
    if (a5)
    {
      v16 = a1[66];
      if (!v16)
      {
        v16 = glpLLVMConstIntCache(a1, a1[5], 1uLL, 0);
        a1[66] = v16;
      }

      v21 = glpLLVMBinaryOperation(a1, 53, v14, v16, "idx");
      v17 = glpLLVMBuildGEP2(a1, a3, &v20, 2, "nptr");
      goto LABEL_11;
    }
  }

  return v15;
}

uint64_t glpLLVMLoadVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  SourceVariable = glpLoadSourceVariable(a1, a3, a2);
  v13 = glpPrimitiveTypeToLLVMType(a1, a4, a5);
  if (a6)
  {
    v14 = v13;
    if (!glpLLVMTypesEqual(a1, a6, a7, a4, a5))
    {
      v15 = *(a1 + 260);
      v16 = v15 + 1;
      v17 = *(a1 + 256);
      if (v15 + 1 <= v17)
      {
        v20 = *(a1 + 264);
        v21 = *(a1 + 260);
      }

      else
      {
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = (*(a1 + 232))(*(a1 + 224), v19, "Vector Storage (uint8_t, growth)");
        memcpy(v20, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v19;
        *(a1 + 264) = v20;
        v21 = *(a1 + 260);
      }

      memmove(&v20[v15 + 1], &v20[v15], (v21 - v15));
      *(*(a1 + 264) + v15) = 107;
      ++*(a1 + 260);
      ++*(a1 + 296);
      glpSerializeLLVMValue(a1, SourceVariable);
      glpSerializeLLVMType(a1, v14);
      SourceVariable = *(a1 + 308);
      *(a1 + 308) = SourceVariable + 1;
    }
  }

  return SourceVariable;
}

uint64_t glpBuildArrayElementPtrCst(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v35[2] = *MEMORY[0x277D85DE8];
  Gep = glpFindGep(a1, a2, 0, a4);
  if (!Gep)
  {
    v9 = *(a1 + 520);
    if (!v9)
    {
      v9 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
      *(a1 + 520) = v9;
    }

    v35[0] = v9;
    v35[1] = glpLLVMConstIntCache(a1, *(a1 + 40), a4, 1);
    v10 = *(a1 + 260);
    v11 = v10 + 1;
    v12 = *(a1 + 256);
    if (v10 + 1 <= v12)
    {
      v15 = *(a1 + 264);
      v16 = *(a1 + 260);
    }

    else
    {
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = 2 * v12;
      if (v13 <= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v13;
      }

      v15 = (*(a1 + 232))(*(a1 + 224), v14, "Vector Storage (uint8_t, growth)");
      memcpy(v15, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v14;
      *(a1 + 264) = v15;
      v16 = *(a1 + 260);
    }

    memmove(&v15[v10 + 1], &v15[v10], (v16 - v10));
    *(*(a1 + 264) + v10) = 21;
    v17 = *(a1 + 260);
    v18 = v17 + 1;
    *(a1 + 260) = v17 + 1;
    ++*(a1 + 296);
    v19 = *(a1 + 312);
    *(a1 + 312) = v19 + 1;
    v20 = *(a1 + 184);
    v21 = v17 + 2;
    v22 = *(a1 + 256);
    if (v21 <= v22)
    {
      v25 = *(a1 + 264);
      v26 = v18;
    }

    else
    {
      if (v22 <= 1)
      {
        v22 = 1;
      }

      v23 = 2 * v22;
      if (v23 <= v21)
      {
        v24 = v21;
      }

      else
      {
        v24 = v23;
      }

      v25 = (*(a1 + 232))(*(a1 + 224), v24, "Vector Storage (uint8_t, growth)");
      memcpy(v25, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v24;
      *(a1 + 264) = v25;
      v26 = *(a1 + 260);
    }

    memmove(&v25[v18 + 1], &v25[v18], v26 - v18);
    *(*(a1 + 264) + v18) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v20);
    Gep = glpLLVMBuildGEP2(a1, a3, v35, 2, "ptr");
    v27 = *(a1 + 260);
    v28 = v27 + 1;
    v29 = *(a1 + 256);
    if (v27 + 1 <= v29)
    {
      v32 = *(a1 + 264);
      v33 = *(a1 + 260);
    }

    else
    {
      if (v29 <= 1)
      {
        v29 = 1;
      }

      v30 = 2 * v29;
      if (v30 <= v28)
      {
        v31 = v28;
      }

      else
      {
        v31 = v30;
      }

      v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
      memcpy(v32, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v31;
      *(a1 + 264) = v32;
      v33 = *(a1 + 260);
    }

    memmove(&v32[v27 + 1], &v32[v27], (v33 - v27));
    *(*(a1 + 264) + v27) = 23;
    ++*(a1 + 260);
    ++*(a1 + 296);
    glpSerializeLLVMBlock(a1, v19);
    glpAddGep(a1, a2, 0, a4, Gep);
  }

  return Gep;
}

uint64_t glpLoadSourceVariable(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a3 + 51))
  {
    v7 = glpLayoutObjectFind(*(a3 + 8), 35);
    *__str = 0u;
    v9 = 0u;
    snprintf(__str, 0x1FuLL, "user(slot%u)", *(v7 + 4));
    return glpBuildInterpolateAt(a1, a2, a3, *(a3 + 48), __str, 0);
  }

  else
  {

    return glpLLVMBuildLoad2(a1, a2, "srcPointer");
  }
}

uint64_t glpIsComponentAssigment(uint64_t result, unsigned int ***a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (glpASTNodeGetKind(result) == 39)
    {
      Lhs = glpBinaryOperatorNodeGetLhs(v11);
      VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
      result = glpDerefNodeGetOffset(Lhs);
      if (!result)
      {
        return result;
      }

      OffsetExpr = glpOffsetNodeGetOffsetExpr(result);
      if (OffsetExpr)
      {
        v15 = OffsetExpr;
        result = glpIsConstantNode(OffsetExpr);
        if (!result)
        {
          return result;
        }

        v16 = *glpConstantNodeGetValue(v15);
      }

      else
      {
        v16 = 0;
      }

      if (*a2)
      {
        if (*a2 == VariableExtra && !*a3 && *a4 == v16)
        {
LABEL_20:
          result = glpGetVectorSwizzle(Lhs, a5);
          if (result)
          {
            *a2 = VariableExtra;
            *a3 = 0;
            result = 1;
            *a4 = v16;
          }

          return result;
        }
      }

      else
      {
        v17 = *VariableExtra;
        if (!glpTypeGetKind(*VariableExtra))
        {
          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v17);
          Category = glpPrimitiveTypeGetCategory(PrimitiveType);
          if (Category == 2 || Category == 3 && !a6 && glpPrimitiveTypeGetScalarType(PrimitiveType) != 62)
          {
            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t glpProcessComponentWiseVectorAssignment(void *a1, unsigned int **a2, int a3, uint64_t *a4, unsigned int *a5, int a6, uint64_t a7)
{
  v7 = a7;
  v10 = a3;
  v114 = a2;
  v117 = *MEMORY[0x277D85DE8];
  v11 = (a7 - 1);
  v115 = a1;
  if (a7 >= 1)
  {
    LODWORD(v113) = a6;
    LODWORD(v111) = a3;
    v12 = 0;
    v116 = 0;
    v13 = 1;
    v112 = a7;
    v14 = a7;
    while (1)
    {
      v15 = v13;
      Rhs = glpBinaryOperatorNodeGetRhs(a4[v12]);
      Kind = glpASTNodeGetKind(Rhs);
      if (Kind == 3)
      {
        v13 = v15;
      }

      else
      {
        if (Kind != 81 || (VariableExtra = glpLValueNodeGetVariableExtra(Rhs), glpTypeGetKind(*VariableExtra)) || (*(VariableExtra + 52) & 1) != 0 || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*VariableExtra), glpPrimitiveTypeGetCategory(PrimitiveType) != 2) || (Offset = glpDerefNodeGetOffset(Rhs), VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset), OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset), glpOffsetNodeGetBankIndex(Offset)) || OffsetExpr || VectorElementExpr)
        {
          do
          {
            v27 = *a4++;
            v26 = v27;
            if (v113)
            {
              v28 = v11 == 0;
            }

            else
            {
              v28 = 0;
            }

            v29 = v28;
            v30 = glpLLVMCGNode(v115, v26, v29);
            --v11;
            --v14;
          }

          while (v14);
          return v30;
        }

        v13 = 0;
        v23 = v116 == VariableExtra || v116 == 0;
        if (v23 && (v15 & 1) != 0)
        {
          glpOffsetNodeGetSwizzle(Offset);
          v13 = 1;
          v116 = VariableExtra;
        }
      }

      if (++v12 >= v14)
      {
        v24 = v13 == 0;
        v25 = v115;
        v7 = v112;
        v10 = v111;
        goto LABEL_30;
      }
    }
  }

  v25 = a1;
  v116 = 0;
  v24 = 0;
LABEL_30:
  v32 = glpLLVMGetVariablePointer(v25, v114);
  v33 = *v114;
  v34 = glpTypeGetKind(*v114);
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v36 = glpPrimitiveTypeGetPrimitiveType(v33);
    Category = glpPrimitiveTypeGetCategory(v36);
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(v36);
      Length = glpPrimitiveVectorGetLength(ColumnType);
      v40 = v10;
      v35 = Length;
      v34 = glpBuildArrayElementPtrCst(v25, v114, v32, v40);
      v32 = v34;
    }

    else
    {
      if (Category != 2)
      {
        abort();
      }

      v34 = glpPrimitiveVectorGetLength(v36);
      v35 = v34;
    }
  }

  v23 = v35 == v7;
  v41 = v115;
  if (!v23)
  {
    goto LABEL_46;
  }

  if (v7 < 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0;
    v43 = v7 - 1;
    do
    {
      v44 = 1 << a5[v43];
      if ((v44 & v42) != 0)
      {
        a4[v43] = 0;
      }

      v42 |= v44;
      v45 = v43-- + 1;
    }

    while (v45 > 1);
  }

  if ((((v42 ^ (-1 << v7)) == -1) & ~v24) != 0)
  {
    v113 = v32;
    v53 = v7;
    MEMORY[0x28223BE20](v34);
    v55 = (v107 - v54);
    bzero(v107 - v54, 8 * v7);
    if (v7 < 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = 0;
      v58 = v7;
      do
      {
        v56 = *a4;
        if (*a4)
        {
          v59 = glpBinaryOperatorNodeGetRhs(v56);
          v55[*a5] = v59;
          v56 = glpASTNodeGetKind(v59);
          if (v56 == 3)
          {
            ++v57;
          }
        }

        ++a5;
        ++a4;
        --v58;
      }

      while (v58);
    }

    v60 = 8 * v7;
    if (v57 == v7)
    {
      MEMORY[0x28223BE20](v56);
      bzero(v107 - ((v60 + 15) & 0xFFFFFFFF0), 8 * v7);
      v61 = v115;
      if (v7)
      {
        v62 = (v107 - ((v60 + 15) & 0xFFFFFFFF0));
        do
        {
          v63 = *v55++;
          *v62++ = glpLLVMCGNode(v61, v63, 0);
          --v53;
        }

        while (v53);
      }

      SourceVariable = glpLLVMConstVectorCache(v61, v107 - ((v60 + 15) & 0xFFFFFFFF0), v7);
    }

    else
    {
      v110 = v107;
      v65 = v115;
      v66 = v116;
      v67 = glpLLVMGetVariablePointer(v115, v116);
      SourceVariable = glpLoadSourceVariable(v65, v67, v66);
      v68 = glpLLVMTypeOf(v65, SourceVariable);
      v109 = v107;
      MEMORY[0x28223BE20](v68);
      v69 = v107 - ((v60 + 15) & 0xFFFFFFFF0);
      bzero(v69, 8 * v7);
      v114 = v69;
      bzero(v69, 8 * v7);
      v70 = glpPrimitiveTypeGetPrimitiveType(*v66);
      v71 = glpPrimitiveVectorGetLength(v70);
      v72 = glpLLVMConstFromTypeCache(v65, 37, v68);
      v73 = 0;
      v116 = v71;
      v112 = v7;
      if (v57 && v71 >= v57)
      {
        v107[1] = v107;
        v108 = SourceVariable;
        MEMORY[0x28223BE20](v72);
        v74 = v7;
        v7 = v107 - v75;
        bzero(v107 - v75, v76);
        if (v74)
        {
          v77 = 0;
          v78 = v114;
          v111 = v115 + 65;
          v79 = v53;
          v80 = v55;
          do
          {
            v81 = *v80;
            if (glpASTNodeGetKind(*v80) == 3)
            {
              v82 = v115;
              *(v7 + 8 * v77) = glpLLVMCGNode(v115, v81, 0);
              v83 = (v77 + v116);
              if (v83 > 7)
              {
                v84 = glpLLVMConstIntCache(v82, *(v82 + 40), v83, 1);
              }

              else
              {
                v84 = v111[v83];
                if (!v84)
                {
                  v84 = glpLLVMConstIntCache(v115, v115[5], v83, 0);
                  v111[v83] = v84;
                }
              }

              *v78 = v84;
              ++v77;
            }

            ++v78;
            ++v80;
            --v79;
          }

          while (v79);
        }

        v85 = v115;
        v86 = v116 - v57;
        if (v116 > v57)
        {
          v87 = 8 * v57;
          do
          {
            v88 = glpLLVMTypeOf(v85, *v7);
            *(v7 + v87) = glpLLVMConstFromTypeCache(v85, 37, v88);
            v87 += 8;
            --v86;
          }

          while (v86);
        }

        v72 = glpLLVMConstVectorCache(v85, v7, v116);
        v73 = 1;
        SourceVariable = v108;
        LODWORD(v7) = v112;
      }

      v111 = v72;
      if (v7)
      {
        v89 = 0;
        v90 = (2 * v116 - 1);
        v91 = 2 * v116 - 1;
        v92 = v115 + 65;
        do
        {
          v93 = v55[v89];
          if (glpASTNodeGetKind(v93) == 81)
          {
            v94 = glpDerefNodeGetOffset(v93);
            v95 = (glpOffsetNodeGetSwizzle(v94) >> 3) & 3;
            v96 = v92[v95];
            if (!v96)
            {
              v96 = glpLLVMConstIntCache(v115, v115[5], v95, 0);
              v92[v95] = v96;
            }

            v114[v89] = v96;
            if (v89 != v95)
            {
              v73 = 1;
            }
          }

          else if (!v114[v89])
          {
            if (v91 > 7)
            {
              v97 = glpLLVMConstIntCache(v115, v115[5], v90, 1);
            }

            else
            {
              v97 = v92[v90];
              if (!v97)
              {
                v97 = glpLLVMConstIntCache(v115, v115[5], v90, 0);
                v92[v90] = v97;
              }
            }

            v114[v89] = v97;
            v73 = 1;
          }

          ++v89;
        }

        while (v53 != v89);
      }

      v98 = v112;
      v99 = v116;
      if (v73 || v116 != v112)
      {
        v61 = v115;
        v100 = glpLLVMConstVectorCache(v115, v114, v112);
        SourceVariable = glpLLVMBuildShuffleVector(v61, SourceVariable, v111, v100, "swz");
      }

      else
      {
        v61 = v115;
      }

      if (v57 && v99 < v57 && v98)
      {
        v101 = 0;
        do
        {
          v102 = v55[v101];
          if (glpASTNodeGetKind(v102) == 3)
          {
            v103 = glpLLVMCGNode(v61, v102, 0);
            if (v101 > 7)
            {
              v105 = glpLLVMConstIntCache(v61, *(v61 + 40), v101, 1);
            }

            else
            {
              v104 = v61 + 8 * v101;
              v105 = *(v104 + 520);
              if (!v105)
              {
                v105 = glpLLVMConstIntCache(v61, *(v61 + 40), v101, 0);
                *(v104 + 520) = v105;
              }
            }

            SourceVariable = glpLLVMBuildInsertElement(v61, SourceVariable, v103, v105, "");
          }

          ++v101;
        }

        while (v53 != v101);
      }
    }

    glpLLVMBuildStore(v61, SourceVariable, v113);
    return 0;
  }

  else
  {
LABEL_46:
    inserted = glpLLVMBuildLoad2(v41, v32, "destVector");
    if (v7 >= 1)
    {
      v46 = v41 + 520;
      v47 = v7;
      do
      {
        v48 = glpBinaryOperatorNodeGetRhs(*a4);
        v49 = glpLLVMCGNode(v41, v48, 1);
        v51 = *a5++;
        v50 = v51;
        if (v51 > 7)
        {
          v52 = glpLLVMConstIntCache(v41, *(v41 + 40), v50, 1);
        }

        else
        {
          v52 = *(v46 + 8 * v50);
          if (!v52)
          {
            v52 = glpLLVMConstIntCache(v41, *(v41 + 40), v50, 0);
            *(v46 + 8 * v50) = v52;
          }
        }

        inserted = glpLLVMBuildInsertElement(v41, inserted, v49, v52, "res");
        ++a4;
        --v47;
      }

      while (v47);
    }

    glpLLVMBuildStore(v41, inserted, v32);
  }

  return inserted;
}

uint64_t glpGetVectorSwizzle(uint64_t a1, unsigned int *a2)
{
  result = glpDerefNodeGetOffset(a1);
  if (result)
  {
    v4 = result;
    if (glpOffsetNodeGetVectorElementExpr(result))
    {
      return 0;
    }

    Swizzle = glpOffsetNodeGetSwizzle(v4);
    if ((Swizzle & 7) != 1)
    {
      return 0;
    }

    else
    {
      *a2 = (Swizzle >> 3) & 3;
      return 1;
    }
  }

  return result;
}

uint64_t glpLLVMCGGlobalVariable(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 0x980) != 0)
  {
    *(a1 + 326) = 1;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    v15 = 0;
    v16 = 0;
LABEL_41:
    v31 = glpPrecisionIndexFromSAFlags(*(a2 + 48));
    v32 = glpTypeToLLVMTypeWithUnderlying(a1, *a2, v31, a2);
    v33 = *(a2 + 8);
    if (v33)
    {
      v34 = glpLayoutObjectFind(v33, 83) == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = *(a1 + 320);
    switch(v35)
    {
      case 3:
        if ((v16 & v34) == 1)
        {
          v36 = 0;
          v37 = *(a1 + 792);
          goto LABEL_60;
        }

        break;
      case 2:
        if (v16)
        {
          v36 = 0;
          v38 = (*(a2 + 53) & 2) == 0 && v34;
          v39 = *(*(a1 + 128) + 320);
          if (v39)
          {
            v37 = v39;
          }

          else
          {
            v37 = 32;
          }

          if (!v38)
          {
            v40 = 0;
LABEL_63:
            result = glpLLVMPointerType(a1, v32, v36);
            v41 = *(a2 + 144);
            *v41 = result;
            *(v41 + 32) = *(v41 + 32) & 0xFFFFFFFB | v40;
            return result;
          }

LABEL_60:
          v32 = glpLLVMArrayType(a1, v32, v37);
          v40 = 4;
          goto LABEL_63;
        }

        break;
      case 1:
        if (v15)
        {
          v36 = 3;
        }

        else
        {
          v36 = 0;
        }

        if (v16 & v34)
        {
          v37 = 32;
          goto LABEL_60;
        }

LABEL_62:
        v40 = 0;
        goto LABEL_63;
    }

    v36 = 0;
    goto LABEL_62;
  }

  v5 = glpLayoutObjectFind(v4, 33);
  if (v5)
  {
    v6 = *(v5 + 4);
    switch(v6)
    {
      case 5:
        v7 = (a1 + 692);
        v8 = *(a1 + 692);
        v17 = *(a1 + 688);
        if (v8 + 1 <= v17)
        {
          v21 = *(a1 + 696);
          v22 = *(a1 + 692);
        }

        else
        {
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v18 = 2 * v17;
          if (v18 <= v8 + 1)
          {
            v19 = v8 + 1;
          }

          else
          {
            v19 = v18;
          }

          v20 = *(a1 + 152);
          v21 = (v20[1])(*v20, 8 * v19, "Vector Storage (GLPVariableObject *, growth)");
          memcpy(v21, *(a1 + 696), 8 * *(a1 + 692));
          (v20[3])(*v20, *(a1 + 696));
          *(a1 + 688) = v19;
          *(a1 + 696) = v21;
          v22 = *(a1 + 692);
        }

        v29 = (a1 + 696);
        memmove(&v21[8 * v8 + 8], &v21[8 * v8], 8 * (v22 - v8));
        v16 = 0;
        v15 = 1;
        goto LABEL_38;
      case 3:
        if ((~*(a1 + 832) & 3) != 0)
        {
          v7 = (a1 + 692);
          v8 = *(a1 + 692);
          v23 = *(a1 + 688);
          if (v8 + 1 <= v23)
          {
            v27 = *(a1 + 696);
            v28 = *(a1 + 692);
          }

          else
          {
            if (v23 <= 1)
            {
              v23 = 1;
            }

            v24 = 2 * v23;
            if (v24 <= v8 + 1)
            {
              v25 = v8 + 1;
            }

            else
            {
              v25 = v24;
            }

            v26 = *(a1 + 152);
            v27 = (v26[1])(*v26, 8 * v25, "Vector Storage (GLPVariableObject *, growth)");
            memcpy(v27, *(a1 + 696), 8 * *(a1 + 692));
            (v26[3])(*v26, *(a1 + 696));
            *(a1 + 688) = v25;
            *(a1 + 696) = v27;
            v28 = *(a1 + 692);
          }

          v29 = (a1 + 696);
          memmove(&v27[8 * v8 + 8], &v27[8 * v8], 8 * (v28 - v8));
          v15 = 0;
          v16 = 0;
          goto LABEL_38;
        }

        break;
      case 0:
        v7 = (a1 + 676);
        v8 = *(a1 + 676);
        v9 = *(a1 + 672);
        if (v8 + 1 <= v9)
        {
          v13 = *(a1 + 680);
          v14 = *(a1 + 676);
        }

        else
        {
          if (v9 <= 1)
          {
            v9 = 1;
          }

          v10 = 2 * v9;
          if (v10 <= v8 + 1)
          {
            v11 = v8 + 1;
          }

          else
          {
            v11 = v10;
          }

          v12 = *(a1 + 152);
          v13 = (v12[1])(*v12, 8 * v11, "Vector Storage (GLPVariableObject *, growth)");
          memcpy(v13, *(a1 + 680), 8 * *(a1 + 676));
          (v12[3])(*v12, *(a1 + 680));
          *(a1 + 672) = v11;
          *(a1 + 680) = v13;
          v14 = *(a1 + 676);
        }

        v29 = (a1 + 680);
        memmove(&v13[8 * v8 + 8], &v13[8 * v8], 8 * (v14 - v8));
        v15 = 0;
        v16 = 1;
LABEL_38:
        *(*v29 + 8 * v8) = a2;
        ++*v7;
        goto LABEL_39;
    }
  }

  v15 = 0;
  v16 = 0;
LABEL_39:
  result = glpLayoutObjectFind(*(a2 + 8), 46);
  if (!result || (*(result + 16) - 9) >= 2)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t glpTypeToLLVMTypeWithUnderlying(void *a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *(a4[18] + 24) = 0;
  }

  Kind = glpTypeGetKind(a2);
  if (Kind >= 2)
  {
    if (Kind > 2)
    {
LABEL_38:
      abort();
    }

LABEL_16:
    v15 = glpLLVMGetAggregateType(a1, a2, a3, a4);
    goto LABEL_20;
  }

  if (!Kind)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) != 3 || glpPrimitiveTypeGetScalarType(PrimitiveType) != 62)
    {
      v15 = glpPrimitiveTypeToLLVMType(a1, PrimitiveType, a3);
LABEL_20:
      v17 = v15;
      if (!a4)
      {
        return v17;
      }

      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (Kind != 1)
  {
    goto LABEL_38;
  }

  ElementCount = glpAggregateTypeGetElementCount(a2);
  v10 = ElementCount;
  if (!ElementCount)
  {
    MEMORY[0x28223BE20](ElementCount);
    v19 = (v32 - v25);
    goto LABEL_27;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      ElementType = glpAggregateTypeGetElementType(a2, v11);
      if (glpTypeIsAtomic(ElementType))
      {
        break;
      }

      v12 = 0;
      if (++v11 == v10)
      {
        goto LABEL_16;
      }
    }

    v14 = glpPrimitiveTypeGetPrimitiveType(ElementType);
    if ((v14 & 0xFFFFFFFE) == 0x40)
    {
      v12 = 0;
    }

    ++v11;
  }

  while (v11 != v10);
  if (!v12)
  {
    goto LABEL_16;
  }

  MEMORY[0x28223BE20](v14);
  v19 = (v32 - v18);
  bzero(v32 - v18, v20);
  v21 = 0;
  do
  {
    v22 = glpAggregateTypeGetElementType(a2, v21);
    ElementFlags = glpAggregateTypeGetElementFlags(a2, v21);
    v24 = glpPrecisionIndexFromSAFlags(ElementFlags);
    v19[v21++] = glpTypeToLLVMTypeWithUnderlying(a1, v22, v24, a4);
  }

  while (v10 != v21);
LABEL_27:
  v17 = glpLLVMStructTypeInContext(a1, v19, v10);
  if (!a4)
  {
    return v17;
  }

LABEL_28:
  v26 = a4[1];
  if (!v26 || (v27 = glpLayoutObjectFind(v26, 34)) == 0)
  {
    v28 = a4[6];
LABEL_34:
    v30 = v28 & 0xFFFFFFFFFEFFFFFFLL;
    a4[6] = v30;
    if ((v30 & 0x1000000) == 0)
    {
      return v17;
    }

    goto LABEL_35;
  }

  v28 = a4[6];
  if (*(v27 + 4) != 28)
  {
    goto LABEL_34;
  }

  if ((v28 & 0x1000000) == 0)
  {
    return v17;
  }

LABEL_35:
  *(a4[18] + 24) = glpPrimitiveTypeGetPrimitiveType(a2);
  v31 = glpLLVMGetNamedType(a1, "struct._interpolant_t");

  return glpLLVMPointerType(a1, v31, 1);
}

uint64_t glpLLVMGetAggregateType(void *a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v19 = a3;
  v20 = 1;
  v7 = glpLLVMGetMinCommonType(a2, &v20, &v19);
  if (glpTypeGetKind(a2) == 3)
  {
    ElementCount = glpBankTypeGetElementCount(a2);
    ElementType = glpBankTypeGetElementType(a2);
    glpABIGetTypeSize(0, ElementType, 0);
    glpTypeSizeGetSize();
    v11 = (v10 * ElementCount);
    if (a4)
    {
LABEL_3:
      v12 = v20;
      VectorType = glpGetVectorType(v7, v20);
      v14 = *(a4 + 144);
      v15 = v19;
      *(v14 + 24) = VectorType;
      *(v14 + 28) = v15;
      goto LABEL_6;
    }
  }

  else
  {
    glpABIGetTypeSize(0, a2, 0);
    glpTypeSizeGetSize();
    v11 = v16;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = v19;
  v12 = v20;
LABEL_6:
  v17 = glpPrimitiveTypeToLLVMType(a1, v7, v15);
  if (v12 >= 2)
  {
    v17 = glpLLVMVectorType(a1, v17, v12);
  }

  return glpLLVMArrayType(a1, v17, v11);
}

uint64_t glpLLVMBuildFunctionType(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  v88 = *MEMORY[0x277D85DE8];
  if ((a6 & 2) != 0)
  {
    v9 = *(a1 + 708);
    if ((a6 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if ((a6 & 4) != 0)
    {
LABEL_3:
      v10 = *(a1 + 724);
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = *(a1 + 88);
  v12 = a5 + a4;
  v13 = *(a1 + 832);
  v15 = (v13 & 2) == 0 || v10 < 1;
  v16 = (v13 & 1) == 0 || v15;
  v17 = (v13 & 1) != 0 && !v15;
  v85 = v16;
  if ((a6 & 8) != 0)
  {
    v18 = *(a1 + 596);
  }

  else
  {
    v18 = 0;
  }

  v84 = a6 & 1;
  v86 = v18;
  v80 = v84 + v12 + v9 + v10 + v17;
  v19 = (v80 + 2 * v18);
  MEMORY[0x28223BE20](a1);
  v87 = (&v77 - v20);
  bzero(&v77 - v20, v21);
  if (a3)
  {
    v81 = v12;
    v83 = v11;
    v23 = *(a1 + 676);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 8 * v23;
      while (1)
      {
        v27 = *(*(a1 + 680) + v24);
        v28 = glpLayoutObjectFind(*(v27 + 8), 34);
        v22 = glpPrecisionIndexFromSAFlags(*(v27 + 48));
        v29 = *(a1 + 320);
        if ((v29 - 1) >= 3)
        {
          if (v29 == 4)
          {
            if (*(v28 + 4) == 24)
            {
              goto LABEL_30;
            }

LABEL_38:
            v22 = glpTypeToLLVMTypeWithUnderlying(a1, *v27, v22, v27);
            v87[v25] = v22;
            goto LABEL_29;
          }

          if (v29)
          {
            goto LABEL_30;
          }

          v32 = *(v28 + 4);
          if ((v32 - 17) < 2)
          {
            if ((*(a1 + 832) & 1) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_38;
          }

          if (v32 != 28)
          {
            goto LABEL_30;
          }

          v22 = glpTypeToLLVMTypeWithUnderlying(a1, *v27, v22, v27);
          v31 = v22;
          if ((*(a1 + 832) & 1) == 0)
          {
            v22 = glpLLVMPointerType(a1, v22, 1);
            goto LABEL_27;
          }
        }

        else
        {
          v30 = *(v27 + 144);
          v31 = *v30;
          if ((*(v30 + 32) & 4) == 0)
          {
            v22 = glpLLVMGetElementType(a1, v31);
LABEL_27:
            v31 = v22;
          }
        }

        v87[v25] = v31;
LABEL_29:
        ++v25;
LABEL_30:
        v24 += 8;
        if (v26 == v24)
        {
          goto LABEL_51;
        }
      }
    }

    v25 = 0;
LABEL_51:
    if (*(a1 + 804))
    {
      v87[v25++] = *(a1 + 40);
    }

    if (*(a1 + 812))
    {
      v87[v25++] = *(a1 + 40);
    }

    v41 = *(a1 + 820);
    v82 = v19;
    if (v41)
    {
      v87[v25++] = *(a1 + 40);
    }

    v79 = &v77;
    v42 = *(a1 + 692);
    v43 = 8 * v42;
    MEMORY[0x28223BE20](v22);
    v44 = &v77 - ((8 * v42 + 15) & 0xFFFFFFFF0);
    bzero(v44, 8 * v42);
    v78 = v42;
    if (v42 >= 1)
    {
      v45 = 0;
      while (1)
      {
        v46 = *(*(a1 + 696) + v45);
        v47 = glpPrecisionIndexFromSAFlags(*(v46 + 48));
        v48 = *(a1 + 320);
        if (v48 > 1)
        {
          break;
        }

        if (!v48)
        {
          goto LABEL_67;
        }

        if (v48 == 1)
        {
          goto LABEL_66;
        }

LABEL_80:
        v45 += 8;
        if (v43 == v45)
        {
          goto LABEL_81;
        }
      }

      switch(v48)
      {
        case 4:
          if (*(glpLayoutObjectFind(*(v46 + 8), 68) + 4) != 4)
          {
            goto LABEL_78;
          }

          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v46);
          if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2 && glpPrimitiveVectorGetLength(PrimitiveType) > 3)
          {
            goto LABEL_78;
          }

          ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
          v55 = glpPrimitiveTypeToLLVMType(a1, ScalarType, v47);
          v49 = glpLLVMVectorType(a1, v55, 4);
          break;
        case 3:
LABEL_66:
          v49 = **(v46 + 144);
          break;
        case 2:
LABEL_67:
          if ((*(a1 + 832) & 1) == 0)
          {
            goto LABEL_78;
          }

          v50 = glpLayoutObjectFind(*(v46 + 8), 69);
          v51 = glpLayoutObjectFind(*(v46 + 8), 70);
          if (v51)
          {
            v52 = *(v51 + 4) == 0;
            if (!v50)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v52 = 1;
            if (!v50)
            {
              goto LABEL_78;
            }
          }

          if (*(v50 + 4) == 5 && v52)
          {
            v49 = glpPrimitiveTypeToLLVMType(a1, 4, v47);
            break;
          }

LABEL_78:
          v49 = glpTypeToLLVMTypeWithUnderlying(a1, *v46, v47, v46);
          break;
        default:
          goto LABEL_80;
      }

      *&v44[v45] = v49;
      goto LABEL_80;
    }

LABEL_81:
    if ((*(a1 + 320) | 2) == 3)
    {
      memcpy(&v87[v25], &v77 - ((v43 + 15) & 0xFFFFFFFF0), v43);
      v56 = 0;
      v19 = v82;
      v11 = v83;
    }

    else
    {
      v19 = v82;
      v11 = v83;
      if (v78)
      {
        v56 = glpLLVMStructTypeInContext(a1, (&v77 - ((v43 + 15) & 0xFFFFFFFF0)), v78);
        v11 = v56;
      }

      else
      {
        v56 = 0;
      }
    }

    v12 = v81;
    *(a1 + 200) = v56;
  }

  else
  {
    v33 = *(a2 + 32);
    if (v33)
    {
      v81 = v12;
      v82 = v19;
      v83 = v11;
      v34 = 0;
      for (i = 0; i < v33; ++i)
      {
        v36 = *(a2 + 40);
        v37 = *(v36 + v34);
        if (v37)
        {
          v38 = *(v36 + v34 + 8);
          v39 = *(v38 + 144);
          if (!v39)
          {
            v40 = (*(*(a1 + 152) + 8))(**(a1 + 152), 40, "llvm codegen extra");
            *(v38 + 144) = v40;
            *v40 = 0u;
            *(v40 + 16) = 0u;
            *(v40 + 32) = 0;
            glpLLVMCGGlobalVariable(a1, v38);
            v39 = *(v38 + 144);
            v33 = *(a2 + 32);
          }

          *(v87 + (((v37 << 32) - 0x100000000) >> 29)) = *v39;
        }

        v34 += 24;
      }

      v19 = v82;
      v11 = v83;
      v12 = v81;
    }
  }

  v57 = glpLLVMVectorType(a1, *(a1 + 72), 4);
  if (v84)
  {
    v58 = glpLLVMPointerType(a1, v57, 2);
    v87[v12++] = v58;
  }

  if (v9 >= 1)
  {
    v59 = v12;
    v60 = &v87[v12];
    v61 = v9 + v59;
    do
    {
      *v60++ = glpLLVMPointerType(a1, v57, 2);
      --v9;
    }

    while (v9);
    v12 = v61;
  }

  if (v10 >= 1)
  {
    v62 = &v87[v12];
    v12 += v10;
    do
    {
      *v62++ = glpLLVMPointerType(a1, v57, 1);
      --v10;
    }

    while (v10);
  }

  if ((v85 & 1) == 0)
  {
    v63 = glpLLVMPointerType(a1, *(a1 + 40), 1);
    v87[v12] = v63;
  }

  if (v86 >= 1)
  {
    v64 = v86;
    v65 = &v87[v80];
    v66 = &v87[v86 + v80];
    v67 = (*(a1 + 600) + 24);
    do
    {
      v68 = *(v67 - 1);
      *v65++ = *v67;
      *v66++ = v68;
      v67 += 6;
      --v64;
    }

    while (v64);
  }

  v69 = *(a1 + 260);
  v70 = v69 + 1;
  v71 = *(a1 + 256);
  if (v69 + 1 <= v71)
  {
    v74 = *(a1 + 264);
    v75 = *(a1 + 260);
  }

  else
  {
    if (v71 <= 1)
    {
      v71 = 1;
    }

    v72 = 2 * v71;
    if (v72 <= v70)
    {
      v73 = v70;
    }

    else
    {
      v73 = v72;
    }

    v74 = (*(a1 + 232))(*(a1 + 224), v73, "Vector Storage (uint8_t, growth)");
    memcpy(v74, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v73;
    *(a1 + 264) = v74;
    v75 = *(a1 + 260);
  }

  memmove(&v74[v69 + 1], &v74[v69], (v75 - v69));
  *(*(a1 + 264) + v69) = 11;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, v11);
  glpSerializeArrayOfLLVMTypes(a1, v87, v19);
  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

uint64_t glpMetalGetArgTypeNameFromASTType(char *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  result = glpTypeGetKind(a2);
  if (!result)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
    result = glpPrimitiveTypeGetCategory(PrimitiveType);
    if (result > 1)
    {
      if (result == 2)
      {
        glpPrimitiveVectorGetLength(PrimitiveType);
        ElementType = glpPrimitiveVectorGetElementType(PrimitiveType);
        glpScalarTypeGetMetalArgType(ElementType, v5, 0);
        return snprintf_l(a1, 0x200uLL, 0, "%s%u");
      }

      else if (result == 3)
      {
        ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
        glpPrimitiveMatrixGetColumns(PrimitiveType);
        glpPrimitiveMatrixGetRows(PrimitiveType);
        glpScalarTypeGetMetalArgType(ColumnType, v5, 0);
        return snprintf_l(a1, 0x200uLL, 0, "%s%ux%u");
      }
    }

    else if (result)
    {
      if (result == 1)
      {
        glpScalarTypeGetMetalArgType(PrimitiveType, v5, v4);
        return snprintf_l(a1, 0x200uLL, 0, "%s");
      }
    }

    else
    {

      return snprintf_l(a1, 0x200uLL, 0, "void");
    }
  }

  return result;
}

uint64_t glpLLVMVertexGeometryMetadata(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = glpLayoutObjectFind(*(a2 + 8), 68);
  memset(v33, 0, sizeof(v33));
  if ((*(a1 + 320) | 2) == 3)
  {
    if (a3 > 7)
    {
      v7 = glpLLVMConstIntCache(a1, *(a1 + 40), a3, 1);
    }

    else
    {
      v7 = *(a1 + 520 + 8 * a3);
      if (!v7)
      {
        v7 = glpLLVMConstIntCache(a1, *(a1 + 40), a3, 0);
        *(a1 + 520 + 8 * a3) = v7;
      }
    }

    *&v33[0] = v7;
    *(&v33[0] + 1) = glpLLVMStringMetadata(a1, "air.geometry_output");
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 4);
  if (v9 > 10)
  {
    if (v9 <= 13)
    {
      if (v9 == 11)
      {
        v13 = "air.primitive_id";
      }

      else if (v9 == 12)
      {
        v13 = "air.render_target_array_index";
      }

      else
      {
        v13 = "air.edge_tessellation_factor";
      }

      goto LABEL_48;
    }

    if (v9 == 14)
    {
      v13 = "air.inside_tessellation_factor";
      goto LABEL_48;
    }

    if (v9 == 16)
    {
      v13 = "air.viewport_array_index";
      goto LABEL_48;
    }

    if (v9 != 17)
    {
      return glpLLVMMDNodeInContext(a1, v33, v8);
    }

    v17 = glpLayoutObjectFind(*(a2 + 8), 69);
    v18 = *(a2 + 48);
    v19 = "air.no_perspective";
    if ((v18 & 0x2000000000) == 0)
    {
      v19 = "air.perspective";
    }

    if ((v18 & 0x1000000000) != 0)
    {
      v20 = "air.flat";
    }

    else
    {
      v20 = v19;
    }

    v21 = "air.center";
    if ((v18 & 0x1000000000) == 0)
    {
      if ((v18 & 0x4000000000) != 0)
      {
        v21 = "air.centroid";
      }

      else if ((v18 & 0x40000000000) != 0)
      {
        v21 = "air.sample";
      }
    }

    if ((*(a1 + 320) | 2) == 2)
    {
      *(v33 + v8) = glpLLVMStringMetadata(a1, "air.vertex_output");
      LODWORD(v8) = v8 | 1;
    }

    if (*(a1 + 832))
    {
      *__str = 0u;
      v32 = 0u;
      v25 = *(v17 + 4);
      v26 = glpLayoutObjectFind(*(a2 + 8), 70);
      if (v26)
      {
        v27 = *(v26 + 4) == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27 && (v25 & 0xFFFFFFF8) == 8)
      {
        snprintf(__str, 0x1FuLL, "user(tex_coord%u)");
      }

      else if ((*(a2 + 53) & 2) != 0)
      {
        snprintf(__str, 0x1FuLL, "user(patch%u)");
      }

      else
      {
        snprintf(__str, 0x1FuLL, "user(slot%u)");
      }

      v28 = (v8 + 1);
      *(v33 + v8) = glpLLVMStringMetadata(a1, __str);
      if (*(a1 + 320) == 1)
      {
        ElementType = *a2;
        if (glpTypeGetKind(ElementType) == 3)
        {
          ElementType = glpBankTypeGetElementType(ElementType);
        }

        *(v33 + v28) = glpLLVMStringMetadata(a1, "air.vec4_size");
        glpTypeGetVec4s_0(ElementType);
        *(v33 + (v8 + 2)) = glpGetConstantInt32(a1, v30);
        v28 = (v8 + 3);
      }

      v8 = v28;
    }

    else
    {
      *(v33 + v8) = glpLLVMStringMetadata(a1, "air.location");
      v23 = *(v17 + 4);
      if (v23 > 7)
      {
        v24 = glpLLVMConstIntCache(a1, *(a1 + 40), v23, 1);
      }

      else
      {
        v24 = *(a1 + 520 + 8 * v23);
        if (!v24)
        {
          v24 = glpLLVMConstIntCache(a1, *(a1 + 40), *(v17 + 4), 0);
          *(a1 + 520 + 8 * v23) = v24;
        }
      }

      *(v33 + (v8 + 1)) = v24;
      v8 = (v8 + 2);
    }

    if (*(a1 + 320) | 2) == 2 && (*(a1 + 832))
    {
      return glpLLVMMDNodeInContext(a1, v33, v8);
    }

    *(v33 + v8) = glpLLVMStringMetadata(a1, v20);
    *(v33 + (v8 + 1)) = glpLLVMStringMetadata(a1, v21);
LABEL_78:
    v8 = (v8 + 2);
    return glpLLVMMDNodeInContext(a1, v33, v8);
  }

  if (v9 > 4)
  {
    if (v9 == 5)
    {
      v10 = *(glpLayoutObjectFind(*(a2 + 8), 74) + 4);
      v11 = "air.back_secondary_color";
      v12 = "air.front_secondary_color";
LABEL_40:
      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      goto LABEL_48;
    }

    if (v9 == 9)
    {
      *(a1 + 744) |= 4uLL;
      v13 = "air.clip_vertex";
      goto LABEL_48;
    }

    if (v9 != 10)
    {
      return glpLLVMMDNodeInContext(a1, v33, v8);
    }

    v14 = glpLayoutObjectFind(*(a2 + 8), 75);
    *(v33 + v8) = glpLLVMStringMetadata(a1, "air.clip_distance");
    v15 = *(v14 + 4);
    if (v15 > 7)
    {
      v16 = glpLLVMConstIntCache(a1, *(a1 + 40), v15, 1);
    }

    else
    {
      v16 = *(a1 + 520 + 8 * v15);
      if (!v16)
      {
        v16 = glpLLVMConstIntCache(a1, *(a1 + 40), v15, 0);
        *(a1 + 520 + 8 * v15) = v16;
      }
    }

    *(v33 + (v8 | 1)) = v16;
    goto LABEL_78;
  }

  switch(v9)
  {
    case 1:
      v13 = "air.position";
LABEL_48:
      *(v33 + v8) = glpLLVMStringMetadata(a1, v13);
      v8 = v8 | 1;
      return glpLLVMMDNodeInContext(a1, v33, v8);
    case 3:
      v13 = "air.point_size";
      goto LABEL_48;
    case 4:
      v10 = *(glpLayoutObjectFind(*(a2 + 8), 71) + 4);
      v11 = "air.back_color";
      v12 = "air.front_color";
      goto LABEL_40;
  }

  return glpLLVMMDNodeInContext(a1, v33, v8);
}

const char *glpScalarTypeGetMetalArgType(int a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a1 == 5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = 36;
  }

  else
  {
    v4 = a1;
  }

  if (v4 <= 8)
  {
    if (v4 == 1)
    {
      v6 = a2 - 1;
      v7 = "float";
      v8 = "half";
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_21;
      }

      v6 = a2 - 1;
      v7 = "int";
      v8 = "short";
    }
  }

  else
  {
    if (v4 == 9)
    {
      return "BOOL";
    }

    if (v4 != 36)
    {
      if (v4 == 62)
      {
        return "double";
      }

LABEL_21:
      abort();
    }

    v6 = a2 - 1;
    v7 = "uint";
    v8 = "ushort";
  }

  if (v6 >= 2)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t glpLLVMCGDeclareVariable(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 0x980) != 0)
  {
    *(a1 + 326) = 1;
  }

  v4 = *(a2 + 144);
  if (v4)
  {
    result = *v4;
    if (*v4)
    {
      return result;
    }
  }

  else
  {
    v6 = (*(*(a1 + 152) + 8))(**(a1 + 152), 40, "llvm codegen extra");
    *(a2 + 144) = v6;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;
  }

  v7 = *(a2 + 8);
  if ((!v7 || !glpLayoutObjectFind(v7, 28)) && *(a2 + 128))
  {
    v8 = *(a2 + 48);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = glpPrecisionIndexFromSAFlags(v8);
      v10 = glpTypeToLLVMTypeWithUnderlying(a1, *a2, v9, a2);
      result = glpBuildAlloca(a1, v10);
      **(a2 + 144) = result;
      return result;
    }

    if ((v8 & 0x100000000) != 0)
    {
      result = 0;
      **(a2 + 144) = 0;
      return result;
    }

    glpLLVMCGGlobalVariable(a1, a2);
  }

  return 0;
}

uint64_t glpIsSimpleComponentAssigment(uint64_t a1, unsigned int ***a2, uint64_t **a3, unsigned int *a4, unsigned int *a5)
{
  v9 = *a2;
  v15 = 0;
  v16 = v9;
  result = glpIsComponentAssigment(a1, &v16, &v15 + 1, &v15, a4, 1);
  if (result)
  {
    Rhs = glpBinaryOperatorNodeGetRhs(a1);
    if (glpASTNodeGetKind(Rhs) == 81)
    {
      VariableExtra = glpLValueNodeGetVariableExtra(Rhs);
      v13 = VariableExtra;
      if (*a3)
      {
        if (*a3 == VariableExtra)
        {
LABEL_8:
          result = glpGetVectorSwizzle(Rhs, a5);
          if (result)
          {
            *a2 = v16;
            *a3 = v13;
            return 1;
          }

          return result;
        }
      }

      else if (!glpTypeGetKind(*VariableExtra))
      {
        PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v13);
        if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t glpLLVMSharedRawCall(uint64_t a1, char a2, uint64_t a3, unint64_t *a4, int a5)
{
  v5 = a5;
  v51 = *MEMORY[0x277D85DE8];
  if ((a2 & 2) != 0)
  {
    v9 = *(a1 + 708);
    if ((a2 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if ((a2 & 4) != 0)
    {
LABEL_3:
      v10 = *(a1 + 724);
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = a2 & 1;
  v12 = *(a1 + 832);
  v14 = (v12 & 2) == 0 || v10 < 1;
  v15 = (v12 & 1) == 0 || v14;
  v50 = v15;
  if ((a2 & 8) != 0)
  {
    v16 = *(a1 + 596);
  }

  else
  {
    v16 = 0;
  }

  v17 = (v11 + a5 + v9 + v10 + 2 * v16);
  MEMORY[0x28223BE20](a1);
  v19 = &v47[-v18];
  bzero(&v47[-v18], v20);
  if (v5 < 1)
  {
    v5 = 0;
  }

  else
  {
    v48 = v16;
    v49 = v17;
    v21 = a3;
    v22 = v5;
    v23 = v19;
    do
    {
      v24 = *a4++;
      *v23++ = glpLLVMGetVariablePointer(a1, v24);
      --v22;
    }

    while (v22);
    a3 = v21;
    v17 = v49;
    v16 = v48;
  }

  v25 = v50;
  if (v11)
  {
    v19[v5++] = *(a1 + 440);
  }

  if (v9 >= 1)
  {
    v26 = *(a1 + 712);
    v27 = &v19[v5];
    v5 += v9;
    v28 = v9;
    do
    {
      v29 = *v26++;
      *v27++ = *(v29 + 8);
      --v28;
    }

    while (v28);
  }

  if (v10 >= 1)
  {
    v30 = *(a1 + 728);
    v31 = &v19[v5];
    v5 += v10;
    v32 = v10;
    do
    {
      v33 = *v30++;
      *v31++ = *(v33 + 16);
      --v32;
    }

    while (v32);
  }

  if ((v25 & 1) == 0)
  {
    v19[v5++] = *(a1 + 448);
  }

  if (v16 >= 1)
  {
    v34 = (*(a1 + 600) + 8);
    v35 = &v19[v5];
    v36 = v16;
    do
    {
      v37 = *v34;
      *v35 = *(v34 - 1);
      v35[v16] = v37;
      v34 += 6;
      ++v35;
      --v36;
    }

    while (v36);
  }

  v38 = *(a1 + 160);
  v39 = *(a1 + 260);
  v40 = v39 + 1;
  v41 = *(a1 + 256);
  if (v39 + 1 <= v41)
  {
    v44 = *(a1 + 264);
    v45 = *(a1 + 260);
  }

  else
  {
    if (v41 <= 1)
    {
      v41 = 1;
    }

    v42 = 2 * v41;
    if (v42 <= v40)
    {
      v43 = v40;
    }

    else
    {
      v43 = v42;
    }

    v44 = (*(a1 + 232))(*(a1 + 224), v43, "Vector Storage (uint8_t, growth)");
    memcpy(v44, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v43;
    *(a1 + 264) = v44;
    v45 = *(a1 + 260);
  }

  memmove(&v44[v39 + 1], &v44[v39], (v45 - v39));
  *(*(a1 + 264) + v39) = 43;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, v38);
  glpSerializeLLVMValue(a1, a3);
  glpSerializeArrayOfLLVMValues(a1, v19, v17);
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpLLVMReadUniform(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a4);
  if (ScalarType == 9)
  {
    v11 = a1[5];
    if (glpPrimitiveTypeGetCategory(a4) != 2)
    {
      goto LABEL_13;
    }

    Length = glpPrimitiveVectorGetLength(a4);
    v13 = glpLLVMVectorType(a1, v11, Length);
LABEL_12:
    v11 = v13;
LABEL_13:
    v17 = glpLLVMPointerType(a1, v11, 2);
    v18 = glpLLVMCastOperation(a1, 86, a2, v17, "ptr");
    v19 = glpLLVMBuildLoad2(a1, v18, "uniform");
    v20 = glpPrimitiveTypeToLLVMType(a1, a4, a5);
    if (ScalarType == 9)
    {
      v21 = glpLLVMConstFromTypeCache(a1, 35, v11);

      return glpLLVMBuildICmp(a1, 1, v19, v21, "uniform");
    }

    else
    {
      if (ScalarType == 1)
      {
        v22 = 88;
      }

      else
      {
        v22 = 87;
      }

      return glpLLVMCastOperation(a1, v22, v19, v20, "uniform");
    }
  }

  if (a5 != 3 && a5)
  {
    v13 = glpPrimitiveTypeToLLVMType(a1, a4, 3);
    goto LABEL_12;
  }

  v14 = glpPrimitiveTypeToLLVMType(a1, a4, a5);
  v15 = glpLLVMPointerType(a1, v14, 2);
  if (a3 != a4)
  {
    a2 = glpLLVMCastOperation(a1, 86, a2, v15, "ptr");
  }

  return glpLLVMBuildLoad2(a1, a2, "uniform");
}

uint64_t glpLLVMAddGlobalInAddressSpace(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 110;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  if (*(a1 + 300))
  {
    v11 = *(a1 + 260);
    v12 = v11 + 1;
    v13 = *(a1 + 256);
    if (v11 + 1 <= v13)
    {
      v16 = *(a1 + 264);
      v17 = *(a1 + 260);
    }

    else
    {
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = 2 * v13;
      if (v14 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      v16 = (*(a1 + 232))(*(a1 + 224), v15, "Vector Storage (uint8_t, growth)");
      memcpy(v16, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v15;
      *(a1 + 264) = v16;
      v17 = *(a1 + 260);
    }

    memmove(&v16[v11 + 1], &v16[v11], (v17 - v11));
    *(*(a1 + 264) + v11) = 0;
    ++*(a1 + 260);
  }

  v18 = glp_serialized_integer32_control(2);
  v19 = *(a1 + 260);
  v20 = v19 + 1;
  v21 = *(a1 + 256);
  if (v19 + 1 <= v21)
  {
    v24 = *(a1 + 264);
    v25 = *(a1 + 260);
  }

  else
  {
    if (v21 <= 1)
    {
      v21 = 1;
    }

    v22 = 2 * v21;
    if (v22 <= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v24 = (*(a1 + 232))(*(a1 + 224), v23, "Vector Storage (uint8_t, growth)");
    memcpy(v24, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v23;
    *(a1 + 264) = v24;
    v25 = *(a1 + 260);
  }

  memmove(&v24[v19 + 1], &v24[v19], (v25 - v19));
  *(*(a1 + 264) + v19) = v18;
  v26 = *(a1 + 260);
  v27 = v26 + 1;
  *(a1 + 260) = v26 + 1;
  if ((v18 & 0x80000000) != 0)
  {
    v28 = (v18 >> 1) & 7;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v47 = v26 + 4;
        v48 = *(a1 + 256);
        if (v47 <= v48)
        {
          v51 = *(a1 + 264);
          v52 = v27;
        }

        else
        {
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = 2 * v48;
          if (v49 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v49;
          }

          v51 = (*(a1 + 232))(*(a1 + 224), v50, "Vector Storage (uint8_t, growth)");
          memcpy(v51, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v50;
          *(a1 + 264) = v51;
          v52 = *(a1 + 260);
        }

        memmove(&v51[v27 + 1], &v51[v27], v52 - v27);
        v54 = *(a1 + 264) + v27;
        *(v54 + 2) = 0;
        *v54 = 2;
        v53 = 3;
        goto LABEL_69;
      }

      if (v28 == 3)
      {
        v35 = v26 + 5;
        v36 = *(a1 + 256);
        if (v35 <= v36)
        {
          v39 = *(a1 + 264);
          v40 = v27;
        }

        else
        {
          if (v36 <= 1)
          {
            v36 = 1;
          }

          v37 = 2 * v36;
          if (v37 <= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          v39 = (*(a1 + 232))(*(a1 + 224), v38, "Vector Storage (uint8_t, growth)");
          memcpy(v39, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v38;
          *(a1 + 264) = v39;
          v40 = *(a1 + 260);
        }

        memmove(&v39[v27 + 1], &v39[v27], v40 - v27);
        *(*(a1 + 264) + v27) = 2;
        v53 = 4;
        goto LABEL_69;
      }
    }

    else
    {
      if (!v28)
      {
        v41 = v26 + 2;
        v42 = *(a1 + 256);
        if (v41 <= v42)
        {
          v45 = *(a1 + 264);
          v46 = v27;
        }

        else
        {
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = 2 * v42;
          if (v43 <= v41)
          {
            v44 = v41;
          }

          else
          {
            v44 = v43;
          }

          v45 = (*(a1 + 232))(*(a1 + 224), v44, "Vector Storage (uint8_t, growth)");
          memcpy(v45, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v44;
          *(a1 + 264) = v45;
          v46 = *(a1 + 260);
        }

        memmove(&v45[v27 + 1], &v45[v27], v46 - v27);
        *(*(a1 + 264) + v27) = 2;
        v53 = 1;
        goto LABEL_69;
      }

      if (v28 == 1)
      {
        v29 = v26 + 3;
        v30 = *(a1 + 256);
        if (v29 <= v30)
        {
          v33 = *(a1 + 264);
          v34 = v27;
        }

        else
        {
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = 2 * v30;
          if (v31 <= v29)
          {
            v32 = v29;
          }

          else
          {
            v32 = v31;
          }

          v33 = (*(a1 + 232))(*(a1 + 224), v32, "Vector Storage (uint8_t, growth)");
          memcpy(v33, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v32;
          *(a1 + 264) = v33;
          v34 = *(a1 + 260);
        }

        memmove(&v33[v27 + 1], &v33[v27], v34 - v27);
        v53 = 2;
        *(*(a1 + 264) + v27) = 2;
LABEL_69:
        *(a1 + 260) += v53;
      }
    }
  }

  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

void *glpLLVMSetGlobalConstant(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 15;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);
  v11 = glp_serialized_integer32_control(1);
  v12 = *(a1 + 260);
  v13 = v12 + 1;
  v14 = *(a1 + 256);
  if (v12 + 1 <= v14)
  {
    v17 = *(a1 + 264);
    v18 = *(a1 + 260);
  }

  else
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = 2 * v14;
    if (v15 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = (*(a1 + 232))(*(a1 + 224), v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v16;
    *(a1 + 264) = v17;
    v18 = *(a1 + 260);
  }

  result = memmove(&v17[v12 + 1], &v17[v12], (v18 - v12));
  *(*(a1 + 264) + v12) = v11;
  v20 = *(a1 + 260);
  v21 = v20 + 1;
  *(a1 + 260) = v20 + 1;
  if ((v11 & 0x80000000) != 0)
  {
    v22 = (v11 >> 1) & 7;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v41 = v20 + 4;
        v42 = *(a1 + 256);
        if (v41 <= v42)
        {
          v45 = *(a1 + 264);
          v46 = v21;
        }

        else
        {
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = 2 * v42;
          if (v43 <= v41)
          {
            v44 = v41;
          }

          else
          {
            v44 = v43;
          }

          v45 = (*(a1 + 232))(*(a1 + 224), v44, "Vector Storage (uint8_t, growth)");
          memcpy(v45, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v44;
          *(a1 + 264) = v45;
          v46 = *(a1 + 260);
        }

        result = memmove(&v45[v21 + 1], &v45[v21], v46 - v21);
        v48 = *(a1 + 264) + v21;
        *(v48 + 2) = 0;
        *v48 = 1;
        v47 = 3;
      }

      else
      {
        if (v22 != 3)
        {
          return result;
        }

        v29 = v20 + 5;
        v30 = *(a1 + 256);
        if (v29 <= v30)
        {
          v33 = *(a1 + 264);
          v34 = v21;
        }

        else
        {
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = 2 * v30;
          if (v31 <= v29)
          {
            v32 = v29;
          }

          else
          {
            v32 = v31;
          }

          v33 = (*(a1 + 232))(*(a1 + 224), v32, "Vector Storage (uint8_t, growth)");
          memcpy(v33, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v32;
          *(a1 + 264) = v33;
          v34 = *(a1 + 260);
        }

        result = memmove(&v33[v21 + 1], &v33[v21], v34 - v21);
        *(*(a1 + 264) + v21) = 1;
        v47 = 4;
      }
    }

    else if (v22)
    {
      if (v22 != 1)
      {
        return result;
      }

      v23 = v20 + 3;
      v24 = *(a1 + 256);
      if (v23 <= v24)
      {
        v27 = *(a1 + 264);
        v28 = v21;
      }

      else
      {
        if (v24 <= 1)
        {
          v24 = 1;
        }

        v25 = 2 * v24;
        if (v25 <= v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = v25;
        }

        v27 = (*(a1 + 232))(*(a1 + 224), v26, "Vector Storage (uint8_t, growth)");
        memcpy(v27, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v26;
        *(a1 + 264) = v27;
        v28 = *(a1 + 260);
      }

      result = memmove(&v27[v21 + 1], &v27[v21], v28 - v21);
      *(*(a1 + 264) + v21) = 1;
      v47 = 2;
    }

    else
    {
      v35 = v20 + 2;
      v36 = *(a1 + 256);
      if (v35 <= v36)
      {
        v39 = *(a1 + 264);
        v40 = v21;
      }

      else
      {
        if (v36 <= 1)
        {
          v36 = 1;
        }

        v37 = 2 * v36;
        if (v37 <= v35)
        {
          v38 = v35;
        }

        else
        {
          v38 = v37;
        }

        v39 = (*(a1 + 232))(*(a1 + 224), v38, "Vector Storage (uint8_t, growth)");
        memcpy(v39, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v38;
        *(a1 + 264) = v39;
        v40 = *(a1 + 260);
      }

      result = memmove(&v39[v21 + 1], &v39[v21], v40 - v21);
      v47 = 1;
      *(*(a1 + 264) + v21) = 1;
    }

    *(a1 + 260) += v47;
  }

  return result;
}

void *glpLLVMSetInitializer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 16;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, a2);

  return glpSerializeLLVMValue(a1, a3);
}

uint64_t glpLLVMCGWriteVertexOutput(uint64_t result, unsigned int **a2)
{
  if ((~*(result + 832) & 3) != 0)
  {
    v3 = result;
    if (!*(result + 208))
    {
      *(result + 208) = glpLLVMConstFromTypeCache(result, 37, *(result + 200));
    }

    v4 = *(v3 + 692);
    if (v4 < 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      while (*(*(v3 + 696) + 8 * v5) != a2)
      {
        if (v4 == ++v5)
        {
          v5 = *(v3 + 692);
          break;
        }
      }
    }

    v6 = glpLLVMGetVariablePointer(v3, a2);
    v7 = glpPrecisionIndexFromSAFlags(a2[6]);
    v8 = glpTypeToLLVMTypeWithUnderlying(v3, *a2, v7, a2);
    v9 = glpLLVMPointerType(v3, v8, 0);
    v10 = glpLLVMCastOperation(v3, 86, v6, v9, "ptr");
    inserted = glpLLVMBuildLoad2(v3, v10, "out");
    if ((*(v3 + 832) & 1) == 0)
    {
      goto LABEL_19;
    }

    v12 = glpLayoutObjectFind(a2[1], 69);
    v13 = glpLayoutObjectFind(a2[1], 70);
    if (v13)
    {
      v14 = *(v13 + 4) == 0;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = 1;
      if (!v12)
      {
LABEL_19:
        result = glpLLVMBuildInsertValue(v3, *(v3 + 208), inserted, v5, "returnValue");
        *(v3 + 208) = result;
        return result;
      }
    }

    if (*(v12 + 4) == 5 && v14)
    {
      v15 = glpLLVMVectorType(v3, v8, 4);
      v16 = glpLLVMConstFromTypeCache(v3, 37, v15);
      v17 = *(v3 + 520);
      if (!v17)
      {
        v17 = glpLLVMConstIntCache(v3, *(v3 + 40), 0, 0);
        *(v3 + 520) = v17;
      }

      inserted = glpLLVMBuildInsertElement(v3, v16, inserted, v17, "fogCoord");
    }

    goto LABEL_19;
  }

  return result;
}

void _glpSetCrashLogMessage(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    _glpSetCrashLogMessage_cold_1(a1);
  }
}

void glpSetCrashLogMessagef(const char *a1, ...)
{
  va_start(va, a1);
  os_unfair_lock_lock(&message_lock);
  vsnprintf_l(message, 0x400uLL, 0, a1, va);
  os_unfair_lock_unlock(&message_lock);
  _glpSetCrashLogMessage(message);
}

void *glpMakeCompiler(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = a3;
  v13 = a1;
  Default = glpGLSLVersionGetDefault(a1, a2);
  v15 = malloc_type_malloc(0x88uLL, 0xCA0EF1E7uLL);
  if (!v15)
  {
    abort();
  }

  v16 = v15;
  glpInitPoolAllocator(0x4000, 0x8000, v15);
  v21.n128_u64[0] = "-1";
  v21.n128_u64[1] = 0xEDA00000002;
  v22 = 0xFFFFFFFFLL;
  glpMakeTopLevelNode(v16, &v21);
  v16[9] = v17;
  *(v16 + 20) = 0;
  v16[11] = glpMakePointerHash(v16);
  v16[13] = glpMakeTypedValueHash(v16);
  v16[4] = glpMakeNameTable(v16, v11, Default);
  *(v16 + 10) = v13;
  *(v16 + 11) = a2;
  *(v16 + 12) = 0;
  v16[7] = a4;
  v16[8] = a5;
  *(v16 + 21) = a6;
  *(v16 + 96) = 0;
  v18 = getenv("GL_SHADER_STYLE_GUIDE");
  if (v18)
  {
    v19 = *v18 != 48 || v18[1] != 0;
  }

  else
  {
    v19 = 0;
  }

  *(v16 + 97) = v19;
  *(v16 + 98) = 0;
  *(v16 + 25) = a7;
  v16[14] = glpMakeStringHash(v16);
  v16[15] = 32;
  v16[16] = (v16[1])(*v16, 256, "Vector Storage (GLPASTNode *)");
  return v16;
}

void glpDestroyCompiler(void *a1)
{
  glpDestroyPointerHash(a1[11]);
  glpDestroyTypedValueHash(a1[13]);
  glpDestroyNameTable(a1[4]);
  glpDestroyStringHash(a1[14]);
  (a1[3])(*a1, a1[16]);
  glpDestroyPoolAllocator(a1);

  free(a1);
}

void *glpCompilerRemapObject(void *a1, int a2, void *a3, uint64_t a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = glpPointerHashGet(a1[11], a3);
  if (!v10)
  {
    if (a2 <= 4)
    {
      if ((a2 - 1) < 3)
      {
        v10 = a3;
        if (a4)
        {
          v10 = (a1[1])(*a1, 88, "Interface Block Object (remapped)");
          glpPointerHashPut(a1[11], a3, v10, v12);
          *v10 = glpCopyString(a1, *a3, a3[1]);
          v10[1] = v13;
          if (*(a3 + 32))
          {
            v14 = glpCopyString(a1, a3[2], a3[3]);
          }

          else
          {
            v15 = 0xDFA3F2CD0000004BLL;
            v14 = "<<BUG: printing instance name of interface block without an instance name>>";
          }

          v10[2] = v14;
          v10[3] = v15;
          *(v10 + 32) = *(a3 + 32);
          v10[5] = a3[5];
          v10[8] = glpCompilerRemapObject(a1, 10, a3[8], a4, 1);
          VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(a3);
          v10[9] = (a1[1])(*a1, 8 * VariableObjectCount, "Variable Object Array of Interface Block (remapped)");
          if (VariableObjectCount)
          {
            v50 = 0;
            v51 = 8 * VariableObjectCount;
            do
            {
              *(v10[9] + v50) = glpCompilerRemapObject(a1, 0, *(a3[9] + v50), a4, 0);
              v50 += 8;
            }

            while (v51 != v50);
          }

          v52 = a3[10];
          if (v52)
          {
            v53 = a1[11];
            v101.n128_u64[0] = MEMORY[0x277D85DD0];
            v101.n128_u64[1] = 0x40000000;
            v102 = __glpCompilerRemapBufferObject_block_invoke;
            v103 = &__block_descriptor_tmp_20;
            v104 = a1;
            v105 = v52;
            v54 = glpPointerHashCache_b(v53, v52, &v101);
          }

          else
          {
            v54 = 0;
          }

          v10[10] = v54;
          v55 = a3[7];
          if (v55)
          {
            v10[7] = glpCompilerRemapObject(a1, 11, v55, a4, 0);
          }
        }

        if (!a5)
        {
          goto LABEL_73;
        }

        v56 = *(v10 + 32);
        v57 = glpTypeGetKind(v10[8]) == 3;
        v101.n128_u64[0] = "-1";
        v101.n128_u64[1] = 0xEDA00000002;
        v102 = 0xFFFFFFFFLL;
        glpMakeInterfaceBlockNode(a1, &v101, *v10, v10[1], v10[2], v10[3], v56, v57, v10);
        v59 = v58;
        glpASTNodeSetSaFlags(v58, 0);
        PrimitiveType = glpGetPrimitiveType(0);
        goto LABEL_71;
      }

      if (a2)
      {
        if (a2 == 4)
        {
          if (a4)
          {
            v16 = 0;
            v17 = 0;
            v18 = a3;
            do
            {
              v19 = (a1[1])(*a1, 16, "Overload Group");
              *v19 = glpCompilerRemapObject(a1, 10, *v18, a4, 1);
              v19[1] = 0;
              v10 = v19;
              if (v17)
              {
                v17[1] = v19;
                v10 = v16;
              }

              v18 = v18[1];
              v16 = v10;
              v17 = v19;
            }

            while (v18);
            goto LABEL_73;
          }

          return a3;
        }

LABEL_84:
        abort();
      }

LABEL_26:
      v21 = a3[6];
      if ((v21 & 0x40000000) != 0)
      {
        v22 = (*(a1 + 96) != 0) << 40;
      }

      else
      {
        v22 = 0;
      }

      v34 = v22 | v21;
      if (a4)
      {
        v99 = glpCompilerRemapObject(a1, 10, *a3, a4, 1);
        v35 = glpCompilerRemapObject(a1, 11, a3[1], a4, 1);
        v100 = glpCopyString(a1, a3[2], a3[3]);
        v37 = v36;
        v43 = glpCopyString(a1, a3[4], a3[5]);
        v45 = v44;
        v46 = a3[8];
        if (v46)
        {
          v47 = glpCopyValue(a1, *a3, v46, v38, v39, v40, v41, v42);
        }

        else
        {
          v47 = 0;
        }

        v61 = a3[9];
        if (v61)
        {
          v62 = v47;
          if (v61 != a3[8])
          {
            v62 = glpCopyValue(a1, *a3, v61, v38, v39, v40, v41, v42);
          }
        }

        else
        {
          v62 = 0;
        }

        v98 = v47;
        v48 = v37;
        VariableObject = glpMakeVariableObject(a1, v99, v35, v34, v100, v37, v43, v45, *(a3 + 56), v98, v62);
        v10 = v63;
        v63[12] = a3[12];
      }

      else
      {
        v48 = a3[3];
        v100 = a3[2];
        v35 = a3[1];
        v10 = a3;
        a3[6] = v34;
      }

      if (v35)
      {
        v64 = glpLayoutObjectFind(v35, 90);
        if (v64)
        {
          v65 = v64;
          Kind = glpTypeGetKind(*v10);
          if (Kind)
          {
            if (Kind != 2)
            {
              goto LABEL_84;
            }

            v67 = v48;
            FrameworkConstantByIndex = glpGetFrameworkConstantByIndex(*(v65 + 4), *(a1 + 44));
            ElementType = glpArrayTypeGetElementType(*v10);
            MaxElementCount = glpArrayTypeGetMaxElementCount(*v10);
            *v10 = glpMakeArrayType(a1, ElementType, FrameworkConstantByIndex, MaxElementCount);
            v48 = v67;
          }

          else
          {
            v71 = v48;
            v72 = glpGetPrimitiveType(5u);
            v73 = glpGetPrimitiveType(5u);
            v74 = glpGetFrameworkConstantByIndex(*(v65 + 4), *(a1 + 44));
            MutableValue = glpMakeMutableValue(a1, v73, 1, v75, v76, v77, v78, v79, v74);
            v81 = v72;
            v48 = v71;
            v10[8] = glpRemapValue(a1[13], v81, MutableValue);
          }
        }
      }

      if (a4)
      {
        v10[10] = glpCompilerRemapObject(a1, 2, a3[10], a4, 0);
      }

      if (!a5 || (v10[6] & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      v101.n128_u64[0] = "-1";
      v101.n128_u64[1] = 0xEDA00000002;
      v102 = 0xFFFFFFFFLL;
      glpMakeVariableDeclarationNode(a1, &v101, v100, v48, 0);
      v59 = v82;
      glpVariableDeclarationNodeSetExtra(v82, v10);
      glpASTNodeSetSaFlags(v59, v10[6]);
      PrimitiveType = *v10;
LABEL_71:
      glpASTNodeSetSaType(v59, PrimitiveType);
      v83 = a1[9];
      v84 = *(a1 + 20);
      *(a1 + 20) = v84 + 1;
      v85 = a1;
      v86 = v59;
LABEL_72:
      glpTopLevelNodeInsertDef(v85, v83, v86, v84);
      goto LABEL_73;
    }

    if (a2 > 9)
    {
      if (a2 != 10)
      {
        if (a2 != 11)
        {
          if (a2 != 12)
          {
            goto LABEL_84;
          }

          goto LABEL_26;
        }

        if (a4)
        {
          v20 = glpCopyLayoutObject(a1, a3);
          goto LABEL_36;
        }

        return a3;
      }

LABEL_24:
      if (a4)
      {
        v20 = glpDeepCopyType(a1, a3);
LABEL_36:
        v10 = v20;
LABEL_73:
        glpPointerHashPut(a1[11], a3, v10, VariableObject);
        return v10;
      }

      return a3;
    }

    if (a2 != 5)
    {
      if (a2 != 6)
      {
        goto LABEL_84;
      }

      goto LABEL_24;
    }

    v23 = a3[8];
    if (a4)
    {
      v24 = glpCompilerRemapObject(a1, 10, *a3, a4, 1);
      v25 = glpCopyString(a1, a3[3], a3[4]);
      v27 = v26;
      v28 = glpCopyString(a1, a3[5], a3[6]);
      glpMakeFunctionObject(a1, v24, a3[1], v25, v27, v28, v29);
      v10 = v30;
      v31 = a3[11];
      v30[11] = v31;
      v30[10] = (a1[1])(*a1, 8 * v31, "Parameter Info (remapped)");
      if (*(a3 + 22))
      {
        v32 = 0;
        do
        {
          *(v10[10] + 8 * v32) = glpCompilerRemapObject(a1, 12, *(a3[10] + 8 * v32), a4, 1);
          ++v32;
        }

        while (v32 < *(a3 + 22));
      }

      v10[9] = glpCompilerRemapObject(a1, 12, a3[9], a4, 1);
      if (!v23)
      {
        goto LABEL_77;
      }

      glpPointerHashPut(a1[11], a3, v10, v33);
      v10[8] = -1;
      v23 = glpDeepCopyASTNode(a1, a3[8], compilerRemapFixup, a1);
      v10[8] = v23;
    }

    else
    {
      v10 = a3;
    }

    if (v23)
    {
LABEL_82:
      if (!a5)
      {
        goto LABEL_73;
      }

      v83 = a1[9];
      v84 = *(a1 + 20);
      *(a1 + 20) = v84 + 1;
      v85 = a1;
      v86 = v23;
      goto LABEL_72;
    }

LABEL_77:
    v88 = glpCopyString(a1, a3[3], a3[4]);
    v101.n128_u64[0] = "-1";
    v101.n128_u64[1] = 0xEDA00000002;
    v102 = 0xFFFFFFFFLL;
    glpMakeFunctionPrototypeNode(a1, &v101, v88, v89);
    v23 = v90;
    glpFunctionPrototypeNodeSetExtra(v90, v10);
    v91 = v10[9];
    if (v91)
    {
      v101.n128_u64[0] = "-1";
      v101.n128_u64[1] = 0xEDA00000002;
      v102 = 0xFFFFFFFFLL;
      glpMakeParameterDeclarationNode(a1, &v101, *(v91 + 16), *(v91 + 24));
      v93 = v92;
      glpParameterDeclarationNodeSetExtra(v92, v10[9]);
      glpASTNodeSetSaType(v93, *v10[9]);
      glpASTNodeSetSaFlags(v93, *(v10[9] + 48));
      glpFunctionPrototypeNodeSetReturnOutParam(v23, v93);
    }

    if (*(a3 + 22))
    {
      v94 = 0;
      do
      {
        v95 = *(v10[10] + 8 * v94);
        v101.n128_u64[0] = "-1";
        v101.n128_u64[1] = 0xEDA00000002;
        v102 = 0xFFFFFFFFLL;
        glpMakeParameterDeclarationNode(a1, &v101, *(v95 + 16), *(v95 + 24));
        v97 = v96;
        glpParameterDeclarationNodeSetExtra(v96, *(v10[10] + 8 * v94));
        glpASTNodeSetSaType(v97, **(v10[10] + 8 * v94));
        glpASTNodeSetSaFlags(v97, *(*(v10[10] + 8 * v94) + 48));
        glpFunctionPrototypeNodeAddParameter(a1, v23, v97);
        ++v94;
      }

      while (v94 < *(a3 + 22));
    }

    goto LABEL_82;
  }

  return v10;
}

uint64_t compilerRemapFixup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Kind = glpASTNodeGetKind(a3);
  if (Kind <= 62)
  {
    if (Kind > 44)
    {
      if (Kind == 45)
      {
        Extra = glpFunctionPrototypeNodeGetExtra(v3);
        v22 = glpCompilerRemapObject(a1, 5, Extra, 1, 1);
        glpFunctionPrototypeNodeSetExtra(v3, v22);
      }

      else if (Kind == 46)
      {
        v12 = glpVariableDeclarationNodeGetExtra(v3);
        v13 = glpCompilerRemapObject(a1, 12, v12, 1, 1);
        glpVariableDeclarationNodeSetExtra(v3, v13);
      }
    }

    else
    {
      switch(Kind)
      {
        case 7:
          glpFunctionCallNodeGetExtra(v3);
          break;
        case 44:
          v8 = glpParameterDeclarationNodeGetExtra(v3);
          v9 = glpCompilerRemapObject(a1, 12, v8, 1, 1);
          glpParameterDeclarationNodeSetExtra(v3, v9);
          break;
        case 1:
          abort();
      }
    }
  }

  else if (Kind <= 77)
  {
    if (Kind == 63)
    {
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      *(a1 + 80) = v15 + 1;
      glpTopLevelNodeInsertDef(a1, v14, v3, v15);
      return 0;
    }

    else if (Kind == 75)
    {
      v10 = glpReturnStatementNodeGetExtra(v3);
      v11 = glpCompilerRemapObject(a1, 5, v10, 1, 1);
      glpReturnStatementNodeSetExtra(v3, v11);
    }
  }

  else
  {
    switch(Kind)
    {
      case 'N':
        v19 = glpRawCallNodeGetExtra(v3);
        v20 = glpCompilerRemapObject(a1, 5, v19, 1, 1);
        glpRawCallNodeSetExtra(v3, v20);
        break;
      case 'P':
        v16 = glpOffsetNodeGetExtra(v3);
        v17 = *(a1 + 88);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 0x40000000;
        v24[2] = __compilerRemapFixup_block_invoke;
        v24[3] = &__block_descriptor_tmp_19;
        v24[4] = a1;
        v18 = glpPointerHashCache_b(v17, v16, v24);
        glpOffsetNodeSetExtra(v3, v18);
        break;
      case 'Q':
        VariableExtra = glpLValueNodeGetVariableExtra(v3);
        v7 = glpCompilerRemapObject(a1, 0, VariableExtra, 1, 1);
        glpLValueNodeSetVariableExtra(v3, v7);
        break;
    }
  }

  return v3;
}

double glpCompilerInsertDef(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *(a1 + 80) = v4 + 1;
  glpTopLevelNodeInsertDef(a1, v3, a2, v4);
  return result;
}

uint64_t glpGetFrameworkConstantByIndex(int a1, int a2)
{
  v2 = &glpBuiltInConstantsInitialized;
  if (a2 == 4)
  {
    v2 = &unk_28144F891;
  }

  if (!*v2)
  {
    goto LABEL_23;
  }

  v3 = &glpBuiltInConstantValues[8 * (a2 == 4)];
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return v3[4];
      }

      else
      {
        return v3[5];
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      return v3[3];
    }

    else
    {
      return *v3;
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return v3[7];
    }

    else
    {
      return v3[1];
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        return v3[2];
      case 7:
        return v3[6];
      case 8:
        return v3[2] - 1;
      default:
LABEL_23:
        abort();
    }
  }
}

char *glpCompilerNewTempName(uint64_t a1)
{
  v2 = (snprintf_l(0, 0, 0, "$%u", *(a1 + 48)) + 1);
  v3 = (*(a1 + 8))(*a1, v2, "Compiler temp name");
  snprintf_l(v3, v2, 0, "$%u", *(a1 + 48));
  ++*(a1 + 48);
  v4 = strlen(v3);
  if (v4)
  {
    v5 = v4;
    v6 = v4;
    do
    {
      v6 ^= 32 * v6 + (v6 >> 2) + v3[v5 - 1];
      v5 += ~(v4 >> 5);
    }

    while (v5 > v4 >> 5);
  }

  return v3;
}

uint64_t glpCompilerApplyImplictRulesForGlobalTypeQualifier(uint64_t a1, uint64_t a2)
{
  SaFlags = glpASTNodeGetSaFlags(a2);
  if (glpNameTableGetLanguage(*(a1 + 32)) == 3 && (SaFlags & 0x40000000) != 0)
  {
    return 1;
  }

  if (glpNameTableGetLanguage(*(a1 + 32)) == 3 && (SaFlags & 0x20000000) != 0)
  {
    v18 = -1;
    Layout = glpGlobalTypeQualifierNodeGetLayout(a2);
    glpLayoutObjectGetGeomInOut(Layout, &v18, 0, 0, 0, 0);
    if (v18 != -1)
    {
      glpNameTableGet(*(a1 + 32), "gl_in", 0x1057ED5B00000005uLL, 0, &__block_literal_global_0);
      v12 = v18;
      v13 = a1;
      v14 = 0x20000000;
      goto LABEL_27;
    }

    return 1;
  }

  if (glpNameTableGetLanguage(*(a1 + 32)) == 1 && (SaFlags & 0x40000000) != 0)
  {
    v15 = glpGlobalTypeQualifierNodeGetLayout(a2);
    v16 = glpLayoutObjectFind(v15, 18);
    if (v16)
    {
      v17 = *(v16 + 4);
      if (v17 != -1)
      {
        glpNameTableGet(*(a1 + 32), "gl_out", 0x92973DC800000006, 0, &__block_literal_global_16);
        v13 = a1;
        v14 = 0x40000000;
        v12 = v17;
LABEL_27:
        result = glpApplySizeToBanks(v13, v14, v12);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  Language = glpNameTableGetLanguage(*(a1 + 32));
  v9 = (SaFlags & 0x20000000) != 0 && Language == 2;
  result = 1;
  if (!v9 && (SaFlags & 0x100000000) == 0)
  {
    abort();
  }

  return result;
}

void __glpCompilerApplyImplictRulesForGlobalTypeQualifier_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == 1)
  {
    *a5 = 1;
  }
}

void __glpCompilerApplyImplictRulesForGlobalTypeQualifier_block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == 1)
  {
    *a5 = 1;
  }
}

uint64_t glpCompilerGetImpliedBankSize(uint64_t a1, int a2)
{
  v2 = 32;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v2 = 0xFFFFFFFFLL;
      v9 = -1;
      GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(*(a1 + 72), 0x20000000);
      if (GlobalTypeQualifier)
      {
        Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
        glpLayoutObjectGetGeomInOut(Layout, &v9, 0, 0, 0, 0);
        return v9;
      }
    }

    else if (a2 != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v3 = glpTopLevelNodeGetGlobalTypeQualifier(*(a1 + 72), 0x40000000);
        if (!v3)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = glpGlobalTypeQualifierNodeGetLayout(v3);
        v5 = glpLayoutObjectFind(v4, 18);
        if (!v5)
        {
          return 0xFFFFFFFFLL;
        }

        return *(v5 + 4);
      case 4:
        break;
      case 5:
        return 0xFFFFFFFFLL;
      default:
LABEL_8:
        abort();
    }
  }

  return v2;
}

uint64_t glpCompilerGetIntConstant(uint64_t a1, uint64_t a2)
{
  PrimitiveType = glpGetPrimitiveType(5u);
  MutableValue = glpMakeMutableValue(a1, PrimitiveType, 1, v5, v6, v7, v8, v9, a2);
  v11 = *(a1 + 104);

  return glpRemapValue(v11, PrimitiveType, MutableValue);
}

uint64_t glpCompilerGetSubroutineType(void *a1, const char *a2, size_t a3, uint64_t *a4)
{
  v8 = glpStringHashGet(a1[14], a2, a3);
  if (v8)
  {
    return v8;
  }

  v10 = a1[14];
  v11 = *(v10 + 32);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v10 + 40);
    v15 = *(v14 + v12);
    if (v15)
    {
      break;
    }

LABEL_8:
    ++v13;
    v12 += 32;
    if (v13 >= v11)
    {
      goto LABEL_9;
    }
  }

  v16 = *a4;
  FunctionObject = glpSubroutineTypeGetFunctionObject(*(v14 + v12));
  if (!glpTypesEqual(v16, *FunctionObject))
  {
    v11 = *(v10 + 32);
    goto LABEL_8;
  }

  v24 = glpSubroutineTypeGetFunctionObject(v15);
  SubroutineType = glpMakeSubroutineType(a1, a2, a3, v24);
  v9 = v26;
  glpStringHashPut(a1[14], a2, a3, SubroutineType, v26);
  if (!v9)
  {
LABEL_9:
    v18 = glpCompilerNewTempName(a1);
    a4[3] = v18;
    a4[4] = v19;
    a4[5] = glpAggregateTypeMangleName(*a4, v18, v19, a1);
    a4[6] = v20;
    v21 = glpMakeSubroutineType(a1, a2, a3, a4);
    v9 = v22;
    glpStringHashPut(a1[14], a2, a3, v21, v22);
  }

  return v9;
}

uint64_t glpCompilerGetImplicitConversionPolicy(uint64_t a1)
{
  v1 = *(a1 + 32);
  GLSLVersion = glpNameTableGetGLSLVersion(v1);
  if (GLSLVersion > 9)
  {
    abort();
  }

  if (((1 << GLSLVersion) & 0xBC) != 0)
  {
    if (glpNameTableIsExtensionEnabled(v1, 0x12u))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if (glpNameTableIsExtensionEnabled(v1, 0x13u))
    {
      return 3;
    }

    else
    {
      return v3;
    }
  }

  else if (((1 << GLSLVersion) & 0x43) != 0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

BOOL glpCompilerDoesTypeRequirePrecision(uint64_t a1, unsigned int *ElementType)
{
  GLSLVersion = glpNameTableGetGLSLVersion(*(a1 + 32));
  if (GLSLVersion != 6 && GLSLVersion != 0)
  {
    return 0;
  }

  while (1)
  {
    Kind = glpTypeGetKind(ElementType);
    if (Kind != 2)
    {
      break;
    }

    ElementType = glpArrayTypeGetElementType(ElementType);
  }

  if (Kind)
  {
    return 0;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(ElementType);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) == 4)
  {
    return 1;
  }

  if (!PrimitiveType)
  {
    return 0;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  return ScalarType != 62 && ScalarType != 9;
}

void *glpCompilerPushSAContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  v5 = *(a1 + 124);
  if (v5 + 1 <= v4)
  {
    v8 = *(a1 + 128);
    v9 = *(a1 + 124);
  }

  else
  {
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v6 = 2 * v4;
    if (v6 <= v5 + 1)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = (*(a1 + 8))(*a1, 8 * v7, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v8, *(a1 + 128), 8 * *(a1 + 124));
    (*(a1 + 24))(*a1, *(a1 + 128));
    *(a1 + 120) = v7;
    *(a1 + 128) = v8;
    v9 = *(a1 + 124);
  }

  result = memmove(&v8[8 * v5 + 8], &v8[8 * v5], 8 * (v9 - v5));
  *(*(a1 + 128) + 8 * v5) = a2;
  ++*(a1 + 124);
  return result;
}

uint64_t glpScalarTypeFromGLPType(uint64_t a1)
{
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  if (ScalarType <= 8)
  {
    if (ScalarType == 1)
    {
      return 2;
    }

    else
    {
      if (ScalarType != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }
  }

  else
  {
    switch(ScalarType)
    {
      case 9:
        return 0;
      case 36:
        return 4;
      case 62:
        return 3;
      default:
LABEL_13:
        abort();
    }
  }
}

char *glpTypeFromScalarTypeAndComponentCount(unsigned int a1, uint64_t a2)
{
  if (a1 >= 5)
  {
    abort();
  }

  VectorType = glpGetVectorType(dword_23A29C3B0[a1], a2);

  return glpGetPrimitiveType(VectorType);
}

void glpPackConstants(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v54 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v43 = &(&v39)[-2 * v6];
  bzero(v43, v7);
  if (*(a2 + 32))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(v11 + v8);
      if (v12)
      {
        v50 = *(v11 + v8 + 8);
        v13 = v50;
        glpABIGetTypeSize(0, v50, 0);
        glpTypeSizeGetSize();
        if (v14 == 1 && !glpTypeGetKind(v13))
        {
          *&v43[16 * v10++] = v50;
        }

        else
        {
          v15 = (v5[1])(*v5, 176, "Constant Pack Record (direct)");
          *v15 = 0;
          *(v15 + 8) = 0;
          glpPointerHashPut(a3, v12, v15, v16);
        }
      }

      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 32));
  }

  else
  {
    v10 = 0;
  }

  v42 = v10;
  qsort_b(v43, v10, 0x10uLL, &__block_literal_global_1);
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  if (v10)
  {
    v17 = 0;
    v41 = xmmword_23A29C2D0;
    v40 = a3;
    v39 = v5;
    do
    {
      v46 = v17;
      v18 = &v43[16 * v17];
      v19 = glpScalarTypeFromGLPType(*v18);
      v20 = countComponents(*v18);
      v21 = v20;
      v44 = v19;
      v22 = v52 + 8 * v19;
      v23 = *v22;
      v51 = v41;
      v45 = v22;
      v47 = v23;
      if (!v23)
      {
        goto LABEL_26;
      }

      v48 = v20;
      v22 = v47;
      *&v50 = v18;
      v49 = v20;
      while (1)
      {
        v24 = v18[1];
        v25 = glpPrimitiveTypeFromScalarType(*(v22 + 2));
        BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(v25);
        if (!v21)
        {
          v22 = v47;
          a3 = v40;
          v5 = v39;
          goto LABEL_36;
        }

        v27 = *(v22 + 3);
        if (v27)
        {
          break;
        }

LABEL_24:
        v22 = *v22;
        v18 = v50;
        v21 = v49;
        if (!v22)
        {
          v22 = v45;
          a3 = v40;
          v5 = v39;
LABEL_26:
          while (1)
          {
            v22 = *v22;
            if (!v22)
            {
              break;
            }

            if (packInto(v18[1], v21, v22, &v51))
            {
              goto LABEL_36;
            }
          }

          v22 = (v5[1])(*v5, 200, "Packed Constant");
          *v22 = 0;
          *(v22 + 1) = v44;
          v22[32] = 0;
          packInto(v18[1], v21, v22, &v51);
          v33 = v47;
          while (v33)
          {
            v34 = v33;
            v33 = *v33;
            if (!v33)
            {
              goto LABEL_35;
            }
          }

          v34 = v45;
LABEL_35:
          *v34 = v22;
          goto LABEL_36;
        }
      }

      v28 = BytesPerComponent;
      v29 = 0;
      v30 = BytesPerComponent;
      do
      {
        v31 = 0;
        v32 = 0;
        while (memcmp(&v22[v31 + 16], (v24 + v28 * v29), v30))
        {
          ++v32;
          v31 += v28;
          if (v27 == v32)
          {
            goto LABEL_24;
          }
        }

        *(&v52[-1] + v29++) = v32;
      }

      while (v29 != v48);
      a3 = v40;
      v5 = v39;
      v18 = v50;
      v21 = v49;
LABEL_36:
      v35 = v18[1];
      v36 = v51;
      v37 = (v5[1])(*v5, 176, "Constant Pack Record (packed)");
      *v37 = 1;
      *(v37 + 8) = v22;
      *(v37 + 16) = v21;
      *(v37 + 20) = v36;
      glpPointerHashPut(a3, v35, v37, v38);
      v17 = v46 + 1;
    }

    while (v46 + 1 != v42);
  }
}

uint64_t uniqueComponentCount(uint64_t *a1)
{
  v2 = glpScalarTypeFromGLPType(*a1);
  v3 = glpPrimitiveTypeFromScalarType(v2);
  BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(v3);
  v5 = countComponents(*a1);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  v8 = v5;
  do
  {
    if (v6)
    {
      v9 = a1[1];
      v10 = BytesPerComponent * v6;
      if (!memcmp(&v9[v10], v9, BytesPerComponent))
      {
        v15 = 0;
      }

      else
      {
        v11 = BytesPerComponent;
        v12 = 1;
        do
        {
          v13 = v12;
          if (v6 == v12)
          {
            break;
          }

          v14 = memcmp(&v9[v10], &v9[v11], BytesPerComponent);
          v12 = v13 + 1;
          v11 += BytesPerComponent;
        }

        while (v14);
        v15 = v13 >= v6;
      }
    }

    else
    {
      v15 = 1;
    }

    v7 = (v7 + v15);
    ++v6;
  }

  while (v6 != v8);
  return v7;
}

uint64_t countComponents(uint64_t a1)
{
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
  result = glpPrimitiveTypeGetCategory(PrimitiveType);
  if (result != 1)
  {

    return glpPrimitiveVectorGetLength(PrimitiveType);
  }

  return result;
}

uint64_t packInto(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = glpPrimitiveTypeFromScalarType(*(a3 + 8));
  BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(v7);
  if (!a2)
  {
    return 1;
  }

  v9 = BytesPerComponent;
  v10 = 0;
  v18 = *(a3 + 12);
  v11 = a3 + 16;
  v12 = BytesPerComponent;
  while (1)
  {
    v13 = *(a3 + 12);
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      while (memcmp((v11 + v14), (a1 + v9 * v10), v12))
      {
        ++v15;
        v14 += v9;
        if (v13 == v15)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_9;
    }

LABEL_7:
    v16 = glpPrimitiveTypeFromScalarType(*(a3 + 8));
    if (v13 >= glpPrimitiveTypeGetMaxComponentsPerVec4(v16))
    {
      break;
    }

    memcpy((v11 + *(a3 + 12) * v9), (a1 + v9 * v10), v12);
    LODWORD(v15) = *(a3 + 12);
    *(a3 + 12) = v15 + 1;
LABEL_9:
    *(a4 + 4 * v10++) = v15;
    if (v10 == a2)
    {
      return 1;
    }
  }

  result = 0;
  *(a3 + 12) = v18;
  return result;
}