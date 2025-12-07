uint64_t BBUEUR25UpdateSource::validateBootupItems(BBUEUR25UpdateSource *this)
{
  v2 = *(this + 22);
  if (v2 && (*(*v2 + 64))(v2))
  {
    v3 = 0;
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v4 = (**this)(this);
      _BBULog(1, 0, v4, "", "SequencerRam image missing\n");
    }
  }

LABEL_8:
  v5 = *(this + 23);
  if (!v5 || !(*(*v5 + 64))(v5))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v6 = (**this)(this);
      _BBULog(1, 0, v6, "", "SignedFirmwareSOCView image missing\n");
    }
  }

LABEL_14:
  v7 = *(this + 25);
  if (v7 && (*(*v7 + 64))(v7))
  {
    if (v3)
    {
      return v3;
    }

    if (*(this + 34))
    {
      v3 = !*(this + 35) || !*(this + 50) || !*(this + 36) || !*(this + 37) || !*(this + 26) || !*(this + 27) || !*(this + 28) || !**(this + 29) || !*(this + 32) || !*(this + 39) || !*(this + 40) || !*(this + 33) || !*(this + 41) || !*(this + 42) || !*(this + 44) || !*(this + 45) || !*(this + 46) || !*(this + 47) || *(this + 48) == 0;
    }

    else
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v3 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v3 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_47;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v11 = (**this)(this);
        _BBULog(1, 0, v11, "", "ADPD image missing\n");
      }
    }

LABEL_47:
    if (*(this + 35))
    {
      goto LABEL_52;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v12 = (**this)(this);
      _BBULog(1, 0, v12, "", "DevCfg image missing\n");
    }

LABEL_52:
    if (*(this + 50))
    {
      goto LABEL_57;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v13 = (**this)(this);
      _BBULog(1, 0, v13, "", "Sec image missing\n");
    }

LABEL_57:
    if (*(this + 36))
    {
      goto LABEL_62;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_62;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v14 = (**this)(this);
      _BBULog(1, 0, v14, "", "HYP image missing\n");
    }

LABEL_62:
    if (*(this + 37))
    {
      goto LABEL_67;
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

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v15 = (**this)(this);
      _BBULog(1, 0, v15, "", "AOP image missing\n");
    }

LABEL_67:
    if (*(this + 26))
    {
      goto LABEL_72;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_72;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v16 = (**this)(this);
      _BBULog(1, 0, v16, "", "APPS image missing\n");
    }

LABEL_72:
    if (*(this + 27))
    {
      goto LABEL_77;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_77;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v17 = (**this)(this);
      _BBULog(1, 0, v17, "", "QDSP6SW image missing\n");
    }

LABEL_77:
    if (*(this + 28))
    {
      goto LABEL_82;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_82;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v18 = (**this)(this);
      _BBULog(1, 0, v18, "", "TZ image missing\n");
    }

LABEL_82:
    if (**(this + 29))
    {
      goto LABEL_87;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_87;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v19 = (**this)(this);
      _BBULog(1, 0, v19, "", "EFS1 image missing\n");
    }

LABEL_87:
    if (*(this + 32))
    {
      goto LABEL_92;
    }

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

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v20 = (**this)(this);
      _BBULog(1, 0, v20, "", "ACDB image missing\n");
    }

LABEL_92:
    if (*(this + 39))
    {
      goto LABEL_97;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_97;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v21 = (**this)(this);
      _BBULog(1, 0, v21, "", "OEMMisc image missing\n");
    }

LABEL_97:
    if (*(this + 40))
    {
      goto LABEL_102;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_102;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v22 = (**this)(this);
      _BBULog(1, 0, v22, "", "QTIMis image missing\n");
    }

LABEL_102:
    if (*(this + 33))
    {
      goto LABEL_107;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_107;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v23 = (**this)(this);
      _BBULog(1, 0, v23, "", "BBCfg image missing\n");
    }

LABEL_107:
    if (*(this + 41))
    {
      goto LABEL_112;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_112;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v24 = (**this)(this);
      _BBULog(1, 0, v24, "", "XblCfg image missing\n");
    }

LABEL_112:
    if (*(this + 42))
    {
      goto LABEL_117;
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

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v25 = (**this)(this);
      _BBULog(1, 0, v25, "", "UEFI image missing\n");
    }

LABEL_117:
    if (*(this + 44))
    {
      goto LABEL_122;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_122;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v26 = (**this)(this);
      _BBULog(1, 0, v26, "", "Shrm image missing\n");
    }

LABEL_122:
    if (*(this + 45))
    {
      goto LABEL_127;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_127;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v27 = (**this)(this);
      _BBULog(1, 0, v27, "", "Cpucp image missing\n");
    }

LABEL_127:
    if (*(this + 46))
    {
      goto LABEL_132;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_132;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_132;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v28 = (**this)(this);
      _BBULog(1, 0, v28, "", "AOPDevCfg image missing\n");
    }

LABEL_132:
    if (*(this + 47))
    {
      goto LABEL_137;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_137;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v29 = (**this)(this);
      _BBULog(1, 0, v29, "", "Qdsp6SwDtbs image missing\n");
    }

LABEL_137:
    if (*(this + 48))
    {
      goto LABEL_142;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_142;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v30 = (**this)(this);
      _BBULog(1, 0, v30, "", "Qupv3Fw image missing\n");
    }

LABEL_142:
    if (v3)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v3 = 35;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          return v3;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v3 = 35;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          return v3;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v8 = "Baseband FW isn't complete. You are missing some images!\n";
        goto LABEL_41;
      }
    }

    return v3;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v3 = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return v3;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v3 = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return v3;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v8 = "XBLsc image missing\n";
LABEL_41:
    v9 = (**this)(this);
    _BBULog(1, 0, v9, "", v8);
    return 35;
  }

  return v3;
}

uint64_t BBUEUR25UpdateSource::validateCoredumpItems(BBUEUR25UpdateSource *this)
{
  v2 = *(this + 22);
  if (v2 && (*(*v2 + 64))(v2))
  {
    v3 = *(this + 23);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    BBUFeedback::handleComment(*(this + 1), "SequencerRam image missing\n");
    v3 = *(this + 23);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  if ((*(*v3 + 64))(v3))
  {
    v4 = *(this + 25);
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_9:
  BBUFeedback::handleComment(*(this + 1), "SignedFirmwareSOCView image missing\n");
  v4 = *(this + 25);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((*(*v4 + 64))(v4))
  {
    if (*(this + 34))
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  BBUFeedback::handleComment(*(this + 1), "XBLsc image missing\n");
  if (*(this + 34))
  {
LABEL_12:
    if (*(this + 39))
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  BBUFeedback::handleComment(*(this + 1), "APDP image missing\n");
  if (*(this + 39))
  {
LABEL_13:
    if (*(this + 40))
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  BBUFeedback::handleComment(*(this + 1), "OEMMisc image missing\n");
  if (*(this + 40))
  {
LABEL_14:
    if (*(this + 43))
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  BBUFeedback::handleComment(*(this + 1), "QTIMisc image missing\n");
  if (*(this + 43))
  {
LABEL_15:
    if (*(this + 41))
    {
      goto LABEL_16;
    }

LABEL_23:
    BBUFeedback::handleComment(*(this + 1), "XBLCfg image missing\n");
    v5 = *(this + 22);
    if (!v5)
    {
      return 35;
    }

    goto LABEL_24;
  }

LABEL_22:
  BBUFeedback::handleComment(*(this + 1), "XBLSupport image missing\n");
  if (!*(this + 41))
  {
    goto LABEL_23;
  }

LABEL_16:
  v5 = *(this + 22);
  if (!v5)
  {
    return 35;
  }

LABEL_24:
  if ((*(*v5 + 64))(v5))
  {
    v6 = *(this + 23);
    if (v6)
    {
      if ((*(*v6 + 64))(v6))
      {
        v7 = *(this + 25);
        if (v7)
        {
          if ((*(*v7 + 64))(v7) && *(this + 34) && *(this + 39) && *(this + 40) && *(this + 43) && *(this + 41))
          {
            return 0;
          }
        }
      }
    }
  }

  return 35;
}

char *BBUEUR25UpdateSource::copyHashData(BBUEUR25UpdateSource *this, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src[1] = v3;
    __src[2] = v3;
    __src[0] = v3;
    v29[1] = v3;
    v29[2] = v3;
    v28[2] = v3;
    v29[0] = v3;
    v28[0] = v3;
    v28[1] = v3;
    v27[1] = v3;
    v27[2] = v3;
    v26[2] = v3;
    v27[0] = v3;
    v26[0] = v3;
    v26[1] = v3;
    v4 = *(this + 25);
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 89, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xE9u, "Assertion failure(fXBLscImage && Failed loading XBLsc image for creating hash.)");
    }

    (*(*v4 + 56))(v4, __src, 1);
    v5 = *(this + 32);
    if (!v5)
    {
      v22 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v22, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xECu, "Assertion failure(fAcdbImage && Failed loading ACDB image for creating hash.)");
    }

    (*(*v5 + 56))(v5, v29, 1);
    v6 = *(this + 33);
    if (!v6)
    {
      v23 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v23, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xEFu, "Assertion failure(fBbcfgImage && Failed loading BBCFG image for creating hash.)");
    }

    (*(*v6 + 56))(v6, v28, 1);
    v7 = *(this + 39);
    if (!v7)
    {
      v24 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v24, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xF2u, "Assertion failure(fOEMMiscImage && Failed loading OEMMisc image for creating hash.)");
    }

    (*(*v7 + 56))(v7, v27, 1);
    v8 = *(this + 23);
    if (!v8)
    {
      v25 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v25, 89, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xF5u, "Assertion failure(fSignedFirmwareSOCViewImage && Failed loading SignedFirmwareSOCView image for creating hash.)");
    }

    (*(*v8 + 56))(v8, v26, 1);
    v9 = operator new(0xF8uLL);
    *v9 = &unk_1F5F01038;
    v10 = off_1F5F01058(v9);
    memcpy(v9 + 8, __src, v10);
    v11 = (*(*v9 + 32))(v9);
    memcpy(v9 + 56, v29, v11);
    v12 = (*(*v9 + 32))(v9);
    memcpy(v9 + 104, v28, v12);
    v13 = (*(*v9 + 32))(v9);
    memcpy(v9 + 152, v27, v13);
    v14 = (*(*v9 + 32))(v9);
    memcpy(v9 + 200, v26, v14);
  }

  else
  {
    v9 = operator new(0xF8uLL);
    *v9 = &unk_1F5F01038;
    v15 = off_1F5F01058(v9);
    bzero(v9 + 8, v15);
    v16 = (*(*v9 + 32))(v9);
    bzero(v9 + 56, v16);
    v17 = (*(*v9 + 32))(v9);
    bzero(v9 + 104, v17);
    v18 = (*(*v9 + 32))(v9);
    bzero(v9 + 152, v18);
    v19 = (*(*v9 + 32))(v9);
    bzero(v9 + 200, v19);
  }

  return v9;
}

uint64_t BBUEUR25UpdateSource::getProgrammerSource(BBUEUR25UpdateSource *this, char a2)
{
  result = *(this + 52);
  if (result)
  {
    return result;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v6 = *(this + 22);
  if (v6 && (*(*v6 + 32))(v6))
  {
    v7 = (*(**(this + 22) + 32))(*(this + 22));
    if (v7)
    {
      v8 = v7;
      v9 = operator new(v7);
      v10 = &v9[v8];
      bzero(v9, v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v13 = *(this + 22);
    v14 = (*(*v13 + 32))(v13);
    (*(*v13 + 24))(v13, v9, v14, 0);
    CFDataAppendBytes(Mutable, v9, v10 - v9);
    if (v9)
    {
      operator delete(v9);
    }

    v15 = *(this + 23);
    if (v15 && (*(*v15 + 32))(v15))
    {
      v16 = (*(**(this + 23) + 32))(*(this + 23));
      if (v16)
      {
        v17 = v16;
        v18 = operator new(v16);
        v19 = &v18[v17];
        bzero(v18, v17);
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      v21 = *(this + 23);
      v22 = (*(*v21 + 32))(v21);
      (*(*v21 + 24))(v21, v18, v22, 0);
      CFDataAppendBytes(Mutable, v18, v19 - v18);
      if (v18)
      {
        operator delete(v18);
      }

      if (a2)
      {
        v23 = *(this + 25);
        if (v23)
        {
          v24 = (*(*v23 + 32))(v23);
          if (v24)
          {
            v25 = v24;
            v26 = operator new(v24);
            v27 = &v26[v25];
            bzero(v26, v25);
          }

          else
          {
            v26 = 0;
            v27 = 0;
          }

          v34 = *(this + 25);
          v35 = (*(*v34 + 32))(v34);
          (*(*v34 + 24))(v34, v26, v35, 0);
          CFDataAppendBytes(Mutable, v26, v27 - v26);
LABEL_49:
          if (v26)
          {
            operator delete(v26);
          }

          v38 = operator new(0x18uLL);
          v38[4] = 0;
          *v38 = &unk_1F5F04B00;
          *(v38 + 1) = Mutable;
          if (Mutable)
          {
            CFRetain(Mutable);
          }

          v39 = *(this + 52);
          *(this + 52) = v38;
          if (v39)
          {
            (*(*v39 + 8))(v39);
            if (!*(this + 52))
            {
              exception = __cxa_allocate_exception(0x210uLL);
              _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x148u, "Assertion failure(fProgrammerDataSource.get() && Failed creating data source from data for programmer)");
            }
          }

          v11 = 1;
          goto LABEL_22;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        if (gBBULogVerbosity < 0)
        {
          goto LABEL_22;
        }

        v32 = (**this)(this);
        _BBULog(1, 0, v32, "", "invalid xbl image\n");
      }

      else
      {
        v28 = *(this + 24);
        if (v28)
        {
          v29 = (*(*v28 + 32))(v28);
          if (v29)
          {
            v30 = v29;
            v26 = operator new(v29);
            v31 = &v26[v30];
            bzero(v26, v30);
          }

          else
          {
            v26 = 0;
            v31 = 0;
          }

          v36 = *(this + 24);
          v37 = (*(*v36 + 32))(v36);
          (*(*v36 + 24))(v36, v26, v37, 0);
          CFDataAppendBytes(Mutable, v26, v31 - v26);
          goto LABEL_49;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        if (gBBULogVerbosity < 0)
        {
          goto LABEL_22;
        }

        v33 = (**this)(this);
        _BBULog(1, 0, v33, "", "invalid restore xbl image\n");
      }

      goto LABEL_21;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v20 = (**this)(this);
      _BBULog(1, 0, v20, "", "invalid SignedFirmwareSOCView image\n");
      goto LABEL_21;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v12 = (**this)(this);
      _BBULog(1, 0, v12, "", "invalid SequencerRam image\n");
LABEL_21:
      v11 = 0;
    }
  }

LABEL_22:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    return *(this + 52);
  }

  else
  {
    return 0;
  }
}

void sub_1E5289F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_free_exception(v9);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5289FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR25UpdateSource::saveImages(BBUEUR25UpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x150u, "Assertion failure(fZipFile && Firmware data source error!)");
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v2 = (**this)(this);
  v3 = _BBULog(19, 0xFFFFFFFFLL, v2, "", "BBUEUR25UpdateSource::saveImages\n");
  memset(v38, 170, sizeof(v38));
  capabilities::radio::personalizedFirmwarePath(v38, v3);
  v4 = HIBYTE(v38[2]);
  if (SHIBYTE(v38[2]) < 0)
  {
    v4 = v38[1];
  }

  if (!v4)
  {
    v31 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v31, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x155u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)");
  }

  result = BBUEURUpdateSource::saveImages(this);
  if (!result)
  {
    __p[23] = 17;
    strcpy(__p, "sequencer_ram.elf");
    result = BBUEURUpdateSource::saveFile(this, __p, v38);
    if ((__p[23] & 0x80000000) != 0)
    {
      v6 = result;
      operator delete(*__p);
      result = v6;
      if (v6)
      {
        goto LABEL_79;
      }
    }

    else if (result)
    {
      goto LABEL_79;
    }

    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E5390FE0;
    strcpy(*__p, "signed_firmware_soc_view.elf");
    result = BBUEURUpdateSource::saveFile(this, __p, v38);
    if ((__p[23] & 0x80000000) != 0)
    {
      v7 = result;
      operator delete(*__p);
      result = v7;
      if (v7)
      {
        goto LABEL_79;
      }
    }

    else if (result)
    {
      goto LABEL_79;
    }

    __p[23] = 10;
    strcpy(__p, "xbl_sc.elf");
    result = BBUEURUpdateSource::saveFile(this, __p, v38);
    if ((__p[23] & 0x80000000) != 0)
    {
      v8 = result;
      operator delete(*__p);
      result = v8;
    }

    if (!result)
    {
      __p[23] = 8;
      strcpy(__p, "apps.mbn");
      result = BBUEURUpdateSource::saveFile(this, __p, v38);
      if ((__p[23] & 0x80000000) != 0)
      {
        v9 = result;
        operator delete(*__p);
        result = v9;
      }

      if (!result)
      {
        __p[23] = 11;
        strcpy(__p, "qdsp6sw.mbn");
        result = BBUEURUpdateSource::saveFile(this, __p, v38);
        if ((__p[23] & 0x80000000) != 0)
        {
          v10 = result;
          operator delete(*__p);
          result = v10;
        }

        if (!result)
        {
          __p[23] = 6;
          strcpy(__p, "tz.mbn");
          result = BBUEURUpdateSource::saveFile(this, __p, v38);
          if ((__p[23] & 0x80000000) != 0)
          {
            v11 = result;
            operator delete(*__p);
            result = v11;
          }

          if (!result)
          {
            __p[23] = 8;
            strcpy(__p, "acdb.mbn");
            result = BBUEURUpdateSource::saveFile(this, __p, v38);
            if ((__p[23] & 0x80000000) != 0)
            {
              v12 = result;
              operator delete(*__p);
              result = v12;
            }

            if (!result)
            {
              __p[23] = 9;
              strcpy(__p, "bbcfg.mbn");
              result = BBUEURUpdateSource::saveFile(this, __p, v38);
              if ((__p[23] & 0x80000000) != 0)
              {
                v13 = result;
                operator delete(*__p);
                result = v13;
              }

              if (!result)
              {
                __p[23] = 8;
                strcpy(__p, "apdp.mbn");
                result = BBUEURUpdateSource::saveFile(this, __p, v38);
                if ((__p[23] & 0x80000000) != 0)
                {
                  v14 = result;
                  operator delete(*__p);
                  result = v14;
                }

                if (!result)
                {
                  __p[23] = 10;
                  strcpy(__p, "devcfg.mbn");
                  v15 = BBUEURUpdateSource::saveFile(this, __p, v38);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }

                  result = v15;
                  if (!v15)
                  {
                    __p[23] = 7;
                    strcpy(__p, "sec.elf");
                    v16 = BBUEURUpdateSource::saveFile(this, __p, v38);
                    if ((__p[23] & 0x80000000) != 0)
                    {
                      operator delete(*__p);
                    }

                    result = v16;
                    if (!v16)
                    {
                      __p[23] = 7;
                      strcpy(__p, "hyp.mbn");
                      v17 = BBUEURUpdateSource::saveFile(this, __p, v38);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }

                      result = v17;
                      if (!v17)
                      {
                        __p[23] = 7;
                        strcpy(__p, "aop.mbn");
                        v18 = BBUEURUpdateSource::saveFile(this, __p, v38);
                        if ((__p[23] & 0x80000000) != 0)
                        {
                          operator delete(*__p);
                        }

                        result = v18;
                        if (!v18)
                        {
                          __p[23] = 15;
                          strcpy(__p, "multi_image.mbn");
                          v19 = BBUEURUpdateSource::saveFile(this, __p, v38);
                          if ((__p[23] & 0x80000000) != 0)
                          {
                            operator delete(*__p);
                          }

                          result = v19;
                          if (!v19)
                          {
                            __p[23] = 19;
                            strcpy(__p, "multi_image_qti.mbn");
                            v20 = BBUEURUpdateSource::saveFile(this, __p, v38);
                            if ((__p[23] & 0x80000000) != 0)
                            {
                              operator delete(*__p);
                            }

                            result = v20;
                            if (!v20)
                            {
                              __p[23] = 11;
                              strcpy(__p, "xbl_cfg.elf");
                              v21 = BBUEURUpdateSource::saveFile(this, __p, v38);
                              if ((__p[23] & 0x80000000) != 0)
                              {
                                operator delete(*__p);
                              }

                              result = v21;
                              if (!v21)
                              {
                                __p[23] = 8;
                                strcpy(__p, "uefi.elf");
                                v22 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                if ((__p[23] & 0x80000000) != 0)
                                {
                                  operator delete(*__p);
                                }

                                result = v22;
                                if (!v22)
                                {
                                  __p[23] = 15;
                                  strcpy(__p, "xbl_support.elf");
                                  v23 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                  if ((__p[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*__p);
                                  }

                                  result = v23;
                                  if (!v23)
                                  {
                                    __p[23] = 8;
                                    strcpy(__p, "shrm.elf");
                                    v24 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                    if ((__p[23] & 0x80000000) != 0)
                                    {
                                      operator delete(*__p);
                                    }

                                    result = v24;
                                    if (!v24)
                                    {
                                      __p[23] = 9;
                                      strcpy(__p, "cpucp.elf");
                                      v25 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                      if ((__p[23] & 0x80000000) != 0)
                                      {
                                        operator delete(*__p);
                                      }

                                      result = v25;
                                      if (!v25)
                                      {
                                        __p[23] = 14;
                                        strcpy(__p, "aop_devcfg.mbn");
                                        v26 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                        if ((__p[23] & 0x80000000) != 0)
                                        {
                                          operator delete(*__p);
                                        }

                                        result = v26;
                                        if (!v26)
                                        {
                                          __p[23] = 16;
                                          strcpy(__p, "qdsp6sw_dtbs.elf");
                                          v27 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                          if ((__p[23] & 0x80000000) != 0)
                                          {
                                            operator delete(*__p);
                                          }

                                          result = v27;
                                          if (!v27)
                                          {
                                            __p[23] = 11;
                                            strcpy(__p, "qupv3fw.elf");
                                            v28 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                            if ((__p[23] & 0x80000000) != 0)
                                            {
                                              operator delete(*__p);
                                            }

                                            result = v28;
                                            if (!v28)
                                            {
                                              v32 = *(this + 8);
                                              __p[23] = 6;
                                              strcpy(__p, "pt.mbn");
                                              if (!BBUZipFile::containsFile(v32, __p))
                                              {
                                                goto LABEL_87;
                                              }

                                              __p[23] = 6;
                                              strcpy(__p, "pt.mbn");
                                              v33 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                              if ((__p[23] & 0x80000000) != 0)
                                              {
                                                operator delete(*__p);
                                              }

                                              result = v33;
                                              if (!v33)
                                              {
LABEL_87:
                                                v34 = *(this + 8);
                                                (*(*this + 56))(__p, this);
                                                v35 = BBUZipFile::containsFile(v34, __p);
                                                if ((__p[23] & 0x80000000) != 0)
                                                {
                                                  operator delete(*__p);
                                                }

                                                if (v35)
                                                {
                                                  (*(*this + 56))(__p, this);
                                                  v36 = BBUEURUpdateSource::saveFile(this, __p, v38);
                                                  if ((__p[23] & 0x80000000) != 0)
                                                  {
                                                    operator delete(*__p);
                                                  }

                                                  result = v36;
                                                }

                                                else
                                                {
                                                  result = 0;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_79:
  if (SHIBYTE(v38[2]) < 0)
  {
    v29 = result;
    operator delete(v38[0]);
    return v29;
  }

  return result;
}

void sub_1E528AA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void BBUEUR25UpdateSource::init(BBUEUR25UpdateSource *this)
{
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    v308.__start_.__ptr_ = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  traits.__r_.__value_.__r.__words[0] = v2;
  traits.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v2, &__p);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if (p_p)
  {
    if ((bbufs::prepareDestination(p_p, v7) & 1) == 0)
    {
      _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n");
    }
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", 0);
  }

  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
LABEL_20:
    v9 = *(this + 103);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (*(this + 11))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  v9 = *(this + 103);
  if (v9 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v9)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x1E1u, "Assertion failure(( !fFirmwareFolder.empty() || fZipFile) && Firmware data source error!)");
LABEL_764:
  }

LABEL_26:
  HIBYTE(__p.st_gid) = 17;
  v304 = *"sequencer_ram.elf";
  strcpy(&__p, "sequencer_ram.elf");
  v10 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v15 = v10;
    operator delete(*&__p.st_dev);
    if (v15)
    {
      goto LABEL_28;
    }

LABEL_35:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_39;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v16 = (**this)(this);
      _BBULog(3, 1, v16, "", "File not present: %s\n");
    }

    goto LABEL_39;
  }

  if (!v10)
  {
    goto LABEL_35;
  }

LABEL_28:
  HIBYTE(__p.st_gid) = 17;
  LOWORD(__p.st_uid) = 102;
  *&__p.st_dev = v304;
  DataSource = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v12 = operator new(0x20uLL);
  *v12 = &unk_1F5F014B0;
  v12[1] = DataSource;
  v12[2] = 0;
  *(v12 + 6) = 0;
  v13 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v13, DataSource, 0);
  v12[2] = v13;
  *v12 = &unk_1F5EFFD50;
  *(this + 22) = v12;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_39;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v14 = (**this)(this);
    _BBULog(3, 0, v14, "", "Loaded SequencerRam\n");
  }

LABEL_39:
  *&__p.st_dev = operator new(0x20uLL);
  v304 = xmmword_1E5390FE0;
  *&__p.st_ino = xmmword_1E5390FE0;
  strcpy(*&__p.st_dev, "signed_firmware_soc_view.elf");
  qmemcpy(v303, "are_soc_view.elfsigned_firmware_", sizeof(v303));
  v17 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v23 = v17;
    operator delete(*&__p.st_dev);
    if (v23)
    {
      goto LABEL_41;
    }

LABEL_48:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_52;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v24 = (**this)(this);
      _BBULog(3, 1, v24, "", "File not present: %s\n");
    }

    goto LABEL_52;
  }

  if (!v17)
  {
    goto LABEL_48;
  }

LABEL_41:
  v18 = operator new(0x20uLL);
  *&__p.st_dev = v18;
  *&__p.st_ino = v304;
  *v18 = v303[1];
  *(v18 + 12) = v303[0];
  v18[28] = 0;
  v19 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v20 = operator new(0x20uLL);
  *v20 = &unk_1F5F014B0;
  v20[1] = v19;
  v20[2] = 0;
  *(v20 + 6) = 0;
  v21 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v21, v19, 0);
  v20[2] = v21;
  *v20 = &unk_1F5EFFDC0;
  *(this + 23) = v20;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_52;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v22 = (**this)(this);
    _BBULog(3, 0, v22, "", "Loaded SignedFirmwareSocView\n");
  }

LABEL_52:
  HIBYTE(__p.st_gid) = 17;
  v304 = *"restorexbl_sc.elf";
  strcpy(&__p, "restorexbl_sc.elf");
  v25 = BBUEURUpdateSource::containsFile(this, &__p);
  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_54;
    }

LABEL_62:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_66;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v31 = (**this)(this);
      _BBULog(3, 1, v31, "", "File not present: %s\n");
    }

    goto LABEL_66;
  }

  v30 = v25;
  operator delete(*&__p.st_dev);
  if (!v30)
  {
    goto LABEL_62;
  }

LABEL_54:
  if (*(this + 24))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x1FCu, "Assertion failure(fRestoreXBLscImage == __null)");
    goto LABEL_764;
  }

  HIBYTE(__p.st_gid) = 17;
  LOWORD(__p.st_uid) = 102;
  *&__p.st_dev = v304;
  v26 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v27 = operator new(0x38uLL);
  *v27 = &unk_1F5F014B0;
  v27[1] = v26;
  v27[2] = 0;
  *(v27 + 6) = 0;
  v28 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v28, v26, 0);
  v27[2] = v28;
  *v27 = &unk_1F5EFFE30;
  *(v27 + 13) = 0;
  *(v27 + 44) = 0;
  *(v27 + 10) = 1668500546;
  v27[4] = *"restoreXBLsc";
  *(v27 + 55) = 12;
  *(this + 24) = v27;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_66;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_66;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v29 = (**this)(this);
    _BBULog(3, 0, v29, "", "Loaded restoreSBL1\n");
  }

LABEL_66:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "xbl_sc.elf");
  v32 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v37 = v32;
    operator delete(*&__p.st_dev);
    if (v37)
    {
      goto LABEL_68;
    }

LABEL_75:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_79;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_79;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v38 = (**this)(this);
      _BBULog(3, 1, v38, "", "File not present: %s\n");
    }

    goto LABEL_79;
  }

  if (!v32)
  {
    goto LABEL_75;
  }

LABEL_68:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "xbl_sc.elf");
  v33 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v34 = operator new(0x38uLL);
  *v34 = &unk_1F5F014B0;
  *(v34 + 1) = v33;
  *(v34 + 2) = 0;
  *(v34 + 6) = 0;
  v35 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v35, v33, 0);
  *(v34 + 2) = v35;
  *v34 = &unk_1F5EFFE30;
  *(v34 + 45) = 0;
  *(v34 + 37) = 0;
  *(v34 + 53) = 0;
  *(v34 + 8) = 1934377560;
  v34[36] = 99;
  v34[55] = 5;
  *(this + 25) = v34;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_79;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_79;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v36 = (**this)(this);
    _BBULog(3, 0, v36, "", "Loaded XBLs\n");
  }

LABEL_79:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v39 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v44 = v39;
    operator delete(*&__p.st_dev);
    if (v44)
    {
      goto LABEL_81;
    }

LABEL_88:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_92;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v45 = (**this)(this);
      _BBULog(3, 1, v45, "", "File not present: %s\n");
    }

    goto LABEL_92;
  }

  if (!v39)
  {
    goto LABEL_88;
  }

LABEL_81:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v40 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v41 = operator new(0x20uLL);
  *v41 = &unk_1F5F014B0;
  v41[1] = v40;
  v41[2] = 0;
  *(v41 + 6) = 0;
  v42 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v42, v40, 0);
  v41[2] = v42;
  *v41 = &unk_1F5F00210;
  *(this + 26) = v41;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_92;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_92;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v43 = (**this)(this);
    _BBULog(3, 0, v43, "", "Loaded APPS\n");
  }

LABEL_92:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v46 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v51 = v46;
    operator delete(*&__p.st_dev);
    if (v51)
    {
      goto LABEL_94;
    }

LABEL_101:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_105;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v52 = (**this)(this);
      _BBULog(3, 1, v52, "", "File not present: %s\n");
    }

    goto LABEL_105;
  }

  if (!v46)
  {
    goto LABEL_101;
  }

LABEL_94:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v47 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v48 = operator new(0x20uLL);
  *v48 = &unk_1F5F014B0;
  v48[1] = v47;
  v48[2] = 0;
  *(v48 + 6) = 0;
  v49 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v49, v47, 0);
  v48[2] = v49;
  *v48 = &unk_1F5F00280;
  *(this + 27) = v48;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_105;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_105;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v50 = (**this)(this);
    _BBULog(3, 0, v50, "", "Loaded QDSP6SW\n");
  }

LABEL_105:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v53 = BBUEURUpdateSource::containsFile(this, &__p);
  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    if (v53)
    {
      goto LABEL_107;
    }

LABEL_114:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_118;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_118;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v59 = (**this)(this);
      _BBULog(3, 1, v59, "", "File not present: %s\n");
    }

    goto LABEL_118;
  }

  v58 = v53;
  operator delete(*&__p.st_dev);
  if (!v58)
  {
    goto LABEL_114;
  }

LABEL_107:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v54 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v55 = operator new(0x20uLL);
  *v55 = &unk_1F5F014B0;
  v55[1] = v54;
  v55[2] = 0;
  *(v55 + 6) = 0;
  v56 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v56, v54, 0);
  v55[2] = v56;
  *v55 = &unk_1F5F002F0;
  *(this + 28) = v55;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
      goto LABEL_111;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
LABEL_111:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v57 = (**this)(this);
        _BBULog(3, 0, v57, "", "Loaded TZ\n");
      }
    }
  }

LABEL_118:
  memset(&v306, 170, sizeof(v306));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v60 = off_1ED944170;
  if (!off_1ED944170)
  {
    v61 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v61);
    traits.__r_.__value_.__r.__words[0] = v61;
    v62 = operator new(0x20uLL);
    *v62 = &unk_1F5F05A00;
    v62[1] = 0;
    v62[2] = 0;
    v62[3] = v61;
    v63 = off_1ED944178;
    off_1ED944170 = v61;
    off_1ED944178 = v62;
    if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
    }

    v60 = off_1ED944170;
  }

  v64 = off_1ED944178;
  *&__p.st_dev = v60;
  __p.st_ino = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v60, &v306);
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v64->__on_zero_shared)(v64);
    std::__shared_weak_count::__release_weak(v64);
  }

  for (i = 0; i != 3; ++i)
  {
    memset(&__p, 170, 24);
    v66 = SHIBYTE(v306.__r_.__value_.__r.__words[2]);
    if ((v306.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v306.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v306.__r_.__value_.__l.__size_;
    }

    v68 = size + 3;
    if (size + 3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v69 = this;
    if (v68 < 0x17)
    {
      memset(&v308.__start_, 0, 24);
      p_start = &v308.__start_;
      HIBYTE(v308.__end_) = size + 3;
      if (!size)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if ((v68 | 7) == 0x17)
      {
        v70 = 25;
      }

      else
      {
        v70 = (v68 | 7) + 1;
      }

      p_start = operator new(v70);
      v308.__start_.__cntrl_ = (size + 3);
      v308.__end_ = (v70 | 0x8000000000000000);
      v308.__start_.__ptr_ = p_start;
    }

    if (v66 >= 0)
    {
      v72 = &v306;
    }

    else
    {
      v72 = v306.__r_.__value_.__r.__words[0];
    }

    memmove(p_start, v72, size);
LABEL_144:
    v73 = &unk_1ED949000;
    *(&p_start->__vftable + size) = 7562853;
    std::to_string(&v308, i + 1);
    if (SHIBYTE(v308.__traits_.__col_) >= 0)
    {
      locale = &v308;
    }

    else
    {
      locale = v308.__traits_.__loc_.__locale_;
    }

    if (SHIBYTE(v308.__traits_.__col_) >= 0)
    {
      col_high = HIBYTE(v308.__traits_.__col_);
    }

    else
    {
      col_high = v308.__traits_.__ct_;
    }

    v76 = std::string::append(&v308.__start_, locale, col_high);
    this = v69;
    v77 = *&v76->__r_.__value_.__l.__data_;
    traits.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&traits.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = SHIBYTE(traits.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(traits.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(traits.__r_.__value_.__r.__words[2]) - 19) < 4)
      {
        v79 = SHIBYTE(traits.__r_.__value_.__r.__words[2]) + 4;
        v80 = &traits;
        v81 = 22;
LABEL_156:
        v82 = 2 * v81;
        if (v79 > 2 * v81)
        {
          v82 = v79;
        }

        if ((v82 | 7) == 0x17)
        {
          v83 = 25;
        }

        else
        {
          v83 = (v82 | 7) + 1;
        }

        if (v82 >= 0x17)
        {
          v84 = v83;
        }

        else
        {
          v84 = 23;
        }

        v85 = v81 == 22;
        goto LABEL_165;
      }

      v89 = &traits;
      *(&traits.__r_.__value_.__l.__data_ + SHIBYTE(traits.__r_.__value_.__r.__words[2])) = 1852400174;
      v90 = v78 + 4;
      if ((SHIBYTE(traits.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_173;
    }

    v78 = traits.__r_.__value_.__l.__size_;
    v81 = (traits.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v81 - traits.__r_.__value_.__l.__size_ >= 4)
    {
      v89 = traits.__r_.__value_.__r.__words[0];
      *(traits.__r_.__value_.__r.__words[0] + traits.__r_.__value_.__l.__size_) = 1852400174;
      v90 = v78 + 4;
      if ((SHIBYTE(traits.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_171:
        *(&traits.__r_.__value_.__s + 23) = v90 & 0x7F;
LABEL_174:
        v88 = v89 + v90;
        goto LABEL_175;
      }

LABEL_173:
      traits.__r_.__value_.__l.__size_ = v90;
      goto LABEL_174;
    }

    v79 = traits.__r_.__value_.__l.__size_ + 4;
    if (0x7FFFFFFFFFFFFFF7 - (traits.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < traits.__r_.__value_.__l.__size_ + 4 - v81)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v80 = traits.__r_.__value_.__r.__words[0];
    if (v81 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_156;
    }

    v85 = 0;
    v84 = 0x7FFFFFFFFFFFFFF7;
LABEL_165:
    v86 = operator new(v84);
    v87 = v86;
    if (v78)
    {
      memmove(v86, v80, v78);
    }

    *(v87 + v78) = 1852400174;
    if (!v85)
    {
      operator delete(v80);
    }

    traits.__r_.__value_.__l.__size_ = v79;
    traits.__r_.__value_.__r.__words[2] = v84 | 0x8000000000000000;
    traits.__r_.__value_.__r.__words[0] = v87;
    v88 = (v87 + v79);
    this = v69;
    v73 = &unk_1ED949000;
LABEL_175:
    *v88 = 0;
    *&__p.st_dev = *&traits.__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&traits.__r_.__value_.__l + 2);
    memset(&traits, 0, sizeof(traits));
    if (SHIBYTE(v308.__traits_.__col_) < 0)
    {
      operator delete(v308.__traits_.__loc_.__locale_);
      if ((SHIBYTE(v308.__end_) & 0x80000000) == 0)
      {
        goto LABEL_177;
      }
    }

    else if ((SHIBYTE(v308.__end_) & 0x80000000) == 0)
    {
      goto LABEL_177;
    }

    operator delete(v308.__start_.__ptr_);
LABEL_177:
    v91 = operator new(0x30uLL);
    *v91 = &unk_1F5F00F28;
    *(v91 + 8) = 0u;
    *(v91 + 24) = 0u;
    v92 = BBUFileDataSource::init(v91, &__p.st_dev, 0);
    v93 = *v91;
    if (!v92)
    {
      if ((*(v93 + 24))(v91) >= 0x29)
      {
        v95 = operator new(0x58uLL);
        BBUEUREFSImage::BBUEUREFSImage(v95, v91, i + 1, 0);
        v96 = (*(*v91 + 24))(v91);
        v97 = (*(*v95 + 72))(v95, v96);
        (*(*v95 + 8))(v95);
        if (v97)
        {
          v91 = operator new(0x30uLL);
          *v91 = &unk_1F5F00F28;
          *(v91 + 8) = 0u;
          *(v91 + 24) = 0u;
          if (BBUFileDataSource::init(v91, &__p.st_dev, 0))
          {
            (*(*v91 + 8))(v91);
            v91 = 0;
          }

          v94 = 1;
          goto LABEL_189;
        }

        v91 = 0;
      }

      v94 = 0;
LABEL_189:
      BBUFeedback::handleComment(*(this + 1), "EFS file verify status: %d", v94);
      goto LABEL_190;
    }

    (*(v93 + 8))(v91);
    v91 = 0;
    v94 = 1;
LABEL_190:
    if (i | v91 && v94)
    {
      if (!v91)
      {
        goto LABEL_213;
      }
    }

    else
    {
      memset(&traits, 170, sizeof(traits));
      if (v91)
      {
        v98 = (*(*v91 + 24))(v91);
        std::to_string(&traits, v98);
        v99 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v99 = *&__p.st_dev;
        }

        v100 = &traits;
        if ((traits.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v100 = traits.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        *(&traits.__r_.__value_.__s + 23) = 4;
        strcpy(&traits, "NULL");
        v99 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v99 = *&__p.st_dev;
        }

        v100 = &traits;
      }

      BBUFeedback::handleComment(*(this + 1), "Failed to load %s (size %s), creating empty file (size %u)", v99, v100, 0x100000);
      if (v91)
      {
        (*(*v91 + 8))(v91);
      }

      v101 = BBUScratchFile::createWithFile(&__p, 0x100000);
      if (v101)
      {
        v299 = __cxa_allocate_exception(0x210uLL);
        v297 = v299;
        v300 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v300 = *&__p.st_dev;
        }

        _BBUException::_BBUException(v299, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x265u, "Failed to create scratch %s (%d)", v300, v101);
LABEL_759:
      }

      v91 = operator new(0x30uLL);
      *v91 = &unk_1F5F00F28;
      *(v91 + 8) = 0u;
      *(v91 + 24) = 0u;
      if (BBUFileDataSource::init(v91, &__p.st_dev, 0))
      {
        (*(*v91 + 8))(v91);
        v296 = __cxa_allocate_exception(0x210uLL);
        v297 = v296;
        v298 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v298 = *&__p.st_dev;
        }

        _BBUException::_BBUException(v296, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x268u, "Failed to create data source from fresh scratch file %s (%d)", v298, 0);
        goto LABEL_759;
      }

      if (SHIBYTE(traits.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(traits.__r_.__value_.__l.__data_);
      }
    }

    v102 = operator new(0x58uLL);
    BBUEUREFSImage::BBUEUREFSImage(v102, v91, i + 1, 0);
    *(*(this + 29) + 8 * i) = v102;
    if (v73[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_213;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_213;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v103 = (**this)(this);
      _BBULog(3, 0, v103, "", "Loaded EFS%u\n", i + 1);
    }

LABEL_213:
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "acdb.mbn");
  v104 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v108 = v104;
    operator delete(*&__p.st_dev);
    if (!v108)
    {
      goto LABEL_226;
    }

LABEL_219:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "acdb.mbn");
    v105 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v106 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v106, v105, 0);
    *v106 = &unk_1F5F00360;
    *(this + 32) = v106;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_230;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v107 = (**this)(this);
      _BBULog(3, 0, v107, "", "Loaded ACDB\n");
    }
  }

  else
  {
    if (v104)
    {
      goto LABEL_219;
    }

LABEL_226:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_228:
        if (gBBULogVerbosity >= 1)
        {
          v109 = (**this)(this);
          _BBULog(3, 1, v109, "", "File not present: %s\n", "acdb.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_228;
      }
    }
  }

LABEL_230:
  HIBYTE(__p.st_gid) = 9;
  strcpy(&__p, "bbcfg.mbn");
  v110 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v114 = v110;
    operator delete(*&__p.st_dev);
    if (!v114)
    {
      goto LABEL_239;
    }

LABEL_232:
    HIBYTE(__p.st_gid) = 9;
    strcpy(&__p, "bbcfg.mbn");
    v111 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v112 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v112, v111, 0);
    *v112 = &unk_1F5F003D8;
    *(this + 33) = v112;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_243;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_243;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v113 = (**this)(this);
      _BBULog(3, 0, v113, "", "Loaded BBCFG\n");
    }
  }

  else
  {
    if (v110)
    {
      goto LABEL_232;
    }

LABEL_239:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_241:
        if (gBBULogVerbosity >= 1)
        {
          v115 = (**this)(this);
          _BBULog(3, 1, v115, "", "File not present: %s\n", "bbcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_241;
      }
    }
  }

LABEL_243:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apdp.mbn");
  v116 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v121 = v116;
    operator delete(*&__p.st_dev);
    if (!v121)
    {
      goto LABEL_252;
    }

LABEL_245:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "apdp.mbn");
    v117 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v118 = operator new(0x20uLL);
    *v118 = &unk_1F5F014B0;
    v118[1] = v117;
    v118[2] = 0;
    *(v118 + 6) = 0;
    v119 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v119, v117, 0);
    v118[2] = v119;
    *v118 = &unk_1F5F00450;
    *(this + 34) = v118;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_256;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_256;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v120 = (**this)(this);
      _BBULog(3, 0, v120, "", "Loaded APDP\n");
    }
  }

  else
  {
    if (v116)
    {
      goto LABEL_245;
    }

LABEL_252:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_254:
        if (gBBULogVerbosity >= 1)
        {
          v122 = (**this)(this);
          _BBULog(3, 1, v122, "", "File not present: %s\n", "apdp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_254;
      }
    }
  }

LABEL_256:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "devcfg.mbn");
  v123 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v128 = v123;
    operator delete(*&__p.st_dev);
    if (!v128)
    {
      goto LABEL_265;
    }

LABEL_258:
    HIBYTE(__p.st_gid) = 10;
    strcpy(&__p, "devcfg.mbn");
    v124 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v125 = operator new(0x20uLL);
    *v125 = &unk_1F5F014B0;
    v125[1] = v124;
    v125[2] = 0;
    *(v125 + 6) = 0;
    v126 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v126, v124, 0);
    v125[2] = v126;
    *v125 = &unk_1F5F004C0;
    *(this + 35) = v125;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_269;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_269;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v127 = (**this)(this);
      _BBULog(3, 0, v127, "", "Loaded DEVCFG\n");
    }
  }

  else
  {
    if (v123)
    {
      goto LABEL_258;
    }

LABEL_265:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_267:
        if (gBBULogVerbosity >= 1)
        {
          v129 = (**this)(this);
          _BBULog(3, 1, v129, "", "File not present: %s\n", "devcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_267;
      }
    }
  }

LABEL_269:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "hyp.mbn");
  v130 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v135 = v130;
    operator delete(*&__p.st_dev);
    if (!v135)
    {
      goto LABEL_278;
    }

LABEL_271:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "hyp.mbn");
    v131 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v132 = operator new(0x20uLL);
    *v132 = &unk_1F5F014B0;
    v132[1] = v131;
    v132[2] = 0;
    *(v132 + 6) = 0;
    v133 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v133, v131, 0);
    v132[2] = v133;
    *v132 = &unk_1F5F00530;
    *(this + 36) = v132;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_282;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_282;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v134 = (**this)(this);
      _BBULog(3, 0, v134, "", "Loaded HYP\n");
    }
  }

  else
  {
    if (v130)
    {
      goto LABEL_271;
    }

LABEL_278:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_280:
        if (gBBULogVerbosity >= 1)
        {
          v136 = (**this)(this);
          _BBULog(3, 1, v136, "", "File not present: %s\n", "hyp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_280;
      }
    }
  }

LABEL_282:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "aop.mbn");
  v137 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v142 = v137;
    operator delete(*&__p.st_dev);
    if (!v142)
    {
      goto LABEL_291;
    }

LABEL_284:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "aop.mbn");
    v138 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v139 = operator new(0x20uLL);
    *v139 = &unk_1F5F014B0;
    v139[1] = v138;
    v139[2] = 0;
    *(v139 + 6) = 0;
    v140 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v140, v138, 0);
    v139[2] = v140;
    *v139 = &unk_1F5F005A0;
    *(this + 37) = v139;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_295;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_295;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v141 = (**this)(this);
      _BBULog(3, 0, v141, "", "Loaded AOP\n");
    }
  }

  else
  {
    if (v137)
    {
      goto LABEL_284;
    }

LABEL_291:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_293:
        if (gBBULogVerbosity >= 1)
        {
          v143 = (**this)(this);
          _BBULog(3, 1, v143, "", "File not present: %s\n", "aop.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_293;
      }
    }
  }

LABEL_295:
  memset(v305, 170, sizeof(v305));
  v144 = SHIBYTE(v306.__r_.__value_.__r.__words[2]);
  if ((v306.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v145 = HIBYTE(v306.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v145 = v306.__r_.__value_.__l.__size_;
  }

  v146 = v145 + 1;
  if (v145 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v146 < 0x17)
  {
    memset(&__p, 0, 24);
    v148 = &__p;
    HIBYTE(__p.st_gid) = v145 + 1;
    if (v145)
    {
      goto LABEL_305;
    }
  }

  else
  {
    if ((v146 | 7) == 0x17)
    {
      v147 = 25;
    }

    else
    {
      v147 = (v146 | 7) + 1;
    }

    v148 = operator new(v147);
    __p.st_ino = v145 + 1;
    *&__p.st_uid = v147 | 0x8000000000000000;
    *&__p.st_dev = v148;
LABEL_305:
    if (v144 >= 0)
    {
      v149 = &v306;
    }

    else
    {
      v149 = v306.__r_.__value_.__r.__words[0];
    }

    memmove(v148, v149, v145);
  }

  *(&v148->st_dev + v145) = 47;
  st_gid_high = SHIBYTE(__p.st_gid);
  if ((SHIBYTE(__p.st_gid) & 0x8000000000000000) != 0)
  {
    st_gid_high = __p.st_ino;
    v153 = (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v153 - __p.st_ino >= 0xA)
    {
      v163 = *&__p.st_dev;
      goto LABEL_331;
    }

    v151 = __p.st_ino + 10;
    if (0x7FFFFFFFFFFFFFF7 - (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < __p.st_ino + 10 - v153)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v152 = *&__p.st_dev;
    if (v153 >= 0x3FFFFFFFFFFFFFF3)
    {
      v157 = 0;
      v156 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
LABEL_315:
      v154 = 2 * v153;
      if (v151 > 2 * v153)
      {
        v154 = v151;
      }

      if ((v154 | 7) == 0x17)
      {
        v155 = 25;
      }

      else
      {
        v155 = (v154 | 7) + 1;
      }

      if (v154 >= 0x17)
      {
        v156 = v155;
      }

      else
      {
        v156 = 23;
      }

      v157 = v153 == 22;
    }

    v158 = v156;
    v159 = operator new(v156);
    v160 = v159;
    if (st_gid_high)
    {
      memmove(v159, v152, st_gid_high);
    }

    v161 = &v160[st_gid_high];
    *v161 = *"mdmddr.mbn";
    *(v161 + 4) = 28258;
    if (!v157)
    {
      operator delete(v152);
    }

    __p.st_ino = v151;
    *&__p.st_uid = v158 | 0x8000000000000000;
    *&__p.st_dev = v160;
    v162 = &v160[v151];
  }

  else
  {
    if ((SHIBYTE(__p.st_gid) - 13) < 0xA)
    {
      v151 = SHIBYTE(__p.st_gid) + 10;
      v152 = &__p;
      v153 = 22;
      goto LABEL_315;
    }

    v163 = &__p;
LABEL_331:
    v164 = v163 + st_gid_high;
    *v164 = *"mdmddr.mbn";
    *(v164 + 4) = 28258;
    v165 = st_gid_high + 10;
    if (SHIBYTE(__p.st_gid) < 0)
    {
      __p.st_ino = st_gid_high + 10;
    }

    else
    {
      HIBYTE(__p.st_gid) = v165 & 0x7F;
    }

    v162 = v163 + v165;
  }

  *v162 = 0;
  *v305 = *&__p.st_dev;
  v305[2] = *&__p.st_uid;
  v166 = *&__p.st_dev;
  v167 = SHIBYTE(__p.st_gid);
  v168.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v168.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__p.st_blksize = v168;
  *__p.st_qspare = v168;
  __p.st_birthtimespec = v168;
  *&__p.st_size = v168;
  __p.st_mtimespec = v168;
  __p.st_ctimespec = v168;
  *&__p.st_uid = v168;
  __p.st_atimespec = v168;
  *&__p.st_dev = v168;
  if (v167 >= 0)
  {
    v169 = v305;
  }

  else
  {
    v169 = v166;
  }

  if (stat(v169, &__p))
  {
    v170 = operator new(0x40uLL);
    v170[2] = 0u;
    v170[3] = 0u;
    *v170 = 0u;
    v170[1] = 0u;
    *v170 = &unk_1F5EFFEA0;
    *(this + 38) = v170;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_341:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v171 = (**this)(this);
          _BBULog(3, 0, v171, "", "created dummy MDMDDR\n");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_341;
      }
    }
  }

  else
  {
    v172 = operator new(0x30uLL);
    *v172 = &unk_1F5F00F28;
    *(v172 + 8) = 0u;
    *(v172 + 24) = 0u;
    if (BBUFileDataSource::init(v172, v305, 0))
    {
      (*(*v172 + 8))(v172);
      v302 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v302, 120, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x2C0u, "Assertion failure(dataSource && Failed creating data source from file for MDMDDR)");
    }

    v173 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v173, v172, 0);
    *v173 = &unk_1F5EFFEA0;
    *(this + 38) = v173;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_348;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_348;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v174 = (**this)(this);
      _BBULog(3, 0, v174, "", "Loaded MDMDDR\n");
    }
  }

LABEL_348:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "multi_image.mbn");
  v175 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v180 = v175;
    operator delete(*&__p.st_dev);
    if (!v180)
    {
      goto LABEL_357;
    }

LABEL_350:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "multi_image.mbn");
    v176 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v177 = operator new(0x20uLL);
    *v177 = &unk_1F5F014B0;
    v177[1] = v176;
    v177[2] = 0;
    *(v177 + 6) = 0;
    v178 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v178, v176, 0);
    v177[2] = v178;
    *v177 = &unk_1F5F00610;
    *(this + 39) = v177;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_361;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_361;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v179 = (**this)(this);
      _BBULog(3, 0, v179, "", "Loaded OEMMisc\n");
    }
  }

  else
  {
    if (v175)
    {
      goto LABEL_350;
    }

LABEL_357:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_359:
        if (gBBULogVerbosity >= 1)
        {
          v181 = (**this)(this);
          _BBULog(3, 1, v181, "", "File not present: %s\n", "multi_image.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_359;
      }
    }
  }

LABEL_361:
  HIBYTE(__p.st_gid) = 19;
  v304 = *"multi_image_qti.mbn";
  strcpy(&__p, "multi_image_qti.mbn");
  v182 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v187 = v182;
    operator delete(*&__p.st_dev);
    if (!v187)
    {
      goto LABEL_370;
    }

LABEL_363:
    HIBYTE(__p.st_gid) = 19;
    strcpy(&__p.st_ino + 7, ".mbn");
    *&__p.st_dev = v304;
    v183 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v184 = operator new(0x20uLL);
    *v184 = &unk_1F5F014B0;
    v184[1] = v183;
    v184[2] = 0;
    *(v184 + 6) = 0;
    v185 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v185, v183, 0);
    v184[2] = v185;
    *v184 = &unk_1F5F00680;
    *(this + 40) = v184;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_374;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_374;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v186 = (**this)(this);
      _BBULog(3, 0, v186, "", "Loaded QTIMisc\n");
    }
  }

  else
  {
    if (v182)
    {
      goto LABEL_363;
    }

LABEL_370:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_372:
        if (gBBULogVerbosity >= 1)
        {
          v188 = (**this)(this);
          _BBULog(3, 1, v188, "", "File not present: %s\n", "multi_image_qti.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_372;
      }
    }
  }

LABEL_374:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "xbl_cfg.elf");
  v189 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v194 = v189;
    operator delete(*&__p.st_dev);
    if (!v194)
    {
      goto LABEL_383;
    }

LABEL_376:
    HIBYTE(__p.st_gid) = 11;
    strcpy(&__p, "xbl_cfg.elf");
    v190 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v191 = operator new(0x20uLL);
    *v191 = &unk_1F5F014B0;
    v191[1] = v190;
    v191[2] = 0;
    *(v191 + 6) = 0;
    v192 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v192, v190, 0);
    v191[2] = v192;
    *v191 = &unk_1F5F006F0;
    *(this + 41) = v191;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_387;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_387;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v193 = (**this)(this);
      _BBULog(3, 0, v193, "", "Loaded XBL Config\n");
    }
  }

  else
  {
    if (v189)
    {
      goto LABEL_376;
    }

LABEL_383:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_385:
        if (gBBULogVerbosity >= 1)
        {
          v195 = (**this)(this);
          _BBULog(3, 1, v195, "", "File not present: %s\n", "xbl_cfg.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_385;
      }
    }
  }

LABEL_387:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "uefi.elf");
  v196 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v201 = v196;
    operator delete(*&__p.st_dev);
    if (!v201)
    {
      goto LABEL_396;
    }

LABEL_389:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "uefi.elf");
    v197 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v198 = operator new(0x20uLL);
    *v198 = &unk_1F5F014B0;
    v198[1] = v197;
    v198[2] = 0;
    *(v198 + 6) = 0;
    v199 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v199, v197, 0);
    v198[2] = v199;
    *v198 = &unk_1F5F00760;
    *(this + 42) = v198;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_400;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_400;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v200 = (**this)(this);
      _BBULog(3, 0, v200, "", "Loaded UEFI\n");
    }
  }

  else
  {
    if (v196)
    {
      goto LABEL_389;
    }

LABEL_396:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_398:
        if (gBBULogVerbosity >= 1)
        {
          v202 = (**this)(this);
          _BBULog(3, 1, v202, "", "File not present: %s\n", "uefi.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_398;
      }
    }
  }

LABEL_400:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "xbl_support.elf");
  v203 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v208 = v203;
    operator delete(*&__p.st_dev);
    if (!v208)
    {
      goto LABEL_409;
    }

LABEL_402:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "xbl_support.elf");
    v204 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v205 = operator new(0x20uLL);
    *v205 = &unk_1F5F014B0;
    v205[1] = v204;
    v205[2] = 0;
    *(v205 + 6) = 0;
    v206 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v206, v204, 0);
    v205[2] = v206;
    *v205 = &unk_1F5F007D0;
    *(this + 43) = v205;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_413;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_413;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v207 = (**this)(this);
      _BBULog(3, 0, v207, "", "Loaded XBL Support\n");
    }
  }

  else
  {
    if (v203)
    {
      goto LABEL_402;
    }

LABEL_409:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_411:
        if (gBBULogVerbosity >= 1)
        {
          v209 = (**this)(this);
          _BBULog(3, 1, v209, "", "File not present: %s\n", "xbl_support.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_411;
      }
    }
  }

LABEL_413:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "shrm.elf");
  v210 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v215 = v210;
    operator delete(*&__p.st_dev);
    if (!v215)
    {
      goto LABEL_422;
    }

LABEL_415:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "shrm.elf");
    v211 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v212 = operator new(0x20uLL);
    *v212 = &unk_1F5F014B0;
    v212[1] = v211;
    v212[2] = 0;
    *(v212 + 6) = 0;
    v213 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v213, v211, 0);
    v212[2] = v213;
    *v212 = &unk_1F5EFFF18;
    *(this + 44) = v212;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_426;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_426;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v214 = (**this)(this);
      _BBULog(3, 0, v214, "", "Loaded SHRM\n");
    }
  }

  else
  {
    if (v210)
    {
      goto LABEL_415;
    }

LABEL_422:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_424:
        if (gBBULogVerbosity >= 1)
        {
          v216 = (**this)(this);
          _BBULog(3, 1, v216, "", "File not present: %s\n", "shrm.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_424;
      }
    }
  }

LABEL_426:
  HIBYTE(__p.st_gid) = 9;
  strcpy(&__p, "cpucp.elf");
  v217 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v222 = v217;
    operator delete(*&__p.st_dev);
    if (!v222)
    {
      goto LABEL_435;
    }

LABEL_428:
    HIBYTE(__p.st_gid) = 9;
    strcpy(&__p, "cpucp.elf");
    v218 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v219 = operator new(0x20uLL);
    *v219 = &unk_1F5F014B0;
    v219[1] = v218;
    v219[2] = 0;
    *(v219 + 6) = 0;
    v220 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v220, v218, 0);
    v219[2] = v220;
    *v219 = &unk_1F5EFFF88;
    *(this + 45) = v219;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_439;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_439;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v221 = (**this)(this);
      _BBULog(3, 0, v221, "", "Loaded CPUCP\n");
    }
  }

  else
  {
    if (v217)
    {
      goto LABEL_428;
    }

LABEL_435:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_437:
        if (gBBULogVerbosity >= 1)
        {
          v223 = (**this)(this);
          _BBULog(3, 1, v223, "", "File not present: %s\n", "cpucp.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_437;
      }
    }
  }

LABEL_439:
  HIBYTE(__p.st_gid) = 14;
  strcpy(&__p, "aop_devcfg.mbn");
  v224 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v229 = v224;
    operator delete(*&__p.st_dev);
    if (!v229)
    {
      goto LABEL_448;
    }

LABEL_441:
    HIBYTE(__p.st_gid) = 14;
    strcpy(&__p, "aop_devcfg.mbn");
    v225 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v226 = operator new(0x20uLL);
    *v226 = &unk_1F5F014B0;
    v226[1] = v225;
    v226[2] = 0;
    *(v226 + 6) = 0;
    v227 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v227, v225, 0);
    v226[2] = v227;
    *v226 = &unk_1F5EFFFF8;
    *(this + 46) = v226;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_452;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_452;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v228 = (**this)(this);
      _BBULog(3, 0, v228, "", "Loaded AOPDevCfg\n");
    }
  }

  else
  {
    if (v224)
    {
      goto LABEL_441;
    }

LABEL_448:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_450:
        if (gBBULogVerbosity >= 1)
        {
          v230 = (**this)(this);
          _BBULog(3, 1, v230, "", "File not present: %s\n", "aop_devcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_450;
      }
    }
  }

LABEL_452:
  HIBYTE(__p.st_gid) = 16;
  v304 = *"qdsp6sw_dtbs.elf";
  strcpy(&__p, "qdsp6sw_dtbs.elf");
  v231 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v236 = v231;
    operator delete(*&__p.st_dev);
    if (!v236)
    {
      goto LABEL_461;
    }

LABEL_454:
    HIBYTE(__p.st_gid) = 16;
    *&__p.st_dev = v304;
    LOBYTE(__p.st_uid) = 0;
    v232 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v233 = operator new(0x20uLL);
    *v233 = &unk_1F5F014B0;
    v233[1] = v232;
    v233[2] = 0;
    *(v233 + 6) = 0;
    v234 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v234, v232, 0);
    v233[2] = v234;
    *v233 = &unk_1F5F00068;
    *(this + 47) = v233;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_465;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_465;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v235 = (**this)(this);
      _BBULog(3, 0, v235, "", "Loaded Qdsp6SwDtbs\n");
    }
  }

  else
  {
    if (v231)
    {
      goto LABEL_454;
    }

LABEL_461:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_463:
        if (gBBULogVerbosity >= 1)
        {
          v237 = (**this)(this);
          _BBULog(3, 1, v237, "", "File not present: %s\n", "qdsp6sw_dtbs.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_463;
      }
    }
  }

LABEL_465:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qupv3fw.elf");
  v238 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v244 = v238;
    operator delete(*&__p.st_dev);
    if (!v244)
    {
      goto LABEL_474;
    }

LABEL_467:
    HIBYTE(__p.st_gid) = 11;
    strcpy(&__p, "qupv3fw.elf");
    v239 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v240 = &unk_1ED949000;
    v241 = operator new(0x20uLL);
    *v241 = &unk_1F5F014B0;
    v241[1] = v239;
    v241[2] = 0;
    *(v241 + 6) = 0;
    v242 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v242, v239, 0);
    v241[2] = v242;
    *v241 = &unk_1F5F000D8;
    *(this + 48) = v241;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_478;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_478;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v243 = (**this)(this);
      _BBULog(3, 0, v243, "", "Loaded Qupv3Fw\n");
    }
  }

  else
  {
    if (v238)
    {
      goto LABEL_467;
    }

LABEL_474:
    v240 = &unk_1ED949000;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_476:
        if (gBBULogVerbosity >= 1)
        {
          v245 = (**this)(this);
          _BBULog(3, 1, v245, "", "File not present: %s\n", "qupv3fw.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_476;
      }
    }
  }

LABEL_478:
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_480;
    }

LABEL_615:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_616;
    }

LABEL_481:
    if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
    {
      goto LABEL_616;
    }

    memset(&__p, 0, 24);
    memset(&traits, 0, sizeof(traits));
    v308.__start_.__cntrl_ = 0xAAAAAAAAAAAAAAAALL;
    v308.__end_ = 0xAAAAAAAAAAAAAALL;
    v308.__start_.__ptr_ = 0xAAAAAAAAAAAAAA00;
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v246 = off_1ECFD4E60;
    if (!off_1ECFD4E60)
    {
      SharedData::create_default_global(&v308);
      v247 = *&v308.__traits_.__loc_.__locale_;
      *&v308.__traits_.__loc_.__locale_ = 0uLL;
      v248 = *(&off_1ECFD4E60 + 1);
      off_1ECFD4E60 = v247;
      if (v248 && !atomic_fetch_add(&v248->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v248->__on_zero_shared)(v248);
        std::__shared_weak_count::__release_weak(v248);
      }

      ct = v308.__traits_.__ct_;
      if (v308.__traits_.__ct_ && !atomic_fetch_add(&v308.__traits_.__ct_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (ct->__on_zero_shared)(ct);
        std::__shared_weak_count::__release_weak(ct);
      }

      v246 = off_1ECFD4E60;
    }

    *&v308.__flags_ = v246;
    *&v308.__loop_count_ = *(&off_1ECFD4E60 + 1);
    if (*(&off_1ECFD4E60 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v308.__traits_.__loc_.__locale_ = operator new(0x20uLL);
    *&v308.__traits_.__ct_ = xmmword_1E5390FF0;
    strcpy(v308.__traits_.__loc_.__locale_, "Baseband Mobile Asset PT image");
    os_unfair_lock_lock((v246 + 40));
    if (SHIBYTE(v308.__traits_.__col_) >= 0)
    {
      v250 = &v308;
    }

    else
    {
      v250 = v308.__traits_.__loc_.__locale_;
    }

    ctu::cf::MakeCFString::MakeCFString(v310, v250);
    v251 = (**v246)(v246, v310[0]);
    if (v251)
    {
      ctu::cf::assign();
      CFRelease(v251);
    }

    MEMORY[0x1E6926590](v310);
    os_unfair_lock_unlock((v246 + 40));
    if (SHIBYTE(v308.__traits_.__col_) < 0)
    {
      operator delete(v308.__traits_.__loc_.__locale_);
      v252 = *&v308.__loop_count_;
      if (!*&v308.__loop_count_)
      {
        goto LABEL_502;
      }
    }

    else
    {
      v252 = *&v308.__loop_count_;
      if (!*&v308.__loop_count_)
      {
LABEL_502:
        end_high = HIBYTE(v308.__end_);
        if (SHIBYTE(v308.__end_) < 0)
        {
          end_high = v308.__start_.__cntrl_;
        }

        if (end_high)
        {
          goto LABEL_505;
        }

LABEL_511:
        v255 = 0;
LABEL_522:
        HIBYTE(v308.__traits_.__col_) = 6;
        strcpy(&v308, "pt.mbn");
        v260 = BBUEURUpdateSource::containsFile(this, &v308);
        if ((SHIBYTE(v308.__traits_.__col_) & 0x80000000) == 0)
        {
          if (v260)
          {
            goto LABEL_524;
          }

LABEL_528:
          if (v255)
          {
            (*(*v255 + 8))(v255);
            v262 = 0;
            v255 = 0;
          }

          else
          {
            v262 = 0;
          }

          goto LABEL_545;
        }

        v263 = v260;
        operator delete(v308.__traits_.__loc_.__locale_);
        v264 = v263;
        v240 = &unk_1ED949000;
        if (!v264)
        {
          goto LABEL_528;
        }

LABEL_524:
        HIBYTE(v308.__traits_.__col_) = 6;
        strcpy(&v308, "pt.mbn");
        v261 = BBUEURUpdateSource::createDataSource(this, &v308, 0);
        v262 = v261;
        if (SHIBYTE(v308.__traits_.__col_) < 0)
        {
          operator delete(v308.__traits_.__loc_.__locale_);
          if (!v262)
          {
            goto LABEL_545;
          }
        }

        else if (!v261)
        {
          goto LABEL_545;
        }

        st_ino = HIBYTE(__p.st_gid);
        if ((__p.st_gid & 0x80000000) != 0)
        {
          st_ino = __p.st_ino;
        }

        if (st_ino)
        {
          v266 = (*(*v262 + 24))(v262);
          v267 = operator new[](v266);
          v308.__flags_ = -1431655766;
          (*(*v262 + 16))(v262, v267, v266, &v308.__flags_, 0);
          if (v308.__flags_ == v266)
          {
            getPtImageVersion(&v308, v267, v266);
            if (SHIBYTE(traits.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(traits.__r_.__value_.__l.__data_);
            }

            traits = v308.__traits_;
            goto LABEL_544;
          }

          if (v240[396] == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
            {
              goto LABEL_542;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
            {
LABEL_542:
              if (gBBULogVerbosity >= 3)
              {
                v268 = (**this)(this);
                _BBULog(3, 3, v268, "", "PT file (iOS) copied amount is wrong");
              }
            }
          }

LABEL_544:
          operator delete[](v267);
        }

LABEL_545:
        if (v240[396] == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
LABEL_547:
            if (gBBULogVerbosity >= 6)
            {
              v269 = (**this)(this);
              v270 = &__p;
              if ((__p.st_gid & 0x80000000) != 0)
              {
                v270 = *&__p.st_dev;
              }

              p_traits = &traits;
              if ((traits.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_traits = traits.__r_.__value_.__r.__words[0];
              }

              _BBULog(3, 6, v269, "", "PT version info - MobileAsset[%s] iOS[%s]", v270, p_traits);
            }
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
            goto LABEL_547;
          }
        }

        v272 = HIBYTE(traits.__r_.__value_.__r.__words[2]);
        if ((traits.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v272 = traits.__r_.__value_.__l.__size_;
        }

        if (v272)
        {
          v273 = HIBYTE(__p.st_gid);
          if ((__p.st_gid & 0x80000000) != 0)
          {
            v273 = __p.st_ino;
          }

          if (v273)
          {
            v308.__traits_.__loc_.__locale_ = operator new(0x48uLL);
            *&v308.__traits_.__ct_ = xmmword_1E5391000;
            strcpy(v308.__traits_.__loc_.__locale_, "([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})");
            v274 = compareVersionString(&v308, &traits, &__p, 1);
            if ((SHIBYTE(v308.__traits_.__col_) & 0x80000000) == 0)
            {
              if (v274 != -1)
              {
                goto LABEL_561;
              }

LABEL_593:
              if (v262)
              {
                (*(*v262 + 8))(v262);
              }

              pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v283 = off_1ECFD4E60;
              if (!off_1ECFD4E60)
              {
                SharedData::create_default_global(&v308);
                v284 = *&v308.__traits_.__loc_.__locale_;
                *&v308.__traits_.__loc_.__locale_ = 0uLL;
                v285 = *(&off_1ECFD4E60 + 1);
                off_1ECFD4E60 = v284;
                if (v285 && !atomic_fetch_add(&v285->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v285->__on_zero_shared)(v285);
                  std::__shared_weak_count::__release_weak(v285);
                }

                v286 = v308.__traits_.__ct_;
                if (v308.__traits_.__ct_ && !atomic_fetch_add(&v308.__traits_.__ct_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v286->__on_zero_shared)(v286);
                  std::__shared_weak_count::__release_weak(v286);
                }

                v283 = off_1ECFD4E60;
              }

              v287 = *(&off_1ECFD4E60 + 1);
              *&v308.__flags_ = v283;
              *&v308.__loop_count_ = *(&off_1ECFD4E60 + 1);
              if (*(&off_1ECFD4E60 + 1))
              {
                atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v308.__traits_.__loc_.__locale_ = operator new(0x28uLL);
              *&v308.__traits_.__ct_ = xmmword_1E538EBC0;
              strcpy(v308.__traits_.__loc_.__locale_, "Baseband Mobile Asset PT image sent");
              SharedData::setPreference<BOOL>(v283, &v308, 1);
              if (SHIBYTE(v308.__traits_.__col_) < 0)
              {
                operator delete(v308.__traits_.__loc_.__locale_);
              }

              if (v287 && !atomic_fetch_add(&v287->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v287->__on_zero_shared)(v287);
                std::__shared_weak_count::__release_weak(v287);
              }

              if (v240[396] == -1)
              {
                if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                {
LABEL_612:
                  if (gBBULogVerbosity >= 6)
                  {
                    v288 = (**this)(this);
                    _BBULog(3, 6, v288, "", "Load PT from MobileAsset\n");
                  }
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                {
                  goto LABEL_612;
                }
              }

LABEL_585:
              if (SHIBYTE(v308.__end_) < 0)
              {
                operator delete(v308.__start_.__ptr_);
                if (SHIBYTE(traits.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_590;
                }

LABEL_587:
                if (SHIBYTE(__p.st_gid) < 0)
                {
LABEL_591:
                  operator delete(*&__p.st_dev);
                }
              }

              else
              {
                if ((SHIBYTE(traits.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_587;
                }

LABEL_590:
                operator delete(traits.__r_.__value_.__l.__data_);
                if (SHIBYTE(__p.st_gid) < 0)
                {
                  goto LABEL_591;
                }
              }

              goto LABEL_626;
            }

            v281 = v274;
            operator delete(v308.__traits_.__loc_.__locale_);
            v282 = v281;
            v240 = &unk_1ED949000;
            if (v282 == -1)
            {
              goto LABEL_593;
            }
          }
        }

LABEL_561:
        if (!v262)
        {
          v255 = 0;
          goto LABEL_585;
        }

        if (v240[396] == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
LABEL_564:
            if (gBBULogVerbosity >= 6)
            {
              v275 = (**this)(this);
              _BBULog(3, 6, v275, "", "Load PT from iOS\n");
            }
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
            goto LABEL_564;
          }
        }

        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v276 = off_1ECFD4E60;
        if (!off_1ECFD4E60)
        {
          SharedData::create_default_global(&v308);
          v277 = *&v308.__traits_.__loc_.__locale_;
          *&v308.__traits_.__loc_.__locale_ = 0uLL;
          v278 = *(&off_1ECFD4E60 + 1);
          off_1ECFD4E60 = v277;
          if (v278 && !atomic_fetch_add(&v278->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v278->__on_zero_shared)(v278);
            std::__shared_weak_count::__release_weak(v278);
          }

          v279 = v308.__traits_.__ct_;
          if (v308.__traits_.__ct_ && !atomic_fetch_add(&v308.__traits_.__ct_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v279->__on_zero_shared)(v279);
            std::__shared_weak_count::__release_weak(v279);
          }

          v276 = off_1ECFD4E60;
        }

        v280 = *(&off_1ECFD4E60 + 1);
        *&v308.__flags_ = v276;
        *&v308.__loop_count_ = *(&off_1ECFD4E60 + 1);
        if (*(&off_1ECFD4E60 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v308.__traits_.__loc_.__locale_ = operator new(0x28uLL);
        *&v308.__traits_.__ct_ = xmmword_1E538EBC0;
        strcpy(v308.__traits_.__loc_.__locale_, "Baseband Mobile Asset PT image sent");
        SharedData::setPreference<BOOL>(v276, &v308, 0);
        if (SHIBYTE(v308.__traits_.__col_) < 0)
        {
          operator delete(v308.__traits_.__loc_.__locale_);
        }

        if (v280 && !atomic_fetch_add(&v280->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v280->__on_zero_shared)(v280);
          std::__shared_weak_count::__release_weak(v280);
        }

        if (v255)
        {
          (*(*v255 + 8))(v255);
        }

        v255 = v262;
        goto LABEL_585;
      }
    }

    if (atomic_fetch_add(&v252->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_502;
    }

    (v252->__on_zero_shared)(v252);
    std::__shared_weak_count::__release_weak(v252);
    cntrl = HIBYTE(v308.__end_);
    if (SHIBYTE(v308.__end_) < 0)
    {
      cntrl = v308.__start_.__cntrl_;
    }

    if (!cntrl)
    {
      goto LABEL_511;
    }

LABEL_505:
    HIBYTE(v308.__traits_.__col_) = 6;
    strcpy(&v308, "pt.mbn");
    DataSourceFromSpecificPath = BBUEURUpdateSource::createDataSourceFromSpecificPath(this, &v308.__start_.__ptr_, &v308, 0);
    v255 = DataSourceFromSpecificPath;
    if (SHIBYTE(v308.__traits_.__col_) < 0)
    {
      operator delete(v308.__traits_.__loc_.__locale_);
      if (!v255)
      {
        goto LABEL_522;
      }
    }

    else if (!DataSourceFromSpecificPath)
    {
      goto LABEL_522;
    }

    v257 = (*(*v255 + 24))(v255);
    v258 = operator new[](v257);
    v308.__flags_ = -1431655766;
    (*(*v255 + 16))(v255, v258, v257, &v308.__flags_, 0);
    if (v308.__flags_ == v257)
    {
      getPtImageVersion(&v308, v258, v257);
      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      *&__p.st_dev = *&v308.__traits_.__loc_.__locale_;
      *&__p.st_uid = v308.__traits_.__col_;
      goto LABEL_521;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_519;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_519:
        if (gBBULogVerbosity >= 3)
        {
          v259 = (**this)(this);
          _BBULog(3, 3, v259, "", "PT file (MobileAsset) copied amount is wrong");
        }
      }
    }

LABEL_521:
    operator delete[](v258);
    goto LABEL_522;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_615;
  }

LABEL_480:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
  {
    goto LABEL_481;
  }

LABEL_616:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "pt.mbn");
  v289 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v290 = v289;
    operator delete(*&__p.st_dev);
    v291 = v290;
    v240 = &unk_1ED949000;
    if (!v291)
    {
      goto LABEL_631;
    }
  }

  else if (!v289)
  {
    goto LABEL_631;
  }

  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "pt.mbn");
  v255 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_626;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_626;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    v292 = (**this)(this);
    _BBULog(3, 6, v292, "", "Load PT image from iOS\n");
  }

LABEL_626:
  if (v255)
  {
    v293 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v293, v255, 0);
    *v293 = &unk_1F5F00148;
    *(this + 49) = v293;
    if (v240[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_629:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v294 = (**this)(this);
          _BBULog(3, 0, v294, "", "Loaded PT\n");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_629;
      }
    }
  }

  else
  {
LABEL_631:
    if (v240[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_635;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_635;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      v295 = (**this)(this);
      _BBULog(3, 6, v295, "", "File not present: %s\n", "pt.mbn");
    }
  }

LABEL_635:
  (*(*this + 264))(this);
  if ((SHIBYTE(v305[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v306.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_639:
    operator delete(v306.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v305[0]);
  if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_639;
  }
}

void sub_1E5290038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (*(v36 - 129) < 0)
  {
    operator delete(*(v36 - 152));
    if ((*(v36 - 105) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v36 - 105) & 0x80000000) == 0)
  {
LABEL_3:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_8:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      if (a30 < 0)
      {
        operator delete(a25);
      }

      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(__p);
    goto LABEL_8;
  }

  operator delete(*(v36 - 128));
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL SharedData::setPreference<BOOL>(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(key, v6);
  v7 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *v7;
  key[1] = v8;
  if (v8)
  {
    v9 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(key[0], v8, *(a1 + 8), *(a1 + 16), *MEMORY[0x1E695E8B0]);
    v10 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v9) != 0;
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E6926590](key);
  os_unfair_lock_unlock((a1 + 40));
  return v10;
}

void sub_1E529072C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  MEMORY[0x1E6926590](&a9);
  __clang_call_terminate(a1);
}

void BBUEUR25UpdateSource::~BBUEUR25UpdateSource(BBUEUR25UpdateSource *this)
{
  *this = &unk_1F5EFFC18;
  v2 = *(this + 52);
  *(this + 52) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  BBUEUR20UpdateSource::~BBUEUR20UpdateSource(this);
}

{
  *this = &unk_1F5EFFC18;
  v2 = *(this + 52);
  *(this + 52) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  BBUEUR20UpdateSource::~BBUEUR20UpdateSource(this);

  operator delete(v3);
}

uint64_t BBUEURUpdateSource::getZipFile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 72);
  *a2 = *(this + 64);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

const void **ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(const void **a1)
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

void BBUEURSequencerRamImage::~BBUEURSequencerRamImage(BBUEURSequencerRamImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

uint64_t BBUEURELFImage::getWritePayloadLength(BBUEURELFImage *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void BBUEURELFImage::generateHash(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(result + 8);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void BBUEURSignedFirmwareSOCViewImage::~BBUEURSignedFirmwareSOCViewImage(BBUEURSignedFirmwareSOCViewImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURXBLscImage::~BBUEURXBLscImage(void **this)
{
  *this = &unk_1F5EFFE30;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5F014B0;
  v2 = this[2];
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = this[1];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5EFFE30;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5F014B0;
  v2 = this[2];
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = this[1];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

uint64_t BBUEURXBLscImage::getName(BBUEURXBLscImage *this)
{
  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void BBUEURAppsImage::~BBUEURAppsImage(BBUEURAppsImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQDSP6SWImage::~BBUEURQDSP6SWImage(BBUEURQDSP6SWImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURTZImage::~BBUEURTZImage(BBUEURTZImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURACDBImage::~BBUEURACDBImage(BBUEURACDBImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEURMIImage::generateHash(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(result + 8);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void BBUEURBBCFGImage::~BBUEURBBCFGImage(BBUEURBBCFGImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEURAPDPImage::~BBUEURAPDPImage(BBUEURAPDPImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURDevcfgImage::~BBUEURDevcfgImage(BBUEURDevcfgImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURHYPImage::~BBUEURHYPImage(BBUEURHYPImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURAOPImage::~BBUEURAOPImage(BBUEURAOPImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEUR25MDMDDRImage::~BBUEUR25MDMDDRImage(BBUEUR25MDMDDRImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEUR25MDMDDRImage::getWritePayloadData(BBUEUR25MDMDDRImage *this, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (*(this + 1))
  {
    BBUEURMIImage::getWritePayloadData(this, a2, a3, a4);
  }

  else if (a3)
  {
    bzero(a2, a3);
  }
}

uint64_t BBUEUR25MDMDDRImage::getWritePayloadLength(BBUEUR25MDMDDRImage *this)
{
  if (*(this + 1))
  {
    return (*(this + 8) + 40);
  }

  else
  {
    return 0x20000;
  }
}

void BBUEUR25MDMDDRImage::generateHash(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(result + 8);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void BBUEUROEMMiscImage::~BBUEUROEMMiscImage(BBUEUROEMMiscImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQTIMiscImage::~BBUEURQTIMiscImage(BBUEURQTIMiscImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURXblCfgImage::~BBUEURXblCfgImage(BBUEURXblCfgImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURUEFIImage::~BBUEURUEFIImage(BBUEURUEFIImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURXblSupportImage::~BBUEURXblSupportImage(BBUEURXblSupportImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURShrmImage::~BBUEURShrmImage(BBUEURShrmImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURCpucpImage::~BBUEURCpucpImage(BBUEURCpucpImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURAOPDevCfgImage::~BBUEURAOPDevCfgImage(BBUEURAOPDevCfgImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQdsp6SwDtbsImage::~BBUEURQdsp6SwDtbsImage(BBUEURQdsp6SwDtbsImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQupv3FwImage::~BBUEURQupv3FwImage(BBUEURQupv3FwImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURPTImage::~BBUEURPTImage(BBUEURPTImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void SharedData::create_default_global(uint64_t *__return_ptr a1@<X8>)
{
  v2 = operator new(0x60uLL);
  __p = v2;
  strcpy(v2, "/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist");
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v9.st_blksize = v3;
  *v9.st_qspare = v3;
  v9.st_birthtimespec = v3;
  *&v9.st_size = v3;
  v9.st_mtimespec = v3;
  v9.st_ctimespec = v3;
  *&v9.st_uid = v3;
  v9.st_atimespec = v3;
  v8 = xmmword_1E5391010;
  *&v9.st_dev = v3;
  if (!stat(v2, &v9) && remove(v2, v4))
  {
    if (v8 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    unlink(p_p);
  }

  v6 = operator new(0x30uLL);
  MEMORY[0x1E69265F0](v6, @"com.apple.AppleBasebandManager.data", *MEMORY[0x1E695E8B8]);
  v6[3] = 0;
  v6[4] = 0;
  *(v6 + 10) = 0;
  std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(a1, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52928D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_1F5F001C0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 24) = a2;
        *(a2 + 32) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 24) = a2;
      *(a2 + 32) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_1E5292A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = MEMORY[0x1E6926600](v1);

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391192)
  {
    if (((v2 & 0x80000001E5391192 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391192))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391192 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x1E6926600](v1);
    operator delete(v4);
    return v2;
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_118()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BasebandProvisioning::sendServerReq(CFDictionaryRef *this, const __CFString *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v267 = *MEMORY[0x1E69E9840];
  v251 = 0;
  v252 = 0;
  v249 = 0;
  v250 = 0;
  v247 = 0;
  v248 = 0;
  v246 = 0;
  __p[0] = 0;
  __p[1] = 0;
  data = 0;
  if (!a2)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Null commandCode parameter\n");
LABEL_204:
    v240 = 0;
    goto LABEL_209;
  }

  if (!a4)
  {
    v194 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v194, 2, "%s::%s: Null respDict parameter\n");
    goto LABEL_204;
  }

  alloc = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v252 = Mutable;
  if (!Mutable)
  {
    v195 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v195, 2, "%s::%s: Request dictionary cannot be created\n");
    goto LABEL_204;
  }

  buffer.isa = 0;
  v262 = 0;
  v7 = setHttpUriEscapedValue(alloc, Mutable, @"COMMAND_CODE", a2);
  if (v7)
  {
    v196 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v196, 2, "%s::%s: setting COMMAND_CODE failed\n");
LABEL_199:
    v45 = 0;
    goto LABEL_64;
  }

  v8 = setHttpUriEscapedValue(alloc, Mutable, @"TICKET_VERSION", @"2");
  if (v8)
  {
    v198 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v198, 2, "%s::%s: setting TICKET_VERSION failed\n");
    goto LABEL_199;
  }

  v9 = setHttpUriEscapedValue(alloc, Mutable, @"VERSION", @"2");
  if (v9)
  {
    v200 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v200, 2, "%s::%s: setting VERSION failed\n");
    goto LABEL_199;
  }

  Count = CFDictionaryGetCount(this[10]);
  v11 = malloc(8 * Count);
  v12 = malloc(8 * Count);
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {
      v204 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v204, 2, "%s::%s: provInfo value buffer alloc failed\n");
      goto LABEL_189;
    }

    CFDictionaryGetKeysAndValues(this[10], v11, v12);
    if (Count >= 1)
    {
      v15 = v11;
      v16 = v13;
      while (1)
      {
        if (!*v15)
        {
          v190 = ACFULogging::getLogInstance(v14);
          ACFULogging::handleMessage(v190, 2, "%s::%s: invalid provisioningInfoKeysBuffer array\n");
          goto LABEL_189;
        }

        if (!*v16)
        {
          v191 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v191, 2, "%s::%s: invalid provisioningInfoValuesBuffer array\n");
          goto LABEL_189;
        }

        v17 = CFGetTypeID(*v16);
        TypeID = CFDataGetTypeID();
        v19 = *v15;
        v20 = *v16;
        v14 = (v17 == TypeID ? setHttpBase64EncodedValue(alloc, Mutable, v19, v20) : setHttpUriEscapedValue(alloc, Mutable, v19, v20));
        if (v14)
        {
          break;
        }

        ++v16;
        ++v15;
        if (!--Count)
        {
          goto LABEL_18;
        }
      }

      v192 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v192, 2, "%s::%s: setting keyBuffer failed\n");
LABEL_189:
      v45 = 0;
      free(v11);
      if (!v13)
      {
        goto LABEL_64;
      }

LABEL_63:
      free(v13);
      goto LABEL_64;
    }

LABEL_18:
    if (CFStringCompare(a2, @"100", 0) == kCFCompareEqualTo)
    {
      Value = CFDictionaryGetValue(a3, @"MarketingPartNumber");
      v22 = Value;
      if (Value)
      {
        v23 = CFGetTypeID(Value);
        v24 = CFStringGetTypeID();
        if (v23 != v24)
        {
          v231 = ACFULogging::getLogInstance(v24);
          ACFULogging::handleMessage(v231, 2, "%s::%s: Provisioning MPN has wrong type\n");
          goto LABEL_189;
        }

        v25 = setHttpUriEscapedValue(alloc, Mutable, @"MPN", v22);
        if (v25)
        {
          v232 = ACFULogging::getLogInstance(v25);
          ACFULogging::handleMessage(v232, 2, "%s::%s: setting MPN failed\n");
          goto LABEL_189;
        }
      }

      v26 = CFDictionaryGetValue(a3, @"RegionCode");
      v27 = v26;
      if (v26)
      {
        v28 = CFGetTypeID(v26);
        v29 = CFStringGetTypeID();
        if (v28 != v29)
        {
          v233 = ACFULogging::getLogInstance(v29);
          ACFULogging::handleMessage(v233, 2, "%s::%s: Provisioning RGN has wrong type\n");
          goto LABEL_189;
        }

        v30 = setHttpUriEscapedValue(alloc, Mutable, @"RGN", v27);
        if (v30)
        {
          v234 = ACFULogging::getLogInstance(v30);
          ACFULogging::handleMessage(v234, 2, "%s::%s: setting RGN failed\n");
          goto LABEL_189;
        }
      }
    }

    v31 = CFDictionaryGetValue(a3, @"BasebandProvisioningLineType");
    v32 = v31;
    if (v31)
    {
      v33 = CFGetTypeID(v31);
      v34 = CFStringGetTypeID();
      if (v33 != v34)
      {
        v217 = ACFULogging::getLogInstance(v34);
        ACFULogging::handleMessage(v217, 2, "%s::%s: Provisioning line type has wrong type\n");
        goto LABEL_189;
      }

      v35 = setHttpUriEscapedValue(alloc, Mutable, @"LINETYPE", v32);
      if (v35)
      {
        v218 = ACFULogging::getLogInstance(v35);
        ACFULogging::handleMessage(v218, 2, "%s::%s: setting line type failed\n");
        goto LABEL_189;
      }
    }

    v36 = this[11];
    if (v36)
    {
      v37 = CFDictionaryGetValue(v36, @"ChipSerialNo");
      v38 = v37;
      if (v37)
      {
        v39 = CFGetTypeID(v37);
        v40 = CFDataGetTypeID();
        if (v39 != v40)
        {
          v220 = ACFULogging::getLogInstance(v40);
          ACFULogging::handleMessage(v220, 2, "%s::%s: Mistyped snum\n");
          goto LABEL_189;
        }

        v41 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_BB_SNUM", v38);
        if (v41)
        {
          v221 = ACFULogging::getLogInstance(v41);
          ACFULogging::handleMessage(v221, 2, "%s::%s: Setting B64_BB_SNUM failed\n");
          goto LABEL_189;
        }
      }

      v42 = CFStringCompare(a2, @"100", 0);
      v43 = this[11];
      if (v42 == kCFCompareEqualTo)
      {
        v53 = CFDictionaryGetValue(v43, @"EncryptedSessionKey");
        v54 = v53;
        if (v53)
        {
          v55 = CFGetTypeID(v53);
          v56 = CFDataGetTypeID();
          if (v55 != v56)
          {
            v235 = ACFULogging::getLogInstance(v56);
            ACFULogging::handleMessage(v235, 2, "%s::%s: Mistyped encrypted session key\n");
            goto LABEL_189;
          }

          v57 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_SESS_KEY", v54);
          if (v57)
          {
            v236 = ACFULogging::getLogInstance(v57);
            ACFULogging::handleMessage(v236, 2, "%s::%s: Setting B64_SESS_KEY failed\n");
            goto LABEL_189;
          }
        }

        v58 = CFDictionaryGetValue(this[11], @"SKeyHash");
        v59 = v58;
        if (v58)
        {
          v60 = CFGetTypeID(v58);
          v61 = CFDataGetTypeID();
          if (v60 != v61)
          {
            v237 = ACFULogging::getLogInstance(v61);
            ACFULogging::handleMessage(v237, 2, "%s::%s: Mistyped prov key hash\n");
            goto LABEL_189;
          }

          v62 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_SKEY_HASH", v59);
          if (v62)
          {
            v238 = ACFULogging::getLogInstance(v62);
            ACFULogging::handleMessage(v238, 2, "%s::%s: Setting kProvB64_SKEY_HASH failed\n");
            goto LABEL_189;
          }
        }

        v45 = 0;
        goto LABEL_50;
      }

      v44 = CFDictionaryGetValue(v43, @"IMEI");
      v45 = v44 != 0;
      if (v44)
      {
        ReversedIMEIFromString = createReversedIMEIFromString(v44, &v262);
        if ((ReversedIMEIFromString & 1) == 0)
        {
          v225 = ACFULogging::getLogInstance(ReversedIMEIFromString);
          ACFULogging::handleMessage(v225, 2, "%s::%s: IMEI data processing failed\n");
          goto LABEL_189;
        }

        v47 = v262;
        if (!v262)
        {
          v226 = ACFULogging::getLogInstance(ReversedIMEIFromString);
          ACFULogging::handleMessage(v226, 2, "%s::%s: IMEI data processing returned null data\n");
          goto LABEL_189;
        }

        v48 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_IMEI", v262);
        if (v48)
        {
          v228 = ACFULogging::getLogInstance(v48);
          ACFULogging::handleMessage(v228, 2, "%s::%s: Setting kProvB64_IMEI failed\n");
          goto LABEL_59;
        }

        CFRelease(v47);
        v262 = 0;
      }

      v49 = CFDictionaryGetValue(this[11], @"IMEI2");
      if (!v49)
      {
LABEL_50:
        v63 = CFDictionaryGetValue(this[11], @"ChipID");
        v64 = v63;
        if (!v63)
        {
          goto LABEL_53;
        }

        v65 = CFGetTypeID(v63);
        v66 = CFDataGetTypeID();
        if (v65 != v66)
        {
          v222 = ACFULogging::getLogInstance(v66);
          ACFULogging::handleMessage(v222, 2, "%s::%s: Mistyped chipid\n");
          goto LABEL_62;
        }

        v67 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_BB_CHIPID", v64);
        if (v67)
        {
          v223 = ACFULogging::getLogInstance(v67);
          ACFULogging::handleMessage(v223, 2, "%s::%s: Setting kProvB64_BB_CHIPID failed\n");
        }

        else
        {
LABEL_53:
          v68 = CFDictionaryGetValue(this[11], @"EID");
          if (v68)
          {
            v70 = support::cf::copyDataFromHexString(v68, &buffer, v69);
            v45 = v70;
            if (buffer.isa)
            {
              v71 = v70;
            }

            else
            {
              v71 = 0;
            }

            if (v71)
            {
              setHttpBase64EncodedValue(alloc, Mutable, @"B64_EID", buffer.isa);
              goto LABEL_59;
            }

            v224 = ACFULogging::getLogInstance(v70);
            ACFULogging::handleMessage(v224, 2, "%s::%s: EID Hex to Data conversion failed\n", "BasebandProvisioning", "populateRequestDictionary");
          }

          else
          {
            v45 = 1;
          }
        }

LABEL_62:
        free(v11);
        if (!v13)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      v50 = createReversedIMEIFromString(v49, &v262);
      if ((v50 & 1) == 0)
      {
        v227 = ACFULogging::getLogInstance(v50);
        ACFULogging::handleMessage(v227, 2, "%s::%s: IMEI2 data processing failed\n");
        goto LABEL_189;
      }

      v51 = v262;
      if (!v262)
      {
        v229 = ACFULogging::getLogInstance(v50);
        ACFULogging::handleMessage(v229, 2, "%s::%s: IMEI2 data processing returned null data\n");
        goto LABEL_189;
      }

      v52 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_IMEI2", v262);
      if (!v52)
      {
        CFRelease(v51);
        v45 = 1;
        goto LABEL_50;
      }

      v230 = ACFULogging::getLogInstance(v52);
      ACFULogging::handleMessage(v230, 2, "%s::%s: Setting kProvB64_IMEI2 failed\n");
    }

LABEL_59:
    v45 = 1;
    free(v11);
    if (!v13)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v202 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v202, 2, "%s::%s: provInfo key buffer alloc failed\n", "BasebandProvisioning", "populateRequestDictionary");
  v45 = 0;
  if (v13)
  {
    goto LABEL_63;
  }

LABEL_64:
  isa = buffer.isa;
  if (buffer.isa)
  {
    CFRelease(buffer.isa);
  }

  if (!v45)
  {
    v197 = ACFULogging::getLogInstance(isa);
    ACFULogging::handleMessage(v197, 2, "%s::%s: Failed populating the request dictionary for ProvisioningPing cmd\n");
    goto LABEL_204;
  }

  ACFULogging::getLogInstance(isa);
  v73 = operator new(0x30uLL);
  strcpy(v73, "BasebandProvisioning::sendServerReq");
  buffer.isa = v73;
  *&buffer.info = xmmword_1E5391300;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(buffer.data) < 0)
  {
    operator delete(buffer.isa);
  }

  buffer.isa = 0;
  buffer.info = &v248;
  PostBodyFromDictionary = createPostBodyFromDictionary(alloc, Mutable, &buffer);
  v75 = *buffer.info;
  if (buffer.isa)
  {
    *buffer.info = buffer.isa;
    if (!v75)
    {
      goto LABEL_74;
    }
  }

  else
  {
    *buffer.info = 0;
    if (!v75)
    {
      goto LABEL_74;
    }
  }

  CFRelease(v75);
LABEL_74:
  if ((PostBodyFromDictionary & 1) == 0)
  {
    v199 = ACFULogging::getLogInstance(v75);
    ACFULogging::handleMessage(v199, 2, "%s::%s: CreatePostBodyFromDictionary failed\n");
    goto LABEL_204;
  }

  if (!v248)
  {
    v201 = ACFULogging::getLogInstance(v75);
    ACFULogging::handleMessage(v201, 2, "%s::%s: CreatePostBodyFromDictionary returned null data\n");
    goto LABEL_204;
  }

  v76 = ACFULogging::getLogInstance(v75);
  ACFULogging::handleMessage(v76, 0, "%s::%s: Postdata created.\n", "BasebandProvisioning", "sendServerReq");
  v77 = ctu::cf::assign();
  if ((v77 & 1) == 0)
  {
    v203 = ACFULogging::getLogInstance(v77);
    ACFULogging::handleMessage(v203, 2, "%s::%s: Failed to assign output data\n");
    goto LABEL_204;
  }

  v78 = ACFULogging::getLogInstance(v77);
  ACFULogging::handleMessage(v78, 0, "%s::%s: Submitting our request\n", "BasebandProvisioning", "sendServerReq");
  v79 = operator new(0xA0uLL);
  *(v79 + 3) = 850045863;
  *(v79 + 1) = 0;
  *(v79 + 2) = 0;
  *(v79 + 2) = 0u;
  *(v79 + 3) = 0u;
  *(v79 + 4) = 0u;
  *(v79 + 10) = 0;
  *(v79 + 11) = 1018212795;
  *(v79 + 6) = 0u;
  *(v79 + 7) = 0u;
  *(v79 + 124) = 0u;
  *v79 = &unk_1F5F008D8;
  v260 = v79;
  v261 = v79;
  std::mutex::lock((v79 + 24));
  v80 = *(v79 + 34);
  if ((v80 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v79 + 1, 1uLL, memory_order_relaxed);
  *(v79 + 34) = v80 | 2;
  std::mutex::unlock((v79 + 24));
  v258 = 0xAAAAAAAAAAAAAAAALL;
  v259 = 0xAAAAAAAAAAAAAAAALL;
  buffer.info = 0;
  buffer.data = 0;
  buffer.isa = &buffer.info;
  theData = 0;
  v257 = 0;
  ctu::Http::HttpRequest::create();
  v81 = v257;
  if (v257 && !atomic_fetch_add(&v257->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v81->__on_zero_shared)(v81);
    std::__shared_weak_count::__release_weak(v81);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&buffer, buffer.info);
  (*(*v258 + 8))(v258, this[4]);
  v82 = v258;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v260, &buffer.isa);
  (*(*v82 + 16))(v82, buffer.isa);
  if (buffer.isa)
  {
    _Block_release(buffer.isa);
  }

  LODWORD(v83) = *(this + 6);
  (*(*v258 + 96))(v258, v83);
  v84 = v258;
  v85 = this[5];
  cf = v85;
  if (v85)
  {
    CFRetain(v85);
  }

  (*(*v84 + 88))(v84, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  (*(*v258 + 56))(v258, &v249);
  memset(&buffer, 0, 24);
  (*(*v258 + 40))(v258, &buffer);
  if (SHIBYTE(buffer.data) < 0)
  {
    operator delete(buffer.isa);
  }

  *&v254 = 0xAAAAAAAAAAAAAAAALL;
  *(&v254 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v86 = v260;
  v260 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v86, &v254);
  if (v86 && !atomic_fetch_add(v86 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v86 + 16))(v86);
  }

  v87 = (*(*v254 + 16))(v254);
  if (v87 == 1)
  {
    v87 = (*(*v254 + 24))(v254);
    if (v87 == 200)
    {
      v240 = *(&v254 + 1);
      v88 = v254;
      v89 = v259;
      if (!v259)
      {
        goto LABEL_110;
      }

      goto LABEL_108;
    }
  }

  v90 = ACFULogging::getLogInstance(v87);
  v91 = (*(*v254 + 16))(v254);
  v92 = (*(*v254 + 24))(v254);
  v93 = (*(*v254 + 32))(v254);
  (*(*v254 + 72))(&v253);
  ctu::cf::show(&v262, v253, v94);
  if (v263 >= 0)
  {
    v95 = &v262;
  }

  else
  {
    v95 = v262;
  }

  ACFULogging::handleMessage(v90, 0, "%s::%s: Result %d code %d raw_error %ld error %s\n\n", "BasebandProvisioning", "postDataSync", v91, v92, v93, v95);
  if ((SHIBYTE(v263) & 0x80000000) == 0)
  {
    v96 = v253;
    if (!v253)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  operator delete(v262);
  v96 = v253;
  if (v253)
  {
LABEL_103:
    CFRelease(v96);
  }

LABEL_104:
  v97 = *(&v254 + 1);
  if (*(&v254 + 1) && !atomic_fetch_add((*(&v254 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v97->__on_zero_shared)(v97);
    std::__shared_weak_count::__release_weak(v97);
  }

  v88 = 0;
  v240 = 0;
  v89 = v259;
  if (v259)
  {
LABEL_108:
    if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v89->__on_zero_shared)(v89);
      std::__shared_weak_count::__release_weak(v89);
    }
  }

LABEL_110:
  v98 = v260;
  if (v260 && !atomic_fetch_add(v260 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v98 + 16))(v98);
  }

  v99 = std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v261);
  v246 = v88;
  v247 = v240;
  if (!v88)
  {
    v205 = ACFULogging::getLogInstance(v99);
    ACFULogging::handleMessage(v205, 2, "%s::%s: server request failed -> no response\n");
    goto LABEL_209;
  }

  v100 = ACFULogging::getLogInstance(v99);
  v101 = (*(*v88 + 24))(v88);
  ACFULogging::handleMessage(v100, 0, "%s::%s: Received Response Code: %d\n", "BasebandProvisioning", "sendServerReq", v101);
  (*(*v88 + 16))(v88);
  v102 = ctu::Http::asString();
  if (SHIBYTE(data) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *&buffer.isa;
  data = buffer.data;
  v103 = ACFULogging::getLogInstance(v102);
  if (SHIBYTE(data) >= 0)
  {
    v104 = __p;
  }

  else
  {
    v104 = __p[0];
  }

  ACFULogging::handleMessage(v103, 0, "%s::%s: Received Response Error (if any): %s\n", "BasebandProvisioning", "sendServerReq", v104);
  v105 = (*(*v88 + 48))(&buffer, v88);
  if (SHIBYTE(data) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *&buffer.isa;
  data = buffer.data;
  v106 = ACFULogging::getLogInstance(v105);
  if (SHIBYTE(data) >= 0)
  {
    v107 = __p;
  }

  else
  {
    v107 = __p[0];
  }

  v108 = ACFULogging::handleMessage(v106, 0, "%s::%s: Received Response Data: %s\n", "BasebandProvisioning", "sendServerReq", v107);
  v109 = ACFULogging::getLogInstance(v108);
  ACFULogging::handleMessage(v109, 0, "%s::%s: Received the response from server - parse it\n", "BasebandProvisioning", "sendServerReq");
  v110 = (*(*v88 + 40))(&theData, v88);
  v111 = theData;
  v258 = 0;
  if (!theData)
  {
    v206 = ACFULogging::getLogInstance(v110);
    ACFULogging::handleMessage(v206, 2, "%s::%s: Null responseData parameter\n");
    goto LABEL_223;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(v111);
  theString = CFStringCreateWithBytes(alloc, BytePtr, Length, 0x8000100u, 0);
  if (!theString)
  {
    v210 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v210, 2, "%s::%s: String conversion failed\n");
    goto LABEL_223;
  }

  v114 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v114)
  {
    v211 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v211, 2, "%s::%s: Dictionary allocation failed\n", "BasebandProvisioning", "copyResponse");
    CFRelease(theString);
LABEL_223:
    v186 = 0;
    v187 = theData;
    if (!theData)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

  *&v115 = 0xAAAAAAAAAAAAAAAALL;
  *(&v115 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v266[12] = v115;
  v265 = v115;
  *v266 = v115;
  *&buffer.isa = v115;
  *&buffer.data = v115;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, theString, @"&");
  v117 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings)
  {
    v118 = CFArrayGetCount(ArrayBySeparatingStrings);
    v119 = v118;
    if (v118)
    {
      if (v118 >= 1)
      {
        v120 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v117, v120);
          location = CFStringFind(ValueAtIndex, @"=", 0).location;
          if (location != -1)
          {
            break;
          }

          v127 = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
          CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          ACFULogging::handleMessage(v127, 2, "%s::%s: could not split parameter: %s\n", "BasebandProvisioning", "copyResponse", CStringPtr);
LABEL_131:
          if (v119 == ++v120)
          {
            goto LABEL_141;
          }
        }

        v123 = CFStringGetLength(ValueAtIndex);
        v269.location = 0;
        v269.length = location;
        v124 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v269);
        v270.location = location + 1;
        v270.length = v123 + ~location;
        v125 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v270);
        v126 = v125;
        if (v124 && v125)
        {
          CFDictionarySetValue(v114, v124, v125);
        }

        else
        {
          v129 = ACFULogging::getLogInstance(v125);
          v130 = CFStringGetCStringPtr(v124, 0x8000100u);
          v131 = CFStringGetCStringPtr(v126, 0x8000100u);
          ACFULogging::handleMessage(v129, 2, "%s::%s: failed to create key(%s) or value (%s)\n", "BasebandProvisioning", "copyResponse", v130, v131);
          if (!v124)
          {
            goto LABEL_139;
          }
        }

        CFRelease(v124);
LABEL_139:
        if (v126)
        {
          CFRelease(v126);
        }

        goto LABEL_131;
      }

LABEL_141:
      v132 = CFDictionaryGetValue(v114, @"IMEI");
      v133 = v132;
      if (v132)
      {
        v134 = ACFULogging::getLogInstance(v132);
        v135 = CFStringGetCStringPtr(v133, 0x8000100u);
        ACFULogging::handleMessage(v134, 0, "%s::%s: IMEI:%s\n", "BasebandProvisioning", "copyResponse", v135);
      }

      v136 = CFDictionaryGetValue(v114, @"IMEI2");
      v137 = v136;
      if (v136)
      {
        v138 = ACFULogging::getLogInstance(v136);
        v139 = CFStringGetCStringPtr(v137, 0x8000100u);
        ACFULogging::handleMessage(v138, 0, "%s::%s: IMEI2:%s\n", "BasebandProvisioning", "copyResponse", v139);
      }

      v140 = CFDictionaryGetValue(v114, @"EID");
      v141 = v140;
      if (v140)
      {
        v142 = ACFULogging::getLogInstance(v140);
        v143 = CFStringGetCStringPtr(v141, 0x8000100u);
        ACFULogging::handleMessage(v142, 0, "%s::%s: EID:%s\n", "BasebandProvisioning", "copyResponse", v143);
      }

      v144 = CFDictionaryGetValue(v114, @"WIFI_MAC");
      v145 = v144;
      if (v144)
      {
        v146 = ACFULogging::getLogInstance(v144);
        v147 = CFStringGetCStringPtr(v145, 0x8000100u);
        ACFULogging::handleMessage(v146, 0, "%s::%s: WIFI_MAC:%s\n", "BasebandProvisioning", "copyResponse", v147);
      }

      v148 = CFDictionaryGetValue(v114, @"BT_MAC");
      v149 = v148;
      if (v148)
      {
        v150 = ACFULogging::getLogInstance(v148);
        v151 = CFStringGetCStringPtr(v149, 0x8000100u);
        ACFULogging::handleMessage(v150, 0, "%s::%s: BT_MAC:%s\n", "BasebandProvisioning", "copyResponse", v151);
      }

      v152 = CFDictionaryGetValue(v114, @"USB_ETHER_MAC");
      v153 = v152;
      if (v152)
      {
        v154 = ACFULogging::getLogInstance(v152);
        v155 = CFStringGetCStringPtr(v153, 0x8000100u);
        ACFULogging::handleMessage(v154, 0, "%s::%s: USB_ETHER_MAC:%s\n", "BasebandProvisioning", "copyResponse", v155);
      }

      v156 = CFDictionaryGetValue(v114, @"WIFI_MAC2");
      v157 = v156;
      if (v156)
      {
        v158 = ACFULogging::getLogInstance(v156);
        v159 = CFStringGetCStringPtr(v157, 0x8000100u);
        ACFULogging::handleMessage(v158, 0, "%s::%s: WIFI_MAC2:%s\n", "BasebandProvisioning", "copyResponse", v159);
      }

      v160 = CFDictionaryGetValue(v114, @"BT_MAC2");
      v161 = v160;
      if (v160)
      {
        v162 = ACFULogging::getLogInstance(v160);
        v163 = CFStringGetCStringPtr(v161, 0x8000100u);
        ACFULogging::handleMessage(v162, 0, "%s::%s: BT_MAC2:%s\n", "BasebandProvisioning", "copyResponse", v163);
      }

      v164 = CFDictionaryGetValue(v114, @"ETH_MAC");
      v165 = v164;
      if (v164)
      {
        v166 = ACFULogging::getLogInstance(v164);
        v167 = CFStringGetCStringPtr(v165, 0x8000100u);
        ACFULogging::handleMessage(v166, 0, "%s::%s: ETHER_MAC:%s\n", "BasebandProvisioning", "copyResponse", v167);
      }

      v168 = CFDictionaryGetValue(v114, @"ETHER_MAC2");
      v169 = v168;
      if (v168)
      {
        v170 = ACFULogging::getLogInstance(v168);
        v171 = CFStringGetCStringPtr(v169, 0x8000100u);
        ACFULogging::handleMessage(v170, 0, "%s::%s: ETHER_MAC2:%s\n", "BasebandProvisioning", "copyResponse", v171);
      }

      v172 = CFDictionaryGetValue(v114, @"T_MAC");
      v173 = v172;
      if (v172)
      {
        v174 = ACFULogging::getLogInstance(v172);
        v175 = CFStringGetCStringPtr(v173, 0x8000100u);
        ACFULogging::handleMessage(v174, 0, "%s::%s: TMAC:%s\n", "BasebandProvisioning", "copyResponse", v175);
      }

      v176 = CFDictionaryGetValue(v114, @"B64_SECDATA");
      v177 = v176;
      if (!v176)
      {
        goto LABEL_174;
      }

      v178 = ACFULogging::getLogInstance(v176);
      ACFULogging::handleMessage(v178, 0, "%s::%s: B64_SECDATA found in response\n", "BasebandProvisioning", "copyResponse");
      v179 = decodeBase64(alloc, v177, &v258);
      if (v179)
      {
        v214 = ACFULogging::getLogInstance(v179);
        ACFULogging::handleMessage(v214, 2, "%s::%s: Base64 decode failed\n");
      }

      else if (v258)
      {
        v180 = CFDataGetLength(v258);
        if (v180 <= 0x4B)
        {
          v216 = ACFULogging::getLogInstance(v180);
          ACFULogging::handleMessage(v216, 2, "%s::%s: decodedData is too small\n");
        }

        else
        {
          v268.location = 0;
          v268.length = 76;
          CFDataGetBytes(v258, v268, &buffer);
          if (!*&v266[24])
          {
            goto LABEL_174;
          }

          v181 = CFDataGetBytePtr(v258);
          v182 = CFDataCreate(alloc, v181 + 76, *&v266[24]);
          if (v182)
          {
            CFDictionarySetValue(v114, @"MANIFESTDATA", v182);
            ACFULogging::getLogInstance(v183);
            v184 = operator new(0x30uLL);
            strcpy(v184, "BasebandProvisioning::copyResponse");
            v262 = v184;
            v263 = xmmword_1E5391310;
            ACFULogging::handleMessageCFType();
            if ((SHIBYTE(v263) & 0x80000000) == 0)
            {
              v185 = this[9];
              this[9] = v182;
              if (!v185)
              {
                goto LABEL_174;
              }

              goto LABEL_173;
            }

            operator delete(v262);
            v185 = this[9];
            this[9] = v182;
            if (v185)
            {
LABEL_173:
              CFRelease(v185);
            }

LABEL_174:
            *a4 = CFRetain(v114);
            v186 = 1;
LABEL_175:
            CFRelease(theString);
            goto LABEL_176;
          }

          v219 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v219, 2, "%s::%s: tempData is NULL\n");
        }
      }

      else
      {
        v215 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v215, 2, "%s::%s: decodedData is NULL\n");
      }

      v186 = 0;
      goto LABEL_175;
    }

    v212 = "%s::%s: arrayCount is 0\n";
  }

  else
  {
    v212 = "%s::%s: responseParts is NULL\n";
  }

  v213 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v213, 2, v212, "BasebandProvisioning", "copyResponse");
  CFRelease(theString);
  v186 = 0;
LABEL_176:
  CFRelease(v114);
  if (v258)
  {
    CFRelease(v258);
    v258 = 0;
  }

  if (v117)
  {
    CFRelease(v117);
  }

  v187 = theData;
  if (!theData)
  {
    goto LABEL_182;
  }

LABEL_181:
  CFRelease(v187);
LABEL_182:
  if (v186)
  {
    v188 = 1;
    if ((SHIBYTE(data) & 0x80000000) == 0)
    {
      goto LABEL_184;
    }

LABEL_210:
    operator delete(__p[0]);
    v189 = v240;
    if (!v240)
    {
      goto LABEL_212;
    }

    goto LABEL_211;
  }

  v207 = ACFULogging::getLogInstance(v187);
  ACFULogging::handleMessage(v207, 2, "%s::%s: copyResponse failed\n");
LABEL_209:
  v188 = 0;
  if (SHIBYTE(data) < 0)
  {
    goto LABEL_210;
  }

LABEL_184:
  v189 = v240;
  if (!v240)
  {
LABEL_212:
    v208 = v248;
    if (!v248)
    {
      goto LABEL_214;
    }

    goto LABEL_213;
  }

LABEL_211:
  if (atomic_fetch_add(&v189->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_212;
  }

  (v189->__on_zero_shared)(v189);
  std::__shared_weak_count::__release_weak(v189);
  v208 = v248;
  if (v248)
  {
LABEL_213:
    CFRelease(v208);
  }

LABEL_214:
  if (v249)
  {
    v250 = v249;
    operator delete(v249);
  }

  if (v252)
  {
    CFRelease(v252);
  }

  return v188;
}

void sub_1E529482C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createReversedIMEIFromString(__CFString *a1, CFTypeRef *a2)
{
  v3 = a1;
  cf.isa = 0;
  Length = CFStringGetLength(a1);
  v6 = MEMORY[0x1E695E480];
  if (Length == 15)
  {
    v7 = *MEMORY[0x1E695E480];
    v29.length = CFStringGetLength(v3) - 1;
    v29.location = 0;
    v8 = CFStringCreateWithSubstring(v7, v3, v29);
    v3 = v8;
  }

  else
  {
    v8 = 0;
  }

  v9 = support::cf::copyDataFromHexString(v3, &cf, v5);
  if (v9)
  {
    if (cf.isa)
    {
      v10 = CFRetain(cf.isa);
      v11 = 1;
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: imei tempData is null\n");
  }

  else
  {
    v20 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v20, 2, "%s::%s: failed to convert imei to data\n");
  }

  v10 = 0;
  v11 = 0;
  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

LABEL_8:
  isa = cf.isa;
  if (cf.isa)
  {
    CFRelease(cf.isa);
  }

  if (!v11)
  {
    v21 = ACFULogging::getLogInstance(isa);
    ACFULogging::handleMessage(v21, 2, "%s::%s: failed to convert imei to data\n", "BasebandProvisioning", "createReversedIMEIFromString");
    if (!v10)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (!v10)
  {
    v23 = ACFULogging::getLogInstance(isa);
    ACFULogging::handleMessage(v23, 2, "%s::%s: imei tempData is null\n", "BasebandProvisioning", "createReversedIMEIFromString");
    return 0;
  }

  v13 = CFDataGetLength(v10);
  if (v13 != 7)
  {
    v24 = "%s::%s: wrong imei data\n";
LABEL_27:
    v25 = ACFULogging::getLogInstance(v13);
    v26 = ACFULogging::handleMessage(v25, 2, v24, "BasebandProvisioning", "createReversedIMEI");
    v27 = ACFULogging::getLogInstance(v26);
    ACFULogging::handleMessage(v27, 2, "%s::%s: failed to reverse imei\n");
LABEL_29:
    CFRelease(v10);
    return 0;
  }

  BYTE6(cf.isa) = *CFDataGetBytePtr(v10);
  BYTE5(cf.isa) = CFDataGetBytePtr(v10)[1];
  BYTE4(cf.isa) = CFDataGetBytePtr(v10)[2];
  BYTE3(cf.isa) = CFDataGetBytePtr(v10)[3];
  BYTE2(cf.isa) = CFDataGetBytePtr(v10)[4];
  BYTE1(cf.isa) = CFDataGetBytePtr(v10)[5];
  LOBYTE(cf.isa) = CFDataGetBytePtr(v10)[6];
  v13 = CFDataCreate(*v6, &cf, 7);
  if (!v13)
  {
    v24 = "%s::%s: ImeiData allocation error\n";
    goto LABEL_27;
  }

  v14 = v13;
  v15 = CFRetain(v13);
  CFRelease(v14);
  v17 = ACFULogging::getLogInstance(v16);
  if (!v15)
  {
    ACFULogging::handleMessage(v17, 2, "%s::%s: imei reversedData is null\n");
    goto LABEL_29;
  }

  v18 = operator new(0x38uLL);
  strcpy(v18, "BasebandProvisioning::createReversedIMEIFromString");
  cf.isa = v18;
  *&cf.info = xmmword_1E5391320;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(cf.data) < 0)
  {
    operator delete(cf.isa);
  }

  *a2 = CFRetain(v15);
  CFRelease(v10);
  CFRelease(v15);
  return 1;
}

void sub_1E5294E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFData const>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t createBasebandProvInfo(ACFULogging *a1, void *a2, ACFUFirmware **a3, __CFDictionary **a4, uint64_t a5, uint64_t a6)
{
  v164 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  __dst = 0;
  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0xAAAAAAAAAAAAAAAALL;
  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  if (!*a2)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Missing transport parameter\n");
    goto LABEL_136;
  }

  if (!*a3)
  {
    v22 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v22, 2, "%s::%s: Missing firmware parameter\n");
    goto LABEL_136;
  }

  if (!a4)
  {
    v23 = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(v23, 2, "%s::%s: Missing output bb prov info parameter\n");
    goto LABEL_136;
  }

  v9 = a1;
  v115 = a4;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (!Mutable)
  {
    v24 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v24, 2, "%s::%s: Unable create provisioning dictionary\n");
    goto LABEL_136;
  }

  if (v9)
  {
    if (capabilities::radio::vendor(Mutable) != 3)
    {
LABEL_32:
      CFDictionaryAddValue(v12, @"EncryptedSessionKey", cf);
      goto LABEL_33;
    }

    *&v114[1] = a6;
    *__p = 0;
    *&__p[8] = &cf;
    strcpy(bytes, "DeadBeef");
    v13 = operator new(0xFA0uLL);
    bzero(v13, 0xFA0uLL);
    v14 = operator new(0x4C4uLL);
    bzero(v14, 0x4C4uLL);
    v15 = CFDataCreate(v10, bytes, 9);
    v16 = v15;
    theDict = v15;
    if (v15)
    {
      *v13 = CFDataGetLength(v15);
      v165.length = CFDataGetLength(v16);
      v165.location = 0;
      CFDataGetBytes(v16, v165, v13 + 2);
      v134 = 0xAAAAAAAAAAAAAAAALL;
      support::transport::ARI::create("BasebandProvisioning", 0x2710, 0, 0, &v134);
      v18 = v134;
      if (v134)
      {
        v19 = KTLStartProvision();
        if (v19)
        {
          (*(*v18 + 8))(v18);
          v20 = CFDataCreate(v10, v14 + 48, *(v14 + 23));
          *__p = v20;
          if (v20)
          {
            LOBYTE(v18) = 1;
            goto LABEL_24;
          }

          v28 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v28, 2, "%s::%s: Unable create sessionKey data memory\n");
          goto LABEL_23;
        }

        v27 = ACFULogging::getLogInstance(v19);
        ACFULogging::handleMessage(v27, 2, "%s::%s: Failed to send KTLStartProvision cmd\n");
      }

      else
      {
        v26 = ACFULogging::getLogInstance(v17);
        ACFULogging::handleMessage(v26, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n");
      }

      if (!v18)
      {
        v20 = 0;
        goto LABEL_24;
      }

      (*(*v18 + 8))(v18);
    }

    else
    {
      v25 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v25, 2, "%s::%s: Unable allocate public key to start provisioning\n");
    }

LABEL_23:
    v20 = 0;
    LOBYTE(v18) = 0;
LABEL_24:
    operator delete(v14);
    operator delete(v13);
    if (v16)
    {
      CFRelease(v16);
    }

    v29 = cf;
    a6 = *&v114[1];
    if (v20)
    {
      cf = v20;
      if (!v29)
      {
        goto LABEL_31;
      }
    }

    else
    {
      cf = 0;
      if (!v29)
      {
        goto LABEL_31;
      }
    }

    CFRelease(v29);
LABEL_31:
    if ((v18 & 1) == 0)
    {
      v98 = ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage(v98, 2, "%s::%s: failed to get prov session key\n");
      goto LABEL_136;
    }

    goto LABEL_32;
  }

LABEL_33:
  v30 = (***a2)(__p);
  v31 = *__p;
  v32 = *&__p[8];
  if (*&__p[8])
  {
    atomic_fetch_add_explicit((*&__p[8] + 8), 1uLL, memory_order_relaxed);
    v33 = *&__p[8];
    v123 = v31;
    v124 = v32;
    v34 = *&__p[16];
    LODWORD(v125) = *&__p[16];
    if (*&__p[8])
    {
      if (!atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      v34 = v125;
    }
  }

  else
  {
    v123 = *__p;
    v124 = 0;
    v34 = *&__p[16];
    LODWORD(v125) = *&__p[16];
  }

  if (v34)
  {
    v53 = ACFULogging::getLogInstance(v30);
    ACFULogging::handleMessage(v53, 2, "%s::%s: Failed to get persoanlization parameter (ret: %d)\n", "BasebandProvisioning", "createBasebandProvInfo", v34);
    goto LABEL_136;
  }

  *__p = v123;
  *&__p[8] = v124;
  if (v124)
  {
    atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v123 + 16) == 1)
  {
    v35 = *(v123 + 8);
    if (v35)
    {
      BytePtr = CFDataGetBytePtr(v35);
      Length = CFDataGetLength(*(v123 + 8));
      if (Length <= 4)
      {
        __dst = 0;
        memcpy(&__dst, BytePtr, Length);
      }
    }
  }

  if (v124 && !atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v124->__on_zero_shared)(v124);
    std::__shared_weak_count::__release_weak(v124);
  }

  v38 = CFDataCreate(v10, &__dst, 4);
  v39 = v127;
  v127 = v38;
  if (v39)
  {
    CFRelease(v39);
  }

  if (!v38)
  {
    v54 = ACFULogging::getLogInstance(v39);
    ACFULogging::handleMessage(v54, 2, "%s::%s: Unable create chipId data memory\n");
    goto LABEL_136;
  }

  CFDictionaryAddValue(v12, @"ChipID", v38);
  *__p = v123;
  *&__p[8] = v124;
  if (v124)
  {
    atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ByteSwappedData = support::cf::createByteSwappedData(*(v123 + 40), &value);
  if (v124 && !atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v41 = ByteSwappedData;
    (v124->__on_zero_shared)(v124);
    std::__shared_weak_count::__release_weak(v124);
    ByteSwappedData = v41;
  }

  if ((ByteSwappedData & 1) == 0)
  {
    v55 = ACFULogging::getLogInstance(ByteSwappedData);
    ACFULogging::handleMessage(v55, 2, "%s::%s: Baseband ECID data conversion failed\n");
    goto LABEL_136;
  }

  CFDictionaryAddValue(v12, @"ChipSerialNo", value);
  v43 = capabilities::radio::vendor(v42);
  if (v43 != 3)
  {
    goto LABEL_93;
  }

  v45 = *a3;
  v46 = a3[1];
  v118 = *a3;
  v119 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  theDict = 0;
  v117 = &v126;
  v134 = 0;
  v163 = 0xAAAAAAAAAAAAAAAALL;
  *&v47 = 0xAAAAAAAAAAAAAAAALL;
  *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v161 = v47;
  v162 = v47;
  v159 = v47;
  v160 = v47;
  v157 = v47;
  v158 = v47;
  v155 = v47;
  v156 = v47;
  v153 = v47;
  v154 = v47;
  v151 = v47;
  v152 = v47;
  v149 = v47;
  v150 = v47;
  v147 = v47;
  v148 = v47;
  v145 = v47;
  v146 = v47;
  v143 = v47;
  v144 = v47;
  v141 = v47;
  v142 = v47;
  v139 = v47;
  v140 = v47;
  v137 = v47;
  v138 = v47;
  *__p = v47;
  *&__p[16] = v47;
  v132 = 0xAAAAAAAAAAAAAAAALL;
  v133 = 0;
  if (!v45)
  {
    v56 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v56, 2, "%s::%s: null input firmware\n");
LABEL_138:
    PersonalizedFirmwarePath = 0;
LABEL_141:
    v63 = 0;
    v64 = 0;
    goto LABEL_82;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_64;
    }

LABEL_74:
    v58 = v45;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    v45 = v58;
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_75;
    }

    goto LABEL_65;
  }

  v57 = v45;
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  v45 = v57;
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_74;
  }

LABEL_64:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
LABEL_75:
    Manifest = ACFUFirmware::getManifest(v45);
    v52 = Manifest;
    PersonalizedFirmwarePath = 0;
    v49 = 0;
    goto LABEL_76;
  }

LABEL_65:
  if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
  {
    goto LABEL_75;
  }

  PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Baseband", v44);
  v134 = PersonalizedFirmwarePath;
  if (!PersonalizedFirmwarePath)
  {
    v100 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v100, 2, "%s::%s: Failed to obtain the default personalized FW base path\n");
    goto LABEL_138;
  }

  GetBasebandTatsuTagToFileNameMap(bytes);
  RTKitFirmware::create();
  v49 = v131;
  v131 = 0;
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(bytes, *&bytes[8]);
  if (!v49)
  {
    v102 = ACFULogging::getLogInstance(v50);
    ACFULogging::handleMessage(v102, 2, "%s::%s: Could not create RTKitFirmware with passed in FTAB path\n", "BasebandProvisioning", "copyProvKeyHashSinope");
    goto LABEL_141;
  }

  Manifest = ACFUFirmware::getManifest(v49);
  v52 = Manifest;
LABEL_76:
  if (v52)
  {
    v59 = CFDataGetBytePtr(v52);
    v60 = CFDataGetLength(v52);
    inited = Img4DecodeInitManifest(v59, v60, __p);
    if (inited)
    {
      v95 = ACFULogging::getLogInstance(inited);
      ACFULogging::handleMessage(v95, 2, "%s::%s: failed to decode manifest object (status: %d)\n");
    }

    else
    {
      Img4DecodeGetObjectPropertyData(__p, 1296125520, 1886546793, &v133, &v132);
      if (v62)
      {
        v96 = ACFULogging::getLogInstance(v62);
        ACFULogging::handleMessage(v96, 2, "%s::%s: failed to decode manifest property object (status: %d)\n");
      }

      else
      {
        v63 = CFDataCreate(v10, v133, v132);
        theDict = v63;
        if (v63)
        {
          v64 = 1;
          if (!v49)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        v97 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v97, 2, "%s::%s: failed to allocate hash digest\n");
      }
    }
  }

  else
  {
    v94 = ACFULogging::getLogInstance(Manifest);
    ACFULogging::handleMessage(v94, 2, "%s::%s: failed to get to the root manifest for decoding\n");
  }

  v63 = 0;
  v64 = 0;
  if (v49)
  {
LABEL_81:
    (*(*v49 + 56))(v49);
  }

LABEL_82:
  if (PersonalizedFirmwarePath)
  {
    CFRelease(PersonalizedFirmwarePath);
    v63 = theDict;
    v65 = v117;
    v43 = *v117;
    if (theDict)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v65 = &v126;
    v43 = v126;
    if (v63)
    {
LABEL_84:
      *v65 = v63;
      if (v43)
      {
        goto LABEL_88;
      }

      goto LABEL_89;
    }
  }

  *v65 = 0;
  if (v43)
  {
LABEL_88:
    CFRelease(v43);
  }

LABEL_89:
  if (v119 && !atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v119->__on_zero_shared)(v119);
    std::__shared_weak_count::__release_weak(v119);
  }

  if (v64)
  {
LABEL_93:
    if (v126)
    {
      CFDictionaryAddValue(v12, @"SKeyHash", v126);
      v67 = capabilities::radio::vendor(v66);
      if (v67 != 3)
      {
        goto LABEL_115;
      }

      *bytes = 0;
      *&bytes[8] = &v122;
      theDict = 0;
      v68 = dlopen("/usr/local/lib/libVinylNonUpdater.dylib", 1);
      v69 = v68;
      if (v68)
      {
        v70 = dlsym(v68, "VinyleUICCPerformOperation");
        if (v70)
        {
          v71 = v70(0, &theDict, a6, 1);
          v72 = ACFULogging::getLogInstance(v71);
          v73 = ACFULogging::handleMessage(v72, 0, "%s::%s: VinyleUICCPerformOperation returned %d\n", "BasebandProvisioning", "copyVinylEidSinope", v71);
          Copy = 0;
          if (!v71 && theDict)
          {
            ACFULogging::getLogInstance(v73);
            v75 = operator new(0x30uLL);
            strcpy(v75, "BasebandProvisioning::copyVinylEidSinope");
            HIBYTE(v114[1]) = 0;
            strcpy(v114, "copyVinylEidSinoProvisioning::");
            *__p = v75;
            *&__p[8] = xmmword_1E5391330;
            ACFULogging::handleMessageCFType();
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            v76 = CFDictionaryGetValue(theDict, @"EID");
            if (v76 && (TypeID = CFStringGetTypeID(), v78 = CFGetTypeID(v76), TypeID == v78))
            {
              ACFULogging::getLogInstance(v78);
              v79 = operator new(0x30uLL);
              *v79 = 0x646E616265736142;
              *(v79 + 10) = 14906;
              *(v79 + 4) = DWORD2(v114[1]);
              *(v79 + 1) = *&v114[1];
              strcpy(v79 + 38, "pe");
              *(v79 + 22) = v114[0];
              *__p = v79;
              *&__p[8] = xmmword_1E5391330;
              ACFULogging::handleMessageCFType();
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              Copy = CFStringCreateCopy(v10, v76);
              *bytes = Copy;
            }

            else
            {
              Copy = 0;
            }

            CFRelease(theDict);
          }
        }

        else
        {
          Copy = 0;
        }

        dlclose(v69);
        v67 = v122;
        if (Copy)
        {
          v122 = Copy;
          if (!v67)
          {
            goto LABEL_115;
          }

LABEL_114:
          CFRelease(v67);
LABEL_115:
          if (v122)
          {
            CFDictionaryAddValue(v12, @"EID", v122);
          }

          if ((v9 & 1) != 0 || capabilities::radio::vendor(v67) != 3)
          {
            goto LABEL_157;
          }

          *bytes = 0;
          *&bytes[8] = &v121;
          theDict = 0;
          v117 = &v120;
          *&v140 = 0xAAAAAAAAAAAAAAAALL;
          *&v80 = 0xAAAAAAAAAAAAAAAALL;
          *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v138 = v80;
          v139 = v80;
          *&__p[16] = v80;
          v137 = v80;
          *__p = v80;
          v134 = 0xAAAAAAAAAAAAAAAALL;
          support::transport::ARI::create("BasebandProvisioning", 0x2710, 0, 0, &v134);
          v82 = v134;
          if (v134)
          {
            v83 = KTLGetIMEI_V2();
            if (v83)
            {
              v84 = (*(*v82 + 8))(v82);
              v85 = ACFULogging::getLogInstance(v84);
              v86 = ACFULogging::handleMessage(v85, 0, "%s::%s: IMEI1: %s\n", "BasebandProvisioning", "getIMEISinope", __p);
              v87 = ACFULogging::getLogInstance(v86);
              ACFULogging::handleMessage(v87, 0, "%s::%s: IMEI2: %s\n", "BasebandProvisioning", "getIMEISinope", &__p[20]);
              v82 = CFStringCreateWithCString(v10, __p, 0x8000100u);
              *bytes = v82;
              if (v82)
              {
                v88 = CFStringCreateWithCString(v10, &__p[20], 0x8000100u);
                theDict = v88;
                if (v88)
                {
                  v89 = v120;
                  v120 = v88;
                  if (v89)
                  {
                    CFRelease(v89);
                  }

                  v90 = v121;
                  v121 = v82;
                  if (!v90)
                  {
                    goto LABEL_154;
                  }

                  v91 = 1;
                  goto LABEL_152;
                }

                v113 = ACFULogging::getLogInstance(0);
                ACFULogging::handleMessage(v113, 2, "%s::%s: Failed to create imei2 string ref\n", "BasebandProvisioning", "getIMEISinope");
LABEL_147:
                v105 = v120;
                v120 = 0;
                if (v105)
                {
                  CFRelease(v105);
                }

                v90 = v121;
                if (!v82)
                {
                  v121 = 0;
                  if (v90)
                  {
                    CFRelease(v90);
                  }

                  goto LABEL_180;
                }

                v121 = v82;
                if (!v90)
                {
LABEL_180:
                  v112 = ACFULogging::getLogInstance(v90);
                  ACFULogging::handleMessage(v112, 2, "%s::%s: failed to get IMEIs from baseband\n");
                  goto LABEL_158;
                }

                v91 = 0;
LABEL_152:
                CFRelease(v90);
                if (v91)
                {
                  v82 = v121;
LABEL_154:
                  CFDictionaryAddValue(v12, @"IMEI", v82);
                  if (v120)
                  {
                    v106 = CFStringGetLength(v120);
                    if (v106)
                    {
                      v107 = ACFULogging::getLogInstance(v106);
                      v108 = CFStringGetLength(v120);
                      ACFULogging::handleMessage(v107, 0, "%s::%s: Non-zero IMEI2 size: %d\n", "BasebandProvisioning", "createBasebandProvInfo", v108);
                      CFDictionaryAddValue(v12, @"IMEI2", v120);
                    }
                  }

LABEL_157:
                  *v115 = v12;
                  goto LABEL_158;
                }

                goto LABEL_180;
              }

              v104 = ACFULogging::getLogInstance(0);
              ACFULogging::handleMessage(v104, 2, "%s::%s: Failed to create imei string ref\n", "BasebandProvisioning", "getIMEISinope");
LABEL_146:
              v82 = 0;
              goto LABEL_147;
            }

            v103 = ACFULogging::getLogInstance(v83);
            ACFULogging::handleMessage(v103, 2, "%s::%s: Failed to get IMEIs from baseband\n");
          }

          else
          {
            v101 = ACFULogging::getLogInstance(v81);
            ACFULogging::handleMessage(v101, 2, "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n");
          }

          if (!v82)
          {
            goto LABEL_147;
          }

          (*(*v82 + 8))(v82);
          goto LABEL_146;
        }
      }

      else
      {
        v67 = v122;
      }

      v122 = 0;
      if (!v67)
      {
        goto LABEL_115;
      }

      goto LABEL_114;
    }

    v92 = ACFULogging::getLogInstance(v43);
    ACFULogging::handleMessage(v92, 2, "%s::%s: copy prov key hash returned null data\n");
LABEL_136:
    v99 = 0;
    goto LABEL_159;
  }

  v93 = ACFULogging::getLogInstance(v43);
  ACFULogging::handleMessage(v93, 2, "%s::%s: copy prov key hash failed\n");
LABEL_158:
  v99 = 1;
LABEL_159:
  if (v120)
  {
    CFRelease(v120);
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  v109 = v124;
  if (!v124 || atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v110 = v126;
    if (!v126)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

  (v109->__on_zero_shared)(v109);
  std::__shared_weak_count::__release_weak(v109);
  v110 = v126;
  if (v126)
  {
LABEL_168:
    CFRelease(v110);
  }

LABEL_169:
  if (v127)
  {
    CFRelease(v127);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v99;
}

void sub_1E5295E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26, const void *a27, __int16 a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, uint64_t a33, const void *a34, const void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, const void *a40)
{
  ctu::cf::detail::TakeOwnershipProxy<__CFString const>::~TakeOwnershipProxy(&a21);
  ctu::cf::detail::TakeOwnershipProxy<__CFString const>::~TakeOwnershipProxy(&a40);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a25);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a26);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a27);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a31);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a32);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a34);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a35);
  _Unwind_Resume(a1);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFString const>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t configureProvisioner(std::string *a1, CFDictionaryRef theDict)
{
  v30 = 0xAAAAAAAA0000003CLL;
  memset(&v29, 0, sizeof(v29));
  Value = CFDictionaryGetValue(theDict, @"AuthInstallProvisioningServerURL");
  v4 = Value;
  if (!Value)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Provisioning server URL is missing for the provisioning flow\n");
    goto LABEL_38;
  }

  v5 = CFGetTypeID(Value);
  TypeID = CFStringGetTypeID();
  if (v5 != TypeID)
  {
    v23 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v23, 2, "%s::%s: Provisioning server URL has wrong type\n");
    goto LABEL_38;
  }

  CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
  std::string::__assign_external(&v29, CStringPtr);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v29;
  }

  v28 = v30;
  if (&v27 != a1)
  {
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v27;
      }

      else
      {
        v8 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(a1, v8, size);
    }

    else if ((*(&v27.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v27;
    }
  }

  LODWORD(a1[1].__r_.__value_.__l.__data_) = v28;
  v10 = dispatch_queue_create("BasebandProvisioning", 0);
  v11 = a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__l.__size_ = v10;
  if (v11)
  {
    dispatch_release(v11);
    v10 = a1[1].__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    v24 = ACFULogging::getLogInstance(0);
    v18 = ACFULogging::handleMessage(v24, 2, "%s::%s: Failed to create dispatch queue\n");
    goto LABEL_42;
  }

  getReverseProxySettings(a1, &v31);
  v12 = &a1[1].__r_.__value_.__r.__words[2];
  if (v12 != &v31)
  {
    v13 = *v12;
    v14 = v31;
    *v12 = v31;
    v31 = 0;
    if (!v13)
    {
      goto LABEL_27;
    }

    CFRelease(v13);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  v14 = *v12;
LABEL_27:
  if (v14)
  {
    v15 = CFGetTypeID(v14);
    v16 = CFDictionaryGetTypeID();
    v17 = ACFULogging::getLogInstance(v16);
    if (v15 == v16)
    {
      v18 = ACFULogging::handleMessage(v17, 0, "%s::%s: Reverse proxy setup successful\n", "BasebandProvisioning", "init");
      v19 = 1;
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v18 = ACFULogging::handleMessage(v17, 2, "%s::%s: Received reverse proxy settings not in correct type\n");
  }

  else
  {
    v26 = ACFULogging::getLogInstance(0);
    v18 = ACFULogging::handleMessage(v26, 2, "%s::%s: Failed to get reverse proxy settings\n");
  }

LABEL_42:
  v19 = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_30:
    operator delete(v27.__r_.__value_.__l.__data_);
  }

LABEL_31:
  if ((v19 & 1) == 0)
  {
    v25 = ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage(v25, 2, "%s::%s: Provisioner init() failed\n");
LABEL_38:
    v20 = 0;
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v20;
    }

    goto LABEL_39;
  }

  v20 = 1;
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v20;
  }

LABEL_39:
  operator delete(v29.__r_.__value_.__l.__data_);
  return v20;
}

void sub_1E52963BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  _Unwind_Resume(exception_object);
}

uint64_t provisionBaseband(ACFULogging *a1, uint64_t *a2, ACFUFirmware **a3, __CFDictionary **a4, uint64_t *a5)
{
  v95 = a4;
  v108 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v107, 0, sizeof(v107));
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v105 = 0;
  cf = 0;
  theDict = 0;
  LogInstance = ACFULogging::getLogInstance(a1);
  v10 = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Provisioning baseband\n", "BasebandProvisioning", "provisionBaseband");
  if (!a1)
  {
    v76 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v76, 2, "%s::%s: Missing restore options\n");
    goto LABEL_91;
  }

  if (!*a2)
  {
    v77 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v77, 2, "%s::%s: Missing transport parameter\n");
    goto LABEL_91;
  }

  if (!*a3)
  {
    v78 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v78, 2, "%s::%s: Missing firmware parameter\n");
    goto LABEL_91;
  }

  if (!v95)
  {
    v79 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v79, 2, "%s::%s: Missing output prov info dict parameter\n");
    goto LABEL_91;
  }

  v11 = configureProvisioner(&v107, a1);
  if ((v11 & 1) == 0)
  {
    v80 = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(v80, 2, "%s::%s: Provisioner cfg failed\n");
    goto LABEL_91;
  }

  v12 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v12, 0, "%s::%s: Provisioner initialized\n", "BasebandProvisioning", "provisionBaseband");
  APProvisioningInfo = createAPProvisioningInfo(&cf);
  if ((APProvisioningInfo & 1) == 0)
  {
    v81 = ACFULogging::getLogInstance(APProvisioningInfo);
    ACFULogging::handleMessage(v81, 2, "%s::%s: copy prov info returned error\n");
    goto LABEL_91;
  }

  v14 = cf;
  if (!cf)
  {
    v82 = ACFULogging::getLogInstance(APProvisioningInfo);
    ACFULogging::handleMessage(v82, 2, "%s::%s: copy prov info returned null data\n");
    goto LABEL_91;
  }

  CFRetain(cf);
  v15 = v112;
  *&v112 = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v14);
  ACFULogging::getLogInstance(v16);
  v17 = operator new(0x30uLL);
  strcpy(v17, "BasebandProvisioning::provisionBaseband");
  HIBYTE(v94[1]) = 0;
  strcpy(v94, "provisionBasebanProvisioning::");
  v114[0] = v17;
  *&v114[1] = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v114[2]) < 0)
  {
    operator delete(v114[0]);
  }

  v19 = a2[1];
  v102 = *a2;
  v103 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a3[1];
  v100 = *a3;
  v101 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  v21 = a5[1];
  v98 = *a5;
  v99 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = createBasebandProvInfo(1, &v102, &v100, &v105, v18, a1);
  v23 = v22;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v24 = v101;
  if (v101 && !atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = v103;
  if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if ((v23 & 1) == 0)
  {
    v83 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v83, 2, "%s::%s: copy baseband prov info returned error\n");
    goto LABEL_91;
  }

  v26 = v105;
  if (!v105)
  {
    v84 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v84, 2, "%s::%s: copy baseband prov info returned null data\n");
    goto LABEL_91;
  }

  CFRetain(v105);
  v27 = *(&v112 + 1);
  *(&v112 + 1) = v26;
  if (v27)
  {
    CFRelease(v27);
  }

  CFRelease(v26);
  ACFULogging::getLogInstance(v28);
  v29 = operator new(0x30uLL);
  *v29 = 0x646E616265736142;
  *(v29 + 10) = 14906;
  *(v29 + 4) = DWORD2(v94[1]);
  *(v29 + 1) = *&v94[1];
  *(v29 + 19) = 100;
  *(v29 + 22) = v94[0];
  v114[0] = v29;
  *&v114[1] = xmmword_1E5391340;
  v30 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v114[2]) < 0)
  {
    operator delete(v114[0]);
  }

  v31 = ACFULogging::getLogInstance(v30);
  ACFULogging::handleMessage(v31, 3, "%s::%s: Let's get a prov manifest\n", "BasebandProvisioning", "createProvisionedInfo");
  v32 = BasebandProvisioning::sendServerReq(&v107, @"100", a1, &theDict);
  v33 = v32;
  v34 = ACFULogging::getLogInstance(v32);
  if (!v33)
  {
    v85 = ACFULogging::handleMessage(v34, 2, "%s::%s: Send server req returned error for prov request\n");
LABEL_88:
    v87 = ACFULogging::getLogInstance(v85);
    ACFULogging::handleMessage(v87, 2, "%s::%s: Failed to get prov manifest\n");
    goto LABEL_91;
  }

  v35 = operator new(0x30uLL);
  strcpy(v35, "BasebandProvisioning::createProvisionedInfo");
  v94[1] = *"createProvisionedInfo";
  v114[0] = v35;
  v94[0] = xmmword_1E5391350;
  *&v114[1] = xmmword_1E5391350;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v114[2]) < 0)
  {
    operator delete(v114[0]);
  }

  Value = CFDictionaryGetValue(theDict, @"STATUS");
  v37 = ACFULogging::getLogInstance(Value);
  if (!Value)
  {
    v85 = ACFULogging::handleMessage(v37, 2, "%s::%s: statusString is NULL\n");
    goto LABEL_88;
  }

  v38 = operator new(0x30uLL);
  qmemcpy(v38, "BasebandProvisioning::", 22);
  *(v38 + 22) = v94[1];
  strcpy(v38 + 35, "onedInfo");
  v114[0] = v38;
  *&v114[1] = v94[0];
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v114[2]) < 0)
  {
    operator delete(v114[0]);
  }

  v39 = CFStringCompare(Value, @"0", 0);
  if (v39)
  {
    v86 = ACFULogging::getLogInstance(v39);
    v85 = ACFULogging::handleMessage(v86, 2, "%s::%s: non-zero response status\n");
    goto LABEL_88;
  }

  v40 = ACFULogging::getLogInstance(0);
  v41 = ACFULogging::handleMessage(v40, 0, "%s::%s: Prov manifest received from the server\n", "BasebandProvisioning", "provisionBaseband");
  v42 = *a5;
  v43 = a5[1];
  v96 = v42;
  v97 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v44 = capabilities::radio::vendor(v41);
  if (v44 != 3)
  {
    goto LABEL_66;
  }

  v45 = operator new(0xC02uLL);
  v46 = operator new(0xACuLL);
  bzero(v45, 0xC02uLL);
  *(v46 + 156) = 0u;
  v46[8] = 0u;
  v46[9] = 0u;
  v46[6] = 0u;
  v46[7] = 0u;
  v46[4] = 0u;
  v46[5] = 0u;
  v46[2] = 0u;
  v46[3] = 0u;
  *v46 = 0u;
  v46[1] = 0u;
  if (!*(&v111 + 1))
  {
    v90 = ACFULogging::getLogInstance(0);
    v91 = "%s::%s: Missing prov manifest.\n";
LABEL_97:
    v59 = 0;
    ACFULogging::handleMessage(v90, 2, v91, "BasebandProvisioning", "sendProvManSinope");
    goto LABEL_99;
  }

  *v45 = CFDataGetLength(*(&v111 + 1));
  v47 = *(&v111 + 1);
  v115.length = CFDataGetLength(*(&v111 + 1));
  v115.location = 0;
  CFDataGetBytes(v47, v115, v45 + 2);
  v49 = ACFULogging::getLogInstance(v48);
  ACFULogging::handleMessage(v49, 0, "%s::%s: Sending manifest, size %d\n", "BasebandProvisioning", "sendProvManSinope", *v45);
  LODWORD(v50) = *v45;
  if (*v45)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = v51 + v50;
      v114[1] = 0xAAAAAAAAAAAAAAAALL;
      v114[2] = 0xAAAAAAAAAAAAAAAALL;
      if (v53 >= 0x10)
      {
        v54 = 16;
      }

      else
      {
        v54 = v53;
      }

      v114[0] = 0xAAAAAAAAAAAAAAAALL;
      v55 = ctu::hex(v114, &v45[v52 + 2], v54);
      v56 = ACFULogging::getLogInstance(v55);
      if (SHIBYTE(v114[2]) >= 0)
      {
        v57 = v114;
      }

      else
      {
        v57 = v114[0];
      }

      ACFULogging::handleMessage(v56, 0, "%s::%s: Manifest: [0x%02x]: %s\n", "BasebandProvisioning", "sendProvManSinope", v52, v57);
      if (SHIBYTE(v114[2]) < 0)
      {
        operator delete(v114[0]);
      }

      v52 += 16;
      v50 = *v45;
      v51 -= 16;
    }

    while (v52 < v50);
  }

  support::transport::ARI::create("BasebandProvisioning", 0x2710, 0, 0, v114);
  v59 = v114[0];
  if (!v114[0])
  {
    v90 = ACFULogging::getLogInstance(v58);
    v91 = "%s::%s: Failed to open ARI interface (is baseband booted and ready?)\n";
    goto LABEL_97;
  }

  v60 = KTLFinishProvision();
  if (v60)
  {
    memset(v114, 170, 24);
    ctu::hex(v114, (v46 + 44), 7);
    memset(v113, 170, sizeof(v113));
    v61 = ctu::hex(v113, (v46 + 60), 7);
    v62 = ACFULogging::getLogInstance(v61);
    v63 = v114;
    if (SHIBYTE(v114[2]) < 0)
    {
      v63 = v114[0];
    }

    v64 = ACFULogging::handleMessage(v62, 0, "%s::%s: IMEI1: %s\n", "BasebandProvisioning", "sendProvManSinope", v63);
    v65 = ACFULogging::getLogInstance(v64);
    v66 = v113;
    if (v113[2] < 0)
    {
      v66 = v113[0];
    }

    ACFULogging::handleMessage(v65, 0, "%s::%s: IMEI2: %s\n", "BasebandProvisioning", "sendProvManSinope", v66);
    if (SHIBYTE(v113[2]) < 0)
    {
      operator delete(v113[0]);
      if ((SHIBYTE(v114[2]) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }
    }

    else if ((SHIBYTE(v114[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    operator delete(v114[0]);
LABEL_63:
    v67 = 1;
    operator delete(v46);
    operator delete(v45);
    if (!v59)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v93 = ACFULogging::getLogInstance(v60);
  ACFULogging::handleMessage(v93, 2, "%s::%s: Failed to send KTLFinishProvision cmd, rsp status: 0x%x\n", "BasebandProvisioning", "sendProvManSinope", *(v46 + 5));
LABEL_99:
  v67 = 0;
  operator delete(v46);
  operator delete(v45);
  if (v59)
  {
LABEL_64:
    v44 = (*(*v59 + 8))(v59);
  }

LABEL_65:
  if ((v67 & 1) == 0)
  {
    v92 = ACFULogging::getLogInstance(v44);
    v44 = ACFULogging::handleMessage(v92, 2, "%s::%s: failed to send prov manifest\n", "BasebandProvisioning", "sendProvisioningManifest");
    v68 = 0;
    if (!v43)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

LABEL_66:
  v68 = 1;
  if (!v43)
  {
    goto LABEL_69;
  }

LABEL_67:
  if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
  }

LABEL_69:
  if ((v68 & 1) == 0)
  {
    v88 = ACFULogging::getLogInstance(v44);
    ACFULogging::handleMessage(v88, 2, "%s::%s: Failed to send prov manifest to baseband\n");
    goto LABEL_91;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v70 = Mutable;
  if (!Mutable)
  {
    v89 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v89, 2, "%s::%s: Unable create LAI prov dictionary\n");
LABEL_91:
    v73 = 0;
    v74 = theDict;
    if (!theDict)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  CFDictionaryAddValue(Mutable, @"ProvisionedInfo", theDict);
  CFDictionaryAddValue(v70, @"BasebandProvInfo", v105);
  *v95 = v70;
  v72 = ACFULogging::getLogInstance(v71);
  ACFULogging::handleMessage(v72, 0, "%s::%s: Provisioning complete\n", "BasebandProvisioning", "provisionBaseband");
  v73 = 1;
  v74 = theDict;
  if (theDict)
  {
LABEL_72:
    CFRelease(v74);
  }

LABEL_73:
  BasebandProvisioning::~BasebandProvisioning(&v107);
  return v73;
}