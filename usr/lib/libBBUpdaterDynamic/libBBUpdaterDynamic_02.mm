uint64_t BBUICE16Loader::queryChipInfo(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v6 = operator new(0x60uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = *(a2 + 40);
  if (!v7 || ((v8 = v7(a2, 5, v6, 60, &v36, 0), v36 > 0x3B) ? (v9 = v8) : (v9 = 0), (v9 & 1) == 0))
  {
    v19 = 3;
    goto LABEL_52;
  }

  v10 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(v6[2]);
  v11 = *(a3 + 16);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(a3 + 16) = v10;
  v12 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v6 + 10, 0x60);
  (*(*a3 + 16))(a3, v12);
  v13 = operator new(0x10uLL);
  *v13 = &unk_1F5F06780;
  v13[1] = 0;
  v13[1] = CFDataCreate(*MEMORY[0x1E695E480], v6 + 22, 32);
  (*(*a3 + 24))(a3, v13);
  if (v37 == *(v6 + 22) && *(&v37 + 1) == *(v6 + 30) && v38 == *(v6 + 38) && *(&v38 + 1) == *(v6 + 46))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v17 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v17 = 1;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v20 = (*(*a1 + 64))(a1);
      _BBULog(9, 1, v20, "", "Detect as unfused BB\n");
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v17 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v17 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v18 = (*(*a1 + 64))(a1);
      _BBULog(9, 1, v18, "", "Detect as fused BB\n");
    }
  }

LABEL_27:
  v21 = -559030611;
  *(a3 + 88) = v17;
  v22 = a1[1];
  v23 = *(a3 + 16);
  v24 = -559030611;
  if (v23)
  {
    v24 = (*(*v23 + 24))(v23);
  }

  v25 = *(a3 + 32);
  if (!v25)
  {
    v27 = "failed";
    v28 = *(a3 + 40);
    if (v28)
    {
      goto LABEL_38;
    }

LABEL_43:
    v29 = "failed";
    v30 = *(a3 + 24);
    if (!v30)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v26 = v34;
  (*(*v25 + 24))(v34, *(a3 + 32));
  if (v35 < 0)
  {
    v26 = v34[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_34;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_34:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS))
  {
    v27 = v26;
  }

  else
  {
    v27 = "<< SNUM >>";
  }

  v28 = *(a3 + 40);
  if (!v28)
  {
    goto LABEL_43;
  }

LABEL_38:
  v29 = __p;
  (*(*v28 + 24))(__p, v28);
  if (v33 < 0)
  {
    v29 = __p[0];
  }

  v30 = *(a3 + 24);
  if (!v30)
  {
    goto LABEL_45;
  }

LABEL_44:
  v21 = (*(*v30 + 24))(v30);
LABEL_45:
  BBUFeedback::handleComment(v22, "CHIPID=0x%x SNUM=0x%s, PKHASH=0x%s CERTID=0x%x\n", v24, v27, v29, v21);
  if (v28 && v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 && v35 < 0)
  {
    operator delete(v34[0]);
  }

  v19 = 0;
LABEL_52:
  operator delete(v6);
  return v19;
}

void sub_1E524EA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    if (a25 < 0)
    {
      operator delete(__p);
      operator delete(v25);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Loader::load(uint64_t (***a1)(BBUFeedback **), void *a2, const void *a3)
{
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(a1[1], "invalid arguments transport:  %p, updateSource:  %p", a2, a3);
    return 2;
  }

  v16 = 0;
  v15 = -1;
  v6 = (*(*a3 + 24))(a3);
  BBUFeedback::handleComment(a1[1], "Send PSI-RAM (%d bytes)", v6);
  v7 = operator new[](v6);
  if ((*(*a3 + 16))(a3, v7, v6, &v16 + 4, 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = HIDWORD(v16) == v6;
  }

  if (!v8)
  {
    BBUFeedback::handleComment(a1[1], "Error: copying PSI-RAM buffer.");
    operator delete[](v7);
    return 1;
  }

  v10 = a2[4];
  if (v10)
  {
    v11 = v10(a2, v7, v6, &v16, 10000, &v15, 0);
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
LABEL_11:
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) != 0)
  {
LABEL_12:
    if (gBBULogVerbosity >= 1)
    {
      v12 = (*a1)[8](a1);
      v13 = "failure";
      if (v11)
      {
        v13 = "success";
      }

      _BBULog(9, 1, v12, "", "SendImage returned %s, amountWritten = %u, status = %u\n", v13, v16, v15);
    }
  }

LABEL_16:
  operator delete[](v7);
  if (v16 == v6)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1 && (v15 == 1 || v15 == 16))
  {
    BBUFeedback::handleComment(a1[1], "Sent PSI successfully!");
    return 0;
  }

  else
  {
    BBUFeedback::handleComment(a1[1], "Failed to send PSI!");
    return 3;
  }
}

void BBUICE16Loader::~BBUICE16Loader(BBUICE16Loader *this)
{
  *this = &unk_1F5EFEFC0;
  v1 = *(this + 6);
  if (v1)
  {
    *(this + 7) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_1F5EFEFC0;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    v3 = this;
    operator delete(v2);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t RecipeUtil::uninit(RecipeUtil *this)
{
  for (i = *(this + 9); i; i = *(this + 9))
  {
    v12 = *i;
    *(this + 9) = i[1];
    if (v12)
    {
      free(v12);
    }

    operator delete(i);
  }

  v3 = *(this + 13);
  if (v3)
  {
    operator delete[](v3);
    *(this + 13) = 0;
  }

  v5 = (this + 120);
  v4 = *(this + 15);
  *(this + 17) = 0;
  if (v4)
  {
    if (!*(this + 16))
    {
      goto LABEL_9;
    }

    v6 = 0;
    v7 = 1;
    do
    {
      free(*(*(this + 15) + 8 * v6));
      v6 = v7++;
    }

    while (*(this + 16) > v6);
    v4 = *v5;
    if (*v5)
    {
LABEL_9:
      operator delete[](v4);
    }

    *v5 = 0;
    *(this + 16) = 0;
  }

  v10 = *(this + 18);
  v9 = (this + 144);
  v8 = v10;
  if (v10)
  {
    operator delete[](v8);
    *v9 = 0;
    v9[1] = 0;
  }

  return 0;
}

uint64_t RecipeUtil::_parseVariables(RecipeUtil *this)
{
  result = 2147483656;
  v3 = *this;
  if (!*this)
  {
    return result;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    return result;
  }

  v5 = v4 - 54;
  if (v4 < 0x36)
  {
    return 268435461;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *v3;
  *(this + 62) = *(v3 + 46);
  *(this + 2) = v7;
  *(this + 3) = v6;
  *(this + 1) = v8;
  if (*(this + 4))
  {
    return 2147483659;
  }

  if (v5 >= 8)
  {
    v9 = (v3 + 54);
    do
    {
      v10 = v9[1];
      if (!v10)
      {
        v13 = 2147483652;
        goto LABEL_50;
      }

      v11 = v9 + 2;
      v5 -= 8;
      v12 = *v9;
      v13 = 2147483669;
      if (*v9 > 2)
      {
        if (v12 == 3)
        {
          if (v5 < 8)
          {
LABEL_43:
            v13 = 268435461;
            goto LABEL_50;
          }

          if (!*(this + 15))
          {
            v27 = operator new[](8 * v10);
            v28 = 0;
            *(this + 15) = v27;
            while (v5 >= 8)
            {
              v29 = 8 * v11[1] + 8;
              *(*(this + 15) + 8 * v28) = malloc(v29);
              v30 = *(*(this + 15) + 8 * v28);
              if (!v30)
              {
                v13 = 2147483662;
                goto LABEL_50;
              }

              memcpy(v30, v11, v29);
              v11 = (v11 + v29);
              v5 -= v29;
              ++v28;
              v31 = v9[1];
              if (v28 >= v31)
              {
                *(this + 16) = v31;
                goto LABEL_9;
              }
            }

            goto LABEL_43;
          }

LABEL_48:
          v13 = 2147483656;
LABEL_50:
          RecipeUtil::uninit(this);
          return v13;
        }

        if (v12 != 4)
        {
          goto LABEL_50;
        }

        v15 = v5 >= 8 * v10;
        v5 -= 8 * v10;
        if (!v15)
        {
          goto LABEL_43;
        }

        if (*(this + 18))
        {
          goto LABEL_48;
        }

        v17 = operator new[](8 * v10);
        *(this + 18) = v17;
        memcpy(v17, v9 + 2, 8 * v10);
        v11 += 2 * v10;
        *(this + 19) = v10;
      }

      else if (v12 == 1)
      {
        if (*(this + 9))
        {
          v13 = 2147483657;
          goto LABEL_50;
        }

        v18 = operator new(0x10uLL);
        *(this + 9) = v18;
        v19 = v9[1];
        if (v19)
        {
          v20 = v18;
          v21 = 0;
          while (v5 >= 0xC)
          {
            v24 = v11[2];
            if (v5 < v24)
            {
              break;
            }

            v25 = malloc(v24 + 12);
            *v20 = v25;
            if (!v25)
            {
              v13 = 2147483653;
              goto LABEL_50;
            }

            memcpy(v25, v11, v24 + 12);
            v26 = v11[2];
            if (v21 < v19 - 1)
            {
              v22 = operator new(0x10uLL);
              v23 = v22;
            }

            else
            {
              v22 = 0;
              v23 = v20;
            }

            v11 = (v11 + v26 + 12);
            v5 = v5 - v26 - 12;
            v20[1] = v22;
            ++v21;
            v20 = v23;
            if (v19 == v21)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v12 != 2)
        {
          goto LABEL_50;
        }

        *(this + 14) = v10;
        v14 = 52 * v10;
        v15 = v5 >= v14;
        v5 -= v14;
        if (!v15)
        {
          goto LABEL_43;
        }

        if (*(this + 13))
        {
          goto LABEL_48;
        }

        v16 = operator new[](52 * v10);
        *(this + 13) = v16;
        memcpy(v16, v9 + 2, 52 * v10);
        v11 = (v11 + v14);
      }

LABEL_9:
      v9 = v11;
    }

    while (v5 > 7);
  }

  if (v5)
  {
    v13 = 2147483650;
    goto LABEL_50;
  }

  return 0;
}

uint64_t BBUEUR25Initializer::gatherPersonalizationParameters(BBUFeedback **a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *bytes = 0u;
  v36 = 0u;
  v26 = 0;
  (*(*a1 + 25))(a1);
  if (!ETLMaverickReadPublicKeyHash())
  {
    return 3;
  }

  v6 = v26;
  v7 = operator new(0x10uLL);
  *v7 = &unk_1F5F04C88;
  v7[1] = 0;
  v8 = *MEMORY[0x1E695E480];
  v7[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v6);
  (*(*a3 + 24))(a3, v7);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  v28 = 0u;
  v25 = 0;
  (*(*a1 + 25))(a1);
  if (!ETLMaverickReadNonce())
  {
    return 3;
  }

  v9 = operator new(0x10uLL);
  v10 = (v25 + 7) >> 3;
  *v9 = &unk_1F5F04B68;
  v9[1] = 0;
  v9[1] = CFDataCreate(v8, v27, v10);
  v11 = a3[1];
  if (v11)
  {
    v11 = (*(*v11 + 8))(v11);
  }

  a3[1] = v9;
  v23 = 0;
  v24 = 0;
  capabilities::updater::personalizationCommandTimeout(v11);
  SerialNumberAndChipID64Bit = ETLMaverickReadSerialNumberAndChipID64Bit();
  *&v22[0] = 0x44300000000;
  BBUFeedback::handleComment(a1[1], "WARNING: Serial number mismatch (DIAG vs. libTU + DIAG); using libTU + DIAG SNUM");
  if (!SerialNumberAndChipID64Bit)
  {
    return 3;
  }

  v14 = capabilities::radio::chipID(v13);
  if (v14 != v24)
  {
    BBUFeedback::handleComment(a1[1], "WARNING: ChipID mismatch (DIAG vs. libTU); using libTU ChipID");
  }

  v15 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(v22, HIDWORD(v24));
  (*(*a3 + 16))(a3, v15);
  v16 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v14);
  v17 = a3[2];
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  a3[2] = v16;
  LODWORD(v23) = 0;
  (*(*a3 + 32))(a3, &v23, 0);
  if (v23 != 3)
  {
    return 0;
  }

  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v18;
  v22[1] = v18;
  if (ETLMaverickManifestStatusInit())
  {
    v19 = (*(*a1 + 26))(a1, a2, a3, v22);
    ETLMaverickManifestStatusFree();
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v19 = 19;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        return v19;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v19 = 19;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        return v19;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v21 = (**a1)(a1);
      _BBULog(4, 0, v21, "", "Failed to allocate space for manifest_status\n");
    }
  }

  return v19;
}

uint64_t BBUEUR25Initializer::queryChipInfoBooted(BBUFeedback **a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v6 = capabilities::radio::chipID(a1);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *bytes = 0u;
  v45 = 0u;
  v38 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  BBUFeedback::handleComment(a1[1], "Querying chip info from booted baseband");
  if (!a2 || !a3)
  {
    BBUFeedback::handleComment(a1[1], "missing parameter");
    return 2;
  }

  __p[0] = 0;
  capabilities::updater::personalizationCommandTimeout(v7);
  SerialNumberAndChipID64Bit = ETLMaverickReadSerialNumberAndChipID64Bit();
  v40 = 0x44300000000;
  BBUFeedback::handleComment(a1[1], "WARNING: Serial number mismatch (DIAG vs. libTU + DIAG); using libTU + DIAG SNUM");
  if ((SerialNumberAndChipID64Bit & 1) == 0)
  {
    BBUFeedback::handleComment(a1[1], "failed reading snum and/or chipID from booted baseband over ETL");
    return 18;
  }

  capabilities::updater::personalizationCommandTimeout(v9);
  if ((ETLMaverickReadPublicKeyHash() & 1) == 0)
  {
    BBUFeedback::handleComment(a1[1], "failed reading PKHash from booted baseband over ETL");
    return 18;
  }

  v10 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v40, HIDWORD(v39));
  v11 = (*(*a3 + 16))(a3, v10);
  if (v6 != v39)
  {
    BBUFeedback::handleComment(a1[1], "WARNING: ChipID mismatch (DIAG vs. libTU); using libTU ChipID");
  }

  v12 = capabilities::radio::chipID(v11);
  v13 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v12);
  v14 = *(a3 + 16);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a3 + 16) = v13;
  v15 = v38;
  v16 = operator new(0x10uLL);
  *v16 = &unk_1F5F04C88;
  v16[1] = 0;
  v16[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v15);
  (*(*a3 + 24))(a3, v16);
  if (!v10 || !v13)
  {
    goto LABEL_21;
  }

  v17 = a1[1];
  (*(*v10 + 24))(__p, v10);
  if (v37 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_16;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_16:
  v19 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
  v20 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
  v21 = (*(*v13 + 24))(v13);
  if ((v19 | v20))
  {
    v22 = v18;
  }

  else
  {
    v22 = "<< SNUM >>";
  }

  BBUFeedback::handleComment(v17, "   SNUM: 0x%s / CHIPID: 0x%08x", v22, v21);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_21:
  v23 = a1[1];
  (*(*v16 + 24))(__p, v16);
  if (v37 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  BBUFeedback::handleComment(v23, "   PUBLIC_KEY_HASH: 0x%s", v24);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = a1[1];
  v25 = a1 + 1;
  v27 = (*(**(a3 + 24) + 24))(*(a3 + 24));
  BBUFeedback::handleComment(v26, "   CertID: %u", v27);
  v32 = v41 == *bytes && *(&v41 + 1) == *&bytes[8] && v42 == v45 && *(&v42 + 1) == *(&v45 + 1) && v43 == v46 && *(&v43 + 1) == *(&v46 + 1);
  v33 = *v25;
  if (v32)
  {
    BBUFeedback::handleComment(v33, "   Detected as unfused BB\n");
    result = 0;
    v35 = 1;
  }

  else
  {
    BBUFeedback::handleComment(v33, "   Detected as fused BB\n");
    result = 0;
    v35 = 3;
  }

  *(a3 + 88) = v35;
  return result;
}

void sub_1E524FB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUEUR25Initializer::~BBUEUR25Initializer(BBUEUR25Initializer *this)
{
  *this = &unk_1F5F02D68;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F02D68;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 2));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUpdaterController::BBUpdaterController(BBUpdaterController *this, const void *a2)
{
  *this = &unk_1F5EFF170;
  *(this + 1) = a2;
  v4 = operator new(0x1D0uLL);
  *(v4 + 2) = this;
  *v4 = &unk_1F5EFF460;
  *(v4 + 6) = 0;
  v5 = capabilities::updater::repersonalizeLimitCount(v4);
  *(v4 + 7) = v5;
  *v4 = &unk_1F5EFF338;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 50) = 0;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 0u;
  *(v4 + 57) = 0;
  *(v4 + 104) = 0u;
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 408) = 0u;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 18) = &unk_1F5EFF490;
  *(v4 + 11) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  v4[233] = 0;
  *(v4 + 236) = 0;
  *(v4 + 252) = 0;
  *(v4 + 244) = 0;
  *(v4 + 57) = 0;
  *(v4 + 33) = 0;
  *(v4 + 68) = 0;
  *(v4 + 36) = 0;
  *(v4 + 37) = 0;
  *(v4 + 35) = &unk_1F5EFF560;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  v4[369] = 0;
  *(v4 + 388) = 0u;
  *(v4 + 404) = 0u;
  *(v4 + 372) = 0u;
  v6 = capabilities::updater::EUICCAttemptCount(v5);
  if (HIDWORD(v6))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0xF7u, "Assertion failure(capabilities::updater::EUICCAttemptCount() <= std::numeric_limits<unsigned>::max() && capabilities::updater::EUICCAttemptCount() returns too large a value)");
  }

  v7 = capabilities::updater::EUICCAttemptCount(v6);
  *(v4 + 95) = v7;
  *(v4 + 388) = 0;
  v8 = capabilities::updater::intermittentFailureRetryCount(v7);
  *(v4 + 98) = v8;
  v9 = capabilities::updater::intermittentFailureRetryCount(v8);
  v10 = capabilities::updater::intermittentFailureRetryCount(v9);
  *(v4 + 98) = v10;
  *(v4 + 50) = 0;
  v11 = capabilities::updater::intermittentFailureRetryCount(v10);
  *(v4 + 101) = v11;
  v12 = capabilities::updater::intermittentFailureRetryCount(v11);
  *(v4 + 101) = v12;
  v13 = capabilities::updater::intermittentFailureRetryCount(v12);
  v14 = capabilities::updater::intermittentFailureRetryCount(v13);
  *(v4 + 101) = v14;
  *(v4 + 412) = 0;
  v15 = capabilities::updater::loaderConnectAttempts(v14);
  *(v4 + 104) = v15;
  *(v4 + 76) = 0;
  *(v4 + 91) = 0;
  *(v4 + 428) = 0;
  v16 = capabilities::updater::manifestCheckRetryCount(v15);
  *(v4 + 108) = v16;
  *(v4 + 55) = 0;
  *(v4 + 111) = capabilities::updater::initialStagePingAttemptCount(v16);
  *(v4 + 56) = 0;
  *(v4 + 114) = 0;
  *(v4 + 4) = 0x700000000;
  *(v4 + 92) = 0x700000000;
  v4[233] = 1;
  v4[369] = 1;
  *(this + 2) = v4;
  v17 = operator new(0x20uLL);
  *v17 = &unk_1F5EFF630;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = v4;
  *(this + 4) = 0;
  v18 = (this + 32);
  *(this + 3) = v17;
  *(this + 5) = 0;
  v19 = *MEMORY[0x1E695E480];
  *(this + 6) = TelephonyBasebandCreateController();
  v20 = operator new(0x128uLL);
  BBUFeedback::BBUFeedback(v20, a2);
  *(v20 + 46) = 1;
  *(v20 + 35) = 0;
  *(v20 + 36) = 0;
  *(v20 + 12) = 0u;
  *(v20 + 13) = 0u;
  *(v20 + 14) = 0u;
  *(v20 + 120) = 0;
  *v20 = &unk_1F5F01988;
  *(this + 7) = v20;
  *(this + 8) = BBUCommunication::create(*(this + 6));
  v22 = BBUInitializer::create(*(this + 7), v21);
  *(this + 10) = 0;
  *(this + 9) = v22;
  *(this + 11) = 0;
  BBUPersonalizationParameters::create(v22);
  *(this + 104) = 0u;
  *(this + 12) = v23;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0;
  *(this + 31) = 0;
  *(this + 242) = 0;
  *(this + 85) = 0;
  *(this + 344) = 0;
  *(this + 87) = 0;
  *(this + 352) = 0;
  *(this + 256) = 0;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 321) = 0u;
  *(this + 356) = 0;
  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v25 = *(this + 4);
  *(this + 4) = Mutable;
  if (v25)
  {
    CFRelease(v25);
    Mutable = *v18;
  }

  if (!Mutable)
  {
    v38 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v38, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x53u, "Assertion failure(fOutput)");
  }

  valuePtr = -1431655766;
  if (capabilities::radio::vendor(Mutable) == 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  valuePtr = v26;
  v27 = CFNumberCreate(v19, kCFNumberSInt32Type, &valuePtr);
  cf = v27;
  if (!v27)
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x6Bu, "Assertion failure(v)");
    goto LABEL_30;
  }

  CFDictionarySetValue(*v18, @"VendorID", v27);
  v28 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(*v18, @"done", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(*v18, @"attemptedToFuse", v28);
  if (!*(this + 6))
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x72u, "Assertion failure(fBasebandController)");
    goto LABEL_30;
  }

  v29 = *(this + 7);
  if (!v29)
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x73u, "Assertion failure(fFeedback)");
    goto LABEL_30;
  }

  if (!*(this + 9))
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x74u, "Assertion failure(fInitializer)");
    goto LABEL_30;
  }

  if (!*(this + 12))
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x75u, "Assertion failure(fPersonalizationParameters)");
    goto LABEL_30;
  }

  if (!*(this + 2))
  {
    v39 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v39, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x76u, "Assertion failure(fFSM)");
LABEL_30:
  }

  *(this + 29) = 0;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  v31 = *(v29 + 16);
  v30 = v29 + 16;
  std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(v30 - 8, v31);
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 - 8) = v30;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  BBULoader::addProgressBarTimes(*(this + 7), v32);
  BBUProgrammer::addProgressBarTimes(*(this + 7), v33);
  v34 = *(this + 2);
  v35 = *(this + 3);
  if (!v35)
  {
    *(v34 + 32) = 0x700000000;
    ++*(v34 + 452);
    ++*(v34 + 124);
    *(this + 363) = 0;
    v36 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  *(v34 + 32) = 0x700000000;
  ++*(v34 + 452);
  ++*(v34 + 124);
  if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  *(this + 363) = 0;
  v36 = cf;
  if (cf)
  {
LABEL_20:
    CFRelease(v36);
  }
}

void sub_1E525037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v16);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a9);
  BBUpdaterController::DebugOptions::~DebugOptions(v15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v14);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v12);
  v19 = v9[12];
  v9[12] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v9[11];
    v9[11] = 0;
    if (!v20)
    {
LABEL_3:
      v21 = *v17;
      *v17 = 0;
      if (!v21)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v20 = v9[11];
    v9[11] = 0;
    if (!v20)
    {
      goto LABEL_3;
    }
  }

  (*(*v20 + 8))(v20);
  v21 = *v17;
  *v17 = 0;
  if (!v21)
  {
LABEL_4:
    v22 = v9[9];
    v9[9] = 0;
    if (!v22)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  (*(*v21 + 8))(v21);
  v22 = v9[9];
  v9[9] = 0;
  if (!v22)
  {
LABEL_5:
    v23 = v9[8];
    v9[8] = 0;
    if (!v23)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  (*(*v22 + 16))(v22);
  v23 = v9[8];
  v9[8] = 0;
  if (!v23)
  {
LABEL_6:
    v24 = v9[7];
    v9[7] = 0;
    if (!v24)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  (*(*v23 + 8))(v23);
  v24 = v9[7];
  v9[7] = 0;
  if (!v24)
  {
LABEL_8:
    ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v10 + 2);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v11);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v10);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100]((v9 + 2));
    _Unwind_Resume(a1);
  }

LABEL_7:
  (*(*v24 + 8))(v24);
  goto LABEL_8;
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BBUpdaterController::~BBUpdaterController(BBUpdaterController *this)
{
  *this = &unk_1F5EFF170;
  (*(**(this + 8) + 40))(*(this + 8), this + 152);
  if (*(this + 335) < 0)
  {
    operator delete(*(this + 39));
    if ((*(this + 311) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 287) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(this + 33));
      v2 = *(this + 18);
      if (!v2)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 311) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 36));
  if (*(this + 287) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = *(this + 18);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_11:
  v3 = *(this + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 14);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 6);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 5);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 4);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

{
  BBUpdaterController::~BBUpdaterController(this);

  operator delete(v1);
}

uint64_t BBUpdaterController::setOptions(uint64_t a1, int a2, const __CFDictionary *cf)
{
  __p[128] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    v5 = *(a1 + 40);
    *(a1 + 40) = v3;
    if (v5)
    {
      CFRelease(v5);
      v3 = *(a1 + 40);
    }

    v63[0] = 0xAAAAAAAAAAAAAAAALL;
    v63[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v63, v3);
    memset(v62, 170, sizeof(v62));
    HIBYTE(__p[2]) = 0;
    LOBYTE(__p[0]) = 0;
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v6 = off_1ED944170;
    if (!off_1ED944170)
    {
      v7 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v7);
      __dst[0] = v7;
      v8 = operator new(0x20uLL);
      *v8 = &unk_1F5F05A00;
      v8[1] = 0;
      v8[2] = 0;
      v8[3] = v7;
      v9 = off_1ED944178;
      off_1ED944170 = v7;
      off_1ED944178 = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v6 = off_1ED944170;
    }

    v10 = off_1ED944178;
    __p[0] = v6;
    __p[1] = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v11 = v6[1];
    if (!v11)
    {
LABEL_19:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v12 = *(v11 + 8);
        if (v12 < 1)
        {
          break;
        }

        v11 = *v11;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      if ((v12 & 0x80000000) == 0)
      {
        break;
      }

      v11 = v11[1];
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v13 = (v11 + 5);
    if (v11 + 5 != v62)
    {
      if (*(v11 + 63) < 0)
      {
        if (SHIBYTE(v62[2]) >= 0)
        {
          v14 = v62;
        }

        else
        {
          v14 = v62[0];
        }

        if (SHIBYTE(v62[2]) >= 0)
        {
          v15 = HIBYTE(v62[2]);
        }

        else
        {
          v15 = v62[1];
        }

        std::string::__assign_no_alias<false>(v13, v14, v15);
      }

      else if ((HIBYTE(v62[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v13, v62[0], v62[1]);
      }

      else
      {
        *v13 = *v62;
        v11[7] = v62[2];
      }
    }

    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    HIBYTE(__dst[2]) = 0;
    LOBYTE(__dst[0]) = 0;
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v62[2]) < 0)
    {
      operator delete(v62[0]);
    }

    *v62 = *__p;
    v62[2] = __p[2];
    HIBYTE(__p[2]) = 0;
    LOBYTE(__p[0]) = 0;
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v16 = off_1ED944170;
    if (!off_1ED944170)
    {
      v17 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v17);
      __dst[0] = v17;
      v18 = operator new(0x20uLL);
      *v18 = &unk_1F5F05A00;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = v17;
      v19 = off_1ED944178;
      off_1ED944170 = v17;
      off_1ED944178 = v18;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v16 = off_1ED944170;
    }

    v20 = off_1ED944178;
    __p[0] = v16;
    __p[1] = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v21 = v16[1];
    if (!v21)
    {
LABEL_52:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v22 = *(v21 + 8);
        if (v22 < 2)
        {
          break;
        }

        v21 = *v21;
        if (!v21)
        {
          goto LABEL_52;
        }
      }

      if (v22 == 1)
      {
        break;
      }

      v21 = v21[1];
      if (!v21)
      {
        goto LABEL_52;
      }
    }

    v23 = (v21 + 5);
    if (v21 + 5 != v62)
    {
      if (*(v21 + 63) < 0)
      {
        if (SHIBYTE(v62[2]) >= 0)
        {
          v24 = v62;
        }

        else
        {
          v24 = v62[0];
        }

        if (SHIBYTE(v62[2]) >= 0)
        {
          v25 = HIBYTE(v62[2]);
        }

        else
        {
          v25 = v62[1];
        }

        std::string::__assign_no_alias<false>(v23, v24, v25);
      }

      else if ((HIBYTE(v62[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v23, v62[0], v62[1]);
      }

      else
      {
        *v23 = *v62;
        v21[7] = v62[2];
      }
    }

    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    __dst[0] = operator new(0x28uLL);
    *&__dst[1] = xmmword_1E538EBC0;
    strcpy(__dst[0], "/private/var/wireless/baseband_data");
    ctu::cf::map_adapter::getString();
    if (SHIBYTE(v62[2]) < 0)
    {
      operator delete(v62[0]);
    }

    *v62 = *__p;
    v62[2] = __p[2];
    HIBYTE(__p[2]) = 0;
    LOBYTE(__p[0]) = 0;
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v26 = off_1ED944170;
    if (!off_1ED944170)
    {
      v27 = operator new(0x18uLL);
      BBUPartitionManager::BBUPartitionManager(v27);
      __dst[0] = v27;
      v28 = operator new(0x20uLL);
      *v28 = &unk_1F5F05A00;
      v28[1] = 0;
      v28[2] = 0;
      v28[3] = v27;
      v29 = off_1ED944178;
      off_1ED944170 = v27;
      off_1ED944178 = v28;
      if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      v26 = off_1ED944170;
    }

    v30 = off_1ED944178;
    __p[0] = v26;
    __p[1] = off_1ED944178;
    if (off_1ED944178)
    {
      atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
    v31 = v26[1];
    if (!v31)
    {
LABEL_85:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v32 = *(v31 + 8);
        if (v32 < 3)
        {
          break;
        }

        v31 = *v31;
        if (!v31)
        {
          goto LABEL_85;
        }
      }

      if (v32 == 2)
      {
        break;
      }

      v31 = v31[1];
      if (!v31)
      {
        goto LABEL_85;
      }
    }

    v33 = (v31 + 5);
    if (v31 + 5 != v62)
    {
      if (*(v31 + 63) < 0)
      {
        if (SHIBYTE(v62[2]) >= 0)
        {
          v34 = v62;
        }

        else
        {
          v34 = v62[0];
        }

        if (SHIBYTE(v62[2]) >= 0)
        {
          v35 = HIBYTE(v62[2]);
        }

        else
        {
          v35 = v62[1];
        }

        std::string::__assign_no_alias<false>(v33, v34, v35);
      }

      else if ((HIBYTE(v62[2]) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v33, v62[0], v62[1]);
      }

      else
      {
        *v33 = *v62;
        v31[7] = v62[2];
      }
    }

    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v36 = *(a1 + 40);
      v37 = &unk_1ED949000;
      v38 = &unk_1ED949000;
      v39 = &unk_1ED949000;
      v40 = &unk_1ECFD5000;
      if (!v36)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v36 = *(a1 + 40);
      v37 = &unk_1ED949000;
      v38 = &unk_1ED949000;
      v39 = &unk_1ED949000;
      v40 = &unk_1ECFD5000;
      if (!v36)
      {
        goto LABEL_161;
      }
    }

    value = 0xAAAAAAAAAAAAAAAALL;
    if (!CFDictionaryGetValueIfPresent(v36, @"DebugArgs", &value) || (v41 = CFGetTypeID(value), v41 != CFStringGetTypeID()))
    {
LABEL_153:
      if (v37[395] == -1)
      {
        if (v38[394] == -1)
        {
          goto LABEL_155;
        }
      }

      else
      {
        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
        if (v38[394] == -1)
        {
LABEL_155:
          if ((v39[3144] & 1) == 0)
          {
            goto LABEL_156;
          }

          goto LABEL_157;
        }
      }

      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
      if ((v39[3144] & 1) == 0)
      {
LABEL_156:
        if ((v40[2241] & 1) == 0)
        {
          goto LABEL_161;
        }
      }

LABEL_157:
      if (*(a1 + 120))
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "enabling kernel IPC log\n");
        (*(**(a1 + 120) + 32))(*(a1 + 120));
      }

LABEL_161:
      if (v37[395] == -1)
      {
        if (v38[394] == -1)
        {
          goto LABEL_163;
        }
      }

      else
      {
        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
        if (v38[394] == -1)
        {
LABEL_163:
          if (v39[3144])
          {
            goto LABEL_171;
          }

          goto LABEL_164;
        }
      }

      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
      if (v39[3144])
      {
        goto LABEL_171;
      }

LABEL_164:
      if (v40[2241] & 1) == 0 && (*(a1 + 344))
      {
        if (BBULogRegisterRemoteFSDelegate(void)::delegate)
        {
          sDelegate = BBULogRegisterRemoteFSDelegate(void)::delegate;
          if (SHIBYTE(v62[2]) < 0)
          {
            goto LABEL_174;
          }

          goto LABEL_175;
        }

LABEL_173:
        if (SHIBYTE(v62[2]) < 0)
        {
LABEL_174:
          operator delete(v62[0]);
        }

LABEL_175:
        MEMORY[0x1E69265E0](v63);
        return 1;
      }

LABEL_171:
      BBULogRegisterDelegates(*(a1 + 352), *(a1 + 348));
      __p[0] = 0xAAAAAAAAAAAAAAAALL;
      __p[1] = 0xAAAAAAAAAAAAAAAALL;
      (*(**(a1 + 64) + 56))(__p);
      v59 = *(a1 + 120);
      v60 = *(a1 + 128);
      *(a1 + 120) = *__p;
      __p[0] = v59;
      __p[1] = v60;
      if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v60->__on_zero_shared)(v60);
        std::__shared_weak_count::__release_weak(v60);
        if ((SHIBYTE(v62[2]) & 0x80000000) == 0)
        {
          goto LABEL_175;
        }

        goto LABEL_174;
      }

      goto LABEL_173;
    }

    memset(__dst, 170, sizeof(__dst));
    memset(__p, 170, 0x400uLL);
    CFStringGetCString(value, __p, 1024, 0x8000100u);
    v42 = strlen(__p);
    if (v42 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v43 = v42;
    if (v42 >= 0x17)
    {
      if ((v42 | 7) == 0x17)
      {
        v45 = 25;
      }

      else
      {
        v45 = (v42 | 7) + 1;
      }

      v44 = operator new(v45);
      __dst[1] = v43;
      __dst[2] = (v45 | 0x8000000000000000);
      __dst[0] = v44;
    }

    else
    {
      HIBYTE(__dst[2]) = v42;
      v44 = __dst;
      if (!v42)
      {
        goto LABEL_114;
      }
    }

    memcpy(v44, __p, v43);
LABEL_114:
    *(v43 + v44) = 0;
    v46 = HIBYTE(__dst[2]);
    v47 = HIBYTE(__dst[2]);
    if (SHIBYTE(__dst[2]) < 0)
    {
      v46 = __dst[1];
    }

    if (v46)
    {
      memset(__p, 0, 24);
      BBUStringToArgv(__dst, __p);
      v48 = MEMORY[0x1E69E9900];
      *MEMORY[0x1E69E98F0] = 1;
      *v48 = 1;
      v49 = MEMORY[0x1E69E98E0];
      while (1)
      {
        while (1)
        {
          do
          {
            while (1)
            {
              while (1)
              {
                v50 = getopt_long(((__p[1] - __p[0]) >> 3) - 1, __p[0], "l:v:x:fw:i:t:e:p:d:r:c:hFSqVB:ND:", &BBUpdaterController::parseDebugArgs(void)::long_options, 0);
                if (v50 > 117)
                {
                  break;
                }

                switch(v50)
                {
                  case 0x42:
                    v55 = *v49;
                    if (!strncmp("none", *v49, 4uLL))
                    {
                      *(a1 + 340) = 0;
                    }

                    else if (!strncmp("feedback", v55, 8uLL))
                    {
                      *(a1 + 340) = 1;
                    }

                    else
                    {
                      *(a1 + 340) = 2 * (strncmp("oslog", v55, 5uLL) == 0);
                    }

                    break;
                  case 0x6C:
                    __endptr = 0xAAAAAAAAAAAAAAAALL;
                    v51 = strtoul(*v49, &__endptr, 0);
                    if (!*__endptr)
                    {
                      v52 = v51;
                      sLogInternalMask = v51;
                      if (gBBULogMaskGet(void)::once != -1)
                      {
                        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                      }

                      *gBBULogMaskGet(void)::sBBULogMask = v52;
                    }

                    break;
                  case 0xFFFFFFFF:
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    v47 = HIBYTE(__dst[2]);
                    v40 = &unk_1ECFD5000;
                    v39 = &unk_1ED949000;
                    v38 = &unk_1ED949000;
                    v37 = &unk_1ED949000;
                    goto LABEL_151;
                  default:
LABEL_119:
                    BBUFeedback::handleComment(*(a1 + 56), "%s: Ignoring unknown/RC'd out option %c", "parseDebugArgs", v50);
                    break;
                }
              }

              if (v50 != 118)
              {
                break;
              }

              __endptr = 0xAAAAAAAAAAAAAAAALL;
              v56 = strtoul(*v49, &__endptr, 0);
              if (!*__endptr)
              {
                gBBULogVerbosity = v56;
              }
            }

            if (v50 != 120)
            {
              goto LABEL_119;
            }

            __endptr = 0xAAAAAAAAAAAAAAAALL;
            v53 = strtoul(*v49, &__endptr, 0);
          }

          while (*__endptr);
          if (gBBULogMaskGet(void)::once != -1)
          {
            break;
          }

          if (v53 >= 7 && (*gBBULogMaskGet(void)::sBBULogMask & 0x40) != 0)
          {
            goto LABEL_135;
          }
        }

        v57 = v53;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if (v57 >= 7 && (*gBBULogMaskGet(void)::sBBULogMask & 0x40) != 0)
        {
LABEL_135:
          TelephonyUtilDebugSetFlags();
        }
      }
    }

LABEL_151:
    if (v47 < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_153;
  }

  return 1;
}

void sub_1E525174C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  MEMORY[0x1E69265E0](&a17, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::execCommand(uint64_t a1, int a2, CFStringRef theString2, CFDictionaryRef *a4, CFTypeRef *a5)
{
  v65 = 0;
  if (!theString2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_85;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 199, "command");
    }

LABEL_85:
    std::string::basic_string[abi:ne200100]<0>(v63, "null command");
    BBUpdaterCommon::BBUCreateCFError(&v65, v63, 2u, 0);
    if (v64 < 0)
    {
      operator delete(v63[0]);
      v47 = 0;
      if (!a5)
      {
        return v47;
      }

      goto LABEL_108;
    }

    goto LABEL_105;
  }

  if (!a4)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_92;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 201, "output");
    }

LABEL_92:
    std::string::basic_string[abi:ne200100]<0>(v61, "null output");
    BBUpdaterCommon::BBUCreateCFError(&v65, v61, 2u, 0);
    if (v62 < 0)
    {
      operator delete(v61[0]);
      v47 = 0;
      if (!a5)
      {
        return v47;
      }

      goto LABEL_108;
    }

    goto LABEL_105;
  }

  if ((atomic_load_explicit(_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_1))
  {
    qword_1ED948390 = 0;
    qword_1ED948388 = 0;
    qword_1ED948380 = &qword_1ED948388;
    __cxa_atexit(std::map<__CFString const*,BBUpdaterController::CmdInfo,BBUpdaterController::CFStringCompareFunctor,std::allocator<std::pair<__CFString const* const,BBUpdaterController::CmdInfo>>>::~map[abi:ne200100], &qword_1ED948380, &dword_1E5234000);
    __cxa_guard_release(_MergedGlobals_1);
  }

  if (qword_1ED9482D0 == -1)
  {
    v9 = qword_1ED948388;
    if (!qword_1ED948388)
    {
      goto LABEL_96;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9482D0, &__block_literal_global_0);
    v9 = qword_1ED948388;
    if (!qword_1ED948388)
    {
      goto LABEL_96;
    }
  }

  v10 = &qword_1ED948388;
  do
  {
    v11 = CFStringCompare(*(v9 + 32), theString2, 0);
    if (v11 >= kCFCompareEqualTo)
    {
      v10 = v9;
    }

    v9 = *(v9 + ((v11 >> 60) & 8));
  }

  while (v9);
  if (v10 != &qword_1ED948388 && (CFStringCompare(theString2, v10[4], 0) & 0x8000000000000000) == 0)
  {
    v12 = *(a1 + 56);
    memset(&v66, 0, sizeof(v66));
    ctu::cf::assign();
    memset(&__p, 0, sizeof(__p));
    BBUFeedback::handleBeginPhase(v12, "Command: %s", &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(v10[6] + 16))();
    v13 = *(a1 + 56);
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v14 = off_1ED944120;
    if (!off_1ED944120)
    {
      v15 = operator new(0x38uLL);
      v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v17 = dispatch_queue_create("BBUError", v16);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v17;
      if (v17)
      {
        v18 = v17;
        dispatch_retain(v17);
        v15[3] = 0;
        dispatch_release(v18);
      }

      else
      {
        v15[3] = 0;
      }

      v15[4] = 0;
      v15[5] = 0;
      v15[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v66, v15);
      v19 = *&v66.__r_.__value_.__l.__data_;
      *&v66.__r_.__value_.__l.__data_ = 0uLL;
      v20 = *(&off_1ED944120 + 1);
      off_1ED944120 = v19;
      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      size = v66.__r_.__value_.__l.__size_;
      if (v66.__r_.__value_.__l.__size_ && !atomic_fetch_add((v66.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v14 = off_1ED944120;
    }

    v22 = *(&off_1ED944120 + 1);
    __p.__r_.__value_.__r.__words[0] = v14;
    __p.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    ErrorCode = BBUError::getErrorCode(v14);
    (*(*v13 + 16))(v13, ErrorCode);
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      v24 = *(a1 + 335);
      if ((v24 & 0x8000000000000000) == 0)
      {
LABEL_30:
        if (!v24)
        {
          goto LABEL_45;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v24 = *(a1 + 335);
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }
    }

    if (!*(a1 + 320))
    {
      goto LABEL_45;
    }

LABEL_34:
    if (ctu::fs::is_directory())
    {
      BBUFeedback::handleBeginPhase(*(a1 + 56), "BB Booted");
      (*(**(a1 + 56) + 16))(*(a1 + 56), 0);
      v25 = *(a1 + 56);
      v66.__r_.__value_.__r.__words[0] = operator new(0x19uLL);
      *&v66.__r_.__value_.__r.__words[1] = xmmword_1E538EBD0;
      strcpy(v66.__r_.__value_.__l.__data_, "/bbupdate_profile.plist");
      v26 = *(a1 + 335);
      if (v26 >= 0)
      {
        v27 = (a1 + 312);
      }

      else
      {
        v27 = *(a1 + 312);
      }

      if (v26 >= 0)
      {
        v28 = *(a1 + 335);
      }

      else
      {
        v28 = *(a1 + 320);
      }

      v29 = std::string::insert(&v66, 0, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v58 = v29->__r_.__value_.__r.__words[2];
      *v57 = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      BBUProfiler::exportToFile((v25 + 80), v57);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }

LABEL_45:
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v31 = off_1ED944120;
    if (!off_1ED944120)
    {
      v32 = operator new(0x38uLL);
      v33 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v34 = dispatch_queue_create("BBUError", v33);
      *v32 = 0;
      v32[1] = 0;
      v32[2] = v34;
      if (v34)
      {
        v35 = v34;
        dispatch_retain(v34);
        v32[3] = 0;
        dispatch_release(v35);
      }

      else
      {
        v32[3] = 0;
      }

      v32[4] = 0;
      v32[5] = 0;
      v32[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v66, v32);
      v36 = *&v66.__r_.__value_.__l.__data_;
      *&v66.__r_.__value_.__l.__data_ = 0uLL;
      v37 = *(&off_1ED944120 + 1);
      off_1ED944120 = v36;
      if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37);
        std::__shared_weak_count::__release_weak(v37);
      }

      v38 = v66.__r_.__value_.__l.__size_;
      if (v66.__r_.__value_.__l.__size_ && !atomic_fetch_add((v66.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }

      v31 = off_1ED944120;
    }

    v39 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v40 = BBUError::getErrorCode(v31);
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v46 = v40;
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
      if (v46)
      {
LABEL_61:
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v41 = off_1ED944120;
        if (!off_1ED944120)
        {
          v42 = operator new(0x38uLL);
          v43 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
          v44 = dispatch_queue_create("BBUError", v43);
          *v42 = 0;
          v42[1] = 0;
          v42[2] = v44;
          if (v44)
          {
            v45 = v44;
            dispatch_retain(v44);
            v42[3] = 0;
            dispatch_release(v45);
          }

          else
          {
            v42[3] = 0;
          }

          v42[4] = 0;
          v42[5] = 0;
          v42[6] = 0;
          std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v66, v42);
          v48 = *&v66.__r_.__value_.__l.__data_;
          *&v66.__r_.__value_.__l.__data_ = 0uLL;
          v49 = *(&off_1ED944120 + 1);
          off_1ED944120 = v48;
          if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
          }

          v50 = v66.__r_.__value_.__l.__size_;
          if (v66.__r_.__value_.__l.__size_ && !atomic_fetch_add((v66.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
          }

          v41 = off_1ED944120;
        }

        v51 = *(&off_1ED944120 + 1);
        __p.__r_.__value_.__r.__words[0] = v41;
        __p.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        BBUError::getCFError(v41, &v65);
        if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v51->__on_zero_shared)(v51);
          std::__shared_weak_count::__release_weak(v51);
          v47 = 0;
          if (!a5)
          {
            return v47;
          }

          goto LABEL_108;
        }

        goto LABEL_105;
      }
    }

    else if (v40)
    {
      goto LABEL_61;
    }

    v47 = 1;
    if (!a5)
    {
      return v47;
    }

    goto LABEL_108;
  }

LABEL_96:
  memset(&v66, 0, sizeof(v66));
  ctu::cf::assign();
  memset(&__p, 0, sizeof(__p));
  v52 = std::string::insert(&__p, 0, "Unrecognized command ", 0x15uLL);
  v54 = v52->__r_.__value_.__r.__words[0];
  v53 = v52->__r_.__value_.__l.__size_;
  v55 = v52->__r_.__value_.__r.__words[2];
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v55 & 0x8000000000000000) == 0)
    {
      goto LABEL_98;
    }
  }

  else if ((v55 & 0x8000000000000000) == 0)
  {
LABEL_98:
    v59.__r_.__value_.__r.__words[0] = v54;
    v59.__r_.__value_.__l.__size_ = v53;
    v59.__r_.__value_.__r.__words[2] = v55;
    goto LABEL_101;
  }

  std::string::__init_copy_ctor_external(&v59, v54, v53);
LABEL_101:
  BBUpdaterCommon::BBUCreateCFError(&v65, &v59, 2u, 0);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((v55 & 0x8000000000000000) != 0)
    {
      goto LABEL_107;
    }
  }

  else if ((v55 & 0x8000000000000000) != 0)
  {
LABEL_107:
    operator delete(v54);
    v47 = 0;
    if (!a5)
    {
      return v47;
    }

    goto LABEL_108;
  }

LABEL_105:
  v47 = 0;
  if (!a5)
  {
    return v47;
  }

LABEL_108:
  if (v65)
  {
    *a5 = CFRetain(v65);
    CFRelease(v65);
    v65 = 0;
    if (a4)
    {
      if (!*a4)
      {
        *a4 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }
    }
  }

  return v47;
}

void sub_1E5252374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void BBUpdaterController::handleException(CFErrorRef *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s\n", a2);
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v11 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_11;
  }

  HIBYTE(v11) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_11:
    memcpy(v8, a2, v7);
  }

  *(v7 + v8) = 0;
  BBUpdaterCommon::BBUCreateCFError(a1, __dst, v3, 0);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E5252758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::query(__CFDictionary **a1, int a2)
{
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(a1, 0);
  v5 = FirmwareDataSource;
  v14 = FirmwareDataSource;
  if (a2 != 4)
  {
    if (a2 != 32)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x136u, "Assertion failure(false && Unrecognized BBU stage.)");
    }

    if (!BBUpdaterController::shouldPerformEUICC(a1))
    {
      if (!v5)
      {
        return;
      }

      goto LABEL_24;
    }

    if (v5)
    {
      v6 = a1[5];
      cf.__r_.__value_.__r.__words[0] = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = a1[4];
      v18 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      updated = eUICC::UpdateOutput(a1 + 19, &cf, &v18);
      if (v18)
      {
        CFRelease(v18);
      }

      if (cf.__r_.__value_.__r.__words[0])
      {
        CFRelease(cf.__r_.__value_.__l.__data_);
      }

      if (!updated && a1[4])
      {
        goto LABEL_24;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_17:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2501, "ret == kBBUReturnSuccess && fOutput");
          }
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to eUICC::updateOutput in BootedStage");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = __p;
      }

      v17 = updated;
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v16);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_24;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_37;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 304, "updateSource");
    }

LABEL_37:
    v11 = BBUStageAsString(32);
    std::string::basic_string[abi:ne200100]<0>(&cf, v11);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to get update source in ", &cf, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v16 = __p;
      goto LABEL_46;
    }

LABEL_45:
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
LABEL_46:
    v17 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_48:
        if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_52;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_52:
    operator delete(cf.__r_.__value_.__l.__data_);
    return;
  }

  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 297, "updateSource");
    }

LABEL_31:
    v10 = BBUStageAsString(4);
    std::string::basic_string[abi:ne200100]<0>(&cf, v10);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to get update source in ", &cf, &__p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v16 = __p;
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  BBUpdaterController::queryInfoSecondStageInternal(a1, 1, &v14);
LABEL_24:
  v9 = *(*v5 + 16);

  v9(v5);
}

void sub_1E5252C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a12);
  _Unwind_Resume(exception_object);
}

char *BBUpdaterController::getFirmwareDataSource(BBUpdaterController *this, int a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v4, @"firmwareData", value))
    {
      v5 = CFGetTypeID(value[0]);
      if (v5 == CFDataGetTypeID())
      {
        v6 = value[0];
        if (value[0])
        {
          v7 = operator new(0x98uLL);
          BBUZipFile::BBUZipFile(v7, v6);
          return BBUUpdateSource::createFromZipFile(v7, *(this + 7), (*(*(this + 12) + 88) == 3));
        }
      }
    }
  }

  if (!a2)
  {
    return 0;
  }

  memset(value, 170, 24);
  FirmwareFolder = BBUpdaterController::getFirmwareFolder(value, *(this + 5));
  v10 = HIBYTE(value[2]);
  if (SHIBYTE(value[2]) < 0)
  {
    v10 = value[1];
  }

  if (!v10)
  {
    capabilities::radio::personalizedFirmwarePath(&v14, FirmwareFolder);
    if (SHIBYTE(value[2]) < 0)
    {
      operator delete(value[0]);
    }

    value[2] = v15;
    *value = v14;
    if (SHIBYTE(v15) < 0)
    {
      if (value[1])
      {
        v11 = value[0];
        goto LABEL_19;
      }
    }

    else if (HIBYTE(v15))
    {
      v11 = value;
LABEL_19:
      BBUFeedback::handleComment(*(this + 7), "Baseband fw path that is used: %s\n", v11);
      goto LABEL_20;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x56Du, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)");
  }

LABEL_20:
  result = BBUUpdateSource::createFromFolder(value, *(this + 7), *(*(this + 12) + 88) == 3);
  if (SHIBYTE(value[2]) < 0)
  {
    v12 = result;
    operator delete(value[0]);
    return v12;
  }

  return result;
}

void sub_1E5252F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::parsePreflightArgs(BBUpdaterController *this)
{
  result = *(this + 5);
  if (result)
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    result = CFDictionaryGetValueIfPresent(result, @"PreflightInfo", &value);
    if (result)
    {
      v3 = CFGetTypeID(value);
      result = CFDictionaryGetTypeID();
      if (v3 == result && (*(this + 361) & 1) == 0)
      {
        BBUFeedback::handleComment(*(this + 7), "Preflight detected");
        *(this + 361) = 1;
        result = (*(**(this + 9) + 80))(*(this + 9), *(this + 12), value);
        if (result)
        {
          exception = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x8C9u, "Assertion failure(ret == kBBUReturnSuccess && Failed overriding preflight personalization parameters.)");
        }
      }
    }
  }

  return result;
}

uint64_t BBUpdaterController::queryInfoFirstStageInternal(BBULoader **this, BBUFeedback *a2)
{
  v4 = BBULoader::create(this[7], a2);
  v5 = this[10];
  this[10] = v3;
  if (v5)
  {
    (*(*v5 + 8))(v5, v4);
    v3 = this[10];
  }

  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x83Au, "Assertion failure(fLoader && Failed to reset and create BBULoader.)");
  }

  TransportNoEvents = BBUpdaterController::createTransportNoEvents(this, 1, 2);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
LABEL_15:
      v7 = TransportNoEvents == 0;
LABEL_16:
      v8 = *gBBULogMaskGet(void)::sBBULogMask;
      v9 = gBBULogVerbosity;
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_15;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_15;
  }

  _BBULog(13, 0, "BBUpdaterController", "", "createTransportNoEvents ret status is %d\n", TransportNoEvents);
  v7 = TransportNoEvents == 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    goto LABEL_16;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v8 = *gBBULogMaskGet(void)::sBBULogMask;
  v9 = gBBULogVerbosity;
  if (TransportNoEvents)
  {
LABEL_9:
    if ((v8 & 2) != 0 && v9 >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2130, "kBBUReturnSuccess == ret");
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "kBBUReturnFailCreateTransportFirst");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to create transport: ", &__p, &v31);
    v11 = capabilities::updater::loaderConnectAttempts(v10);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v11;
      std::string::__init_copy_ctor_external(&v32, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
      v11 = v24;
    }

    else
    {
      v32 = v31;
    }

    v33 = 50;
    v34 = v11;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(this, &v32);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_53:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 50;
        }

LABEL_57:
        operator delete(__p.__r_.__value_.__l.__data_);
        return 50;
      }
    }

    else if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 50;
    }

    goto LABEL_57;
  }

LABEL_17:
  if ((v8 & 0x2000) != 0 && (v9 & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUpdaterController", "", "Querying first stage\n");
  }

  v12 = (*(*this[10] + 16))(this[10], this + 19);
  if (!v12)
  {
    v31.__r_.__value_.__r.__words[0] = 0;
    (*(*this[10] + 24))(this[10], this + 19, &v31);
    if (v31.__r_.__value_.__r.__words[0])
    {
      v13 = this[7];
      (*(*v31.__r_.__value_.__l.__data_ + 16))(&v32);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v32;
      }

      else
      {
        v14 = v32.__r_.__value_.__r.__words[0];
      }

      BBUFeedback::handleComment(v13, "Loader version: %s", v14);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v31.__r_.__value_.__r.__words[0])
      {
        (*(*v31.__r_.__value_.__l.__data_ + 8))(v31.__r_.__value_.__r.__words[0]);
      }
    }

    v15 = (*(*this[10] + 32))(this[10], this + 19, this[12]);
    if (!v15)
    {
      BBUFeedback::handleComment(this[7], "fusingState: %d", *(this[12] + 22));
      return v15;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_46:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2169, "kBBUReturnSuccess == ret");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Failed querying chip information");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, " in the first stage.", &__p);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = v31;
    }

    v33 = v15;
    v34 = 0;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v32);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    v25 = v32.__r_.__value_.__r.__words[0];
    goto LABEL_69;
  }

  v15 = v12;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_36;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2140, "kBBUReturnSuccess == ret");
  }

LABEL_36:
  std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to connect to loader");
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, ": ", &__p);
  std::string::basic_string[abi:ne200100]<0>(v27, BBUReturnAsString::BBUReturnStrings[v15]);
  if ((v28 & 0x80u) == 0)
  {
    v17 = v27;
  }

  else
  {
    v17 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v18 = v28;
  }

  else
  {
    v18 = v27[1];
  }

  v19 = std::string::append(&v31, v17, v18);
  v20 = v19->__r_.__value_.__r.__words[0];
  size = v19->__r_.__value_.__l.__size_;
  v29[0] = v19->__r_.__value_.__r.__words[2];
  *(v29 + 3) = *(&v19->__r_.__value_.__r.__words[2] + 3);
  v22 = SHIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v23 = capabilities::updater::loaderConnectAttempts(v19);
  if (v22 < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v20, size);
  }

  else
  {
    v32.__r_.__value_.__r.__words[0] = v20;
    v32.__r_.__value_.__l.__size_ = size;
    LODWORD(v32.__r_.__value_.__r.__words[2]) = v29[0];
    *(&v32.__r_.__value_.__r.__words[2] + 3) = *(v29 + 3);
    *(&v32.__r_.__value_.__s + 23) = v22;
  }

  v33 = v15;
  v34 = v23;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(this, &v32);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_61:
      if (v28 < 0)
      {
        goto LABEL_65;
      }

      goto LABEL_70;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(v20);
  if (v28 < 0)
  {
LABEL_65:
    v25 = v27[0];
LABEL_69:
    operator delete(v25);
  }

LABEL_70:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_1E52537AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v23 = v4;
  v24 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v4 + 24))(__p, v4);
  v5 = __p[0];
  v6 = (__p[0] + 24 * v4[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v22) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * v4[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v22 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_34;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F460 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = __dst;
    if (v22 < 0)
    {
      v15 = __dst[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, v4[8], v15);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_34:
  v16 = v23;
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventError>(v23) && boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventError,BBUpdaterControllerFSM::eventError>(v16, a2))
  {
    v17 = (_MergedGlobals_1[*(v16 + 32) + 218])(v16, 0);
    if (!((_MergedGlobals_1[*(v16 + 36) + 218])(v16, 1) | v17))
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError>(v16, v16, *(v16 + 32));
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError>(v16, v16, *(v16 + 36));
    }

    *(v16 + 100) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(v16);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_47;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F460 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v18);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_47:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  v19 = v24;
  if (v24)
  {
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }
}

void sub_1E5253C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::queryInfoSecondStageInternal(uint64_t a1, int a2, uint64_t a3)
{
  v6 = BBUProgrammer::create(*(a1 + 56), a1 + 152, *(a1 + 48));
  v7 = *(a1 + 88);
  *(a1 + 88) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (!*a3)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_19:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2268, "updateSource");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to get update source for queryInfoSecondStageInternal");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = __p;
    }

    v19 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 35;
  }

  if (BBUpdaterController::createTransportNoEvents(a1, 0, 4))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_27;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2279, "kBBUReturnSuccess == ret");
    }

LABEL_27:
    std::string::basic_string[abi:ne200100]<0>(&v16, "kBBUReturnFailCreateTransportSecond");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to create transport ", &v16, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = __p;
    }

    v19 = 51;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_50:
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return 51;
        }

LABEL_54:
        operator delete(v16.__r_.__value_.__l.__data_);
        return 51;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 51;
    }

    goto LABEL_54;
  }

  v8 = *(a1 + 311);
  if (v8 < 0)
  {
    v8 = *(a1 + 296);
  }

  if (v8)
  {
    (*(**(a1 + 88) + 56))(*(a1 + 88), a1 + 288);
  }

  v9 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  if (v9)
  {
    v13 = v9;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_31:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2295, "kBBUReturnSuccess == ret");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Failed connecting to programmer while querying information in the second stage.");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = __p;
    }

    v19 = v13;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v18);
    result = v13;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
      result = v13;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v14 = __p.__r_.__value_.__r.__words[0];
LABEL_68:
    operator delete(v14);
    return v13;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = 0;
  v10 = *(a1 + 96);
  if (*(v10 + 88) == 3)
  {
    v11 = (*(**a3 + 48))() ^ 1;
    v10 = *(a1 + 96);
  }

  else
  {
    v11 = 0;
  }

  result = (*(**(a1 + 88) + 32))(*(a1 + 88), 0, 1, &v15, v10, v11);
  if (result)
  {
    v13 = result;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_39;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2305, "kBBUReturnSuccess == ret");
    }

LABEL_39:
    (*(**(a1 + 88) + 24))(*(a1 + 88));
    std::string::basic_string[abi:ne200100]<0>(&v16, BBUReturnAsString::BBUReturnStrings[v13]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed gathering personalization parameters @ second stage: ", &v16, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = __p;
    }

    v19 = v13;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_63:
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v13;
        }

        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v13;
    }

LABEL_67:
    v14 = v16.__r_.__value_.__r.__words[0];
    goto LABEL_68;
  }

  return result;
}

void sub_1E52543F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a13);
  goto LABEL_6;
}

uint64_t BBUpdaterController::shouldPerformEUICC(const __CFDictionary **this)
{
  v2 = capabilities::euicc::supportsLegacyUpdater(this);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(19, 0, "BBUpdaterController", "", "supports legacy eUICC update? %d\n", v2);
  }

LABEL_5:
  if (!v2)
  {
    return 0;
  }

  v3 = this[5];
  v6 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  eUICC::Options::Options(v7, &v6);
  v4 = v7[8];
  if (v9 < 0)
  {
    operator delete(__p);
    if (!v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v3)
  {
LABEL_12:
    CFRelease(v3);
  }

LABEL_13:
  if (!v4)
  {
    return 1;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(19, 0, "BBUpdaterController", "", "Skip eUICC options\n");
    return 0;
  }

  return result;
}

void sub_1E5254674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void BBUpdaterController::personalize(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(a1 + 360) = 1;
  memset(&__p, 0, sizeof(__p));
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(a1, 0);
  v77 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_116:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 327, "updateSource");
        }
      }
    }

    v59 = BBUStageAsString(v2);
    std::string::basic_string[abi:ne200100]<0>(&v79, v59);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to get update source in ", &v79, &v80);
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v80;
    }

    v82 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
LABEL_122:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_124:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

LABEL_128:
        operator delete(v79.__r_.__value_.__l.__data_);
        goto LABEL_69;
      }
    }

    else if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    operator delete(v80.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_128;
  }

  if (v2 <= 7)
  {
    if (v2 != 2)
    {
      if (v2 == 4)
      {
        v5 = *(a1 + 56);
        BBUFeedback::handleComment(v5, "entering %s", "StageContext::PersonalizeStageSecond");
        v6 = *(v5 + 19);
        v7 = *(v5 + 18);
        if (v6 == v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = ((v6 - v7) << 7) - 1;
        }

        v9 = *(v5 + 22);
        v10 = v9 + *(v5 + 21);
        if (v8 == v10)
        {
          std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v5 + 136);
          v7 = *(v5 + 18);
          v9 = *(v5 + 22);
          v10 = *(v5 + 21) + v9;
        }

        *(*(v7 + ((v10 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v10 & 0x3FF)) = 3;
        *(v5 + 22) = v9 + 1;
        if (*(a1 + 88))
        {
          v11 = (*(*FirmwareDataSource + 80))(FirmwareDataSource);
          if (!v11)
          {
            v12 = *(a1 + 96);
            if (v12)
            {
              v13 = (*(**(v12 + 16) + 24))(*(v12 + 16));
              (*(*FirmwareDataSource + 200))(FirmwareDataSource, v13);
              v14 = (*(**(*(a1 + 96) + 24) + 24))(*(*(a1 + 96) + 24));
              (*(*FirmwareDataSource + 208))(FirmwareDataSource, v14);
            }

            v15 = BBUpdaterController::performSecondStageInternal(a1, 1, &v77, &__p);
            if (!v15)
            {
              v16 = BBUpdaterController::bootupInternal(a1, &v77);
              if (!v16)
              {
                v17 = BBUpdaterController::performPingInternal(a1);
                if (v17)
                {
                  if (gBBULogMaskGet(void)::once == -1)
                  {
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  else
                  {
                    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                    {
                      goto LABEL_21;
                    }
                  }

                  if (gBBULogVerbosity >= 6)
                  {
                    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 421, "kBBUReturnSuccess == ret");
                  }

LABEL_21:
                  std::string::basic_string[abi:ne200100]<0>(&v79, BBUReturnAsString::BBUReturnStrings[v17]);
                  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to ping baseband: ", &v79, &v80);
                  v19 = capabilities::updater::intermittentFailureRetryCount(v18);
                  if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    __dst = v80;
LABEL_222:
                    v82 = __PAIR64__(v19, v17);
                    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(a1, &__dst);
                    goto LABEL_122;
                  }

                  goto LABEL_221;
                }

LABEL_67:
                BBUpdaterController::performBootedStageInternal(a1, &v77);
                goto LABEL_69;
              }

              if (gBBULogMaskGet(void)::once == -1)
              {
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
                {
                  goto LABEL_182;
                }
              }

              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 405, "kBBUReturnSuccess == ret");
              }

LABEL_182:
              std::string::basic_string[abi:ne200100]<0>(&v79, BBUReturnAsString::BBUReturnStrings[v16]);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to bootup baseband: ", &v79, &v80);
              v69 = capabilities::updater::intermittentFailureRetryCount(v68);
              if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
              {
                v71 = v69;
                std::string::__init_copy_ctor_external(&__dst, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
                v69 = v71;
              }

              else
              {
                __dst = v80;
              }

              v82 = __PAIR64__(v69, v16);
              BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(a1, &__dst);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_216:
                  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_217:
                    *(a1 + 362) = 1;
                    goto LABEL_69;
                  }

LABEL_220:
                  operator delete(v79.__r_.__value_.__l.__data_);
                  goto LABEL_217;
                }
              }

              else if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_216;
              }

              operator delete(v80.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_217;
              }

              goto LABEL_220;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_164;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_164;
              }
            }

            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 387, "kBBUReturnSuccess == ret");
            }

LABEL_164:
            std::string::basic_string[abi:ne200100]<0>(&v74, BBUReturnAsString::BBUReturnStrings[v15]);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to perform second stage: ", &v74, &v75);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&cf, ": ", &v75);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            v63 = std::string::append(&cf, p_p, size);
            v64 = *&v63->__r_.__value_.__l.__data_;
            v79.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
            *&v79.__r_.__value_.__l.__data_ = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v80, "\n", &v79);
            v66 = capabilities::updater::intermittentFailureRetryCount(v65);
            if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
            {
              v70 = v66;
              std::string::__init_copy_ctor_external(&__dst, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
              v66 = v70;
            }

            else
            {
              __dst = v80;
            }

            v82 = __PAIR64__(v66, v15);
            BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(a1, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_201:
                if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_202;
                }

                goto LABEL_208;
              }
            }

            else if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_201;
            }

            operator delete(v80.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_202:
              if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_203;
              }

              goto LABEL_209;
            }

LABEL_208:
            operator delete(v79.__r_.__value_.__l.__data_);
            if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_203:
              if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_204;
              }

              goto LABEL_210;
            }

LABEL_209:
            operator delete(cf.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_204:
              if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_69;
              }

LABEL_211:
              operator delete(v74.__r_.__value_.__l.__data_);
              goto LABEL_69;
            }

LABEL_210:
            operator delete(v75.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            goto LABEL_211;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_137;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_137:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 350, "kBBUReturnSuccess == ret");
              }
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&v80, "Miss images for saveImages\n");
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = v80;
          }

          v82 = v11;
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
          }

          goto LABEL_69;
        }

        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x15Bu, "Assertion failure(fProgrammer && Null programmer?)");
LABEL_234:
      }

LABEL_232:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x1CBu, "Assertion failure(false && Unrecognized BBU stage.)");
      goto LABEL_234;
    }

    v30 = *(a1 + 56);
    BBUFeedback::handleComment(v30, "entering %s", "StageContext::PersonalizeStageFirst");
    v31 = *(v30 + 19);
    v32 = *(v30 + 18);
    if (v31 == v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = ((v31 - v32) << 7) - 1;
    }

    v34 = *(v30 + 22);
    v35 = v34 + *(v30 + 21);
    if (v33 == v35)
    {
      std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v30 + 136);
      v32 = *(v30 + 18);
      v34 = *(v30 + 22);
      v35 = *(v30 + 21) + v34;
    }

    *(*(v32 + ((v35 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v35 & 0x3FF)) = 2;
    *(v30 + 22) = v34 + 1;
    if (*(*(a1 + 96) + 88) != 3)
    {
      v36 = (*(*FirmwareDataSource + 80))(FirmwareDataSource);
      if (!v36)
      {
        if (capabilities::updater::shouldSkipRestoreForUnfused(v36))
        {
          BBUFeedback::handleComment(*(a1 + 56), "Detecting unfused BB and skip restore");
          v38 = *(a1 + 16);
          v37 = *(a1 + 24);
          v79.__r_.__value_.__r.__words[0] = v38;
          v79.__r_.__value_.__l.__size_ = v37;
          if (v37)
          {
            atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
          }

          __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
          __dst.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
          strcpy(&__dst, "unknown");
          memset(&v80, 170, sizeof(v80));
          (*(*v38 + 24))(&v80, v38);
          v39 = v80.__r_.__value_.__r.__words[0];
          v40 = v80.__r_.__value_.__r.__words[0] + 24 * v38[8];
          if (&__dst != v40)
          {
            v41 = *(v40 + 23);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v41 >= 0)
              {
                v50 = (v80.__r_.__value_.__r.__words[0] + 24 * v38[8]);
              }

              else
              {
                v50 = *v40;
              }

              if (v41 >= 0)
              {
                v51 = *(v40 + 23);
              }

              else
              {
                v51 = *(v40 + 8);
              }

              std::string::__assign_no_alias<false>(&__dst, v50, v51);
            }

            else if ((*(v40 + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(&__dst, *v40, *(v40 + 8));
            }

            else
            {
              v42 = *v40;
              __dst.__r_.__value_.__r.__words[2] = *(v40 + 16);
              *&__dst.__r_.__value_.__l.__data_ = v42;
            }

            v39 = v80.__r_.__value_.__r.__words[0];
          }

          if (v39)
          {
            v52 = v80.__r_.__value_.__l.__size_;
            v53 = v39;
            if (v80.__r_.__value_.__l.__size_ != v39)
            {
              do
              {
                v54 = *(v52 - 1);
                v52 -= 3;
                if (v54 < 0)
                {
                  operator delete(*v52);
                }
              }

              while (v52 != v39);
              v53 = v80.__r_.__value_.__r.__words[0];
            }

            v80.__r_.__value_.__l.__size_ = v39;
            operator delete(v53);
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
            {
              goto LABEL_101;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
            {
              goto LABEL_101;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            boost::core::demangle(&v80, (0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL));
            if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = &v80;
            }

            else
            {
              v55 = v80.__r_.__value_.__r.__words[0];
            }

            p_dst = &__dst;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v55, v38[8], p_dst);
            if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v80.__r_.__value_.__l.__data_);
            }
          }

LABEL_101:
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventSkipPersonalize>(v79.__r_.__value_.__l.__data_, &cf, 1);
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
            {
LABEL_103:
              if ((gBBULogVerbosity & 0x80000000) == 0)
              {
                boost::core::demangle(&v80, (0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL));
                v57 = (v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v80 : v80.__r_.__value_.__r.__words[0];
                _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v57);
                if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v80.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
            {
              goto LABEL_103;
            }
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v58 = v79.__r_.__value_.__l.__size_;
          if (v79.__r_.__value_.__l.__size_ && !atomic_fetch_add((v79.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v58->__on_zero_shared)(v58);
            std::__shared_weak_count::__release_weak(v58);
          }

          goto LABEL_69;
        }
      }
    }

    v49 = BBUpdaterController::performFirstStageInternal(a1, 1, &v77, &__p);
    if (!v49)
    {
      goto LABEL_69;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_186;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_186:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 341, "kBBUReturnSuccess == ret");
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __p;
    }

    v82 = v49;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    goto LABEL_69;
  }

  if (v2 != 8)
  {
    if (v2 != 32)
    {
      goto LABEL_232;
    }

    v20 = *(a1 + 56);
    BBUFeedback::handleComment(v20, "entering %s", "StageContext::PersonalizeEUICC");
    v21 = *(v20 + 19);
    v22 = *(v20 + 18);
    if (v21 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = ((v21 - v22) << 7) - 1;
    }

    v24 = *(v20 + 22);
    v25 = v24 + *(v20 + 21);
    if (v23 == v25)
    {
      std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v20 + 136);
      v22 = *(v20 + 18);
      v24 = *(v20 + 22);
      v25 = *(v20 + 21) + v24;
    }

    *(*(v22 + ((v25 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v25 & 0x3FF)) = 5;
    *(v20 + 22) = v24 + 1;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_34;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(19, 1, "BBUpdaterController", "", "perform eUICC update\n");
    }

LABEL_34:
    v26 = *(a1 + 40);
    cf.__r_.__value_.__r.__words[0] = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    v27 = eUICC::Run((a1 + 152), FirmwareDataSource, &cf.__r_.__value_.__l.__data_);
    if (cf.__r_.__value_.__r.__words[0])
    {
      CFRelease(cf.__r_.__value_.__l.__data_);
    }

    if (!v27)
    {
      v28 = *(a1 + 40);
      __dst.__r_.__value_.__r.__words[0] = v28;
      if (v28)
      {
        CFRetain(v28);
      }

      v29 = eUICC::Done(&__dst);
      if (__dst.__r_.__value_.__r.__words[0])
      {
        CFRelease(__dst.__r_.__value_.__l.__data_);
      }

      if (v29)
      {
        BBUpdaterController::getShouldFuseProvision(a1, &v77);
        goto LABEL_69;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_157;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_157;
        }
      }

      if (gBBULogVerbosity > 5)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2520, "eUICC::Done( fOptions)");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_158;
        }
      }

LABEL_157:
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_69;
      }

LABEL_158:
      if (gBBULogVerbosity >= 1)
      {
        _BBULog(19, 1, "BBUpdaterController", "", "eUICC is not done yet, waiting\n");
      }

      goto LABEL_69;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_143;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_143:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2515, "ret == kBBUReturnSuccess");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v79, BBUReturnAsString::BBUReturnStrings[v27]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed performing eUICC: ", &v79, &v80);
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v80;
    }

    v82 = v27;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__dst);
    goto LABEL_122;
  }

  v43 = *(a1 + 56);
  BBUFeedback::handleComment(v43, "entering %s", "StageContext::PersonalizeBooted");
  v44 = *(v43 + 19);
  v45 = *(v43 + 18);
  if (v44 == v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = ((v44 - v45) << 7) - 1;
  }

  v47 = *(v43 + 22);
  v48 = v47 + *(v43 + 21);
  if (v46 == v48)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v43 + 136);
    v45 = *(v43 + 18);
    v47 = *(v43 + 22);
    v48 = *(v43 + 21) + v47;
  }

  *(*(v45 + ((v48 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v48 & 0x3FF)) = 4;
  *(v43 + 22) = v47 + 1;
  if (!(*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 48), 2, 1))
  {
    v17 = BBUpdaterController::bootupInternal(a1, &v77);
    if (!v17)
    {
      v17 = BBUpdaterController::performPingInternal(a1);
      if (!v17)
      {
        goto LABEL_67;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_176;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_176;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 449, "kBBUReturnSuccess == ret");
      }

LABEL_176:
      std::string::basic_string[abi:ne200100]<0>(&v79, BBUReturnAsString::BBUReturnStrings[v17]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to ping baseband: ", &v79, &v80);
      v19 = capabilities::updater::intermittentFailureRetryCount(v67);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        __dst = v80;
        goto LABEL_222;
      }

      goto LABEL_221;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_151;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_151;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 438, "kBBUReturnSuccess == ret");
    }

LABEL_151:
    std::string::basic_string[abi:ne200100]<0>(&v79, BBUReturnAsString::BBUReturnStrings[v17]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to bootup baseband: ", &v79, &v80);
    v19 = capabilities::updater::intermittentFailureRetryCount(v60);
    if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __dst = v80;
      goto LABEL_222;
    }

LABEL_221:
    v72 = v19;
    std::string::__init_copy_ctor_external(&__dst, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    v19 = v72;
    goto LABEL_222;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_69;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 428, "kBBUReturnSuccess == ret");
  }

LABEL_69:
  BBUFeedback::exitStageContext(*(a1 + 56));
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5255C48(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a30)
  {
    (*(*a30 + 16))(a30, a2, a3, a4, a5, a6, a7, a8);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUpdaterController::performFirstStageInternal(uint64_t a1, int a2, void *a3, std::string *a4)
{
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *a3;
    v10 = (*(**(v8 + 16) + 24))(*(v8 + 16));
    (*(*v9 + 200))(v9, v10);
    v11 = *a3;
    v12 = (*(**(*(a1 + 96) + 24) + 24))(*(*(a1 + 96) + 24));
    (*(*v11 + 208))(v11, v12);
  }

  v13 = (*(**a3 + 32))(*a3, a2 ^ 1u);
  if (!v13)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_26:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2193, "source");
        }
      }
    }

    std::string::__assign_external(a4, "Firmware data does not contain programmer\n", 0x2AuLL);
    result = 35;
    goto LABEL_21;
  }

  if (!*(a1 + 80))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x893u, "Assertion failure(fLoader && No valid BBULoader!)");
  }

  v14 = v13;
  if (*(*(a1 + 96) + 88) == 3 && ((*(**a3 + 48))() & 1) == 0 && (a2 & 1) == 0)
  {
    BBUFeedback::handleComment(*(a1 + 56), "Attempting to load an unpersonalized image on a fused radio\n");
    v15 = *(a1 + 56);
    v16 = (*(**a3 + 48))();
    BBUFeedback::handleComment(v15, "hasManifestSource() = %d, personalize = %d\n", v16, 0);
    result = 34;
    goto LABEL_21;
  }

  v34 = 0;
  value = 0;
  v18 = *(a1 + 40);
  if (v18 && CFDictionaryGetValueIfPresent(v18, @"EraseEFS", &value) && (v19 = value) != 0 && (v20 = CFGetTypeID(value), v20 == CFBooleanGetTypeID()) && (ctu::cf::assign(&v34, v19, v21), (v34 & 1) != 0) && BBUpdaterController::performFirstStageInternal(BOOL,std::unique_ptr<BBUUpdateSource> &,std::string &)::EFSErased != 1 || *(a1 + 362) == 1)
  {
    v22 = (*(**a3 + 176))();
    if (!v22)
    {
      BBUpdaterController::performFirstStageInternal(BOOL,std::unique_ptr<BBUUpdateSource> &,std::string &)::EFSErased = 1;
      *(a1 + 362) = 0;
      goto LABEL_18;
    }

    v27 = v22;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_42:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2212, "ret == kBBUReturnSuccess");
        }
      }
    }

    v28 = "failed erasing baseband filesystem\n";
    v29 = a4;
    v30 = 35;
    goto LABEL_45;
  }

LABEL_18:
  result = (*(**(a1 + 80) + 40))(*(a1 + 80), a1 + 152, v14, a2 ^ 1u);
  if (!result)
  {
    v23 = (*(**(a1 + 80) + 48))(*(a1 + 80), a1 + 152, v14);
    if (!v23)
    {
      (*(**(a1 + 64) + 40))(*(a1 + 64), a1 + 152);
      result = 0;
      goto LABEL_21;
    }

    v27 = v23;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_37:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2221, "kBBUReturnSuccess == ret");
        }
      }
    }

    v28 = "Failed starting loader.";
    v29 = a4;
    v30 = 23;
LABEL_45:
    std::string::__assign_external(v29, v28, v30);
    result = v27;
    goto LABEL_21;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v32 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v32;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_31:
      if (gBBULogVerbosity >= 6)
      {
        v26 = result;
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2218, "kBBUReturnSuccess == ret");
        result = v26;
      }
    }
  }

  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    a4->__r_.__value_.__l.__size_ = 22;
    a4 = a4->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&a4->__r_.__value_.__s + 23) = 22;
  }

  strcpy(a4, "Failed loading loader.");
LABEL_21:
  v24 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v24)
  {
    v25 = result;
    (*(*v24 + 8))(v24);
    return v25;
  }

  return result;
}

uint64_t BBUpdaterController::performSecondStageInternal(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = 0;
  v8 = (*(**a3 + 128))();
  memset(&__p, 0, sizeof(__p));
  v9 = *(*(a1 + 96) + 32);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 100, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x91Au, "Assertion failure(fPersonalizationParameters->getSerialNumber() && Invalid serial number)");
  }

  (*(*v9 + 24))(&value);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = value;
  v10 = (*(**a3 + 40))();
  v11 = *a3;
  v12 = *(*(a1 + 96) + 88);
  v13 = *(a1 + 40);
  if (v13 && (value.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL, CFDictionaryGetValueIfPresent(v13, @"apTicket", &value.__r_.__value_.__l.__data_)) && (v14 = CFGetTypeID(value.__r_.__value_.__l.__data_), v14 == CFDataGetTypeID()))
  {
    v15 = value.__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = 0;
  }

  v16 = (*(*v11 + 168))(v11, &__p, v10, v12 == 3, v15, *(a1 + 363));
  if (!v16)
  {
    v17 = *(a1 + 88);
    v18 = (*(**a3 + 72))();
    v19 = *(a1 + 260);
    LODWORD(v34) = 1;
    HIDWORD(v34) = BBUpdaterController::getNVRestoreSetting(*(a1 + 40));
    v20 = (*(*v17 + 40))(v17, v10, 0, a2, v8, v18, v19, 1, 1, &v39, v34);
    v16 = v20;
    if (a2)
    {
      if (!v20)
      {
        if (v39 != 1)
        {
          goto LABEL_39;
        }

        v21 = *a3;
        (*(**(a1 + 88) + 112))(&value);
        (*(*v21 + 192))(v21, &value);
        v22 = value.__r_.__value_.__r.__words[0];
        if (value.__r_.__value_.__r.__words[0])
        {
          size = value.__r_.__value_.__l.__size_;
          v24 = value.__r_.__value_.__r.__words[0];
          if (value.__r_.__value_.__l.__size_ != value.__r_.__value_.__r.__words[0])
          {
            do
            {
              v25 = *(size - 1);
              size -= 3;
              if (v25 < 0)
              {
                operator delete(*size);
              }
            }

            while (size != v22);
            v24 = value.__r_.__value_.__r.__words[0];
          }

          value.__r_.__value_.__l.__size_ = v22;
          operator delete(v24);
        }

        v16 = (*(**a3 + 136))();
        if (!v16)
        {
LABEL_39:
          v16 = (*(**(a1 + 88) + 24))(*(a1 + 88));
          if (!v16)
          {
            (*(**(a1 + 64) + 40))(*(a1 + 64), a1 + 152);
            v16 = 0;
            goto LABEL_41;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_51:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2372, "kBBUReturnSuccess == ret");
              }
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&v36, BBUReturnAsString::BBUReturnStrings[v16]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed disconnecting programmer ", &v36, &value);
          if (*(a4 + 23) < 0)
          {
            operator delete(*a4);
          }

          *a4 = value;
          *(&value.__r_.__value_.__s + 23) = 0;
          value.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }

          if (*(a4 + 23) >= 0)
          {
            v31 = a4;
          }

          else
          {
            v31 = *a4;
          }

          goto LABEL_62;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_79;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_79;
          }
        }

        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2361, "kBBUReturnSuccess == ret");
        }

LABEL_79:
        (*(**(a1 + 88) + 24))(*(a1 + 88));
        std::string::basic_string[abi:ne200100]<0>(&v35, BBUReturnAsString::BBUReturnStrings[v16]);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed sending images ", &v35, &v36);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&value, "\n", &v36);
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = value;
        *(&value.__r_.__value_.__s + 23) = 0;
        value.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_83:
            if (gBBULogMaskGet(void)::once == -1)
            {
LABEL_84:
              if (*(a4 + 23) >= 0)
              {
                v32 = a4;
              }

              else
              {
                v32 = *a4;
              }

              _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s", v32);
LABEL_41:
              v29 = *(a1 + 88);
              *(a1 + 88) = 0;
              if (v29)
              {
                (*(*v29 + 8))(v29);
              }

              goto LABEL_43;
            }

LABEL_90:
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            goto LABEL_84;
          }
        }

        else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        operator delete(v35.__r_.__value_.__l.__data_);
        if (gBBULogMaskGet(void)::once == -1)
        {
          goto LABEL_84;
        }

        goto LABEL_90;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_67;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2350, "kBBUReturnSuccess == ret");
      }

LABEL_67:
      (*(**(a1 + 88) + 24))(*(a1 + 88));
      std::string::basic_string[abi:ne200100]<0>(&v36, BBUReturnAsString::BBUReturnStrings[v16]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed personalizing in second stage ", &v36, &value);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = value;
      *(&value.__r_.__value_.__s + 23) = 0;
      value.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        goto LABEL_72;
      }

      goto LABEL_92;
    }

    if (!v20)
    {
      goto LABEL_39;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_23;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2368, "kBBUReturnSuccess == ret");
    }

LABEL_23:
    (*(**(a1 + 88) + 24))(*(a1 + 88));
    if (v16 == 65)
    {
      v26 = "Wrong firmware, doesn’t match hardware ID ";
    }

    else
    {
      v26 = "Failed sending images ";
    }

    std::string::__assign_external(a4, v26);
    std::string::basic_string[abi:ne200100]<0>(&value, BBUReturnAsString::BBUReturnStrings[v16]);
    if ((value.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_value = &value;
    }

    else
    {
      p_value = value.__r_.__value_.__r.__words[0];
    }

    if ((value.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(value.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = value.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, p_value, v28);
    if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value.__r_.__value_.__l.__data_);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_72;
    }

LABEL_92:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
LABEL_72:
    if (*(a4 + 23) >= 0)
    {
      v31 = a4;
    }

    else
    {
      v31 = *a4;
    }

LABEL_62:
    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s", v31);
    goto LABEL_41;
  }

LABEL_43:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return v16;
}

void sub_1E52570AC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    if (!v35)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v35)
  {
    goto LABEL_7;
  }

  (*(*v35 + 8))(v35, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v23 = v4;
  v24 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v4 + 24))(__p, v4);
  v5 = __p[0];
  v6 = (__p[0] + 24 * v4[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v22) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * v4[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v22 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_34;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = __dst;
    if (v22 < 0)
    {
      v15 = __dst[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, v4[8], v15);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_34:
  v16 = v23;
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventRetry>(v23) && boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventRetry,BBUpdaterControllerFSM::eventRetry>(v16, a2))
  {
    v17 = (_MergedGlobals_1[*(v16 + 32) + 240])(v16, 0);
    if (!((_MergedGlobals_1[*(v16 + 36) + 240])(v16, 1) | v17))
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(v16, v16, *(v16 + 32));
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(v16, v16, *(v16 + 36));
    }

    *(v16 + 100) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(v16);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_47;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v18);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_47:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst[0]);
  }

  v19 = v24;
  if (v24)
  {
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }
}

void sub_1E525758C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *__return_ptr a1@<X8>, char *__s@<X1>, std::string *a3@<X0>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a3, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t BBUpdaterController::bootupInternal(BBULoader **a1, uint64_t *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  InfoFirstStageInternal = (*(**a2 + 80))();
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_12:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2763, "kBBUReturnSuccess == ret");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Miss images for bootupInternal\n");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = __p;
    }

    v10 = InfoFirstStageInternal;
    v11 = 0;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_7;
  }

  BBUFeedback::handleBeginPhase(a1[7], "bootup");
  InfoFirstStageInternal = BBUpdaterController::queryInfoFirstStageInternal(a1, v5);
  BBUFeedback::handleComment(a1[7], "queryInfoFirstStageInternal ret status is %d", InfoFirstStageInternal);
  if (!InfoFirstStageInternal)
  {
    InfoFirstStageInternal = BBUpdaterController::pushImagesInternal(a1, a2, 0, v12);
    if (v13 >= 0)
    {
      v6 = v12;
    }

    else
    {
      v6 = v12[0];
    }

    BBUFeedback::handleComment(a1[7], "pushImagesInternal ret status is %d: %s\n", InfoFirstStageInternal, v6);
    goto LABEL_7;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2769, "kBBUReturnSuccess == ret");
  }

LABEL_7:
  (*(*a1[7] + 16))(a1[7], InfoFirstStageInternal);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return InfoFirstStageInternal;
}

void sub_1E5257954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUpdaterController::performPingInternal(CFDictionaryRef *this)
{
  value[0] = 0;
  v2 = capabilities::updater::pingDelay(this);
  v3 = *(this + 89);
  if (v3)
  {
    goto LABEL_8;
  }

  v4 = v2;
  if (CFDictionaryGetValueIfPresent(this[5], @"waitForReadyDelayMilliseconds", value))
  {
    block = 0;
    v5 = value[0];
    if (value[0])
    {
      v6 = CFGetTypeID(value[0]);
      if (v6 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&block, v5, v7);
        if (block > 0)
        {
          v4 = block;
        }
      }
    }
  }

  v3 = v4;
  if (v4 >= 1)
  {
LABEL_8:
    BBUFeedback::handleComment(this[7], "Waiting %llu milliseconds before first ping", v3);
    v8 = 1000000 * v3;
    if (v3 >= 0x8637BD057A0)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    value[0] = v8;
    std::this_thread::sleep_for (value);
  }

  TransportNoEvents = BBUpdaterController::createTransportNoEvents(this, 0, 8);
  if (TransportNoEvents)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_17:
        if (gBBULogVerbosity >= 6)
        {
          v11 = TransportNoEvents;
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2411, "kBBUReturnSuccess == ret");
          TransportNoEvents = v11;
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            TransportNoEvents = v11;
          }
        }
      }
    }

    else
    {
      v16 = TransportNoEvents;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      TransportNoEvents = v16;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    v12 = TransportNoEvents;
    std::string::basic_string[abi:ne200100]<0>(value, BBUReturnAsString::BBUReturnStrings[TransportNoEvents]);
    if (v19 >= 0)
    {
      v13 = value;
    }

    else
    {
      v13 = value[0];
    }

    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "Fail to create transport %s\n", v13);
    if (v19 < 0)
    {
      operator delete(value[0]);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v14 = off_1ED944120;
    if (!off_1ED944120)
    {
      BBUError::create_default_global(value);
      std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, value);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](value);
      v14 = off_1ED944120;
    }

    block = v14;
    v21 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    std::string::basic_string[abi:ne200100]<0>(value, "Fail to create transport\n");
    goto LABEL_40;
  }

  v10 = (*(*this[9] + 24))(this[9], this + 19);
  if (!v10)
  {
    TelephonyBasebandGetReset();
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    v19 = 17;
    *value = *"kBBUReturnSuccess";
    v18 = str_5[16];
    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "BB ping return status: %s\n", value);
    if (v19 < 0)
    {
      operator delete(value[0]);
    }

    return 0;
  }

  v12 = v10;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_32:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2418, "kBBUReturnSuccess == ret");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }
      }
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_32;
    }
  }

  _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "Timeout on waiting for BB init status\n");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v14 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(value);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, value);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](value);
    v14 = off_1ED944120;
  }

  block = v14;
  v21 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(value, "Timeout on waiting for BB init status\n");
LABEL_40:
  BBUError::addError(v14, value, v12);
  if (v19 < 0)
  {
    operator delete(value[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
  return v12;
}

void BBUpdaterController::performBootedStageInternal(const __CFDictionary **a1, uint64_t *a2)
{
  if (!BBUpdaterController::shouldPerformEUICC(a1))
  {
    goto LABEL_29;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_6;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(19, 1, "BBUpdaterController", "", "Running eUICC\n");
  }

LABEL_6:
  v4 = *a2;
  v5 = a1[5];
  v32 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = eUICC::Run(a1 + 19, v4, &v32);
  if (v32)
  {
    CFRelease(v32);
  }

  if (v6)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_83;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2457, "ret == kBBUReturnSuccess");
    }

LABEL_83:
    std::string::basic_string[abi:ne200100]<0>(&v28, BBUReturnAsString::BBUReturnStrings[v6]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed running eUICC: ", &v28, &v33);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v33;
    }

    v30 = v6;
    v31 = 0;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_88:
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_92;
      }
    }

    else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_92:
    operator delete(v28.__r_.__value_.__l.__data_);
    return;
  }

  v7 = a1[5];
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (eUICC::Done(&cf))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_29;
  }

  v8 = *(a1[12] + 22);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8 != 3)
  {
LABEL_29:
    ShouldFuseProvision = BBUpdaterController::getShouldFuseProvision(a1, a2);
    if (!ShouldFuseProvision)
    {
      return;
    }

    v25 = ShouldFuseProvision;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_73:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2473, "kBBUReturnSuccess == ret");
          if (gBBULogMaskGet(void)::once != -1)
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          }
        }
      }
    }

    _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "getShouldFuseProv %d\n", v25);
    return;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_23;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(19, 1, "BBUpdaterController", "", "eUICC is not done yet\n");
  }

LABEL_23:
  v10 = a1[2];
  v9 = a1[3];
  v28.__r_.__value_.__r.__words[0] = v10;
  v28.__r_.__value_.__l.__size_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  __p.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __p.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
  strcpy(&__p, "unknown");
  memset(&v33, 170, sizeof(v33));
  (*(*v10 + 24))(&v33, v10);
  v11 = v33.__r_.__value_.__r.__words[0];
  v12 = v33.__r_.__value_.__r.__words[0] + 24 * v10[8];
  if (&__p != v12)
  {
    v13 = *(v12 + 23);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v13 >= 0)
      {
        v16 = (v33.__r_.__value_.__r.__words[0] + 24 * v10[8]);
      }

      else
      {
        v16 = *v12;
      }

      if (v13 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = *(v12 + 8);
      }

      std::string::__assign_no_alias<false>(&__p, v16, v17);
    }

    else if ((*(v12 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&__p, *v12, *(v12 + 8));
    }

    else
    {
      v14 = *v12;
      __p.__r_.__value_.__r.__words[2] = *(v12 + 16);
      *&__p.__r_.__value_.__l.__data_ = v14;
    }

    v11 = v33.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    size = v33.__r_.__value_.__l.__size_;
    v19 = v11;
    if (v33.__r_.__value_.__l.__size_ != v11)
    {
      do
      {
        v20 = *(size - 1);
        size -= 3;
        if (v20 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v11);
      v19 = v33.__r_.__value_.__r.__words[0];
    }

    v33.__r_.__value_.__l.__size_ = v11;
    operator delete(v19);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_58;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(&v33, (0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL));
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v33;
    }

    else
    {
      v21 = v33.__r_.__value_.__r.__words[0];
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v21, v10[8], p_p);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

LABEL_58:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventEUICC>(v28.__r_.__value_.__l.__data_, &v26, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
    {
LABEL_60:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        boost::core::demangle(&v33, (0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL));
        v23 = (v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v33 : v33.__r_.__value_.__r.__words[0];
        _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v23);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
    {
      goto LABEL_60;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v24 = v28.__r_.__value_.__l.__size_;
  if (v28.__r_.__value_.__l.__size_ && !atomic_fetch_add((v28.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }
}

void sub_1E52589F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
    if ((a19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t BBUpdaterController::pushImagesInternal(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (capabilities::radio::supportsBasebandStateController(a1))
  {
    TelephonyBasebandSetBasebandState();
  }

  StageInternal = BBUpdaterController::performFirstStageInternal(a1, 0, a2, a4);
  if (StageInternal)
  {
    v25 = StageInternal;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_30;
    }

    v27 = 2704;
LABEL_41:
    v30 = v27;
LABEL_46:
    StageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", v30, "kBBUReturnSuccess == ret");
    goto LABEL_30;
  }

  if (capabilities::updater::supportsMHIBootLogger(StageInternal))
  {
    v9 = *(a1 + 340);
    if (v9)
    {
      BBUBootLogger::create(v9, *(a1 + 56), &__p);
      v10 = *&__p.__r_.__value_.__l.__data_;
      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v11 = *(a1 + 144);
      *(a1 + 136) = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v13 = *(a1 + 136);
      if (v13)
      {
        BBUBootLogger::openTransport(v13);
      }
    }
  }

  StageInternal = BBUpdaterController::queryInfoSecondStageInternal(a1, 0, a2);
  if (StageInternal)
  {
    v25 = StageInternal;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_30;
    }

    v27 = 2717;
    goto LABEL_41;
  }

  if (!*(a1 + 88))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0xAA0u, "Assertion failure(fProgrammer && No valid BBU Programmer!)");
  }

  if (!a3 || !capabilities::updater::shouldSkipRestoreForUnfused(StageInternal))
  {
    goto LABEL_27;
  }

  v14 = *a2;
  (*(**(a1 + 88) + 112))(&__p);
  (*(*v14 + 192))(v14, &__p);
  v15 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v16 = __p.__r_.__value_.__l.__size_;
    v17 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v15;
    operator delete(v17);
  }

  v19 = (*(**a2 + 136))();
  if (!v19)
  {
LABEL_27:
    v20 = *(a1 + 96);
    if (v20)
    {
      v21 = *a2;
      v22 = (*(**(v20 + 16) + 24))(*(v20 + 16));
      (*(*v21 + 200))(v21, v22);
      v23 = *a2;
      v24 = (*(**(*(a1 + 96) + 24) + 24))(*(*(a1 + 96) + 24));
      (*(*v23 + 208))(v23, v24);
    }

    StageInternal = BBUpdaterController::performSecondStageInternal(a1, 0, a2, a4);
    v25 = 0;
    if (!StageInternal)
    {
      goto LABEL_30;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v29 = StageInternal;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      StageInternal = v29;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_64;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      v30 = 2744;
      v25 = StageInternal;
      goto LABEL_46;
    }

LABEL_64:
    v25 = StageInternal;
    goto LABEL_30;
  }

  v25 = v19;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_49:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2732, "kBBUReturnSuccess == ret");
      }
    }
  }

  (*(**(a1 + 88) + 24))(*(a1 + 88));
  std::string::basic_string[abi:ne200100]<0>(&v31, BBUReturnAsString::BBUReturnStrings[v25]);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed saving images ", &v31, &__p);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  StageInternal = _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "%s");
LABEL_30:
  if (capabilities::radio::supportsBasebandStateController(StageInternal))
  {
    TelephonyBasebandSetBasebandState();
  }

  return v25;
}

void sub_1E52591E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::bootup(BBUpdaterController *this)
{
  v2 = *(this + 7);
  BBUFeedback::handleComment(v2, "entering %s", "StageContext::Boot");
  v3 = *(v2 + 19);
  v4 = *(v2 + 18);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v3 - v4) << 7) - 1;
  }

  v6 = *(v2 + 22);
  v7 = v6 + *(v2 + 21);
  if (v5 == v7)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v2 + 136);
    v4 = *(v2 + 18);
    v6 = *(v2 + 22);
    v7 = *(v2 + 21) + v6;
  }

  *(*(v4 + ((v7 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v7 & 0x3FF)) = 1;
  *(v2 + 22) = v6 + 1;
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  v13 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_18:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 522, "updateSource");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to get update source for bootup\n");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&value, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      value = __p;
    }

    v12 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &value);
    if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_13;
  }

  v9 = BBUpdaterController::bootupInternal(this, &v13);
  if (v9)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 530, "kBBUReturnSuccess == ret");
    }
  }

  else
  {
    if (!capabilities::updater::shouldWaitForReadyAfterBoot(v9) || (value.__r_.__value_.__r.__words[0] = 0, !CFDictionaryGetValueIfPresent(*(this + 5), @"waitForReady", &value.__r_.__value_.__l.__data_)) || !CFBooleanGetValue(value.__r_.__value_.__l.__data_) || !BBUpdaterController::performPingInternal(this))
    {
      CFDictionarySetValue(*(this + 4), @"done", *MEMORY[0x1E695E4D0]);
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(this + 2), *(this + 3), &value);
      goto LABEL_13;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 540, "kBBUReturnSuccess == ret");
    }
  }

LABEL_13:
  BBUFeedback::exitStageContext(*(this + 7));
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }
}

void sub_1E52595E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(int *a1, std::__shared_weak_count *a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*a1 + 24))(__p, a1);
  v5 = __p[0];
  v6 = (__p[0] + 24 * a1[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v20) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * a1[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v20 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_34;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FA11 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = __dst;
    if (v20 < 0)
    {
      v15 = __dst[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, a1[8], v15);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_34:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventContinue>(v21, a3, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_42;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FA11 & 0x7FFFFFFFFFFFFFFFLL));
    v16 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v16);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_42:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = v22;
  if (v22)
  {
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_1E52599D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::string>::~vector[abi:ne200100](&a12);
  if ((a23 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
  _Unwind_Resume(a1);
}

void BBUpdaterController::checkManifest(BBUpdaterController *this)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUpdaterController", "", "Perform manifest check\n");
  }

LABEL_5:
  v2 = *(this + 7);
  BBUFeedback::handleComment(v2, "entering %s", "StageContext::CheckManifest");
  v3 = *(v2 + 19);
  v4 = *(v2 + 18);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v3 - v4) << 7) - 1;
  }

  v6 = *(v2 + 22);
  v7 = v6 + *(v2 + 21);
  if (v5 == v7)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v2 + 136);
    v4 = *(v2 + 18);
    v6 = *(v2 + 22);
    v7 = *(v2 + 21) + v6;
  }

  *(*(v4 + ((v7 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v7 & 0x3FF)) = 7;
  *(v2 + 22) = v6 + 1;
  *(this + 363) = 1;
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  v38 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_72:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 567, "updateSource");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v40, "Fail to get update source for checkManifest\n");
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v43, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      *v43 = v40;
    }

    *&v43[24] = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, v43);
    if ((v43[23] & 0x80000000) != 0)
    {
      operator delete(*v43);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    goto LABEL_60;
  }

  if (!(*(**(this + 9) + 40))(*(this + 9), *(this + 6), 2, 1))
  {
    *(this + 360) = 1;
    LODWORD(v9) = BBUpdaterController::bootupInternal(this, &v38);
    if (!v9)
    {
      LODWORD(v9) = BBUpdaterController::performPingInternal(this);
      if (!v9)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_19;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(13, 0, "BBUpdaterController", "", "Perform internal manifest check\n");
        }

LABEL_19:
        v50 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v49[7] = v10;
        v49[8] = v10;
        v49[5] = v10;
        v49[6] = v10;
        v49[3] = v10;
        v49[4] = v10;
        v49[1] = v10;
        v49[2] = v10;
        v48 = v10;
        v49[0] = v10;
        *__p = v10;
        v47 = v10;
        v44 = v10;
        v45 = v10;
        *v43 = v10;
        *&v43[16] = v10;
        std::ostringstream::basic_ostringstream[abi:ne200100](v43);
        v42 = 0;
        v11 = (*(**(this + 9) + 96))(*(this + 9), this + 152, *(this + 12), &v42, this + 240, 0);
        LODWORD(v9) = v11;
        if (!v11)
        {
          v12 = *(this + 12);
          v14 = v12[8];
          v13 = v12[9];
          v15 = v12[10];
          if (v13)
          {
            v11 = (*(*v13 + 24))(v13);
            v16 = v11;
            if (v14)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v16 = 0xFFFFFFFFLL;
            if (v14)
            {
LABEL_22:
              v11 = (*(*v14 + 24))(v14);
              v17 = v11;
              if (v15)
              {
                goto LABEL_23;
              }

              goto LABEL_27;
            }
          }

          v17 = 0xFFFFFFFFLL;
          if (v15)
          {
LABEL_23:
            v11 = (*(*v15 + 24))(v15);
            v9 = v11;
            if (!v14)
            {
              goto LABEL_34;
            }

            goto LABEL_28;
          }

LABEL_27:
          v9 = 0xFFFFFFFFLL;
          if (!v14)
          {
            goto LABEL_34;
          }

LABEL_28:
          if (!v13 || v16 || v17)
          {
LABEL_34:
            v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Detected non-zero cal/prov/fac manifests status  [CMStatus=", 59);
            v19 = MEMORY[0x1E69270E0](v18, v16);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " ,PMStatus=", 11);
            v21 = MEMORY[0x1E69270E0](v20, v17);
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", FCMStatus=", 12);
            v23 = MEMORY[0x1E69270E0](v22, v9);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ]", 2);
            memset(&__dst, 170, sizeof(__dst));
            if ((BYTE8(v48) & 0x10) != 0)
            {
              v26 = v48;
              if (v48 < *(&v45 + 1))
              {
                *&v48 = *(&v45 + 1);
                v26 = *(&v45 + 1);
              }

              v27 = v45;
              v24 = v26 - v45;
              if ((v26 - v45) >= 0x7FFFFFFFFFFFFFF8)
              {
                goto LABEL_66;
              }
            }

            else
            {
              if ((BYTE8(v48) & 8) == 0)
              {
                v24 = 0;
                *(&__dst.__r_.__value_.__s + 23) = 0;
                p_dst = &__dst;
                goto LABEL_48;
              }

              v27 = *&v43[24];
              v24 = *(&v44 + 1) - *&v43[24];
              if (*(&v44 + 1) - *&v43[24] >= 0x7FFFFFFFFFFFFFF8uLL)
              {
LABEL_66:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            if (v24 >= 0x17)
            {
              if ((v24 | 7) == 0x17)
              {
                v28 = 25;
              }

              else
              {
                v28 = (v24 | 7) + 1;
              }

              p_dst = operator new(v28);
              __dst.__r_.__value_.__l.__size_ = v24;
              __dst.__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = p_dst;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v24;
              p_dst = &__dst;
              if (!v24)
              {
LABEL_48:
                p_dst->__r_.__value_.__s.__data_[v24] = 0;
                v29 = &__dst;
                if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v29 = __dst.__r_.__value_.__r.__words[0];
                }

                BBUFeedback::handleComment(*(this + 7), "%s", v29);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v40, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                }

                else
                {
                  v40 = __dst;
                }

                v41 = 38;
                BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v40);
                if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v40.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_55;
                  }
                }

                else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_55:
                  LODWORD(v9) = 38;
                  goto LABEL_56;
                }

                operator delete(__dst.__r_.__value_.__l.__data_);
                goto LABEL_55;
              }
            }

            memmove(p_dst, v27, v24);
            goto LABEL_48;
          }

          if (!v15 || v9)
          {
            if (capabilities::updater::supportsFATPCalibrationManifestStatus(v11))
            {
              goto LABEL_34;
            }

            LODWORD(v9) = 0;
          }

LABEL_56:
          *v43 = *MEMORY[0x1E69E54E8];
          *&v43[*(*v43 - 24)] = *(MEMORY[0x1E69E54E8] + 24);
          *&v43[8] = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[1]);
          }

          *&v43[8] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v43[16]);
          std::ostream::~ostream();
          MEMORY[0x1E69273B0](v49);
          if (!v9)
          {
            (*(**(this + 8) + 40))(*(this + 8), this + 152);
            CFDictionarySetValue(*(this + 4), @"done", *MEMORY[0x1E695E4D0]);
            BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(this + 2), *(this + 3), v43);
            goto LABEL_60;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_105;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_105;
            }
          }

          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 604, "kBBUReturnSuccess == ret");
          }

LABEL_105:
          std::string::basic_string[abi:ne200100]<0>(&__dst, BBUReturnAsString::BBUReturnStrings[v9]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to check manifest in manifest check: ", &__dst, &v40);
          v31 = capabilities::updater::manifestCheckRetryCount(v36);
          if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            *v43 = v40;
            goto LABEL_120;
          }

LABEL_119:
          v37 = v31;
          std::string::__init_copy_ctor_external(v43, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
          v31 = v37;
LABEL_120:
          *&v43[24] = v9;
          *&v43[28] = v31;
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(this, v43);
          if ((v43[23] & 0x80000000) != 0)
          {
            operator delete(*v43);
            if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_122:
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_60;
              }

LABEL_126:
              operator delete(__dst.__r_.__value_.__l.__data_);
              goto LABEL_60;
            }
          }

          else if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_122;
          }

          operator delete(v40.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_126;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_97;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_97:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2587, "kBBUReturnSuccess == ret");
            }
          }
        }

        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "getProvisioningStatus returns: ", 31);
        v34 = strlen(BBUReturnAsString::BBUReturnStrings[v9]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, BBUReturnAsString::BBUReturnStrings[v9], v34);
        std::stringbuf::str[abi:ne200100](&__dst, &v43[8]);
        v35 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v40, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          v40 = __dst;
        }

        v41 = v9;
        BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v40);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (v35 < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_56;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_91;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 593, "kBBUReturnSuccess == ret");
      }

LABEL_91:
      std::string::basic_string[abi:ne200100]<0>(&__dst, BBUReturnAsString::BBUReturnStrings[v9]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to ping in manifest check: ", &__dst, &v40);
      v31 = capabilities::updater::manifestCheckRetryCount(v32);
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *v43 = v40;
        goto LABEL_120;
      }

      goto LABEL_119;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_84;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 583, "kBBUReturnSuccess == ret");
    }

LABEL_84:
    std::string::basic_string[abi:ne200100]<0>(&__dst, BBUReturnAsString::BBUReturnStrings[v9]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to bootup in manifest check: ", &__dst, &v40);
    v31 = capabilities::updater::manifestCheckRetryCount(v30);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      *v43 = v40;
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_60;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 572, "kBBUReturnSuccess == ret");
  }

LABEL_60:
  BBUFeedback::exitStageContext(*(this + 7));
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }
}

void sub_1E525A730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  operator delete(v35);
  std::ostringstream::~ostringstream(&a29);
  (*(*v34 + 16))(v34);
  _Unwind_Resume(a1);
}

void BBUpdaterController::finalize(BBUpdaterController *this)
{
  v48 = *MEMORY[0x1E69E9840];
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  if (FirmwareDataSource)
  {
    v3 = FirmwareDataSource;
    BBUFeedback::handleBeginPhase(*(this + 7), "Final stage");
    v45 = 0;
    v4 = (*(**(this + 9) + 96))(*(this + 9), this + 152, *(this + 12), &v45, this + 240, 0);
    v5 = *(this + 5);
    if (v5)
    {
      v6 = CFDictionaryGetValue(v5, @"BypassManifestStatusCheck");
      if (v6)
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          if (CFBooleanGetValue(v6))
          {
            BBUFeedback::handleComment(*(this + 7), "Bypass manifest status check has been specified. Returning success");
            goto LABEL_15;
          }
        }
      }
    }

    if (!v4)
    {
      if (v45)
      {
        v8 = *(this + 12);
        v9 = *(v8 + 64);
        if (v9)
        {
          v10 = (*(*v9 + 24))(v9);
          if (*(*(this + 12) + 88) == 3 && v10 != 0)
          {
LABEL_25:
            std::to_string(&__dst, v10);
            v20 = std::string::insert(&__dst, 0, "Detected non-zero prov manifest status: ", 0x28uLL);
            v22 = v20->__r_.__value_.__r.__words[0];
            size = v20->__r_.__value_.__l.__size_;
            LODWORD(cf.__r_.__value_.__l.__data_) = v20->__r_.__value_.__r.__words[2];
            *(cf.__r_.__value_.__r.__words + 3) = *(&v20->__r_.__value_.__r.__words[2] + 3);
            v23 = SHIBYTE(v20->__r_.__value_.__r.__words[2]);
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            if (v23 < 0)
            {
              std::string::__init_copy_ctor_external(value, v22, size);
            }

            else
            {
              value[0].__r_.__value_.__r.__words[0] = v22;
              value[0].__r_.__value_.__l.__size_ = size;
              LODWORD(value[0].__r_.__value_.__r.__words[2]) = cf.__r_.__value_.__l.__data_;
              *(&value[0].__r_.__value_.__r.__words[2] + 3) = *(cf.__r_.__value_.__r.__words + 3);
              *(&value[0].__r_.__value_.__s + 23) = v23;
            }

            value[1].__r_.__value_.__r.__words[0] = 27;
            BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
            if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(value[0].__r_.__value_.__l.__data_);
              if ((v23 & 0x80000000) == 0)
              {
LABEL_43:
                if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_44:
                  v4 = 27;
                  goto LABEL_45;
                }

LABEL_64:
                operator delete(__dst.__r_.__value_.__l.__data_);
                goto LABEL_44;
              }
            }

            else if ((v23 & 0x80000000) == 0)
            {
              goto LABEL_43;
            }

            operator delete(v22);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_64;
          }
        }

        else
        {
          v10 = -1;
          if (*(v8 + 88) == 3)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v12 = *(this + 9);
        NVRestoreSetting = BBUpdaterController::getNVRestoreSetting(*(this + 5));
        __dst.__r_.__value_.__s.__data_[0] = -1;
        v14 = *(this + 5);
        if (!v14)
        {
          v18 = -1;
          goto LABEL_35;
        }

        value[0].__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        if (CFDictionaryGetValueIfPresent(v14, @"IMEISwVersion", &value[0].__r_.__value_.__l.__data_) && (v15 = value[0].__r_.__value_.__r.__words[0]) != 0 && (v16 = CFGetTypeID(value[0].__r_.__value_.__l.__data_), v16 == CFNumberGetTypeID()))
        {
          if (ctu::cf::assign(&__dst, v15, v17))
          {
            v18 = __dst.__r_.__value_.__s.__data_[0];
          }

          else
          {
            v18 = -1;
          }

          v19 = *(this + 5);
          if (!v19)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v18 = -1;
          v19 = *(this + 5);
          if (!v19)
          {
            goto LABEL_35;
          }
        }

        cf.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        if (CFDictionaryGetValueIfPresent(v19, @"NVSerialNumber", &cf.__r_.__value_.__l.__data_))
        {
          v24 = CFGetTypeID(cf.__r_.__value_.__l.__data_);
          if (v24 == CFStringGetTypeID())
          {
            memset(value, 170, 0x400uLL);
            CFStringGetCString(cf.__r_.__value_.__l.__data_, value, 1024, 0x8000100u);
            v25 = strlen(value);
            if (v25 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = v25;
            if (v25 >= 0x17)
            {
              if ((v25 | 7) == 0x17)
              {
                v43 = 25;
              }

              else
              {
                v43 = (v25 | 7) + 1;
              }

              p_dst = operator new(v43);
              __dst.__r_.__value_.__l.__size_ = v26;
              __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = p_dst;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v25;
              p_dst = &__dst;
              if (!v25)
              {
                goto LABEL_112;
              }
            }

            memcpy(p_dst, value, v26);
LABEL_112:
            *(p_dst + v26) = 0;
LABEL_36:
            v4 = (*(*v12 + 48))(v12, this + 152, 8, NVRestoreSetting, v18, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (!v4)
            {
              (*(**(this + 8) + 40))(*(this + 8), this + 152);
              v4 = 0;
              goto LABEL_49;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_134;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_134;
              }
            }

            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2677, "kBBUReturnSuccess == ret");
            }

LABEL_134:
            std::string::basic_string[abi:ne200100]<0>(&cf, BBUReturnAsString::BBUReturnStrings[v4]);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed to finalize: ", &cf, &__dst);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
            }

            else
            {
              value[0] = __dst;
            }

            value[1].__r_.__value_.__r.__words[0] = v4;
            BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
            if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(value[0].__r_.__value_.__l.__data_);
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_167:
                if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_49;
                }

LABEL_171:
                operator delete(cf.__r_.__value_.__l.__data_);
                goto LABEL_49;
              }
            }

            else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_167;
            }

            operator delete(__dst.__r_.__value_.__l.__data_);
            if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_171;
          }
        }

LABEL_35:
        *(&__dst.__r_.__value_.__s + 23) = 0;
        __dst.__r_.__value_.__s.__data_[0] = 0;
        goto LABEL_36;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_127;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_127:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2644, "key_aligned");
          }
        }
      }

      BBUFeedback::handleComment(*(this + 7), "Key alignment is required");
      v4 = 41;
      goto LABEL_45;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_123;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_123;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2640, "ret == kBBUReturnSuccess");
    }

LABEL_123:
    std::to_string(&cf, v4);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Fail to getProvisioningStatus", &cf, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      value[0] = __dst;
    }

    value[1].__r_.__value_.__r.__words[0] = v4;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
    if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value[0].__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_159:
        if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

LABEL_163:
        operator delete(cf.__r_.__value_.__l.__data_);
LABEL_45:
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_49;
          }
        }

        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2673, "ret==kBBUReturnSuccess");
        }

LABEL_49:
        (*(**(this + 7) + 16))(*(this + 7), v4);
        if (v4 == 41)
        {
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
            {
              goto LABEL_54;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
            {
              goto LABEL_54;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            _BBULog(13, 0, "BBUpdaterController", "", "re-personalize\n");
          }

LABEL_54:
          v29 = *(this + 2);
          v28 = *(this + 3);
          cf.__r_.__value_.__r.__words[0] = v29;
          cf.__r_.__value_.__l.__size_ = v28;
          if (v28)
          {
            atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
          }

          value[0].__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
          value[0].__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
          strcpy(value, "unknown");
          memset(&__dst, 170, sizeof(__dst));
          (*(*v29 + 24))(&__dst, v29);
          v30 = __dst.__r_.__value_.__r.__words[0];
          v31 = __dst.__r_.__value_.__r.__words[0] + 24 * v29[8];
          if (value != v31)
          {
            v32 = *(v31 + 23);
            if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
            {
              if (v32 >= 0)
              {
                v34 = (__dst.__r_.__value_.__r.__words[0] + 24 * v29[8]);
              }

              else
              {
                v34 = *v31;
              }

              if (v32 >= 0)
              {
                v35 = *(v31 + 23);
              }

              else
              {
                v35 = *(v31 + 8);
              }

              std::string::__assign_no_alias<false>(value, v34, v35);
            }

            else if ((*(v31 + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(value, *v31, *(v31 + 8));
            }

            else
            {
              v33 = *v31;
              value[0].__r_.__value_.__r.__words[2] = *(v31 + 16);
              *&value[0].__r_.__value_.__l.__data_ = v33;
            }

            v30 = __dst.__r_.__value_.__r.__words[0];
          }

          if (v30)
          {
            v36 = __dst.__r_.__value_.__l.__size_;
            v37 = v30;
            if (__dst.__r_.__value_.__l.__size_ != v30)
            {
              do
              {
                v38 = *(v36 - 1);
                v36 -= 3;
                if (v38 < 0)
                {
                  operator delete(*v36);
                }
              }

              while (v36 != v30);
              v37 = __dst.__r_.__value_.__r.__words[0];
            }

            __dst.__r_.__value_.__l.__size_ = v30;
            operator delete(v37);
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
            {
              goto LABEL_92;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            boost::core::demangle(&__dst, (0x80000001E538FB24 & 0x7FFFFFFFFFFFFFFFLL));
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = &__dst;
            }

            else
            {
              v39 = __dst.__r_.__value_.__r.__words[0];
            }

            v40 = value;
            if ((value[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v40 = value[0].__r_.__value_.__r.__words[0];
            }

            _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v39, v29[8], v40);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }

LABEL_92:
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRepersonalize>(cf.__r_.__value_.__l.__data_, &v45, 1);
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
            {
LABEL_94:
              if ((gBBULogVerbosity & 0x80000000) == 0)
              {
                boost::core::demangle(&__dst, (0x80000001E538FB24 & 0x7FFFFFFFFFFFFFFFLL));
                v41 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
                _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v41);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
            {
              goto LABEL_94;
            }
          }

          if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(value[0].__r_.__value_.__l.__data_);
          }

          v42 = cf.__r_.__value_.__l.__size_;
          if (cf.__r_.__value_.__l.__size_)
          {
            if (!atomic_fetch_add((cf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v42->__on_zero_shared)(v42);
              std::__shared_weak_count::__release_weak(v42);
            }
          }

          goto LABEL_105;
        }

        if (!v4)
        {
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(this + 2), *(this + 3), value);
          CFDictionarySetValue(*(this + 4), @"done", *MEMORY[0x1E695E4D0]);
LABEL_105:
          (*(*v3 + 16))(v3);
          return;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_138;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_138:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 640, "kBBUReturnSuccess == ret");
            }
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&__dst, "Fail to perform finalization.");
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          value[0] = __dst;
        }

        value[1].__r_.__value_.__r.__words[0] = v4;
        BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
        if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(value[0].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_105;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(cf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_163;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_117;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_117;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 627, "updateSource");
  }

LABEL_117:
  std::string::basic_string[abi:ne200100]<0>(&__dst, "Fail to get update source data for finalize\n");
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(value, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    value[0] = __dst;
  }

  value[1].__r_.__value_.__r.__words[0] = 35;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, value);
  if (SHIBYTE(value[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(value[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_155:
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_155;
  }
}

void sub_1E525B750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  (*(*v30 + 16))(v30, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::collectCoredumpInternal(BBUpdaterController *this)
{
  memset(&v44, 0, sizeof(v44));
  v2 = *(this + 7);
  BBUFeedback::handleComment(v2, "entering %s", "StageContext::Coredump");
  v3 = *(v2 + 19);
  v4 = *(v2 + 18);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v3 - v4) << 7) - 1;
  }

  v6 = *(v2 + 22);
  v7 = v6 + *(v2 + 21);
  if (v5 == v7)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v2 + 136);
    v4 = *(v2 + 18);
    v6 = *(v2 + 22);
    v7 = *(v2 + 21) + v6;
  }

  *(*(v4 + ((v7 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v7 & 0x3FF)) = 8;
  *(v2 + 22) = v6 + 1;
  memset(&__p, 170, sizeof(__p));
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_8;
    }

LABEL_12:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
  {
    BBUpdaterController::getCoreDumpPath(&__p, this);
    goto LABEL_15;
  }

LABEL_13:
  BBUpdaterController::getCoreDumpPath(&v47, this);
  bbufs::createDirectoryWithTimestamp(&v47.__r_.__value_.__l.__data_, &__p);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

LABEL_15:
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(*(this + 7), "collecting coredump at %s", p_p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_98:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2843, "!path.empty()");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v46, "core dump path unavailable or not specified.");
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v46;
    }

    v48 = 2;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    FirmwareDataSource = 0;
    v22 = 0;
    v23 = 2;
    goto LABEL_41;
  }

  eUICC::DumpRecords(&__p.__r_.__value_.__l.__data_);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __p.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    BBUFeedback::handleComment(*(this + 7), "Invalid path pointer to create coredump directory");
    goto LABEL_34;
  }

  if (!ctu::fs::create_directory())
  {
    BBUFeedback::handleComment(*(this + 7), "Failed creating coredump directory");
    goto LABEL_34;
  }

  v11 = getpwnam("_wireless");
  if (!v11)
  {
    _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n");
    BBUFeedback::handleComment(*(this + 7), "Failed to get uid and gid information for _wireless:_wireless");
LABEL_34:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_36:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2848, "kBBUReturnSuccess == ret");
        }
      }
    }

    v19 = operator new(0x20uLL);
    strcpy(v19, "failed to create dump path");
    std::string::__init_copy_ctor_external(&v47, v19, 0x1AuLL);
    v48 = 1;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    operator delete(v19);
    FirmwareDataSource = 0;
    v22 = 0;
    v23 = 1;
    goto LABEL_41;
  }

  pw_uid = v11->pw_uid;
  pw_gid = v11->pw_gid;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  v15 = chown(v14, pw_uid, pw_gid);
  if (v15)
  {
    v16 = *(this + 7);
    v17 = __error();
    v18 = strerror(*v17);
    BBUFeedback::handleComment(v16, "Failed changing owner of coredump directory:  %s", v18);
    goto LABEL_34;
  }

  if (capabilities::radio::supportsBasebandStateController(v15))
  {
    TelephonyBasebandSetBasebandState();
  }

  (*(**(this + 9) + 56))(*(this + 9), *(this + 6), 0);
  (*(**(this + 9) + 144))(*(this + 9), 2);
  InfoFirstStageInternal = BBUpdaterController::queryInfoFirstStageInternal(this, v30);
  v23 = InfoFirstStageInternal;
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      FirmwareDataSource = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_184;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      FirmwareDataSource = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_184;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      InfoFirstStageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2861, "kBBUReturnSuccess == ret");
      FirmwareDataSource = 0;
      goto LABEL_167;
    }

LABEL_184:
    v22 = 0;
    goto LABEL_41;
  }

  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(this, 1);
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_116:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2786, "updateSource");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v46, "Fail to get firmware data source\n");
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v46;
    }

    v48 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v42 = 0;
LABEL_152:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_154;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_154:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2867, "updateSource");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v46, "Fail to get update source for collectCoredump\n");
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v46;
    }

    v48 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    FirmwareDataSource = 0;
    v23 = 0;
    goto LABEL_167;
  }

  v31 = *(this + 12);
  if (v31)
  {
    v32 = (*(**(v31 + 16) + 24))(*(v31 + 16));
    (*(*FirmwareDataSource + 200))(FirmwareDataSource, v32);
    v33 = (*(**(*(this + 12) + 24) + 24))(*(*(this + 12) + 24));
    (*(*FirmwareDataSource + 208))(FirmwareDataSource, v33);
  }

  if (!(*(*FirmwareDataSource + 88))(FirmwareDataSource))
  {
    v42 = FirmwareDataSource;
    goto LABEL_81;
  }

  (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  BBUFeedback::handleComment(*(this + 7), "Source doesn’t contain coredump programmer, falling back to folder");
  memset(&v46, 170, sizeof(v46));
  FirmwareFolder = BBUpdaterController::getFirmwareFolder(&v46, *(this + 5));
  v35 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v46.__r_.__value_.__l.__size_;
  }

  if (!v35)
  {
    capabilities::radio::personalizedFirmwarePath(&v47, FirmwareFolder);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v46 = v47;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v46.__r_.__value_.__l.__size_)
      {
        v36 = v46.__r_.__value_.__r.__words[0];
        goto LABEL_75;
      }
    }

    else if (*(&v47.__r_.__value_.__s + 23))
    {
      v36 = &v46;
LABEL_75:
      BBUFeedback::handleComment(*(this + 7), "Baseband fw path that is used: %s\n", v36);
      goto LABEL_76;
    }

    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0xAF6u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)");
  }

LABEL_76:
  v37 = BBUUpdateSource::createFromFolder(&v46, *(this + 7), 0);
  FirmwareDataSource = v37;
  if (!v37)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_136:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2812, "updateSource");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v45, "Fail to get update source from folder\n");
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v45;
    }

    v48 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
    goto LABEL_177;
  }

  v38 = (*(*v37 + 88))(v37);
  if (!v38)
  {
    goto LABEL_78;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_142;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_142:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2816, "kBBUReturnSuccess == ret");
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v45, "Miss image for collecting coredump");
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v47 = v45;
  }

  v48 = v38;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
LABEL_177:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

LABEL_78:
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v42 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    goto LABEL_152;
  }

LABEL_81:
  v23 = BBUpdaterController::performFirstStageInternal(this, 0, &v42, &v44);
  if (v23)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_122:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2871, "kBBUReturnSuccess == ret");
        }
      }
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v44;
    }

    v48 = v23;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    goto LABEL_167;
  }

  InfoFirstStageInternal = BBUpdaterController::queryInfoSecondStageInternal(this, 0, &v42);
  v23 = InfoFirstStageInternal;
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v22 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v22 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_41;
    }

    InfoFirstStageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2874, "kBBUReturnSuccess == ret");
LABEL_167:
    v22 = 0;
    goto LABEL_41;
  }

  v22 = (*(*FirmwareDataSource + 72))(FirmwareDataSource);
  InfoFirstStageInternal = BBUProgrammer::addItemsFromList(*(this + 11), v22);
  v23 = InfoFirstStageInternal;
  if (InfoFirstStageInternal)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      InfoFirstStageInternal = _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2878, "kBBUReturnSuccess == ret");
    }
  }

  else
  {
    v39 = *(this + 11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v41 = __p;
    }

    InfoFirstStageInternal = (*(*v39 + 88))(v39, 0, &v41);
    v23 = InfoFirstStageInternal;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (v23)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_92:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 2882, "kBBUReturnSuccess == ret");
          }
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v46, "Fail to run collectCoreDump");
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
      }

      else
      {
        v47 = v46;
      }

      v48 = v23;
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(this, &v47);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_41:
  if (capabilities::radio::supportsBasebandStateController(InfoFirstStageInternal))
  {
    TelephonyBasebandSetBasebandState();
  }

  v24 = *(this + 11);
  *(this + 11) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  (*(**(this + 8) + 40))(*(this + 8), this + 152);
  BBUFeedback::exitStageContext(*(this + 7));
  if (v22)
  {
    if (v22[2])
    {
      v25 = v22[1];
      v26 = *(*v22 + 8);
      v27 = *v25;
      *(v27 + 8) = v26;
      *v26 = v27;
      v22[2] = 0;
      if (v25 != v22)
      {
        do
        {
          v28 = v25[1];
          operator delete(v25);
          v25 = v28;
        }

        while (v28 != v22);
      }
    }

    operator delete(v22);
  }

  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v23;
    }

LABEL_56:
    operator delete(v44.__r_.__value_.__l.__data_);
    return v23;
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_56;
  }

  return v23;
}

void sub_1E525CACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterController::handleError(uint64_t a1, std::string *a2, uint64_t a3)
{
  v3 = a3;
  BBUFeedback::handleBeginPhase(*(a1 + 56), "handleError");
  BBUpdaterController::dumpDebugLogBuffer(a1, v3);
  if (*(a1 + 360) == 1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_4:
        if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
    {
LABEL_5:
      if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_6:
    if (*(a1 + 120))
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(19, 0xFFFFFFFFLL, "BBUpdaterController", "", "enabling kernel IPC log for coredump\n");
      (*(**(a1 + 120) + 32))(*(a1 + 120));
    }

LABEL_10:
    *(a1 + 360) = 0;
    v6 = BBUpdaterController::collectCoredumpInternal(a1);
    BBUpdaterController::dumpDebugLogBuffer(a1, v6);
    if (!v6)
    {
      std::string::append(a2, " [coredump collected]", 0x15uLL);
      BBUpdaterController::getCoreDumpPath(&__p, a1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v44 = __p;
      }

      v43 = 0;
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&block, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
      }

      else
      {
        block = v44;
      }

      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v45, block.__r_.__value_.__l.__data_, block.__r_.__value_.__l.__size_);
      }

      else
      {
        v45 = block;
      }

      v8 = *MEMORY[0x1E695E480];
      if (ctu::cf::convert_copy())
      {
        v9 = CFURLCreateWithString(v8, 0xAAAAAAAAAAAAAAAALL, 0);
        CFRelease(0xAAAAAAAAAAAAAAAALL);
        if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = 0;
        if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_24:
          if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_33;
        }
      }

      operator delete(v45.__r_.__value_.__l.__data_);
      if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        v42 = v9;
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_34;
      }

LABEL_33:
      operator delete(block.__r_.__value_.__l.__data_);
      v42 = v9;
      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_26:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_35:
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_27:
        memset(&v45, 170, sizeof(v45));
        BBUpdaterController::getCoreDumpPath(&v45, a1);
        size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v45.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          CFDictionarySetValue(*(a1 + 32), @"LogDirectory", v9);
        }

        else
        {
          BBUFeedback::handleComment(*(a1 + 56), "CoreDump path passed in to BBU is empty, skipping setting the coredump path for caller.");
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
          if (!v9)
          {
            goto LABEL_42;
          }
        }

        else if (!v9)
        {
LABEL_42:
          v6 = 0;
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v7 = off_1ED944120;
          if (off_1ED944120)
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }

        CFRelease(v9);
        goto LABEL_42;
      }

LABEL_34:
      operator delete(v44.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_106;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 703, "kBBUReturnSuccess == ret");
    }

LABEL_106:
    BBUFeedback::handleComment(*(a1 + 56), "Fail to collect coredump after hitting fatal error: %s", BBUReturnAsString::BBUReturnStrings[v6]);
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v7 = off_1ED944120;
    if (off_1ED944120)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  v6 = 1;
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v7 = off_1ED944120;
  if (off_1ED944120)
  {
    goto LABEL_53;
  }

LABEL_43:
  v11 = operator new(0x38uLL);
  v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v13 = dispatch_queue_create("BBUError", v12);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = v13;
  if (v13)
  {
    v14 = v13;
    dispatch_retain(v13);
    v11[3] = 0;
    dispatch_release(v14);
  }

  else
  {
    v11[3] = 0;
  }

  v11[4] = 0;
  v11[5] = 0;
  v11[6] = 0;
  std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v45, v11);
  v15 = *&v45.__r_.__value_.__l.__data_;
  *&v45.__r_.__value_.__l.__data_ = 0uLL;
  v16 = *(&off_1ED944120 + 1);
  off_1ED944120 = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v45.__r_.__value_.__l.__size_;
  if (v45.__r_.__value_.__l.__size_ && !atomic_fetch_add((v45.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v7 = off_1ED944120;
LABEL_53:
  v18 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v45.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  v45.__r_.__value_.__l.__size_ = 0x40000000;
  v45.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v46 = &__block_descriptor_tmp_8;
  v47 = v7;
  v48 = a2;
  v49 = v3;
  v44.__r_.__value_.__r.__words[0] = &v45;
  block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  block.__r_.__value_.__l.__size_ = 0x40000000;
  block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v51 = &__block_descriptor_tmp_13_0;
  v52 = v7;
  v53 = &v44;
  v19 = *(v7 + 16);
  if (*(v7 + 24))
  {
    dispatch_async_and_wait(v19, &block);
    if (!v18)
    {
      goto LABEL_61;
    }
  }

  else
  {
    dispatch_sync(v19, &block);
    if (!v18)
    {
      goto LABEL_61;
    }
  }

  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_61:
  (*(**(a1 + 56) + 16))(*(a1 + 56), v6);
  v20 = *(a1 + 56);
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v21 = off_1ED944120;
  if (!off_1ED944120)
  {
    v22 = operator new(0x38uLL);
    v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v24 = dispatch_queue_create("BBUError", v23);
    *v22 = 0;
    v22[1] = 0;
    v22[2] = v24;
    if (v24)
    {
      v25 = v24;
      dispatch_retain(v24);
      v22[3] = 0;
      dispatch_release(v25);
    }

    else
    {
      v22[3] = 0;
    }

    v22[4] = 0;
    v22[5] = 0;
    v22[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v45, v22);
    v26 = *&v45.__r_.__value_.__l.__data_;
    *&v45.__r_.__value_.__l.__data_ = 0uLL;
    v27 = *(&off_1ED944120 + 1);
    off_1ED944120 = v26;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    v28 = v45.__r_.__value_.__l.__size_;
    if (v45.__r_.__value_.__l.__size_ && !atomic_fetch_add((v45.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    v21 = off_1ED944120;
  }

  v44.__r_.__value_.__r.__words[0] = v21;
  v44.__r_.__value_.__l.__size_ = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v29 = BBUReturnAsString::BBUReturnStrings[BBUError::getErrorCode(v21)];
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v30 = off_1ED944120;
  if (!off_1ED944120)
  {
    v31 = operator new(0x38uLL);
    v32 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v33 = dispatch_queue_create("BBUError", v32);
    *v31 = 0;
    v31[1] = 0;
    v31[2] = v33;
    if (v33)
    {
      v34 = v33;
      dispatch_retain(v33);
      v31[3] = 0;
      dispatch_release(v34);
    }

    else
    {
      v31[3] = 0;
    }

    v31[4] = 0;
    v31[5] = 0;
    v31[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v31);
    v35 = *&block.__r_.__value_.__l.__data_;
    *&block.__r_.__value_.__l.__data_ = 0uLL;
    v36 = *(&off_1ED944120 + 1);
    off_1ED944120 = v35;
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }

    v37 = block.__r_.__value_.__l.__size_;
    if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    v30 = off_1ED944120;
  }

  v38 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  BBUError::getErrorString(&v45, v30);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v45;
  }

  else
  {
    v39 = v45.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(v20, "Hit fatal error: %s reason: %s", v29, v39);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v40 = v44.__r_.__value_.__l.__size_;
  if (v44.__r_.__value_.__l.__size_)
  {
    if (!atomic_fetch_add((v44.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }
  }
}