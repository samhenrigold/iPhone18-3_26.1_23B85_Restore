uint64_t apdb_loc_ObjcUnloadData(_WORD *a1, int a2, uint64_t a3)
{
  v20 = 0;
  inited = InitRsrcFunction(a1, a2, &v20);
  if ((inited & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        ssftriff_reader_ReleaseChunkData(v6);
        if (*v5)
        {
          v7 = ssftriff_reader_ObjClose(*v5);
          if (v7 >= 0)
          {
            inited = inited;
          }

          else
          {
            inited = v7;
          }
        }
      }

      v8 = *(v5 + 72);
      if (v8)
      {
        heap_Free(*(v20 + 8), v8);
      }

      v9 = *(v5 + 64);
      if (v9)
      {
        heap_Free(*(v20 + 8), v9);
      }

      v10 = *(v5 + 168);
      if (v10)
      {
        heap_Free(*(v20 + 8), v10);
      }

      v11 = *(v5 + 200);
      if (v11)
      {
        heap_Free(*(v20 + 8), v11);
      }

      v12 = *(v5 + 176);
      if (v12)
      {
        heap_Free(*(v20 + 8), v12);
      }

      v13 = *(v5 + 184);
      if (v13)
      {
        heap_Free(*(v20 + 8), v13);
      }

      v14 = *(v5 + 192);
      if (v14)
      {
        heap_Free(*(v20 + 8), v14);
      }

      v15 = *(v5 + 264);
      if (v15)
      {
        vector_ObjClose(v15);
      }

      if (*(v5 + 224) == 1)
      {
        for (i = 0; i != 800; i += 8)
        {
          v17 = *(*(v5 + 232) + i);
          if (v17)
          {
            heap_Free(*(v20 + 8), v17);
          }
        }

        v18 = *(v5 + 232);
        if (v18)
        {
          heap_Free(*(v20 + 8), v18);
        }
      }

      heap_Free(*(v20 + 8), v5);
    }
  }

  return inited;
}

uint64_t activeprompt_db_ObjOpen(uint64_t a1, uint64_t a2, char *a3, char *a4, const void *a5, int a6, uint64_t a7, uint64_t *a8)
{
  v147 = *MEMORY[0x1E69E9840];
  v8 = 2296389642;
  v117 = 0;
  v118 = 0;
  if (!a8)
  {
    return 2296389639;
  }

  inited = InitRsrcFunction(*a2, *(a2 + 8), &v118);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *a8 = 0;
  if (a4 && *a4)
  {
    strncpy(__dst, a4, 0x1FFuLL);
    v145 = 0;
  }

  else
  {
    __s2[0] = 0;
    if (cupreader_IsCupInTheScope(v118, __s2))
    {
      snprintf(__str, 0x200uLL, "cup:%s", __s2[0]);
      snprintf(__dst, 0x200uLL, "cup:%s%p");
    }

    else
    {
      snprintf(__str, 0x200uLL, "in-memory APDB%p", a5);
      snprintf(__dst, 0x200uLL, "in-memory APDB%p");
    }

    v145 = 0;
    __str[511] = 0;
    a4 = __str;
  }

  v17 = activeprompt_db_LoadData(a2, __dst, a5, a6, &v117);
  if ((v17 & 0x80000000) != 0)
  {
    v16 = v17;
    log_OutPublic(*(v118 + 32), "DOMAIN_MNGR", 47000, 0);
    goto LABEL_21;
  }

  v18 = heap_Calloc(*(v118 + 8), 1, 88);
  *a8 = v18;
  if (!v18)
  {
    goto LABEL_18;
  }

  *(v18 + 8) = v117;
  **a8 = a2;
  v19 = *a8;
  *(v19 + 6) = 1;
  v19[9] = 0;
  *(*a8 + 64) = 0;
  v20 = domain_mngr_utils_DuplicateString(*(v118 + 8), a4, (*a8 + 56));
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  v21 = *a8;
  v22 = *(*a8 + 8);
  v23 = *(v22 + 176);
  if (v23)
  {
    v24 = domain_mngr_utils_DuplicateString(*(v118 + 8), v23, (v21 + 40));
    if ((v24 & 0x80000000) == 0)
    {
      v16 = v24;
      v21 = *a8;
      v22 = *(*a8 + 8);
      goto LABEL_27;
    }

LABEL_18:
    v25 = *(v118 + 32);
LABEL_19:
    log_OutPublic(v25, "DOMAIN_MNGR", 47000, 0);
LABEL_22:
    if (*a8)
    {
      activeprompt_db_ObjClose(*a8, 0);
      *a8 = 0;
    }

    return v8;
  }

  v16 = v20;
LABEL_27:
  if (*(v22 + 24) != 1)
  {
    goto LABEL_44;
  }

  v27 = *(*v21 + 16);
  __s2[0] = 0;
  v126[0] = 0;
  __s[0] = 0;
  if ((hlp_GetMimeParam(v27, a3, "urisuffix", v126) & 0x80000000) == 0)
  {
    v28 = *(v21 + 40);
    if (v28)
    {
      heap_Free(v27[1], v28);
    }

    *(v21 + 40) = v126[0];
    if ((hlp_GetMimeParam(v27, a3, "uriprefix", v126) & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    *(v21 + 32) = 2;
    v29 = *(v21 + 80);
    if (v29)
    {
      heap_Free(v27[1], v29);
    }

    v16 = 0;
    *(v21 + 80) = v126[0];
    goto LABEL_40;
  }

  if ((hlp_GetMimeParam(v27, a3, "uriprefix", v126) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  if (IsRecordingCS(v21, a4, __s2))
  {
    *(v21 + 32) = 1;
    v57 = *(v21 + 80);
    if (v57)
    {
      heap_Free(v27[1], v57);
    }

    v58 = strlen(__s2[0]);
    v59 = heap_Alloc(v27[1], v58 + 125);
    *(v21 + 80) = v59;
    if (v59)
    {
      strcpy(v59, "x-vocalizer-speechbase://");
      strcat(*(v21 + 80), __s2[0]);
      v16 = 0;
    }

    else
    {
      log_OutPublic(v27[4], "DOMAIN_MNGR", 47000, 0);
      v16 = 2296389642;
    }

    goto LABEL_40;
  }

LABEL_32:
  if (*a4)
  {
    if ((brk_TagQueryEx(v27[3], a4, "BROKERSTRING", 1, __s) & 0x80000000) != 0)
    {
      *(v21 + 32) = 2;
      v16 = domain_mngr_utils_DuplicateString(v27[1], a4, (v21 + 48));
      goto LABEL_40;
    }

    brk_TagRelease(v27[3], __s[0]);
    __s[0] = 0;
  }

  log_OutPublic(v27[4], "DOMAIN_MNGR", 47018, "%s%s", "apdb", a4);
  v16 = 2296389652;
LABEL_40:
  if (__s2[0])
  {
    heap_Free(v27[1], __s2[0]);
  }

  if ((v16 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  v21 = *a8;
  v22 = *(*a8 + 8);
LABEL_44:
  if (!*(v22 + 72))
  {
    goto LABEL_89;
  }

  v30 = *(*v21 + 16);
  v126[0] = 0;
  if ((paramc_ParamGetStr(*(v30 + 40), "voice", v126) & 0x80000000) == 0)
  {
    __s[0] = 0;
    __s1 = 0;
    if ((paramc_ParamGetStr(*(v30 + 40), "voiceoperatingpoint", __s) & 0x80000000) != 0)
    {
      v31 = 0;
    }

    else
    {
      v31 = strlen(__s[0]) + 1;
    }

    if ((paramc_ParamGetStr(*(v30 + 40), "vopversion", &__s1) & 0x80000000) != 0 || (v33 = __s1, !strcmp(__s1, "0.0.0")))
    {
      v34 = 0;
    }

    else
    {
      v34 = strlen(v33) + 1;
    }

    v35 = strlen(v126[0]);
    v36 = heap_Calloc(*(v30 + 8), 1, (v31 + v34 + v35 + 14));
    *(v21 + 64) = v36;
    if (!v36)
    {
      goto LABEL_22;
    }

    v114 = v31;
    v116 = v30;
    strcpy(v36, "voiceaddons.");
    v37 = *(v21 + 64);
    v38 = strlen(v37);
    v39 = v126[0];
    if (*v126[0])
    {
      v40 = 0;
      LODWORD(v41) = 0;
      do
      {
        *(*(v21 + 64) + (v38 + v41)) = __tolower(v39[v40]);
        v41 = (v41 + 1);
        v39 = v126[0];
        v42 = strlen(v126[0]);
        v40 = v41;
      }

      while (v42 > v41);
      v37 = *(v21 + 64);
    }

    else
    {
      LODWORD(v41) = 0;
    }

    v37[(v41 + v38)] = 0;
    if (v114)
    {
      *(*(v21 + 64) + strlen(*(v21 + 64))) = 46;
      strcat(*(v21 + 64), __s[0]);
    }

    v30 = v116;
    if (v34)
    {
      *(*(v21 + 64) + strlen(*(v21 + 64))) = 46;
      strcat(*(v21 + 64), __s1);
    }

    v43 = *(*(v21 + 8) + 72);
    v45 = *(v21 + 56);
    v44 = *(v21 + 64);
    __s2[0] = 0;
    LODWORD(v135) = 0;
    Str = paramc_ParamGetStr(*(v116 + 40), v44, __s2);
    if (__s2[0])
    {
      v47 = v43 == 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v47 || Str < 0;
    v32 = !v48;
    if (v32 != 1 || strstr(__s2[0], v43))
    {
      goto LABEL_75;
    }

    if (v45 && *v45 && IsThisUrlOrRealPath(v45, &v135) >= 1)
    {
      v94 = v135;
      v95 = strrchr(v45, 47);
      if (v94)
      {
        if (!v95)
        {
          v8 = 2296389639;
          goto LABEL_22;
        }
      }

      else if (!v95)
      {
        v95 = strrchr(v45, 92);
        if (!v95)
        {
          v113 = 0;
          v96 = 2;
LABEL_137:
          v97 = strlen(__s2[0]);
          v98 = strlen(v43);
          v115 = v96;
          v99 = heap_Calloc(*(v116 + 8), 1, (v96 + v97 + v98 + 3));
          if (!v99)
          {
            goto LABEL_22;
          }

          v100 = v99;
          strcpy(v99, __s2[0]);
          v101 = strlen(v43);
          v102 = heap_Calloc(*(v116 + 8), 1, v101 + 19);
          if (v102)
          {
            v103 = v102;
            strcpy(v102, "voiceaddonbaseuri.");
            strcat(v102, v43);
            v104 = heap_Calloc(*(v116 + 8), 1, v115 + 1);
            if (v104)
            {
              v105 = v104;
              if (v115)
              {
                if (v113)
                {
                  v106 = v45;
                }

                else
                {
                  v106 = "./";
                }

                strncpy(v104, v106, v115);
              }

              v105[v115] = 0;
              v107 = paramc_ParamSetStrPermanent(*(v116 + 40), v103, v105);
              heap_Free(*(v116 + 8), v105);
              heap_Free(*(v116 + 8), v103);
              if ((v107 & 0x80000000) == 0)
              {
                v108 = strcat(v100, v43);
                *&v100[strlen(v108)] = 59;
                v16 = paramc_ParamSetStrPermanent(*(v116 + 40), v44, v100);
                heap_Free(*(v116 + 8), v100);
                if ((v16 & 0x80000000) == 0)
                {
                  v30 = v116;
                  goto LABEL_76;
                }

LABEL_21:
                v8 = v16;
                goto LABEL_22;
              }

              v103 = v100;
              v8 = v107;
            }

            else
            {
              heap_Free(*(v116 + 8), v100);
            }
          }

          else
          {
            v103 = v100;
          }

          heap_Free(*(v116 + 8), v103);
          goto LABEL_22;
        }
      }

      v96 = v95 - v45 + 1;
    }

    else
    {
      v96 = 0;
    }

    v113 = 1;
    goto LABEL_137;
  }

  LOBYTE(v32) = 0;
LABEL_75:
  v16 = 0;
  if (v32)
  {
    goto LABEL_89;
  }

LABEL_76:
  v49 = *(*(v21 + 8) + 72);
  if (!v49)
  {
    goto LABEL_89;
  }

  v50 = strlen(v49);
  v51 = heap_Calloc(*(v30 + 8), 1, (v50 + 18));
  *(v21 + 72) = v51;
  if (!v51)
  {
    v25 = *(v30 + 32);
    goto LABEL_19;
  }

  strcpy(v51, "voiceaddonoffset.");
  v52 = strlen(*(v21 + 72));
  v53 = v52;
  v54 = *(*(v21 + 8) + 72);
  if (*v54)
  {
    v55 = 0;
    v56 = 1;
    do
    {
      *(*(v21 + 72) + v53) = __tolower(v54[v55]);
      v55 = v56;
      v54 = *(*(v21 + 8) + 72);
      ++v53;
      v48 = strlen(v54) > v56++;
    }

    while (v48);
    *(*(v21 + 72) + v53) = 0;
  }

  else
  {
    *(*(v21 + 72) + v52) = 0;
  }

LABEL_89:
  if (log_HasTraceTuningDataSubscriber(*(*(**a8 + 16) + 32)))
  {
    v60 = *a8;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    *__s2 = 0u;
    v138 = 0u;
    __s1 = 0;
    v135 = 0;
    v134 = 0;
    v133 = 0;
    ssftstring_ObjOpen(*(*(*v60 + 16) + 8), &v133);
    if (v133)
    {
      activeprompt_db_GetTNTypes(v60, v133);
      v63 = v133;
    }

    else
    {
      v63 = 0;
    }

    v64 = v60[1];
    v65 = *(*v60 + 16);
    v66 = *(v65 + 32);
    v67 = v60[10];
    v68 = *(v64 + 184);
    v69 = *(v64 + 168);
    if (v63)
    {
      v111 = *(v65 + 32);
      v112 = v60[10];
      v110 = *(v64 + 184);
      v109 = *(v64 + 168);
      ssftstring_CStr(v63);
      v69 = v109;
      v68 = v110;
      v67 = v112;
      v66 = v111;
    }

    log_OutTraceTuningData(v66, 203, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s %s%s", v67, v61, v68, v62, v69, "BEG");
    if (v133)
    {
      ssftstring_ObjClose(v133);
      v133 = 0;
    }

    if (vector_GetElemAt(*(v60[1] + 264), 0, &v134) && *v134 == 1 && vector_GetElemAt(*(v60[1] + 264), 1u, &v135) && (v70 = v135, *v135 == 2))
    {
      v132 = 0;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      *v129 = 0u;
      *v126 = 0u;
      v127 = 0u;
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      *v122 = 0u;
      *__s = 0u;
      v120 = 0u;
      v71 = v134;
      hlp_FillActivePrompt(v60, *v134, *(v134 + 24), 0, v126);
      hlp_FillActivePrompt(v60, *v70, *(v70 + 24), 0, __s);
      v72 = *(v71 + 16);
      v73 = *(v70 + 16) != 0;
      if (v72 != 0 || v73)
      {
        v74 = 0;
        v75 = 0;
        do
        {
          if (v73 && (v74 == v72 || (v76 = strlen(v122[0]), v77 = strlen(v129[0]), v76 > v77) || v76 == v77 && (HIDWORD(v120) > HIDWORD(v127) || HIDWORD(v120) == HIDWORD(v127) && v121 > v128)))
          {
            hlp_TraceContent_AP(v60, __s);
            if (++v75 < *(v135 + 16))
            {
              v78 = *v135;
              v79 = (*(v135 + 24) + 24 * v75);
              v80 = __s;
              v81 = v60;
              v82 = v75;
LABEL_114:
              hlp_FillActivePrompt(v81, v78, v79, v82, v80);
            }
          }

          else
          {
            hlp_TraceContent_AP(v60, v126);
            if (++v74 < *(v134 + 16))
            {
              v78 = *v134;
              v79 = (*(v134 + 24) + 24 * v74);
              v80 = v126;
              v81 = v60;
              v82 = v74;
              goto LABEL_114;
            }
          }

          v72 = *(v134 + 16);
          v83 = *(v135 + 16);
          v73 = v75 < v83;
        }

        while (v74 < v72 || v75 < v83);
      }

      v85 = 2;
    }

    else
    {
      v85 = 0;
    }

    while (vector_GetElemAt(*(v60[1] + 264), v85, &__s1))
    {
      v86 = __s1;
      if (*(__s1 + 4))
      {
        v87 = 0;
        v88 = 0;
        do
        {
          hlp_FillActivePrompt(v60, *v86, (*(v86 + 3) + v87), v88, __s2);
          hlp_TraceContent_AP(v60, __s2);
          ++v88;
          v86 = __s1;
          v87 += 24;
        }

        while (v88 < *(__s1 + 4));
      }

      ++v85;
    }

    log_OutTraceTuningData(*(*(*v60 + 16) + 32), 203, "%s%s", v89, v90, v91, v92, v93, "END");
  }

  return v16;
}

uint64_t activeprompt_db_Get(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = 2296389652;
  v12 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) == 2 && *(a1 + 24) && vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v12))
  {
    v7 = 0;
    while (1)
    {
      v8 = v12;
      if (*(v12 + 16))
      {
        break;
      }

LABEL_9:
      if (!vector_GetElemAt(*(*(a1 + 8) + 264), ++v7, &v12))
      {
        return v6;
      }
    }

    v9 = 0;
    v10 = 0;
    while (LH_stricmp(a2, (*(*(a1 + 8) + 240) + *(*(v8 + 24) + v9))))
    {
      ++v10;
      v8 = v12;
      v9 += 24;
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_9;
      }
    }

    if (a3)
    {
      hlp_FillActivePrompt(a1, *v12, (*(v12 + 24) + v9), v10, a3);
    }

    return 0;
  }

  return v6;
}

uint64_t hlp_CheckBECompatibility(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*a1 + 16);
  v15 = 0;
  v14 = 0;
  result = domain_mngr_utils_IsActiveVoiceAddon(v3, *(v2 + 72), (v2 + 80), (v2 + 88), (v2 + 100), &v14);
  if ((result & 0x80000000) != 0)
  {
    result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "langcode", (*(a1 + 8) + 44));
    if (!result)
    {
      goto LABEL_26;
    }

    result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "voice", *(*(a1 + 8) + 64));
    if (!result)
    {
      result = hlp_CheckAttribute(v3, *(*(a1 + 8) + 168), "fevoice", *(*(a1 + 8) + 64));
      if (!result)
      {
        goto LABEL_26;
      }
    }

    v6 = *(a1 + 8);
    if (*(v6 + 80))
    {
      result = paramc_ParamGetStr(*(v3 + 40), "uselectrawdataversion", &v15);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v15, (v6 + 80));
        v6 = *(a1 + 8);
        if (result)
        {
          v7 = *(v3 + 32);
          v8 = v15;
          v12 = "apdbRawDataVersion";
          v13 = (v6 + 80);
          v9 = "voiceRawDataVersion";
LABEL_15:
          result = log_OutPublic(v7, "DOMAIN_MNGR", 47002, "%s%s%s%s", v9, v8, v12, v13);
          goto LABEL_26;
        }
      }
    }

    if (*(v6 + 100))
    {
      result = paramc_ParamGetStr(*(v3 + 40), "uselectreductionversion", &v15);
      v6 = *(a1 + 8);
      if ((result & 0x80000000) == 0)
      {
        result = LH_stricmp(v15, (v6 + 100));
        v6 = *(a1 + 8);
        if (result)
        {
          v7 = *(v3 + 32);
          v8 = v15;
          v12 = "apdbReductionVersion";
          v13 = (v6 + 100);
          v9 = "voiceReductionVersion";
          goto LABEL_15;
        }
      }
    }

    if (*(v6 + 88))
    {
      if (!*(v6 + 100) || (result = LH_stricmp((v6 + 100), "null"), v6 = *(a1 + 8), result))
      {
        result = hlp_CheckAttribute(v3, *(v6 + 168), "reduction", (v6 + 88));
        if (!result)
        {
          goto LABEL_26;
        }

        v6 = *(a1 + 8);
      }
    }

    if (*(v6 + 120))
    {
      if ((paramc_ParamGetStr(*(v3 + 40), "voicecomponentid", &v15) & 0x80000000) != 0 || (result = LH_stricmp(v15, (*(a1 + 8) + 120)), result))
      {
        v10 = *(v3 + 32);
        v11 = v15;
LABEL_25:
        result = log_OutPublic(v10, "DOMAIN_MNGR", 47002, "%s%s%s%s", "VoiceComponentID", v11, "APDBComponentID", (*(a1 + 8) + 120));
        goto LABEL_26;
      }

      v6 = *(a1 + 8);
    }

    if (*(v6 + 160) != 1)
    {
      goto LABEL_3;
    }

    if (*(v6 + 120))
    {
      goto LABEL_3;
    }

    result = paramc_ParamGetStr(*(v3 + 40), "voicecomponentid", &v15);
    v11 = v15;
    if ((result & 0x80000000) == 0 && !*v15)
    {
      goto LABEL_3;
    }

    v10 = *(v3 + 32);
    goto LABEL_25;
  }

  if (!v14)
  {
LABEL_26:
    v5 = 1;
    goto LABEL_27;
  }

LABEL_3:
  v5 = 2;
LABEL_27:
  *(a1 + 28) = v5;
  return result;
}

uint64_t hlp_FillActivePrompt(uint64_t result, int a2, unsigned int *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = *(result + 8);
  v7 = v6[30] + *a3;
  *a5 = result;
  *(a5 + 96) = a4;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  *(a5 + 24) = *(a3 + 2);
  v8 = *(a3 + 7);
  *(a5 + 28) = *(a3 + 6);
  *(a5 + 32) = v8;
  v9 = *(a3 + 4);
  if (v9 == 0xFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 + v9;
  }

  v11 = *(a3 + 5);
  v12 = v11 == 0xFFFF;
  v13 = v7 + v11;
  if (v12)
  {
    v13 = 0;
  }

  *(a5 + 40) = v10;
  *(a5 + 48) = v13;
  *(a5 + 56) = *(a3 + 9);
  v14 = a3[5];
  v15 = a3[3];
  *(a5 + 60) = v14;
  *(a5 + 64) = v15;
  if (a2 != 2)
  {
    v5 = v6[31] + 4 * v15;
  }

  v16 = *(a3 + 8);
  v17 = v7 + v16;
  if (v16 == 0xFFFF)
  {
    v17 = 0;
  }

  *(a5 + 72) = v5;
  *(a5 + 80) = v17;
  *(a5 + 88) = v6[32] + 8 * v14;
  return result;
}

uint64_t activeprompt_db_GetTNTypes(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) == 2 && vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v8))
  {
    v4 = 1;
    do
    {
      v5 = *(v8 + 8);
      if (v5 && *v5)
      {
        ssftstring_AppendCStr(a2, v5);
        ssftstring_AppendChar(a2, 124);
      }
    }

    while (vector_GetElemAt(*(*(a1 + 8) + 264), v4++, &v8));
  }

  return 2296389652;
}

uint64_t activeprompt_db_ConsultOriOrth(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5)
{
  v62 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(a1 + 28) != 2 || !*(a1 + 24) || !*(*(a1 + 8) + 28))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
    log_OutTraceTuningData(*(*(*a1 + 16) + 32), 213, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "BEG");
    v14 = a5;
    do
    {
      if (!v14)
      {
        log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 214, "", "text/plain;charset=utf-8", *a2, 0);
        if (!a4)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v15 = v14;
      v14 = *(v14 + 16);
    }

    while (v14);
    if (!a4)
    {
      v19 = *(*(*a1 + 16) + 32);
      v20 = *a2;
      v21 = "text/plain;charset=utf-8";
      v22 = 0;
      goto LABEL_19;
    }

    if (*a4)
    {
      v16 = (*(v15 + 8) + *(v15 + 4) - *(*a3 + 12));
    }

    else
    {
      v16 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 214, "", "text/plain;charset=utf-8", *a2, v16);
LABEL_18:
    v19 = *(*(*a1 + 16) + 32);
    v20 = *a3;
    v22 = 32 * *a4;
    v21 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_19:
    log_OutTraceTuningDataBinary(v19, 214, "", v21, v20, v22);
  }

LABEL_20:
  if (!a5)
  {
    v17 = 0;
    goto LABEL_72;
  }

  v23 = a5;
  while (1)
  {
    v78 = 0;
    v79 = 0;
    v77 = 0;
    if (!*v23)
    {
      v17 = 0;
      goto LABEL_66;
    }

    memset(v80, 0, 104);
    v62 = 0;
    if (vector_GetElemAt(*(*(a1 + 8) + 264), 0, &v77) && *v77 == 1 && vector_GetElemAt(*(*(a1 + 8) + 264), 1u, &v78) && *v78 == 2)
    {
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      *__s = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = domain_mngr_utils_ListContainsString(*(v77 + 8), "*");
      v25 = domain_mngr_utils_ListContainsString(*(v78 + 8), "*");
      if (v24 && v25)
      {
        v31 = v77;
        hlp_FillActivePrompt(a1, *v77, *(v77 + 24), 0, &v70);
        v32 = v78;
        hlp_FillActivePrompt(a1, *v78, *(v78 + 24), 0, &v63);
        if (*v23 == 1)
        {
          v33 = *(v31 + 16);
          v34 = *(v32 + 16) != 0;
          if (v33 != 0 || v34)
          {
            v35 = 0;
            v36 = 0;
            while (1)
            {
              if (v34 && (v36 == v33 || (v37 = strlen(__s[0]), v38 = strlen(v73), v37 > v38) || v37 == v38 && (HIDWORD(v64) > HIDWORD(v71) || HIDWORD(v64) == HIDWORD(v71) && v65 > v72)))
              {
                v17 = activeprompt_ConsultOriOrth(&v63, a2, a3, a4, v23, &v62);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                if (++v35 >= *(v78 + 16))
                {
                  goto LABEL_46;
                }

                v39 = *v78;
                v40 = (*(v78 + 24) + 24 * v35);
                v41 = &v63;
                v42 = a1;
                v43 = v35;
              }

              else
              {
                v17 = activeprompt_ConsultOriOrth(&v70, a2, a3, a4, v23, &v62);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_72;
                }

                if (++v36 >= *(v77 + 16))
                {
                  goto LABEL_46;
                }

                v39 = *v77;
                v40 = (*(v77 + 24) + 24 * v36);
                v41 = &v70;
                v42 = a1;
                v43 = v36;
              }

              hlp_FillActivePrompt(v42, v39, v40, v43, v41);
LABEL_46:
              if (*v23 == 1)
              {
                v33 = *(v77 + 16);
                v44 = *(v78 + 16);
                v34 = v35 < v44;
                if (v36 < v33 || v35 < v44)
                {
                  continue;
                }
              }

              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        log_OutTraceTuningData(*(*(*a1 + 16) + 32), 216, "%s%s", v26, v27, v28, v29, v30, "INFO");
      }

      v17 = 0;
LABEL_70:
      v46 = 2;
    }

    else
    {
      v17 = 0;
      v46 = 0;
    }

    if (vector_GetElemAt(*(*(a1 + 8) + 264), v46, &v79))
    {
      break;
    }

LABEL_66:
    v23 = *(v23 + 16);
    if (!v23)
    {
      goto LABEL_72;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v79 + 8), "*"))
    {
      if (*v23 == 1)
      {
        v47 = v79;
        if (*(v79 + 16))
        {
          v48 = 0;
          v49 = 0;
          while (1)
          {
            hlp_FillActivePrompt(a1, *v47, (*(v47 + 24) + v48), v49, v80);
            v17 = activeprompt_ConsultOriOrth(v80, a2, a3, a4, v23, &v62);
            if ((v17 & 0x80000000) != 0)
            {
              goto LABEL_72;
            }

            if (*v23 == 1)
            {
              ++v49;
              v47 = v79;
              v48 += 24;
              if (v49 < *(v79 + 16))
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

    ++v46;
  }

  while (vector_GetElemAt(*(*(a1 + 8) + 264), v46, &v79));
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_72:
  if (log_HasTraceTuningDataSubscriber(*(*(*a1 + 16) + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, 0);
        if (!a4)
        {
          goto LABEL_85;
        }

        goto LABEL_83;
      }

      v50 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v57 = *(*(*a1 + 16) + 32);
      v58 = *a2;
      v59 = "text/plain;charset=utf-8";
      v60 = 0;
      goto LABEL_84;
    }

    if (*a4)
    {
      v51 = (*(v50 + 8) + *(v50 + 4) - *(*a3 + 12));
    }

    else
    {
      v51 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 215, "", "text/plain;charset=utf-8", *a2, v51);
LABEL_83:
    v57 = *(*(*a1 + 16) + 32);
    v58 = *a3;
    v60 = 32 * *a4;
    v59 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_84:
    log_OutTraceTuningDataBinary(v57, 215, "", v59, v58, v60);
LABEL_85:
    log_OutTraceTuningData(*(*(*a1 + 16) + 32), 213, "%s%s %s%u", v52, v53, v54, v55, v56, "END");
  }

  return v17;
}

uint64_t activeprompt_db_Consult(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = a1;
  v84 = 0;
  hlp_CheckBECompatibility(a1);
  if (*(v11 + 28) != 2 || !*(v11 + 24))
  {
    return 0;
  }

  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s %s%s %s%s", v12, v13, v14, v15, v16, "BEG");
    v17 = a7;
    do
    {
      if (!v17)
      {
        log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 274, "", "text/plain;charset=depes", *a2, 0);
        if (!a4)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v18 = v17;
      v17 = *(v17 + 16);
    }

    while (v17);
    if (!a4)
    {
      v22 = *(*(*v11 + 16) + 32);
      v23 = *a2;
      v24 = "text/plain;charset=depes";
      v25 = 0;
      goto LABEL_18;
    }

    if (*a4)
    {
      v19 = (*(v18 + 8) + *(v18 + 4) - *(*a3 + 12));
    }

    else
    {
      v19 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 274, "", "text/plain;charset=depes", *a2, v19);
LABEL_17:
    v22 = *(*(*v11 + 16) + 32);
    v23 = *a3;
    v25 = 32 * *a4;
    v24 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_18:
    log_OutTraceTuningDataBinary(v22, 274, "", v24, v23, v25);
  }

LABEL_19:
  if (!a7)
  {
    v20 = 0;
    goto LABEL_113;
  }

  v26 = a7;
  v83 = v11;
  while (1)
  {
    v100 = 0;
    v101 = 0;
    v99 = 0;
    if (!*v26)
    {
      v20 = 0;
      goto LABEL_60;
    }

    memset(v102, 0, 104);
    v84 = 0;
    if (!vector_GetElemAt(*(*(v11 + 8) + 264), 0, &v99) || *v99 != 1 || !vector_GetElemAt(*(*(v11 + 8) + 264), 1u, &v100) || *v100 != 2)
    {
      v20 = 0;
      v32 = 0;
      goto LABEL_37;
    }

    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    *__s = 0u;
    v85 = 0u;
    v86 = 0u;
    v27 = domain_mngr_utils_ListContainsString(*(v99 + 8), "*");
    v28 = v27 != 0;
    if (!v27 && a4)
    {
      v29 = *a4;
      if (*a4)
      {
        v30 = 0;
        v31 = 0;
        v28 = 0;
        do
        {
          if (*(*a3 + v30) == 21)
          {
            if (domain_mngr_utils_ListContainsString(*(v99 + 8), *(*a3 + v30 + 24)) == 1)
            {
              v28 = 1;
            }

            v29 = *a4;
          }

          ++v31;
          v30 += 32;
        }

        while (v31 < v29);
      }

      else
      {
        v28 = 0;
      }
    }

    if (domain_mngr_utils_ListContainsString(*(v100 + 8), "*"))
    {
      v50 = 1;
      goto LABEL_65;
    }

    if (a4)
    {
      v51 = *a4;
      if (*a4)
      {
        v52 = 0;
        v53 = 0;
        v50 = 0;
        do
        {
          if (*(*a3 + v52) == 21)
          {
            if (domain_mngr_utils_ListContainsString(*(v100 + 8), *(*a3 + v52 + 24)) == 1)
            {
              v50 = 1;
            }

            v51 = *a4;
          }

          ++v53;
          v52 += 32;
        }

        while (v53 < v51);
LABEL_65:
        if (v50 && v28)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    v50 = 0;
LABEL_78:
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 276, "%s%s", v45, v46, v47, v48, v49, "INFO");
LABEL_79:
    v20 = 0;
    if (v50 == 1 && v28)
    {
      v54 = v99;
      hlp_FillActivePrompt(v11, *v99, *(v99 + 24), 0, &v92);
      v55 = v100;
      hlp_FillActivePrompt(v11, *v100, *(v100 + 24), 0, &v85);
      if (*v26 == 1 && (v56 = *(v54 + 16), v57 = *(v55 + 16) != 0, v56 != 0 || v57))
      {
        v58 = v54;
        v59 = 0;
        v60 = 0;
        do
        {
          v78 = v59;
          if (v57 && (__s[0] ? (v61 = v95 == 0) : (v61 = 1), !v61 && (v60 == v56 || (v77 = v58, v62 = strlen(__s[0]), v63 = strlen(v95), v58 = v77, v62 > v63) || v62 == v63 && (HIDWORD(v86) > HIDWORD(v93) || HIDWORD(v86) == HIDWORD(v93) && v87 > v94))))
          {
            v20 = activeprompt_Consult(&v85, *(v55 + 8), a2, a3, a4, v26, a5, a6, &v84, a8);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            v59 = v78 + 1;
            if (v78 + 1 < *(v100 + 16))
            {
              hlp_FillActivePrompt(v11, *v100, (*(v100 + 24) + 24 * v59), v78 + 1, &v85);
              v59 = v78 + 1;
            }
          }

          else
          {
            v20 = activeprompt_Consult(&v92, *(v58 + 8), a2, a3, a4, v26, a5, a6, &v84, a8);
            if ((v20 & 0x80000000) != 0)
            {
              goto LABEL_113;
            }

            if (++v60 < *(v99 + 16))
            {
              hlp_FillActivePrompt(v11, *v99, (*(v99 + 24) + 24 * v60), v60, &v92);
            }

            v59 = v78;
          }

          if (*v26 != 1)
          {
            break;
          }

          v58 = v99;
          v55 = v100;
          v56 = *(v99 + 16);
          v64 = *(v100 + 16);
          v57 = v59 < v64;
        }

        while (v60 < v56 || v59 < v64);
      }

      else
      {
        v20 = 0;
      }
    }

    v32 = 2;
LABEL_37:
    if (vector_GetElemAt(*(*(v11 + 8) + 264), v32, &v101))
    {
      break;
    }

LABEL_60:
    v26 = *(v26 + 16);
    if (!v26)
    {
      goto LABEL_113;
    }
  }

  do
  {
    if (domain_mngr_utils_ListContainsString(*(v101 + 8), "*"))
    {
      goto LABEL_129;
    }

    if (!a4)
    {
      goto LABEL_55;
    }

    v41 = *a4;
    if (!*a4)
    {
      goto LABEL_55;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    do
    {
      if (*(*a3 + v42) == 21)
      {
        if (domain_mngr_utils_ListContainsString(*(v101 + 8), *(*a3 + v42 + 24)) == 1)
        {
          v44 = 1;
        }

        v41 = *a4;
      }

      ++v43;
      v42 += 32;
    }

    while (v43 < v41);
    v11 = v83;
    if (v44)
    {
LABEL_129:
      if (*v26 == 1)
      {
        v38 = v101;
        if (*(v101 + 16))
        {
          v39 = 0;
          v40 = 0;
          while (1)
          {
            hlp_FillActivePrompt(v83, *v38, (*(v38 + 24) + v39), v40, v102);
            v20 = activeprompt_Consult(v102, *(v38 + 8), a2, a3, a4, v26, a5, a6, &v84, a8);
            if ((v20 & 0x80000000) != 0)
            {
              break;
            }

            if (*v26 == 1)
            {
              ++v40;
              v38 = v101;
              v39 += 24;
              if (v40 < *(v101 + 16))
              {
                continue;
              }
            }

            goto LABEL_56;
          }

          v11 = v83;
          goto LABEL_113;
        }
      }
    }

    else
    {
LABEL_55:
      log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s", v33, v34, v35, v36, v37, "INFO");
    }

LABEL_56:
    ++v32;
    v11 = v83;
  }

  while (vector_GetElemAt(*(*(v83 + 8) + 264), v32, &v101));
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_113:
  if (log_HasTraceTuningDataSubscriber(*(*(*v11 + 16) + 32)))
  {
    do
    {
      if (!a7)
      {
        log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, 0);
        if (!a4)
        {
          goto LABEL_126;
        }

        goto LABEL_124;
      }

      v66 = a7;
      a7 = *(a7 + 16);
    }

    while (a7);
    if (!a4)
    {
      v73 = *(*(*v11 + 16) + 32);
      v74 = *a2;
      v75 = "text/plain;charset=depes";
      v76 = 0;
      goto LABEL_125;
    }

    if (*a4)
    {
      v67 = (*(v66 + 8) + *(v66 + 4) - *(*a3 + 12));
    }

    else
    {
      v67 = 0;
    }

    log_OutTraceTuningDataBinary(*(*(*v11 + 16) + 32), 275, "", "text/plain;charset=depes", *a2, v67);
LABEL_124:
    v73 = *(*(*v11 + 16) + 32);
    v74 = *a3;
    v76 = 32 * *a4;
    v75 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_125:
    log_OutTraceTuningDataBinary(v73, 275, "", v75, v74, v76);
LABEL_126:
    log_OutTraceTuningData(*(*(*v11 + 16) + 32), 273, "%s%s %s%u", v68, v69, v70, v71, v72, "END");
  }

  return v20;
}

uint64_t IsRecordingCS(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*a1 + 16);
  v11 = 0;
  v10 = 0;
  if ((paramc_ParamGetInt(*(v6 + 40), "frequencyhz", &v10) & 0x80000000) != 0)
  {
    result = 0;
    v8 = 0;
    if (a3)
    {
LABEL_11:
      *a3 = v8;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      if (v8)
      {
        heap_Free(*(v6 + 8), v8);
      }

      v8 = (*(&off_1F42D68F0 + v7))(v6, a2, *(a1[1] + 64), *(a1[1] + 168), v10);
      if (v8)
      {
        if ((brk_DataOpenEx(*(v6 + 24), v8, 1, &v11) & 0x80000000) == 0)
        {
          break;
        }
      }

      v7 += 8;
      if (v7 == 48)
      {
        result = 0;
        if (a3)
        {
          goto LABEL_11;
        }

        return result;
      }
    }

    brk_DataClose(*(v6 + 24), v11);
    result = 1;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t hlp_GetRecordingSrcFromApdbBrkString(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 8);
  v9 = strlen(__s);
  v10 = heap_Alloc(v8, v9 + 5);
  v11 = v10;
  if (v10)
  {
    v12 = strcpy(v10, __s);
    if (!hlp_ReplaceRpWithCs(v12, 1, a5))
    {
      heap_Free(*(a1 + 8), v11);
      return 0;
    }
  }

  return v11;
}

char *hlp_GetRecordingSrcFromFixedBrkString(uint64_t a1, int a2, char *__s, const char *a4, uint64_t a5)
{
  v5 = a5;
  v8 = *(a1 + 8);
  v9 = strlen(__s);
  v10 = strlen(a4);
  v11 = heap_Alloc(v8, v9 + v10 + 14);
  v12 = v11;
  if (v11)
  {
    *v11 = 0;
    hlp_AppendStandardName(v11, 1, __s, a4, v5);
  }

  return v12;
}

char *hlp_GetRecordingSrcFromApdbURI(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!IsThisUrlOrRealPath(__s, 0))
  {
    return 0;
  }

  memset(v15, 0, sizeof(v15));
  v8 = strlen(__s);
  v9 = heap_Alloc(*(a1 + 8), v8 + 5);
  v10 = v9;
  if (v9)
  {
    v11 = strcpy(v9, __s);
    v12 = strrchr(v11, 46);
    if (v12)
    {
      v13 = v12;
      __strcpy_chk();
      *v13 = 0;
    }

    if (hlp_ReplaceRpWithCs(v10, 0, a5))
    {
      strcat(v10, v15);
      return v10;
    }

    heap_Free(*(a1 + 8), v10);
    return 0;
  }

  return v10;
}

char *hlp_GetRecordingSrcFromFixedURI(uint64_t a1, char *__s, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  if (!IsThisUrlOrRealPath(__s, 0))
  {
    return 0;
  }

  if (!SplitpathOrUrl(__s, __src, __s2, v21, 0, __sa))
  {
    return 0;
  }

  v10 = strlen(__s);
  v11 = strlen(a3);
  v12 = strlen(a4);
  v13 = strlen(__sa);
  v14 = heap_Alloc(*(a1 + 8), v10 + v11 + v12 + v13 + 14);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = strcpy(v14, __src);
  v17 = strcat(v16, __s2);
  v18 = strcat(v17, v21);
  hlp_AppendStandardName(v18, 0, a3, a4, v5);
  strcat(v15, __sa);
  return v15;
}

char *hlp_GetRecordingSrcFromCupWithCustomName(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, int a5)
{
  if (strncmp(__s1, "cup:", 4uLL))
  {
    return 0;
  }

  __s = 0;
  if (!cupreader_GetTuningDataNameInCup(a1, &__s))
  {
    return 0;
  }

  v10 = strlen(__s1);
  v11 = strlen(__s);
  v12 = heap_Alloc(*(a1 + 8), v10 + v11 + 14);
  v8 = v12;
  if (v12)
  {
    v13 = strcpy(v12, __s1 + 4);
    *&v8[strlen(v13)] = 58;
    v14 = strcat(v8, __s);
    if (!hlp_ReplaceRpWithCs(v14, 0, a5))
    {
      heap_Free(*(a1 + 8), v8);
      return 0;
    }
  }

  return v8;
}

char *hlp_GetRecordingSrcFromCupWithFixedName(uint64_t a1, char *__s1, const char *a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  if (strncmp(__s1, "cup:", 4uLL))
  {
    return 0;
  }

  v11 = strlen(__s1);
  v12 = strlen(a3);
  v13 = strlen(a4);
  v14 = heap_Alloc(*(a1 + 8), v11 + v12 + v13 + 14);
  v10 = v14;
  if (v14)
  {
    v15 = strcpy(v14, __s1 + 4);
    *&v10[strlen(v15)] = 58;
    hlp_AppendStandardName(v10, 0, a3, a4, v5);
  }

  return v10;
}

uint64_t activeprompt_db_CopyPartsGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v8 = strlen(v6);
      result = heap_Alloc(a2, (v8 + 1));
      *(a3 + 8) = result;
      if (!result)
      {
        return result;
      }

      strcpy(result, *(a1 + 8));
    }

    return 1;
  }

  return result;
}

void *activeprompt_db_FreePartsGroup(void *result, void *a2)
{
  if (result)
  {
    v2 = result[1];
    if (v2)
    {
      return heap_Free(a2, v2);
    }
  }

  return result;
}

uint64_t hlp_CheckAttribute(uint64_t a1, const char *a2, const char *a3, char *a4)
{
  v9 = 0;
  if ((paramc_ParamGetStr(*(a1 + 40), a3, &v9) & 0x80000000) == 0 && !LH_stricmp(v9, a4))
  {
    return 1;
  }

  log_OutText(*(a1 + 32), "DOMAIN_MNGR", 3, 0, "APDB does not match the voice: %s=%s, %s=%s, %s=%s, %s=%s", "domain", a2, "attribute", a3, "voiceValue", v9, "apdbValue", a4);
  return 0;
}

uint64_t hlp_ReplaceRpWithCs(char *__s1, int a2, int a3)
{
  if (a2)
  {
    v6 = "/rp/";
  }

  else
  {
    v6 = "_rp_";
  }

  if (a2)
  {
    v7 = "/f";
  }

  else
  {
    v7 = "_f";
  }

  v8 = __s1;
  if (*v6)
  {
    v9 = 0;
    v10 = __s1;
    do
    {
      v8 = v9;
      v9 = strstr(v10, v6);
      v10 = v9 + 1;
    }

    while (v9);
  }

  if (!v8)
  {
    return 0;
  }

  if (a2)
  {
    v11 = 796091183;
  }

  else
  {
    v11 = 1601397599;
  }

  *v8 = v11;
  v12 = &__s1[strlen(__s1)];
  *v12 = *v7;
  v12[2] = v7[2];
  v13 = strlen(__s1);
  LH_itoa(a3 / 1000, &__s1[v13], 0xAu);
  return 1;
}

char *hlp_AppendStandardName(char *a1, int a2, const char *a3, const char *a4, int a5)
{
  strcat(a1, "apdb");
  v10 = strlen(a1);
  v11 = a2 == 0;
  if (a2)
  {
    v12 = "/cs/";
  }

  else
  {
    v12 = "_cs_";
  }

  v13 = &a1[v10];
  *v13 = *v12;
  v13[4] = v12[4];
  if (a2)
  {
    v14 = 47;
  }

  else
  {
    v14 = 95;
  }

  if (v11)
  {
    v15 = "_f";
  }

  else
  {
    v15 = "/f";
  }

  v16 = strcat(a1, a3);
  *&a1[strlen(v16)] = v14;
  v17 = strcat(a1, a4);
  v18 = &a1[strlen(v17)];
  *v18 = *v15;
  v18[2] = v15[2];
  v19 = strlen(a1);

  return LH_itoa(a5 / 1000, &a1[v19], 0xAu);
}

uint64_t hlp_GetMimeParam(uint64_t a1, char *__s, const char *a3, char **a4)
{
  v4 = 2296389639;
  if (__s)
  {
    if (a3)
    {
      if (*__s)
      {
        if (*a3)
        {
          *a4 = 0;
          v8 = strchr(__s, 59);
          v4 = 2296389652;
          if (v8)
          {
            v9 = v8;
            v10 = strlen(a3);
            do
            {
              v11 = v9 + 1;
              if (!strncmp(v9 + 1, a3, v10))
              {
                v12 = &v11[v10];
                if (v11[v10] == 61)
                {
                  v13 = -1;
                  do
                  {
                    v14 = v9[v10 + 3 + v13++];
                  }

                  while (v14 != 59 && v14 != 0);
                  v16 = heap_Alloc(*(a1 + 8), (v13 + 1));
                  *a4 = v16;
                  if (!v16)
                  {
                    log_OutPublic(*(a1 + 32), "DOMAIN_MNGR", 47000, 0);
                    return 2296389642;
                  }

                  if (v13)
                  {
                    v17 = v13;
                    strncpy(v16, v12 + 1, v13);
                    v16 = &(*a4)[v13];
                  }

                  else
                  {
                    v17 = 0;
                  }

                  v4 = 0;
                  v11 = &v9[v10 + 1 + v13];
                  *v16 = 0;
                  v10 = v17;
                }
              }

              v9 = strchr(v11, 59);
            }

            while (v9);
          }
        }
      }
    }
  }

  return v4;
}

uint64_t hlp_TraceContent_AP(uint64_t a1, uint64_t a2)
{
  __strcpy_chk();
  __strcpy_chk();
  log_OutTraceTuningData(*(*(*a1 + 16) + 32), 204, "%s%s %s%s %s%s %s%s %s%s %s%s %s%s", v4, v5, v6, v7, v8, "NAME");
  return log_OutTraceTuningDataBinary(*(*(*a1 + 16) + 32), 204, "", "application/x-realspeak-usids;version=4.0", a2 + 64, 4 * *(a2 + 56));
}

uint64_t activeprompt_GetRecPromptURI(unsigned int *a1, uint64_t a2, char **a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = 2296389639;
  if (*a1)
  {
    if (a3)
    {
      v6 = *(*a1 + 80);
      if (v6)
      {
        v8 = strlen(v6);
        strcpy(__s, "#");
        LH_utoa(a1[16], &__s[1], 0xAu);
        v9 = strlen(__s);
        v10 = heap_Alloc(a2, (v8 + v9 + 1));
        *a3 = v10;
        if (v10)
        {
          strcpy(v10, *(*a1 + 80));
          strcpy(&(*a3)[v8], __s);
          return 0;
        }

        else
        {
          return 2296389642;
        }
      }
    }
  }

  return v3;
}

uint64_t activeprompt_GetUserNorm(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 2296389639;
  }

  result = 0;
  *a2 = *(a1 + 40);
  return result;
}

uint64_t activeprompt_Insert(uint64_t **a1, uint64_t a2, int a3, int a4, const char **a5, uint64_t *a6, unsigned __int16 *a7, unsigned int a8, unsigned int *a9, uint64_t a10, uint64_t a11, _WORD *a12)
{
  v16 = a2;
  v17 = a1;
  v154 = a9;
  v178 = *MEMORY[0x1E69E9840];
  v18 = **a1;
  v19 = *(v18 + 16);
  v170 = 0;
  v169 = 0;
  v167 = 0;
  v168 = 0;
  v165 = 11;
  v166 = 0;
  v164 = 0;
  v163 = 255;
  v161 = 0;
  v162 = 0;
  v20 = *(v18 + 56);
  v177 = 0;
  v176 = 0;
  v160 = 0;
  v158 = 0;
  __s = 0;
  v21 = a1[6];
  v22 = strstr(v21, "%Ä");
  v155 = a7;
  v156 = v16;
  v157 = a5;
  if (v22)
  {
    LOWORD(a3) = v22 - v21 + 1;
    hlp_RemoveSetPhonInRange(a5, a6, a7, v16, a3);
    v23 = a6;
    goto LABEL_3;
  }

  if (!a3)
  {
    v56 = strlen(*a5);
    v174 = 0;
    v175 = 0;
    v172 = 11;
    v173 = 0;
    v171 = 0;
    NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 1, 0, &v175 + 2);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_271;
    }

    LOWORD(a3) = 0;
    if (((*(v20 + 152))(a10, a11, 2, HIWORD(v175), &v173) & 0x80000000) != 0)
    {
      v57 = a6;
    }

    else
    {
      v57 = a6;
      if (v173)
      {
        NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 2, HIWORD(v175), &v175);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_271;
        }

        v58 = v175;
        if (v175)
        {
          LOWORD(a3) = 0;
          do
          {
            if (a3)
            {
              break;
            }

            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v58, 1, 1, &v174, &v174 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v174 > v16)
            {
              goto LABEL_89;
            }

            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v175, 0, 1, &v172, &v174 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v172 != 6)
            {
              goto LABEL_89;
            }

            NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v175, 4, &v171, &v174 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (HIWORD(v174) && !strncmp(v171, "_PR_", HIWORD(v174)))
            {
              NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v175, 2, 1, &v173 + 2, &v174 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              LOWORD(a3) = HIWORD(v173) >= v16 ? HIWORD(v173) - v16 : 0;
            }

            else
            {
LABEL_89:
              LOWORD(a3) = 0;
            }

            NextTokenRecIdAtFrom = (*(v20 + 120))(a10, a11, v175, &v175);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            v58 = v175;
            if (!v175)
            {
              break;
            }
          }

          while (v174 <= v16);
        }

        else
        {
          LOWORD(a3) = 0;
        }
      }
    }

    if (v16 + a3 >= v56)
    {
      if (v56 > v16)
      {
        LOWORD(a3) = v56 - v16;
      }

      else
      {
        LOWORD(a3) = 0;
      }
    }

    else
    {
      a6 = v57;
      v98 = &(*v157)[v16];
      while (1)
      {
        v99 = v98[a3];
        if (v99 != 32 && v99 != 95 && (!v98[a3] || !strchr(*((*v17)[1] + 192), v99)))
        {
          break;
        }

        LOWORD(a3) = a3 + 1;
      }
    }
  }

  hlp_RemoveSetPhonInRange(v157, a6, a7, v16, a3);
  v26 = *v157;
  v27 = strstr(&(*v157)[v16], "§");
  if (!v27)
  {
    v146 = 0;
    v23 = a6;
LABEL_99:
    *a12 -= v146;
LABEL_3:
    if (*(v17 + 2) != 2)
    {
      goto LABEL_119;
    }

    v150 = v23;
    v24 = *v17;
    if (*(*v17 + 8) == 1)
    {
      v171 = 0;
      RecPromptURI = activeprompt_GetRecPromptURI(v17, *(v19 + 8), &v171);
      if ((RecPromptURI & 0x80000000) != 0)
      {
        v47 = RecPromptURI;
      }

      else
      {
        if (vector_Add(*(**v17 + 88), &v171))
        {
          v161 = v171;
          v23 = v150;
          goto LABEL_119;
        }

        v47 = 2296389642;
        heap_Free(*(v19 + 8), v171);
      }

      v59 = *(v19 + 32);
LABEL_116:
      log_OutPublic(v59, "DOMAIN_MNGR", 47000, 0);
      goto LABEL_272;
    }

    if (*(*v24 + 64))
    {
      v54 = v24[10];
      if (v54)
      {
        v55 = strlen(v54);
      }

      else
      {
        v55 = 0;
      }

      v60 = v24[5];
      if (v60)
      {
        v61 = strlen(v60);
      }

      else
      {
        v61 = 0;
      }

      v62 = strlen(v17[2]);
      v63 = heap_Alloc(*(v19 + 8), (v55 + v61 + v62 + 1));
      if (!v63)
      {
        v47 = 2296389642;
        v59 = *(v19 + 32);
        goto LABEL_116;
      }

      v64 = v63;
      v65 = (*v17)[10];
      if (v65)
      {
        strcpy(v63, v65);
      }

      strcpy(&v64[v55], v17[2]);
      v66 = *v17;
      v67 = (*v17)[5];
      v145 = v17;
      if (v67)
      {
        v68 = strlen(v64);
        strcpy(&v64[v68], v67);
        v66 = *v17;
      }

      v69 = *v66;
      v70 = *(*(*v66 + 64) + 64);
      if (v66[10])
      {
        v71 = 0;
      }

      else
      {
        v71 = v66[6];
      }

      NullHandle = safeh_GetNullHandle();
      v74 = v70(*(v69 + 72), *(v69 + 80), v64, v71, NullHandle, v73, &v161);
      heap_Free(*(v19 + 8), v64);
      v17 = v145;
      v23 = v150;
      if ((v74 & 0x80000000) == 0)
      {
LABEL_119:
        v47 = 2296389642;
        LODWORD(v176) = -65536;
        BYTE4(v176) = 0;
        NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 1, 0, &v170 + 2);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_271;
        }

        NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 2, HIWORD(v170), &v170);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          goto LABEL_271;
        }

        v75 = v170;
        v143 = v19;
        if (v170)
        {
          v76 = v23;
          v77 = 0;
          v78 = 0;
          v139 = 0;
          v141 = 0;
          v138 = 0;
          v147 = v156 + a3;
          v140 = 1;
          while (1)
          {
            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v75, 0, 1, &v165, &v167 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v170, 1, 1, &v166, &v167 + 2);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v165 - 9 < 2)
            {
LABEL_128:
              if (v166 < v156 || v147 <= v166)
              {
                v79 = 0;
                v84 = v141;
                if (v147 <= v166)
                {
                  v84 = 1;
                }

                LODWORD(v141) = v84;
              }

              else if (*(v17 + 2) == 1)
              {
                v79 = v170;
                if (((*(v20 + 184))(a10, a11, v170, 14, &v166 + 2) & 0x80000000) == 0 && HIWORD(v166))
                {
                  NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v170, 14, &__s, &v167 + 2);
                  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                  {
                    goto LABEL_271;
                  }

                  v80 = __s;
                  if (__s)
                  {
                    v81 = v139;
                    if (!v139)
                    {
                      v81 = StrArrInit(*(**v17 + 16));
                      if (!v81)
                      {
                        goto LABEL_272;
                      }

                      v80 = __s;
                    }

                    v139 = v81;
                    NextTokenRecIdAtFrom = StrArrSave(v81, v77, v80);
                    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                    {
                      goto LABEL_271;
                    }
                  }
                }

                if (((*(v20 + 184))(a10, a11, v170, 5, &v166 + 2) & 0x80000000) == 0 && HIWORD(v166))
                {
                  NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v170, 5, &v158, &v167 + 2);
                  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                  {
                    goto LABEL_271;
                  }

                  v82 = v158;
                  if (v158)
                  {
                    if (!v78)
                    {
                      v83 = StrArrInit(*(**v17 + 16));
                      if (!v83)
                      {
                        goto LABEL_272;
                      }

                      v78 = v83;
                      v82 = v158;
                    }

                    NextTokenRecIdAtFrom = StrArrSave(v78, v77, v82);
                    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                    {
                      goto LABEL_271;
                    }
                  }
                }
              }

              else
              {
                if (v140 == 1)
                {
                  v85 = 14;
                }

                else
                {
                  v85 = 12;
                }

                v165 = v85;
                NextTokenRecIdAtFrom = (*(v20 + 160))(a10, a11, v170, 0, 1, &v165, &v167);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                v79 = 0;
                v140 = 0;
              }

              goto LABEL_168;
            }

            if (v165 != 15)
            {
              break;
            }

            if (*(v17 + 2) != 1)
            {
              goto LABEL_156;
            }

            if (v166 < v156 || v147 <= v166)
            {
              v79 = 0;
              if (v141)
              {
                v86 = 1;
              }

              else
              {
                v86 = v147 > v166;
              }

              v87 = v138;
              if (!v86)
              {
                v87 = v170;
              }

              v138 = v87;
            }

            else
            {
              v79 = v170;
              if (v166 == v156)
              {
                hlp_SavePhraseProps(v20, a10, a11, v170, &v176);
              }
            }

LABEL_168:
            NextTokenRecIdAtFrom = (*(v20 + 120))(a10, a11, v170, &v170);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }

            if (v79)
            {
              NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v79, 8, 1, &v164, &v167 + 2);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              v88 = (*(v20 + 184))(a10, a11, v79, 18, &v166 + 2);
              v89 = 0;
              if ((v88 & 0x80000000) == 0 && HIWORD(v166))
              {
                NextTokenRecIdAtFrom = (*(v20 + 176))(a10, a11, v79, 18, &v162, &v167 + 2);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                v89 = 0;
                if (HIWORD(v167) && v162)
                {
                  v89 = strcmp(v162, "external") == 0;
                }
              }

              HIDWORD(v141) = v89;
              if (v165 <= 0xA && ((1 << v165) & 0x610) != 0)
              {
                ++v77;
              }

              NextTokenRecIdAtFrom = (*(v20 + 192))(a10, a11, v79);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }
            }

            v75 = v170;
            if (!v170)
            {
              v148 = v78;
              v151 = v76;
              if (*(v17 + 2) != 1)
              {
                v93 = v156;
                goto LABEL_211;
              }

              v90 = v77;
              if (v139)
              {
                StrArrDump(v139, v77, "NLU feat Before AP subst");
                v91 = v139;
                v92 = *(v17 + 28);
                if (v139[1] >= v92)
                {
                  v93 = v156;
                }

                else
                {
                  NextTokenRecIdAtFrom = StrArrRealloc(v139, v92 + 10);
                  v93 = v156;
                  if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                  {
                    goto LABEL_271;
                  }

                  v92 = *(v17 + 28);
                  v91 = v139;
                }

                NextTokenRecIdAtFrom = NLUFeatAdaptToAp(v91, v90, v92);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                StrArrDump(v91, *(v17 + 28), "NLU feats after AP subst");
              }

              else
              {
                v91 = 0;
                v93 = v156;
              }

              v139 = v91;
              if (!v148)
              {
                v148 = 0;
                goto LABEL_195;
              }

              StrArrDump(v148, v90, "POS Before AP subst");
              v136 = *(v17 + 28);
              if (v148[1] < v136)
              {
                NextTokenRecIdAtFrom = StrArrRealloc(v148, v136 + 10);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }

                v136 = *(v17 + 28);
              }

              NextTokenRecIdAtFrom = POSAdaptToAp(v148, v90, v136);
              if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
              {
                StrArrDump(v148, *(v17 + 28), "POS after AP subst");
                goto LABEL_195;
              }

              goto LABEL_271;
            }
          }

          if (v165 == 4)
          {
            goto LABEL_128;
          }

LABEL_156:
          v79 = 0;
          goto LABEL_168;
        }

        v151 = v23;
        v148 = 0;
        v139 = 0;
        HIDWORD(v141) = 0;
        LOWORD(v138) = 0;
        v93 = v156;
        if (*(v17 + 2) == 1)
        {
LABEL_195:
          NextTokenRecIdAtFrom = hlp_AlignOrthAndPhonWords(a10, a11, v20, v17, v157, v151, v155, a9, a4, v93, &v160);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }
        }

LABEL_211:
        v145 = v17;
        v100 = v93 + a4;
        v102 = a9[1];
        v101 = a9[2];
        v103 = *a9;
        v153 = *(a9 + 2);
        v104 = v160 + a3;
        v105 = *(v19 + 8);
        v106 = v100;
        if (v100 <= v102)
        {
          v108 = (v160 + a3);
          v47 = CI_Update(v105, a9, 0, v102, v104);
          v107 = a11;
          v109 = v106;
          if ((v47 & 0x80000000) != 0)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v47 = CI_Update(v105, a9, v103, v102, v100 - v102);
          v107 = a11;
          if ((v47 & 0x80000000) != 0)
          {
            goto LABEL_272;
          }

          v108 = v104;
          v109 = v106;
          v110 = CILE_New(*(v143 + 8), 0, v106, v108);
          if (!v110)
          {
            v131 = *(v143 + 32);
            goto LABEL_259;
          }

          *(a9 + 2) = v110;
          v154 = v110;
        }

        v111 = v101 + v102 - (v109 + v108);
        if (v101 + v102 <= v109 + v108)
        {
          v112 = v143;
          v114 = v151;
          v113 = v154;
          v115 = v107;
        }

        else
        {
          v112 = v143;
          v113 = CILE_New(*(v143 + 8), v103, v109 + v108, v111);
          v114 = v151;
          if (!v113)
          {
            log_OutPublic(*(v143 + 32), "DOMAIN_MNGR", 47000, 0);
            *(v154 + 2) = v153;
LABEL_260:
            v47 = 2296389642;
            goto LABEL_272;
          }

          v115 = v107;
          *(v154 + 2) = v113;
        }

        *(v113 + 2) = v153;
        if (*(v145 + 8) == 1)
        {
          v169 = 0;
          NextTokenRecIdAtFrom = (*(v20 + 104))(a10, v115, 1, 0, &v170 + 2);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }

          NextTokenRecIdAtFrom = (*(v20 + 104))(a10, v115, 2, HIWORD(v170), &v170);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }

          v116 = v156;
          NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, v115, v20, v156, v170, &v169);
          if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
          {
            goto LABEL_271;
          }

          if ((~v176 & 0xFFFF0000) != 0)
          {
            NextTokenRecIdAtFrom = hlp_InsertInitialPhraseRecord(a10, v115, v20, HIWORD(v170), &v176, &v169);
            if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
            {
              goto LABEL_271;
            }
          }

          v117 = *(v145 + 56);
          if (*(v145 + 56))
          {
            v118 = 0;
            v119 = 0;
            do
            {
              LOWORD(v171) = 0;
              if (v117 - 1 == v118)
              {
                v119 = 1;
              }

              v120 = v116;
              v121 = &(*v157)[v116];
              v122 = hlp_SearchWordBoundaryInOrth(v121);
              if (v122 == 0xFFFF)
              {
                v122 = strlen(v121);
              }

              v116 = v122 + v120;
              NextTokenRecIdAtFrom = hlp_InsertPromptWordRecord(a10, v115, v20, v145, v139, v148, v118, v119, HIWORD(v170), v120, SBYTE1(v120), v122 + v120, v164, SHIDWORD(v141), &v171, &v163, &v168, &v169);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              v123 = *v157;
              for (i = (*v157)[v116]; v123[v116]; i = v123[++v116])
              {
                if (i != 95 && i != 32)
                {
                  break;
                }
              }

              NextTokenRecIdAtFrom = hlp_GetNextTokenRecIdAtFrom(a10, v115, v20, v116, v169, &v169);
              if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
              {
                goto LABEL_271;
              }

              if (!v168)
              {
                NextTokenRecIdAtFrom = hlp_CreateOrUpdatePhraseRecord(a10, v115, v20, v119, v138, v120, v163, v171, &v169);
                if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
                {
                  goto LABEL_271;
                }
              }

              ++v118;
              v117 = *(v145 + 56);
            }

            while (v118 < v117);
          }

          v47 = (*(v20 + 272))(a10, v115, 16, 3, 0, 0);
LABEL_256:
          v94 = v148;
          v95 = v139;
          if ((v47 & 0x80000000) != 0)
          {
            goto LABEL_272;
          }

          goto LABEL_188;
        }

        v125 = *v155;
        v126 = *v114;
        v127 = a8;
        if (v125 > a8)
        {
          v128 = a8;
          v129 = (v126 + 32 * a8 + 12);
          while (1)
          {
            v130 = *v129;
            v129 += 8;
            if (v130 > v109)
            {
              break;
            }

            if (v125 == ++v128)
            {
              v127 = *v155;
              goto LABEL_250;
            }
          }

          v127 = v128;
        }

LABEL_250:
        v132 = heap_Realloc(*(v112 + 8), v126, 32 * v125 + 32);
        if (v132)
        {
          *v114 = v132;
          v133 = *v155;
          if (v127 < v133)
          {
            memmove((v132 + 32 * v127 + 32), (v132 + 32 * v127), 32 * (v133 - v127));
            LOWORD(v133) = *v155;
            v132 = *v114;
          }

          *v155 = v133 + 1;
          v134 = (v132 + 32 * v127);
          *v134 = 0u;
          v134[1] = 0u;
          v135 = *v114 + 32 * v127;
          *v135 = 26;
          if (v127)
          {
            *(v135 + 4) = *(v135 - 28);
          }

          *(v135 + 12) = v109;
          *(v135 + 24) = v161;
          goto LABEL_256;
        }

        v131 = *(v112 + 32);
LABEL_259:
        log_OutPublic(v131, "DOMAIN_MNGR", 47000, 0);
        goto LABEL_260;
      }
    }

    else
    {
      v145 = v17;
    }

    v143 = v19;
    v47 = 0;
    v94 = 0;
    v95 = 0;
LABEL_188:
    v171 = 0;
    StrArrDelete(v95);
    StrArrDelete(v94);
    if ((ssftstring_ObjOpen(*(v143 + 8), &v171) & 0x80000000) == 0)
    {
      if ((ssftstring_AppendCStr(v171, *(*(*v145 + 8) + 168)) & 0x80000000) == 0 && (ssftstring_AppendCStr(v171, "::") & 0x80000000) == 0 && (ssftstring_AppendCStr(v171, *(v145 + 16)) & 0x80000000) == 0)
      {
        v96 = *(v143 + 32);
        v97 = ssftstring_CStr(v171);
        log_OutEvent(v96, 14, "%s%s", "APID", v97);
      }

      ssftstring_ObjClose(v171);
    }

    goto LABEL_272;
  }

  v146 = 0;
  v23 = a6;
  v142 = v19;
  v144 = v17;
  while (1)
  {
    if (a3 < 4u)
    {
      goto LABEL_99;
    }

    v28 = v27 - v26;
    v29 = v16 + a3;
    if (v27 - v26 >= v29)
    {
      v23 = a6;
      goto LABEL_99;
    }

    v30 = (v27 - v26);
    if (v30 > v16 && v26[(v30 - 1)] == 32)
    {
      v31 = 3;
      v28 = v30 - 1;
    }

    else
    {
      v32 = v30 + 2;
      if (v32 >= v29)
      {
        v31 = 2;
      }

      else if (v26[v32] == 32)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }
    }

    v33 = v31;
    v34 = strlen(v26);
    memmove(&v26[v28], &v26[v28 + v31], v34 - (v28 + v31) + 1);
    v35 = *a7;
    if (*a7)
    {
      v36 = a4 + v28;
      v37 = v36 + v31;
      v38 = (*a6 + 16);
      do
      {
        v39 = *(v38 - 1);
        v40 = *v38;
        v41 = v39 - v31;
        if (v39 <= v37)
        {
          v41 = a4 + v28;
        }

        if (v39 <= v36)
        {
          v41 = *(v38 - 1);
        }

        if (v40)
        {
          v42 = v40 + v39;
          v43 = v42 - v31;
          if (v42 <= v37)
          {
            v43 = a4 + v28;
          }

          if (v42 > v36)
          {
            v42 = v43;
          }

          v44 = v42 >= v41;
          v45 = v42 - v41;
          if (!v44)
          {
            v45 = 0;
          }

          *v38 = v45;
        }

        *(v38 - 1) = v41;
        v38 += 8;
        --v35;
      }

      while (v35);
    }

    LOWORD(v171) = 0;
    LOWORD(v172) = 0;
    v174 = 0;
    v175 = 0;
    NextTokenRecIdAtFrom = (*(v20 + 104))(a10, a11, 1, 0, &v171);
    if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
    {
      goto LABEL_271;
    }

    v47 = (*(v20 + 104))(a10, a11, 2, v171, &v172);
    if ((v47 & 0x80000000) == 0)
    {
      if (v172)
      {
        break;
      }
    }

LABEL_64:
    if ((v47 & 0x80000000) != 0)
    {
      goto LABEL_272;
    }

LABEL_65:
    a9[2] = (a9[2] - v33) & ~((a9[2] - v33) >> 31);
    for (j = *(a9 + 2); j; j = *(j + 16))
    {
      *(j + 4) = (*(j + 4) - v33) & ~((*(j + 4) - v33) >> 31);
    }

    v146 += v33;
    if (a3 >= v33)
    {
      LOWORD(a3) = a3 - v33;
    }

    else
    {
      LOWORD(a3) = 0;
    }

    v26 = *v157;
    v27 = strstr(&(*v157)[v28], "§");
    v19 = v142;
    v17 = v144;
    a7 = v155;
    v16 = v156;
    v23 = a6;
    if (!v27)
    {
      goto LABEL_99;
    }
  }

  NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11);
  if ((NextTokenRecIdAtFrom & 0x80000000) == 0)
  {
    v48 = v31 + v28;
    do
    {
      NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11, v172, 2, 1, &v174, &v175 + 2);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (HIWORD(v174) > v28)
      {
        v49 = v48 >= HIWORD(v174) ? v28 : HIWORD(v174) - v33;
        HIWORD(v174) = v49;
        NextTokenRecIdAtFrom = (*(v20 + 160))(a10, a11, v172, 1, 1, &v174 + 2, &v175);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }
      }

      v50 = v174;
      if (v174 > v28)
      {
        if (v48 >= v174)
        {
          v51 = v28;
        }

        else
        {
          v51 = v174 - v33;
        }

        LOWORD(v174) = v51;
        NextTokenRecIdAtFrom = (*(v20 + 160))(a10, a11, v172, 2, 1, &v174, &v175);
        if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
        {
          break;
        }

        v50 = v174;
      }

      if (v50 <= HIWORD(v174))
      {
        v52 = v172;
      }

      else
      {
        v52 = 0;
      }

      NextTokenRecIdAtFrom = (*(v20 + 120))(a10, a11);
      if ((NextTokenRecIdAtFrom & 0x80000000) != 0)
      {
        break;
      }

      if (v52)
      {
        v47 = (*(v20 + 192))(a10, a11, v52);
        if ((v47 & 0x80000000) != 0 || !v172)
        {
          goto LABEL_64;
        }
      }

      else if (!v172)
      {
        goto LABEL_65;
      }

      NextTokenRecIdAtFrom = (*(v20 + 168))(a10, a11);
    }

    while ((NextTokenRecIdAtFrom & 0x80000000) == 0);
  }

LABEL_271:
  v47 = NextTokenRecIdAtFrom;
LABEL_272:
  *a12 += v160;
  return v47;
}

const char **hlp_RemoveSetPhonInRange(const char **result, void *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v5 = *a3;
  if (*a3)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v19 = 0;
    v17 = 0;
    v16 = 0;
    v12 = a5 + a4;
    do
    {
      v13 = (*a2 + 32 * v10);
      if (*v13 != 34 || ((result = hlp_GetRangeForSETPHON(*v9, *a2, v5, v11, &v19, &v18, &v17, &v16 + 1, &v16), result) ? (v14 = HIDWORD(v16) >= a4) : (v14 = 0), v14 ? (v15 = v16 >= v12) : (v15 = 1), v15))
      {
        ++v11;
      }

      else
      {
        result = memmove(v13, v13 + 8, 32 * (~v10 + v5));
        v5 = *a3 - 1;
        *a3 = v5;
      }

      v10 = v11;
    }

    while (v11 < v5);
  }

  return result;
}

void *StrArrInit(uint64_t a1)
{
  v2 = heap_Alloc(*(a1 + 8), 24);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[1] = 10;
    v4 = heap_Alloc(*(a1 + 8), 80);
    v3[2] = v4;
    if (v4)
    {
      v5 = v3[1];
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          *(v3[2] + 8 * i) = 0;
        }
      }
    }

    else
    {
      StrArrDelete(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t StrArrSave(void *a1, unint64_t a2, uint64_t __s)
{
  v3 = a1[2];
  if (!v3)
  {
    return 7;
  }

  if (a1[1] <= a2)
  {
    if (StrArrRealloc(a1, a2 + 10))
    {
      return 2296389642;
    }

    v3 = a1[2];
  }

  v7 = *(v3 + 8 * a2);
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    *(a1[2] + 8 * a2) = 0;
  }

  if (__s)
  {
    v8 = strlen(__s);
    *(a1[2] + 8 * a2) = heap_Alloc(*(*a1 + 8), (v8 + 1));
    v9 = *(a1[2] + 8 * a2);
    if (v9)
    {
      strcpy(v9, __s);
      return 0;
    }

    else
    {
      __s = 2296389642;
      StrArrDelete(a1);
    }
  }

  return __s;
}

uint64_t hlp_SavePhraseProps(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  __src = 0;
  if (a4 && a5)
  {
    v9 = result;
    result = (*(result + 168))(a2, a3, a4, 8, 1, a5, &v11);
    if ((result & 0x80000000) != 0 || (result = (*(v9 + 168))(a2, a3, a4, 7, 1, a5 + 2, &v11), (result & 0x80000000) != 0) || (result = (*(v9 + 176))(a2, a3, a4, 4, &__src, &v11), (result & 0x80000000) != 0))
    {
      *a5 = -65536;
      *(a5 + 4) = 0;
    }

    else if (__src)
    {
      if (v11)
      {
        result = strncpy((a5 + 4), __src, 8uLL);
        *(a5 + 11) = 0;
      }
    }
  }

  return result;
}

void *StrArrDump(void *result, uint64_t a2, const char *a3)
{
  v4 = result;
  if (a3)
  {
    result = log_OutText(*(*result + 32), "DOMAIN_MNGR", 5, 0, "%s", a3);
  }

  if (a2)
  {
    v5 = 0;
    do
    {
      v6 = *(*v4 + 32);
      if (*(v4[2] + 8 * v5))
      {
        result = log_OutText(v6, "DOMAIN_MNGR", 5, 0, "%s %3u: %s");
      }

      else
      {
        result = log_OutText(v6, "DOMAIN_MNGR", 5, 0, "%s %3u: <NULL>");
      }

      ++v5;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t StrArrRealloc(void *a1, unint64_t a2)
{
  if (a1[1] >= a2)
  {
    return 0;
  }

  v4 = heap_Realloc(*(*a1 + 8), a1[2], 8 * (a2 & 0x1FFFFFFF));
  if (v4)
  {
    a1[2] = v4;
    v5 = a1[1];
    if (v5 < a2)
    {
      do
      {
        *(a1[2] + 8 * v5++) = 0;
      }

      while (a2 != v5);
    }

    result = 0;
    a1[1] = a2;
  }

  else
  {
    StrArrDelete(a1);
    return 2296389642;
  }

  return result;
}

uint64_t NLUFeatAdaptToAp(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 7;
  }

  v4 = a2;
  v6 = a1[1];
  if (v6 < a2)
  {
    return 7;
  }

  v7 = 0;
  if (a3 && a2 && a3 != a2)
  {
    if (a3 <= a2)
    {
      v41 = 0;
      v21 = StrArrInit(*a1);
      if (!v21)
      {
        return 2296389642;
      }

      v22 = v21;
      v23 = a3 - 1;
      if (v23 >= v4)
      {
        v24 = 0;
      }

      else
      {
        v24 = 0;
        v25 = v23;
        do
        {
          v26 = a1[2];
          if (v26)
          {
            if (a1[1] > v25)
            {
              for (i = *(v26 + 8 * v25); i; i = hlp_NLUStrNext(i))
              {
                if (memchr("seiSEI", *i, 7uLL) && i[1] == 95)
                {
                  v28 = *(*a1 + 8);
                  v29 = hlp_NLUStrLength(i);
                  v30 = strhelper_StringAppend(v28, 0, i, v29, &v41, 0xAuLL);
                  if (!v30)
                  {
                    goto LABEL_70;
                  }

                  v31 = v30;
                  v32 = StrArrSave(v22, v24, v30);
                  if (v32)
                  {
                    v7 = v32;
                    goto LABEL_76;
                  }

                  heap_Free(*(*a1 + 8), v31);
                  v41 = 0;
                  ++v24;
                }
              }
            }
          }

          ++v25;
        }

        while (v25 != v4);
      }

      StrArrDump(v22, v24, "Extra words before purge");
      PurgeNLUStrArr(v22, v24, 69, 83, 0);
      PurgeNLUStrArr(v22, v24, 73, 73, 73);
      PurgeNLUStrArr(v22, v24, 73, 69, 69);
      PurgeNLUStrArr(v22, v24, 83, 73, 83);
      StrArrDump(v22, v24, "Extra words after purge");
      v33 = a1[2];
      if (v33 && a1[1] > v23 && (v34 = *(v33 + 8 * v23)) != 0)
      {
        v31 = 0;
        while (1)
        {
          if (!memchr("seiSEI", *v34, 7uLL) || v34[1] != 95)
          {
            if (v41)
            {
              v31 = strhelper_StringAppend(*(*a1 + 8), v31, ";", 0xFFFFFFFFFFFFFFFFLL, &v41, 0xAuLL);
              if (!v31)
              {
                break;
              }
            }

            v35 = *(*a1 + 8);
            v36 = hlp_NLUStrLength(v34);
            v31 = strhelper_StringAppend(v35, v31, v34, v36, &v41, 0xAuLL);
            if (!v31)
            {
              break;
            }
          }

          v34 = hlp_NLUStrNext(v34);
          if (!v34)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v31 = 0;
LABEL_60:
        if (!v24)
        {
          v7 = 0;
LABEL_72:
          if (v31)
          {
LABEL_76:
            heap_Free(*(*a1 + 8), v31);
          }

          goto LABEL_77;
        }

        v37 = 0;
        while (1)
        {
          v38 = v22[2];
          if (v38)
          {
            if (v22[1] > v37)
            {
              v39 = *(v38 + 8 * v37);
              if (v39)
              {
                if (v41)
                {
                  v31 = strhelper_StringAppend(*(*a1 + 8), v31, ";", 0xFFFFFFFFFFFFFFFFLL, &v41, 0xAuLL);
                  if (!v31)
                  {
                    break;
                  }
                }

                v31 = strhelper_StringAppend(*(*a1 + 8), v31, v39, 0xFFFFFFFFFFFFFFFFLL, &v41, 0xAuLL);
                if (!v31)
                {
                  break;
                }
              }
            }
          }

          v40 = StrArrSave(a1, v23, v31);
          if (v24 == ++v37)
          {
            v7 = v40;
            goto LABEL_72;
          }
        }
      }

LABEL_70:
      v7 = 2296389642;
LABEL_77:
      v41 = 0;
      StrArrDelete(v22);
      return v7;
    }

    if (v6 > a2 - 1 && (v10 = *(v3 + 8 * (a2 - 1))) != 0)
    {
      v11 = *(*a1 + 8);
      v12 = strlen(v10);
      v13 = heap_Alloc(v11, (v12 + 1));
      if (v13)
      {
        v14 = v13;
        v15 = strcpy(v13, v10);
        do
        {
          if ((*v15 | 0x20) == 0x73 && v15[1] == 95)
          {
            v16 = hlp_NLUStrLength(v15);
            v17 = 1;
            v18 = v15;
            do
            {
              if ((*v18 | 0x20) == 0x65 && v18[1] == 95 && v16 == hlp_NLUStrLength(v18) && !strncmp(v15 + 2, v18 + 2, v16 - 2))
              {
                v17 = 0;
              }

              v18 = hlp_NLUStrNext(v18);
            }

            while (v18);
            if (v17)
            {
              *v15 = 73;
            }
          }

          v15 = hlp_NLUStrNext(v15);
        }

        while (v15);
        v19 = a3 - 1;
        do
        {
          v7 = StrArrSave(a1, v4, v14);
          if (v7)
          {
            break;
          }
        }

        while (v19 != v4++);
        heap_Free(*(*a1 + 8), v14);
      }

      else
      {
        return 10;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t POSAdaptToAp(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a1[2])
  {
    return 7;
  }

  v3 = a2;
  if (a1[1] < a2)
  {
    return 7;
  }

  result = 0;
  if (a2 && a3 > a2)
  {
    while (1)
    {
      result = StrArrSave(a1, v3, "*");
      if (result)
      {
        break;
      }

      if (a3 == ++v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t hlp_AlignOrthAndPhonWords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5, void *a6, _WORD *a7, uint64_t a8, int a9, unsigned __int16 a10, _WORD *a11)
{
  v16 = a10;
  *a11 = 0;
  v17 = *(a4 + 48);
  v18 = hlp_SearchWordBoundaryInOrth(v17);
  if (v18 == 0xFFFF)
  {
    v19 = 1;
  }

  else
  {
    v20 = 0;
    v19 = 1;
    do
    {
      ++v19;
      v20 += v18 + 1;
      v18 = hlp_SearchWordBoundaryInOrth(&v17[v20]);
    }

    while (v18 != 0xFFFF);
  }

  v21 = *a5;
  v22 = (*a5)[a10];
  if ((*a5)[a10])
  {
    do
    {
      if (v22 == 32)
      {
        break;
      }

      if (v22 == 95)
      {
        break;
      }

      v16 = (v16 + 1);
      v22 = v21[v16];
    }

    while (v21[v16]);
  }

  v23 = *(a4 + 56);
  if (v23 < 2)
  {
    v26 = 1;
    LOWORD(v51) = v16;
LABEL_78:
    while (v26 < v19)
    {
      v21[v51] = 45;
      v21 = *a5;
      do
      {
        LOWORD(v51) = v51 + 1;
        v52 = v21[v51];
      }

      while (v21[v51] && v52 != 95 && v52 != 32);
      ++v26;
    }

    return 0;
  }

  v53 = a8;
  v24 = v19;
  v25 = 1;
  v26 = 1;
  v54 = a1;
  while (1)
  {
    v27 = *(*a4 + 8);
    v28 = *(v27 + 280);
    if (v28)
    {
      v29 = *(v28 + 4 * *(a4 + 96));
      if (v29 != -1)
      {
        v30 = *(*(v27 + 288) + (v29 + v25));
LABEL_14:
        if (!v30)
        {
          goto LABEL_28;
        }

        if (v30 != 1)
        {
          v31 = (v30 - 2);
          do
          {
            v21[v16] = 45;
            v21 = *a5;
            do
            {
              v16 = (v16 + 1);
              v32 = v21[v16];
            }

            while (v21[v16] && v32 != 95 && v32 != 32);
            --v30;
          }

          while (v30 > 1u);
          v26 += v31 + 1;
        }

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (v19 <= v23)
    {
      break;
    }

    if (v25 == 1)
    {
      v30 = v19 - v23 + 1;
      goto LABEL_14;
    }

LABEL_27:
    ++v26;
LABEL_65:
    while (1)
    {
      v49 = v21[v16];
      if (v49 != 32)
      {
        v50 = v21[v16];
        if (v50 != 95)
        {
          if (!v21[v16])
          {
            v51 = v16;
            goto LABEL_75;
          }

          if (!strchr(*(*(*a4 + 8) + 192), v49))
          {
            break;
          }
        }
      }

      v16 = (v16 + 1);
    }

    v51 = v16;
    do
    {
      if (v50 == 32)
      {
        break;
      }

      if (v50 == 95)
      {
        break;
      }

      v51 = (v51 + 1);
      v50 = v21[v51];
    }

    while (v50);
LABEL_75:
    ++v25;
    v23 = *(a4 + 56);
    v16 = v51;
    if (v25 >= v23)
    {
      goto LABEL_78;
    }
  }

  if (v23 - v24 < v25)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v16)
  {
    v33 = *(*(*a4 + 8) + 192);
    v16 = v16;
    while (strchr(v33, v21[(v16 - 1)]))
    {
      if (!--v16)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v16 = 0;
  }

  v34 = strlen(v21);
  if (v34 < v16)
  {
    v35 = 0;
LABEL_64:
    *a11 += v35;
    v21 = *a5;
    goto LABEL_65;
  }

  v36 = v34;
  v37 = a7;
  v38 = *(**a4 + 16);
  v39 = heap_Realloc(*(v38 + 8), v21, (v34 + 4));
  if (v39)
  {
    *a5 = v39;
    memmove(&v39[v16 + 3], &v39[v16], v36 - v16 + 1);
    (*a5)[v16] = 32;
    *&(*a5)[v16 + 1] = -22590;
    a7 = v37;
    v40 = *v37;
    if (*v37)
    {
      v41 = a9 + v16;
      v42 = (*a6 + 16);
      do
      {
        v43 = *(v42 - 1);
        if (v43 >= v41)
        {
          *(v42 - 1) = v43 + 3;
        }

        else if (*v42 + v43 >= v41)
        {
          *v42 += 3;
        }

        v42 += 8;
        --v40;
      }

      while (v40);
    }

    v59 = 0;
    v60 = 0;
    v58 = 0;
    result = (*(a3 + 104))(v54, a2, 1, 0, &v60 + 2);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a3 + 104))(v54, a2, 2, HIWORD(v60), &v60);
      if ((result & 0x80000000) == 0)
      {
        v45 = v60;
        if (!v60)
        {
          goto LABEL_55;
        }

        do
        {
          result = (*(a3 + 168))(v54, a2, v45, 1, 1, &v58 + 2, &v59 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(a3 + 168))(v54, a2, v60, 2, 1, &v58, &v59 + 2);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIWORD(v58) > v16)
          {
            HIWORD(v58) += 3;
            result = (*(a3 + 160))(v54, a2, v60, 1, 1, &v58 + 2, &v59);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (v58 > v16)
          {
            LOWORD(v58) = v58 + 3;
            result = (*(a3 + 160))(v54, a2, v60, 2, 1, &v58, &v59);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          result = (*(a3 + 120))(v54, a2, v60, &v60);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          v45 = v60;
        }

        while (v60);
        if ((result & 0x80000000) == 0)
        {
LABEL_55:
          v46 = *(v53 + 8);
          if (v46 <= -3)
          {
            v46 = -3;
          }

          *(v53 + 8) = v46 + 3;
          v47 = *(v53 + 16);
          if (v47)
          {
            v24 = v19;
            do
            {
              v48 = *(v47 + 4);
              if (v48 <= -3)
              {
                v48 = -3;
              }

              *(v47 + 4) = v48 + 3;
              v47 = *(v47 + 16);
            }

            while (v47);
            v35 = 3;
          }

          else
          {
            v35 = 3;
            v24 = v19;
          }

          goto LABEL_64;
        }
      }
    }
  }

  else
  {
    log_OutPublic(*(v38 + 32), "DOMAIN_MNGR", 47000, 0);
    return 2296389642;
  }

  return result;
}

uint64_t hlp_GetNextTokenRecIdAtFrom(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _WORD *a6)
{
  v14 = a5;
  if (!a5)
  {
    return 0;
  }

  v13 = 0;
  v12 = 0;
  do
  {
    result = (*(a3 + 168))(a1, a2, a5, 1, 1, &v13, &v12);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (v13 >= a4)
    {
      break;
    }

    *a6 = v14;
    result = (*(a3 + 120))(a1, a2);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    LOWORD(a5) = v14;
  }

  while (v14);
  return result;
}

uint64_t hlp_InsertInitialPhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v15 = 0;
  v14 = 15;
  if (*a6)
  {
    result = (*(a3 + 80))(a1, a2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = (*(a3 + 72))(a1, a2, 2, a4, a6);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v13 = 0;
  result = (*(a3 + 160))(a1, a2, *a6, 0, 1, &v14, &v13);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a3 + 160))(a1, a2, *a6, 1, 1, &v15, &v13);
    if ((result & 0x80000000) == 0)
    {
      result = (*(a3 + 160))(a1, a2, *a6, 2, 1, &v15, &v13);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a3 + 160))(a1, a2, *a6, 7, 1, a5 + 2, &v13);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a3 + 160))(a1, a2, *a6, 8, 1, a5, &v13);
          if ((result & 0x80000000) == 0)
          {
            v12 = strlen((a5 + 4));
            return (*(a3 + 160))(a1, a2, *a6, 4, (v12 + 1), a5 + 4, &v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t hlp_SearchWordBoundaryInOrth(char *a1)
{
  v2 = strstr(a1, "%Ä");
  if (v2)
  {
    v3 = v2 - a1;
  }

  else
  {
    v3 = strlen(a1);
  }

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1[v4];
      if (v5 == 32 || v5 == 95)
      {
        break;
      }

      if (++v4 >= v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOWORD(v4) = -1;
  }

  return v4;
}

uint64_t hlp_InsertPromptWordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, unsigned __int16 a9, char a10, char a11, char a12, unsigned __int16 a13, int a14, unsigned __int16 *a15, _WORD *a16, _DWORD *a17, unsigned __int16 *a18)
{
  v23 = a18;
  v89 = *MEMORY[0x1E69E9840];
  v24 = *(a4 + 80);
  v25 = (*(a4 + 88) + 8 * a7);
  v26 = *(**a4 + 16);
  if (a7)
  {
    v27 = 11;
  }

  else
  {
    v27 = 13;
  }

  v86 = v27;
  strcpy(__s, "*");
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v77 = v25;
  v78 = *v25;
  v79 = v24;
  v81 = 0;
  if (*a18)
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 80))();
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }
  }

  else
  {
    v28 = a1;
    v29 = a2;
    v30 = (*(a3 + 72))(a1, a2, 2, a9, a18);
    if ((v30 & 0x80000000) != 0)
    {
      return v30;
    }
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 0, 1, &v86, &v82);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 1, 1, &a10, &v82);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v30 = (*(a3 + 160))(v28, v29, *v23, 2, 1, &a12, &v82);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v74 = v26;
  v75 = a3;
  v31 = *(a3 + 160);
  v32 = strlen((v79 + v78));
  v33 = v28;
  v30 = v31(v28, v29, *v23, 3, (v32 + 1), v79 + v78, &v82);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  if (a5)
  {
    v34 = *(a5 + 16);
    if (v34)
    {
      if (*(a5 + 8) > a7)
      {
        v35 = *(v34 + 8 * a7);
        if (v35)
        {
          v36 = strlen(*(v34 + 8 * a7));
          v30 = (*(v75 + 160))(v28, v29, *v23, 14, (v36 + 1), v35, &v82);
          if ((v30 & 0x80000000) != 0)
          {
            return v30;
          }
        }
      }
    }
  }

  if (a6 && (v37 = *(a6 + 16)) != 0 && *(a6 + 8) > a7 && (v38 = *(v37 + 8 * a7)) != 0)
  {
    v39 = *(v75 + 160);
    v40 = (strlen(*(v37 + 8 * a7)) + 1);
    v41 = v28;
    v42 = v29;
    v43 = *v23;
    v44 = v38;
  }

  else
  {
    v39 = *(v75 + 160);
    v40 = (strlen(__s) + 1);
    v44 = __s;
    v41 = v28;
    v42 = v29;
    v43 = *v23;
  }

  v30 = v39(v41, v42, v43, 5, v40, v44, &v82);
  if ((v30 & 0x80000000) != 0)
  {
    return v30;
  }

  v45 = 2296389642;
  v83 = strlen((v79 + v78)) + 1;
  v46 = heap_Calloc(*(v74 + 8), v83, 1);
  if (v46)
  {
    v47 = v46;
    v48 = strlen((v79 + v78));
    utf8_Utf8ToDepes(v79 + v78, v48, 0, v47, v83, &v83, 0);
    v49 = strlen(v47);
    v50 = (*(v75 + 160))(v28, v29, *v23, 15, (v49 + 1), v47, &v82);
    if ((v50 & 0x80000000) != 0)
    {
      v70 = v47;
      v45 = v50;
      goto LABEL_84;
    }

    if ((domain_mngr_utils_IsActiveVoiceAddon(v74, *(*(*a4 + 8) + 72), (*(*a4 + 8) + 80), (*(*a4 + 8) + 88), (*(*a4 + 8) + 100), &v81) & 0x80000000) != 0 || !v81 || (v87[0] = 0, (paramc_ParamGetInt(*(v74 + 40), *(*a4 + 72), v87) & 0x80000000) != 0) || (v51 = v87[0]) == 0)
    {
      v80 = 0;
      v52 = v77;
    }

    else
    {
      v52 = v77;
      v53 = heap_Calloc(*(v74 + 8), v77[2], 4);
      if (!v53)
      {
        v70 = v47;
        goto LABEL_84;
      }

      v54 = v53;
      memcpy(v53, (*(a4 + 72) + 4 * v77[1]), 4 * v77[2]);
      v55 = v77[2];
      v80 = v54;
      if (v77[2])
      {
        v56 = 0;
        v57 = v29;
        do
        {
          v58 = *&v54[v56];
          if (v58 != -1)
          {
            *&v54[v56] = v58 + v51;
          }

          v56 += 4;
        }

        while (4 * v55 != v56);
LABEL_41:
        v60 = v57;
        v61 = (*(v75 + 160))(v33);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v61 = (*(v75 + 160))(v33, v60, *v23, 6, 2, __s, &v82);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v61 = (*(v75 + 160))(v33, v60, *v23, 9, 1, &v84, &v82);
        if ((v61 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v62 = *(*a4 + 8);
        if (*(v62 + 208) == 1)
        {
          __sprintf_chk(v88, 0, 8uLL, "%u", *(*(v62 + 272) + *(v62 + 214) + (*(a4 + 60) + a7) * *(v62 + 212)));
          v63 = strlen(v88);
          v61 = (*(v75 + 160))(v33, v29, *v23, 13, (v63 + 1), v88, &v82);
          if ((v61 & 0x80000000) != 0)
          {
            goto LABEL_83;
          }

          v62 = *(*a4 + 8);
          v52 = v77;
        }

        v64 = a16;
        v65 = a17;
        v66 = a15;
        v67 = v52[3];
        *a15 = v67;
        if (*(v62 + 220) == 1)
        {
          v68 = *(*(v62 + 272) + *(v62 + 216) + (*(a4 + 60) + a7) * *(v62 + 212));
          *v64 = v68;
          if (v68 < 2)
          {
            if (*v66 != 0xFFFF && *v66)
            {
              v69 = 0;
            }

            else
            {
              v69 = 0;
              *v66 = 1;
            }

LABEL_63:
            v71 = a14;
            *v65 = 0;
            v72 = *v66;
            if (a8)
            {
              if (v71 || v72 == 0xFFFF)
              {
                v72 = a13;
                *v66 = a13;
                *v65 = 1;
              }
            }

            else if (v72 == 0xFFFF)
            {
              *v66 = 0;
LABEL_71:
              if (*(v62 + 228) == 1)
              {
                v73 = v69;
              }

              else
              {
                v73 = 1;
              }

              if (((v73 & 1) != 0 || *v66 == 65533 || !*v66) && (a8 != 1 || v71 != 1) || (strcpy(v87, "external"), v61 = (*(v75 + 160))(v33, v29, *v23, 18, 9, v87, &v82), (v61 & 0x80000000) == 0))
              {
                if (*v66 == -3)
                {
                  *v66 = 200;
                }

                v61 = (*(v75 + 160))(v33, v29, *v23, 8, 1, v66, &v82);
              }

LABEL_83:
              v45 = v61;
              heap_Free(*(v74 + 8), v47);
              v70 = v80;
              if (!v80)
              {
                return v45;
              }

LABEL_84:
              heap_Free(*(v74 + 8), v70);
              return v45;
            }

            if (v72)
            {
              *v64 = 1;
            }

            goto LABEL_71;
          }

          if (v68 == 2)
          {
            *v66 = 0;
          }
        }

        else
        {
          if (v67 && v67 != 0xFFFF)
          {
            v69 = 0;
            *v64 = 1;
            goto LABEL_63;
          }

          *v64 = 255;
        }

        v69 = 1;
        goto LABEL_63;
      }
    }

    v57 = v29;
    goto LABEL_41;
  }

  return v45;
}

uint64_t hlp_CreateOrUpdatePhraseRecord(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, int a7, __int16 a8, _WORD *a9)
{
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15 = 15;
  if (a7 == 255)
  {
    result = 0;
    if (a4 && a5)
    {
      v13 = *(a3 + 192);

      return v13(a1, a2, a5);
    }
  }

  else
  {
    v14 = 0;
    if (a4 && a5)
    {
      *a9 = a5;
    }

    else
    {
      result = (*(a3 + 80))(a1, a2, *a9, a9, a5);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 0, 1, &v15, &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 1, 1, &v18, &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 2, 1, &v18, &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(a3 + 160))(a1, a2, *a9, 4, 1, "", &v14);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      a5 = *a9;
    }

    result = (*(a3 + 160))(a1, a2, a5, 7, 1, &v17, &v14);
    if ((result & 0x80000000) == 0)
    {
      return (*(a3 + 160))(a1, a2, *a9, 8, 1, &v16, &v14);
    }
  }

  return result;
}

void *StrArrDelete(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      v3 = result[1];
      if (v3)
      {
        v4 = v3 - 1;
        do
        {
          v5 = *(v1[2] + 8 * v4);
          if (v5)
          {
            heap_Free(*(*v1 + 8), v5);
          }

          --v4;
        }

        while (v4 != -1);
        v2 = v1[2];
      }

      heap_Free(*(*v1 + 8), v2);
    }

    v6 = *(*v1 + 8);

    return heap_Free(v6, v1);
  }

  return result;
}

uint64_t activeprompt_InsertOrth(char **a1, unsigned __int16 a2, int a3, const char **a4, uint64_t *a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, _WORD *a11)
{
  v99[0] = a2;
  v15 = **a1;
  v16 = *(v15 + 16);
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 5;
  v92 = 0;
  __s = 0;
  v17 = *(v15 + 56);
  v90 = 0;
  v18 = a1[6];
  v19 = strstr(v18, "%Ä");
  v20 = v19;
  if (v19)
  {
    v21 = v19 - v18;
    v22 = (v19 - v18);
    v23 = heap_Alloc(*(v16 + 8), v22 + 1);
    if (!v23)
    {
      v24 = 2296389642;
      log_OutPublic(*(v16 + 32), "DOMAIN_MNGR", 47000, 0);
      return v24;
    }

    v18 = v23;
    v82 = a7;
    strncpy(v23, a1[6], v22)[v22] = 0;
  }

  else
  {
    v82 = a7;
    v21 = strlen(v18);
  }

  v24 = 2296389642;
  if (!v21)
  {
    v24 = 2296389639;
    goto LABEL_153;
  }

  v75 = v21;
  v76 = a6;
  v86 = v16;
  v87 = v21;
  v80 = v20;
  v81 = v17;
  v25 = v99[0];
  v26 = *a4;
  v27 = strlen(*a4);
  v28 = v99[0];
  if (v27 > v99[0])
  {
    v29 = *(*(*a1 + 1) + 192);
    v28 = v99[0];
    do
    {
      if (!strchr(v29, v26[v28]))
      {
        break;
      }

      ++v28;
    }

    while (v27 > v28);
  }

  if (v28 == v27)
  {
    v73 = 0;
    v77 = 0;
    v30 = v21;
  }

  else
  {
    if (v26[v28] == 32)
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    v73 = v31;
    v77 = v26[v28] != 32;
    if (v26[v28] == 32)
    {
      v30 = v21;
    }

    else
    {
      v30 = v21 + 1;
    }

    if (v26[v28] == 32)
    {
      ++v28;
    }

    else
    {
      v28 = v99[0];
    }
  }

  if (v99[0])
  {
    v32 = v99[0] - 1;
  }

  else
  {
    v32 = 0;
  }

  if (v99[0] < 2u)
  {
LABEL_30:
    if (!v99[0])
    {
      v78 = 0;
      v35 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v33 = *(*(*a1 + 1) + 192);
    v34 = v32;
    while (strchr(v33, v26[v34]))
    {
      if (!--v34)
      {
        v32 = 0;
        goto LABEL_30;
      }
    }

    v32 = v34;
  }

  if (v26[v32] != 32)
  {
    ++v30;
    v74 = v99[0] + 1;
    v92 = v99[0] + 1;
    v78 = 1;
    v79 = 0;
    v35 = 1;
    goto LABEL_38;
  }

  v78 = 0;
  v35 = 0;
  ++v32;
LABEL_37:
  v74 = v32;
  v92 = v32;
  v79 = 1;
LABEL_38:
  v36 = strlen(v26);
  v37 = heap_Realloc(*(v86 + 8), v26, v36 + v30 + 2);
  if (!v37)
  {
    log_OutPublic(*(v86 + 32), "DOMAIN_MNGR", 47000, 0);
    v16 = v86;
LABEL_70:
    v20 = v80;
    goto LABEL_153;
  }

  v38 = v30;
  *a4 = v37;
  v39 = strlen(v37) + 1;
  if (v39 >= v25)
  {
    do
    {
      (*a4)[v30 + v39] = (*a4)[v39];
      v25 = v99[0];
    }

    while (v39-- > v99[0]);
  }

  v72 = v30 + v28;
  if (v35)
  {
    (*a4)[v25] = 32;
  }

  v41 = 0;
  v42 = v78;
  v16 = v86;
  v20 = v80;
  do
  {
    (*a4)[v99[0] + v42++] = v18[v41++];
  }

  while (v87 != v41);
  if (v77)
  {
    (*a4)[v99[0] - 1 + v38] = 32;
  }

  *a11 += v38;
  v43 = *a5;
  v44 = *a5 + 32 * v82;
  v47 = *(v44 + 12);
  v45 = (v44 + 12);
  v46 = v47;
  v45[1] = v75;
  if ((v79 & 1) == 0 && v46 == v99[0] + a3)
  {
    *v45 = v46 + 1;
  }

  v48 = *v76;
  if (v48 > (v82 + 1))
  {
    v49 = (v82 + 1);
    v50 = (v43 + 32 * v49 + 12);
    v51 = v49 + 1;
    do
    {
      *v50 += v38;
      v50 += 8;
    }

    while (v48 != v51++);
  }

  v53 = (*(v81 + 104))(a9, a10, 1, 0, &v98 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  if (((*(v81 + 152))(a9, a10, 3, HIWORD(v98), &v90) & 0x80000000) == 0 && v90)
  {
    v53 = (*(v81 + 104))(a9, a10, 3, HIWORD(v98), &v98);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    while (v98)
    {
      v53 = (*(v81 + 168))(a9, a10);
      if ((v53 & 0x80000000) != 0)
      {
        goto LABEL_152;
      }

      v53 = (*(v81 + 168))(a9, a10, v98, 2, 1, &v94, &v96);
      if ((v53 & 0x80000000) != 0)
      {
        goto LABEL_152;
      }

      v54 = v99[0];
      if (v95 >= v99[0])
      {
        LOWORD(v95) = v95 + v38;
        v53 = (*(v81 + 160))(a9, a10, v98, 1, 1, &v95, &v95 + 2);
        if ((v53 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }

        v54 = v99[0];
      }

      if (v94 > v54)
      {
        v94 += v38;
        v53 = (*(v81 + 160))(a9, a10, v98, 2, 1, &v94, &v95 + 2);
        if ((v53 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }
      }

      v24 = (*(v81 + 120))(a9, a10, v98, &v98);
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_153;
      }
    }
  }

  v53 = (*(v81 + 104))(a9, a10, 1, 0, &v98 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v55 = 0;
  if (((*(v81 + 152))(a9, a10, 3, HIWORD(v98), &v90) & 0x80000000) != 0)
  {
    v56 = 0;
    v89 = 0;
    v57 = 0;
  }

  else
  {
    v56 = 0;
    v89 = 0;
    v57 = 0;
    if (v90)
    {
      v53 = (*(v81 + 104))(a9, a10, 3, HIWORD(v98), &v98);
      if ((v53 & 0x80000000) != 0)
      {
        goto LABEL_152;
      }

      v58 = v98;
      if (v98)
      {
        v55 = 0;
        v59 = 0;
        v83 = 0;
        v89 = 0;
        while (1)
        {
          v60 = (*(v81 + 168))(a9, a10, v58, 1, 1, &v95, &v96);
          if ((v60 & 0x80000000) != 0 || (v60 = (*(v81 + 168))(a9, a10, v98, 2, 1, &v94, &v96), (v60 & 0x80000000) != 0) || (v60 = (*(v81 + 168))(a9, a10, v98, 0, 1, &v93, &v96), (v60 & 0x80000000) != 0))
          {
LABEL_107:
            v24 = v60;
            goto LABEL_70;
          }

          v61 = v93;
          if (v93 == 3)
          {
            if (v95 >= v99[0] || v94 <= v99[0])
            {
LABEL_92:
              v62 = v95;
              goto LABEL_93;
            }

            v60 = (*(v81 + 160))(a9, a10, v98, 2, 1, v99, &v95 + 2);
            if ((v60 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            v60 = (*(v81 + 80))(a9, a10, v98, &v98);
            if ((v60 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            v60 = (*(v81 + 160))(a9, a10, v98, 0, 1, &v93, &v95 + 2);
            if ((v60 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            LOWORD(v95) = v99[0] + v38;
            v60 = (*(v81 + 160))(a9, a10, v98, 1, 1, &v95, &v95 + 2);
            if ((v60 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            v60 = (*(v81 + 160))(a9, a10, v98, 2, 1, &v94, &v95 + 2);
            if ((v60 & 0x80000000) != 0)
            {
              goto LABEL_107;
            }

            LOWORD(v95) = v99[0];
            v61 = v93;
          }

          if (v61 != 5)
          {
            goto LABEL_92;
          }

          WORD2(v83) = v98;
          v60 = (*(v81 + 176))(a9, a10);
          if ((v60 & 0x80000000) != 0)
          {
            goto LABEL_107;
          }

          v62 = v95;
          LOWORD(v83) = v94;
          v89 = v95;
LABEL_93:
          v63 = v98;
          if (!HIWORD(v97) && v62 >= v99[0])
          {
            HIWORD(v97) = v98;
          }

          if (!v59)
          {
            if (v62 >= v74)
            {
              LOWORD(v97) = v98;
              v55 = v98;
              v59 = v98;
            }

            else
            {
              v59 = 0;
            }
          }

          if (!HIWORD(v96) && v62 >= v72)
          {
            HIWORD(v96) = v98;
            if (v98)
            {
              v53 = (*(v81 + 88))(a9, a10, HIWORD(v97), &v97 + 2);
              goto LABEL_136;
            }

            goto LABEL_138;
          }

          v60 = (*(v81 + 120))(a9, a10, v98, &v98);
          if ((v60 & 0x80000000) != 0)
          {
            goto LABEL_107;
          }

          v58 = v98;
          if (!v98)
          {
            if (v63)
            {
              v53 = (*(v81 + 80))(a9, a10, v63, &v97 + 2);
LABEL_136:
              v20 = v80;
              v56 = v83;
              if ((v53 & 0x80000000) == 0)
              {
                goto LABEL_110;
              }

              goto LABEL_152;
            }

LABEL_138:
            v20 = v80;
            v56 = v83;
            v57 = WORD2(v83);
            goto LABEL_109;
          }
        }
      }

      v55 = 0;
      v56 = 0;
      v89 = 0;
      v57 = 0;
    }
  }

LABEL_109:
  WORD2(v83) = v57;
  v53 = (*(v81 + 72))(a9, a10, 3, HIWORD(v98), &v97 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

LABEL_110:
  if (HIWORD(v96))
  {
    v53 = (*(v81 + 120))(a9, a10);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    if (!v98)
    {
      goto LABEL_169;
    }

    v53 = (*(v81 + 168))(a9, a10);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    if (v93 == 5)
    {
      HIWORD(v96) = 0;
    }

    else
    {
LABEL_169:
      if (HIWORD(v96))
      {
        v53 = (*(v81 + 80))(a9, a10);
        if ((v53 & 0x80000000) != 0)
        {
          goto LABEL_152;
        }
      }
    }
  }

  v84 = v56;
  if ((v79 & 1) == 0)
  {
    LOWORD(v95) = v99[0];
    v94 = v99[0] + 1;
    v93 = 3;
    v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 0, 1, &v93, &v95 + 2);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 1, 1, &v95, &v95 + 2);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 2, 1, &v94, &v95 + 2);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    v53 = (*(v81 + 80))(a9, a10, HIWORD(v97), &v97 + 2);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }
  }

  LOWORD(v95) = v99[0] + v78;
  v94 = v38 + v73 + v99[0];
  v93 = 6;
  v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 0, 1, &v93, &v95 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 1, 1, &v95, &v95 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 2, 1, &v94, &v95 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 4, 5, "_PR_", &v95 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  v53 = (*(v81 + 160))(a9, a10, HIWORD(v97), 3, (v87 + 1), v18, &v95 + 2);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_152;
  }

  LOWORD(v95) = v74;
  v64 = v72;
  v94 = v72;
  do
  {
    v65 = v64;
    v66 = (*a4)[v64++];
  }

  while (v66 == 32);
  v93 = 5;
  v67 = *(v81 + 80);
  if (v78 + v99[0] == v74)
  {
    v53 = v67(a9, a10, HIWORD(v97), &v97 + 2);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }

    LOWORD(v97) = HIWORD(v97);
  }

  else
  {
    v53 = v67(a9, a10, v55, &v97);
    if ((v53 & 0x80000000) != 0)
    {
      goto LABEL_152;
    }
  }

  v53 = (*(v81 + 160))(a9, a10);
  if ((v53 & 0x80000000) != 0 || (v53 = (*(v81 + 160))(a9, a10, v97, 1, 1, &v95, &v95 + 2), (v53 & 0x80000000) != 0) || (v53 = (*(v81 + 160))(a9, a10, v97, 2, 1, &v94, &v95 + 2), (v53 & 0x80000000) != 0))
  {
LABEL_152:
    v24 = v53;
    goto LABEL_153;
  }

  v24 = (*(v81 + 160))(a9, a10, v97, 4, 7, "prompt", &v95 + 2);
  if ((v24 & 0x80000000) == 0)
  {
    if (v77)
    {
      v68 = (*(v81 + 80))(a9, a10, HIWORD(v97), &v97 + 2);
      if ((v68 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      LOWORD(v95) = v99[0] + v38 - 1;
      v94 = v99[0] + v38;
      v93 = 3;
      v68 = (*(v81 + 160))(a9, a10, HIWORD(v97), 0, 1, &v93, &v95 + 2);
      if ((v68 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v68 = (*(v81 + 160))(a9, a10, HIWORD(v97), 1, 1, &v95, &v95 + 2);
      if ((v68 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v24 = (*(v81 + 160))(a9, a10, HIWORD(v97), 2, 1, &v94, &v95 + 2);
      v16 = v86;
      v20 = v80;
      if ((v24 & 0x80000000) != 0)
      {
        goto LABEL_153;
      }
    }

    if (__s)
    {
      v69 = v89 >= v74 ? (*(v81 + 192))(a9, a10, WORD2(v83)) : (*(v81 + 160))(a9, a10, WORD2(v83), 2, 1, &v92, &v95 + 2);
      v24 = v69;
      v16 = v86;
      v20 = v80;
      if ((v69 & 0x80000000) != 0)
      {
        goto LABEL_153;
      }
    }

    if (!HIWORD(v96))
    {
      goto LABEL_166;
    }

    v16 = v86;
    v20 = v80;
    if (!__s)
    {
      goto LABEL_153;
    }

    LOWORD(v95) = v65;
    v94 = v84;
    v93 = 5;
    v68 = (*(v81 + 160))(a9, a10);
    if ((v68 & 0x80000000) == 0)
    {
      v68 = (*(v81 + 160))(a9, a10, HIWORD(v96), 1, 1, &v95, &v95 + 2);
      if ((v68 & 0x80000000) == 0)
      {
        v68 = (*(v81 + 160))(a9, a10, HIWORD(v96), 2, 1, &v94, &v95 + 2);
        if ((v68 & 0x80000000) == 0)
        {
          v71 = strlen(__s);
          v68 = (*(v81 + 160))(a9, a10, HIWORD(v96), 4, (v71 + 1), __s, &v95 + 2);
        }
      }
    }

LABEL_165:
    v24 = v68;
LABEL_166:
    v16 = v86;
    goto LABEL_70;
  }

LABEL_153:
  if (v20 && v18)
  {
    heap_Free(*(v16 + 8), v18);
  }

  return v24;
}

uint64_t activeprompt_ConsultOriOrth(const char **a1, const char **a2, uint64_t *a3, unsigned __int16 *a4, uint64_t a5, _WORD *a6)
{
  v215[3] = *MEMORY[0x1E69E9840];
  v6 = *(**a1 + 16);
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v7 = a1[5];
  if (!v7)
  {
    return 0;
  }

  v11 = a2;
  v188 = strlen(*a2);
  v205 = a3;
  LODWORD(a3) = *(*a3 + 12);
  v13 = (*(a5 + 4) - a3);
  v204 = strlen(v7);
  v202 = a3;
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    v19 = a5;
    do
    {
      v20 = v19;
      v19 = *(v19 + 16);
    }

    while (v19);
    v21 = v13;
    if (a4)
    {
      v22 = v13;
      if (*a4)
      {
        v23 = (*(v20 + 8) + *(v20 + 4) - *(*v205 + 12));
      }

      else
      {
        v23 = 0;
      }

      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v14, v15, v16, v17, v18, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *v11, v23);
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "application/x-realspeak-markers-pp;version=4.0", *v205, 32 * *a4);
      v13 = v22;
    }

    else
    {
      log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%d %s%d", v14, v15, v16, v17, v18, "BEG");
      log_OutTraceTuningDataBinary(*(v6 + 32), 218, "", "text/plain;charset=utf-8", *v11, 0);
    }
  }

  else
  {
    v21 = v13;
  }

  v25 = v204;
  if ((*(a5 + 8) + v13) >= (v13 + v204))
  {
    v187 = a6;
    v198 = 0;
    LOWORD(__s) = 0;
    LOWORD(v192) = 0;
    v28 = 0;
    LOBYTE(v199) = 0;
    v29 = v13;
    v30 = *v11;
    v189 = v21;
    v203 = v21;
    v194 = v29;
    v31 = v29;
    v197 = v6;
    v201 = a4;
    v195 = v11;
    v200 = a5;
    while (1)
    {
      if (!v30[v31])
      {
        goto LABEL_14;
      }

      if (v188 <= v31)
      {
        v49 = 0;
        v36 = v31;
      }

      else
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = v31;
        v36 = v31;
        v37 = v205;
        v38 = a1;
        do
        {
          if (v33 && (v39 = v35 + 1, v39 < v188) && v30[v36] == 32 && (v40 = &v30[v39], *v40 == 194) && *(v40 + 1) == 167)
          {
            v36 += 2;
            --v33;
            v41 = 1;
          }

          else
          {
            if (a4)
            {
              v42 = *a4;
              v43 = v32 <= v42 ? *a4 : v32;
              if (v32 >= v42)
              {
LABEL_41:
                v32 = v43;
LABEL_43:
                LOWORD(v45) = *a4;
              }

              else
              {
                v44 = v35 + v202;
                v45 = v32;
                v46 = (*v37 + 32 * v32);
                while (1)
                {
                  v47 = v46[3];
                  if (v47 > v44)
                  {
                    v32 = v45;
                    goto LABEL_43;
                  }

                  if (v47 >= v44 && *v46 == 34)
                  {
                    break;
                  }

                  v46 += 8;
                  if (v43 == ++v45)
                  {
                    goto LABEL_41;
                  }
                }

                v32 = v45;
              }

              if (v42 > v45)
              {
                if (!hlp_GetRangeForSETPHON(v30, *v37, v42, v45, &v209, &v208, &v209 + 1, &v207 + 1, &v207))
                {
                  goto LABEL_65;
                }

                if (v208)
                {
                  v33 = HIWORD(v209);
                }

                v37 = v205;
                v38 = a1;
                v25 = v204;
              }
            }

            if (v34 >= v25)
            {
              goto LABEL_59;
            }

            v41 = *(*(v38 + 40) + v34++) == v30[v36];
          }

          v35 = ++v36;
        }

        while (v41 && v188 > v36);
        if (!v41)
        {
LABEL_65:
          v51 = 0;
          v196 = v36 - v31;
          v6 = v197;
          goto LABEL_98;
        }

LABEL_59:
        v49 = v36 - v31;
        v50 = v207 >= v35 || v33 == 0;
        v11 = v195;
        if (v50)
        {
          v6 = v197;
          goto LABEL_76;
        }

        v52 = v36;
        if (v188 <= v36)
        {
          v6 = v197;
        }

        else
        {
          v6 = v197;
          while (1)
          {
            v53 = &v30[v52];
            if (*v53 == 194 && *(v53 + 1) == 167)
            {
              break;
            }

            if (v188 <= ++v52)
            {
              v36 = v52;
              v52 = v52;
              goto LABEL_74;
            }
          }

          v36 = v52;
        }

LABEL_74:
        if (v188 == v52 || (v36 = 3 * v33 + v36 - 1, v36 > v188))
        {
          v24 = 0;
          a4 = v201;
          a5 = v200;
          goto LABEL_15;
        }
      }

LABEL_76:
      v196 = v36 - v31;
      v198 = v49;
      v54 = v49 + v31;
      if (v188 > (v49 + v31))
      {
        while (1)
        {
          v55 = v30[v54];
          if (memchr(" \t\r\n", v55, 5uLL))
          {
            break;
          }

          v56 = strchr(*(*(*a1 + 1) + 192), v55);
          ++v54;
          if (v56)
          {
            v57 = v188 > v54;
          }

          else
          {
            v57 = 0;
          }

          if (!v57)
          {
            if (v56)
            {
              break;
            }

            v51 = 0;
            a4 = v201;
            goto LABEL_99;
          }
        }
      }

      a4 = v201;
      if (v201 && (v58 = *v201) != 0)
      {
        v59 = 0;
        v60 = v203 + v196;
        v61 = *v205;
        v62 = *v205;
        while (1)
        {
          v63 = *v62;
          v62 += 8;
          if (v63 == 34 && (!hlp_GetRangeForSETPHON(v30, v61, v58, v59, &v209, &v208, &v209 + 1, &v207 + 1, &v207) || v208 && (HIDWORD(v207) < v203 && v207 >= v203 || HIDWORD(v207) < v60 && v60 <= v207)))
          {
            break;
          }

          if (v58 == ++v59)
          {
            v51 = 1;
            goto LABEL_97;
          }
        }

        v51 = 0;
LABEL_97:
        v6 = v197;
        a4 = v201;
LABEL_98:
        v11 = v195;
      }

      else
      {
        v51 = 1;
      }

LABEL_99:
      if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
      {
        log_OutTraceTuningData(*(v6 + 32), 220, "%s%d %s%d %s%s", v64, v65, v66, v67, v68, "IDXBEG");
        if (!v51)
        {
          goto LABEL_231;
        }

        v74 = v205;
        v75 = a1;
        v76 = *(a1 + 7);
        if (v76)
        {
LABEL_106:
          v193 = 0;
          if (!a4)
          {
            goto LABEL_116;
          }

          goto LABEL_107;
        }

        if (*(a1 + 8))
        {
          break;
        }

        log_OutTraceTuningData(*(v6 + 32), 221, "%s%s %s%s", v69, v70, v71, v72, v73, "RES");
        log_OutTraceTuningData(*(v6 + 32), 222, "%s%s %s%s", v77, v78, v79, v80, v81, "RES");
        v75 = a1;
      }

      else
      {
        v75 = a1;
        if (!v51)
        {
          goto LABEL_231;
        }
      }

      v76 = *(v75 + 7);
      v74 = v205;
      if (v76)
      {
        goto LABEL_106;
      }

      if (*(v75 + 8))
      {
        break;
      }

LABEL_213:
      if (*(v75 + 2) != 2 || !a4 || !*a4)
      {
        goto LABEL_248;
      }

      v138 = 0;
      v139 = 1;
      while (1)
      {
        v140 = *(*v74 + v138);
        v141 = (v140 - 16) < 4 || v140 == 24;
        if (v141 && *(v75 + 2) == 2)
        {
          v142 = *(*v74 + v138 + 12);
          if (v142 > v202 + v31 && v142 < v202 + v36)
          {
            break;
          }
        }

        v149 = 1;
        v138 += 32;
        v119 = v139++ >= *a4;
        if (v119)
        {
          goto LABEL_230;
        }
      }

      log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", *(*(*a1 + 1) + 168), a1[2], v202 + v31, v202 + v36);
      log_OutTraceTuningData(*(v6 + 32), 223, "%s%s %s%s", v144, v145, v146, v147, v148, "RES");
      v149 = 0;
LABEL_230:
      v11 = v195;
      if (v149)
      {
LABEL_248:
        if (log_GetLogLevel(*(v6 + 32)) >= 5)
        {
          __dst[0] = 0;
          v210[0] = 0;
          v161 = a1;
          hlp_ContextToString(1, *(a1 + 7), *(a1 + 24), v192, &v214, v199, __dst);
          hlp_ContextToString(1, *(v161 + 32), *(v161 + 25), __s, &v212, v28, v210);
          log_OutText(*(v6 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", *(*(*v161 + 8) + 168), *(v161 + 16), v202 + v31, v202 + v36, __dst, v210);
        }

        hlp_RemoveSetPhonInRange(v11, v205, a4, v31, (v36 - v31));
        v162 = v203;
        if (!a4)
        {
          v166 = 0;
          a5 = v200;
          goto LABEL_272;
        }

        v163 = *a4;
        v164 = v203 - v189;
        v165 = *v205;
        a5 = v200;
        if (*a4)
        {
          v166 = 0;
          while (*(v165 + 32 * v166 + 12) <= v164 + *(v200 + 4))
          {
            if (v163 <= ++v166)
            {
              goto LABEL_255;
            }
          }
        }

        else
        {
LABEL_255:
          v166 = *a4;
        }

        v167 = heap_Realloc(*(v6 + 8), v165, 32 * v163 + 32);
        if (!v167)
        {
          goto LABEL_285;
        }

        v168 = v205;
        *v205 = v167;
        v169 = *a4;
        if (v169 > v166)
        {
          memmove((v167 + 32 * v166 + 32), (v167 + 32 * v166), 32 * (v169 - v166));
          v168 = v205;
          LOWORD(v169) = *a4;
          v167 = *v205;
        }

        *a4 = v169 + 1;
        v170 = (v167 + 32 * v166);
        *v170 = 0u;
        v170[1] = 0u;
        v171 = (*v168 + 32 * v166);
        *v171 = 40;
        if (v166)
        {
          v171[1] = *(v171 - 7);
        }

        v171[3] = v164 + *(v200 + 4);
        v171[4] = v196;
        v172 = strlen(*(*(*a1 + 1) + 168));
        v173 = strlen(a1[2]);
        *(*v205 + 32 * v166 + 24) = heap_Alloc(*(v6 + 8), (v172 + v173 + 3));
        v174 = *v205 + 32 * v166;
        v176 = *(v174 + 24);
        v175 = (v174 + 24);
        if (!v176)
        {
          goto LABEL_285;
        }

        if (vector_Add(*(**a1 + 88), v175))
        {
          strcpy(*(*v205 + 32 * v166 + 24), *(*(*a1 + 1) + 168));
          strcat(*(*v205 + 32 * v166 + 24), "::");
          strcat(*(*v205 + 32 * v166 + 24), a1[2]);
          v162 = v203;
LABEL_272:
          v178 = v162 + v196;
          v179 = strlen(*v11);
          memmove((*v11 + v31), (*v11 + v178), v179 - (v31 + v196) + 1);
          *v187 -= v196;
          if (a4)
          {
            v180 = *a4;
            if (v180 > (v166 + 1))
            {
              v181 = *(*v205 + 32 * v166 + 12);
              v182 = (*v205 + 32 * (v166 + 1) + 12);
              v183 = (v166 + 1) + 1;
              do
              {
                v184 = *v182 - v196;
                if (v196 > (*v182 - v181))
                {
                  v184 = v181;
                }

                *v182 = v184;
                v182 += 8;
                v50 = v180 == v183++;
              }

              while (!v50);
            }
          }

          for (i = *(a5 + 16); i; i = *(i + 16))
          {
            *(i + 4) -= v196;
          }

          v186 = CILE_New(*(v6 + 8), 1, v162 - v189 + *(a5 + 4), v189 - v178 + *(a5 + 8));
          if (v186)
          {
            *(v186 + 2) = *(a5 + 16);
            *(a5 + 8) = v162 - v189;
            if (v162 == v189)
            {
              *a5 = 0;
            }

            v24 = 0;
            *(a5 + 16) = v186;
            goto LABEL_15;
          }

LABEL_285:
          v24 = 2296389642;
        }

        else
        {
          v24 = 2296389642;
          heap_Free(*(v6 + 8), *(*v205 + 32 * v166 + 24));
          *(*v205 + 32 * v166 + 24) = 0;
        }

        log_OutPublic(*(v6 + 32), "DOMAIN_MNGR", 47000, 0);
        goto LABEL_15;
      }

LABEL_231:
      v30 = *v11;
      v150 = *(*v11 + v31);
      if (*(*v11 + v31))
      {
        a5 = v200;
        while (!memchr(" \t\r\n", v150, 5uLL))
        {
          v31 = (v31 + 1);
          v150 = v30[v31];
          if (!v30[v31])
          {
            goto LABEL_242;
          }
        }

        v151 = v31;
        while (memchr(" \t\r\n", v150, 5uLL))
        {
          v151 = (v151 + 1);
          v150 = v30[v151];
          v31 = v151;
          if (!v30[v151])
          {
            goto LABEL_242;
          }
        }

        v31 = v151;
      }

      else
      {
        a5 = v200;
      }

LABEL_242:
      v203 = v31;
      v25 = v204;
      if ((*(a5 + 8) + v194) < (v31 + v204))
      {
        goto LABEL_14;
      }
    }

    v76 = 0;
    v193 = 1;
    if (!a4)
    {
LABEL_116:
      v85 = *v11;
      goto LABEL_130;
    }

LABEL_107:
    v82 = *a4;
    if (*a4)
    {
      v83 = 0;
      v84 = *v74;
      while (*v84 != 40 || v84[3] < v202 + v36)
      {
        ++v83;
        v84 += 8;
        if (v82 == v83)
        {
          v85 = *v11;
          goto LABEL_120;
        }
      }

      LODWORD(v83) = v83;
    }

    else
    {
      LODWORD(v83) = 0;
    }

    v85 = *v11;
    if (v83 == v82)
    {
LABEL_120:
      v86 = strlen(v85);
      v87 = v36;
      if (v86 > v36)
      {
        v88 = v36;
        do
        {
          v89 = v85[v87];
          if (!memchr(" \t\r\n", v89, 5uLL))
          {
            v90 = strlen(*(*(*a1 + 1) + 192));
            if (!v90)
            {
              break;
            }

            v91 = 0;
            v92 = 0;
            while (*(*(*(*a1 + 1) + 192) + v91) != v89)
            {
              v91 = ++v92;
              if (v90 <= v92)
              {
                goto LABEL_129;
              }
            }
          }

          v87 = ++v88;
        }

        while (v86 > v88);
      }

LABEL_129:
      v93 = v86 != v87;
      v11 = v195;
      v75 = a1;
    }

    else
    {
LABEL_130:
      v93 = 1;
    }

    v94 = *(*v75 + 1);
    v95 = *(v94 + 192);
    __sa = *(v94 + 184);
    v96 = v31;
    do
    {
      if (!v96)
      {
        goto LABEL_140;
      }

      v97 = v96 - 1;
      v98 = memchr(" \t\r\n", v85[v96 - 1], 5uLL);
      v96 = v97;
    }

    while (v98);
    if ((v97 & 0x8000) != 0 || (v99 = v85[v97 & 0xFFFF7FFF], (v100 = strlen(v95)) == 0))
    {
LABEL_140:
      v199 = 0;
      v103 = v198;
      goto LABEL_141;
    }

    v101 = 0;
    v102 = 0;
    v103 = v198;
    while (v95[v101] != v99)
    {
      v101 = ++v102;
      if (v100 <= v102)
      {
        v199 = 0;
        goto LABEL_141;
      }
    }

    v199 = v99;
LABEL_141:
    v104 = v103 + v31;
    if (v104 << 16 >= (strlen(v85) << 16))
    {
      goto LABEL_152;
    }

    v28 = v85[v104];
    if (v28)
    {
      v105 = &v85[v104 + 1];
      do
      {
        if (!memchr(" \t\r\n", v28, 5uLL))
        {
          break;
        }

        v106 = *v105++;
        v28 = v106;
      }

      while (v106);
    }

    v107 = strlen(v95);
    if (v107)
    {
      v108 = 0;
      v109 = 0;
      a4 = v201;
      while (v95[v108] != v28)
      {
        v108 = ++v109;
        if (v107 <= v109)
        {
          v28 = 0;
          break;
        }
      }

      v110 = a1;
    }

    else
    {
LABEL_152:
      v28 = 0;
      a4 = v201;
      v110 = a1;
    }

    v6 = v197;
    if (v31)
    {
      if (!v199)
      {
        v214 = 0x600000004;
        v111 = 2;
        goto LABEL_163;
      }

      if (strchr(__sa, v199))
      {
        v214 = 0x300000002;
        v111 = 3;
        v112 = v215;
      }

      else
      {
        LODWORD(v214) = 4;
        v111 = 2;
        v112 = &v214 + 1;
      }

      v110 = a1;
      *v112 = 6;
    }

    else
    {
      v214 = 0x300000001;
      v111 = 2;
      if (!v199)
      {
LABEL_163:
        *(&v215[-1] + v111) = 0;
        if (v93)
        {
          if (!v28)
          {
            v212 = 0x600000004;
            v113 = 2;
            goto LABEL_173;
          }

          if (strchr(__sa, v28))
          {
            v212 = 0x300000002;
            v113 = 3;
            v114 = &v213;
          }

          else
          {
            LODWORD(v212) = 4;
            v113 = 2;
            v114 = (&v212 + 4);
          }

          v110 = a1;
          *v114 = 6;
        }

        else
        {
          v212 = 0x300000001;
          v113 = 2;
          if (!v28)
          {
LABEL_173:
            *(&v212 + v113) = 0;
            if (v193)
            {
              v115 = 1;
            }

            else
            {
              v116 = 0;
              while (1)
              {
                v117 = *(&v215[-1] + v116);
                if (v117 == v76 && v76 == 5)
                {
                  break;
                }

                v119 = v117 == v76 || v116++ >= v111;
                if (v119)
                {
                  v120 = v117 == v76;
                  goto LABEL_187;
                }
              }

              v120 = *(v110 + 24) == v199;
LABEL_187:
              v115 = v120;
            }

            v192 = v111 + 1;
            if (log_HasTraceTuningDataSubscriber(*(v197 + 32)))
            {
              __dst[0] = 0;
              hlp_ContextToString(v115, *(a1 + 7), *(a1 + 24), v192, &v214, v199, __dst);
              log_OutTraceTuningData(*(v197 + 32), 221, "%s%s %s%s", v121, v122, v123, v124, v125, "RES");
            }

            __s = v113 + 1;
            if (!v115)
            {
              goto LABEL_231;
            }

            v126 = *(a1 + 8);
            if (v126)
            {
              v127 = 0;
              while (1)
              {
                v128 = *(&v212 + v127);
                if (v128 == v126 && v126 == 5)
                {
                  break;
                }

                if (v128 == v126 || v127++ >= v113)
                {
                  v131 = v128 == v126;
                  goto LABEL_207;
                }
              }

              v131 = *(a1 + 25) == v28;
LABEL_207:
              v132 = v131;
            }

            else
            {
              v132 = 1;
            }

            if (log_HasTraceTuningDataSubscriber(*(v197 + 32)))
            {
              __dst[0] = 0;
              hlp_ContextToString(v132, *(a1 + 8), *(a1 + 25), __s, &v212, v28, __dst);
              log_OutTraceTuningData(*(v197 + 32), 222, "%s%s %s%s", v133, v134, v135, v136, v137, "RES");
            }

            v74 = v205;
            v75 = a1;
            if (!v132)
            {
              goto LABEL_231;
            }

            goto LABEL_213;
          }
        }

        *(&v212 + v113++) = 5;
        goto LABEL_173;
      }
    }

    *(&v215[-1] + v111++) = 5;
    goto LABEL_163;
  }

LABEL_14:
  v24 = 0;
LABEL_15:
  if (log_HasTraceTuningDataSubscriber(*(v6 + 32)))
  {
    do
    {
      if (!a5)
      {
        log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *v11, 0);
        if (!a4)
        {
          goto LABEL_268;
        }

        goto LABEL_266;
      }

      v26 = a5;
      a5 = *(a5 + 16);
    }

    while (a5);
    if (!a4)
    {
      v157 = *(v6 + 32);
      v158 = *v11;
      v159 = "text/plain;charset=utf-8";
      v160 = 0;
      goto LABEL_267;
    }

    if (*a4)
    {
      v27 = (*(v26 + 8) + *(v26 + 4) - *(*v205 + 12));
    }

    else
    {
      v27 = 0;
    }

    log_OutTraceTuningDataBinary(*(v6 + 32), 219, "", "text/plain;charset=utf-8", *v11, v27);
LABEL_266:
    v157 = *(v6 + 32);
    v158 = *v205;
    v160 = 32 * *a4;
    v159 = "application/x-realspeak-markers-pp;version=4.0";
LABEL_267:
    log_OutTraceTuningDataBinary(v157, 219, "", v159, v158, v160);
LABEL_268:
    log_OutTraceTuningData(*(v6 + 32), 217, "%s%s %s%s %s%u", v152, v153, v154, v155, v156, "END");
  }

  return v24;
}

uint64_t hlp_GetRangeForSETPHON(const char *a1, _DWORD *a2, unsigned int a3, unsigned int a4, _WORD *a5, _WORD *a6, _WORD *a7, unsigned int *a8, unsigned int *a9)
{
  if (a4 >= a3)
  {
    return 0;
  }

  if (*a2 != 0x4000)
  {
    return 0;
  }

  v10 = a4;
  v11 = &a2[8 * a4];
  if (*v11 != 34)
  {
    return 0;
  }

  v13 = a2[3];
  v14 = *(v11 + 3);
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v15 = v11[3] - v13;
  *a8 = v15;
  *a9 = v15;
  if (!v14)
  {
    return 1;
  }

  v16 = 1;
  if (*v14)
  {
    v38 = v13;
    *a5 = 1;
    if (strlen(v14) - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      LOWORD(v16) = 1;
      v19 = 1;
      v20 = 1;
      do
      {
        v21 = v14[v19];
        if (v21 == 95 || v21 == 35)
        {
          LOWORD(v16) = v16 + 1;
          *a5 = v16;
        }

        v19 = ++v20;
      }

      while (strlen(v14) - 1 > v20);
    }

    LOWORD(v22) = v10 + 1;
    if (a3 <= (v10 + 1))
    {
      v28 = 0;
      v24 = a7;
      v25 = a9;
    }

    else
    {
      v22 = (v10 + 1);
      v23 = &a2[8 * v22];
      v24 = a7;
      v25 = a9;
      while (1)
      {
        if (*v23 == 34 || *v23 == 21)
        {
          v27 = v23[3];
          if (v11[3] != v27)
          {
            break;
          }
        }

        LOWORD(v22) = v22 + 1;
        v23 += 8;
        if (a3 == v22)
        {
          goto LABEL_25;
        }
      }

      v28 = v27 - v38;
    }

    if (a3 == v22)
    {
LABEL_25:
      v28 = strlen(a1);
    }

    v29 = v28 - 1;
    *v25 = v28 - 1;
    v30 = *a8;
    if (v28 - 1 > *a8)
    {
      v31 = a6;
      while (1)
      {
        if (memchr(" \t\r\n", a1[v29], 5uLL))
        {
          v32 = -1;
        }

        else
        {
          if (v29 < 3)
          {
            goto LABEL_37;
          }

          v33 = &a1[v29 - 1];
          if (*v33 != 194 || *(v33 + 1) != 167)
          {
            goto LABEL_37;
          }

          v32 = -2;
        }

        v29 += v32;
        *v25 = v29;
        v30 = *a8;
        if (v29 <= *a8)
        {
          goto LABEL_37;
        }
      }
    }

    v31 = a6;
LABEL_37:
    if (v29 > v30)
    {
      while (!memchr(" \t\r\n", a1[v29], 5uLL))
      {
        *v25 = --v29;
        v30 = *a8;
        if (v29 <= *a8)
        {
          goto LABEL_42;
        }
      }

      *v25 = v29 + 1;
      v30 = *a8;
    }

LABEL_42:
    if (v30 < v28)
    {
      v34 = &a1[v30 + 1];
      v35 = v28 - v30;
      do
      {
        if (*(v34 - 1) == 194 && *v34 == 167)
        {
          ++*v24;
        }

        ++v34;
        --v35;
      }

      while (v35);
      LOWORD(v16) = *a5;
    }

    v36 = *v24;
    if (v36 > v16)
    {
      return 0;
    }

    *v31 = v16 - v36;
    return 1;
  }

  return v16;
}

size_t hlp_ContextToString(int a1, int a2, char a3, unsigned int a4, uint64_t a5, char a6, char *__dst)
{
  if (a2 == 5)
  {
    *__dst = 91;
    __dst[1] = a3;
    *(__dst + 1) = 93;
  }

  else
  {
    strcpy(__dst, AP_BOUNDARYCND_STR_0[a2]);
  }

  if (a1 == 1)
  {
    v12 = " matches (";
  }

  else
  {
    v12 = " does not match (";
  }

  strcat(__dst, v12);
  if (a4)
  {
    v13 = 0;
    v14 = 4 * a4;
    do
    {
      if (v13)
      {
        *&__dst[strlen(__dst)] = 32;
      }

      v15 = *(a5 + v13);
      if (v15 == 5)
      {
        v16 = strlen(__dst);
        __dst[v16] = 91;
        __dst[v16 + 1] = a6;
        __dst[v16 + 2] = 93;
        __dst[v16 + 3] = 0;
      }

      else
      {
        strcat(__dst, AP_BOUNDARYCND_STR_0[v15]);
      }

      v13 += 4;
    }

    while (v14 != v13);
  }

  result = strlen(__dst);
  *&__dst[result] = 41;
  return result;
}

uint64_t activeprompt_Consult(uint64_t **a1, uint64_t a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, unsigned int *a6, uint64_t a7, uint64_t a8, __int16 *a9, int a10)
{
  v304 = *MEMORY[0x1E69E9840];
  v16 = **a1;
  v17 = *(v16 + 16);
  v293 = 0;
  v284 = *(v16 + 56);
  v291 = 0;
  v290 = 0;
  v289 = 0;
  v288 = 0;
  v262 = strlen(*a3);
  v18 = *(*a4 + 12);
  v276 = a6;
  v19 = a6[1] - v18;
  v287 = a1;
  v20 = a1[6];
  v21 = strstr(v20, "%Ä");
  v264 = v21;
  if (v21)
  {
    v282 = v21 - v20;
  }

  else
  {
    v282 = strlen(v20);
  }

  v27 = v19;
  v267 = a7;
  v272 = v19;
  if (log_HasTraceTuningDataSubscriber(*(v17 + 32)))
  {
    log_OutTraceTuningData(*(v17 + 32), 277, "%s%s %s%s %s%d %s%d", v22, v23, v24, v25, v26, "BEG");
    v28 = strlen(*a3);
    log_OutTraceTuningDataBinary(*(v17 + 32), 278, "", "text/plain;charset=depes", *a3, v28);
    v27 = v19;
    log_OutTraceTuningDataBinary(*(v17 + 32), 278, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
  }

  v285 = v18;
  v286 = a4;
  v29 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  __s = 0;
  v292 = 0;
  v30 = v282;
  v31 = v287;
  if (v276[2] + v27 < (v19 + v282))
  {
    goto LABEL_376;
  }

  v29 = 0;
  v268 = 0;
  v258 = 0;
  v259 = 0;
  v260 = 0;
  v269 = 0;
  v271 = 0;
  v265 = 0;
  v270 = 0;
  v32 = v262;
  v33 = *a3;
  v281 = a5;
  v263 = v17;
  v283 = a8;
  while (2)
  {
    if (!v33[v19])
    {
      goto LABEL_376;
    }

    v278 = v27;
    v34 = v19;
    if (v32 <= v19)
    {
      v47 = 0;
      v35 = 0;
      v41 = 1;
      v38 = v19;
      goto LABEL_43;
    }

    v35 = 0;
    v36 = 0;
    v37 = v33 - 1;
    v38 = v19;
    while (1)
    {
      if (v35)
      {
        v39 = v34 + 1;
        if (v39 < v32 && v33[v38] == 32)
        {
          v40 = &v33[v39];
          if (*v40 == 194 && *(v40 + 1) == 167)
          {
            v38 += 2;
            --v35;
            v41 = 1;
            goto LABEL_35;
          }
        }
      }

      v42 = *a5;
      if (!v38 || (v43 = v37[v38], !v37[v38]) || v43 == 95 || v43 == 32)
      {
        if (*a5)
        {
          v44 = 0;
          v45 = *v286;
          while (*v45 != 34 || v45[3] != v34 + v285)
          {
            ++v44;
            v45 += 8;
            if (v42 == v44)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          LOWORD(v44) = 0;
        }

        if (v42 > v44)
        {
          break;
        }
      }

LABEL_33:
      if (v36 >= v30)
      {
        v41 = 1;
        goto LABEL_42;
      }

      v41 = *(v287[6] + v36++) == v33[v38];
LABEL_35:
      v34 = ++v38;
      v46 = v41 && v32 > v38;
      if (!v46)
      {
        goto LABEL_42;
      }
    }

    if (hlp_GetRangeForSETPHON(v33, *v286, v42, v44, &v290 + 1, &v290, &v291, &v289, &v288))
    {
      if (v290)
      {
        v35 = v291;
      }

      v30 = v282;
      v32 = v262;
      goto LABEL_33;
    }

    v41 = 0;
    v32 = v262;
LABEL_42:
    v47 = v36;
    v31 = v287;
LABEL_43:
    v48 = 0;
    v273 = v38 - v19;
    v49 = v282 > v47 && v32 == v34;
    if (v49 || !v41)
    {
      v266 = v38 - v19;
      goto LABEL_114;
    }

    v50 = v38 - v19;
    v51 = v38;
    if (v288 < v34)
    {
      v50 = v38 - v19;
      v51 = v38;
      if (v35)
      {
        v52 = v38;
        if (v32 <= v38)
        {
          v54 = v38;
        }

        else
        {
          while (1)
          {
            v53 = &v33[v52];
            if (*v53 == 194 && *(v53 + 1) == 167)
            {
              break;
            }

            if (v32 <= ++v52)
            {
              v54 = v52;
              v52 = v52;
              goto LABEL_59;
            }
          }

          v54 = v52;
        }

LABEL_59:
        if (v32 == v52)
        {
          goto LABEL_376;
        }

        v51 = 3 * v35 + v54 - 1;
        if ((3 * v35 + v54 - 1) > v262)
        {
          goto LABEL_376;
        }

        v50 = v51 - v19;
      }
    }

    v253 = v51;
    v266 = v50;
    v55 = *a5;
    if (*a5)
    {
      v56 = 0;
      v57 = v278 + v50;
      v58 = *v286;
      v59 = *v286;
      while (1)
      {
        v60 = *v59;
        v59 += 8;
        if (v60 == 34 && (!hlp_GetRangeForSETPHON(v33, v58, v55, v56, &v290 + 1, &v290, &v291, &v289, &v288) || v290 && (v289 < v278 && v288 >= v278 || v289 < v57 && v57 <= v288)))
        {
          break;
        }

        if (v55 == ++v56)
        {
          goto LABEL_72;
        }
      }

      v48 = 0;
      v260 = v38 - v19;
      a5 = v281;
LABEL_113:
      v31 = v287;
LABEL_114:
      v61 = v283;
      goto LABEL_145;
    }

LABEL_72:
    v31 = v287;
    v61 = v283;
    if (!v264)
    {
LABEL_118:
      v80 = strlen(v33);
      while (v80 > v38)
      {
        v81 = v33[v38];
        v48 = 1;
        if (!v33[v38] || v81 == 32 || v81 == 95)
        {
          goto LABEL_126;
        }

        LOWORD(v38) = v38 + 1;
        if (!strchr(*((*v31)[1] + 192), v81))
        {
          v48 = 0;
          goto LABEL_126;
        }
      }

      v48 = 1;
LABEL_126:
      if (a10)
      {
        a5 = v281;
        if (!v19)
        {
          if (strlen(v33) <= v253)
          {
            v268 = 0;
          }

          else
          {
            v268 = 0;
            if (v33[v253] == 95)
            {
              v48 = 0;
            }
          }

          v260 = v273;
          v259 = v253;
          goto LABEL_144;
        }

        if (strlen(v33) == v253 && v33[v19 - 1] == 95)
        {
          v48 = 0;
          v260 = v273;
          v259 = v253;
          v268 = v19;
          goto LABEL_145;
        }

        if (strlen(v33) <= v253)
        {
          v260 = v273;
          v82 = v253;
          goto LABEL_141;
        }

        if (v33[v19 - 1] == 95 || v33[v253] == 95)
        {
          v48 = 0;
        }
      }

      v260 = v273;
      v82 = v253;
LABEL_141:
      v259 = v82;
      v268 = v19;
LABEL_144:
      a5 = v281;
      goto LABEL_145;
    }

    v62 = v267;
    v63 = (*(v284 + 104))(v267, v283, 1, 0, &v292);
    if ((v63 & 0x80000000) != 0)
    {
      v29 = v63;
      goto LABEL_381;
    }

    v29 = (*(v284 + 104))(v267, v283, 2, v292, &v297);
    if ((v29 & 0x80000000) != 0)
    {
LABEL_381:
      a5 = v281;
      goto LABEL_376;
    }

    v64 = strstr(v287[6], "§");
    a5 = v281;
    if (!v64)
    {
      goto LABEL_117;
    }

    v65 = v64;
    v66 = v264 + 3;
    do
    {
      while (2)
      {
        if (v297)
        {
          v67 = (*(v284 + 168))(v62, v61, v297, 1, 1, &v293 + 2, &v295);
          if ((v67 & 0x80000000) != 0 || (v67 = (*(v284 + 168))(v62, v61, v297, 0, 1, &v296, &v295), (v67 & 0x80000000) != 0))
          {
LABEL_374:
            v29 = v67;
LABEL_375:
            v17 = v263;
            goto LABEL_376;
          }

          if (v296 != 5 || HIWORD(v293) != (v19 + v65 - *(v31 + 24)))
          {
            v29 = (*(v284 + 120))(v62, v61, v297, &v297);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_375;
            }

            continue;
          }

          v29 = (*(v284 + 176))(v62, v61, v297, 3, &__s, &v295);
          v17 = v263;
          if ((v29 & 0x80000000) != 0)
          {
            goto LABEL_376;
          }

          v79 = strlen(__s);
          v261 = !strncmp(v66, __s, v79) && (!v66[v79] || !strcmp(&v66[v79], "%Ä"));
          v62 = v267;
        }

        else
        {
          v261 = 1;
          v17 = v263;
        }

        break;
      }

      LOBYTE(v68) = *v66;
      v257 = v297;
      if (*v66)
      {
        v69 = 1;
        do
        {
          v70 = strcmp(v66, "%Ä");
          v71 = v70 == 0;
          if (!v70)
          {
            break;
          }

          v66 += utf8_determineUTF8CharLength(v68);
          v68 = *v66;
          if (v68 == 95 || v68 == 35)
          {
            v72 = *(v66 - 1) - 32;
            v46 = v72 > 0x3F;
            v73 = (1 << v72) & 0x8000000000000009;
            if (v46 || v73 == 0)
            {
              ++v69;
            }
          }
        }

        while (*v66);
        v75 = v69;
        v62 = v267;
      }

      else
      {
        v71 = 0;
        v75 = 1;
      }

      v76 = strstr(&v65[3 * v75 - 1], "§");
      v65 = v76;
      if (!v71 && v76)
      {
        v48 = 0;
        v260 = v38 - v19;
        goto LABEL_113;
      }

      v77 = utf8_determineUTF8CharLength(v68);
      v78 = v261;
      if (!v257)
      {
        v78 = 0;
      }

      v31 = v287;
      v61 = v283;
      if (!v65)
      {
        break;
      }

      v66 += v77;
    }

    while (v78);
    if (v78)
    {
LABEL_117:
      v33 = *a3;
      goto LABEL_118;
    }

    v48 = 0;
    v260 = v38 - v19;
LABEL_145:
    if (log_HasTraceTuningDataSubscriber(*(v17 + 32)))
    {
      v88 = *(v17 + 32);
      if (v48)
      {
        log_OutTraceTuningData(v88, 280, "%s%d %s%d %s%s", v83, v84, v85, v86, v87, "IDXBEG");
        v94 = *(v31 + 7);
        if (!v94)
        {
          if (!*(v31 + 8))
          {
            log_OutTraceTuningData(*(v17 + 32), 281, "%s%s %s%s", v89, v90, v91, v92, v93, "RES");
            log_OutTraceTuningData(*(v17 + 32), 282, "%s%s %s%s", v95, v96, v97, v98, v99, "RES");
            goto LABEL_151;
          }

LABEL_153:
          v94 = 0;
        }

        goto LABEL_154;
      }

      log_OutTraceTuningData(v88, 280, "%s%d %s%d %s%s", v83, v84, v85, v86, v87, "IDXBEG");
LABEL_360:
      v30 = v282;
      v32 = v262;
      v33 = *a3;
      v205 = (*a3)[v19];
      if ((*a3)[v19])
      {
        while (v205 != 95 && v205 != 32)
        {
          v19 = (v19 + 1);
          v205 = v33[v19];
          v206 = v19;
          if (!v33[v19])
          {
            goto LABEL_371;
          }
        }

        v206 = v19;
        do
        {
          if (v205 != 95 && v205 != 32)
          {
            break;
          }

          v206 = (v206 + 1);
          v205 = v33[v206];
        }

        while (v33[v206]);
      }

      else
      {
        v206 = v19;
      }

LABEL_371:
      v27 = v206;
      v19 = v206;
      if (v276[2] + v272 < (v206 + v282))
      {
        goto LABEL_376;
      }

      continue;
    }

    break;
  }

  if (!v48)
  {
    goto LABEL_360;
  }

LABEL_151:
  v94 = *(v31 + 7);
  if (!v94)
  {
    if (!*(v31 + 8))
    {
      v129 = v267;
      goto LABEL_320;
    }

    goto LABEL_153;
  }

LABEL_154:
  v100 = *a3;
  v101 = strlen(*a3);
  v102 = v101;
  v103 = v259;
  v104 = v259;
  for (i = v268; v101 > v103; v104 = ++v103)
  {
    v106 = v100[v104];
    if (!v100[v104])
    {
      break;
    }

    if (v106 == 95)
    {
      break;
    }

    if (v106 == 32)
    {
      break;
    }
  }

  v107 = (*v287)[1];
  v108 = *(v107 + 192);
  v274 = *(v107 + 184);
  if (!v268)
  {
    goto LABEL_165;
  }

  v109 = v268 - 1;
  while (1)
  {
    v110 = v100[v109];
    if (v100[v109])
    {
      if (v110 != 95 && v110 != 32)
      {
        break;
      }
    }

    if (--v109 == -1)
    {
      goto LABEL_165;
    }
  }

  if ((v109 & 0x8000) != 0)
  {
LABEL_165:
    v270 = 0;
  }

  else
  {
    v143 = v100[v109 & 0xFFFF7FFF];
    if (strchr(v108, v143))
    {
      v144 = v143;
    }

    else
    {
      v144 = 0;
    }

    v270 = v144;
    i = v268;
  }

  v279 = i;
  v111 = i + v260;
  if ((v111 << 16) >= (strlen(v100) << 16))
  {
    v265 = 0;
  }

  else
  {
    v112 = &v100[v111];
    do
    {
      do
      {
        v114 = *v112++;
        v113 = v114;
      }

      while (!v114);
    }

    while (v113 == 32 || v113 == 95);
    v115 = v113;
    if (strchr(v108, v113))
    {
      v116 = v115;
    }

    else
    {
      v116 = 0;
    }

    v265 = v116;
  }

  a5 = v281;
  if (v268)
  {
    if (v270 && strchr(v274, v270))
    {
      v302 = 0x300000002;
      v303 = 6;
      v117 = 3;
      goto LABEL_183;
    }

    v302 = 0x700000004;
    v303 = 6;
    v117 = 3;
  }

  else
  {
    v302 = 0x300000001;
    v117 = 2;
  }

  if (v270)
  {
LABEL_183:
    *(&v302 + v117++) = 5;
  }

  *(&v302 + v117) = 0;
  if (v102 == v104)
  {
    v300 = 0x300000001;
    v118 = 2;
    v119 = v265;
    goto LABEL_191;
  }

  v119 = v265;
  if (v265 && strchr(v274, v265))
  {
    v300 = 0x300000002;
    v301 = 6;
    v118 = 3;
    goto LABEL_192;
  }

  v300 = 0x700000004;
  v301 = 6;
  v118 = 3;
LABEL_191:
  if (v119)
  {
LABEL_192:
    *(&v300 + v118++) = 5;
  }

  v271 = v117 + 1;
  *(&v300 + v118) = 0;
  v269 = v118 + 1;
  if (*v281)
  {
    v120 = 0;
    v121 = 0;
    v122 = (v268 + v266);
    v123 = *v286;
    do
    {
      if (*(v123 + v120) == 50)
      {
        v124 = *(v123 + v120 + 24);
        if (v124)
        {
          if (*v124)
          {
            strncpy(*(v123 + v120 + 24), *(v123 + v120 + 24), 8uLL);
            v123 = *v286;
            v125 = *(*v286 + v120 + 12) - v285;
            if (v125 == v279)
            {
              if (!strcmp(v124, "medial"))
              {
                v302 = 0x700000004;
                v126 = 2;
              }

              else
              {
                v126 = 0;
              }

              if (!strcmp(v124, "phrase-break"))
              {
                *(&v302 + 4 * v126) = 0x300000002;
                v126 += 2;
              }

              if (!strcmp(v124, "sentence-break"))
              {
                *(&v302 + 4 * v126) = 0x300000001;
                v126 += 2;
              }

              *(&v302 + v126) = 0;
              v271 = v126 + 1;
              a5 = v281;
            }

            if (v125 == v122 || v125 - 1 == v122)
            {
              if (!strcmp(v124, "medial"))
              {
                v300 = 0x700000004;
                v128 = 2;
              }

              else
              {
                v128 = 0;
              }

              if (!strcmp(v124, "phrase-break"))
              {
                *(&v300 + 4 * v128) = 0x300000002;
                v128 += 2;
              }

              if (!strcmp(v124, "sentence-break"))
              {
                *(&v300 + 4 * v128) = 0x300000001;
                v128 += 2;
              }

              *(&v300 + v128) = 0;
              v269 = v128 + 1;
              a5 = v281;
            }
          }
        }
      }

      ++v121;
      v120 += 32;
    }

    while (v121 < *a5);
    v31 = v287;
    v94 = *(v287 + 7);
  }

  else
  {
    v31 = v287;
  }

  v129 = v267;
  v130 = v283;
  if (!v94)
  {
LABEL_266:
    LODWORD(v134) = 1;
    goto LABEL_268;
  }

  if (!v271)
  {
    goto LABEL_267;
  }

  v131 = 0;
  while (2)
  {
    v132 = *(&v302 + v131);
    if (v132 != *(v31 + 7))
    {
      goto LABEL_240;
    }

    if (v132 == 7)
    {
      if (*(*((*v31)[1] + 232) + 8 * *(v31 + 24)))
      {
        v299[0] = 0;
        v67 = (*(v284 + 104))(v129, v130, 1, 0, &v292);
        if ((v67 & 0x80000000) != 0)
        {
          goto LABEL_374;
        }

        for (j = (*(v284 + 104))(v129, v130, 2, v292, &v297); ; j = (*(v284 + 120))(v129, v130, v297, &v297))
        {
          v29 = j;
          if ((j & 0x80000000) != 0)
          {
            goto LABEL_375;
          }

          if (!v297)
          {
            goto LABEL_240;
          }

          v67 = (*(v284 + 168))(v129, v130, v297, 1, 1, &v293 + 2, &v295);
          if ((v67 & 0x80000000) != 0)
          {
            goto LABEL_374;
          }

          v67 = (*(v284 + 168))(v129, v130, v297, 2, 1, &v293, &v295);
          if ((v67 & 0x80000000) != 0)
          {
            goto LABEL_374;
          }

          if (v293 + 1 == v279)
          {
            v67 = (*(v284 + 168))(v129, v130, v297, 0, 1, &v296, &v295);
            if ((v67 & 0x80000000) != 0)
            {
              goto LABEL_374;
            }

            if (v296 <= 0xE && ((1 << v296) & 0x7E10) != 0)
            {
              break;
            }
          }
        }

        v29 = (*(v284 + 176))(v129, v130, v297, 3, v299, &v295);
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_375;
        }

        v135 = strlen(*(*((*v31)[1] + 232) + 8 * *(v31 + 24)));
        v136 = heap_Calloc(*(v263 + 8), (v135 + 1), 1);
        v137 = strcpy(v136, *(*((*v31)[1] + 232) + 8 * *(v31 + 24)));
        v138 = strchr(v137, 32);
        v139 = v136;
        if (v136 | v138)
        {
          v134 = v138;
          v254 = v139;
          v140 = v139;
          if (v138)
          {
LABEL_248:
            *v134 = 0;
          }

          while (1)
          {
            v141 = strlen(v299[0]);
            v142 = v141 - strlen(v140);
            if (v142 >= 0 && !strcmp(v140, &v299[0][v142]))
            {
              break;
            }

            v130 = v283;
            if (!v134)
            {
              v129 = v267;
              goto LABEL_255;
            }

            v140 = v134 + 1;
            v134 = strchr(v134 + 1, 32);
            if (v134)
            {
              goto LABEL_248;
            }
          }

          LODWORD(v134) = 1;
          v129 = v267;
          v130 = v283;
LABEL_255:
          v139 = v254;
        }

        else
        {
          LODWORD(v134) = 0;
        }

        heap_Free(*(v263 + 8), v139);
        if (v134)
        {
          goto LABEL_268;
        }

        goto LABEL_241;
      }

LABEL_240:
      LODWORD(v134) = 0;
LABEL_241:
      if (++v131 >= v271)
      {
        goto LABEL_268;
      }

      continue;
    }

    break;
  }

  if (v132 != 5 || *(v31 + 24) == v270)
  {
    goto LABEL_266;
  }

LABEL_267:
  LODWORD(v134) = 0;
LABEL_268:
  v17 = v263;
  if (log_HasTraceTuningDataSubscriber(*(v263 + 32)))
  {
    LOBYTE(v299[0]) = 0;
    hlp_ContextToString(v134, *(v31 + 7), *(v31 + 24), v271, &v302, v270, v299);
    log_OutTraceTuningData(*(v263 + 32), 281, "%s%s %s%s", v145, v146, v147, v148, v149, "RES");
  }

  if (!v134)
  {
    goto LABEL_360;
  }

  if (!*(v31 + 8))
  {
LABEL_315:
    LODWORD(v156) = 1;
    goto LABEL_317;
  }

  v150 = v284;
  if (!v269)
  {
LABEL_316:
    LODWORD(v156) = 0;
    goto LABEL_317;
  }

  v151 = 0;
  v152 = v269;
  do
  {
    v153 = *(&v300 + v151);
    if (v153 != *(v31 + 8))
    {
LABEL_289:
      LODWORD(v156) = 0;
      goto LABEL_310;
    }

    if (v153 != 7)
    {
      if (v153 != 5 || *(v31 + 25) == v265)
      {
        goto LABEL_315;
      }

      goto LABEL_316;
    }

    if (!*(*((*v31)[1] + 232) + 8 * *(v31 + 25)))
    {
      goto LABEL_289;
    }

    v299[0] = 0;
    v154 = (*(v150 + 104))(v129, v283, 1, 0, &v292);
    if ((v154 & 0x80000000) != 0)
    {
LABEL_379:
      v29 = v154;
      goto LABEL_376;
    }

    v29 = (*(v150 + 104))(v129, v283, 2, v292, &v297);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_376;
    }

    v155 = v297;
    v150 = v284;
    if (!v297)
    {
LABEL_288:
      LODWORD(v156) = 0;
      goto LABEL_309;
    }

    while (1)
    {
      v154 = (*(v150 + 168))(v129, v283, v155, 1, 1, &v293 + 2, &v295);
      if ((v154 & 0x80000000) != 0)
      {
        goto LABEL_379;
      }

      if (HIWORD(v293) - 1 == v259)
      {
        v154 = (*(v150 + 168))(v129, v283, v297, 2, 1, &v293, &v295);
        if ((v154 & 0x80000000) != 0)
        {
          goto LABEL_379;
        }

        v154 = (*(v150 + 168))(v129, v283, v297, 0, 1, &v296, &v295);
        if ((v154 & 0x80000000) != 0)
        {
          goto LABEL_379;
        }

        v150 = v284;
        if (v296 <= 0xE && ((1 << v296) & 0x7E10) != 0)
        {
          break;
        }
      }

      v29 = (*(v150 + 120))(v129, v283, v297, &v297);
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_376;
      }

      v155 = v297;
      if (!v297)
      {
        goto LABEL_288;
      }
    }

    v29 = (*(v284 + 176))(v129, v283, v297, 3, v299, &v295);
    if ((v29 & 0x80000000) != 0)
    {
      goto LABEL_376;
    }

    v157 = strlen(*(*((*v31)[1] + 232) + 8 * *(v31 + 25)));
    v158 = heap_Calloc(*(v263 + 8), (v157 + 1), 1);
    v159 = strcpy(v158, *(*((*v31)[1] + 232) + 8 * *(v31 + 25)));
    v160 = strchr(v159, 32);
    v161 = v158;
    if (!(v158 | v160))
    {
      LODWORD(v156) = 0;
      v150 = v284;
      goto LABEL_308;
    }

    v156 = v160;
    v252 = v158;
    v162 = v158;
    v150 = v284;
    if (!v160)
    {
      goto LABEL_294;
    }

LABEL_293:
    *v156 = 0;
LABEL_294:
    while (1)
    {
      v163 = v299[0];
      v164 = strstr(v299[0], v162);
      if (v164)
      {
        break;
      }

LABEL_303:
      v129 = v267;
      if (!v156)
      {
        goto LABEL_307;
      }

      v162 = v156 + 1;
      v156 = strchr(v156 + 1, 32);
      if (v156)
      {
        goto LABEL_293;
      }
    }

    v165 = v164;
    v166 = strlen(v163);
    v167 = v166 - strlen(v165);
    if (v167 >= 1)
    {
      v150 = v284;
      while (1)
      {
        v168 = *v163++;
        v169 = (1 << v168) & 0x4008400000000;
        if (v168 > 0x32 || v169 == 0)
        {
          goto LABEL_303;
        }

        if (!--v167)
        {
          LODWORD(v156) = 1;
          v129 = v267;
          goto LABEL_307;
        }
      }
    }

    LODWORD(v156) = 1;
    v129 = v267;
    v150 = v284;
LABEL_307:
    v161 = v252;
LABEL_308:
    heap_Free(*(v263 + 8), v161);
LABEL_309:
    v152 = v269;
    if (v156)
    {
      break;
    }

LABEL_310:
    ++v151;
  }

  while (v151 < v152);
LABEL_317:
  if (log_HasTraceTuningDataSubscriber(*(v263 + 32)))
  {
    LOBYTE(v299[0]) = 0;
    hlp_ContextToString(v156, *(v31 + 8), *(v31 + 25), v269, &v300, v265, v299);
    log_OutTraceTuningData(*(v263 + 32), 282, "%s%s %s%s", v171, v172, v173, v174, v175, "RES");
  }

  v61 = v283;
  if (!v156)
  {
    goto LABEL_360;
  }

LABEL_320:
  v176 = domain_mngr_utils_ListContainsString(a2, "*");
  v177 = v258;
  if (!v176)
  {
    v177 = 1;
  }

  LODWORD(v178) = *a5;
  if (*(v31 + 2) != 2 && v177 != 1)
  {
    goto LABEL_384;
  }

  v179 = v285 + v259;
  if (!*a5)
  {
    if (v177 != 1)
    {
      LOWORD(v178) = 0;
LABEL_389:
      v220 = v286;
      v222 = v285;
      v223 = v271;
      goto LABEL_391;
    }

LABEL_359:
    log_OutText(*(v17 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC tn", *((*v31)[1] + 168), v31[2], v285 + v268, v179);
    log_OutTraceTuningData(*(v17 + 32), 283, "%s%s %s%s", v200, v201, v202, v203, v204, "RES");
    v258 = 1;
    goto LABEL_360;
  }

  v180 = 0;
  v181 = 0;
  v182 = 56;
  v183 = 2;
  v184 = v285 + v268;
  v258 = v177;
  while (2)
  {
    v185 = *v286 + 32 * v180;
    v186 = *v185;
    if ((*v185 - 16) >= 4)
    {
      if (v186 == 21)
      {
        if (v177 == 1)
        {
          if (v180 + 1 >= v178)
          {
            v193 = -1;
          }

          else
          {
            v255 = v184;
            v275 = v181;
            v280 = v179;
            v189 = (*v286 + v182);
            v190 = v183;
            while (1)
            {
              if (*(v189 - 6) == 21)
              {
                v191 = *(v189 - 3);
                v192 = *(v185 + 12);
                v193 = v191 - v192;
                if (v191 >= v192)
                {
                  v194 = strcmp(*v189, *(v185 + 24));
                  v177 = v258;
                  if (v194)
                  {
                    break;
                  }
                }
              }

              v49 = v178 == v190++;
              v189 += 4;
              if (v49)
              {
                v193 = -1;
                break;
              }
            }

            v179 = v280;
            a5 = v281;
            v181 = v275;
            v184 = v255;
          }

          v195 = *(v185 + 12);
          if (v195 <= v184 && (v193 == -1 || v195 + v193 >= v179))
          {
            v196 = *(v185 + 24);
            v197 = v181;
            v198 = v184;
            v199 = domain_mngr_utils_ListContainsString(a2, v196);
            v177 = v258;
            v184 = v198;
            if (v199 == 1)
            {
              v181 = 1;
            }

            else
            {
              v181 = v197;
            }
          }

          v17 = v263;
        }
      }

      else if (v186 == 24)
      {
        goto LABEL_327;
      }
    }

    else
    {
LABEL_327:
      if (*(v287 + 2) == 2)
      {
        v187 = *(v185 + 12);
        if (v187 > v184 && v187 < v179)
        {
          v31 = v287;
          log_OutText(*(v17 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s] at %u-%u deactivated because of ESC pitch, volume or rate", *((*v287)[1] + 168), v287[2], v184, v179);
          log_OutTraceTuningData(*(v17 + 32), 283, "%s%s %s%s", v207, v208, v209, v210, v211, "RES");
          goto LABEL_360;
        }
      }
    }

    ++v180;
    v178 = *a5;
    ++v183;
    v182 += 32;
    if (v180 < v178)
    {
      continue;
    }

    break;
  }

  v129 = v267;
  v61 = v283;
  if (v177 != 1)
  {
    v31 = v287;
    goto LABEL_384;
  }

  v31 = v287;
  if (!v181)
  {
    goto LABEL_359;
  }

LABEL_384:
  if (!v178)
  {
    goto LABEL_389;
  }

  v219 = 0;
  v220 = v286;
  v221 = (*v286 + 12);
  v222 = v285;
  v223 = v271;
  while (1)
  {
    v224 = *v221;
    v221 += 8;
    if (v224 - v285 >= v268)
    {
      break;
    }

    if (v178 == ++v219)
    {
      goto LABEL_391;
    }
  }

  LOWORD(v178) = v219;
LABEL_391:
  if (log_GetLogLevel(*(v17 + 32)) >= 5)
  {
    LOBYTE(v299[0]) = 0;
    __dst[0] = 0;
    hlp_ContextToString(1, *(v31 + 7), *(v31 + 24), v223, &v302, v270, v299);
    hlp_ContextToString(1, *(v31 + 8), *(v31 + 25), v269, &v300, v265, __dst);
    v225 = *a5;
    LOWORD(v226) = v178;
    if (v225 > v178)
    {
      v226 = v178;
      v227 = (*v220 + 32 * v178);
      while (v227[3] - v222 <= v268 && *v227 == 36)
      {
        v227 += 8;
        if (v225 == ++v226)
        {
          goto LABEL_399;
        }
      }
    }

    if (v225 == v226)
    {
LABEL_399:
      v228 = (*v220 + 32 * (v225 - 1));
      v229 = v228[1];
      if (*v228 != 36)
      {
        v230 = (v228[2] + v229);
        goto LABEL_409;
      }

LABEL_408:
      v230 = v229;
    }

    else
    {
      v229 = *(*v220 + 32 * v226 + 4);
      if (!*a5)
      {
        goto LABEL_408;
      }

      v231 = (*v220 + 8);
      v230 = v229;
      do
      {
        if (v231[1] - v222 >= v259)
        {
          break;
        }

        if (*(v231 - 2) != 36)
        {
          v230 = (*v231 + *(v231 - 1));
        }

        v231 += 8;
        --v225;
      }

      while (v225);
    }

LABEL_409:
    log_OutText(*(v17 + 32), "DOMAIN_MNGR", 5, 0, "    Match with [%s::%s], begPos %ld, endPos %ld, begCtxt %s, endCtxt %s", *((*v31)[1] + 168), v31[2], v229, v230, v299, __dst);
  }

  v232 = v31;
  v233 = *a9;
  v29 = activeprompt_Insert(v232, v268, v266, v222, a3, v220, a5, v178, v276, v129, v61, a9);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_376;
  }

  v234 = *a5;
  v235 = *v220;
  v236 = v222 + v268;
  if (*a5)
  {
    v237 = 0;
    v238 = (v235 + 12);
    while (1)
    {
      v239 = *v238;
      v238 += 8;
      if (v239 > v236)
      {
        break;
      }

      if (v234 == ++v237)
      {
        v240 = *a5;
        goto LABEL_418;
      }
    }

    v240 = v237;
  }

  else
  {
    v240 = 0;
  }

LABEL_418:
  v241 = *a9;
  v242 = heap_Realloc(*(v17 + 8), v235, 32 * v234 + 32);
  if (!v242)
  {
    v29 = 2296389642;
    log_OutPublic(*(v17 + 32), "DOMAIN_MNGR", 47000, 0);
    goto LABEL_381;
  }

  *v286 = v242;
  v243 = *v281;
  if (v240 < v243)
  {
    memmove((v242 + 32 * v240 + 32), (v242 + 32 * v240), 32 * (v243 - v240));
    LOWORD(v243) = *v281;
    v242 = *v286;
  }

  v244 = v241 - v233;
  *v281 = v243 + 1;
  v245 = (v242 + 32 * v240);
  *v245 = 0u;
  v245[1] = 0u;
  v246 = (*v286 + 32 * v240);
  *v246 = 40;
  a5 = v281;
  if (v240)
  {
    v246[1] = *(v246 - 7);
  }

  v246[3] = v236;
  v246[4] = (v259 - v268 + v244) & ~((v259 - v268 + v244) >> 31);
  v247 = strlen(*((*v287)[1] + 168));
  v248 = strlen(v287[2]);
  *(*v286 + 32 * v240 + 24) = heap_Alloc(*(v17 + 8), (v247 + v248 + 3));
  v249 = *v286 + 32 * v240;
  v251 = *(v249 + 24);
  v250 = (v249 + 24);
  if (v251)
  {
    if (vector_Add(*(**v287 + 88), v250))
    {
      strcpy(*(*v286 + 32 * v240 + 24), *((*v287)[1] + 168));
      strcat(*(*v286 + 32 * v240 + 24), "::");
      strcat(*(*v286 + 32 * v240 + 24), v287[2]);
      goto LABEL_376;
    }

    v29 = 2296389642;
    heap_Free(*(v17 + 8), *(*v286 + 32 * v240 + 24));
    *(*v286 + 32 * v240 + 24) = 0;
  }

  else
  {
    v29 = 2296389642;
  }

  log_OutPublic(*(v17 + 32), "DOMAIN_MNGR", 47000, 0);
LABEL_376:
  if (log_HasTraceTuningDataSubscriber(*(v17 + 32)))
  {
    v212 = strlen(*a3);
    log_OutTraceTuningDataBinary(*(v17 + 32), 279, "", "text/plain;charset=depes", *a3, v212);
    log_OutTraceTuningDataBinary(*(v17 + 32), 279, "", "application/x-realspeak-markers-pp;version=4.0", *v286, 32 * *a5);
    log_OutTraceTuningData(*(v17 + 32), 277, "%s%s", v213, v214, v215, v216, v217, "END");
  }

  return v29;
}

void *PurgeNLUStrArr(void *result, uint64_t a2, int a3, int a4, int a5)
{
  if (a2)
  {
    v5 = a3;
    v7 = a5 == a3 || a5 == 0;
    v8 = v7;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = a4;
      v11 = result;
      v12 = 0;
      v13 = 0;
      v27 = a3 + 32;
      v14 = a4 + 32;
      v15 = a5 == a4 || v8;
      v16 = v15 ^ 1;
      while (1)
      {
        if (v11)
        {
          v17 = v11[2];
          if (v17)
          {
            if (v11[1] > v13)
            {
              v18 = *(v17 + 8 * v13);
              if (v18)
              {
                v19 = *v18;
                if (v19 == v5 || v27 == v19)
                {
                  v21 = v13 + 1;
                  do
                  {
                    v22 = v11[2];
                    if (v22)
                    {
                      if (v11[1] > v21)
                      {
                        v23 = *(v22 + 8 * v21);
                        if (v23)
                        {
                          v24 = *v23;
                          v25 = v24 == v10 || v14 == v24;
                          if (v25)
                          {
                            v12 = 1;
                          }

                          if (v25 && (v16 & 1) == 0)
                          {
                            if (v8)
                            {
                              v26 = v21;
                            }

                            else
                            {
                              v26 = v13;
                            }

                            result = StrArrSave(v11, v26, 0);
                            v12 = 1;
                          }
                        }
                      }
                    }

                    ++v21;
                  }

                  while (a2 != v21);
                }
              }
            }
          }
        }

        if (++v13 == v9)
        {
          if (!v12)
          {
            break;
          }

          v12 = 0;
          v13 = 0;
          if (!v9)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

_DWORD *CILE_New(void *a1, int a2, int a3, int a4)
{
  result = heap_Calloc(a1, 1, 24);
  if (result)
  {
    *result = a2;
    result[1] = a3;
    result[2] = a4;
  }

  return result;
}

void *CILE_Free(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = v3[2];
      result = heap_Free(a2, v3);
      v3 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CI_Update(uint64_t a1, _DWORD *a2, int a3, int a4, int a5)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  return 0;
}

uint64_t domain_mngr_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2296389633;
  }

  result = 0;
  *a2 = &IDomain_Mngr;
  return result;
}

uint64_t domain_mngr_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2296389639;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t domain_mngr_ObjOpen(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v29 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(a1, a2, &v30);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2296389642;
  log_OutText(*(v31 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjOpen");
  v12 = heap_Calloc(*(v31 + 8), 1, 136);
  if (!v12)
  {
    log_OutPublic(*(v31 + 32), "DOMAIN_MNGR", 47000, 0);
    return v11;
  }

  v13 = v12;
  *a5 = v12;
  *(a5 + 8) = 285;
  *v12 = a3;
  *(v12 + 8) = a4;
  v15 = v30;
  v14 = v31;
  *(v12 + 16) = v31;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = v15;
  *(v12 + 96) = 1;
  *(v12 + 128) = 0;
  v16 = *(v14 + 8);
  v26 = xmmword_1F42D69F0;
  *&v27 = off_1F42D6A00;
  v17 = vector_ObjOpen(v16, &v26, 1, (v13 + 88));
  v18 = v31;
  if (!v17)
  {
    goto LABEL_16;
  }

  v19 = *(v31 + 8);
  v26 = xmmword_1F42D6A08;
  v27 = *&off_1F42D6A18;
  v28 = off_1F42D6A28;
  v20 = ssftmap_ObjOpen(v19, 0, &v26, (v13 + 112));
  v18 = v31;
  if ((v20 & 0x80000000) != 0)
  {
    v11 = v20;
    goto LABEL_16;
  }

  v21 = *(v31 + 8);
  v26 = xmmword_1C3810D30;
  *&v27 = 0;
  v22 = vector_ObjOpen(v21, &v26, 1, (v13 + 120));
  v18 = v31;
  if (!v22)
  {
LABEL_16:
    log_OutPublic(*(v18 + 32), "DOMAIN_MNGR", 47000, 0);
    goto LABEL_17;
  }

  Object = objc_GetObject(*(v31 + 48), "SYNTHSTREAM", &v29);
  if ((Object & 0x80000000) != 0)
  {
    v11 = Object;
  }

  else
  {
    *(v13 + 48) = *(v29 + 8);
    v11 = objc_GetObject(*(v31 + 48), "LINGDB", &v29);
    if ((v11 & 0x80000000) == 0)
    {
      *(v13 + 56) = *(v29 + 8);
      if ((objc_GetObject(*(v31 + 48), "AUDIOFETCHER", &v29) & 0x80000000) == 0)
      {
        v24 = v29;
        *(v13 + 64) = *(v29 + 8);
        *(v13 + 72) = *(v24 + 16);
      }

      log_OutText(*(v31 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjOpen");
      return v11;
    }
  }

LABEL_17:
  if (v31)
  {
    domain_mngr_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  return v11;
}

uint64_t domain_mngr_ObjClose(uint64_t a1, int a2)
{
  v9 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v9);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v9 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjClose");
    if (*(a1 + 64))
    {
      objc_ReleaseObject(*(v9 + 48), "AUDIOFETCHER");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v9 + 48), "LINGDB");
    }

    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(v9 + 48), "SYNTHSTREAM");
    }

    v5 = *(a1 + 120);
    if (v5)
    {
      vector_ObjClose(v5);
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      ssftmap_ObjClose(v6);
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      vector_ObjClose(v7);
    }

    log_OutText(*(v9 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjClose");
    heap_Free(*(v9 + 8), a1);
  }

  return inited;
}

uint64_t domain_mngr_ObjReopen(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v12 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ObjReopen");
    if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v11) & 0x80000000) == 0)
    {
      while ((ssftmap_IteratorNext(v11, &v10, &v9) & 0x80000000) == 0)
      {
        if (vector_GetElemAt(*(v9 + 16), 0, &v8))
        {
          v5 = 1;
          do
          {
            *(*v8 + 28) = 0;
          }

          while (vector_GetElemAt(*(v9 + 16), v5++, &v8));
        }
      }

      ssftmap_IteratorClose(v11);
    }

    *(a1 + 128) = 0;
    log_OutText(*(v12 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ObjReopen");
  }

  return inited;
}

uint64_t domain_mngr_ProcessStart(uint64_t a1, int a2)
{
  v6 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v6);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  refreshed = hlp_RefreshTNTypes(a1);
  if ((refreshed & 0x80000000) == 0)
  {
    *(a1 + 104) = vector_GetSize(*(a1 + 120));
  }

  return refreshed;
}

uint64_t domain_mngr_ProcessEnd(uint64_t a1, int a2)
{
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    vector_Clear(*(a1 + 88));
    Size = vector_GetSize(*(a1 + 120));
    if (Size > *(a1 + 104))
    {
      v6 = Size;
      do
      {
        vector_StackPop(*(a1 + 120));
        --v6;
      }

      while (v6 > *(a1 + 104));
    }
  }

  return inited;
}

uint64_t domain_mngr_EnableDomain(uint64_t a1, int a2, const char *a3)
{
  v11 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  ReadOnly = ssftmap_FindReadOnly(*(a1 + 112), a3, &v10);
  if ((ReadOnly & 0x80000000) != 0)
  {
LABEL_8:
    log_OutPublic(*(v11 + 32), "DOMAIN_MNGR", 47008, "%s%s%s%x", "domain", a3, "lhError", ReadOnly);
    return ReadOnly;
  }

  v7 = vector_Add(*(a1 + 120), &v10);
  v8 = *(v11 + 32);
  if (!v7)
  {
    log_OutPublic(v8, "DOMAIN_MNGR", 47000, 0);
    ReadOnly = 2296389642;
    goto LABEL_8;
  }

  log_OutText(v8, "DOMAIN_MNGR", 4, 0, "    Enable domain [%s]", a3);
  return ReadOnly;
}

uint64_t domain_mngr_DisableDomain(uint64_t a1, int a2, const char *a3)
{
  v10 = 0;
  v11 = 0;
  inited = safeh_HandleCheck(a1, a2, 285, 136);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v11);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  ReadOnly = ssftmap_FindReadOnly(*(a1 + 112), a3, &v9);
  if ((ReadOnly & 0x80000000) == 0 && *(a1 + 100))
  {
    v7 = 0;
    while (1)
    {
      vector_GetElemAt(*(a1 + 120), v7, &v10);
      if (v10)
      {
        if (v9 == *v10)
        {
          break;
        }
      }

      if (++v7 >= *(a1 + 100))
      {
        return ReadOnly;
      }
    }

    vector_Remove(*(a1 + 120), v7);
    --*(a1 + 100);
    log_OutText(*(v11 + 32), "DOMAIN_MNGR", 4, 0, "    Disable domain [%s]", a3);
  }

  return ReadOnly;
}

uint64_t domain_mngr_DisableAllDomains(uint64_t a1, int a2)
{
  v8 = 0;
  v3 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v8);
  if ((inited & 0x80000000) == 0)
  {
    Size = vector_GetSize(*(a1 + 120));
    if (Size > *(a1 + 100))
    {
      v6 = Size;
      do
      {
        vector_StackPop(*(a1 + 120));
        --v6;
      }

      while (v6 > *(a1 + 100));
    }

    log_OutText(*(v8 + 32), "DOMAIN_MNGR", 4, 0, "    Disable all domains");
  }

  return inited;
}

uint64_t domain_mngr_ConsultActivePromptDbs(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, __int16 *a8, int a9)
{
  v91 = 0;
  v17 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v91);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v91 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultActivePromptDbs");
  vector_Clear(*(a1 + 88));
  v19 = *a5;
  if (v19 < 2)
  {
LABEL_7:
    v89 = a6;
    log_OutText(*(v91 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", *a3);
    v86 = a8;
    v21 = strlen(*a3);
    v90 = CILE_New(*(v91 + 8), 1, *(*a4 + 12) + *a8, v21);
    if (!v90)
    {
      inited = 2296389642;
      log_OutPublic(*(v91 + 32), "DOMAIN_MNGR", 47000, 0);
      return inited;
    }

    v88 = a7;
    if (!*a5)
    {
LABEL_32:
      if (!**a3)
      {
        goto LABEL_103;
      }

      v37 = *(a1 + 16);
      v98 = 0;
      memset(v97, 0, sizeof(v97));
      v95 = 0;
      v96 = 0;
      v93 = 0;
      v94 = 0;
      v92 = 0;
      v38 = *(*a4 + 12);
      if (log_HasTraceTuningDataSubscriber(*(v37 + 32)))
      {
        log_OutTraceTuningData(*(v37 + 32), 250, "%s%s", v39, v40, v41, v42, v43, "BEG");
        v44 = strlen(*a3);
        log_OutTraceTuningDataBinary(*(v37 + 32), 251, "", "text/plain;charset=depes", *a3, v44);
        log_OutTraceTuningDataBinary(*(v37 + 32), 251, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
      }

      v45 = *a5;
      v87 = v37;
      if (!*a5)
      {
        inited = 0;
        v52 = 0;
        goto LABEL_59;
      }

      v46 = 0;
      v47 = 0;
      inited = 2296389642;
      v48 = v90;
      while (1)
      {
        v49 = *a4 + 32 * v46;
        if (*v49 == 40)
        {
          v50 = strlen(*(v49 + 24));
          v51 = heap_Alloc(*(v87 + 8), (v50 + 1));
          v52 = v51;
          if (!v51)
          {
            v37 = v87;
            log_OutPublic(*(v87 + 32), "DOMAIN_MNGR", 47000, 0);
LABEL_59:
            if (log_HasTraceTuningDataSubscriber(*(v37 + 32)))
            {
              v58 = strlen(*a3);
              log_OutTraceTuningDataBinary(*(v37 + 32), 252, "", "text/plain;charset=depes", *a3, v58);
              log_OutTraceTuningDataBinary(*(v37 + 32), 252, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              log_OutTraceTuningData(*(v37 + 32), 250, "%s%s %s%u", v59, v60, v61, v62, v63, "END");
            }

            v64 = v89;
            if ((inited & 0x80000000) == 0 && *(a1 + 96))
            {
              if (log_HasTraceTuningDataSubscriber(*(v37 + 32)))
              {
                log_OutTraceTuningData(*(v37 + 32), 270, "%s%s", v65, v66, v67, v68, v69, "BEG");
                v70 = strlen(*a3);
                v64 = v89;
                log_OutTraceTuningDataBinary(*(v37 + 32), 271, "", "text/plain;charset=depes", *a3, v70);
                log_OutTraceTuningDataBinary(*(v37 + 32), 271, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              }

              if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v93) & 0x80000000) == 0)
              {
                while ((ssftmap_IteratorNext(v93, &v95, &v94) & 0x80000000) == 0)
                {
                  domain_SetConsulted(v94, 0);
                }

                ssftmap_IteratorClose(v93);
              }

              Size = vector_GetSize(*(a1 + 120));
              if (Size)
              {
                v72 = Size;
                while (vector_GetElemAt(*(a1 + 120), --v72, &v96))
                {
                  if (accphr_getAccPhrType(*v96))
                  {
                    if (!v72)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v73 = vector_GetSize(*(*v96 + 16));
                    if (v73)
                    {
                      v74 = v73;
                      if (vector_GetElemAt(*(*v96 + 16), v73 - 1, &v92))
                      {
                        v75 = v74 - 2;
                        while (1)
                        {
                          inited = activeprompt_db_Consult(*v92, a3, a4, a5, v64, v88, v90, a9);
                          if ((inited & 0x80000000) != 0)
                          {
                            goto LABEL_82;
                          }

                          if (v75 != -1)
                          {
                            if (vector_GetElemAt(*(*v96 + 16), v75--, &v92))
                            {
                              continue;
                            }
                          }

                          break;
                        }
                      }
                    }

                    domain_SetConsulted(*v96, 1);
                    if (!v72)
                    {
                      break;
                    }
                  }
                }
              }
            }

LABEL_82:
            if (v52)
            {
              heap_Free(*(v87 + 8), v52);
            }

            if (log_HasTraceTuningDataSubscriber(*(v87 + 32)))
            {
              v77 = strlen(*a3);
              log_OutTraceTuningDataBinary(*(v87 + 32), 272, "", "text/plain;charset=depes", *a3, v77);
              log_OutTraceTuningDataBinary(*(v87 + 32), 272, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
              v78 = *(a1 + 56);
              v103 = 0;
              *v104 = 0;
              v102 = 0;
              v101 = 0;
              v100 = 0;
              v99 = 0;
              if (((*(v78 + 104))(v64, v88, 1, 0, &v104[1]) & 0x80000000) == 0 && ((*(v78 + 152))(v89, v88, 2, v104[1], &v102) & 0x80000000) == 0)
              {
                if (v102)
                {
                  if (((*(v78 + 104))(v89, v88, 2, v104[1], v104) & 0x80000000) == 0)
                  {
                    v84 = v104[0];
                    if (v104[0])
                    {
                      while (((*(v78 + 168))(v89, v88, v84, 0, 1, &v100, &v103 + 2) & 0x80000000) == 0)
                      {
                        if (v100 == 5)
                        {
                          if (((*(v78 + 176))(v89, v88, v104[0], 4, &v101, &v103 + 2) & 0x80000000) != 0)
                          {
                            break;
                          }

                          if (HIWORD(v103) && !strncmp(v101, "phon", HIWORD(v103)))
                          {
                            if (((*(v78 + 176))(v89, v88, v104[0], 3, &v99, &v103 + 2) & 0x80000000) != 0 || ((*(v78 + 168))(v89, v88, v104[0], 1, 1, &v103, &v103 + 2) & 0x80000000) != 0 || ((*(v78 + 168))(v89, v88, v104[0], 2, 1, &v102 + 2, &v103 + 2) & 0x80000000) != 0)
                            {
                              break;
                            }

                            log_OutTraceTuningData(*(v87 + 32), 272, "%s%s %s%d %s%d", v79, v80, v81, v82, v83, "PHON");
                          }
                        }

                        if (((*(v78 + 120))(v89, v88, v104[0], v104) & 0x80000000) == 0)
                        {
                          v84 = v104[0];
                          if (v104[0])
                          {
                            continue;
                          }
                        }

                        break;
                      }
                    }
                  }
                }
              }

              log_OutTraceTuningData(*(v87 + 32), 270, "%s%s %s%u", v79, v80, v81, v82, v83, "END");
            }

LABEL_103:
            if (v91)
            {
              CILE_Free(v90, *(v91 + 8));
              goto LABEL_105;
            }

            return inited;
          }

          strcpy(v51, *(*a4 + 32 * v46 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v52, v97);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
            goto LABEL_57;
          }

          log_OutText(*(v87 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v52);
          heap_Free(*(v87 + 8), v52);
          v54 = *(*a4 + 32 * v46 + 12);
          while (1)
          {
            v55 = *(v48 + 1);
            v56 = *(v48 + 2) + v55;
            v57 = v55 > v54 || v54 >= v56;
            if (!v57 || v54 == v56 && v54 == v38 + strlen(*a3))
            {
              break;
            }

            v48 = v48[2];
            if (!v48)
            {
              v52 = 0;
              inited = 2296389632;
              goto LABEL_57;
            }
          }

          v47 = activeprompt_Insert(v97, (v54 - v38), 0, v38, a3, a4, a5, v46, v48, v89, v88, v86);
          if ((v47 & 0x80000000) != 0)
          {
LABEL_53:
            v52 = 0;
            inited = v47;
LABEL_57:
            v37 = v87;
            goto LABEL_59;
          }

          log_OutText(*(v87 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", *a3);
          v45 = *a5;
        }

        if (++v46 >= v45)
        {
          goto LABEL_53;
        }
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = v90;
    while (1)
    {
      v25 = *a4;
      v26 = *(*a4 + v22);
      if (v26 > 25)
      {
        if (v26 == 26 || v26 == 29)
        {
LABEL_24:
          v32 = *(v25 + v22 + 12);
          v33 = *(v24 + 1);
          v34 = v32 - v33;
          if (v32 > v33)
          {
            v35 = *(v24 + 2);
            if ((v35 - v34) >= 1)
            {
              inited = CI_Update(*(v91 + 8), v24, *v24, v33, v34);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_103;
              }

              v36 = CILE_New(*(v91 + 8), *v24, *(*a4 + v22 + 12), v35 - *(v24 + 2));
              if (!v36)
              {
LABEL_102:
                inited = 2296389642;
                log_OutPublic(*(v91 + 32), "DOMAIN_MNGR", 47000, 0);
                goto LABEL_103;
              }

              v24[2] = v36;
              v24 = v36;
            }
          }
        }
      }

      else
      {
        if (v26 == 8)
        {
          goto LABEL_24;
        }

        if (v26 == 12)
        {
          v27 = *(v25 + v22 + 24);
          if (v27 && *v27 && strcmp(v27, "normal"))
          {
            if (!*(a1 + 128))
            {
              v28 = strlen(v27);
              v29 = heap_Alloc(*(v91 + 8), (v28 + 1));
              if (!v29)
              {
                goto LABEL_102;
              }

              v30 = v29;
              strcpy(v29, *(*a4 + v22 + 24));
              domain_mngr_EnableDomain(a1, a2, v30);
              heap_Free(*(v91 + 8), v30);
            }
          }

          else if (!*(a1 + 128))
          {
            hlp_DisableLastDomain(a1);
          }
        }
      }

      ++v23;
      v22 += 32;
      if (v23 >= *a5)
      {
        goto LABEL_32;
      }
    }
  }

  v20 = 0;
  while (*(*a4 + 32 * v20 + 12) <= *(*a4 + 44 + 32 * v20))
  {
    if ((v19 - 1) <= ++v20)
    {
      goto LABEL_7;
    }
  }

  log_OutPublic(*(v91 + 32), "DOMAIN_MNGR", 47015, 0);
  inited = 2296389639;
LABEL_105:
  if (v91)
  {
    log_OutText(*(v91 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultActivePromptDbs");
  }

  return inited;
}

uint64_t domain_mngr_ConsultOriOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v79 = *MEMORY[0x1E69E9840];
  v72 = 0;
  strcpy(__s2, "normal");
  v10 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v72);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v72 + 32), "DOMAIN_MNGR", 4, 0, "Entering domain_mngr_ConsultOriOrth");
    *(a1 + 128) = 1;
    v12 = CILE_New(*(v72 + 8), 1, *(*a4 + 12), *(*a4 + 16));
    if (v12)
    {
      v69 = v12;
      if (*a5)
      {
        v67 = a2;
        v68 = a3;
        v13 = 0;
        __s1 = __s2;
        v71 = __s2;
        v14 = v12;
        while (1)
        {
          v15 = *a4;
          v16 = (*a4 + 32 * v13);
          v17 = *v16;
          if (v17 > 0x28)
          {
            break;
          }

          if (((1 << v17) & 0x10024000100) != 0)
          {
            v18 = v16[3];
            v19 = v14[1];
            v20 = v18 - v19;
            if (v18 > v19)
            {
              v21 = v14[2];
              if (v21 != v20)
              {
                inited = CI_Update(*(v72 + 8), v14, *v14, v19, v20);
                if ((inited & 0x80000000) != 0)
                {
                  goto LABEL_96;
                }

                v22 = CILE_New(*(v72 + 8), *v14, *(*a4 + 32 * v13 + 12), v21 - v14[2]);
                if (!v22)
                {
                  goto LABEL_95;
                }

                *(v14 + 2) = v22;
                v14 = v22;
              }
            }

            goto LABEL_51;
          }

          if (v17 == 12)
          {
            v32 = *(v16 + 3);
            if (v32 && *v32 && strcmp(*(v16 + 3), "normal"))
            {
              v33 = strlen(v32);
              v34 = heap_Alloc(*(v72 + 8), (v33 + 1));
              if (!v34)
              {
                goto LABEL_95;
              }

              v35 = v34;
              strcpy(v34, *(*a4 + 32 * v13 + 24));
              domain_mngr_EnableDomain(a1, v67, v35);
              heap_Free(*(v72 + 8), v35);
              a3 = v68;
            }

            else
            {
              hlp_DisableLastDomain(a1);
            }

            goto LABEL_51;
          }

          if (v17 != 21)
          {
            break;
          }

          if (!strcmp(__s1, *(v16 + 3)))
          {
            goto LABEL_51;
          }

LABEL_16:
          v23 = (v15 + 32 * v13);
          v24 = *(v23 + 3);
          v25 = strcmp(v24, __s2);
          v26 = *v23;
          if (v25)
          {
            v27 = 0;
            if (v26 != 21)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v26 == 36)
            {
              v27 = strcmp(__s1, __s2) == 0;
LABEL_39:
              v36 = v71;
              if (v26 == 36)
              {
                v36 = v24;
              }

              v71 = v36;
              goto LABEL_42;
            }

            if (v26 != 21)
            {
              v27 = 0;
              goto LABEL_39;
            }

            v27 = strcmp(v71, __s2) == 0;
          }

          __s1 = v24;
LABEL_42:
          v37 = v23[3];
          v38 = v14[1];
          v39 = v37 - v38;
          if (v37 <= v38 || (v40 = v14[2], v40 == v39))
          {
            if (v37 == v38)
            {
              inited = CI_Update(*(v72 + 8), v14, v27, v37, v14[2]);
              a3 = v68;
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_96;
              }

              goto LABEL_51;
            }
          }

          else
          {
            inited = CI_Update(*(v72 + 8), v14, *v14, v14[1], v39);
            if ((inited & 0x80000000) != 0)
            {
              goto LABEL_96;
            }

            v41 = CILE_New(*(v72 + 8), v27, *(*a4 + 32 * v13 + 12), v40 - v14[2]);
            if (!v41)
            {
LABEL_95:
              inited = 2296389642;
              log_OutPublic(*(v72 + 32), "DOMAIN_MNGR", 47000, 0);
              goto LABEL_96;
            }

            *(v14 + 2) = v41;
            v14 = v41;
          }

          a3 = v68;
LABEL_51:
          if (++v13 >= *a5)
          {
            goto LABEL_66;
          }
        }

        v28 = v72;
        v77 = 0;
        if (!v71 || !v72 || v17 != 36 || !strcmp(v71, *(v16 + 3)) || (paramc_ParamGetStr(*(v28 + 40), "langcode", &v77) & 0x80000000) != 0)
        {
          goto LABEL_51;
        }

        v29 = strcmp(v71, "normal");
        v30 = *(v16 + 3);
        if (v29)
        {
          if (strcmp(v30, "normal"))
          {
LABEL_55:
            v42 = *a5;
            v15 = *a4;
            if (*a5)
            {
              v43 = 0;
              v44 = *(v15 + 32 * v13 + 12);
              v45 = *a4;
              do
              {
                if (v43)
                {
                  break;
                }

                v46 = v45[3];
                if (v46 > v44)
                {
                  break;
                }

                v43 = v46 == v44 && *v45 == 34;
                v45 += 8;
                --v42;
              }

              while (v42);
              if (v43)
              {
                goto LABEL_51;
              }
            }

            goto LABEL_16;
          }

          v31 = v77;
          v30 = v71;
        }

        else
        {
          v31 = v77;
        }

        if (!strcmp(v30, v31))
        {
          goto LABEL_51;
        }

        goto LABEL_55;
      }

LABEL_66:
      if (*a3 && **a3)
      {
        v47 = *(a1 + 16);
        v77 = 0;
        v75 = 0;
        v76 = 0;
        v73 = 0;
        v74 = 0;
        if (log_HasTraceTuningDataSubscriber(*(v47 + 32)))
        {
          log_OutTraceTuningData(*(v47 + 32), 210, "%s%s", v48, v49, v50, v51, v52, "BEG");
          v53 = strlen(*a3);
          log_OutTraceTuningDataBinary(*(v47 + 32), 211, "", "text/plain;charset=utf-8", *a3, v53);
          log_OutTraceTuningDataBinary(*(v47 + 32), 211, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
        }

        if ((ssftmap_IteratorOpen(*(a1 + 112), 0, 0, &v74) & 0x80000000) == 0)
        {
          while ((ssftmap_IteratorNext(v74, &v76, &v75) & 0x80000000) == 0)
          {
            domain_SetConsulted(v75, 0);
          }

          ssftmap_IteratorClose(v74);
        }

        Size = vector_GetSize(*(a1 + 120));
        if (Size)
        {
          v55 = Size;
          inited = 0;
          while (vector_GetElemAt(*(a1 + 120), --v55, &v77))
          {
            if (accphr_getAccPhrType(*v77))
            {
              if (!v55)
              {
                break;
              }
            }

            else
            {
              v56 = vector_GetSize(*(*v77 + 16));
              if (v56)
              {
                v57 = v56;
                if (vector_GetElemAt(*(*v77 + 16), v56 - 1, &v73))
                {
                  v58 = v57 - 2;
                  while (1)
                  {
                    inited = activeprompt_db_ConsultOriOrth(*v73, a3, a4, a5, v69);
                    if ((inited & 0x80000000) != 0)
                    {
                      goto LABEL_91;
                    }

                    if (v58 != -1)
                    {
                      if (vector_GetElemAt(*(*v77 + 16), v58--, &v73))
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }
              }

              domain_SetConsulted(*v77, 1);
              if (!v55)
              {
                break;
              }
            }
          }
        }

        else
        {
          inited = 0;
        }

LABEL_91:
        if (log_HasTraceTuningDataSubscriber(*(v47 + 32)))
        {
          if ((inited & 0x80000000) == 0)
          {
            v65 = strlen(*a3);
            log_OutTraceTuningDataBinary(*(v47 + 32), 212, "", "text/plain;charset=utf-8", *a3, v65);
            log_OutTraceTuningDataBinary(*(v47 + 32), 212, "", "application/x-realspeak-markers-pp;version=4.0", *a4, 32 * *a5);
          }

          log_OutTraceTuningData(*(v47 + 32), 210, "%s%s %s%u", v60, v61, v62, v63, v64, "END");
        }
      }

LABEL_96:
      if (v72)
      {
        CILE_Free(v69, *(v72 + 8));
        if (v72)
        {
          log_OutText(*(v72 + 32), "DOMAIN_MNGR", 4, 0, "Exiting domain_mngr_ConsultOriOrth");
        }
      }
    }

    else
    {
      inited = 2296389642;
      log_OutPublic(*(v72 + 32), "DOMAIN_MNGR", 47000, 0);
    }
  }

  return inited;
}

uint64_t domain_mngr_InsertPromptOrth(uint64_t a1, int a2, const char **a3, uint64_t *a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _WORD *a8)
{
  v29 = 0;
  v12 = safeh_HandleCheck(a1, a2, 285, 136);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v28 = 0;
  memset(v27, 0, sizeof(v27));
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v29);
  if ((inited & 0x80000000) == 0)
  {
    v14 = *a5;
    if (*a5)
    {
      v15 = 0;
      v16 = 0;
      v17 = *(*a4 + 12);
      do
      {
        if (*(*a4 + v15) == 40)
        {
          v18 = strlen(*(*a4 + v15 + 24));
          v19 = heap_Alloc(*(v29 + 8), (v18 + 1));
          if (!v19)
          {
            log_OutPublic(*(v29 + 32), "DOMAIN_MNGR", 47000, 0);
            return 2296389642;
          }

          v20 = v19;
          strcpy(v19, *(*a4 + v15 + 24));
          ActivePrompt = hlp_FindActivePrompt(a1, v20, v27);
          if ((ActivePrompt & 0x80000000) != 0)
          {
            inited = ActivePrompt;
            heap_Free(*(v29 + 8), v20);
            return inited;
          }

          log_OutText(*(v29 + 32), "DOMAIN_MNGR", 5, 0, "    Do User Prompt Insertion for [%s]", v20);
          heap_Free(*(v29 + 8), v20);
          inited = activeprompt_InsertOrth(v27, *(*a4 + v15 + 12) - v17, v17, a3, a4, a5, v16, v22, a6, a7, a8);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }

          log_OutText(*(v29 + 32), "DOMAIN_MNGR", 5, 0, "    [%s]", *a3);
          v14 = *a5;
        }

        ++v16;
        v15 += 32;
      }

      while (v16 < v14);
    }
  }

  return inited;
}