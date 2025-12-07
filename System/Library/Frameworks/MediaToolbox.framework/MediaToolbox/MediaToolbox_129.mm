uint64_t fcr_applyDecouplingAndSafeRegion(const __CFArray *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  Count = CFArrayGetCount(a1);
  v18 = Count - 1;
  if (Count < 1 || (v19 = Count, allocator = *MEMORY[0x1E695E480], (Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0)) == 0))
  {
    v123 = 0;
    return v123 & 1;
  }

  v21 = Mutable;
  v125 = a6;
  v126 = a7;
  v127 = a8;
  v128 = a9;
  if (!v18)
  {
    v133 = 0;
    goto LABEL_118;
  }

  v132 = Mutable;
  v133 = 0;
  v129 = v18 * v19;
  v22 = a2;
  v23 = a2 + a4;
  v24 = a3 + a5;
  __asm { FMOV            V0.2D, #-1.0 }

  v137 = _Q0;
  v29 = -1.0;
  v30 = 1.0;
  v130 = a3;
  v134 = v24;
  while (1)
  {
    if (!a1)
    {
      goto LABEL_116;
    }

    if (CFArrayGetCount(a1) >= 1)
    {
      do
      {
        v31 = OUTLINED_FUNCTION_2_128();
        if (v31)
        {
          v32 = v31;
          v33 = v31[4];
          if (v33)
          {
            CFArrayRemoveAllValues(v33);
          }

          *(v32 + 5) = v137;
          *(v32 + 7) = v137;
          v32[22] = 0;
          v32[23] = 0;
          v32[21] = 0;
          *(v32 + 9) = 0u;
          *(v32 + 11) = 0u;
          *(v32 + 13) = 0u;
          *(v32 + 15) = 0u;
          *(v32 + 17) = 0u;
          *(v32 + 19) = 0u;
        }

        OUTLINED_FUNCTION_377_0();
      }

      while (!_ZF);
    }

    v34 = CFArrayGetCount(a1);
    if (v34 <= 1)
    {
      goto LABEL_116;
    }

    v35 = v34;
    v36 = 0;
    v37 = 0;
    v38 = v34 - 2;
    do
    {
      v39 = OUTLINED_FUNCTION_2_128();
      if (v39)
      {
        v40 = v39;
        v41 = v37 + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v41);
          if (ValueAtIndex)
          {
            v43 = ValueAtIndex;
            memcpy(__dst, v40, 0xD0uLL);
            memcpy(v140, v43, sizeof(v140));
            if (fcr_isOverlap(__dst, v140))
            {
              CFArrayAppendValue(v40[4], v43);
              CFArrayAppendValue(v43[4], v40);
              v36 = 1;
            }
          }

          ++v41;
        }

        while (v35 != v41);
      }

      _ZF = v37++ == v38;
    }

    while (!_ZF);
    if (!v36)
    {
LABEL_116:
      ++v133;
LABEL_117:
      v21 = v132;
      goto LABEL_118;
    }

    v44 = CFArrayGetCount(a1);
    if (v44 >= 1)
    {
      do
      {
        v45 = OUTLINED_FUNCTION_2_128();
        v45[5] = v22;
        v45[6] = v23;
        v45[7] = v24;
        v45[8] = a3;
        OUTLINED_FUNCTION_377_0();
      }

      while (!_ZF);
    }

    MutableCopy = CFArrayCreateMutableCopy(allocator, 0, a1);
    if (MutableCopy)
    {
      v49 = MutableCopy;
      OUTLINED_FUNCTION_3_104(MutableCopy, v47, v48, fcr_objComparatorX);
      v50 = CFArrayGetValueAtIndex(v49, 0);
      v53 = v50;
      v50[5] = v22;
      if (v44 >= 2)
      {
        for (i = 1; i != v44; ++i)
        {
          v50 = CFArrayGetValueAtIndex(v49, i);
          v55 = v50[2] * 0.5;
          v56 = v53[2] * 0.5;
          v53[6] = v56 + *v50 + v55 + v29;
          v50[5] = v56 + *v53 + v30 - v55;
          v53 = v50;
        }
      }

      v50[6] = v23;
      OUTLINED_FUNCTION_3_104(v49, v51, v52, fcr_objComparatorY);
      v57 = CFArrayGetValueAtIndex(v49, 0);
      v58 = v57;
      v57[8] = a3;
      if (v44 >= 2)
      {
        for (j = 1; j != v44; ++j)
        {
          v57 = CFArrayGetValueAtIndex(v49, j);
          v60 = v57[3] * 0.5;
          v61 = v58[3] * 0.5;
          v58[7] = v61 + v57[1] + v60 + v29;
          v57[8] = v61 + v58[1] + v30 - v60;
          v58 = v57;
        }
      }

      v57[7] = v24;
      CFRelease(v49);
    }

    v62 = CFArrayGetCount(a1);
    if (v62 < 1)
    {
      goto LABEL_117;
    }

    v63 = v62;
    v64 = 0;
    v138 = 0;
    v65 = -1;
    v66 = 0.0;
    v136 = v62;
    do
    {
      v67 = CFArrayGetValueAtIndex(a1, v64);
      if (!v67)
      {
        goto LABEL_87;
      }

      v68 = v67;
      if (*(v67 + 48) > 0)
      {
        v138 = 1;
        goto LABEL_87;
      }

      v139 = v65;
      v69 = CFArrayGetCount(v67[4]);
      if (v69 >= 1)
      {
        v70 = v69;
        v71 = 0;
        v72 = *v68 + *(v68 + 2) * 0.5;
        v73 = (v68 + 12);
        v74 = (v68 + 9);
        v75 = *(v68 + 1) + *(v68 + 3) * 0.5;
        v76 = (v68 + 16);
        v77 = (v68 + 19);
        do
        {
          v69 = CFArrayGetValueAtIndex(v68[4], v71);
          v78 = *(v69 + 24);
          v79 = *(v69 + 16) * 0.5;
          v80 = *(v69 + 8);
          v81 = *v69 + v79;
          v82 = *(v68 + 3);
          v83 = v79 + *(v68 + 2) * 0.5 - vabdd_f64(v72, v81);
          if (v72 >= v81)
          {
            v87 = *v73 == 0.0 || v83 < *v73;
            v85 = (v68 + 12);
            v86 = (v68 + 14);
            if (v87)
            {
LABEL_54:
              *v85 = v83;
            }
          }

          else
          {
            _NF = *v74 == 0.0 || v83 < *v74;
            v85 = (v68 + 9);
            v86 = (v68 + 11);
            if (_NF)
            {
              goto LABEL_54;
            }
          }

          v88 = v78 * 0.5;
          v89 = v80 + v88;
          v90 = v88 + v82 * 0.5 - vabdd_f64(v75, v89);
          *v86 = v90 + *v86;
          if (v75 >= v89)
          {
            v94 = *v76 == 0.0 || v90 < *v76;
            v92 = (v68 + 16);
            v93 = (v68 + 17);
            if (!v94)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v91 = *v77 == 0.0 || v90 < *v77;
            v92 = (v68 + 19);
            v93 = (v68 + 20);
            if (!v91)
            {
              goto LABEL_67;
            }
          }

          *v92 = v90;
LABEL_67:
          *v93 = v83 + *v93;
          ++v71;
        }

        while (v70 != v71);
      }

      *(v68 + 9) = -*(v68 + 9);
      *(v68 + 19) = -*(v68 + 19);
      OUTLINED_FUNCTION_0_146(v69, (v68 + 9));
      OUTLINED_FUNCTION_0_146(v95, (v68 + 12));
      OUTLINED_FUNCTION_0_146(v96, (v68 + 18));
      OUTLINED_FUNCTION_0_146(v97, (v68 + 15));
      v98 = *(v68 + 11);
      v99 = *(v68 + 14);
      v100 = v98 <= v99;
      if (v98 <= v99)
      {
        v98 = *(v68 + 14);
      }

      v101 = 12;
      if (!v100)
      {
        v101 = 9;
      }

      v102 = v68[v101];
      v103 = *(v68 + 17);
      v104 = *(v68 + 20);
      v105 = v103 <= v104;
      if (v103 <= v104)
      {
        v103 = *(v68 + 20);
      }

      v106 = 19;
      if (!v105)
      {
        v106 = 16;
      }

      v107 = v68[v106];
      if (v98 > 0.0 || v103 > 0.0)
      {
        v108 = v98 > 0.0 && *(v68 + 2) < *(v68 + 3);
        v23 = a2 + a4;
        v22 = a2;
        v24 = v134;
        v29 = -1.0;
        v30 = 1.0;
        v65 = v139;
        v63 = v136;
        if (v108)
        {
          v68[21] = v102;
          v68[22] = 0;
          *(v68 + 23) = v98;
        }

        else
        {
          v68[21] = 0;
          v98 = v103;
          v68[22] = v107;
          *(v68 + 23) = v103;
        }
      }

      else
      {
        v68[21] = 0;
        v68[22] = 0;
        v98 = 0.0;
        v68[23] = 0;
        v23 = a2 + a4;
        v22 = a2;
        v24 = v134;
        v29 = -1.0;
        v30 = 1.0;
        v65 = v139;
        v63 = v136;
      }

      if (v66 < v98)
      {
        v65 = v64;
        v66 = v98;
      }

LABEL_87:
      ++v64;
    }

    while (v64 != v63);
    if (v66 <= 0.0 || v65 < 0)
    {
      v21 = v132;
      a3 = v130;
      if (!v138)
      {
        goto LABEL_118;
      }

      if (CFArrayGetCount(a1) >= 1)
      {
        do
        {
          *(OUTLINED_FUNCTION_2_128() + 48) = 0;
          OUTLINED_FUNCTION_377_0();
        }

        while (!_ZF);
      }

      v113 = v133 - 1;
      goto LABEL_114;
    }

    v109 = CFArrayGetValueAtIndex(a1, v65);
    v21 = v132;
    a3 = v130;
    if (v109)
    {
      *v109 = vaddq_f64(*(v109 + 168), *v109);
      ++*(v109 + 48);
    }

    v110 = CFArrayGetCount(a1);
    if (!v110)
    {
      goto LABEL_108;
    }

    v111 = v110;
    v112 = CFDataGetLength(v132) / (208 * v110);
    v113 = v133;
    if (v112 >= 1)
    {
      break;
    }

LABEL_105:
    if (v111 >= 1)
    {
      do
      {
        OUTLINED_FUNCTION_2_128();
        v121 = OUTLINED_FUNCTION_4_102();
        CFDataAppendBytes(v121, v122, 208);
        OUTLINED_FUNCTION_377_0();
      }

      while (!_ZF);
LABEL_108:
      v113 = v133;
    }

LABEL_114:
    v133 = v113 + 1;
    if (v113 + 1 >= v129)
    {
      goto LABEL_118;
    }
  }

  BytePtr = CFDataGetBytePtr(v132);
  v113 = v133;
  v115 = BytePtr;
  v116 = 0;
  while (1)
  {
    if (v111 < 1)
    {
      v118 = 0;
    }

    else
    {
      v117 = 0;
      LODWORD(v118) = 0;
      v119 = v115;
      do
      {
        v120 = CFArrayGetValueAtIndex(a1, v117);
        if (!memcmp(v119, v120, 0xD0uLL))
        {
          v118 = (v118 + 1);
        }

        else
        {
          v118 = v118;
        }

        ++v117;
        v119 += 208;
      }

      while (v111 != v117);
      v21 = v132;
      v113 = v133;
    }

    if (v111 == v118)
    {
      break;
    }

    ++v116;
    v115 += 208 * v111;
    if (v116 >= v112)
    {
      goto LABEL_105;
    }
  }

LABEL_118:
  CFRelease(v21);
  v123 = (v133 > 1) | fcr_moveIntoSafeRegion(a1, v125, v126, v127, v128);
  return v123 & 1;
}

uint64_t fcr_moveIntoSafeRegion(CFArrayRef theArray, double a2, double a3, double a4, double a5)
{
  v5 = 0;
  if (a4 > 0.0 && a5 > 0.0)
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      v43 = 0;
      v44 = 0;
      v12 = fcr_sweepBottomUp(MutableCopy, &v44, a3);
      v13 = a3 + a5;
      Count = CFArrayGetCount(v11);
      v47.location = 0;
      v47.length = Count;
      CFArraySortValues(v11, v47, fcr_objComparatorTop, 0);
      if (Count < 1)
      {
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = a3 + a5;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
          v19 = ValueAtIndex[1];
          v20 = ValueAtIndex[3];
          if (v19 + v20 > v13)
          {
            v19 = v13 - v20;
            ValueAtIndex[1] = v13 - v20;
            v16 = 1;
          }

          v17 = fmin(v17, v19);
          ++v15;
        }

        while (Count != v15);
        if ((v16 & (Count != 1)) == 1)
        {
          v21 = 1;
          do
          {
            v22 = CFArrayGetValueAtIndex(v11, v21);
            v23 = 0;
            do
            {
              v24 = CFArrayGetValueAtIndex(v11, v23);
              memcpy(__dst, v22, sizeof(__dst));
              memcpy(v45, v24, sizeof(v45));
              if (fcr_isOverlap(__dst, v45))
              {
                v25 = v24[1] - v22[3];
                v22[1] = v25;
                v17 = fmin(v17, v25);
              }

              ++v23;
            }

            while (v21 != v23);
            ++v21;
          }

          while (v21 != Count);
          v16 = 1;
        }

        v13 = v17;
      }

      if (v13 < a3)
      {
        fcr_sweepBottomUp(v11, &v44, (a3 + v13) * 0.5);
      }

      v26 = fcr_sweepLeftRight(v11, &v43, a2);
      v27 = a2 + a4;
      v28 = CFArrayGetCount(v11);
      OUTLINED_FUNCTION_3_104(v11, v29, v30, fcr_objComparatorRight);
      if (v28 < 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v32 = a2 + a4;
        do
        {
          v33 = OUTLINED_FUNCTION_2_128();
          v34 = *v33;
          v35 = v33[2];
          if (*v33 + v35 > v27)
          {
            v34 = v27 - v35;
            *v33 = v27 - v35;
            v31 = 1;
          }

          v32 = fmin(v32, v34);
          OUTLINED_FUNCTION_377_0();
        }

        while (!v36);
        if ((v31 & (v28 != 1)) == 1)
        {
          v37 = 1;
          do
          {
            v38 = OUTLINED_FUNCTION_2_128();
            v39 = 0;
            do
            {
              v40 = CFArrayGetValueAtIndex(v11, v39);
              memcpy(__dst, v38, sizeof(__dst));
              memcpy(v45, v40, sizeof(v45));
              if (fcr_isOverlap(__dst, v45))
              {
                v41 = *v40 - v38[2];
                *v38 = v41;
                v32 = fmin(v32, v41);
              }

              ++v39;
            }

            while (v37 != v39);
            ++v37;
          }

          while (v37 != v28);
          v31 = 1;
        }

        v27 = v32;
      }

      v5 = v31 | v26 | v16 | v12;
      if (v27 < a2)
      {
        fcr_sweepLeftRight(v11, &v43, (a2 + v27) * 0.5);
      }

      CFRelease(v11);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

double qtitunes_FigMetadataConverterCreateConvertedItem(uint64_t a1, const __CFDictionary *a2, const __CFAllocator *a3, __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v90 = v4;
    v91 = 1053;
LABEL_90:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954816, "<<<< FMC_QTITUNES >>>>", v91, v90);
  }

  v10 = DerivedStorage;
  Value = CFDictionaryGetValue(a2, @"key");
  if (!Value)
  {
    emitter = fig_log_get_emitter();
    v90 = v4;
    v91 = 1058;
    goto LABEL_90;
  }

  v12 = Value;
  if (CFEqual(*v10, v10[1]))
  {
    if (a4)
    {
      *a4 = CFDictionaryCreateCopy(a3, a2);
    }

    return result;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  theDict = @"com.apple.itunes";
  v98 = v4;
  if (!CFEqual(*v14, @"com.apple.itunes"))
  {
    if (CFEqual(*v14, @"com.apple.quicktime.udta"))
    {
      LODWORD(key) = 0;
      OSTypeKeyToStringKeyMapping = FigUserDataGetOSTypeKeyToStringKeyMapping();
      v27 = CFGetTypeID(v12);
      TypeID = CFNumberGetTypeID();
      if (v27 == TypeID)
      {
        OUTLINED_FUNCTION_3_105(TypeID, v29, v30, v31, v32, v33, v34, v35, v97, v4, @"com.apple.itunes", v103, key);
      }

      else
      {
        v48 = CFGetTypeID(v12);
        if (v48 != CFStringGetTypeID() || !FigUserDataStringKeyToOSTypeKey(v12, &key))
        {
          goto LABEL_38;
        }
      }

      v49 = CFDictionaryGetValue(OSTypeKeyToStringKeyMapping, key);
      if (v49)
      {
        v50 = v49;
        OUTLINED_FUNCTION_0_147();
        v51 = qword_1ED4CB4A0;
LABEL_32:
        v54 = v50;
LABEL_37:
        v12 = CFDictionaryGetValue(v51, v54);
        goto LABEL_39;
      }
    }

    else
    {
      if (!CFEqual(*v14, @"org.mp4ra"))
      {
        if (!CFEqual(*v14, @"com.apple.quicktime.mdta"))
        {
          v12 = 0;
          if (!a4)
          {
            return result;
          }

LABEL_41:
          Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_2();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v98, theDict);
          }

          v56 = Mutable;
          if (CFEqual(v10[1], @"com.apple.quicktime.mdta"))
          {
            theDicta = a4;
            v57 = CMBaseObjectGetDerivedStorage();
            LODWORD(key) = 1;
            v58 = CFDictionaryGetValue(a2, @"value");
            v59 = v12;
            v60 = CFEqual(v12, @"com.apple.quicktime.artwork");
            v61 = CFGetTypeID(v58);
            if (v60)
            {
              if (v61 != CFDataGetTypeID())
              {
                goto LABEL_46;
              }

              FigMetadataGetNumericalDataTypeForMetadataProperties(*v57, a2, @"com.apple.quicktime.mdta", &key, 0);
              if (v62)
              {
                goto LABEL_46;
              }

              if (key > 0x1B)
              {
                goto LABEL_46;
              }

              OUTLINED_FUNCTION_2_129();
              if (v71)
              {
                goto LABEL_46;
              }

              v70 = 0;
            }

            else
            {
              if (v61 != CFStringGetTypeID())
              {
                goto LABEL_46;
              }

              v69 = CFLocaleCreate(a3, @"en");
              if (!v69)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v98, theDicta);
                v75 = v94;
                a4 = theDictc;
                goto LABEL_84;
              }

              v70 = v69;
              CFDictionaryAddValue(v56, @"locale", v69);
              LODWORD(key) = 1;
            }

            v72 = v59;
            v73 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &key);
            a4 = theDicta;
            if (v73)
            {
              v74 = v73;
              CFDictionaryAddValue(v56, @"dataType", v73);
              CFDictionaryAddValue(v56, @"dataTypeNamespace", @"com.apple.quicktime.mdta");
              CFDictionaryAddValue(v56, @"key", v72);
              CFDictionaryAddValue(v56, @"value", v58);
              CFDictionaryAddValue(v56, @"keyspace", @"mdta");
              CFRelease(v74);
              v75 = 0;
              if (!v70)
              {
                goto LABEL_84;
              }

              goto LABEL_59;
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_2();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v98, theDicta);
            v75 = v92;
            if (v70)
            {
LABEL_59:
              CFRelease(v70);
            }

LABEL_84:
            if (!v75)
            {
              goto LABEL_85;
            }

            goto LABEL_46;
          }

          if (CFEqual(v10[1], @"com.apple.quicktime.udta"))
          {
            v63 = a4;
            v64 = v12;
            v65 = CFDictionaryGetValue(a2, @"value");
            v66 = CFGetTypeID(v65);
            if (v66 == CFStringGetTypeID())
            {
              LODWORD(key) = 0;
              v67 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &key);
              if (v67)
              {
                v68 = v67;
                CFDictionaryAddValue(v56, @"key", v64);
                CFDictionaryAddValue(v56, @"value", v65);
                CFDictionaryAddValue(v56, @"languageCode", v68);
                CFDictionaryAddValue(v56, @"keyspace", @"udta");
                CFRelease(v68);
                a4 = v63;
LABEL_85:
                *a4 = v56;
                return result;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v98, theDict);
              a4 = v63;
              if (!v93)
              {
                goto LABEL_85;
              }
            }

LABEL_46:
            CFRelease(v56);
            return result;
          }

          if (!CFEqual(v10[1], @"org.mp4ra"))
          {
            if (CFEqual(v10[1], theDict))
            {
              result = qtitunes_FigMetadataConverterCreateConvertedItem_DestinationiTunes(a1, a2, v12, v56);
              if (!v88)
              {
                goto LABEL_85;
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v98, theDict);
            }

            goto LABEL_46;
          }

          theDictb = v56;
          v76 = CMBaseObjectGetDerivedStorage();
          v103 = 1;
          LODWORD(key) = 0;
          v77 = CFDictionaryGetValue(a2, @"value");
          v78 = v12;
          v79 = CFEqual(v12, @"thmb");
          v80 = CFGetTypeID(v77);
          if (v79)
          {
            if (v80 == CFDataGetTypeID())
            {
              FigMetadataGetNumericalDataTypeForMetadataProperties(*v76, a2, @"com.apple.itunes", &v103, 0);
              if (!v81 && v103 == 13)
              {
                v82 = theDictb;
                CFDictionaryAddValue(theDictb, @"dataType", *MEMORY[0x1E6963808]);
                CFDictionaryAddValue(theDictb, @"dataTypeNamespace", @"com.apple.uti");
                v83 = 0;
                v84 = 0;
                goto LABEL_79;
              }
            }
          }

          else if (v80 == CFStringGetTypeID())
          {
            v85 = CFDictionaryGetValue(a2, @"languageCode");
            if (v85)
            {
              v83 = v85;
              CFRetain(v85);
            }

            else
            {
              LODWORD(key) = 0;
              v83 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &key);
              if (!v83)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();
                result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v98, theDictb);
                v75 = v95;
LABEL_83:
                v56 = theDictb;
                goto LABEL_84;
              }
            }

            CFDictionaryAddValue(theDictb, @"languageCode", v83);
            v86 = CFDictionaryGetValue(a2, @"locale");
            if (v86)
            {
              v84 = v86;
              CFRetain(v86);
            }

            else
            {
              v84 = CFLocaleCreate(a3, @"en");
              if (!v84)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, v98, theDictb);
                v87 = v96;
LABEL_80:
                CFRelease(v83);
                v75 = v87;
LABEL_81:
                if (v84)
                {
                  CFRelease(v84);
                }

                goto LABEL_83;
              }
            }

            v82 = theDictb;
            CFDictionaryAddValue(theDictb, @"locale", v84);
LABEL_79:
            CFDictionaryAddValue(v82, @"key", v78);
            CFDictionaryAddValue(v82, @"value", v77);
            CFDictionaryAddValue(v82, @"keyspace", @"uiso");
            v87 = 0;
            v75 = 0;
            if (!v83)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          }

          v56 = theDictb;
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_0_147();
        v51 = qword_1ED4CB490;
        goto LABEL_36;
      }

      LODWORD(key) = 0;
      v38 = FigISOUserDataGetOSTypeKeyToStringKeyMapping();
      v39 = CFGetTypeID(v12);
      v40 = CFNumberGetTypeID();
      if (v39 == v40)
      {
        OUTLINED_FUNCTION_3_105(v40, v41, v42, v43, v44, v45, v46, v47, v97, v4, @"com.apple.itunes", v103, key);
      }

      else
      {
        v52 = CFGetTypeID(v12);
        if (v52 != CFStringGetTypeID() || !FigISOUserDataStringKeyToOSTypeKey(v12, &key))
        {
          goto LABEL_38;
        }
      }

      v53 = CFDictionaryGetValue(v38, key);
      if (v53)
      {
        v50 = v53;
        OUTLINED_FUNCTION_0_147();
        v51 = qword_1ED4CB4A8;
        goto LABEL_32;
      }
    }

LABEL_38:
    v12 = 0;
    goto LABEL_39;
  }

  LODWORD(key) = 0;
  v15 = CMBaseObjectGetDerivedStorage();
  OSTypeKeyToShortStringKeyMapping = FigiTunesMetadataGetOSTypeKeyToShortStringKeyMapping();
  v17 = CFGetTypeID(v12);
  v18 = CFNumberGetTypeID();
  if (v17 == v18)
  {
    OUTLINED_FUNCTION_3_105(v18, v19, v20, v21, v22, v23, v24, v25, v97, v4, @"com.apple.itunes", v103, key);
  }

  else
  {
    v36 = CFGetTypeID(v12);
    if (v36 != CFStringGetTypeID() || !FigiTunesMetadataShortStringKeyToOSTypeKey(v12, &key))
    {
      goto LABEL_38;
    }
  }

  v12 = CFDictionaryGetValue(OSTypeKeyToShortStringKeyMapping, key);
  if (v12)
  {
    if (CFEqual(*(v15 + 8), @"com.apple.quicktime.udta"))
    {
      v37 = &_MergedGlobals_95;
LABEL_35:
      OUTLINED_FUNCTION_0_147();
      v51 = *v37;
LABEL_36:
      v54 = v12;
      goto LABEL_37;
    }

    if (CFEqual(*(v15 + 8), @"org.mp4ra"))
    {
      v37 = &qword_1ED4CB4B0;
      goto LABEL_35;
    }

    if (CFEqual(*(v15 + 8), @"com.apple.quicktime.mdta"))
    {
      v37 = &qword_1ED4CB498;
      goto LABEL_35;
    }

    goto LABEL_38;
  }

LABEL_39:
  if (v12 && a4)
  {
    goto LABEL_41;
  }

  return result;
}

double qtitunes_FigMetadataConverterCreateConvertedItem_DestinationiTunes(uint64_t a1, const __CFDictionary *a2, const void *a3, __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 1;
  valuePtr[0] = 0;
  Value = CFDictionaryGetValue(a2, @"value");
  v9 = CFEqual(a3, @"covr");
  v10 = CFGetTypeID(Value);
  if (!v9)
  {
    if (v10 != CFStringGetTypeID())
    {
      return result;
    }

    v13 = CFDictionaryGetValue(a2, @"locale");
    v14 = CFDictionaryGetValue(a2, @"languageCode");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberSInt32Type, valuePtr);
      if (valuePtr[0] && valuePtr[0] != 5575)
      {
        return result;
      }
    }

    else if (v13)
    {
      v18 = CFLocaleGetValue(v13, *MEMORY[0x1E695E6F0]);
      if (v18)
      {
        if (CFStringCompare(v18, @"en", 0))
        {
          return result;
        }
      }
    }

LABEL_17:
    CFDictionaryAddValue(a4, @"key", a3);
    CFDictionaryAddValue(a4, @"value", Value);
    CFDictionaryAddValue(a4, @"keyspace", @"itsk");
    return result;
  }

  if (v10 == CFDataGetTypeID())
  {
    result = FigMetadataGetNumericalDataTypeForMetadataProperties(*DerivedStorage, a2, @"com.apple.itunes", &v20, 0);
    if (!v12 && v20 <= 0x1B)
    {
      OUTLINED_FUNCTION_2_129();
      if (!v15)
      {
        v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v20);
        if (!v16)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, valuePtr[1]);
        }

        v17 = v16;
        CFDictionaryAddValue(a4, @"dataType", v16);
        CFDictionaryAddValue(a4, @"dataTypeNamespace", @"com.apple.itunes");
        CFRelease(v17);
        goto LABEL_17;
      }
    }
  }

  return result;
}

void FigMetadataConverterCreateForQuickTimeToFromiTunes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MTCopyStringsForMediaTypeAndSubType(unsigned int a1, uint64_t a2, CFStringRef *a3, CFStringRef *a4)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MediaToolbox");
  if (BundleWithIdentifier)
  {
    v11 = BundleWithIdentifier;
    v25 = bswap32(a1);
    if (a3)
    {
      if (FigCopyMediaTypeString(BundleWithIdentifier, a1, a3))
      {
        return result;
      }

      v12 = *a3;
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      if (!a4)
      {
        return result;
      }
    }

    outPropertyData = 0;
    if (!a1)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294967246, "(Fig)", 393, v4);
    }

    if (a2)
    {
      if (a1 == 1936684398)
      {
        v22 = 0;
        memset(inSpecifier, 0, sizeof(inSpecifier));
        ioPropertyDataSize = 8;
        DWORD2(inSpecifier[0]) = a2;
        Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
        v14 = outPropertyData;
        if (Property)
        {
          if (outPropertyData)
          {
            return result;
          }
        }

        else
        {
          *a4 = outPropertyData;
          if (v14)
          {
            return result;
          }
        }
      }

      LODWORD(inSpecifier[0]) = bswap32(a2);
      v17 = *MEMORY[0x1E695E480];
      if (a1 == 1986618469 && a2 <= 0x28)
      {
        v18 = CFStringCreateWithFormat(v17, 0, @"%.4s%d", &v25, a2, *&inSpecifier[0]);
      }

      else
      {
        v18 = CFStringCreateWithFormat(v17, 0, @"%.4s%.4s", &v25, inSpecifier, *&inSpecifier[0]);
      }

      v19 = v18;
      if (v18)
      {
        v20 = CFBundleCopyLocalizedString(v11, v18, v18, @"MediaAndSubtypes");
        *a4 = v20;
        if (v20 == v19)
        {
          CFRelease(v20);
          *a4 = CFStringCreateWithFormat(v17, 0, @"%.4s", inSpecifier);
        }

        CFRelease(v19);
      }

      else
      {
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294967188, "(Fig)", 419, v4);
      }
    }

    else if (a1 == 1868720741 || a1 == 1936749172 || a1 == 1885433455)
    {
      if (v12)
      {
        *a4 = CFRetain(v12);
      }

      else
      {
        FigCopyMediaTypeString(v11, a1, a4);
      }
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294967253, "(Fig)", 378, v4);
  }

  return result;
}

CFStringRef MTCopyLocalizedNameForMediaType(CMMediaType mediaType)
{
  v2 = 0;
  MTCopyStringsForMediaTypeAndSubType(mediaType, 0, &v2, 0);
  return v2;
}

CFStringRef MTCopyLocalizedNameForMediaSubType(CMMediaType mediaType, FourCharCode mediaSubType)
{
  v3 = 0;
  MTCopyStringsForMediaTypeAndSubType(mediaType, *&mediaSubType, 0, &v3);
  return v3;
}

uint64_t FigComputeMovieDimensions(uint64_t a1, CGRect *a2)
{
  v52 = 0;
  memset(&v51, 0, sizeof(v51));
  cf = 0;
  v50 = 0;
  v4 = *MEMORY[0x1E695E480];
  FigFormatReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v8 = MEMORY[0x1E695EFD0];
  if (v7 && !v7(v6, @"MovieMatrix", v4, &v52))
  {
    MatrixArrayToCGAffineTransform(v52, &v51.a);
    CFRelease(v52);
  }

  else
  {
    v9 = v8[1];
    *&v51.a = *v8;
    *&v51.c = v9;
    *&v51.tx = v8[2];
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  v11 = v10(a1, &v50);
  if (v11)
  {
    return v11;
  }

  if (v50 < 1)
  {
LABEL_35:
    v44 = v51;
    v56.origin.x = OUTLINED_FUNCTION_1_131();
    v40 = 0;
    *a2 = CGRectApplyAffineTransform(v56, v41);
    return v40;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v48 = 0;
    BOOLean = 0;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v18)
    {
      goto LABEL_31;
    }

    v19 = v18(a1, v12, &cf, &v48, 0);
    if (v19)
    {
      goto LABEL_37;
    }

    FigTrackReaderGetFigBaseObject();
    v21 = v20;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v22)
    {
LABEL_31:
      v40 = 4294954514;
      goto LABEL_32;
    }

    v19 = v22(v21, @"TrackEnabled", v4, &BOOLean);
    if (v19)
    {
      goto LABEL_37;
    }

    Value = CFBooleanGetValue(BOOLean);
    CFRelease(BOOLean);
    if (Value)
    {
      break;
    }

LABEL_25:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (++v12 >= v50)
    {
      goto LABEL_35;
    }
  }

  v45 = 0;
  theDict = 0;
  memset(&v44, 0, sizeof(v44));
  FigTrackReaderGetFigBaseObject();
  v25 = v24;
  v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v26)
  {
    goto LABEL_31;
  }

  v19 = v26(v25, @"TrackDimensions", v4, &theDict);
  if (!v19)
  {
    v27 = theDict;
    LODWORD(valuePtr.a) = 0;
    v53[0] = 0.0;
    v28 = CFDictionaryGetValue(theDict, @"Width");
    CFNumberGetValue(v28, kCFNumberFloat32Type, &valuePtr);
    v29 = CFDictionaryGetValue(v27, @"Height");
    CFNumberGetValue(v29, kCFNumberFloat32Type, v53);
    v30 = *&valuePtr.a;
    v31 = v53[0];
    CFRelease(theDict);
    if (v30 == 0.0 || v31 == 0.0)
    {
      v39 = v17;
      v38 = v16;
      v37 = v15;
      v36 = v14;
    }

    else
    {
      FigTrackReaderGetFigBaseObject();
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34 && !v34(v33, @"TrackMatrix", v4, &v45))
      {
        MatrixArrayToCGAffineTransform(v45, &v44.a);
        CFRelease(v45);
      }

      else
      {
        v35 = v8[1];
        *&v44.a = *v8;
        *&v44.c = v35;
        *&v44.tx = v8[2];
      }

      v54.size.width = v30;
      v54.size.height = v31;
      valuePtr = v44;
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      CGRectApplyAffineTransform(v54, &valuePtr);
      OUTLINED_FUNCTION_0_148();
      if (v13)
      {
        v55.origin.x = OUTLINED_FUNCTION_1_131();
        CGRectUnion(v55, v57);
        OUTLINED_FUNCTION_0_148();
      }

      v13 = 1;
    }

    v17 = v39;
    v16 = v38;
    v15 = v37;
    v14 = v36;
    goto LABEL_25;
  }

LABEL_37:
  v40 = v19;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  return v40;
}

__CFString *FigGetFileTypeForMovieFamilyExtension(CFStringRef theString2)
{
  if (!theString2)
  {
    return 0;
  }

  if (CFStringCompare(@"mov", theString2, 1uLL) == kCFCompareEqualTo)
  {
    return @"com.apple.quicktime-movie";
  }

  if (CFStringCompare(@"qta", theString2, 1uLL) == kCFCompareEqualTo)
  {
    return @"com.apple.quicktime-audio";
  }

  AllIdentifiersForTag = UTTypeCreateAllIdentifiersForTag(*MEMORY[0x1E6963710], theString2, *MEMORY[0x1E6963758]);
  v3 = AllIdentifiersForTag;
  if (AllIdentifiersForTag)
  {
    Count = CFArrayGetCount(AllIdentifiersForTag);
  }

  else
  {
    Count = 0;
  }

  if (qword_1ED4CB4D0 != -1)
  {
    dispatch_once(&qword_1ED4CB4D0, &__block_literal_global_70);
  }

  if (Count < 1)
  {
LABEL_18:
    v5 = 0;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_21;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
    Value = CFDictionaryGetValue(_MergedGlobals_96, ValueAtIndex);
    v9 = Value ? Value : ValueAtIndex;
    v12.length = unk_1ED4CB4C8;
    v12.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_1ED4CB4C0, v12, v9);
    if (FirstIndexOfValue != -1)
    {
      break;
    }

    if (Count == ++v6)
    {
      goto LABEL_18;
    }
  }

  v5 = CFArrayGetValueAtIndex(qword_1ED4CB4C0, FirstIndexOfValue);
  if (v3)
  {
LABEL_21:
    CFRelease(v3);
  }

  return v5;
}

BOOL FigValidateRequiredFeaturesOfFormatDescription(const opaqueCMFormatDescription *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0;
    v13 = 0;
    v8 = 0;
    return !v8 && v3 == v13;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960700]);
  v3 = Extension;
  if (!Extension)
  {
    goto LABEL_7;
  }

  v4 = CFGetTypeID(Extension);
  if (v4 != CFDictionaryGetTypeID())
  {
    v3 = 0;
LABEL_7:
    v8 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  Count = CFDictionaryGetCount(v3);
  Value = CFDictionaryGetValue(v3, *MEMORY[0x1E6960738]);
  v7 = Value;
  if (Value)
  {
    v3 = CFArrayGetCount(Value);
  }

  else
  {
    v3 = 0;
  }

  v8 = Count - (v7 != 0);
LABEL_10:
  if (CMFormatDescriptionGetMediaType(a1) == 1952807028 && ((MediaSubType = CMFormatDescriptionGetMediaSubType(a1), MediaSubType != 1937142900) ? (v10 = MediaSubType == 2021028980) : (v10 = 1), !v10 ? (v11 = MediaSubType == 2004251764) : (v11 = 1), v11 && v3 >= 1))
  {
    v12 = 0;
    v13 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
      v15 = 0;
      while (!CFStringGetCString(ValueAtIndex, buffer, 256, 0x600u) || strncmp(buffer, (&sWebVTTSupportedFeatures)[v15], 0x100uLL))
      {
        if (++v15 == 3)
        {
          goto LABEL_27;
        }
      }

      ++v13;
LABEL_27:
      ++v12;
    }

    while (v12 != v3);
  }

  else
  {
    v13 = 0;
  }

  return !v8 && v3 == v13;
}

double FigCryptDecryptMemory(void *a1, int a2, int a3, char *a4, size_t a5, size_t *a6, char *a7, size_t a8, size_t *a9, _BYTE *a10)
{
  dataOutMoved = 0;
  if (a1)
  {
    if (a10)
    {
      v12 = a6;
      v13 = a5;
      if ((a2 || a5 && a4 && a6) && a7 && a9 && a1[1] <= a8)
      {
        v39 = a3;
        *a10 = 0;
        if (a4)
        {
          v17 = a5;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          OutputLength = CCCryptorGetOutputLength(*a1, v17, a2 != 0);
          if (a2 && OutputLength > a8)
          {
            OutputLength = CCCryptorGetOutputLength(*a1, v17, 0);
          }

          v37 = v12;
          if (OutputLength <= a8)
          {
LABEL_23:
            if (v13)
            {
              goto LABEL_24;
            }

            goto LABEL_29;
          }

          v20 = a1[5];
          v21 = a1[6];
          v22 = v20 >= v21;
          v23 = v20 - v21;
          if (!v22 || (v24 = a1[1], v22 = v24 >= v23, v25 = v24 - v23, !v22))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_4_63();
            result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v12, v38);
            v12 = v37;
            if (v26)
            {
              return result;
            }

            goto LABEL_23;
          }

          v34 = (-v24 & a8) + v25;
          if (v34 < v17)
          {
            v13 = v34;
          }

          if (v13)
          {
LABEL_24:
            while (1)
            {
              v27 = CCCryptorUpdate(*a1, a4, v13, a7, a8, &dataOutMoved);
              if (v27 != -4301)
              {
                break;
              }

              v28 = a1[1];
              v29 = v13 > v28;
              v13 -= v28;
              if (!v29)
              {
                goto LABEL_38;
              }
            }

            if (v27)
            {
              goto LABEL_38;
            }

            v12 = v37;
          }
        }

        else
        {
          v13 = 0;
        }

LABEL_29:
        if (!a2)
        {
          goto LABEL_43;
        }

        v30 = *(a1 + 8);
        if (v30 == 2)
        {
          goto LABEL_43;
        }

        if (!a4 || (v30 == 3 ? (v31 = dataOutMoved == v17) : (v31 = 0), !v31))
        {
          if (v13 == v17 && a8 - dataOutMoved >= a1[1])
          {
            v40 = 0;
            v35 = CCCryptorFinal(*a1, &a7[dataOutMoved], a8 - dataOutMoved, &v40);
            if (!v39 && v35)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_4_63();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

            dataOutMoved += v40;
            *a10 = 0;
          }

          else
          {
            *a10 = 1;
          }

          goto LABEL_43;
        }

        if (!CCCryptorGCMFinalize())
        {
LABEL_43:
          v32 = dataOutMoved;
          v33 = a1[6] + dataOutMoved;
          a1[5] += v13;
          a1[6] = v33;
          if (v12)
          {
            *v12 = v13;
          }

          *a9 = v32;
          return result;
        }

LABEL_38:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_63();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_4_63();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigCryptCreateForDecrypt_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCryptCreateForDecrypt_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCryptCreateForDecrypt_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCryptSetIV_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t fbapo_invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (!*v1)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    fbapo_amIActiveEndpointStreamClient(a1);
    if (!*v4)
    {
      *v4 = 1;
      fbapo_setAudioSessionID(a1, 0);
      if (*(v4 + 72))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          v5 = OUTLINED_FUNCTION_43_17();
          v6(v5);
        }

        *(v4 + 80) = 0;
      }

      *(v4 + 81) = 0;
      *(v4 + 192) = -999;
      *(v4 + 140) = -998653952;
      *(v4 + 268) = 0;
      v7 = CMBaseObjectGetDerivedStorage();
      if (*(v7 + 56) && *(v7 + 72))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListeners();
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.airplay.bufferedAVAudioSessionOverrideChanged", 0);
      }

      v9 = *(v4 + 56);
      if (v9)
      {
        CFRelease(v9);
        *(v4 + 56) = 0;
      }

      v10 = *(v4 + 48);
      if (v10)
      {
        CFRelease(v10);
        *(v4 + 48) = 0;
      }

      v11 = *(v4 + 64);
      if (v11)
      {
        CFRelease(v11);
        *(v4 + 64) = 0;
      }

      v12 = *(v4 + 176);
      if (v12)
      {
        CFRelease(v12);
        *(v4 + 176) = 0;
      }

      v13 = *(v4 + 160);
      if (v13)
      {
        CFRelease(v13);
        *(v4 + 160) = 0;
      }

      v14 = *(v4 + 144);
      if (v14)
      {
        CFRelease(v14);
        *(v4 + 144) = 0;
      }

      v15 = *(v4 + 152);
      if (v15)
      {
        CFRelease(v15);
        *(v4 + 152) = 0;
      }

      v16 = *(v4 + 72);
      if (v16)
      {
        CFRelease(v16);
        *(v4 + 72) = 0;
      }

      v17 = *(v4 + 200);
      if (v17)
      {
        CFRelease(v17);
        *(v4 + 200) = 0;
      }

      v18 = *(v4 + 184);
      if (v18)
      {
        CFRelease(v18);
        *(v4 + 184) = 0;
      }
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fbapo_finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fbapo_invalidate(a1);
  v3 = *(DerivedStorage + 272);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 272) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_162);
    dispatch_release(*(DerivedStorage + 16));
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    dispatch_sync(v5, &__block_literal_global_165);
    dispatch_release(*(DerivedStorage + 32));
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_168);
    dispatch_release(*(DerivedStorage + 24));
    *(DerivedStorage + 24) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    dispatch_sync(v7, &__block_literal_global_171);
    dispatch_release(*(DerivedStorage + 40));
    *(DerivedStorage + 40) = 0;
  }

  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

uint64_t fbapo_setProperty(uint64_t a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20(DerivedStorage);
  v7 = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"Muted"))
  {
    if (CFEqual(a2, @"Volume"))
    {
      if (!a3)
      {
        goto LABEL_35;
      }

      TypeID = CFNumberGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        goto LABEL_35;
      }

      valuePtr[0] = 0.0;
      if (!*(CMBaseObjectGetDerivedStorage() + 136))
      {
LABEL_31:
        v16 = 0;
        goto LABEL_37;
      }

      if (!CFNumberGetValue(a3, kCFNumberFloat32Type, valuePtr) || (valuePtr[0] >= 0.0 ? (v15 = valuePtr[0] > 1.0) : (v15 = 1), v15))
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_31;
      }

      if (valuePtr[0] != 0.0)
      {
        log(valuePtr[0]);
      }

      Float32 = FigCFNumberCreateFloat32();
      if (!Float32)
      {
        goto LABEL_31;
      }

      v18 = Float32;
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v19 = OUTLINED_FUNCTION_308();
        v20(v19);
      }

      v21 = v18;
    }

    else
    {
      if (CFEqual(a2, @"EnableLocalPlayback") || CFEqual(a2, @"LocalPlaybackVolume"))
      {
        goto LABEL_35;
      }

      if (CFEqual(a2, @"AudioMode"))
      {
        if (a3)
        {
          v22 = CFGetTypeID(a3);
          if (v22 == CFStringGetTypeID())
          {
            v29 = OUTLINED_FUNCTION_18_31();
            fbapo_setAndCacheAudioMode(v29, v30, v31);
            goto LABEL_36;
          }
        }

        goto LABEL_35;
      }

      if (CFEqual(a2, @"FigAudioSession"))
      {
        if (!a3 || (v24 = CFGetTypeID(a3), v24 == FigAudioSessionGetTypeID()))
        {
          v25 = OUTLINED_FUNCTION_18_31();
          IsPiPMuted = fbapo_setAndCacheFigAudioSession(v25, v26, v27);
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (!CFEqual(a2, @"ClientID"))
      {
        if (CFEqual(a2, @"IsPiPMuted"))
        {
          if (a3)
          {
            v28 = CFGetTypeID(a3);
            if (v28 == CFBooleanGetTypeID())
            {
              Value = CFBooleanGetValue(a3);
              IsPiPMuted = fbapo_setAndCacheIsPiPMuted(a1, Value);
              goto LABEL_36;
            }
          }

          goto LABEL_35;
        }

        if (CFEqual(a2, @"ClientPID"))
        {
          if (!a3)
          {
            goto LABEL_35;
          }

          v32 = CFGetTypeID(a3);
          if (v32 != CFNumberGetTypeID())
          {
            goto LABEL_35;
          }

          v33 = *(v7 + 72);
          v34 = kFigEndpointStreamAudioEngineProperty_ClientPID;
        }

        else if (CFEqual(a2, @"ClientAuditToken"))
        {
          if (a3)
          {
            v35 = CFGetTypeID(a3);
            if (v35 != CFDataGetTypeID())
            {
              goto LABEL_35;
            }
          }

          v33 = *(v7 + 72);
          v34 = kFigEndpointStreamAudioEngineProperty_ClientAuditToken;
        }

        else if (CFEqual(a2, @"LoggingID"))
        {
          if (!a3)
          {
            goto LABEL_35;
          }

          v36 = CFGetTypeID(a3);
          if (v36 != CFStringGetTypeID())
          {
            goto LABEL_35;
          }

          *(v7 + 208) = 0;
          v37 = (v7 + 208);
          CFStringGetCString(a3, v37, 20, 0x600u);
          v33 = *(v37 - 17);
          v34 = kFigEndpointStreamAudioEngineProperty_LoggingID;
        }

        else
        {
          if (CFEqual(a2, @"AudioProcessingTap"))
          {
            if (a3 && (v39 = MTAudioProcessingTapGetTypeID(), v39 != CFGetTypeID(a3)))
            {
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, LODWORD(valuePtr[1]));
              v16 = v44;
            }

            else
            {
              v40 = OUTLINED_FUNCTION_18_31();
              fbapo_setAndCacheAudioProcessingTap(v40, v41, v42);
              v16 = 0;
            }

            v45 = OUTLINED_FUNCTION_18_31();
            fbapo_setAndCacheAudioProcessingTap(v45, v46, v47);
            goto LABEL_37;
          }

          if (CFEqual(a2, @"CompressionLatency"))
          {
            if (!a3)
            {
              goto LABEL_35;
            }

            v43 = CFGetTypeID(a3);
            if (v43 != CFNumberGetTypeID())
            {
              goto LABEL_35;
            }

            v33 = *(v7 + 72);
            v34 = kFigEndpointStreamAudioEngineProperty_CompressionLatency;
          }

          else
          {
            if (!CFEqual(a2, @"IsParticipatingInCoordinatedPlayback"))
            {
              v16 = 4294954512;
              goto LABEL_37;
            }

            if (!a3)
            {
              goto LABEL_35;
            }

            v48 = CFGetTypeID(a3);
            if (v48 != CFBooleanGetTypeID())
            {
              goto LABEL_35;
            }

            v33 = *(v7 + 72);
            v34 = kFigEndpointStreamAudioEngineProperty_IsParticipatingInCoordinatedPlayback;
          }
        }

        IsPiPMuted = FigEndpointStreamAudioEngineSetProperty(v33, *v34, a3);
        goto LABEL_36;
      }

      v16 = *(v7 + 200);
      *(v7 + 200) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (!v16)
      {
        goto LABEL_37;
      }

      v21 = v16;
    }

    CFRelease(v21);
    goto LABEL_31;
  }

  if (!a3 || (v8 = CFBooleanGetTypeID(), v8 != CFGetTypeID(a3)))
  {
LABEL_35:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_36;
  }

  FigEndpointGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v9 = OUTLINED_FUNCTION_308();
    IsPiPMuted = v10(v9);
    if (IsPiPMuted)
    {
LABEL_36:
      v16 = IsPiPMuted;
      goto LABEL_37;
    }

    FigEndpointStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v12 = OUTLINED_FUNCTION_308();
      IsPiPMuted = v13(v12);
      goto LABEL_36;
    }
  }

  v16 = 4294954514;
LABEL_37:
  FigSimpleMutexUnlock();
  return v16;
}

uint64_t fbapo_amIActiveEndpointStreamClient(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage)
  {
    return 0;
  }

  if (!*(DerivedStorage + 176))
  {
    return 0;
  }

  if (!fbapo_audioEngineIsResumed(a1))
  {
    return 0;
  }

  FigEndpointStreamAudioEngineGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 0;
  }

  if (v5(v4, @"endpointStream", *MEMORY[0x1E695E480], &cf))
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  v7 = !v6;
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void fbapo_endpointStreamSupportedAudioFormatsChangedCallback(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15, __int16 a16, char a17, char a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_49_14();
  a49 = v51;
  a50 = v52;
  v54 = v53;
  a40 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a18 = 0;
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v50)
    {
      if (v54)
      {
        CMBaseObjectGetDerivedStorage();
      }

      a19 = 136315650;
      OUTLINED_FUNCTION_1_132();
      OUTLINED_FUNCTION_12_17(v57, v58, &a24, v59, &dword_1962D5000, v60, v61, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s called");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v62, v63, v64, v65, v66);
  }

  FigSimpleMutexLock();
  if (!*(DerivedStorage + 80) && !fbapo_supportsFormatChangeWithoutReconfiguration(v54, &a18) && !a18)
  {
    *(DerivedStorage + 80) = 1;
  }

  FigSimpleMutexUnlock();
  if (!a18)
  {
    fbapo_postNotificationInternal(v54, @"ActiveConfigurationDidBecomeInvalid", 0);
  }

  OUTLINED_FUNCTION_51_18();
}

uint64_t fbapo_supportsFormatChangeWithoutReconfiguration(uint64_t a1, _BYTE *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!a2)
  {
    return 4294949976;
  }

  if (*(DerivedStorage + 72))
  {
    if (fbapo_audioEngineIsResumed(a1))
    {
      doesEndpointStreamSupportMixedSampleRates = fbapo_doesEndpointStreamSupportMixedSampleRates(a1);
      v13 = doesEndpointStreamSupportMixedSampleRates;
      if (dword_1EAF17590)
      {
        v14 = OUTLINED_FUNCTION_32_21(doesEndpointStreamSupportMixedSampleRates, v6, v7, v8, v9, v10, v11, v12, v72, v73, v74, v75, v76, v78, 0, v81, type[0], *&type[4], v84);
        if (os_log_type_enabled(v14, type[0]))
        {
          v15 = v85;
        }

        else
        {
          v15 = v85 & 0xFFFFFFFE;
        }

        if (v15)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_3_106();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v17, v18, v19, v20, v21, v14, type[0], v22);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigEndpointStreamAudioEngineGetCMBaseObject();
      v24 = v23;
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        v79 = *MEMORY[0x1E695E480];
        v26 = v25(v24);
        if (!v26)
        {
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
            if (Count)
            {
              v28 = Count;
              if (!v13)
              {
                CFArrayGetValueAtIndex(theArray, 0);
                FigEndpointStreamAudioFormatDescriptionGetASBD();
              }

              CMBaseObjectGetDerivedStorage();
              FigSimpleMutexCheckIsLockedOnThisThread();
              v29 = *MEMORY[0x1E69625A8];
              LODWORD(v30) = FigEndpointStreamGetCMBaseObject();
              v77 = v29;
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v38 = OUTLINED_FUNCTION_27_22();
                v40 = v39(v38, v29, v79);
                if (!v40)
                {
                  OUTLINED_FUNCTION_239();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
                }

                v16 = v40;
              }

              else
              {
                v16 = 4294954514;
              }

              ASBD = 0;
              if (!v16)
              {
                if (v28 < 1)
                {
                  v42 = 0;
LABEL_36:
                  if (!v42)
                  {
                    CMBaseObjectGetDerivedStorage();
                    *type = 0;
                    LODWORD(v30) = FigEndpointStreamGetCMBaseObject();
                    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                    {
                      v43 = OUTLINED_FUNCTION_27_22();
                      if (!v44(v43, v77, v79))
                      {
                        OUTLINED_FUNCTION_239();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
                      }
                    }

                    if (dword_1EAF17590)
                    {
                      HIDWORD(v81) = 0;
                      BYTE3(v81) = 0;
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      LODWORD(v30) = 0;
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      OUTLINED_FUNCTION_189();
                      if (v47)
                      {
                        v48 = v46;
                      }

                      else
                      {
                        v48 = 0;
                      }

                      if (v48)
                      {
                        if (a1)
                        {
                          CMBaseObjectGetDerivedStorage();
                        }

                        OUTLINED_FUNCTION_3_106();
                        OUTLINED_FUNCTION_108();
                        _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, os_log_and_send_and_compose_flags_and_os_log_type, 0, v54);
                        LODWORD(v30) = 0;
                      }

                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_524(v55, v56, v57, v58, v59);
                    }

                    ASBD = 0;
                  }
                }

                else
                {
                  v30 = 0;
                  v42 = 0;
                  while (1)
                  {
                    CFArrayGetValueAtIndex(theArray, v30);
                    ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
                    if (!v13 && *ASBD != 0.0)
                    {
                      break;
                    }

                    if (*(ASBD + 28) > v42)
                    {
                      v42 = *(ASBD + 28);
                    }

                    if (v28 == ++v30)
                    {
                      goto LABEL_36;
                    }
                  }
                }

                *a2 = 0;
                if (dword_1EAF17590)
                {
                  v60 = OUTLINED_FUNCTION_32_21(ASBD, v31, v32, v33, v34, v35, v36, v37, v72, v73, v74, @"supportedAudioFormatDescriptions", v77, v79, theArray, v81, type[0], *&type[4], 0);
                  os_log_type_enabled(v60, typea);
                  OUTLINED_FUNCTION_40();
                  if (v30)
                  {
                    if (a1)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    OUTLINED_FUNCTION_3_106();
                    OUTLINED_FUNCTION_12_17(v61, v62, v86, v63, &dword_1962D5000, v64, v65, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s SupportsFormatChangeWithoutReconfiguration=%s");
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414(v66, v67, v68, v69, v70);
                }

                v16 = 0;
              }

              goto LABEL_64;
            }
          }

          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        v16 = v26;
      }

      else
      {
        v16 = 4294954514;
      }
    }

    else
    {
      v16 = 0;
      *a2 = 0;
    }
  }

  else
  {
    v16 = 4294949976;
  }

LABEL_64:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

uint64_t fbapo_audioEngineEndpointStreamEvictedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigCFDictionaryGetValue();
  result = FigCFEqual();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void fbapo_audioEnginePrerollDurationChangedCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  fbapo_postNotificationInternal(a2, @"prerollDurationChanged", a5);
  if (a5)
  {
    v6 = CFGetTypeID(a5);
    if (v6 == CFDictionaryGetTypeID())
    {
      CMTimeMakeFromDictionary(&v7, a5);
    }
  }
}

uint64_t fbapo_audioEngineActiveConfigurationDidBecomeInvalidCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*(v4 + 72) == a4 && fbapo_audioEngineIsResumed(a2) && !*(v4 + 80))
  {
    *(v4 + 80) = 1;
    fbapo_postNotificationInternal(a2, @"ActiveConfigurationDidBecomeInvalid", 0);
  }

  return FigSimpleMutexUnlock();
}

uint64_t fbapo_copyCalculatePrerollDuration(uint64_t a1, void *a2)
{
  v16 = 0;
  BOOLean = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 56))
  {
    CMTimeMake(&time, 1000, 1000);
    v10 = *MEMORY[0x1E695E480];
    goto LABEL_13;
  }

  if (!fbapo_audioEngineIsResumed(a1))
  {
    v11 = *MEMORY[0x1E695E480];
    FigEndpointStreamGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_308();
      v13(v12);
    }

    CMTimeMake(&time, 1000, 1000);
    v10 = v11;
LABEL_13:
    v8 = CMTimeCopyAsDictionary(&time, v10);
    v16 = v8;
    if (!v8)
    {
      v7 = 4294951816;
      goto LABEL_21;
    }

    if (!a2)
    {
      v7 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  FigEndpointStreamAudioEngineGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_21;
  }

  v7 = v6(v5, @"prerollDuration", *MEMORY[0x1E695E480], &v16);
  v8 = v16;
  if (a2 && !v7)
  {
    if (!v16)
    {
      v9 = 0;
LABEL_16:
      v7 = 0;
      *a2 = v9;
      goto LABEL_17;
    }

LABEL_15:
    v9 = CFRetain(v8);
    v8 = v16;
    goto LABEL_16;
  }

LABEL_17:
  if (v8)
  {
LABEL_20:
    CFRelease(v8);
  }

LABEL_21:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v7;
}

BOOL fbapo_isActiveConfigurationInvalid(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (*(DerivedStorage + 80))
  {
    return 1;
  }

  fbapo_supportsFormatChangeWithoutReconfiguration(a1, &v4);
  return v4 == 0;
}

double fbapo_setAndCacheAudioMode(uint64_t a1, __CFString *a2, int a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    if (CFPreferenceNumberWithDefault == 1)
    {
      v14 = @"AudioMode_Default";
    }

    else
    {
      v14 = a2;
      if (CFPreferenceNumberWithDefault != 2)
      {
        goto LABEL_14;
      }

      v14 = @"AudioMode_MoviePlayback";
    }

    if (v14 != a2 && dword_1EAF17590)
    {
      v15 = OUTLINED_FUNCTION_126(qword_1EAF17588, v7, v8, v9, v10, v11, v12, v13, v38, v39, v40, *v41, v41[2], 0, 0);
      os_log_type_enabled(v15, type);
      OUTLINED_FUNCTION_125();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = v43;
      }

      if (v18)
      {
        OUTLINED_FUNCTION_6_79();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v19, v20, v21, v22, v23, v15, type, v24);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417(v25, v26, v27, v28, v29);
    }

LABEL_14:
    if (CFEqual(v14, @"AudioMode_Default"))
    {
      v31 = MEMORY[0x1E6962500];
    }

    else if (CFEqual(v14, @"AudioMode_MoviePlayback"))
    {
      v31 = MEMORY[0x1E6962508];
    }

    else
    {
      if (!CFEqual(v14, @"AudioMode_SpokenAudio"))
      {
LABEL_17:
        OUTLINED_FUNCTION_426_1();
        return result;
      }

      v31 = MEMORY[0x1E6962510];
    }

    v32 = *v31;
    if (fbapo_amIActiveEndpointStreamClient(a1))
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v34)
      {
        goto LABEL_17;
      }

      v35 = v34(CMBaseObject, *MEMORY[0x1E6962540], v32);
      if (!a3 || v35)
      {
        goto LABEL_17;
      }
    }

    else if (!a3)
    {
      goto LABEL_17;
    }

    CMBaseObjectGetDerivedStorage();
    FigCFDictionarySetValue();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_426_1();

  return FigSignalErrorAtGM(v36);
}

uint64_t fbapo_setAndCacheIsPiPMuted(uint64_t a1, int a2)
{
  v138 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 168) == a2)
  {
    return 0;
  }

  v15 = DerivedStorage;
  if (dword_1EAF17590)
  {
    v16 = OUTLINED_FUNCTION_31_22(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, p_lhs, v125, rhs.value, *&rhs.timescale, rhs.epoch, v129, v130, v131.value);
    OUTLINED_FUNCTION_52_17(v16, v17, v18, v19, v20, v21, v22, v23, v123, v126, rhs.value, *&rhs.timescale, rhs.epoch, v129, v130, v131.value);
    OUTLINED_FUNCTION_46();
    if (v4)
    {
      if (a1)
      {
        v24 = (CMBaseObjectGetDerivedStorage() + 208);
      }

      else
      {
        v24 = "";
      }

      v25 = "Yes";
      LODWORD(lhs.value) = 136315906;
      LOWORD(lhs.flags) = 2048;
      *(&lhs.value + 4) = "fbapo_setAndCacheIsPiPMuted";
      if (!a2)
      {
        v25 = "No";
      }

      *(&lhs.flags + 2) = a1;
      HIWORD(lhs.epoch) = 2082;
      v134 = v24;
      v135 = 2080;
      v136 = v25;
      LODWORD(v125) = 42;
      p_lhs = &lhs;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v2, v3, v31);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v32, v33, v34, v35, v36);
  }

  if (a2)
  {
    v37 = *(v15 + 72);
    VTable = CMBaseObjectGetVTable();
    v47 = *(VTable + 16);
    v46 = VTable + 16;
    if (*(v47 + 24))
    {
      v48 = OUTLINED_FUNCTION_43_17();
      v46 = v49(v48);
    }

    if (dword_1EAF17590)
    {
      v50 = OUTLINED_FUNCTION_31_22(v46, v39, v40, v41, v42, v43, v44, v45, p_lhs, v125, rhs.value, *&rhs.timescale, rhs.epoch, v129, v130, v131.value);
      OUTLINED_FUNCTION_52_17(v50, v51, v52, v53, v54, v55, v56, v57, v124, v127, rhs.value, *&rhs.timescale, rhs.epoch, v129, v130, v131.value);
      OUTLINED_FUNCTION_46();
      if (v4)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_5_89();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v37, v3, v73);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v74, v75, v76, v77, v78);
    }

    goto LABEL_28;
  }

  if (!fbapo_audioEngineIsResumed(a1))
  {
LABEL_28:
    result = 0;
    *(v15 + 168) = a2;
    return result;
  }

  memset(&v131, 0, sizeof(v131));
  HostTimeClock = CMClockGetHostTimeClock();
  CMSyncGetTime(&v131, HostTimeClock);
  v66 = *(v15 + 56);
  if (!v66)
  {
    v80 = 6000;
    goto LABEL_38;
  }

  if (dword_1EAF17590)
  {
    v67 = OUTLINED_FUNCTION_33_21(v66, v59, v60, v61, v62, v63, v64, v65, p_lhs, v125, rhs.value, *&rhs.timescale, rhs.epoch, v129, v130, SWORD2(v130), SBYTE6(v130), SHIBYTE(v130));
    os_log_type_enabled(v67, HIBYTE(v130));
    OUTLINED_FUNCTION_40();
    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_5_89();
      OUTLINED_FUNCTION_12_17(v81, v82, &v137, v83, &dword_1962D5000, v84, v85, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s Suspending EndpointStream due to PiP-unmute");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v86, v87, v88, v89, v90);
  }

  result = FigEndpointStreamSuspendSync();
  if (!result)
  {
    v91 = CMClockGetHostTimeClock();
    CMSyncGetTime(&lhs, v91);
    rhs = v131;
    CMTimeSubtract(&v137, &lhs, &rhs);
    v132 = *&v137.timescale;
    lhs = v137;
    v92 = CMTimeConvertScale(&v137, &lhs, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if (6000 - LODWORD(v137.value) <= 1)
    {
      v80 = 1;
    }

    else
    {
      v80 = 6000 - LODWORD(v137.value);
    }

    if (6000 - LODWORD(v137.value) < 501)
    {
      SInt32 = 0;
LABEL_41:
      if (dword_1EAF17590)
      {
        v105 = OUTLINED_FUNCTION_33_21(v92, v93, v94, v95, v96, v97, v98, v99, p_lhs, v125, rhs.value, *&rhs.timescale, rhs.epoch, v129, v130, SWORD2(v130), SBYTE6(v130), SHIBYTE(v130));
        value = rhs.value;
        v107 = HIBYTE(v130);
        os_log_type_enabled(v105, HIBYTE(v130));
        OUTLINED_FUNCTION_125();
        if (v109)
        {
          v110 = v108;
        }

        else
        {
          v110 = value;
        }

        if (v110)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          OUTLINED_FUNCTION_5_89();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v111, v112, v113, v114, v115, v105, v107, v116);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v117, v118, v119, v120, v121);
      }

      FigEndpointStreamAudioEngineSetEndpointStreamSync(*(v15 + 72), *(v15 + 56), v80);
      *(v15 + 168) = 0;
      if (SInt32)
      {
        CFRelease(SInt32);
      }

      return 0;
    }

LABEL_38:
    SInt32 = FigCFNumberCreateSInt32();
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v102 = CMBaseObjectGetVTable();
    v103 = *(v102 + 8);
    v92 = (v102 + 8);
    v104 = *(v103 + 56);
    if (v104)
    {
      v92 = v104(CMBaseObject, *MEMORY[0x1E6962598], SInt32);
    }

    goto LABEL_41;
  }

  return result;
}

uint64_t fbapo_flushWithinTimeRange(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*v2)
  {
    v9 = 4294954511;
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = MEMORY[0x1E6960C70];
    *(v5 + 240) = *MEMORY[0x1E6960C70];
    *(v5 + 256) = *(v6 + 16);
    v7 = *(v5 + 72);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v8)
    {
      v14[0] = v11;
      v14[1] = v12;
      v14[2] = v13;
      v9 = v8(v7, v14);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v9;
}

void fbapo_stopForReconfiguration(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (!*v1)
  {
    v12 = CMBaseObjectGetDerivedStorage();
    if (dword_1EAF17590)
    {
      v13 = OUTLINED_FUNCTION_126(qword_1EAF17588, v5, v6, v7, v8, v9, v10, v11, v29, v30, v31, *v32, v32[2], 0, 0);
      os_log_type_enabled(v13, type);
      OUTLINED_FUNCTION_46();
      if (v2)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_6_79();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v14, v15, v16, v17, v18, v13, type, v19);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v20, v21, v22, v23, v24);
    }

    if (*(v12 + 72))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v26 = Mutable;
        if (!FigEndpointStreamAudioEngineSuspendSync(*(v12 + 72), 0, 3000))
        {
          *(v12 + 80) = 0;
          v27 = *(v12 + 72);
          v28 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v28)
          {
            if (!v28(v27, v26))
            {
              *(v12 + 81) = 0;
            }
          }
        }

        CFRelease(v26);
      }
    }

    else
    {
      *(v12 + 81) = 0;
    }
  }

  FigSimpleMutexUnlock();
  OUTLINED_FUNCTION_426_1();
}

uint64_t fbapo_setEndOfSiriTTSUtteranceMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*v2)
  {
    v18 = 4294954511;
  }

  else
  {
    v5 = *(v2 + 72);
    v20 = *a2;
    VTable = CMBaseObjectGetVTable();
    v15 = *(VTable + 16);
    v14 = VTable + 16;
    if (*(v15 + 56))
    {
      v16 = OUTLINED_FUNCTION_46_15(v14, v7, v8, v9, v10, v11, v12, v13, v20);
      v18 = v17(v5, v21, v16);
    }

    else
    {
      v18 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v18;
}

uint64_t fbapo_applyVolueFade(uint64_t a1, uint64_t a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_30_20(DerivedStorage);
  if (*v3)
  {
    v20 = 4294954511;
  }

  else if ((a2 - 1) > 1)
  {
    v20 = 4294949976;
  }

  else
  {
    v7 = *(v3 + 72);
    v22 = *a3;
    VTable = CMBaseObjectGetVTable();
    v17 = *(VTable + 16);
    v16 = VTable + 16;
    if (*(v17 + 64))
    {
      v18 = OUTLINED_FUNCTION_46_15(v16, v9, v10, v11, v12, v13, v14, v15, v22);
      v20 = v19(v7, a2, v23, v18);
    }

    else
    {
      v20 = 4294954514;
    }
  }

  FigSimpleMutexUnlock();
  return v20;
}

void fbapo_setRateAndAnchorTimeDispatch(uint64_t a1)
{
  v154 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v106 = *(a1 + 88);
  v107 = *(a1 + 80);
  v103 = *(a1 + 96);
  v118 = *(a1 + 24);
  v119 = *(a1 + 40);
  *&v116.value = *(a1 + 48);
  v6 = *(a1 + 72);
  v116.epoch = *(a1 + 64);
  v109 = v3;
  v7 = CMBaseObjectGetDerivedStorage();
  v105 = *MEMORY[0x1E6960C70];
  *&v128.value = *MEMORY[0x1E6960C70];
  v104 = *(MEMORY[0x1E6960C70] + 16);
  v128.epoch = v104;
  v8 = FigSimpleMutexLock();
  if (dword_1EAF17590)
  {
    v16 = OUTLINED_FUNCTION_50_13(v8, v9, v10, v11, v12, v13, v14, v15, v98, v99, v100, v101, v103, v104, v105, *(&v105 + 1), v106, v107, DerivedStorage, v109, block, v111, v112, v113, v114, v115, v116.value, *&v116.timescale, v116.epoch, v117, v118, *(&v118 + 1), v119, v120, v121.value, *&v121.timescale, v121.epoch, v122, v123.value, *&v123.timescale, v123.epoch, v124, 0, *&type[8], v126, v127, v128.value, *&v128.timescale, v128.epoch, v129, 0);
    v17 = os_log_type_enabled(v16, type[0]);
    if (v17)
    {
      value = v130.value;
    }

    else
    {
      value = v130.value & 0xFFFFFFFE;
    }

    if (value)
    {
      v102 = v6;
      v26 = v7;
      v27 = v109;
      if (v109)
      {
        v17 = CMBaseObjectGetDerivedStorage();
        v28 = (v17 + 208);
      }

      else
      {
        v28 = "";
      }

      if (v4)
      {
        v1 = "T";
      }

      else
      {
        v1 = "F";
      }

      v29 = OUTLINED_FUNCTION_36_22(v17, v18, v19, v20, v21, v22, v23, v24, v98, v99, v100, v102, v103, v104, v105, *(&v105 + 1), v106, v107, DerivedStorage, v109, block, v111, v112, v113, v114, v115, v116.value, *&v116.timescale, v116.epoch, v117, v118, v119);
      v30 = *(v26 + 268);
      LODWORD(v131.value) = 136316674;
      *(&v131.value + 4) = "fbapo_becomeActiveAndSetRateAndAnchorTime";
      LOWORD(v131.flags) = 2048;
      *(&v131.flags + 2) = v27;
      v7 = v26;
      HIWORD(v131.epoch) = 2082;
      v132 = v28;
      v133 = 2080;
      v134 = v1;
      v135 = 2048;
      v136 = v5;
      v137 = 2048;
      v138 = v29;
      v139 = 1024;
      LODWORD(v140) = v30;
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v31, v32, v33, v34, v35, v16, type[0], v36);
      v6 = v101;
    }

    OUTLINED_FUNCTION_7();
    v8 = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v37 = &off_196E72000;
  if (*v7)
  {
    v38 = -12785;
    goto LABEL_61;
  }

  v38 = *(v7 + 268);
  if (v38)
  {
    if (dword_1EAF17590)
    {
      v39 = OUTLINED_FUNCTION_50_13(v8, v9, v10, v11, v12, v13, v14, v15, v98, v99, v100, v101, v103, v104, v105, *(&v105 + 1), v106, v107, DerivedStorage, v109, block, v111, v112, v113, v114, v115, v116.value, *&v116.timescale, v116.epoch, v117, v118, *(&v118 + 1), v119, v120, v121.value, *&v121.timescale, v121.epoch, v122, v123.value, *&v123.timescale, v123.epoch, v124, 0, *&type[8], v126, v127, v128.value, *&v128.timescale, v128.epoch, v129, 0);
      os_log_type_enabled(v39, type[0]);
      OUTLINED_FUNCTION_46();
      v40 = v109;
      if (v1)
      {
        if (v109)
        {
          v41 = (CMBaseObjectGetDerivedStorage() + 208);
        }

        else
        {
          v41 = "";
        }

        LODWORD(v131.value) = 136315650;
        *(&v131.value + 4) = "fbapo_becomeActiveAndSetRateAndAnchorTime";
        LOWORD(v131.flags) = 2048;
        *(&v131.flags + 2) = v109;
        HIWORD(v131.epoch) = 2082;
        v132 = v41;
        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v39, type[0], v61);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v62, v63, v64, v65, v66);
      v38 = *(v7 + 268);
      goto LABEL_62;
    }

LABEL_61:
    v40 = v109;
    goto LABEL_62;
  }

  v40 = v109;
  if (v4)
  {
    if (v5 != 0.0)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v128, HostTimeClock);
      active = fbapo_becomeActiveEndpointStreamAudioEngineClient(v109, v6, v103);
      if (active)
      {
        v38 = active;
        goto LABEL_62;
      }
    }
  }

  *type = v118;
  v126 = v119;
  v123 = v116;
  v121 = v128;
  v42 = CMBaseObjectGetDerivedStorage();
  v43 = v42;
  if (BYTE12(v118))
  {
    v44 = type;
  }

  else
  {
    v44 = (v42 + 84);
    if ((*(v42 + 96) & 1) == 0)
    {
      v44 = MEMORY[0x1E6960CC0];
    }
  }

  v45 = v107;
  v130 = *v44;
  v46 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040D348C322uLL);
  if (v46)
  {
    LODWORD(v107) = HIDWORD(v118);
    if (v5 == 0.0)
    {
      *&v130.value = v105;
      v130.epoch = v104;
    }

    v47 = *(v43 + 56);
    FigEndpointStreamAirPlayGetClassID();
    v38 = -17324;
    if (CMBaseObjectIsMemberOfClass() && v47)
    {
      *v46 = CFRetain(v109);
      *(v46 + 1) = v5;
      *(v46 + 1) = v118;
      *(v46 + 4) = v119;
      *(v46 + 5) = v45;
      *(v46 + 6) = v106;
      v48 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v48);
      *(v46 + 80) = time;
      *(v46 + 56) = v121;
      if (dword_1EAF17590)
      {
        HIDWORD(v129) = 0;
        BYTE3(v129) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v50 = HIDWORD(v129);
        v51 = BYTE3(v129);
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v129));
        OUTLINED_FUNCTION_189();
        if (v53)
        {
          v54 = v52;
        }

        else
        {
          v54 = v50;
        }

        if (v54)
        {
          if (v109)
          {
            v55 = (CMBaseObjectGetDerivedStorage() + 208);
          }

          else
          {
            v55 = "";
          }

          time = v130;
          Seconds = CMTimeGetSeconds(&time);
          time = v116;
          v68 = CMTimeGetSeconds(&time);
          LODWORD(v131.value) = 136317186;
          *(&v131.value + 4) = "fbapo_setRateAndAnchorTimeInternal";
          LOWORD(v131.flags) = 2048;
          *(&v131.flags + 2) = v109;
          HIWORD(v131.epoch) = 2082;
          v132 = v55;
          v133 = 2048;
          v134 = v47;
          v135 = 2048;
          v136 = v5;
          v137 = 2048;
          v138 = Seconds;
          v139 = 2048;
          v140 = v68;
          v141 = 2048;
          v142 = fbapo_setRateAndAnchorTimeCallback;
          v143 = 2048;
          v144 = v46;
          OUTLINED_FUNCTION_23_1();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v69, v70, v71, v72, v73, os_log_and_send_and_compose_flags_and_os_log_type, v51, v74);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_524(v75, v76, v77, v78, v79);
      }

      v80 = *(v43 + 72);
      if (v5 == 0.0)
      {
        v81 = 0.0;
      }

      else
      {
        v81 = 1.0;
      }

      v82 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v82)
      {
        time = v130;
        v131 = v123;
        v82(v80, &time, &v131, fbapo_setRateAndAnchorTimeCallback, v46, v103, v81);
      }

      else
      {
        fbapo_setRateAndAnchorTimeCallback(v80, -12782, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, v46, 0.0);
      }

      v37 = &off_196E72000;
      v38 = 0;
      if (v5 != 0.0 && (v107 & 1) != 0 && *(v43 + 108))
      {
        v38 = 0;
        *(v43 + 112) = *type;
        *(v43 + 128) = v126;
        *(v43 + 108) = 0;
      }

      goto LABEL_62;
    }
  }

  else
  {
    v38 = -12786;
  }

  v37 = &off_196E72000;
  if (v45)
  {
    if (v109)
    {
      CFRetain(v109);
    }

    v97 = *(v43 + 24);
    time.value = MEMORY[0x1E69E9820];
    *&time.timescale = 0x40000000;
    time.epoch = __fbapo_setRateAndAnchorTimeInternal_block_invoke;
    v146 = COERCE_DOUBLE(&__block_descriptor_tmp_184_1);
    *&v147 = v5;
    v150 = v118;
    v151 = v119;
    v152 = v38;
    *(&v147 + 1) = v109;
    v148 = v45;
    v149 = v106;
    v153 = v116;
    dispatch_async(v97, &time);
  }

  if (v46)
  {
    if (*v46)
    {
      CFRelease(*v46);
    }

    free(v46);
  }

LABEL_62:
  *(v7 + 268) = 0;
  if (v5 == 0.0 || !v38)
  {
    FigSimpleMutexUnlock();
    if (!v38)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v85 = fig_log_handle();
    if (v40 + 1 >= 2)
    {
      v87 = v85;
      v88 = os_signpost_enabled(v85);
      if (v88)
      {
        v96 = OUTLINED_FUNCTION_36_22(v88, v89, v90, v91, v92, v93, v94, v95, v98, v99, v100, v101, v103, v104, v105, *(&v105 + 1), v106, v107, DerivedStorage, v109, block, v111, v112, v113, v114, v115, v116.value, *&v116.timescale, v116.epoch, v117, v118, v119);
        LODWORD(time.value) = 134218752;
        *(&time.value + 4) = v40;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v5;
        HIWORD(time.epoch) = 2048;
        v146 = v96;
        LOWORD(v147) = 2048;
        *(&v147 + 2) = v38;
        _os_signpost_emit_with_name_impl(&dword_1962D5000, v87, OS_SIGNPOST_INTERVAL_END, v40, "kFigKTraceWHA_BAO_SetRateAndAnchorTime", "bao=%p, rate=%1.2f, mediaTime=%1.3f, error=%llu", &time, 0x2Au);
      }
    }

    FigSimpleMutexUnlock();
  }

  if (*(a1 + 80))
  {
    v86 = *(DerivedStorage + 24);
    block = MEMORY[0x1E69E9820];
    v111 = *(v37 + 312);
    v112 = __fbapo_setRateAndAnchorTimeDispatch_block_invoke;
    v113 = &__block_descriptor_tmp_183_0;
    v114 = a1;
    LODWORD(v115) = v38;
    dispatch_async(v86, &block);
    return;
  }

LABEL_71:
  fbapo_setRateAndAnchorTimeDispatchContextDestroy(a1);
}

void fbapo_setRateAndAnchorTimeDispatchContextDestroy(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[12];
    if (v2)
    {
      CFRelease(v2);
      a1[12] = 0;
    }

    v3 = a1[9];
    if (v3)
    {
      CFRelease(v3);
      a1[9] = 0;
    }

    fbapo_releaseAsync(*a1);

    free(a1);
  }
}

uint64_t fbapo_becomeActiveEndpointStreamAudioEngineClient(void *a1, const char *a2, uint64_t a3)
{
  v228 = a3;
  v266 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = &dword_1EAF17000;
  if (dword_1EAF17590)
  {
    LODWORD(v234.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value_low = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_125();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(lhs.value) = 136315906;
      OUTLINED_FUNCTION_9_48();
      v239 = 2112;
      v240 = a2;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_17(v13, v14, &buf, v15, &dword_1962D5000, v16, v17, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s inFormatDescription=%@");
      value_low = LODWORD(v234.value);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v18, v19, v20, v21, v22);
  }

  v23 = fig_log_handle();
  if (a1 + 1 >= 2)
  {
    v40 = v23;
    if (os_signpost_enabled(v23))
    {
      OUTLINED_FUNCTION_40_18(3.852e-34);
      _os_signpost_emit_with_name_impl(&dword_1962D5000, v40, OS_SIGNPOST_INTERVAL_BEGIN, a1, "kFigKTraceWHA_BAO_BecomeActiveEndpointStream", "bao=%p", &buf, 0xCu);
    }
  }

  FigSimpleMutexCheckIsLockedOnThisThread();
  if (fbapo_amIActiveEndpointStreamClient(a1) || *(DerivedStorage + 168) && fbapo_audioEngineIsResumed(a1))
  {
    goto LABEL_153;
  }

  v24 = fbapo_setAudioSessionID(a1, 0);
  if (v24)
  {
    value_low = v24;
    goto LABEL_154;
  }

  v25 = *(DerivedStorage + 200);
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v27)
  {
    v27(CMBaseObject, *MEMORY[0x1E6962550], v25);
  }

  v28 = CMBaseObjectGetDerivedStorage();
  SInt32 = v28;
  v235 = 0;
  theArray = 0;
  v234 = **&MEMORY[0x1E6960C70];
  cf = 0;
  v226 = v28;
  if (dword_1EAF17590)
  {
    OUTLINED_FUNCTION_10_46(v28, v29, v30, v31, v32, v33, v34, v35, v219, v220, v221, v222, v223, allocator, v28, v227, v228, *v229, v229[4], type.value);
    OUTLINED_FUNCTION_47_17();
    os_log_type_enabled(v37, v229[4]);
    OUTLINED_FUNCTION_125();
    if (v11)
    {
      v39 = v38;
    }

    else
    {
      v39 = value_low;
    }

    if (v39)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(lhs.value) = 136315650;
      OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_17(v41, v42, &buf, v43, &dword_1962D5000, v44, v45, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s called");
      OUTLINED_FUNCTION_42_19();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v46, v47, v48, v49, v50);
    SInt32 = v226;
  }

  doesEndpointStreamSupportMixedSampleRates = fbapo_doesEndpointStreamSupportMixedSampleRates(a1);
  v59 = doesEndpointStreamSupportMixedSampleRates;
  if (dword_1EAF17590)
  {
    OUTLINED_FUNCTION_10_46(doesEndpointStreamSupportMixedSampleRates, v52, v53, v54, v55, v56, v57, v58, v219, v220, v221, v222, v223, allocator, v226, v227, v228, *v229, v229[4], type.value);
    OUTLINED_FUNCTION_47_17();
    os_log_type_enabled(v60, v229[4]);
    OUTLINED_FUNCTION_125();
    if (v11)
    {
      v62 = v61;
    }

    else
    {
      v62 = value_low;
    }

    if (v62)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(lhs.value) = 136315906;
      *(&lhs.value + 4) = "fbapo_prepareAndResumeAudioEngineForBecomeActiveEndpointStreamClient";
      OUTLINED_FUNCTION_25_25();
      v239 = 2080;
      v240 = v63;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_12_17(v64, v65, &buf, v66, &dword_1962D5000, v67, v68, "<<<< FigBufferedAirPlayOutput >>>> %s: [%p] %{public}s EndpointStream %s mixed sample rates");
      OUTLINED_FUNCTION_42_19();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v69, v70, v71, v72, v73);
    SInt32 = v226;
  }

  v74 = FigEndpointStreamGetCMBaseObject();
  v75 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v75)
  {
    OUTLINED_FUNCTION_75_8();
    Mutable = 0;
    value_low = 4294954514;
    goto LABEL_140;
  }

  v76 = *MEMORY[0x1E695E480];
  if (v75(v74, *MEMORY[0x1E69625A8], *MEMORY[0x1E695E480], &theArray))
  {
    OUTLINED_FUNCTION_17_31();
    Mutable = 0;
    goto LABEL_140;
  }

  if (!theArray)
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v219, v220, v221);
    OUTLINED_FUNCTION_17_31();
    Mutable = 0;
    goto LABEL_140;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    OUTLINED_FUNCTION_75_8();
    Mutable = 0;
    value_low = 4294949976;
    goto LABEL_140;
  }

  v78 = Count;
  allocatora = v76;
  Mutable = CFArrayCreateMutable(v76, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_75_8();
    value_low = 4294954510;
    goto LABEL_140;
  }

  if (!a2)
  {
    v88 = FigEndpointStreamGetCMBaseObject();
    v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v89)
    {
      OUTLINED_FUNCTION_75_8();
      value_low = 4294954514;
      goto LABEL_140;
    }

    if (v89(v88, *MEMORY[0x1E6962590], allocatora, &v235))
    {
      goto LABEL_168;
    }

    FigEndpointStreamAudioFormatDescriptionGetASBD();
    OUTLINED_FUNCTION_20_28();
    if (!dword_1EAF17590)
    {
      goto LABEL_64;
    }

    value_low = OUTLINED_FUNCTION_10_46(v90, v91, v92, v93, v94, v95, v96, v97, v219, v220, v221, v222, v223, allocatora, v226, v227, v228, *v229, v229[4], type.value);
    os_log_type_enabled(value_low, v229[4]);
    OUTLINED_FUNCTION_189();
    if (v11)
    {
      value = v98;
    }

    else
    {
      value = type.value;
    }

    if (value)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_44_20();
      OUTLINED_FUNCTION_13_38();
      *(v210 + 66) = v209;
      *(v210 + 68) = HIDWORD(v220);
      *(v210 + 72) = v209;
      *(v210 + 74) = HIDWORD(v222);
      *(v210 + 78) = v209;
      *(v210 + 80) = v222;
      *(v210 + 84) = v209;
      *(v210 + 86) = HIDWORD(v221);
      *(v210 + 90) = v209;
      *(v210 + 92) = v221;
      *(v210 + 96) = v209;
      *(v210 + 98) = v223;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v211, v212, v213, v214, v215, v216, v217, v218);
    }

    OUTLINED_FUNCTION_7();
    goto LABEL_63;
  }

  FigEndpointStreamAudioFormatDescriptionGetASBD();
  OUTLINED_FUNCTION_20_28();
  if (dword_1EAF17590)
  {
    value_low = OUTLINED_FUNCTION_10_46(v80, v81, v82, v83, v84, v85, v86, v87, v219, v220, v221, v222, v223, allocatora, v226, v227, v228, *v229, v229[4], type.value);
    os_log_type_enabled(value_low, v229[4]);
    OUTLINED_FUNCTION_40();
    if (SInt32)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_44_20();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v100, v101, v102, v103, v104, value_low, v229[4], v105);
    }

    OUTLINED_FUNCTION_7();
LABEL_63:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_64:
  v8 = 0;
  for (i = 0; i != v78; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
    if (v59 || *ASBD == v4)
    {
      CFArrayAppendValue(Mutable, ValueAtIndex);
      v8 = 1;
    }
  }

  SInt32 = v226;
  if (dword_1EAF17590)
  {
    value_low = OUTLINED_FUNCTION_16_35(qword_1EAF17588, v109, v110, v111, v112, v113, v114, v115, v219, v220, v221, v222, v223, allocatora, v226, v227, v228, *v229, 0, v231, 0);
    if (os_log_type_enabled(value_low, v229[4]))
    {
      v116 = type.value;
    }

    else
    {
      v116 = type.value & 0xFFFFFFFE;
    }

    if (v116)
    {
      if (a1)
      {
        v117 = (CMBaseObjectGetDerivedStorage() + 208);
      }

      else
      {
        v117 = "";
      }

      v118 = "T";
      LODWORD(lhs.value) = 136318978;
      *(&lhs.value + 4) = "fbapo_prepareAndResumeAudioEngineForBecomeActiveEndpointStreamClient";
      LOWORD(lhs.flags) = 2048;
      if (!v8)
      {
        v118 = "F";
      }

      *(&lhs.flags + 2) = a1;
      HIWORD(lhs.epoch) = 2082;
      v238 = v117;
      v239 = 2080;
      v240 = v118;
      v241 = 1024;
      v242 = HIBYTE(HIDWORD(v223));
      v243 = 1024;
      v244 = BYTE6(v223);
      v245 = 1024;
      v246 = BYTE5(v223);
      v247 = 1024;
      v248 = BYTE4(v223);
      v249 = 2048;
      v250 = v4;
      v251 = 1024;
      v252 = HIDWORD(v220);
      v253 = 1024;
      v254 = HIDWORD(v222);
      v255 = 1024;
      v256 = v222;
      v257 = 1024;
      v258 = HIDWORD(v221);
      v259 = 1024;
      v260 = v221;
      v261 = 1024;
      v262 = v223;
      v263 = 2112;
      v264 = Mutable;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v119, v120, v121, v122, v123, value_low, v229[4], v124);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v8)
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v219, v220, v221);
LABEL_168:
    OUTLINED_FUNCTION_17_31();
    goto LABEL_140;
  }

  if (*(SInt32 + 176))
  {
    v8 = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v125 = *(SInt32 + 64);
      if (v125)
      {
        v133 = *(CMBaseObjectGetVTable() + 16);
        if (v133)
        {
          v134 = *(v133 + 8);
          if (v134)
          {
            v134(v125, @"FAS_CoreSessionID", allocatora, &cf);
          }
        }

        if (dword_1EAF17590)
        {
          OUTLINED_FUNCTION_16_35(qword_1EAF17588, v126, v127, v128, v129, v130, v131, v132, v219, v220, v221, v222, v223, allocatora, v226, v227, v228, *v229, 0, v231, 0);
          OUTLINED_FUNCTION_47_17();
          os_log_type_enabled(v135, v229[4]);
          OUTLINED_FUNCTION_125();
          if (v11)
          {
            v137 = v136;
          }

          else
          {
            v137 = value_low;
          }

          if (v137)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(lhs.value) = 136315906;
            *(&lhs.value + 4) = "fbapo_prepareAndResumeAudioEngineForBecomeActiveEndpointStreamClient";
            OUTLINED_FUNCTION_25_25();
            v239 = 2112;
            v240 = v138;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v139, v140, v141, v142, v143, v144, v229[4], v145);
            OUTLINED_FUNCTION_42_19();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v146, v147, v148, v149, v150);
          SInt32 = v226;
        }

        FigCFDictionarySetValue();
      }

      HostTimeClock = CMClockGetHostTimeClock();
      CMSyncGetTime(&v234, HostTimeClock);
      v152 = FigCFDictionaryGetValue();
      if (v152)
      {
        mach_absolute_time();
        FigCFDictionarySetInt64();
      }

      v153 = fig_log_handle();
      if (a1 + 1 >= 2 && os_signpost_enabled(v153))
      {
        OUTLINED_FUNCTION_40_18(3.852e-34);
        OUTLINED_FUNCTION_37_22(&dword_1962D5000, v169, v170, v171, "AIRPLAY_SIGNPOST_BAO_RESUME_AUDIOENGINE", "bao=%p");
      }

      v154 = FigEndpointStreamAudioEngineResumeSync(*(SInt32 + 72), v8, 6000);
      if (v154)
      {
        value_low = v154;
        SInt32 = 0;
      }

      else if (*(SInt32 + 168))
      {
        if (dword_1EAF17590)
        {
          OUTLINED_FUNCTION_16_35(qword_1EAF17588, v155, v156, v157, v158, v159, v160, v161, v219, v220, v221, v222, v223, allocatora, v226, v227, v228, *v229, 0, v231, 0);
          OUTLINED_FUNCTION_47_17();
          os_log_type_enabled(v162, v230);
          OUTLINED_FUNCTION_125();
          if (v11)
          {
            v164 = v163;
          }

          else
          {
            v164 = value_low;
          }

          if (v164)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            LODWORD(lhs.value) = 136315650;
            OUTLINED_FUNCTION_9_48();
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v176, v177, v178, v179, v180, v181, v230, v182);
            OUTLINED_FUNCTION_42_19();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v183, v184, v185, v186, v187);
        }

        SInt32 = 0;
        value_low = 0;
      }

      else
      {
        v165 = CMClockGetHostTimeClock();
        CMSyncGetTime(&lhs, v165);
        type = v234;
        CMTimeSubtract(&buf, &lhs, &type);
        *&type.value = *&buf.timescale;
        lhs = buf;
        CMTimeConvertScale(&buf, &lhs, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        *&type.value = *&buf.timescale;
        if (6000 - LODWORD(buf.value) <= 1)
        {
          v166 = 1;
        }

        else
        {
          v166 = 6000 - LODWORD(buf.value);
        }

        if (6000 - LODWORD(buf.value) < 501)
        {
          SInt32 = 0;
        }

        else
        {
          SInt32 = FigCFNumberCreateSInt32();
          v167 = FigEndpointStreamGetCMBaseObject();
          v168 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v168)
          {
            v168(v167, *MEMORY[0x1E6962598], SInt32);
          }
        }

        if (dword_1EAF17590)
        {
          v172 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_125();
          if (v11)
          {
            v174 = v173;
          }

          else
          {
            v174 = 0;
          }

          if (v174)
          {
            if (a1)
            {
              v175 = (CMBaseObjectGetDerivedStorage() + 208);
            }

            else
            {
              v175 = "";
            }

            v188 = *(v226 + 56);
            LODWORD(lhs.value) = 136316162;
            *(&lhs.value + 4) = "fbapo_prepareAndResumeAudioEngineForBecomeActiveEndpointStreamClient";
            LOWORD(lhs.flags) = 2048;
            *(&lhs.flags + 2) = a1;
            HIWORD(lhs.epoch) = 2082;
            v238 = v175;
            v239 = 2048;
            v240 = v188;
            v241 = 1024;
            v242 = v166;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_38();
            _os_log_send_and_compose_impl(v189, v190, v191, v192, v193, v194, 0, v195);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v196, v197, v198, v199, v200);
        }

        if (v152)
        {
          mach_absolute_time();
          FigCFDictionarySetInt64();
        }

        v201 = fig_log_handle();
        if (a1 + 1 >= 2 && os_signpost_enabled(v201))
        {
          OUTLINED_FUNCTION_40_18(3.852e-34);
          OUTLINED_FUNCTION_37_22(&dword_1962D5000, v206, v207, v208, "AIRPLAY_SIGNPOST_BAO_SETENDPOINTSTREAM", "bao=%p");
        }

        value_low = FigEndpointStreamAudioEngineSetEndpointStreamSync(*(v226 + 72), *(v226 + 56), v166);
      }
    }

    else
    {
      SInt32 = 0;
      value_low = 4294954510;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_40();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v219, v220, v221);
    OUTLINED_FUNCTION_17_31();
  }

LABEL_140:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v235)
  {
    CFRelease(v235);
  }

  if (!value_low)
  {
LABEL_153:
    CFDictionaryApplyFunction(*(DerivedStorage + 160), fbapo_applyCachedPropertiesForBecomeActiveIterator, a1);
    value_low = 0;
  }

LABEL_154:
  v202 = fig_log_handle();
  if (a1 + 1 >= 2)
  {
    v204 = v202;
    if (os_signpost_enabled(v202))
    {
      OUTLINED_FUNCTION_40_18(3.8521e-34);
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v205;
      _os_signpost_emit_with_name_impl(&dword_1962D5000, v204, OS_SIGNPOST_INTERVAL_END, a1, "kFigKTraceWHA_BAO_BecomeActiveEndpointStream", "bao=%p, error=%llu", &buf, 0x16u);
    }
  }

  return value_low;
}

void __fbapo_setConnectionActive_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  *(*(a1 + 32) + 268) = fbapo_becomeActiveEndpointStreamAudioEngineClient(*(a1 + 40), *(a1 + 48), 0);
  if (dword_1EAF17590)
  {
    v9 = OUTLINED_FUNCTION_126(qword_1EAF17588, v2, v3, v4, v5, v6, v7, v8, v28, v29, v31, *v32, v32[2], 0, 0);
    os_log_type_enabled(v9, type);
    OUTLINED_FUNCTION_189();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v34;
    }

    if (v12)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = (CMBaseObjectGetDerivedStorage() + 208);
      }

      else
      {
        v14 = "";
      }

      v15 = *(*(a1 + 32) + 268);
      v35 = 136315906;
      v36 = "fbapo_setConnectionActive_block_invoke";
      v37 = 2048;
      v38 = v13;
      v39 = 2082;
      v40 = v14;
      v41 = 1024;
      v42 = v15;
      LODWORD(v30) = 38;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, v9, type, v21, &v35, v30);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v22, v23, v24, v25, v26);
  }

  FigSimpleMutexUnlock();
  v27 = *(a1 + 48);
  if (v27)
  {
    CFRelease(v27);
  }

  fbapo_releaseAsync(*(a1 + 40));
}

uint64_t fbapo_airPlayPrefsChangedCallback(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  FigSimpleMutexLock();
  TypeID = CFStringGetTypeID();
  if (fbapo_getCachedValue(a2, TypeID, &v6))
  {
    v4 = @"AudioMode_Default";
  }

  else
  {
    v4 = v6;
  }

  fbapo_setAndCacheAudioMode(a2, v4, 0);

  return FigSimpleMutexUnlock();
}

double fbapo_setRateAndAnchorTimeCallback_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

CFIndex FigCaptionStyleSegmentGetTextLength(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v2)
  {
    v3 = v2(v1);
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = &stru_1F0B1AFB8;
  }

  return CFStringGetLength(v3);
}

uint64_t fcstylesegmenter_setCaptionData(CFMutableArrayRef *a1, const void *a2)
{
  *v8 = 0;
  CFGetAllocator(a1);
  v4 = figCaptionStyleSegmentCreate(v8);
  v5 = *v8;
  if (v4)
  {
    v6 = v4;
    if (!*v8)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = figCaptionStyleSegmentSetCaptionData(*v8, a2);
  if (!v6)
  {
    CFArrayAppendValue(a1[9], v5);
  }

  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

CFIndex FigCaptionStyleSegmentGeneratorGetSegmentCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 72)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

const void *FigCaptionStyleSegmentGeneratorGetSegmentAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  if (a2 < 0 || CFArrayGetCount(v3) <= a2)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    return 0;
  }

  v5 = *(a1 + 72);

  return CFArrayGetValueAtIndex(v5, a2);
}

void fcstylesegmenter_buildTimeToAttributesMap(const void *a1, uint64_t *a2)
{
  v18 = 0;
  cf = 0;
  if (*(a2 + 16))
  {
    goto LABEL_22;
  }

  v4 = *a2;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    v6 = -12782;
    goto LABEL_19;
  }

  v6 = v5(v4, 0, a1, *MEMORY[0x1E695E480], &cf, 0);
  if (v6)
  {
LABEL_19:
    *(a2 + 16) = v6;
    goto LABEL_20;
  }

  if (!cf)
  {
    goto LABEL_28;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == FigCaptionDynamicStyleGetTypeID())
  {
    KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
    if (KeyFrameCount < 1)
    {
      goto LABEL_20;
    }

    v9 = KeyFrameCount;
    v10 = 0;
    v11 = 453;
    while (1)
    {
      v17 = 0.0;
      if (v18)
      {
        CFRelease(v18);
        v18 = 0;
      }

      v6 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
      if (v6)
      {
        goto LABEL_29;
      }

      if ((*(a2 + 11) & 0x1D) == 1)
      {
        v12 = v17;
        v16 = *(a2 + 4);
        v13 = (v12 * CMTimeGetSeconds(&v16) * 1000.0);
      }

      else
      {
        v13 = 0;
      }

      AttributeDictionaryForAnimationTime = insertOrGetAttributeDictionaryForAnimationTime(a2[7], v13);
      if (!AttributeDictionaryForAnimationTime)
      {
        goto LABEL_32;
      }

      if (!v18)
      {
        v11 = 454;
LABEL_32:
        OUTLINED_FUNCTION_303();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949334, "(Fig)", v11);
        goto LABEL_29;
      }

      CFDictionarySetValue(AttributeDictionaryForAnimationTime, a1, v18);
      if (v9 == ++v10)
      {
        goto LABEL_20;
      }
    }
  }

  if (!cf)
  {
LABEL_28:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949334, "(Fig)", 466);
    goto LABEL_29;
  }

  v15 = insertOrGetAttributeDictionaryForAnimationTime(a2[7], 0);
  if (v15)
  {
    CFDictionarySetValue(v15, a1, cf);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_303();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294949334, "(Fig)", 461);
LABEL_29:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }
}

void FigCaptionStyleSegmentCopyText_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentCopyCaptionData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentCopyCaptionData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentCopyAttributes_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentGeneratorPerform_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_133();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentGeneratorPerform_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_133();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentGeneratorPerform_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentGeneratorCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionStyleSegmentGeneratorCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCaptionStyleSegmentCreate_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1_133();
  FigSignalErrorAtGM(v4);
  *a2 = v5;

  CFRelease(a1);
}

void figCaptionStyleSegmentCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_133();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCaptionStyleSegmentSetCaptionData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_149();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigTTMLTreeCreate(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  valuePtr = 0;
  number = 0;
  cf = 0;
  v20 = 0;
  v5 = FigTTMLGetLibXMLAccess();
  if (!v5)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294950722, "(Fig)", 315);
LABEL_25:
    v16 = v9;
    v10 = 0;
    goto LABEL_15;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    v10 = 0;
    v13 = 0;
    v16 = 4294954514;
    goto LABEL_16;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = v7(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number);
  if (v9)
  {
    goto LABEL_25;
  }

  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  if (valuePtr >= 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954510, "(Fig)", 321);
    goto LABEL_25;
  }

  v10 = malloc_type_malloc(valuePtr + 1, 0x7DD95888uLL);
  if (!v10)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954510, "(Fig)", 324);
    goto LABEL_14;
  }

  v11 = valuePtr;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12 || v12(a2, v11, 0, v10, &v20) || v20 != valuePtr)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954423, "(Fig)", 327);
LABEL_14:
    v16 = v17;
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v10[v20] = 0;
  v13 = (*(v5 + 128))(v10, valuePtr, 0, 0, 0);
  FigTTMLMoveCurrentNodeTo(v13, 1);
  v14 = FigTTMLRootCreate(v8, v13, &cf);
  if (!v14)
  {
    MEMORY[0x19A8D3660](&FigTTMLTreeGetTypeID_sRegisterFigTTMLTreeOnce, figTTMLTreeRegisterFigTTMLTree);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v16 = 0;
      *(Instance + 16) = cf;
      cf = 0;
      *a3 = Instance;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v20, valuePtr);
  }

  v16 = v14;
LABEL_16:
  free(v10);
  if (number)
  {
    CFRelease(number);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    (*(v5 + 64))(v13);
  }

  return v16;
}

uint64_t FigTTMLTreeCreateWithCString(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  result = FigCreateBlockBufferCopyingMemoryBlock();
  if (!result)
  {
    result = CMBlockBufferReplaceDataBytes(__s, 0, 0, v6);
    if (!result)
    {
      result = CMByteStreamCreateForBlockBuffer();
      if (!result)
      {
        return FigTTMLTreeCreate(a1, 0, a3);
      }
    }
  }

  return result;
}

uint64_t FigTTMLTreeWalkFromNode(const void *a1, uint64_t (*a2)(const void *, uint64_t), uint64_t (*a3)(const void *, uint64_t), uint64_t a4)
{
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = CFArrayCreateMutable(v8, 0, v9);
  theArray = 0;
  CFArrayAppendValue(Mutable, a1);
  v12 = *MEMORY[0x1E695E4C0];
  CFArrayAppendValue(v11, *MEMORY[0x1E695E4C0]);
  if (CFArrayGetCount(Mutable))
  {
    v13 = *MEMORY[0x1E695E4D0];
    do
    {
      Count = CFArrayGetCount(Mutable);
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, Count - 1);
      v16 = CFArrayGetCount(v11);
      v17 = CFArrayGetValueAtIndex(v11, v16 - 1);
      if (CFBooleanGetValue(v17))
      {
        if (a3)
        {
          v18 = a3(ValueAtIndex, a4);
          if (v18)
          {
LABEL_24:
            v23 = v18;
            if (!Mutable)
            {
              goto LABEL_19;
            }

LABEL_18:
            CFRelease(Mutable);
            goto LABEL_19;
          }
        }

        v19 = CFArrayGetCount(Mutable);
        CFArrayRemoveValueAtIndex(Mutable, v19 - 1);
        v20 = CFArrayGetCount(v11);
        CFArrayRemoveValueAtIndex(v11, v20 - 1);
      }

      else
      {
        v21 = CFArrayGetCount(v11);
        CFArraySetValueAtIndex(v11, v21 - 1, v13);
        if (a2)
        {
          v22 = a2(ValueAtIndex, a4);
          if (v22 == -16573)
          {
            continue;
          }

          v23 = v22;
          if (v22)
          {
            goto LABEL_17;
          }
        }

        v18 = FigTTMLNodeCopyChildNodeArray(ValueAtIndex, &theArray);
        if (v18)
        {
          goto LABEL_24;
        }

        v24 = CFArrayGetCount(theArray);
        v25 = v24 - 1;
        if (v24 >= 1)
        {
          do
          {
            v26 = CFArrayGetValueAtIndex(theArray, v25);
            CFArrayAppendValue(Mutable, v26);
            CFArrayAppendValue(v11, v12);
            --v25;
          }

          while (v25 != -1);
        }

        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }
    }

    while (CFArrayGetCount(Mutable));
  }

  v23 = 0;
LABEL_17:
  if (Mutable)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v11)
  {
    CFRelease(v11);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v23;
}

uint64_t figTTMLTreeBuildFeatureAndExtensionSet(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  value = &stru_1F0B1AFB8;
  theDict = 0;
  cf1 = @"required";
  NodeType = FigTTMLNodeGetNodeType(a1, &v21);
  if (!NodeType)
  {
    if ((v21 & 0xFFFFFFFE) != 0x12)
    {
LABEL_26:
      v14 = 0;
      goto LABEL_27;
    }

    ParentNode = FigTTMLNodeGetParentNode(a1);
    NodeType = FigTTMLNodeCopyAttributes(ParentNode, &theDict);
    if (!NodeType)
    {
      if (theDict)
      {
        CFDictionaryGetValueIfPresent(theDict, @"http://www.w3.org/XML/1998/namespace base", &value);
        if (theDict)
        {
          CFRelease(theDict);
          theDict = 0;
        }
      }

      NodeType = FigTTMLNodeCopyAttributes(a1, &theDict);
      if (!NodeType)
      {
        v6 = @"required";
        if (theDict)
        {
          CFDictionaryGetValueIfPresent(theDict, @"value", &cf1);
          v6 = cf1;
        }

        if (CFEqual(v6, @"optional"))
        {
          v7 = 1;
        }

        else if (CFEqual(cf1, @"required"))
        {
          v7 = 2;
        }

        else
        {
          v7 = 4 * (CFEqual(cf1, @"use") != 0);
        }

        if ((*a2 & v7) == 0)
        {
          goto LABEL_26;
        }

        URLString = 0;
        FigTTMLNodeCopyNodeValue(a1, &URLString);
        if (!NodeType)
        {
          if (URLString)
          {
            v8 = *MEMORY[0x1E695E480];
            v9 = CFURLCreateWithString(*MEMORY[0x1E695E480], value, 0);
            v10 = CFURLCreateWithString(v8, URLString, v9);
            v11 = CFURLCopyAbsoluteURL(v10);
            v12 = *(a2 + 8);
            v13 = CFURLGetString(v11);
            CFSetSetValue(v12, v13);
            if (URLString)
            {
              CFRelease(URLString);
            }

            if (v11)
            {
              CFRelease(v11);
            }

            if (v10)
            {
              CFRelease(v10);
            }

            if (v9)
            {
              CFRelease(v9);
            }

            goto LABEL_26;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0, cf1);
        }
      }
    }
  }

  v14 = NodeType;
LABEL_27:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v14;
}

void figTTMLTreeAppendSliceTimeToArray(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v9 = 0;
  if (!FigTTMLNodeGetNodeType(a1, &v9) && (v9 & 0xFFFFFFFB) == 0xA)
  {
    FigTTMLNodeGetActiveTimeRange(a1, &v10);
    if (!v3 && (BYTE12(v10) & 1) != 0 && (BYTE4(v12) & 1) != 0 && !*(&v12 + 1) && (*(&v11 + 1) & 0x8000000000000000) == 0)
    {
      if (v9 == 10)
      {
        OUTLINED_FUNCTION_1_134();
        time2 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&time1.start, &time2))
        {
          OUTLINED_FUNCTION_1_134();
          FigCFArrayAppendCMTime();
        }

        OUTLINED_FUNCTION_177_1();
        CMTimeRangeGetEnd(&v7, &time1);
        v4 = v7.flags & 0x1D;
      }

      else
      {
        if ((BYTE12(v10) & 0x1D) == 1)
        {
          OUTLINED_FUNCTION_1_134();
          FigCFArrayAppendCMTime();
        }

        OUTLINED_FUNCTION_177_1();
        CMTimeRangeGetEnd(&v5, &time1);
        v4 = v5.flags & 0x1D;
      }

      if (v4 == 1)
      {
        OUTLINED_FUNCTION_177_1();
        CMTimeRangeGetEnd(&time2, &time1);
        FigCFArrayAppendCMTime();
      }
    }
  }
}

uint64_t FigTTMLTreeCopyActiveRegionArray(uint64_t a1, __int128 *a2, CFMutableArrayRef *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = Mutable;
  v7 = FigTTMLTreeWalkFromNode(*(a1 + 16), figTTMLTreeAppendActiveRegionsForTime, 0, &v9);
  if (v7)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a3 = Mutable;
  }

  return v7;
}

uint64_t figTTMLTreeAppendActiveRegionsForTime(const void *a1, uint64_t a2)
{
  v11 = 0;
  NodeType = FigTTMLNodeGetNodeType(a1, &v11);
  if (NodeType)
  {
    return NodeType;
  }

  if (v11 == 2)
  {
    return 4294950723;
  }

  if (v11 != 10)
  {
    return 0;
  }

  memset(&v10, 0, sizeof(v10));
  FigTTMLNodeGetActiveTimeRange(a1, &v10);
  v6 = v5;
  if (!v5)
  {
    range = v10;
    OUTLINED_FUNCTION_89();
    if (CMTimeRangeContainsTime(&range, &v8))
    {
      CFArrayAppendValue(*(a2 + 24), a1);
    }
  }

  return v6;
}

double FigTTMLTreeAppendActiveNodesToArray(uint64_t *cf, uint64_t a2, __CFArray *a3)
{
  if (a3)
  {
    v6 = cf + 4;
    if (cf[4] || (v7 = CFGetAllocator(cf), !FigTTMLIntervalTreeCreate(v7, cf, v6)))
    {
      OUTLINED_FUNCTION_89();
      FigTTMLIntervalTreeAppendActiveNodesToArray(v9, &v15, a3, v10, v11, v12, v13, v14);
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 529, v3);
  }

  return result;
}

uint64_t FigTTMLTreeGetNodeByID_cold_1(uint64_t a1, const void *a2, void *a3)
{
  if (FigTTMLTreeWalkFromNode(*(a1 + 16), figTTMLTreeBuildIDToNodeDictionary, 0, a2))
  {
    CFRelease(a2);
    return 0;
  }

  else
  {
    *a3 = a2;
    return 1;
  }
}

uint64_t FigCaptionTimelineGeneratorAddSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  if (a1 && a2)
  {
    if (FigSampleBufferGetCaptionGroup())
    {
      v166 = v2;
      v5 = *(a1 + 16);
      if (v5)
      {
        Count = CFArrayGetCount(v5);
        HIDWORD(v206) = Count > 0;
        if (Count < 1)
        {
          HIDWORD(v206) = 0;
        }

        else
        {
          for (i = 0; i != Count; ++i)
          {
            v8 = OUTLINED_FUNCTION_10_47();
            *(CFArrayGetValueAtIndex(v8, v9) + 129) = 0;
          }
        }
      }

      else
      {
        HIDWORD(v206) = 0;
        Count = 0;
      }

      memset(&v231, 0, sizeof(v231));
      CMSampleBufferGetOutputPresentationTimeStamp(&start.start, a2);
      CMSampleBufferGetOutputDuration(&duration.start, a2);
      CMTimeRangeMake(&v231, &start.start, &duration.start);
      SliceCount = FigCaptionGroupGetSliceCount();
      if (SliceCount)
      {
        v10 = 0;
        v186 = *MEMORY[0x1E6960560];
        v176 = *MEMORY[0x1E6960558];
        do
        {
          CaptionData = FigCaptionGroupGetCaptionData();
          memset(&v230, 0, sizeof(v230));
          fctg_getAttachmentTime(a2, v186, &v230);
          memset(&v229, 0, sizeof(v229));
          fctg_getAttachmentTime(a2, v176, &v229);
          memset(&duration, 0, sizeof(duration));
          PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&lhs, a2);
          v238 = v230;
          OUTLINED_FUNCTION_9_49(PresentationTimeStamp, v13, v14, v15, v16, v17, v18, v19, v166, v176, v186, SliceCount, v206, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value);
          v20 = CMSampleBufferGetDuration(&v238, a2);
          OUTLINED_FUNCTION_7_66(v20, v21, v22, v23, v24, v25, v26, v27, v167, v177, v187, v197, v207, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, v227.value, *&v227.timescale, v227.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v229.value, *&v229.timescale, v229.epoch, *&v230.value);
          rhs = v229;
          CMTimeAdd(&v237, &lhs, &rhs);
          CMTimeSubtract(&lhs, &v238, &v237);
          CMTimeRangeMake(&duration, &start.start, &lhs);
          memset(&v227, 0, sizeof(v227));
          DurationBeforeSlice = FigCaptionGroupGetDurationBeforeSlice();
          OUTLINED_FUNCTION_7_66(DurationBeforeSlice, v29, v30, v31, v32, v33, v34, v35, v168, v178, v188, v198, v208, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, v227.value, *&v227.timescale, v227.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v229.value, *&v229.timescale, v229.epoch, *&v230.value);
          CMTimeAdd(&v227, &start.start, &lhs);
          memset(&v226, 0, sizeof(v226));
          FigCaptionGroupGetDurationAfterSlice();
          lhs = v229;
          CMTimeAdd(&v226, &start.start, &lhs);
          if (HIDWORD(v209))
          {
            v36 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v36);
              v221 = OUTLINED_FUNCTION_6_80(ValueAtIndex, v38, v39, v40, v41, v42, v43, v44, v169, v179, v189, v199, v209, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, *&v227.value);
              epoch = v227.epoch;
              v219 = v226;
              v217 = v231.start;
              memset(&v238, 0, sizeof(v238));
              *&start.start.value = *(v45 + 56);
              start.start.epoch = *(v45 + 72);
              v237 = *(v45 + 104);
              CMTimeAdd(&v238, &start.start, &v237);
              memset(&v237, 0, sizeof(v237));
              v46 = *(ValueAtIndex + 8);
              v47 = *(ValueAtIndex + 40);
              *&start.start.epoch = *(ValueAtIndex + 24);
              *&start.duration.timescale = v47;
              *&start.start.value = v46;
              CMTimeRangeGetEnd(&v237, &start);
              if ((ValueAtIndex[128] & 1) == 0)
              {
                start.start = v238;
                rhs = lhs;
                v48 = OUTLINED_FUNCTION_2_130();
                if (!CMTimeCompare(v48, v49))
                {
                  start.start = v237;
                  rhs = v217;
                  v50 = OUTLINED_FUNCTION_2_130();
                  v52 = CMTimeCompare(v50, v51);
                  if (!v52)
                  {
                    memset(&v234[32], 0, 24);
                    start.start = lhs;
                    OUTLINED_FUNCTION_11_51(v52, v53, v54, v55, v56, v57, v58, v59, *&lhs.value, v169, v179, v189, v199, v209, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v60, v221.n128_i64[0]);
                    v61 = OUTLINED_FUNCTION_2_130();
                    v64 = CMTimeSubtract(v63, v61, v62);
                    *&start.start.value = *(ValueAtIndex + 56);
                    start.start.epoch = *(ValueAtIndex + 9);
                    OUTLINED_FUNCTION_1_135(v64, v65, v66, v67, v68, v69, v70, v71, v170, v180, v190, v200, v210, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, v227.value, *&v227.timescale, v227.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v229.value, *&v229.timescale, v229.epoch, v230.value, *&v230.timescale, v230.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232.value, *&v232.timescale, v232.epoch, v233, *v234);
                    v72 = OUTLINED_FUNCTION_2_130();
                    v74 = CMTimeCompare(v72, v73);
                    if (!v74)
                    {
                      memset(v234, 0, 24);
                      OUTLINED_FUNCTION_11_51(v74, v75, v76, v77, v78, v79, v80, v81, v82, v169, v179, v189, v199, v209, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v83, v221.n128_i64[0]);
                      v232 = v225;
                      CMTimeAdd(&start.start, &rhs, &v232);
                      rhs = v219;
                      v84 = OUTLINED_FUNCTION_2_130();
                      v87 = CMTimeAdd(v86, v84, v85);
                      *&start.start.value = *(ValueAtIndex + 5);
                      start.start.epoch = *(ValueAtIndex + 12);
                      OUTLINED_FUNCTION_13_39(v87, v88, v89, v90, v91, v92, v93, v94, v171, v181, v191, v201, v211, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, v227.value, *&v227.timescale, v227.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v229.value, *&v229.timescale, v229.epoch, v230.value, *&v230.timescale, v230.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232.value, *&v232.timescale, v232.epoch, v233, *v234);
                      v95 = OUTLINED_FUNCTION_2_130();
                      if (!CMTimeCompare(v95, v96))
                      {
                        v97 = CFEqual(*ValueAtIndex, CaptionData);
                        if (v97)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }

              if (Count == ++v36)
              {
                goto LABEL_22;
              }
            }

            v238 = v231.duration;
            v237 = duration.duration;
            lhs = *(ValueAtIndex + 32);
            v149 = OUTLINED_FUNCTION_9_49(v97, v98, v99, v100, v101, v102, v103, v104, v169, v179, v189, v199, v209, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value);
            *(ValueAtIndex + 2) = *&start.start.value;
            *(ValueAtIndex + 6) = start.start.epoch;
            lhs = *(ValueAtIndex + 104);
            v238 = v237;
            OUTLINED_FUNCTION_9_49(v149, v150, v151, v152, v153, v154, v155, v156, v175, v185, v195, v205, v215, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value);
            *(ValueAtIndex + 104) = *&start.start.value;
            *(ValueAtIndex + 15) = start.start.epoch;
            ValueAtIndex[129] = 1;
          }

          else
          {
LABEL_22:
            OUTLINED_FUNCTION_12_46();
            *&v234[32] = OUTLINED_FUNCTION_6_80(v105, v106, v107, v108, v109, v110, v111, v112, v169, v179, v189, v199, v209, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, *&v227.value);
            *&v234[48] = v227.epoch;
            *v234 = v226;
            v113 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040E0E536C3uLL);
            if (!v113)
            {
              v163 = OUTLINED_FUNCTION_16_36();
              FigSignalErrorAtGM(v163);
              v164 = OUTLINED_FUNCTION_16_36();
              goto LABEL_40;
            }

            v121 = v113;
            if (CaptionData)
            {
              v122 = CFRetain(CaptionData);
            }

            else
            {
              v122 = 0;
            }

            v123 = *&start.start.epoch;
            *(v121 + 8) = *&start.start.value;
            *v121 = v122;
            *(v121 + 24) = v123;
            *(v121 + 40) = *&start.duration.timescale;
            v237 = lhs;
            OUTLINED_FUNCTION_1_135(v122, v114, v115, v116, v117, v118, v119, v120, v172, v182, v192, v202, v212, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, v227.value, *&v227.timescale, v227.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v229.value, *&v229.timescale, v229.epoch, v230.value, *&v230.timescale, v230.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232.value, *&v232.timescale, v232.epoch, v233, *v234);
            v124 = OUTLINED_FUNCTION_4_103();
            CMTimeSubtract(v126, v124, v125);
            *(v121 + 56) = v238;
            v238 = *&v234[32];
            rhs = v225;
            v127 = CMTimeAdd(&v237, &v238, &rhs);
            OUTLINED_FUNCTION_13_39(v127, v128, v129, v130, v131, v132, v133, v134, v173, v183, v193, v203, v213, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, v227.value, *&v227.timescale, v227.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v229.value, *&v229.timescale, v229.epoch, v230.value, *&v230.timescale, v230.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232.value, *&v232.timescale, v232.epoch, v233, *v234);
            v135 = OUTLINED_FUNCTION_4_103();
            v138 = CMTimeAdd(v137, v135, v136);
            *(v121 + 80) = v238;
            v237 = v225;
            OUTLINED_FUNCTION_1_135(v138, v139, v140, v141, v142, v143, v144, v145, v174, v184, v194, v204, v214, v216.value, *&v216.timescale, v216.epoch, v217.value, *&v217.timescale, v217.epoch, v218, v219.value, *&v219.timescale, v219.epoch, v220, v221.n128_i64[0], v221.n128_i64[1], epoch, v223, lhs.value, *&lhs.timescale, lhs.epoch, v225.value, *&v225.timescale, v225.epoch, v226.value, *&v226.timescale, v226.epoch, v227.value, *&v227.timescale, v227.epoch, duration.start.value, *&duration.start.timescale, duration.start.epoch, duration.duration.value, *&duration.duration.timescale, duration.duration.epoch, v229.value, *&v229.timescale, v229.epoch, v230.value, *&v230.timescale, v230.epoch, v231.start.value, *&v231.start.timescale, v231.start.epoch, v231.duration.value, *&v231.duration.timescale, v231.duration.epoch, v232.value, *&v232.timescale, v232.epoch, v233, *v234);
            v146 = OUTLINED_FUNCTION_4_103();
            CMTimeAdd(v148, v146, v147);
            *(v121 + 104) = v238;
            v121[128] = 0;
            CFArrayAppendValue(*(a1 + 16), v121);
          }

          ++v10;
        }

        while (v10 != SliceCount);
      }

      if (HIDWORD(v206))
      {
        v157 = 0;
        do
        {
          v158 = OUTLINED_FUNCTION_10_47();
          v160 = CFArrayGetValueAtIndex(v158, v159);
          if ((v160[129] & 1) == 0)
          {
            v160[128] = 1;
          }

          ++v157;
        }

        while (Count != v157);
      }

      memset(&v216, 0, sizeof(v216));
      OUTLINED_FUNCTION_12_46();
      CMTimeRangeGetEnd(&v216, &start);
      do
      {
        start.start = v216;
      }

      while ((fctg_generateAndOutputCaptions(a1, &start) & 1) != 0);
    }

    v161 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_19();
LABEL_40:
    FigSignalErrorAtGM(v164);
    v161 = v165;
  }

  fctg_freeBuddingCaption(0);
  return v161;
}

uint64_t fctg_generateAndOutputCaptions(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 16));
  v147 = 0;
  memset(&v146, 0, sizeof(v146));
  *&lhs.start.value = *a2;
  lhs.start.epoch = *(a2 + 16);
  rhs = *(a1 + 40);
  CMTimeSubtract(&duration.start, &lhs.start, &rhs);
  *&lhs.start.value = *(a1 + 40);
  lhs.start.epoch = *(a1 + 56);
  v5 = CMTimeRangeMake(&v146, &lhs.start, &duration.start);
  v15 = MEMORY[0x1E6960CC0];
  if (Count)
  {
    do
    {
      duration = *(OUTLINED_FUNCTION_18_32() + 8);
      *&lhs.start.value = *(a1 + 40);
      lhs.start.epoch = *(a1 + 56);
      *&rhs.value = *&duration.start.value;
      OUTLINED_FUNCTION_3_107();
      if (CMTimeCompare(v16, v17))
      {
        lhs = v146;
        *&rhs.value = *&duration.start.value;
        OUTLINED_FUNCTION_3_107();
        if (CMTimeRangeContainsTime(v18, v19))
        {
          rhs = duration.start;
          v20 = OUTLINED_FUNCTION_17_32(*(a1 + 56), v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, *(a1 + 40), *(a1 + 48), v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, duration.start.value);
          OUTLINED_FUNCTION_15_40(v20, v21, v22, v23, v24, v25, v26, v27, v28, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, v29, lhs.start.value);
        }
      }

      OUTLINED_FUNCTION_378_0();
    }

    while (!v30);
    do
    {
      v31 = OUTLINED_FUNCTION_18_32();
      if (v31[128] == 1)
      {
        duration = *(v31 + 8);
        *&lhs.start.value = *&duration.start.value;
        *&lhs.start.epoch = *&duration.start.epoch;
        v32 = *(a1 + 40);
        *&lhs.duration.timescale = *&duration.duration.timescale;
        *&rhs.value = v32;
        OUTLINED_FUNCTION_3_107();
        v35 = CMTimeRangeContainsTime(v33, v34);
        if (v35)
        {
          OUTLINED_FUNCTION_5_90(v35, v36, v37, v38, v39, v40, v41, v42, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, *&lhs.start.value, *&lhs.start.epoch, *&lhs.duration.timescale, rhs.value);
          lhs = v146;
          v43 = CMTimeRangeContainsTime(&lhs, &rhs);
          if (v43)
          {
            OUTLINED_FUNCTION_5_90(v43, v44, v45, v46, v47, v48, v49, v50, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, *&lhs.start.value, *&lhs.start.epoch, *&lhs.duration.timescale, rhs.value);
            v51 = OUTLINED_FUNCTION_17_32(v146.start.epoch, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v146.start.value, *&v146.start.timescale, v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value);
            OUTLINED_FUNCTION_15_40(v51, v52, v53, v54, v55, v56, v57, v58, v59, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, v60, lhs.start.value);
          }
        }
      }

      OUTLINED_FUNCTION_378_0();
    }

    while (!v30);
    do
    {
      v61 = OUTLINED_FUNCTION_18_32();
      if ((v61[128] & 1) == 0)
      {
        *&duration.start.value = *(a1 + 40);
        duration.start.epoch = *(a1 + 56);
        v62 = *(v61 + 8);
        lhs.start.epoch = *(v61 + 3);
        *&lhs.start.value = v62;
        if (!CMTimeCompare(&duration.start, &lhs.start))
        {
          v146.duration = *v15;
        }
      }

      OUTLINED_FUNCTION_378_0();
    }

    while (!v30);
  }

  OUTLINED_FUNCTION_0_150(v5, v6, v7, v8, v9, v10, v11, v12, v13, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v145, *&v146.start.value, *&v146.start.epoch, v14);
  End = CMTimeRangeGetEnd(&v138, &duration);
  if (v138.flags)
  {
    OUTLINED_FUNCTION_0_150(End, v64, v65, v66, v67, v68, v69, v70, v71, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v145, *&v146.start.value, *&v146.start.epoch, v72);
    CMTimeRangeGetEnd(&v137, &duration);
    if ((v137.flags & 4) != 0)
    {
      v146.duration = *v15;
    }
  }

  if ((v146.start.flags & 1) == 0 || (v146.duration.flags & 1) == 0 || v146.duration.epoch || v146.duration.value < 0 || (duration.start = v146.duration, *&lhs.start.value = *&v15->value, lhs.start.epoch = v15->epoch, CMTimeCompare(&duration.start, &lhs.start)))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Count)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
        if (ValueAtIndex[128] == 1)
        {
          v85 = ValueAtIndex;
          OUTLINED_FUNCTION_0_150(ValueAtIndex, v76, v77, v78, v79, v80, v81, v82, v83, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v145, *&v146.start.value, *&v146.start.epoch, v84);
          CMTimeRangeGetEnd(&lhs.start, &duration);
          v86 = *(v85 + 8);
          duration.start.epoch = *(v85 + 3);
          *&duration.start.value = v86;
          if (CMTimeCompare(&duration.start, &lhs.start) < 0)
          {
            v87 = *(v85 + 17);
            if (!v87)
            {
              if (v147)
              {
                CFRelease(v147);
                v147 = 0;
              }

              v88 = CFGetAllocator(a1);
              FigCaptionCreateMutable(v88, &v147);
              if (v89)
              {
                goto LABEL_54;
              }

              v90 = v147;
              lhs = *(v85 + 8);
              v91 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v91)
              {
                goto LABEL_54;
              }

              duration = lhs;
              if (v91(v90, &duration))
              {
                goto LABEL_54;
              }

              v92 = *v85;
              FigCaptionGetCMBaseObject();
              v94 = v93;
              v95 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v95 || v95(v94, @"CaptionData", v92))
              {
                goto LABEL_54;
              }

              v87 = CFRetain(v147);
              *(v85 + 17) = v87;
            }

            CFArrayAppendValue(Mutable, v87);
          }
        }
      }
    }

    v96 = CFArrayGetCount(*(a1 + 16));
    if (v96 >= 1)
    {
      v105 = 0;
      do
      {
        v106 = OUTLINED_FUNCTION_10_47();
        v108 = CFArrayGetValueAtIndex(v106, v107);
        memset(&lhs, 0, 24);
        v109 = *(v108 + 8);
        v110 = *(v108 + 40);
        *&duration.start.epoch = *(v108 + 24);
        *&duration.duration.timescale = v110;
        *&duration.start.value = v109;
        v111 = CMTimeRangeGetEnd(&lhs.start, &duration);
        OUTLINED_FUNCTION_0_150(v111, v112, v113, v114, v115, v116, v117, v118, v119, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v145, *&v146.start.value, *&v146.start.epoch, v120);
        CMTimeRangeGetEnd(&rhs, &duration);
        *&duration.start.value = *&lhs.start.value;
        duration.start.epoch = lhs.start.epoch;
        if (CMTimeCompare(&duration.start, &rhs) <= 0)
        {
          v121 = OUTLINED_FUNCTION_10_47();
          CFArrayRemoveValueAtIndex(v121, v122);
          fctg_freeBuddingCaption(v108);
        }

        else
        {
          ++v105;
        }

        v96 = CFArrayGetCount(*(a1 + 16));
      }

      while (v105 < v96);
    }

    v123 = OUTLINED_FUNCTION_0_150(v96, v97, *(a1 + 32), v98, v99, v100, v101, v102, v103, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v145, *&v146.start.value, *&v146.start.epoch, v104);
    v125 = v124(Mutable, &duration, v123);
    if (v125)
    {
LABEL_54:
      v135 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_0_150(v125, v126, v127, v128, v129, v130, v131, v132, v133, v137.value, *&v137.timescale, v137.epoch, v138.value, *&v138.timescale, v138.epoch, v139, v140, v141, v142, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, rhs.value, *&rhs.timescale, rhs.epoch, v145, *&v146.start.value, *&v146.start.epoch, v134);
      CMTimeRangeGetEnd(&lhs.start, &duration);
      *(a1 + 40) = *&lhs.start.value;
      *(a1 + 56) = lhs.start.epoch;
      v135 = 1;
    }
  }

  else
  {
    v135 = 0;
    Mutable = 0;
  }

  if (v147)
  {
    CFRelease(v147);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v135;
}

void FigCaptionTimelineGeneratorCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionTimelineGeneratorCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigCaptionTimelineGeneratorFinish_cold_1(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    do
    {
      *(OUTLINED_FUNCTION_18_32() + 128) = 1;
      OUTLINED_FUNCTION_378_0();
    }

    while (!v3);
  }

  v4 = MEMORY[0x1E6960C88];
  do
  {
    result = fctg_generateAndOutputCaptions(a1, v4);
  }

  while ((result & 1) != 0);
  return result;
}

void FigCaptionTimelineGeneratorFinish_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionRendererLayoutContextCreate_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

void FigCaptionRendererLayoutContextSetSubtitleSample_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionRendererLayoutContextGetSubtitleSample_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionRendererLayoutContextGetSubtitleSample_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionRendererLayoutContextSetMapping_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCaptionRendererLayoutContextGetMapping_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_151();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCrossTalkerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fct_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fct_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fct_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fct_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSymptomsReportStreamingAssetDownloadStart(uint64_t a1, CMTime *a2, int a3, int a4, int a5, uuid_t out)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(outa, 0, 37);
  if (!out)
  {
    return 4294954516;
  }

  uuid_generate_random(out);
  if (uuid_is_null(out))
  {
    return 4294954510;
  }

  uuid_unparse(out, outa);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  symptom_set_additional_qualifier();
  if (a1)
  {
    v11.value = 0;
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      strlen(CStringPtrAndBufferToFree);
      symptom_set_additional_qualifier();
    }

    free(v11.value);
  }

  symptom_set_qualifier();
  if ((a2->flags & 0x1D) == 1)
  {
    v11 = *a2;
    CMTimeGetSeconds(&v11);
    symptom_set_qualifier();
  }

  symptom_send();
  return 0;
}

uint64_t FigSymptomsReportStreamingAssetDownloadEnd(const unsigned __int8 *a1)
{
  if (OUTLINED_FUNCTION_1_136(a1, *MEMORY[0x1E69E9840]))
  {
    return 4294954516;
  }

  uuid_unparse(a1, v3);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  OUTLINED_FUNCTION_0_152();
  symptom_send();
  return 0;
}

uint64_t FigSymptomsReportStreamingAssetDownloadPause(const unsigned __int8 *a1)
{
  if (OUTLINED_FUNCTION_1_136(a1, *MEMORY[0x1E69E9840]))
  {
    return 4294954516;
  }

  uuid_unparse(a1, v3);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  OUTLINED_FUNCTION_0_152();
  symptom_send();
  return 0;
}

uint64_t FigSymptomsReportStreamingAssetDownloadResume(const unsigned __int8 *a1)
{
  if (OUTLINED_FUNCTION_1_136(a1, *MEMORY[0x1E69E9840]))
  {
    return 4294954516;
  }

  uuid_unparse(a1, v3);
  (softLinksymptom_create[0])("com.apple.coremedia.assetdownload.event");
  symptom_set_qualifier();
  OUTLINED_FUNCTION_0_152();
  symptom_send();
  return 0;
}

double FigCSSTokenizerProduceTokenArray(uint64_t cf, void *a2)
{
  v99 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_62_0();
    v85 = v84;
    v86 = 2515;
LABEL_269:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, 4294949494, "<<<< FigCSSParser >>>>", v86);
  }

  v2 = a2;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_62_0();
    v85 = v87;
    v86 = 2516;
    goto LABEL_269;
  }

  if (*(cf + 28))
  {
    v4 = *(cf + 32);
    if (v4)
    {
      CFRelease(v4);
      *(cf + 32) = 0;
    }

    *(cf + 28) = 0;
    *(cf + 40) = -1;
    *(cf + 56) = 0;
    *(cf + 64) = 0;
  }

  v5 = CFGetAllocator(cf);
  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  *(cf + 32) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_62_0();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, v90, v91);
    TokenType = v88;
    goto LABEL_259;
  }

  v92 = v2;
  v7 = 0;
  do
  {
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = 0;
    v96 = 65533;
    v94 = 0;
    v95 = 0;
LABEL_12:
    if (!*(cf + 26))
    {
      goto LABEL_36;
    }

    v9 = *(cf + 16);
    v10 = *(cf + 40);
    v11 = *(cf + 48);
    v12 = CFGetAllocator(cf);
    v13 = CFStringCreateMutable(v12, 0);
    if (!v13 || (v14 = CFGetAllocator(cf), (v15 = CFStringCreateMutable(v14, 0)) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_62_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, v90, v91);
      v16 = 0;
LABEL_79:
      v20 = 0;
      goto LABEL_30;
    }

    v16 = v15;
    v17.location = v10 & ~(v10 >> 63);
    if (v11 - v17.location < 1)
    {
      if (v10 < 1)
      {
        v36 = CFGetAllocator(cf);
        v24 = CFStringCreateWithFormat(v36, 0, @"<empty text buffer>");
        v20 = 0;
        if (!v24)
        {
          goto LABEL_30;
        }

LABEL_29:
        CFShow(v24);
        CFRelease(v24);
        goto LABEL_30;
      }

      if (v17.location >= 5uLL)
      {
        v21 = 5;
      }

      else
      {
        v21 = v10 & ~(v10 >> 63);
      }

      v101.location = v17.location - v21;
      v101.length = v21;
      if (FigTextContainerGetCharactersForRange(v9, v101, chars))
      {
        goto LABEL_79;
      }

      v22 = CFGetAllocator(cf);
      v20 = CFStringCreateWithCharacters(v22, chars, v21);
      do
      {
        CFStringAppendCString(v13, " ", 0x600u);
        CFStringAppendCString(v16, " ", 0x600u);
        --v21;
      }

      while (v21);
    }

    else
    {
      if ((v11 - v17.location) >= 0xA)
      {
        v18 = 10;
      }

      else
      {
        v18 = v11 - v17.location;
      }

      v17.length = v18;
      if (FigTextContainerGetCharactersForRange(v9, v17, chars))
      {
        goto LABEL_79;
      }

      v19 = CFGetAllocator(cf);
      v20 = CFStringCreateWithCharacters(v19, chars, v18);
    }

    CFStringAppendCString(v13, "^", 0x600u);
    CFStringAppendCString(v16, "|", 0x600u);
    v23 = CFGetAllocator(cf);
    v90 = v13;
    v91 = v16;
    v89 = v20;
    v24 = CFStringCreateWithFormat(v23, 0, @"%@\n%@\n%@");
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_30:
    if (v13)
    {
      CFRelease(v13);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v20)
    {
      CFRelease(v20);
    }

LABEL_36:
    v96 = 0;
    do
    {
      v25 = *(cf + 48);
      if (!v25 || *(cf + 40) >= v25)
      {
        goto LABEL_239;
      }

      v26 = v8;
      if (_figCSSTokenizer_consume_next_input_code_point(cf, &v96))
      {
        _figCSSTokenizer_PeekAheadBuffer(cf, 3, (cf + 72), 0xCuLL, (cf + 64));
        v28 = v96;
        v29 = v96 == 10 || v96 == 9;
        if (v29 || v96 == 32)
        {
          *chars = 0;
          while (1)
          {
            v40 = *(cf + 48);
            if (!v40 || *(cf + 40) >= v40 || !_figCSSTokenizer_consume_next_input_code_point(cf, chars))
            {
              break;
            }

            if (*chars != 10 && *chars != 9 && *chars != 32)
            {
              *(cf + 56) = 1;
              break;
            }
          }

          v38 = CFGetAllocator(cf);
          v39 = 2;
          goto LABEL_172;
        }

        if (v96 == 34)
        {
          v43 = cf;
          v44 = 34;
        }

        else
        {
          if (v96 == 35)
          {
            OUTLINED_FUNCTION_3_108();
            if (v48 == v49)
            {
              v50 = *(cf + 72);
              v51 = v50 >= 0x41 && v50 <= 0x5A;
              if (v51 || (v50 <= 0x7A ? (v52 = v50 < 0x61) : (v52 = 1), v52 ? (v53 = v50 < 0x80) : (v53 = 0), v53 ? (v54 = v50 == 95) : (v54 = 1), v54 || (v50 <= 0x39 ? (v55 = v50 < 0x30) : (v55 = 1), v55 ? (v56 = v50 == 45) : (v56 = 1), v56 || v47 != 1 && (v50 == 92 ? (v69 = *(cf + 76) == 10) : (v69 = 1), !v69))))
              {
                v57 = v47 >= 3 && _figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(v50, *(cf + 76), *(cf + 80));
                v46 = _figCSSTokenizer_consume_a_name(cf, &v94);
                if (v46)
                {
                  goto LABEL_248;
                }

                v65 = CFGetAllocator(cf);
                v46 = FigCSSHashTokenCreate(v65, v57, v94, &v95);
                if (v46)
                {
                  goto LABEL_248;
                }

                goto LABEL_240;
              }
            }

            goto LABEL_168;
          }

          if (v96 == 36)
          {
            if ((*(cf + 64) & 0x8000000000000000) == 0)
            {
              OUTLINED_FUNCTION_1_137();
              if (v29)
              {
                OUTLINED_FUNCTION_4_104();
                v38 = CFGetAllocator(cf);
                v39 = 28;
                goto LABEL_172;
              }
            }

            goto LABEL_168;
          }

          if (v96 != 39)
          {
            if (v96 == 40)
            {
              v38 = CFGetAllocator(cf);
              v39 = 16;
              goto LABEL_172;
            }

            if (v96 == 41)
            {
              v38 = CFGetAllocator(cf);
              v39 = 17;
              goto LABEL_172;
            }

            if (v96 == 42)
            {
              if ((*(cf + 64) & 0x8000000000000000) == 0)
              {
                OUTLINED_FUNCTION_1_137();
                if (v29)
                {
                  *chars = 0;
                  _figCSSTokenizer_consume_next_input_code_point(cf, chars);
                  v38 = CFGetAllocator(cf);
                  v39 = 29;
                  goto LABEL_172;
                }
              }

              goto LABEL_168;
            }

            if (v96 == 43)
            {
              if ((*(cf + 64) & 0x8000000000000000) != 0)
              {
                goto LABEL_168;
              }
            }

            else
            {
              if (v96 == 44)
              {
                v38 = CFGetAllocator(cf);
                v39 = 12;
                goto LABEL_172;
              }

              if (v96 == 45)
              {
                OUTLINED_FUNCTION_3_108();
                if (v48 != v49)
                {
                  goto LABEL_168;
                }

                v59 = *(cf + 72);
                if (v59 < 0x30 || v59 > 0x39)
                {
                  if (v58 < 3)
                  {
                    if (v58 == 1 || v59 != 45)
                    {
                      goto LABEL_168;
                    }

                    v61 = *(cf + 76);
                  }

                  else
                  {
                    v61 = *(cf + 76);
                    if (_figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(*(cf + 72), v61, *(cf + 80)))
                    {
                      goto LABEL_181;
                    }

                    if (v59 != 45)
                    {
                      goto LABEL_168;
                    }
                  }

                  if (v61 != 62)
                  {
                    goto LABEL_168;
                  }

                  OUTLINED_FUNCTION_4_104();
                  OUTLINED_FUNCTION_4_104();
                  v38 = CFGetAllocator(cf);
                  v39 = 25;
LABEL_172:
                  v46 = FigCSSSimpleTokenCreate(v38, v39, &v95);
                  if (v46)
                  {
                    goto LABEL_248;
                  }

LABEL_240:
                  TokenType = 0;
                  v7 = v95;
                  v95 = 0;
                  goto LABEL_241;
                }

LABEL_224:
                v73 = OUTLINED_FUNCTION_5_91();
                v46 = _figCSSTokenizer_consume_a_numeric_token(v73, v74);
                if (v46)
                {
                  goto LABEL_248;
                }

                goto LABEL_240;
              }

              if (v96 != 46)
              {
                if (v96 == 47)
                {
                  if ((*(cf + 64) & 0x8000000000000000) != 0 || *(cf + 72) != 42)
                  {
                    goto LABEL_168;
                  }

                  v93 = 0;
                  OUTLINED_FUNCTION_4_104();
                  while (!_figCSSTokenizer_PeekAheadBuffer(cf, 2, chars, 8uLL, &v93))
                  {
                    v31 = v93;
                    if (!v93)
                    {
                      goto LABEL_12;
                    }

                    v32 = *chars;
                    v33 = v98;
                    OUTLINED_FUNCTION_4_104();
                    if (v31 >= 2 && v32 == 42 && v33 == 47)
                    {
                      OUTLINED_FUNCTION_4_104();
                      goto LABEL_12;
                    }
                  }

                  v28 = v96;
                }

                switch(v28)
                {
                  case ':':
                    v38 = CFGetAllocator(cf);
                    v39 = 13;
                    goto LABEL_172;
                  case ';':
                    v38 = CFGetAllocator(cf);
                    v39 = 14;
                    goto LABEL_172;
                  case '<':
                    if (*(cf + 64) >= 3 && (*(cf + 72) == 33 || *(cf + 76) == 45 || *(cf + 80) == 45))
                    {
                      OUTLINED_FUNCTION_4_104();
                      OUTLINED_FUNCTION_4_104();
                      OUTLINED_FUNCTION_4_104();
                      v38 = CFGetAllocator(cf);
                      v39 = 26;
                      goto LABEL_172;
                    }

                    goto LABEL_168;
                  case '@':
                    if (*(cf + 64) >= 3 && _figCSSTokenizer_check_if_three_code_points_would_start_an_identifier(*(cf + 72), *(cf + 76), *(cf + 80)))
                    {
                      _figCSSTokenizer_consume_a_name(cf, &v94);
                      v45 = CFGetAllocator(cf);
                      v46 = FigCSSStringValueTokenCreate(v45, 8, v94, &v95);
                      if (!v46)
                      {
                        goto LABEL_240;
                      }

LABEL_248:
                      TokenType = v46;
                      goto LABEL_80;
                    }

LABEL_251:
                    v79 = CFGetAllocator(cf);
                    FigCSSCodePointTokenCreate(v79, 5, v96, &v95);
                    goto LABEL_240;
                  case '[':
                    v38 = CFGetAllocator(cf);
                    v39 = 20;
                    goto LABEL_172;
                  case '\\':
                    OUTLINED_FUNCTION_3_108();
                    if (v48 == v49 && *(cf + 72) != 10)
                    {
                      goto LABEL_181;
                    }

LABEL_168:
                    v64 = CFGetAllocator(cf);
                    v46 = FigCSSCodePointTokenCreate(v64, 5, v96, &v95);
                    if (!v46)
                    {
                      goto LABEL_240;
                    }

                    goto LABEL_248;
                  case ']':
                    v38 = CFGetAllocator(cf);
                    v39 = 21;
                    goto LABEL_172;
                  case '^':
                    if ((*(cf + 64) & 0x8000000000000000) != 0)
                    {
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_1_137();
                    if (!v29)
                    {
                      goto LABEL_168;
                    }

                    *chars = 0;
                    _figCSSTokenizer_consume_next_input_code_point(cf, chars);
                    v38 = CFGetAllocator(cf);
                    v39 = 27;
                    goto LABEL_172;
                  case '{':
                    v38 = CFGetAllocator(cf);
                    v39 = 18;
                    goto LABEL_172;
                  case '}':
                    v38 = CFGetAllocator(cf);
                    v39 = 19;
                    goto LABEL_172;
                }

                if (v28 < 0x30 || v28 > 0x39)
                {
                  if (v28 == 85 || v28 == 117)
                  {
                    if (*(cf + 64) >= 2 && *(cf + 72) == 43)
                    {
                      v72 = *(cf + 76);
                      if (FigCSSCodePointIs_hex_digit(v72) || v72 == 63)
                      {
                        result = _figCSSTokenizer_consume_a_unicode_range();
                        if (v46)
                        {
                          goto LABEL_248;
                        }

                        goto LABEL_240;
                      }
                    }

                    goto LABEL_181;
                  }

                  if (FigCSSCodePointIs_name_start_code_point(v28))
                  {
LABEL_181:
                    v66 = OUTLINED_FUNCTION_5_91();
                    v46 = _figCSSTokenizer_consume_an_ident_like_token(v66, v67);
                    if (v46)
                    {
                      goto LABEL_248;
                    }

                    goto LABEL_240;
                  }

                  if (v28 == 124)
                  {
                    OUTLINED_FUNCTION_3_108();
                    if (v48 != v49)
                    {
                      goto LABEL_251;
                    }

                    OUTLINED_FUNCTION_1_137();
                    if (v29)
                    {
                      OUTLINED_FUNCTION_4_104();
                      v38 = CFGetAllocator(cf);
                      v39 = 31;
                    }

                    else
                    {
                      if (v76 != 124)
                      {
                        goto LABEL_251;
                      }

                      OUTLINED_FUNCTION_4_104();
                      v38 = CFGetAllocator(cf);
                      v39 = 15;
                    }
                  }

                  else
                  {
                    if (v28 != 126)
                    {
                      v77 = *(cf + 48);
                      if (!v77 || *(cf + 40) >= v77)
                      {
LABEL_239:
                        v78 = CFGetAllocator(cf);
                        v46 = FigCSSEOFTokenCreate(v78, &v95);
                        if (!v46)
                        {
                          goto LABEL_240;
                        }

                        goto LABEL_248;
                      }

                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_3_108();
                    if (v48 != v49)
                    {
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_1_137();
                    if (!v29)
                    {
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_4_104();
                    v38 = CFGetAllocator(cf);
                    v39 = 30;
                  }

                  goto LABEL_172;
                }

                goto LABEL_224;
              }

              OUTLINED_FUNCTION_3_108();
              if (v48 != v49)
              {
                goto LABEL_168;
              }
            }

            v62 = *(cf + 72);
            if (v62 < 0x30 || v62 > 0x39)
            {
              goto LABEL_168;
            }

            goto LABEL_224;
          }

          v43 = cf;
          v44 = 39;
        }

        v46 = _figCSSTokenizer_consume_a_string_token(v43, v44, &v95);
        if (!v46)
        {
          goto LABEL_240;
        }

        goto LABEL_248;
      }

      v8 = 1;
    }

    while (!v26);
    TokenType = -17810;
LABEL_80:
    if (v95)
    {
      CFRelease(v95);
    }

    v7 = 0;
LABEL_241:
    if (v94)
    {
      CFRelease(v94);
    }

    if (TokenType)
    {
      break;
    }

    if (!v7)
    {
      TokenType = 0;
      break;
    }

    *chars = 0;
    CFArrayAppendValue(*(cf + 32), v7);
    TokenType = FigCSSTokenGetTokenType(v7, chars);
    if (TokenType)
    {
      break;
    }
  }

  while (*chars != 1);
  if (*(cf + 24))
  {
    v80 = CFGetAllocator(cf);
    v81 = CFStringCreateWithFormat(v80, 0, @"tokens: %@", *(cf + 32));
    if (v81)
    {
      CFRelease(v81);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v2 = v92;
LABEL_259:
  if (TokenType)
  {
    v82 = 2;
  }

  else
  {
    v82 = 1;
  }

  *(cf + 28) = v82;
  if (!TokenType)
  {
    v83 = *(cf + 32);
    if (v83)
    {
      v83 = CFRetain(v83);
    }

    *v2 = v83;
  }

  return result;
}

uint64_t _figCSSTokenizer_consume_an_ident_like_token(const void *a1, void *a2)
{
  cf = 0;
  v17 = 0;
  v4 = _figCSSTokenizer_consume_a_name(a1, &v17);
  if (v4)
  {
    v8 = v4;
    goto LABEL_18;
  }

  v5 = v17;
  if (!v17)
  {
    v9 = 0;
LABEL_17:
    v8 = 0;
    *a2 = v9;
    cf = 0;
    goto LABEL_18;
  }

  v13 = 0;
  _figCSSTokenizer_PeekAheadBuffer(a1, 1, &v15, 4uLL, &v13);
  if (CFStringCompare(v5, @"url", 1uLL) || v13 < 1)
  {
    if (v13 < 1)
    {
      goto LABEL_14;
    }

    v6 = v15;
  }

  else
  {
    v6 = v15;
    if (v15 == 40)
    {
      _figCSSTokenizer_consume_next_input_code_point(a1, 0);
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, cf);
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  if (v6 == 40)
  {
    _figCSSTokenizer_consume_next_input_code_point(a1, 0);
    v10 = CFGetAllocator(a1);
    v11 = 32;
    goto LABEL_15;
  }

LABEL_14:
  v10 = CFGetAllocator(a1);
  v11 = 7;
LABEL_15:
  v7 = FigCSSStringValueTokenCreate(v10, v11, v5, &cf);
  if (!v7)
  {
LABEL_16:
    v9 = cf;
    goto LABEL_17;
  }

LABEL_7:
  v8 = v7;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_18:
  if (v17)
  {
    CFRelease(v17);
  }

  return v8;
}

void FigCSSTokenizerCreateWithTextContainer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSTokenizerCreateWithTextContainer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCSSTokenizerCreateWithTextContainer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSTokenizer_consume_a_string_token_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void _figCSSTokenizer_consume_a_name_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double _figCSSTokenizer_consume_a_numeric_token_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void _figCSSTokenizer_PeekAheadBuffer_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void FigVideoCompositionInstructionGetNormalizedTime(const __CFDictionary *a1, CMTime *a2)
{
  Value = CFDictionaryGetValue(a1, @"StartTime");
  CMTimeMakeFromDictionary(&v11, Value);
  v5 = CFDictionaryGetValue(a1, @"EndTime");
  CMTimeMakeFromDictionary(&v10, v5);
  lhs = v10;
  rhs = v11;
  CMTimeSubtract(&v9, &lhs, &rhs);
  rhs = *a2;
  v6 = v11;
  CMTimeSubtract(&lhs, &rhs, &v6);
  rhs = lhs;
  CMTimeGetSeconds(&rhs);
  rhs = v9;
  CMTimeGetSeconds(&rhs);
}

void FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_2(uint64_t a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a4 = v6;
  CFRelease(a3);
}

void FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __pa_handleNotification_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  sbuf = 0;
  HIDWORD(v39) = 0;
  v38 = 0;
  memset(&v37, 0, sizeof(v37));
  if (*(CMBaseObjectGetDerivedStorage() + 32) != 2)
  {
    goto LABEL_10;
  }

  if (v1)
  {
    FigCFDictionaryGetInt32IfPresent();
    OUTLINED_FUNCTION_5_92();
    OUTLINED_FUNCTION_10_48();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = OUTLINED_FUNCTION_14_43(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, blockBufferOut, v29, sampleSizeArray, v31, v32, v33, type, type_8, v36, v37.value, *&v37.timescale, v37.epoch, v38, v39, sbuf, v41, dataBuffer, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, sampleTimingArray.duration.value, *&sampleTimingArray.duration.timescale, sampleTimingArray.duration.epoch, sampleTimingArray.presentationTimeStamp.value, *&sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.epoch, sampleTimingArray.decodeTimeStamp.value);
    if (!OUTLINED_FUNCTION_77_0(v19))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_7_67("pa_handleNotificationInternal", 4.8151e-34);
    OUTLINED_FUNCTION_2_131(383);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_5_92();
  OUTLINED_FUNCTION_10_48();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v10 = OUTLINED_FUNCTION_14_43(v2, v3, v4, v5, v6, v7, v8, v9, blockBufferOut, v29, sampleSizeArray, v31, v32, v33, type, type_8, v36, v37.value, *&v37.timescale, v37.epoch, v38, v39, sbuf, v41, dataBuffer, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, sampleTimingArray.duration.value, *&sampleTimingArray.duration.timescale, sampleTimingArray.duration.epoch, sampleTimingArray.presentationTimeStamp.value, *&sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.epoch, sampleTimingArray.decodeTimeStamp.value);
  if (OUTLINED_FUNCTION_77_0(v10))
  {
    OUTLINED_FUNCTION_7_67("pa_handleNotificationInternal", 4.8151e-34);
    OUTLINED_FUNCTION_2_131(380);
LABEL_8:
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_9:
  OUTLINED_FUNCTION_0_153();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
  if (sbuf)
  {
    CFRelease(sbuf);
  }
}

double pa_finalize_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v24, v26, v28, v30, SWORD2(v30), SBYTE6(v30), SHIBYTE(v30));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v25, v27, v29, v31, v32, v33, v34);
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v35, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_192_0();
  }

  v18 = OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420(v18, v19, v20, v21, v22);
}

double __pa_start_block_invoke_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v24, v26, v28, v30, SWORD2(v30), SBYTE6(v30), SHIBYTE(v30));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v25, v27, v29, v31, v32, v33, v34);
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v35, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_192_0();
  }

  v18 = OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420(v18, v19, v20, v21, v22);
}

double __pa_start_block_invoke_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v24, v26, v28, v30, SWORD2(v30), SBYTE6(v30), SHIBYTE(v30));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v25, v27, v29, v31, v32, v33, v34);
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v35, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_192_0();
  }

  v18 = OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420(v18, v19, v20, v21, v22);
}

double __pa_start_block_invoke_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v24, v26, v28, v30, SWORD2(v30), SBYTE6(v30), SHIBYTE(v30));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v25, v27, v29, v31, v32, v33, v34);
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v35, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_192_0();
  }

  v18 = OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420(v18, v19, v20, v21, v22);
}

uint64_t FigCaptionRendererTTMLRegionCreate(void *a1)
{
  *a1 = 0;
  *&v14 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererTTMLRegionGetClassID_sRegisterFigCaptionRendererTTMLRegionBaseTypeOnce, RegisterFigCaptionRendererTTMLRegionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = 0;
    FigCaptionRendererNodeCreate(&v16);
    v4 = v16;
    *DerivedStorage = v16;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v6 = *(ProtocolVTable + 16);
      if (v6)
      {
        v7 = *(v6 + 216);
        if (v7)
        {
          v7(v4, 1);
        }
      }
    }

    v8 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v9 = CMBaseObjectGetProtocolVTable();
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = *(v10 + 232);
        if (v11)
        {
          v11(v8, 1);
        }
      }
    }

    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
    FigGeometrySizeMake();
    *(DerivedStorage + 176) = v14;
    *(DerivedStorage + 192) = v15;
    v12 = *MEMORY[0x1E6960BA0];
    if (*MEMORY[0x1E6960BA0])
    {
      v12 = CFRetain(v12);
    }

    *(DerivedStorage + 152) = v12;
    *a1 = 0;
  }

  return v2;
}

double FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddChildNode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_1(CGContext *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
  CGContextRelease(a1);
}

void FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t FigVideoCompositionProcessorCreateWithImageQueueArray(const __CFAllocator *a1, unsigned int a2, const void *UInt32, CMTime *a4, unsigned int a5, const __CFArray *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t *a11)
{
  v75 = __PAIR64__(a2, a5);
  v95 = 0;
  v96[0] = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v90 = 0;
  v91 = 0;
  number = 0;
  cf = 0;
  valuePtr = 0;
  OUTLINED_FUNCTION_8_53();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_8_53();
  fig_note_initialize_category_with_default_work_cf();
  if (!UInt32)
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v67, a7);
    v44 = v62;
LABEL_46:
    Instance = 0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_29();
  if (!v23 || (time1 = *a4, OUTLINED_FUNCTION_11_52(v15, v16, v17, v18, v19, v20, v21, v22, v63, v67, a7, v75, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), time2.epoch, v85, time1.value) <= 0) || !a6 || !CFArrayGetCount(a6) || (OUTLINED_FUNCTION_29(), !v23) || (*&time1.value = *a9, time1.epoch = *(a9 + 16), (OUTLINED_FUNCTION_11_52(v24, v25, v26, v27, v28, v29, v30, v31, v64, v68, v72, v76, v80, v82, v80, v82, time2.epoch, v85, time1.value) & 0x80000000) != 0) || (OUTLINED_FUNCTION_29(), !v23) || (OUTLINED_FUNCTION_7_68(), OUTLINED_FUNCTION_11_52(v32, v33, v34, v35, v36, v37, v38, v39, v65, v69, v73, v77, v81, v83, v81, v83, time2.epoch, v85, time1.value) <= 0))
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_28:
    v44 = v43;
    Instance = 0;
LABEL_29:
    UInt32 = 0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_7_68();
  OUTLINED_FUNCTION_12_48();
  if (CMTimeCompare(&time1, &time2) < 0 || !a10)
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  MEMORY[0x19A8D3660](&sRegisterFigVideoCompositionProcessorTypeOnce, RegisterFigVideoCompositionProcessorType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, v70, v74);
LABEL_79:
    v44 = Mutable;
    goto LABEL_29;
  }

  Mutable = FigVCPPreprocessParametersCreateMutable(a1, &v93);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPSourceArrayCreateEmpty(a1, Instance, v96);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPSourceArrayCreateEmpty(a1, Instance, &v95);
  if (Mutable)
  {
    goto LABEL_79;
  }

  time1 = *a4;
  Mutable = FigVCPTimingCreate(a1, &time1, v78, v79 & 2, (v79 & 1) == 0, Instance, &v94);
  if (Mutable)
  {
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_7_68();
  OUTLINED_FUNCTION_12_48();
  Mutable = FigVCPOutputCreate(a1, a6, v74, &time1.value, &time2.value, Instance, &v92);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPOutputConformerCreate(a1, Instance, &v91);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPCompositorHostCreate(a1, UInt32, Instance, &v90);
  if (Mutable)
  {
    goto LABEL_79;
  }

  v42 = *MEMORY[0x1E695E480];
  Mutable = FigVCPCompositorHostCopyProperty(v90, @"VideoCompositionProcessor_SourcePixelBufferAttributes", *MEMORY[0x1E695E480], &cf);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPPreprocessParametersSetProperty();
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPCompositorHostCopyProperty(v90, @"SourceColorConformanceCapabilityLevel", v42, &number);
  if (Mutable)
  {
    goto LABEL_79;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  UInt32 = FigCFNumberCreateUInt32();
  v45 = FigVCPPreprocessParametersSetProperty();
  if (v45)
  {
    goto LABEL_71;
  }

  *(Instance + 20) = 0;
  v47 = v95;
  v46 = v96[0];
  v95 = 0;
  v96[0] = 0;
  *(Instance + 32) = v46;
  *(Instance + 40) = v47;
  v49 = v93;
  v48 = v94;
  v93 = 0;
  v94 = 0;
  *(Instance + 24) = v49;
  v50 = v92;
  v92 = 0;
  *(Instance + 112) = v91;
  *(Instance + 120) = v50;
  v51 = v90;
  *(Instance + 96) = v48;
  *(Instance + 104) = v51;
  v90 = 0;
  v91 = 0;
  if ((v79 & 4) == 0)
  {
    v52 = 1;
LABEL_35:
    *(Instance + 136) = v52;
    goto LABEL_36;
  }

  if (*(Instance + 136) != 3)
  {
    v52 = 3;
    goto LABEL_35;
  }

LABEL_36:
  LODWORD(time1.value) = 0;
  v53 = CFNumberCreate(v42, kCFNumberSInt32Type, &time1);
  FigActivitySchedulerGetFigBaseObject();
  v55 = v54;
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v56)
  {
    v56(v55, @"ClientPID", v53);
  }

  CFRelease(v53);
  FigActivitySchedulerGetFigBaseObject();
  v58 = v57;
  v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v59)
  {
    v59(v58, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
  }

  v60 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v60)
  {
    v44 = 4294954514;
    goto LABEL_48;
  }

  v45 = v60(a10, videoprocessor_processUntilHighWaterMet, Instance);
  if (!v45)
  {
    *(Instance + 128) = CFRetain(a10);
    *(Instance + 216) = 0x7FFFFFFFLL;
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_132();
    FigNotificationCenterAddWeakListener();
    v45 = FigVCPCompositorHostSetOutputCallback(*(Instance + 104), videoprocessor_frameCompleteCallback, Instance);
    if (!v45)
    {
      v45 = FigVCPCompositorHostSetCompletePrerollCallback(*(Instance + 104), videoprocessor_completePrerollCallback, Instance);
      if (!v45)
      {
        v44 = FigVCPCompositorHostSetDidReachEndOfOutputCallback(*(Instance + 104), videoprocessor_didReachEndOfOutputCallback, Instance);
        if (v44)
        {
          goto LABEL_48;
        }

        *a11 = Instance;
        goto LABEL_46;
      }
    }
  }

LABEL_71:
  v44 = v45;
LABEL_48:
  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v96[0])
  {
    CFRelease(v96[0]);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return v44;
}

uint64_t FigVideoCompositionProcessorHasAnySourceTracksInArray(uint64_t a1, CFArrayRef theArray)
{
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
      v7 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
      v8 = 0;
      while (!FigCFArrayGetInt32AtIndex() || (!v6 || !FigVCPSourceArrayGetSourceWithTrackID(v6, 0)) && (!v7 || !FigVCPSourceArrayGetSourceWithTrackID(v7, 0)))
      {
        if (v5 == ++v8)
        {
          v2 = 0;
          if (!v6)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      v2 = 1;
      if (v6)
      {
LABEL_11:
        CFRelease(v6);
      }

LABEL_12:
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  return v2;
}

void FigVideoCompositionProcessorInvalidate(uint64_t a1)
{
  if (a1 && FigVCPInvalidatePrologue(a1 + 16))
  {
    *(a1 + 160) = 0;
    v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_132();
    FigNotificationCenterRemoveWeakListener();
    v3 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
    if (v3)
    {
      OUTLINED_FUNCTION_3_110();
      FigVCPSourceArrayApplyFunction(v3, v4, 0);
    }

    v5 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
    if (v5)
    {
      OUTLINED_FUNCTION_3_110();
      FigVCPSourceArrayApplyFunction(v5, v6, 0);
    }

    FigVCPTimingInvalidate(*(a1 + 96));
    FigVCPCompositorHostInvalidate(*(a1 + 104));
    FigVCPOutputInvalidate(v2);
    FigActivitySchedulerGetFigBaseObject();
    if (v7)
    {
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }

    FigVCPInvalidateEpilogue(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }
}

uint64_t FigVideoCompositionProcessorSetSourceVisualContext(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v7 = a3;
  v8 = a2;
  v28 = 0;
  v29 = 0;
  if (!FigVCPIsValid(a1 + 16))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, __dst[0]);
LABEL_19:
    v23 = Copy;
    v13 = 0;
    goto LABEL_11;
  }

  if (v7 == 1986618469)
  {
    Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &v28);
    if (Copy)
    {
      goto LABEL_19;
    }
  }

  v11 = OUTLINED_FUNCTION_10_49();
  v13 = videoprocessor_loadAndRetainAtomically(v11, v12);
  v14 = CFGetAllocator(v13);
  v15 = v28;
  memcpy(__dst, a4, sizeof(__dst));
  OUTLINED_FUNCTION_1_139();
  v17 = FigVCPSourceArrayCopyAndAddNewVisualContext(v14, v13, v8, v7, a5, v15, __dst, v16, v25, v26);
  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_49();
    videoprocessor_releaseAssignAndRetainAtomically(v18, v19, v20);
    memcpy(__dst, a4, sizeof(__dst));
    if (!FigVideoCompositionTimeWindowDurationIsZero(__dst))
    {
      *(a1 + 2256) = 1;
    }

    if (*(a1 + 160))
    {
      v21 = *(a1 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v22)
      {
        v22(v21);
      }
    }

    v23 = 0;
  }

LABEL_11:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v23;
}

uint64_t FigVideoCompositionProcessorSetSourceVisualContextGroup(uint64_t a1, uint64_t a2, int a3, const __CFArray *a4, const __CFArray *a5)
{
  cf = 0;
  v28 = 0;
  if (!a1 || !a4 || !a5)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v23 = 0;
LABEL_22:
    v13 = 0;
    goto LABEL_12;
  }

  v8 = a2;
  if (!FigVCPIsValid(a1 + 16))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, cf);
LABEL_21:
    v23 = Copy;
    goto LABEL_22;
  }

  if (a3 == 1986618469)
  {
    Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
    if (Copy)
    {
      goto LABEL_21;
    }
  }

  v11 = OUTLINED_FUNCTION_10_49();
  v13 = videoprocessor_loadAndRetainAtomically(v11, v12);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_1_139();
  v17 = FigVCPSourceArrayCopyAndAddNewVisualContextGroup(v14, v13, v8, a3, a4, a5, v15, v16, v25, v26);
  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_49();
    videoprocessor_releaseAssignAndRetainAtomically(v18, v19, v20);
    *(a1 + 2257) = 1;
    if (*(a1 + 160))
    {
      v21 = *(a1 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v22)
      {
        v22(v21);
      }
    }

    v23 = 0;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v23;
}

uint64_t FigVideoCompositionProcessorSetAnimationLayer(uint64_t a1, uint64_t a2, const void *a3, const __CFArray *a4, uint64_t a5, const void *a6)
{
  v10 = a2;
  v22 = 0;
  v23 = 0;
  cf = 0;
  if (!FigVCPIsValid(a1 + 16) || v10 && a4 || a4 && CFArrayGetCount(a4) <= 0 || a5 || *(a1 + 136) == 1 && a3 && *(a1 + 20))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_36;
  }

  if (v10)
  {
    v20.width = 0.0;
    v20.height = 0.0;
    RenderSize = FigVCPCompositorHostGetRenderSize(*(a1 + 104), &v20);
    if (!RenderSize)
    {
      RenderSize = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
      if (!RenderSize)
      {
        v13 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
        v14 = CFGetAllocator(v13);
        v15 = FigVCPSourceArrayCopyAndAddNewCoreAnimationSource(v14, v13, v10, a3, a6, cf, &v23, v20.width, v20.height);
        if (v15)
        {
          v18 = v15;
          goto LABEL_21;
        }

        videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 32), v23);
        goto LABEL_17;
      }
    }

LABEL_36:
    v18 = RenderSize;
    v13 = 0;
    goto LABEL_21;
  }

  RenderSize = FigVCPCoreAnimationPostProcessorCreate(*MEMORY[0x1E695E480], a3, a4, a6, &v22);
  if (RenderSize)
  {
    goto LABEL_36;
  }

  videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 144), v22);
  v13 = 0;
LABEL_17:
  if (*(a1 + 160))
  {
    v16 = *(a1 + 128);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v17)
    {
      v17(v16);
    }
  }

  v18 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v18;
}

uint64_t FigVideoCompositionProcessorSetSourceBufferQueue(uint64_t a1, uint64_t a2, const void *a3, opaqueCMBufferQueue *a4, __int128 *a5)
{
  v8 = a2;
  v23 = 0;
  if (!FigVCPIsValid(a1 + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, LODWORD(time[0].value));
    goto LABEL_19;
  }

  time[0] = **&MEMORY[0x1E6960C70];
  v10 = CMBufferQueueInstallTrigger(a4, videoprocessor_triggerProcessingByBufferQueue, a1, 7, time, (a1 + 56));
  if (v10)
  {
LABEL_19:
    v14 = v10;
    goto LABEL_15;
  }

  v11 = *(a1 + 48);
  *(a1 + 48) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
  v13 = CFGetAllocator(v12);
  v21 = *a5;
  v22 = *(a5 + 2);
  memcpy(time, a3, sizeof(time));
  v14 = FigVCPSourceArrayCopyAndAddNewBufferQueue(v13, v12, v8, a4, &v21, time, videoprocessor_AvailableTimeRangeChanged, a1, &v23);
  if (!v14)
  {
    videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 40), v23);
    memcpy(time, a3, sizeof(time));
    if (!FigVideoCompositionTimeWindowDurationIsZero(time))
    {
      *(a1 + 2256) = 1;
    }

    if (*(a1 + 160))
    {
      v15 = *(a1 + 128);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v16)
      {
        v16(v15);
      }
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_15:
  if (v23)
  {
    CFRelease(v23);
  }

  return v14;
}

uint64_t FigVideoCompositionProcessorSetCompositionInstructionCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!FigVCPIsValid(a1 + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, cf, v13);
    goto LABEL_11;
  }

  v6 = FigVCPInstructionSourceCreate(*MEMORY[0x1E695E480], a2, a3, a1, &cf);
  if (v6)
  {
LABEL_11:
    v9 = v6;
    goto LABEL_7;
  }

  videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 88), cf);
  if (*(a1 + 160))
  {
    v7 = *(a1 + 128);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v8(v7);
    }
  }

  v9 = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigVideoCompositionProcessorStartRenderingFramesForTimeRange(uint64_t a1)
{
  cf = 0;
  if (!FigVCPIsValid(a1 + 16) || FigVCPTimingUsesTimebase(*(a1 + 96)))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    started = v12;
    v3 = 0;
    v2 = 0;
  }

  else
  {
    v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 88));
    FigVCPInstructionSourceInvalidateCache(v2);
    v3 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
    Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
    if (Copy)
    {
      goto LABEL_17;
    }

    if (FigVCPSourceArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      do
      {
        SourceAtIndex = FigVCPSourceArrayGetSourceAtIndex(v3, v5);
        FigVCPSourceStartOver(SourceAtIndex);
        FigVCPSourceSetPreprocessParameters(SourceAtIndex, cf);
        ++v5;
      }

      while (v5 < FigVCPSourceArrayGetCount(v3));
    }

    OUTLINED_FUNCTION_4_105();
    Copy = FigVCPTimingStartOver(v7, v8, v9, 0, 1);
    if (Copy)
    {
LABEL_17:
      started = Copy;
    }

    else
    {
      videoprocessor_flushOutput(a1);
      started = FigVCPCompositorHostStartAcceptingRequest(*(a1 + 104));
      if (!started)
      {
        FigVideoCompositionProcessorGo(a1);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return started;
}

uint64_t FigVideoCompositionProcessorSetPlaybackTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  cf = 0;
  if (!FigVCPIsValid(a1 + 16) || !FigVCPTimingUsesTimebase(*(a1 + 96)))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_26;
  }

  Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
  if (Copy)
  {
LABEL_26:
    started = Copy;
    v21 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v9 = OUTLINED_FUNCTION_10_49();
  v11 = videoprocessor_loadAndRetainAtomically(v9, v10);
  if (FigVCPSourceArrayGetCount(v11) >= 1)
  {
    v12 = 0;
    do
    {
      SourceAtIndex = FigVCPSourceArrayGetSourceAtIndex(v11, v12);
      FigVCPSourceStartOver(SourceAtIndex);
      FigVCPSourceSetPreprocessParameters(SourceAtIndex, cf);
      ++v12;
    }

    while (v12 < FigVCPSourceArrayGetCount(v11));
  }

  OUTLINED_FUNCTION_29();
  if (v14)
  {
    if (a5 < 1)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (a5)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v21 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
    v17 = FigVCPOutputSetDirection(v21, v16);
    if (v17)
    {
      started = v17;
    }

    else
    {
      OUTLINED_FUNCTION_4_105();
      started = FigVCPTimingStartOver(v18, v19, v20, a4, v16);
      if (!started)
      {
        videoprocessor_flushOutput(a1);
        FigVideoCompositionProcessorGo(a1);
      }
    }
  }

  else
  {
    v21 = 0;
    started = 0;
    *(a1 + 160) = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return started;
}

void videoprocessor_Finalize(uint64_t a1)
{
  FigVideoCompositionProcessorInvalidate(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    CFRelease(v10);
  }

  videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 144), 0);
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v11 = *(a1 + 184);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    CMBufferQueueRemoveTrigger(v13, *(a1 + 56));
    v14 = *(a1 + 48);
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

uint64_t videoprocessor_updateCoreAnimationThrottling(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  v4 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
  v5 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
  v6 = *(a1 + 136);
  if (v6 == 1)
  {
    if (v2)
    {
      v7 = FigVCPSourceArrayContainsCoreAnimationSource(v4);
      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = !v7;
      }

      if (v8)
      {
        v2 = 0;
      }

      else
      {
        v2 = 4294954993;
      }
    }

    goto LABEL_20;
  }

  if (v6 != 3)
  {
    if (v6 == 2)
    {
      if (v2)
      {
        if (FigVCPSourceArrayContainsCoreAnimationSource(v4) || v5)
        {
          v2 = 0;
          *(a1 + 160) = 0;
          *(a1 + 140) = 1;
          goto LABEL_20;
        }

LABEL_17:
        v2 = 0;
        goto LABEL_22;
      }

      if (!*(a1 + 160))
      {
        if (*(a1 + 140))
        {
          *(a1 + 160) = 1;
          *(a1 + 140) = 0;
          v10 = *(a1 + 128);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v11(v10);
          }
        }
      }
    }

    v2 = 0;
LABEL_20:
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  FigVCPSourceArrayApplyFunction(v4, videoprocessor_throttleSourceForBackground, &v12);
  if (!v5)
  {
    goto LABEL_17;
  }

  FigVCPCoreAnimationPostProcessorThrottleForBackground(v5);
  v2 = 0;
LABEL_21:
  CFRelease(v5);
LABEL_22:
  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

BOOL videoprocessor_frameCompleteCallback_cold_1(uint64_t a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

double FigVisualContextCreateRemote(uint64_t a1, CFTypeRef cf, void *a3)
{
  if (a3)
  {
    if (qword_1ED4CB4E0 != -1)
    {
      dispatch_once(&qword_1ED4CB4E0, &__block_literal_global_74);
    }

    if (!_MergedGlobals_97)
    {
      xdict = 0;
      if (cf && (v5 = CFGetTypeID(cf), TypeID = CFDictionaryGetTypeID(), v5 == TypeID))
      {
        FigVisualContextGetClassID(TypeID, v7);
        if (!CMDerivedObjectCreate())
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v9 = FigReadWriteLockCreate();
          *(DerivedStorage + 16) = v9;
          if (v9 || (fig_log_get_emitter(), OUTLINED_FUNCTION_2_10(), FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0, 0), !v12))
          {
            if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
            {
              uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
              *CMBaseObjectGetDerivedStorage() = uint64;
              if (!FigXPCRemoteClientAssociateObject())
              {
                *a3 = 0;
              }
            }
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0, 0);
      }

      FigXPCRelease();
      FigXPCRelease();
      FigXPCRemoteClientKillServerOnTimeout();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double remoteXPCVisualContextClient_MessageHandler(const void *a1, void *a2)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigVisualContextGetTypeID(v2, v3)))
  {
    FigXPCMessageGetOpCode();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t rvcFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  rvcInvalidate(a1);
  FigReadWriteLockDestroy();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t rvcSetImageAvailableImmediateCallback(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_106(a1);
  v5 = OUTLINED_FUNCTION_3_111(v4);
  if (v1 && *(v2 + 24))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v36, v38);
LABEL_4:
    v14 = v13;
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_9_50(v5, v6, v7, v8, v9, v10, v11, v12, v33);
  if (v13)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v13 = FigXPCCreateBasicMessage();
  if (v13)
  {
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_2_133(v13, v15, v16, v17, v18, v19, v20, v21, v34, v36);
  xpc_dictionary_set_BOOL(v22, "CallbackIsSet", v23);
  v14 = OUTLINED_FUNCTION_10_50(v24, v25, v26, v27, v28, v29, v30, v31, v35, v37);
  if (!v14)
  {
    *(v2 + 24) = v1;
    *(v2 + 32) = v3;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t rvcSetImageAvailableSequentialCallback(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_106(a1);
  v5 = OUTLINED_FUNCTION_3_111(v4);
  if (v1 && *(v2 + 40))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v36, v38);
LABEL_4:
    v14 = v13;
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_9_50(v5, v6, v7, v8, v9, v10, v11, v12, v33);
  if (v13)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v13 = FigXPCCreateBasicMessage();
  if (v13)
  {
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_2_133(v13, v15, v16, v17, v18, v19, v20, v21, v34, v36);
  xpc_dictionary_set_BOOL(v22, "CallbackIsSet", v23);
  v14 = OUTLINED_FUNCTION_10_50(v24, v25, v26, v27, v28, v29, v30, v31, v35, v37);
  if (!v14)
  {
    *(v2 + 40) = v1;
    *(v2 + 48) = v3;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t rvcSetNoMoreImagesCallback(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_106(a1);
  v5 = OUTLINED_FUNCTION_3_111(v4);
  if (v1 && *(v2 + 56))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v36, v38);
LABEL_4:
    v14 = v13;
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_9_50(v5, v6, v7, v8, v9, v10, v11, v12, v33);
  if (v13)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v13 = FigXPCCreateBasicMessage();
  if (v13)
  {
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_2_133(v13, v15, v16, v17, v18, v19, v20, v21, v34, v36);
  xpc_dictionary_set_BOOL(v22, "CallbackIsSet", v23);
  v14 = OUTLINED_FUNCTION_10_50(v24, v25, v26, v27, v28, v29, v30, v31, v35, v37);
  if (!v14)
  {
    *(v2 + 56) = v1;
    *(v2 + 64) = v3;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t rvcSetBecameEmptyCallback(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_106(a1);
  v5 = OUTLINED_FUNCTION_3_111(v4);
  if (v1 && *(v2 + 72))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v36, v38);
LABEL_4:
    v14 = v13;
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_9_50(v5, v6, v7, v8, v9, v10, v11, v12, v33);
  if (v13)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v13 = FigXPCCreateBasicMessage();
  if (v13)
  {
    goto LABEL_4;
  }

  v22 = OUTLINED_FUNCTION_2_133(v13, v15, v16, v17, v18, v19, v20, v21, v34, v36);
  xpc_dictionary_set_BOOL(v22, "CallbackIsSet", v23);
  v14 = OUTLINED_FUNCTION_10_50(v24, v25, v26, v27, v28, v29, v30, v31, v35, v37);
  if (!v14)
  {
    *(v2 + 72) = v1;
    *(v2 + 80) = v3;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t rvcGetEarliestSequentialImageTimeAfterTime(uint64_t a1, unsigned int a2, __int128 *a3, uint64_t a4, BOOL *a5)
{
  v14 = 0;
  xdict = 0;
  v13 = 0;
  if (a4)
  {
    v8 = MEMORY[0x1E6960C70];
    *a4 = *MEMORY[0x1E6960C70];
    *(a4 + 16) = *(v8 + 16);
  }

  if (a5)
  {
    *a5 = 0;
  }

  ObjectID = remoteXPCVisualContext_GetObjectID(a1, &v13);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_uint64(xdict, "Flags", a2), ObjectID = FigXPCMessageSetCMTime(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID))
  {
    v11 = ObjectID;
    goto LABEL_16;
  }

  if (!a4)
  {
    if (!a5)
    {
      v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  CMTime = FigXPCMessageGetCMTime();
  v11 = CMTime;
  if (a5 && !CMTime)
  {
LABEL_14:
    v11 = 0;
    *a5 = xpc_dictionary_get_BOOL(v14, "NoMoreImages");
  }

LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

uint64_t rvcTask(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  if (!remoteXPCVisualContext_GetObjectID(a1, v2))
  {
    OUTLINED_FUNCTION_26_14();
    if (!FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

void FigVisualContextXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVisualContextXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCVisualContext_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void rvcCopyImageForTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void rvcCopyImageForTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL FigVideoCompositorUtilityAreCleanAperturesEqual(const void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    return 1;
  }

  if (a1 && (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)) || a4 && (v9 = CFDictionaryGetTypeID(), v9 != CFGetTypeID(a4)))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
    return 0;
  }

  vcu_getCleanApertureRational();
  if (v11)
  {
    return 0;
  }

  vcu_getCleanApertureRational();
  if (v12)
  {
    return 0;
  }

  v13 = vcu_simplifyRational(0);
  if (v13 != vcu_simplifyRational(0))
  {
    return 0;
  }

  v14 = vcu_simplifyRational(0);
  if (v14 != vcu_simplifyRational(0))
  {
    return 0;
  }

  v15 = vcu_simplifyRational(0);
  if (v15 != vcu_simplifyRational(0))
  {
    return 0;
  }

  v16 = vcu_simplifyRational(0);
  v17 = vcu_simplifyRational(0);
  if (v16 != v17)
  {
    return 0;
  }

  return (v16 ^ v17) >> 32 == 0;
}

double vcu_getCleanApertureRational()
{
  OUTLINED_FUNCTION_2_134();
  v9 = v8;
  if (!v4)
  {
    LODWORD(v20) = v5;
    LODWORD(v19) = v6;
    LODWORD(v18) = 0;
    LODWORD(v17) = 0;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = v4;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(v10))
  {
    result = vcu_getRationalFromDictionary(v10, *MEMORY[0x1E6965D80], *MEMORY[0x1E6960110], &v20);
    if (v12)
    {
      return result;
    }

    result = vcu_getRationalFromDictionary(v10, *MEMORY[0x1E6965D60], *MEMORY[0x1E69600F8], &v19);
    if (v13)
    {
      return result;
    }

    result = vcu_getRationalFromDictionary(v10, *MEMORY[0x1E6965D68], *MEMORY[0x1E6960100], &v18);
    if (v14)
    {
      return result;
    }

    result = vcu_getRationalFromDictionary(v10, *MEMORY[0x1E6965D78], *MEMORY[0x1E6960108], &v17);
    if (v15)
    {
      return result;
    }

    if (!v3)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v3 = v20;
LABEL_9:
    if (v2)
    {
      *v2 = v19;
    }

    if (v1)
    {
      *v1 = v18;
    }

    if (v0)
    {
      *v0 = v17;
    }

    return result;
  }

  v16 = qword_1EAF175C8;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954792, "<<<< FigVideoCompositor-Common >>>>", 479, v9);
}

void FigVideoCompositorUtilityGetCleanAperture()
{
  OUTLINED_FUNCTION_2_134();
  OUTLINED_FUNCTION_1_140(v4, v5, v6, v7, v8, v9, v10, v11, v13, v15, v17, v18, v20, v21);
  if (!v12)
  {
    if (v3)
    {
      *v3 = OUTLINED_FUNCTION_0_154(*&v22, *(&v22 + 1));
    }

    if (v2)
    {
      *v2 = OUTLINED_FUNCTION_0_154(*&v19, *(&v19 + 1));
    }

    if (v1)
    {
      *v1 = OUTLINED_FUNCTION_0_154(*&v16, *(&v16 + 1));
    }

    if (v0)
    {
      *v0 = OUTLINED_FUNCTION_0_154(*&v14, *(&v14 + 1));
    }
  }
}

void FigVideoCompositorUtilityCopyRenderDimensionsAndEdgeProcessingPixels(int a1, int a2, CFTypeID a3, const __CFDictionary *a4, double *a5, __CFArray **a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 1;
  v31 = 1;
  v28 = a1;
  v29 = 1;
  v26 = a2;
  v27 = 1;
  v24 = 0x100000000;
  v25 = 0x100000000;
  if (a3)
  {
    FigVideoCompositorUtilityGetPixelAspectRatio(a3, &v31, &v30);
  }

  if (!a4 || (vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D80], *MEMORY[0x1E6960110], &v28), !v11) && (vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D60], *MEMORY[0x1E69600F8], &v26), !v12) && (vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D68], *MEMORY[0x1E6960100], &v25), !v13) && (vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D78], *MEMORY[0x1E6960108], &v24), !v14))
  {
    if (a5)
    {
      v15 = v26 / v27;
      *a5 = v28 * v31 / (v29 * v30);
      a5[1] = v15;
    }

    if (a6)
    {
      v16 = a1 - v28 / v29;
      v17 = a2 - v26 / v27;
      v18 = *MEMORY[0x1E695E480];
      v19 = 4;
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
      v21 = (v25 / SHIDWORD(v25));
      valuePtr[0] = (v21 + v16 * 0.5);
      valuePtr[1] = (v21 + v17 * 0.5);
      valuePtr[2] = -(v21 - v16 * 0.5);
      valuePtr[3] = -(v21 - v17 * 0.5);
      v22 = valuePtr;
      do
      {
        v23 = CFNumberCreate(v18, kCFNumberIntType, v22);
        CFArrayAppendValue(Mutable, v23);
        CFRelease(v23);
        ++v22;
        --v19;
      }

      while (v19);
      *a6 = Mutable;
    }
  }
}

uint64_t FigDataQueueServer_EnsureServerAndCopyXPCEndpoint(uint64_t a1)
{
  if (qword_1ED4CB4F8 != -1)
  {
    dispatch_once(&qword_1ED4CB4F8, &__block_literal_global_75);
  }

  result = _MergedGlobals_98;
  if (!_MergedGlobals_98)
  {

    return FigXPCServerCopyXPCEndpoint();
  }

  return result;
}

uint64_t dqs_HandleRemoteMessage(uint64_t a1, void *a2, uint64_t a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

void FigDataQueueServer_AssociateObjectByPID_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v5, v7);
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = v2;
}

void dqs_SendLowWaterMarkCallback_cold_1(xpc_connection_t *a1, xpc_object_t *a2)
{
  if (!FigXPCCreateBasicMessage())
  {
    xpc_connection_send_message(a1[2], *a2);
  }

  FigXPCRelease();
  CFRelease(a1);
}

uint64_t FigAssetCacheInspectorCreate_Streaming(const void *a1, CFTypeRef cf, CFTypeRef *a3)
{
  if (!cf)
  {
    goto LABEL_20;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != FigAssetGetTypeID() || !a3)
  {
    goto LABEL_20;
  }

  FigAssetCacheInspectorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = dispatch_queue_create("com.apple.coremedia.streamingcacheinspector.statequeue", 0);
  *DerivedStorage = v9;
  if (!v9)
  {
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v7;
  }

  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 16) = v10;
  *(DerivedStorage + 24) = CFRetain(cf);
  if (FigIsItOKToLogURLs())
  {
    v11 = FPSupport_GetAssetDoNotLogURLs(cf) == 0;
  }

  else
  {
    v11 = 0;
  }

  *(DerivedStorage + 73) = v11;
  v12 = *(DerivedStorage + 16);
  FigAssetGetCMBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    return 4294954514;
  }

  v7 = v15(v14, @"assetProperty_CreationURL", v12, DerivedStorage + 32);
  if (v7)
  {
    return v7;
  }

  if (!*(DerivedStorage + 32))
  {
    goto LABEL_20;
  }

  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_1_141();
  v7 = FigNotificationCenterAddWeakListener();
  if (v7)
  {
    return v7;
  }

  v16 = sci_copyCacheURL(DerivedStorage, (DerivedStorage + 40));
  if (!v16)
  {
    *a3 = CFRetain(0);
  }

  return v16;
}

uint64_t sci_copyCacheURL(uint64_t a1, void *a2)
{
  cf = 0;
  if (FigCFURLIsLocalResource())
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    cf = v4;
    goto LABEL_6;
  }

  FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(a1 + 24), &cf);
  v6 = v5;
  v4 = cf;
  if (!v6)
  {
LABEL_6:
    if (v4)
    {
      v7 = CFRetain(v4);
      v4 = cf;
    }

    else
    {
      v7 = 0;
    }

    v6 = 0;
    *a2 = v7;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

void sci_invalidateDispatch(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      if (!*(v1 + 8))
      {
        *(v1 + 8) = 1;
        CMBaseObjectGetDerivedStorage();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_141();
        FigNotificationCenterRemoveWeakListener();
        v2 = *(v1 + 16);
        if (v2)
        {
          CFRelease(v2);
          *(v1 + 16) = 0;
        }

        v3 = *(v1 + 24);
        if (v3)
        {
          CFRelease(v3);
          *(v1 + 24) = 0;
        }

        v4 = *(v1 + 32);
        if (v4)
        {
          CFRelease(v4);
          *(v1 + 32) = 0;
        }

        v5 = *(v1 + 40);
        if (v5)
        {
          CFRelease(v5);
          *(v1 + 40) = 0;
        }

        v6 = *(v1 + 48);
        if (v6)
        {
          CFRelease(v6);
          *(v1 + 48) = 0;
        }

        v7 = *(v1 + 56);
        if (v7)
        {
          CFRelease(v7);
          *(v1 + 56) = 0;
        }

        v8 = *(v1 + 64);
        if (v8)
        {
          CFRelease(v8);
          *(v1 + 64) = 0;
        }
      }
    }
  }
}

uint64_t sci_assetBecameReadyForDownload(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 8) && !*(result + 40))
  {

    return sci_copyCacheURL(result, (result + 40));
  }

  return result;
}

void sci_copyPropertyDispatch(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1 || *(v2 + 8))
  {
    return;
  }

  if (CFEqual(@"AssetCacheInspectorProperty_CacheURL", *(a1 + 8)))
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    **(a1 + 16) = v3;
    return;
  }

  if (!CFEqual(@"AssetCacheInspectorProperty_PlayableOffline", *(a1 + 8)))
  {
    return;
  }

  v6 = *(a1 + 16);
  v11 = 0;
  cf = 0;
  if (*(v2 + 72))
  {
    goto LABEL_15;
  }

  if (!*(v2 + 40))
  {
LABEL_16:
    v9 = MEMORY[0x1E695E4C0];
    goto LABEL_17;
  }

  isVideoPlayableOffline = sci_createAndOpenHLSPersistentStore(v2, &cf, v4, v5);
  if (!isVideoPlayableOffline)
  {
    isVideoPlayableOffline = sci_isVideoPlayableOffline(v2, cf, &v11, 0);
    if (!isVideoPlayableOffline)
    {
      if (v11)
      {
LABEL_15:
        v9 = MEMORY[0x1E695E4D0];
LABEL_17:
        v8 = 0;
        *v6 = *v9;
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  v8 = isVideoPlayableOffline;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  *(a1 + 24) = v8;
}

uint64_t sci_isVideoPlayableOffline(uint64_t a1, uint64_t a2, char *a3, BOOL *a4)
{
  v32 = 0;
  if (*(a1 + 72))
  {
    OUTLINED_FUNCTION_4_107();
    v23 = 1;
    goto LABEL_29;
  }

  if (!*(a1 + 40))
  {
    OUTLINED_FUNCTION_4_107();
LABEL_29:
    *v24 = v23;
    v20 = 0;
    if (v25)
    {
      *v25 = v4;
    }

    goto LABEL_31;
  }

  v30 = a3;
  v31 = a4;
  v9 = sci_ensureAlternateArrayAndMediaSelectionArray(a1, a2);
  if (v9)
  {
    return v9;
  }

  if (*(a1 + 56))
  {
    Mutable = CFArrayCreateMutable(*(a1 + 16), 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v11 = CFArrayCreateMutable(*(a1 + 16), 0, MEMORY[0x1E695E9C0]);
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        HasVideo = 0;
        while (1)
        {
          Count = *(a1 + 56);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v13 >= Count)
          {
            CFArrayAppendValue(Mutable, *(a1 + 48));
            goto LABEL_21;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v13);
          PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(ValueAtIndex);
          StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(ValueAtIndex);
          if (HasVideo)
          {
            if (!PlaylistAlternateURL)
            {
              goto LABEL_19;
            }
          }

          else
          {
            HasVideo = FigAlternateHasVideo(ValueAtIndex);
            if (!PlaylistAlternateURL)
            {
              goto LABEL_19;
            }
          }

          v19 = FigCFHTTPCreateURLString(PlaylistAlternateURL);
          CFArrayAppendValue(Mutable, v19);
          if (v19)
          {
            CFRelease(v19);
          }

          if (StableStreamIdentifier)
          {
            CFArrayAppendValue(v12, StableStreamIdentifier);
          }

LABEL_19:
          ++v13;
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v20 = v28;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
    v20 = v27;
    Mutable = 0;
  }

  LOBYTE(HasVideo) = 0;
  v12 = 0;
  OUTLINED_FUNCTION_4_107();
  v21 = 0;
  if (!v20)
  {
LABEL_21:
    v5 = CFRetain(Mutable);
    v6 = CFRetain(v12);
    v20 = 0;
    v4 = HasVideo;
    v21 = v12;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
LABEL_31:
    if (!v5)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v22 = sci_areAnyNetworkURLsOrStreamIDsCompletelyCached(a2, v5, v6, &v32);
  if (!v22)
  {
    v23 = v32;
    *(a1 + 72) = v32;
    v24 = v30;
    v25 = v31;
    goto LABEL_29;
  }

  v20 = v22;
  if (v5)
  {
LABEL_32:
    CFRelease(v5);
  }

LABEL_33:
  if (v6)
  {
    CFRelease(v6);
  }

  return v20;
}

uint64_t sci_ensureAlternateArrayAndMediaSelectionArray(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  cf = 0;
  if (*(a1 + 64) || *(a1 + 56))
  {
    v15 = 0;
    goto LABEL_14;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4(a2, @"NetworkPlaylist", &v24, 0, &v23, &v22);
  if (!v5)
  {
    v6 = *(a1 + 16);
    FigHLSPersistentStoreGetFigBaseObject();
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v5 = v9(v8, @"MasterPlaylistNetworkURL", v6, a1 + 48);
      if (!v5)
      {
        v10 = *(a1 + 48);
        if (v10)
        {
          v11 = CFURLCreateWithString(*(a1 + 16), v10, 0);
          if (v11)
          {
            v12 = v11;
            v13 = FigStreamPlaylistParse(v22, v11, 0, &v21, 0, 0, 1, *(a1 + 73), 0, 0, 0, 0, &cf, 0);
            if (v13)
            {
LABEL_34:
              v15 = v13;
              goto LABEL_29;
            }

            if (cf && FigMultivariantPlaylistGetMediaSelectionArray(cf))
            {
              MediaSelectionArray = FigMultivariantPlaylistGetMediaSelectionArray(cf);
              *(a1 + 64) = CFRetain(MediaSelectionArray);
            }

            else
            {
              v17 = CFArrayCreate(*(a1 + 16), 0, 0, MEMORY[0x1E695E9C0]);
              *(a1 + 64) = v17;
              if (!v17)
              {
LABEL_33:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                goto LABEL_34;
              }
            }

            if (cf && FigMultivariantPlaylistGetAlternates(cf))
            {
              Alternates = FigMultivariantPlaylistGetAlternates(cf);
              v15 = 0;
              *(a1 + 56) = CFRetain(Alternates);
LABEL_29:
              CFRelease(v12);
              goto LABEL_14;
            }

            v19 = CFArrayCreate(*(a1 + 16), 0, 0, MEMORY[0x1E695E9C0]);
            *(a1 + 56) = v19;
            if (v19)
            {
              v15 = 0;
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      goto LABEL_32;
    }

LABEL_13:
    v15 = 4294954514;
    goto LABEL_14;
  }

LABEL_32:
  v15 = v5;
LABEL_14:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t sci_areAnyNetworkURLsOrStreamIDsCompletelyCached(uint64_t a1, const __CFArray *a2, const __CFArray *a3, _BYTE *a4)
{
  v25 = 0;
  value = 0;
  theArray = 0;
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
LABEL_30:
    v20 = 4294954514;
    goto LABEL_31;
  }

  v9 = v8(a1, &theArray);
  if (v9)
  {
LABEL_40:
    v20 = v9;
    goto LABEL_31;
  }

  for (i = 0; ; ++i)
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v13)
    {
      goto LABEL_30;
    }

    v9 = v13(a1, ValueAtIndex, &cf);
    if (v9)
    {
      goto LABEL_40;
    }

    v14 = cf;
    if (cf)
    {
      if (a3)
      {
        v15.length = CFArrayGetCount(a3);
        v14 = cf;
      }

      else
      {
        v15.length = 0;
      }

      v17 = a3;
    }

    else
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v16)
      {
        goto LABEL_30;
      }

      v9 = v16(a1, ValueAtIndex, &value);
      if (v9)
      {
        goto LABEL_40;
      }

      v14 = value;
      if (!value)
      {
        goto LABEL_24;
      }

      if (a2)
      {
        v15.length = CFArrayGetCount(a2);
        v14 = value;
      }

      else
      {
        v15.length = 0;
      }

      v17 = a2;
    }

    v15.location = 0;
    if (CFArrayContainsValue(v17, v15, v14))
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v18)
      {
        goto LABEL_30;
      }

      v9 = v18(a1, ValueAtIndex, &v25);
      if (v9)
      {
        goto LABEL_40;
      }
    }

LABEL_24:
    v19 = v25;
    if (v25)
    {
      goto LABEL_39;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v19 = v25;
LABEL_39:
  v20 = 0;
  *a4 = v19;
LABEL_31:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v20;
}

void sci_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_createAndOpenHLSPersistentStore_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}