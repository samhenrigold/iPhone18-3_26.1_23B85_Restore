uint64_t _checkForPairedVertSegments(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, CFArrayRef theArray, unint64_t a7, unint64_t a8, BOOL *a9, void *a10)
{
  v10 = a9;
  v115 = 0;
  v114 = 0;
  if (!a2)
  {
    v110 = 0;
    v15 = 0;
    goto LABEL_86;
  }

  v11 = theArray;
  v12 = a5;
  v13 = a4;
  v14 = a2;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v112 = a2 - 1;
  v104 = a1;
  v105 = a3;
  v98 = theArray;
  v99 = a9;
  v97 = a5;
  v103 = a2;
  while (1)
  {
    v18 = *(v12 + 2 * v17);
    if (v18 != 0xFFFF)
    {
      break;
    }

LABEL_81:
    ++v17;
    a1 += a3;
    if (v17 == v14)
    {
      v110 = v16;
LABEL_86:
      v84 = 0;
      goto LABEL_87;
    }
  }

  v101 = a1;
  ValueAtIndex = CFArrayGetValueAtIndex(v11, v18);
  Count = CFArrayGetCount(ValueAtIndex);
  if (v15)
  {
    free(v15);
  }

  if (v16)
  {
    free(v16);
  }

  v15 = malloc_type_calloc(Count + 1, 2uLL, 0x1000040BDFB0063uLL);
  if (!v15 || (LinkedSegmentInfo = malloc_type_calloc(Count + 1, 1uLL, 0x100004077774924uLL)) == 0)
  {
    v110 = 0;
    v84 = 4294950305;
    goto LABEL_87;
  }

  v16 = LinkedSegmentInfo;
  v110 = LinkedSegmentInfo;
  v102 = v17;
  if (v17)
  {
    if (Count)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      while (1)
      {
        LinkedSegmentInfo = _getLinkedSegmentInfo(v13, ValueAtIndex, v26, &v114);
        if (LinkedSegmentInfo)
        {
          goto LABEL_96;
        }

        v28 = v114;
        v29 = v15[v25];
        if (v114 <= v27)
        {
          v16 = v110;
        }

        else
        {
          v30 = (v101 + v27);
          v31 = v114 - v27;
          v16 = v110;
          do
          {
            v32 = *v30++;
            v29 += v32;
            v15[v25] = v29;
            --v31;
          }

          while (v31);
        }

        v16[v25] = (77 * (v28 - v27)) >> 7 > v29;
        v25 = ++v26;
        v27 = v28;
        if (Count <= v26)
        {
          goto LABEL_27;
        }
      }
    }

    v28 = 0;
LABEL_27:
    v36 = v28;
    v37 = v15[Count];
    a3 = v105;
    if (v28 >= v105)
    {
      v17 = v102;
    }

    else
    {
      v17 = v102;
      v38 = v28;
      do
      {
        v37 += *(v104 + v102 * v105 + v36);
        v15[Count] = v37;
        v36 = ++v38;
      }

      while (v38 < v105);
    }

    v16[Count] = (77 * (v105 - v28)) >> 7 > v37;
    if (Count)
    {
      goto LABEL_33;
    }

LABEL_79:
    v14 = v103;
LABEL_80:
    a1 = v101;
    goto LABEL_81;
  }

  if (Count)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    while (1)
    {
      LinkedSegmentInfo = _getLinkedSegmentInfo(v13, ValueAtIndex, v34, &v114);
      if (LinkedSegmentInfo)
      {
        break;
      }

      v15[v33] = v114 - v35;
      v35 = v114;
      v33 = ++v34;
      if (Count <= v34)
      {
        goto LABEL_78;
      }
    }

LABEL_96:
    v84 = LinkedSegmentInfo;
    goto LABEL_87;
  }

  v35 = 0;
LABEL_78:
  a3 = v105;
  v15[Count] = v105 - v35;
  v16 = v110;
  v17 = 0;
  if (!Count)
  {
    goto LABEL_79;
  }

LABEL_33:
  v39 = 0;
  v40 = 0;
  v100 = (v16 + 1);
  v41 = *v15;
  LOBYTE(v42) = *v16 == 0;
  while (1)
  {
    if (!v42)
    {
      v42 = 0;
      goto LABEL_36;
    }

    v68 = v40;
    v69 = OUTLINED_FUNCTION_7_2(LinkedSegmentInfo, v21, v105, v22, v23, v40, v41, v24, v86, v89, &v115, a10, v96, v97, v98, v99, v100, v101, v102, v103, v104);
    _checkForTopBotPatch(v69, v70, v71, v72, v73, v74, v75, 1, v87, v90, v92, v94);
    if (LinkedSegmentInfo)
    {
      goto LABEL_97;
    }

    if (v115)
    {
      break;
    }

    v42 = *(v100 + v39) == 0;
    v16 = v110;
    v40 = v68;
LABEL_36:
    v43 = v40 + 1;
    v44 = v15[v43];
    v45 = (v40 + 1);
    if (Count > v45)
    {
      v46 = 0;
      v111 = v40;
      while (1)
      {
        if (v16[v45])
        {
          goto LABEL_68;
        }

        v113 = v43;
        v47 = Count;
        v48 = v42;
        v49 = v15[v45];
        v116 = 0;
        v117 = 0;
        LinkedSegmentInfo = _getLinkedSegmentInfo(a4, ValueAtIndex, v40, &v117);
        if (LinkedSegmentInfo || (LinkedSegmentInfo = _getLinkedSegmentInfo(a4, ValueAtIndex, v113, &v116), LinkedSegmentInfo))
        {
          v84 = LinkedSegmentInfo;
          v115 = 0;
          goto LABEL_84;
        }

        v46 += v49;
        v50 = HIWORD(v117);
        v16 = v110;
        v42 = v48;
        Count = v47;
        if (HIWORD(v117) != HIWORD(v116))
        {
          break;
        }

        v51 = WORD2(v117);
        if (v112 == HIWORD(v117) && WORD2(v117) == 0)
        {
          break;
        }

        v53 = v117;
        v54 = v116 - v117;
        v55 = (v116 - v117);
        if (v55 <= a7)
        {
          break;
        }

        if (v112 == HIWORD(v117))
        {
          v56 = 0;
          v57 = 0;
        }

        else
        {
          if (v116 > v117)
          {
            v58 = 0;
            v59 = v116 - v117;
            v60 = (v104 + HIWORD(v117) * v105 + v117);
            do
            {
              v61 = *v60++;
              v58 += v61;
              --v59;
            }

            while (v59);
          }

          OUTLINED_FUNCTION_1_1();
          v57 = v54;
          if (v62 == v63)
          {
            break;
          }
        }

        if (!v51)
        {
          v54 = 0;
        }

        v64 = v54 + 2 * (v50 - v51) + v57;
        if (a8 >= v64)
        {
          break;
        }

        if (v51)
        {
          v65 = v46;
        }

        else
        {
          v65 = 0;
        }

        v66 = (v56 + v65 + WORD1(v117) + WORD1(v116));
        v67 = (103 * v64) >> 7;
        if (a10 && v67 < v66)
        {
          v84 = 0;
          *a10 = v51;
          a10[1] = v53;
          a10[2] = v50 - v51;
          a10[3] = v55;
          v115 = 1;
          goto LABEL_84;
        }

        v115 = v67 < v66;
        if (v67 < v66)
        {
          goto LABEL_98;
        }

LABEL_65:
        v43 = v113 + 1;
        v45 = (v113 + 1);
        v40 = v111;
        if (v47 <= v45)
        {
          goto LABEL_68;
        }
      }

      v115 = 0;
      goto LABEL_65;
    }

    v46 = 0;
LABEL_68:
    if (!v16[Count])
    {
      v76 = v40;
      v77 = OUTLINED_FUNCTION_7_2(LinkedSegmentInfo, v21, v105, v22, v23, v40, (v15[Count] + v46), v24, v86, v89, &v115, a10, v96, v97, v98, v99, v100, v101, v102, v103, v104);
      _checkForTopBotPatch(v77, v78, v79, v80, v81, v82, v83, 0, v88, v91, v93, v95);
      if (LinkedSegmentInfo)
      {
LABEL_97:
        v84 = LinkedSegmentInfo;
        goto LABEL_84;
      }

      v16 = v110;
      v40 = v76;
      if (v115)
      {
        break;
      }
    }

    v41 += v44;
    v39 = ++v40;
    if (Count <= v40)
    {
      v11 = v98;
      v10 = v99;
      v12 = v97;
      v13 = a4;
      a3 = v105;
      v17 = v102;
      v14 = v103;
      goto LABEL_80;
    }
  }

LABEL_98:
  v84 = 0;
LABEL_84:
  v10 = v99;
LABEL_87:
  if (v10)
  {
    *v10 = v115;
  }

  if (v15)
  {
    free(v15);
  }

  if (v110)
  {
    free(v110);
  }

  return v84;
}

uint64_t _getLinkedSegmentInfo(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    return 4294950306;
  }

  if (!FigCFArrayGetInt16AtIndex())
  {
    return 4294950303;
  }

  if (FigCFArrayGetInt64AtIndex())
  {
    return 0;
  }

  return 4294950303;
}

void _checkForTopBotPatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __int16 a7, int a8, unint64_t a9, unint64_t a10, BOOL *a11, void *a12)
{
  v37 = 0;
  if (_getLinkedSegmentInfo(a4, a5, a6, &v37))
  {
    goto LABEL_29;
  }

  v17 = WORD2(v37);
  v18 = HIWORD(v37);
  v19 = a2 - 1;
  if (!WORD2(v37) && v19 == HIWORD(v37))
  {
    goto LABEL_29;
  }

  v21 = a8 ? 0 : v37;
  v22 = a8 ? v37 : a3 - 1;
  v23 = v22 - v21;
  v24 = (v22 - v21);
  if (v24 <= a9)
  {
    goto LABEL_29;
  }

  if (v19 == HIWORD(v37))
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    if (v22 > v21)
    {
      v27 = 0;
      v28 = v21;
      do
      {
        v27 += *(a1 + HIWORD(v37) * a3 + v28++);
      }

      while (v22 > v28);
    }

    OUTLINED_FUNCTION_1_1();
    v26 = v23;
    if (v29 == v30)
    {
      goto LABEL_29;
    }
  }

  v31 = v18 - v17 + v23;
  if (!v17)
  {
    v31 = v18;
  }

  v32 = v26 + v31;
  if (a10 >= v32)
  {
LABEL_29:
    v36 = 0;
    goto LABEL_30;
  }

  if (v17)
  {
    v33 = a7;
  }

  else
  {
    v33 = 0;
  }

  v34 = v25 + v33 + WORD1(v37);
  v35 = (103 * v32) >> 7;
  v36 = v35 < v34;
  if (a12 && v35 < v34)
  {
    *a12 = v17;
    a12[1] = v21;
    a12[2] = v18 - v17;
    a12[3] = v24;
    v36 = 1;
  }

LABEL_30:
  if (a11)
  {
    *a11 = v36;
  }
}

uint64_t CMPhotoQualityControllerCopyDefaultControllerForAuxiliaryImage(int a1, int a2, CFNumberRef *a3, CFNumberRef *a4)
{
  switch(a1)
  {
    case 1635135537:
      Int = CMPhotoCFNumberCreateInt(3);
      if (!Int)
      {
        return 4294950305;
      }

      v9 = Int;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v10 = Mutable;
LABEL_21:
        FigCFDictionarySetFloat();
        goto LABEL_24;
      }

LABEL_25:
      CFRelease(v9);
      return 4294950305;
    case 1752589105:
      if (a2)
      {
        v7 = 6;
        goto LABEL_10;
      }

      v14 = CMPhotoCFNumberCreateInt(0);
      if (!v14)
      {
        return 4294950305;
      }

      v9 = v14;
      v15 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v15)
      {
        v10 = v15;
        goto LABEL_21;
      }

      goto LABEL_25;
    case 1936484717:
      v7 = 9;
LABEL_10:
      v8 = CMPhotoCFNumberCreateInt(v7);
      if (v8)
      {
        v9 = v8;
        v10 = 0;
LABEL_24:
        result = 0;
        *a3 = v9;
        *a4 = v10;
        return result;
      }

      return 4294950305;
    case 1785750887:
      if (a2)
      {
        v7 = 5;
        goto LABEL_10;
      }

      v16 = CMPhotoCFNumberCreateInt(4);
      if (v16)
      {
        v9 = v16;
        v10 = CMPhotoCFNumberCreateInt(5);
        if (v10)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      return 4294950305;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950306, "(Fig)", 122, v4);
}

uint64_t CMPhotoComputeWPSNRForPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, unint64_t a3, uint64_t a4, int a5, double *a6, CVPixelBufferRef *a7, CVPixelBufferRef *a8, CVPixelBufferRef *a9)
{
  v157 = 0;
  pixelBufferOut = 0;
  v156 = 0;
  v15 = *MEMORY[0x1E695E480];
  PixelFormatType = MEMORY[0x1E695E9D8];
  v17 = MEMORY[0x1E695E9E8];
  v18 = OUTLINED_FUNCTION_13();
  allocator = v15;
  v19 = OUTLINED_FUNCTION_13();
  CFDictionaryAddValue(v18, *MEMORY[0x1E69660D8], v19);
  pixelBuffer = a2;
  if (CMPhotoPixelBufferHasCLAP(a1) || CMPhotoPixelBufferHasCLAP(a2) || (v17 = a3, a3) && (a5 >= 1 ? (v20 = a5 > a3) : (v20 = 1), v20))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    FigSignalErrorAtGM(v124);
    v122 = 0;
    goto LABEL_94;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    v122 = FigSignalErrorAtGM(v123);
LABEL_94:
    OUTLINED_FUNCTION_3_2();
    goto LABEL_72;
  }

  v149 = v19;
  v21 = CVPixelBufferGetPixelFormatType(a2);
  v22 = OUTLINED_FUNCTION_9_0();
  CMPhotoGetPixelBufferCLAP(v22, v23, 0, v24, v25);
  v26 = OUTLINED_FUNCTION_5_2();
  CMPhotoGetPixelBufferCLAP(v26, v27, 0, v28, v29);
  v155 = a1;
  v148 = a6;
  v15 = 0;
  if (a8)
  {
    v153 = malloc_type_calloc(0, 4uLL, 0x100004052888210uLL);
    if (!v153)
    {
      a8 = 0;
      v153 = 0;
      PixelFormatType = 0;
      v17 = 0;
      v9 = 0.0;
      v122 = 4294950305;
LABEL_71:
      a6 = v148;
      v19 = v149;
      goto LABEL_72;
    }
  }

  else
  {
    v153 = 0;
  }

  v150 = a8;
  a8 = 0;
  v146 = a5;
  v30 = CMPhotoPixelFormatContainsYCbCr(v21);
  v31 = CMPhotoPixelFormatContainsRGB(v21);
  v32 = CMPhotoPixelFormatContainsGrayScale(v21);
  v33 = CVPixelBufferGetPixelFormatType(a2);
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v33);
  v35 = CVPixelBufferGetPixelFormatType(a2);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v35);
  v37 = CVPixelBufferLockBaseAddress(v155, 0);
  v9 = 0.0;
  if (v37)
  {
    v122 = v37;
    PixelFormatType = 0;
    v17 = 0;
    goto LABEL_71;
  }

  v38 = OUTLINED_FUNCTION_5_2();
  v40 = CVPixelBufferLockBaseAddress(v38, v39);
  if (v40)
  {
    v122 = v40;
    PixelFormatType = 0;
    goto LABEL_70;
  }

  if (v32)
  {
    if (v21 - 1278226736 <= 6 && ((1 << (v21 - 48)) & 0x45) != 0)
    {
      v41 = 16 - BitDepthForPixelFormat;
LABEL_33:
      v44 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
      BaseAddress = CVPixelBufferGetBaseAddress(a2);
      v46 = CVPixelBufferGetBytesPerRow(v155) / BytesPerPixelForPixelFormat;
      v47 = CVPixelBufferGetBaseAddress(v155);
      if (a3)
      {
        OUTLINED_FUNCTION_1_2();
        calc_wpsnr(BaseAddress, v44, v47, v46, BitDepthForPixelFormat, v48, v49, v50, v146, 1, v41, v125, v129, v133, v137);
      }

      OUTLINED_FUNCTION_11_0();
      calc_wpsnr(BaseAddress, v44, v47, v46, BitDepthForPixelFormat, v51, v52, 8, 8, 1, v41, 0, v129, v133, v137);
      v9 = v53;
      goto LABEL_56;
    }

    if (v21 == 1278226488)
    {
      v41 = 0;
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  if (v30)
  {
    if (v21 == 875704422 || v21 == 875704438)
    {
      v145 = 0;
    }

    else
    {
      if (v21 != 2019963440 && v21 != 2016686640)
      {
        goto LABEL_44;
      }

      v145 = 6;
    }

    v76 = OUTLINED_FUNCTION_5_2();
    v78 = CVPixelBufferGetBytesPerRowOfPlane(v76, v77) / BytesPerPixelForPixelFormat;
    v79 = 2 * BytesPerPixelForPixelFormat;
    v143 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL) / v79;
    v80 = OUTLINED_FUNCTION_5_2();
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v80, v81);
    v142 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
    v83 = OUTLINED_FUNCTION_9_0();
    v144 = CVPixelBufferGetBytesPerRowOfPlane(v83, v84) / BytesPerPixelForPixelFormat;
    v141 = CVPixelBufferGetBytesPerRowOfPlane(v155, 1uLL) / v79;
    v85 = OUTLINED_FUNCTION_9_0();
    v87 = CVPixelBufferGetBaseAddressOfPlane(v85, v86);
    v88 = CVPixelBufferGetBaseAddressOfPlane(v155, 1uLL);
    if (a3)
    {
      OUTLINED_FUNCTION_1_2();
      calc_wpsnr(BaseAddressOfPlane, v78, v87, v144, BitDepthForPixelFormat, v89, v90, v91, v146, 1, v145, v125, v129, v133, v137);
    }

    OUTLINED_FUNCTION_11_0();
    calc_wpsnr(BaseAddressOfPlane, v78, v87, v144, BitDepthForPixelFormat, v92, v93, 8, 8, 1, v145, 0, v129, v133, v137);
    v95 = v94;
    OUTLINED_FUNCTION_4_2();
    calc_wpsnr(v142, v143, v88, v141, BitDepthForPixelFormat, 0, 0, 8, 8, 2, v145, v127, v131, v135, v139);
    v97 = v96;
    OUTLINED_FUNCTION_4_2();
    calc_wpsnr(v142 + BytesPerPixelForPixelFormat, v143, v88 + BytesPerPixelForPixelFormat, v141, BitDepthForPixelFormat, 0, 0, 8, 8, 2, v145, v128, v132, v136, v140);
    v9 = (v97 + v95 * 6.0 + v98) * 0.125;
  }

  else
  {
    if (!v31)
    {
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_2();
      v122 = FigSignalErrorAtGM(v117);
      goto LABEL_69;
    }

    if (v21 != 1111970369 && v21 != 1380401729 && v21 != 1815491698)
    {
LABEL_44:
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_2();
      FigSignalErrorAtGM(v118);
      v122 = 0;
LABEL_69:
      PixelFormatType = 1;
LABEL_70:
      v17 = 1;
      goto LABEL_71;
    }

    v56 = CVPixelBufferGetBytesPerRow(a2) / BytesPerPixelForPixelFormat;
    v57 = OUTLINED_FUNCTION_5_2();
    v59 = CVPixelBufferGetBaseAddressOfPlane(v57, v58);
    v60 = CVPixelBufferGetBytesPerRow(v155) / BytesPerPixelForPixelFormat;
    v61 = CVPixelBufferGetBaseAddress(v155);
    if (a3)
    {
      OUTLINED_FUNCTION_1_2();
      calc_wpsnr(v59 + v62, v56, v61 + v62, v60, BitDepthForPixelFormat, v63, v64, v65, v146, 4, 0, v125, v129, v133, v137);
    }

    v66 = v59;
    v67 = 1;
    if (BitDepthForPixelFormat <= 8)
    {
      v68 = 2;
    }

    else
    {
      v67 = 2;
      v68 = 4;
    }

    calc_wpsnr(v66 + v67, v56, v61 + v67, v60, BitDepthForPixelFormat, 0, 0, 8, 8, 4, 0, 0, 0, v153, 0);
    v70 = v69;
    calc_wpsnr(v66, v56, v61, v60, BitDepthForPixelFormat, 0, 0, 8, 8, 4, 0, 0, 0, 0, 0);
    v72 = v71;
    OUTLINED_FUNCTION_4_2();
    calc_wpsnr(v66 + v68, v56, v61 + v68, v60, BitDepthForPixelFormat, v73, v74, 8, 8, 4, 0, v126, v130, v134, v138);
    v9 = (v70 + v72 + v75) / 3.0;
  }

LABEL_56:
  v19 = v149;
  v99 = allocator;
  if (a3)
  {
    v100 = CVPixelBufferCreate(allocator, 0, 0, 0x72673366u, 0, &pixelBufferOut);
    if (v100)
    {
      goto LABEL_92;
    }

    v101 = OUTLINED_FUNCTION_10_2();
    CVPixelBufferLockBaseAddress(v101, v102);
    v103 = OUTLINED_FUNCTION_10_2();
    CVPixelBufferGetBytesPerRowOfPlane(v103, v104);
    v105 = OUTLINED_FUNCTION_10_2();
    CVPixelBufferGetBaseAddressOfPlane(v105, v106);
    CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
    CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 2uLL);
    v107 = OUTLINED_FUNCTION_10_2();
    CVPixelBufferUnlockBaseAddress(v107, v108);
    v99 = allocator;
    if (a7)
    {
      *a7 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

  if (v150)
  {
    v100 = CVPixelBufferCreate(v99, 0, 0, 0x4C303066u, 0, &v157);
    if (!v100)
    {
      v109 = OUTLINED_FUNCTION_6_2();
      CVPixelBufferLockBaseAddress(v109, v110);
      v111 = OUTLINED_FUNCTION_6_2();
      CVPixelBufferGetBytesPerRowOfPlane(v111, v112);
      v113 = OUTLINED_FUNCTION_6_2();
      CVPixelBufferGetBaseAddressOfPlane(v113, v114);
      v115 = OUTLINED_FUNCTION_6_2();
      CVPixelBufferUnlockBaseAddress(v115, v116);
      *v150 = v157;
      v157 = 0;
      goto LABEL_63;
    }

LABEL_92:
    v122 = v100;
    goto LABEL_67;
  }

LABEL_63:
  if (!a9)
  {
    v122 = 0;
    goto LABEL_67;
  }

  v122 = CVPixelBufferCreate(v99, 0, 0, 0x4C303066u, 0, &v156);
  if (!v122)
  {
    CVPixelBufferLockBaseAddress(v156, 0);
    CVPixelBufferGetBytesPerRowOfPlane(v156, 0);
    CVPixelBufferGetBaseAddressOfPlane(v156, 0);
    CVPixelBufferUnlockBaseAddress(v156, 0);
    v122 = 0;
    *a9 = v156;
    v156 = 0;
LABEL_67:
    PixelFormatType = 1;
    v17 = 1;
    a6 = v148;
    goto LABEL_72;
  }

  a6 = v148;
  if (v156)
  {
    CFRelease(v156);
  }

  PixelFormatType = 1;
  v17 = 1;
LABEL_72:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  free(v15);
  free(a8);
  free(v153);
  if (a6)
  {
    *a6 = v9;
  }

  if (v17)
  {
    v119 = OUTLINED_FUNCTION_9_0();
    CVPixelBufferUnlockBaseAddress(v119, v120);
  }

  if (PixelFormatType)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  return v122;
}

uint64_t _computeFLIPForRGB(__CVBuffer *a1, __CVBuffer *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8, float a9, float a10)
{
  v997 = *MEMORY[0x1E69E9840];
  v985 = 0;
  v986 = 0;
  v983 = 0;
  v984 = 0;
  v981 = 0;
  v982 = 0;
  v979 = 0;
  v980 = 0;
  v977 = 0;
  v978 = 0;
  v975 = 0;
  v976 = 0;
  v973 = 0;
  v974 = 0;
  pixelBuffer = 0;
  v972 = 0;
  v969 = 0;
  cf = 0;
  v968 = 0;
  v18 = *MEMORY[0x1E695E480];
  v19 = OUTLINED_FUNCTION_15();
  v616 = OUTLINED_FUNCTION_15();
  CFDictionaryAddValue(v19, *MEMORY[0x1E69660D8], v616);
  if (CMPhotoPixelBufferHasCLAP(a1) || CMPhotoPixelBufferHasCLAP(a2))
  {
    v431 = 4294950306;
    goto LABEL_196;
  }

  v966 = 0;
  v967 = 0;
  CMPhotoGetPixelBufferCLAP(a1, 0, 0, &v966, &v967);
  v20 = OUTLINED_FUNCTION_5();
  CMPhotoGetPixelBufferCLAP(v20, v21, 0, v22, v23);
  if (v966)
  {
    v36 = 0;
  }

  else
  {
    v36 = v967 == 0;
  }

  if (!v36)
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2();
    v464 = FigSignalErrorAtGM(v463);
    goto LABEL_255;
  }

  *&v928 = a9;
  v734 = a6;
  HIDWORD(v603) = a3;
  v590 = a4;
  v37 = *MEMORY[0x1E695F050];
  v38 = *(MEMORY[0x1E695F050] + 8);
  v40 = *(MEMORY[0x1E695F050] + 16);
  v39 = *(MEMORY[0x1E695F050] + 24);
  v42 = *MEMORY[0x1E695F060];
  v41 = *(MEMORY[0x1E695F060] + 8);
  v30.n128_u64[0] = *MEMORY[0x1E695F050];
  v31.n128_u64[0] = v38;
  v32.n128_f64[0] = v40;
  v33.n128_u64[0] = v39;
  v34.n128_u64[0] = *MEMORY[0x1E695F060];
  v464 = OUTLINED_FUNCTION_8_1(0, a1, v30, v31, v32, v33, v34, v35, v24, v25, v26, v27, v28, v29, 0, 1u, &v986);
  if (v464)
  {
    goto LABEL_255;
  }

  v630 = v38;
  v643 = v37;
  v49.n128_u64[0] = v37;
  v50.n128_u64[0] = v38;
  v51.n128_f64[0] = v40;
  v656 = v39;
  v52.n128_u64[0] = v39;
  v53.n128_f64[0] = v42;
  v55 = *&v41;
  v464 = OUTLINED_FUNCTION_8_1(0, a2, v49, v50, v51, v52, v53, v54, v43, v44, v45, v46, v47, v48, 0, 1u, &v985);
  if (v464)
  {
    goto LABEL_255;
  }

  v56 = v42;
  v464 = _computesRGB2LinearRGB(v986, v986);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = _computesRGB2LinearRGB(v985, v985);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = _computesLinearRGB2XYZ(v986, v986);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = _computesLinearRGB2XYZ(v985, v985);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v57, v58, &v984);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v59, v60, &v983);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = _computesXYZ2YCxCz(v986, v984);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = _computesXYZ2YCxCz(v985, v983);
  if (v464)
  {
    goto LABEL_255;
  }

  if (v986)
  {
    CFRelease(v986);
    v986 = 0;
  }

  v63 = v41;
  v64 = v40;
  if (v985)
  {
    CFRelease(v985);
    v985 = 0;
  }

  v65 = 0.25;
  if (a8 != 0.0)
  {
    v65 = a8;
  }

  v66 = 0.718;
  if (*&v928 != 0.0)
  {
    v66 = *&v928;
  }

  if (a10 == 0.0)
  {
    v67 = v966;
    if (v966 <= v967)
    {
      v67 = v967;
    }

    a10 = 4096.0;
    if (v67 <= 4096.0)
    {
      a10 = v67;
    }
  }

  v68 = (v65 * (a10 / v66)) * 0.017453;
  HIDWORD(v747) = vcvtps_s32_f32(v68 * 0.13505);
  v464 = OUTLINED_FUNCTION_3_3(v18, (2 * HIDWORD(v747)) | 1, (2 * HIDWORD(v747)) | 1, v61, v62, &pixelBuffer);
  if (v464)
  {
    goto LABEL_255;
  }

  v69 = pixelBuffer;
  v721 = v19;
  v669 = v55;
  *&v708 = v40;
  v695 = v18;
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1919365990)
  {
    OUTLINED_FUNCTION_2_3();
    v70 = OUTLINED_FUNCTION_5();
    CMPhotoGetPixelBufferCLAP(v70, v71, 0, v72, v73);
    v74 = OUTLINED_FUNCTION_5();
    CVPixelBufferLockBaseAddress(v74, v75);
    v76 = OUTLINED_FUNCTION_5();
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v76, v77);
    v79 = OUTLINED_FUNCTION_5();
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v79, v80);
    v82 = CVPixelBufferGetBaseAddressOfPlane(v69, 1uLL);
    v83 = CVPixelBufferGetBaseAddressOfPlane(v69, 2uLL);
    if (v988)
    {
      v84 = v83;
      v554 = v69;
      *&v578 = v56;
      v85 = 0;
      LODWORD(v747) = -HIDWORD(v747);
      v86 = 0.00001;
      v87 = 25.854;
      v88 = 0.0053;
      LODWORD(v836) = 1125602739;
      v542 = BaseAddressOfPlane;
      LODWORD(v821) = 1103283632;
      v530 = v82;
      v89 = v82;
      v90 = v83;
      v91 = 0.0;
      v92 = 0.0;
      v93 = 0.0;
      v94 = v987;
      *(&v566 + 1) = v68;
      v95 = 1.0 / v68;
      v759 = v987;
      v771 = v988;
      v783 = BytesPerRowOfPlane;
      LODWORD(v866) = -1055004185;
      LODWORD(v851) = 999948917;
      HIDWORD(v795) = 1133976072;
      LODWORD(v807) = 1020054733;
      *&v795 = 1.0 / v68;
      do
      {
        if (v94)
        {
          v96 = -HIDWORD(v747);
          *&v881 = (v95 * (v85 - HIDWORD(v747))) * (v95 * (v85 - HIDWORD(v747)));
          v97 = BaseAddressOfPlane;
          v98 = v89;
          v99 = v90;
          v100 = v94;
          do
          {
            *&v896 = v93;
            *&v911 = v92;
            *&v928 = v91;
            v101 = (*&v881 + ((v95 * v96) * (v95 * v96))) * -9.8696;
            v102 = expf(v101 / 0.0047);
            v103 = (expf(v101 / v86) * 0.0) + (v102 * v87);
            v104 = expf(v101 / v88);
            v105 = v88;
            v106 = v87;
            v107 = v86;
            v108 = expf(v101 / 0.025) * 151.33;
            v109 = v108 + (v104 * 24.347);
            v110 = expf(v101 / 0.04);
            v95 = *&v795;
            v111 = v108 + (v110 * 302.2);
            v86 = v107;
            v87 = v106;
            v88 = v105;
            *v97++ = v103;
            *v98++ = v109;
            *v99++ = v111;
            v91 = *&v928 + v103;
            v92 = *&v911 + v109;
            v93 = *&v896 + v111;
            ++v96;
            --v100;
          }

          while (v100);
        }

        ++v85;
        v90 = (v90 + v783);
        v89 = (v89 + v783);
        BaseAddressOfPlane = (BaseAddressOfPlane + v783);
        v94 = v759;
      }

      while (v85 != v771);
      v112 = 0;
      v19 = v721;
      v56 = *&v578;
      v63 = *&v669;
      v64 = *&v708;
      v18 = v695;
      v68 = *(&v566 + 1);
      v113 = v542;
      v114 = v530;
      do
      {
        v115 = v113;
        v116 = v114;
        v117 = v84;
        for (i = v759; i; --i)
        {
          *v115 = *v115 / v91;
          ++v115;
          *v116 = *v116 / v92;
          ++v116;
          *v117 = *v117 / v93;
          ++v117;
        }

        ++v112;
        v84 = (v84 + v783);
        v114 = (v114 + v783);
        v113 = (v113 + v783);
      }

      while (v112 != v771);
    }

    v119 = OUTLINED_FUNCTION_5();
    v464 = CVPixelBufferUnlockBaseAddress(v119, v120);
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2();
    v464 = FigSignalErrorAtGM(v465);
    if (v464)
    {
      goto LABEL_255;
    }
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v121, v122, &v982);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v123, v124, &v981);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = convolve(v984, v982, pixelBuffer);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = convolve(v983, v981, pixelBuffer);
  if (v464)
  {
    goto LABEL_255;
  }

  v132 = pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
    pixelBuffer = 0;
  }

  v133 = OUTLINED_FUNCTION_10_3(v132, v125, v126, v127, v128, v129, v130, v131, v470, v482, v494, v506, v518, v530, v542, v554, v566, v578, v590, v603, v616, a7, v630, v643, v656, v669, a5, v695, v708, v721, v734, v747, v759, v771, v783, v795, v807, v821, v836, v851, v866, v881, v896, v911, v928, 0, 0, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesYCxCz2XYZ(v133, v134);
  if (v464)
  {
    goto LABEL_255;
  }

  v142 = OUTLINED_FUNCTION_9_3(v464, v135, v136, v137, v138, v139, v140, v141, v471, v483, v495, v507, v519, v531, v543, v555, v567, v579, v591, v604, v616, v618, v631, v644, v657, v670, v683, v696, v709, v722, v735, v748, v760, v772, v784, v796, v808, v822, v837, v852, v867, v882, v897, v912, v929, v944, v955, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesYCxCz2XYZ(v142, v143);
  if (v464)
  {
    goto LABEL_255;
  }

  v151 = OUTLINED_FUNCTION_10_3(v464, v144, v145, v146, v147, v148, v149, v150, v472, v484, v496, v508, v520, v532, v544, v556, v568, v580, v592, v605, v616, v619, v632, v645, v658, v671, v684, v697, v710, v723, v736, v749, v761, v773, v785, v797, v809, v823, v838, v853, v868, v883, v898, v913, v930, v945, v956, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesXYZ2LinearRGB(v151, v152);
  if (v464)
  {
    goto LABEL_255;
  }

  v160 = OUTLINED_FUNCTION_9_3(v464, v153, v154, v155, v156, v157, v158, v159, v473, v485, v497, v509, v521, v533, v545, v557, v569, v581, v593, v606, v616, v620, v633, v646, v659, v672, v685, v698, v711, v724, v737, v750, v762, v774, v786, v798, v810, v824, v839, v854, v869, v884, v899, v914, v931, v946, v957, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesXYZ2LinearRGB(v160, v161);
  if (v464)
  {
    goto LABEL_255;
  }

  v169 = OUTLINED_FUNCTION_10_3(v464, v162, v163, v164, v165, v166, v167, v168, v474, v486, v498, v510, v522, v534, v546, v558, v570, v582, v594, v607, v616, v621, v634, v647, v660, v673, v686, v699, v712, v725, v738, v751, v763, v775, v787, v799, v811, v825, v840, v855, v870, v885, v900, v915, v932, v947, v958, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesClamp(v169, v170);
  if (v464)
  {
    goto LABEL_255;
  }

  v178 = OUTLINED_FUNCTION_9_3(v464, v171, v172, v173, v174, v175, v176, v177, v475, v487, v499, v511, v523, v535, v547, v559, v571, v583, v595, v608, v616, v622, v635, v648, v661, v674, v687, v700, v713, v726, v739, v752, v764, v776, v788, v800, v812, v826, v841, v856, v871, v886, v901, v916, v933, v948, v959, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesClamp(v178, v179);
  if (v464)
  {
    goto LABEL_255;
  }

  v187 = OUTLINED_FUNCTION_10_3(v464, v180, v181, v182, v183, v184, v185, v186, v476, v488, v500, v512, v524, v536, v548, v560, v572, v584, v596, v609, v616, v623, v636, v649, v662, v675, v688, v701, v714, v727, v740, v753, v765, v777, v789, v801, v813, v827, v842, v857, v872, v887, v902, v917, v934, v949, v960, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesLinearRGB2XYZ(v187, v188);
  if (v464)
  {
    goto LABEL_255;
  }

  v196 = OUTLINED_FUNCTION_9_3(v464, v189, v190, v191, v192, v193, v194, v195, v477, v489, v501, v513, v525, v537, v549, v561, v573, v585, v597, v610, v616, v624, v637, v650, v663, v676, v689, v702, v715, v728, v741, v754, v766, v778, v790, v802, v814, v828, v843, v858, v873, v888, v903, v918, v935, v950, v961, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesLinearRGB2XYZ(v196, v197);
  if (v464)
  {
    goto LABEL_255;
  }

  v205 = OUTLINED_FUNCTION_10_3(v464, v198, v199, v200, v201, v202, v203, v204, v478, v490, v502, v514, v526, v538, v550, v562, v574, v586, v598, v611, v616, v625, v638, v651, v664, v677, v690, v703, v716, v729, v742, v755, v767, v779, v791, v803, v815, v829, v844, v859, v874, v889, v904, v919, v936, v951, v962, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesXYZ2CIELab(v205, v206);
  if (v464)
  {
    goto LABEL_255;
  }

  v214 = OUTLINED_FUNCTION_9_3(v464, v207, v208, v209, v210, v211, v212, v213, v479, v491, v503, v515, v527, v539, v551, v563, v575, v587, v599, v612, v616, v626, v639, v652, v665, v678, v691, v704, v717, v730, v743, v756, v768, v780, v792, v804, v816, v830, v845, v860, v875, v890, v905, v920, v937, v952, v963, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesXYZ2CIELab(v214, v215);
  if (v464)
  {
    goto LABEL_255;
  }

  v223 = OUTLINED_FUNCTION_10_3(v464, v216, v217, v218, v219, v220, v221, v222, v480, v492, v504, v516, v528, v540, v552, v564, v576, v588, v600, v613, v616, v627, v640, v653, v666, v679, v692, v705, v718, v731, v744, v757, v769, v781, v793, v805, v817, v831, v846, v861, v876, v891, v906, v921, v938, v953, v964, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesHunt(v223, v224);
  if (v464)
  {
    goto LABEL_255;
  }

  v232 = OUTLINED_FUNCTION_9_3(v464, v225, v226, v227, v228, v229, v230, v231, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v614, v616, v628, v641, v654, v667, v680, v693, v706, v719, v732, v745, v758, v770, v782, v794, v806, v818, v832, v847, v862, v877, v892, v907, v922, v939, v954, v965, v966, v967, v968, v969, cf, pixelBuffer, v972, v973, v974, v975, v976, v977, v978, v979, v980, v981);
  v464 = _computesHunt(v232, v233);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v234, v235, &v974);
  if (v464)
  {
    goto LABEL_255;
  }

  v237 = v981;
  v236 = v982;
  v238 = v974;
  if (CVPixelBufferGetPixelFormatType(v982) == 1919365990 && CVPixelBufferGetPixelFormatType(v237) == 1919365990 && CVPixelBufferGetPixelFormatType(v238) == 1919365990)
  {
    v239 = v56;
    v240 = OUTLINED_FUNCTION_5();
    CVPixelBufferLockBaseAddress(v240, v241);
    v242 = OUTLINED_FUNCTION_7_1();
    CVPixelBufferLockBaseAddress(v242, v243);
    v244 = OUTLINED_FUNCTION_9_0();
    CVPixelBufferLockBaseAddress(v244, v245);
    OUTLINED_FUNCTION_2_3();
    v246 = OUTLINED_FUNCTION_5();
    CMPhotoGetPixelBufferCLAP(v246, v247, 0, v248, v249);
    v250 = OUTLINED_FUNCTION_5();
    v252 = CVPixelBufferGetBytesPerRowOfPlane(v250, v251);
    v253 = OUTLINED_FUNCTION_5();
    v940 = CVPixelBufferGetBaseAddressOfPlane(v253, v254);
    v255 = CVPixelBufferGetBaseAddressOfPlane(v236, 1uLL);
    v833 = v236;
    v256 = CVPixelBufferGetBaseAddressOfPlane(v236, 2uLL);
    v257 = OUTLINED_FUNCTION_7_1();
    v923 = CVPixelBufferGetBytesPerRowOfPlane(v257, v258);
    v259 = OUTLINED_FUNCTION_7_1();
    v261 = CVPixelBufferGetBaseAddressOfPlane(v259, v260);
    v262 = OUTLINED_FUNCTION_12_1();
    v264 = CVPixelBufferGetBaseAddressOfPlane(v262, v263);
    v819 = v237;
    v265 = CVPixelBufferGetBaseAddressOfPlane(v237, 2uLL);
    v266 = OUTLINED_FUNCTION_9_0();
    v268 = CVPixelBufferGetBytesPerRowOfPlane(v266, v267);
    v269 = OUTLINED_FUNCTION_9_0();
    v271 = CVPixelBufferGetBaseAddressOfPlane(v269, v270);
    v272 = CVPixelBufferGetBaseAddressOfPlane(v238, 1uLL);
    v848 = v238;
    v273 = CVPixelBufferGetBaseAddressOfPlane(v238, 2uLL);
    v992 = 0.0;
    v991 = 0;
    v990 = 0.0;
    v989 = 0;
    v995 = 0x3F37163B3EB7163BLL;
    v996 = 1039408548;
    v993 = 0x3D93D3363E38C803;
    v994 = 1064520606;
    XYZ2CIELab(&v995, &v991);
    XYZ2CIELab(&v993, &v989);
    v274 = OUTLINED_FUNCTION_13_0(vabds_f32(*&v991, *&v989), ((*&v991 * 0.01) * *(&v991 + 1)) - ((*&v989 * 0.01) * *(&v989 + 1)), ((*&v991 * 0.01) * v992) - ((*&v989 * 0.01) * v990));
    v275 = powf(v274, 0.7);
    v908 = v988;
    if (v988)
    {
      v276 = 0;
      v277 = v275 * 0.4;
      v278 = v268 / 4;
      v279 = v987;
      v280 = v275 - (v275 * 0.4);
      v893 = (4 * v278);
      v281 = 0.95 / (v275 * 0.4);
      v863 = 4 * (v252 / 4);
      v878 = (4 * (v923 / 4));
      do
      {
        v924 = v276;
        if (v279)
        {
          for (j = 0; j != v279; ++j)
          {
            v283 = OUTLINED_FUNCTION_13_0(vabds_f32(*(v940 + j), v261[j]), v255[j] - v264[j], v256[j] - v265[j]);
            v284 = powf(v283, 0.7);
            if (v284 >= v277)
            {
              v285 = (((v284 - v277) / v280) * 0.05) + 0.95;
            }

            else
            {
              v285 = v281 * v284;
            }

            v271[j] = v285;
            v272[j] = v285;
            v273[j] = v285;
          }
        }

        v276 = (v924 + 1);
        v273 = (v893 + v273);
        v272 = (v893 + v272);
        v271 = (v893 + v271);
        v265 = (v878 + v265);
        v264 = (v878 + v264);
        v261 = (v878 + v261);
        v256 = (v256 + v863);
        v255 = (v255 + v863);
        v940 = (v940 + v863);
      }

      while ((v924 + 1) != v908);
    }

    CVPixelBufferUnlockBaseAddress(v819, 0);
    CVPixelBufferUnlockBaseAddress(v833, 0);
    CVPixelBufferUnlockBaseAddress(v848, 0);
    v19 = v733;
    v56 = v239;
    v63 = v681;
    v64 = v720;
    v18 = v707;
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2();
    v464 = FigSignalErrorAtGM(v466);
    if (v464)
    {
      goto LABEL_255;
    }
  }

  v288 = ((2 * vcvtps_s32_f32((v68 * 0.041) * 3.0)) | 1);
  v464 = OUTLINED_FUNCTION_3_3(v18, v288, v288, v286, v287, &cf);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_3_3(v18, v288, v288, v289, v290, &v969);
  if (v464)
  {
    goto LABEL_255;
  }

  setFeatureFilter(cf, 1, v68);
  v291 = setFeatureFilter(v969, 0, v68);
  v464 = OUTLINED_FUNCTION_0_1(v291, v966, v967, v292, v293, &v980);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v294, v295, &v979);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = _computesCIELab2Gray(v984, v980);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = _computesCIELab2Gray(v983, v979);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v296, v297, &v978);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v298, v299, &v976);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v300, v301, &v977);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v302, v303, &v975);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = convolve(v980, v978, cf);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = convolve(v979, v977, cf);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = convolve(v980, v976, v969);
  if (v464)
  {
    goto LABEL_255;
  }

  v464 = convolve(v979, v975, v969);
  if (v464)
  {
    goto LABEL_255;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v306 = v969;
  if (v969)
  {
    CFRelease(v969);
    v969 = 0;
  }

  v464 = OUTLINED_FUNCTION_0_1(v306, v966, v967, v304, v305, &v973);
  if (v464)
  {
    goto LABEL_255;
  }

  v308 = v977;
  v307 = v978;
  v310 = v975;
  v309 = v976;
  v311 = v973;
  if (CVPixelBufferGetPixelFormatType(v978) == 1919365990 && CVPixelBufferGetPixelFormatType(v308) == 1919365990 && CVPixelBufferGetPixelFormatType(v309) == 1919365990 && CVPixelBufferGetPixelFormatType(v310) == 1919365990 && CVPixelBufferGetPixelFormatType(v311) == 1919365990)
  {
    OUTLINED_FUNCTION_2_3();
    v312 = OUTLINED_FUNCTION_9_0();
    CMPhotoGetPixelBufferCLAP(v312, v313, 0, v314, v315);
    v316 = OUTLINED_FUNCTION_9_0();
    CVPixelBufferLockBaseAddress(v316, v317);
    v318 = OUTLINED_FUNCTION_7_1();
    CVPixelBufferLockBaseAddress(v318, v319);
    CVPixelBufferLockBaseAddress(v309, 0);
    v320 = OUTLINED_FUNCTION_14_0();
    CVPixelBufferLockBaseAddress(v320, v321);
    v322 = OUTLINED_FUNCTION_5();
    CVPixelBufferLockBaseAddress(v322, v323);
    v324 = OUTLINED_FUNCTION_9_0();
    v864 = CVPixelBufferGetBytesPerRowOfPlane(v324, v325);
    v326 = OUTLINED_FUNCTION_9_0();
    v328 = CVPixelBufferGetBaseAddressOfPlane(v326, v327);
    v329 = CVPixelBufferGetBaseAddressOfPlane(v307, 1uLL);
    v925 = v307;
    CVPixelBufferGetBaseAddressOfPlane(v307, 2uLL);
    v941 = v311;
    v330 = CVPixelBufferGetBaseAddressOfPlane(v309, 0);
    v331 = CVPixelBufferGetBaseAddressOfPlane(v309, 1uLL);
    v894 = v309;
    CVPixelBufferGetBaseAddressOfPlane(v309, 2uLL);
    v332 = OUTLINED_FUNCTION_7_1();
    v849 = CVPixelBufferGetBytesPerRowOfPlane(v332, v333);
    v334 = OUTLINED_FUNCTION_7_1();
    v336 = CVPixelBufferGetBaseAddressOfPlane(v334, v335);
    v337 = OUTLINED_FUNCTION_12_1();
    v339 = CVPixelBufferGetBaseAddressOfPlane(v337, v338);
    v909 = v308;
    CVPixelBufferGetBaseAddressOfPlane(v308, 2uLL);
    v340 = OUTLINED_FUNCTION_14_0();
    v342 = CVPixelBufferGetBaseAddressOfPlane(v340, v341);
    v343 = CVPixelBufferGetBaseAddressOfPlane(v310, 1uLL);
    v879 = v310;
    CVPixelBufferGetBaseAddressOfPlane(v310, 2uLL);
    v344 = OUTLINED_FUNCTION_14_0();
    v834 = CVPixelBufferGetBytesPerRowOfPlane(v344, v345);
    v346 = OUTLINED_FUNCTION_14_0();
    v309 = CVPixelBufferGetBaseAddressOfPlane(v346, v347);
    v348 = CVPixelBufferGetBaseAddressOfPlane(v941, 1uLL);
    v349 = CVPixelBufferGetBaseAddressOfPlane(v941, 2uLL);
    v350 = v988;
    if (v988)
    {
      v351 = 0;
      v352 = v987;
      v353 = 4 * (v834 / 4);
      v354 = 4 * (v849 / 4);
      v355 = 4 * (v864 / 4);
      do
      {
        if (v352)
        {
          for (k = 0; k != v352; ++k)
          {
            v357 = sqrtf((v331[k] * v331[k]) + (v330[k] * v330[k]));
            v358 = sqrtf((v343[k] * v343[k]) + (v342[k] * v342[k]));
            v359 = sqrtf((v329[k] * v329[k]) + (v328[k] * v328[k])) - sqrtf((v339[k] * v339[k]) + (v336[k] * v336[k]));
            if (v359 < 0.0)
            {
              v359 = -v359;
            }

            v360 = v357 - v358;
            v361 = -(v357 - v358);
            if (v360 < 0.0)
            {
              v360 = v361;
            }

            if (v359 <= v360)
            {
              v359 = v360;
            }

            v362 = v359 * 0.70711;
            v363 = fabsf(sqrtf(v362));
            v36 = v362 == -INFINITY;
            v364 = INFINITY;
            if (!v36)
            {
              v364 = v363;
            }

            *(v309 + k) = v364;
            v348[k] = v364;
            v349[k] = v364;
          }
        }

        v351 = (v351 + 1);
        v349 = (v349 + v353);
        v348 = (v348 + v353);
        v309 = (v309 + v353);
        v343 = (v343 + v354);
        v342 = (v342 + v354);
        v339 = (v339 + v354);
        v336 = (v336 + v354);
        v331 = (v331 + v355);
        v330 = (v330 + v355);
        v329 = (v329 + v355);
        v328 = (v328 + v355);
      }

      while (v351 != v350);
    }

    CVPixelBufferUnlockBaseAddress(v879, 0);
    CVPixelBufferUnlockBaseAddress(v894, 0);
    CVPixelBufferUnlockBaseAddress(v909, 0);
    CVPixelBufferUnlockBaseAddress(v925, 0);
    v464 = CVPixelBufferUnlockBaseAddress(v941, 0);
    v19 = v733;
    v18 = v707;
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2();
    v464 = FigSignalErrorAtGM(v467);
    if (v464)
    {
      goto LABEL_255;
    }
  }

  v464 = OUTLINED_FUNCTION_0_1(v464, v966, v967, v365, v366, &v972);
  if (v464)
  {
LABEL_255:
    v431 = v464;
    goto LABEL_196;
  }

  v368 = v973;
  v367 = v974;
  v369 = v972;
  if (CVPixelBufferGetPixelFormatType(v974) == 1919365990 && CVPixelBufferGetPixelFormatType(v368) == 1919365990 && CVPixelBufferGetPixelFormatType(v369) == 1919365990)
  {
    OUTLINED_FUNCTION_2_3();
    v370 = OUTLINED_FUNCTION_9_0();
    CMPhotoGetPixelBufferCLAP(v370, v371, 0, v372, v373);
    v374 = OUTLINED_FUNCTION_9_0();
    CVPixelBufferLockBaseAddress(v374, v375);
    v376 = OUTLINED_FUNCTION_7_1();
    CVPixelBufferLockBaseAddress(v376, v377);
    v378 = OUTLINED_FUNCTION_5();
    CVPixelBufferLockBaseAddress(v378, v379);
    v380 = OUTLINED_FUNCTION_9_0();
    v382 = CVPixelBufferGetBytesPerRowOfPlane(v380, v381);
    v383 = OUTLINED_FUNCTION_9_0();
    v385 = CVPixelBufferGetBaseAddressOfPlane(v383, v384);
    v386 = CVPixelBufferGetBaseAddressOfPlane(v367, 1uLL);
    v835 = v367;
    v387 = CVPixelBufferGetBaseAddressOfPlane(v367, 2uLL);
    v388 = OUTLINED_FUNCTION_7_1();
    v942 = CVPixelBufferGetBytesPerRowOfPlane(v388, v389);
    v390 = OUTLINED_FUNCTION_7_1();
    v392 = CVPixelBufferGetBaseAddressOfPlane(v390, v391);
    v393 = OUTLINED_FUNCTION_12_1();
    v309 = CVPixelBufferGetBaseAddressOfPlane(v393, v394);
    v820 = v368;
    v18 = CVPixelBufferGetBaseAddressOfPlane(v368, 2uLL);
    v395 = OUTLINED_FUNCTION_5();
    v926 = CVPixelBufferGetBytesPerRowOfPlane(v395, v396);
    v397 = OUTLINED_FUNCTION_5();
    v399 = CVPixelBufferGetBaseAddressOfPlane(v397, v398);
    v400 = CVPixelBufferGetBaseAddressOfPlane(v369, 1uLL);
    v850 = v369;
    v401 = CVPixelBufferGetBaseAddressOfPlane(v369, 2uLL);
    v910 = v988;
    if (v988)
    {
      v402 = 0;
      v403 = v987;
      v880 = (4 * (v942 / 4));
      v895 = (4 * (v926 / 4));
      v865 = 4 * (v382 / 4);
      do
      {
        v927 = v402;
        if (v403)
        {
          v369 = 0;
          v943 = v399;
          do
          {
            v404 = v385[v369];
            v405 = v386[v369];
            v406 = v387[v369];
            v407 = *(v309 + v369);
            v408 = *(v18 + v369);
            v409 = 1.0 - v392[v369];
            v410 = v18;
            v411 = v309;
            v412 = v392;
            v413 = v387;
            v414 = v386;
            v415 = v385;
            v416 = v400;
            v417 = v403;
            v418 = v401;
            v419 = powf(v404, v409);
            v420 = powf(v405, 1.0 - v407);
            v421 = powf(v406, 1.0 - v408);
            v401 = v418;
            v403 = v417;
            v400 = v416;
            v385 = v415;
            v386 = v414;
            v387 = v413;
            v392 = v412;
            v309 = v411;
            v18 = v410;
            v399 = v943;
            *(v943 + v369) = v419;
            v400[v369] = v420;
            v401[v369] = v421;
            v369 = (v369 + 1);
          }

          while (v403 != v369);
        }

        v402 = (v927 + 1);
        v401 = (v895 + v401);
        v400 = (v895 + v400);
        v399 = (v895 + v399);
        v18 = (v880 + v18);
        v309 = (v880 + v309);
        v392 = (v880 + v392);
        v387 = (v387 + v865);
        v386 = (v386 + v865);
        v385 = (v385 + v865);
      }

      while ((v927 + 1) != v910);
    }

    CVPixelBufferUnlockBaseAddress(v820, 0);
    CVPixelBufferUnlockBaseAddress(v835, 0);
    CVPixelBufferUnlockBaseAddress(v850, 0);
    v19 = v733;
    v64 = v720;
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2();
    v464 = FigSignalErrorAtGM(v468);
    if (v464)
    {
      goto LABEL_255;
    }
  }

  if (v973)
  {
    CFRelease(v973);
    v973 = 0;
  }

  Mutable = v746;
  if (!v694 && !v746)
  {
    v369 = 0;
    v423 = v655;
    v424 = v668;
    v425 = v642;
    goto LABEL_186;
  }

  v426 = v972;
  if (!v972)
  {
    goto LABEL_256;
  }

  if (!v694 && !v746)
  {
    OUTLINED_FUNCTION_11_1();
    goto LABEL_258;
  }

  v369 = 1919365990;
  if (v746 && (v746 == 1 || !v629))
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_2();
    v431 = FigSignalErrorAtGM(v469);
    OUTLINED_FUNCTION_11_1();
    goto LABEL_261;
  }

  if (CVPixelBufferGetPixelFormatType(v972) != 1919365990)
  {
LABEL_256:
    OUTLINED_FUNCTION_11_1();
    Mutable = 0;
LABEL_258:
    v431 = 4294950306;
    goto LABEL_183;
  }

  PixelBufferSize = CMPhotoGetPixelBufferSize(v426);
  v429 = v428;
  if (v746)
  {
    v309 = malloc_type_calloc(v746, 4uLL, 0x100004052888210uLL);
    if (!v309)
    {
      v369 = 0;
      v18 = 0;
LABEL_145:
      Mutable = 0;
      v431 = 4294950305;
      goto LABEL_183;
    }
  }

  else
  {
    v309 = 0;
  }

  v430 = (PixelBufferSize * v429 * 3.0);
  if (v694)
  {
    v18 = malloc_type_malloc(4 * v430, 0x100004052888210uLL);
    if (!v18)
    {
      v369 = 0;
      goto LABEL_145;
    }
  }

  else
  {
    v18 = 0;
  }

  v432 = OUTLINED_FUNCTION_12_1();
  v434 = CVPixelBufferLockBaseAddress(v432, v433);
  if (v434)
  {
    v431 = v434;
    v369 = 0;
LABEL_261:
    Mutable = 0;
    goto LABEL_183;
  }

  v435 = 0;
  v436 = 0;
  v431 = v746;
  v437 = 1.0 / v746;
  v438 = 0.0;
  do
  {
    v439 = CVPixelBufferGetBaseAddressOfPlane(v426, v435);
    v440 = CVPixelBufferGetBytesPerRowOfPlane(v426, v435);
    if (v429 > 0.0)
    {
      v441 = 0;
      do
      {
        if (PixelBufferSize > 0.0)
        {
          v442 = &v439[v441 * v440];
          v443 = 1;
          do
          {
            v444 = *v442++;
            v445 = v444;
            if (v18)
            {
              *(v18 + v436++) = v445;
            }

            if (v309)
            {
              LODWORD(v446) = (fminf(fmaxf(v445, 0.0), 1.0) / v437);
              if (v746 - 1 >= v446)
              {
                v446 = v446;
              }

              else
              {
                v446 = v746 - 1;
              }

              *(v309 + v446) = *(v309 + v446) + 1.0;
            }

            v438 = v438 + v445;
            v447 = v443++;
          }

          while (PixelBufferSize > v447);
        }

        ++v441;
      }

      while (v429 > v441);
    }

    ++v435;
  }

  while (v435 != 3);
  v63 = v681;
  v64 = v720;
  if (v694)
  {
    qsort_b(v18, v430, 4uLL, &__block_literal_global);
    v448 = 0;
    *v694 = *v18;
    v694[4] = *(v18 + v430 - 1);
    v449 = 0.0;
    for (m = 1; m != 4; ++m)
    {
      if (v430 > v448)
      {
        v451 = v438 * vcvtd_n_f64_u32(m, 2uLL);
        v452 = v430 - v448;
        v453 = (v18 + 4 * v448);
        while (1)
        {
          v449 = v449 + *v453;
          if (v449 > v451)
          {
            break;
          }

          ++v448;
          ++v453;
          if (!--v452)
          {
            v448 = (PixelBufferSize * v429 * 3.0);
            goto LABEL_171;
          }
        }

        v694[m] = *v453;
      }

LABEL_171:
      ;
    }
  }

  if (v309)
  {
    Mutable = CFArrayCreateMutable(0, v746, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (v746)
      {
        v454 = 0;
        v455 = PixelBufferSize * v429 * 0.000000953674316;
        v456 = v437;
        v457 = v455;
        while (1)
        {
          appended = CMPhotoCFArrayAppendDouble(Mutable, (v454 + 0.5) * v456 * *(v309 + v454) / v457);
          if (appended)
          {
            break;
          }

          if (v746 == ++v454)
          {
            v431 = 0;
            goto LABEL_179;
          }
        }

        v431 = appended;
        v369 = 0;
      }

      else
      {
LABEL_179:
        v369 = Mutable;
        Mutable = 0;
      }
    }

    else
    {
      v369 = 0;
      v431 = 4294950305;
    }
  }

  else
  {
    v369 = 0;
    Mutable = 0;
    v431 = 0;
  }

  v459 = OUTLINED_FUNCTION_12_1();
  CVPixelBufferUnlockBaseAddress(v459, v460);
LABEL_183:
  free(v18);
  free(v309);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v423 = v655;
  v424 = v668;
  v425 = v642;
  if (v431)
  {
    goto LABEL_194;
  }

LABEL_186:
  if (!v615 || (v461 = CMPhotoApplyMagmaMap(v972, v972), v425 = v642, v423 = v655, v424 = v668, !v461))
  {
    v461 = CMPhotoScaleAndRotateSessionTransformForSize(0, v972, 1, 1, 1111970369, 0, 0, 1, v423, v425, v64, v424, v56, v63, 0, 1u, &v968);
    if (!v461)
    {
      if (v602)
      {
        *v602 = v968;
        v968 = 0;
      }

      if (v629)
      {
        v431 = 0;
        *v629 = v369;
        goto LABEL_196;
      }

      v431 = 0;
LABEL_194:
      if (!v369)
      {
        goto LABEL_196;
      }

      goto LABEL_195;
    }
  }

  v431 = v461;
  if (v369)
  {
LABEL_195:
    CFRelease(v369);
  }

LABEL_196:
  if (v968)
  {
    CFRelease(v968);
  }

  if (v972)
  {
    CFRelease(v972);
  }

  if (v973)
  {
    CFRelease(v973);
  }

  if (v974)
  {
    CFRelease(v974);
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v969)
  {
    CFRelease(v969);
  }

  if (v978)
  {
    CFRelease(v978);
  }

  if (v977)
  {
    CFRelease(v977);
  }

  if (v976)
  {
    CFRelease(v976);
  }

  if (v975)
  {
    CFRelease(v975);
  }

  if (v980)
  {
    CFRelease(v980);
  }

  if (v979)
  {
    CFRelease(v979);
  }

  if (v982)
  {
    CFRelease(v982);
  }

  if (v981)
  {
    CFRelease(v981);
  }

  if (v984)
  {
    CFRelease(v984);
  }

  if (v983)
  {
    CFRelease(v983);
  }

  if (v986)
  {
    CFRelease(v986);
  }

  if (v985)
  {
    CFRelease(v985);
  }

  if (v616)
  {
    CFRelease(v616);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v431;
}

uint64_t _computesRGB2LinearRGB_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesRGB2LinearRGB_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesRGB2LinearRGB_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesLinearRGB2XYZ_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesLinearRGB2XYZ_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesLinearRGB2XYZ_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2YCxCz_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2YCxCz_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2YCxCz_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t convolve_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t convolve_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t convolve_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesYCxCz2XYZ_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesYCxCz2XYZ_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesYCxCz2XYZ_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2LinearRGB_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2LinearRGB_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2LinearRGB_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesClamp_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesClamp_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesClamp_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2CIELab_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2CIELab_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesXYZ2CIELab_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesHunt_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesHunt_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesHunt_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesCIELab2Gray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesCIELab2Gray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t _computesCIELab2Gray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t CMPhotoImageHasOpaqueAlphaFromPixelData(void *a1, _BYTE *a2)
{
  v7 = 0;
  cf = 0;
  HasOpaqueAlphaFromPixelData = 4294950306;
  if (a1 && a2)
  {
    v4 = CMPhotoCreatePixelBufferFromImage(*MEMORY[0x1E695E480], a1, &cf);
    if (v4)
    {
      HasOpaqueAlphaFromPixelData = v4;
    }

    else
    {
      HasOpaqueAlphaFromPixelData = CMPhotoPixelBufferHasOpaqueAlphaFromPixelData(cf, &v7);
      if (!HasOpaqueAlphaFromPixelData)
      {
        *a2 = v7;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return HasOpaqueAlphaFromPixelData;
}

uint64_t CMPhotoPixelBufferHasOpaqueAlphaFromPixelData(__CVBuffer *a1, char *a2)
{
  v3 = 4294950306;
  if (a1 && a2)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v6 = OUTLINED_FUNCTION_5();
    v8 = CVPixelBufferLockBaseAddress(v6, v7);
    if (v8)
    {
      return v8;
    }

    OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_30();
    v17 = OUTLINED_FUNCTION_77(v9, v10, v11, v12, v13, v14, v15, v16, v67, SHIDWORD(v67), v68, v69, v70);
    if (v17)
    {
      v3 = v17;
      goto LABEL_98;
    }

    v18 = vcvtad_u64_f64(v2);
    if (PixelFormatType != 843264056)
    {
      switch(PixelFormatType)
      {
        case 0x32433136u:
          goto LABEL_26;
        case 0x42475241u:
          if (v18)
          {
            OUTLINED_FUNCTION_12_2();
            while (!v57)
            {
LABEL_92:
              OUTLINED_FUNCTION_11_2();
              if (v20)
              {
                goto LABEL_94;
              }
            }

            OUTLINED_FUNCTION_56();
            while (1)
            {
              v60 = *v58;
              v58 += 4;
              if (v60 != 255)
              {
                goto LABEL_97;
              }

              if (!--v59)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_94;
        case 0x4C303038u:
          if (v18)
          {
            OUTLINED_FUNCTION_62_0();
            while (1)
            {
              v41 = v39;
              v42 = v40;
              if (v39)
              {
                break;
              }

LABEL_57:
              OUTLINED_FUNCTION_61();
              if (v20)
              {
                goto LABEL_94;
              }
            }

            while (1)
            {
              v43 = *v42++;
              if (v43 != 255)
              {
                goto LABEL_97;
              }

              if (!--v41)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_94;
        case 0x4C303130u:
          if (v18)
          {
            OUTLINED_FUNCTION_62_0();
            while (1)
            {
              v36 = v34;
              v37 = v35;
              if (v34)
              {
                break;
              }

LABEL_49:
              OUTLINED_FUNCTION_61();
              if (v20)
              {
                goto LABEL_94;
              }
            }

            while (1)
            {
              v38 = *v37++;
              if (v38 >> 6 < 0x3FF)
              {
                goto LABEL_97;
              }

              if (!--v36)
              {
                goto LABEL_49;
              }
            }
          }

          goto LABEL_94;
        case 0x4C303136u:
          if (v18)
          {
            OUTLINED_FUNCTION_62_0();
            while (1)
            {
              v54 = v52;
              v55 = v53;
              if (v52)
              {
                break;
              }

LABEL_83:
              OUTLINED_FUNCTION_61();
              if (v20)
              {
                goto LABEL_94;
              }
            }

            while (1)
            {
              v56 = *v55++;
              if (v56 != -1)
              {
                goto LABEL_97;
              }

              if (!--v54)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_94;
      }

      if (PixelFormatType != 1279340600)
      {
        if (PixelFormatType != 1279340854)
        {
          if (PixelFormatType == 1815491698)
          {
            if (v18)
            {
              OUTLINED_FUNCTION_12_2();
              while (!v44)
              {
LABEL_66:
                OUTLINED_FUNCTION_11_2();
                if (v20)
                {
                  goto LABEL_94;
                }
              }

              OUTLINED_FUNCTION_56();
              while (1)
              {
                v47 = *v45;
                v45 += 4;
                if (v47 != -1)
                {
                  goto LABEL_97;
                }

                if (!--v46)
                {
                  goto LABEL_66;
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_98();
            if (v20)
            {
              if (v19)
              {
                OUTLINED_FUNCTION_12_2();
                while (!v48)
                {
LABEL_75:
                  OUTLINED_FUNCTION_11_2();
                  if (v20)
                  {
                    goto LABEL_94;
                  }
                }

                OUTLINED_FUNCTION_56();
                while (*v49 == v51)
                {
                  v49 += 4;
                  if (!--v50)
                  {
                    goto LABEL_75;
                  }
                }

                goto LABEL_97;
              }
            }

            else
            {
              OUTLINED_FUNCTION_98();
              if (!v20)
              {
                v3 = 4294950301;
LABEL_98:
                v65 = OUTLINED_FUNCTION_5();
                CVPixelBufferUnlockBaseAddress(v65, v66);
                return v3;
              }

              if (v21)
              {
                OUTLINED_FUNCTION_12_2();
                while (!v22)
                {
LABEL_23:
                  OUTLINED_FUNCTION_11_2();
                  if (v20)
                  {
                    goto LABEL_94;
                  }
                }

                OUTLINED_FUNCTION_56();
                while (*v23 == v25)
                {
                  v23 += 4;
                  if (!--v24)
                  {
                    goto LABEL_23;
                  }
                }

LABEL_97:
                v61 = 0;
                goto LABEL_95;
              }
            }
          }

LABEL_94:
          v61 = 1;
LABEL_95:
          v62 = OUTLINED_FUNCTION_5();
          CVPixelBufferUnlockBaseAddress(v62, v63);
          v3 = 0;
          *a2 = v61;
          return v3;
        }

LABEL_26:
        if (v18)
        {
          OUTLINED_FUNCTION_12_2();
          while (!v26)
          {
LABEL_32:
            OUTLINED_FUNCTION_11_2();
            if (v20)
            {
              goto LABEL_94;
            }
          }

          OUTLINED_FUNCTION_56();
          while (1)
          {
            v29 = *v27;
            v27 += 2;
            if (v29 != -1)
            {
              goto LABEL_97;
            }

            if (!--v28)
            {
              goto LABEL_32;
            }
          }
        }

        goto LABEL_94;
      }
    }

    if (v18)
    {
      OUTLINED_FUNCTION_12_2();
      while (!v30)
      {
LABEL_41:
        OUTLINED_FUNCTION_11_2();
        if (v20)
        {
          goto LABEL_94;
        }
      }

      OUTLINED_FUNCTION_56();
      while (1)
      {
        v33 = *v31;
        v31 += 2;
        if (v33 != 255)
        {
          goto LABEL_97;
        }

        if (!--v32)
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_94;
  }

  return v3;
}

uint64_t CMPhotoGetPixelBufferDataPointers(__CVBuffer *a1, unint64_t a2, unint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (CMPhotoGetPixelFormatCompressionType(PixelFormatType))
  {
    return 4294950306;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = PlaneCount;
  }

  if (PlaneCount > 2)
  {
    return 4294950301;
  }

  PixelBufferSize = CMPhotoGetPixelBufferSize(a1);
  v19 = vcvtad_u64_f64(v18);
  if (a2 >= vcvtad_u64_f64(PixelBufferSize) || a3 >= v19)
  {
    return 4294950306;
  }

  v42 = a4;
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
  OUTLINED_FUNCTION_31();
  CVPixelBufferGetExtendedPixels(v22, v23, v24, 0, v25);
  v26 = 0;
  v47 = a3;
  v45 = 2 * a2;
  v46 = (a3 + 1) >> 1;
  v43 = a2;
  v44 = BytesPerPixelForPixelFormat * a2;
  do
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v26);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v26);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v26);
    v30 = HeightOfPlane;
    if (!v26)
    {
      v39 = v47;
      v40 = v44;
      goto LABEL_54;
    }

    v31 = HeightOfPlane;
    if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      if (PixelFormatType == 875704934 || PixelFormatType == 875704950)
      {
        goto LABEL_62;
      }

      if (PixelFormatType == 875836518 || PixelFormatType == 875836534)
      {
LABEL_53:
        v39 = v47;
        v40 = v45;
LABEL_54:
        v38 = v40 + BytesPerRowOfPlane * v39;
        if (!a5)
        {
          goto LABEL_56;
        }

LABEL_55:
        *(a5 + 8 * v26) = &BaseAddressOfPlane[v38];
        goto LABEL_56;
      }

      if (PixelFormatType != 1751527984 && PixelFormatType != 1936077360)
      {
        if (PixelFormatType == 1936077362)
        {
          goto LABEL_62;
        }

        if (PixelFormatType == 1936077876)
        {
          goto LABEL_53;
        }

        if (PixelFormatType != 1937125936)
        {
          if (PixelFormatType == 1937125938)
          {
            goto LABEL_62;
          }

          if (PixelFormatType == 1937126452)
          {
            goto LABEL_53;
          }

          if (PixelFormatType != 1952854576)
          {
            if (PixelFormatType == 1952854578)
            {
              goto LABEL_62;
            }

            if (PixelFormatType == 1952855092)
            {
              goto LABEL_53;
            }

            if (PixelFormatType != 1953903152)
            {
              if (PixelFormatType == 1953903154)
              {
                goto LABEL_62;
              }

              if (PixelFormatType == 1953903668)
              {
                goto LABEL_53;
              }

              if (PixelFormatType != 2016686640)
              {
                switch(PixelFormatType)
                {
                  case 0x78343232u:
                    goto LABEL_62;
                  case 0x78343434u:
                  case 0x78663434u:
                    goto LABEL_53;
                  case 0x78663232u:
LABEL_62:
                    v38 = v45 + BytesPerRowOfPlane * v46;
                    if (a5)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_56;
                }

                if (PixelFormatType != 2019963440)
                {
                  return 4294950301;
                }
              }
            }
          }
        }
      }
    }

    v37 = CVPixelBufferGetHeightOfPlane(a1, 0);
    v38 = v43 + BytesPerRowOfPlane * v46;
    if (v31 <= (v37 + 1) >> 1)
    {
      v30 = (v37 + 1) >> 1;
    }

    else
    {
      v30 = v31;
    }

    if (a5)
    {
      goto LABEL_55;
    }

LABEL_56:
    if (a6)
    {
      *(a6 + 8 * v26) = BytesPerRowOfPlane;
    }

    if (a7)
    {
      *(a7 + 8 * v26) = v30 * BytesPerRowOfPlane - v38;
    }

    ++v26;
  }

  while (v16 != v26);
  result = 0;
  if (v42)
  {
    *v42 = v16;
  }

  return result;
}

uint64_t CMPhotoPixelBufferGetAlphaMode(__CVBuffer *a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CC0], 0);
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  if (FigCFEqual())
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (FigCFEqual() == 0);
  }

  CFRelease(v2);
  return v3;
}

CGImageSourceRef CMPhotoCreateCGImageSourceFromFile(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFURLCopyPathExtension(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!CMPhotoExtensionIsHEIF(v2) && !CMPhotoExtensionIsJPEG(v3) && (CFStringGetLength(v3), v10 = OUTLINED_FUNCTION_102(), CFStringCompareWithOptions(v10, v11, v13, 1uLL)) && !CMPhotoExtensionIsNetpbm(v3) && !CMPhotoExtensionIsPNG(v3) && !CMPhotoExtensionIsTIFF(v3) && !CMPhotoExtensionIsGIF(v3) && !CMPhotoExtensionIsEXR(v3) && !CMPhotoExtensionIsJpeg2000(v3) && !CMPhotoExtensionIsWEBP(v3) && (v12 = CMPhotoExtensionIsBMP(v3), !v12) && OUTLINED_FUNCTION_78(v12, @"dcm") || (v4 = OUTLINED_FUNCTION_17(), (v6 = CGImageSourceCreateWithURL(v4, v5)) == 0))
  {
    if (CMPhotoIsRawFormatByURLExtension(a1))
    {
      v7 = OUTLINED_FUNCTION_17();
      v6 = CGImageSourceCreateWithURL(v7, v8);
    }

    else
    {
      v6 = 0;
    }
  }

  CFRelease(v3);
  return v6;
}

uint64_t CMPhotoGetPixelFormatByUrlExtension(const __CFURL *a1, int *a2, int *a3)
{
  if (!a2)
  {
    return 4294950306;
  }

  v6 = CFURLCopyPathExtension(a1);
  if (!v6)
  {
    return 4294950306;
  }

  v7 = v6;
  v8 = *MEMORY[0x1E695E480];
  v9 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x1E695E480], a1);
  if (!v9)
  {
    v22 = 4294950306;
    v12 = v7;
LABEL_25:
    CFRelease(v12);
    return v22;
  }

  v10 = v9;
  Length = CFURLCopyPathExtension(v9);
  v12 = Length;
  if (!Length)
  {
    v13 = CFURLGetString(v10);
    Length = CFStringGetLength(v13);
    if (Length < 5)
    {
      v12 = 0;
    }

    else
    {
      v14 = Length;
      v27.length = 5;
      v27.location = Length - 5;
      v15 = CFStringCreateWithSubstring(v8, v13, v27);
      Length = CFStringGetCharacterAtIndex(v15, 0);
      v12 = 0;
      if (Length == 95)
      {
        v28.location = v14 - 4;
        v28.length = 4;
        Length = CFStringCreateWithSubstring(v8, v13, v28);
        v12 = Length;
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  v16 = "800L";
  v17 = 82;
  while (1)
  {
    Length = OUTLINED_FUNCTION_78(Length, *(v16 - 1));
    if (!Length)
    {
      break;
    }

    v16 += 4;
    if (!--v17)
    {
      v18 = 875704422;
      goto LABEL_23;
    }
  }

  v18 = *v16;
  IsVersatile = CMPhotoPixelFormatIsVersatile(v18);
  if (a3 && IsVersatile)
  {
    if (!v12)
    {
LABEL_21:
      fig_log_get_emitter();
      v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
      goto LABEL_24;
    }

    v20 = &dword_1E77A16E0;
    v21 = 13;
    while (CFStringCompare(v12, *(v20 - 1), 1uLL))
    {
      v20 += 4;
      if (!--v21)
      {
        goto LABEL_21;
      }
    }

    *a3 = *v20;
  }

LABEL_23:
  v22 = 0;
  *a2 = v18;
LABEL_24:
  CFRelease(v7);
  CFRelease(v10);
  if (v12)
  {
    goto LABEL_25;
  }

  return v22;
}

void CMPhotoCreatePixelBufferWithRawDataURL(const __CFURL *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, unint64_t *a8, uint64_t a9, CVPixelBufferRef *a10)
{
  LODWORD(v11) = a7;
  *&v90 = a2;
  *(&v90 + 1) = a3;
  pixelBuffer = 0;
  theData = 0;
  v86 = 0;
  v87 = -1;
  if (CMPhotoGetPixelFormatByUrlExtension(a1, &v86, &v87) || !(a2 | a3) && CMPhotoEstimatePixelBufferDimensionsFromURL(a1, v86, &v90))
  {
    v75 = 0;
    goto LABEL_74;
  }

  if (!(a5 | a6))
  {
    goto LABEL_17;
  }

  if (a5 < v90 || a6 < *(&v90 + 1))
  {
    v75 = 0;
    goto LABEL_74;
  }

  if (a5 == v90 && a6 == *(&v90 + 1))
  {
LABEL_17:
    v75 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v75 = Mutable;
    if (a5 != v90)
    {
      CMPhotoCFDictionarySetInt32(Mutable, *MEMORY[0x1E6966090], a5 - v90);
    }

    if (a6 != *(&v90 + 1))
    {
      CMPhotoCFDictionarySetInt32(v75, *MEMORY[0x1E6966078], a6 - DWORD2(v90));
    }
  }

  v22 = *a8;
  v21 = a8[1];
  v24 = a8[2];
  v23 = a8[3];
  if (*a8 == 0 && !(v24 | v23) || (v22 < v90 ? (v25 = v24 == -v22) : (v25 = 1), !v25 ? (v26 = v21 >= *(&v90 + 1)) : (v26 = 1), !v26 ? (v27 = v23 == -v21) : (v27 = 1), !v27))
  {
    if (v11)
    {
      v11 = v11;
    }

    else
    {
      v11 = v86;
    }

    if (CMPhotoPixelFormatIsPackedYUV(v86))
    {
      if (CMPhotoGetBitDepthForPixelFormat(v86) != 10)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_74;
      }

      if (*a8 != 0 || *(a8 + 1) != 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_74;
      }
    }

    if (!FigFileReadURLAndCreateCFData())
    {
      v85 = 0.0;
      v84 = 0;
      v83 = 0;
      if (!CMPhotoGetSizeInfoForPixelFormat(v86, &v85, &v84, &v84 + 1, &v83))
      {
        if (CMPhotoPixelFormatIsPackedYUV(v86) || CMPhotoPixelFormatIsPackedRAW(v86))
        {
          if (CMPhotoPixelFormatIsPackedYUV(v86))
          {
            v28 = 2 * ((3 * *(&v90 + 1) * ((v90 + 2) / 3uLL)) & 0x3FFFFFFFFFFFFFFFLL);
            if (CFDataGetLength(theData) < v28)
            {
              goto LABEL_139;
            }
          }

          else
          {
            if (CMPhotoPixelFormatIsPackedRAW(v86) && CMPhotoGetBitDepthForPixelFormat(v11) != 12)
            {
              OUTLINED_FUNCTION_48(v90 + 3);
            }

            CFDataGetLength(theData);
          }
        }

        else
        {
          v62 = *(&v90 + 1);
          v63 = a4 ? a4 : v90;
          v64 = v63 * *(&v90 + 1);
          if (v84)
          {
            v71 = v63 + (v63 | 0xFFFFFFFFFFFFFFFELL) + 2;
            v72 = 2 * v63;
            if (v84)
            {
              v72 = v71;
            }

            if (HIBYTE(v84))
            {
              v62 = (*(&v90 + 1) + 1) >> 1;
            }

            v65 = (v64 + v72 * v62) * v83;
          }

          else
          {
            v65 = (v85 * v64);
          }

          ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(v11);
          Length = CFDataGetLength(theData);
          if (ChromaSubsamplingFromPixelFormat == 6)
          {
            if (Length < v65)
            {
              goto LABEL_139;
            }
          }

          else if (Length != v65)
          {
LABEL_139:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_6_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_74;
          }
        }

        if (!CMPhotoSurfacePoolCreatePixelBuffer(@"SurfacePoolOneShot", v86, v90, *(&v90 + 1), 1, a5, a6, 1, a9, v75, &pixelBuffer))
        {
          if (*a8 == 0 && *(a8 + 1) == 0)
          {
            *a8 = 0;
            a8[1] = 0;
            *(a8 + 1) = v90;
          }

          else
          {
            v66 = OUTLINED_FUNCTION_27_0(*a8);
            if (CMPhotoSetPixelBufferCLAPFromRect(v67, 0, 1, v66, v68, v69, v70))
            {
              goto LABEL_74;
            }
          }

          if ((!CMPhotoPixelFormatIsRAWVersatile(v11) || !CMPhotoPixelBufferSetVersatileBayerPattern(pixelBuffer, v87)) && !CVPixelBufferLockBaseAddress(pixelBuffer, 0))
          {
            v78 = v75;
            if (a4)
            {
              v29 = a4;
            }

            else
            {
              v29 = v90;
            }

            if (CVPixelBufferGetPlaneCount(pixelBuffer))
            {
              PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
              if (!PlaneCount)
              {
                goto LABEL_64;
              }
            }

            else
            {
              PlaneCount = 1;
            }

            v44 = 0;
            v79 = 2 * v29;
            v80 = v29 + (v29 | 0xFFFFFFFFFFFFFFFELL) + 2;
            v81 = v29;
            do
            {
              v45 = v29;
              if (v44)
              {
                PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
                v45 = v29;
                if (!CMPhotoPixelFormatContainsRGB(PixelFormatType))
                {
                  if (v84)
                  {
                    v45 = v80;
                  }

                  else
                  {
                    v45 = v79;
                  }
                }
              }

              if (CMPhotoPixelFormatIsPackedYUV(v86))
              {
                v47 = 4 * ((v45 + 2) / 3);
              }

              else if (CMPhotoPixelFormatIsPackedRAW(v86))
              {
                if (CMPhotoGetBitDepthForPixelFormat(v11) == 12)
                {
                  v47 = (v45 * 1.5);
                }

                else
                {
                  v47 = OUTLINED_FUNCTION_48(v45 + 3);
                }
              }

              else
              {
                v47 = v83 * v45;
              }

              if (v44 != 0 && HIBYTE(v84) != 0)
              {
                v48 = (a8[3] + 1) >> 1;
              }

              else
              {
                v48 = a8[3];
              }

              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, v44);
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v44);
              v51 = *a8;
              if (v44 != 0 && HIBYTE(v84) != 0)
              {
                v52 = (a8[1] + 1) >> 1;
              }

              else
              {
                v52 = a8[1];
              }

              if (v11 == 1647719528)
              {
                v53 = 2 * v51 * v83;
                v52 >>= 1;
              }

              else
              {
                v53 = v83 * v51;
              }

              if (CMPhotoPixelFormatIsPackedYUV(v86))
              {
                v54 = 4 * v44 * a8[3] * ((a8[2] + 2) / 3);
              }

              else
              {
                v54 = v44 * v29 * *(&v90 + 1) * v83;
              }

              BytePtr = CFDataGetBytePtr(theData);
              if (HIBYTE(v84))
              {
                v56 = v44 == 0;
              }

              else
              {
                v56 = 1;
              }

              v57 = (a8[1] + 1) >> 1;
              if (v56)
              {
                v57 = a8[1];
              }

              if (v11 == 1647719528)
              {
                v47 *= 2;
                v48 >>= 1;
                v58 = 2 * *a8 * v83;
                v57 >>= 1;
              }

              else
              {
                v58 = v83 * *a8;
              }

              v59 = v57 * v47;
              if (v48)
              {
                v60 = &BaseAddressOfPlane[v53 + v52 * BytesPerRowOfPlane];
                v61 = &BytePtr[v54 + v58 + v59];
                do
                {
                  memcpy(v60, v61, v47);
                  v61 += v47;
                  v60 += BytesPerRowOfPlane;
                  --v48;
                }

                while (v48);
              }

              ++v44;
              v29 = v81;
            }

            while (v44 != PlaneCount);
LABEL_64:
            if (CVPixelBufferUnlockBaseAddress(pixelBuffer, 0))
            {
              v75 = v78;
            }

            else
            {
              v75 = v78;
              if (v86 != v11)
              {
                if (CMPhotoPixelFormatContainsRGB(v11))
                {
                  CMPhotoAddDefault601709MatrixToBufferIfAllowed(pixelBuffer, 1, 1);
                }

                OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
                OUTLINED_FUNCTION_18();
                OUTLINED_FUNCTION_95();
                OUTLINED_FUNCTION_9_4();
                if (CMPhotoScaleAndRotateSessionTransformForSize(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, a9, v76, v77))
                {
                  goto LABEL_139;
                }

                if (pixelBuffer)
                {
                  CFRelease(pixelBuffer);
                }

                pixelBuffer = 0;
              }

              if (a10)
              {
                *a10 = pixelBuffer;
                pixelBuffer = 0;
              }
            }
          }
        }
      }
    }
  }

LABEL_74:
  if (theData)
  {
    CFRelease(theData);
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t CMPhotoEstimatePixelBufferDimensionsFromURL(const __CFURL *a1, int a2, void *a3)
{
  v39 = a2;
  if (!a3)
  {
    return 0;
  }

  if (!a1)
  {
    return 4294950306;
  }

  if (a2 || (result = CMPhotoGetPixelFormatByUrlExtension(a1, &v39, 0), !result))
  {
    result = FigFileGetFileInfo();
    if (!result)
    {
      OUTLINED_FUNCTION_42();
      result = CMPhotoGetSizeInfoForPixelFormat(v6, v7, v8, v9, v10);
      if (!result)
      {
        v11 = 0;
        v12 = CFURLCreateCopyDeletingPathExtension(*MEMORY[0x1E695E480], a1);
        if (!v12)
        {
          goto LABEL_42;
        }

        v13 = v12;
        PathComponent = CFURLCopyLastPathComponent(v12);
        v15 = PathComponent;
        if (PathComponent && (Length = CFStringGetLength(PathComponent), Length >= 4))
        {
          v17 = malloc_type_calloc(1uLL, (Length + 1), 0xF94EBC95uLL);
          if (v17 && CFStringGetCString(v15, v17, (Length + 1), 0x8000100u))
          {
            v18 = 0;
            v19 = 0;
            do
            {
              v20 = Length - 1;
              v21 = v17[Length - 1] - 48;
              if (v21 >= 0xA && v19 != 0)
              {
                if (v18)
                {
                  goto LABEL_22;
                }

                goto LABEL_27;
              }

              if (v21 < 0xA)
              {
                v19 = 1;
              }

              --v18;
              --Length;
            }

            while (v20);
            v20 = -1;
LABEL_22:
            v23 = &v17[v20];
            v24 = atoi(v23 + 1);
            v25 = 0;
            if (Length)
            {
              v26 = v24;
              if (v24 >= 1)
              {
                v25 = 0;
                if (Length >= 2 && (*v23 & 0xDF) == 0x58)
                {
                  *v23 = 0;
                  if (v17[Length - 2] - 58 >= 0xFFFFFFF6)
                  {
                    v27 = Length - 3;
                    while (1)
                    {
                      v28 = v27;
                      if (v27 == -1)
                      {
                        break;
                      }

                      v29 = v17[v27--] - 48;
                      if (v29 > 9)
                      {
                        v30 = v27 + 1;
                        goto LABEL_33;
                      }
                    }

                    v30 = -1;
LABEL_33:
                    v31 = &v17[v30];
                    v32 = atoi(v31 + 1);
                    if (v32 >= 1 && ((v28 + 1) < 1 || *v31 == 95))
                    {
                      *a3 = v32;
                      a3[1] = v26;
                      v25 = 1;
                      goto LABEL_37;
                    }
                  }

LABEL_27:
                  v25 = 0;
                }
              }
            }

LABEL_37:
            free(v17);
LABEL_38:
            CFRelease(v13);
            if (v15)
            {
              CFRelease(v15);
            }

            if (!v25 || 0.0 * (a3[1] * *a3) > v11)
            {
LABEL_42:
              v33 = 0;
              while (1)
              {
                v34 = *&CMPhotoEstimatePixelBufferDimensionsFromURL_ratios[v33];
                v35 = v34 * v11 / 0.0;
                v36 = roundf(sqrtf(v35));
                v37 = round(v36 / v34);
                if (0.0 * (v37 * v36) == v11)
                {
                  break;
                }

                if (++v33 == 10)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_1();
                  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 0, 0);
                }
              }

              result = 0;
              *a3 = v36;
              a3[1] = v37;
              return result;
            }

            return 0;
          }
        }

        else
        {
          v17 = 0;
        }

        free(v17);
        v25 = 0;
        goto LABEL_38;
      }
    }
  }

  return result;
}

void CMPhotoCreateAuxiliaryDataDictionaryFromPixelbuffer()
{
  OUTLINED_FUNCTION_106();
  if (!v0)
  {
    goto LABEL_18;
  }

  v3 = v2;
  v4 = v1;
  v5 = v0;
  Width = CVPixelBufferGetWidth(v0);
  Height = CVPixelBufferGetHeight(v5);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], BytesPerRow * Height);
  if (!Mutable)
  {
    goto LABEL_18;
  }

  v11 = Mutable;
  if (CVPixelBufferLockBaseAddress(v5, 1uLL) || (BaseAddress = CVPixelBufferGetBaseAddress(v5), CFDataAppendBytes(v11, BaseAddress, BytesPerRow * Height), CVPixelBufferUnlockBaseAddress(v5, 1uLL)))
  {
    v18 = 0;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_14_0();
    v17 = CFDictionaryCreateMutable(v13, v14, v15, v16);
    v18 = v17;
    if (v17 && !CMPhotoCFDictionarySetSize(v17, *MEMORY[0x1E696DFB8], Width) && !CMPhotoCFDictionarySetSize(v18, *MEMORY[0x1E696DD58], Height) && !CMPhotoCFDictionarySetSize(v18, *MEMORY[0x1E696D430], BytesPerRow) && !CMPhotoCFDictionarySetInt32(v18, *MEMORY[0x1E696DEC0], PixelFormatType))
    {
      if (v4)
      {
        *v4 = v11;
        v11 = 0;
      }

      if (v3)
      {
        *v3 = v18;
        v18 = 0;
      }

      if (!v11)
      {
        goto LABEL_16;
      }
    }
  }

  CFRelease(v11);
LABEL_16:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_18:
  OUTLINED_FUNCTION_105();
}

uint64_t CMPhotoPixelBufferFillOutsideCropRectWithLimit(__CVBuffer *a1, int a2, unint64_t *a3, unint64_t a4)
{
  v89 = a4;
  if (a1)
  {
    v4 = a3;
    if (!a3[2] || !a3[3])
    {
      return 0;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    OUTLINED_FUNCTION_34();
    if (!v85 & v8 || (OUTLINED_FUNCTION_10(), v85))
    {
      v9 = PixelFormatType == 875704422 || PixelFormatType == 875704438;
      v10 = v9 || PixelFormatType == 875704934;
      v11 = v10 || PixelFormatType == 875704950;
      v12 = v11 || PixelFormatType == 875836518;
      v13 = v12 || PixelFormatType == 875836534;
      v14 = v13 || PixelFormatType == 1111970369;
      v15 = v14 || PixelFormatType == 1278226488;
      v16 = v15 || PixelFormatType == 1380401729;
      v17 = v16 || PixelFormatType == 1936077360;
      v18 = v17 || PixelFormatType == 1936077362;
      v19 = v18 || PixelFormatType == 1936077876;
      v20 = v19 || PixelFormatType == 1937125936;
      v21 = v20 || PixelFormatType == 1937125938;
      v22 = v21 || PixelFormatType == 1937126452;
      v23 = v22 || PixelFormatType == 1952854576;
      v24 = v23 || PixelFormatType == 1952854578;
      v25 = v24 || PixelFormatType == 1952855092;
      v26 = v25 || PixelFormatType == 1953903152;
      v27 = v26 || PixelFormatType == 1953903154;
      v28 = v27 || PixelFormatType == 1953903668;
      v29 = v28 || PixelFormatType == 2016686640;
      v30 = v29 || PixelFormatType == 2016686642;
      v31 = v30 || PixelFormatType == 2016687156;
      v32 = v31 || PixelFormatType == 2019963440;
      v33 = v32 || PixelFormatType == 2019963442;
      if (!v33 && PixelFormatType != 2019963956 && !CMPhotoPixelFormatIsBayer14Bits(PixelFormatType) && !CMPhotoPixelFormatIsRAW(PixelFormatType))
      {
        IsRAWVersatile = CMPhotoPixelFormatIsRAWVersatile(PixelFormatType);
        if (PixelFormatType != 1751527984 && !IsRAWVersatile)
        {
          goto LABEL_128;
        }
      }
    }

    Attributes = CVPixelBufferGetAttributes();
    if (!Attributes)
    {
      return 4294950305;
    }

    theDict = CFDictionaryGetValue(Attributes, *MEMORY[0x1E6966120]);
    if (!theDict)
    {
      theDict = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      if (!theDict)
      {
        return 4294950305;
      }
    }

    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69662D8]);
    if (a2)
    {
      v37 = OUTLINED_FUNCTION_5();
      v39 = CVPixelBufferLockBaseAddress(v37, v38);
      if (v39)
      {
        return v39;
      }
    }

    if (CVPixelBufferGetPlaneCount(a1) < 2)
    {
      PlaneCount = 1;
    }

    else
    {
      PlaneCount = CVPixelBufferGetPlaneCount(a1);
      if (!PlaneCount)
      {
        v40 = 0;
        if (!a2)
        {
          return v40;
        }

        goto LABEL_116;
      }
    }

    HIDWORD(v88) = a2;
    v97 = a1;
    v41 = 0;
    v95 = *MEMORY[0x1E69662E0];
    v94 = *MEMORY[0x1E69662C8];
    v92 = v4;
    v93 = *MEMORY[0x1E6966210];
    v91 = Value;
    while (1)
    {
      ValueAtIndex = theDict;
      if (Value)
      {
        v43 = OUTLINED_FUNCTION_40();
        ValueAtIndex = CFArrayGetValueAtIndex(v43, v44);
      }

      v108 = 1;
      v109 = 1;
      CMPhotoCFDictionaryGetSizeIfPresent(ValueAtIndex, v95, &v109);
      CMPhotoCFDictionaryGetSizeIfPresent(ValueAtIndex, v94, &v108);
      v45 = v108;
      v46 = v109;
      v48 = *v4;
      v47 = v4[1];
      v49 = (*v4 + v45 + v4[2] - 1) / v45;
      v90 = *v4 / v108;
      v101 = v47;
      v102 = (v47 + v46 + v4[3] - 1) / v46;
      v98 = v47 / v109;
      v50 = v102 - v47 / v109;
      v51 = OUTLINED_FUNCTION_87();
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v51, v52);
      v54 = OUTLINED_FUNCTION_87();
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v54, v55);
      v57 = OUTLINED_FUNCTION_87();
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v57, v58);
      v59 = OUTLINED_FUNCTION_87();
      CVPixelBufferGetBytesPerRowOfPlane(v59, v60);
      v107 = 8;
      CMPhotoCFDictionaryGetSizeIfPresent(ValueAtIndex, v93, &v107);
      v107 >>= 3;
      if (v49 - v90 < WidthOfPlane)
      {
        if (v45 <= v48)
        {
          v103 = 0;
          v104 = v98;
          v105 = v90;
          v106 = v50;
          OUTLINED_FUNCTION_88();
          v74 = _fillPixelBufferRectHorizontallyWithLimit(v66, v67, v68, v69, v70, v71, v72, v73);
          if (v74)
          {
            break;
          }
        }

        if (WidthOfPlane > v49)
        {
          v103 = v49;
          v104 = v98;
          v105 = WidthOfPlane - v49;
          v106 = v50;
          OUTLINED_FUNCTION_88();
          v74 = _fillPixelBufferRectHorizontallyWithLimit(v75, v76, v77, v78, v79, v80, v81, v89);
          if (v74)
          {
            break;
          }
        }
      }

      v4 = v92;
      if (v50 < HeightOfPlane)
      {
        if (v46 <= v101)
        {
          v103 = 0;
          v104 = 0;
          v105 = WidthOfPlane;
          v106 = v98;
          v74 = OUTLINED_FUNCTION_75(&v103, 0, v61, v62, v107, v63, v64, v65, v88, v89, v90, v91, v92, v93, v94, v95, PlaneCount, v97, v98, theDict, BaseAddressOfPlane);
          if (v74)
          {
            break;
          }
        }

        if (HeightOfPlane > v102)
        {
          v103 = 0;
          v104 = v102;
          v105 = WidthOfPlane;
          v106 = HeightOfPlane - v102;
          v74 = OUTLINED_FUNCTION_75(&v103, 1, v61, v62, v107, v63, v64, v65, v88, v89, v90, v91, v92, v93, v94, v95, PlaneCount, v97, v98, theDict, BaseAddressOfPlane);
          if (v74)
          {
            break;
          }
        }
      }

      ++v41;
      Value = v91;
      if (PlaneCount == v41)
      {
        v40 = 0;
        goto LABEL_115;
      }
    }

    v40 = v74;
LABEL_115:
    if (!HIDWORD(v88))
    {
      return v40;
    }

LABEL_116:
    v82 = OUTLINED_FUNCTION_5();
    CVPixelBufferUnlockBaseAddress(v82, v83);
    return v40;
  }

LABEL_128:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t _fillPixelBufferRectHorizontallyWithLimit(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a1[3];
  if (!v8)
  {
    return 0;
  }

  v9 = a1[2];
  if (!v9)
  {
    return 0;
  }

  v10 = *a1;
  if (a2)
  {
    if (v10)
    {
      v11 = (v10 - 1) * a5;
      v12 = 1;
LABEL_8:
      v13 = a1[1];
      v14 = v13 + v8;
      if (v9 >= a8)
      {
        v15 = a8;
      }

      else
      {
        v15 = a1[2];
      }

      if (a8)
      {
        v9 = v15;
      }

      if (v13 < v14)
      {
        v16 = v9 * a5;
        v17 = a7 + v11;
        v18 = v12;
        v19 = v12 * a5;
        do
        {
          if (v16)
          {
            v20 = (v17 + v13 * a6);
            v21 = v16;
            do
            {
              v20[v19] = *v20;
              v20 += v18;
              --v21;
            }

            while (v21);
          }

          ++v13;
        }

        while (v13 != v14);
      }

      return 0;
    }
  }

  else if (a3 != v10 + v9)
  {
    v11 = a5 + a5 * (v9 + v10) - 1;
    v12 = -1;
    goto LABEL_8;
  }

  return 4294950193;
}

uint64_t _fillPixelBufferRectVerticallyWithLimit(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a1[3];
  if (!v8)
  {
    return 0;
  }

  if (!a1[2])
  {
    return 0;
  }

  v12 = a1[1];
  if (a2)
  {
    if (v12)
    {
      v13 = *a1 * a5;
      v14 = (a7 + (v12 - 1) * a6 + v13);
      v15 = v12 + v8;
      if (v8 >= a8)
      {
        v8 = a8;
      }

      v16 = v12 + v8;
      if (a8)
      {
        v15 = v16;
      }

LABEL_15:
      v18 = v15 - v12;
      if (v15 != v12)
      {
        v19 = (a7 + v12 * a6 + v13);
        do
        {
          memcpy(v19, v14, a1[2] * a5);
          v19 += a6;
          --v18;
        }

        while (v18);
      }

      return 0;
    }
  }

  else
  {
    v15 = v12 + v8;
    if (a4 != v12 + v8)
    {
      v13 = *a1 * a5;
      v14 = (a7 + v15 * a6 + v13);
      if (v8 >= a8)
      {
        v8 = a8;
      }

      v17 = v15 - v8;
      if (a8)
      {
        v12 = v17;
      }

      goto LABEL_15;
    }
  }

  return 4294950193;
}

void CMPhotoCreateCVPixelBufferNotBackedByIOSurface(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11, CVPixelBufferRef pixelBufferOut, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  OUTLINED_FUNCTION_104_0();
  a23 = v29;
  a24 = v32;
  v33 = a25;
  pixelBufferOut = 0;
  if (a25)
  {
    v34 = v31;
    v35 = v30;
    OUTLINED_FUNCTION_100();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v37 = MutableCopy;
      if (v28 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v28;
      }

      if (v35 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v35;
      }

      v40 = v38 + v27 + ~((v27 - 1) % v38);
      v41 = v39 + v25 + ~((v25 - 1) % v39);
      CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E69660D8]);
      if (v34 || (v40 == v27 ? (v42 = v41 == v25) : (v42 = 0), !v42))
      {
        a10 = 0;
        a11 = 0;
        v43 = OUTLINED_FUNCTION_101();
        CMPhotoCFDictionaryGetSizeIfPresent(v43, v44, v45);
        v46 = *MEMORY[0x1E6966078];
        CMPhotoCFDictionaryGetSizeIfPresent(v37, *MEMORY[0x1E6966078], &a10);
        v47 = a10 <= v41 - v25 ? v41 - v25 : a10;
        v48 = OUTLINED_FUNCTION_101();
        CMPhotoCFDictionarySetSize(v48, v49, v50);
        CMPhotoCFDictionarySetSize(v37, v46, v47);
        if (v34)
        {
          CMPhotoCFDictionarySetSize(v37, *MEMORY[0x1E6966020], v34);
        }
      }

      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v27, v25, v26, v37, &pixelBufferOut))
      {
        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
        }
      }

      else
      {
        *v33 = pixelBufferOut;
        pixelBufferOut = 0;
      }

      CFRelease(v37);
    }
  }

  OUTLINED_FUNCTION_44_0();
}

uint64_t CMPhotoCreateCGImageWithSurface(const __CFAllocator *a1, __IOSurface *a2, int a3, CGImageRef *a4)
{
  result = CMPhotoCreatePixelBufferWithSurface(a1, a2, 0);
  if (!result)
  {
    return CMPhotoCreateCGImageWithPixelBuffer(a1, 0, a3, a4);
  }

  return result;
}

uint64_t CMPhotoApplyCropRectToRect(float64x2_t *a1, float64x2_t a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v6 = a1[1].f64[0];
    if (a2.f64[0] >= v6)
    {
      return 4294950193;
    }

    v7 = a1[1].f64[1];
    v8 = v6 - a2.f64[0];
    v9 = a3 >= v7 || a4 > v8;
    if (v9 || a5 > v7 - a3)
    {
      return 4294950193;
    }

    v11 = 0;
    a2.f64[1] = a3;
    *a1 = vaddq_f64(a2, *a1);
    a1[1].f64[0] = a4;
    a1[1].f64[1] = a5;
    return v11;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t CMPhotoApplyCropCMPhotoRectToRect(void *a1, unint64_t *a2)
{
  if (a1)
  {
    v3 = a1[2];
    v4 = v3 > *a2;
    v5 = v3 - *a2;
    if (!v4)
    {
      return 4294950193;
    }

    v6 = a2[1];
    v7 = a1[3];
    if (v7 <= v6 || a2[2] > v5 || a2[3] > v7 - v6)
    {
      return 4294950193;
    }

    v8 = 0;
    v9 = a1[1] + v6;
    *a1 += *a2;
    a1[1] = v9;
    *(a1 + 1) = *(a2 + 1);
    return v8;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }
}

uint64_t CMPhotoModifyColorExtensionsForCompression(int a1, uint64_t a2, CFMutableDictionaryRef theDict, int a4, int a5, uint64_t a6, const void *a7)
{
  space[0] = 0;
  if (!theDict)
  {
    return 0;
  }

  yCbCrMatrixString = *MEMORY[0x1E6960070];
  CFDictionaryRemoveValue(theDict, *MEMORY[0x1E6960070]);
  v14 = *MEMORY[0x1E6965D88];
  CFDictionaryRemoveValue(theDict, *MEMORY[0x1E6965D88]);
  v15 = *MEMORY[0x1E6965F30];
  CFDictionaryRemoveValue(theDict, *MEMORY[0x1E6965F30]);
  v16 = *MEMORY[0x1E6965F98];
  CFDictionaryRemoveValue(theDict, *MEMORY[0x1E6965F98]);
  if (a4)
  {
    return 0;
  }

  value = FigCFDictionaryGetValue();
  v87 = FigCFDictionaryGetValue();
  v17 = FigCFDictionaryGetValue();
  key = v15;
  v83 = v16;
  if (a7 && !v17)
  {
    CFRetain(a7);
  }

  v18 = 1;
  OUTLINED_FUNCTION_35();
  if ((!v23 & v19 || (OUTLINED_FUNCTION_13_1(), v23)) && ((OUTLINED_FUNCTION_15_0(), !v23 & v19) || (OUTLINED_FUNCTION_10(), v23)))
  {
    v20 = v24;
    OUTLINED_FUNCTION_33();
    if (v23)
    {
      v21 = 1;
    }

    else
    {
      v21 = a1 == 1751410032;
    }

    if (!v21)
    {
      v18 = a1 == 1751411059 || a1 == 1717856627;
    }
  }

  else
  {
    v20 = v24;
  }

  HIDWORD(v78) = a1;
  v25 = FigCFDictionaryGetValue();
  v29 = FigCFDictionaryGetValue();
  v30 = value;
  if (value)
  {
    v31 = v87 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  if (v20)
  {
    v33 = 1;
  }

  else
  {
    v33 = v18;
  }

  if (v32 == 1)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if ((a5 & 0xFFFFFFFD) == 1 && v87 && (FigCFEqual() || (v36 = FigCFEqual(), v30 = value, v36)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    v37 = v34 ^ 1;
    if (a5 != 2)
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      CFDictionarySetValue(theDict, v14, v30);
      CFDictionarySetValue(theDict, key, v87);
      FigCFDictionarySetValue();
      return 0;
    }

    HIDWORD(v74) = v34;
    CMPhotoCreateColorSpaceFromPixelBufferAttachments(a2, v18, space, 1, 0, v26, v27, v28, v74, yCbCrMatrixString, v78, v7, key, v83, value, v87, v89, v90, v91, space[0], space[1], space[2]);
    v40 = space[0];
    if (v39)
    {
      v38 = v39;
      v43 = space[0];
      if (!space[0])
      {
        return v38;
      }

      goto LABEL_105;
    }

    if (v29)
    {
      v41 = 1;
    }

    else
    {
      v41 = v32;
    }

    if (v25)
    {
      v41 = 1;
    }

    if (v41 != 1 || space[0] != 0)
    {
      v43 = space[0];
      v44 = HIDWORD(v79);
      if (!space[0])
      {
        v43 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        space[0] = v43;
        if (!v43)
        {
          return 4294950305;
        }
      }

      CGColorSpaceGetName(v43);
      if (a5 != 1)
      {
        if (a5 == 2)
        {
          goto LABEL_78;
        }

        if (a5 == 3)
        {
          v45 = 0;
          v46 = 1;
LABEL_74:
          v55 = CGColorSpaceCopyICCData(v43);
          if (!v55)
          {
            goto LABEL_119;
          }

          v56 = v55;
          CFDictionarySetValue(theDict, yCbCrMatrixStringa, v55);
          CFRelease(v56);
          if (v45)
          {
            OUTLINED_FUNCTION_76(v57, v58, v59, v60, v61, v62, v63, v64, v75, yCbCrMatrixStringa, v79, v80, keya, v84, valuea, v88);
          }

          if ((v46 & 1) == 0)
          {
            goto LABEL_104;
          }

LABEL_78:
          v65 = CMPhotoPixelFormatContainsRGB(v44);
          v66 = CMPhotoPixelFormatContainsGrayScale(v44);
          v67 = v66;
          if (v75 & 0x100000000) != 0 || valuea && v65 && v88 || (v66 ? (v68 = v88 == 0) : (v68 = 1), v68 ? (v69 = 0) : (v69 = 1), v40 || (v69))
          {
            v90 = 0;
            v91 = 0;
            v89 = 0;
            CMPhotoGetTripletsForColorSpace(v43, v44, &v91, &v90, &v89);
            if (!v70)
            {
              v71 = valuea;
              if (valuea || (v71 = v91) != 0)
              {
                CFDictionarySetValue(theDict, v14, v71);
              }

              v72 = v88;
              if (v88 || (v72 = v90) != 0)
              {
                CFDictionarySetValue(theDict, keya, v72);
              }

              if (!(v65 | v67) && (v20 || (v20 = v89) != 0))
              {
                CFDictionarySetValue(theDict, v84, v20);
              }

              goto LABEL_104;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_5_3();
            v73 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_116:
            v38 = v73;
            goto LABEL_105;
          }

LABEL_119:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_5_3();
          v73 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_116;
        }

        if (FigCFEqual())
        {
          IsFullRange = CMPhotoPixelFormatIsFullRange(HIDWORD(v79));
          if (!IsFullRange && !v20)
          {
            IsFullRange = *MEMORY[0x1E6965FD0];
            if (*MEMORY[0x1E6965FD0])
            {
              IsFullRange = CFRetain(IsFullRange);
            }
          }

          OUTLINED_FUNCTION_76(IsFullRange, v48, v49, v50, v51, v52, v53, v54, v75, yCbCrMatrixStringa, v79, v80, keya, v84, valuea, v88);
          if (!v40)
          {
            goto LABEL_104;
          }

          OUTLINED_FUNCTION_68();
          if (FigCFEqual())
          {
            FigCFDictionarySetValue();
LABEL_104:
            v38 = 0;
LABEL_105:
            CFRelease(v43);
            return v38;
          }

          goto LABEL_119;
        }

        if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual() && (FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual()))
        {
          goto LABEL_78;
        }
      }

      v46 = 0;
      v45 = 1;
      goto LABEL_74;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_3();
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t CMPhotoCreateFormatDescriptionForHEIFWriter()
{
  OUTLINED_FUNCTION_91();
  if (!v4)
  {
    return 0;
  }

  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v17 = v6;
  v18 = v1;
  v19 = v0;
  if (v6 == *MEMORY[0x1E695F060] && v7 == *(MEMORY[0x1E695F060] + 8))
  {
    CMPhotoGetPixelBufferCLAPAsRect(v1);
    v17 = v21;
    v16 = v22;
  }

  v23 = CMVideoFormatDescriptionCreateForImageBuffer(v19, v18, &formatDescriptionOut);
  if (v23)
  {
    v38 = v23;
    Mutable = 0;
    v34 = 0;
  }

  else
  {
    CMFormatDescriptionGetExtensions(formatDescriptionOut);
    v24 = OUTLINED_FUNCTION_9_0();
    MutableCopy = CFDictionaryCreateMutableCopy(v24, v25, v26);
    if (MutableCopy)
    {
      Mutable = MutableCopy;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_9_0();
      Mutable = CFDictionaryCreateMutable(v28, v29, v30, v31);
      if (!Mutable)
      {
        v34 = 0;
        v38 = 4294950305;
        goto LABEL_20;
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(v18);
    v34 = CVBufferCopyAttachments(v18, kCVAttachmentMode_ShouldPropagate);
    PixelBufferCLAPDictionaryFromRect = CMPhotoModifyColorExtensionsForCompression(PixelFormatType, v34, Mutable, v13, v12, 0, v10);
    if (!PixelBufferCLAPDictionaryFromRect)
    {
      if (v17 == v15 && v16 == v14)
      {
        CFDictionaryRemoveValue(Mutable, *MEMORY[0x1E6965D70]);
        goto LABEL_18;
      }

      PixelBufferCLAPDictionaryFromRect = CMPhotoCreatePixelBufferCLAPDictionaryFromRect(v19, &cf, v17, v16, 0.0, 0.0, v15, v14);
      if (!PixelBufferCLAPDictionaryFromRect)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D70], cf);
LABEL_18:
        MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescriptionOut);
        v38 = CMVideoFormatDescriptionCreate(v19, MediaSubType, v17, v16, Mutable, &v42);
        if (v38)
        {
          if (v42)
          {
            CFRelease(v42);
          }
        }

        else
        {
          *v11 = v42;
          v42 = 0;
        }

        goto LABEL_20;
      }
    }

    v38 = PixelBufferCLAPDictionaryFromRect;
  }

LABEL_20:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v38;
}

uint64_t CMPhotoCreatePixelBufferWithURL(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, const char *a8, uint64_t a9, int a10, CVBufferRef *a11)
{
  v100 = 0;
  if (a1)
  {
    v12 = a11;
    if (!a11)
    {
      return 0;
    }

    if ((*a7 & 1) == 0 && (*(a7 + 8) & 1) == 0)
    {
      v93 = a3;
      v94 = a4;
      v95 = a5;
      v96 = a6;
      v97 = a9;
      v16 = CFURLCopyPathExtension(a1);
      IsHEIF = CMPhotoExtensionIsHEIF(v16);
      v18 = MEMORY[0x1E695E480];
      if (!IsHEIF && !CMPhotoExtensionIsJPEG(v16))
      {
        v19 = CMPhotoExtensionIsJPEGXL(v16);
        if (!v19)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          v20 = OUTLINED_FUNCTION_78(v19, @"dcm");
          if (v20)
          {
            goto LABEL_37;
          }
        }
      }

      cf[0] = 0;
      v103[0] = 0;
      v102 = 0;
      v101 = 0;
      v21 = OUTLINED_FUNCTION_37();
      if (CMPhotoDecompressionSessionCreate(v21, v22, v23))
      {
        v30 = v16;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        if (!CMPhotoDecompressionSessionCreateContainer(cf[0], 0, a1, &v102, v103))
        {
          v24 = OUTLINED_FUNCTION_37();
          Mutable = CFDictionaryCreateMutable(v24, v25, v26, v27);
          v29 = Mutable;
          if (Mutable && !CMPhotoCFDictionarySetBoolean(Mutable, @"ApplyTransform", 1))
          {
            v30 = v16;
            v31 = OUTLINED_FUNCTION_37();
            v35 = CFDictionaryCreateMutable(v31, v32, v33, v34);
            v36 = v35;
            if (v35 && !CMPhotoCFDictionarySetInt(v35, @"DecodeToHDROutputMode", a10))
            {
              CFDictionarySetValue(v29, @"DecodeToHDROutput", v36);
              if (a2 && FigCFDictionarySetInt())
              {
                goto LABEL_20;
              }

              if (BYTE4(a9))
              {
                OUTLINED_FUNCTION_31();
                if (CMPhotoDecompressionContainerCreateThumbnailImageForIndex(v40, v41, v42, v29, 2, v43))
                {
LABEL_20:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_2();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                  goto LABEL_88;
                }

LABEL_22:
                v45 = a2;
                v100 = v101;
                v101 = 0;
                v46 = 1;
                goto LABEL_23;
              }

              CMPhotoDecompressionContainerCreateImageForIndex(v103[0], 0, v29, 2, &v101, v37, v38, v39, v84, v87, v90, v92, v11, v93, v94, v95, v96, a9);
              if (!v44)
              {
                goto LABEL_22;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

LABEL_88:
            v45 = a2;
            if (v101)
            {
              CFRelease(v101);
            }

            v46 = 0;
            v47 = 0;
            if (!v36)
            {
LABEL_24:
              if (v29)
              {
                CFRelease(v29);
              }

              v12 = a11;
              if (v103[0])
              {
                CFRelease(v103[0]);
              }

              v20 = cf[0];
              if (v47)
              {
                v48 = v100;
                v16 = v30;
                if (v100)
                {
LABEL_30:
                  v49 = 0;
                  *v12 = v48;
                  v100 = 0;
                  goto LABEL_31;
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_2();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v87, v90);
                v49 = 0;
LABEL_31:
                if (!v16)
                {
                  goto LABEL_33;
                }

                goto LABEL_32;
              }

              a2 = v45;
              v16 = v30;
              v18 = MEMORY[0x1E695E480];
              if (!v16)
              {
LABEL_42:
                CGImageSourceFromFile = CMPhotoCreateCGImageSourceFromFile(a1);
                if (!CGImageSourceFromFile)
                {
                  v60 = CFURLGetString(a1);
                  if (CMPhotoGetOSTypeFromFileExtension(v60, 0) == 1836019574)
                  {
                    BufferFromMovie = CMPhotoGetBufferFromMovie(a1, v97, 2, a2, 0, &v100);
                    if (!BufferFromMovie)
                    {
                      if (v100)
                      {
                        PixelFormatType = CVPixelBufferGetPixelFormatType(v100);
                        PixelFormatCompressionType = CMPhotoGetPixelFormatCompressionType(PixelFormatType);
                        if (!a2 && PixelFormatCompressionType)
                        {
                          LODWORD(a2) = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(PixelFormatType);
                        }

                        v48 = v100;
                        if (!a2 || a2 == PixelFormatType)
                        {
                          goto LABEL_30;
                        }

                        cf[0] = 0;
                        OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
                        OUTLINED_FUNCTION_18();
                        OUTLINED_FUNCTION_95();
                        OUTLINED_FUNCTION_21();
                        v77 = CMPhotoScaleAndRotateSessionTransformForSize(v64, v65, v66, v67, v68, v69, v70, 0, v71, v72, v73, v74, v75, v76, a8, v87, v90);
                        if (!v77)
                        {
                          if (v100)
                          {
                            CFRelease(v100);
                          }

                          v48 = cf[0];
                          goto LABEL_30;
                        }

                        v49 = v77;
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_2();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, v89, v91);
                        goto LABEL_31;
                      }

                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_2();
                      BufferFromMovie = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_81();
                    CMPhotoCreatePixelBufferWithRawDataURL(a1, v93, v94, 0, v95, v96, a2, cf, a8, v87);
                    if (!BufferFromMovie)
                    {
                      v48 = v100;
                      if (v100)
                      {
                        goto LABEL_30;
                      }

                      fig_log_get_emitter();
                      OUTLINED_FUNCTION_0_2();
                      BufferFromMovie = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    }
                  }

                  v49 = BufferFromMovie;
                  goto LABEL_31;
                }

                v53 = CGImageSourceFromFile;
                v54 = CFDictionaryCreateMutable(*v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (!v54)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_2();
                  v49 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v87, v90);
                  v83 = v53;
LABEL_73:
                  CFRelease(v83);
                  goto LABEL_31;
                }

                v55 = v54;
                if ((a10 - 3) <= 1)
                {
                  FigCFDictionarySetValue();
                }

                if (BYTE4(a9))
                {
                  v56 = OUTLINED_FUNCTION_9_0();
                  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v56, v57, 0);
                  if (!ThumbnailAtIndex)
                  {
LABEL_48:
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_2();
                    v59 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                    goto LABEL_69;
                  }
                }

                else
                {
                  if (CMPhotoIsRawFormatByURLExtension(a1))
                  {
                    v78 = CMPhotoCFDictionarySetBoolean(v55, *MEMORY[0x1E696E0E0], 1);
                    if (v78)
                    {
                      v49 = v78;
                      ThumbnailAtIndex = 0;
LABEL_71:
                      CFRelease(v55);
                      CFRelease(v53);
                      if (!ThumbnailAtIndex)
                      {
                        goto LABEL_31;
                      }

                      v83 = ThumbnailAtIndex;
                      goto LABEL_73;
                    }
                  }

                  v79 = OUTLINED_FUNCTION_9_0();
                  ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(v79, v80, v55);
                  if (!ThumbnailAtIndex)
                  {
                    goto LABEL_48;
                  }
                }

                if (*a7 != 0 || *(a7 + 16) != 0)
                {
                  v104.origin.x = OUTLINED_FUNCTION_27_0(*a7);
                  v81 = CGImageCreateWithImageInRect(ThumbnailAtIndex, v104);
                  if (!v81)
                  {
                    goto LABEL_48;
                  }

                  v82 = v81;
                  CFRelease(ThumbnailAtIndex);
                  ThumbnailAtIndex = v82;
                }

                v59 = CMPhotoCreatePixelBufferFromCGImage(ThumbnailAtIndex, v16, a2, a8, &v100);
LABEL_69:
                v49 = v59;
                if (!v59)
                {
                  *v12 = v100;
                  v100 = 0;
                }

                goto LABEL_71;
              }

LABEL_37:
              if (OUTLINED_FUNCTION_78(v20, @"y4m") == kCFCompareEqualTo)
              {
                OUTLINED_FUNCTION_81();
                PixelBufferWithY4MURL = _createPixelBufferWithY4MURL(a1, v97, v93, v94, v95, v96, a2, cf, a8, v87);
                if (!PixelBufferWithY4MURL)
                {
                  v48 = v100;
                  if (v100)
                  {
                    goto LABEL_30;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_2();
                  PixelBufferWithY4MURL = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, v88, v90);
                }

                v49 = PixelBufferWithY4MURL;
LABEL_32:
                CFRelease(v16);
                goto LABEL_33;
              }

              goto LABEL_42;
            }

LABEL_23:
            CFRelease(v36);
            v47 = v46;
            goto LABEL_24;
          }

          v30 = v16;
LABEL_84:
          v36 = 0;
          goto LABEL_88;
        }

        v30 = v16;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      v29 = 0;
      goto LABEL_84;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  v49 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_33:
  if (v100)
  {
    CFRelease(v100);
  }

  return v49;
}

uint64_t _createPixelBufferWithY4MURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, OSType a7, unint64_t *a8, const char *a9, CVPixelBufferRef *a10)
{
  v115 = a4;
  v127 = *MEMORY[0x1E69E9840];
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  bzero(v125, 0x400uLL);
  if (a7)
  {
    v17 = a7;
  }

  else
  {
    v17 = 875704422;
  }

  v114 = v17;
  if (a5 | a6)
  {
    v106 = 4294950302;
    goto LABEL_56;
  }

  v18 = OUTLINED_FUNCTION_53();
  Y4MDelimitedNumber = CMPhotoByteStreamCreateFromSource(v18, v19, 0, 0, v20, 0);
  if (Y4MDelimitedNumber)
  {
    goto LABEL_87;
  }

  v120 = 0;
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v22)
  {
LABEL_55:
    v106 = 4294954514;
    goto LABEL_56;
  }

  Y4MDelimitedNumber = v22(v121, 1024, 0, v125, &v120);
  if (Y4MDelimitedNumber)
  {
    goto LABEL_87;
  }

  v23 = v120;
  if (v120 < 0xB)
  {
    goto LABEL_74;
  }

  v113 = v10;
  if (memcmp(v125, "YUV4MPEG2 ", 0xAuLL))
  {
    goto LABEL_74;
  }

  Y4MDelimitedNumber = _getY4MDelimitedNumber(v126, v23 - 10, 87, &v123);
  if (Y4MDelimitedNumber)
  {
    goto LABEL_87;
  }

  Y4MDelimitedNumber = _getY4MDelimitedNumber(v126, v120 - 10, 72, &v124);
  if (Y4MDelimitedNumber)
  {
    goto LABEL_87;
  }

  v24 = v123;
  v25 = v124;
  if (a3 | v115)
  {
    if (a3 != v123 || v115 != v124)
    {
      v106 = 4294950306;
      goto LABEL_56;
    }
  }

  v28 = *a8;
  v27 = a8[1];
  v30 = a8[2];
  v29 = a8[3];
  if (*a8 != 0 || v30 | v29)
  {
    v31 = v28 >= v123 || v30 == -v28;
    v32 = v31 || v27 >= v124;
    if (v32 || v29 == -v27)
    {
      v106 = 4294950193;
      goto LABEL_56;
    }
  }

  v118 = 0;
  v119 = 0;
  v34 = v120 - 10;
  v35 = OUTLINED_FUNCTION_92();
  Y4MDelimitedNumber = _getY4MDelimitedSubString(v35, v36, 73, v37, v38);
  if (Y4MDelimitedNumber)
  {
    goto LABEL_87;
  }

  if (*(v119 + 1) != 112)
  {
    goto LABEL_74;
  }

  v39 = OUTLINED_FUNCTION_92();
  Y4MDelimitedNumber = _getY4MDelimitedSubString(v39, v40, 67, v41, v42);
  if (Y4MDelimitedNumber)
  {
    goto LABEL_87;
  }

  if (memcmp((v119 + 1), "420jpeg", v118 - (v119 + 1)) || (v43 = strnstr(v126, "FRAME", v34)) == 0)
  {
LABEL_74:
    v106 = 4294950194;
    goto LABEL_56;
  }

  v117 = 0;
  Y4MDelimitedNumber = _getY4MFrameDataPos(v121, v43 - v125, &v117);
  if (Y4MDelimitedNumber)
  {
    goto LABEL_87;
  }

  if (a2)
  {
    do
    {
      v117 += (3 * v25 * v24) >> 1;
      Y4MDelimitedNumber = _getY4MFrameDataPos(v121, v117, &v117);
      if (Y4MDelimitedNumber)
      {
        goto LABEL_87;
      }
    }

    while (--a2);
  }

  if ((OUTLINED_FUNCTION_9_4(), Y4MDelimitedNumber = CMPhotoSurfacePoolCreatePixelBuffer(v44, v45, v46, v47, v48, v49, v50, v51, a9, 0, &v122), Y4MDelimitedNumber) || (*a8 != 0 || *(a8 + 1) != 0) && (v101 = OUTLINED_FUNCTION_27_0(*a8), Y4MDelimitedNumber = CMPhotoSetPixelBufferCLAPFromRect(v102, 0, 1, v101, v103, v104, v105), Y4MDelimitedNumber) || (v52 = OUTLINED_FUNCTION_89(), Y4MDelimitedNumber = CVPixelBufferLockBaseAddress(v52, v53), Y4MDelimitedNumber))
  {
LABEL_87:
    v106 = Y4MDelimitedNumber;
    goto LABEL_56;
  }

  v54 = OUTLINED_FUNCTION_89();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v54, v55);
  v57 = OUTLINED_FUNCTION_89();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v57, v58);
  v60 = v117;
  if (v25)
  {
    v61 = BytesPerRowOfPlane;
    v62 = v25;
    v63 = v117;
    do
    {
      v116 = 0;
      v64 = v121;
      v65 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v65)
      {
        goto LABEL_55;
      }

      Y4MDelimitedNumber = v65(v64, v24, v63, BaseAddressOfPlane, &v116);
      if (Y4MDelimitedNumber)
      {
        goto LABEL_87;
      }

      if (v116 != v24)
      {
        goto LABEL_74;
      }

      BaseAddressOfPlane += v61;
      v63 += v24;
    }

    while (--v62);
  }

  v109 = a9;
  v111 = CVPixelBufferGetBaseAddressOfPlane(v122, 1uLL);
  v66 = CVPixelBufferGetBytesPerRowOfPlane(v122, 1uLL);
  v110 = v66;
  if (v25 < 2)
  {
LABEL_52:
    v67 = OUTLINED_FUNCTION_89();
    Y4MDelimitedNumber = CVPixelBufferUnlockBaseAddress(v67, v68);
    if (!Y4MDelimitedNumber)
    {
      v69 = v109;
      if (v114 == 875704422)
      {
        v70 = v122;
LABEL_81:
        v106 = 0;
        *a10 = v70;
        v122 = 0;
        goto LABEL_56;
      }

      v116 = 0;
      if (CMPhotoPixelFormatContainsRGB(v114))
      {
        CMPhotoAddDefault601709MatrixToBufferIfAllowed(v122, 1, 1);
      }

      OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_95();
      OUTLINED_FUNCTION_9_4();
      if (!CMPhotoScaleAndRotateSessionTransformForSize(v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v69, v107, v108))
      {
        if (v122)
        {
          CFRelease(v122);
        }

        v70 = v116;
        goto LABEL_81;
      }

      fig_log_get_emitter();
      Y4MDelimitedNumber = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, v110, v111);
    }

    goto LABEL_87;
  }

  v72 = 0;
  v73 = v60 + v25 * v24;
  v115 = v73 + ((v25 * v24) >> 2);
  v112 = v25 >> 1;
  v74 = v24 >> 1;
  while (1)
  {
    v75 = MEMORY[0x1EEE9AC00](v66);
    v76 = &v109 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v75);
    v78 = &v109 - v77;
    v116 = 0;
    v79 = v121;
    v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v80)
    {
LABEL_73:
      v106 = 4294954514;
      goto LABEL_56;
    }

    v66 = v80(v79, v24 >> 1, v73 + ((v72 * v24) >> 1), v76, &v116);
    if (v66)
    {
      break;
    }

    if (v116 != v74)
    {
LABEL_85:
      v106 = 4294950194;
      goto LABEL_56;
    }

    v81 = v121;
    v82 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v82)
    {
      goto LABEL_73;
    }

    v66 = v82(v81, v24 >> 1, v115 + ((v72 * v24) >> 1), v78, &v116);
    if (v66)
    {
      break;
    }

    if (v116 != v74)
    {
      goto LABEL_85;
    }

    if (v24 >= 2)
    {
      v83 = &v111[v72 * v110];
      v84 = v24 >> 1;
      do
      {
        v85 = *v76++;
        *v83 = v85;
        v86 = *v78++;
        v83[1] = v86;
        v83 += 2;
        --v84;
      }

      while (v84);
    }

    if (++v72 == v112)
    {
      goto LABEL_52;
    }
  }

  v106 = v66;
LABEL_56:
  if (v121)
  {
    CFRelease(v121);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  return v106;
}

uint64_t CMPhotoWritePixelBufferToY4MURL(__CVBuffer *a1, uint64_t a2, int a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = 4294950306;
  if (!a1 || !a2)
  {
    return v7;
  }

  CMPhotoGetPixelBufferCLAPAsRect(a1);
  OUTLINED_FUNCTION_79();
  if (CVPixelBufferGetPixelFormatType(a1) != 875704422 || (v10 = vcvtad_u64_f64(v6), (v10 & 1) != 0) || (v11 = vcvtad_u64_f64(v5), (v11 & 1) != 0) || (v12 = vcvtad_u64_f64(v4), (v12 & 1) != 0) || (v13 = vcvtad_u64_f64(v3), (v13 & 1) != 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    LengthAtOffset = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    LengthAtOffset = FigFileForkOpenMainByCFURL();
    if (!LengthAtOffset)
    {
      OUTLINED_FUNCTION_51();
      LengthAtOffset = FigFileForkGetLengthAtOffset();
      if (!LengthAtOffset)
      {
        if (a3)
        {
          OUTLINED_FUNCTION_83();
        }

        else
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *__str = 0u;
          v67 = 0u;
          v16 = snprintf(__str, 0x80uLL, "YUV4MPEG2 W%zd H%zd F25:1 Ip C420jpeg XYSCSS=420JPEG\n", v12, v13);
          if (v16 - 128 < 0xFFFFFF81)
          {
            v7 = 4294950302;
            goto LABEL_14;
          }

          v17 = v16;
          LengthAtOffset = FigFileForkWrite();
          if (LengthAtOffset)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_65();
          if (v18 != v17)
          {
LABEL_59:
            v7 = 4294950304;
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_66();
        }

        OUTLINED_FUNCTION_51();
        LengthAtOffset = FigFileForkWrite();
        if (!LengthAtOffset)
        {
          OUTLINED_FUNCTION_65();
          if (v19 == 6)
          {
            OUTLINED_FUNCTION_66();
            v15 = 1;
            v20 = OUTLINED_FUNCTION_22();
            v22 = CVPixelBufferLockBaseAddress(v20, v21);
            if (v22)
            {
              v7 = v22;
            }

            else
            {
              v23 = OUTLINED_FUNCTION_5();
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v23, v24);
              v26 = OUTLINED_FUNCTION_22();
              v65 = CVPixelBufferGetBaseAddressOfPlane(v26, v27);
              v28 = OUTLINED_FUNCTION_5();
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v28, v29);
              v31 = OUTLINED_FUNCTION_5();
              v33 = CVPixelBufferGetBytesPerRowOfPlane(v31, v32);
              if (v13)
              {
                v34 = v33;
                OUTLINED_FUNCTION_83();
                v35 = &BaseAddressOfPlane[v10 + BytesPerRowOfPlane * v11];
                v36 = v13;
                do
                {
                  OUTLINED_FUNCTION_51();
                  v37 = FigFileForkWrite();
                  if (v37)
                  {
                    v7 = v37;
                    goto LABEL_57;
                  }

                  OUTLINED_FUNCTION_65();
                  if (v38 != v12)
                  {
                    v15 = 0;
                    v7 = 4294950304;
                    goto LABEL_46;
                  }

                  OUTLINED_FUNCTION_66();
                  v35 += BytesPerRowOfPlane;
                  --v36;
                }

                while (v36);
                v40 = v12 >> 1;
                v41 = v11 >> 1;
                if (v12 >> 1 <= 1)
                {
                  v42 = 1;
                }

                else
                {
                  v42 = v12 >> 1;
                }

                if (v13 >> 1 <= 1)
                {
                  v43 = 1;
                }

                else
                {
                  v43 = v13 >> 1;
                }

                v64 = v10 + v34 * v41;
                v44 = &v65[v64];
                do
                {
                  MEMORY[0x1EEE9AC00](v39);
                  OUTLINED_FUNCTION_67();
                  v45 = v44;
                  v47 = v46;
                  v48 = v42;
                  if (v12)
                  {
                    do
                    {
                      v49 = *v45;
                      v45 += 2;
                      *v47++ = v49;
                      --v48;
                    }

                    while (v48);
                  }

                  OUTLINED_FUNCTION_51();
                  OUTLINED_FUNCTION_83();
                  v50 = FigFileForkWrite();
                  if (v50)
                  {
                    v7 = v50;
                    goto LABEL_57;
                  }

                  OUTLINED_FUNCTION_65();
                  if (v51 != v40)
                  {
                    v7 = 4294950304;
                    goto LABEL_57;
                  }

                  OUTLINED_FUNCTION_66();
                  ++v36;
                  v44 += v34;
                }

                while (v36 != v43);
                v52 = 0;
                v53 = &v65[v64 + 1];
                while (1)
                {
                  MEMORY[0x1EEE9AC00](v39);
                  OUTLINED_FUNCTION_67();
                  v54 = v53;
                  v56 = v55;
                  v57 = v42;
                  if (v12)
                  {
                    do
                    {
                      v58 = *v54;
                      v54 += 2;
                      *v56++ = v58;
                      --v57;
                    }

                    while (v57);
                  }

                  OUTLINED_FUNCTION_51();
                  OUTLINED_FUNCTION_83();
                  v59 = FigFileForkWrite();
                  if (v59)
                  {
                    v7 = v59;
                    goto LABEL_57;
                  }

                  OUTLINED_FUNCTION_65();
                  if (v60 != v40)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_66();
                  ++v52;
                  v53 += v34;
                  if (v52 == v43)
                  {
                    goto LABEL_45;
                  }
                }

                v7 = 4294950304;
LABEL_57:
                v15 = 0;
              }

              else
              {
LABEL_45:
                v15 = 0;
                v7 = 0;
              }
            }

            goto LABEL_46;
          }

          goto LABEL_59;
        }
      }
    }
  }

LABEL_13:
  v7 = LengthAtOffset;
LABEL_14:
  v15 = 1;
LABEL_46:
  if (OUTLINED_FUNCTION_51())
  {
    FigFileForkClose();
  }

  if ((v15 & 1) == 0)
  {
    v61 = OUTLINED_FUNCTION_22();
    CVPixelBufferUnlockBaseAddress(v61, v62);
  }

  return v7;
}

uint64_t _cmphotoWritePixelBufferToURL(__CVBuffer *a1, CFURLRef url, uint64_t a3)
{
  v12 = 0;
  v3 = 4294950306;
  if (!a1 || !url)
  {
    return v3;
  }

  v5 = a3;
  v7 = CFURLCopyPathExtension(url);
  v8 = v7;
  if (v7 && OUTLINED_FUNCTION_78(v7, @"y4m") == kCFCompareEqualTo)
  {
    v3 = CMPhotoWritePixelBufferToY4MURL(a1, url, 0);
  }

  else
  {
    v9 = FigFileForkOpenMainByCFURL();
    if (!v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = ___cmphotoWritePixelBufferToURL_block_invoke;
      v11[3] = &__block_descriptor_tmp_447;
      v11[4] = v12;
      v9 = _writePixelBufferWithBlock(a1, v5, v11);
    }

    v3 = v9;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  CFRelease(v8);
LABEL_9:
  if (v12)
  {
    FigFileForkClose();
  }

  return v3;
}

uint64_t _writePixelBufferWithBlock(__CVBuffer *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294950306;
  }

  v6 = a1;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  CMPhotoGetPixelBufferCLAPAsRect(v6);
  OUTLINED_FUNCTION_64();
  v9 = v8;
  v11 = v10;
  v12 = CVPixelBufferLockBaseAddress(v6, 1uLL);
  if (v12)
  {
    return v12;
  }

  v13 = vcvtad_u64_f64(v3);
  v14 = vcvtad_u64_f64(v4);
  v49 = vcvtad_u64_f64(v9);
  v50 = vcvtad_u64_f64(v11);
  BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType);
  if (CVPixelBufferGetPlaneCount(v6) >= 2 && CVPixelBufferGetPlaneCount(v6) != 1)
  {
    if (CVPixelBufferGetPlaneCount(v6))
    {
      v47 = PixelFormatType;
      v23 = 0;
      v24 = 0;
      v46 = v14 & 0xFFFFFFFFFFFFFFFELL;
      pixelBuffer = v6;
      while (1)
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v6, v23);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, v23);
        OUTLINED_FUNCTION_42();
        IsSubsampled = CMPhotoPixelFormatIsSubsampled(v27, v28, v29, v30, v31);
        if (IsSubsampled)
        {
          goto LABEL_33;
        }

        if (v23)
        {
          v33 = 2 * v49;
        }

        else
        {
          v33 = v49;
        }

        v34 = v50;
        v35 = BaseAddressOfPlane + BytesPerPixelForPixelFormat * (v13 & 0xFFFFFFFFFFFFFFFELL) + v46 * BytesPerRowOfPlane;
        if (CMPhotoPixelFormatIsPackedYUV(v47))
        {
          v36 = 4 * ((v33 + 2) / 3uLL);
        }

        else
        {
          v36 = v33 * BytesPerPixelForPixelFormat;
        }

        if (a2)
        {
          v37 = OUTLINED_FUNCTION_72_0();
          v39 = v38(v37);
          if (v39)
          {
            goto LABEL_41;
          }

          v24 += v50 * BytesPerRowOfPlane;
        }

        else if (v50)
        {
          while (1)
          {
            v40 = OUTLINED_FUNCTION_72_0();
            v39 = v41(v40);
            if (v39)
            {
              break;
            }

            v35 += BytesPerRowOfPlane;
            v24 += v36;
            if (!--v34)
            {
              goto LABEL_28;
            }
          }

LABEL_41:
          v42 = v39;
          v6 = pixelBuffer;
          goto LABEL_39;
        }

LABEL_28:
        ++v23;
        v6 = pixelBuffer;
        if (CVPixelBufferGetPlaneCount(pixelBuffer) <= v23)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_38;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v6);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v6);
  v18 = &BaseAddress[BytesPerPixelForPixelFormat * v13 + BytesPerRow * v14];
  if (CMPhotoPixelFormatIsPackedRAW(PixelFormatType))
  {
    if (CMPhotoGetBitDepthForPixelFormat(PixelFormatType) == 12)
    {
      v19 = v50;
      v20 = (v49 * 1.5);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_48(v49 + 3);
      v19 = v50;
    }
  }

  else
  {
    v21 = BytesPerPixelForPixelFormat * v49;
    v22 = 2 * BytesPerPixelForPixelFormat * v49;
    v19 = v50;
    if (PixelFormatType == 1647719528)
    {
      v20 = v22;
    }

    else
    {
      v20 = v21;
    }

    if (PixelFormatType == 1647719528)
    {
      v19 = v50 >> 1;
    }
  }

  if (!a2)
  {
    if (v19)
    {
      v43 = 0;
      do
      {
        IsSubsampled = (*(a3 + 16))(a3, v18, v20, v43);
        if (IsSubsampled)
        {
          goto LABEL_33;
        }

        v18 += BytesPerRow;
        v43 += v20;
      }

      while (--v19);
    }

LABEL_38:
    v42 = 0;
    goto LABEL_39;
  }

  IsSubsampled = (*(a3 + 16))(a3, v18, v19 * BytesPerRow, 0);
LABEL_33:
  v42 = IsSubsampled;
LABEL_39:
  CVPixelBufferUnlockBaseAddress(v6, 1uLL);
  return v42;
}

uint64_t CMPhotoPixelBufferIsHLG(__CVBuffer *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F30], 0);
  v3 = v1;
  if (v1)
  {
    v1 = FigCFEqual();
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_45(v1, v2);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t CMPhotoPixelBufferIsPQ(__CVBuffer *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F30], 0);
  v3 = v1;
  if (v1)
  {
    v1 = FigCFEqual();
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_45(v1, v2);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

__CVBuffer *CMPhotoPixelBufferHasDisplayP3Primaries(__CVBuffer *a1)
{
  v1 = a1;
  v16 = 0;
  if (!a1)
  {
    return v1;
  }

  v2 = OUTLINED_FUNCTION_102();
  cf = CVBufferCopyAttachment(v2, v3, v4);
  if (cf)
  {
    goto LABEL_3;
  }

  if (!OUTLINED_FUNCTION_47(0, v5, v6, v7, v8, v9, v10, v11, 0))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(v1);
    OUTLINED_FUNCTION_29(PixelFormatType, v14, v15);
LABEL_3:
    v1 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_5;
  }

  v1 = 0;
LABEL_5:
  if (v16)
  {
    CFRelease(v16);
  }

  return v1;
}

__CVBuffer *CMPhotoPixelBufferHas2020Primaries(__CVBuffer *a1)
{
  v1 = a1;
  v16 = 0;
  if (!a1)
  {
    return v1;
  }

  v2 = OUTLINED_FUNCTION_102();
  cf = CVBufferCopyAttachment(v2, v3, v4);
  if (cf)
  {
    goto LABEL_3;
  }

  if (!OUTLINED_FUNCTION_47(0, v5, v6, v7, v8, v9, v10, v11, 0))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(v1);
    OUTLINED_FUNCTION_29(PixelFormatType, v14, v15);
LABEL_3:
    v1 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_5;
  }

  v1 = 0;
LABEL_5:
  if (v16)
  {
    CFRelease(v16);
  }

  return v1;
}

__CVBuffer *CMPhotoPixelBufferHasSRGBPrimaries(__CVBuffer *a1)
{
  v1 = a1;
  v17 = 0;
  if (!a1)
  {
    return v1;
  }

  v2 = OUTLINED_FUNCTION_102();
  cf = CVBufferCopyAttachment(v2, v3, v4);
  v12 = MEMORY[0x1E6965DB8];
  if (cf)
  {
    goto LABEL_3;
  }

  if (!OUTLINED_FUNCTION_47(0, v5, v6, v7, v8, v9, v10, v11, 0))
  {
    if (v17)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(v1);
      OUTLINED_FUNCTION_29(PixelFormatType, v15, v16);
    }

    else
    {
      cf = CFRetain(*v12);
    }

LABEL_3:
    v1 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_5;
  }

  v1 = 0;
LABEL_5:
  if (v17)
  {
    CFRelease(v17);
  }

  return v1;
}

vImage_Error CMPhotoCreateHalfPrecisionPixelBufferFromFullPrecisionSource(__CVBuffer *a1, uint64_t a2, int a3, int a4, int a5, __int16 a6, CVPixelBufferRef *a7)
{
  v65[0] = 0;
  v7 = 4294950306;
  if (!a1 || !a7)
  {
    return v7;
  }

  CVPixelBufferGetPixelFormatType(a1);
  OUTLINED_FUNCTION_52();
  v17 = v15 == v16 || v15 == 1380410945;
  if (!v17 && v15 != 1717856627 && v15 != 1717855600)
  {
    return 4294950301;
  }

  v20 = v15;
  v59 = a2;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v23 = OUTLINED_FUNCTION_22();
  v25 = CVPixelBufferLockBaseAddress(v23, v24);
  if (v25)
  {
    return v25;
  }

  HIDWORD(v61) = a4;
  v62 = a7;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  OUTLINED_FUNCTION_52();
  if (v20 != v28 && v20 != 1717856627)
  {
    OUTLINED_FUNCTION_38();
  }

  if (*v62)
  {
    v65[0] = *v62;
    OUTLINED_FUNCTION_70_0();
    v33 = 0;
    if (!_verifyEqualPixelBufferFormatSizeClap(v29, v30, v31, v32))
    {
      v34 = 0;
      v7 = 4294950306;
      goto LABEL_38;
    }

LABEL_25:
    v47 = OUTLINED_FUNCTION_17();
    v49 = CVPixelBufferLockBaseAddress(v47, v48);
    if (v49)
    {
      v7 = v49;
      v34 = 0;
    }

    else
    {
      v60 = v33;
      v50 = CVPixelBufferGetBytesPerRow(v65[0]);
      v51 = CVPixelBufferGetBaseAddress(v65[0]);
      src.data = BaseAddress;
      src.height = Height;
      src.width = Width;
      src.rowBytes = BytesPerRow;
      dest.data = v51;
      dest.height = Height;
      dest.width = Width;
      dest.rowBytes = v50;
      v7 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
      if (v7)
      {
        v34 = 1;
      }

      else
      {
        if (HIDWORD(v61) && Height)
        {
          do
          {
            if (Width)
            {
              for (i = 0; i != Width; ++i)
              {
                if (*(BaseAddress + i) == a5)
                {
                  *(v51 + i) = a6;
                }
              }
            }

            OUTLINED_FUNCTION_93();
          }

          while (!v17);
        }

        CVPixelBufferUnlockBaseAddress(v65[0], 0);
        v34 = 0;
        v7 = 0;
        *v62 = v65[0];
        v65[0] = 0;
      }

      v33 = v60;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_70_0();
  if (a3)
  {
    OUTLINED_FUNCTION_10_4();
    PixelBuffer = CMPhotoSurfacePoolCreatePixelBuffer(v39, v40, v41, v42, v43, v44, v45, 0, 64, 0, v65);
  }

  else
  {
    CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v35, v36, v37, v38, 0, 0, 64, 0, v65, v56, v57, v58, v59, v61, v62, dest.data, dest.height, dest.width, dest.rowBytes, src.data, src.height, src.width, src.rowBytes, v65[0], v65[1]);
  }

  v7 = PixelBuffer;
  if (!PixelBuffer)
  {
    v33 = 1;
    goto LABEL_25;
  }

  v34 = 0;
  v33 = 1;
LABEL_38:
  v53 = OUTLINED_FUNCTION_22();
  CVPixelBufferUnlockBaseAddress(v53, v54);
  if (v34 && v65[0])
  {
    CVPixelBufferUnlockBaseAddress(v65[0], 0);
  }

  if (v33 && v65[0])
  {
    CFRelease(v65[0]);
  }

  return v7;
}

uint64_t CMPhotoCreateFullPrecisionPixelBufferFromHalfPrecisionSource(__CVBuffer *a1, uint64_t a2, int a3, int a4, int a5, CVPixelBufferRef *a6)
{
  v49 = 0;
  v6 = 4294950306;
  if (!a1 || !a6)
  {
    return v6;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v13 = PixelFormatType == 1278226536 || PixelFormatType == 1751410032;
  if (v13 || PixelFormatType == 1751411059)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    v17 = OUTLINED_FUNCTION_22();
    v19 = CVPixelBufferLockBaseAddress(v17, v18);
    if (!v19)
    {
      v44 = a3;
      v46 = a6;
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      if (*v46)
      {
        v49 = *v46;
        OUTLINED_FUNCTION_70_0();
        if (!_verifyEqualPixelBufferFormatSizeClap(v23, v24, v25, v26))
        {
          v45 = 0;
          v41 = 0;
          v6 = 4294950306;
          goto LABEL_33;
        }

        v45 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_70_0();
        OUTLINED_FUNCTION_10_4();
        v34 = CMPhotoSurfacePoolCreatePixelBuffer(v27, v28, v29, v30, v31, v32, v33, 0, 0, 0, &v49);
        if (v34)
        {
          v6 = v34;
          v45 = 1;
LABEL_45:
          v41 = 0;
LABEL_33:
          v42 = OUTLINED_FUNCTION_22();
          CVPixelBufferUnlockBaseAddress(v42, v43);
          if (v41 && v49)
          {
            CVPixelBufferUnlockBaseAddress(v49, 0);
          }

          if (v45 && v49)
          {
            CFRelease(v49);
          }

          return v6;
        }

        v45 = 1;
      }

      v35 = OUTLINED_FUNCTION_17();
      v37 = CVPixelBufferLockBaseAddress(v35, v36);
      if (!v37)
      {
        v38 = CVPixelBufferGetBytesPerRow(v49);
        v39 = CVPixelBufferGetBaseAddress(v49);
        src.data = BaseAddress;
        src.height = Height;
        src.width = Width;
        src.rowBytes = BytesPerRow;
        dest.data = v39;
        dest.height = Height;
        dest.width = Width;
        dest.rowBytes = v38;
        v6 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
        if (v6)
        {
          v41 = 1;
        }

        else
        {
          if (v44 && Height)
          {
            do
            {
              if (Width)
              {
                for (i = 0; i != Width; ++i)
                {
                  if (BaseAddress[i] == a4)
                  {
                    *(v39 + i) = a5;
                  }
                }
              }

              OUTLINED_FUNCTION_93();
            }

            while (!v13);
          }

          CVPixelBufferUnlockBaseAddress(v49, 0);
          CMPhotoPropagateColorPropertiesFromSourceBuffer(a1, v49);
          v41 = 0;
          v6 = 0;
          *v46 = v49;
          v49 = 0;
        }

        goto LABEL_33;
      }

      v6 = v37;
      goto LABEL_45;
    }

    return v19;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_7();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

vImage_Error CMPhotoPixelBufferPremultiplyWithAlpha(__CVBuffer *a1)
{
  if (a1)
  {
    if (CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(a1, 0))
    {
      return 0;
    }

    AlphaMode = CMPhotoPixelBufferGetAlphaMode(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    if (PixelFormatType != 1815491698 && PixelFormatType != 1111970369)
    {
      return 0;
    }

    v5 = CVPixelBufferGetPixelFormatType(a1);
    if (v5 != 1815491698 && v5 != 1111970369)
    {
      return 0;
    }

    v9 = v5;
    src.data = 0;
    *&src.width = 0u;
    memset(&v23, 0, sizeof(v23));
    v10 = vcvtad_u64_f64(CMPhotoGetPixelBufferCLAPAsRect(a1));
    v12 = vcvtad_u64_f64(v11);
    v14.f64[1] = v13;
    *&src.height = vcvtq_u64_f64(vrndaq_f64(v14));
    v15 = OUTLINED_FUNCTION_5();
    CVPixelBufferLockBaseAddress(v15, v16);
    v18 = OUTLINED_FUNCTION_63(a1, v10, v12, v17, &src, &src.rowBytes);
    if (v18)
    {
      v7 = v18;
    }

    else
    {
      v23 = src;
      if (v9 == 1815491698)
      {
        if (AlphaMode == 1)
        {
          v7 = vImageUnpremultiplyData_RGBA16U(&src, &v23, 0);
          if (v7)
          {
            goto LABEL_26;
          }
        }

        v7 = vImagePremultiplyData_RGBA16U(&src, &v23, 0);
        if (v7)
        {
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_39();
        if (v9 == v19)
        {
          v20 = AlphaMode == 1 ? vImageClipToAlpha_RGBA8888(&src, &v23, 0) : vImagePremultiplyData_RGBA8888(&src, &v23, 0);
          v7 = v20;
          if (v20)
          {
            goto LABEL_26;
          }
        }
      }

      CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(a1, 0, 1);
      v7 = 0;
    }

LABEL_26:
    v21 = OUTLINED_FUNCTION_5();
    CVPixelBufferUnlockBaseAddress(v21, v22);
    return v7;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_19();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t CMPhotoPixelBufferBlendAlphaWithWhite(__CVBuffer *a1)
{
  CVPixelBufferGetPixelFormatType(a1);
  OUTLINED_FUNCTION_39();
  if (v2 != v3 || CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(a1, 0))
  {
    return 0;
  }

  PixelBufferCLAPAsRect = CMPhotoGetPixelBufferCLAPAsRect(a1);
  v6 = v5;
  v8 = v7;
  v9 = vcvtad_u64_f64(PixelBufferCLAPAsRect);
  v11 = vcvtad_u64_f64(v10);
  v12 = OUTLINED_FUNCTION_5();
  CVPixelBufferLockBaseAddress(v12, v13);
  v30 = 0;
  v31 = 0;
  v15 = OUTLINED_FUNCTION_63(a1, v9, v11, v14, &v31, &v30);
  if (v15)
  {
    v26 = v15;
  }

  else
  {
    v16 = vcvtad_u64_f64(v8);
    if (v16)
    {
      v17 = 0;
      v18 = vcvtad_u64_f64(v6);
      do
      {
        if (v18)
        {
          v19 = (v31 + v30 * v17 + 3);
          v20 = v18;
          do
          {
            v21 = *v19;
            v22 = v21 ^ 0xFF;
            v23 = (v21 ^ 0xFF) + (*(v19 - 3) * v21 + 127) / 0xFFu;
            if (v23 >= 0xFF)
            {
              LOBYTE(v23) = -1;
            }

            *(v19 - 3) = v23;
            v24 = v22 + (*(v19 - 2) * v21 + 127) / 0xFFu;
            if (v24 >= 0xFF)
            {
              LOBYTE(v24) = -1;
            }

            *(v19 - 2) = v24;
            v25 = v22 + (*(v19 - 1) * v21 + 127) / 0xFFu;
            if (v25 >= 0xFF)
            {
              LOBYTE(v25) = -1;
            }

            *(v19 - 1) = v25;
            *v19 = -1;
            v19 += 4;
            --v20;
          }

          while (v20);
        }

        ++v17;
      }

      while (v17 != v16);
    }

    CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(a1, 1, 1);
    v26 = 0;
  }

  v27 = OUTLINED_FUNCTION_5();
  CVPixelBufferUnlockBaseAddress(v27, v28);
  return v26;
}

vImage_Error CMPhotoCreateImageFromAlphaAndMainBuffer(__CVBuffer *a1, __CVBuffer *a2, int a3, int a4, unsigned int a5, int a6, CGImageRef *a7)
{
  CMPhotoGetPixelBufferCLAPAsRect(a1);
  OUTLINED_FUNCTION_79();
  CMPhotoGetPixelBufferCLAPAsRect(a2);
  OUTLINED_FUNCTION_82();
  cf = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  CVPixelBufferGetPixelFormatType(a2);
  OUTLINED_FUNCTION_58();
  if (!v24)
  {
    if (PixelFormatType == 843264310)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_32();
    if (!v24)
    {
      v24 = PixelFormatType == 1815491698 || PixelFormatType == 1279340854;
      if (!v24)
      {
        if (PixelFormatType == 1380411457)
        {
          if (v23 != 1278226536)
          {
            goto LABEL_58;
          }

          goto LABEL_15;
        }

        if (PixelFormatType != 1279340600)
        {
LABEL_58:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_14_1();
          WrappedPixelBufferForType = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_59;
        }

        goto LABEL_10;
      }

LABEL_12:
      if (v23 != 1278226742)
      {
        goto LABEL_58;
      }

      goto LABEL_15;
    }
  }

LABEL_10:
  if (v23 != 1278226488)
  {
    goto LABEL_58;
  }

LABEL_15:
  v113 = a3;
  v111 = a5;
  v112 = a4;
  v25 = a7;
  v26 = vcvtad_u64_f64(v10);
  v27 = vcvtad_u64_f64(v9);
  v28 = vcvtad_u64_f64(v8);
  v29 = vcvtad_u64_f64(v7);
  v30 = vcvtad_u64_f64(v12);
  v31 = vcvtad_u64_f64(v13);
  v32 = vcvtad_u64_f64(v14);
  if (v26 == vcvtad_u64_f64(v11) && v27 == v30 && v28 == v31 && v29 == v32)
  {
    v57 = v29;
    v55 = v28;
    v53 = v27;
    v51 = v26;
  }

  else
  {
    OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_9_4();
    WrappedPixelBufferForType = CMPhotoScaleAndRotateSessionTransformForSize(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, 0, v109, v110);
    if (WrappedPixelBufferForType)
    {
      goto LABEL_59;
    }

    a2 = cf;
    v51 = vcvtad_u64_f64(CMPhotoGetPixelBufferCLAPAsRect(cf));
    v53 = vcvtad_u64_f64(v52);
    v55 = vcvtad_u64_f64(v54);
    v57 = vcvtad_u64_f64(v56);
  }

  if (v51 != v26 || v53 != v27 || v55 != v28 || v57 != v29)
  {
    goto LABEL_58;
  }

  v61 = OUTLINED_FUNCTION_5();
  WrappedPixelBufferForType = CVPixelBufferLockBaseAddress(v61, v62);
  if (!WrappedPixelBufferForType)
  {
    v63 = OUTLINED_FUNCTION_20();
    v65 = CVPixelBufferLockBaseAddress(v63, v64);
    if (v65)
    {
      v73 = v65;
      v76 = OUTLINED_FUNCTION_5();
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_58();
    if (!v24 && PixelFormatType != 843264310)
    {
      OUTLINED_FUNCTION_32();
      if (v24)
      {
LABEL_77:
        origSrc.data = 0;
        origSrc.height = v29;
        origSrc.width = v28;
        origSrc.rowBytes = 0;
        v72 = OUTLINED_FUNCTION_25(a1, v66, v67, v68, &origSrc, &origSrc.rowBytes);
        if (v72)
        {
          goto LABEL_55;
        }

        newSrc.data = 0;
        newSrc.height = v29;
        newSrc.width = v28;
        newSrc.rowBytes = 0;
        v72 = OUTLINED_FUNCTION_25(a2, v89, v90, v91, &newSrc, &newSrc.rowBytes);
        if (v72)
        {
          goto LABEL_55;
        }

        dest = origSrc;
        OUTLINED_FUNCTION_32();
        v93 = v112;
        v92 = a6;
        if (v24)
        {
          v73 = vImageOverwriteChannels_ARGB8888(&newSrc, &origSrc, &dest, 1u, 0);
          v83 = v113;
          if (v73)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v94 = vImageOverwriteChannels_ARGB16U();
          v73 = v94;
          v83 = v113;
          if (v94)
          {
            goto LABEL_56;
          }
        }

LABEL_92:
        CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(a1, 0, v83);
        v104 = OUTLINED_FUNCTION_5();
        CVPixelBufferUnlockBaseAddress(v104, v105);
        v106 = OUTLINED_FUNCTION_20();
        CVPixelBufferUnlockBaseAddress(v106, v107);
        if (!v93 || (WrappedPixelBufferForType = CMPhotoPixelBufferPremultiplyWithAlpha(a1), !WrappedPixelBufferForType))
        {
          WrappedPixelBufferForType = CMPhotoCreateWrappedPixelBufferForType(*MEMORY[0x1E695E480], a1, v111, v92, v25);
        }

        goto LABEL_59;
      }

      if (PixelFormatType != 1279340600 && PixelFormatType != 1279340854)
      {
        if (PixelFormatType != 1815491698 && PixelFormatType != 1380411457)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_14_1();
          v72 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v108, v109, v110);
LABEL_55:
          v73 = v72;
LABEL_56:
          v74 = OUTLINED_FUNCTION_5();
          CVPixelBufferUnlockBaseAddress(v74, v75);
          v76 = OUTLINED_FUNCTION_20();
LABEL_57:
          CVPixelBufferUnlockBaseAddress(v76, v77);
          goto LABEL_60;
        }

        goto LABEL_77;
      }
    }

    origSrc.data = 0;
    newSrc.data = 0;
    v72 = OUTLINED_FUNCTION_25(a1, v66, v67, v68, &newSrc, &origSrc);
    if (v72)
    {
      goto LABEL_55;
    }

    v114 = 0;
    dest.data = 0;
    v72 = OUTLINED_FUNCTION_25(a2, v79, v80, v81, &v114, &dest);
    if (v72)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_58();
    if (v24 || PixelFormatType == 1279340600)
    {
      v83 = v113;
      if (v29)
      {
        for (i = 0; i != v29; ++i)
        {
          if (v28)
          {
            v85 = (v114 + dest.data * i);
            v86 = newSrc.data + origSrc.data * i + 1;
            v87 = v28;
            do
            {
              v88 = *v85++;
              *v86 = v88;
              v86 += 2;
              --v87;
            }

            while (v87);
          }
        }
      }
    }

    else
    {
      v83 = v113;
      if (v29)
      {
        v95 = 0;
        data = origSrc.data;
        v97 = v114;
        v98 = dest.data;
        v99 = newSrc.data + 2;
        do
        {
          if (v28)
          {
            v100 = (v97 + v98 * v95);
            v101 = v99;
            v102 = v28;
            do
            {
              v103 = *v100++;
              *v101 = v103;
              v101 += 4;
              --v102;
            }

            while (v102);
          }

          ++v95;
          v99 = &data[v99];
        }

        while (v95 != v29);
      }
    }

    v93 = v112;
    v92 = a6;
    goto LABEL_92;
  }

LABEL_59:
  v73 = WrappedPixelBufferForType;
LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  return v73;
}

uint64_t CMPhotoSurfacePoolCreatePixelBufferWithAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CVPixelBufferRef *a6)
{
  v24 = 64;
  pixelBuffer = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0uLL;
  if (!a6)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_100();
  v12 = v11;
  CMPhotoCFDictionaryGetSizeIfPresent(v13, *MEMORY[0x1E6966020], &v24);
  CMPhotoPixelBufferAttributesGetExtendedPixels(v9, &v22 + 1, &v23, &v22, &v21);
  if (v22 != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v14 = v23;
  v15 = v21;
  v16 = CMPhotoSurfacePoolCreatePixelBuffer(v12, v7, v8, v6, 1, v23 + v8, v21 + v6, 1, v24, v9, &pixelBuffer);
  v17 = pixelBuffer;
  if (!v16)
  {
    if (!pixelBuffer)
    {
      return 4294950194;
    }

    DataSizeFromWidthAndHeight = CMPhotoGetDataSizeFromWidthAndHeight(v7, v14 + v8, v15 + v6);
    DataSize = CVPixelBufferGetDataSize(pixelBuffer);
    v17 = pixelBuffer;
    if (DataSize >= DataSizeFromWidthAndHeight)
    {
      v16 = 0;
      *a6 = pixelBuffer;
      return v16;
    }

    v16 = 4294950194;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t CMPhotoPixelBufferConvertRGBToYCbCrIdentityMatrix(const void *a1, int a2, CVPixelBufferRef pixelBuffer, void *a4)
{
  v116 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  buffer = 0;
  CMPhotoGetPixelBufferSize(pixelBuffer);
  if (!a4)
  {
    return 4294950306;
  }

  *a4 = 0;
  OUTLINED_FUNCTION_39();
  if (!PixelFormatType)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v96, v100);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_64();
  if (a2)
  {
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_10_4();
    v18 = CMPhotoSurfacePoolCreatePixelBuffer(v11, v12, v13, v14, v15, v16, v17, 0, v92, v96, v100);
    if (v18)
    {
      goto LABEL_30;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21();
    CMPhotoCreateCVPixelBufferNotBackedByIOSurface(v75, v76, v77, v78, v79, v80, v81, 0, &buffer, v96, v100, v104, buffer, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
    if (v18)
    {
      goto LABEL_30;
    }
  }

  v19 = OUTLINED_FUNCTION_22();
  v18 = CVPixelBufferLockBaseAddress(v19, v20);
  if (!v18)
  {
    v28 = OUTLINED_FUNCTION_41(v18, v21, v22, v23, v24, v25, v26, v27, v93, v97, v101, v104, buffer);
    v30 = CVPixelBufferLockBaseAddress(v28, v29);
    if (v30)
    {
      a1 = v30;
    }

    else
    {
      HIDWORD(v105) = 0;
      OUTLINED_FUNCTION_99();
      v31 = OUTLINED_FUNCTION_5();
      PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v31, v32, 0, v33, v34, v35, 0);
      if (PixelBufferDataPointers || (OUTLINED_FUNCTION_31(), PixelBufferDataPointers = CMPhotoGetPixelBufferDataPointers(v37, v38, v39, v40, v41, v42, 0), PixelBufferDataPointers))
      {
        a1 = PixelBufferDataPointers;
        v82 = OUTLINED_FUNCTION_22();
        v84 = CVPixelBufferUnlockBaseAddress(v82, v83);
        v72 = OUTLINED_FUNCTION_41(v84, v85, v86, v87, v88, v89, v90, v91, v94, v98, v102, v105, buffer);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_39();
      if (PixelFormatType == v43 && v5 > 0.0)
      {
        v44 = 0;
        do
        {
          if (v4 > 0.0)
          {
            v45 = (v114 + v112 * v44);
            v46 = (v111 + v109 * v44);
            v47 = (v110 + v108 * v44);
            v48 = 1;
            do
            {
              *v46 = *v45;
              *v47++ = v45[1];
              v46[1] = v45[2];
              v45 += 4;
              v49 = v48++;
              v46 += 2;
            }

            while (v4 > v49);
          }

          OUTLINED_FUNCTION_28(v44);
        }

        while (!(v51 ^ v52 | v50));
      }

      CMPhotoPropagateColorPropertiesFromSourceBuffer(pixelBuffer, buffer);
      v53 = *MEMORY[0x1E6965F98];
      CVBufferRemoveAttachment(buffer, *MEMORY[0x1E6965F98]);
      CVBufferSetAttachment(buffer, v53, *MEMORY[0x1E6965FE0], kCVAttachmentMode_ShouldPropagate);
      v54 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965D70], 0);
      if (v54)
      {
        OUTLINED_FUNCTION_74(v54, v55, v56, v57, v58, v59, v60, v61, v94, v98, v102, v105, buffer);
        CFRelease(a1);
      }

      v62 = OUTLINED_FUNCTION_41(v54, v55, v56, v57, v58, v59, v60, v61, v94, v98, v102, v105, buffer);
      v64 = CVPixelBufferUnlockBaseAddress(v62, v63);
      OUTLINED_FUNCTION_97(v64, v65, v66, v67, v68, v69, v70, v71, v95, v99, v103, v106, buffer);
    }

    v72 = OUTLINED_FUNCTION_22();
LABEL_21:
    CVPixelBufferUnlockBaseAddress(v72, v73);
    goto LABEL_22;
  }

LABEL_30:
  a1 = v18;
LABEL_22:
  if (buffer)
  {
    CFRelease(buffer);
  }

  return a1;
}

uint64_t CMPhotoGetChromaLocationCodePointForString(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (FigCFEqual())
  {
    return 0;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 2;
  }

  if (FigCFEqual())
  {
    return 3;
  }

  v1 = 4;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      return 4;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v1;
}

uint64_t CMPhotoCreateEvenPixelBufferWithBacking(__CVBuffer *a1, size_t a2, size_t a3, CVPixelBufferRef *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (!a1)
  {
    return 4294950306;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v9 = 0;
  v10 = 4294950306;
  if (!a4 || PlaneCount != 2)
  {
    goto LABEL_61;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v14 = a2 == Width && a3 == Height;
  if (v14 || (a2 != Width ? (v15 = a2 == Width + 1) : (v15 = 1), !v15 || (a3 != Height ? (v16 = a3 == Height + 1) : (v16 = 1), !v16)))
  {
    v9 = 0;
    goto LABEL_61;
  }

  v17 = OUTLINED_FUNCTION_17();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v17, v18);
  v20 = OUTLINED_FUNCTION_20();
  v22 = CVPixelBufferGetBytesPerRowOfPlane(v20, v21);
  if (a2 != Width && BytesPerRowOfPlane < CMPhotoGetBytesPerPixelForPixelFormat(PixelFormatType) * a2 || (DataSize = CVPixelBufferGetDataSize(a1), v24 = OUTLINED_FUNCTION_20(), DataSize < BytesPerRowOfPlane * a3 + CVPixelBufferGetHeightOfPlane(v24, v25) * v22))
  {
    v9 = 0;
    v10 = 4294950306;
    goto LABEL_61;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  v73 = v22;
  v74 = BytesPerRowOfPlane;
  if (IOSurface)
  {
    v75 = PixelFormatType;
    v72 = DataSize;
    v27 = IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E696CEF8]);
    if (v27)
    {
      v28 = v27;
      *planeBaseAddress = 0u;
      v81 = 0u;
      IOSurfaceGetExtendedPixelsOfPlane();
      v9 = 0;
      v30 = a3 != Height && *(&v81 + 1) == 0;
      if (planeBaseAddress[1])
      {
        v31 = 1;
      }

      else
      {
        v31 = a2 == Width;
      }

      v10 = 4294950306;
      if (!v31)
      {
        goto LABEL_81;
      }

      if (v30)
      {
LABEL_54:
        CFRelease(v28);
        goto LABEL_55;
      }

      v32 = OUTLINED_FUNCTION_96();
      MutableCopy = CFDictionaryCreateMutableCopy(v32, v33, v28);
      if (MutableCopy)
      {
        v35 = MutableCopy;
        v71 = a4;
        v36 = *MEMORY[0x1E696D0A8];
        Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E696D0A8]);
        if (Value && (v38 = Value, CFArrayGetCount(Value) == 2))
        {
          v39 = OUTLINED_FUNCTION_96();
          v9 = CFArrayCreateMutableCopy(v39, v40, v38);
          if (v9)
          {
            v41 = OUTLINED_FUNCTION_37();
            if (CFArrayGetValueAtIndex(v41, v42))
            {
              key = v36;
              v43 = OUTLINED_FUNCTION_96();
              v46 = CFDictionaryCreateMutableCopy(v43, v44, v45);
              v47 = v46;
              if (v46)
              {
                v48 = CMPhotoCFDictionarySetInt(v46, *MEMORY[0x1E696D0C8], a2);
                if (v48 || (v48 = CMPhotoCFDictionarySetInt(v47, *MEMORY[0x1E696D090], a3), v48) || a2 != Width && (v48 = CMPhotoCFDictionarySetInt(v47, *MEMORY[0x1E696D070], LODWORD(planeBaseAddress[1]) - 1), v48) || a3 != Height && (v48 = CMPhotoCFDictionarySetInt(v47, *MEMORY[0x1E696D068], DWORD2(v81) - 1), v48) || (v48 = CMPhotoCFDictionarySetInt(v35, *MEMORY[0x1E696D130], a2), v48))
                {
                  v10 = v48;
                }

                else
                {
                  v10 = CMPhotoCFDictionarySetInt(v35, *MEMORY[0x1E696CF58], a3);
                  if (!v10)
                  {
                    v49 = OUTLINED_FUNCTION_37();
                    CFArraySetValueAtIndex(v49, v50, v47);
                    CFDictionarySetValue(v35, key, v9);
                    CFRelease(v9);
                    v9 = v35;
                    v35 = v47;
                    goto LABEL_51;
                  }
                }
              }

              else
              {
                v10 = 4294950305;
              }
            }

            else
            {
              v47 = 0;
              v10 = 4294950304;
            }

            CFRelease(v35);
            CFRelease(v9);
            v9 = 0;
            v35 = v47;
            if (!v47)
            {
              a4 = v71;
              goto LABEL_81;
            }
          }

          else
          {
            v10 = 4294950305;
          }
        }

        else
        {
          v9 = 0;
          v10 = 4294950304;
        }

LABEL_51:
        CFRelease(v35);
        CFRelease(v28);
        if (v10)
        {
          a4 = v71;
          PixelFormatType = v75;
        }

        else
        {
          ChildSurface = IOSurfaceCreateChildSurface();
          a4 = v71;
          PixelFormatType = v75;
          if (ChildSurface)
          {
            v28 = ChildSurface;
            v10 = CVPixelBufferCreateWithIOSurface(0, ChildSurface, 0, &pixelBufferOut);
            goto LABEL_54;
          }

          v10 = 4294950305;
        }

LABEL_55:
        v52 = pixelBufferOut;
        DataSize = v72;
        if (pixelBufferOut)
        {
          goto LABEL_66;
        }

        goto LABEL_58;
      }

      v9 = 0;
      v10 = 4294950305;
LABEL_81:
      PixelFormatType = v75;
      goto LABEL_54;
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_58:
  v53 = OUTLINED_FUNCTION_17();
  v55 = CVPixelBufferLockBaseAddress(v53, v54);
  if (!v55)
  {
    v56 = OUTLINED_FUNCTION_17();
    planeBaseAddress[0] = CVPixelBufferGetBaseAddressOfPlane(v56, v57);
    v58 = OUTLINED_FUNCTION_20();
    planeBaseAddress[1] = CVPixelBufferGetBaseAddressOfPlane(v58, v59);
    planeWidth[0] = a2;
    v60 = OUTLINED_FUNCTION_20();
    planeWidth[1] = CVPixelBufferGetWidthOfPlane(v60, v61);
    v78[0] = a3;
    v62 = OUTLINED_FUNCTION_20();
    v78[1] = CVPixelBufferGetHeightOfPlane(v62, v63);
    planeBytesPerRow[0] = v74;
    planeBytesPerRow[1] = v73;
    OUTLINED_FUNCTION_24();
    v10 = CVPixelBufferCreateWithPlanarBytes(0, a2, a3, PixelFormatType, 0, DataSize, 2uLL, planeBaseAddress, planeWidth, v78, planeBytesPerRow, releaseCallback, a1, v68, v69);
    if (v10)
    {
      v65 = OUTLINED_FUNCTION_17();
      CVPixelBufferUnlockBaseAddress(v65, v66);
      goto LABEL_61;
    }

    CFRetain(a1);
    v52 = pixelBufferOut;
LABEL_66:
    CMPhotoPropagateColorPropertiesFromSourceBuffer(a1, v52);
    *a4 = pixelBufferOut;
    pixelBufferOut = 0;
    if (!v9)
    {
      return v10;
    }

LABEL_67:
    CFRelease(v9);
    return v10;
  }

  v10 = v55;
LABEL_61:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v9)
  {
    goto LABEL_67;
  }

  return v10;
}

uint64_t CMPhotoCreateOtherRangePixelBufferWithBacking(uint64_t a1)
{
  planeBaseAddress[2] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  if (!a1)
  {
    return 4294950306;
  }

  OUTLINED_FUNCTION_69();
  PlaneCount = CVPixelBufferGetPlaneCount(v3);
  PixelFormatType = 0;
  v6 = 4294950306;
  if (!v1 || PlaneCount != 2)
  {
    goto LABEL_23;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v2);
  if (!CMPhotoPixelFormatContainsYCbCr(PixelFormatType) || (!CMPhotoPixelFormatIsFullRange(PixelFormatType) ? (FullRangeForPixelFormat = CMPhotoGetFullRangeForPixelFormat(PixelFormatType)) : (FullRangeForPixelFormat = CMPhotoGetVideoRangeForPixelFormat(PixelFormatType)), (v8 = FullRangeForPixelFormat) == 0))
  {
    PixelFormatType = 0;
    goto LABEL_23;
  }

  Width = CVPixelBufferGetWidth(v2);
  Height = CVPixelBufferGetHeight(v2);
  v11 = OUTLINED_FUNCTION_17();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v11, v12);
  v14 = OUTLINED_FUNCTION_20();
  v16 = CVPixelBufferGetBytesPerRowOfPlane(v14, v15);
  DataSize = CVPixelBufferGetDataSize(v2);
  IOSurface = CVPixelBufferGetIOSurface(v2);
  if (!IOSurface)
  {
    PixelFormatType = 0;
    goto LABEL_20;
  }

  v41 = DataSize;
  v19 = v1;
  if (!IOSurfaceCopyValue(IOSurface, *MEMORY[0x1E696CEF8]))
  {
    PixelFormatType = 0;
LABEL_19:
    v1 = v19;
    DataSize = v41;
LABEL_20:
    v24 = OUTLINED_FUNCTION_17();
    v26 = CVPixelBufferLockBaseAddress(v24, v25);
    if (v26)
    {
      v6 = v26;
    }

    else
    {
      v27 = OUTLINED_FUNCTION_17();
      planeBaseAddress[0] = CVPixelBufferGetBaseAddressOfPlane(v27, v28);
      v29 = OUTLINED_FUNCTION_20();
      planeBaseAddress[1] = CVPixelBufferGetBaseAddressOfPlane(v29, v30);
      planeWidth[0] = Width;
      v31 = OUTLINED_FUNCTION_20();
      planeWidth[1] = CVPixelBufferGetWidthOfPlane(v31, v32);
      v44[0] = Height;
      v33 = OUTLINED_FUNCTION_20();
      v44[1] = CVPixelBufferGetHeightOfPlane(v33, v34);
      planeBytesPerRow[0] = BytesPerRowOfPlane;
      planeBytesPerRow[1] = v16;
      OUTLINED_FUNCTION_24();
      v6 = CVPixelBufferCreateWithPlanarBytes(0, Width, Height, v8, 0, DataSize, 2uLL, planeBaseAddress, planeWidth, v44, planeBytesPerRow, releaseCallback, v2, v39, v40);
      if (!v6)
      {
        CFRetain(v2);
        v23 = pixelBufferOut;
        goto LABEL_26;
      }

      v36 = OUTLINED_FUNCTION_17();
      CVPixelBufferUnlockBaseAddress(v36, v37);
    }

LABEL_23:
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    goto LABEL_27;
  }

  FigCFDictionaryCreateMutableCopy();
  v20 = OUTLINED_FUNCTION_86();
  CFRelease(v20);
  if (!PixelFormatType)
  {
    goto LABEL_19;
  }

  CMPhotoCFDictionarySetInt32(PixelFormatType, *MEMORY[0x1E696CFC0], v8);
  ChildSurface = IOSurfaceCreateChildSurface();
  if (!ChildSurface)
  {
    goto LABEL_19;
  }

  v22 = ChildSurface;
  v6 = CVPixelBufferCreateWithIOSurface(0, ChildSurface, 0, &pixelBufferOut);
  CFRelease(v22);
  v23 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    goto LABEL_19;
  }

  v1 = v19;
LABEL_26:
  CMPhotoPropagateColorPropertiesFromSourceBuffer(v2, v23);
  *v1 = pixelBufferOut;
  pixelBufferOut = 0;
LABEL_27:
  if (PixelFormatType)
  {
    CFRelease(PixelFormatType);
  }

  return v6;
}

uint64_t CMPhotoApplyMagmaMap(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelBufferOut = 0;
  if (!a1 || !a2 || (PixelFormatType = CVPixelBufferGetPixelFormatType(a1), PixelFormatType != CVPixelBufferGetPixelFormatType(a2)) || PixelFormatType != 1919365990)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_30;
  }

  v5 = CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x100uLL, 1uLL, 0x72673366u, 0, &pixelBufferOut);
  if (v5)
  {
LABEL_30:
    v97 = v5;
    goto LABEL_25;
  }

  v6 = pixelBufferOut;
  if (pixelBufferOut && CVPixelBufferGetPixelFormatType(pixelBufferOut) == 1919365990 && (CMPhotoGetPixelBufferCLAPAsRect(v6), v8 == 256) && v7 == 1)
  {
    v9 = OUTLINED_FUNCTION_53();
    CVPixelBufferLockBaseAddress(v9, v10);
    v11 = OUTLINED_FUNCTION_53();
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v11, v12);
    v14 = CVPixelBufferGetBaseAddressOfPlane(v6, 1uLL);
    v15 = CVPixelBufferGetBaseAddressOfPlane(v6, 2uLL);
    v16 = 0;
    v17 = &dword_1A5AAD6F0;
    do
    {
      *&BaseAddressOfPlane[v16] = *(v17 - 1);
      *&v14[v16] = *v17;
      *&v15[v16] = v17[1];
      v16 += 4;
      v17 += 3;
    }

    while (v16 != 1024);
    v18 = OUTLINED_FUNCTION_53();
    CVPixelBufferUnlockBaseAddress(v18, v19);
    v20 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  CMPhotoGetPixelBufferCLAPAsRect(a1);
  v22 = v21;
  v24 = v23;
  CMPhotoGetPixelBufferCLAPAsRect(a2);
  if (v22 != v26 || v24 != v25)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_1();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_30;
  }

  HIDWORD(v107) = v20;
  CMPhotoGetPixelBufferCLAPAsRect(pixelBufferOut);
  v29 = v28;
  v30 = OUTLINED_FUNCTION_37();
  CVPixelBufferLockBaseAddress(v30, v31);
  v32 = OUTLINED_FUNCTION_14_0();
  v34 = CVPixelBufferLockBaseAddress(v32, v33);
  v42 = OUTLINED_FUNCTION_90(v34, v35, v36, v37, v38, v39, v40, v41, v99, v103, v107, pixelBuffer, v116, pixelBufferOut);
  CVPixelBufferLockBaseAddress(v42, v43);
  v44 = OUTLINED_FUNCTION_37();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v44, v45);
  v46 = OUTLINED_FUNCTION_37();
  v48 = CVPixelBufferGetBaseAddressOfPlane(v46, v47);
  v49 = OUTLINED_FUNCTION_14_0();
  v100 = CVPixelBufferGetBytesPerRowOfPlane(v49, v50);
  v51 = OUTLINED_FUNCTION_14_0();
  v53 = CVPixelBufferGetBaseAddressOfPlane(v51, v52);
  v61 = OUTLINED_FUNCTION_90(v53, v54, v55, v56, v57, v58, v59, v60, v100, BytesPerRowOfPlane, v108, pixelBufferb, v117, pixelBufferOut);
  v63 = CVPixelBufferGetBaseAddressOfPlane(v61, v62);
  v64 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v118 = a1;
  v65 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
  v66 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  pixelBuffera = a2;
  v67 = CVPixelBufferGetBaseAddressOfPlane(a2, 2uLL);
  v68 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
  v69 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 2uLL);
  if (v24)
  {
    v70 = 0;
    v71 = v29;
    v72 = 4 * (v105 / 4);
    v73 = 4 * (v101 / 4);
    do
    {
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          v75 = v64[i];
          v76 = (v65[i] * 255.0) + 0.5;
          *&v53[4 * i] = v63[(((v48[i] * 255.0) + 0.5) % v71)];
          *&v66[4 * i] = v68[(((v75 * 255.0) + 0.5) % v71)];
          *&v67[4 * i] = v69[(v76 % v71)];
        }
      }

      ++v70;
      v48 = (v48 + v72);
      v64 = (v64 + v72);
      v65 = (v65 + v72);
      v53 += v73;
      v66 += v73;
      v67 += v73;
    }

    while (v70 != v24);
  }

  v77 = CVPixelBufferUnlockBaseAddress(pixelBuffera, 0);
  v85 = OUTLINED_FUNCTION_41(v77, v78, v79, v80, v81, v82, v83, v84, v101, v105, v109, pixelBuffera, v118);
  v87 = CVPixelBufferUnlockBaseAddress(v85, v86);
  v95 = OUTLINED_FUNCTION_90(v87, v88, v89, v90, v91, v92, v93, v94, v102, v106, v110, pixelBufferc, v119, pixelBufferOut);
  CVPixelBufferUnlockBaseAddress(v95, v96);
  v97 = v111;
LABEL_25:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v97;
}

void *_callbackDataProviderGetBytePointer(void *a1)
{
  if (FigSimpleMutexLock())
  {
    return 0;
  }

  pixelBuffer = 0;
  destinationBuffer = 0;
  pixelTransferSessionOut = 0;
  if (a1[2])
  {
    goto LABEL_17;
  }

  CMPhotoGetPixelBufferCLAPAsRect(a1[1]);
  v3 = v2;
  if (!CGBitmapAllocateData())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19();
    v36 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixelBufferAttributes, v41, v43) == 0;
    goto LABEL_18;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = OUTLINED_FUNCTION_68();
  if (CVPixelBufferCreateWithBytes(v5, v6, v3, v7, v8, v9, v10, 0, 0, &destinationBuffer))
  {
    v36 = 0;
    goto LABEL_18;
  }

  if (!VTPixelTransferSessionCreate(v4, &pixelTransferSessionOut))
  {
    VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DE8], *MEMORY[0x1E695E4C0]);
    if (!VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]))
    {
      v11 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1[1], destinationBuffer);
      if (v11 != -12905)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_9_4();
      if (!CMPhotoSurfacePoolCreatePixelBuffer(v19, v20, v21, v22, v23, v24, v25, v26, pixelBufferAttributesa, v42, v43))
      {
        v27 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1[1], pixelBuffer);
        if (v27 == -12905)
        {
          v28 = a1[1];
          CVPixelBufferGetPixelFormatType(pixelBuffer);
          v29 = OUTLINED_FUNCTION_54(MEMORY[0x1E695F050]);
          v27 = CMPhotoVTPixelTransferWorkaround(v28, v30, 0, 1, 1, 1, 0, 0, v29, v31, v32, v33, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), &pixelBuffer);
        }

        if (!v27)
        {
          v11 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBuffer, destinationBuffer);
LABEL_13:
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  v11 = VTFillPixelBufferWithBlack();
LABEL_15:
  v34 = OUTLINED_FUNCTION_90(v11, v12, v13, v14, v15, v16, v17, v18, pixelBufferAttributesa, v42, v43, pixelTransferSessionOut, pixelBuffer, destinationBuffer);
  CVPixelBufferLockBaseAddress(v34, v35);
  a1[2] = destinationBuffer;
  destinationBuffer = 0;
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

LABEL_17:
  v36 = 1;
LABEL_18:
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  if (v36)
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1[2]);
    ++*(a1 + 7);
  }

  else
  {
    BaseAddress = 0;
  }

  FigSimpleMutexUnlock();
  return BaseAddress;
}

void *_callbackDataProviderReleaseBytePointer(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = FigSimpleMutexLock();
    if (!result)
    {
      v3 = *(v2 + 7);
      if (v3)
      {
        v4 = v2[2];
        if (v4)
        {
          v5 = v3 - 1;
          *(v2 + 7) = v5;
          if (!v5)
          {
            CVPixelBufferUnlockBaseAddress(v4, 0);
            v6 = v2[2];
            if (v6)
            {
              CFRelease(v6);
              v2[2] = 0;
            }
          }
        }
      }

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t _getY4MDelimitedNumber(void *a1, size_t a2, int a3, uint64_t *a4)
{
  v9 = 0;
  v10 = 0;
  result = _getY4MDelimitedSubString(a1, a2, a3, &v10, &v9);
  if (!result)
  {
    __endptr = 0;
    v6 = strtol((v10 + 1), &__endptr, 10);
    if (v6 && __endptr == v9)
    {
      v7 = v6;
      result = 0;
      *a4 = v7;
    }

    else
    {
      return 4294950194;
    }
  }

  return result;
}

uint64_t _getY4MDelimitedSubString(void *a1, size_t __n, int __c, void *a4, void *a5)
{
  v9 = memchr(a1, __c, __n);
  if (!v9)
  {
    return 4294950194;
  }

  v10 = v9;
  if (v9 - a1 + 2 >= __n)
  {
    return 4294950194;
  }

  v11 = __n - (v9 - a1);
  v12 = memchr(v9, 32, v11);
  v13 = memchr(v10, 10, v11);
  v14 = v12 >= v13 || v12 == 0;
  v15 = v14 ? v13 : v12;
  if (!v15 || (v15 - v10) < 2)
  {
    return 4294950194;
  }

  result = 0;
  *a4 = v10;
  *a5 = v15;
  return result;
}

uint64_t _getY4MFrameDataPos(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(__s1, 0, sizeof(__s1));
  __n = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  result = v6(a1, 5, a2, __s1, &__n);
  if (result)
  {
    return result;
  }

  if (__n != 5 || memcmp(__s1, "FRAME", 5uLL))
  {
    return 4294950194;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = a2 + 5;
  while (1)
  {
    result = v8(a1, 32, v9, __s1, &__n);
    if (result)
    {
      break;
    }

    v10 = __n;
    if (!__n)
    {
      return 4294950194;
    }

    v11 = memchr(__s1, 10, __n);
    if (v11)
    {
      v12 = v11;
      result = 0;
      *a3 = &v12[v9 - __s1 + 1];
      return result;
    }

    v9 += v10;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v8)
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t ___cmphotoWritePixelBufferToURL_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = FigFileForkWrite();
  if (!result)
  {
    if (a3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CMPhotoCreatePixelBufferFromImage_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t CMPhotoGetBufferFromMovie_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t CMPhotoGetBufferFromMovie_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t CMPhotoGetBufferFromMovie_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetBufferFromMovie_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetBufferFromMovie_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetBufferFromMovie_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetBufferFromMovie_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t CMPhotoGetBufferFromMovie_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t CMPhotoGetBufferFromMovie_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetBufferFromMovie_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoGetBufferFromMovie_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t CMPhotoGetBufferFromMovie_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void CMPhotoRemoveAndPropagateAlphaFromSourceBuffer_cold_1()
{
  OUTLINED_FUNCTION_69();
  CVBufferRemoveAttachment(v2, *MEMORY[0x1E6965CB8]);
  CVBufferRemoveAttachment(v1, *MEMORY[0x1E6965CC0]);
  HasOpaqueAlphaFromAttachment = CMPhotoPixelBufferHasOpaqueAlphaFromAttachment(v0, 1);
  AlphaMode = CMPhotoPixelBufferGetAlphaMode(v0);

  CMPhotoPixelBufferSetAlphaOpaquenessAndAlphaMode(v1, HasOpaqueAlphaFromAttachment, AlphaMode);
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreatePixelbufferFromAuxiliaryDataDictionary_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateYUVPixelBufferWithDithering_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateYUVPixelBufferWithDithering_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateYUVPixelBufferWithDithering_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void CMPhotoCreateYUVPixelBufferWithDithering_cold_4(CVPixelBufferRef *a1, __CVBuffer *a2, CVPixelBufferRef *a3)
{
  CVPixelBufferUnlockBaseAddress(*a1, 0);
  v6 = OUTLINED_FUNCTION_85();
  v8 = CVBufferCopyAttachments(v6, v7);
  if (v8)
  {
    v9 = v8;
    CVBufferSetAttachments(*a1, v8, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v9);
  }

  v10 = CVBufferCopyAttachments(a2, kCVAttachmentMode_ShouldNotPropagate);
  if (v10)
  {
    v11 = v10;
    CVBufferSetAttachments(*a1, v10, kCVAttachmentMode_ShouldNotPropagate);
    CFRelease(v11);
  }

  *a3 = *a1;
  *a1 = 0;
}

uint64_t CMPhotoCreateAlphaFromMainBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateAlphaFromMainBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateAlphaFromMainBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateAlphaFromMainBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t CMPhotoCreateAlphaFromMainBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTCompressionPluginClass_create(uint64_t a1, const __CFDictionary *a2)
{
  OUTLINED_FUNCTION_6_3(&_checkFigNoteTraceOnce_onceToken);
  OUTLINED_FUNCTION_5_4();
  v6 = v6 || v5 == 1635148593;
  if (!v6)
  {
    if (v5 != 1635135537)
    {
      return 4294950298;
    }

    v4 = 3;
  }

  v7 = OUTLINED_FUNCTION_9_5(v4);
  if (!v7)
  {
    return 4294950305;
  }

  v8 = v7;
  v9 = *(a1 + 92);
  *(v7 + 19) = *(a1 + 108);
  *(v7 + 136) = v9;
  *(v7 + 3) = kCMPhotoMinimumSourceAlignment;
  if (a2)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (CMPhotoCFDictionaryGetIntIfPresent())
    {
      Value = CFDictionaryGetValue(a2, @"QualityControllerParameters");
    }

    else
    {
      Value = 0;
    }

    v11 = CFDictionaryGetValue(a2, @"CustomMinimumSourceAlignment");
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFDictionaryGetTypeID())
      {
        v35 = 0uLL;
        CGPointMakeWithDictionaryRepresentation(v12, &v35);
        if (v35.f64[0] > 0.0 && v35.f64[1] > 0.0)
        {
          v8[3] = vcvtq_u64_f64(vrndaq_f64(v35));
        }
      }
    }

    if (CFDictionaryContainsKey(a2, @"SyncEncode"))
    {
      fig_log_get_emitter();
      v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v35.f64[0], LODWORD(v35.f64[1]), v36);
      OUTLINED_FUNCTION_8_3(v27, v28, v29, v30, v31, v32, v33, v34, *&v35.f64[0]);
      v37 = v8;
      VTCompressionPluginClass_dispose(&v35);
      return a2;
    }
  }

  else
  {
    Value = 0;
  }

  _getAccelerationMode();
  OUTLINED_FUNCTION_2_4(v14);
  if (Value)
  {
    v22 = CFRetain(Value);
  }

  else
  {
    v22 = 0;
  }

  v8[10].i64[1] = v22;
  OUTLINED_FUNCTION_18_0(v22, v15, v16, v17, v18, v19, v20, v21, SLODWORD(v35.f64[0]));
  OUTLINED_FUNCTION_16_0();
  if (!v6)
  {
    v24 = 0;
  }

  if (v23 == 2)
  {
    v25 = 90;
  }

  else
  {
    v25 = v24;
  }

  v8[4].i32[2] = v25;
  v8[7].i8[0] = 0;
  *(a1 + 152) = v8;
  return a2;
}

uint64_t VTCompressionPluginClass_canBeReused(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const __CFDictionary *a6, _BYTE *a7)
{
  v14 = *(a1 + 152);
  v46 = 9;
  v45 = 0;
  v15 = a2[1];
  if (v15 == 1752589105 || v15 == 1635148593)
  {
    v17 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_12_3();
    if (!v18)
    {
      v33 = 4294950298;
      goto LABEL_22;
    }

    v17 = 3;
  }

  v46 = v17;
  if (CMPhotoCFDictionaryGetIntIfPresent())
  {
    CFDictionaryGetValue(a5, @"QualityControllerParameters");
  }

  v19 = OUTLINED_FUNCTION_0_3();
  EncoderPropertiesFromSource = CMPhotoVideoQualityControllerCreate(v19, v20, v21, a3, a4, v22, v23, v24, *v35, v35[4], v36);
  if (!EncoderPropertiesFromSource)
  {
    *v44 = 0;
    *&v44[8] = 0;
    *&v44[13] = 0;
    CMPhotoVideoQualityControllerGetPoolingKey(v45, v44);
    _getAccelerationMode();
    v37 = v26;
    v43 = 1;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    *v38 = 0;
    CMPhotoCFDictionaryGetInt32IfPresent();
    v42 = 0;
    CMPhotoCFDictionaryGetBooleanIfPresent();
    v41 = 2;
    v39 = -1;
    v40 = 0x200000002;
    EncoderPropertiesFromSource = _getEncoderPropertiesFromSource(a6, *a2, 0, *(a2 + 8), &v40, &v39);
    if (!EncoderPropertiesFromSource)
    {
      v27 = *(a1 + 24);
      v28 = *(v14 + 24);
      v29 = *a2;
      v30 = v43;
      v31 = v42;
      if (*(a1 + 52))
      {
        goto LABEL_19;
      }

      if (qword_1ED6FA5A0 != -1)
      {
        dispatch_once(&qword_1ED6FA5A0, &__block_literal_global_0);
      }

      if (_MergedGlobals_3 != 1)
      {
LABEL_19:
        v32 = 0;
      }

      else
      {
        v32 = *(a1 + 120) == 1;
      }

      *v38 = *v44;
      *&v38[13] = *&v44[13];
      EncoderPropertiesFromSource = CMPhotoCodecSessionPoolCheckIfCompressionSessionReusable(v27, v28, v38, a3, a4, v29, v37, 0, v30, 0, v31, v40, v41, v39, v32, a7);
    }
  }

  v33 = EncoderPropertiesFromSource;
LABEL_22:
  CMPhotoVideoQualityControllerDispose(v45);
  return v33;
}

uint64_t VTCompressionPluginClass_prepare()
{
  OUTLINED_FUNCTION_14_2();
  if (!v0 || (v4 = v2, v5 = v1, !(v1 | v2)))
  {
    v46 = 0;
    Mutable = 0;
    v47 = 4294950306;
    goto LABEL_63;
  }

  v6 = v0;
  v7 = v0[19];
  if (!v7)
  {
    v46 = 0;
    Mutable = 0;
    v47 = 4294950195;
    goto LABEL_63;
  }

  v8 = v3;
  v9 = *v0;
  if (*(v7 + 3))
  {
    VTCompressionPluginClass_completeEncodes(v0);
    if (*(v7 + 41))
    {
      CMPhotoCodecSessionPoolRecycleSession(v6[3], *(v7 + 3), *v7);
    }

    v71 = *(v7 + 3);
    if (v71)
    {
      CFRelease(v71);
      *(v7 + 3) = 0;
    }
  }

  CMPhotoVideoQualityControllerDispose(*(v7 + 22));
  *(v7 + 22) = 0;
  *v7 = 0;
  v10 = OUTLINED_FUNCTION_5_2();
  Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
  if (!Mutable)
  {
    v46 = 0;
    goto LABEL_88;
  }

  OUTLINED_FUNCTION_4_3();
  EncoderPropertiesFromSource = _getEncoderPropertiesFromSource(v8, v15, Mutable, v16, v17, v18);
  if (EncoderPropertiesFromSource || (v20 = OUTLINED_FUNCTION_0_3(), EncoderPropertiesFromSource = CMPhotoVideoQualityControllerCreate(v20, v21, v22, v5, v4, v23, v24, v25, *v72, v72[4], v77), EncoderPropertiesFromSource) || (EncoderPropertiesFromSource = CMPhotoVideoQualityControllerSetSessionProperties(v116), EncoderPropertiesFromSource))
  {
LABEL_82:
    v47 = EncoderPropertiesFromSource;
    v46 = 0;
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_20_2(EncoderPropertiesFromSource, v26, v27, v28, v29, v30, v31, v32, v73, v78, v81, v84, v87, v89, v91, v94, v97, v100, v102, v104, v106, v108, v110);
  OUTLINED_FUNCTION_7_0();
  if (v67)
  {
    OUTLINED_FUNCTION_19_0(0x199u, v33, *(v7 + 9));
  }

  if (!*(v7 + 41))
  {
    EncoderPropertiesFromSource = CMPhotoCodecSessionPoolCreateEncoderSpecification(v9, *(v6 + 10), *(v7 + 9), &v113, &v112);
    if (!EncoderPropertiesFromSource)
    {
      v49 = OUTLINED_FUNCTION_5_2();
      v53 = CFDictionaryCreateMutable(v49, v50, v51, v52);
      v46 = v53;
      if (v53)
      {
        v54 = CMPhotoCFDictionarySetInt32(v53, *MEMORY[0x1E6966130], *(v6 + 12));
        if (!v54)
        {
          v54 = VTCompressionSessionCreateWithOptions();
          if (!v54)
          {
            goto LABEL_19;
          }
        }

        v47 = v54;
LABEL_83:
        URNFromAuxiliaryImageType = 0;
        goto LABEL_58;
      }

LABEL_88:
      URNFromAuxiliaryImageType = 0;
      v47 = 4294950305;
      goto LABEL_58;
    }

    goto LABEL_82;
  }

  OUTLINED_FUNCTION_1_4(v6[3], v33, v34, v35, v36, v37, v38, v39, v74, v79, v82, v85, v88, v90, v92, v95, v98, v101, v103, v105, v107, v109);
  OUTLINED_FUNCTION_13_2();
  CompressionSession = CMPhotoCodecSessionPoolCreateCompressionSession(v40, v41, v5, v4, v42, v43, 0, v44, v75, v76, v80, v83, v86, 0, VTCompressionPluginClass_VideoToolbox_callback, v93, v96, v99);
  v46 = 0;
  if (CompressionSession)
  {
    v47 = CompressionSession;
    URNFromAuxiliaryImageType = 0;
LABEL_58:
    *v7 = 1;
    goto LABEL_59;
  }

LABEL_19:
  if (!v111)
  {
    URNFromAuxiliaryImageType = 0;
    goto LABEL_34;
  }

  v55 = *MEMORY[0x1E6983530];
  v56 = MEMORY[0x1E6983518];
  v57 = MEMORY[0x1E69836F8];
  if (*(v6 + 52))
  {
    v58 = CMPhotoCFDictionarySetBoolean(Mutable, v55, 1);
    OUTLINED_FUNCTION_21_0(v58, *v56);
    CMPhotoCFDictionarySetInt(Mutable, *v57, *(v6 + 14));
    CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E6983638], *(v6 + 14));
    CMPhotoCFDictionarySetBoolean(Mutable, *MEMORY[0x1E69835F0], *(v6 + 60));
    v59 = *(v6 + 22);
    if (v59)
    {
      URNFromAuxiliaryImageType = CMPhotoCreateURNFromAuxiliaryImageType(v59);
      if (URNFromAuxiliaryImageType)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E6983550], URNFromAuxiliaryImageType);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v60 = CMPhotoCFDictionarySetBoolean(Mutable, v55, 0);
    OUTLINED_FUNCTION_21_0(v60, *v56);
    CMPhotoCFDictionarySetInt(Mutable, *v57, 1);
  }

  URNFromAuxiliaryImageType = 0;
LABEL_27:
  FigCFDictionarySetInt32();
  OUTLINED_FUNCTION_12_3();
  if (!v67)
  {
    if (v61 == 1635148593)
    {
      CMPhotoGetAVCProfileForPixelFormat(*(v6 + 12));
      OUTLINED_FUNCTION_17_0();
      FigCFDictionarySetValue();
      OUTLINED_FUNCTION_3_4();
    }

    else
    {
      if (v61 != 1752589105)
      {
        v47 = 4294950298;
        goto LABEL_58;
      }

      CMPhotoGetHEVCProfileForPixelFormat(*(v6 + 12), *(v6 + 52));
      OUTLINED_FUNCTION_17_0();
    }

    FigCFDictionarySetValue();
  }

  v62 = OUTLINED_FUNCTION_3_4();
  CFDictionarySetValue(v62, v63, v64);
  FigCFDictionarySetInt32();
  CMPhotoCFDictionarySetBoolean(Mutable, *MEMORY[0x1E69837F0], *(v7 + 42));
  CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E69836B8], *(v6 + 12));
LABEL_34:
  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    v65 = VTSessionSetProperties(v117[0], Mutable);
    if (v65)
    {
      goto LABEL_85;
    }
  }

  if (!VTSessionCopyProperty(v117[0], *MEMORY[0x1E6983868], v9, &propertyValueOut))
  {
    CMPhotoCFDictionaryGetSizeIfPresent(propertyValueOut, *MEMORY[0x1E69841D0], v7 + 6);
    CMPhotoCFDictionaryGetSizeIfPresent(propertyValueOut, *MEMORY[0x1E69841D8], v7 + 7);
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  v65 = VTSessionCopyProperty(v117[0], *MEMORY[0x1E69838A8], v9, &v115);
  if (v65)
  {
LABEL_85:
    v47 = v65;
    goto LABEL_58;
  }

  CMPhotoCFDictionaryGetSizeIfPresent(v115, *MEMORY[0x1E6966020], v7 + 10);
  CMPhotoCFDictionaryGetSizeIfPresent(v115, *MEMORY[0x1E6966140], v7 + 11);
  OUTLINED_FUNCTION_15_1();
  *(v7 + 1) = v5;
  *(v7 + 2) = v4;
  v66 = v116;
  *(v7 + 3) = v117[0];
  *(v7 + 22) = v66;
  v116 = 0;
  v117[0] = 0;
  OUTLINED_FUNCTION_7_0();
  if (!v69)
  {
    if (!v67)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v67)
  {
    kdebug_trace();
    v68 = *(v7 + 3);
  }

  v47 = VTCompressionSessionPrepareToEncodeFrames(v68);
  OUTLINED_FUNCTION_7_0();
  if (v67)
  {
    kdebug_trace();
    if (v47 == -12782)
    {
      v47 = 0;
    }

    else
    {
      v47 = v47;
    }

    if (v47)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_7_0();
    if (!v67)
    {
      goto LABEL_57;
    }

LABEL_53:
    OUTLINED_FUNCTION_10_0();
    kdebug_trace();
LABEL_55:
    v47 = 0;
    goto LABEL_59;
  }

  if (v47 == -12782)
  {
    goto LABEL_55;
  }

LABEL_57:
  if (v47)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (*(v7 + 41))
  {
    CMPhotoCodecSessionPoolRecycleSession(v6[3], v117[0], *v7);
  }

  if (URNFromAuxiliaryImageType)
  {
    CFRelease(URNFromAuxiliaryImageType);
  }

LABEL_63:
  if (v117[0])
  {
    CFRelease(v117[0]);
  }

  if (v115)
  {
    CFRelease(v115);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  CMPhotoVideoQualityControllerDispose(v116);
  return v47;
}

uint64_t VTCompressionPluginClass_completeEncodes(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(a1 + 152);
  if (!v1)
  {
    return 4294950195;
  }

  v2 = *(v1 + 24);
  v5 = **&MEMORY[0x1E6960C70];
  v3 = VTCompressionSessionCompleteFrames(v2, &v5);
  if (v3)
  {
    VTCompressionSessionInvalidate(*(v1 + 24));
    *v1 = 1;
  }

  return v3;
}

uint64_t VTTileCompressionPluginClass_create(uint64_t a1, const __CFDictionary *a2)
{
  OUTLINED_FUNCTION_6_3(&_checkFigNoteTraceOnce_onceToken);
  OUTLINED_FUNCTION_5_4();
  v6 = v6 || v5 == 1635148593;
  if (!v6)
  {
    if (v5 != 1635135537)
    {
      return 4294950298;
    }

    v4 = 3;
  }

  v7 = OUTLINED_FUNCTION_9_5(v4);
  if (!v7)
  {
    return 4294950305;
  }

  v8 = v7;
  v9 = MEMORY[0x1E6960CC0];
  *(v7 + 136) = *MEMORY[0x1E6960CC0];
  *(v7 + 19) = *(v9 + 16);
  *(v7 + 3) = kCMPhotoMinimumSourceAlignment;
  if (a2)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetInt32IfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    if (CMPhotoCFDictionaryGetIntIfPresent())
    {
      Value = CFDictionaryGetValue(a2, @"QualityControllerParameters");
    }

    else
    {
      Value = 0;
    }

    v11 = CFDictionaryGetValue(a2, @"CustomMinimumSourceAlignment");
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFDictionaryGetTypeID())
      {
        v35 = 0uLL;
        CGPointMakeWithDictionaryRepresentation(v12, &v35);
        if (v35.f64[0] > 0.0 && v35.f64[1] > 0.0)
        {
          v8[3] = vcvtq_u64_f64(vrndaq_f64(v35));
        }
      }
    }

    if (CFDictionaryContainsKey(a2, @"SyncEncode"))
    {
      fig_log_get_emitter();
      v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v35.f64[0], LODWORD(v35.f64[1]), v36);
      OUTLINED_FUNCTION_8_3(v27, v28, v29, v30, v31, v32, v33, v34, *&v35.f64[0]);
      v37 = v8;
      VTTileCompressionPluginClass_dispose(&v35);
      return a2;
    }
  }

  else
  {
    Value = 0;
  }

  _getAccelerationMode();
  OUTLINED_FUNCTION_2_4(v14);
  if (Value)
  {
    v22 = CFRetain(Value);
  }

  else
  {
    v22 = 0;
  }

  v8[10].i64[1] = v22;
  v8[7].i8[0] = 1;
  OUTLINED_FUNCTION_18_0(v22, v15, v16, v17, v18, v19, v20, v21, SLODWORD(v35.f64[0]));
  OUTLINED_FUNCTION_16_0();
  if (!v6)
  {
    v24 = 0;
  }

  if (v23 == 2)
  {
    v25 = 90;
  }

  else
  {
    v25 = v24;
  }

  v8[4].i32[2] = v25;
  *(a1 + 152) = v8;
  return a2;
}

uint64_t VTTileCompressionPluginClass_prepare()
{
  OUTLINED_FUNCTION_14_2();
  if (!v0 || (v4 = v2, v5 = v1, !(v1 | v2)))
  {
    v47 = 0;
    Mutable = 0;
    v58 = 4294950306;
    goto LABEL_61;
  }

  v6 = v0;
  v7 = v0[19];
  if (!v7)
  {
    v47 = 0;
    Mutable = 0;
    v58 = 4294950195;
    goto LABEL_61;
  }

  v8 = v3;
  v9 = *v0;
  if (*(v7 + 3))
  {
    VTTileCompressionPluginClass_completeEncodes(v0);
    if (*(v7 + 41))
    {
      CMPhotoCodecSessionPoolRecycleSession(v6[3], *(v7 + 3), *v7);
    }

    v61 = *(v7 + 3);
    if (v61)
    {
      CFRelease(v61);
      *(v7 + 3) = 0;
    }
  }

  CMPhotoVideoQualityControllerDispose(*(v7 + 22));
  *(v7 + 22) = 0;
  *v7 = 0;
  v10 = OUTLINED_FUNCTION_5_2();
  Mutable = CFDictionaryCreateMutable(v10, v11, v12, v13);
  if (!Mutable)
  {
    v47 = 0;
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_4_3();
  EncoderPropertiesFromSource = _getEncoderPropertiesFromSource(v8, v15, Mutable, v16, v17, v18);
  if (EncoderPropertiesFromSource || (v20 = OUTLINED_FUNCTION_0_3(), EncoderPropertiesFromSource = CMPhotoVideoQualityControllerCreate(v20, v21, v22, v5, v4, v23, v24, v25, *v62, v62[4], v67), EncoderPropertiesFromSource) || (EncoderPropertiesFromSource = CMPhotoVideoQualityControllerSetSessionProperties(v105), EncoderPropertiesFromSource))
  {
LABEL_76:
    v58 = EncoderPropertiesFromSource;
    v47 = 0;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_20_2(EncoderPropertiesFromSource, v26, v27, v28, v29, v30, v31, v32, v63, v68, v71, v74, v77, v79, v81, v84, v87, v90, v92, v94, v96, v98, v100);
  OUTLINED_FUNCTION_7_0();
  if (v56)
  {
    OUTLINED_FUNCTION_19_0(0x19Du, v33, *(v7 + 9));
  }

  if (qword_1ED6FA5A0 != -1)
  {
    dispatch_once(&qword_1ED6FA5A0, &__block_literal_global_0);
  }

  if (_MergedGlobals_3 == 1)
  {
    v40 = v6[15];
  }

  else
  {
    v40 = 0;
  }

  if (!*(v7 + 41))
  {
    EncoderPropertiesFromSource = CMPhotoCodecSessionPoolCreateEncoderSpecification(v9, *(v6 + 10), *(v7 + 9), &v102, 0);
    if (!EncoderPropertiesFromSource)
    {
      v48 = OUTLINED_FUNCTION_5_2();
      v52 = CFDictionaryCreateMutable(v48, v49, v50, v51);
      v47 = v52;
      if (v52)
      {
        CompressionSession = CMPhotoCFDictionarySetInt32(v52, *MEMORY[0x1E6966130], *(v6 + 12));
        if (CompressionSession)
        {
          goto LABEL_77;
        }

        CompressionSession = VTTileCompressionSessionCreate();
        if (CompressionSession)
        {
          goto LABEL_77;
        }

        goto LABEL_24;
      }

LABEL_81:
      v58 = 4294950305;
      goto LABEL_56;
    }

    goto LABEL_76;
  }

  v40 = v40 == 1;
  OUTLINED_FUNCTION_1_4(v6[3], v33, v34, v35, v36, v37, v38, v39, v64, v69, v72, v75, v78, v80, v82, v85, v88, v91, v93, v95, v97, v99);
  OUTLINED_FUNCTION_13_2();
  CompressionSession = CMPhotoCodecSessionPoolCreateCompressionSession(v41, v42, v5, v4, v43, v44, 1, v45, v65, v66, v70, v73, v76, v40, VTTileCompressionPluginClass_VideoToolbox_callback, v83, v86, v89);
  v47 = 0;
  if (CompressionSession)
  {
LABEL_77:
    v58 = CompressionSession;
    goto LABEL_56;
  }

LABEL_24:
  if (v101)
  {
    v53 = OUTLINED_FUNCTION_21_0(CompressionSession, *MEMORY[0x1E6983530]);
    OUTLINED_FUNCTION_21_0(v53, *MEMORY[0x1E6983518]);
    CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E69836F8], 1);
    CMPhotoCFDictionarySetSize(Mutable, *MEMORY[0x1E6983820], v40);
    FigCFDictionarySetInt32();
    OUTLINED_FUNCTION_12_3();
    if (!v56)
    {
      if (v54 == 1635148593)
      {
        CMPhotoGetAVCProfileForPixelFormat(*(v6 + 12));
        OUTLINED_FUNCTION_17_0();
        FigCFDictionarySetValue();
        OUTLINED_FUNCTION_3_4();
      }

      else
      {
        if (v54 != 1752589105)
        {
          v58 = 4294950298;
          goto LABEL_56;
        }

        CMPhotoGetHEVCProfileForPixelFormat(*(v6 + 12), *(v6 + 52));
        OUTLINED_FUNCTION_17_0();
      }

      FigCFDictionarySetValue();
    }

    CMPhotoCFDictionarySetBoolean(Mutable, *MEMORY[0x1E6983528], *(v7 + 32));
    FigCFDictionarySetInt32();
    CMPhotoCFDictionarySetBoolean(Mutable, *MEMORY[0x1E69837F0], *(v7 + 42));
    CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E69836B8], *(v6 + 12));
  }

  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    CompressionSession = VTSessionSetProperties(v106[0], Mutable);
    if (CompressionSession)
    {
      goto LABEL_77;
    }
  }

  if (!VTSessionCopyProperty(v106[0], *MEMORY[0x1E6983868], v9, &propertyValueOut))
  {
    CMPhotoCFDictionaryGetSizeIfPresent(propertyValueOut, *MEMORY[0x1E69841D0], v7 + 6);
    CMPhotoCFDictionaryGetSizeIfPresent(propertyValueOut, *MEMORY[0x1E69841D8], v7 + 7);
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  CompressionSession = VTSessionCopyProperty(v106[0], *MEMORY[0x1E69838A8], v9, &v104);
  if (CompressionSession)
  {
    goto LABEL_77;
  }

  CMPhotoCFDictionaryGetSizeIfPresent(v104, *MEMORY[0x1E6966020], v7 + 10);
  CMPhotoCFDictionaryGetSizeIfPresent(v104, *MEMORY[0x1E6966140], v7 + 11);
  OUTLINED_FUNCTION_15_1();
  *(v7 + 1) = v5;
  *(v7 + 2) = v4;
  v55 = v105;
  *(v7 + 3) = v106[0];
  *(v7 + 22) = v55;
  v105 = 0;
  v106[0] = 0;
  OUTLINED_FUNCTION_7_0();
  if (v57)
  {
    if (v56)
    {
      kdebug_trace();
    }

    v58 = VTTileCompressionSessionPrepareToEncodeTiles();
    OUTLINED_FUNCTION_7_0();
    if (!v56)
    {
      if (v58 == -12782)
      {
        goto LABEL_53;
      }

      goto LABEL_55;
    }

    kdebug_trace();
    if (v58 == -12782)
    {
      v58 = 0;
    }

    else
    {
      v58 = v58;
    }

    if (v58 || (OUTLINED_FUNCTION_7_0(), !v56))
    {
LABEL_55:
      if (!v58)
      {
        goto LABEL_57;
      }

LABEL_56:
      *v7 = 1;
      goto LABEL_57;
    }
  }

  else if (!v56)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_10_0();
  kdebug_trace();
LABEL_53:
  v58 = 0;
LABEL_57:
  v59 = v106[0];
  if (*(v7 + 41))
  {
    CMPhotoCodecSessionPoolRecycleSession(v6[3], v106[0], *v7);
    v59 = v106[0];
  }

  if (v59)
  {
    CFRelease(v59);
  }

LABEL_61:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  CMPhotoVideoQualityControllerDispose(v105);
  return v58;
}

uint64_t VTTileCompressionPluginClass_completeEncodes(uint64_t a1)
{
  if (!a1)
  {
    return 4294950306;
  }

  v1 = *(a1 + 152);
  if (!v1)
  {
    return 4294950195;
  }

  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10_0();
    kdebug_trace();
  }

  v3 = VTTileCompressionSessionCompleteTiles();
  if (v3)
  {
    VTTileCompressionSessionInvalidate();
    *v1 = 1;
  }

  if (*v2 == 1)
  {
    OUTLINED_FUNCTION_10_0();
    kdebug_trace();
  }

  return v3;
}

const __CFDictionary *_getEncoderPropertiesFromSource(const __CFDictionary *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *a5 = 0x200000002;
  *(a5 + 8) = 2;
  *a6 = -1;
  if (result)
  {
    v10 = result;
    colorPrimariesString = CFDictionaryGetValue(result, *MEMORY[0x1E6965D88]);
    transferFunctionString = CFDictionaryGetValue(v10, *MEMORY[0x1E6965F30]);
    Value = CFDictionaryGetValue(v10, *MEMORY[0x1E6965F98]);
    v12 = CFDictionaryGetValue(v10, *MEMORY[0x1E6965D00]);
    v13 = CFDictionaryGetValue(v10, *MEMORY[0x1E6965CF0]);
    if (a4)
    {
      v22 = _copyColorSpaceFromSource(v10);
      v14 = v22;
      if (v22)
      {
        CMPhotoGetTripletsForColorSpace(v22, a2, &colorPrimariesString, &transferFunctionString, 0);
        if (v23)
        {
          v15 = v23;
          if (v23 != -16993)
          {
LABEL_16:
            CFRelease(v14);
            return v15;
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if (!Value && (v14 || (v14 = _copyColorSpaceFromSource(v10)) != 0))
    {
      OUTLINED_FUNCTION_10_0();
      CMPhotoGetTripletsForColorSpace(v16, v17, v18, v19, v20);
      if (v21)
      {
        v15 = v21;
        if (v21 != -16993)
        {
          goto LABEL_16;
        }
      }
    }

    if (colorPrimariesString)
    {
      *a5 = CVColorPrimariesGetIntegerCodePointForString(colorPrimariesString);
      FigCFDictionarySetValue();
    }

    if (transferFunctionString)
    {
      *(a5 + 4) = CVTransferFunctionGetIntegerCodePointForString(transferFunctionString);
      FigCFDictionarySetValue();
    }

    if (Value)
    {
      *(a5 + 8) = CMPhotoCVYCbCrMatrixGetIntegerCodePointForString(Value);
      FigCFDictionarySetValue();
    }

    if (v12)
    {
      *a6 = CMPhotoGetChromaLocationCodePointForString(v12);
      FigCFDictionarySetValue();
    }

    if (v13)
    {
      *(a6 + 4) = CMPhotoGetChromaLocationCodePointForString(v13);
      FigCFDictionarySetValue();
    }

    v15 = 0;
    result = 0;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  return result;
}

const __CFDictionary *_copyColorSpaceFromSource(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E6965CE8]);
    if (!Value || (result = CFRetain(Value)) == 0)
    {
      result = CFDictionaryGetValue(v1, *MEMORY[0x1E6965EC8]);
      if (result)
      {

        return CGColorSpaceCreateWithICCData(result);
      }
    }
  }

  return result;
}

uint64_t _needsPixelBufferCopy(__CVBuffer *a1, uint64_t a2, void *a3, void *a4, int a5, void *a6, BOOL *a7, BOOL *a8, _BYTE *a9, _BYTE *a10)
{
  if (!a1)
  {
    return 4294950306;
  }

  v17 = a3[2];
  v96 = a3[3];
  PixelBufferSize = CMPhotoGetPixelBufferSize(a1);
  v20 = v19;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v102 = 0;
  v103 = 0;
  v21 = &v103;
  v22 = OUTLINED_FUNCTION_5_2();
  CVPixelBufferGetExtendedPixels(v22, v23, v24, 0, &v103);
  v97 = v17;
  if (CVPixelBufferIsPlanar(a1))
  {
    v25 = OUTLINED_FUNCTION_5_2();
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v25, v26);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a1);
  }

  v28 = BytesPerRowOfPlane;
  v29 = vcvtad_u64_f64(PixelBufferSize);
  v30 = CVPixelBufferGetPixelFormatType(a1);
  v100 = a5;
  if (!(CMPhotoPixelFormatIsPackedYUV(v30) | a5))
  {
    v31 = CVPixelBufferGetPixelFormatType(a1);
    BytesPerPixelForPixelFormat = CMPhotoGetBytesPerPixelForPixelFormat(v31);
    if (v28 / BytesPerPixelForPixelFormat > v29)
    {
      v102 = v28 / BytesPerPixelForPixelFormat - v29;
    }
  }

  v33 = vcvtad_u64_f64(v20);
  v35 = *(a2 + 96);
  v34 = *(a2 + 104);
  v36 = a3[2] + *a3 + v35;
  v37 = a3[3] + a3[1] + v34;
  if (*(a2 + 40))
  {
    v38 = v102 + v29;
    v39 = v33;
  }

  else
  {
    v39 = a4[1];
    v38 = a4[2] + *a4;
    v21 = a4 + 3;
  }

  v40 = *v21 + v39;
  v94 = v36 > v38;
  v95 = v37 > v40;
  if (!v100)
  {
    v89 = 0;
    goto LABEL_24;
  }

  if (*(a2 + 112))
  {
    v41 = v29 >= 0x80 && v33 >= 0x40;
    goto LABEL_20;
  }

  if (v102 >= v35)
  {
    v41 = v103 >= v34;
LABEL_20:
    v42 = !v41;
    goto LABEL_23;
  }

  v42 = 1;
LABEL_23:
  v89 = v42;
LABEL_24:
  v43 = *(a2 + 80);
  if (v43)
  {
    v88 = v28 % v43 != 0;
  }

  else
  {
    v88 = 0;
  }

  v44 = a8;
  v45 = *(a2 + 88);
  if (v45)
  {
    v90 = a4;
    v92 = v38;
    v46 = *v21 + v39;
    v47 = a3[2] + *a3 + v35;
    v48 = a3[3] + a3[1] + v34;
    IOSurface = CVPixelBufferGetIOSurface(a1);
    if (IOSurface)
    {
      v50 = IOSurface;
      if (IOSurfaceGetPlaneCount(IOSurface))
      {
        PlaneCount = IOSurfaceGetPlaneCount(v50);
        if (!PlaneCount)
        {
          LOBYTE(v45) = 0;
LABEL_37:
          v37 = v48;
          v36 = v47;
          v40 = v46;
          a4 = v90;
          v38 = v92;
          goto LABEL_38;
        }
      }

      else
      {
        PlaneCount = 1;
      }

      v85 = v44;
      v86 = a6;
      v52 = 0;
      v53 = 0;
      do
      {
        v53 |= IOSurfaceGetBaseAddressOfPlane(v50, v52++) % *(a2 + 88) != 0;
      }

      while (PlaneCount != v52);
      LOBYTE(v45) = v53 != 0;
      v44 = v85;
      a6 = v86;
      goto LABEL_37;
    }

    LOBYTE(v45) = 1;
    goto LABEL_37;
  }

LABEL_38:
  v54 = *(a2 + 48);
  if (!v54)
  {
    return 4294950306;
  }

  v55 = *(a2 + 56);
  if (!v55)
  {
    return 4294950306;
  }

  v56 = a3[1];
  v58 = *a3 != *a4 || v56 != a4[1] || a3[2] != a4[2] || a3[3] != a4[3];
  v60 = v44;
  if (*a3 % v54 || v56 % v55)
  {
    goto LABEL_53;
  }

  if (!v100)
  {
    if (!v89)
    {
      goto LABEL_81;
    }

LABEL_53:
    LOBYTE(v62) = v36 > v38 || v37 > v40;
    v63 = 1;
    goto LABEL_60;
  }

  if ((*(a2 + 112) == 0 && v58) | v89 & 1)
  {
    goto LABEL_53;
  }

LABEL_81:
  v63 = v88 | v45;
  v62 = v36 > v38 || v37 > v40;
  if (((v88 | v45) & 1) != 0 || !v62)
  {
    goto LABEL_60;
  }

  v93 = v38;
  v67 = v40;
  v101 = v37;
  v68 = *(a2 + 64);
  v64 = PixelFormatType;
  if (!CMPhotoPixelFormatIsAGXCompressed(PixelFormatType) && !CMPhotoPixelFormatIsLossyCompressed(PixelFormatType))
  {
LABEL_96:
    if (v68)
    {
      if (v36 <= v93)
      {
        v83 = a3[2];
      }

      else
      {
        v83 = a4[2] + *a4 - *a3;
      }

      v97 = v83;
      LOBYTE(v62) = 0;
      if (v101 <= v67)
      {
        v84 = a3[3];
      }

      else
      {
        v84 = a4[3] + a4[1] - a3[1];
      }

      v96 = v84;
    }

    else
    {
      LOBYTE(v62) = 1;
    }

    goto LABEL_61;
  }

  v91 = v36;
  v87 = a6;
  v69 = vcvtad_u64_f64(CMPhotoGetPixelBufferSize(a1));
  v71 = vcvtad_u64_f64(v70);
  v72 = *(a4 + 4) + *a4;
  v73 = *(a4 + 6) + *(a4 + 2);
  ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(PixelFormatType);
  v75 = ChromaSubsamplingFromPixelFormat == 3 || ChromaSubsamplingFromPixelFormat == 5;
  v76 = vadd_s32(__PAIR64__(v72, v69), 0x1F0000001FLL);
  v77 = vadd_s32(__PAIR64__(v73, v71), 0x1F0000001FLL);
  v78 = vand_s8(vmin_u32(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v77, 5uLL))), vbic_s8(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v76, 5uLL))), vcgt_u32(0x4000000040, v76))), vcgt_u32(v77, 0x3F0000003FLL));
  v79 = vadd_s32(vshl_u32(__PAIR64__(v72, v69), vneg_s32(vdup_n_s32(v75))), 0xF0000000FLL);
  v80 = vadd_s32(vshl_u32(__PAIR64__(v73, v71), vneg_s32(vdup_n_s32(ChromaSubsamplingFromPixelFormat == 5))), 0xF0000000FLL);
  v81 = vand_s8(vmin_u32(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v80, 4uLL))), vbic_s8(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v79, 4uLL))), vcgt_u32(0x2000000020, v79))), vcgt_u32(v80, 0x1F0000001FLL));
  v82 = vceq_s32(vzip1_s32(v81, v78), vzip2_s32(v81, v78));
  if (v82.i32[1] & v82.i32[0])
  {
    v68 &= 1u;
    a6 = v87;
    v64 = PixelFormatType;
    v36 = v91;
    goto LABEL_96;
  }

  LOBYTE(v62) = 1;
  a6 = v87;
LABEL_60:
  v64 = PixelFormatType;
LABEL_61:
  if ((CMPhotoPixelFormatIsLossyCompressed(v64) || CMPhotoPixelFormatIsAGXCompressed(v64)) && (a3[2] < 0xA0uLL || a3[3] <= 0x3FuLL))
  {
    LOBYTE(v62) = 1;
  }

  if (a6)
  {
    *a6 = v97;
    a6[1] = v96;
  }

  if (a7)
  {
    *a7 = v94;
  }

  if (v60)
  {
    *v60 = v95;
  }

  if (a9)
  {
    *a9 = v63 & 1;
  }

  result = 0;
  if (a10)
  {
    *a10 = v62;
  }

  return result;
}