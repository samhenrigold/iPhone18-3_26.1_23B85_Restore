uint64_t RegisterVTHDRMetadataGenerationSession()
{
  result = _CFRuntimeRegisterClass();
  sVTHDRMetadataGenerationSessionID = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreate(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    return 4294954394;
  }

  v6 = a2;
  if (a2 == 2 || a2 == 4)
  {
    MEMORY[0x193AE3010](&VTHDRMetadataGenerationSessionGetTypeID_sRegisterVTHDRMetadataGenerationSessionOnce, RegisterVTHDRMetadataGenerationSession, a3);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      v9 = Instance + 28672;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      *(v9 + 1092) = 0;
      *(v8 + 144) = 1106247680;
      *(v8 + 17) = v6;
      *(v8 + 32) = 1;
      *(v8 + 24) = 0;
      DictionaryValue = FigCFDictionaryGetDictionaryValue();
      if (DictionaryValue)
      {
        v11 = CFGetTypeID(DictionaryValue);
        if (v11 != CFDictionaryGetTypeID() || !FigCFDictionaryGetFloatIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || FigCFDictionaryGetDictionaryValue() && (!FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || *(v8 + 141) && (!FigCFDictionaryGetCGSizeIfPresent() || !FigCFDictionaryGetCGRectIfPresent())))
        {
          VTHDRMetadataGenerationSessionCreate_cold_1();
        }
      }

      result = 0;
      *a4 = v8;
    }

    else
    {
      return 4294954392;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VTHDRMetadataGenerationSession >>>>", 291, v4);
  }

  return result;
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond(uint64_t a1, float a2)
{
  if (*(a1 + 29765) || *(a1 + 29764))
  {
    VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_1(&v4);
    return v4;
  }

  else if (a2 <= 0.0)
  {
    VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_3(&v6);
    return v6;
  }

  else if (a2 > 240.0)
  {
    VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_2(&v5);
    return v5;
  }

  else
  {
    v2 = 0;
    *(a1 + 144) = a2;
  }

  return v2;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, CGFloat a7, CGFloat a8)
{
  if (*(a1 + 29765) || *(a1 + 29764))
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary_cold_1(v29);
    return LODWORD(v29[0]);
  }

  if (a4)
  {
    v10 = a5;
    v14 = a2;
    v30 = 0;
    v31 = 0;
    memset(v29, 0, 108);
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    if (FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() || FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent())
    {
      result = getValuesFromDictionary(v30, &v23, a7, a8);
      if (result)
      {
        return result;
      }

      if (!BYTE1(v28[5]))
      {
        LOBYTE(v28[5]) = a3;
      }

      v17 = &v23;
      v18 = a1;
      v19 = v14;
      v20 = 1;
      v21 = 1;
      return createDataFromStatistics(v18, v19, v17, v20, v21, a6);
    }

    if (!FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() && !FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent())
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, DWORD2(v23), v24);
    }

    result = getValuesFromDictionary(v31, v29, a7, a8);
    if (!result)
    {
      if (!BYTE5(v29[6]))
      {
        BYTE4(v29[6]) = a3;
      }

      v17 = v29;
      v18 = a1;
      v19 = v14;
      v20 = v10;
      v21 = 0;
      return createDataFromStatistics(v18, v19, v17, v20, v21, a6);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VTHDRMetadataGenerationSession >>>>", 526, v8);
  }

  return result;
}

uint64_t getValuesFromDictionary(const void *a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  memset(&v47, 0, sizeof(v47));
  v45 = 0;
  v46 = 0;
  v44 = 0;
  memset(&rect, 0, sizeof(rect));
  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v8 = 1;
  }

  else
  {
    v8 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v9 = 1;
  }

  else
  {
    v9 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v10 = 1;
  }

  else
  {
    v10 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v11 = 1;
  }

  else
  {
    v11 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v12 = 1;
  }

  else
  {
    v12 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  v13 = v8 && v9 && v10;
  __asm { FMOV            V0.2D, #1.0 }

  if (v13 == 1)
  {
    v19 = vcltz_f32(__PAIR64__(v46, HIDWORD(v46)));
    v20.i64[0] = v19.i32[0];
    v20.i64[1] = v19.i32[1];
    v21 = vcvtq_f64_f32(__PAIR64__(v46, HIDWORD(v46)));
    v41 = vbicq_s8(vbslq_s8(vcgtq_f64(v21, _Q0), _Q0, v21), v20);
    v22 = *(&v45 + 1);
    if (*(&v45 + 1) > 1.0)
    {
      v22 = 1.0;
    }

    if (*(&v45 + 1) >= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
    v23 = 0.0;
    v41 = 0u;
  }

  if (v11 && v12)
  {
    v25 = vcltz_f32(__PAIR64__(v45, v44));
    v26.i64[0] = v25.i32[0];
    v26.i64[1] = v25.i32[1];
    v27 = vcvtq_f64_f32(__PAIR64__(v45, v44));
    v42 = vbicq_s8(vbslq_s8(vcgtq_f64(v27, _Q0), _Q0, v27), v26);
    v28 = 1;
  }

  else
  {
    v42 = 0u;
    v28 = 0;
  }

  value[0] = 0;
  if (!a1)
  {
    goto LABEL_41;
  }

  v29 = CFGetTypeID(a1);
  if (v29 != CFDictionaryGetTypeID() || !*MEMORY[0x1E6965F10])
  {
    getValuesFromDictionary_cold_8();
LABEL_41:
    v35 = 0;
    a4 = 0.0;
    a3 = 0.0;
    goto LABEL_42;
  }

  if (!CFDictionaryGetValueIfPresent(a1, *MEMORY[0x1E6965F10], value))
  {
    goto LABEL_41;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(value[0]) || !CGRectMakeWithDictionaryRepresentation(value[0], &rect))
  {
    goto LABEL_41;
  }

  rect = CGRectStandardize(rect);
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = a3;
  v49.size.height = a4;
  if (!CGRectContainsRect(v49, rect))
  {
    getValuesFromDictionary_cold_1(value);
    return LODWORD(value[0]);
  }

  width = rect.size.width;
  if (rect.size.width <= 0.0)
  {
    getValuesFromDictionary_cold_7(value);
    return LODWORD(value[0]);
  }

  height = rect.size.height;
  if (rect.size.height <= 0.0)
  {
    getValuesFromDictionary_cold_6(value);
    return LODWORD(value[0]);
  }

  if (rect.size.width > 8191.0)
  {
    getValuesFromDictionary_cold_5(value);
    return LODWORD(value[0]);
  }

  if (rect.size.height > 8191.0)
  {
    getValuesFromDictionary_cold_4(value);
    return LODWORD(value[0]);
  }

  x = rect.origin.x;
  if (rect.origin.x > 8191.0)
  {
    getValuesFromDictionary_cold_3(value);
    return LODWORD(value[0]);
  }

  y = rect.origin.y;
  if (rect.origin.y > 8191.0)
  {
    getValuesFromDictionary_cold_2(value);
    return LODWORD(value[0]);
  }

  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = a3;
  v50.size.height = a4;
  if (CGRectEqualToRect(*(&width - 2), v50))
  {
    goto LABEL_41;
  }

  v47 = rect;
  v35 = 1;
LABEL_42:
  v36 = FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent();
  if (FigCFDictionaryGetInt32IfPresent())
  {
    v37 = v42;
    v38 = 1;
    if (v13)
    {
LABEL_49:
      result = 0;
      *a2 = v41;
      *(a2 + 16) = v23;
      *(a2 + 24) = v37;
      *(a2 + 40) = 0;
      *(a2 + 44) = 0;
      *(a2 + 48) = 0;
      *(a2 + 52) = a3;
      *(a2 + 60) = a4;
      size = v47.size;
      *(a2 + 68) = v47.origin;
      *(a2 + 84) = size;
      *(a2 + 100) = 0;
      *(a2 + 101) = v38;
      *(a2 + 102) = v24;
      *(a2 + 103) = v36;
      *(a2 + 104) = v28;
      *(a2 + 105) = v35;
      *(a2 + 106) = 0;
      return result;
    }
  }

  else
  {
    v38 = 0;
    v37 = v42;
    if (v13)
    {
      goto LABEL_49;
    }
  }

  getValuesFromDictionary_cold_10(value);
  return LODWORD(value[0]);
}

uint64_t createDataFromStatistics(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v6 = *a3;
  if (*a3 < 0.0 || v6 > 4095.0)
  {
    createDataFromStatistics_cold_5(v140);
    return LODWORD(v140[0]);
  }

  v7 = *(a3 + 8);
  if (v7 < 0.0 || v7 > 4095.0)
  {
    createDataFromStatistics_cold_4(v140);
    return LODWORD(v140[0]);
  }

  v8 = *(a3 + 16);
  if (v8 < 0.0 || v8 > 4095.0)
  {
    createDataFromStatistics_cold_3(v140);
    return LODWORD(v140[0]);
  }

  if (v8 > v7)
  {
    createDataFromStatistics_cold_2(v140);
    return LODWORD(v140[0]);
  }

  if (v8 < v6)
  {
    createDataFromStatistics_cold_1(v140);
    return LODWORD(v140[0]);
  }

  v11 = a1 + 28672;
  if (a2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  *(a1 + 148) = v12;
  v13 = a1 + 148;
  v14 = *(a3 + 100);
  *(a1 + 152) = v14;
  if (a5 == 1)
  {
    v15 = *(a3 + 24);
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(a3 + 44);
    v19 = *(a3 + 48);
    v20 = *(a3 + 52);
    v21 = *(a3 + 60);
    v22 = *(a3 + 68);
    v23 = *(a3 + 76);
    v24 = *(a3 + 84);
    v25 = *(a3 + 92);
    v26 = *(a3 + 101);
    v27 = *(a3 + 103);
    v28 = *(a3 + 104);
    v29 = *(a3 + 105);
    v30 = *(a3 + 106);
    *(a1 + 36) = v6;
    *(a1 + 44) = v7;
    *(a1 + 52) = v8;
    *(a1 + 60) = v15;
    *(a1 + 68) = v16;
    *(a1 + 76) = v17;
    *(a1 + 80) = v18;
    *(a1 + 84) = v19;
    *(a1 + 88) = v20;
    *(a1 + 96) = v21;
    *(a1 + 104) = v22;
    *(a1 + 112) = v23;
    *(a1 + 120) = v24;
    *(a1 + 128) = v25;
    *(a1 + 136) = v14;
    *(a1 + 137) = v26;
    *(a1 + 139) = v27;
    *(a1 + 140) = v28;
    *(a1 + 141) = v29;
    *(a1 + 142) = v30;
    *(a1 + 152) = 0;
    *(a1 + 29276) = 0;
    *(a1 + 29268) = 0;
    if (v29)
    {
      v31 = vcvtad_u64_f64(v22);
      v32 = vcvtad_u64_f64(v23);
      *(a1 + 29414) = v31;
      *(a1 + 29418) = v32;
      *(a1 + 29416) = v20 - (v31 + vcvtad_u64_f64(v24));
      *(a1 + 29420) = v21 - (v32 + vcvtad_u64_f64(v25));
      *(a1 + 29272) = 1;
    }

    *(a1 + 29268) = 1;
    v33 = round(v6 * 4095.0);
    if (v33 <= 4095.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 4095.0;
    }

    v35 = v34;
    if (v33 < 0.0)
    {
      LOWORD(v35) = 0;
    }

    *(a1 + 29280) = v35;
    v36 = round(v7 * 4095.0);
    if (v36 <= 4095.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 4095.0;
    }

    v38 = v37;
    if (v36 < 0.0)
    {
      LOWORD(v38) = 0;
    }

    *(a1 + 29282) = v38;
    v39 = round(v8 * 4095.0);
    if (v39 <= 4095.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 4095.0;
    }

    v41 = v40;
    if (v39 < 0.0)
    {
      LOWORD(v41) = 0;
    }

    *(a1 + 29284) = v41;
    if (!v14)
    {
      goto LABEL_119;
    }

    setStaticDMData(a1);
    if (v27)
    {
      *(v11 + 736) = v17;
      *(v11 + 732) = v18;
      *(v11 + 734) = v19;
      *(v11 + 598) = 1;
    }

    if (!v28)
    {
      goto LABEL_119;
    }

    v42 = round(v16 * 4095.0);
    if (v42 <= 4095.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 4095.0;
    }

    v44 = v43;
    if (v42 < 0.0)
    {
      LOWORD(v44) = 0;
    }

    v45 = round(v15 * 4095.0);
    if (v45 <= 4095.0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 4095.0;
    }

    *(v11 + 738) = v44;
    if (v45 >= 0.0)
    {
      LOWORD(v47) = v46;
    }

    else
    {
      LOWORD(v47) = 0;
    }
  }

  else
  {
    if (*(a1 + 32) | a4)
    {
      *(a1 + 32) = 0;
      v48 = *(a3 + 52);
      v49 = *(a3 + 60);
      v50 = *(a3 + 68);
      v51 = *(a3 + 76);
      v52 = *(a3 + 84);
      v53 = *(a3 + 92);
      v54 = *(a3 + 100);
      v136 = *(a3 + 101);
      v137 = *(a3 + 103);
      v55 = *(a3 + 104);
      v56 = *(a3 + 105);
      v57 = *(a3 + 106);
      v58 = *(a3 + 48);
      v60 = *(a3 + 16);
      v59 = *(a3 + 32);
      *(a1 + 36) = *a3;
      *(a1 + 52) = v60;
      *(a1 + 68) = v59;
      *(a1 + 84) = v58;
      *(a1 + 88) = v48;
      *(a1 + 96) = v49;
      *(a1 + 104) = v50;
      *(a1 + 112) = v51;
      *(a1 + 120) = v52;
      *(a1 + 128) = v53;
      *(a1 + 136) = v54;
      *(a1 + 139) = v137;
      *(a1 + 137) = v136;
      *(a1 + 140) = v55;
      *(a1 + 141) = v56;
      *(a1 + 142) = v57;
      *(a1 + 152) = 0;
      *(a1 + 29276) = 0;
      *(a1 + 29268) = 0;
      if (v56)
      {
        v61 = vcvtad_u64_f64(v50);
        v62 = vcvtad_u64_f64(v51);
        *(a1 + 29414) = v61;
        *(a1 + 29418) = v62;
        *(a1 + 29416) = v48 - (v61 + vcvtad_u64_f64(v52));
        *(a1 + 29420) = v49 - (v62 + vcvtad_u64_f64(v53));
        *(a1 + 29272) = 1;
      }

      v63 = *(a1 + 36);
      v64 = *(a1 + 44);
      v138 = v64;
      v65 = *(a1 + 52);
      v139 = v65;
      v140[0] = v63;
      legalizeAndSetLevel1Values(a1, v140, &v139, &v138);
      if (!v54)
      {
        goto LABEL_119;
      }

      setStaticDMData(a1);
      v66 = round(((v65 - v139) + 1.0) * 2048.0);
      if (v66 >= 0.0)
      {
        v67 = v66 <= 4095.0 ? v66 : 4095;
      }

      else
      {
        v67 = 0;
      }

      *(v11 + 736) = v67;
      v98 = round(((v63 - v140[0]) + 1.0) * 2048.0);
      if (v98 >= 0.0)
      {
        v99 = v98 <= 4095.0 ? v98 : 4095;
      }

      else
      {
        v99 = 0;
      }

      *(v11 + 732) = v99;
      v100 = round(((v64 - v138) + 1.0) * 2048.0);
      if (v100 >= 0.0)
      {
        if (v100 <= 4095.0)
        {
          v101 = v100;
        }

        else
        {
          LOWORD(v101) = 4095;
        }
      }

      else
      {
        LOWORD(v101) = 0;
      }

      *(v11 + 734) = v101;
      *(v11 + 598) = 1;
      if (!v55)
      {
        goto LABEL_119;
      }

      v106 = round(*(a1 + 68) * 4095.0);
      if (v106 >= 0.0)
      {
        if (v106 <= 4095.0)
        {
          v107 = v106;
        }

        else
        {
          LOWORD(v107) = 4095;
        }
      }

      else
      {
        LOWORD(v107) = 0;
      }

      *(v11 + 738) = v107;
      v108 = *(a1 + 60);
    }

    else
    {
      v125 = *(a3 + 24);
      v126 = *(a3 + 32);
      v131 = *(a3 + 60);
      v132 = *(a3 + 52);
      v129 = *(a3 + 76);
      v130 = *(a3 + 68);
      v127 = *(a3 + 92);
      v128 = *(a3 + 84);
      v68 = *(a3 + 104);
      v69 = *(a3 + 105);
      *(a1 + 152) = 0;
      *(a1 + 29268) = 0;
      *(a1 + 29276) = 0;
      v135 = *(a1 + 144);
      v70 = *(a1 + 36);
      v71 = *(a1 + 44);
      v72 = *(a1 + 52);
      v123 = *(a1 + 60);
      v124 = *(a1 + 68);
      v73 = v6 - v70;
      if (v6 - v70 <= 0.0)
      {
        v73 = -(v6 - v70);
      }

      v74 = v73;
      v75 = 1.0 / (expf((v74 + -0.5) * -8.0) + 1.0);
      v134 = v75;
      v76 = v8 - v72;
      if (v8 - v72 <= 0.0)
      {
        v76 = -(v8 - v72);
      }

      v77 = v76;
      v78 = 1.0 / (expf((v77 + -0.25) * -32.0) + 1.0);
      v133 = v78;
      v79 = v7 - v71;
      if (v7 - v71 <= 0.0)
      {
        v79 = -(v7 - v71);
      }

      v80 = v79;
      v81 = -0.8;
      if (v71 < v7)
      {
        v81 = -0.125;
      }

      v82 = 1.0 / (expf((v81 + v80) * -8.0) + 1.0);
      v84 = v6;
      v85 = 0.8;
      if (v135 > 0.0)
      {
        v85 = 24.0 / v135;
      }

      if (v85 <= 1.0)
      {
        v86 = v85;
      }

      else
      {
        v86 = 1.0;
      }

      v83 = v70;
      v87 = ((v86 * v134) * v84) + ((1.0 - (v86 * v134)) * v83);
      *(a1 + 36) = v87;
      v88 = v72;
      v89 = v8;
      v90 = ((v86 * v133) * v89) + ((1.0 - (v86 * v133)) * v88);
      *(a1 + 52) = v90;
      v91 = v71;
      v92 = v7;
      v93 = ((v86 * v82) * v92) + ((1.0 - (v86 * v82)) * v91);
      *(a1 + 44) = v93;
      v139 = v90;
      v140[0] = v87;
      v138 = v93;
      legalizeAndSetLevel1Values(a1, v140, &v139, &v138);
      if (v69)
      {
        v94 = vcvtad_u64_f64(v130);
        *(v11 + 742) = v94;
        v95 = vcvtad_u64_f64(v129);
        *(v11 + 746) = v95;
        *(v11 + 744) = v132 - (v94 + vcvtad_u64_f64(v128));
        *(v11 + 748) = v131 - (v95 + vcvtad_u64_f64(v127));
        *(v11 + 600) = 1;
        *(a1 + 88) = v132;
        *(a1 + 96) = v131;
        *(a1 + 104) = v130;
        *(a1 + 112) = v129;
        *(a1 + 120) = v128;
        *(a1 + 128) = v127;
        *(a1 + 141) = 1;
      }

      if (!v14)
      {
        goto LABEL_119;
      }

      setStaticDMData(a1);
      v96 = round(((v90 - v139) + 1.0) * 2048.0);
      if (v96 >= 0.0)
      {
        v97 = v96 <= 4095.0 ? v96 : 4095;
      }

      else
      {
        v97 = 0;
      }

      *(v11 + 736) = v97;
      v102 = round(((v87 - v140[0]) + 1.0) * 2048.0);
      if (v102 >= 0.0)
      {
        v103 = v102 <= 4095.0 ? v102 : 4095;
      }

      else
      {
        v103 = 0;
      }

      *(v11 + 732) = v103;
      v104 = round(((v93 - v138) + 1.0) * 2048.0);
      if (v104 >= 0.0)
      {
        if (v104 <= 4095.0)
        {
          v105 = v104;
        }

        else
        {
          LOWORD(v105) = 4095;
        }
      }

      else
      {
        LOWORD(v105) = 0;
      }

      *(v11 + 734) = v105;
      *(v11 + 598) = 1;
      if (!v68)
      {
        goto LABEL_119;
      }

      v109 = v126 - v126;
      if (v126 - v126 <= 0.0)
      {
        v109 = -(v126 - v126);
      }

      v110 = v109 * 8.0 + 0.100000001;
      if (v110 >= 1.0)
      {
        v110 = 1.0;
      }

      v111 = v110;
      v112 = v123;
      v113 = v125;
      v114 = v86 * v111;
      v115 = 1.0 - (v86 * v111);
      v108 = (((v86 * v111) * v113) + (v115 * v112));
      *(a1 + 60) = v108;
      v116 = v124;
      v117 = v126;
      v118 = ((v114 * v117) + (v115 * v116));
      *(a1 + 68) = v118;
      *(a1 + 140) = 1;
      v119 = round(v118 * 4095.0);
      if (v119 >= 0.0)
      {
        if (v119 <= 4095.0)
        {
          v120 = v119;
        }

        else
        {
          v120 = 4095;
        }
      }

      else
      {
        v120 = 0;
      }

      *(v11 + 738) = v120;
    }

    v121 = round(v108 * 4095.0);
    if (v121 >= 0.0)
    {
      if (v121 <= 4095.0)
      {
        v47 = v121;
      }

      else
      {
        LOWORD(v47) = 4095;
      }
    }

    else
    {
      LOWORD(v47) = 0;
    }
  }

  *(v11 + 740) = v47;
  *(v11 + 599) = 1;
LABEL_119:

  return MEMORY[0x1EEDBD4C0](v13, a6);
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0u;
  v31 = 0u;
  if (*(a1 + 29765) || *(a1 + 29764))
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_1(&v35);
    return v35;
  }

  if (*a4 < 0.0 || *a4 > 1.0)
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_13(&v35);
    return v35;
  }

  v7 = *(a4 + 8);
  if (v7 < 0.0 || v7 > 1.0)
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_12(&v35);
    return v35;
  }

  v9 = *(a4 + 16);
  if (v9 < 0.0 || v9 > 1.0)
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_11(&v35);
    return v35;
  }

  v30[0] = *a4;
  *&v30[1] = v7;
  *&v30[2] = v9;
  BYTE14(v33[2]) = 1;
  BYTE12(v33[2]) = *(a4 + 100);
  if (*(a4 + 104))
  {
    v16 = *(a4 + 32);
    if (v16 < 0.0 || v16 > 1.0)
    {
      VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_3(&v35);
      return v35;
    }

    v17 = *(a4 + 24);
    if (v17 < 0.0 || v17 > 1.0)
    {
      VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_2(&v35);
      return v35;
    }

    LOBYTE(v34) = 1;
    *&v31 = v17;
    *(&v31 + 1) = v16;
  }

  if (*(a4 + 105))
  {
    v18 = *(a4 + 68);
    v19 = *(a4 + 76);
    if (v18 != 0.0 || v19 != 0.0 || *(a4 + 92) != 0.0 || *(a4 + 84) != 0.0)
    {
      v20 = *(a4 + 52);
      v21 = *(a4 + 60);
      v22 = *(a4 + 84);
      v23 = *(a4 + 92);
      v36 = CGRectStandardize(*&v18);
      x = v36.origin.x;
      y = v36.origin.y;
      width = v36.size.width;
      height = v36.size.height;
      *(v33 + 12) = v36;
      v36.origin.x = 0.0;
      v36.origin.y = 0.0;
      v36.size.width = v20;
      v36.size.height = v21;
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      if (CGRectContainsRect(v36, v38))
      {
        if (width <= 0.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_10(&v35);
        }

        else if (height <= 0.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_9(&v35);
        }

        else if (width > 8191.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_8(&v35);
        }

        else if (height > 8191.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_7(&v35);
        }

        else if (x > 8191.0)
        {
          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_6(&v35);
        }

        else
        {
          if (y <= 8191.0)
          {
            v39.origin.x = 0.0;
            v39.origin.y = 0.0;
            v37.origin.x = x;
            v37.origin.y = y;
            v37.size.width = width;
            v37.size.height = height;
            v39.size.width = v20;
            v39.size.height = v21;
            if (!CGRectEqualToRect(v37, v39))
            {
              BYTE1(v34) = 1;
            }

            goto LABEL_35;
          }

          VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_5(&v35);
        }
      }

      else
      {
        VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_4(&v35);
      }

      return v35;
    }
  }

LABEL_35:
  if (a5)
  {
    v28 = 1;
  }

  else
  {
    v28 = a3 == 0;
  }

  return createDataFromStatistics(a1, a2, v30, v28, a3 == 0, a6);
}

uint64_t VTHDRMetadataGenerationSessionInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    *(a1 + 16) = 1;
  }

  return 0;
}

uint64_t VTHDRMetadataGenerationSessionFinalize(uint64_t result)
{
  if (result)
  {
    if (!*(result + 16))
    {
      *(result + 16) = 1;
    }
  }

  return result;
}

__CFString *VTHDRMetadataGenerationSessionCopyDebugDesc(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTHDRMetadataGenerationSession %p [%p]>{invalid:%d, }", a1, v4, a1[16]);
  return Mutable;
}

double setStaticDMData(uint64_t a1)
{
  *(a1 + 29274) = 257;
  *(a1 + 29432) = 0xA00000002;
  *(a1 + 29440) = -1;
  *(a1 + 29442) = 0x80008A00800099ALL;
  *(a1 + 29450) = 134219776;
  *(a1 + 29472) = 10;
  *(a1 + 29476) = 20;
  *(a1 + 29478) = 0x800076C08000800;
  *(a1 + 29486) = 134219776;
  *(a1 + 29616) = 0;
  *(a1 + 29276) = 1;
  *&result = 0x500000002;
  *(a1 + 29636) = 0x500000002;
  *(a1 + 29644) = -1;
  *(a1 + 29646) = 3696;
  *(a1 + 29674) = 2672;
  *(a1 + 29650) = 2;
  *(a1 + 29668) = 5;
  *(a1 + 29672) = 20;
  *(a1 + 29678) = 2;
  *(a1 + 29277) = 257;
  *(a1 + 29752) = 4;
  *(a1 + 29753) = 0;
  *(a1 + 29757) = 2;
  *(a1 + 152) = 1;
  return result;
}

uint64_t legalizeAndSetLevel1Values(uint64_t result, float *a2, float *a3, float *a4)
{
  *a2 = fminf(*a2, 0.0029304);
  *a3 = fmaxf(*a3, 0.2);
  v4 = fmaxf(*a4, 0.50808);
  *a4 = v4;
  v5 = v4 + -0.000244200244;
  if (v5 <= *a3)
  {
    v6 = v5;
    v7 = v6;
  }

  else
  {
    v7 = *a3;
  }

  *a3 = v7;
  *(result + 29268) = 1;
  v8 = round(*a2 * 4095.0);
  if (v8 >= 0.0)
  {
    if (v8 <= 4095.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 4095;
    }
  }

  else
  {
    v9 = 0;
  }

  *(result + 29280) = v9;
  v10 = round(*a4 * 4095.0);
  if (v10 >= 0.0)
  {
    if (v10 <= 4095.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 4095;
    }
  }

  else
  {
    v11 = 0;
  }

  *(result + 29282) = v11;
  v12 = round(v7 * 4095.0);
  if (v12 >= 0.0)
  {
    if (v12 <= 4095.0)
    {
      v13 = v12;
    }

    else
    {
      LOWORD(v13) = 4095;
    }
  }

  else
  {
    LOWORD(v13) = 0;
  }

  *(result + 29284) = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CMBlockBufferRef blockBufferOut)
{

  return CMBlockBufferCreateEmpty(v10, 0, 0, &blockBufferOut);
}

uint64_t vtRegisterVideoDecoderInternal(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (VTParavirtualizationIsRunningInGuest(a1, a2))
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v11 = Mutable;
    CFDictionarySetValue(Mutable, @"CMClassID", @"com.apple.videotoolbox.videodecoder");
    CFDictionarySetValue(v11, @"CMClassImplementationName", a1);
    CFDictionarySetValue(v11, @"CMClassImplementationID", a2);
    FigCFDictionarySetInt64();
    CFDictionarySetValue(v11, @"CMMatchingInfo", a3);
    if (a4)
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (!a5)
      {
LABEL_9:
        CFRelease(v11);
        return 0;
      }

      v12 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v11, @"VTFactoryFunctionHasSpecificationArgument", *v12);
    FigRegistryAddItem();
    goto LABEL_9;
  }

  vtRegisterVideoDecoderInternal_cold_1(&v14);
  return v14;
}

uint64_t vtPopulateVideoDecoderRegistry()
{
  MEMORY[0x193AE3010](&sInitializeVideoDecoderRegistryOnce, vtInitializeVideoDecoderRegistry);
  FigSimpleMutexLock();
  if (_MergedGlobals_6 == 1)
  {
    vtLoadParavirtualizedVideoDecoders();
    _MergedGlobals_6 = 0;
  }

  return FigSimpleMutexUnlock();
}

void vtPrintRegisteredVideoDecoders()
{
  v0 = *MEMORY[0x1E69E9840];
  if (sVideoDecoderRegistry)
  {
    FigRegistryCopyItemList();
  }
}

CFMutableArrayRef VTCopyVideoDecoderRegistryMatchArrayForCodecType(unsigned int a1)
{
  v7 = 0;
  v8 = 0;
  *bytes = bswap32(a1);
  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  Mutable = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (v2)
  {
    if (!Mutable)
    {
      VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_1();
      goto LABEL_7;
    }

    vtPopulateVideoDecoderRegistry();
    v7 = v2;
    FigRegistryCopyFilteredItemList();
  }

  else
  {
    VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_2(&v9);
    if (v9 && v4)
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

  return v4;
}

uint64_t VTCopyVideoDecoderList(uint64_t a1, const __CFArray **a2)
{
  v52 = 0;
  v53 = 0;
  v51 = 0uLL;
  v50 = 0;
  v48 = 0;
  bundle = 0;
  theDict = 0;
  MEMORY[0x193AE3010](&sCreateVideoDecoderRegistryOnce, vtCreateVideoDecoderRegistry);
  if (!sVideoDecoderRegistry)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954390, "<<<< VTVideoDecoderSelection >>>>", 5445, v2);
  }

  v4 = vtPopulateVideoDecoderRegistry();
  VTParavirtualizationIsRunningInGuest(v4, v5);
  v6 = FigRegistryCopyFilteredItemList();
  if (v6)
  {
    v40 = v6;
    Mutable = 0;
    goto LABEL_58;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"EnableHardwareAcceleratedVideoDecoder", *MEMORY[0x1E695E4D0]);
  if (VTParavirtualizationIsRunningInGuest(v9, v10))
  {
    BYTE1(v52) = 1;
  }

  *(&v51 + 1) = Mutable;
  v11 = vtCopyExpandedDecoderListForWrappers(v53, &v51, &v50, 0);
  if (v11)
  {
    v40 = v11;
    goto LABEL_58;
  }

  v12 = v53;
  v41 = a2;
  v42 = Mutable;
  if (v50)
  {
    if (v53)
    {
      CFRelease(v53);
    }

    v12 = v50;
    v53 = v50;
    v50 = 0;
  }

  Count = CFArrayGetCount(v12);
  v16 = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
  v17 = v16;
  if (Count < 1)
  {
LABEL_57:
    v56.length = CFArrayGetCount(v17);
    v56.location = 0;
    CFArraySortValues(v17, v56, vtCompareCodecName, 0);
    v40 = 0;
    Mutable = v42;
    *v41 = v17;
    goto LABEL_58;
  }

  v18 = 0;
  theArray = v16;
  v43 = Count;
  while (1)
  {
    CFArrayGetValueAtIndex(v53, v18);
    valuePtr = 0;
    v19 = FigRegistryItemCopyDescription();
    if (v19)
    {
      break;
    }

    v19 = FigRegistryItemCopyMatchingInfo();
    if (v19)
    {
      break;
    }

    v19 = FigRegistryItemCopyBundle();
    if (v19)
    {
      break;
    }

    Value = CFDictionaryGetValue(theDict, @"VTCodecType");
    if (Value)
    {
      v21 = Value;
      v22 = CFGetTypeID(Value);
      if (v22 == CFArrayGetTypeID() || (v23 = CFGetTypeID(v21), v23 == CFStringGetTypeID()))
      {
        v24 = CFDictionaryGetValue(v48, @"CMClassImplementationID");
        if (v24)
        {
          v25 = v24;
          TypeID = CFStringGetTypeID();
          if (TypeID == CFGetTypeID(v25))
          {
            v27 = CFDictionaryGetValue(v48, @"CMClassImplementationName");
            if (bundle)
            {
              v44 = CFBundleCopyLocalizedString(bundle, v27, 0, 0);
            }

            else
            {
              v44 = 0;
            }

            v29 = CFGetTypeID(v21);
            if (v29 == CFStringGetTypeID())
            {
              v30 = 1;
LABEL_40:
              for (i = 0; i != v30; ++i)
              {
                v32 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                FigCFDictionarySetValue();
                v33 = CFGetTypeID(v21);
                if (v33 == CFStringGetTypeID())
                {
                  ValueAtIndex = v21;
                }

                else
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
                }

                CFStringGetCString(ValueAtIndex, buffer, 5, 0x600u);
                valuePtr = bswap32(*buffer);
                v35 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                FigCFDictionarySetValue();
                v36 = CFDictionaryGetValue(theDict, @"VTRating");
                if (v36)
                {
                  v37 = v36;
                  CFRetain(v36);
                  FigCFDictionarySetValue();
                  CFRelease(v37);
                }

                else
                {
                  FigCFDictionarySetValue();
                }

                v38 = CFDictionaryGetValue(theDict, @"VTIsHardwareAccelerated");
                if (v38)
                {
                  v39 = v38;
                  CFRetain(v38);
                  FigCFDictionarySetValue();
                  CFRelease(v39);
                }

                else
                {
                  FigCFDictionarySetValue();
                }

                v17 = theArray;
                CFArrayAppendValue(theArray, v32);
                if (v32)
                {
                  CFRelease(v32);
                }

                if (v35)
                {
                  CFRelease(v35);
                }
              }

              Count = v43;
            }

            else
            {
              v30 = CFArrayGetCount(v21);
              if (v30 >= 1)
              {
                goto LABEL_40;
              }
            }

            v28 = v44;
            goto LABEL_26;
          }
        }
      }
    }

    v28 = 0;
LABEL_26:
    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    if (v48)
    {
      CFRelease(v48);
      v48 = 0;
    }

    if (bundle)
    {
      CFRelease(bundle);
      bundle = 0;
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (++v18 == Count)
    {
      goto LABEL_57;
    }
  }

  v40 = v19;
  Mutable = v42;
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_58:
  if (v53)
  {
    CFRelease(v53);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (bundle)
  {
    CFRelease(bundle);
  }

  return v40;
}

uint64_t vtCodecTypeStringIsEligibleForParavirtualization(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  result = CFStringGetCString(a1, buffer, 5, 0x600u);
  if (!result)
  {
    return result;
  }

  v4 = buffer[0];
  v5 = buffer[1];
  v6 = buffer[2];
  v7 = buffer[3];
  return FigDebugIsInternalBuild() || (_os_feature_enabled_impl() & 1) != 0 || !FigCodecTypeIsProtected((v5 << 16) | (v4 << 24) | (v6 << 8) | v7);
}

void vtParavirtualizationAppendDecoderDescription(__CFArray *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, @"CMClassImplementationName", a4);
  CFDictionarySetValue(Mutable, @"CMClassImplementationID", a5);
  FigCFDictionarySetValue();
  FigCFDictionarySetBoolean();
  CFArrayAppendValue(a1, Mutable);

  CFRelease(Mutable);
}

uint64_t FigCodecTypeIsProtected(int a1)
{
  result = 1;
  if (a1 <= 1902207794)
  {
    if (a1 <= 1685220712)
    {
      if (a1 <= 1667524656)
      {
        if (a1 <= 1667326823)
        {
          if (a1 == 1633771875 || a1 == 1667312947)
          {
            return result;
          }

          v4 = 24931;
        }

        else if (a1 > 1667330146)
        {
          if (a1 == 1667330147)
          {
            return result;
          }

          v4 = 30307;
        }

        else
        {
          if (a1 == 1667326824)
          {
            return result;
          }

          v4 = 25456;
        }

        v5 = v4 | 0x63610000;
        goto LABEL_81;
      }

      if (a1 <= 1667656802)
      {
        if (a1 != 1667524657 && a1 != 1667574579)
        {
          v5 = 1667575091;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1668047202)
      {
        if (a1 == 1668047203)
        {
          return result;
        }

        v5 = 1668641633;
      }

      else
      {
        if (a1 == 1667656803)
        {
          return result;
        }

        v5 = 1667790435;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885430578)
    {
      if (a1 <= 1701733237)
      {
        if (a1 != 1685220713 && a1 != 1700886115)
        {
          v5 = 1701733217;
          goto LABEL_81;
        }

        return result;
      }

      if (a1 > 1882599479)
      {
        if (a1 == 1882599480)
        {
          return result;
        }

        v5 = 1885430115;
      }

      else
      {
        if (a1 == 1701733238)
        {
          return result;
        }

        v5 = 1869117027;
      }

      goto LABEL_81;
    }

    if (a1 <= 1885547314)
    {
      v8 = a1 - 1885430579;
      if (v8 > 0x3D || ((1 << v8) & 0x2020000000000001) == 0)
      {
        return 0;
      }

      return result;
    }

    if (a1 <= 1886745440)
    {
      if (a1 == 1885547315)
      {
        return result;
      }

      v5 = 1885692723;
      goto LABEL_81;
    }

    if (a1 == 1886745441)
    {
      return result;
    }

    v6 = 24931;
LABEL_73:
    v5 = v6 | 0x71610000;
    goto LABEL_81;
  }

  if (a1 <= 1902667125)
  {
    if (a1 > 1902324530)
    {
      if (a1 <= 1902405732)
      {
        if (a1 == 1902324531 || a1 == 1902403958)
        {
          return result;
        }

        v7 = 26673;
      }

      else
      {
        if (a1 > 1902469938)
        {
          if (a1 == 1902469939)
          {
            return result;
          }

          v5 = 1902537827;
          goto LABEL_81;
        }

        if (a1 == 1902405733)
        {
          return result;
        }

        v7 = 28024;
      }

      v5 = v7 | 0x71640000;
      goto LABEL_81;
    }

    if ((a1 - 1902207795) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0 || (a1 - 1902212657) <= 0x34 && ((1 << (a1 - 49)) & 0x14000000000001) != 0)
    {
      return result;
    }

    v6 = 28771;
    goto LABEL_73;
  }

  if (a1 <= 2053202738)
  {
    if (a1 <= 1902998903)
    {
      if (a1 != 1902667126 && a1 != 1902671459)
      {
        v5 = 1902928227;
        goto LABEL_81;
      }

      return result;
    }

    if (a1 > 1903587384)
    {
      if (a1 == 1903587385)
      {
        return result;
      }

      v3 = 24931;
      goto LABEL_76;
    }

    if (a1 == 1902998904)
    {
      return result;
    }

    v5 = 1903522657;
LABEL_81:
    if (a1 == v5)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 2053319474)
  {
    if (a1 > 2053923170)
    {
      if (a1 == 2053923171)
      {
        return result;
      }

      v5 = 2054517601;
    }

    else
    {
      if (a1 == 2053319475)
      {
        return result;
      }

      v5 = 2053464883;
    }

    goto LABEL_81;
  }

  if ((a1 - 2053202739) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
  {
    v3 = 30307;
LABEL_76:
    v5 = v3 | 0x7A610000;
    goto LABEL_81;
  }

  return result;
}

void vtInitializeVideoDecoderRegistry(uint64_t a1)
{
  if (qword_1ED6D4068 != -1)
  {
    vtInitializeVideoDecoderRegistry_cold_1();
  }

  v1 = byte_1ED6D4061;
  sVideoDecoderRegistryMutex = FigSimpleMutexCreate();
  MEMORY[0x193AE3010](&sCreateVideoDecoderRegistryOnce, vtCreateVideoDecoderRegistry);
  if (FigIsHDRAllowedOnDevice())
  {
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x64766831u, 0, @"DolbyVision (HEVC)", @"com.apple.videotoolbox.videodecoder.dolbyvision.hevc", 8, @"hvc1", DolbyVisionDecoder_CreateInstance, v2, 0);
    v3 = _os_feature_enabled_impl();
    if ((v3 & 1) != 0 || VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults(v3, v4))
    {
      vtRegisterVideoDecoderWithInfoKeysAndValues(0x646D7578u, 0, @"DolbyVision (HEVC) with Muxed Alpha", @"com.apple.videotoolbox.videodecoder.dolbyvision.hevc-with-alpha", 8, @"muxa", DolbyVisionDecoder_CreateInstance, v5, 0);
    }

    vtRegisterVideoDecoderWithInfoKeysAndValues(0x64617631u, 0, @"DolbyVision (AV1)", @"com.apple.videotoolbox.videodecoder.dolbyvision.av1", 8, @"av01", DolbyVisionDecoder_CreateInstance, v5, 0);
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x71646176u, 0, @"Protected DolbyVision (AV1 cbcs)", @"com.apple.videotoolbox.videodecoder.dolbyvision.qda1", 8, @"qav1", DolbyVisionDecoder_CreateInstance, v6, 0);
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x71646831u, 0, @"Protected DolbyVision (HEVC cbcs)", @"com.apple.videotoolbox.videodecoder.dolbyvision.qdh1", 8, @"qhvc", DolbyVisionDecoder_CreateInstance, v7, 0);
    v8 = _os_feature_enabled_impl();
    if (v8 && (v8 = _os_feature_enabled_impl(), (v8 & 1) != 0) || VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults(v8, v9))
    {
      vtRegisterVideoDecoderWithInfoKeysAndValues(0x71646D78u, 0, @"Protected DolbyVision (HEVC cbcs) with Muxed Alpha", @"com.apple.videotoolbox.videodecoder.dolbyvision.qdmx", 8, @"qmux", DolbyVisionDecoder_CreateInstance, v10, 0);
    }

    vtRegisterVideoDecoderWithInfoKeysAndValues(0x63646831u, 0, @"Protected DolbyVision (HEVC)", @"com.apple.videotoolbox.videodecoder.dolbyvision.cdh1", 8, @"chvc", DolbyVisionDecoder_CreateInstance, v10, 0);
  }

  vtRegisterVideoDecoderWithInfoKeysAndValues(0x6A706567u, 4294967276, @"JPEG applejpeg", @"com.apple.videotoolbox.videodecoder.jpeg.applejpeg", 0, 0, AppleJPEGVideoDecoder_CreateInstance, v2, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x6A706567u, 4294967266, @"JPEG", @"com.apple.videotoolbox.videodecoder.jpeg", 0, 0, JPEGVideoDecoder_CreateInstance, v11, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x646D6231u, 4294967276, @"OpenDML JPEG applejpeg", @"com.apple.videotoolbox.videodecoder.dmb1.applejpeg", 0, 0, AppleJPEGVideoDecoder_CreateInstance, v12, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x646D6231u, 4294967266, @"OpenDML JPEG", @"com.apple.videotoolbox.videodecoder.dmb1", 0, 0, JPEGVideoDecoder_CreateInstance, v13, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x69706220u, 0, @"Test IPB", @"com.apple.videotoolbox.videodecoder.ipb", 0, 0, TestIPBVideoDecoder_CreateInstance, v14, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x6D757861u, 0, @"Muxed Alpha", @"com.apple.videotoolbox.videodecoder.hevc-with-alpha", 8, @"hvc1", MuxedAlphaDecoder_CreateInstance, v15, 0);
  v16 = _os_feature_enabled_impl();
  if ((v16 & 1) != 0 || VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults(v16, v17))
  {
    vtRegisterVideoDecoderWithInfoKeysAndValues(0x716D7578u, 0, @"Muxed Alpha (CBCS)", @"com.apple.videotoolbox.videodecoder.cbcs-hevc-with-alpha", 8, @"qhvc", MuxedAlphaDecoder_CreateInstance, v18, 0);
  }

  vtRegisterVideoDecoderWithInfoKeysAndValues(0x64697368u, 0, @"Disparity", @"com.apple.videotoolbox.videodecoder.disparity-hevc", 8, @"hvc1", DepthWrapperDecoder_CreateInstance, v18, 0);
  vtRegisterVideoDecoderWithInfoKeysAndValues(0x64657068u, 0, @"Depth", @"com.apple.videotoolbox.videodecoder.depth-hevc", 8, @"hvc1", DepthWrapperDecoder_CreateInstance, v19, 0);
  if (v1)
  {
    VTLoadVideoDecodersPreferringInternalBundles();
  }

  else
  {
    VTLoadVideoDecoders();
  }

  if (!VTAvoidHardwareDecoders())
  {

    vtLoadParavirtualizedVideoDecoders();
  }
}

uint64_t vtGetPreferInternalDecoders(_BYTE *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

void vtRegisterVideoDecoderWithInfoKeysAndValues(unsigned int a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a5;
  *bytes = bswap32(a1);
  v15 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  if (v15)
  {
    v16 = v15;
    vtRegisterVideoDecoderWithInfoKeysAndValuesInternal2(v15, a2, a3, a4, v11, a6, a7, 0, &a9);
    CFRelease(v16);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, &a9);
  }
}

uint64_t vtRegisterVideoDecoderWithInfoKeysAndValuesInternal2(uint64_t a1, uint64_t a2, const void *a3, const void *a4, char a5, const void *a6, uint64_t a7, uint64_t a8, const void **a9)
{
  v15 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v17 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    v18 = MEMORY[0x1E695E4C0];
    if (a5)
    {
      CFDictionarySetValue(v17, @"VTAllowSandboxedDecode", *MEMORY[0x1E695E4C0]);
    }

    v19 = MEMORY[0x1E695E4D0];
    if ((a5 & 2) != 0)
    {
      v20 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v20 = v18;
    }

    CFDictionarySetValue(v17, @"VTIsHardwareAccelerated", *v20);
    if ((a5 & 8) != 0)
    {
      CFDictionarySetValue(v17, @"VTIsWrapperDecoder", *v19);
      if (a6)
      {
        CFDictionarySetValue(v17, @"VTWrapsCodecType", a6);
      }
    }

    if ((a5 & 0x10) != 0)
    {
      CFDictionarySetValue(v17, @"VTIsParavirtualized", *v19);
    }

    v21 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v21)
    {
      v22 = v21;
      v39 = a9 + 1;
      v24 = *a9;
      if (*a9)
      {
        do
        {
          v25 = v39;
          v40 = v39 + 1;
          v26 = *v25;
          if (*v25)
          {
            v27 = CFEqual(v24, @"VTHostDecoderID");
            v28 = v17;
            if (!v27)
            {
              v29 = CFEqual(v24, @"VTDecoderCapabilities");
              v28 = v17;
              if (!v29)
              {
                if (CFEqual(v24, @"IsPreferredInternalPlugin"))
                {
                  v28 = v17;
                }

                else
                {
                  v28 = v22;
                }
              }
            }

            CFDictionarySetValue(v28, v24, v26);
          }

          v30 = v40;
          v39 = v40 + 1;
          v24 = *v30;
        }

        while (*v30);
      }

      if (CFDictionaryGetCount(v22) >= 1)
      {
        CFDictionarySetValue(v17, @"VTRequiredSpecificationEntries", v22);
      }

      v31 = vtRegisterVideoDecoderInternal(a3, a4, v17, a7, a8);
      CFRelease(v17);
      v32 = v22;
    }

    else
    {
      fig_log_get_emitter();
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, a8, v37);
      v32 = v17;
    }

    CFRelease(v32);
    return v31;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<<<< VTVideoDecoderSelection >>>>", 1628, v9);
  }
}

void __vtLoadParavirtualizedVideoDecoders_block_invoke()
{
  v0 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  xmmword_1ED6D4078 = CFUUIDGetUUIDBytes(v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t vtUnregisterParavirtualizedVideoDecoders()
{
  if (sVideoDecoderRegistry)
  {
    v1 = FigRegistryCopyFilteredItemList();
    if (v1)
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954390, "<<<< VTVideoDecoderSelection >>>>", 2367, v0);
  }
}

const __CFDictionary *vtCheckRequiredSpecificationKey(void *key, const void *a2, uint64_t a3)
{
  result = *a3;
  if (!*a3 || (result = CFDictionaryGetValue(result, key), !a2) || !result || (result = CFEqual(result, a2), !result))
  {
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4(CFIndex range)
{
  v5.length = range;
  v4 = *v1;
  v5.location = 0;

  return CFArrayContainsValue(v2, v5, v4);
}

uint64_t OUTLINED_FUNCTION_8_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char buffer)
{
  v18 = *v16;

  return CFStringGetCString(v18, &buffer, 5, 0x600u);
}

void OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  vtParavirtualizationAppendDecoderDescription(v9, v7, a3, v8, v6, a6);
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return FigCFDictionaryCreateMutableCopy();
}

uint64_t vtscr_Register()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_7 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_Create(uint64_t a1, uint64_t a2, int a3, int a4, int a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v14 = vtcsr_oneTimeInitialization();
  if (v14)
  {
    v24 = v14;
    v22 = 0;
    goto LABEL_21;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTCompressionSessionRemote_Create_cold_1(&v27);
    v22 = 0;
    v24 = v27;
    goto LABEL_21;
  }

  v16 = Instance;
  *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v16 + 32) = 0;
  *(v16 + 112) = a10;
  *(v16 + 184) = a11;
  *(v16 + 80) = dispatch_group_create();
  *(v16 + 88) = FigDispatchQueueCreateWithPriority();
  *(v16 + 72) = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
  *(v16 + 136) = FigSemaphoreCreate();
  *(v16 + 168) = FigSemaphoreCreate();
  *(v16 + 216) = 1;
  v17 = FigSemaphoreCreate();
  *(v16 + 48) = v17;
  v19 = MEMORY[0x1E695E480];
  if (a6)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(v17, v18))
    {
      if (CFDictionaryContainsKey(a6, @"CMSession"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*v19, 0, a6);
        if (!MutableCopy)
        {
          v24 = 0;
          v22 = 0;
          goto LABEL_23;
        }

        v21 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"CMSession");
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = 0;
  }

  if (a7 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || a9 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (*(v16 + 240) = 0, CFDataFromCFPropertyList = weakReferenceTable_AddPointerAndGetKey(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCGetServerConnectionInfo(), CFDataFromCFPropertyList))
  {
LABEL_22:
    v24 = CFDataFromCFPropertyList;
    goto LABEL_23;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v24 = 0;
  if (a12)
  {
    *a12 = v16;
LABEL_21:
    v25 = vtcsr_handleMachErrorsInternal(0, v24, "VTCompressionSessionRemote_Create", 0);
    goto LABEL_24;
  }

LABEL_23:
  v25 = vtcsr_handleMachErrorsInternal(v16, v24, "VTCompressionSessionRemote_Create", 0);
  CFRelease(v16);
LABEL_24:
  if (v22)
  {
    CFRelease(v22);
  }

  return v25;
}

uint64_t vtcsr_oneTimeInitialization()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_oneTimeInitialization_block_invoke;
  block[3] = &unk_1E72C8108;
  block[4] = &v3;
  if (vtcsr_oneTimeInitialization_once != -1)
  {
    dispatch_once(&vtcsr_oneTimeInitialization_once, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t weakReferenceTable_AddPointerAndGetKey()
{
  MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteCompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization);
  if (gWeakReferenceTable_RemoteCompressionSessionClient)
  {

    return MEMORY[0x1EEDBC840]();
  }

  else
  {
    weakReferenceTable_AddPointerAndGetKey_cold_1(&v1);
    return v1;
  }
}

void vtcsr_handleDeadServerConnection(uint64_t a1, uint64_t a2)
{
  *(a2 + 28) = 1;
  dispatch_group_enter(*(a2 + 80));
  CFRetain(a2);
  v3 = *(a2 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_handleDeadServerConnection_block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = a2;
  dispatch_async(v3, block);
}

uint64_t vtcsr_handleMachErrorsInternal(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a2 <= 268435458)
  {
    if (a2 != -308 && a2 != -303)
    {
      goto LABEL_13;
    }
  }

  else if ((a2 - 268435459) >= 2 && a2 != 268451843)
  {
LABEL_13:
    v5 = a2;
    goto LABEL_14;
  }

  if (a1)
  {
    a1 = FigCFWeakReferenceHolderCopyReferencedObject();
    v4[28] = 1;
    if (a1)
    {
      CFRelease(a1);
    }

    v5 = 4294954384;
LABEL_14:
    if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(a1, a2))
    {
      goto LABEL_17;
    }

    return v5;
  }

  if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(0, a2))
  {
    v5 = 4294954384;
LABEL_17:
    FigRPCKillServerOnTimeout();
    return v5;
  }

  return 4294954384;
}

void *VTCompressionSessionRemote_Invalidate(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(result + 60))
  {
    return result;
  }

  *(result + 60) = 1;
  v5 = *(result + 6);
  if (v5 && *(v4 + 96))
  {
    if (*(v4 + 120))
    {
      if (VTCompressionSessionRemoteClient_CompleteTiles(v5))
      {
LABEL_8:
        if (*(v4 + 88))
        {
          vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(v4, 1, 1);
        }

        FigSemaphoreWaitRelative();
        FigSemaphoreSignal();
        VTCompressionSessionRemoteClient_Destroy(*(v4 + 24), v6, v7);
        goto LABEL_11;
      }
    }

    else if (*(v4 + 32) == 2)
    {
      if (VTCompressionSessionRemoteClient_CompleteMotionEstimation(v5))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = *MEMORY[0x1E6960C70];
      v14 = *(MEMORY[0x1E6960C70] + 16);
      if (VTCompressionSessionRemoteClient_CompleteFrames(v5, &v13))
      {
        goto LABEL_8;
      }
    }

    FigSemaphoreWaitRelative();
    goto LABEL_8;
  }

LABEL_11:
  if (*(v4 + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigRPCDisposeServerConnection();
    *(v4 + 16) = 0;
  }

  v8 = *(v4 + 80);
  if (v8)
  {
    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = *(v4 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(v4 + 64) = 0;
  }

  v10 = *(v4 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(v4 + 104) = 0;
  }

  v11 = *(v4 + 200);
  if (v11)
  {
    CFRelease(v11);
    *(v4 + 200) = 0;
  }

  v12 = *(v4 + 208);
  if (v12)
  {
    CFRelease(v12);
    *(v4 + 208) = 0;
  }

  return weakReferenceTable_RemovePointer((v4 + 240));
}

uint64_t vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(uint64_t a1, char a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke;
  block[3] = &unk_1E72C8130;
  v10 = a2;
  block[4] = &v11;
  block[5] = a1;
  dispatch_group_async(v5, v6, block);
  if (a3)
  {
    dispatch_group_wait(*(a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void *weakReferenceTable_RemovePointer(void *result)
{
  if (*result)
  {
    v1 = result;
    MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteCompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization);
    if (gWeakReferenceTable_RemoteCompressionSessionClient)
    {
      result = FigCFWeakReferenceTableRemoveValue();
      *v1 = 0;
    }

    else
    {
      return weakReferenceTable_RemovePointer_cold_1();
    }
  }

  return result;
}

uint64_t VTCompressionSessionRemote_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954384;
    v6 = 1030;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v5, "<<<< CompressionSessionRemote >>>>", v6, v4);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954393;
    v6 = 1033;
    goto LABEL_5;
  }

  CFPropertyListFromData = VTCompressionSessionRemoteClient_CopySupportedPropertyDictionary(*(a1 + 24), &v13, &v12, &v14);
  if (CFPropertyListFromData)
  {
    goto LABEL_11;
  }

  v10 = v14;
  if (!v14)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_11:
    v10 = CFPropertyListFromData;
  }

  v11 = vtcsr_handleMachErrorsInternal(a1, v10, "VTCompressionSessionRemote_CopySupportedPropertyDictionary", 0);
  if (v12)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v13);
  }

  return v11;
}

uint64_t VTCompressionSessionRemote_CopySerializableProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954384;
    v7 = 1068;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< CompressionSessionRemote >>>>", v7, v5);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 1071;
    goto LABEL_5;
  }

  CFPropertyListFromData = VTCompressionSessionRemoteClient_CopySerializableProperties(*(a1 + 24), &v14, &v13, &v15);
  if (CFPropertyListFromData)
  {
    goto LABEL_11;
  }

  v11 = v15;
  if (!v15)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_11:
    v11 = CFPropertyListFromData;
  }

  v12 = vtcsr_handleMachErrorsInternal(a1, v11, "VTCompressionSessionRemote_CopySerializableProperties", 0);
  if (v13)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v14);
  }

  return v12;
}

uint64_t VTCompressionSessionRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v6 = v4;
    v7 = 4294954384;
    v8 = 1109;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<<<< CompressionSessionRemote >>>>", v8, v6);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v6 = v4;
    v7 = 4294954393;
    v8 = 1112;
    goto LABEL_5;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  CFPropertyListFromData = VTCompressionSessionRemoteClient_CopyProperty(*(a1 + 24), CStringPtrAndBufferToFree, &v17, &v16, &v18);
  if (CFPropertyListFromData)
  {
    goto LABEL_11;
  }

  v14 = v18;
  if (!v18)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_11:
    v14 = CFPropertyListFromData;
  }

  free(0);
  v15 = vtcsr_handleMachErrorsInternal(a1, v14, "VTCompressionSessionRemote_CopyProperty", a2);
  if (v16)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v17);
  }

  return v15;
}

uint64_t VTCompressionSessionRemote_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  v22 = 0;
  if (!*(a1 + 28))
  {
    if (*(a1 + 60))
    {
      emitter = fig_log_get_emitter();
      v5 = v3;
      v6 = 4294954393;
      v7 = 1160;
      goto LABEL_5;
    }

    if (FigCFEqual())
    {
      v12 = *(a1 + 224);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 224) = 0;
      }
    }

    if (CFEqual(@"MultiPassStorage", a2))
    {
      if (a3 && (v13 = *(a3 + 16)) != 0)
      {
        v14 = *(v13 + 24);
      }

      else
      {
        v14 = 0;
      }

      v15 = VTCompressionSessionRemoteClient_SetMultiPassStorage(*(a1 + 24), v14, &v22);
    }

    else
    {
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      CFGetAllocator(a1);
      CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
      if (CFDataFromCFPropertyList)
      {
        v21 = CFDataFromCFPropertyList;
LABEL_22:
        free(0);
        return vtcsr_handleMachErrorsInternal(a1, v21, "VTCompressionSessionRemote_SetProperty", a2);
      }

      v18 = *(a1 + 24);
      BytePtr = CFDataGetBytePtr(0);
      Length = CFDataGetLength(0);
      v15 = VTCompressionSessionRemoteClient_SetProperty(v18, CStringPtrAndBufferToFree, BytePtr, Length, &v22);
    }

    if (v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = v22;
    }

    goto LABEL_22;
  }

  emitter = fig_log_get_emitter();
  v5 = v3;
  v6 = 4294954384;
  v7 = 1157;
LABEL_5:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< CompressionSessionRemote >>>>", v7, v5);
}

uint64_t VTCompressionSessionRemote_SetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v24 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954384;
    v6 = 1230;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v5, "<<<< CompressionSessionRemote >>>>", v6, v4);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954393;
    v6 = 1233;
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(theDict, @"MultiPassStorage");
  if (!Value)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v11 = Value[2];
  if (v11)
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = 0;
  }

  v14 = VTCompressionSessionRemoteClient_SetMultiPassStorage(*(a1 + 24), v12, &v24);
  if (v14)
  {
    v15 = v14;
    goto LABEL_23;
  }

  v15 = v24;
  if (v24)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  if (CFDictionaryGetCount(theDict) < 2)
  {
    v15 = 0;
    goto LABEL_23;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  if (MutableCopy)
  {
    v17 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, @"MultiPassStorage");
    v13 = v17;
LABEL_18:
    CFGetAllocator(a1);
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v15 = CFDataFromCFPropertyList;
    }

    else
    {
      v19 = *(a1 + 24);
      BytePtr = CFDataGetBytePtr(0);
      Length = CFDataGetLength(0);
      v22 = VTCompressionSessionRemoteClient_SetProperties(v19, BytePtr, Length, &v24);
      if (v22)
      {
        v15 = v22;
      }

      else
      {
        v15 = v24;
      }
    }

    goto LABEL_24;
  }

  VTCompressionSessionRemote_SetProperties_cold_1(&v25);
  v13 = 0;
  v15 = v25;
LABEL_24:
  v23 = vtcsr_handleMachErrorsInternal(a1, v15, "VTCompressionSessionRemote_SetProperties", 0);
  if (v13)
  {
    CFRelease(v13);
  }

  return v23;
}

CVPixelBufferPoolRef VTCompressionSessionRemote_GetPixelBufferPool(CVPixelBufferPoolRef *cf)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (*(cf + 28))
  {
    VTCompressionSessionRemote_GetPixelBufferPool_cold_1(v19);
  }

  else
  {
    if (!*(cf + 60))
    {
      v2 = CFGetAllocator(cf);
      v17 = 0;
      cfa = 0;
      v3 = *MEMORY[0x1E6966050];
      v19[0] = *MEMORY[0x1E69660F8];
      v19[1] = v3;
      v4 = VTCompressionSessionRemote_CopyProperty(cf, @"PoolPixelBufferAttributesSeed", v2, &cfa);
      if (!v4)
      {
        if (FigCFEqual())
        {
LABEL_12:
          if (v17 && !cf[26])
          {
            CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
            v8 = CopyRemovingKeys;
            if (CopyRemovingKeys)
            {
              v13 = *MEMORY[0x1E69660D8];
              if (CFDictionaryContainsKey(CopyRemovingKeys, *MEMORY[0x1E69660D8]))
              {
                MutableCopy = CFRetain(v8);
              }

              else
              {
                MutableCopy = FigCFDictionaryCreateMutableCopy();
                IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
                if (IOSurfacePropertiesDictionary)
                {
                  v16 = IOSurfacePropertiesDictionary;
                  CFDictionarySetValue(MutableCopy, v13, IOSurfacePropertiesDictionary);
                  CFRelease(v16);
                }
              }

              v9 = CVPixelBufferPoolCreate(v2, 0, MutableCopy, cf + 26);
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }
            }

            else
            {
              v9 = 4294954394;
            }
          }

          else
          {
            v8 = 0;
            v9 = 0;
          }

LABEL_15:
          v10 = vtcsr_handleMachErrorsInternal(cf, v9, "vtcsr_ensureClonePixelBufferPool", 0);
          if (cfa)
          {
            CFRelease(cfa);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if (v8)
          {
            CFRelease(v8);
          }

          if (v10)
          {
            return 0;
          }

          return cf[26];
        }

        v4 = VTCompressionSessionRemote_CopyProperty(cf, @"PoolPixelBufferAttributes", v2, &v17);
        if (!v4)
        {
          v5 = cf[26];
          if (v5)
          {
            CFRelease(v5);
            cf[26] = 0;
          }

          v6 = cf[25];
          v7 = cfa;
          cf[25] = cfa;
          if (v7)
          {
            CFRetain(v7);
          }

          if (v6)
          {
            CFRelease(v6);
          }

          goto LABEL_12;
        }
      }

      v9 = v4;
      v8 = 0;
      goto LABEL_15;
    }

    VTCompressionSessionRemote_GetPixelBufferPool_cold_2(v19);
  }

  if (LODWORD(v19[0]))
  {
    return 0;
  }

  return cf[26];
}

uint64_t VTCompressionSessionRemote_PrepareToEncodeFrames(uint64_t a1)
{
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954384;
    v5 = 1314;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "<<<< CompressionSessionRemote >>>>", v5, v3);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954393;
    v5 = 1317;
    goto LABEL_5;
  }

  v8 = VTCompressionSessionRemoteClient_PrepareToEncodeFrames(*(a1 + 24));
  if (v8)
  {
    v9 = v8;
  }

  else if (FigSemaphoreWaitRelative())
  {
    VTCompressionSessionRemote_PrepareToEncodeFrames_cold_1(&v10);
    v9 = v10;
  }

  else
  {
    v9 = *(a1 + 148);
  }

  return vtcsr_handleMachErrorsInternal(a1, v9, "VTCompressionSessionRemote_PrepareToEncodeFrames", 0);
}

uint64_t weakReferenceTable_CopyPointerFromKey()
{
  MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteCompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization);
  if (gWeakReferenceTable_RemoteCompressionSessionClient)
  {

    return MEMORY[0x1EEDBC858]();
  }

  else
  {
    weakReferenceTable_CopyPointerFromKey_cold_1();
    return 0;
  }
}

uint64_t VTCompressionSessionRemote_EncodeFrame(uint64_t a1, uint64_t a2, OpaqueCMTaggedBufferGroup *a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = *a4;
  v12 = *(a4 + 2);
  v9 = *a5;
  v10 = *(a5 + 2);
  return vtCompressionSessionRemote_EncodeFrameCommon(a1, a2, a3, &v11, &v9, a6, a7, a8, 0);
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon(uint64_t a1, uint64_t a2, CMTaggedBufferGroupRef group, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, _DWORD *a8, const void *a9)
{
  v130 = *MEMORY[0x1E69E9840];
  v112 = 0;
  v110 = 0;
  v111 = 0;
  theData = 0;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v11 = v9;
    v12 = emitter;
    v13 = 4294954384;
    v14 = 1399;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, "<<<< CompressionSessionRemote >>>>", v14, v11);
  }

  if (*(a1 + 60))
  {
    v16 = fig_log_get_emitter();
    v11 = v9;
    v12 = v16;
    v13 = 4294954393;
    v14 = 1402;
    goto LABEL_5;
  }

  v23 = MEMORY[0x1E69E9A60];
  if (!a2)
  {
    v100 = a7;
    v102 = a4;
    v103 = a5;
    v99 = a8;
    if (group)
    {
      Count = CMTaggedBufferGroupGetCount(group);
      if (Count >= 6)
      {
        vtCompressionSessionRemote_EncodeFrameCommon_cold_4(&v115);
      }

      else
      {
        v29 = Count;
        if (Count < 1)
        {
          vtCompressionSessionRemote_EncodeFrameCommon_cold_3(&v115);
        }

        else
        {
          v30 = 0;
          v105 = *MEMORY[0x1E695E480];
          v31 = &v117;
          while (1)
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(group, v30);
            v33 = MEMORY[0x193AE2F00](TagCollectionAtIndex, v105);
            v26 = v33;
            if (!v33)
            {
              vtCompressionSessionRemote_EncodeFrameCommon_cold_2(&v115);
              goto LABEL_62;
            }

            Length = CFDataGetLength(v33);
            v35 = vm_allocate(*v23, v31 + 3, Length, 1543503873);
            if (v35)
            {
              v25 = v35;
              goto LABEL_41;
            }

            v132.location = 0;
            v132.length = Length;
            CFDataGetBytes(v26, v132, *(v31 + 3));
            *(v31 + 8) = Length;
            CFRelease(v26);
            if (!FigTaggedBufferGroupGetCVPixelBufferAtIndex())
            {
              break;
            }

            *&v115 = 0;
            SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
            *(v31 + 4) = 0;
            if (SerializedAtomDataForPixelBuffer)
            {
              goto LABEL_10;
            }

            *(a1 + 192) = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
            ++v30;
            v31 = (v31 + 40);
            if (v29 == v30)
            {
              goto LABEL_22;
            }
          }

          vtCompressionSessionRemote_EncodeFrameCommon_cold_1(&v115);
        }
      }

      v26 = 0;
LABEL_62:
      v25 = v115;
      goto LABEL_41;
    }

LABEL_22:
    if (a6)
    {
      CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
      if (CFDataFromCFPropertyList)
      {
        v25 = CFDataFromCFPropertyList;
        goto LABEL_40;
      }
    }

    v37 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00404814DC14uLL);
    v38 = *(a1 + 216);
    *(a1 + 216) = v38 + 1;
    *v37 = v38;
    v37[1] = v100;
    v37[4] = _Block_copy(a9);
    v39 = *(a1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vtCompressionSessionRemote_EncodeFrameCommon_block_invoke;
    block[3] = &__block_descriptor_tmp_26;
    block[4] = a1;
    block[5] = v37;
    dispatch_sync(v39, block);
    v40 = *(a1 + 24);
    v41 = v112;
    v42 = v111;
    v43 = v110;
    v44 = v117;
    v45 = *(&v117 + 1);
    v46 = v118;
    v47 = *(&v118 + 1);
    v48 = v119;
    v49 = DWORD2(v119);
    v50 = v120;
    v51 = DWORD2(v120);
    v52 = v121;
    v53 = DWORD2(v121);
    v54 = v122;
    v55 = *(&v122 + 1);
    v56 = v123;
    v57 = *(&v123 + 1);
    v58 = v124;
    v59 = DWORD2(v124);
    v60 = v125;
    v61 = DWORD2(v125);
    v106 = v126;
    aBlock = DWORD2(v126);
    v101 = v127;
    v98 = *(&v127 + 1);
    v97 = v128;
    v96 = *(&v128 + 1);
    v95 = v129;
    v62 = theData;
    if (theData)
    {
      v80 = v125;
      v81 = DWORD2(v124);
      v82 = v124;
      v83 = *(&v123 + 1);
      v84 = v123;
      v85 = *(&v122 + 1);
      v86 = v122;
      v87 = DWORD2(v121);
      v88 = v121;
      v89 = DWORD2(v120);
      v90 = v120;
      v91 = DWORD2(v119);
      v92 = v119;
      v93 = *(&v118 + 1);
      v94 = v118;
      v63 = v37;
      v64 = *(&v117 + 1);
      v65 = v117;
      v66 = v110;
      v67 = v111;
      v68 = v112;
      v69 = *(a1 + 24);
      BytePtr = CFDataGetBytePtr(theData);
      v62 = theData;
      if (theData)
      {
        v62 = CFDataGetLength(theData);
      }

      v40 = v69;
      v41 = v68;
      v42 = v67;
      v43 = v66;
      v44 = v65;
      v45 = v64;
      v37 = v63;
      v46 = v94;
      v47 = v93;
      v48 = v92;
      v49 = v91;
      v50 = v90;
      v51 = v89;
      v52 = v88;
      v54 = v86;
      v53 = v87;
      v55 = v85;
      v56 = v84;
      v57 = v83;
      v59 = v81;
      v58 = v82;
      v60 = v80;
    }

    else
    {
      BytePtr = 0;
    }

    v71 = *v37;
    v115 = *v102;
    v116 = *(v102 + 2);
    v113 = *v103;
    v114 = *(v103 + 2);
    v72 = VTCompressionSessionRemoteClient_EncodeFrame(v40, v41, v42, v43, v44, v45, v46, v47, __SPAIR64__(v49, v48), v50, v51, v52, v53, v54, v55, v56, v57, __SPAIR64__(v59, v58), v60, v61, v106, __SPAIR64__(v101, aBlock), v98, v97, v96, v95, &v115, &v113, BytePtr, v62, v71);
    if (v72)
    {
      v25 = v72;
      goto LABEL_38;
    }

    FigSemaphoreWaitRelative();
    v25 = *(a1 + 148);
    v73 = *(a1 + 152);
    if (!v25)
    {
      v74 = *(a1 + 144);
      if (v74)
      {
        if (!v99)
        {
          v25 = 0;
          if (*(a1 + 152))
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v75 = vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(a1, 0, 1);
        v25 = v75;
        if (!v99 || v75)
        {
          goto LABEL_37;
        }
      }

      v25 = 0;
      *v99 = v74;
    }

LABEL_37:
    if (v73)
    {
LABEL_40:
      v26 = 0;
      goto LABEL_41;
    }

LABEL_38:
    v76 = *(a1 + 72);
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 0x40000000;
    v107[2] = __vtCompressionSessionRemote_EncodeFrameCommon_block_invoke_2;
    v107[3] = &__block_descriptor_tmp_27;
    v107[4] = a1;
    v107[5] = v37;
    dispatch_sync(v76, v107);
    goto LABEL_40;
  }

  SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
  if (!SerializedAtomDataForPixelBuffer)
  {
    v100 = a7;
    v102 = a4;
    v103 = a5;
    v99 = a8;
    *(a1 + 192) = (v110 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    goto LABEL_22;
  }

LABEL_10:
  v25 = SerializedAtomDataForPixelBuffer;
  v26 = 0;
  *(a1 + 192) = 0;
LABEL_41:
  v77 = vtcsr_handleMachErrorsInternal(a1, v25, "vtCompressionSessionRemote_EncodeFrameCommon", 0);
  if (v112)
  {
    FigMachPortReleaseSendRight_();
  }

  if (v110)
  {
    MEMORY[0x193AE4440](*v23, v111);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  v78 = &v118;
  v79 = 5;
  do
  {
    if (*(v78 - 4))
    {
      FigMachPortReleaseSendRight_();
    }

    if (*v78)
    {
      MEMORY[0x193AE4440](*v23, *(v78 - 1));
    }

    if (*(v78 + 4))
    {
      MEMORY[0x193AE4440](*v23, *(v78 + 1));
    }

    v78 = (v78 + 40);
    --v79;
  }

  while (v79);
  if (v26)
  {
    CFRelease(v26);
  }

  return v77;
}

uint64_t VTCompressionSessionRemote_EncodeFrameWithOutputHandler(uint64_t a1, uint64_t a2, OpaqueCMTaggedBufferGroup *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, const void *a8)
{
  v11 = *a4;
  v12 = *(a4 + 16);
  v9 = *a5;
  v10 = *(a5 + 16);
  return vtCompressionSessionRemote_EncodeFrameCommon(a1, a2, a3, &v11, &v9, a6, 0, a7, a8);
}

uint64_t VTCompressionSessionRemote_CompleteFrames(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954384;
    v6 = 1646;
  }

  else
  {
    if (!*(a1 + 60))
    {
      VTCompressionSessionRemote_CompleteFrames_cold_1(a1, a2, &v8);
      return v8;
    }

    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954393;
    v6 = 1649;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v5, "<<<< CompressionSessionRemote >>>>", v6, v4);
}

uint64_t VTCompressionSessionRemote_BeginPass(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v13 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954384;
    v7 = 1706;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< CompressionSessionRemote >>>>", v7, v5);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 1709;
    goto LABEL_5;
  }

  v11 = VTCompressionSessionRemoteClient_BeginPass(*(a1 + 24), a2, &v13, &v13 + 1);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = HIDWORD(v13);
    if (a3 && !HIDWORD(v13))
    {
      *a3 = v13;
    }
  }

  return vtcsr_handleMachErrorsInternal(a1, v12, "VTCompressionSessionRemote_BeginPass", 0);
}

uint64_t VTCompressionSessionRemote_EndPass(uint64_t a1, BOOL *a2, _DWORD *a3)
{
  v15 = 0;
  v14 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954384;
    v7 = 1743;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< CompressionSessionRemote >>>>", v7, v5);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 1746;
    goto LABEL_5;
  }

  v12 = VTCompressionSessionRemoteClient_EndPass(*(a1 + 24), &v15, &v14, &v15 + 1);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = HIDWORD(v15);
    if (!HIDWORD(v15))
    {
      if (a2)
      {
        *a2 = v15 != 0;
      }

      v13 = 0;
      if (a3)
      {
        *a3 = v14;
      }
    }
  }

  return vtcsr_handleMachErrorsInternal(a1, v13, "VTCompressionSessionRemote_EndPass", 0);
}

uint64_t VTCompressionSessionRemote_GetTimeRangesForNextPass(uint64_t a1, uint64_t *a2, void *a3)
{
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954384;
    v7 = 1784;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< CompressionSessionRemote >>>>", v7, v5);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 1787;
    goto LABEL_5;
  }

  TimeRangesForNextPass = VTCompressionSessionRemoteClient_GetTimeRangesForNextPass(*(a1 + 24), &v18, &v17, &v16, &v19);
  if (TimeRangesForNextPass)
  {
    v13 = TimeRangesForNextPass;
    goto LABEL_24;
  }

  v13 = v19;
  if (!v19)
  {
    v14 = 0;
    if (!v16 || v18 < 1)
    {
      goto LABEL_17;
    }

    if (48 * v18 > v16)
    {
      goto LABEL_23;
    }

    if ((v18 - 0x555555555555556) >= 0xFAAAAAAAAAAAAAABLL)
    {
      v15 = malloc_type_malloc(48 * v18, 0x1000040EED21634uLL);
      if (v15)
      {
        v14 = v15;
        memcpy(v15, v17, 48 * v18);
LABEL_17:
        if (a2)
        {
          *a2 = v18;
        }

        if (a3)
        {
          v13 = 0;
          *a3 = v14;
          goto LABEL_24;
        }

        if (v14)
        {
          free(v14);
        }

LABEL_23:
        v13 = 0;
        goto LABEL_24;
      }
    }

    v13 = 4294954392;
  }

LABEL_24:
  if (v16)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v17);
  }

  return vtcsr_handleMachErrorsInternal(a1, v13, "VTCompressionSessionRemote_GetTimeRangesForNextPass", 0);
}

uint64_t VTMultiPassStorageRemote_Create(uint64_t a1, uint64_t a2, const __CFURL *a3, __int128 *a4, uint64_t a5, uint64_t *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = vtcsr_oneTimeInitialization();
  if (v9)
  {
    v22 = v9;
    a3 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTMultiPassStorageRemote_Create_cold_1(buffer);
    a3 = 0;
    v17 = 0;
    v22 = *buffer;
    goto LABEL_19;
  }

  v11 = Instance;
  *(Instance + 80) = dispatch_group_create();
  *(v11 + 88) = dispatch_queue_create("com.apple.coremedia.compressionsession.clientcallback", 0);
  if (a5)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v22 = CFDataFromCFPropertyList;
      a3 = 0;
      v17 = 0;
      goto LABEL_22;
    }
  }

  if (a3)
  {
    v13 = CFURLCopyAbsoluteURL(a3);
    a3 = v13;
    if (v13)
    {
      v14 = CFURLGetString(v13);
      if (v14)
      {
        v15 = v14;
        MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v14);
        if (MaximumSizeOfFileSystemRepresentation >= 1024)
        {
          v19 = MaximumSizeOfFileSystemRepresentation + 1;
          v20 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation + 1, 0x100004077774924uLL);
          if (!v20)
          {
            v17 = 0;
            goto LABEL_20;
          }

          v18 = v20;
          v17 = v20;
        }

        else
        {
          v17 = 0;
          v18 = buffer;
          v19 = 1024;
        }

        if (CFStringGetFileSystemRepresentation(v15, v18, v19))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_20:
    fig_log_get_emitter();
    Key = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
LABEL_21:
    v22 = Key;
    goto LABEL_22;
  }

  v17 = 0;
LABEL_14:
  *(v11 + 240) = 0;
  Key = weakReferenceTable_AddPointerAndGetKey();
  if (Key)
  {
    goto LABEL_21;
  }

  Key = FigRPCCreateServerConnectionForObject();
  if (Key)
  {
    goto LABEL_21;
  }

  Key = FigRPCGetServerConnectionInfo();
  if (Key)
  {
    goto LABEL_21;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v22 = 0;
  if (a6)
  {
    *a6 = v11;
LABEL_19:
    v23 = vtcsr_handleMachErrorsInternal(0, v22, "VTMultiPassStorageRemote_Create", 0);
    goto LABEL_23;
  }

LABEL_22:
  v23 = vtcsr_handleMachErrorsInternal(v11, v22, "VTMultiPassStorageRemote_Create", 0);
  CFRelease(v11);
LABEL_23:
  if (v17)
  {
    free(v17);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  return v23;
}

void *VTMultiPassStorageRemote_Invalidate(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    if (!*(result + 60))
    {
      *(result + 60) = 1;
      v4 = *(result + 6);
      if (v4 && !*(v3 + 28))
      {
        v5 = VTCompressionSessionRemoteClient_MultiPassStorageDestroy(v4, a2, a3);
        vtcsr_handleMachErrorsInternal(v3, v5, "VTMultiPassStorageRemote_Invalidate", 0);
      }

      if (v3[2])
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        FigRPCDisposeServerConnection();
        v3[2] = 0;
      }

      return weakReferenceTable_RemovePointer(v3 + 30);
    }
  }

  return result;
}

uint64_t VTMultiPassStorageRemote_SetIdentifier(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v4 = VTCompressionSessionRemoteClient_MultiPassStorageSetIdentifier(*(a1 + 24), CStringPtrAndBufferToFree, &v7);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v7;
  }

  free(0);
  return vtcsr_handleMachErrorsInternal(a1, v5, "VTMultiPassStorageRemote_SetIdentifier", 0);
}

uint64_t VTMultiPassStorageRemote_SetDataAtTimeStamp(uint64_t a1, __int128 *a2, uint64_t a3, CFDataRef theData)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v10 = *(a1 + 24);
  v15 = *a2;
  v16 = *(a2 + 2);
  v11 = VTCompressionSessionRemoteClient_MultiPassStorageSetDataAtTimeStamp(v10, &v15, a3, BytePtr, Length, &v14);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v14;
  }

  return vtcsr_handleMachErrorsInternal(a1, v12, "VTMultiPassStorageRemote_SetDataAtTimeStamp", 0);
}

uint64_t VTMultiPassStorageRemote_GetTimeStamp(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v8 = *(a1 + 24);
  v13 = *a2;
  v14 = *(a2 + 2);
  TimeStamp = VTCompressionSessionRemoteClient_MultiPassStorageGetTimeStamp(v8, &v13, CStringPtrAndBufferToFree, a4, &v12);
  if (TimeStamp)
  {
    v10 = TimeStamp;
  }

  else
  {
    v10 = v12;
  }

  free(0);
  return vtcsr_handleMachErrorsInternal(a1, v10, "VTMultiPassStorageRemote_GetTimeStamp", 0);
}

uint64_t VTMultiPassStorageRemote_GetTimeStampAndDuration(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a4;
  v12 = 0;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  v8 = *(a1 + 24);
  v15 = *a2;
  v16 = *(a2 + 2);
  TimeStampAndDuration = VTCompressionSessionRemoteClient_MultiPassStorageGetTimeStampAndDuration(v8, &v15, CStringPtrAndBufferToFree, &v14, &v13, &v12);
  if (TimeStampAndDuration)
  {
    v10 = TimeStampAndDuration;
  }

  else
  {
    v10 = v12;
  }

  free(0);
  return vtcsr_handleMachErrorsInternal(a1, v10, "VTMultiPassStorageRemote_GetTimeStampAndDuration", 0);
}

uint64_t VTMultiPassStorageRemote_CopyDataAtTimeStamp(uint64_t a1, __int128 *a2, uint64_t a3, __CFData **a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  *&length[1] = 0;
  length[0] = 0;
  v6 = *(a1 + 24);
  v14 = *a2;
  v15 = *(a2 + 2);
  v7 = VTCompressionSessionRemoteClient_MultiPassStorageCopyDataAtTimeStamp(v6, &v14, a3, &length[1], length, &v13);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v13;
    if (v13)
    {
      goto LABEL_10;
    }

    if (!length[0])
    {
      if (!a4)
      {
        v8 = 0;
        return vtcsr_handleMachErrorsInternal(a1, v8, "VTMultiPassStorageRemote_CopyDataAtTimeStamp", 0);
      }

      v10 = 0;
LABEL_9:
      v8 = 0;
      *a4 = v10;
      goto LABEL_10;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v10 = Mutable;
      CFDataAppendBytes(Mutable, *&length[1], length[0]);
      if (!a4)
      {
        CFRelease(v10);
        v8 = 0;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = 4294954392;
  }

LABEL_10:
  if (length[0])
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], *&length[1]);
  }

  return vtcsr_handleMachErrorsInternal(a1, v8, "VTMultiPassStorageRemote_CopyDataAtTimeStamp", 0);
}

uint64_t VTTileCompressionSessionRemote_Create(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v13 = vtcsr_oneTimeInitialization();
  if (v13)
  {
    v23 = v13;
    v21 = 0;
    goto LABEL_19;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTTileCompressionSessionRemote_Create_cold_1(&v26);
    v21 = 0;
    v23 = v26;
    goto LABEL_19;
  }

  v15 = Instance;
  *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v15 + 32) = 1;
  *(v15 + 120) = a8;
  *(v15 + 184) = a9;
  *(v15 + 80) = dispatch_group_create();
  *(v15 + 88) = FigDispatchQueueCreateWithPriority();
  *(v15 + 72) = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
  *(v15 + 136) = FigSemaphoreCreate();
  *(v15 + 168) = FigSemaphoreCreate();
  *(v15 + 216) = 1;
  v16 = FigSemaphoreCreate();
  *(v15 + 48) = v16;
  v18 = MEMORY[0x1E695E480];
  if (a5)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(v16, v17))
    {
      if (CFDictionaryContainsKey(a5, @"CMSession"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*v18, 0, a5);
        if (!MutableCopy)
        {
          v23 = 0;
          v21 = 0;
          goto LABEL_21;
        }

        v20 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"CMSession");
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 0;
  }

  if (a6 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (*(v15 + 240) = 0, CFDataFromCFPropertyList = weakReferenceTable_AddPointerAndGetKey(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCGetServerConnectionInfo(), CFDataFromCFPropertyList))
  {
LABEL_20:
    v23 = CFDataFromCFPropertyList;
    goto LABEL_21;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v23 = 0;
  if (a10)
  {
    *a10 = v15;
LABEL_19:
    v24 = vtcsr_handleMachErrorsInternal(0, v23, "VTTileCompressionSessionRemote_Create", 0);
    goto LABEL_22;
  }

LABEL_21:
  v24 = vtcsr_handleMachErrorsInternal(v15, v23, "VTTileCompressionSessionRemote_Create", 0);
  CFRelease(v15);
LABEL_22:
  if (v21)
  {
    CFRelease(v21);
  }

  return v24;
}

uint64_t VTTileCompressionSessionRemote_PrepareToEncodeTiles(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954384;
    v7 = 2306;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< CompressionSessionRemote >>>>", v7, v5);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 2309;
    goto LABEL_5;
  }

  v11 = VTCompressionSessionRemoteClient_PrepareToEncodeTiles(*(a1 + 24), a2);
  if (v11)
  {
    v12 = v11;
  }

  else if (FigSemaphoreWaitRelative())
  {
    VTTileCompressionSessionRemote_PrepareToEncodeTiles_cold_1(&v13);
    v12 = v13;
  }

  else
  {
    v12 = *(a1 + 148);
    if (a3)
    {
      *a3 = *(a1 + 156);
    }
  }

  return vtcsr_handleMachErrorsInternal(a1, v12, "VTTileCompressionSessionRemote_PrepareToEncodeTiles", 0);
}

uint64_t VTTileCompressionSessionRemote_EncodeTile(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v43[0] = 0;
  v41 = 0;
  v42 = 0;
  theData = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v9 = v7;
    v10 = 4294954384;
    v11 = 2378;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< CompressionSessionRemote >>>>", v11, v9);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v9 = v7;
    v10 = 4294954393;
    v11 = 2381;
    goto LABEL_5;
  }

  if (!FigCFEqual())
  {
    SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
    if (SerializedAtomDataForPixelBuffer)
    {
      v31 = SerializedAtomDataForPixelBuffer;
      *(a1 + 192) = 0;
      goto LABEL_30;
    }

    *(a1 + 192) = (v41 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    v37 = *(a1 + 224);
    *(a1 + 224) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v37)
    {
      CFRelease(v37);
    }
  }

  if (a5)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v31 = CFDataFromCFPropertyList;
      goto LABEL_30;
    }
  }

  v21 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00404814DC14uLL);
  v22 = *(a1 + 216);
  *(a1 + 216) = v22 + 1;
  *v21 = v22;
  v21[1] = a6;
  v23 = *(a1 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTTileCompressionSessionRemote_EncodeTile_block_invoke;
  block[3] = &__block_descriptor_tmp_10_1;
  block[4] = a1;
  block[5] = v21;
  dispatch_sync(v23, block);
  v24 = *(a1 + 24);
  v25 = v43[0];
  v26 = v42;
  v27 = v41;
  if (!theData)
  {
    BytePtr = 0;
    goto LABEL_17;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!theData)
  {
LABEL_17:
    Length = 0;
    goto LABEL_18;
  }

  Length = CFDataGetLength(theData);
LABEL_18:
  v32 = VTCompressionSessionRemoteClient_EncodeTile(v24, v25, v26, v27, a3, a4, BytePtr, Length, *v21);
  if (v32)
  {
    v31 = v32;
  }

  else
  {
    FigSemaphoreWaitRelative();
    v31 = *(a1 + 148);
    if (v31)
    {
      v33 = 1;
    }

    else
    {
      v33 = *(a1 + 152) == 0;
    }

    v34 = !v33;
    if (a7 && !v31)
    {
      *a7 = *(a1 + 144);
    }

    if (v34)
    {
      goto LABEL_30;
    }
  }

  v35 = *(a1 + 72);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v38[2] = __VTTileCompressionSessionRemote_EncodeTile_block_invoke_2;
  v38[3] = &__block_descriptor_tmp_11_0;
  v38[4] = a1;
  v38[5] = v21;
  dispatch_sync(v35, v38);
LABEL_30:
  v36 = vtcsr_handleMachErrorsInternal(a1, v31, "VTTileCompressionSessionRemote_EncodeTile", 0);
  FigMachPortReleaseSendRight_();
  if (v41)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v42);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v36;
}

uint64_t VTTileCompressionSessionRemote_CompleteTiles(uint64_t a1)
{
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954384;
    v5 = 2472;
  }

  else
  {
    if (!*(a1 + 60))
    {
      VTTileCompressionSessionRemote_CompleteTiles_cold_1();
      return v7;
    }

    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954393;
    v5 = 2475;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "<<<< CompressionSessionRemote >>>>", v5, v3);
}

uint64_t VTMotionEstimationSessionRemote_Create(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t *a6)
{
  v8 = vtcsr_oneTimeInitialization();
  if (v8)
  {
    v12 = v8;
    return vtcsr_handleMachErrorsInternal(0, v12, "VTMotionEstimationSessionRemote_Create", 0);
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTMotionEstimationSessionRemote_Create_cold_1(&v15);
    v12 = v15;
    return vtcsr_handleMachErrorsInternal(0, v12, "VTMotionEstimationSessionRemote_Create", 0);
  }

  v10 = Instance;
  *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v10 + 32) = 2;
  *(v10 + 120) = 0;
  *(v10 + 184) = 0;
  *(v10 + 80) = dispatch_group_create();
  *(v10 + 88) = FigDispatchQueueCreateWithPriority();
  *(v10 + 72) = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
  *(v10 + 136) = FigSemaphoreCreate();
  *(v10 + 168) = FigSemaphoreCreate();
  *(v10 + 216) = 1;
  *(v10 + 48) = FigSemaphoreCreate();
  if (a5 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (*(v10 + 240) = 0, CFDataFromCFPropertyList = weakReferenceTable_AddPointerAndGetKey(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCGetServerConnectionInfo(), CFDataFromCFPropertyList))
  {
    v12 = CFDataFromCFPropertyList;
    goto LABEL_12;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v12 = 0;
  if (!a6)
  {
LABEL_12:
    v13 = vtcsr_handleMachErrorsInternal(v10, v12, "VTMotionEstimationSessionRemote_Create", 0);
    CFRelease(v10);
    return v13;
  }

  *a6 = v10;
  return vtcsr_handleMachErrorsInternal(0, v12, "VTMotionEstimationSessionRemote_Create", 0);
}

uint64_t VTCompressionSessionRemote_CopySourcePixelBufferAttributes(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954384;
    v6 = 2606;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v5, "<<<< CompressionSessionRemote >>>>", v6, v4);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v4 = v2;
    v5 = 4294954393;
    v6 = 2609;
    goto LABEL_5;
  }

  CFPropertyListFromData = VTCompressionSessionRemoteClient_MotionEstimationCopySourcePixelBufferAttributes(*(a1 + 24), &v13, &v12, &v14);
  if (CFPropertyListFromData)
  {
    goto LABEL_11;
  }

  v10 = v14;
  if (!v14)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_11:
    v10 = CFPropertyListFromData;
  }

  v11 = vtcsr_handleMachErrorsInternal(a1, v10, "VTCompressionSessionRemote_CopySourcePixelBufferAttributes", 0);
  if (v12)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v13);
  }

  return v11;
}

uint64_t VTCompressionSessionRemote_EstimateMotionVectors(uint64_t a1, const void *a2, CFTypeRef cf, uint64_t a4, uint64_t a5, const void *a6)
{
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v8 = v6;
    v9 = 4294954384;
    v10 = 2657;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<<< CompressionSessionRemote >>>>", v10, v8);
  }

  if (*(a1 + 60))
  {
    emitter = fig_log_get_emitter();
    v8 = v6;
    v9 = 4294954393;
    v10 = 2660;
    goto LABEL_5;
  }

  v14 = a4;
  v16 = a2;
  if ((a4 & 1) == 0)
  {
    v17 = *(a1 + 232);
    if (v17)
    {
      CFRelease(v17);
      v18 = 0;
      *(a1 + 232) = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_20;
  }

  if (a2 && !FigCFEqual())
  {
    v18 = 0;
    v19 = *(a1 + 232);
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = *(a1 + 232);
  v18 = 1;
  v16 = v19;
  if (v19)
  {
LABEL_14:
    CFRelease(v19);
    *(a1 + 232) = 0;
  }

LABEL_15:
  if (cf)
  {
    v20 = CFRetain(cf);
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 232) = v20;
LABEL_20:
  if (v16 && (v18 & 1) == 0)
  {
    SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
    if (SerializedAtomDataForPixelBuffer)
    {
LABEL_26:
      v22 = SerializedAtomDataForPixelBuffer;
      *(a1 + 192) = 0;
      goto LABEL_34;
    }

    *(a1 + 192) = (v34 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  if (cf)
  {
    SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
    if (SerializedAtomDataForPixelBuffer)
    {
      goto LABEL_26;
    }

    *(a1 + 192) = (v33 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  v23 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00404814DC14uLL);
  v24 = *(a1 + 216);
  *(a1 + 216) = v24 + 1;
  *v23 = v24;
  v23[1] = 0;
  v23[4] = 0;
  v23[5] = _Block_copy(a6);
  v25 = *(a1 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTCompressionSessionRemote_EstimateMotionVectors_block_invoke;
  block[3] = &__block_descriptor_tmp_14_0;
  block[4] = a1;
  block[5] = v23;
  dispatch_sync(v25, block);
  v26 = VTCompressionSessionRemoteClient_EstimateMotion(*(a1 + 24), SHIDWORD(v37), v36, v34, v37, v35, v33, v14, *v23);
  if (v26)
  {
    v22 = v26;
  }

  else
  {
    FigSemaphoreWaitRelative();
    v22 = *(a1 + 148);
    v27 = *(a1 + 152);
    if (!v22 && (*(a1 + 144) & 1) == 0)
    {
      v22 = vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(a1, 0, 1);
    }

    if (v27)
    {
      goto LABEL_34;
    }
  }

  v28 = *(a1 + 72);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = __VTCompressionSessionRemote_EstimateMotionVectors_block_invoke_2;
  v31[3] = &__block_descriptor_tmp_15_0;
  v31[4] = a1;
  v31[5] = v23;
  dispatch_sync(v28, v31);
LABEL_34:
  v29 = vtcsr_handleMachErrorsInternal(a1, v22, "VTCompressionSessionRemote_EstimateMotionVectors", 0);
  if (HIDWORD(v37))
  {
    FigMachPortReleaseSendRight_();
  }

  v30 = MEMORY[0x1E69E9A60];
  if (v34)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v36);
  }

  if (v37)
  {
    FigMachPortReleaseSendRight_();
  }

  if (v33)
  {
    MEMORY[0x193AE4440](*v30, v35);
  }

  return v29;
}

uint64_t VTCompressionSessionRemote_CompleteMotionVectors(uint64_t a1)
{
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954384;
    v5 = 2776;
  }

  else
  {
    if (!*(a1 + 60))
    {
      VTCompressionSessionRemote_CompleteMotionVectors_cold_1();
      return v7;
    }

    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954393;
    v5 = 2779;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "<<<< CompressionSessionRemote >>>>", v5, v3);
}

uint64_t VTTemporalFilterSessionRemote_ProcessFrame(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 28))
  {
    if (*(a1 + 60))
    {
      emitter = fig_log_get_emitter();
      v6 = v4;
      v7 = emitter;
      v8 = 4294954393;
      v9 = 3022;
      goto LABEL_5;
    }

    if (!a4 || (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), !CFDataFromCFPropertyList))
    {
      if (a2)
      {
        SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
        if (SerializedAtomDataForPixelBuffer)
        {
          v17 = SerializedAtomDataForPixelBuffer;
          *(a1 + 192) = 0;
          return vtcsr_handleMachErrorsInternal(a1, v17, "VTTemporalFilterSessionRemote_ProcessFrame", 0);
        }

        LODWORD(a2) = 0;
        *(a1 + 192) = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }

      v18 = *(a1 + 24);
      v19 = *a3;
      v20 = *(a3 + 2);
      CFDataFromCFPropertyList = VTCompressionSessionRemoteClient_TemporalProcessFrame(v18, 0, 0, a2, &v19, 0, 0, 0);
      if (!CFDataFromCFPropertyList)
      {
        FigSemaphoreWaitRelative();
        v17 = *(a1 + 148);
        return vtcsr_handleMachErrorsInternal(a1, v17, "VTTemporalFilterSessionRemote_ProcessFrame", 0);
      }
    }

    v17 = CFDataFromCFPropertyList;
    return vtcsr_handleMachErrorsInternal(a1, v17, "VTTemporalFilterSessionRemote_ProcessFrame", 0);
  }

  v5 = fig_log_get_emitter();
  v6 = v4;
  v7 = v5;
  v8 = 4294954384;
  v9 = 3019;
LABEL_5:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, "<<<< CompressionSessionRemote >>>>", v9, v6);
}

uint64_t VTTemporalFilterSessionRemote_CompleteFrames(uint64_t a1)
{
  if (*(a1 + 28))
  {
    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954384;
    v5 = 3081;
  }

  else
  {
    if (!*(a1 + 60))
    {
      VTTemporalFilterSessionRemote_CompleteFrames_cold_1();
      return v7;
    }

    emitter = fig_log_get_emitter();
    v3 = v1;
    v4 = 4294954393;
    v5 = 3084;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "<<<< CompressionSessionRemote >>>>", v5, v3);
}

double vtcsr_Init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void vtcsr_Finalize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTCompressionSessionRemote_Invalidate(a1, a2, a3, a4);
  v5 = a1[10];
  if (v5)
  {
    dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    v6 = a1[10];
    if (v6)
    {
      dispatch_release(v6);
      a1[10] = 0;
    }
  }

  v7 = a1[11];
  if (v7)
  {
    dispatch_release(v7);
    a1[11] = 0;
  }

  v8 = a1[9];
  if (v8)
  {
    dispatch_release(v8);
    a1[9] = 0;
  }

  FigSemaphoreDestroy();
  FigSemaphoreDestroy();
  FigSemaphoreDestroy();
  v9 = a1[12];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[28];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[29];
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t __vtcsr_oneTimeInitialization_block_invoke(uint64_t a1, uint64_t a2)
{
  VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode(a1, a2);
  result = FigRPCCreateRemoteClient();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __vtcsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 40) + 60) || *(a1 + 48))
  {
    v2 = 0;
    while (1)
    {
      v3 = *(a1 + 40);
      v57 = 0;
      v58 = 0;
      v53 = 0;
      v54 = &v53;
      v55 = 0x2000000000;
      v56 = 0;
      v47 = 0;
      v48 = &v47;
      v49 = 0x3002000000;
      v50 = __Block_byref_object_copy__0;
      v51 = __Block_byref_object_dispose__0;
      v52 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x3002000000;
      v44 = __Block_byref_object_copy__0;
      v45 = __Block_byref_object_dispose__0;
      v46 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2000000000;
      v40 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2000000000;
      v36 = 0;
      v32 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2000000000;
      v31 = 0;
      cf = 0;
      v27 = 0;
      v59 = 0uLL;
      v60 = 0;
      v25 = 0;
      v24 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v4 = VTCompressionSessionRemoteClient_DequeueNextPendingEncodedFrame(*(v3 + 24), &v57, &v56, &v27 + 1, &v27, &v24, &v23, &v22, &v58, &v57 + 1, &v21, &v20, &v59, &v58 + 1);
      if (v4)
      {
        CFPropertyListFromData = v4;
        goto LABEL_28;
      }

      CFPropertyListFromData = HIDWORD(v58);
      if (!HIDWORD(v58))
      {
        break;
      }

LABEL_28:
      v13 = vtcsr_handleMachErrorsInternal(v3, CFPropertyListFromData, "vtcsr_dequeueNextPendingFrameAndCallbackClient", 0);
      if (v24)
      {
        FigMachPortReleaseSendRight_();
      }

      if (v22)
      {
        MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v23);
      }

      _Block_release(v48[5]);
      _Block_release(v42[5]);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v53, 8);
      *(*(*(a1 + 32) + 8) + 24) = v13;
      if (!v2 || *(*(*(a1 + 32) + 8) + 24))
      {
        return;
      }
    }

    if (!v57)
    {
      CFPropertyListFromData = 0;
LABEL_27:
      v2 = v58;
      goto LABEL_28;
    }

    if (HIDWORD(v57))
    {
      if (!v22)
      {
        goto LABEL_14;
      }

      FigRemote_CreateSampleBufferFromSerializedAtomData();
    }

    else
    {
      if (!(v24 | v22))
      {
        goto LABEL_14;
      }

      FigRemote_CreatePixelBufferFromSerializedAtomData();
    }

    v22 = 0;
LABEL_14:
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    v6 = *(v3 + 128);
    if (v6)
    {
      v7 = *(v3 + 184);
      v18 = v59;
      v19 = v60;
      v6(v7, HIDWORD(v27), v27, &v18, v25);
    }

    else
    {
      v8 = *(v3 + 72);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __vtcsr_dequeueNextPendingFrameAndCallbackClient_block_invoke;
      block[3] = &unk_1E72C8158;
      block[4] = &v53;
      block[5] = &v47;
      block[6] = &v41;
      block[7] = &v37;
      block[8] = &v33;
      block[9] = &v28;
      block[10] = v3;
      dispatch_sync(v8, block);
      if (!*(v29 + 24))
      {
        CFPropertyListFromData = 4294954384;
        goto LABEL_28;
      }

      v9 = *(v3 + 112);
      if (v9)
      {
        v9(*(v3 + 184), v54[3], HIDWORD(v27), v27, cf);
      }

      else
      {
        v10 = *(v3 + 120);
        if (v10)
        {
          v10(*(v3 + 184), v54[3], v38[3], v34[3], HIDWORD(v27), v27, cf);
        }

        else
        {
          v11 = v48[5];
          if (v11)
          {
            (*(v11 + 16))(v11, HIDWORD(v27), v27, cf);
          }

          else
          {
            v12 = v42[5];
            if (v12)
            {
              (*(v12 + 16))(v12, HIDWORD(v27), v27, v32, v25);
            }
          }
        }
      }

      if (!FigAtomicDecrement32())
      {
        FigSemaphoreSignal();
      }
    }

    goto LABEL_27;
  }

  fig_log_get_emitter();
  *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
}

void __vtcsr_dequeueNextPendingFrameAndCallbackClient_block_invoke(void *a1)
{
  v2 = *(a1[10] + 40);
  if (v2)
  {
    v3 = *(a1[4] + 8);
    while (*v2 != *(v3 + 24))
    {
      v2 = v2[6];
      if (!v2)
      {
        return;
      }
    }

    *(v3 + 24) = v2[1];
    *(*(a1[5] + 8) + 40) = v2[4];
    *(*(a1[6] + 8) + 40) = v2[5];
    *(*(a1[7] + 8) + 24) = v2[2];
    *(*(a1[8] + 8) + 24) = v2[3];
    v4 = a1[10];
    v7 = *(v4 + 40);
    v6 = (v4 + 40);
    v5 = v7;
    if (v7 != v2)
    {
      do
      {
        v8 = v5;
        v5 = v5[6];
      }

      while (v5 != v2);
      v6 = v8 + 6;
    }

    *v6 = v5[6];
    free(v2);
    *(*(a1[9] + 8) + 24) = 1;
  }
}

void __vtcsr_handleDeadServerConnection_block_invoke(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtcsr_handleDeadServerConnection_block_invoke_2;
  block[3] = &unk_1E72C81C0;
  block[5] = &v16;
  block[6] = v2;
  block[4] = &v20;
  dispatch_sync(v3, block);
  while (1)
  {
    v4 = v17 + 3;
    v5 = v17[3];
    if (!v5)
    {
      break;
    }

    v6 = v21;
    v21[3] = v5;
    *v4 = *(*v4 + 48);
    v7 = *(a1 + 32);
    v8 = v7[14];
    if (v8)
    {
      v8(v7[23], *(v6[3] + 8), 4294954384, 2, 0);
    }

    else
    {
      v9 = v7[15];
      if (v9)
      {
        v9(v7[23], *(v6[3] + 8), *(v6[3] + 16), *(v6[3] + 24), 4294954384, 2, 0);
      }

      else
      {
        v10 = v6[3];
        v11 = *(v10 + 40);
        if (v11)
        {
          (*(v11 + 16))(v11, 4294954384, 2, 0, 0);
        }

        else
        {
          v12 = *(v10 + 32);
          if (v12)
          {
            (*(v12 + 16))(v12, 4294954384, 2, 0);
          }
        }
      }
    }

    _Block_release(*(v21[3] + 32));
    free(v21[3]);
    if (!FigAtomicDecrement32())
    {
      FigSemaphoreSignal();
    }
  }

  v13 = *(a1 + 32);
  if (*(v13 + 136))
  {
    *(v13 + 152) = 0;
    *(v13 + 144) = 0;
    FigSemaphoreSignal();
    v13 = *(a1 + 32);
  }

  if (*(v13 + 168))
  {
    *(v13 + 176) = 0;
    FigSemaphoreSignal();
    v13 = *(a1 + 32);
  }

  dispatch_group_leave(*(v13 + 80));
  v14 = *(a1 + 32);
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void *__vtcsr_handleDeadServerConnection_block_invoke_2(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[6] + 40);
  *(*(result[5] + 8) + 24) = *(*(result[4] + 8) + 24);
  *(result[6] + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return FigSemaphoreWaitRelative();
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, char a2)
{

  return vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(v2, a2, 1);
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return vtcsr_handleMachErrorsInternal(v3, a2, a3, 0);
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return FigSemaphoreWaitRelative();
}

uint64_t DepthWrapperEncoder_CreateInstance(int a1, uint64_t a2, CFTypeRef *a3)
{
  VTVideoEncoderGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DepthWrapperEncoder_CreateInstance_cold_3(&v6);
  return v6;
}

uint64_t DepthWrapperEncoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    v1 = *(DerivedStorage + 72);
    if (v1)
    {
      VTCompressionSessionInvalidate(v1);
    }
  }

  return 0;
}

void DepthWrapperEncoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v1 = DerivedStorage[4];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[4] = 0;
  }

  v2 = DerivedStorage[6];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[6] = 0;
  }

  v3 = DerivedStorage[7];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[7] = 0;
  }

  v4 = DerivedStorage[8];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[8] = 0;
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[9] = 0;
  }

  v6 = DerivedStorage[10];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[10] = 0;
  }

  v7 = DerivedStorage[12];
  if (v7)
  {
    DerivedStorage[12] = 0;

    free(v7);
  }
}

__CFString *DepthWrapperEncoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<DepthWrapperVideoEncoder %p>", a1);
  return Mutable;
}

uint64_t DepthWrapperEncoder_EncodeFrame(uint64_t a1, uint64_t a2, __CVBuffer *a3, CMTime *a4, CMTime *a5, const __CFDictionary *a6, _DWORD *a7)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = DerivedStorage;
  if (*a7)
  {
    *a7 = 0;
  }

  pixelBufferOut = 0;
  dispatch_group_enter(*(DerivedStorage + 80));
  ++*(v15 + 88);
  v16 = *MEMORY[0x1E695E480];
  PixelBufferPool = VTCompressionSessionGetPixelBufferPool(*(v15 + 72));
  v18 = CVPixelBufferPoolCreatePixelBuffer(v16, PixelBufferPool, &pixelBufferOut);
  if (v18)
  {
    v47 = v18;
    depthencoder_emitEncodedFrame(a1, a2, v18, 0, 0);
  }

  else
  {
    v49 = a4;
    v50 = a2;
    v51 = a5;
    v52 = a6;
    if (!*(v15 + 104))
    {
      v19 = *(v15 + 96);
      v20 = *(v15 + 40);
      v21 = (*(v15 + 44) - v20) + 1.0;
      v22 = powf(v21, 0.00097752);
      v23 = powf(v21, -0.00048876);
      v24 = 0;
      v25 = 0.0;
      for (i = 0; i != 1024; ++i)
      {
        v27 = v25;
        v23 = v22 * v23;
        _S0 = v20 + (v23 + -1.0);
        __asm { FCVT            H0, S0 }

        v25 = _S0;
        LODWORD(__pattern4.value) = v24;
        v33 = LOBYTE(_S0) - LOBYTE(v27);
        memset_pattern4((v19 + 2 * LOWORD(v27)), &__pattern4, (2 * (LODWORD(_S0) - LODWORD(v27))) & 0x1FFFC);
        if (v33)
        {
          *(v19 - 2 + 2 * LODWORD(v25)) = i << 6;
        }

        v24 += 4194368;
      }

      LODWORD(__pattern4.value) = -4128832;
      memset_pattern4((v19 + 2 * LODWORD(v25)), &__pattern4, (2 * (-32768 - LODWORD(v25))) & 0x1FFFC);
      if ((-32768 - LODWORD(v25)))
      {
        *(v19 + 65534) = -64;
      }

      bzero((v19 + 0x10000), 0x10000uLL);
      *(v15 + 104) = 1;
      v34 = *(v15 + 48);
      if (v34)
      {
        CFRelease(v34);
        *(v15 + 48) = 0;
      }
    }

    v35 = pixelBufferOut;
    VTVideoEncoderGetCMBaseObject();
    v36 = CMBaseObjectGetDerivedStorage();
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(v35, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    v41 = CVPixelBufferGetBaseAddress(v35);
    v42 = CVPixelBufferGetBytesPerRow(v35);
    if (Height)
    {
      v43 = 0;
      v44 = *(v36 + 96);
      do
      {
        if (Width)
        {
          for (j = 0; j != Width; ++j)
          {
            *&v41[2 * j] = *(v44 + 2 * BaseAddress[j]);
          }
        }

        BaseAddress = (BaseAddress + BytesPerRow);
        v41 += v42;
        ++v43;
      }

      while (v43 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    CVPixelBufferUnlockBaseAddress(v35, 0);
    v46 = *(v15 + 72);
    outputHandler[0] = MEMORY[0x1E69E9820];
    outputHandler[1] = 0x40000000;
    outputHandler[2] = __DepthWrapperEncoder_EncodeFrame_block_invoke;
    outputHandler[3] = &__block_descriptor_tmp_6;
    outputHandler[4] = v15;
    outputHandler[5] = a1;
    outputHandler[6] = v50;
    __pattern4 = *v49;
    duration = *v51;
    v47 = VTCompressionSessionEncodeFrameWithOutputHandler(v46, pixelBufferOut, &__pattern4, &duration, v52, 0, outputHandler);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v47;
}

uint64_t DepthWrapperEncoder_CompleteFrames(uint64_t a1, CMTime *a2)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 72);
  v10 = *a2;
  v5 = VTCompressionSessionCompleteFrames(v4, &v10);
  if (*(DerivedStorage + 80))
  {
    v6 = 2;
    do
    {
      v7 = *(DerivedStorage + 80);
      v8 = dispatch_time(0, 1000000000 * v6);
      v6 *= 2;
    }

    while (dispatch_group_wait(v7, v8));
  }

  return v5;
}

uint64_t depthencoder_createPixelBufferAttributesDictionary(uint64_t a1, uint64_t a2, unsigned int *a3, CFMutableDictionaryRef *a4)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v7)
    {
      v8 = v7;
      appended = FigCFArrayAppendInt32();
      if (appended)
      {
        CFRelease(v6);
      }

      else
      {
        CFDictionarySetValue(v6, *MEMORY[0x1E6966130], v8);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        *a4 = v6;
      }

      CFRelease(v8);
    }

    else
    {
      depthencoder_createPixelBufferAttributesDictionary_cold_1(v6, &v11);
      return v11;
    }
  }

  else
  {
    depthencoder_createPixelBufferAttributesDictionary_cold_2(&v12);
    return v12;
  }

  return appended;
}

void depthencoder_emitEncodedFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  VTVideoEncoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTEncoderSessionEmitEncodedFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 88);
  v10 = *(DerivedStorage + 80);

  dispatch_group_leave(v10);
}

uint64_t vtParavirtualizationHostEncoderSession_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke(uint64_t a1)
{
  v250 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3)
  {
    goto LABEL_384;
  }

  v4 = *(a1 + 72);
  if (v4 > 1701672299)
  {
    if (v4 > 1702061427)
    {
      if (v4 > 1702065266)
      {
        if (v4 != 1702065267)
        {
          if (v4 != 1702065520)
          {
            if (v4 == 1702127980)
            {
              v5 = *(a1 + 32);
              v6 = *(a1 + 40);
              v7 = *(a1 + 48);
              v8 = *(a1 + 64);
              LODWORD(v231) = 0;
              v233.version = 0;
              *type = 0;
              v227[0] = 0;
              pixelBufferOut[0] = 0;
              *v219 = 0;
              *v237 = 0;
              *v238 = 0;
              pixelBuffer = 0;
              v236 = 0;
              LODWORD(cf) = 0;
              theArray = 0;
              MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v6, 0, &v231, 0);
              if (MessageTypeAndFlagsAndGuestUUID || (MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationCreateReplyAndByteStream(v6, 4u, &v233, type)) != 0 || (MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetSInt64()) != 0)
              {
                version = MessageTypeAndFlagsAndGuestUUID;
                v186 = 0;
                v10 = 0;
                goto LABEL_290;
              }

              v10 = v227[0];
              if (!v7 || v8 != 1 || !*v7)
              {
                __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_2(&valueCallBacks);
                v186 = 0;
                version = valueCallBacks.version;
                if (!LODWORD(valueCallBacks.version))
                {
                  goto LABEL_329;
                }

                goto LABEL_290;
              }

              v11 = *MEMORY[0x1E695E480];
              v12 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], *v7, 0, pixelBufferOut);
              if (v12 || (VTParavirtualizationMessageGetVTInt32Point(), v12) || (VTParavirtualizationMessageGetVTInt32Size(), v12) || (v12 = VTParavirtualizationMessageCopyCFDictionary(v6, 745826672, &v236)) != 0 || (v12 = VTParavirtualizationMessageCopyCFUUID()) != 0)
              {
                version = v12;
LABEL_394:
                v186 = 0;
LABEL_290:
                v206 = FigCFCopyCompactDescription();
                LODWORD(v224) = 0;
                v223[0] = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v208 = v224;
                v209 = v223[0];
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v223[0]))
                {
                  v210 = v208;
                }

                else
                {
                  v210 = v208 & 0xFFFFFFFE;
                }

                if (v210)
                {
                  v211 = *(v5 + 24);
                  *v239 = 136317698;
                  *&v239[4] = "vtParavirtualizationHostEncoderSession_HandleEncoderEncodeTile";
                  *&v239[12] = 1024;
                  *&v239[14] = version;
                  *&v239[18] = 2048;
                  *&v239[20] = v5;
                  *&v239[28] = 2048;
                  *&v239[30] = v211;
                  *&v239[38] = 2048;
                  *&v239[40] = v10;
                  *&v239[48] = 1024;
                  *&v239[50] = *v238;
                  *v240 = 1024;
                  *&v240[2] = *&v238[4];
                  v241 = 1024;
                  v242 = *v237;
                  v243 = 1024;
                  v244 = *&v237[4];
                  v245 = 2114;
                  v246 = v206;
                  v247 = 1024;
                  v248 = cf;
                  LODWORD(v216) = 88;
                  _os_log_send_and_compose_impl(v210, 0, &valueCallBacks, 128, &dword_18F99C000, os_log_and_send_and_compose_flags_and_os_log_type, v209, "<<<< VTParavirtualizationHostEncoder >>>> %s: VTVideoEncoderEncodeTile failed with error %d, (%p encoder %p) tile %lld tileOffset (%d, %d) tileAperture %d x %d tileProperties %{public}@ flags 0x%x", v239, v216);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                if (v206)
                {
                  CFRelease(v206);
                }

LABEL_329:
                if (v233.version)
                {
                  CFRelease(v233.version);
                }

                if (*type)
                {
                  CFRelease(*type);
                }

                if (v236)
                {
                  CFRelease(v236);
                }

                if (pixelBufferOut[0])
                {
                  CFRelease(pixelBufferOut[0]);
                }

                if (*v219)
                {
                  CFRelease(*v219);
                }

                v212 = pixelBuffer;
                if (pixelBuffer)
                {
LABEL_340:
                  CFRelease(v212);
                }

LABEL_341:
                if (v186)
                {
                  v190 = v186;
                  goto LABEL_383;
                }

                goto LABEL_384;
              }

              v13 = pixelBufferOut[0];
              v14 = *v219;
              SInt64 = FigCFNumberCreateSInt64();
              FigSimpleMutexLock();
              v16 = *(v5 + 176);
              if (v16 || (valueCallBacks.version = 0, valueCallBacks.retain = vtClonePendingTileSurfaceStuff, valueCallBacks.copyDescription = 0, valueCallBacks.equal = 0, valueCallBacks.release = vtFreePendingTileSurfaceStuff, v16 = CFDictionaryCreateMutable(v11, 0, 0, &valueCallBacks), (*(v5 + 176) = v16) != 0))
              {
                if (!CFDictionaryGetValue(v16, v10))
                {
                  dispatch_group_enter(*(v5 + 184));
                  CFDictionarySetValue(*(v5 + 176), v10, 0);
                  Value = CFDictionaryGetValue(*(v5 + 176), v10);
                  CFArrayAppendValue(*Value, v13);
                  CFArrayAppendValue(Value[1], v14);
                  FigCFArrayAppendInt64();
                  *(Value + 12) = 0;
                }

                Mutable = *(v5 + 192);
                if (!Mutable)
                {
                  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  *(v5 + 192) = Mutable;
                }

                if (CFDictionaryGetValue(Mutable, SInt64))
                {
                  FigCFArrayAppendInt64();
                }

                else
                {
                  v196 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
                  FigCFArrayAppendInt64();
                  CFDictionarySetValue(*(v5 + 192), SInt64, v196);
                  if (v196)
                  {
                    CFRelease(v196);
                  }
                }

                FigSimpleMutexUnlock();
                version = 0;
                if (SInt64)
                {
                  goto LABEL_281;
                }
              }

              else
              {
                version = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v215, v216, v217);
                if (SInt64)
                {
LABEL_281:
                  CFRelease(SInt64);
                }
              }

              if (!version)
              {
                v198 = *(v5 + 24);
                v199 = pixelBufferOut[0];
                v200 = v236;
                v201 = *v237;
                v202 = *v238;
                v203 = *(CMBaseObjectGetVTable() + 16);
                if (*v203 >= 3uLL && (v204 = v203[19]) != 0)
                {
                  version = v204(v198, v10, v199, v202, v201, v200, &cf);
                }

                else
                {
                  version = -12782;
                }

                appended = VTParavirtualizationMessageAppendSInt32(*type, 744845938, version);
                if (appended || (appended = VTParavirtualizationMessageAppendUInt32(*type, 744842860, cf)) != 0)
                {
                  v186 = 0;
                  version = appended;
                }

                else
                {
                  vtParavirtualizationHostEncoderSession_sendMessageToGuest(v5, v233.version);
                  vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(v5, v10, version != 0, 1, 0, &pixelBuffer, &theArray);
                  v186 = theArray;
                  vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(v5, theArray);
                  if (!version)
                  {
                    goto LABEL_329;
                  }
                }

                goto LABEL_290;
              }

              goto LABEL_394;
            }

LABEL_179:
            LODWORD(v233.version) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v167 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v215, v216, v217);
            goto LABEL_384;
          }

          v115 = *(a1 + 32);
          v114 = *(a1 + 40);
          v233.version = 0;
          *type = 0;
          v227[0] = 0;
          if (VTParavirtualizationCreateReplyAndByteStream(v114, 4u, type, v227))
          {
            goto LABEL_220;
          }

          v116 = *(v115 + 24);
          v117 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          v118 = v117 ? v117(v116, &v233) : -12782;
          if (VTParavirtualizationMessageAppendSInt32(v227[0], 744845938, v118) || v233.version && VTParavirtualizationMessageAppendCFPropertyList(v227[0], 0x2C737570u, v233.version))
          {
            goto LABEL_220;
          }

          vtParavirtualizationHostEncoderSession_sendMessageToGuest(v115, *type);
          if (v118)
          {
            goto LABEL_220;
          }

          goto LABEL_256;
        }

        v148 = *(a1 + 32);
        v149 = *(a1 + 40);
        v233.version = 0;
        *type = 0;
        v227[0] = 0;
        pixelBufferOut[0] = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(v149, 4u, v227, pixelBufferOut))
        {
          goto LABEL_208;
        }

        if (VTParavirtualizationMessageCopyCFDictionary(v149, 744846192, &v233))
        {
          goto LABEL_208;
        }

        VTParavirtualizationMessageGetVTInt32Size();
        if (v150)
        {
          goto LABEL_208;
        }

        if (*type < 1)
        {
          v214 = 1446;
        }

        else
        {
          if (*&type[4] >= 1)
          {
            v151 = *(v148 + 24);
            v152 = v233.version;
            v153 = *type;
            v154 = *(CMBaseObjectGetVTable() + 16);
            if (*v154 >= 3uLL && (v155 = v154[17]) != 0)
            {
              v156 = v155(v151, v148 + 80, v152, v153, *MEMORY[0x1E695E480]);
            }

            else
            {
              v156 = -12782;
            }

            if (VTParavirtualizationMessageAppendSInt32(pixelBufferOut[0], 744845938, v156))
            {
              goto LABEL_208;
            }

            vtParavirtualizationHostEncoderSession_sendMessageToGuest(v148, v227[0]);
            if (v156)
            {
              goto LABEL_208;
            }

            goto LABEL_374;
          }

          v214 = 1447;
        }

        if ((__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_3(pixelBufferOut, v227, v148, v214, &valueCallBacks) & 1) == 0)
        {
LABEL_208:
          *v219 = 0;
          v238[0] = OS_LOG_TYPE_DEFAULT;
          v173 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v173, v238[0]);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_374:
        if (v227[0])
        {
          CFRelease(v227[0]);
        }

        if (pixelBufferOut[0])
        {
          CFRelease(pixelBufferOut[0]);
        }

        v190 = v233.version;
        if (v233.version)
        {
          goto LABEL_383;
        }

        goto LABEL_384;
      }

      if (v4 != 1702061428)
      {
        if (v4 != 1702065249)
        {
          goto LABEL_179;
        }

        v83 = *(a1 + 32);
        v84 = *(a1 + 40);
        v233.version = 0;
        *type = 0;
        v227[0] = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(v84, 4u, type, v227))
        {
          goto LABEL_230;
        }

        VTParavirtualizationMessageGetCMVideoDimensions();
        if (v85)
        {
          goto LABEL_230;
        }

        if (SLODWORD(v233.version) < 1)
        {
          v213 = 734;
        }

        else
        {
          if (SHIDWORD(v233.version) >= 1)
          {
            v86 = *(v83 + 24);
            v87 = v233.version;
            v88 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v88)
            {
              v89 = v88(v86, v83 + 32, v87, *MEMORY[0x1E695E480]);
            }

            else
            {
              v89 = -12782;
            }

            if (VTParavirtualizationMessageAppendSInt32(v227[0], 744845938, v89))
            {
              goto LABEL_230;
            }

            vtParavirtualizationHostEncoderSession_sendMessageToGuest(v83, *type);
            if (v89)
            {
              goto LABEL_230;
            }

LABEL_380:
            if (*type)
            {
              CFRelease(*type);
            }

            v190 = v227[0];
            if (v227[0])
            {
              goto LABEL_383;
            }

            goto LABEL_384;
          }

          v213 = 735;
        }

        if (__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_3(v227, type, v83, v213, &valueCallBacks))
        {
          goto LABEL_380;
        }

LABEL_230:
        LODWORD(pixelBufferOut[0]) = 0;
        v219[0] = OS_LOG_TYPE_DEFAULT;
        v178 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_380;
      }

      v157 = *(a1 + 32);
      v158 = *(a1 + 40);
      v233.version = 0;
      *type = 0;
      v227[0] = 0;
      pixelBufferOut[0] = 0;
      *v219 = 0;
      ReplyAndByteStream = VTParavirtualizationCreateReplyAndByteStream(v158, 4u, pixelBufferOut, v219);
      if (ReplyAndByteStream)
      {
        goto LABEL_391;
      }

      ReplyAndByteStream = VTParavirtualizationMessageCopyCFPropertyList(v158, 745235833, &v233);
      if (ReplyAndByteStream)
      {
        goto LABEL_391;
      }

      if (v233.version && (v160 = CFGetTypeID(v233.version), v160 == CFStringGetTypeID()))
      {
        if (!vtParavirtualizationHostEncoderSession_isPropertyInDenyList(v233.version))
        {
          ReplyAndByteStream = VTParavirtualizationMessageCopyCFPropertyList(v158, 745955692, type);
          if (!ReplyAndByteStream)
          {
            ReplyAndByteStream = vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(v157, v233.version, *type, v227);
            if (!ReplyAndByteStream)
            {
              v161 = v233.version;
              v162 = v227[0];
              VTVideoEncoderGetCMBaseObject();
              v164 = v163;
              v165 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              v166 = v165 ? v165(v164, v161, v162) : -12782;
              ReplyAndByteStream = VTParavirtualizationMessageAppendSInt32(*v219, 744845938, v166);
              if (!ReplyAndByteStream)
              {
                vtParavirtualizationHostEncoderSession_sendMessageToGuest(v157, pixelBufferOut[0]);
                if (!v166)
                {
                  goto LABEL_345;
                }

                goto LABEL_244;
              }
            }
          }

LABEL_391:
          v166 = ReplyAndByteStream;
LABEL_244:
          v180 = FigCFCopyCompactDescription();
          *v238 = 0;
          v237[0] = OS_LOG_TYPE_DEFAULT;
          v181 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v182 = *v238;
          v183 = v237[0];
          if (os_log_type_enabled(v181, v237[0]))
          {
            v184 = v182;
          }

          else
          {
            v184 = v182 & 0xFFFFFFFE;
          }

          if (v184)
          {
            v185 = *(v157 + 24);
            *v239 = 136316418;
            *&v239[4] = "vtParavirtualizationHostEncoderSession_HandleEncoderSetProperty";
            *&v239[12] = 2048;
            *&v239[14] = v157;
            *&v239[22] = 2048;
            *&v239[24] = v185;
            *&v239[32] = 2114;
            *&v239[34] = v233.version;
            *&v239[42] = 2114;
            *&v239[44] = v180;
            *&v239[52] = 1024;
            *v240 = v166;
            _os_log_send_and_compose_impl(v184, 0, &valueCallBacks, 128, &dword_18F99C000, v181, v183, "<<<< VTParavirtualizationHostEncoder >>>> %s: (%p encoder %p) VTVideoEncoderSetProperty failed for %{public}@ %{public}@ with error %d", v239, 58);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (v180)
          {
            CFRelease(v180);
          }

LABEL_345:
          if (v233.version)
          {
            CFRelease(v233.version);
          }

          if (*type)
          {
            CFRelease(*type);
          }

          if (v227[0])
          {
            CFRelease(v227[0]);
          }

          if (pixelBufferOut[0])
          {
            CFRelease(pixelBufferOut[0]);
          }

          v190 = *v219;
          if (*v219)
          {
            goto LABEL_383;
          }

          goto LABEL_384;
        }

        __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_12(&valueCallBacks);
      }

      else
      {
        __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_13(&valueCallBacks);
      }

      v166 = valueCallBacks.version;
      if (!LODWORD(valueCallBacks.version))
      {
        goto LABEL_345;
      }

      goto LABEL_244;
    }

    if (v4 <= 1701868648)
    {
      if (v4 != 1701672300)
      {
        if (v4 != 1701865074)
        {
          goto LABEL_179;
        }

        v25 = *(a1 + 32);
        v24 = *(a1 + 40);
        v233.version = 0;
        *type = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(v24, 4u, &v233, type))
        {
          goto LABEL_262;
        }

        v26 = *(v25 + 24);
        v27 = *(CMBaseObjectGetVTable() + 16);
        if (*v27 >= 2uLL && (v28 = v27[7]) != 0)
        {
          v29 = v28(v26);
        }

        else
        {
          v29 = -12782;
        }

        if (VTParavirtualizationMessageAppendSInt32(*type, 744845938, v29))
        {
          goto LABEL_262;
        }

        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v25, v233.version);
        if (v29)
        {
          goto LABEL_262;
        }

LABEL_264:
        if (v233.version)
        {
          CFRelease(v233.version);
        }

        v190 = *type;
        if (*type)
        {
          goto LABEL_383;
        }

        goto LABEL_384;
      }

      v91 = *(a1 + 32);
      v90 = *(a1 + 40);
      v233.version = 0;
      *type = 0;
      v227[0] = 0;
      if (VTParavirtualizationCreateReplyAndByteStream(v90, 4u, type, v227) || VTParavirtualizationMessageCopyCFDictionary(v90, 745566831, &v233))
      {
        MutableCopy = 0;
        v94 = 0;
        v98 = 0;
      }

      else
      {
        v92 = *MEMORY[0x1E695E480];
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        v94 = FigCFDictionaryCopyArrayOfKeys();
        v95 = 0;
        if (v94)
        {
          goto LABEL_121;
        }

LABEL_122:
        for (i = 0; v95 < i; i = CFArrayGetCount(v94))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v94, v95);
          if (vtParavirtualizationHostEncoderSession_isPropertyInDenyList(ValueAtIndex))
          {
            CFDictionaryRemoveValue(MutableCopy, ValueAtIndex);
          }

          ++v95;
          if (!v94)
          {
            goto LABEL_122;
          }

LABEL_121:
          ;
        }

        if (FigCFDictionaryGetCount() < 1)
        {
          __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_1(&valueCallBacks);
          v98 = 0;
          if (!LODWORD(valueCallBacks.version))
          {
            goto LABEL_357;
          }
        }

        else
        {
          v98 = CFDictionaryCreateMutable(v92, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v99 = FigCFDictionaryCopyArrayOfKeys();
          Count = FigCFDictionaryGetCount();
          if (Count < 1)
          {
            v102 = 0;
          }

          else
          {
            v101 = Count;
            v102 = 0;
            for (j = 0; j != v101; ++j)
            {
              v104 = CFArrayGetValueAtIndex(v99, j);
              v105 = CFDictionaryGetValue(MutableCopy, v104);
              valueCallBacks.version = 0;
              v106 = vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(v91, v104, v105, &valueCallBacks);
              if (!v102)
              {
                v102 = v106;
              }

              if (!v106)
              {
                FigCFDictionarySetValue();
              }

              if (valueCallBacks.version)
              {
                CFRelease(valueCallBacks.version);
              }
            }
          }

          if (v99)
          {
            CFRelease(v99);
          }

          if (!v102)
          {
            v191 = *(v91 + 24);
            v192 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            v193 = v192 ? v192(v191, v98) : -12782;
            if (!VTParavirtualizationMessageAppendSInt32(v227[0], 744845938, v193))
            {
              vtParavirtualizationHostEncoderSession_sendMessageToGuest(v91, *type);
              if (!v193)
              {
LABEL_357:
                if (v94)
                {
                  CFRelease(v94);
                }

                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                if (v233.version)
                {
                  CFRelease(v233.version);
                }

                if (v98)
                {
                  v188 = v98;
                  goto LABEL_365;
                }

                goto LABEL_380;
              }
            }
          }
        }
      }

      v194 = FigCFCopyCompactDescription();
      LODWORD(pixelBufferOut[0]) = 0;
      v219[0] = OS_LOG_TYPE_DEFAULT;
      v195 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v194)
      {
        CFRelease(v194);
      }

      goto LABEL_357;
    }

    if (v4 != 1701868649)
    {
      if (v4 != 1702060406)
      {
        goto LABEL_179;
      }

      v47 = *(a1 + 32);
      v46 = *(a1 + 40);
      v233.version = 0;
      *type = 0;
      v227[0] = 0;
      if (VTParavirtualizationCreateReplyAndByteStream(v46, 4u, type, v227) || ((v48 = *(v47 + 24), (v49 = *(*(CMBaseObjectGetVTable() + 16) + 48)) == 0) ? (v50 = -12782) : (v50 = v49(v48, *MEMORY[0x1E695E480], &v233)), VTParavirtualizationMessageAppendSInt32(v227[0], 744845938, v50) || v233.version && VTParavirtualizationMessageAppendCFDictionary(v227[0], 0x2C70726Fu, v233.version) || (vtParavirtualizationHostEncoderSession_sendMessageToGuest(v47, *type), v50)))
      {
LABEL_220:
        v176 = FigCFCopyCompactDescription();
        LODWORD(pixelBufferOut[0]) = 0;
        v219[0] = OS_LOG_TYPE_DEFAULT;
        v177 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (v176)
        {
          CFRelease(v176);
        }
      }

LABEL_256:
      v188 = v233.version;
      if (!v233.version)
      {
        goto LABEL_380;
      }

LABEL_365:
      CFRelease(v188);
      goto LABEL_380;
    }

    v107 = *(a1 + 32);
    v108 = *(a1 + 40);
    LODWORD(v227[0]) = 0;
    v233.version = 0;
    *type = 0;
    if (!VTParavirtualizationCreateReplyAndByteStream(v108, 4u, &v233, type))
    {
      VTParavirtualizationMessageGetSInt32();
      if (!v109)
      {
        v110 = *(v107 + 24);
        v111 = *(CMBaseObjectGetVTable() + 16);
        if (*v111 >= 3uLL && (v112 = v111[18]) != 0)
        {
          v113 = v112(v110, SLODWORD(v227[0]) > 0);
        }

        else
        {
          v113 = -12782;
        }

        if (!VTParavirtualizationMessageAppendSInt32(*type, 744845938, v113))
        {
          vtParavirtualizationHostEncoderSession_sendMessageToGuest(v107, v233.version);
          if (!v113)
          {
            goto LABEL_264;
          }
        }
      }
    }

LABEL_200:
    LODWORD(pixelBufferOut[0]) = 0;
    v219[0] = OS_LOG_TYPE_DEFAULT;
    v172 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT);
LABEL_263:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_264;
  }

  if (v4 <= 1701146738)
  {
    if (v4 <= 1701015407)
    {
      if (v4 != 1700950131)
      {
        if (v4 != 1701013106)
        {
          goto LABEL_179;
        }

        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        *type = 0;
        v227[0] = 0;
        *&v233.version = *MEMORY[0x1E6960C70];
        v233.release = *(MEMORY[0x1E6960C70] + 16);
        if (VTParavirtualizationCreateReplyAndByteStream(v20, 4u, type, v227) || VTParavirtualizationMessageGetCMTime(v20, 745567347, &v233))
        {
          goto LABEL_230;
        }

        v21 = *(v19 + 24);
        *v239 = *&v233.version;
        *&v239[16] = v233.release;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v22)
        {
          *&valueCallBacks.version = *v239;
          valueCallBacks.release = *&v239[16];
          v23 = v22(v21, &valueCallBacks);
        }

        else
        {
          v23 = -12782;
        }

        if (VTParavirtualizationMessageAppendSInt32(v227[0], 744845938, v23))
        {
          goto LABEL_230;
        }

        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v19, *type);
        if (v23)
        {
          goto LABEL_230;
        }

        goto LABEL_380;
      }

      v119 = *(a1 + 32);
      v120 = *(a1 + 40);
      v233.version = 0;
      *type = 0;
      LODWORD(v227[0]) = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v120, 4u, &v233, type))
      {
        VTParavirtualizationMessageGetUInt32();
        if (!v121)
        {
          v122 = *(v119 + 24);
          v123 = *(CMBaseObjectGetVTable() + 16);
          if (*v123 >= 2uLL && (v124 = v123[8]) != 0)
          {
            v125 = v124(v122, LODWORD(v227[0]), 0);
          }

          else
          {
            v125 = -12782;
          }

          if (!VTParavirtualizationMessageAppendSInt32(*type, 744845938, v125))
          {
            vtParavirtualizationHostEncoderSession_sendMessageToGuest(v119, v233.version);
            if (!v125)
            {
              goto LABEL_264;
            }
          }
        }
      }

      goto LABEL_200;
    }

    if (v4 != 1701015408)
    {
      if (v4 != 1701016681)
      {
        goto LABEL_179;
      }

      v52 = *(a1 + 32);
      v51 = *(a1 + 40);
      v233.version = 0;
      *type = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v51, 4u, &v233, type))
      {
        v53 = *(v52 + 24);
        v54 = *(CMBaseObjectGetVTable() + 16);
        if (*v54 >= 3uLL && (v55 = v54[20]) != 0)
        {
          v56 = v55(v53);
        }

        else
        {
          v56 = -12782;
        }

        if (!VTParavirtualizationMessageAppendSInt32(*type, 744845938, v56))
        {
          vtParavirtualizationHostEncoderSession_sendMessageToGuest(v52, v233.version);
          if (!v56)
          {
            goto LABEL_264;
          }
        }
      }

LABEL_262:
      LODWORD(v227[0]) = 0;
      LOBYTE(pixelBufferOut[0]) = 0;
      v189 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT);
      goto LABEL_263;
    }

    v134 = *(a1 + 32);
    v135 = *(a1 + 40);
    v233.version = 0;
    *type = 0;
    v227[0] = 0;
    pixelBufferOut[0] = 0;
    if (VTParavirtualizationCreateReplyAndByteStream(v135, 4u, v227, pixelBufferOut) || VTParavirtualizationMessageCopyCFPropertyList(v135, 745235833, &v233))
    {
      goto LABEL_236;
    }

    if (v233.version && (v136 = CFGetTypeID(v233.version), v136 == CFStringGetTypeID()))
    {
      v137 = v233.version;
      VTVideoEncoderGetCMBaseObject();
      v139 = v138;
      v140 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v140)
      {
        v141 = v140(v139, v137, *MEMORY[0x1E695E480], type);
      }

      else
      {
        v141 = -12782;
      }

      if (VTParavirtualizationMessageAppendSInt32(pixelBufferOut[0], 744845938, v141) || *type && VTParavirtualizationMessageAppendCFPropertyList(pixelBufferOut[0], 0x2C76616Cu, *type))
      {
        goto LABEL_236;
      }

      vtParavirtualizationHostEncoderSession_sendMessageToGuest(v134, v227[0]);
      if (v141)
      {
        goto LABEL_236;
      }
    }

    else
    {
      __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_14(&valueCallBacks);
      if (LODWORD(valueCallBacks.version))
      {
LABEL_236:
        *v219 = 0;
        v238[0] = OS_LOG_TYPE_DEFAULT;
        v179 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v179, v238[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (v233.version)
    {
      CFRelease(v233.version);
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (v227[0])
    {
      CFRelease(v227[0]);
    }

    v190 = pixelBufferOut[0];
    if (pixelBufferOut[0])
    {
      goto LABEL_383;
    }

    goto LABEL_384;
  }

  if (v4 <= 1701408373)
  {
    if (v4 == 1701146739)
    {
      v127 = *(a1 + 32);
      v126 = *(a1 + 40);
      v233.version = 0;
      *type = 0;
      LOBYTE(pixelBufferOut[0]) = 0;
      v128 = VTParavirtualizationCreateReplyAndByteStream(v126, 4u, &v233, type);
      if (v128 || ((v129 = *(v127 + 24), v130 = *(CMBaseObjectGetVTable() + 16), *v130 < 2uLL) || (v131 = v130[9]) == 0 ? (v133 = 0, v132 = -12782) : (v132 = v131(v129, pixelBufferOut, 0), v133 = LOBYTE(pixelBufferOut[0]) != 0), (v128 = VTParavirtualizationMessageAppendSInt32(*type, 744910962, v133)) != 0 || (v128 = VTParavirtualizationMessageAppendSInt32(*type, 744845938, v132)) != 0))
      {
        v132 = v128;
      }

      else
      {
        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v127, v233.version);
        if (!v132)
        {
          goto LABEL_264;
        }
      }

      LODWORD(v227[0]) = 0;
      v219[0] = OS_LOG_TYPE_DEFAULT;
      v168 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v169 = v227[0];
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        v170 = v169;
      }

      else
      {
        v170 = v169 & 0xFFFFFFFE;
      }

      if (v170)
      {
        v171 = *(v127 + 24);
        *v239 = 136316162;
        *&v239[4] = "vtParavirtualizationHostEncoderSession_HandleEncoderEndPass";
        *&v239[12] = 2048;
        *&v239[14] = v127;
        *&v239[22] = 2048;
        *&v239[24] = v171;
        *&v239[32] = 1024;
        *&v239[34] = LOBYTE(pixelBufferOut[0]);
        *&v239[38] = 1024;
        *&v239[40] = v132;
        _os_log_send_and_compose_impl(v170, 0, &valueCallBacks, 128, &dword_18F99C000, v168, 0, "<<<< VTParavirtualizationHostEncoder >>>> %s: (%p encoder %p) VTVideoEncoderEndPass failed for furtherPassesRequested %d with error %d", v239, 44);
      }

      goto LABEL_263;
    }

    if (v4 != 1701212781)
    {
      goto LABEL_179;
    }

    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v33 = *(a1 + 64);
    *v223 = 0;
    *v237 = 0;
    *v238 = 0;
    pixelBuffer = 0;
    v236 = 0;
    theArray = 0;
    *type = *MEMORY[0x1E6960C70];
    v230 = *(MEMORY[0x1E6960C70] + 16);
    *v227 = *type;
    v228 = v230;
    v231 = 0;
    v232 = 0;
    cf = 0;
    v224 = 0;
    if (VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v31, 0, v223, 0) || VTParavirtualizationCreateReplyAndByteStream(v31, 4u, v238, v237) || VTParavirtualizationMessageGetSInt64())
    {
      v186 = 0;
    }

    else
    {
      v34 = v236;
      if (v32 && v33 == 1 && (v35 = *v32) != 0)
      {
        v36 = *MEMORY[0x1E695E480];
        if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v35, 0, &pixelBuffer) || VTParavirtualizationMessageGetCMTime(v31, 745567347, type) || VTParavirtualizationMessageGetCMTime(v31, 744781170, v227) || VTParavirtualizationMessageCopyCFDictionary(v31, 744910962, &v231) || VTParavirtualizationMessageCopyCFUUID() || VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(v31, pixelBuffer))
        {
          v186 = 0;
        }

        else
        {
          v37 = theArray;
          v38 = pixelBuffer;
          FigSimpleMutexLock();
          v39 = *(v30 + 152);
          if (v39 || (v233.version = 0, v233.retain = vtClonePendingFrameSurfaceStuff, v233.copyDescription = 0, v233.equal = 0, v233.release = vtFreePendingFrameSurfaceStuff, v39 = CFDictionaryCreateMutable(v36, 0, 0, &v233), (*(v30 + 152) = v39) != 0))
          {
            if (!CFDictionaryGetValue(v39, v34))
            {
              dispatch_group_enter(*(v30 + 160));
              CFDictionarySetValue(*(v30 + 152), v34, 0);
              v40 = CFDictionaryGetValue(*(v30 + 152), v34);
              CFArrayAppendValue(*v40, v38);
              CFArrayAppendValue(v40[1], v37);
              FigCFArrayAppendInt64();
              *(v40 + 12) = 0;
            }

            FigSimpleMutexUnlock();
LABEL_62:
            v41 = *(v30 + 24);
            v42 = pixelBuffer;
            v43 = v231;
            *pixelBufferOut = *type;
            v222 = v230;
            *v219 = *v227;
            v220 = v228;
            v44 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v44)
            {
              *&valueCallBacks.version = *pixelBufferOut;
              valueCallBacks.release = v222;
              *v239 = *v219;
              *&v239[16] = v220;
              v45 = v44(v41, v34, v42, &valueCallBacks, v239, v43, &v232);
            }

            else
            {
              v45 = -12782;
            }

            if (VTParavirtualizationMessageAppendSInt32(*v237, 744845938, v45) || VTParavirtualizationMessageAppendUInt32(*v237, 745107046, v232))
            {
              v186 = 0;
            }

            else
            {
              vtParavirtualizationHostEncoderSession_sendMessageToGuest(v30, *v238);
              vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(v30, v34, v45 != 0, 1, 0, &cf, &v224);
              v186 = v224;
              vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(v30, v224);
              if (!v45)
              {
                goto LABEL_315;
              }
            }

            goto LABEL_253;
          }

          if (__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_9(&v233, (v30 + 144), &valueCallBacks))
          {
            goto LABEL_62;
          }

          v186 = 0;
        }
      }

      else
      {
        __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_10(&valueCallBacks);
        v186 = 0;
        if (!LODWORD(valueCallBacks.version))
        {
LABEL_315:
          if (*v238)
          {
            CFRelease(*v238);
          }

          if (*v237)
          {
            CFRelease(*v237);
          }

          if (v231)
          {
            CFRelease(v231);
          }

          if (pixelBuffer)
          {
            CFRelease(pixelBuffer);
          }

          if (theArray)
          {
            CFRelease(theArray);
          }

          v212 = cf;
          if (cf)
          {
            goto LABEL_340;
          }

          goto LABEL_341;
        }
      }
    }

LABEL_253:
    LODWORD(pixelBufferOut[0]) = 0;
    v219[0] = OS_LOG_TYPE_DEFAULT;
    v187 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_315;
  }

  if (v4 == 1701408374)
  {
    v143 = *(a1 + 32);
    v142 = *(a1 + 40);
    v233.version = 0;
    *type = 0;
    if (!VTParavirtualizationCreateReplyAndByteStream(v142, 4u, &v233, type))
    {
      VTVideoEncoderGetCMBaseObject();
      if (v144)
      {
        v145 = v144;
        v146 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        v147 = v146 ? v146(v145) : -12782;
      }

      else
      {
        v147 = -12780;
      }

      if (!VTParavirtualizationMessageAppendSInt32(*type, 744845938, v147))
      {
        vtParavirtualizationHostEncoderSession_sendMessageToGuest(v143, v233.version);
        if (!v147)
        {
          goto LABEL_264;
        }
      }
    }

    goto LABEL_262;
  }

  if (v4 != 1701669222)
  {
    goto LABEL_179;
  }

  v57 = *(a1 + 32);
  v58 = *(a1 + 40);
  v59 = *(a1 + 48);
  v60 = *(a1 + 56);
  v61 = *(a1 + 64);
  v232 = 0;
  *v237 = 0;
  *v238 = 0;
  v236 = 0;
  v62 = *MEMORY[0x1E695E480];
  v63 = MEMORY[0x1E695E9C0];
  v64 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v65 = CFArrayCreateMutable(v62, 0, v63);
  v66 = v65;
  theArray = 0;
  pixelBuffer = 0;
  v231 = 0;
  *type = *MEMORY[0x1E6960C70];
  v230 = *(MEMORY[0x1E6960C70] + 16);
  *v227 = *type;
  v228 = v230;
  cf = 0;
  v225 = 0;
  *v223 = 0;
  v224 = 0;
  if (!v64)
  {
    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_8(&valueCallBacks);
LABEL_419:
    v174 = 0;
LABEL_437:
    v82 = valueCallBacks.version;
    goto LABEL_213;
  }

  if (!v65)
  {
    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_7(&valueCallBacks);
    goto LABEL_419;
  }

  if (VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v58, 0, &v232, 0) || VTParavirtualizationCreateReplyAndByteStream(v58, 4u, v238, v237))
  {
    v174 = 0;
    goto LABEL_214;
  }

  v218 = v57;
  if (VTParavirtualizationMessageGetSInt64())
  {
    v174 = 0;
    goto LABEL_214;
  }

  v67 = v236;
  if (v61)
  {
    while (1)
    {
      v68 = *v59;
      if (!*v59)
      {
        break;
      }

      valueCallBacks.version = 0;
      if (!CVPixelBufferCreateWithIOSurface(v62, v68, 0, &valueCallBacks))
      {
        CFArrayAppendValue(v66, valueCallBacks.version);
        FigCFArrayAppendInt64();
      }

      if (valueCallBacks.version)
      {
        CFRelease(valueCallBacks.version);
      }

      v60 += 8;
      ++v59;
      if (!--v61)
      {
        goto LABEL_89;
      }
    }

    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_4(&valueCallBacks);
    v174 = 0;
    v82 = valueCallBacks.version;
LABEL_213:
    if (!v82)
    {
      goto LABEL_295;
    }

    goto LABEL_214;
  }

LABEL_89:
  if (VTParavirtualizationMessageCopyFigTagCollectionArray(v58, 745825067, &theArray))
  {
    v174 = 0;
    goto LABEL_214;
  }

  v69 = CFArrayGetCount(v66);
  v70 = theArray;
  if (theArray)
  {
    v70 = CFArrayGetCount(theArray);
  }

  if (v69 != v70)
  {
    __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_5(&valueCallBacks);
    v174 = 0;
    goto LABEL_437;
  }

  if (MEMORY[0x193AE2F70](v62, theArray, v66, &v231) || VTParavirtualizationMessageGetCMTime(v58, 745567347, type) || VTParavirtualizationMessageGetCMTime(v58, 744781170, v227) || VTParavirtualizationMessageCopyCFDictionary(v58, 744910962, &cf) || VTParavirtualizationMessageCopyCFUUIDArray())
  {
    v174 = 0;
  }

  else
  {
    v71 = pixelBuffer;
    FigSimpleMutexLock();
    v72 = *(v218 + 152);
    if (v72 || (v233.version = 0, v233.retain = vtClonePendingFrameSurfaceStuff, v233.copyDescription = 0, v233.equal = 0, v233.release = vtFreePendingFrameSurfaceStuff, v72 = CFDictionaryCreateMutable(v62, 0, 0, &v233), (*(v218 + 152) = v72) != 0))
    {
      if (!CFDictionaryGetValue(v72, v67))
      {
        CFDictionarySetValue(*(v218 + 152), v67, 0);
        v73 = CFDictionaryGetValue(*(v218 + 152), v67);
        v74 = *v73;
        v251.length = CFArrayGetCount(v66);
        v251.location = 0;
        CFArrayAppendArray(v74, v66, v251);
        v75 = v73[1];
        v252.length = CFArrayGetCount(v71);
        v252.location = 0;
        CFArrayAppendArray(v75, v71, v252);
        v76 = v73[2];
        v253.length = CFArrayGetCount(v64);
        v253.location = 0;
        CFArrayAppendArray(v76, v64, v253);
        *(v73 + 12) = 0;
      }

      FigSimpleMutexUnlock();
    }

    else if (!__VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_6(&v233, (v218 + 144), &valueCallBacks))
    {
      v174 = 0;
      goto LABEL_214;
    }

    dispatch_group_enter(*(v218 + 160));
    v77 = *(v218 + 24);
    v78 = v231;
    v79 = cf;
    *pixelBufferOut = *type;
    v222 = v230;
    *v219 = *v227;
    v220 = v228;
    v80 = *(CMBaseObjectGetVTable() + 16);
    if (*v80 >= 4uLL && (v81 = v80[21]) != 0)
    {
      *&valueCallBacks.version = *pixelBufferOut;
      valueCallBacks.release = v222;
      *v239 = *v219;
      *&v239[16] = v220;
      v82 = v81(v77, v67, v78, &valueCallBacks, v239, v79, &v225);
    }

    else
    {
      v82 = -12782;
    }

    if (!VTParavirtualizationMessageAppendSInt32(*v237, 744845938, v82) && !VTParavirtualizationMessageAppendUInt32(*v237, 745107046, v225))
    {
      vtParavirtualizationHostEncoderSession_sendMessageToGuest(v218, *v238);
      vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(v218, v67, v82 != 0, 1, 0, &v224, v223);
      v174 = *v223;
      vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(v218, *v223);
      goto LABEL_213;
    }

    v174 = 0;
  }

LABEL_214:
  LODWORD(pixelBufferOut[0]) = 0;
  v219[0] = OS_LOG_TYPE_DEFAULT;
  v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_295:
  if (*v238)
  {
    CFRelease(*v238);
  }

  if (*v237)
  {
    CFRelease(*v237);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v231)
  {
    CFRelease(v231);
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (v224)
  {
    CFRelease(v224);
  }

  if (v174)
  {
    v190 = v174;
LABEL_383:
    CFRelease(v190);
  }

LABEL_384:
  free(*(a1 + 48));
  free(*(a1 + 56));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t VTParavirtualizationHostEncoderSessionSetPixelBufferAttributes(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v11 = 0;
  cf = 0;
  v9 = 0;
  v10 = 0;
  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(a2, &v10);
  if (appended)
  {
    goto LABEL_22;
  }

  v4 = *(a1 + 136);
  appended = VTParavirtualizationCreateMessageAndByteStream(0x45706261u, 2 * (v4 > 2), (a1 + 120), 0, &cf, &v11);
  if (appended)
  {
    goto LABEL_22;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList(v11, 0x2C706261u, v10);
  if (appended)
  {
    goto LABEL_22;
  }

  if (v4 < 3)
  {
    v5 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v9);
  if (appended)
  {
LABEL_22:
    v5 = appended;
    goto LABEL_12;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = v13;
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
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

  return v5;
}

uint64_t VTParavirtualizationHostEncoderSessionCreateVideoFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v18 = 0;
  cf = 0;
  v17 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x45666473u, 2u, (a1 + 120), 0, &cf, &v18);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(v18, 744714084, v10), appended) || (appended = VTParavirtualizationMessageAppendSInt32(v18, 746022004, v9), appended) || (appended = VTParavirtualizationMessageAppendSInt32(v18, 745039732, v8), appended) || a5 && (appended = VTParavirtualizationMessageAppendCFDictionary(v18, 0x2C657874u, a5), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v17), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v13 = appended;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  v13 = v20;
  if (v20)
  {
    goto LABEL_14;
  }

  v14 = VTParavirtualizationMessageCopyCMFormatDescription();
  v13 = v14;
  if (a6 && !v14)
  {
    *a6 = 0;
    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v13;
}

uint64_t VTParavirtualizationHostEncoderSessionEmitEncodedFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v6 = a4;
  v7 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  cf = 0;
  v21 = 0;
  v22 = 0;
  theArray = 0;
  v20 = 0;
  v18 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x45656D74u, 2u, (a1 + 120), 0, &cf, &v23);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt64(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(v23, 744845938, v7), appended) || (appended = VTParavirtualizationMessageAppendUInt32(v23, 744842860, v6), appended))
  {
    v15 = appended;
    vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v18);
    goto LABEL_42;
  }

  vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v18);
  v11 = theArray;
  if (theArray)
  {
    if (CFArrayGetCount(theArray) == 1)
    {
      CFArrayGetValueAtIndex(v11, 0);
      v12 = VTParavirtualizationMessageAppendCFUUID();
      if (v12)
      {
        goto LABEL_41;
      }
    }

    else if (CFArrayGetCount(v11) >= 2)
    {
      v12 = VTParavirtualizationMessageAppendCFUUIDArray(v23, 0x2C75692Bu, v11);
      if (v12)
      {
        goto LABEL_41;
      }
    }
  }

  if (!a5)
  {
LABEL_25:
    vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationCodecOperationReplyTimeout, &v22);
    v14 = v18;
    vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v18);
    v15 = 0;
    goto LABEL_26;
  }

  v12 = VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(v23, 745759334, *(a1 + 136), 0x4000uLL, a5, (a1 + 200), &v21);
  if (!v12)
  {
    if (v21)
    {
      while (1)
      {
        v12 = VTParavirtualizationMessageChangeMessageFlags(cf, 16, 18);
        if (v12)
        {
          goto LABEL_41;
        }

        v12 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
        if (v12)
        {
          goto LABEL_41;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v23)
        {
          CFRelease(v23);
          v23 = 0;
        }

        v12 = VTParavirtualizationCreateMessageAndByteStream(0x45656D74u, 2u, (a1 + 120), 0, &cf, &v23);
        if (v12)
        {
          goto LABEL_41;
        }

        v12 = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(v23, 0x2C736266u, 0x4000uLL, v21, &v20);
        if (v12)
        {
          goto LABEL_41;
        }

        if (v21)
        {
          CFRelease(v21);
        }

        v13 = v20;
        v20 = 0;
        v21 = v13;
        if (!v13)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_41:
  v15 = v12;
LABEL_42:
  v14 = v18;
  vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v18);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}

uint64_t vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingFramePixelBuffersAndUUIDsAndMappingIDs(uint64_t a1, const void *a2, int a3, int a4, int a5, CFArrayRef *a6, void *a7)
{
  FigSimpleMutexLock();
  v14 = *(a1 + 152);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, a2);
    if (Value)
    {
      if (a4)
      {
        if (!Value[24])
        {
          Value[24] = 1;
        }
      }

      else if (a5 && !Value[25])
      {
        Value[25] = 1;
      }

      if (Value[24])
      {
        if (Value[25] | a3)
        {
LABEL_11:
          *a7 = *(Value + 2);
          *(Value + 2) = 0;
          *a6 = *(Value + 1);
          *(Value + 1) = 0;
          CFDictionaryRemoveValue(*(a1 + 152), a2);
          dispatch_group_leave(*(a1 + 160));
          goto LABEL_17;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v16 = *(Value + 1);
      if (v16)
      {
        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v16);
      }

      else
      {
        Copy = 0;
      }

      *a6 = Copy;
    }
  }

LABEL_17:

  return FigSimpleMutexUnlock();
}

uint64_t VTParavirtualizationHostEncoderSessionSetTileAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0;
  cf = 0;
  v10 = 0;
  v11 = 0;
  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(a3, &v11);
  if (appended)
  {
    goto LABEL_21;
  }

  v5 = *(a1 + 136);
  appended = VTParavirtualizationCreateMessageAndByteStream(0x54457361u, 2 * (v5 > 2), (a1 + 120), 0, &cf, &v12);
  if (appended)
  {
    goto LABEL_21;
  }

  appended = VTParavirtualizationMessageAppendVTInt32Size();
  if (appended)
  {
    goto LABEL_21;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList(v12, 0x2C706261u, v11);
  if (appended)
  {
    goto LABEL_21;
  }

  if (v5 < 3)
  {
    v6 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_13:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v10);
  if (appended)
  {
LABEL_21:
    v6 = appended;
    goto LABEL_13;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v14;
  }

  if (v6)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v6;
}

uint64_t VTParavirtualizationHostEncoderSessionCreateTileVideoFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v18 = 0;
  cf = 0;
  v17 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x54456364u, 2u, (a1 + 120), 0, &cf, &v18);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(v18, 744714084, v10), appended) || (appended = VTParavirtualizationMessageAppendSInt32(v18, 746022004, v9), appended) || (appended = VTParavirtualizationMessageAppendSInt32(v18, 745039732, v8), appended) || a5 && (appended = VTParavirtualizationMessageAppendCFDictionary(v18, 0x2C657874u, a5), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v17), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v13 = appended;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  v13 = v20;
  if (v20)
  {
    goto LABEL_14;
  }

  v14 = VTParavirtualizationMessageCopyCMFormatDescription();
  v13 = v14;
  if (a6 && !v14)
  {
    *a6 = 0;
    goto LABEL_15;
  }

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v13;
}

uint64_t VTParavirtualizationHostEncoderSessionEmitEncodedTile(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v6 = a4;
  v7 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  cf = 0;
  v20 = 0;
  v21 = 0;
  theArray = 0;
  v19 = 0;
  v17 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x5445656Du, 2u, (a1 + 120), 0, &cf, &v22);
  if (appended)
  {
    goto LABEL_38;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_38;
  }

  appended = VTParavirtualizationMessageAppendSInt32(v22, 744845938, v7);
  if (appended)
  {
    goto LABEL_38;
  }

  appended = VTParavirtualizationMessageAppendUInt32(v22, 744842860, v6);
  if (appended)
  {
    goto LABEL_38;
  }

  if (!a5)
  {
    goto LABEL_19;
  }

  appended = VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(v22, 745759334, *(a1 + 136), 0x3FDCuLL, a5, (a1 + 200), &v20);
  if (appended)
  {
LABEL_38:
    v13 = appended;
    vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v17);
    goto LABEL_39;
  }

  if (v20)
  {
    do
    {
      appended = VTParavirtualizationMessageChangeMessageFlags(cf, 16, 18);
      if (appended)
      {
        goto LABEL_38;
      }

      appended = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
      if (appended)
      {
        goto LABEL_38;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v22)
      {
        CFRelease(v22);
        v22 = 0;
      }

      appended = VTParavirtualizationCreateMessageAndByteStream(0x5445656Du, 2u, (a1 + 120), 0, &cf, &v22);
      if (appended)
      {
        goto LABEL_38;
      }

      appended = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(v22, 0x2C736266u, 0x3FDCuLL, v20, &v19);
      if (appended)
      {
        goto LABEL_38;
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v11 = v19;
      v19 = 0;
      v20 = v11;
    }

    while (v11);
  }

LABEL_19:
  vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 1, &theArray, &v17);
  v12 = theArray;
  if (!theArray || CFArrayGetCount(theArray) < 1 || (CFArrayGetValueAtIndex(v12, 0), v13 = VTParavirtualizationMessageAppendCFUUID(), !v13))
  {
    vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationCodecOperationReplyTimeout, &v21);
    v14 = v17;
    vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v17);
    v13 = 0;
    goto LABEL_23;
  }

LABEL_39:
  v14 = v17;
  vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(a1, v17);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v13;
}

uint64_t vtParavirtualizationHostEncoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(uint64_t a1, const void *a2, int a3, int a4, int a5, CFArrayRef *a6, CFMutableArrayRef *a7)
{
  FigSimpleMutexLock();
  v14 = *(a1 + 176);
  if (!v14)
  {
    return FigSimpleMutexUnlock();
  }

  Value = CFDictionaryGetValue(v14, a2);
  if (!Value)
  {
    return FigSimpleMutexUnlock();
  }

  v16 = Value;
  if (a4)
  {
    if (!Value[24])
    {
      Value[24] = 1;
    }
  }

  else if (a5 && !Value[25])
  {
    Value[25] = 1;
  }

  if (Value[24])
  {
    if (Value[25] | a3)
    {
      goto LABEL_11;
    }

LABEL_28:
    v27 = *(Value + 1);
    if (v27)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v27);
    }

    else
    {
      Copy = 0;
    }

    *a6 = Copy;
    return FigSimpleMutexUnlock();
  }

  if (!a3)
  {
    goto LABEL_28;
  }

LABEL_11:
  v30 = a7;
  v31 = a6;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  for (i = 0; ; ++i)
  {
    Count = *(v16 + 2);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    FigCFArrayGetInt64AtIndex();
    SInt64 = FigCFNumberCreateSInt64();
    v21 = CFDictionaryGetValue(*(a1 + 192), SInt64);
    if (!v21)
    {
      goto LABEL_22;
    }

    v22 = v21;
    v23 = CFArrayGetCount(v21);
    if (v23 >= 1)
    {
      v24 = v23;
      v25 = FigCFNumberCreateSInt64();
      v32.location = 0;
      v32.length = v24;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v22, v32, v25);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(v22, FirstIndexOfValue);
      }

      if (v25)
      {
        CFRelease(v25);
      }
    }

    if (!CFArrayGetCount(v22))
    {
LABEL_22:
      CFDictionaryRemoveValue(*(a1 + 192), SInt64);
      FigCFArrayAppendInt64();
    }

    if (SInt64)
    {
      CFRelease(SInt64);
    }
  }

  *v30 = Mutable;
  *v31 = *(v16 + 1);
  *(v16 + 1) = 0;
  CFDictionaryRemoveValue(*(a1 + 176), a2);
  dispatch_group_leave(*(a1 + 184));
  return FigSimpleMutexUnlock();
}

uint64_t VTParavirtualizationHostEncoderSessionSetTileEncodeRequirements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v10 = 0;
  cf[0] = 0;
  v9 = 0;
  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(a2, &v9);
  if (appended || (appended = VTParavirtualizationCreateMessageAndByteStream(0x54457372u, 0, (a1 + 120), 0, cf, &v10), appended) || v9 && (appended = VTParavirtualizationMessageAppendCFPropertyList(v10, 0x2C636261u, v9), appended) || a3 && (appended = VTParavirtualizationMessageAppendCFPropertyList(v10, 0x2C746572u, a3), appended))
  {
    v6 = appended;
  }

  else
  {
    v6 = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf[0]);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

void VTParavirtualizationHostEncoderSessionInvalidate(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  *(a1 + 16) = 1;
  os_unfair_lock_unlock((a1 + 20));
  v2 = *(a1 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTParavirtualizationHostEncoderSessionInvalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_6_0;
  block[4] = a1;
  dispatch_sync(v2, block);
}

void __VTParavirtualizationHostEncoderSessionInvalidate_block_invoke()
{
  VTVideoEncoderGetCMBaseObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v2)
    {

      v2(v1);
    }
  }
}

intptr_t VTParavirtualizationHostEncoderSessionCompleteInvalidate(intptr_t result)
{
  if (*(result + 160))
  {
    v1 = result;
    v2 = 2;
    do
    {
      v3 = *(v1 + 160);
      v4 = dispatch_time(0, 1000000000 * v2);
      v2 *= 2;
    }

    while (dispatch_group_wait(v3, v4));
    v5 = 2;
    do
    {
      v6 = *(v1 + 184);
      v7 = dispatch_time(0, 1000000000 * v5);
      result = dispatch_group_wait(v6, v7);
      v5 *= 2;
    }

    while (result);
  }

  return result;
}

uint64_t VTParavirtualizationHostEncoderSessionSetTimeRangesForNextPass(uint64_t a1, uint64_t a2, const UInt8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v13 = 0;
  cf = 0;
  v12 = 0;
  v5 = 48 * a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 48 * a2);
  appended = VTParavirtualizationCreateMessageAndByteStream(0x45737073u, 2u, (a1 + 120), 0, &cf, &v13);
  if (appended || (CFDataAppendBytes(Mutable, a3, v5), appended = VTParavirtualizationMessageAppendCFData(), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v12), appended))
  {
    v9 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v15;
  }

  if (v9)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageSetIdentifier(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = 0;
  cf = 0;
  v9 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D707369u, 2u, (a1 + 120), 0, &cf, &v10);
  if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(v10, 0x2C766964u, a2), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v9), appended))
  {
    v6 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v12;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

CFTypeRef VTParavirtualizationHostEncoderSessionMultipassStorageCopyIdentifier(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  v6 = 0;
  cf[0] = 0;
  v4 = 0;
  v5 = 0;
  if (VTParavirtualizationCreateMessageAndByteStream(0x6D706964u, 2u, (a1 + 120), 0, cf, &v6) || vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf[0], &kVTParavirtualizationDefaultReplyTimeout, &v5) || VTParavirtualizationMessageCopyCFPropertyList(v5, 745957732, &v4))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageGetTimeStamp(uint64_t a1, CMTime *a2, uint64_t a3, CMTime *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0;
  cf = 0;
  v15 = 0;
  v13 = *MEMORY[0x1E6960CC0];
  v14 = *(MEMORY[0x1E6960CC0] + 16);
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D707374u, 2u, (a1 + 120), 0, &cf, &v16);
  if (appended || (time = *a2, appended = VTParavirtualizationMessageAppendCMTime(), appended) || (appended = VTParavirtualizationMessageAppendCFPropertyList(v16, 0x2C6D7073u, a3), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v15), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v9 = appended;
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  v9 = v18;
  if (v18)
  {
    goto LABEL_11;
  }

  CMTime = VTParavirtualizationMessageGetCMTime(v15, 745829232, &v13);
  v9 = CMTime;
  if (a4 && !CMTime)
  {
    *&a4->value = v13;
    a4->epoch = v14;
    goto LABEL_12;
  }

  if (CMTime)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v9;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageGetTimeStampAndDuration(uint64_t a1, CMTime *a2, uint64_t a3, CMTime *a4, CMTime *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v20 = 0;
  cf = 0;
  v19 = 0;
  v17 = *MEMORY[0x1E6960CC0];
  v18 = *(MEMORY[0x1E6960CC0] + 16);
  v15 = v17;
  v16 = v18;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D706474u, 2u, (a1 + 120), 0, &cf, &v20);
  if (appended)
  {
    goto LABEL_22;
  }

  time = *a2;
  appended = VTParavirtualizationMessageAppendCMTime();
  if (appended)
  {
    goto LABEL_22;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList(v20, 0x2C6D7073u, a3);
  if (appended)
  {
    goto LABEL_22;
  }

  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v19);
  if (appended)
  {
    goto LABEL_22;
  }

  VTParavirtualizationMessageGetSInt32();
  if (appended)
  {
    goto LABEL_22;
  }

  v11 = v22;
  if (v22)
  {
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  appended = VTParavirtualizationMessageGetCMTime(v19, 745829232, &v17);
  if (appended)
  {
LABEL_22:
    v11 = appended;
    goto LABEL_14;
  }

  if (a4)
  {
    *&a4->value = v17;
    a4->epoch = v18;
  }

  CMTime = VTParavirtualizationMessageGetCMTime(v19, 744781170, &v15);
  v11 = CMTime;
  if (a5 && !CMTime)
  {
    *&a5->value = v15;
    a5->epoch = v16;
    goto LABEL_15;
  }

  if (CMTime)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v11;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageCopyDataAtTimeStamp(uint64_t a1, CMTime *a2, uint64_t a3, CFMutableDataRef *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v15 = 0;
  cf = 0;
  theData = 0;
  v14 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D706364u, 2u, (a1 + 120), 0, &cf, &v15);
  if (appended || (time = *a2, appended = VTParavirtualizationMessageAppendCMTime(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(v15, 745107044, v5), appended) || (appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v14), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v9 = appended;
LABEL_11:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  v9 = v17;
  if (v17)
  {
    goto LABEL_11;
  }

  v10 = VTParavirtualizationMessageCopyCFData(v14, 745369700, &theData);
  v9 = v10;
  if (a4 && !v10)
  {
    *a4 = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, theData);
    goto LABEL_12;
  }

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v9;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageSetDataAtTimeStamp(uint64_t a1, CMTime *a2, uint64_t a3, const __CFData *a4)
{
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v15 = 0;
  cf = 0;
  v14 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(0x6D707364u, 2u, (a1 + 120), 0, &cf, &v15);
  if (appended)
  {
    goto LABEL_17;
  }

  time = *a2;
  appended = VTParavirtualizationMessageAppendCMTime();
  if (appended)
  {
    goto LABEL_17;
  }

  appended = VTParavirtualizationMessageAppendSInt32(v15, 745107044, v5);
  if (appended)
  {
    goto LABEL_17;
  }

  if (a4)
  {
    LOBYTE(v18) = 0;
    appended = VTParavirtualizationMessageCFDataRequiresFragmentation(v15, 0x4000uLL, a4, &v18);
    if (appended)
    {
      goto LABEL_17;
    }

    if (v18)
    {
      time.value = 0;
      do
      {
        appended = VTParavirtualizationMessageAppendCFDataWithLimitFromOffset(v15, 0x2C6D7064u, 0x4000uLL, a4, &time.value);
        if (appended)
        {
          break;
        }

        value = time.value;
        if (value >= CFDataGetLength(a4))
        {
          goto LABEL_19;
        }

        appended = VTParavirtualizationMessageChangeMessageFlags(cf, 16, 18);
        if (appended)
        {
          break;
        }

        appended = vtParavirtualizationHostEncoderSession_sendMessageToGuest(a1, cf);
        if (appended)
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v15)
        {
          CFRelease(v15);
          v15 = 0;
        }

        appended = VTParavirtualizationCreateMessageAndByteStream(0x6D707364u, 2u, (a1 + 120), 0, &cf, &v15);
      }

      while (!appended);
      goto LABEL_17;
    }

    appended = VTParavirtualizationMessageAppendCFData();
    if (appended)
    {
LABEL_17:
      v10 = appended;
LABEL_24:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_25;
    }
  }

LABEL_19:
  appended = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v14);
  if (appended)
  {
    goto LABEL_17;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v11)
  {
    v10 = v11;
  }

  else
  {
    v10 = v17;
  }

  if (v10)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

uint64_t VTParavirtualizationHostEncoderSessionMultipassStorageInvalidate(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0;
  cf = 0;
  v7 = 0;
  v2 = VTParavirtualizationCreateMessageAndByteStream(0x6D70696Eu, 2u, (a1 + 120), 0, &cf, &v8);
  if (v2 || (v2 = vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationDefaultReplyTimeout, &v7), v2))
  {
    v4 = v2;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v10;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

double vtParavirtualizationHostEncoderSession_Init(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void vtParavirtualizationHostEncoderSession_Finalize(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (dword_1EAD321C0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  VTEncoderSessionTeardown(a1 + 32);
  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 104) = 0;
  }

  _Block_release(*(a1 + 112));
  *(a1 + 112) = 0;
  v6 = *(a1 + 152);
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
    v7 = *(a1 + 152);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 152) = 0;
    }
  }

  v8 = *(a1 + 176);
  if (v8)
  {
    CFDictionaryRemoveAllValues(v8);
    v9 = *(a1 + 176);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 176) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 144) = 0;
  FigSimpleMutexDestroy();
  *(a1 + 168) = 0;
  v10 = *(a1 + 160);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 160) = 0;
  }

  v11 = *(a1 + 184);
  if (v11)
  {
    dispatch_release(v11);
    *(a1 + 184) = 0;
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 192) = 0;
  }

  v13 = *(a1 + 200);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 200) = 0;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    v14[3] = 0;
    CFRelease(v14);
    *(a1 + 208) = 0;
  }

  v15 = *(a1 + 216);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 216) = 0;
  }
}

__CFString *vtParavirtualizationHostEncoderSession_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"VTParavirtualizationHostEncoderSession %p RC: %d encoder %p", a1, v4, a1[3]);
  return Mutable;
}

uint64_t vtParavirtualizationHostEncoderSession_isPropertyInDenyList(void *value)
{
  if (vtParavirtualizationHostEncoderSession_isPropertyInDenyList_onceToken != -1)
  {
    vtParavirtualizationHostEncoderSession_isPropertyInDenyList_cold_1();
  }

  v2 = vtParavirtualizationHostEncoderSession_isPropertyInDenyList_denyList;

  return CFSetContainsValue(v2, value);
}

uint64_t vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (vtParavirtualizationHostEncoderSession_getSpecialCaseHandlersForSettingProperties_sCreateDictionaryOnce != -1)
  {
    vtParavirtualizationHostEncoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue_cold_1();
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v8 = *(Value + 8);

    return v8(a1, a3, a4);
  }

  else
  {
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
    return 0;
  }
}

CFSetRef __vtParavirtualizationHostEncoderSession_isPropertyInDenyList_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = @"Paravirtualized";
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 1, MEMORY[0x1E695E9F8]);
  vtParavirtualizationHostEncoderSession_isPropertyInDenyList_denyList = result;
  return result;
}

CFDictionaryRef __vtParavirtualizationHostEncoderSession_getSpecialCaseHandlersForSettingProperties_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = &_block_invoke_specialCasePropertyAndHandlerPairs;
  keys[0] = @"MultiPassStorage";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  vtParavirtualizationHostEncoderSession_getSpecialCaseHandlersForSettingProperties_sSpecialCaseHandlersForSettingProperties = result;
  return result;
}

uint64_t vtParavirtualizationHostEncoderSession_handleMultiPassStorageSetPropertyAndCopyReplacementValue(uint64_t a1, uint64_t a2, void *a3)
{
  if (*MEMORY[0x1E695E4D0] == a2)
  {
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    v9 = *(MEMORY[0x1E6960C98] + 16);
    *&v12.start.value = *MEMORY[0x1E6960C98];
    *&v12.start.epoch = v9;
    *&v12.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    v6 = VTMultiPassStorageCreate(v7, 0, &v12, Mutable, (a1 + 208));
    if (!v6)
    {
      v10 = *(a1 + 208);
      if (v10)
      {
        v10 = CFRetain(v10);
      }

      *a3 = v10;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v5 = *(a1 + 208);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 208) = 0;
    }

    v6 = 0;
    *a3 = *MEMORY[0x1E695E738];
  }

  return v6;
}

CFMutableArrayRef *vtClonePendingFrameSurfaceStuff(uint64_t a1)
{
  v1 = MEMORY[0x193AE0CD0](a1, 32, 0x1020040D1034F40, 0);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  *v1 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1[1] = CFArrayCreateMutable(v2, 0, v3);
  v1[2] = CFArrayCreateMutable(v2, 0, v3);
  return v1;
}

void vtFreePendingFrameSurfaceStuff(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

CFMutableArrayRef *vtClonePendingTileSurfaceStuff(uint64_t a1)
{
  v1 = MEMORY[0x193AE0CD0](a1, 32, 0x1020040D1034F40, 0);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  *v1 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1[1] = CFArrayCreateMutable(v2, 0, v3);
  v1[2] = CFArrayCreateMutable(v2, 0, v3);
  return v1;
}

void vtFreePendingTileSurfaceStuff(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  os_unfair_lock_lock((a1 + 20));
  if (*(a1 + 16))
  {
    v6 = 1061109567;
    VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v6, 0, 0);
    v4 = 4294948198;
  }

  else
  {
    (*(*(a1 + 112) + 16))();
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 20));
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{
  v3 = a1;
  v4 = *v1;

  return VTParavirtualizationMessageAppendSInt32(v4, 744845938, v3);
}

uint64_t VTRegisterVideoEncoderWithInfo(unsigned int a1, const __CFDictionary *a2, uint64_t a3)
{
  valuePtr = 0;
  MEMORY[0x193AE3010](&sCreateVideoEncoderRegistryOnce, vtCreateVideoEncoderRegistry);
  v7 = *MEMORY[0x1E695E480];
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, @"CMClassImplementationID");
      goto LABEL_6;
    }

    emitter = fig_log_get_emitter();
    v20 = v3;
    v21 = 871;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      Value = 0;
LABEL_6:
      *bytes = bswap32(a1);
      v12 = CFStringCreateWithBytes(v7, bytes, 4, 0x600u, 0);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v9, @"VTCodecType", v12);
        v14 = CFStringCreateWithFormat(v7, 0, @"Dynamically Registered %@ Video Encoder", v13);
        v15 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
        if (v15)
        {
          CFDictionaryAddValue(v9, @"VTRating", v15);
          CFDictionarySetValue(v9, @"VTAllowSandboxedEncode", *MEMORY[0x1E695E4C0]);
          v16 = vtRegisterVideoEncoderInternal(v13, v14, Value, v9, a3, 0);
        }

        else
        {
          fig_log_get_emitter();
          v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, valuePtr, v27);
        }

        v17 = v16;
        CFRelease(v9);
        CFRelease(v13);
        if (v14)
        {
          CFRelease(v14);
        }

        if (!v15)
        {
          return v17;
        }

        v18 = v15;
      }

      else
      {
        fig_log_get_emitter();
        v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, valuePtr, v27);
        v18 = v9;
      }

      CFRelease(v18);
      return v17;
    }

    emitter = fig_log_get_emitter();
    v20 = v3;
    v21 = 880;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<<<< VTVideoEncoderSelection >>>>", v21, v20);
}

uint64_t vtPopulateVideoEncoderRegistry()
{
  MEMORY[0x193AE3010](&sInitializeVideoEncoderRegistryOnce, vtInitializeVideoEncoderRegistry);
  FigSimpleMutexLock();
  if (_MergedGlobals_9 == 1)
  {
    vtLoadParavirtualizedVideoEncoders();
    _MergedGlobals_9 = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal(unsigned int a1, uint64_t a2, int a3, CFTypeRef cf, CFIndex a5, void *a6, _BYTE *a7, CFIndex *a8, void *a9)
{
  v10 = v9;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  theDict = 0;
  if (!cf)
  {
    LODWORD(v18) = 0;
    v15 = 0;
LABEL_8:
    Value = 0;
    goto LABEL_9;
  }

  v14 = CFRetain(cf);
  v15 = v14;
  if (!v14)
  {
    LODWORD(v18) = 0;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(v14, @"EncoderID");
  v17 = *MEMORY[0x1E695E4D0];
  if (v17 != CFDictionaryGetValue(v15, @"RequiredLowLatency"))
  {
    CFDictionaryGetValue(v15, @"EnableLowLatencyRateControl");
  }

  LODWORD(v18) = 1;
LABEL_9:
  vtPopulateVideoEncoderRegistry();
  v67 = v18;
  if (!sVideoEncoderRegistry)
  {
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v58, v60);
    v20 = 0;
    goto LABEL_35;
  }

  v72 = 0uLL;
  v73 = 0;
  if (v18)
  {
    v18 = *MEMORY[0x1E695E4D0];
    LOBYTE(v18) = v18 == CFDictionaryGetValue(v15, @"RequireHardwareAcceleratedVideoEncoder");
  }

  *bytes = bswap32(a1);
  allocator = *MEMORY[0x1E695E480];
  v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  v20 = v19;
  if (!v19)
  {
    VTSelectAndCreateVideoEncoderInstanceInternal_cold_1(v79);
    v23 = LODWORD(v79[0]);
    goto LABEL_82;
  }

  *&v72 = v19;
  *(&v72 + 1) = v15;
  LOBYTE(v73) = v18;
  BYTE1(v73) = 1;
  v21 = FigRegistryCopyFilteredItemList();
  if (v21)
  {
    goto LABEL_14;
  }

  BYTE1(v73) = 0;
  v44 = vtCopyExpandedEncoderListForWrappers(v77, &v72, &v76);
  if (v44)
  {
    v23 = v44;
    goto LABEL_82;
  }

  v22 = v76;
  if (!v76)
  {
LABEL_14:
    v22 = v77;
  }

  else
  {
    if (v77)
    {
      CFRelease(v77);
      v22 = v76;
    }

    v76 = 0;
    v77 = v22;
  }

  v23 = 4294954388;
  if (!v22)
  {
    goto LABEL_35;
  }

  Count = CFArrayGetCount(v22);
  v23 = Count ? v21 : 4294954388;
  if (!Count || v21)
  {
    goto LABEL_35;
  }

  if (!Value)
  {
    goto LABEL_123;
  }

  v62 = v20;
  v25 = v77;
  v78 = 0;
  v79[0] = 0;
  v26 = CFArrayGetCount(v77);
  key = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v26 < 1)
  {
LABEL_111:
    v23 = 0;
    v76 = key;
    v45 = 0;
    goto LABEL_112;
  }

  v27 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v25, v27);
    if (!ValueAtIndex)
    {
      goto LABEL_32;
    }

    v29 = ValueAtIndex;
    v30 = FigRegistryItemCopyDescription();
    if (v30)
    {
      break;
    }

    v30 = FigRegistryItemCopyMatchingInfo();
    if (v30)
    {
      break;
    }

    CFDictionaryGetValue(v79[0], @"CMClassImplementationID");
    if (FigCFEqual())
    {
      CFArrayAppendValue(key, v29);
      goto LABEL_111;
    }

    if (v79[0])
    {
      CFRelease(v79[0]);
      v79[0] = 0;
    }

    if (v78)
    {
      CFRelease(v78);
      v78 = 0;
    }

LABEL_32:
    if (v26 == ++v27)
    {
      goto LABEL_111;
    }
  }

  v23 = v30;
  v45 = key;
LABEL_112:
  v10 = v9;
  v20 = v62;
  if (v79[0])
  {
    CFRelease(v79[0]);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v23)
  {
    goto LABEL_82;
  }

  if (v77)
  {
    CFRelease(v77);
  }

  v46 = v76;
  v76 = 0;
  v77 = v46;
  if (v46 && CFArrayGetCount(v46))
  {
LABEL_123:
    v47 = CFArrayGetCount(v77);
    MutableCopy = CFArrayCreateMutableCopy(allocator, v47, v77);
    if (MutableCopy)
    {
      v49 = MutableCopy;
      v80.length = CFArrayGetCount(MutableCopy);
      v80.location = 0;
      CFArraySortValues(v49, v80, vtSortRegistryItemsByVideoEncoderRating, v15);
      CFRelease(v77);
      v23 = 0;
      v77 = v49;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 4294954388;
  }

LABEL_35:
  if (a7)
  {
    *a7 = 0;
  }

  if (!a6)
  {
LABEL_82:
    Mutable = 0;
    goto LABEL_83;
  }

  v65 = a8;
  if (v77)
  {
    v31 = CFArrayGetCount(v77);
  }

  else
  {
    v31 = 0;
  }

  if (v31 <= a5)
  {
    v32 = -12908;
  }

  else
  {
    v32 = v23;
  }

  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31 == 0;
  }

  if (v33)
  {
    v23 = 4294954388;
  }

  else
  {
    v23 = v32;
  }

  if (v23)
  {
    emitter = fig_log_get_emitter();
    if (a5 < 1)
    {
      v35 = 3311;
    }

    else
    {
      v35 = 3307;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v23, "<<<< VTVideoEncoderSelection >>>>", v35, v10);
    goto LABEL_82;
  }

  if (v31 <= a5)
  {
    Mutable = 0;
    goto LABEL_97;
  }

  Mutable = 0;
  v59 = a9;
  v37 = *MEMORY[0x1E695E4D0];
  v63 = *MEMORY[0x1E695E480];
  v61 = @"VTHostEncoderID";
  while (2)
  {
    *&v72 = 0;
    v79[0] = 0;
    CFArrayGetValueAtIndex(v77, a5);
    FigRegistryItemCopyMatchingInfo();
    FigRegistryItemCopyDescription();
    if (!theDict)
    {
      v38 = 0;
LABEL_64:
      if (!FigRegistryItemGetFactory())
      {
        goto LABEL_66;
      }

      *&v72 = 0;
      goto LABEL_68;
    }

    v38 = CFDictionaryGetValue(theDict, @"CMClassImplementationID");
    if (!theDict || v37 != CFDictionaryGetValue(theDict, @"VTFactoryFunctionHasSpecificationArgument"))
    {
      goto LABEL_64;
    }

    if (FigRegistryItemGetFactory())
    {
      v79[0] = 0;
    }

    if (v74)
    {
      v39 = CFDictionaryGetValue(v74, @"VTHostEncoderID");
      if (v39)
      {
        v40 = v39;
        Mutable = CFDictionaryCreateMutable(v63, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, v61, v40);
      }
    }

LABEL_66:
    if (v72)
    {
      v41 = (v72)(a1, a2, a6);
      goto LABEL_71;
    }

LABEL_68:
    if (v79[0])
    {
      v41 = (v79[0])(a1, v38, Mutable, a2, a6);
    }

    else
    {
      fig_log_get_emitter();
      v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v59, v61);
    }

LABEL_71:
    v23 = v41;
    if (v41 || !*a6 && (fig_log_get_emitter(), v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v57, v59, v61), v23))
    {
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      if (v74)
      {
        CFRelease(v74);
        v74 = 0;
      }

      if (v31 == ++a5)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  if (v65)
  {
    *v65 = a5;
  }

  if (v59 && theDict)
  {
    CFDictionaryGetValue(theDict, @"CMClassImplementationName");
    if (v38)
    {
      v43 = CFRetain(v38);
    }

    else
    {
      v43 = 0;
    }

    *v59 = v43;
  }

  if (!v74)
  {
    goto LABEL_97;
  }

  v50 = v67 ^ 1;
  if (!*a6)
  {
    v50 = 1;
  }

  if ((v50 & 1) == 0 && CFDictionaryGetValue(v74, @"VTWrappedEncoderID"))
  {
    v51 = FigCFDictionaryCreateMutableCopy();
    if (v51)
    {
      v52 = v51;
      CFDictionaryRemoveValue(v51, @"EncoderID");
      v53 = CFDictionaryGetValue(v74, @"VTWrappedEncoderID");
      if (v53)
      {
        CFDictionarySetValue(v52, @"EncoderID", v53);
        VTVideoEncoderGetCMBaseObject();
        v55 = v54;
        v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v56)
        {
          v56(v55, @"SublayerEncoderSpecification", v52);
        }

        CFRelease(v52);
        goto LABEL_97;
      }

      VTSelectAndCreateVideoEncoderInstanceInternal_cold_2(&v78);
    }

    else
    {
      VTSelectAndCreateVideoEncoderInstanceInternal_cold_3(&v78);
    }

    v23 = v78;
  }

  else
  {
LABEL_97:
    v23 = 0;
  }

LABEL_83:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v77)
  {
    CFRelease(v77);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v23;
}

uint64_t VTCreateVideoEncoderInstanceFromEncoderID(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  listOfVideoEncodersOut = 0;
  v17 = 0;
  cf = 0;
  if (!a1)
  {
    VTCreateVideoEncoderInstanceFromEncoderID_cold_1(&v19);
    v14 = v19;
    goto LABEL_16;
  }

  v5 = VTCopyVideoEncoderList(0, &listOfVideoEncodersOut);
  v6 = listOfVideoEncodersOut;
  if (!v5)
  {
    if (CFArrayGetCount(listOfVideoEncodersOut) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, @"EncoderID");
        if (Value && CFEqual(Value, a1) && FigCFDictionaryGetInt32IfPresent())
        {
          break;
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    v10 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"EncoderID", a1);
    v13 = VTSelectAndCreateVideoEncoderInstanceInternal(v17, v10, v12, Mutable, 0, &cf, 0, 0, 0);
    v14 = v13;
    if (a3 && !v13)
    {
      *a3 = cf;
      cf = 0;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = v5;
  Mutable = 0;
  if (listOfVideoEncodersOut)
  {
LABEL_13:
    CFRelease(v6);
  }

LABEL_14:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

OSStatus VTCopyVideoEncoderList(CFDictionaryRef options, CFArrayRef *listOfVideoEncodersOut)
{
  v69 = 0;
  v70 = 0;
  v68 = 0uLL;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  vtPopulateVideoEncoderRegistry();
  if (!sVideoEncoderRegistry)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954388, "<<<< VTVideoEncoderSelection >>>>", 3884);
  }

  v4 = FigRegistryCopyFilteredItemList();
  if (v4)
  {
    v52 = v4;
    Mutable = 0;
LABEL_107:
    v16 = 0;
    v17 = 0;
    goto LABEL_86;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  value = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"EnableHardwareAcceleratedVideoEncoder", *MEMORY[0x1E695E4D0]);
  if (VTParavirtualizationIsRunningInGuest(v7, v8))
  {
    BYTE2(v69) = 1;
  }

  *(&v68 + 1) = Mutable;
  v9 = vtCopyExpandedEncoderListForWrappers(v70, &v68, &v67);
  if (v9)
  {
    v52 = v9;
    goto LABEL_107;
  }

  v10 = v70;
  v58 = listOfVideoEncodersOut;
  v59 = Mutable;
  if (v67)
  {
    if (v70)
    {
      CFRelease(v70);
    }

    v10 = v67;
    v70 = v67;
    v67 = 0;
  }

  Count = CFArrayGetCount(v10);
  theArray = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
  v14 = MEMORY[0x1E695E9F8];
  cf = CFSetCreateMutable(v5, Count, MEMORY[0x1E695E9F8]);
  v62 = CFSetCreateMutable(v5, Count, v14);
  if (Count < 1)
  {
LABEL_85:
    v73.length = CFArrayGetCount(theArray);
    v73.location = 0;
    CFArraySortValues(theArray, v73, vtCompareCodecNameThenEncoderName, 0);
    v52 = 0;
    *v58 = theArray;
    Mutable = v59;
    v16 = cf;
    v17 = v62;
    goto LABEL_86;
  }

  v15 = 0;
  v16 = cf;
  v17 = v62;
  do
  {
    CFArrayGetValueAtIndex(v70, v15);
    v18 = FigRegistryItemCopyMatchingInfo();
    if (v18)
    {
      v52 = v18;
      Mutable = v59;
      goto LABEL_103;
    }

    if (!vtShouldSkipEncoder(options, v65))
    {
      v19 = CFDictionaryGetValue(v65, @"VTCodecType");
      if (v19)
      {
        v20 = v19;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v20))
        {
          if (CFSetContainsValue(cf, v20))
          {
            v22 = v62;
          }

          else
          {
            v22 = cf;
          }

          CFSetAddValue(v22, v20);
        }
      }
    }

    ++v15;
  }

  while (Count != v15);
  v23 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v70, v23);
    valuePtr = 0;
    v24 = FigRegistryItemCopyDescription();
    if (v24)
    {
      break;
    }

    v24 = FigRegistryItemCopyMatchingInfo();
    if (v24)
    {
      break;
    }

    v24 = FigRegistryItemCopyBundle();
    if (v24)
    {
      break;
    }

    if (!vtShouldSkipEncoder(options, v65))
    {
      v28 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v29 = CFDictionaryGetValue(v65, @"VTCodecType");
      if (!v29 || (v30 = v29, v31 = CFStringGetTypeID(), v31 != CFGetTypeID(v30)))
      {
        v27 = 0;
        goto LABEL_41;
      }

      CFStringGetCString(v30, buffer, 5, 0x600u);
      valuePtr = bswap32(*buffer);
      v27 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v28, @"CodecType", v27);
      v25 = CFDictionaryGetValue(v66, @"CMClassImplementationID");
      if (v25)
      {
        v32 = CFStringGetTypeID();
        if (v32 != CFGetTypeID(v25))
        {
          goto LABEL_41;
        }

        CFDictionarySetValue(v28, @"EncoderID", v25);
        v25 = CFDictionaryGetValue(v66, @"VTCodecName");
        if (v25)
        {
          v33 = CFStringGetTypeID();
          if (v33 == CFGetTypeID(v25))
          {
            if (v64)
            {
              v34 = CFBundleCopyLocalizedString(v64, v25, 0, 0);
              v26 = v34;
              if (v34)
              {
                v25 = v34;
              }
            }

            else
            {
              v26 = 0;
            }

            if (FigCFEqual())
            {
              v25 = @"H.265";
            }

            CFDictionarySetValue(v28, @"CodecName", v25);
            v35 = CFDictionaryGetValue(v66, @"VTEncoderName");
            if (v35)
            {
              v53 = v25;
              v54 = v35;
              v56 = CFStringGetTypeID();
              if (v56 == CFGetTypeID(v54))
              {
                v36 = v54;
                if (v64)
                {
                  v37 = CFBundleCopyLocalizedString(v64, v54, 0, 0);
                  v36 = v54;
                  v25 = v37;
                  if (v37)
                  {
                    v36 = v37;
                  }
                }

                else
                {
                  v25 = 0;
                }

                v55 = v36;
                CFDictionarySetValue(v28, @"EncoderName", v36);
                if (CFSetContainsValue(v62, v30))
                {
                  v38 = v28;
                  v39 = v55;
                }

                else
                {
                  v38 = v28;
                  v39 = v53;
                }

                CFDictionarySetValue(v38, @"DisplayName", v39);
                matched = copyObjectForKeyFromMatchInfoOrIORegistry(v65, @"VTRating");
                if (matched)
                {
                  v41 = matched;
                  CFDictionarySetValue(v28, @"PerformanceRating", matched);
                  CFRelease(v41);
                }

                v42 = copyObjectForKeyFromMatchInfoOrIORegistry(v65, @"VTQualityRating");
                if (v42)
                {
                  v43 = v42;
                  CFDictionarySetValue(v28, @"QualityRating", v42);
                  CFRelease(v43);
                }

                v44 = copyObjectForKeyFromMatchInfoOrIORegistry(v65, @"VTInstanceLimit");
                if (v44)
                {
                  v45 = v44;
                  CFDictionarySetValue(v28, @"InstanceLimit", value);
                  CFRelease(v45);
                }

                v46 = copyObjectForKeyFromMatchInfoOrIORegistry(v65, @"VTIsHardwareAccelerated");
                if (v46)
                {
                  v47 = v46;
                  CFDictionarySetValue(v28, @"IsHardwareAccelerated", v46);
                  CFRelease(v47);
                }

                InferredPropertiesForCodec = createInferredPropertiesForCodec(v65);
                if (InferredPropertiesForCodec)
                {
                  v49 = InferredPropertiesForCodec;
                  CFDictionarySetValue(v28, @"SupportedSelectionProperties", InferredPropertiesForCodec);
                  CFRelease(v49);
                }

                v50 = copyObjectForKeyFromMatchInfoOrIORegistry(v65, @"VTSupportsMultiPass");
                if (v50)
                {
                  v51 = v50;
                  CFDictionarySetValue(v28, @"SupportsMultiPass", value);
                  CFRelease(v51);
                }

                CFArrayAppendValue(theArray, v28);
                goto LABEL_43;
              }
            }

LABEL_42:
            v25 = 0;
LABEL_43:
            if (v28)
            {
              CFRelease(v28);
            }

            goto LABEL_45;
          }

LABEL_41:
          v26 = 0;
          goto LABEL_42;
        }
      }

      v26 = 0;
      goto LABEL_43;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_45:
    if (v65)
    {
      CFRelease(v65);
      v65 = 0;
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v66)
    {
      CFRelease(v66);
      v66 = 0;
    }

    if (v64)
    {
      CFRelease(v64);
      v64 = 0;
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (Count == ++v23)
    {
      goto LABEL_85;
    }
  }

  v52 = v24;
  Mutable = v59;
  v16 = cf;
  v17 = v62;
LABEL_103:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_86:
  if (v70)
  {
    CFRelease(v70);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  return v52;
}