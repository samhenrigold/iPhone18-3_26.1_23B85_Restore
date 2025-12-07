void delta_delete(uint64_t a1)
{
  if (a1)
  {
    link_delete(a1);
    set_dict_delete(a1);
    act_dict_delete(a1);
    runtime_delete(a1);
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
      *(a1 + 32) = 0;
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      free(v4);
      *(a1 + 48) = 0;
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      free(v5);
      *(a1 + 56) = 0;
    }

    free(*(a1 + 40));

    free(a1);
  }
}

double viasizes()
{
  qword_2806BD218 = 0x400000004;
  *&result = 0x700000007;
  qword_2806BD338 = 0x700000007;
  return result;
}

void link_new(uint64_t a1)
{
  *(a1 + 232) = 49;
  v2 = malloc_type_malloc(9uLL, 0x100004077774924uLL);
  *(a1 + 240) = v2;
  if (v2 && (*(a1 + 248) = v2, v3 = malloc_type_malloc(9uLL, 0x100004077774924uLL), (*(a1 + 256) = v3) != 0) && (*(a1 + 264) = v3, v4 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL), (*(a1 + 272) = v4) != 0) && (*(a1 + 280) = v4, *(a1 + 288) = 9, *(a1 + 290) = 131073, *(a1 + 296) = vlfnames_glob, *(a1 + 304) = 12, *(a1 + 306) = 91, *(a1 + 312) = "ptb.ddl", *(a1 + 320) = 7, v5 = malloc_type_malloc(0x1CC0uLL, 0x101004026C630D6uLL), (*(a1 + 64) = v5) != 0) && (memcpy(v5, &vsetdtbl_glob, 0x1CC0uLL), v6 = malloc_type_malloc(0x200uLL, 0x1010040E30AAE52uLL), (*(a1 + 72) = v6) != 0))
  {

    memcpy(v6, &vactdtbl_glob, 0x200uLL);
  }

  else
  {

    delta_delete(a1);
  }
}

void link_delete(void *a1)
{
  if (a1)
  {
    v2 = a1[32];
    if (v2)
    {
      free(v2);
      a1[32] = 0;
    }

    v3 = a1[30];
    if (v3)
    {
      free(v3);
      a1[30] = 0;
    }

    v4 = a1[34];
    if (v4)
    {
      free(v4);
      a1[34] = 0;
    }

    v5 = a1[8];
    if (v5)
    {
      free(v5);
      a1[8] = 0;
    }

    v6 = a1[9];
    if (v6)
    {
      free(v6);
      a1[9] = 0;
    }
  }
}

double vfp0046(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 16) = *a2;
  return result;
}

double vfp0047(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 24) = *a2;
  return result;
}

void act_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0x10040436913F5uLL);
  *(a1 + 176) = v2;
  if (v2)
  {
    *v2 = &por_gramm_cat_dict_actentries;
    *(*(a1 + 176) + 8) = &unk_2806BECAC;
    *(*(a1 + 176) + 16) = &_MergedGlobals_38;
    *(*(a1 + 176) + 24) = &unk_2806BF44B;
    *(*(a1 + 176) + 32) = &unk_2806BEFE9;
    *(*(a1 + 176) + 40) = &unk_2806BEE57;
    *(*(a1 + 176) + 48) = &unk_2806BED69;
  }

  else
  {

    delta_delete(a1);
  }
}

void act_dict_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 176);
    if (v2)
    {
      free(v2);
      *(a1 + 176) = 0;
    }
  }
}

void set_dict_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x2D8uLL, 0x10040436913F5uLL);
  *(a1 + 80) = v2;
  if (v2)
  {
    *v2 = &unk_2806C1AA9;
    *(*(a1 + 80) + 8) = &unk_2806C1C7C;
    *(*(a1 + 80) + 16) = &unk_2806C1A2F;
    *(*(a1 + 80) + 24) = &unk_2806C24D5;
    *(*(a1 + 80) + 32) = &unk_2806C2AD5;
    *(*(a1 + 80) + 40) = &unk_2806C2560;
    *(*(a1 + 80) + 48) = &unk_2806C2CA5;
    *(*(a1 + 80) + 56) = &_MergedGlobals_1;
    *(*(a1 + 80) + 64) = &unk_2806C3072;
    *(*(a1 + 80) + 72) = &unk_2806C22BA;
    *(*(a1 + 80) + 80) = &unk_2806C2927;
    *(*(a1 + 80) + 88) = &unk_2806C1FCD;
    *(*(a1 + 80) + 96) = &unk_2806C2687;
    *(*(a1 + 80) + 104) = &unk_2806C208D;
    *(*(a1 + 80) + 112) = &unk_2806C287C;
    *(*(a1 + 80) + 120) = &unk_2806C233D;
    *(*(a1 + 80) + 128) = &unk_2806C29FB;
    *(*(a1 + 80) + 136) = &unk_2806C1F6F;
    *(*(a1 + 80) + 144) = &unk_2806C1DCF;
    *(*(a1 + 80) + 152) = &unk_2806C21D4;
    *(*(a1 + 80) + 160) = &unk_2806C1B2A;
    *(*(a1 + 80) + 168) = &unk_2806C1BC1;
    *(*(a1 + 80) + 176) = &unk_2806C1878;
    *(*(a1 + 80) + 184) = &unk_2806C1D00;
    *(*(a1 + 80) + 192) = &unk_2806C1862;
    *(*(a1 + 80) + 200) = &unk_2806C17CC;
    *(*(a1 + 80) + 208) = &unk_2806C3DE1;
    *(*(a1 + 80) + 216) = &unk_2806C1D43;
    *(*(a1 + 80) + 224) = &nounadjs_setentries;
    *(*(a1 + 80) + 232) = &unk_2806C2162;
    *(*(a1 + 80) + 240) = &unk_2806C2F78;
    *(*(a1 + 80) + 248) = &unk_2806C3BD4;
    *(*(a1 + 80) + 256) = &unk_2806C18BD;
    *(*(a1 + 80) + 264) = &unk_2806C4004;
    *(*(a1 + 80) + 272) = &unk_2806C1802;
    *(*(a1 + 80) + 280) = &unk_2806C188F;
    *(*(a1 + 80) + 288) = &sg_verbs_setentries;
    *(*(a1 + 80) + 296) = &unk_2806C1CBE;
    *(*(a1 + 80) + 304) = &unk_2806C193C;
    *(*(a1 + 80) + 312) = &unk_2806C18A6;
    *(*(a1 + 80) + 320) = &unk_2806C181E;
    *(*(a1 + 80) + 328) = &_MergedGlobals_2;
    *(*(a1 + 80) + 336) = &unk_2806C18EE;
    *(*(a1 + 80) + 344) = &unk_2806C2D94;
    *(*(a1 + 80) + 352) = &unk_2806C17DE;
    *(*(a1 + 80) + 360) = &unk_2806C197B;
    *(*(a1 + 80) + 368) = &unk_2806C1AD3;
    *(*(a1 + 80) + 376) = &unk_2806C195B;
    *(*(a1 + 80) + 384) = &unk_2806C1908;
    *(*(a1 + 80) + 392) = &unk_2806C1D87;
    *(*(a1 + 80) + 400) = &unk_2806C202C;
    *(*(a1 + 80) + 408) = &unk_2806C1BFF;
    *(*(a1 + 80) + 416) = &unk_2806C244B;
    *(*(a1 + 80) + 424) = &unk_2806C3179;
    *(*(a1 + 80) + 432) = &_MergedGlobals_39;
    *(*(a1 + 80) + 440) = &unk_2806C1B8C;
    *(*(a1 + 80) + 448) = &unk_2806C1A08;
    *(*(a1 + 80) + 456) = &unk_2806C27D3;
    *(*(a1 + 80) + 464) = &unk_2806C3283;
    *(*(a1 + 80) + 472) = &unk_2806C1C3D;
    *(*(a1 + 80) + 480) = &unk_2806C184D;
    *(*(a1 + 80) + 488) = &unk_2806C1A57;
    *(*(a1 + 80) + 496) = &unk_2806C1F14;
    *(*(a1 + 80) + 504) = &unk_2806C1E18;
    *(*(a1 + 80) + 512) = &unk_2806C1A80;
    *(*(a1 + 80) + 520) = &unk_2806C17C8;
    *(*(a1 + 80) + 528) = &unk_2806C17EA;
    *(*(a1 + 80) + 536) = &unk_2806C19E3;
    *(*(a1 + 80) + 544) = &unk_2806C39D9;
    *(*(a1 + 80) + 552) = &unk_2806C34F5;
    *(*(a1 + 80) + 560) = &unk_2806C19BF;
    *(*(a1 + 80) + 568) = &unk_2806C20F1;
    *(*(a1 + 80) + 576) = &unk_2806C1E68;
    *(*(a1 + 80) + 584) = &unk_2806C2BBC;
    *(*(a1 + 80) + 592) = &unk_2806C199C;
    *(*(a1 + 80) + 600) = &unk_2806C1EBD;
    *(*(a1 + 80) + 608) = &unk_2806C2247;
    *(*(a1 + 80) + 616) = &unk_2806C2E84;
    *(*(a1 + 80) + 624) = &unk_2806C3804;
    *(*(a1 + 80) + 632) = &unk_2806C1B5A;
    *(*(a1 + 80) + 640) = &unk_2806C17D4;
    *(*(a1 + 80) + 648) = &unk_2806C23C4;
    *(*(a1 + 80) + 656) = &unk_2806C182D;
    *(*(a1 + 80) + 664) = &unk_2806C1AFD;
    *(*(a1 + 80) + 672) = &unk_2806C3394;
    *(*(a1 + 80) + 680) = &unk_2806C183D;
    *(*(a1 + 80) + 688) = &unk_2806C1922;
    *(*(a1 + 80) + 696) = &unk_2806C18D5;
    *(*(a1 + 80) + 704) = &unk_2806C1810;
    *(*(a1 + 80) + 712) = &unk_2806C17F6;
    *(*(a1 + 80) + 720) = &unk_2806C25EE;
  }

  else
  {

    delta_delete(a1);
  }
}

void set_dict_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      free(v2);
      *(a1 + 80) = 0;
    }
  }
}

uint64_t setEngsynErrorRange(uint64_t result, int a2, int a3)
{
  v3 = *(result + 224);
  *(v3 + 208) = a2;
  *(v3 + 212) = a3;
  return result;
}

uint64_t getEngsynErrorRange(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 224);
  *a2 = *(v3 + 208);
  *a3 = *(v3 + 212);
  return result;
}

uint64_t initStreamArrays(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (*(v1 + 220))
  {
    return 0;
  }

  v2 = 1;
  *(v1 + 220) = 1;
  createStreamArrays(a1, 28);
  if (initStreamArray(a1, 0, "F0") && initStreamArray(a1, 1, "F1") && initStreamArray(a1, 2, "F2") && initStreamArray(a1, 3, "F3") && initStreamArray(a1, 4, "F4") && initStreamArray(a1, 5, "F5") && initStreamArray(a1, 6, "B1") && initStreamArray(a1, 7, "B2") && initStreamArray(a1, 8, "B3") && initStreamArray(a1, 9, "B4") && initStreamArray(a1, 10, "B5") && initStreamArray(a1, 11, "FNP") && initStreamArray(a1, 12, "FNZ") && initStreamArray(a1, 13, "FTP") && initStreamArray(a1, 14, "FTZ") && initStreamArray(a1, 15, "TL") && initStreamArray(a1, 16, "OQ") && initStreamArray(a1, 17, "FL") && initStreamArray(a1, 18, "DI") && initStreamArray(a1, 19, "AV") && initStreamArray(a1, 20, "AH") && initStreamArray(a1, 21, "AF") && initStreamArray(a1, 22, "A1F") && initStreamArray(a1, 23, "A2F") && initStreamArray(a1, 24, "A3F") && initStreamArray(a1, 25, "A4F") && initStreamArray(a1, 26, "A5F") && initStreamArray(a1, 27, "AB"))
  {
    return 0;
  }

  return v2;
}

uint64_t init_user_dicts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  setUserDictInputStream(a1, "inp");
  *(a2 + 2) = 0;
  *(a3 + 2) = 1;
  *(a4 + 2) = 2;
  return 0;
}

uint64_t setNonSequential(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, uint64_t a10)
{
  for (i = 0; i < *(a1 + 288); ++i)
  {
    *(*(*(a1 + 192) + 9072) + i) = 0;
  }

  clearnonseqIndex(a1);
  v13 = *(a2 + 2);
  if (v13 >= 1)
  {
    for (j = &a10; ; ++j)
    {
      v15 = v13-- != 0;
      if (!v15 || !a9)
      {
        break;
      }

      v16 = *a9;
      if (v16 == 65532)
      {
        LOWORD(v16) = a9[1];
      }

      if ((v16 & 0x8000) == 0 && v16 < *(a1 + 288))
      {
        *(*(*(a1 + 192) + 9072) + v16) = 1;
        setnonseqIndex(a1, v16);
      }

      v17 = j;
      a9 = *v17;
    }
  }

  return 0;
}

void eloqc_new(uint64_t result)
{
  if (result)
  {
    v2 = malloc_type_malloc(0x100uLL, 0x10D0040F3AD890DuLL);
    *(result + 224) = v2;
    bzero(v2, 0x100uLL);
    ecilink_new(result);
    *(*(result + 224) + 221) = -1;
  }
}

void eloqc_delete(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_45();
    if (v2)
    {
      ecilink_delete();
      bzero(*(v1 + 224), 0x100uLL);
      free(*(v1 + 224));
      *(v1 + 224) = 0;
    }
  }
}

uint64_t initializeIO()
{
  OUTLINED_FUNCTION_1_45();
  if (*(v1 + 248))
  {
    v2 = *(v0 + 192);
    if (*(v2 + 9072))
    {
      for (i = 0; ; ++i)
      {
        v2 = *(v0 + 192);
        if (i == 2)
        {
          break;
        }

        *(*(v2 + 9072) + i) = 1;
      }
    }

    *(v2 + 8864) = 0;
    v4 = 1;
    if (*(v2 + 9080))
    {
      *(v2 + 8868) = 1;
      v4 = 0;
    }
  }

  else
  {
    initDllLink();
    if (vffind_lf(v0, "cmdout") == -1)
    {
      v4 = 1;
    }

    else
    {
      v5 = showDialogs();
      v6 = 224;
      if (!v5)
      {
        v6 = 216;
      }

      v4 = 1;
      if (OUTLINED_FUNCTION_0_48("Eloquence output", *(v0 + v6)) && vffind_lf(v0, "pgmout") != -1)
      {
        v7 = showDialogs();
        v8 = 224;
        if (!v7)
        {
          v8 = 216;
        }

        if (OUTLINED_FUNCTION_0_48("Eloquence program output", *(v0 + v8)))
        {
          eciLinkNew();
        }
      }
    }
  }

  *(*(v0 + 224) + 248) = 1;
  return v4;
}

BOOL showDialogs()
{
  v0 = fopen("debug", "r");
  v1 = v0;
  if (v0)
  {
    fclose(v0);
  }

  return v1 != 0;
}

uint64_t closeIO()
{
  OUTLINED_FUNCTION_1_45();
  v2 = *(v1 + 232);
  if (v2)
  {
    v3 = eciLinkDelete(v2);
    v1 = *(v0 + 224);
    *(v1 + 232) = v3;
  }

  v4 = *(v1 + 240);
  if (v4)
  {
    *(*(v0 + 224) + 240) = eciLinkDelete(v4);
  }

  return 0;
}

void ***eciLinkCleanup()
{
  OUTLINED_FUNCTION_1_45();
  v2 = *(v1 + 232);
  if (v2)
  {
    eciLinkDelete(v2);
    v1 = *(v0 + 224);
    *(v1 + 232) = 0;
  }

  result = *(v1 + 240);
  if (result)
  {
    result = eciLinkDelete(result);
    *(*(v0 + 224) + 232) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_48@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
{

  return logicalFileAddPhysical(v3, v4, a1, (a2 + v2), 0, 1);
}

uint64_t synthesizingWord(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(v2 + 8);
  if (v3)
  {
    v3(*(a2 + 2), *(v2 + 16));
  }

  return 0;
}

uint64_t wordIndexCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(v2 + 24);
  if (v3)
  {
    v3(*(a2 + 2), *(v2 + 32));
  }

  return 0;
}

uint64_t userIndexCallback(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(v1 + 40);
  if (v2)
  {
    v2(*(v1 + 48));
  }

  return 0;
}

uint64_t annoCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 224);
  v4 = *(v3 + 56);
  if (v4)
  {
    v4(*(a2 + 2), *(a3 + 2), *(v3 + 64));
  }

  return 0;
}

uint64_t placePhoneme(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (**(a1 + 224))
  {
    v7 = *a2;
    v5 = a2 + 16;
    v6 = v7;
    if (v7 < 0)
    {
      return 1;
    }

    if (v6 >= *(a1 + 288))
    {
      return 1;
    }

    disptok(a1, v5, v6, 0, v13);
    v10 = strlen(v13);
    if (v10 > 4)
    {
      return 1;
    }

    for (i = v10; i != 4; ++i)
    {
      v13[i] = 0;
    }

    insertPhoneme(a1, *v13, *(a4 + 2) * *(a3 + 2) / 0x3E8uLL);
  }

  return 0;
}

BOOL getObject(uint64_t a1, EngineWrapper **a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_41, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_41))
  {
    RequestLicense::RequestLicense(&qword_2806C56B8);
    __cxa_guard_release(&_MergedGlobals_41);
  }

  *a2 = 0;
  if ((a1 - 1) > 1)
  {
    if (a1 == 3)
    {
      *a2 = &qword_2806C56B8;
      (*(qword_2806C56B8 + 8))(&qword_2806C56B8);
    }
  }

  else if (RequestLicense::licenseGranted(&qword_2806C56B8))
  {
    operator new();
  }

  return *a2 != 0;
}

BOOL engsynStart(uint64_t a1)
{
  resetEngsynError(a1);
  v2 = *(a1 + 224);
  if (*(v2 + 1) || (*(v2 + 1) = 1, etiwinMainDLL(a1, 0, 0) < 1) || initializeIO())
  {
    v3 = -4;
LABEL_3:
    setEngsynError(a1, v3);
    goto LABEL_4;
  }

  if (DeltaProc_start(a1))
  {
    v3 = -3;
    goto LABEL_3;
  }

LABEL_4:

  return checkEngsynError(a1);
}

uint64_t UnixReg(char *__src, char *a2)
{
  strncpy(libpath, __src, 0x1000uLL);
  if (!a2)
  {
    a2 = getcwd(0, 0x1000uLL);
  }

  if (reg(a2, 0, v3, v4, v5, v6, v7, v8))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL engsynEnd(uint64_t a1)
{
  resetEngsynError(a1);
  v2 = *(a1 + 224);
  if (!*(v2 + 2))
  {
    *(v2 + 2) = 1;
    DeltaProc_end(a1);
    vcmdend(a1, 0);
  }

  setEngsynError(a1, -5);

  return checkEngsynError(a1);
}

BOOL engsynProcessSentences()
{
  OUTLINED_FUNCTION_2_45();
  if (v3)
  {
    setEngsynError(v0, -8);
    goto LABEL_12;
  }

  *(v2 + 4) = 1;
  v4 = *(v2 + 232);
  if (v4)
  {
    if (!eciLinkDataFromECI(v4, v1))
    {
      setEngsynError(v0, -2);
    }

    if (!DeltaProc_process_sentences(v0, v5, v6, v7, v8, v9, v10, v11) && !deltaErrorThrown(v0))
    {
      goto LABEL_11;
    }

    v12 = -3;
  }

  else
  {
    v12 = -1;
  }

  setEngsynError(v0, v12);
LABEL_11:
  *(*(v0 + 224) + 4) = 0;
LABEL_12:

  return checkEngsynError(v0);
}

BOOL engsynProcessRemaining()
{
  OUTLINED_FUNCTION_2_45();
  if (v3)
  {
    setEngsynError(v0, -8);
    goto LABEL_12;
  }

  *(v2 + 4) = 1;
  v4 = *(v2 + 232);
  if (v4)
  {
    if (eciLinkDataFromECI(v4, v1))
    {
      if (!DeltaProc_process_remaining(v0, v5, v6, v7, v8, v9, v10, v11) && !deltaErrorThrown(v0))
      {
        goto LABEL_11;
      }

      v12 = -3;
    }

    else
    {
      v12 = -2;
    }
  }

  else
  {
    v12 = -1;
  }

  setEngsynError(v0, v12);
LABEL_11:
  *(*(v0 + 224) + 4) = 0;
LABEL_12:
  flushDelayedSynthQueue(v0);

  return checkEngsynError(v0);
}

uint64_t engsynGetLastError(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  getEngsynErrorRange(a1, a2, a3);

  return getEngsynError(a1);
}

BOOL engsynRestart(uint64_t a1)
{
  resetEngsynError(a1);
  initGlobalVars(a1);
  resetDelayedSynthQueue(a1);
  flushDelayedSynthQueue(a1);
  if (!vdltinit(a1, 1) || !vinitrun(a1))
  {
    return 1;
  }

  v2 = vffind_lf(a1, "wordsin");
  if (v2 != -1)
  {
    vf_clrbuf(a1, v2);
  }

  stopSynthesizing(a1);
  if (DeltaProc_start(a1))
  {
    setEngsynError(a1, -3);
  }

  *(*(a1 + 224) + 3) = 0;

  return checkEngsynError(a1);
}

BOOL engsynReadPhonemes(uint64_t a1, _BYTE *a2, int a3, int *a4)
{
  v5 = *(*(a1 + 224) + 232);
  if (v5 && !eciLinkDataToECI(v5, a2, a3, a4))
  {
    setEngsynError(a1, -2);
  }

  return checkEngsynError(a1);
}

uint64_t engsynReadErrorMessage(uint64_t a1, char *a2, int a3, int *a4)
{
  v4 = *(a1 + 224);
  if (!*(v4 + 232) || eciLinkDataToECI(*(v4 + 240), a2, a3, a4))
  {
    return 0;
  }

  strncpy(a2, "Unable to get error message from Eloquence.", a3);
  a2[a3] = 0;
  return 1;
}

BOOL engsynFlush(uint64_t a1, int a2)
{
  *(*(a1 + 224) + 3) = a2;
  setInterrupt(a1, a2);
  if (a2)
  {
    throwDeltaErrorNow(a1);
    stopSynthesizing(a1);
  }

  else
  {
    engsynRestart(a1);
  }

  return checkEngsynError(a1);
}

BOOL engsynClearInput()
{
  OUTLINED_FUNCTION_2_45();
  if (v2)
  {
    v3 = -8;
LABEL_3:
    setEngsynError(v0, v3);
    goto LABEL_4;
  }

  if (!eciLinkDataFromECI(*(v1 + 232), &unk_26E7817DA))
  {
    v3 = -2;
    goto LABEL_3;
  }

  if (DeltaProc_flush(v0))
  {
    v3 = -3;
    goto LABEL_3;
  }

LABEL_4:

  return checkEngsynError(v0);
}

uint64_t engsynSetAbort(uint64_t a1)
{
  setEngsynError(a1, -7);
  throwDeltaErrorNow(a1);
  return 0;
}

uint64_t engsynRegisterWordCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t engsynRegisterWordIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

uint64_t engsynRegisterUserIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return result;
}

uint64_t engsynRegisterAnnoCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 224);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return result;
}

uint64_t engsynClose(uint64_t a1)
{
  if (a1)
  {
    stopSynthesizing(a1);
    eciLinkCleanup();
    deltaCleanup(a1);
  }

  return 0;
}

uint64_t engsynDeleteDict(DictionarySet *a1)
{
  OUTLINED_FUNCTION_3_44();
  if (v3)
  {
    DictionarySet::~DictionarySet(a1);
  }

  MEMORY[0x27437DD90](a1, v1);
  return 0;
}

uint64_t engsynLoadDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a4)
  {
    return DictionarySet::load(a2, a3, a4, a4, a5, a6, a7, a8);
  }

  else
  {
    return OUTLINED_FUNCTION_0_49();
  }
}

uint64_t engsynSaveDict(uint64_t a1, int a2, char *a3)
{
  if (a1 && a3)
  {
    return DictionarySet::save(a1, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_0_49();
  }
}

uint64_t engsynUpdateDict(uint64_t a1, int a2, char *a3, char *a4)
{
  if (a1 && a3)
  {
    return DictionarySet::updateEntry(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_49();
  }
}

uint64_t engsynDictFindFirst(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a1)
  {
    return DictionarySet::findFirst(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_49();
  }
}

uint64_t engsynDictFindNext(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a1)
  {
    return DictionarySet::findNext(a1, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_49();
  }
}

uint64_t engsynDictLookup(uint64_t result, int a2, char *a3)
{
  if (result)
  {
    return DictionarySet::lookup(result, a2, a3);
  }

  return result;
}

BOOL eciLinkFileOpen(uint64_t a1, void *a2, int a3)
{
  *a2 = a1;
  v3 = a2[2];
  if (v3)
  {
    if ((a3 - 1) < 2)
    {
      v4 = (v3 + 8);
LABEL_5:
      dynaBufReset(*v4);
      return v3 != 0;
    }

    v4 = a2[2];
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  return v3 != 0;
}

uint64_t eciLinkFileRead(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = dynaBufCurrentChar(*v2, 0);
  if (result)
  {
    while (1)
    {
      v5 = dynaBufCurrentChar(*v2, 1);
      if (!v5 || v5 == 10)
      {
        break;
      }

      result = dynaBufAddChar(a2, v5, 0);
      if (!result)
      {
        return result;
      }
    }

    v7 = dynaBufMoveRel(a2, 0);
    v8 = dynaBufMoveRel(a2, 0xFFFFFFFF);
    if (dynaBufCurrentChar(a2, 0) == 32)
    {
      if (v7 != v8)
      {
        dynaBufMoveRel(a2, 1u);
      }
    }

    else
    {
      if (v7 != v8)
      {
        dynaBufMoveRel(a2, 1u);
      }

      dynaBufAddChar(a2, 32, 0);
    }

    result = dynaBufAddChar(a2, 10, 0);
    if (result)
    {
      v9 = *v2;
      if (v5)
      {
        v10 = dynaBufMoveRel(v9, 0);
        dynaBufMoveAbs(*v2, 0);
        dynaBufDeleteChars(*v2, v10);
      }

      else
      {
        dynaBufReset(v9);
      }

      return 1;
    }
  }

  return result;
}

BOOL eciLinkFileWrite(uint64_t a1, char *a2)
{
  if (!*a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  return v2 && dynaBufAddString(*(v2 + 8), a2, 0) != 0;
}

BOOL dialogFileOpen(uint64_t a1, void *a2)
{
  *a2 = a1;
  v3 = dynaBufNew(0);
  a2[2] = v3;
  return v3 != 0;
}

uint64_t dialogFileRead(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  dynaBufAddChar(a2, 10, 0);
  return 1;
}

uint64_t dialogFileWrite(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  if (!v2 || !dynaBufAddString(*(a1 + 16), a2, 0))
  {
    return 0;
  }

  v3 = dynaBufLength(v2);
  if (dynaBufChar(v2, v3 - 1) != 10)
  {
    return 1;
  }

  dynaBufMoveAbs(v2, 0xFFFFFFFF);
  dynaBufMoveRel(v2, 0xFFFFFFFF);
  v4 = 1;
  dynaBufDeleteChars(v2, 1uLL);
  dynaBufReset(v2);
  return v4;
}

double ecilink_new(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 224);
    if (v1)
    {
      v2 = unk_28203D6C0;
      *(v1 + 72) = eciLinkFileClass_glob;
      *(v1 + 88) = v2;
      v3 = *&off_28203D6E0;
      *(v1 + 104) = xmmword_28203D6D0;
      *(v1 + 120) = v3;
      v4 = *(a1 + 224);
      v5 = unk_28203D700;
      *(v4 + 136) = dialogFileClass_glob;
      *(v4 + 152) = v5;
      result = *&xmmword_28203D710;
      v7 = *&off_28203D720;
      *(v4 + 168) = xmmword_28203D710;
      *(v4 + 184) = v7;
    }
  }

  return result;
}

uint64_t eciLinkDelete(void ***a1)
{
  dynaBufDelete(*a1);
  dynaBufDelete(a1[1]);
  MEMORY[0x27437DD90](a1, 0x20C40A4A59CD2);
  return 0;
}

uint64_t eciLinkDataFromECI(uint64_t *a1, char *a2)
{
  result = 1;
  if (a1 && a2)
  {
    dynaBufReset(*a1);
    result = dynaBufAddString(*a1, a2, 0);
    if (result)
    {
      dynaBufMoveAbs(*a1, 0);
      return 1;
    }
  }

  return result;
}

uint64_t eciLinkDataToECI(uint64_t result, _BYTE *a2, int a3, int *a4)
{
  if (result)
  {
    v4 = result;
    result = *(result + 8);
    if (result)
    {
      v8 = a3 - 1;
      v9 = dynaBufLength(result);
      if (v9 >= a3)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      *a4 = v10;
      dynaBufExtract(*(v4 + 8), 0, a2, v10);
      dynaBufMoveAbs(*(v4 + 8), 0);
      dynaBufDeleteChars(*(v4 + 8), *a4);
      if (*a2)
      {
        ++*a4;
      }

      return 1;
    }
  }

  return result;
}

void EngineWrapper::EngineWrapper(EngineWrapper *this)
{
  OUTLINED_FUNCTION_2_46();
  *v2 = v3;
  *(v2 + 8) = 0;
  *(v2 + 24) = 0;
  v11 = delta_new(v2, v4, v5, v6, v7, v8, v9, v10);
  *(v1 + 16) = v11;
  if (!v11)
  {
    *(v1 + 24) = 1;
  }
}

void EngineWrapper::~EngineWrapper(EngineWrapper *this)
{
  OUTLINED_FUNCTION_2_46();
  *v2 = v3;
  v4 = v2[2];
  if (v4)
  {
    delta_delete(v4);
    *(v1 + 16) = 0;
  }
}

BOOL EngineWrapper::queryInterface(EngineWrapper *this, uint64_t a2, void **a3)
{
  *a3 = 0;
  if ((a2 - 1) > 1)
  {
    return 0;
  }

  *a3 = this;
  (*(*this + 8))(this);
  return *a3 != 0;
}

uint64_t EngineWrapper::addRef(EngineWrapper *this)
{
  v1 = *(this + 1) + 1;
  *(this + 1) = v1;
  return v1;
}

uint64_t EngineWrapper::release(EngineWrapper *this)
{
  v1 = *(this + 1);
  v2 = v1 - 1;
  *(this + 1) = v1 - 1;
  if (v1 == 1)
  {
    EngineWrapper::~EngineWrapper(this);
    MEMORY[0x27437DD90](this, 0x1081C40F6F63E5DLL);
  }

  return v2;
}

uint64_t EngineWrapper::start(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynStart(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v3);
}

uint64_t EngineWrapper::end(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynEnd(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v3);
}

uint64_t EngineWrapper::processSentences(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_47();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynProcessSentences();
    if (v4)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v4);
}

uint64_t EngineWrapper::processRemaining(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_47();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynProcessRemaining();
    if (v4)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v4);
}

uint64_t EngineWrapper::getLastError(EngineWrapper *this, int *a2, int *a3)
{
  OUTLINED_FUNCTION_1_47();
  if (v6)
  {
    LastError = 1;
  }

  else
  {
    LastError = engsynGetLastError(*(v3 + 16), v4, v5);
    if (LastError == 1)
    {
      *(v3 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(LastError);
}

uint64_t EngineWrapper::restart(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynRestart(*(v1 + 16));
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v3);
}

uint64_t EngineWrapper::readPhonemes(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_47();
  if (v8)
  {
    Phonemes = 1;
  }

  else
  {
    Phonemes = engsynReadPhonemes(*(v4 + 16), v5, v6, v7);
    if (Phonemes)
    {
      *(v4 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(Phonemes);
}

uint64_t EngineWrapper::readErrorMessage(EngineWrapper *this, char *a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_1_47();
  if (v8)
  {
    ErrorMessage = 1;
  }

  else
  {
    ErrorMessage = engsynReadErrorMessage(*(v4 + 16), v5, v6, v7);
    if (ErrorMessage == 1)
    {
      *(v4 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(ErrorMessage);
}

BOOL EngineWrapper::flush(EngineWrapper *this, int a2)
{
  *(this + 24) = 0;
  *(this + 25) = a2 != 0;
  return engsynFlush(*(this + 2), a2);
}

uint64_t EngineWrapper::clearInput(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynClearInput();
    if (v3)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v3);
}

uint64_t EngineWrapper::setAbort(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = engsynSetAbort(*(v1 + 16));
    if (v3 == 1)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v3);
}

uint64_t EngineWrapper::outputPlaying(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynOutputPlaying(*(v1 + 16), v2);
    if (v4)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v4);
}

uint64_t EngineWrapper::pause(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = engsynPause(*(v1 + 16), v2);
    if (v4)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v4);
}

uint64_t EngineWrapper::setSynthToNamedFile(EngineWrapper *this, const char *a2)
{
  OUTLINED_FUNCTION_1_47();
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = engsynSetSynthToNamedFile(*(v2 + 16), v3);
    if (v5)
    {
      *(v2 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v5);
}

BOOL EngineWrapper::setKlattDynamicHook(EngineWrapper *this, void (*a2)(float *, void *), uint64_t a3)
{
  if (*(this + 24))
  {
    return 1;
  }

  result = engsynSetKlattDynamicHook(*(this + 2), a2, a3);
  if (result)
  {
    *(this + 24) = 1;
  }

  return result;
}

BOOL EngineWrapper::setKlattConstHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    return 1;
  }

  result = engsynSetKlattConstHook(*(a1 + 16), a2, a3);
  if (result)
  {
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t EngineWrapper::setSynthToCallback(EngineWrapper *this, void (*a2)(int, uint64_t *, void *), void *a3)
{
  OUTLINED_FUNCTION_1_47();
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = engsynSetSynthToCallback(*(v3 + 16), v4, v5);
    if (v7)
    {
      *(v3 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(v7);
}

uint64_t EngineWrapper::setDurationCallback(uint64_t this, void (*a2)(uint64_t, uint64_t, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynSetDurationCallback();
  }

  return this;
}

uint64_t EngineWrapper::registerWordCallback(uint64_t this, void (*a2)(int, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterWordCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerWordIndexCallback(uint64_t this, void (*a2)(int, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterWordIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerUserIndexCallback(uint64_t this, void (*a2)(void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterUserIndexCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::registerIndexCallback(uint64_t this, void (*a2)(int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterIndexCallback();
  }

  return this;
}

uint64_t EngineWrapper::registerPhonemeCallback(uint64_t this, void (*a2)(int, unsigned int, void *), void *a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterPhonemeCallback();
  }

  return this;
}

uint64_t EngineWrapper::registerAnnoCallback(uint64_t this, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3)
{
  if (!*(this + 24))
  {
    return engsynRegisterAnnoCallback(*(this + 16), a2, a3);
  }

  return this;
}

uint64_t EngineWrapper::insertSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v3)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertSynthesisIndex(*(v1 + 16), v2);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(inserted);
}

uint64_t EngineWrapper::insertDelayedSynthesisIndex(EngineWrapper *this)
{
  OUTLINED_FUNCTION_1_47();
  if (v4)
  {
    inserted = 1;
  }

  else
  {
    inserted = engsynInsertDelayedSynthesisIndex(*(v1 + 16), v2, v3);
    if (inserted)
    {
      *(v1 + 24) = 1;
    }
  }

  return OUTLINED_FUNCTION_0_50(inserted);
}

uint64_t EngineWrapper::wantPhonemeIndices(uint64_t this, char a2)
{
  if (!*(this + 24))
  {
    return engsynWantPhonemeIndices(*(this + 16), a2);
  }

  return this;
}

uint64_t EngineWrapper::close(EngineWrapper *this)
{
  if (engsynClose(*(this + 2)))
  {
    v2 = 1;
    *(this + 24) = 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 25))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t OUTLINED_FUNCTION_0_50(uint64_t result)
{
  if (*(v1 + 25))
  {
    return 0;
  }

  else
  {
    return result;
  }
}

char *LanguageID::getLanguageString(LanguageID *this)
{
  v1 = this + 3;
  sprintf(this + 3, "%d", *this);
  return v1;
}

_BYTE *OUTLINED_FUNCTION_0_51(_BYTE *result, int a2)
{
  *result = BYTE2(a2);
  result[1] = BYTE1(a2);
  result[2] = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_1_48(_BYTE *result, char a2, char a3)
{
  *result = a2;
  result[1] = 0;
  result[2] = a3;
  return result;
}

_BYTE *OUTLINED_FUNCTION_2_47(_BYTE *result, char a2, char a3, char a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

BOOL reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = delta_new(a1, a2, a3, a4, a5, a6, a7, a8);
  engsynStart(v9);
  if (ensureInputStream(v9))
  {
    qword_2806C56D0 = a1;
    DeltaProc_registerLanguages(v9);
    delta_delete(v9);
    return (_MergedGlobals_42 & 1) == 0;
  }

  else
  {
    delta_delete(v9);
    return 1;
  }
}

BOOL ensureInputStream(uint64_t a1)
{
  if (*(*(a1 + 224) + 221) != 255)
  {
    return 1;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v4 = stream_name(i);
    if (!strcmp(v4, "inp"))
    {
      break;
    }
  }

  if (num_streams(a1) == i)
  {
    return 0;
  }

  *(*(a1 + 224) + 221) = i;
  return single_letter_stream(i) != 0;
}

uint64_t unreg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = *MEMORY[0x277D85DE8];
  globalJustGetLanguage = 1;
  v16 = delta_new(v8, v9, v10, v11, v12, v13, v14, v15);
  engsynStart(v16);
  if (ensureInputStream(v16))
  {
    DeltaProc_registerLanguages(v16);
    LanguageID::LanguageID(v20, *(v16[28] + 224));
    IniFileWriter::IniFileWriter(v19, v8);
    LanguageDialectString = LanguageID::getLanguageDialectString(v20);
    IniFileWriter::deleteSection(v19, LanguageDialectString);
  }

  delta_delete(v16);
  return 1;
}

void sub_26E75B1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerPhoneme(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v33 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_42 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_49();
    v32 = 0;
    v22[4] = 0u;
    v22[5] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    if (sprintf(v31, "%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d", *(v23 + 2), *(v24 + 2), *(v25 + 2), *(v26 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2), *(a15 + 2), *(a16 + 2), *(a17 + 2), *(a18 + 2), *(a19 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_52();
    }

    else
    {
      LanguageID::LanguageID(v30, *(v21 + 2), *(v20 + 2));
      IniFileWriter::IniFileWriter(v28, qword_2806C56D0);
      if (sprintf(v29, "Phoneme%d", *(v19 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v30);
        IniFileWriter::writeString(v28, LanguageDialectString, v29, v31);
      }

      OUTLINED_FUNCTION_0_52();
      IniFileWriter::~IniFileWriter(v28);
    }
  }
}

void sub_26E75B3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t registerLanguage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v24 = *MEMORY[0x277D85DE8];
  LanguageID::LanguageID(v23, *(v14 + 2), *(v15 + 2));
  *(*(v13 + 224) + 224) = LanguageID::getPackedInt(v16);
  if (v23[0] - 6 > 4)
  {
    v17 = 63;
  }

  else
  {
    v17 = dword_26E78001C[(v23[0] - 6)];
  }

  sprintf(byte_2806C56D8, "%#x", v17);
  if (globalJustGetLanguage || (_MergedGlobals_42 & 1) != 0)
  {
    return 0;
  }

  IniFileWriter::IniFileWriter(v21, qword_2806C56D0);
  if (sprintf(v22, "%d.%d", *(v12 + 2), *(v10 + 2)) != -1)
  {
    LanguageDialectString = LanguageID::getLanguageDialectString(v23);
    FullPathName = getFullPathName();
    IniFileWriter::writeString(v21, LanguageDialectString, "Path", FullPathName);
  }

  _MergedGlobals_42 = 1;
  IniFileWriter::~IniFileWriter(v21);
  return 0xFFFFFFFFLL;
}

void sub_26E75B5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

void registerVoice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v26 = *MEMORY[0x277D85DE8];
  if (!globalJustGetLanguage && (_MergedGlobals_42 & 1) == 0)
  {
    OUTLINED_FUNCTION_1_49();
    v25 = 0;
    v17[4] = 0u;
    v17[5] = 0u;
    v17[2] = 0u;
    v17[3] = 0u;
    *v17 = 0u;
    v17[1] = 0u;
    if (sprintf(v24, "%d %d %d %d %d %d %d %d", *(v18 + 2), *(v19 + 2), *(a9 + 2), *(a10 + 2), *(a11 + 2), *(a12 + 2), *(a13 + 2), *(a14 + 2)) == -1)
    {
      OUTLINED_FUNCTION_0_52();
    }

    else
    {
      LanguageID::LanguageID(v23, *(v16 + 2), *(v15 + 2));
      IniFileWriter::IniFileWriter(v21, qword_2806C56D0);
      if (sprintf(v22, "Voice%d", *(v14 + 2)) != -1)
      {
        LanguageDialectString = LanguageID::getLanguageDialectString(v23);
        IniFileWriter::writeString(v21, LanguageDialectString, v22, v24);
      }

      OUTLINED_FUNCTION_0_52();
      IniFileWriter::~IniFileWriter(v21);
    }
  }
}

void sub_26E75B768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  IniFileWriter::~IniFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t extractInputStreamString(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v8);
  if (!result)
  {
    return result;
  }

  result = sync_in_stm(a1, *(*(a1 + 224) + 221), v9);
  if (!result)
  {
    return result;
  }

  result = extract_string(a1, *(*(a1 + 224) + 221), v8, v9, a4, v5);
  if (!result)
  {
    return result;
  }

  if (strlen(a4) < 3)
  {
    return 1;
  }

  for (i = a4; ; ++i)
  {
    v12 = *a4;
    if (v12 != 39)
    {
      break;
    }

    if (a4[1] == 32 && a4[2] == 39)
    {
      LOBYTE(v12) = 32;
      v13 = 3;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 1;
LABEL_13:
    *i = v12;
    a4 += v13;
  }

  if (*a4)
  {
    goto LABEL_12;
  }

  *i = 0;
  return 1;
}

uint64_t sendArrayParameters(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v13 = a3;
  v14 = a2;
  v51 = *MEMORY[0x277D85DE8];
  v16 = *(a1 + 208);
  if (!a2)
  {
    *(v16 + 140) = 0;
  }

  v17 = 0;
  *(v16 + 144) = a3;
  while (v17 != 62)
  {
    v50[v17] = *(a10 + v17 * 4);
    ++v17;
  }

  v50[0] = a8;
  if (a4)
  {
    if (a5)
    {
      if (!a6)
      {
LABEL_11:
        for (i = 4; i != 252; i += 4)
        {
          v19 = *(a9 + i);
          if (v19 != -1)
          {
            Offset = arrayStreamLastOffset(a1, v19);
            if (v13 >= Offset)
            {
              v13 = Offset;
            }
          }
        }

        if (v13 <= v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = v13;
        }

        v13 = v14 + (v21 - v14) / a8 * a8;
        v16 = *(a1 + 208);
      }
    }

    else
    {
      v14 = *(v16 + 8);
      if (!a6)
      {
        goto LABEL_11;
      }
    }

    *(v16 + 8) = v13;
  }

  *(v16 + 136) = v13;
  v22 = *v16;
  if (!*v16)
  {
    v23 = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
    if (v23)
    {
      v24 = v23;
      v25 = streamArrayCount(a1);
      v26 = malloc_type_calloc(v25, 0x30uLL, 0x1000040732E9A81uLL);
      *v24 = v26;
      if (v26)
      {
        valueSetReset(a1, v24, v14, v13);
        **(a1 + 208) = v24;
        goto LABEL_30;
      }

      free(v24);
    }

    result = 0;
    **(a1 + 208) = 0;
    return result;
  }

  if (!a4 || a5)
  {
    valueSetReset(a1, v22, v14, v13);
  }

  else
  {
    v22[2] = v13;
  }

LABEL_30:
  v27 = 0;
  v49 = a8;
  while (!v27)
  {
    if (checkInterrupt(a1))
    {
      return 1;
    }

    v28 = **(a1 + 208);
    if (*(v28 + 8) > v14 || *(v28 + 16) <= v14)
    {
      return 1;
    }

    for (j = 0; j != 62; ++j)
    {
      v30 = *(a9 + 4 + 4 * j);
      if (v30 != -1)
      {
        v31 = **(a1 + 208);
        v32 = *v31 + 48 * v30;
        v33 = *(v32 + 16);
        while (v33 < v14)
        {
          if (v33 == -1)
          {
            v38 = OUTLINED_FUNCTION_0_53();
            Val = arrayStreamFirstVal(v38, v39, v40, v41);
            *v32 = 0;
            *(v32 + 8) = 0;
            if (Val)
            {
              v33 = 0;
              *(v32 + 16) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }

            *(v32 + 24) = 0;
          }

          else
          {
            *v32 = v33;
            *(v32 + 8) = *(v32 + 24);
            v34 = OUTLINED_FUNCTION_0_53();
            if (arrayStreamNextVal(v34, v35, v36, v37))
            {
              v33 = 0;
              *(v32 + 16) = 0;
              *(v32 + 24) = 0;
            }

            else
            {
              v33 = v31[2];
              *(v32 + 16) = v33;
            }
          }
        }

        v43 = *v32;
        v44 = v33 - *v32;
        *(v32 + 32) = v44;
        v45 = *(v32 + 8);
        v46 = *(v32 + 24) - v45;
        *(v32 + 40) = v46;
        if (v46)
        {
          v47 = v33 == v43;
        }

        else
        {
          v47 = 1;
        }

        if (!v47)
        {
          v45 = ((((v14 - v43) * v46) / v44) + v45);
        }

        v50[j] = v45;
      }
    }

    v14 += v49;
    if (v14 > v13)
    {
      v50[0] = (v14 - v13);
    }

    (*(*(*(a1 + 208) + 32) + 32))(v50, *(*(*(a1 + 208) + 32) + 40));
    v27 = !KlattSynth(*(*(a1 + 208) + 64), v50);
  }

  return 0;
}

uint64_t valueSetReset(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  a2[1] = a3;
  a2[2] = a4;
  for (i = 16; ; i += 48)
  {
    result = streamArrayCount(a1);
    if (v6 >= result)
    {
      break;
    }

    *(*a2 + i) = -1;
    ++v6;
  }

  return result;
}

void dlangCleanup(uint64_t a1)
{
  v1 = **(a1 + 208);
  if (v1)
  {
    free(*v1);

    free(v1);
  }
}

double *getDeltaCcodeParm(double *result, double *a2, int a3)
{
  v3 = *result;
  if (v3 == 65531)
  {
    if (a3 != -5)
    {
      if (a3 != -3)
      {
        if (a3 != -4)
        {
          return result;
        }

        v4 = result[1];
        goto LABEL_16;
      }

      v5 = result[1];
      goto LABEL_21;
    }

    v6 = result[1];
    goto LABEL_24;
  }

  if (v3 != 65533)
  {
    if (v3 != 65532)
    {
      return result;
    }

    if (a3 != -5)
    {
      if (a3 != -3)
      {
        if (a3 != -4)
        {
          return result;
        }

        LOWORD(v4) = *(result + 1);
LABEL_16:
        *a2 = v4;
        return result;
      }

      v5 = *(result + 1);
      goto LABEL_21;
    }

    v6 = *(result + 1);
    goto LABEL_24;
  }

  switch(a3)
  {
    case -5:
      v6 = *(result + 1);
LABEL_24:
      *a2 = v6;
      return result;
    case -3:
      v5 = *(result + 1);
LABEL_21:
      *a2 = v5;
      return result;
    case -4:
      *a2 = *(result + 1);
      break;
  }

  return result;
}

double *setDeltaCcodeReturnValue(double *result, int a2, double *a3)
{
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      switch(a2)
      {
        case -5:
          v6 = *result;
          break;
        case -3:
          v6 = *result;
          break;
        case -4:
          v6 = *result;
          break;
        default:
          return result;
      }

      a3[1] = v6;
      break;
    case 65533:
      switch(a2)
      {
        case -5:
          v5 = *result;
          break;
        case -3:
          v5 = *result;
          break;
        case -4:
          v5 = *result;
          break;
        default:
          return result;
      }

      *(a3 + 1) = v5;
      return result;
    case 65532:
      switch(a2)
      {
        case -5:
          v4 = *result;
          goto LABEL_25;
        case -3:
          *(a3 + 1) = *result;
          return result;
        case -4:
          LOWORD(v4) = *result;
LABEL_25:
          *(a3 + 1) = v4;
          break;
      }

      break;
  }

  return result;
}

uint64_t setdlookup(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(vstmtbl[12 * *(a4 + 16) + 1] + 15) != -1)
  {
    return 0;
  }

  result = extract(a1, a2, a3, a5, __s1, *(a4 + 48));
  if (result)
  {
    v7 = 0;
    v8 = *(a4 + 8);
    v9 = *(a4 + 32) * *(a4 + 48) - 1;
    v10 = -1;
    while (v9 >= v7)
    {
      v11 = v9;
      v12 = (v9 + v7) >> 1;
      if (v12 >= -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = (v9 + v7) >> 1;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        while (*(v8 + v12))
        {
          if (--v12 < 0)
          {
            goto LABEL_15;
          }
        }

        v9 = v12;
      }

LABEL_15:
      v13 = v9 + 1;
      if (v9 + 1 == v10)
      {
        break;
      }

      v14 = strcmp(__s1, (v8 + v13));
      if (!v14)
      {
        return 1;
      }

      v10 = v9 + 1;
      if ((v14 & 0x80000000) == 0)
      {
        v7 = v9 + 1;
          ;
        }

        v9 = v11;
        v10 = v13;
      }
    }

    return 0;
  }

  return result;
}

uint64_t extract(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, _BYTE *a5, unsigned int a6)
{
  v6 = *(*(a1 + 192) + 9084) + a4;
  if ((*(a2 + 8 * v6) & 1) == 0 || (*(a3 + 8 * v6) & 1) == 0)
  {
    return 0;
  }

  v11 = a2;
  v13 = 0;
  v14 = *vstmtbl[12 * a4 + 2];
  v15 = 0xFE / a6;
  v16 = a6;
  while (1)
  {
    v17 = v11 == a3 || v11 == *(*(a1 + 200) + 8);
    if (v17 || v13 >= v15)
    {
      break;
    }

    v11 = *(v11 + 8 * (*(*(a1 + 192) + 9084) + a4)) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v11 || (*v11 & 2) == 0)
    {
      v19 = v14(v11 + 16);
      memcpy(a5, v19, v16);
      a5 += v16;
      v11 = *(v11 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    }

    ++v13;
  }

  *a5 = 0;
  return 1;
}

const char *actdlookup(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a4 + 16);
  if (*(vstmtbl[12 * v5 + 1] + 15) == -1 && extract(a1, a2, a3, v5, __s1, *(a4 + 48)))
  {
    v8 = 0;
    v9 = *(a4 + 8);
    v10 = v9 + 2 * *(a4 + 24);
    v11 = *(a4 + 24) - 1;
    while (v11 >= v8)
    {
      v12 = (v10 + *(v9 + ((v11 + v8) & 0x1FFFFFFFELL)));
      v13 = strcmp(__s1, v12);
      if (!v13)
      {
        v6 = v12;
          ;
        }

        return v6;
      }

      v14 = (v11 + v8) >> 1;
      if (v13 < 0)
      {
        v11 = v14 - 1;
      }

      else
      {
        v8 = v14 + 1;
      }
    }
  }

  return 0;
}

uint64_t vdictinit(uint64_t a1)
{
  v2 = *(a1 + 306);
  if (v2 || *(a1 + 320))
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      dictinit(a1, *(a1 + 64) + v3, 0, i);
      v2 = *(a1 + 306);
      v3 += 64;
    }

    v5 = 0;
    for (j = 0; j < *(a1 + 320); ++j)
    {
      dictinit(a1, *(a1 + 72) + v5, 1, j);
      v5 += 64;
    }
  }

  return 1;
}

void *dictinit(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  switch(*(vstmtbl[12 * *(a2 + 16) + 1] + 15))
  {
    case 0xFFFB:
      v12 = 0x10000000000000;
      v8 = 8;
      v9 = &v12;
      break;
    case 0xFFFC:
      v13 = -32767;
      v8 = 2;
      v9 = &v13;
      break;
    case 0xFFFD:
      v14 = -2147483647;
      v8 = 8;
      v9 = &v14;
      break;
    case 0xFFFE:
      v8 = 2;
      v9 = &unk_26E780032;
      break;
    case 0xFFFF:
      v8 = 1;
      v9 = &unk_26E780030;
      break;
    default:
      v9 = 0;
      v8 = 0;
      break;
  }

  result = memcpy((a2 + 49), v9, v8);
  *(a2 + 48) = v8;
  v11 = 176;
  if (!a3)
  {
    v11 = 80;
  }

  *(a2 + 8) = *(*(a1 + v11) + 8 * a4);
  return result;
}

uint64_t vgen_frame(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = 8160;
  if (**(v1 + 8032) == 195)
  {
    v2 = 8128;
  }

  v3 = v1 + v2;
  *(v1 + 8400) = v1 + v2;
  *(v1 + 8408) = -4;
  *(v1 + 8410) = 0;
  vassign(a1, (v1 + 8400), (v1 + 8384));
  *(v3 + 24) |= 1u;
  return 0;
}

uint64_t vgen_time(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = 8160;
  if (**(v1 + 8032) == 196)
  {
    v2 = 8128;
  }

  v3 = *(v1 + 0x2000);
  v4 = v1 + v2;
  *(v4 + 8) = v3;
  *(v4 + 24) |= 2u;
  return 0;
}

uint64_t vgen_params(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = 8160;
  if (**(v2 + 8032) == 197)
  {
    v3 = 8128;
  }

  v4 = v2 + v3;
  *(v2 + v3 + 9) = *(v2 + 0x2000);
  if ((*(v2 + v3 + 24) & 4) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = dynaBufNew(*(v2 + 8193));
    *(v4 + 16) = v5;
  }

  dynaBufReset(v5);
  for (i = 1; ; ++i)
  {
    v7 = *(a1 + 192);
    if (i > *(v7 + 8193))
    {
      break;
    }

    v8 = *(v4 + 16);
    v9 = *(v7 + 8264);
    *(v7 + 8264) = v9 + 1;
    dynaBufAddChar(v8, *v9, 0);
  }

  *(v4 + 24) |= 4u;
  return 0;
}

uint64_t vgen_copy(uint64_t a1)
{
  v1 = *(a1 + 192);
  if ((~*(v1 + 8152) & 7) != 0)
  {
    return 245;
  }

  *(v1 + 8160) = *(v1 + 8128);
  *(v1 + 8168) = *(v1 + 8136);
  *(*(a1 + 192) + 0x2000) = dynaBufLength(*(v1 + 8144));
  dynaBufReset(*(*(a1 + 192) + 8176));
  for (i = 0; ; ++i)
  {
    v4 = *(a1 + 192);
    if (i >= *(v4 + 0x2000))
    {
      break;
    }

    v5 = *(v4 + 8176);
    v6 = dynaBufChar(*(v4 + 8144), i);
    dynaBufAddChar(v5, v6, 0);
  }

  result = 0;
  *(v4 + 8184) |= 7u;
  return result;
}

uint64_t vgenerate(uint64_t a1)
{
  v2 = 245;
  if (vprt_range(a1, a1 + 112, a1 + 144))
  {
    if (vgen(a1, a1 + 112, (a1 + 144), *(a1 + 192) + 8160, *(*(a1 + 192) + 0x2000)))
    {
      return 0;
    }

    else
    {
      return 245;
    }
  }

  return v2;
}

uint64_t ins_tokens(uint64_t *a1, uint64_t a2, _BYTE *a3, int a4)
{
  v29 = 0;
  v26 = 0;
  v27 = 0.0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if (a4 == 1)
  {
    v6 = a1[14];
    v7 = a1[18];
    if (v7 != (*(v6 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) || v6 != (*(v7 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL))
    {
      vdel_2pt(a1, a2, v6, v7);
    }
  }

  else
  {
    LOWORD(v26) = STMTYP(a2);
    v11 = vstmtbl[12 * a2 + 1][32];
    BYTE2(v26) = v11;
    switch(STMTYP(a2))
    {
      case 0xFFFBu:
        v12 = &v27;
        goto LABEL_11;
      case 0xFFFCu:
      case 0xFFFEu:
        v12 = &v28;
        goto LABEL_11;
      case 0xFFFDu:
        v12 = &v29;
        goto LABEL_11;
      case 0xFFFFu:
        v12 = &v30;
LABEL_11:
        v25 = v12;
        v13 = a3 + 1;
        switch(*a3)
        {
          case 0xC7:
            LOWORD(v24) = -1;
            v14 = &v30;
            break;
          case 0xC8:
            v15 = -2;
            goto LABEL_17;
          case 0xC9:
            LOWORD(v24) = -3;
            v14 = &v29;
            break;
          case 0xCA:
            v15 = -4;
LABEL_17:
            LOWORD(v24) = v15;
            v14 = &v28;
            break;
          case 0xCB:
            LOWORD(v24) = -5;
            v14 = &v27;
            break;
          default:
            return 0;
        }

        v23 = v14;
        v30 = 0;
        v16 = &a3[a4];
        v28 = 0;
        BYTE2(v24) = v11;
        break;
      default:
        return 0;
    }

    while (v13 < v16)
    {
      v17 = v24;
      switch(v24)
      {
        case -5:
          v21 = *v13;
          v20 = v13 + 1;
          v30 = v21;
          v27 = atof(v20);
          v13 = &v20[v21];
          break;
        case -4:
        case -2:
          v18 = *(v13 + 1) | ((*v13 & 0x7F) << 8);
          v28 = v18;
          if (*v13 < 0)
          {
            v28 = -v18;
          }

          v13 += 2;
          break;
        case -3:
          v22 = (*(v13 + 1) << 16) & 0xFFFFFFFF80FFFFFFLL | ((*v13 & 0x7F) << 24) | (*(v13 + 2) << 8) | *(v13 + 3);
          v29 = v22;
          if (*v13 < 0)
          {
            v29 = -v22;
          }

          v13 += 4;
          break;
        case -1:
          v19 = *v13++;
          v30 = v19;
          break;
        default:
          return 0;
      }

      if (v26 != v17)
      {
        vassign(a1, &v25, &v23);
      }

      result = vins_tok(a1, a2, a1[14], a1[18], &v25);
      if (result)
      {
        if (v13 >= v16)
        {
          continue;
        }

        result = vins_sync(a1, a2, (*(a1[18] + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL), a1[18]);
        a1[14] = result;
        if (result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t ins_rdtoks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a1[25];
  v7 = *(v6 + 1720);
  if (*v7 != 5)
  {
    STMTYP(a2);
    for (i = 1; ; i = 0)
    {
      v14 = *v7;
      if (v14 == 5)
      {
        break;
      }

      if ((i & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_0_54();
        result = vins_sync(v15, v16, v17, v18);
        if (!result)
        {
          return result;
        }

        v4 = result;
        v14 = *v7;
      }

      if (v14 != 2)
      {
        return 0;
      }

      v19 = OUTLINED_FUNCTION_0_54();
      result = vins_tok(v19, v20, v21, v4, v22);
      if (!result)
      {
        return result;
      }

      popDeltaStackTop(a1);
      v7 = *(a1[25] + 1720);
    }

    v6 = a1[25];
    goto LABEL_15;
  }

  if ((*(a3 + 8 * (*(a1[24] + 9084) + a2)) & 0xFFFFFFFFFFFFFFFCLL) == a4 && (*(a4 + 8 * a2 + 24) & 0xFFFFFFFFFFFFFFFCLL) == a3)
  {
LABEL_15:
    *(v6 + 1760) = *(v7 + 1);
    goto LABEL_16;
  }

  v8 = OUTLINED_FUNCTION_0_54();
  vdel_2pt(v8, v9, v10, v4);
  v11 = *v7;
  *(a1[25] + 1760) = *(v7 + 1);
  if (v11 != 5)
  {
    return 0;
  }

LABEL_16:
  popDeltaStackTop(a1);
  result = 1;
  *(a1[23] + 452) = 1;
  return result;
}

uint64_t timeDuration(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = a4;
  v8 = 0;
  v9 = &vstmtbl[12 * a4];
  while (a2 != a3)
  {
    if (a2 == *(*(a1 + 200) + 8))
    {
      return 0;
    }

    if (a2 && (*a2 & 2) != 0)
    {
      v12 = &a2[8 * *(*(a1 + 192) + 9084) + 8 * v4];
    }

    else
    {
      v10 = STMTYP(v4);
      if (v10 == -3)
      {
        v11 = *(*v9[2])(a2 + 16);
      }

      else if (v10 == 65532)
      {
        LODWORD(v11) = *(*v9[2])(a2 + 16);
      }

      else
      {
        LODWORD(v11) = 0;
      }

      v8 += v11;
      v12 = a2 + 8;
    }

    a2 = (*v12 & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v8;
}

uint64_t synthesize(uint64_t a1, int a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, uint64_t a14, int a15, int a16, int a17, void *__s2)
{
  v27 = *(a1 + 208);
  v28 = *(v27 + 32);
  *(v28 + 110) = 1;
  if (*(v27 + 48))
  {
    v29 = 0;
    v30 = 0;
    v31 = *(v27 + 40);
    *v31 = a3;
    v32 = v31 + 4;
    while (v29 != 62)
    {
      v33 = arrayStreamFind(a1, (&parmNames)[v29]);
      *&v32[4 * v29] = v33;
      if (v33 != -1)
      {
        v30 = 1;
      }

      ++v29;
    }

    v27 = *(a1 + 208);
    if (!v30)
    {
      v37 = 0;
      v28 = *(v27 + 32);
      goto LABEL_67;
    }

    *(v27 + 48) = 0;
    v28 = *(v27 + 32);
  }

  v34 = *(v28 + 108);
  v35 = *(v28 + 108) == 0;
  *(v28 + 108) = 1;
  v36 = a7 - a6;
  if (a7 - a6 < 0 || a7 == a6 && !a8)
  {
    goto LABEL_12;
  }

  v61 = v35;
  v38 = a17;
  memcpy(__dst, &unk_287EE2C78, 0x58uLL);
  if (a15)
  {
    v39 = a15;
    *(__dst + 1) = a15;
    *(v27 + 148) = a15;
  }

  else
  {
    v39 = 0.0;
  }

  LODWORD(__dst[1]) = 16;
  if (a17)
  {
    HIDWORD(__dst[1]) = a17;
  }

  else
  {
    v38 = 5;
  }

  v40 = 0.0;
  v41 = 0.0;
  if (a9 != 0.0)
  {
    *(&__dst[5] + 1) = a9;
    v41 = a9;
  }

  if (a10 != 0.0)
  {
    *(&__dst[4] + 1) = a10;
    v40 = a10;
  }

  v42 = 0.0;
  v43 = 0.0;
  if (a11 != 0.0)
  {
    *&__dst[5] = a11;
    v43 = a11;
  }

  v44 = a16;
  if (a12 != 0.0)
  {
    *&__dst[4] = a12;
    v42 = a12;
  }

  __dst[8] = errorIgnore;
  LODWORD(__dst[9]) = 2;
  __dst[10] = ourKlattCallback;
  if (!a16)
  {
    v44 = 5;
  }

  v62 = v44;
  v45 = *(v27 + 56);
  if (v39 == *(v45 + 4) && v38 == *(v45 + 12) && v41 == *(v45 + 44) && v40 == *(v45 + 36) && v43 == *(v45 + 40) && v42 == *(v45 + 32))
  {
    v46 = 1;
  }

  else
  {
    memcpy(v45, __dst, 0x58uLL);
    v46 = 0;
    v27 = *(a1 + 208);
    v28 = *(v27 + 32);
  }

  if (*(v28 + 111))
  {
    if (v34)
    {
      if (!v46 || (v47 = *(v27 + 56), *(v47 + 88) != a13) || memcmp((v47 + 92), __s2, 0xF8uLL))
      {
        v48 = sendArrayParameters(a1, a6, a6, 1, 0, 1, 0, v62, *(v27 + 40), __s2);
        v27 = *(a1 + 208);
        if (!v48)
        {
          v37 = 0;
          v28 = *(v27 + 32);
          goto LABEL_13;
        }
      }
    }

    v49 = *(v27 + 56);
    *(v49 + 88) = a13;
    memcpy((v49 + 92), __s2, 0xF8uLL);
    v27 = *(a1 + 208);
  }

  v28 = *(v27 + 32);
  if (v46)
  {
    v50 = a15;
    if (*(v28 + 109))
    {
      goto LABEL_50;
    }
  }

  else
  {
    (*(v28 + 48))(__dst, *(v28 + 56));
    v51 = *(*(a1 + 208) + 64);
    memcpy(v63, __dst, sizeof(v63));
    KlattSetConstParms(v51, v63);
    v27 = *(a1 + 208);
    *(*(v27 + 32) + 109) = 0;
    v50 = a15;
  }

  v52 = KlattOpen(*(v27 + 64));
  v27 = *(a1 + 208);
  v28 = *(v27 + 32);
  if (!v52)
  {
LABEL_12:
    v37 = 0;
LABEL_13:
    *(v28 + 108) = 0;
    goto LABEL_67;
  }

LABEL_50:
  *(v28 + 109) = 1;
  if (a8)
  {
    if (v36 <= a8)
    {
      v53 = a8;
    }

    else
    {
      v53 = a7 - a6;
    }

    *(v28 + 112) = v53;
    if (*v28 && (v54 = *(v28 + 16)) != 0)
    {
      v54(v53 * v50 / 0x3E8uLL, v50 * a14 / 1000, *(v28 + 24));
      v55 = 0;
      v27 = *(a1 + 208);
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    *(v28 + 112) = 0;
    v55 = 1;
  }

  klattSetVolumeMultiplier(*(v27 + 64), a13);
  v37 = sendArrayParameters(a1, a6, a7, *(*(*(a1 + 208) + 32) + 111), v61, v55, 0, v62, *(*(a1 + 208) + 40), __s2);
  v56 = checkInterrupt(a1);
  v28 = *(*(a1 + 208) + 32);
  if (v56)
  {
    v57 = 0;
    *(v28 + 112) = 0;
  }

  else
  {
    v57 = *(v28 + 112);
  }

  v58 = v57 <= v36;
  v59 = v57 - v36;
  if (v58)
  {
    v59 = 0;
  }

  *(v28 + 112) = v59;
  if (!a8)
  {
    finishSynthesis(a1);
    v28 = *(*(a1 + 208) + 32);
  }

LABEL_67:
  *(v28 + 110) = 0;
  return v37;
}

uint64_t ourKlattCallback(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    OUTLINED_FUNCTION_0_55();
    if (!*(v4 + 128))
    {
      break;
    }

    if (checkInterrupt(a1))
    {
      return 0;
    }
  }

  for (i = 0; ; i += v7)
  {
    v7 = (*a2 - i);
    if (*a2 <= i)
    {
      break;
    }

    OUTLINED_FUNCTION_0_55();
    if (*(v8 + 80))
    {
      IndexQueue::reduceLeadTime((v8 + 72), v7);
      OUTLINED_FUNCTION_0_55();
      v7 = v9;
    }

    if (*v8)
    {
      (*v8)(v7, *(a2 + 8) + 8 * i, *(v8 + 8));
    }

    OUTLINED_FUNCTION_0_55();
    if (IndexQueue::indexDue((v10 + 72)))
    {
      OUTLINED_FUNCTION_0_55();
      IndexQueue::remove((v11 + 72));
    }
  }

  return 1;
}

void finishSynthesis(uint64_t a1)
{
  KlattClose(*(*(a1 + 208) + 64));
  OUTLINED_FUNCTION_1_50();
  *(v1 + 109) = 0;
  clock();
  OUTLINED_FUNCTION_1_50();
  *(v3 + 120) = v2;
  *(v3 + 108) = 0;
}

uint64_t callPlayFile(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a2 + 2) && *(a2 + 2) <= 999)
  {
    sprintf(v3, "delta%i.%s", *(a2 + 2), "au");
  }

  return 0;
}

uint64_t floatDur(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0.0;
  if ((*a2 & 0x80) == 0)
  {
    v8 = *a2;
    if (v8 < *(a1 + 288))
    {
      v9 = *(a3 + 8);
      v10 = *(*(a1 + 192) + 9084) + v8;
      if (*&v9[8 * v10])
      {
        v11 = *(a4 + 8);
        if (*&v11[8 * v10])
        {
          v6 = timeDuration(a1, v9, v11, v8);
        }
      }
    }
  }

  *(a5 + 8) = v6;
  return 0;
}

uint64_t stopSynthesizing(uint64_t a1)
{
  v1 = *(*(a1 + 208) + 32);
  if (*(v1 + 110))
  {
    v2 = 1;
    setInterrupt(a1, 1);
  }

  else if (*(v1 + 108))
  {
    *(v1 + 112) = 0;
    finishSynthesis(a1);
    return 1;
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t setSynthToNamedFile(uint64_t a1, char *__s1)
{
  v2 = *(*(a1 + 208) + 32);
  if (*(v2 + 108))
  {
    return 0;
  }

  if (*v2)
  {
    *v2 = 0;
  }

  if (!__s1 || !*__s1)
  {
    v4 = *(v2 + 64);
    if (v4)
    {
      free(v4);
      OUTLINED_FUNCTION_1_50();
      *(v5 + 64) = 0;
    }

    return 1;
  }

  result = strdup(__s1);
  *(v2 + 64) = result;
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t setSynthToCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  if (*(v3 + 64))
  {
    setSynthToNamedFile(a1, 0);
    v3 = *(*(a1 + 208) + 32);
  }

  *v3 = a2;
  *(v3 + 8) = a3;
  return 1;
}

uint64_t setKlattDynamicHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return 1;
}

uint64_t setKlattConstantHook(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 208) + 32);
  if (*(v3 + 108))
  {
    return 0;
  }

  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return 1;
}

uint64_t setSynthDurationCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t registerSynthIndexCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 136) = a2;
  *(v3 + 144) = a3;
  return result;
}

uint64_t registerPhonemeCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 208) + 32);
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return result;
}

uint64_t insertPhoneme(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 208) + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    v5(a2, a3, *(v4 + 160));
    return 1;
  }

  else
  {

    return insertDelayedSynthIndex(a1, a2);
  }
}

uint64_t insertDelayedSynthIndex(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  v5 = *(v3 + 136);
  v4 = *(v3 + 140);
  if (v4 <= v5)
  {
    v6 = *(v3 + 136);
  }

  else
  {
    v6 = *(v3 + 140);
  }

  v7 = *(v3 + 144);
  if (v6 <= v7)
  {
    v8 = *(v3 + 144);
  }

  else
  {
    v8 = v6;
  }

  *(v3 + 140) = v6;
  *(v3 + 144) = v8;
  if (v5 < v4 || v6 < v7)
  {
    result = IndexQueue::addOffsetFromLast((*(v3 + 32) + 72), a2, *(v3 + 148) * (v8 - v6) / 1000);
    *(*(a1 + 208) + 140) = *(*(a1 + 208) + 144);
  }

  else
  {

    return insertSynthIndex(a1, a2);
  }

  return result;
}

uint64_t insertSynthIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 208) + 32);
  if (!*v2)
  {
    return 0;
  }

  v3 = v2[17];
  if (v3)
  {
    v3(a2, v2[18]);
  }

  return 1;
}

uint64_t flushDelayedSynthQueue(uint64_t a1)
{
  OUTLINED_FUNCTION_1_50();
  if (*(v1 + 80))
  {
    IndexQueue::remove((v1 + 72));
  }

  return 1;
}

void deltaCleanup(uint64_t a1)
{
  deltaHeapCleanup();
  dlangCleanup(a1);
  vnstackCleanup(a1);
  vdelCleanup(a1);

  logicalIOCleanup(a1);
}

void dlang_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x98uLL, 0x1090040BA41C4AEuLL);
  *(a1 + 208) = v2;
  bzero(v2, 0x98uLL);
  v3 = malloc_type_malloc(0x100uLL, 0x10000400763368AuLL);
  *(*(a1 + 208) + 40) = v3;
  bzero(v3, 0x100uLL);
  operator new();
}

void dlang_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      klatt_delete(*(v2 + 64));
      stmarray_delete(a1);
      v3 = *(a1 + 208);
      if (*(v3 + 32))
      {
        MEMORY[0x27437DD90](*(v3 + 32), 0);
        v3 = *(a1 + 208);
        *(v3 + 32) = 0;
      }

      if (*(v3 + 56))
      {
        bzero(*(v3 + 56), 0x158uLL);
        free(*(*(a1 + 208) + 56));
        v3 = *(a1 + 208);
        *(v3 + 56) = 0;
      }

      if (*(v3 + 40))
      {
        bzero(*(v3 + 40), 0x100uLL);
        free(*(*(a1 + 208) + 40));
        v3 = *(a1 + 208);
        *(v3 + 40) = 0;
      }

      v4 = *(v3 + 96);
      if (v4)
      {
        *v4 = 0;
        free(*(*(a1 + 208) + 96));
        v3 = *(a1 + 208);
        *(v3 + 96) = 0;
      }

      bzero(v3, 0x98uLL);
      free(*(a1 + 208));
      *(a1 + 208) = 0;
    }
  }
}

void SoundDeviceInfo::SoundDeviceInfo(SoundDeviceInfo *this)
{
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 9) = &unk_287EE2E38;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
}

void IndexQueue::~IndexQueue(IndexQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x27437DD90);
}

void EListQueue::~EListQueue(EListQueue *this)
{
  EListQueue::~EListQueue(this);

  JUMPOUT(0x27437DD90);
}

{
  *this = &unk_287EE2EF8;
  EList::reset(this);

  ESList::~ESList(this);
}

void ESList::~ESList(ESList *this)
{
  *this = &unk_287EE2F68;
  EList::reset(this);
}

{
  ESList::~ESList(this);

  JUMPOUT(0x27437DD90);
}

uint64_t createStreamArrays(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v4 = *(*(a1 + 208) + 72);
    if (!*v4)
    {
      StreamArrayList::build(v4, a1, a2);
    }
  }

  return 0;
}

void sub_26E75DECC(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = (v4 - 16);
    v7 = -v3;
    do
    {
      StreamArray::~StreamArray(v6);
      v6 = (v8 - 32);
      v7 += 32;
    }

    while (v7);
  }

  MEMORY[0x27437DD80](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t StreamArrayList::addName(StreamArrayList *this, const char *a2)
{
  v2 = *(this + 5);
  if (v2 < *(this + 4))
  {
    v3 = *this;
    *(this + 5) = v2 + 1;
    StreamArray::setName((v3 + 32 * v2), a2);
  }

  return 0xFFFFFFFFLL;
}

BOOL addStreamArraySsValC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = *(a2 + 2);
  v8 = *(a3 + 2);
  return !StreamArrayList::appendValueToStream(*(*(a1 + 208) + 72), v7, *(a4 + 8), v8) || StreamArrayList::appendValueToStream(*(*(a1 + 208) + 72), v7, v6, v8) == 0;
}

uint64_t StreamArrayList::clearAll(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  for (i = 0; i < *(v3 + 8); ++i)
  {
    result = StreamArray::clear((*v3 + v4), a2);
    v4 += 32;
  }

  return result;
}

uint64_t StreamArrayList::findStream(StreamArrayList *this, const char *a2)
{
  v4 = 0;
  for (i = 0; i < *(this + 4); ++i)
  {
    if (!StreamArray::nameMatch((*this + v4), a2))
    {
      return i;
    }

    v4 += 32;
  }

  LOWORD(i) = -1;
  return i;
}

uint64_t stmarray_new(uint64_t result)
{
  if (result)
  {
    if (*(result + 208))
    {
      operator new();
    }
  }

  return result;
}

uint64_t stmarray_delete(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 208);
    if (v2)
    {
      v3 = *(v2 + 72);
      if (v3)
      {
        StreamArrayList::~StreamArrayList(*(v2 + 72));
      }

      result = MEMORY[0x27437DD90](v3, 0x1020C4034E03FFCLL);
      *(*(v1 + 208) + 72) = 0;
    }
  }

  return result;
}

void StreamArray::setName(StreamArray *this, const char *__s)
{
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x27437DD80](v3, 0x1000C8077774924);
  }

  strlen(__s);
  operator new[]();
}

uint64_t StreamArray::clear(TimeValueQueue *a1, uint64_t a2)
{
  result = TimeValueQueue::reset(a1);
  *(a1 + 3) = *(*(a2 + 208) + 80);
  return result;
}

void StreamArray::StreamArray(StreamArray *this)
{
  TimeValueQueue::TimeValueQueue(this, 0x12Cu);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
}

void StreamArray::~StreamArray(StreamArray *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x27437DD80](v2, 0x1000C8077774924);
    *(this + 2) = 0;
  }

  TimeValueQueue::~TimeValueQueue(this);
}

uint64_t StreamArray::appendValue(StreamArray *this, unsigned int a2, int a3)
{
  v3 = *(this + 6);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (!v4)
  {
    return 0;
  }

  if (v5 <= 0xFFFE)
  {
    v9 = v5 | (a3 << 16);
LABEL_7:
    result = TimeValueQueue::push(this, v9);
    goto LABEL_8;
  }

  result = TimeValueQueue::push(this, (a3 << 16) | 0xFFFFu);
  if (result)
  {
    HIDWORD(v10) = a2;
    LODWORD(v10) = a2;
    v9 = v10 >> 16;
    goto LABEL_7;
  }

LABEL_8:
  *(this + 6) = a2;
  return result;
}

uint64_t StreamArray::fetchNext(StreamArray *this, unsigned int *a2, int *a3)
{
  if (TimeValueQueue::isEmpty(this))
  {
    return 0;
  }

  TimeValueQueue::pop(this, &v8);
  *a3 = SHIWORD(v8);
  if (v8 == 0xFFFF)
  {
    if (TimeValueQueue::isEmpty(this))
    {
      return 0;
    }

    TimeValueQueue::pop(this, &v8);
    v7 = HIWORD(v8) | (v8 << 16);
  }

  else
  {
    v7 = *(this + 7) + v8;
  }

  *a2 = v7;
  *(this + 7) = v7;
  return 1;
}

void StreamArrayList::~StreamArrayList(StreamArrayList *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 0;
      v6 = v2 + 32 * v4;
      do
      {
        StreamArray::~StreamArray((v6 + v5 - 32));
        v5 -= 32;
      }

      while (-32 * v4 != v5);
    }

    MEMORY[0x27437DD80](v3, 0x1030C803AA113E6);
    *this = 0;
  }
}

void sub_26E75E624(_Unwind_Exception *a1)
{
  if (32 - 32 * v2 != v3)
  {
    v6 = 32 - (v3 + 32 * v2);
    v7 = (v4 - 64);
    do
    {
      StreamArray::~StreamArray(v7);
      v7 = (v8 - 32);
      v6 += 32;
    }

    while (v6);
  }

  MEMORY[0x27437DD80](v1, 0x1030C803AA113E6);
  _Unwind_Resume(a1);
}

void TimeValueQueue::TimeValueQueue(TimeValueQueue *this, unsigned int a2)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *(this + 7) = a2;
  v3 = OUTLINED_FUNCTION_0_56(4 * a2);
  *this = v3;
  if (!v3)
  {
    *(this + 4) = 0;
  }
}

uint64_t TimeValueQueue::size(TimeValueQueue *this)
{
  v1 = *(this + 5);
  v2 = *(this + 6);
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    v4 += *(this + 4);
  }

  return v4;
}

void TimeValueQueue::~TimeValueQueue(TimeValueQueue *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *(this + 6) = 0;
    *this = 0;
  }
}

uint64_t TimeValueQueue::reset(TimeValueQueue *this)
{
  free(*this);
  result = OUTLINED_FUNCTION_0_56(4 * *(this + 7));
  *this = result;
  if (result)
  {
    *(this + 4) = *(this + 7);
    *(this + 10) = 0;
    return 1;
  }

  return result;
}

uint64_t TimeValueQueue::push(TimeValueQueue *this, int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = *(this + 6);
  *(this + 6) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  v5 = *(this + 6);
  if (v5 == *(this + 4))
  {
    v5 = 0;
    *(this + 6) = 0;
  }

  if (v5 != *(this + 5) || TimeValueQueue::expand(this))
  {
    return 1;
  }

  v7 = *(this + 6);
  if (!v7)
  {
    v7 = *(this + 4);
  }

  result = 0;
  *(this + 6) = v7 - 1;
  return result;
}

uint64_t TimeValueQueue::expand(TimeValueQueue *this)
{
  result = *this;
  if (result)
  {
    v3 = *(this + 4);
    OUTLINED_FUNCTION_1_51();
    v7 = malloc_type_realloc(v4, v5, v6);
    memmove(&v7[4 * *(this + 4)], v7, 4 * *(this + 6));
    memmove(v7, &v7[4 * *(this + 5)], 4 * *(this + 4));
    if (v7)
    {
      *this = v7;
      *(this + 5) = 0;
      *(this + 6) = *(this + 4);
      *(this + 4) = 2 * v3;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TimeValueQueue::pop(const void **a1, _DWORD *a2)
{
  result = TimeValueQueue::peekHead(a1, a2);
  if (result)
  {
    v4 = *(a1 + 5);
    if (*(a1 + 4) == (v4 + 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + 1;
    }

    *(a1 + 5) = v5;

    return TimeValueQueue::shrinkIfNeeded(a1);
  }

  return result;
}

uint64_t TimeValueQueue::peekHead(uint64_t a1, _DWORD *a2)
{
  if (!*a1 || *(a1 + 10) == *(a1 + 12))
  {
    return 0;
  }

  *a2 = *(*a1 + 4 * *(a1 + 10));
  return 1;
}

uint64_t TimeValueQueue::shrinkIfNeeded(const void **this)
{
  v2 = *(this + 6);
  v3 = *(this + 5);
  v4 = v2 - v3;
  if (v2 <= v3)
  {
    v9 = *(this + 4);
    v4 = v9 - v3 + v2;
    if (v9 <= *(this + 7) || v4 >= (v9 >> 1))
    {
      return 1;
    }

    memmove(*this + 4 * v9 + -4 * v3, *this, 4 * *(this + 6));
    v6 = *this;
    v11 = *(this + 5);
    v7 = *this + 4 * v11;
    v8 = 4 * (*(this + 4) - v11);
  }

  else
  {
    v5 = *(this + 4);
    if (v5 <= *(this + 7) || v4 >= (v5 >> 1))
    {
      return 1;
    }

    v6 = *this;
    v7 = *this + 4 * v3;
    v8 = 4 * v4;
  }

  memmove(v6, v7, v8);
  v12 = *(this + 4);
  OUTLINED_FUNCTION_1_51();
  result = malloc_type_realloc(v14, *&v13 & 0x1FFFCLL, v15);
  if (!result)
  {
    return result;
  }

  *this = result;
  *(this + 5) = 0;
  *(this + 6) = v4;
  *(this + 4) = v12 >> 1;
  return 1;
}

_DWORD *TimeValueQueue::getElements(TimeValueQueue *this, unsigned int *a2)
{
  v4 = TimeValueQueue::size(this);
  result = OUTLINED_FUNCTION_0_56(4 * v4);
  if (result)
  {
    for (i = 0; v4 != i; ++i)
    {
      result[i] = *(*this + 4 * ((i + *(this + 5)) % *(this + 4)));
    }

    *a2 = v4;
  }

  return result;
}

void *OUTLINED_FUNCTION_0_56(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

uint64_t setUserDictInputStream(uint64_t a1, const char *a2)
{
  if (!a2 || !*a2)
  {
    return 3;
  }

  for (i = 0; i < num_streams(a1); ++i)
  {
    v5 = stream_name(i);
    if (!strcmp(v5, a2))
    {
      break;
    }
  }

  v6 = 3;
  if (num_streams(a1) != i)
  {
    *(*(a1 + 208) + 120) = i;
    if (single_letter_stream(i))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

uint64_t UserDict::buildHashTable(UserDict *this, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 256;
  }

  v4 = 1;
  v5 = hashNew(v3, 1, 1);
  *(this + 513) = v5;
  if (!v5)
  {
    return 0;
  }

  *(this + 1028) = 1;
  return v4;
}

uint64_t UserDict::UserDict(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_49(a1);
  UserDict::loadDictionary(v2, v3, v4, v5, v6, v7, v8, v9);
  return a1;
}

uint64_t UserDict::loadDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_4_43();
  v20 = *MEMORY[0x277D85DE8];
  DictFile = UserDict::findDictFile(v11, v8, v19, v12, v13, v14, v15, v16);
  if (DictFile == -1)
  {
    return 1;
  }

  if (!DictFile)
  {
    return 0;
  }

  if (*(v9 + 513) || UserDict::buildHashTable(v9, (DictFile / 15)))
  {
    UserDict::loadHashTable(v9, v10, v19);
    strcpy(v9, v8);
    return 0;
  }

  return 2;
}

off_t UserDict::findDictFile(UserDict *this, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (fileFindInPath(a2, a3, a3, a4, a5, a6, a7, a8) && !stat(a3, &v10))
  {
    return v10.st_size;
  }

  else
  {
    return -1;
  }
}

uint64_t UserDict::loadHashTable(UserDict *a1, uint64_t a2, uint64_t a3)
{
  v10[72] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v10);
  Line = std::ifstream::open();
  while (UserDict::readNextLine(Line, v10, v9))
  {
    Line = UserDict::parseNextLine(a1, a2, v9, __s, v7);
    if (Line)
    {
      Line = UserDict::addOneEntry(a1, __s, v7);
    }
  }

  std::ifstream::close(v10);
  std::ifstream::~ifstream(v10);
  return 1;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 24;
  *a1 = MEMORY[0x277D82858] + 24;
  v3 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  std::istream::basic_istream[abi:ne200100](a1, (MEMORY[0x277D82808] + 8), a1 + 2);
  *a1 = v2;
  a1[53] = v3;
  MEMORY[0x27437DC70](a1 + 2);
  return a1;
}

void sub_26E75F028(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x27437DD60](v1);
  _Unwind_Resume(a1);
}

BOOL UserDict::readNextLine(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
  {
    return 0;
  }

  std::istream::getline[abi:ne200100](a2, a3, 704);
  return *a3 != 0;
}

uint64_t UserDict::parseNextLine(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4, uint64_t a5)
{
  while (1)
  {
    result = *a3;
    if (!*a3)
    {
      break;
    }

    if (!isspace(result))
    {
      v11 = *a3;
      if (!*a3)
      {
        return 0;
      }

      v12 = 0;
      do
      {
        if (v11 == 9 || v12 == 704)
        {
          break;
        }

        result = UserDict::proofCharacter(a1, a2, v11);
        if (!result)
        {
          return result;
        }

        *(a4 + v12) = a3[v12];
        v11 = a3[++v12];
      }

      while (v11);
      v13 = a4 + v12;
      *(a4 + v12) = 0;
      v14 = &a3[v12];
      do
      {
        v15 = v13;
        if (v13 <= a4)
        {
          break;
        }

        --v13;
      }

      while (isspace(*(v15 - 1)));
      *v15 = 0;
      while (1)
      {
        result = *v14;
        if (result != 9 && result != 32)
        {
          break;
        }

        ++v14;
      }

      if (*v14)
      {
        v16 = 0;
        do
        {
          if (v16 == 704)
          {
            break;
          }

          if (isspace(result))
          {
            v17 = 32;
          }

          else
          {
            result = UserDict::proofCharacter(a1, a2, v14[v16]);
            if (!result)
            {
              return result;
            }

            v17 = v14[v16];
          }

          *(a5 + v16) = v17;
          LODWORD(result) = v14[++v16];
        }

        while (result);
        v18 = 1 - v16;
        v19 = (a5 + v16 + 1);
        do
        {
          v20 = *(v19 - 2);
          --v19;
        }

        while (v20 == 32 && v18++ != 0);
        *v19 = 0;
        return 1;
      }

      return result;
    }

    ++a3;
  }

  return result;
}

uint64_t UserDict::addOneEntry(UserDict *this, const char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 < 0x81)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 129;
  }

  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v8)
  {
    return 2;
  }

  if (strlen(__s) < 0x81)
  {
    strcpy(v8, __s);
  }

  else
  {
    strncpy(v8, __s, 0x80uLL);
    if (strlen(__s) >= 0x80)
    {
      v8[128] = 0;
    }
  }

  v9 = strlen(a3);
  v10 = v9 < 0x201 ? v9 + 1 : 513;
  v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
  if (!v11)
  {
    return 2;
  }

  if (strlen(a3) < 0x201)
  {
    strcpy(v11, a3);
  }

  else
  {
    strncpy(v11, a3, 0x200uLL);
    if (strlen(a3) >= 0x200)
    {
      v11[512] = 0;
    }
  }

  inserted = hashInsertString(*(this + 513), v8, v11);
  result = 2;
  if (inserted)
  {
    *(this + 1028) = 2;
    return 0;
  }

  return result;
}

void std::ifstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

uint64_t *std::ifstream::~ifstream(uint64_t *a1)
{
  std::ifstream::~ifstream(a1, MEMORY[0x277D82808]);
  MEMORY[0x27437DD60](a1 + 53);
  return a1;
}

uint64_t std::istream::getline[abi:ne200100](void *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);

  return MEMORY[0x2821F7808](a1, a2, a3, v6);
}

int isspace(int _c)
{
  return __istype(_c, 0x4000uLL);
}

{
  return MEMORY[0x282202938](*&_c);
}

uint64_t UserDict::proofCharacter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v13[1] = 0;
  v11 = &v12;
  v10 = 0;
  v9 = &v10;
  v13[0] = a3;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  return non_unique_value(a2, *(*(a2 + 208) + 120), 0, v13, &v11, &v9, &v8, &v7, &v6, &v5, &v4);
}

uint64_t UserDict::saveDictionary(UserDict *this, const char *a2)
{
  v13[71] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(v13);
  std::ofstream::open();
  if (*(&v13[4] + *(v13[0] - 24)))
  {
    v10 = 1;
  }

  else
  {
    v4 = *(this + 513);
    if (v4)
    {
      if (hashIterConstruct(v12, v4))
      {
        do
        {
          v5 = hashIterString(v12);
          v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, v5);
          v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "\t");
          v8 = hashIterRef(v12);
          v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, v8);
          std::endl[abi:ne200100]<char,std::char_traits<char>>(v9);
        }

        while (hashIterNext(v12));
      }

      std::ofstream::close(v13);
      chmod(a2, 0x180u);
    }

    else
    {
      std::ofstream::close(v13);
      chmod(a2, 0x180u);
    }

    v10 = 0;
  }

  std::ofstream::~ofstream(v13);
  return v10;
}

void sub_26E75F680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::ofstream::~ofstream(va);
  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 24;
  *a1 = MEMORY[0x277D82860] + 24;
  v3 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  std::ostream::basic_ostream[abi:ne200100](a1, (MEMORY[0x277D82810] + 8), a1 + 1);
  *a1 = v2;
  a1[52] = v3;
  MEMORY[0x27437DC70](a1 + 1);
  return a1;
}

void sub_26E75F758(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x27437DD60](v1);
  _Unwind_Resume(a1);
}

void std::ofstream::close(void *a1)
{
  if (!std::filebuf::close())
  {
    v2 = (a1 + *(*a1 - 24));

    std::ios_base::setstate[abi:ne200100](v2, 4);
  }
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios::widen[abi:ne200100]((a1 + *(*a1 - 24)), 10);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *std::ofstream::~ofstream(uint64_t *a1)
{
  std::ofstream::~ofstream(a1, MEMORY[0x277D82810]);
  MEMORY[0x27437DD60](a1 + 52);
  return a1;
}

uint64_t UserDict::update(UserDict *this, const char *a2, const char *a3)
{
  OUTLINED_FUNCTION_4_43();
  v7 = *(v6 + 4104);
  if (!v7)
  {
    if (!UserDict::buildHashTable(v4, 256))
    {
      return 2;
    }

    v7 = *(v4 + 4104);
  }

  if (hashLookupString(v7, v5))
  {
    hashDeleteString(*(v4 + 4104), v5, 1, 1);
    if (!v3)
    {
      result = 0;
      *(v4 + 4112) = 2;
      return result;
    }
  }

  else if (!v3)
  {
    return 0;
  }

  return UserDict::addOneEntry(v4, v5, v3);
}

uint64_t UserDict::findFirst(UserDict *this, const char **a2, const char **a3)
{
  v4 = *(this + 513);
  if (!v4 || !hashIterConstruct(this + 4120, v4))
  {
    return 4;
  }

  *a2 = hashIterString(this + 4120);
  v7 = hashIterRef(this + 4120);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t UserDict::findNext(UserDict *this, const char **a2, const char **a3)
{
  OUTLINED_FUNCTION_4_43();
  if (!hashIterNext(v6 + 4120))
  {
    return 4;
  }

  *v5 = hashIterString(v4 + 4120);
  v7 = hashIterRef(v4 + 4120);
  result = 0;
  *v3 = v7;
  return result;
}

uint64_t UserDict::lookup(UserDict *this, char *a2)
{
  if (a2 && *a2 && (v2 = *(this + 513)) != 0)
  {
    return hashLookupString(v2, a2);
  }

  else
  {
    return 0;
  }
}

void DictionarySet::DictionarySet()
{
  OUTLINED_FUNCTION_0_57();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_43();
}

{
  OUTLINED_FUNCTION_0_57();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_5_43();
}

void DictionarySet::~DictionarySet(DictionarySet *this)
{
  OUTLINED_FUNCTION_0_57();
  if (*v2)
  {
    UserDict::~UserDict(*v2);
  }

  OUTLINED_FUNCTION_6_42();
  if (*(v1 + 8))
  {
    UserDict::~UserDict(*(v1 + 8));
  }

  OUTLINED_FUNCTION_6_42();
  if (*(v1 + 16))
  {
    UserDict::~UserDict(*(v1 + 16));
  }

  OUTLINED_FUNCTION_6_42();
  v3 = *(*(v1 + 32) + 208);
  if (**(v1 + 24) == *(v3 + 112))
  {
    *(v3 + 112) = 0;
  }
}

uint64_t UserDict::lookupAndTranslate(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 4104))
  {
    return 2;
  }

  if (!sync_in_stm(a2, *(a2[26] + 120), a3) || !sync_in_stm(a2, *(a2[26] + 120), a4) || !extract_string(a2, *(a2[26] + 120), a3, a4, (a1 + 4144), 80))
  {
    return 3;
  }

  v8 = hashLookupString(*(a1 + 4104), (a1 + 4144));
  if (!v8)
  {
    return 5;
  }

  v9 = v8;
  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, v9))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t UserDict::lookupUndo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (!*(a1 + 4144))
  {
    return 5;
  }

  del_two_point(a2, *(a2[26] + 120), a3, a4);
  *(a2[23] + 452) = 1;
  if (insert_string(a2, *(a2[26] + 120), a4, (a1 + 4144)))
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x27437DC80](a1 + 2);

  return std::istream::~istream();
}

int __istype(__darwin_ct_rune_t _c, unint64_t _f)
{
  if (_c <= 0x7F)
  {
    return (*(MEMORY[0x277D85DE0] + 4 * _c + 60) & _f) != 0;
  }

  else
  {
    return __maskrune(_c, _f) != 0;
  }
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x27437DC80](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t *std::istream::basic_istream[abi:ne200100](uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  a1[1] = 0;
  std::ios::init[abi:ne200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void std::ios::init[abi:ne200100](std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;
  a1[1].__fmtflags_ = -1;
}

uint64_t std::ios::widen[abi:ne200100](const std::ios_base *a1, uint64_t a2)
{
  std::ios_base::getloc(a1);
  v3 = std::use_facet[abi:ne200100]<std::ctype<char>>(&v6);
  v4 = (v3->__vftable[2].~facet_0)(v3, a2);
  std::locale::~locale(&v6);
  return v4;
}

uint64_t *std::ostream::basic_ostream[abi:ne200100](uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  std::ios::init[abi:ne200100]((a1 + *(*a1 - 24)), a3);
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x27437DCD0](v12, a1);
  if (v12[0] == 1)
  {
    v6 = (a1 + *(*a1 - 24));
    rdbuf = v6->__rdbuf_;
    fmtflags = v6->__fmtflags_;
    v9 = std::ios::fill[abi:ne200100](v6);
    if ((fmtflags & 0xB0) == 0x20)
    {
      v10 = a2 + a3;
    }

    else
    {
      v10 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(rdbuf, a2, v10, a2 + a3, v6, v9))
    {
      std::ios_base::setstate[abi:ne200100]((a1 + *(*a1 - 24)), 5);
    }
  }

  MEMORY[0x27437DCE0](v12);
  return a1;
}

void sub_26E760488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x27437DCE0](&a9, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v9 + *(*v9 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x26E76046CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::string::value_type __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if ((a3 - a2 < 1 || (*(*a1 + 96))(a1) == a3 - a2) && (v12 < 1 || ((std::string::__init(&v17, v12, __c), (v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v13 = &v17) : (v13 = v17.__r_.__value_.__r.__words[0]), v14 = (*(*v6 + 96))(v6, v13, v12), std::string::~string(&v17), v14 == v12)) && ((v15 = a4 - a3, v15 < 1) || (*(*v6 + 96))(v6, a3, v15) == v15))
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t std::ios::fill[abi:ne200100](const std::ios_base *a1)
{
  fmtflags = a1[1].__fmtflags_;
  if (fmtflags == -1)
  {
    fmtflags = std::ios::widen[abi:ne200100](a1, 32);
    a1[1].__fmtflags_ = fmtflags;
  }

  return fmtflags;
}

uint64_t OUTLINED_FUNCTION_1_52(uint64_t result)
{
  *(result + 4104) = 0;
  *(result + 4112) = 0;
  *result = 0;
  *(result + 4144) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_49(uint64_t result)
{
  *(result + 4104) = 0;
  *(result + 4112) = 0;
  *result = 0;
  *(result + 4144) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_43()
{

  operator new();
}

void OUTLINED_FUNCTION_6_42()
{

  JUMPOUT(0x27437DD90);
}

void *settvar_s()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_53();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_44();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_l()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_53();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_44();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_lng()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_53();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_44();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_i()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_53();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_44();
  return vinitflds(v1, v2, v3, v4);
}

void *settvar_f()
{
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_1_53();
  if (v0)
  {
    OUTLINED_FUNCTION_9_41();
  }

  v1 = OUTLINED_FUNCTION_4_44();
  return vinitflds(v1, v2, v3, v4);
}

void settvar_v(uint64_t a1, unsigned __int8 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_1_53();
  if (v6)
  {
    save_var(a1, a2);
  }

  v7[0] = 0;
  v7[1] = 0;
  vinitloc_new(a1, v7, a3);
  vinitflds(a1, *a2, a2 + 16, v7[0]);
  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_39();
  }
}

void copyvar(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_1_53();
  if (v6)
  {
    save_var(a1, a2);
  }

  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  vinitloc_new(a1, v8, a2);
  vinitloc_new(a1, v7, a3);
  vassign(a1, v8, v7);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_39();
  }
}

void c_assvar(uint64_t a1, __int16 *a2)
{
  OUTLINED_FUNCTION_1_53();
  if (v4)
  {
    save_var(v3, a2);
  }

  if ((*a2 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_11_39();
  }
}

void assok(uint64_t a1, __int16 *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

void noass(uint64_t a1, __int16 *a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

__n128 savescptr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 192);
  if (*(v6 + 8096))
  {
    save_var(a1, a3);
    v6 = *(a1 + 192);
  }

  *(a3 + 8) = *(v6 + 8080);
  v7 = *(a1 + 200);
  v8 = *(v7 + 288);
  v9 = *(v7 + 1720) - v8;
  v10 = *(v7 + 1728);
  *v9 = 3;
  *(v9 + 8) = a2;
  v11 = *(v7 + 284);
  v12 = v9 - v11;
  *(v7 + 1720) = v12;
  *(v7 + 1728) = v10 - (v8 + v11);
  *v12 = 1;
  result = *(v6 + 8080);
  *(v12 + 8) = result;
  return result;
}

uint64_t savetok(uint64_t a1, __int16 *a2)
{
  v16[0] = 0;
  v16[1] = 0;
  v15 = 0;
  v3 = *(a1 + 192);
  v4 = *(v3 + 8080);
  v5 = *(v3 + 8088);
  v6 = *(v4 + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  if (!v6)
  {
LABEL_4:
    v8 = 1;
    result = 1;
    if (*a2 < 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  while ((*v6 & 2) != 0)
  {
    v6 = *(v6 + 8 * v5 + 24) & 0xFFFFFFFFFFFFFFFCLL;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v10 = OUTLINED_FUNCTION_4_44();
  vinitloc_new(v10, v11, v12);
  v13 = *(a1 + 192) + 4096;
  LOWORD(v15) = *(*(a1 + 192) + 8088);
  v14 = (v6 + 16);
  BYTE2(v15) = 0;
  if (*(v13 + 4000))
  {
    vpush_var(a1, v16);
  }

  vassign(a1, v16, &v14);
  v8 = 0;
  result = 0;
  if ((*a2 & 0x80000000) == 0)
  {
LABEL_5:
    a2[1] = -1;
    return v8;
  }

  return result;
}

void dur_ass(uint64_t a1, unsigned __int8 a2, __int16 *a3, uint64_t a4)
{
  v6 = a2;
  if (vrange_2pt(a1, (a1 + 112), a1 + 144, a2, a4))
  {
    if (*a3 < 0)
    {
      return;
    }
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v10 = 0;
    v12[0] = &v10;
    v12[1] = 65533;
    v7 = OUTLINED_FUNCTION_4_44();
    vinitloc_new(v7, v8, v9);
    vassign(a1, v12, v11);
    vdur_ass(a1, (a1 + 112), (a1 + 144), v6, v10);
    if (*a3 < 0)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_11_39();
}

void setscan_l(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_6_43(a1, a2, a3) && *(v3 + 112))
  {
    OUTLINED_FUNCTION_2_50();
    if (v5)
    {
      OUTLINED_FUNCTION_0_58(v4);
      *v6 = 256;
    }
  }
}

uint64_t vtstsnc_tv(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {
    return 0;
  }

  v4 = vnormalize(a1, a2, a3);
  result = 1;
  if (v4 >= 3)
  {
    *(a2 + 24) = 1;
    return 0;
  }

  return result;
}

void setscan_r(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_6_43(a1, a2, a3) && *(v3 + 112))
  {
    OUTLINED_FUNCTION_2_50();
    if (v5)
    {
      OUTLINED_FUNCTION_0_58(v4);
      *v6 = 257;
    }
  }
}

uint64_t lpta_loadp_setscan_l(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_3_46(a1, a2, a3))
  {
    if (*v4)
    {
      OUTLINED_FUNCTION_2_50();
      if (v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_0_58(v6);
        *v8 = 256;
      }
    }
  }

  return v3;
}

uint64_t lpta_loadp_setscan_r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_3_46(a1, a2, a3))
  {
    if (*v4)
    {
      OUTLINED_FUNCTION_2_50();
      if (v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_0_58(v6);
        *v8 = 257;
      }
    }
  }

  return v3;
}

uint64_t rpta_loadp_setscan_l(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_5_44(a1, a2, a3))
  {
    if (*(v4 + 112))
    {
      OUTLINED_FUNCTION_10_41();
      if (v7)
      {
        OUTLINED_FUNCTION_8_41(v6);
        *v8 = 256;
      }
    }
  }

  return v3;
}

uint64_t rpta_loadp_setscan_r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_5_44(a1, a2, a3))
  {
    if (*(v4 + 112))
    {
      OUTLINED_FUNCTION_10_41();
      if (v7)
      {
        OUTLINED_FUNCTION_8_41(v6);
        *v8 = 257;
      }
    }
  }

  return v3;
}

void setscan_nof_l(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!OUTLINED_FUNCTION_6_43(a1, a2, a3) && *(v3 + 112))
  {
    OUTLINED_FUNCTION_2_50();
    if (v5)
    {
      OUTLINED_FUNCTION_0_58(v4);
      *v6 = 0;
    }
  }
}

uint64_t setscan_nof_r(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (OUTLINED_FUNCTION_6_43(a1, a2, a3) || !*(v3 + 112))
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_50();
  result = 1;
  if (v6)
  {
    OUTLINED_FUNCTION_0_58(v5);
    *v8 = v7;
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_46(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = *(a2 + 8);
  *(a1 + 136) = 1;
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112, a3);
}

uint64_t OUTLINED_FUNCTION_5_44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 168) = 1;
  *(a1 + 144) = *(a2 + 8);
  *(a1 + 128) = 0;

  return vtstsnc_tv(a1, a1 + 112, a3);
}

uint64_t OUTLINED_FUNCTION_6_43(__int16 *a1, uint64_t a2, uint64_t a3)
{

  return vtstsnc_tv(a1, (a1 + 56), a3);
}

void *OUTLINED_FUNCTION_9_41()
{

  return save_var(v1, v0);
}

uint64_t chstream(void *a1, uint64_t a2, unsigned int a3)
{
  while (1)
  {
    v6 = a1[24];
    if (*(*(v6 + 8080) + 8 * (*(v6 + 9084) + a3)))
    {
      break;
    }

    v7 = 1;
    if (!vscanadv(a1, 0, 1))
    {
      return v7;
    }
  }

  v7 = 0;
  v8 = a1[25];
  v9 = *(v8 + 288);
  v10 = *(v8 + 1720) - v9;
  *v10 = 3;
  v11 = *(v8 + 1728);
  *(v10 + 8) = a2;
  v12 = *(v8 + 284);
  v13 = v10 - v12;
  *(v8 + 1720) = v13;
  *(v8 + 1728) = v11 - (v9 + v12);
  *v13 = 1;
  *(v13 + 8) = *(v6 + 8080);
  *(a1[35] + *(a1[33] + a3)) = 1;
  *(a1[24] + 8088) = a3;
  return v7;
}

BOOL conj_merge(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = visleft(a1, *(*(a1 + 192) + 8080), v4);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (v5)
  {
    v8 = v6 + 4096;
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v8 + 3992) + 24] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v8 + 3993))
    {
      return 0;
    }

    goto LABEL_17;
  }

  v9 = visright(a1, v7, v4);
  v10 = *(a1 + 192);
  v7 = *(v10 + 8080);
  if (v9)
  {
    while (v4 != v7)
    {
      if (!v4 || (*v4 & 2) == 0)
      {
        return 1;
      }

      v4 = (*&v4[8 * *(v10 + 9084) + 8 * *(v10 + 8088)] & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (*(v10 + 8089) != 1)
    {
      return 0;
    }

LABEL_17:
    *(a2 + 8) = v7;
    return 0;
  }

  return v7 != v4;
}

uint64_t proj_def_mult(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = a2;
  if (a2)
  {
    do
    {
      *(v6 + 136) = 1;
      *(v6 + 112) = *(a4 + 8);
      *(v6 + 128) = 0;
      ++a3;
      result = proj_def();
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t proj_def()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v2, v3, v4) || (result = vdef_proj(v0, *(v0 + 112), v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t proj_l(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!vsync_tv(a1, (a1 + 72), a3) || (v4 = OUTLINED_FUNCTION_19_31(), result = vproj_l(v4, v5, v6, v7), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t proj_r()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v1, v2, v3) || (v4 = OUTLINED_FUNCTION_19_31(), result = vproj_r(v4, v5, v6, v7), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t merge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!vsync_tv(a1, a1 + 112, a3) || !vsync_tv(a1, a1 + 144, v4))
  {
    forceErrorBacktrack(a1);
  }

  if (!vmergable(a1, *(a1 + 112), *(a1 + 144)))
  {
    forceErrorBacktrack(a1);
  }

  v6 = *(a1 + 112);
  v7 = *(a1 + 144);

  return vmerge(a1, v6, v7, v5);
}

uint64_t initdelta(uint64_t a1, unsigned int a2, char *a3)
{
  if (a2)
  {
    if (*(a1 + 288) == a2)
    {
      freeDeltaHeapTo(a1, *(*(a1 + 200) + 8), 0);
      deltaReinit(a1, 1);
    }

    else
    {
      v7 = a2;
      do
      {
        if (!vinit_stm(a1, *a3))
        {
          forceErrorBacktrack(a1);
        }

        --v7;
        ++a3;
      }

      while (v7);
    }
  }

  else
  {
    for (i = 0; i < *(a1 + 288); ++i)
    {
      if (!vinit_stm(a1, i))
      {
        forceErrorBacktrack(a1);
      }
    }
  }

  return vscaninit(a1);
}

uint64_t delete_1pt()
{
  OUTLINED_FUNCTION_5_45();
  if (!vsync_tv(v2, v3, v4) || (result = vdel_1pt(v0, v1, *(v0 + 112)), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

uint64_t delete_2pt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v6, v7, v8, v9, v10))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_42();
  vdel_2pt(a1, v4, v12, v13);
  return 0;
}

uint64_t mark_v(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, uint64_t a5)
{
  v6 = a3;
  v7 = a2;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v9, v10, v11, v12, v13))
  {
    v14 = 1;
    result = 1;
    if (*a4 < 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  v32 = 0;
  v33 = 0;
  vinitloc_new(a1, &v32, a4);
  if (v33 == *&vstmtbl[12 * v7 + 1][40 * v6 + 30])
  {
    v24 = OUTLINED_FUNCTION_12_39(v16, v17, v18, v19, v20, v21, v22, v23, v32);
    if (v33 >= 0xFFFAu)
    {
      OUTLINED_FUNCTION_12_39(v24, v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v14 = 0;
  result = 0;
  if ((*a4 & 0x80000000) == 0)
  {
LABEL_3:
    a4[1] = -1;
    return v14;
  }

  return result;
}

uint64_t mark_s()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59();
  if (v7 == -1)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_l()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59();
  if (v7 == -2)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_lng()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59();
  if (v7 == -3)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_i()
{
  OUTLINED_FUNCTION_4_45();
  v13 = v0;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v1, v2, v3, v4, v5))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59();
  if (v7 == -4)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v8, v9, v10, v11, v12, &v13);
  }

  return 0;
}

uint64_t mark_f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_4_45();
  v17 = v4;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v5, v6, v7, v8, v9))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_59();
  if (v11 == -5)
  {
    OUTLINED_FUNCTION_14_37();
    OUTLINED_FUNCTION_7_43(v12, v13, v14, v15, v16, &v17);
  }

  return 0;
}

uint64_t insert_2pt(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v6 = a3;
  OUTLINED_FUNCTION_1_54();
  if (vrange_2pt(v9, v10, v11, v12, v13))
  {
    return 1;
  }

  visnonseq(a1, a2, a1[14], a1[18]);
  if (ins_tokens(a1, a2, a4, v6))
  {
    return 0;
  }

  else
  {
    return 245;
  }
}

void insert_2ptv()
{
  OUTLINED_FUNCTION_3_47();
  if (vrange_2pt(v5, (v5 + 112), v5 + 144, v3, v6))
  {
    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_42();
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_40();
    if (v4 < 0 && (v7 = STMTYP(v3), v4 != v7))
    {
      STMTYP(v3);
      OUTLINED_FUNCTION_10_42();
      switch(v18)
      {
        case 0:
          v19 = v1[24];
          v20 = 8256;
          goto LABEL_18;
        case 1:
        case 3:
          v19 = v1[24];
          v20 = 8242;
          goto LABEL_18;
        case 2:
          v19 = v1[24];
          v20 = 8200;
          goto LABEL_18;
        case 4:
          v19 = v1[24];
          v20 = 8194;
LABEL_18:
          v31 = v19 + v20;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_2_51(vstmtbl, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_16_35(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_8_42();
      v17 = &v31;
    }

    else
    {
      OUTLINED_FUNCTION_6_44(v7, v8, v9, v10, v11, v12, v13, v14, v29);
      OUTLINED_FUNCTION_8_42();
      v17 = &v29;
    }

    if (!vins_tok(v1, v2, v15, v16, v17))
    {
      forceErrorBacktrack(v1);
    }

    if ((*v0 & 0x80000000) == 0)
    {
      OUTLINED_FUNCTION_9_42();
    }
  }
}

uint64_t insert_l(uint64_t a1, char a2)
{
  if (!vrange_l() || (result = OUTLINED_FUNCTION_15_37(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t insert_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_54();
  if (!vrange_r() || (result = OUTLINED_FUNCTION_15_37(), !result))
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void insert_lv()
{
  OUTLINED_FUNCTION_3_47();
  if (!vrange_l())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_40();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_42();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        goto LABEL_16;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        goto LABEL_16;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        goto LABEL_16;
      case 4:
        v17 = v1[24];
        v18 = 8194;
LABEL_16:
        v29 = v17 + v18;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_2_51(vstmtbl, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_16_35(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_8_42();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_44(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_42();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

void insert_rv()
{
  OUTLINED_FUNCTION_3_47();
  if (!vrange_r())
  {
    forceErrorBacktrack(v1);
  }

  OUTLINED_FUNCTION_11_40();
  if (v4 < 0 && (v5 = STMTYP(v3), v4 != v5))
  {
    STMTYP(v3);
    OUTLINED_FUNCTION_10_42();
    switch(v16)
    {
      case 0:
        v17 = v1[24];
        v18 = 8256;
        break;
      case 1:
      case 3:
        v17 = v1[24];
        v18 = 8242;
        break;
      case 2:
        v17 = v1[24];
        v18 = 8200;
        break;
      case 4:
        v17 = v1[24];
        v18 = 8194;
        break;
      default:
        forceErrorBacktrack(v1);
    }

    OUTLINED_FUNCTION_2_51(vstmtbl, v27, v28, v17 + v18, v30, v31);
    OUTLINED_FUNCTION_16_35(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_8_42();
    v15 = &v29;
  }

  else
  {
    OUTLINED_FUNCTION_6_44(v5, v6, v7, v8, v9, v10, v11, v12, v27);
    OUTLINED_FUNCTION_8_42();
    v15 = &v27;
  }

  if (!vins_tok(v1, v2, v13, v14, v15))
  {
    forceErrorBacktrack(v1);
  }

  if ((*v0 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t generate()
{
  OUTLINED_FUNCTION_5_45();
  if (!vprt_range(v2, v3, (v2 + 72)) || (result = vgen(v0, v0 + 112, (v0 + 144), *(v0 + 192) + 8160, v1), !result))
  {

    forceErrorBacktrack(v0);
  }

  return result;
}

void gendef_framedur()
{
  OUTLINED_FUNCTION_18_33();
  OUTLINED_FUNCTION_13_39(v1, v2, v3, v4, v5);
  vassign(v0, &v7, v8);
  OUTLINED_FUNCTION_20_29(8152);
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t gendef_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4040) = a2;
  *(v2 + 4056) |= 2u;
  return result;
}

uint64_t gendef_params()
{
  OUTLINED_FUNCTION_17_34();
  *(v2 + 4041) = v4;
  if ((*(v2 + 4056) & 4) != 0)
  {
    v5 = *(v3 + 8144);
  }

  else
  {
    v5 = dynaBufNew(v1);
    *(v3 + 8144) = v5;
  }

  for (result = dynaBufReset(v5); v1; --v1)
  {
    v7 = *v0++;
    result = dynaBufAddChar(*(v3 + 8144), v7, 0);
  }

  *(v2 + 4056) |= 4u;
  return result;
}

void gencur_framedur()
{
  OUTLINED_FUNCTION_18_33();
  OUTLINED_FUNCTION_13_39(v1, v2, v3, v4, v5);
  vassign(v0, &v7, v8);
  OUTLINED_FUNCTION_20_29(8184);
  if ((v6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_9_42();
  }
}

uint64_t gencur_timestm(uint64_t result, char a2)
{
  v2 = *(result + 192) + 4096;
  *(v2 + 4072) = a2;
  *(v2 + 4088) |= 2u;
  return result;
}

uint64_t gencur_params()
{
  OUTLINED_FUNCTION_17_34();
  *(v2 + 4073) = v4;
  if ((*(v2 + 4088) & 4) != 0)
  {
    v5 = *(v3 + 8176);
  }

  else
  {
    v5 = dynaBufNew(v1);
    *(v3 + 8176) = v5;
  }

  for (result = dynaBufReset(v5); v1; --v1)
  {
    v7 = *v0++;
    result = dynaBufAddChar(*(v3 + 8176), v7, 0);
  }

  *(v2 + 4088) |= 4u;
  return result;
}

void OUTLINED_FUNCTION_2_51(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6)
{
  a6 = *(*(a1 + 96 * v8 + 8) + 32);

  vinitloc_new(v7, &a2, v6);
}

void OUTLINED_FUNCTION_6_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  vinitloc_new(v10, &a9, v9);
}

uint64_t OUTLINED_FUNCTION_7_43(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  return vmark(v8, v7, v6, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_12_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = v11[14];
  v14 = v11[18];

  return vmark(v11, v10, v9, v13, v14, a9);
}

void OUTLINED_FUNCTION_13_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  vinitloc_new(a1, va, v5);
}

uint64_t OUTLINED_FUNCTION_15_37()
{

  return ins_tokens(v0, v3, v1, v2);
}

void OUTLINED_FUNCTION_16_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  vassign(v10, va, &a9);
}

uint64_t ccode_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x2460uLL, 0x10F004041F5ADEFuLL);
  *(a1 + 192) = v2;
  bzero(v2, 0x2460uLL);

  return ccode_misc_new(a1);
}

void ccode_delete(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 192);
    if (v2)
    {
      bzero(v2, 0x2460uLL);
      free(*(a1 + 192));
      *(a1 + 192) = 0;
    }
  }
}

void forceErrorBacktrack(uint64_t a1)
{
  v1 = *(a1 + 192);
  *(v1 + 8012) = 1;
  longjmp(*(v1 + 8016), 1);
}

void get_parm(uint64_t a1, uint64_t a2, __int16 *a3, __int16 a4)
{
  v18[0] = 0;
  v18[1] = 0;
  *a2 = a4;
  switch(a4)
  {
    case -6:
      *(a2 + 8) = *(a3 + 1);
      v6 = *(a1 + 192);
      v7 = *v6;
      if (v7 <= 998)
      {
        *v6 = v7 + 1;
        *&v6[2 * v7 + 2] = a2;
      }

      return;
    case -5:
      OUTLINED_FUNCTION_2_52();
      if (v10)
      {
        v16 = OUTLINED_FUNCTION_3_48();
        goto LABEL_28;
      }

      if (v15 == 65532)
      {
        v16 = a3[1];
        goto LABEL_28;
      }

      if (v15 == 65533)
      {
        v16 = COERCE__INT64(OUTLINED_FUNCTION_3_48());
LABEL_28:
        *(a2 + 8) = v16;
        return;
      }

      if ((v15 & 0x80000000) == 0)
      {
        vinitloc_new(v14, v18, a3);
        *(a2 + 8) = *v18[0];
        goto LABEL_31;
      }

      return;
    case -4:
      OUTLINED_FUNCTION_2_52();
      if (v10)
      {
        v17 = OUTLINED_FUNCTION_3_48();
      }

      else
      {
        if (v9 != 65532)
        {
          if (v9 == 65533)
          {
            *(a2 + 2) = *(a3 + 1);
          }

          else if ((v9 & 0x80000000) == 0)
          {
            vinitloc_new(v8, v18, a3);
            *(a2 + 2) = *v18[0];
            goto LABEL_31;
          }

          return;
        }

        LOWORD(v17) = a3[1];
      }

      *(a2 + 2) = v17;
      return;
    case -3:
      OUTLINED_FUNCTION_2_52();
      if (v10)
      {
        v13 = OUTLINED_FUNCTION_3_48();
        goto LABEL_24;
      }

      if (v12 == 65532)
      {
        v13 = a3[1];
        goto LABEL_24;
      }

      if (v12 == 65533)
      {
        v13 = *(a3 + 1);
LABEL_24:
        *(a2 + 8) = v13;
        return;
      }

      if ((v12 & 0x80000000) == 0)
      {
        vinitloc_new(v11, v18, a3);
        *(a2 + 8) = *v18[0];
LABEL_31:
        if ((*a3 & 0x80000000) == 0)
        {
          a3[1] = -1;
        }
      }

      return;
    default:
      return;
  }
}

void vinitloc_new(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v5 = *a3;
  if (v5 < 0)
  {
    *(a2 + 8) = v5;
    v9 = v5 + 6;
    if (v9 > 3u)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    v10 = (a3 + *&asc_26E780248[8 * v9]);
    goto LABEL_7;
  }

  v6 = a3[1];
  if (v6 == -1)
  {
    v8 = 0;
    *(a2 + 8) = v5;
    v10 = a3 + 8;
LABEL_7:
    *a2 = v10;
    goto LABEL_9;
  }

  *a2 = (*&vstmtbl[12 * *a3 + 2][8 * v6])(a3 + 8);
  v7 = &vstmtbl[12 * *a3 + 1][40 * v6];
  *(a2 + 8) = *(v7 + 15);
  v8 = v7[32];
LABEL_9:
  *(a2 + 10) = v8;
}

uint64_t push_ptr_init(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = -6;
  v2 = *(a1 + 192);
  v3 = *v2;
  if (v3 > 998)
  {
    return 0;
  }

  *v2 = v3 + 1;
  *&v2[2 * v3 + 2] = a2;
  return 1;
}

uint64_t set_saved_ptrs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 8 * (*(result + 16) & ~(*(result + 16) >> 31));
  while (v4 != v3)
  {
    v5 = *(*(result + 24) + v3);
    if (*v5 == a2)
    {
      *v5 = a3;
    }

    v3 += 8;
  }

  v6 = *(result + 192);
  v7 = v6[2002];
  v10 = *v6;
  v8 = v6 + 2;
  v9 = v10;
  while (v9 >= 1)
  {
    for (i = v7; i < v9; ++i)
    {
      v12 = *&v8[2 * i];
      if (*(v12 + 8) == a2)
      {
        *(v12 + 8) = a3;
      }
    }

    v9 = v7 - 2;
    v7 = v8[2 * v7 - 2];
  }

  return result;
}

uint64_t for_loop_preamble(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 192);
  v6 = v5 + 4096;
  *(v5 + 8056) = a3;
  *(v5 + 8064) = a2;
  *(v5 + 8096) = 0;
  *(a1 + 136) = 1;
  v7 = *(a5 + 8);
  *(a1 + 112) = v7;
  if (!v7 || (*(v7 + 8 * (*(v5 + 9084) + a4)) & 1) == 0)
  {
    return 0;
  }

  *(v5 + 8080) = v7;
  *(v5 + 8088) = a4;
  v8 = 1;
  *(v6 + 3994) = 1;
  *(*(a1 + 280) + *(*(a1 + 264) + a4)) = 1;
  return v8;
}

uint64_t vback(void *a1, int a2)
{
  if (*(a1[24] + 8012))
  {
    return -1;
  }

  while (2)
  {
    v5 = a1[25];
    v6 = *(v5 + 1720);
    switch(*v6)
    {
      case 0:
        OUTLINED_FUNCTION_0_60(v5);
        if (a2)
        {
          continue;
        }

        break;
      case 1:
        OUTLINED_FUNCTION_0_60(v5);
        *(a1[24] + 8080) = *(v6 + 8);
        continue;
      case 2:
        v7 = *(v5 + 280);
        v8 = *(v6 + 16);
        v9 = v7 + ((v8 - 1) | 3) + 1;
        *(v5 + 1728) += v9;
        *(v5 + 1720) = v6 + v9;
        memcpy(*(v6 + 8), (v6 + v7), v8);
        continue;
      case 3:
        OUTLINED_FUNCTION_0_60(v5);
        if (a2 || !vscanadv(a1, 0, 1))
        {
          continue;
        }

        break;
      case 4:
        OUTLINED_FUNCTION_0_60(v5);
        a2 -= a2 > 0;
        continue;
      case 5:
        OUTLINED_FUNCTION_0_60(v5);
        *(v10 + 1760) = *(v6 + 8);
        continue;
      case 6:
        OUTLINED_FUNCTION_0_60(v5);
        ++a2;
        continue;
      default:
        return -1;
    }

    break;
  }

  return *(v6 + 8);
}

uint64_t vinitrun(int *a1)
{
  v2 = 0;
  *(*(a1 + 24) + 8121) = 0;
  while (1)
  {
    v3 = *(a1 + 288);
    if (v2 >= v3)
    {
      break;
    }

    *(*(a1 + 31) + v2) = 0;
    *(*(a1 + 33) + v2) = *(a1 + 288);
    *(*(a1 + 35) + v2++) = 0;
  }

  *(*(a1 + 35) + v3) = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 25);
  v7 = *v4;
  v6 = v4[1];
  v8 = *(a1 + 12);
  *(*(a1 + 11) + 8) = v7;
  *(v8 + 8) = v6;
  *(v5 + 8152) = 0;
  *(v5 + 8184) = 0;
  *(v5 + 9296) = 0;
  v9 = *(v5 + 8024);
  if (v9 == 255 || v9 == 249)
  {
    result = vdltinit(a1, 1);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 25);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(a1 + 12);
    *(*(a1 + 11) + 8) = v13;
    *(v14 + 8) = v12;
  }

  v15 = 0;
  v16 = 0;
  *(*(a1 + 23) + 452) = 0;
  while (v16 < *a1)
  {
    OUTLINED_FUNCTION_1_55();
    ++v16;
    v15 += 16;
  }

  return 1;
}

void *save_var(uint64_t a1, __int16 *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  vinitloc_new(a1, v4, a2);
  return vpush_var(a1, v4);
}

uint64_t ventproc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 104) = 0;
  if (!a2)
  {
    return 1;
  }

  v7 = *(a1 + 192);
  v8 = *v7;
  if (v8 > 998)
  {
    return 1;
  }

  result = 0;
  v10 = v7[2002];
  *v7 = v8 + 1;
  *&v7[2 * v8 + 2] = v10;
  v11 = *(a1 + 192);
  *(v11 + 8008) = *v11;
  *a2 = *(v11 + 8104);
  *(a2 + 32) = *(v11 + 8056);
  v12 = *(a1 + 192);
  v13 = *(a1 + 200);
  *(a2 + 48) = *(v12 + 8096);
  v14 = *(v13 + 1720);
  *(a2 + 56) = *(v12 + 8112);
  *(a2 + 64) = v14;
  *(a2 + 72) = *(v13 + 1760);
  *(a2 + 80) = *(v12 + 8121);
  *(a2 + 88) = *(v12 + 8016);
  *(a2 + 96) = *(v12 + 8080);
  v15 = *(a1 + 128);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = v15;
  v16 = *(a1 + 160);
  *(a2 + 144) = *(a1 + 144);
  *(a2 + 160) = v16;
  v17 = *(a1 + 192);
  v18 = *(a1 + 200);
  *(a2 + 176) = *(v17 + 8120);
  *(a2 + 177) = *(v18 + 272);
  v19 = *(v18 + 276);
  v20 = *(v18 + 1720) - v19;
  LODWORD(v14) = *(v18 + 1728);
  *(v18 + 1720) = v20;
  *(v18 + 1728) = v14 - v19;
  *v20 = 7;
  v21 = *(a1 + 248);
  *(a1 + 248) = a4;
  v22 = *(a1 + 264);
  *(v20 + 8) = a2;
  *(v20 + 16) = v22;
  *(a1 + 264) = a3;
  v23 = *(a1 + 280);
  *(v20 + 24) = v21;
  *(v20 + 32) = v23;
  *(a1 + 280) = a5;
  *(v17 + 8112) = v20;
  *(v17 + 8016) = a6;
  return result;
}

BOOL vretproc(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (*v2 < 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(v2 + 8008) - 1;
    *v2 = v4;
    *(v2 + 8008) = *(v2 + 8 * v4 + 8);
  }

  v5 = *(v2 + 8112);
  v6 = *(v5 + *(*(a1 + 200) + 276));
  freeDeltaStackTo(a1, v5);
  v7 = *(a1 + 192);
  v8 = *(*(a1 + 200) + 1720);
  v9 = v8[2];
  *(a1 + 248) = v8[3];
  v10 = *(v5 + 8);
  *(a1 + 264) = v9;
  *(a1 + 280) = v8[4];
  *(v7 + 8104) = *v10;
  *(v7 + 8056) = *(v10 + 32);
  v11 = *(a1 + 192);
  *(v11 + 8096) = *(v10 + 48);
  v12 = *(v10 + 64);
  *(v11 + 8112) = *(v10 + 56);
  freeDeltaStackTo(a1, v12);
  v13 = *(a1 + 192);
  *(*(a1 + 200) + 1760) = *(v10 + 72);
  *(v13 + 8121) = *(v10 + 80);
  *(v13 + 8016) = *(v10 + 88);
  *(v13 + 8080) = *(v10 + 96);
  v14 = *(v10 + 128);
  *(a1 + 112) = *(v10 + 112);
  *(a1 + 128) = v14;
  v15 = *(v10 + 160);
  *(a1 + 144) = *(v10 + 144);
  *(a1 + 160) = v15;
  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  *(v16 + 8120) = *(v10 + 176);
  *(v17 + 272) = *(v10 + 177);
  *(v16 + 9296) = 0;
  if (v6 == 8)
  {
    *(*(a1 + 184) + 432) = 234;
    return *(v16 + 8012) != 0;
  }

  else if (*(v16 + 8012))
  {
    forceErrorBacktrack(a1);
  }

  return v3;
}

uint64_t freeDeltaStackTo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t vprt_var(uint64_t result, uint64_t a2, __int16 *a3)
{
  v3 = a2;
  v4 = result;
  v9 = *MEMORY[0x277D85DE8];
  switch(*a3)
  {
    case -6:
      v5 = *(a3 + 1);
      if (v5 == 1)
      {
        v6 = "dangling";
      }

      else
      {
        if (v5)
        {
          absoluteSyncNum(result, v5);
          goto LABEL_15;
        }

        v6 = "NULL";
      }

      return vf_puts(result, v3, v6, 1);
    case -5:
      __sprintf_chk(__s1, 0, 0x50uLL, "%f");
      return vf_puts(v4, v3, __s1, 1);
    case -4:
LABEL_15:
      __sprintf_chk(__s1, 0, 0x50uLL, "%d");
      return vf_puts(v4, v3, __s1, 1);
    case -3:
      __sprintf_chk(__s1, 0, 0x50uLL, "%ld");
      return vf_puts(v4, v3, __s1, 1);
    default:
      v7 = a3[1];
      if (v7 == 255)
      {
        return result;
      }

      disptok(result, a3 + 16, *a3, v7, __s1);
      if (__s1[0] == 92)
      {
        cleanLiteral(__s1, 0, 0);
      }

      return vf_puts(v4, v3, __s1, 1);
  }
}

void initGlobalVars(int *result)
{
  v2 = 0;
  v3 = result[4];
  while (v2 < v3)
  {
    **(*(result + 3) + 8 * v2++) = 0;
  }

  v4 = 0;
  for (i = 0; i < *result; ++i)
  {
    OUTLINED_FUNCTION_1_55();
    v4 += 16;
  }

  v6 = 0;
  v7 = 8 * (result[1] & ~(result[1] >> 31));
  while (v7 != v6)
  {
    **(*(result + 5) + v6) = 0;
    v6 += 8;
  }

  v8 = 0;
  v9 = 8 * (result[2] & ~(result[2] >> 31));
  while (v9 != v8)
  {
    **(*(result + 6) + v8) = 0;
    v8 += 8;
  }

  v10 = 0;
  v11 = 8 * (result[3] & ~(result[3] >> 31));
  while (v11 != v10)
  {
    **(*(result + 7) + v10) = 0;
    v10 += 8;
  }
}

uint64_t runtime_new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    init_new(result);
    ccode_new(v1);
    delta_lib_new(v1);
    dlang_new(v1);
  }

  return result;
}

double runtime_delete(uint64_t a1)
{
  if (a1)
  {
    init_delete(a1);
    ccode_delete(a1);
    delta_lib_delete(a1);
    dlang_delete(a1);
    logio_delete(a1);
    eloqc_delete(a1);
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_1_55()
{
  v4 = *(v0 + 32) + v1;
  v5 = *v4;
  v6 = *(v4 + 12);
  *v5 = *(v4 + 8);
  v5[1] = v2;

  bzero(v5 + 8, v6);
}

uint64_t startloop(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 192) + 8096) = 0;
  return result;
}

uint64_t clearDeltaStackBack(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_0(a1, v1);
}

uint64_t forall_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  result = OUTLINED_FUNCTION_11_41();
  if (result)
  {
    OUTLINED_FUNCTION_1_56();
    *(v8 + v7) = 1;
    return OUTLINED_FUNCTION_2_53();
  }

  return result;
}

uint64_t forall_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_20_30(v7, v8, v9, v10);
  OUTLINED_FUNCTION_6_45();
  if (v12 || (*v11 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_20_30(result, v14, v15, v16);
  OUTLINED_FUNCTION_6_45();
  if (v12 || (*v17 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_61();
}

uint64_t forall_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_20_30(v6, v7, v8, v9);
  OUTLINED_FUNCTION_6_45();
  if (v11 || (*v10 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (result)
  {
    OUTLINED_FUNCTION_1_56();
    *(v14 + v13) = 1;
    return OUTLINED_FUNCTION_2_53();
  }

  return result;
}

uint64_t forall_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    result = OUTLINED_FUNCTION_11_41();
    if (result)
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forall_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_20_30(v9, v10, v11, v12);
    OUTLINED_FUNCTION_5_46();
    if (v14 || (*v13 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_41();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_20_30(result, v15, v16, v17);
    OUTLINED_FUNCTION_5_46();
    if (v14 || (*v18 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forall_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_20_30(v8, v9, v10, v11);
    OUTLINED_FUNCTION_5_46();
    if (v13 || (*v12 & 2) != 0)
    {
      return 0;
    }

    else
    {
      result = OUTLINED_FUNCTION_11_41();
      if (result)
      {
        OUTLINED_FUNCTION_1_56();
        *(v15 + v14) = 1;
        return OUTLINED_FUNCTION_2_53();
      }
    }
  }

  return result;
}

uint64_t forto_adv_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  result = OUTLINED_FUNCTION_11_41();
  if (result)
  {
    OUTLINED_FUNCTION_10_43();
    if (v8)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forto_adv_upto_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_4_46();
  if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_40();
  if (v7 || (*v8 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_21_29();
  if (v7)
  {
    return 0;
  }

  vscanadvUptoTokenOrMarker(v6, v10, 0);
  OUTLINED_FUNCTION_4_46();
  if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_40();
  if (v7 || (*v11 & 2) != 0)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_61();
}

uint64_t forto_adv_over_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6))
  {
    return 1;
  }

  OUTLINED_FUNCTION_8_43();
  OUTLINED_FUNCTION_15_38();
  OUTLINED_FUNCTION_4_46();
  if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_40();
  if (v7 || (*v8 & 2) != 0)
  {
    return 0;
  }

  result = OUTLINED_FUNCTION_11_41();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_10_43();
  if (v7)
  {
    return 0;
  }

  clearDeltaStackBack(v6);
  return OUTLINED_FUNCTION_0_61();
}

uint64_t forto_adv_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    result = OUTLINED_FUNCTION_11_41();
    if (result)
    {
      OUTLINED_FUNCTION_10_43();
      if (v9)
      {
        return 0;
      }

      else
      {
        clearDeltaStackBack(v6);
        return OUTLINED_FUNCTION_0_61();
      }
    }
  }

  return result;
}

uint64_t forto_adv_upto_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_4_46();
    if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44();
    if (v9 || (*v10 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_41();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_21_29();
    if (v9)
    {
      return 0;
    }

    vscanadvUptoTokenOrMarker(v6, v11, 0);
    OUTLINED_FUNCTION_4_46();
    if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44();
    if (v9 || (*v12 & 2) != 0)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forto_adv_over_r(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_49(a1, a2, a3, a4, a5, a6);
  result = OUTLINED_FUNCTION_14_38();
  if (v8)
  {
    OUTLINED_FUNCTION_9_43(result);
    OUTLINED_FUNCTION_15_38();
    OUTLINED_FUNCTION_4_46();
    if (v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_44();
    if (v9 || (*v10 & 2) != 0)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_11_41();
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_10_43();
    if (v9)
    {
      return 0;
    }

    else
    {
      clearDeltaStackBack(v6);
      return OUTLINED_FUNCTION_0_61();
    }
  }

  return result;
}

uint64_t forall_to_test(uint64_t a1, __int16 *a2, __int16 *a3)
{
  OUTLINED_FUNCTION_16_36();
  vinitloc_new(v6, v7, a2);
  v8 = OUTLINED_FUNCTION_17_35();
  vinitloc_new(v8, v9, a3);
  vcompare(a1, v13, &v12);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  v10 = *(a1 + 192);
  if (*(v10 + 8120))
  {
    return 0;
  }

  *(a1 + 104) = *(v10 + 8064);
  return 2;
}

void forall_cont_from()
{
  OUTLINED_FUNCTION_13_40();
  if (v3)
  {
    save_var(v2, v1);
  }

  OUTLINED_FUNCTION_16_36();
  vinitloc_new(v2, v4, v1);
  vinitloc_new(v2, v6, v0);
  vassign(v2, v7, v6);
  OUTLINED_FUNCTION_22_28();
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  if ((*v0 & 0x80000000) == 0)
  {
    v0[1] = -1;
  }
}

uint64_t for_adv(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  OUTLINED_FUNCTION_18_34();
  *(v11 + 8056) = v10;
  *(v11 + 8064) = v12;
  *(v11 + 8096) = 0;
  vinitloc_new(v13, v24, v14);
  v15 = OUTLINED_FUNCTION_17_35();
  vinitloc_new(v15, v16, a6);
  vinitloc_new(v6, v23, a5);
  vadd(v6, v24, &v22);
  vcompare(v6, v24, v23);
  if ((*a4 & 0x80000000) == 0)
  {
    a4[1] = -1;
  }

  if ((*a5 & 0x80000000) == 0)
  {
    a5[1] = -1;
  }

  if ((*a6 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  v17 = OUTLINED_FUNCTION_17_35();
  v19 = vnegative(v17, v18);
  v20 = *(*(v6 + 192) + 8120);
  if (v19)
  {
    if (v20 == 255)
    {
      return 0;
    }
  }

  else if (v20 == 1)
  {
    return 0;
  }

  return 2;
}

uint64_t for_test(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  OUTLINED_FUNCTION_18_34();
  *(v8 + 8096) = 0;
  vinitloc_new(v9, v19, a2);
  vinitloc_new(v4, v18, a3);
  v10 = OUTLINED_FUNCTION_17_35();
  vinitloc_new(v10, v11, a4);
  vcompare(v4, v19, v18);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  if ((*a4 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  v12 = OUTLINED_FUNCTION_17_35();
  v14 = vnegative(v12, v13);
  v15 = *(v4 + 192);
  v16 = *(v15 + 8120);
  if (v14)
  {
    if (v16 == 255)
    {
LABEL_9:
      *(v4 + 104) = *(v15 + 8064);
      return 2;
    }
  }

  else if (v16 == 1)
  {
    goto LABEL_9;
  }

  return 0;
}

void for_cont_from()
{
  OUTLINED_FUNCTION_13_40();
  if (v3)
  {
    save_var(v2, v1);
  }

  OUTLINED_FUNCTION_16_36();
  vinitloc_new(v2, v4, v1);
  vinitloc_new(v2, v6, v0);
  vassign(v2, v7, v6);
  OUTLINED_FUNCTION_22_28();
  if ((v5 & 0x80000000) == 0)
  {
    OUTLINED_FUNCTION_19_32();
  }

  if ((*v0 & 0x80000000) == 0)
  {
    v0[1] = -1;
  }
}

uint64_t while_iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 192);
  *(v4 + 8056) = a3;
  *(v4 + 8064) = a2;
  result = clearDeltaStackBack(a1);
  *(*(a1 + 200) + 256) = 0;
  return result;
}

uint64_t freeDeltaStackTo_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_61()
{
  v3 = v2[24];
  *(v2[25] + 256) = 0;
  *(v3 + 8096) = 1;
  v2[13] = v1;
  *(v0 + 8) = *(v3 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_1_56()
{
  result = clearDeltaStackBack(v0);
  *(*(v0 + 200) + 256) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_53()
{
  *(v3 + 104) = v2;
  *(v1 + 8) = *(v0 + 8080);
  return 2;
}

uint64_t OUTLINED_FUNCTION_3_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{

  return for_loop_preamble(a1, a2, a3, a5, a6);
}

uint64_t OUTLINED_FUNCTION_11_41()
{

  return vscanadv(v0, 1, 0);
}

uint64_t OUTLINED_FUNCTION_15_38()
{
  v3 = *(v1 + 8);

  return vscanadvUptoTokenOrMarker(v0, v3, 0);
}

uint64_t OUTLINED_FUNCTION_20_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vscanadvUptoToken(v4, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_22_28()
{
  v3 = *(v0 + 192);
  *(v3 + 8056) = v2;
  *(v3 + 8064) = v1;
  result = clearDeltaStackBack(v0);
  *(*(v0 + 200) + 256) = 0;
  return result;
}

uint64_t read_2pt(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_57(a1, a2, a3))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_2_54();
  if (vrange_2pt(v3, v4, v5, v6, v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_0_62();
  visnonseq(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_0_62();
  ins_rdtoks(v13, v14, v15, v16);
  return 0;
}

uint64_t read_l(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_57(a1, a2, a3))
  {
    return 1;
  }

  if (!vrange_l())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_62();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_62();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_r(uint64_t a1, char a2, unsigned int a3)
{
  if (OUTLINED_FUNCTION_1_57(a1, a2, a3))
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_54();
  if (!vrange_r())
  {
    forceErrorBacktrack(v3);
  }

  v5 = OUTLINED_FUNCTION_0_62();
  visnonseq(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_0_62();
  ins_rdtoks(v9, v10, v11, v12);
  return 0;
}

uint64_t read_nvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_50(a1, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  result = vrd_nvar();
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

BOOL read_tvar(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_50(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1]);
  v11 = vrd_tvar(v10, v9, v13);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return v11 != 0;
}

uint64_t open_input(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 0);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_output(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 1);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

uint64_t open_append(uint64_t a1, char a2)
{
  v3 = logicalFileName(a1, a2);
  result = logicalFileOpen(a1, v3, 2);
  if (!result)
  {

    forceErrorBacktrack(a1);
  }

  return result;
}

void print_delta1(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, unsigned int a5, char *a6, unsigned int a7)
{
  *&v17[126] = *MEMORY[0x277D85DE8];
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v16[0] = a5;
  v13 = a5;
  v16[1] = 0;
  v14 = v17;
  if (a5)
  {
    do
    {
      v15 = *a6++;
      *v14++ = v15;
      --v13;
    }

    while (v13);
  }

  lf_print_delta(a1, a2, *(a1 + 112), *(a1 + 144), a4, (a7 >> 1) & 1, 0, v16, 0, 0, 0, 80);
}

uint64_t print_stream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = a4;
  v7 = a3;
  if (!vprt_range(a1, a1 + 112, a1 + 144))
  {
    forceErrorBacktrack(a1);
  }

  v10 = *(a1 + 112);
  v11 = *(a1 + 144);

  return vprt_strm(a1, a2, v10, v11, v7, v6, a5);
}

uint64_t print_var(uint64_t a1, char a2, __int16 *a3)
{
  result = vprt_var(a1, a2, a3);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }

  return result;
}

void print_tvar(uint64_t a1, uint64_t a2, __int16 *a3)
{
  prt_tvar();
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

uint64_t OUTLINED_FUNCTION_1_57(uint64_t a1, char a2, unsigned int a3)
{
  v4 = a2;

  return vrd_delta(a1, v4, a3);
}

void OUTLINED_FUNCTION_3_50(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a3);
}

uint64_t etiwinMain(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3 + 1;
  v7 = *(a1 + 184);
  v6 = *(a1 + 192);
  *(v6 + 9304) = v5;
  v8 = __OFSUB__(a2, 1);
  v9 = a2 - 1;
  *(v7 + 480) = v9;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v4 = 0;
  }

  *(v7 + 488) = v4;
  *(v6 + 8872) = 0;
  if (vcmdinit(a1) && vinitrun(a1))
  {
    DeltaProc_main(a1);
    vcmdend(a1, 0);
  }

  return 1;
}

uint64_t etiwinMainDLL(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 184);
  *(v4 + 480) = a2 - 1;
  if (a2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a3 + 8);
  }

  *(v4 + 488) = v5;
  *(*(a1 + 192) + 8872) = 0;
  result = vcmdinit(a1);
  if (result)
  {
    return vinitrun(a1) != 0;
  }

  return result;
}

void dur_expr(uint64_t a1, char a2, __int16 *a3)
{
  if (!vtimept_tv(a1, a1 + 112, 0) || !vtimept_tv(a1, a1 + 144, 1))
  {
    forceErrorBacktrack(a1);
  }

  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  vinitloc_new(a1, v9, a3);
  v6 = vdur(a1, a1 + 112, (a1 + 144), a2);
  if (v6 == -2147483647)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  OUTLINED_FUNCTION_0_63();
  v10[0] = &v8;
  vassign(a1, v9, v10);
  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

void val_expr1(__int16 *a1, __int16 *a2, char a3, uint64_t a4)
{
  if (val_expr(a1, (a1 + 56), a3, a4, 0) == -2147483647)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      a2[1] = -1;
    }

    forceErrorBacktrack(a1);
  }

  v7[0] = 0;
  v7[1] = 0;
  v8[1] = 0;
  OUTLINED_FUNCTION_0_63();
  v8[0] = v6;
  vinitloc_new(a1, v7, a2);
  vassign(a1, v7, v8);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

uint64_t actd_lookup(__int16 *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!vprt_range(a1, (a1 + 56), (a1 + 72)))
  {
    forceErrorBacktrack(a1);
  }

  v8 = *(a1 + 9) + (a2 << 6);
  v9 = actdlookup(a1, *(a1 + 14), *(a1 + 18), v8);
  if (v9)
  {
    v10 = 0;
    *(*(a1 + 24) + 9300) = *(v9 + 1);
    while (1)
    {
      if (v10 == 2)
      {
        return 0;
      }

      v12 = *v9++;
      v11 = v12;
      if (v12 != 255)
      {
        v13 = 0;
        v14 = *(a1 + 14);
        while (v13 < v11)
        {
          if (v14 && (*v14 & 2) != 0)
          {
            v15 = &v14[8 * *(*(a1 + 24) + 9084) + 8 * *(v8 + 16)];
          }

          else
          {
            v15 = v14 + 8;
            ++v13;
          }

          v14 = (*v15 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v10)
        {
          v16 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

LABEL_16:
          *(v16 + 8) = v14;
          goto LABEL_17;
        }

        v16 = a3;
        if (a3)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
      ++v10;
    }
  }

  return 1;
}

BOOL setd_lookup(__int16 *a1, unsigned __int8 a2, int a3)
{
  if (!*(a1 + 14) || !*(a1 + 18))
  {
    return 1;
  }

  if (!vprt_range(a1, (a1 + 56), (a1 + 72)))
  {
    forceErrorBacktrack(a1);
  }

  return setdlookup(a1, *(a1 + 14), *(a1 + 18), *(a1 + 8) + (a3 << 6), a2) == 0;
}

BOOL if_testeq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testeq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 0;
}

BOOL if_testle_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 1;
}

BOOL if_testge_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 255;
}

BOOL if_testgt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 1;
}

BOOL if_testlt_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 != 255;
}

BOOL if_testneq_v_lng(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_23_27(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_14_39();
  npush_lng(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_9_44(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v24, v25);
  OUTLINED_FUNCTION_20_31(v9, v10, v11, v12, v13, v14, v15, v16, v22);
  OUTLINED_FUNCTION_13_41();
  vcompare(v8, v17, v18);
  OUTLINED_FUNCTION_7_45();
  return v19 == 0;
}

BOOL if_testeq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testeq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testle_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testle(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testge_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testge(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testgt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testgt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testlt_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testlt(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL if_testneq_v_i(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = OUTLINED_FUNCTION_8_44();
  npush_i(v9);

  return if_testneq(v8, v10, v11, v12, v13, v14, v15, v16);
}

BOOL testeq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testeq(a1);
}

BOOL testneq_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  compare_tvars(a1, a2, a3);

  return testneq(a1);
}

BOOL testFldeq(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v4 = *(a1 + 192);
  v5 = *(v4 + 8080);
  while (1)
  {
    v6 = *(v4 + 8089) ? *(v4 + 9084) + *(v4 + 8088) : *(v4 + 8088) + 3;
    v5 = (*&v5[8 * v6] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      break;
    }

    if ((*v5 & 2) == 0)
    {
      return *(*&vstmtbl[12 * a2 + 2][8 * a3])(v5 + 16) != a4;
    }
  }

  return 1;
}

void move_lng(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_16_37();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_14_39();
    save_var(v7, v8);
  }

  OUTLINED_FUNCTION_15_39();
  switch(v10)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v9 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_41(0xFFFDu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_29(v11, v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_i(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_16_37();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_14_39();
    save_var(v7, v8);
  }

  OUTLINED_FUNCTION_15_39();
  switch(v10)
  {
    case 0:
    case 3:
      *(v3 + 1) = a3;
      break;
    case 1:
      *(v3 + 1) = a3;
      break;
    case 2:
      v3[1] = a3;
      break;
    default:
      if (v9 < 0)
      {

        forceErrorBacktrack(v4);
      }

      OUTLINED_FUNCTION_12_41(0xFFFCu, v13, 0, 0, v14, v15);
      OUTLINED_FUNCTION_22_29(v11, v12);
      if ((*v3 & 0x80000000) == 0)
      {
        v3[1] = -1;
      }

      break;
  }
}

void move_f(double a1)
{
  OUTLINED_FUNCTION_18_35();
  OUTLINED_FUNCTION_16_37();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_14_39();
    save_var(v5, v6);
  }

  OUTLINED_FUNCTION_15_39();
  switch(v8)
  {
    case 0:
      goto LABEL_12;
    case 1:
      v1[1] = a1;
      return;
    case 2:
      v9 = a1;
      goto LABEL_10;
    case 3:
      *(v1 + 1) = a1;
      return;
    default:
      if (v7 < 0)
      {
LABEL_12:

        forceErrorBacktrack(v2);
      }

      OUTLINED_FUNCTION_12_41(0xFFFBu, v12, 0, 0, v13, v14);
      OUTLINED_FUNCTION_22_29(v10, v11);
      if ((*v1 & 0x80000000) == 0)
      {
        LOWORD(v9) = -1;
LABEL_10:
        *(v1 + 1) = v9;
      }

      return;
  }
}

void bspush_ca_boa()
{
  OUTLINED_FUNCTION_18_35();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_39();

  bspush_ca(v1);
}

double bspush_ca_scan_boa()
{
  OUTLINED_FUNCTION_18_35();
  bspush_boa(v0);
  v1 = OUTLINED_FUNCTION_14_39();

  *&result = bspush_ca_scan(v1, v2).n128_u64[0];
  return result;
}

uint64_t lpta_rpta_loadp(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 168) = 1;
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 144) = *(a3 + 8);
  *(result + 160) = 0;
  *(result + 128) = 0;
  return result;
}

void ins_tokens_s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v8)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_24_27();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_36();
        OUTLINED_FUNCTION_11_42();
        while (v6 < v7)
        {
          ++v6;
          OUTLINED_FUNCTION_10_44();
          if (!v14)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v5, v15, v16);
          }

          if (!OUTLINED_FUNCTION_5_47(v10, v11, v12, v13))
          {
            break;
          }

          if (v6 < v7)
          {
            v17 = OUTLINED_FUNCTION_2_55();
            *(v5 + 112) = v17;
            if (!v17)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

void ins_tokens_l(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v8)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_24_27();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_36();
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_6_46();
        while (v6 < v7)
        {
          OUTLINED_FUNCTION_10_44();
          if (!v14)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v5, v15, v16);
          }

          if (!OUTLINED_FUNCTION_5_47(v10, v11, v12, v13))
          {
            break;
          }

          v6 += 2;
          if (v6 < v7)
          {
            v17 = OUTLINED_FUNCTION_2_55();
            *(v5 + 112) = v17;
            if (!v17)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

void ins_tokens_lng(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v8)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_24_27();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_17_36();
        OUTLINED_FUNCTION_11_42();
        while (v6 < v7)
        {
          OUTLINED_FUNCTION_10_44();
          if (!v14)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v5, v15, v16);
          }

          if (!OUTLINED_FUNCTION_5_47(v10, v11, v12, v13))
          {
            break;
          }

          v6 += 4;
          if (v6 < v7)
          {
            v17 = OUTLINED_FUNCTION_2_55();
            *(v5 + 112) = v17;
            if (!v17)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

void ins_tokens_i(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_26();
  OUTLINED_FUNCTION_19_33();
  if (v8)
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_24_27();
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        v10 = v6 + v7;
        OUTLINED_FUNCTION_11_42();
        while (v6 < v10)
        {
          OUTLINED_FUNCTION_10_44();
          if (!v15)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v5, v16, v17);
          }

          if (!OUTLINED_FUNCTION_5_47(v11, v12, v13, v14))
          {
            break;
          }

          v6 += 2;
          if (v6 < v10)
          {
            v18 = OUTLINED_FUNCTION_2_55();
            *(v5 + 112) = v18;
            if (!v18)
            {
              break;
            }
          }
        }

        break;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
  }

  OUTLINED_FUNCTION_25_26();
}

uint64_t ins_tokens_f(uint64_t a1)
{
  OUTLINED_FUNCTION_19_33();
  if (v4)
  {
    OUTLINED_FUNCTION_4_47();
    v5 = OUTLINED_FUNCTION_3_51();
    result = 0;
    switch(v5)
    {
      case -5:
      case -4:
      case -2:
      case -1:
        v7 = &v2[v3];
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_6_46();
        while (1)
        {
          if (v2 >= v7)
          {
            return 1;
          }

          v10 = *v2;
          v8 = v2 + 1;
          v9 = v10;
          atof(v8);
          OUTLINED_FUNCTION_10_44();
          if (!v15)
          {
            OUTLINED_FUNCTION_13_41();
            vassign(v1, v16, v17);
          }

          result = OUTLINED_FUNCTION_5_47(v11, v12, v13, v14);
          if (!result)
          {
            break;
          }

          v2 = &v8[v9];
          if (v2 < v7)
          {
            result = OUTLINED_FUNCTION_2_55();
            *(v1 + 112) = result;
            if (!result)
            {
              break;
            }
          }
        }

        break;
      default:
        return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_46();
    return 1;
  }

  return result;
}

uint64_t insert_2pt_s(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_64();
  ins_tokens_s(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_l(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_64();
  ins_tokens_l(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_lng(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_64();
  ins_tokens_lng(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_i(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_64();
  ins_tokens_i(v6, v7, v8, v9, v10);
  return 0;
}

uint64_t insert_2pt_f(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_0_64();
  ins_tokens_f(v6);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_58(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return vrange_2pt(a1, (a1 + 112), a1 + 144, a2, a5);
}

uint64_t OUTLINED_FUNCTION_2_55()
{
  v4 = *(v1 + 144);
  v5 = (*(v4 + 8 * v2 + 24) & 0xFFFFFFFFFFFFFFFCLL);

  return vins_sync(v1, v0, v5, v4);
}

uint64_t OUTLINED_FUNCTION_3_51()
{

  return STMTYP(v0);
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return STMTYP(v0);
}

uint64_t OUTLINED_FUNCTION_5_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = v5[14];
  v8 = v5[18];

  return vins_tok(v5, v4, v7, v8, va);
}

uint64_t OUTLINED_FUNCTION_6_46()
{
  v3 = v1[14];
  v4 = v1[18];

  return vdel_2pt(v1, v0, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;

  return vnspop(a1, &a11);
}

void OUTLINED_FUNCTION_12_41(unsigned __int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a5 = v6;
  a6 = a1;
  BYTE2(a6) = 0;

  vinitloc_new(v8, &a3, v7);
}

uint64_t OUTLINED_FUNCTION_20_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return vnspop(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

void OUTLINED_FUNCTION_22_29(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);

  vassign(v2, va, va1);
}

uint64_t OUTLINED_FUNCTION_23_27(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return npush_v(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t lpta_loadv(uint64_t a1, char a2, double *a3)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = a3[1];
      break;
    case 65532:
      v4 = *(a3 + 1);
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 128) = v4;
  return a1;
}

uint64_t rpta_loadv(uint64_t a1, char a2, double *a3)
{
  *(a1 + 168) = 2;
  *(a1 + 152) = a2;
  v3 = *a3;
  switch(v3)
  {
    case 65531:
      v4 = a3[1];
      break;
    case 65532:
      v4 = *(a3 + 1);
      break;
    case 65533:
      v4 = *(a3 + 1);
      break;
    default:
      forceErrorBacktrack(a1);
  }

  *(a1 + 160) = v4;
  return a1;
}

uint64_t lpta_loadlng(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_7_46(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 128) = a3;
  return result;
}

uint64_t rpta_loadl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_8_45(a1, a2);
  if (result - 65532 >= 2)
  {
    if (result != 65531)
    {
      return result;
    }

    a3 = a3;
  }

  *(a1 + 160) = a3;
  return result;
}

void lpta_loadi(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_7_46(a1, a2);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a3;
  }
}

void rpta_loadi(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_8_45(a1, a2);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a3;
  }
}

void lpta_loadf(uint64_t a1, double a2, char a3)
{
  OUTLINED_FUNCTION_7_46(a1, a3);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 128) = a2;
  }
}

void rpta_loadf(uint64_t a1, double a2, char a3)
{
  OUTLINED_FUNCTION_8_45(a1, a3);
  OUTLINED_FUNCTION_13_42();
  if (!(!v6 & v5))
  {
    *(a1 + 160) = a2;
  }
}

void lpta_ctxtl()
{
  OUTLINED_FUNCTION_1_59();
  if (!vctxt_tv(v1, v2, v3))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65();
  if ((v8 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_3_52(v4, v5, v6, v7);
  }
}

void rpta_ctxtl()
{
  OUTLINED_FUNCTION_2_56();
  if (!vctxt_tv(v1, (v1 + 72), v2))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65();
  if ((v7 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_3_52(v3, v4, v5, v6);
  }
}

void lpta_ctxtr()
{
  OUTLINED_FUNCTION_1_59();
  if (!vctxt_tv(v1, v2, v3))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65();
  if ((v8 & 1) == 0)
  {
    *(v0 + 112) = OUTLINED_FUNCTION_4_48(v4, v5, v6, v7);
  }
}

void rpta_ctxtr()
{
  OUTLINED_FUNCTION_2_56();
  if (!vctxt_tv(v1, (v1 + 72), v2))
  {
    forceErrorBacktrack(v0);
  }

  OUTLINED_FUNCTION_0_65();
  if ((v7 & 1) == 0)
  {
    *(v0 + 144) = OUTLINED_FUNCTION_4_48(v3, v4, v5, v6);
  }
}

_BYTE *lpta_movel()
{
  OUTLINED_FUNCTION_1_59();
  if (!vmove_tv(v2, v3, v4))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 112), v1);
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_movel()
{
  OUTLINED_FUNCTION_2_56();
  if (!vmove_tv(v2, (v2 + 72), v3))
  {
    forceErrorBacktrack(v0);
  }

  result = vmovel(*(v0 + 144), v1);
  *(v0 + 144) = result;
  return result;
}

_BYTE *lpta_mover()
{
  OUTLINED_FUNCTION_1_59();
  v4 = vmove_tv(v1, v2, v3);
  if (!v4)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_40(v4, *(v0 + 112));
  *(v0 + 112) = result;
  return result;
}

_BYTE *rpta_mover()
{
  OUTLINED_FUNCTION_2_56();
  v3 = vmove_tv(v1, (v1 + 72), v2);
  if (!v3)
  {
    forceErrorBacktrack(v0);
  }

  result = OUTLINED_FUNCTION_14_40(v3, *(v0 + 144));
  *(v0 + 144) = result;
  return result;
}

uint64_t lpta_tstctxtl()
{
  OUTLINED_FUNCTION_1_59();
  vtstctx_tv(v1, v2, 0);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_65();
  if (v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_52(v5, v6, v7, v8);
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 112) = v10;
  return result;
}

uint64_t rpta_tstctxtl()
{
  OUTLINED_FUNCTION_2_56();
  vtstctx_tv(v1, (v1 + 72), 0);
  if (v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_65();
  if (v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_52(v4, v5, v6, v7);
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 144) = v9;
  return result;
}

uint64_t lpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_56();
  v1 = 1;
  vtstctx_tv(v2, (v2 + 56), 1);
  if (!v3)
  {
    OUTLINED_FUNCTION_0_65();
    v1 = 0;
    if ((v8 & 1) == 0)
    {
      *(v0 + 112) = OUTLINED_FUNCTION_4_48(v4, v5, v6, v7);
    }
  }

  return v1;
}

uint64_t rpta_tstctxtr()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_9_45();
  vtstctx_tv(v2, v3, v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_0_65();
    v1 = 0;
    if ((v10 & 1) == 0)
    {
      *(v0 + 144) = OUTLINED_FUNCTION_4_48(v6, v7, v8, v9);
    }
  }

  return v1;
}

uint64_t lpta_tstmovel()
{
  OUTLINED_FUNCTION_1_59();
  vtsttmark_tv(v2, v3, 0);
  if (v4)
  {
    return 1;
  }

  vmovel(*(v0 + 112), v1);
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 112) = v6;
  return result;
}

uint64_t rpta_tstmovel()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_9_45();
  vtsttmark_tv(v3, v4, v5);
  if (!v6)
  {
    v2 = 0;
    *(v0 + 144) = vmovel(*(v0 + 144), v1);
  }

  return v2;
}

uint64_t lpta_tstmover()
{
  OUTLINED_FUNCTION_1_59();
  vtsttmark_tv(v1, v2, 0);
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_14_40(v3, *(v0 + 112));
  result = OUTLINED_FUNCTION_12_42();
  *(v0 + 112) = v5;
  return result;
}

uint64_t rpta_tstmover()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_9_45();
  vtsttmark_tv(v2, v3, v4);
  if (!v5)
  {
    v1 = 0;
    *(v0 + 144) = OUTLINED_FUNCTION_14_40(v5, *(v0 + 144));
  }

  return v1;
}

uint64_t lpta_storep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vsync_tv(a1, a1 + 112, a3);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 112);
  return result;
}

uint64_t rpta_storep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vsync_tv(a1, a1 + 144, a3);
  if (!result)
  {
    forceErrorBacktrack(a1);
  }

  if (*(*(a1 + 192) + 8096))
  {
    result = save_var(a1, a2);
  }

  *(a2 + 8) = *(a1 + 144);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 1, 1, a4, v5);
}

unint64_t OUTLINED_FUNCTION_4_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return vgetsc(v4, 0, 1, a4, v5);
}

uint64_t OUTLINED_FUNCTION_5_48(uint64_t result, uint64_t a2)
{
  *(result + 136) = 1;
  *(result + 112) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_47(uint64_t result, uint64_t a2)
{
  *(result + 168) = 1;
  *(result + 144) = *(a2 + 8);
  *(result + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_46(uint64_t a1, char a2)
{
  *(a1 + 136) = 2;
  *(a1 + 120) = a2;

  return STMTYP(a2);
}

uint64_t OUTLINED_FUNCTION_8_45(char *a1, char a2)
{
  a1[168] = 2;
  a1[152] = a2;
  v3 = a1[120];

  return STMTYP(v3);
}

uint64_t OUTLINED_FUNCTION_10_45@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 168) = a3;
  *(result + 152) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_43@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W8>)
{
  *(result + 136) = a3;
  *(result + 120) = a2;
  return result;
}

_BYTE *OUTLINED_FUNCTION_14_40(uint64_t a1, _BYTE *a2)
{

  return vmover(v2, a2, v3);
}

uint64_t npush_v(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_57(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_vf(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_57(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  result = vnspush(v9, v11);
  if ((*v8 & 0x80000000) == 0)
  {
    v8[1] = -1;
  }

  return result;
}

uint64_t npush_fld(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v14 = 0;
  v4 = &vstmtbl[12 * a2];
  v5 = &v4[1][40 * a3];
  LOWORD(v14) = *(v5 + 30);
  BYTE2(v14) = *(v5 + 32);
  v6 = *(a1 + 192);
  v7 = *(v6 + 8080);
  if (*(v6 + 8089))
  {
    LODWORD(v8) = *(v6 + 8088);
    v9 = (v7 + 8 * (*(v6 + 9084) + v8));
  }

  else
  {
    v8 = *(v6 + 8088);
    v9 = (v7 + 8 * v8 + 24);
  }

  v10 = (*v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (!v10)
  {
    return 1;
  }

  while ((*v10 & 2) != 0)
  {
    v11 = v8 + 3;
    if (*(v6 + 8089))
    {
      v11 = *(v6 + 9084) + v8;
    }

    v10 = (*&v10[8 * v11] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v10)
    {
      return 1;
    }
  }

  v13 = (*&v4[2][8 * a3])(v10 + 16);
  vnspush(a1, &v13);
  return 0;
}

void npop(uint64_t a1, __int16 *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  vnspop(a1, v5);
  if (*(*(a1 + 192) + 8096))
  {
    save_var(a1, a2);
  }

  vinitloc_new(a1, v4, a2);
  vassign(a1, v4, v5);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }
}

void ncompare(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v2[0] = 0;
  v2[1] = 0;
  vnspop(a1, v3);
  vnspop(a1, v2);
  vcompare(a1, v3, v2);
}

void ncompare_s(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  vnspop(a1, &v6);
  if (v7 == -1)
  {
    v4 = *v6;
    if (v4 == a2)
    {
      *(*(a1 + 192) + 8120) = 0;
    }

    else
    {
      if (v4 <= a2)
      {
        v5 = -1;
      }

      else
      {
        v5 = 1;
      }

      *(*(a1 + 192) + 8120) = v5;
    }
  }

  else
  {
    LOWORD(v9) = -1;
    v8 = &v10;
    BYTE2(v9) = 0;
    vcompare(a1, &v8, &v6);
  }
}

uint64_t clearDeltaStackBack_0(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_1(a1, v1);
}

void bsclr_pushca(uint64_t a1, uint64_t a2)
{
  clearDeltaStackBack_0(a1);
  OUTLINED_FUNCTION_0_66(*(a1 + 200));
  *v4 = 0;
  *(v4 + 8) = a2;
}

void bspush_ca(uint64_t a1)
{
  OUTLINED_FUNCTION_0_66(*(a1 + 200));
  *v1 = 0;
  *(v1 + 8) = v2;
}

__n128 bspush_ca_scan(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  v4 = *(v2 + 288);
  v5 = *(v2 + 1720) - v4;
  v6 = *(v2 + 1728);
  *v5 = 0;
  *(v5 + 8) = a2;
  v7 = *(v2 + 284);
  v8 = v5 - v7;
  *(v2 + 1720) = v8;
  *(v2 + 1728) = v6 - (v4 + v7);
  *v8 = 1;
  result = v3[505];
  *(v8 + 8) = result;
  return result;
}

void bspush_vbot(uint64_t a1)
{
  OUTLINED_FUNCTION_0_66(*(a1 + 200));
  *v1 = 5;
  *(v1 + 8) = *(v2 + 1760);
  *(v2 + 1760) = v1;
}

uint64_t freeDeltaStackTo_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(v2 + 1744);
  if (v3)
  {
    *(v2 + 1720) = a2;
    *(v2 + 1728) = *(v2 + 1780) + a2 - *(v3 + 32);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_60@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a4 = v5;
  a5 = a2;

  return vnspush(a1, &a4);
}

void OUTLINED_FUNCTION_2_57(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a9 = 0;
  a10 = 0;

  vinitloc_new(a1, &a9, a2);
}

void starttest_l(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_67();
}

uint64_t clearDeltaStackBack_1(uint64_t a1)
{
  v1 = *(*(a1 + 200) + 1760);
  if (*v1 == 8)
  {
    v1 = *(*(a1 + 192) + 8112);
  }

  return freeDeltaStackTo_2(a1, v1);
}

void starttest_e(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_67();
}

void starttest(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 192) + 8064) = a2;
  clearDeltaStackBack_1(a1);
  OUTLINED_FUNCTION_0_67();
}

void compare_tvars(uint64_t a1, __int16 *a2, __int16 *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  vinitloc_new(a1, v7, a2);
  vinitloc_new(a1, v6, a3);
  vcompare(a1, v7, v6);
  if ((*a2 & 0x80000000) == 0)
  {
    a2[1] = -1;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    a3[1] = -1;
  }
}

BOOL test_string(void *a1, unsigned int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (!a3)
  {
    return vscanadvOverToken(a1, 1, a3, a4) == 0;
  }

  v5 = (a4 + 1);
  v6 = *a4 - 199;
  v8 = &a4[a3];
  v9 = &vstmtbl[12 * a2];
  OUTLINED_FUNCTION_2_58();
  while (v5 < v8)
  {
    if (*(a1[24] + 8089))
    {
      OUTLINED_FUNCTION_1_61();
    }

    else
    {
      OUTLINED_FUNCTION_4_49();
    }

    v11 = (*v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v11)
    {
      return 1;
    }

    if ((*v11 & 2) == 0)
    {
      switch(v6)
      {
        case 0:
          ++v5;
          break;
        case 1:
        case 2:
          v5 += 4;
          break;
        case 3:
          v5 += 2;
          break;
        case 4:
          atof(v5);
          break;
        default:
          break;
      }

      (*v9[2])(v11 + 16);
      OUTLINED_FUNCTION_7_47();
      vcompare(a1, v12, v13);
      if (*(a1[24] + 8120))
      {
        return 1;
      }
    }

    v7 = 1;
    if (!vscanadv(a1, 1, 1))
    {
      return v7;
    }
  }

  return 0;
}

uint64_t test_string_s()
{
  OUTLINED_FUNCTION_13_43();
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v6 = v5 + v4;
  OUTLINED_FUNCTION_15_40();
  v7 = *(v3 + 8);
  v8 = *(v7 + 30);
  if (v8 == 0xFFFF)
  {
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_53();
      if (v15)
      {
        OUTLINED_FUNCTION_1_61();
      }

      else
      {
        OUTLINED_FUNCTION_4_49();
      }

      OUTLINED_FUNCTION_12_43();
      if (v11)
      {
        return 1;
      }

      if ((*v16 & 2) == 0)
      {
        v17 = OUTLINED_FUNCTION_6_48(v16);
        if (*v18(v17) != *v0)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_49())
      {
        return v2;
      }
    }
  }

  else
  {
    LOWORD(v23) = -1;
    BYTE2(v23) = *(v7 + 32);
    BYTE2(v21) = BYTE2(v23);
    LOWORD(v21) = v8;
    while (v0 < v6)
    {
      OUTLINED_FUNCTION_3_53();
      if (v9)
      {
        OUTLINED_FUNCTION_1_61();
      }

      else
      {
        OUTLINED_FUNCTION_4_49();
      }

      OUTLINED_FUNCTION_12_43();
      if (v11)
      {
        return 1;
      }

      if ((*v10 & 2) == 0)
      {
        v22 = v0;
        v12 = OUTLINED_FUNCTION_6_48(v10);
        v20 = v13(v12);
        vcompare(v1, &v22, &v20);
        OUTLINED_FUNCTION_14_41();
        if (v14)
        {
          return 1;
        }

        v0 = (v0 + 1);
      }

      if (!OUTLINED_FUNCTION_5_49())
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t test_string_l()
{
  OUTLINED_FUNCTION_13_43();
  v5 = v4 + v3;
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_2_58();
  while (v0 < v5)
  {
    OUTLINED_FUNCTION_3_53();
    if (v6)
    {
      OUTLINED_FUNCTION_1_61();
    }

    else
    {
      OUTLINED_FUNCTION_4_49();
    }

    OUTLINED_FUNCTION_12_43();
    if (v8)
    {
      return 1;
    }

    if ((*v7 & 2) == 0)
    {
      OUTLINED_FUNCTION_11_44();
      v10 = OUTLINED_FUNCTION_6_48(v9);
      v11(v10);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v12, v13);
      OUTLINED_FUNCTION_14_41();
      if (v14)
      {
        return 1;
      }

      v0 += 2;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t test_string_lng()
{
  OUTLINED_FUNCTION_13_43();
  v5 = v4 + v3;
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_2_58();
  while (v0 < v5)
  {
    OUTLINED_FUNCTION_3_53();
    if (v6)
    {
      OUTLINED_FUNCTION_1_61();
    }

    else
    {
      OUTLINED_FUNCTION_4_49();
    }

    OUTLINED_FUNCTION_12_43();
    if (v8)
    {
      return 1;
    }

    if ((*v7 & 2) == 0)
    {
      v9 = OUTLINED_FUNCTION_6_48(v7);
      v10(v9);
      OUTLINED_FUNCTION_7_47();
      vcompare(v1, v11, v12);
      OUTLINED_FUNCTION_14_41();
      if (v13)
      {
        return 1;
      }

      v0 += 4;
    }

    if (!OUTLINED_FUNCTION_5_49())
    {
      return v2;
    }
  }

  return 0;
}