uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1 - 112, a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_SYNCHRONIZATION_CHANNEL_SEQUENCE(a1 - 128, a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST(void *a1, uint64_t a2)
{
  if (!*(a1[17] + 664))
  {
    return 3758097084;
  }

  *&v13[7] = 0;
  v12 = 0;
  v11 = 0;
  *v13 = 0;
  v4 = *(a2 + 40);
  v9 = *(a2 + 4);
  v10 = *(a2 + 8);
  v7 = *(a2 + 22);
  v8 = *(a2 + 26);
  *&v13[8] = v4;
  LODWORD(v12) = *(a2 + 20);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST();
    }
  }

  v14.iov_base = &v7;
  v14.iov_len = 38;
  v5 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = v5;
  return AppleBCMWLANProximityInterface::sendUnicastAFIOVar(a1, &v14, 2u);
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_REQUEST((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMSCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = "(null)";
    }

    if ((*(*result + 1088))(result))
    {
      (*(*v4 + 1088))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setLLW_PARAMSCallback(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v5);
      }
    }

    FaultReporter = AppleBCMWLANCore::getFaultReporter(*(*(v4 + 136) + 64));
    return CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANProximityInterface.cpp", 0x11DAu, "setLLW_PARAMSCallback", 0, -469793487, " %s iovar retval %x", v5, a3);
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::setLLW_PARAMS(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v53 = &_mh_execute_header;
  v54 = 2;
  v52 = 0;
  memset(v50, 170, sizeof(v50));
  v4 = IOMallocZeroData();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = 1024;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v4 < 0xFFFFFFFFFFFFFC01;
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = v4 + 1023;
  }

  else
  {
    v9 = 0;
  }

  Bus = AppleBCMWLANCore::getBus(*(*(a1 + 17) + 64));
  if (((*(*Bus + 800))(Bus) & 1) == 0)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS();
    goto LABEL_105;
  }

  if (!a2)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS();
    goto LABEL_105;
  }

  if (!v5)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS();
    return v51;
  }

  v11 = 0;
  v12 = *(a2 + 11) == 0;
  v13 = &v53;
  if (!*(a2 + 11))
  {
    v13 = &v52;
  }

  *v5 = 0x8000;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  *(v5 + 2) = v14;
  *(v5 + 3) = 1;
  v15 = 4;
  while (1)
  {
    if (!v8)
    {
      LODWORD(v25) = 4;
      goto LABEL_79;
    }

    v16 = v5 + v15;
    v17 = v16 + 7 >= v6 && v16 + 7 <= v9;
    v18 = v17 && v16 < 0xFFFFFFFFFFFFFFF9;
    v19 = v18 && v6 <= v16;
    if (!v19 || v9 < v16)
    {
      break;
    }

    v21 = *(v13 + v11);
    *v16 = v21;
    *(v16 + 4) = 1;
    v22 = v15 + 8;
    v23 = (v5 + v22);
    v24 = v5 + v22 + 3;
    if (v24 < v6 || v24 > v9 || v5 + v22 >= 0xFFFFFFFFFFFFFFFDLL || v6 > v23 || v9 < v23)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v48 = (*(*a1 + 1088))(a1);
          CCLogStream::logAlert(v48, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4638, *(v5 + 2), v22, 4, v7);
        }
      }

      LOWORD(v25) = v22;
      goto LABEL_71;
    }

    *v23 = 1;
    v25 = v15 + 12;
    v26 = (v5 + v25);
    v27 = v5 + v25 + 1;
    if (v27 < v6 || v27 > v9 || v5 + v25 == -1 || v6 > v26 || v9 < v26)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v44 = (*(*a1 + 1088))(a1);
          CCLogStream::logAlert(v44, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4650, *(v5 + 2), v25, 2, v7);
        }
      }

      goto LABEL_71;
    }

    *v26 = v21;
    if (v21 == 2)
    {
      v26[1] = 12;
      v25 = v15 + 16;
      v34 = v5 + v25;
      v35 = v5 + v25 + 11;
      if (v35 < v6 || v35 > v9 || v5 + v25 >= 0xFFFFFFFFFFFFFFF5 || v6 > v34 || v9 < v34)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v46 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v46, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4701, *(v5 + 2), v25, 12, v7);
          }
        }

        goto LABEL_71;
      }

      v36 = *(a2 + 4);
      *(v34 + 4) = *(a2 + 8);
      *v34 = v36;
      *(v34 + 8) = *(a2 + 10);
      LOWORD(v36) = *(v34 + 6) | *(a2 + 24) & 1;
      *(v34 + 6) = v36;
      LOWORD(v36) = v36 | *(a2 + 24) & 2;
      *(v34 + 6) = v36;
      LOWORD(v36) = v36 | *(a2 + 24) & 4;
      *(v34 + 6) = v36;
      *(v34 + 6) = v36 | *(a2 + 24) & 8;
      LODWORD(v25) = v15 + 28;
    }

    else if (v21 == 1)
    {
      v26[1] = 20;
      v25 = v15 + 16;
      v31 = v5 + v25;
      v32 = v5 + v25 + 19;
      if (v32 < v6 || v32 > v9 || v5 + v25 >= 0xFFFFFFFFFFFFFFEDLL || v6 > v31 || v9 < v31)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v49 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v49, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4676, *(v5 + 2), v25, 20, v7);
          }
        }

        goto LABEL_71;
      }

      v33 = *(a2 + 4);
      *(v31 + 4) = *(a2 + 8);
      *v31 = v33;
      *(v31 + 15) = *(a2 + 10);
      *(v31 + 16) = *(a2 + 21);
      *(v31 + 6) = *(a2 + 14);
      *(v31 + 18) = 14;
      *(v31 + 14) = 5;
      LOWORD(v33) = (2 * (*(a2 + 18) & 1)) | *(v31 + 10);
      *(v31 + 10) = v33;
      LOWORD(v33) = (*(a2 + 18) >> 1) & 1 | v33;
      *(v31 + 10) = v33;
      *(v31 + 10) = v33 | *(a2 + 18) & 4;
      LOBYTE(v33) = (*(a2 + 18) >> 3) & 0x10 | *(v31 + 12);
      *(v31 + 12) = v33;
      *(v31 + 12) = (*(a2 + 18) >> 3) & 0xF | v33;
      LOBYTE(v33) = *(a2 + 20);
      *(v31 + 13) = v33 >> 4;
      *(v31 + 13) = v33 & 0xF0 | *(a2 + 20) & 0xF;
      LODWORD(v25) = v15 + 36;
    }

    else if (!v21)
    {
      if (v26 + 3 < v6 || v26 + 3 > v9 || v26 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v45 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v45, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4659, *(v5 + 2), v25, 4, v7);
          }
        }

        goto LABEL_71;
      }

      v26[1] = 4;
      v28 = v26 + 2;
      v29 = v26 + 7;
      v30 = (v26 + 2) >= 0xFFFFFFFFFFFFFFFDLL;
      if (v29 < v6 || v29 > v9 || v30 || v6 > v28 || v9 < v28)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            v47 = (*(*a1 + 1088))(a1);
            CCLogStream::logAlert(v47, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4665, *(v5 + 2), v25, 4, v7);
          }
        }

        goto LABEL_71;
      }

      *v28 = *(a2 + 11);
      LODWORD(v25) = v15 + 20;
    }

    *(v16 + 2) = v25 - (v15 + 8) + 4;
    ++v11;
    v15 = v25;
    if (v11 >= *(v5 + 2))
    {
      goto LABEL_71;
    }
  }

  LODWORD(v25) = v15;
LABEL_79:
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      v43 = (*(*a1 + 1088))(a1);
      CCLogStream::logAlert(v43, "[dk] %s@%d: Range check failed, count[%u] length[%u] chkSize[%lu], getSize[%lu]\n", "setLLW_PARAMS", 4624, *(v5 + 2), v25, 8, v7);
    }
  }

LABEL_71:
  *v50 = a1;
  *&v50[8] = AppleBCMWLANProximityInterface::setLLW_PARAMSCallback;
  if (v25)
  {
    v37 = v6;
  }

  else
  {
    v37 = 0;
  }

  *&v50[16] = 0;
  *&v50[24] = v37;
  *&v50[32] = v25;
  v38 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v40 = AppleBCMWLANCommander::sendVirtualIOVarSet(v38, InterfaceId, "hp2p", &v50[24], kNoRxExpected, v50, 0);
  v41 = 0;
  if (v40)
  {
    AppleBCMWLANProximityInterface::setLLW_PARAMS(a1, v40, &v51);
LABEL_105:
    v41 = v51;
    if (!v5)
    {
      return v41;
    }
  }

  IOFreeData();
  return v41;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setLLW_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setLLW_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setLLW_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getLLW_PARAMS(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v35 = &_mh_execute_header;
  v36 = 2;
  memset(v33, 170, sizeof(v33));
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1 || IO80211SkywalkInterface::getInterfaceId(a1) == 255 || IO80211SkywalkInterface::getInterfaceId(a1) >= 0xC)
  {
    v4 = 3758097122;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getLLW_PARAMS();
      }
    }

    return v4;
  }

  v6 = IOMallocZeroData();
  v7 = IOMallocZeroData();
  Bus = AppleBCMWLANCore::getBus(*(*(a1 + 17) + 64));
  if (((*(*Bus + 800))(Bus, v9, v10, v11) & 1) == 0)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    goto LABEL_42;
  }

  if (!a2)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    goto LABEL_42;
  }

  if (!v6)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    goto LABEL_42;
  }

  if (!v7)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS();
    v4 = v34;
    goto LABEL_31;
  }

  v12 = 0;
  *v6 = 229376;
  v13 = (v6 + 8);
  v14 = 4;
  do
  {
    *(v13 - 2) = *(&v35 + v12);
    *(v13 - 1) = 4;
    *v13 = 1;
    v13 += 2;
    v14 += 8;
    ++v12;
  }

  while (v12 < *(v6 + 2));
  if (v14)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  v33[2] = v15;
  v33[3] = v14;
  v33[0] = v7;
  v33[1] = 0x40000000400;
  v16 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v18 = AppleBCMWLANCommander::runVirtualIOVarGet(v16, InterfaceId, "hp2p", &v33[2], v33, 0);
  if (v18)
  {
    AppleBCMWLANProximityInterface::getLLW_PARAMS(a1, v18, &v34);
LABEL_42:
    v4 = v34;
    if (v7)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (!*(v7 + 2))
  {
LABEL_28:
    v4 = 0;
    goto LABEL_29;
  }

  v19 = 0;
  v20 = 4;
  while (1)
  {
    v21 = (v7 + v20);
    v22 = *v21;
    if (v22 != 2)
    {
      break;
    }

    v28 = *(v21 + 2);
    *(a2 + 8) = v21[6];
    *(a2 + 4) = v28;
    *(a2 + 10) = *(v21 + 16);
    v29 = *(a2 + 24) & 0xFE | v21[7] & 1;
    *(a2 + 24) = v29;
    v30 = v29 & 0xFFFFFFFD | (2 * ((*(v21 + 14) >> 1) & 1));
    *(a2 + 24) = v30;
    v31 = v30 & 0xFFFFFFFB | (4 * ((*(v21 + 14) >> 2) & 1));
    *(a2 + 24) = v31;
    *(a2 + 24) = v31 & 0xF7 | v21[7] & 8;
    v23 = 16;
LABEL_26:
    v32 = v21[1];
    if (v23 > v32)
    {
      AppleBCMWLANProximityInterface::getLLW_PARAMS();
      v4 = v34;
      goto LABEL_29;
    }

    v20 += v32 + 4;
    if (++v19 >= *(v7 + 2))
    {
      goto LABEL_28;
    }
  }

  if (v22 == 1)
  {
    v24 = *(v21 + 2);
    *(a2 + 8) = v21[6];
    *(a2 + 4) = v24;
    *(a2 + 10) = *(v21 + 23);
    *(a2 + 14) = *(v21 + 7);
    *(a2 + 21) = v21[12];
    v25 = *(a2 + 18) & 0xFFFE | v21[9] & 1;
    *(a2 + 18) = *(a2 + 18) & 0xFFFE | v21[9] & 1;
    v26 = v25 & 0xFFFFFFFD | (2 * ((v21[9] >> 1) & 1));
    *(a2 + 18) = v26;
    v27 = v26 & 0xFFFFFFFB | (4 * ((v21[9] >> 2) & 1));
    *(a2 + 18) = v27;
    LOBYTE(v24) = *(v21 + 21);
    *(a2 + 20) = *(a2 + 20) & 0xF0 | v24 & 0xF;
    *(a2 + 20) = *(v21 + 21) & 0xF0 | v24 & 0xF;
    LOWORD(v27) = v27 & 0xFF87 | (8 * (v21[10] & 0xF));
    *(a2 + 18) = v27;
    *(a2 + 18) = v27 & 0xFF7F | (8 * *(v21 + 20)) & 0x80;
    v23 = 24;
    goto LABEL_26;
  }

  if (!*v21)
  {
    *(a2 + 11) = *(v21 + 2) != 0;
    v23 = 8;
    goto LABEL_26;
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::getLLW_PARAMS();
    }
  }

  v4 = 3758096385;
LABEL_29:
  IOFreeData();
LABEL_30:
  if (v6)
  {
LABEL_31:
    IOFreeData();
  }

  return v4;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getLLW_PARAMS(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getLLW_PARAMS((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getLLW_PARAMS((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (!*(*(a1 + 17) + 664))
  {
    return 3758097084;
  }

  v4 = *(a2 + 40);
  v10 = *(a2 + 4);
  v11 = *(a2 + 8);
  v8 = *(a2 + 22);
  v9 = *(a2 + 26);
  *&v14[7] = 0;
  *v14 = 0;
  v13 = 0;
  v12 = 0;
  v7 = vrev64_s32(*(a2 + 12));
  *&v14[8] = v4;
  *v14 = 12;
  LODWORD(v13) = *(a2 + 20);
  if ((*(*a1 + 1088))())
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST();
    }
  }

  v15.iov_base = &v7;
  v15.iov_len = 46;
  v5 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = v5;
  return AppleBCMWLANProximityInterface::sendIOVarSetCommand(a1, &v15, 2u, "awdl_oob_af_auto");
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_OOB_AUTO_REQUEST((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::enableRoamEvents(void *this)
{
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = v8;
  v7[1] = 0x1000100010;
  v2 = AppleBCMWLANCommander::runIOVarGet(*(this[17] + 960), "event_msgs", &kNoTxPayload, v7, 0);
  result = (*(*this + 1088))(this);
  if (v2)
  {
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::enableRoamEvents();
      }
    }
  }

  else
  {
    if (result)
    {
      v4 = (*(*this + 1088))(this);
      (*(*v4 + 128))(v4, 16640);
    }

    BYTE2(v8[0]) |= 8u;
    *(v8 + 3) |= 0x2104u;
    v5 = *(this[17] + 960);
    v6[0] = v8;
    v6[1] = 16;
    if (AppleBCMWLANCommander::runIOVarSet(v5, "event_msgs", v6, 0, 0))
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANProximityInterface::enableRoamEvents();
        }
      }
    }

    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::enableRoamEvents();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::dumpAwdlPeers(AppleBCMWLANProximityInterface *this, char *a2, unsigned int a3, int a4)
{
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v35[10] = v10;
    v34 = v10;
    *v35 = v10;
    AppleBCMWLANProximityInterface::getElectionParams(this, &v34);
    v11 = (*(*this + 1072))(this);
    v28 = (*(*this + 1088))(this);
    v30 = this;
    v31 = a2;
    v12 = IO80211Print(v28, 1, -1, 0, a2, a3, a4, "[%02X:%02X:%02X:%02X:%02X:%02X] election params: flags %02x eid %u self_metric %u max_high_master_close %u max_high_master_mid %u max_tree_depth %u\n   close_sync %d  edge_sync %d close_range %d mid_range %d\n cur_tree_depth %u top_master_metric %u top_master:%02X:%02X:%02X:%02X:%02X:%02X private_top_master:%02X:%02X:%02X:%02X:%02X:%02X\n\n", v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), v34, *(&v34 + 1), *(&v34 + 3), BYTE12(v34), BYTE13(v34), BYTE14(v34), SBYTE7(v34), SBYTE9(v34), SBYTE10(v34), SBYTE11(v34), v35[9], *&v35[5], HIBYTE(v34), v35[0], v35[1], v35[2], v35[3], v35[4], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16]);
    v33[0] = v9;
    v33[1] = 0x3E8000003E8;
    v13 = *(*(this + 17) + 960);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v32[0] = v9;
    v32[1] = 1000;
    v15 = AppleBCMWLANCommander::runVirtualIOVarGet(v13, InterfaceId, "awdl_advertisers", v32, v33, 0);
    if (v15)
    {
      v16 = v15;
      v17 = (*(*this + 1088))(this);
      v27 = (*(*this + 920))(this, v16);
      IO80211Print(v17, 1, -1, 0, a2, a3 + v12, a4 - v12, " Unable to get advertisers table  %s\n", v27);
    }

    else
    {
      v18 = *(v9 + 2);
      if (v18 < 0x3C1)
      {
        if (*(v9 + 2))
        {
          if (v18 >= 0x3C)
          {
            v21 = v9 + 4;
            v22 = *(v9 + 2) / 0x3Cu;
            v23 = (v9 + 22);
            do
            {
              v29 = v22;
              (*(*this + 1088))(this);
              IO80211Hexdump();
              v24 = (*(*this + 1088))(this);
              this = v30;
              v12 = v12 + IO80211Print(v24, 1, -1, 0, v31, a3 + v12, a4 - v12, " [%02X:%02X:%02X:%02X:%02X:%02X] state 0x%x awlen %u rssi %d last_rssi %d txdelay %u awcounter %u txcount %u aw_period %u aw_ext_length %u tx_delay %u dist_top %u metric %u top_master_metric %u top_master:%02X:%02X:%02X:%02X:%02X:%02X\n", *(v23 + 10), *(v23 + 11), *(v23 + 12), *(v23 + 13), *(v23 + 14), *(v23 + 15), *(v23 - 9), *(v23 - 1), *(v23 - 12), *(v23 - 11), *(v23 - 4), *(v23 - 7), *(v23 - 5), *(v23 - 2), *v23, *(v23 - 4), *(v23 + 22), *(v23 + 1), *(v23 + 3), *(v23 + 16), *(v23 + 17), *(v23 + 18), *(v23 + 19), *(v23 + 20), *(v23 + 21));
              ++v21;
              v23 += 30;
              v22 = v29 - 1;
            }

            while (v29 != 1);
          }
        }

        else
        {
          v25 = (*(*this + 1088))(this);
          ClassNameHelper = getClassNameHelper(this);
          v12 = IO80211Print(v25, 1, -1, 0, a2, a3 + v12, a4 - v12, "%s::%s():  len %u\n", ClassNameHelper, "dumpAwdlPeers", *(v9 + 2)) + v12;
        }

        goto LABEL_8;
      }

      v19 = (*(*this + 1088))(this);
      IO80211Print(v19, 1, -1, 0, a2, a3 + v12, a4 - v12, " wrong len %u\n", *(v9 + 2));
    }

    v12 = 0;
LABEL_8:
    IOFreeData();
    return v12;
  }

  return 0;
}

uint64_t AppleBCMWLANProximityInterface::reset(IO80211SkywalkInterface *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::reset();
    }
  }

  v2 = *(this + 17);
  v3 = *(v2 + 112);
  if (v3 && AppleBCMWLANSkywalkInterface::isEnabled(*(v2 + 112)))
  {
    (*(*v3 + 1464))(v3, 1, 1, 0, 0, 0);
    (*(*v3 + 1240))(v3);
    (*(*v3 + 1480))(v3, 0);
  }

  (*(*this + 1240))(this);
  IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
  *(*(this + 17) + 936) = 0;
  *(*(this + 17) + 120) = 0;
  *(*(this + 17) + 664) = 0;
  *(*(this + 17) + 80) = 0;
  *(*(this + 17) + 81) = 0;
  *(*(this + 17) + 82) = 0;
  *(*(this + 17) + 92) = 0;
  *(*(this + 17) + 72) = 1;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::reset();
    }
  }

  AppleBCMWLANProximityInterface::setLowLatencyTrafficState(this, 0, 0);
  *(*(this + 17) + 548) = 0;
  *(*(this + 17) + 924) = 0;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_MIN_RATE()
{
  return 3825172759;
}

{
  return 3825172759;
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_MIN_RATE(unint64_t a1, uint64_t a2)
{
  v3 = a2 + 4;
  v11 = 2 * *(a2 + 4);
  *&v9 = a1;
  *(&v9 + 1) = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v10 = 0;
  v4 = *(*(a1 + 136) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v11;
  v8[1] = 4;
  result = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "awdl_min_rate", v8, kNoRxExpected, &v9, 0);
  if (result)
  {
    v7 = result;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_MIN_RATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v7);
      }
    }

    return (*(*a1 + 1336))(a1, v7);
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_MIN_RATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_MIN_RATE(a1 - 112, a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_MIN_RATE(a1 - 128, a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10 = *(a2 + 4);
  *&v8 = a1;
  *(&v8 + 1) = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v9 = 0;
  v3 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v7[0] = &v10;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v3, InterfaceId, "awdl_phycal_period", v7, kNoRxExpected, &v8, 0);
  if (v5)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD();
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_TXCAL_PERIOD((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10 = 0;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v8[0] = &v10;
  v8[1] = 4;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_phycal_period", v8, v9, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD();
      }
    }
  }

  else
  {
    *(a2 + 4) = v10;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_TXCAL_PERIOD((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (!*(*(a1 + 17) + 664))
  {
    return 3758097084;
  }

  v3 = *(a2 + 12) | 0xD000;
  v13 = 1310721;
  v14 = *(a2 + 4);
  v15 = *(a2 + 6);
  v16 = v3;
  v4 = *(a2 + 18);
  v17 = *(a2 + 14);
  v18 = v4;
  *&v11 = a1;
  *(&v11 + 1) = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v12 = 0;
  *(a2 + 12) = v3;
  v5 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v10[0] = &v13;
  v10[1] = 20;
  v7 = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "awdl_dfsp_cfg", v10, kNoRxExpected, &v11, 0);
  v8 = (*(*a1 + 1088))(a1);
  if (v7)
  {
    if (v8)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG();
      }
    }
  }

  else if (v8)
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG();
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_CONFIG((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v10[0] = &v11;
  v10[1] = 0x1400140014;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v9[0] = &v11;
  v9[1] = 20;
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "awdl_dfsp_cfg", v9, v10, 0);
  v7 = (*(*a1 + 1088))(a1);
  if (v6)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG();
      }
    }
  }

  else
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG();
      }
    }

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 12) = WORD1(v12);
    *(a2 + 20) = HIWORD(v13);
    *(a2 + 14) = HIDWORD(v12);
    *(a2 + 18) = v13;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::getAWDL_DFSP_CONFIG((a1 - 128), a2);
}

uint64_t AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v12[0] = 1;
  v12[1] = *(a2 + 2);
  v3 = *(a2 + 8);
  v13 = *(a2 + 4);
  v14 = v3;
  *&v10 = a1;
  *(&v10 + 1) = AppleBCMWLANProximityInterface::handleProxIovarAsyncCallBack;
  v11 = 0;
  v4 = *(*(a1 + 17) + 960);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v9[0] = v12;
  v9[1] = 12;
  v6 = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "awdl_dfsp_ucsa", v9, kNoRxExpected, &v10, 0);
  v7 = (*(*a1 + 1088))(a1);
  if (v6)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG();
      }
    }
  }

  else if (v7)
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG();
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG((a1 - 112), a2);
}

{
  return AppleBCMWLANProximityInterface::setAWDL_DFSP_UCSA_CONFIG((a1 - 128), a2);
}

BOOL AppleBCMWLANProximityInterface::setup5GAnd24GSlices(AppleBCMWLANProximityInterface *this)
{
  v5 = 0;
  result = AppleBCMWLANCore::isSdbChip(*(*(this + 17) + 64), &v5);
  *(*(this + 17) + 96) = result;
  v3 = *(this + 17);
  if (*(v3 + 96) == 1)
  {
    v4 = v5;
    *(v3 + 100) = !v5;
    *(*(this + 17) + 104) = v4;
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::fillSliceDataForStandAloneAWDL(AppleBCMWLANProximityInterface *this, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6, _DWORD *a7)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v11;
  v47 = v11;
  v44 = v11;
  v45 = v11;
  v12 = (a3 + 6);
  v42 = (a3 + 6);
  if (!a2[6])
  {
    v43 = 2;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    if (a2[5])
    {
      v13 = 0;
      do
      {
        if (*(v12 + v13))
        {
          ChanSpec = AppleBCMWLANCore::getChanSpec(*(*(this + 17) + 64), *(v12 + v13), &v43);
          v12 = v42;
          *(&v44 + v13) = __rev16(ChanSpec);
          if (!ChanSpec)
          {
            v15 = *(v42 + v13);
            if ((v15 - 1) <= 0xD)
            {
              *(&v44 + v13) = __rev16(v15 | 0x1000);
            }
          }
        }

        else
        {
          *(&v44 + v13) = 0;
        }

        ++v13;
      }

      while (v13 < a2[5]);
    }

    v42 = &v44;
  }

  v16 = a2[4];
  if ((v16 & 0x30) == 0)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::fillSliceDataForStandAloneAWDL();
      }
    }
  }

  AppleBCMWLANProximityInterface::setup5GAnd24GSlices(this);
  v17 = 0;
  v18 = a2[5];
  result = (2 * v18);
  v20 = a2 + 20;
  v21 = 1;
  v22 = a7;
  v23 = v42;
  do
  {
    v24 = v21;
    *a4 = 2;
    *a6 += 4;
    *(a4 + 4) = 0;
    v25 = *a6;
    *(a4 + 8) = v17;
    v26 = v25 + 8;
    *a6 = v25 + 8;
    *(a4 + 9) = v18;
    *(a4 + 10) = 2;
    if ((v16 & 0x10) != 0)
    {
      if (!v18)
      {
        goto LABEL_36;
      }

      v31 = (a4 + 12);
      v32 = v18;
      v33 = v20;
      v34 = v23;
      while ((v33[1] & 0x20) == 0)
      {
        v35 = *(v33 - 1);
        if (v35 >= 0xF)
        {
          break;
        }

        if (v35)
        {
          v36 = *(*(this + 17) + 100);
LABEL_27:
          if (v36 == v17)
          {
            LOWORD(v35) = *v34;
          }

          else
          {
            LOWORD(v35) = 0;
          }
        }

        *v31++ = v35;
        v34 = (v34 + 2);
        v33 += 12;
        if (!--v32)
        {
          goto LABEL_36;
        }
      }

      v36 = *(*(this + 17) + 104);
      goto LABEL_27;
    }

    if (v24)
    {
      if (v18)
      {
        v27 = (a4 + 12);
        v28 = v18;
        v29 = v23;
        do
        {
          v30 = *v29++;
          *v27++ = v30;
          --v28;
        }

        while (v28);
      }
    }

    else if (v18)
    {
      v37 = result;
      v38 = v20;
      bzero((a4 + 12), 2 * v18);
      result = v37;
      v20 = v38;
      v22 = a7;
      v23 = v42;
    }

LABEL_36:
    *a6 = result + v26;
    *(a4 + 2) = 2 * v18 + 8;
    a4 += 44;
    if ((a4 & 3) != 0)
    {
      v39 = 4 - (a4 & 3);
      a4 += v39;
      *v22 += v39;
    }

    v21 = 0;
    v17 = 1;
  }

  while ((v24 & 1) != 0);
  *a5 += 2;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(AppleBCMWLANProximityInterface *this, uint64_t a2, unsigned __int16 *a3, _BYTE *a4)
{
  *(a3 + 6) = 0u;
  *(a3 + 7) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  if (!*(a2 + 1))
  {
LABEL_24:
    *a4 = 64;
    return 1;
  }

  v6 = this;
  v7 = 0;
  v8 = 0;
  v9 = a2 + 4;
  v10 = &channelBWMap;
  v29 = a2 + 4;
  v30 = a4;
  while (1)
  {
    v11 = v9 + 80 * v7;
    *v33 = 0;
    v32 = -1431655766;
    v12 = *(v11 + 74);
    if ((v12 + 125) > 3u)
    {
      AppleBCMWLANProximityInterface::convertOpClassToChannel(this, v12, *(v11 + 76), *(v11 + 75), &v33[1], v33);
      v14 = v10;
      v32 = v10[v33[0]];
      this = AppleBCMWLANCore::getChanSpec(*(*(v6 + 136) + 64), v33[1], &v32);
      ChanSpec = this;
    }

    else
    {
      v31 = 0;
      AppleBCMWLANProximityInterface::convertOpClassToNanChannel(v6, v12, *(v11 + 76), *(v11 + 75), &v33[1], v33, &v31);
      v13 = v33[0];
      v14 = v10;
      v32 = v10[v33[0]];
      v15 = v33[1];
      ChanSpec = AppleBCMWLANCore::getChanSpec(*(*(v6 + 136) + 64), v33[1], v31, &v32);
      this = (*(*v6 + 1088))(v6);
      if (this)
      {
        (*(*v6 + 1088))(v6);
        this = CCLogStream::shouldLog();
        if (this)
        {
          v17 = (*(*v6 + 1088))(v6);
          this = CCLogStream::logAlert(v17, "[dk] %s@%d:%s[%d]: bw %d channel %d tBw %x op_class %x op_class_bitmap %x prim_chan_bitmap %x chSpec %x\n", "convertCommittedAvailabilityToChanSpecSequence", 6105, "convertCommittedAvailabilityToChanSpecSequence", 6105, v13, v15, v32, *(v11 + 74), *(v11 + 76), *(v11 + 75), ChanSpec);
        }
      }
    }

    v18 = *(v11 + 4);
    v19 = 64 << *(v11 + 6);
    if ((v19 & 0xFFC0u) <= v8)
    {
      goto LABEL_11;
    }

    if ((v19 & 0xFFC0u) >= 0x401)
    {
      break;
    }

    v8 = (64 << *(v11 + 6));
LABEL_11:
    v20 = *(v11 + 8);
    if (*(v11 + 8))
    {
      v21 = 0;
      v22 = *(v11 + 7);
      v23 = 1 << v22;
      v24 = __rev16(ChanSpec);
      while (2)
      {
        for (i = 0; i != 8; ++i)
        {
          if ((*(v11 + 9 + v21) >> i))
          {
            if (v22 != 31)
            {
              v26 = 0;
              while (1)
              {
                v27 = &a3[v18];
                if (*v27)
                {
                  break;
                }

                *v27 = v24;
                ++v18;
                if (v23 <= ++v26)
                {
                  goto LABEL_21;
                }
              }

              if ((*(*v6 + 1088))(v6))
              {
                (*(*v6 + 1088))(v6);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence(v6, v6 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v18, &a3[v18]);
                }
              }

              return 0;
            }
          }

          else
          {
            v18 += v23;
          }

LABEL_21:
          ;
        }

        if (++v21 < v20)
        {
          continue;
        }

        break;
      }
    }

    ++v7;
    v9 = v29;
    a4 = v30;
    v10 = v14;
    if (v7 >= *(a2 + 1))
    {
      goto LABEL_24;
    }
  }

  if ((*(*v6 + 1088))(v6))
  {
    (*(*v6 + 1088))(v6);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::convertCommittedAvailabilityToChanSpecSequence();
    }
  }

  return 0;
}

BOOL AppleBCMWLANProximityInterface::convertOpClassToChannel(AppleBCMWLANProximityInterface *this, int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v6 = 0;
  v7 = 0;
  for (i = &unk_10033C4A3; ; i += 67)
  {
    v9 = &operClassTable + 67 * v6;
    if (*v9 == a2)
    {
      break;
    }

LABEL_6:
    v7 = v6 > 0x11;
    if (++v6 == 19)
    {
      return 1;
    }
  }

  v10 = 0;
  while (((a3 >> v10) & 1) == 0)
  {
    if (++v10 == 64)
    {
      goto LABEL_6;
    }
  }

  *a5 = i[v10];
  v11 = v9[1];
  *a6 = v11;
  if (v11 == 2)
  {
    v12 = 0;
    v13 = *a5;
    v14 = &unk_10033C389;
    do
    {
      if (v13 == *(&bw80MHz + 5 * v12))
      {
        for (j = 0; j != 4; ++j)
        {
          if ((a4 >> j))
          {
            v13 = v14[j];
            *a5 = v13;
          }
        }
      }

      ++v12;
      v14 += 5;
    }

    while (v12 != 6);
  }

  return v7;
}

uint64_t AppleBCMWLANProximityInterface::convertOpClassToNanChannel(unint64_t this, int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  if ((a2 - 131) > 3)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::convertOpClassToNanChannel();
      }
    }
  }

  else
  {
    v12 = &byte_10033C99B;
    v13 = 4;
    do
    {
      if (*(v12 - 1) == a2)
      {
        v14 = *v12;
        *a6 = v14;
        *a7 = 1;
        goto LABEL_13;
      }

      v12 += 70;
      --v13;
    }

    while (v13);
    *a6 = 0;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::convertOpClassToNanChannel();
      }
    }

    v14 = 0;
LABEL_13:
    if (a3 >> 8 != 1)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v22 = (*(*this + 1088))(this);
          CCLogStream::logAlert(v22, "[dk] %s@%d:ERROR: opclass %x opclassbitmap %x primchanbitmap %x num_channels %d \n", "convertOpClassToNanChannel", 6034, a2, a3, a4, a3 >> 8);
        }
      }
    }

    v15 = 0;
    while (((a4 >> v15) & 1) == 0)
    {
      if (++v15 == 8)
      {
        v15 = 0;
        break;
      }
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v18 = 0;
        v19 = bw80MHz6g;
        while (bw80MHz6g[v18] != a3)
        {
          v18 += 5;
          if (v18 == 70)
          {
            return 1;
          }
        }
      }

      else
      {
        if (v14 != 3)
        {
          return 1;
        }

        v18 = 0;
        v19 = bw160MHz6g;
        while (bw160MHz6g[v18] != a3)
        {
          v18 += 9;
          if (v18 == 63)
          {
            return 1;
          }
        }
      }

      v20 = v19[v15 + 1 + v18];
LABEL_40:
      *a5 = v20;
      return 1;
    }

    if (v14)
    {
      v16 = 0;
      v17 = &bw80MHz6g[v15 + 1];
      while (bw40MHz6g[v16] != a3)
      {
        v16 += 3;
        v17 += 5;
        if (v16 == 87)
        {
          return 1;
        }
      }

      v20 = *v17;
      goto LABEL_40;
    }

    *a5 = a3;
  }

  return 1;
}

uint64_t AppleBCMWLANProximityInterface::start(AppleBCMWLANProximityInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANProximityInterface::start(this, v3);
}

uint64_t AppleBCMWLANProximityInterface::start(IO80211SkywalkInterface *a1, IOService *a2)
{
  v29 = 0;
  init = 0;
  if (a2 && (v4 = a2[1].OSObject::OSObjectInterface::__vftable, LOBYTE(v4[2223].free) == 1) && LODWORD(v4[2224].init) == 6)
  {
    v5 = v4 + 2225;
    init = v5->init;
    v29 = WORD2(v5->init);
    v6 = init;
    v7 = BYTE1(init);
    v8 = BYTE2(init);
    v9 = HIBYTE(init);
    v10 = v29;
    v11 = HIBYTE(v29);
  }

  else
  {
    IOLog("%s: FAIL: AWDL interface parameters invalid\n", "BOOL AppleBCMWLANProximityInterface::start(AppleBCMWLANCore *, RegistrationInfo *)");
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  IOLog("%s: Initializing AWDL interface parameters %02x:%02x:%02x:%02x:%02x:%02x\n", "BOOL AppleBCMWLANProximityInterface::start(AppleBCMWLANCore *, RegistrationInfo *)", v6, v7, v8, v9, v10, v11);
  v12 = (*(*a1 + 312))(a1);
  result = (*(*a1 + 2160))(a1, a2, &init, 6, v12);
  if (result)
  {
    p_free = &a2[1].OSObject::OSObjectInterface::__vftable[2223].free;
    *p_free = 0u;
    *(p_free + 1) = 0u;
    if (IO80211VirtualInterface::start(a1, a2))
    {
      if (IO80211SkywalkInterface::getLogger(a1))
      {
        *(*(a1 + 17) + 56) = IO80211SkywalkInterface::getLogger(a1);
      }

      v15 = *(*(a1 + 17) + 64);
      *(*(a1 + 17) + 1096) = (*(*v15 + 88))(v15);
      *(*(a1 + 17) + 976) = AppleBCMWLANCore::getBus(v15);
      v16 = (*(**(*(a1 + 17) + 976) + 752))();
      *(*(a1 + 17) + 984) = OSMetaClassBase::safeMetaCast(v16, gAppleBCMWLANBusSkywalkMetaClass);
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v17;
      v24 = v17;
      v23 = v17;
      v25 = v17;
      v26 = v17;
      v21 = a1;
      v18 = *(a1 + 17);
      LOBYTE(v22) = *(v18 + 937);
      *&v24 = v18 + 1000;
      *(&v24 + 1) = v18 + 1008;
      *&v25 = v18 + 1056;
      *(&v25 + 1) = v18 + 1064;
      *&v26 = v18 + 1072;
      *(&v23 + 1) = v18 + 1016;
      *(&v22 + 1) = v18 + 940;
      *&v23 = v18 + 1024;
      v27 = (*(*a1 + 1088))(a1);
      WORD4(v26) = 64;
      v19 = (*(**(*(a1 + 17) + 984) + 56))(*(*(a1 + 17) + 984), &v21);
      v20 = *a1;
      if (v19)
      {
        result = (*(v20 + 1088))(a1);
        if (result)
        {
          (*(*a1 + 1088))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            AppleBCMWLANProximityInterface::start();
            return 0;
          }
        }
      }

      else
      {
        return (*(v20 + 536))(a1);
      }
    }

    else
    {
      result = (*(*a1 + 1088))(a1);
      if (result)
      {
        (*(*a1 + 1088))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANProximityInterface::start();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::start(AppleBCMWLANProximityInterface *this, IOService *anObject)
{
  v2 = (this - 48);
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANProximityInterface::start(v2, v3);
}

uint64_t AppleBCMWLANProximityInterface::registerInterface(IOUserNetworkEthernet *this)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = v2;
  v15[2] = v2;
  v15[0] = v2;
  if ((this->hwConfigNicProxyData)(this, &mediaTable, 2))
  {
    result = (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
    if (result)
    {
      (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANProximityInterface::registerInterface();
        return 0;
      }
    }

    return result;
  }

  if (!IOUserNetworkEthernet::SetTxPacketHeadroom(this, 0x40u))
  {
    v4 = *&this[2].refcount;
    if (!*(v4 + 937))
    {
      goto LABEL_19;
    }

    v5 = 0;
    do
    {
      v6 = *(v4 + 8 * v5 + 1024);
      *(v15 + v5) = v6;
      if ((this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this))
      {
        (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
        if (CCLogStream::shouldLog())
        {
          v7 = (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
          CCLogStream::logAlert(v7, "[dk] %s@%d:ProximityInterface: network queue[%u] %p, driver queue %p\n", "registerInterface", 6312, v5, v6, *(*&this[2].refcount + 8 * v5 + 1024));
        }
      }

      ++v5;
      v4 = *&this[2].refcount;
    }

    while (v5 < *(v4 + 937));
    if (*(v4 + 937))
    {
      v8 = 0;
      do
      {
        (*(**(v4 + 8 * v8 + 1024) + 272))(*(v4 + 8 * v8 + 1024));
        *(*&this[2].refcount + 4 * *(*&this[2].refcount + 4 * v8 + 940) + 1080) = AppleBCMWLANSkywalkTxSubmissionQueue::getQueueId(*(*&this[2].refcount + 8 * v8 + 1024));
        ++v8;
        v4 = *&this[2].refcount;
      }

      while (v8 < *(v4 + 937));
    }

    else
    {
LABEL_19:
      LOBYTE(v8) = 0;
    }

    *(v15 + v8) = *(v4 + 1000);
    *(v15 + (v8 + 1)) = *(v4 + 1008);
    v9 = v8 + 2;
    (*(**(v4 + 1000) + 200))(*(v4 + 1000));
    (*(**(*&this[2].refcount + 1008) + 208))(*(*&this[2].refcount + 1008));
    v10 = *(*&this[2].refcount + 1056);
    if (v10)
    {
      (*(*v10 + 72))(v10);
    }

    v11 = (this->IOService::OSObject::OSMetaClassBase::__vftable[13].Dispatch)(this);
    v12 = v9;
    v13 = (this->IOService::OSObject::OSMetaClassBase::__vftable[3].Dispatch)(this, v11 & 0xFFFFFFFFFFFFLL, *(*&this[2].refcount + 1064), v15, v9);
    if ((this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this) && ((this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this), CCLogStream::shouldLog()))
    {
      v14 = (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
      CCLogStream::logAlert(v14, "[dk] %s@%d:ProximityInterface: ret[0x%08x] MAC[%02x:%02x:%02x:%02x:%02x:%02x], pool[%p] queues[%p] numQueue[%2u]", "registerInterface", 6331, v13, v11, BYTE1(v11), BYTE2(v11), BYTE3(v11), BYTE4(v11), BYTE5(v11), *(*&this[2].refcount + 1064), v15, v12);
      if (v13)
      {
        goto LABEL_25;
      }
    }

    else if (v13)
    {
LABEL_25:
      result = (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
      if (result)
      {
        (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANProximityInterface::registerInterface();
          return 0;
        }
      }

      return result;
    }

    IOService::RegisterService(this, 0);
    return 1;
  }

  result = (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
  if (result)
  {
    (this->IOService::OSObject::OSMetaClassBase::__vftable[13].free)(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANProximityInterface::registerInterface();
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::setInterfaceEnable(uint64_t this, _BOOL8 a2)
{
  v2 = a2;
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if (IO80211VirtualInterface::setInterfaceEnable(this, v2))
  {
    v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setInterfaceEnable();
      }
    }
  }

  else
  {
    v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::setInterfaceEnable(this, v4, v2);
    }
  }

  v5 = *this;
  if (*(*(this + 136) + 924))
  {
    v6 = *(v5 + 128);
    if (v2)
    {
      v7 = v6(this, 3, 128);
      (*(*this + 1320))(this, 0);
    }

    else
    {
      v7 = v6(this, 1, 130);
      (*(*this + 1328))(this, 0);
    }

    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v9 = (*(*this + 1088))(this);
        v10 = "Disable";
        if (v2)
        {
          v10 = "Enable";
        }

        CCLogStream::logAlert(v9, "[dk] %s@%d:AppleBCMWLANProximityInterface::(%s) ret=0x%08x\n", "setInterfaceEnable", 6399, v10, v7);
      }
    }
  }

  else
  {
    if ((*(v5 + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setInterfaceEnable();
      }
    }

    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANProximityInterface::enableDatapath(uint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  v3 = (*(*this + 1064))(this);
  v4 = (*(*this + 1088))(this);
  if ((v3 & 1) == 0)
  {
    AppleBCMWLANProximityInterface::enableDatapath(v4 == 0, this, v2, &v14);
    return v14;
  }

  if (v4)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::enableDatapath();
    }
  }

  (*(**(*(this + 136) + 1000) + 192))(*(*(this + 136) + 1000));
  v5 = *(*(this + 136) + 1008);
  if (!v5)
  {
    AppleBCMWLANProximityInterface::enableDatapath(this, v2, &v14);
    return v14;
  }

  (*(*v5 + 200))(v5);
  v6 = *(this + 136);
  if (*(v6 + 937))
  {
    v7 = 128;
    while (1)
    {
      v8 = *(v6 + 8 * v7);
      if (!v8)
      {
        break;
      }

      (*(*v8 + 256))(v8);
      v9 = *(*(this + 136) + 8 * v7);
      (*(*v9 + 128))(v9, 0, 0);
      v6 = *(this + 136);
      v10 = v7 - 127;
      ++v7;
      if (v10 >= *(v6 + 937))
      {
        goto LABEL_10;
      }
    }

    AppleBCMWLANProximityInterface::enableDatapath(v7 - 128, this, v2, &v14);
    return v14;
  }

LABEL_10:
  if (*(v6 + 1056))
  {
    v11 = (*(*this + 728))(this);
    v12 = (*(*v11 + 88))(v11);
    (*(*v12 + 64))(v12, *(*(this + 136) + 1056));
    (*(**(*(this + 136) + 1056) + 64))(*(*(this + 136) + 1056));
    (*(**(*(this + 136) + 1056) + 120))(*(*(this + 136) + 1056));
    v6 = *(this + 136);
  }

  result = (*(**(v6 + 1008) + 120))(*(v6 + 1008), 0, 0);
  if (result)
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANProximityInterface::enableDatapath();
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::disableDatapath(void *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::disableDatapath();
    }
  }

  v2 = this[17];
  if (*(v2 + 937))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2 + 8 * v3 + 1024);
      if (!v4)
      {
        break;
      }

      (*(*v4 + 272))(v4);
      ++v3;
      v2 = this[17];
      if (v3 >= *(v2 + 937))
      {
        goto LABEL_8;
      }
    }

    AppleBCMWLANProximityInterface::disableDatapath(v3, this);
  }

  else
  {
LABEL_8:
    v5 = *(v2 + 1056);
    if (v5)
    {
      (*(*v5 + 72))(v5);
      v6 = (*(*this + 728))(this);
      v7 = (*(*v6 + 88))(v6);
      (*(*v7 + 72))(v7, *(this[17] + 1056));
      v2 = this[17];
    }

    v8 = *(v2 + 1008);
    if (v8)
    {
      (*(*v8 + 208))(v8);
      v9 = *(this[17] + 1000);
      if (v9)
      {
        (*(*v9 + 200))(v9);
        return 0;
      }

      AppleBCMWLANProximityInterface::disableDatapath();
    }

    else
    {
      AppleBCMWLANProximityInterface::disableDatapath();
    }
  }

  v10 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::disableDatapath();
    }
  }

  return v10;
}

uint64_t AppleBCMWLANProximityInterface::enable(AppleBCMWLANProximityInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::enable();
    }
  }

  IO80211SkywalkInterface::enable(this, a2);
  (*(*this + 1232))(this);
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::disable(AppleBCMWLANProximityInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::disable();
    }
  }

  (*(*this + 1240))(this);

  return IO80211SkywalkInterface::disable(this, a2);
}

uint64_t AppleBCMWLANProximityInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 4 * a2 + 1080);
  if (v3 >= *(v2 + 937))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 1024);
  }
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 4 * a2 + 1080);
  if (v3 >= *(v2 + 937))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 1024);
  }
}

uint64_t AppleBCMWLANProximityInterface::printDataPath(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 28);
  v6 = *(a2 + 32);
  v7 = *(a2 + 24);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::printDataPath();
    }
  }

  v8 = (*(*a1 + 1088))(a1);
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(a1);
  v10 = (*(*a1 + 160))(a1);
  v11 = IO80211Print(v8, 5, -1, 0, v4, v6 + v5, v7 - v6, "InterfaceRole:%s bsdname:%s\n", InterfaceRoleStr, v10) + v6;
  if (*(*(a1 + 17) + 937))
  {
    v12 = 0;
    do
    {
      v13 = (*(*a1 + 1088))(a1);
      v14 = IO80211Print(v13, 5, -1, 0, v4, v11 + v5, v7 - v11, "Dumping TxSubQueue:%u status\n", v12);
      v11 = (*(**(*(a1 + 17) + 8 * v12 + 1024) + 216))(*(*(a1 + 17) + 8 * v12 + 1024), v4, v5, v7, v14 + v11);
      ++v12;
    }

    while (v12 < *(*(a1 + 17) + 937));
  }

  v15 = (*(*a1 + 1088))(a1);
  v16 = IO80211Print(v15, 5, -1, 0, v4, v11 + v5, v7 - v11, "Logging TX Completion Queue Status\n");
  v17 = (*(**(*(a1 + 17) + 1000) + 176))(*(*(a1 + 17) + 1000), v4, v5, v7, v16 + v11);
  v18 = (*(*a1 + 1088))(a1);
  v19 = IO80211Print(v18, 5, -1, 0, v4, v17 + v5, v7 - v17, "Logging RX Completion Queue Status\n");
  v20 = (*(**(*(a1 + 17) + 1008) + 184))(*(*(a1 + 17) + 1008), v4, v5, v7, v19 + v17);
  v21 = *(a2 + 28) + v20;
  *(a2 + 24) -= v20;
  *(a2 + 28) = v21;
  IO80211VirtualInterface::printDataPath();
  return 0;
}

uint64_t AppleBCMWLANProximityInterface::sendPendingPacketsToStack(void *this, IO80211NetworkPacket **a2, uint64_t a3)
{
  v4 = *(this[17] + 1008);
  if (v4)
  {
    if (a3)
    {
      v5 = a2;
      v6 = a3;
      do
      {
        v7 = *v5++;
        (*(**(this[17] + 1008) + 232))(*(this[17] + 1008), v7, 0, 0);
        --v6;
      }

      while (v6);
      v4 = *(this[17] + 1008);
    }

    result = (*(*v4 + 120))(v4, 0, 0);
    if (result)
    {
      v9 = *(**(this[17] + 1008) + 192);

      return v9();
    }
  }

  else
  {
    result = (*(*this + 1088))(this, a2, a3);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::sendPendingPacketsToStack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::freePendingPackets(void *this, IO80211NetworkPacket **a2)
{
  v3 = *(this[17] + 1008);
  if (v3)
  {
    v4 = *(*v3 + 240);

    return v4();
  }

  else
  {
    result = (*(*this + 1088))(this, a2);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANProximityInterface::freePendingPackets();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANProximityInterface::clearTrafficRegistrationState(void *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANProximityInterface::clearTrafficRegistrationState();
    }
  }

  *(this[17] + 92) = 0;
  result = AppleBCMWLANProximityInterface::setLowLatencyTrafficState(this, 0, 0);
  *(this[17] + 94) = 0;
  *(this[17] + 95) = 0;
  return result;
}

uint64_t AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(uint64_t a1, unsigned __int8 *a2)
{
  if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION();
      }
    }

    return 16;
  }

  else if (AppleBCMWLANCore::is4388Up(*(*(a1 + 136) + 64)))
  {
    v4 = IOMallocZeroData();
    if (v4)
    {
      v5 = v4;
      *v4 = 16875520;
      *(v4 + 4) = 3;
      *(v4 + 8) = 1;
      *(v4 + 12) = 2;
      v6 = a2[4];
      *(v4 + 16) = 0;
      v7 = v4 + 16;
      *(v4 + 18) = v6;
      memcpy((v4 + 20), a2 + 5, v6);
      v8 = a2[74];
      v9 = v6 + v7;
      *(v9 + 4) = 1;
      *(v9 + 6) = v8;
      v6 += 8;
      memcpy((v7 + v6), a2 + 75, v8);
      *(v5 + 6) = v6 + v8 + 8;
      *&v17 = a1;
      *(&v17 + 1) = AppleBCMWLANProximityInterface::handleSlotBssIovarAsyncCallBack;
      v18 = 0;
      v10 = *(*(a1 + 136) + 960);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
      v16[0] = v5;
      v16[1] = (v6 + v8 + ((v6 + v8 + 19) & 0x7FC) + 16);
      v12 = AppleBCMWLANCommander::sendVirtualIOVarSet(v10, InterfaceId, "slot_bss", v16, kNoRxExpected, &v17, 0);
      if (v12)
      {
        v13 = v12;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v13);
          }
        }

        v14 = (*(*a1 + 1336))(a1, v13);
      }

      else
      {
        v14 = 0;
      }

      IOFreeData();
    }

    else
    {
      return 12;
    }
  }

  else
  {
    return 0;
  }

  return v14;
}

uint64_t non-virtual thunk toAppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(uint64_t a1, unsigned __int8 *a2)
{
  return AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(a1 - 112, a2);
}

{
  return AppleBCMWLANProximityInterface::setP2P_COEX_PROTECTION(a1 - 128, a2);
}

uint64_t AppleBCMWLANProximityInterface::flushFlowQueues(AppleBCMWLANProximityInterface *this, ether_addr *a2)
{
  v4 = *(*(this + 17) + 112);
  if (v4)
  {
    AppleBCMWLANSkywalkInterface::flushFlowQueues(v4, a2);
  }

  return IO80211VirtualInterface::flushFlowQueues(this, a2);
}

uint64_t *IO80211BufferCursor::_crop@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if (a3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = this[1];
  if (v5)
  {
    v6 = v4 > v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_27;
  }

  v7 = v5 - v4;
  v8 = a4 == -1 && v5 < v4;
  if (a4 != -1)
  {
    v7 = a4;
  }

  v9 = __CFADD__(v4, v7);
  if (__CFADD__(v4, v7))
  {
    v8 = 1;
  }

  v10 = v4 + v7 <= v5 && !v8;
  if (!v10 || v9 || (v11 = *this, *a1 = *this + v4, a1[1] = v7, (v7 - 0x4000000000000000) < 0xC000000000000001) || !v11)
  {
LABEL_27:
    *a1 = 0;
    a1[1] = 0;
  }

  return this;
}

uint64_t IO80211BufferCursor::_asType<wl_event_data_if>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 5)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::_asType<bcmv3_awdl_scan_event_data_min>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 4)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::_asType<ether_addr>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 6)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t IO80211BufferCursor::_asType<apple8021_awdl_cca_stats>(uint64_t *a1, uint64_t a2, const char *a3)
{
  v3 = &a3[a2];
  if (__CFADD__(a2, a3))
  {
    return 0;
  }

  if (a3 < 0x14)
  {
    return 0;
  }

  v5 = a1[1];
  result = 0;
  if (v3 <= v5)
  {
    v7 = *a1;
    result = v7 + a2;
    if (&v3[v7] < v7 + a2 || a3 >> 32)
    {
      AppleBCMWLANProximityInterface::handleEvent(result, a3);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return CCLogStream::shouldLog();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return IO80211SkywalkInterface::getInterfaceId(v0);
}

uint64_t AppleBCMWLANSkywalkPacketPool::initWithName(IOUserNetworkPacketBufferPool *a1, const char *a2, OSObject *a3, uint64_t a4)
{
  v5.dmaSpecification.options = 0;
  memset(v5.dmaSpecification._resv, 0, 192);
  v5.dmaSpecification.maxAddressBits = 64;
  *&v5.packetCount = *a4;
  *&v5.memorySegmentSize = *(a4 + 16);
  return IOUserNetworkPacketBufferPool::initWithName(a1, a2, a3, 1u, &v5);
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkPacketPool::initWithName(uint64_t a1, const char *a2, OSObject *a3, uint64_t a4)
{
  v5.dmaSpecification.options = 0;
  memset(v5.dmaSpecification._resv, 0, 192);
  v5.dmaSpecification.maxAddressBits = 64;
  *&v5.packetCount = *a4;
  *&v5.memorySegmentSize = *(a4 + 16);
  return IOUserNetworkPacketBufferPool::initWithName((a1 - 56), a2, a3, 1u, &v5);
}

uint64_t AppleBCMWLANSkywalkPacketPool::newPacket(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(*a1 + 136))(a1, a2);
  if (!v4)
  {
    return 3758097085;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANSkywalkPacketPool::newPacket(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = (*(*(a1 - 40) + 136))();
  if (!v4)
  {
    return 3758097085;
  }

  v5 = v4;
  result = 0;
  *a3 = v5;
  return result;
}

OSObject *AppleBCMWLANChipManagerPCIe4357::withChip(AppleBCMWLANChipManagerPCIe4357 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4357MetaClass, &v6))
  {
    return 0;
  }

  v4 = v6;
  if (v6 && ((v6->OSMetaClassBase::__vftable[4].isEqualTo)(v6, this, a2) & 1) == 0)
  {
    (v4->release)(v4);
    return 0;
  }

  return v4;
}

BOOL AppleBCMWLANChipManagerPCIe4357::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
    AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
    AppleBCMWLANChipManagerPCIe::setCoreCount(this, 9);
    AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4357ChipCores);
    AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 18);
    AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4357ChipWrappers);
    AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
    AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4357ChipMemories);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 8);
    AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4357ChipBackplaneWindows);
    AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
    AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4357ChipUserOTP);
    AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4357ChipOTP);
    AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4357CoreIDTable);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4357UCodeSCRRegionInfo, 0);
    AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4357UCodeSHMRegionInfo, 1);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4357ChipConfigSpaceStateTable);
    AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
    AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 1507328);
    AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
    AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 16);
    AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 1024);
    AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 17239);
    AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 0);
    AppleBCMWLANChipManagerPCIe::setNotSplitArchitecture(this, 1);
    AppleBCMWLANChipManagerPCIe::setBootMSIUnsupported(this, 1);
    AppleBCMWLANChipManagerPCIe::setTrapBeforeFLRUnSupported(this, 1);
    AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
    AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
    v10 = 0;
    while (1)
    {
      BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v10))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
    }

    v10 = 0;
    while (1)
    {
      v7 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
      v8 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
      if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v7, v8, 1, &v10))
      {
        break;
      }

      AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
    }

    v9 = OSDictionary::withCapacity(0x20u);
    return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v9);
  }

  return result;
}

OSObject *AppleBCMWLANChipManagerPCIe4387::withChip(AppleBCMWLANChipManagerPCIe4387 *this, uint64_t a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipManagerPCIe4387MetaClass, &v6))
  {
    return 0;
  }

  v4 = v6;
  if (v6 && ((v6->OSMetaClassBase::__vftable[4].isEqualTo)(v6, this, a2) & 1) == 0)
  {
    (v4->release)(v4);
    return 0;
  }

  return v4;
}

uint64_t AppleBCMWLANChipManagerPCIe4387::initWithChip(OSObject *this, int a2)
{
  result = AppleBCMWLANChipManagerPCIe::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    this[1].ivars = result;
    if (result)
    {
      AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 0);
      AppleBCMWLANChipManagerPCIe::setAWDLSupported(this, 1);
      AppleBCMWLANChipManagerPCIe::setChipNumber(this, a2);
      AppleBCMWLANChipManagerPCIe::setCoreCount(this, 10);
      AppleBCMWLANChipManagerPCIe::setCoreRegionList(this, &kBCOM4387ChipCores);
      AppleBCMWLANChipManagerPCIe::setWrapperCount(this, 19);
      AppleBCMWLANChipManagerPCIe::setWrapperRegionList(this, &kBCOM4387ChipWrappers);
      AppleBCMWLANChipManagerPCIe::setMemoryCount(this, 7);
      AppleBCMWLANChipManagerPCIe::setMemoryRegionList(this, &kBCOM4387ChipMemories);
      AppleBCMWLANChipManagerPCIe::setBackplaneWindowCount(this, 9);
      AppleBCMWLANChipManagerPCIe::setBackplaneWindows(this, &kBCOM4387ChipBackplaneWindows);
      AppleBCMWLANChipManagerPCIe::setOTPCoreID(this, 8);
      AppleBCMWLANChipManagerPCIe::setUserOTPRange(this, &kBCOM4387ChipUserOTP);
      AppleBCMWLANChipManagerPCIe::setChipOTPRange(this, &kBCOM4387ChipOTP);
      AppleBCMWLANChipManagerPCIe::setCoreIDTable(this, kBCOM4387CoreIDTable);
      AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4387UCodeSCRRegionInfo, 0);
      AppleBCMWLANChipManagerPCIe::setUCodeRegionInfo(this, &kBCOM4387UCodeSHMRegionInfo, 1);
      AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveRange(this, &kBCOM4387ChipConfigSpaceStateTable);
      AppleBCMWLANChipManagerPCIe::setConfigSpaceSaveCount(this, 3);
      AppleBCMWLANChipManagerPCIe::setMemoryRAMAddress(this, 7602176);
      AppleBCMWLANChipManagerPCIe::setPCIeHeaderLength(this, 256);
      AppleBCMWLANChipManagerPCIe::setSROMVersion(this, 15);
      AppleBCMWLANChipManagerPCIe::setSROMWordCount(this, 2048);
      AppleBCMWLANChipManagerPCIe::setSROMSignature(this, 4368);
      AppleBCMWLANChipManagerPCIe::setSROMoffsetMacAddress(this, 4);
      AppleBCMWLANChipManagerPCIe::setSROMoffsetSKU(this, 14);
      AppleBCMWLANChipManagerPCIe::setSROMoffsetSignature(this, 2);
      AppleBCMWLANChipManagerPCIe::setMultiFunctionChip(this, 1);
      AppleBCMWLANChipManagerPCIe::setSafeToCaptureSoCRAM(this, 1);
      AppleBCMWLANChipManagerPCIe::setHMAPSupported(this, 1);
      AppleBCMWLANChipManagerPCIe::setHMAPBaseAddress(this, 1408);
      AppleBCMWLANChipManagerPCIe::sethostWakeToggleNotConfigured(this, 1);
      AppleBCMWLANChipManagerPCIe::setM2MResetOnSSResetDisabled(this, 1);
      AppleBCMWLANChipManagerPCIe::setPowerControlRequired(this, 1);
      AppleBCMWLANChipManagerPCIe::setPTMSupport(this, 1);
      v10 = 0;
      while (1)
      {
        BackplaneWindows = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
        PacketCount = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
        if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(BackplaneWindows, PacketCount, 0, &v10))
        {
          break;
        }

        AppleBCMWLANChipManagerPCIe::incrementCoreRemapperCount(this);
      }

      v10 = 0;
      while (1)
      {
        v7 = AppleBCMWLANChipManagerPCIe::getBackplaneWindows(this);
        v8 = AppleBCMWLANPCIeFlowQueue::getPacketCount(this);
        if (!AppleBCMWLANChipManagerPCIe::findRemappableWindow(v7, v8, 1, &v10))
        {
          break;
        }

        AppleBCMWLANChipManagerPCIe::incrementWrapperRemapperCount(this);
      }

      v9 = OSDictionary::withCapacity(0x20u);
      return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(this, v9);
    }
  }

  return result;
}

void AppleBCMWLANChipManagerPCIe4387::free(OSObject *this)
{
  ivars = this[1].ivars;
  if (ivars)
  {
    memset_s(ivars, 8uLL, 0, 8uLL);
    v3 = this[1].ivars;
    if (v3)
    {
      IOFree(v3, 8uLL);
      this[1].ivars = 0;
    }
  }

  AppleBCMWLANChipManagerPCIe::free(this);
}

uint64_t OUTLINED_FUNCTION_3_6(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, ...)
{
  va_start(va, a12);

  return AppleBCMWLANChipManagerPCIe::getChipProvisioningData(v12, a2, va, 0x20uLL, &a12);
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, const char *a2)
{

  return AppleBCMWLANChipManagerPCIe::setChipProvisioningData(v2, a2, v3);
}

OSObject *AppleBCMWLANAudioProtector::withDriver(AppleBCMWLANAudioProtector *this, AppleBCMWLANCore *a2, const OSString *a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANAudioProtectorMetaClass, &v7))
  {
    return 0;
  }

  v5 = v7;
  if (v7 && ((v7->OSMetaClassBase::__vftable[2].getMetaClass)(v7, this, a2) & 1) == 0)
  {
    (v5->release)(v5);
    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANAudioProtector::initWithDriver(OSObject *this, AppleBCMWLANCore *a2, const OSString *a3)
{
  v6 = IO80211WorkSource::init(this, this, 0);
  result = 0;
  if (a2 && v6)
  {
    v8 = IOMallocZeroTyped();
    this[1].OSObjectInterface::__vftable = v8;
    v9 = &this[1].OSObjectInterface;
    if (v8)
    {
      v8[1].init = a2;
      *(*v9 + 32) = OSMetaClassBase::safeMetaCast(*(*v9 + 16), gIOServiceMetaClass);
      *(*v9 + 8) = (*(*a2 + 1952))(a2);
      v10 = *(*v9 + 8);
      if (!v10)
      {
        ClassNameHelper = getClassNameHelper(this);
        IOLog("%s:%s(): Unable to get debug logger\n", ClassNameHelper, "initWithDriver");
        goto LABEL_22;
      }

      (*(*v10 + 8))(v10);
      *(*v9 + 104) = AppleBCMWLANCore::getFaultReporter(*(*v9 + 16));
      (*(**(*v9 + 104) + 8))(*(*v9 + 104));
      **v9 = AppleBCMWLANCore::getCommander(a2);
      v11 = **v9;
      if (!v11)
      {
        AppleBCMWLANAudioProtector::initWithDriver(*v9);
        goto LABEL_22;
      }

      (*(*v11 + 8))(v11);
      if (a3)
      {
        v12 = OSString::withString(a3);
      }

      else
      {
        v12 = 0;
      }

      this[1].OSObjectInterface::__vftable[4].init = v12;
      (*(*this[1].OSObjectInterface::__vftable[1].init + 88))(this[1].OSObjectInterface::__vftable[1].init);
      this[1].OSObjectInterface::__vftable[3].free = IO80211TimerSource::allocWithParams();
      v14 = this[1].OSObjectInterface::__vftable;
      if (!v14[3].free)
      {
        AppleBCMWLANAudioProtector::initWithDriver(v14);
        goto LABEL_22;
      }

      if (AppleBCMWLANAudioProtector::createReportSet(this, v13))
      {
        if (AppleBCMWLANAudioProtector::createReportersAndLegend(this))
        {
          return 1;
        }

        if ((AppleBCMWLANAudioProtector::initWithDriver(&this[1].OSObjectInterface, &v16) & 1) == 0)
        {
LABEL_22:
          result = *v9;
          if (!*v9)
          {
            return result;
          }

          goto LABEL_23;
        }
      }

      else if ((AppleBCMWLANAudioProtector::initWithDriver(&this[1].OSObjectInterface, &v16) & 1) == 0)
      {
        goto LABEL_22;
      }

      result = v16;
LABEL_23:
      memset_s(result, 0x70uLL, 0, 0x70uLL);
      result = *v9;
      if (*v9)
      {
        IOFree(result, 0x70uLL);
        result = 0;
        *v9 = 0;
      }

      return result;
    }

    if (AppleBCMWLANAudioProtector::initWithDriver())
    {
      return 0;
    }

    goto LABEL_22;
  }

  return result;
}

AppleBCMWLANCommander *AppleBCMWLANAudioProtector::sendLDOCommmand(uint64_t a1)
{
  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  v3 = *(v1 + 44);
  v16 = v3;
  isSleeping = AppleBCMWLANCommander::isSleeping(*v1);
  ++*(*v2 + 18);
  if (AppleBCMWLANCore::isWatchdogFailed((*v2)[2]))
  {
    v9 = -528336892;
    goto LABEL_31;
  }

  v5 = *v2;
  if (*(*v2 + 45) == *(*v2 + 44))
  {
    result = v5[1];
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANAudioProtector::sendLDOCommmand(v2);
      }
    }

    return result;
  }

  if (AppleBCMWLANCore::isSendingFWCommandPermitted(v5[2]))
  {
    if (isSleeping)
    {
      AppleBCMWLANCommander::wakeup(**v2);
    }

    if (v3)
    {
      v7 = 0x576C616E41504C6FLL;
    }

    else
    {
      v7 = 0x576C616E41504C66;
    }

    IOSimpleReporter::incrementValue((*v2)[10], v7, 1);
    v8 = **v2;
    v15[0] = &v16;
    v15[1] = 4;
    v9 = AppleBCMWLANCommander::runIOVarSet(v8, "ldo_prot_ovrd", v15, 0, 0);
    if (isSleeping && !AppleBCMWLANCore::isPowerChangeInProgress((*v2)[2]))
    {
      AppleBCMWLANCommander::quiesce(**v2);
    }

    if (!v9)
    {
      *(*v2 + 45) = *(*v2 + 44);
      *(*v2 + 12) = 0;
      if (*(*v2 + 45) == 1)
      {
        v10 = 0x466F726365204F4ELL;
      }

      else
      {
        v10 = 1635087471;
      }

      IOStateReporter::setChannelState((*v2)[11], 0x574946494C444F53uLL, v10);
      v14 = 0;
LABEL_26:
      result = (*v2)[1];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANAudioProtector::sendLDOCommmand(v2, v14);
        }
      }

      return result;
    }

LABEL_31:
    AppleBCMWLANAudioProtector::sendLDOCommmand(v2, v9, v15);
    v14 = v15[0];
    goto LABEL_26;
  }

  v11 = *v2;
  if ((*v2)[1])
  {
    shouldLog = CCLogStream::shouldLog();
    v11 = *v2;
    if (shouldLog)
    {
      CCLogStream::logAlert(v11[1], "[dk] %s@%d:Sending FW command isn't permitted. Rearm the timer\n", "sendLDOCommmand", 336);
      v11 = *v2;
    }
  }

  v13 = *(*v11[7] + 56);

  return v13();
}

BOOL AppleBCMWLANAudioProtector::createReportSet(AppleBCMWLANAudioProtector *this, unsigned int a2)
{
  v3 = OSSet::withCapacity(4, a2);
  v5 = *(this + 8);
  v4 = this + 64;
  *(v5 + 96) = v3;
  v6 = *(*v4 + 96);
  if (!v6 && *(*v4 + 8) && CCLogStream::shouldLog())
  {
    AppleBCMWLANAudioProtector::createReportSet(v4);
  }

  return v6 != 0;
}

uint64_t AppleBCMWLANAudioProtector::setLDOOnRequest(AppleBCMWLANAudioProtector *this, int a2)
{
  v4 = *(this + 8);
  if (*(v4 + 8))
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *(this + 8);
    if (shouldLog)
    {
      CCLogStream::logCrit(*(v4 + 8), "[dk] %s@%d:SetLDOOnRequest %u\n", "setLDOOnRequest", 256, a2);
      v4 = *(this + 8);
    }
  }

  *(v4 + 44) = a2;

  return IO80211WorkSource::signalWorkAvailable(this);
}

uint64_t AppleBCMWLANAudioProtector::freeResources(AppleBCMWLANAudioProtector *this)
{
  v2 = *(this + 8);
  v3 = v2[12];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 8) + 96) = 0;
    v2 = *(this + 8);
  }

  v4 = v2[7];
  if (v4)
  {
    (*(*v4 + 80))(v4);
    (*(**(*(this + 8) + 56) + 16))(*(*(this + 8) + 56));
    *(*(this + 8) + 56) = 0;
    v2 = *(this + 8);
  }

  v5 = v2[8];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 8) + 64) = 0;
    v2 = *(this + 8);
  }

  if (*v2)
  {
    (*(**v2 + 16))(*v2);
    **(this + 8) = 0;
    v2 = *(this + 8);
  }

  v6 = v2[13];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 8) + 104) = 0;
    v2 = *(this + 8);
  }

  result = v2[1];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 8) + 8) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANAudioProtector::free(AppleBCMWLANAudioProtector *this)
{
  AppleBCMWLANAudioProtector::freeResources(this);
  v2 = *(this + 8);
  if (v2)
  {
    memset_s(v2, 0x70uLL, 0, 0x70uLL);
    v3 = *(this + 8);
    if (v3)
    {
      IOFree(v3, 0x70uLL);
      *(this + 8) = 0;
    }
  }

  return IO80211WorkSource::free(this);
}

uint64_t AppleBCMWLANAudioProtector::checkForWork(AppleBCMWLANAudioProtector *this)
{
  v1 = *(this + 8);
  if (*(v1 + 44) != *(v1 + 45))
  {
    if (*(v1 + 8))
    {
      shouldLog = CCLogStream::shouldLog();
      v1 = *(this + 8);
      if (shouldLog)
      {
        if (*(v1 + 44))
        {
          v5 = "on";
        }

        else
        {
          v5 = "off";
        }

        CCLogStream::logNotice(*(v1 + 8), "[dk] %s@%d:Will send a LDO %s command\n", "checkForWork", 314, v5);
        v1 = *(this + 8);
      }
    }

    (*(**(v1 + 56) + 64))(*(v1 + 56), 1);
  }

  return 0;
}

uint64_t AppleBCMWLANAudioProtector::configureReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unsigned int *a5)
{
  v6 = a3;
  v13 = 0;
  v8 = &this[1].OSObjectInterface;
  v14 = IOReporter::configureAllReports(this[1].OSObjectInterface::__vftable[6].init, a2, a3, &v13, a5);
  free = v8->free;
  v10 = v8->__vftable[6].free;
  ClassNameHelper = getClassNameHelper(this);
  v14 = testPostConfigureAllAndAdjustV3(free, v10, ClassNameHelper, v6, &v14, a4, v13, -2);
  if (v14)
  {
    AppleBCMWLANAudioProtector::configureReport(v8, this);
  }

  return v14;
}

uint64_t AppleBCMWLANAudioProtector::updateReport(OSObject *this, OSCollection *a2, OSData *a3, unsigned int *a4, unint64_t *a5, unint64_t *a6, IOMemoryDescriptor *a7)
{
  v24 = 0;
  free = this[1].free;
  ClassNameHelper = getClassNameHelper(this);
  testPreUpdateAllReportersV3(free, ClassNameHelper, this[1].OSObjectInterface::__vftable[6].init, *a5, *a6, a7);
  updated = IOReporter::updateAllReports(this[1].OSObjectInterface::__vftable[6].init, a2, a3, &v24, *a5, *a6, a7, v16);
  v17 = this[1].OSObjectInterface::__vftable;
  v18 = v17->free;
  v19 = v17[6].free;
  v20 = getClassNameHelper(this);
  updated = testPostUpdateAllAndAdjustV3(v18, v19, v20, &updated, v24, a4, a5, a6, -2);
  if (updated && this[1].free && CCLogStream::shouldLog())
  {
    v22 = this[1].free;
    v23 = getClassNameHelper(this);
    CCLogStream::logEmergency(v22, "[dk] %s@%d:DKReporter::%s::%s(%d) testAndAdjustOffsetAndCapacity failed count %u outElementCount %u offset %llu capacity %llu", "updateReport", 493, v23, "updateReport", 493, v24, *a4, *a5, *a6);
  }

  return updated;
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a2 = *a1;
  return *(v2 + 8);
}

char *convertBcomTagToString(int a1)
{
  v1 = &off_1003C8F70;
  v2 = 97;
  while (*(v1 - 2) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

char *convertBcomSetToString(int a1)
{
  v1 = &off_1003C9880;
  v2 = 44;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

AppleBCMWLANCoreDbg *AppleBCMWLANCoreDbg::withCoreDriver(AppleBCMWLANCoreDbg *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANCoreDbgMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANCoreDbg::initWithCoreDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANCoreDbg::initWithCoreDriver(AppleBCMWLANCoreDbg *this, AppleBCMWLANCore *a2)
{
  if (a2)
  {
    (*(*a2 + 1952))(a2);
  }

  result = IO80211CoreDbg::initWithOptions();
  if (result)
  {
    result = IOMallocZeroTyped();
    *(this + 6) = result;
    if (result)
    {
      *result = a2;
      result = **(this + 6);
      if (result)
      {
        *(*(this + 6) + 8) = (*(*result + 1952))(result);
        return *(*(this + 6) + 8) != 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::free(AppleBCMWLANCoreDbg *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    memset_s(v2, 0x10uLL, 0, 0x10uLL);
    v3 = *(this + 6);
    if (v3)
    {
      IOFree(v3, 0x10uLL);
      *(this + 6) = 0;
    }
  }

  return IO80211CoreDbg::free(this);
}

uint64_t AppleBCMWLANCoreDbg::dbgTriggerWatchdog(AppleBCMWLANCore ***this, char *a2)
{
  result = IOMallocZeroData();
  if (result)
  {
    v5 = result;
    strlcpy((result + 10), a2, 0x80uLL);
    v6 = AppleBCMWLANCoreDbg::cmdTriggerWatchdog(v5, *this[6]);
    IOFreeData();
    return v6;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdTriggerWatchdog(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = v7;
  v9 = *(a1 + 10);
  if (v9 != 84)
  {
    if (v9 == 116 && (v9 = *(a1 + 11), v9 == 116))
    {
      if (*(a1 + 12))
      {
        goto LABEL_13;
      }
    }

    else if (116 != v9)
    {
      goto LABEL_13;
    }

    AppleBCMWLANCore::featureFlagClearBit(a2, 23);
LABEL_13:
    if (strnstr((a1 + 10), "SoftErrorTriggeredChipReset", 0x80uLL))
    {
      if (v8 && CCLogStream::shouldLog())
      {
        CCLogStream::logNotice(v8, "[dk] %s@%d:Processing: SoftErrorTriggeredChipReset\n", "cmdTriggerWatchdog", 1134);
      }

      v12 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " Triggering Watchdog Reset because of Soft-Error\n");
      result = IOMallocZeroData();
      if (result)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        *v23 = 0u;
        v24 = 0u;
        if (IO80211ThreadProcessInfo::getProcessName(v23, 0x80, v13))
        {
          IO80211Controller::getProcessName(a2, v23, 0x80uLL);
        }

        FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::reportFault(FaultReporter, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x47Cu, "cmdTriggerWatchdog", 0, -469793501, "client=%s,call=cmdTriggerWatchdog", v23);
LABEL_29:
        *(v4 + 3520) = v12;
        IOFreeData();
        return 0;
      }
    }

    else if (strnstr((a1 + 10), "TriggerCoreCapture", 0x80uLL))
    {
      if (v8 && CCLogStream::shouldLog())
      {
        CCLogStream::logNotice(v8, "[dk] %s@%d:Processing: TriggerCoreCapture\n", "cmdTriggerWatchdog", 1157);
      }

      v12 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " Triggering CoreCapture\n");
      result = IOMallocZeroData();
      if (result)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        *v23 = 0u;
        v24 = 0u;
        if (IO80211ThreadProcessInfo::getProcessName(v23, 0x80, v15))
        {
          IO80211Controller::getProcessName(a2, v23, 0x80uLL);
        }

        v16 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::reportFault(v16, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x493u, "cmdTriggerWatchdog", 0, -469793485, "client=%s,call=cmdTriggerCoreCapture", v23);
        goto LABEL_29;
      }
    }

    else if (strnstr((a1 + 10), "w", 0x80uLL) || strnstr((a1 + 10), "t", 0x80uLL) || strnstr((a1 + 10), "tt", 0x80uLL))
    {
      v12 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " Triggering Watchdog Reset\n");
      result = IOMallocZeroData();
      if (result)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        *v23 = 0u;
        v24 = 0u;
        if (IO80211ThreadProcessInfo::getProcessName(v23, 0x80, v17))
        {
          IO80211Controller::getProcessName(a2, v23, 0x80uLL);
        }

        v18 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::reportFault(v18, 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x4A9u, "cmdTriggerWatchdog", 0, -469793532, "client=%s,call=cmdTriggerWatchdog", v23);
        if (strnstr((a1 + 10), "-block", 0x80uLL))
        {
          clock_interval_to_deadline();
          v19 = (*(*a2 + 104))(a2);
          v20 = AppleBCMWLANCore::getFaultReporter(a2);
          (*(*v19 + 80))(v19, v20, 0xAAAAAAAAAAAAAAAALL);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v21 = *(a1 + 10);
      if (v21 == 87)
      {
        v22 = -*(a1 + 11);
      }

      else
      {
        v22 = 87 - v21;
      }

      if (v22)
      {
        *(v4 + 3520) = 0;
        return 19;
      }

      v12 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "Triggering Watchdog Reset\n");
      result = AppleBCMWLANCore::watchdog(a2, 0);
    }

    v11 = v12;
    goto LABEL_45;
  }

  if (*(a1 + 11))
  {
    goto LABEL_13;
  }

  LODWORD(v11) = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Trap via UART will be supported by radar://82272901\n");
  result = 0;
  v11 = v11;
LABEL_45:
  *(v4 + 3520) = v11;
  return result;
}

uint64_t AppleBCMWLANCoreDbg::dbgTriggerCrash(uint64_t a1, int a2)
{
  v4 = (*(***(a1 + 48) + 1952))(**(a1 + 48));
  v5 = v4;
  if (a2 <= 8 && v4 && CCLogStream::shouldLog())
  {
    AppleBCMWLANCoreDbg::dbgTriggerCrash(a2, v5);
  }

  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        IOLog("User induced Dext Core Terminate\n");
        Bus = **(a1 + 48);
      }

      else
      {
        if (a2 != 8)
        {
LABEL_22:
          if (v5 && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid command id %d\n", "dbgTriggerCrash", 945, a2);
          }

          return 0;
        }

        IOLog("User induced Dext Bus Terminate\n");
        Bus = AppleBCMWLANCore::getBus(**(a1 + 48));
      }

      IOService::Terminate(Bus, 0, 0);
      return 0;
    }

    if (a2 != 5)
    {
      AppleBCMWLANCoreDbg::dbgTriggerCrash();
    }

    v9 = AppleBCMWLANCore::getBus(**(a1 + 48));
    (*(*v9 + 440))(v9);
  }

  else
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        Commander = AppleBCMWLANCore::getCommander(**(a1 + 48));
        AppleBCMWLANCommander::crashCommander(Commander);
      }

      if (a2 == 2)
      {
        v6 = AppleBCMWLANCore::getCommander(**(a1 + 48));
        AppleBCMWLANCommander::crashIOVar(v6);
LABEL_15:
        v8 = AppleBCMWLANCore::getBus(**(a1 + 48));
        (*(*v8 + 432))(v8);
        return 0;
      }

      goto LABEL_22;
    }

    if (a2 != 3)
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPrintStats(uint64_t a1, IOService *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (a2->OSObject::OSMetaClassBase::__vftable[34].free)(a2);
  v7 = AppleBCMWLANCore::captureDriverState(a2, 3825173763, v5, 0, v6);
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDebugAction(uint64_t a1, AppleBCMWLANCore *a2)
{
  v3 = IO80211CoreDbg::parseUInt32FromCMD();
  Bus = AppleBCMWLANCore::getBus(a2);
  (*(*Bus + 248))(Bus, v3, 0, 0, 0);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdForceReAssoc(int a1, AppleBCMWLANCore *this)
{
  FaultReporter = AppleBCMWLANCore::getFaultReporter(this);

  return CCFaultReporter::reportFault(FaultReporter, 0x24u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x3DBu, "cmdForceReAssoc", 0, -528348671, 0);
}

uint64_t AppleBCMWLANCoreDbg::cmdForceReCalibrate(int a1, AppleBCMWLANCore *this)
{
  FaultReporter = AppleBCMWLANCore::getFaultReporter(this);

  return CCFaultReporter::reportFault(FaultReporter, 0x24u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x3E3u, "cmdForceReCalibrate", 0, -528348670, 0);
}

uint64_t AppleBCMWLANCoreDbg::cmdForceMacPhyReset(int a1, AppleBCMWLANCore *this)
{
  FaultReporter = AppleBCMWLANCore::getFaultReporter(this);

  return CCFaultReporter::reportFault(FaultReporter, 0x24u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x3EBu, "cmdForceMacPhyReset", 0, -528348669, 0);
}

uint64_t AppleBCMWLANCoreDbg::cmdWorkQueueDelay(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = IO80211CoreDbg::parseUInt32FromCMD();
  if (!*(v15 + 6))
  {
    v11 = 0;
    v10 = 3758097090;
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Inducing workQueue delay: %d ms\n", *(v15 + 6));
  v9 = (*(*a2 + 88))(a2);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = ___ZN19AppleBCMWLANCoreDbg17cmdWorkQueueDelayEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke;
  v13[3] = &__block_descriptor_tmp_2;
  v13[4] = &v14;
  v10 = (*(*v9 + 112))(v9, v13);
  v11 = v8;
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v11;
  }

LABEL_7:
  _Block_object_dispose(&v14, 8);
  return v10;
}

uint64_t ___ZN19AppleBCMWLANCoreDbg17cmdWorkQueueDelayEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) *= 1000;
  IODelay(*(*(*(a1 + 32) + 8) + 24));
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::trafficNotificationCallback(const OSMetaClassBase *this, OSObject *a2, void *a3, int a4, int a5)
{
  v7 = a3;
  v8 = OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANCoreMetaClass);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  result = (v8->__vftable[48].Dispatch)(v8);
  if (result)
  {
    (v8->__vftable[48].Dispatch)(v8);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (v8->__vftable[48].Dispatch)(v8);
      return CCLogStream::logAlert(v10, "[dk] %s@%d:Now:%llu elapsedMS:%u rtPacketCount:%u bgPacketCount:%u\n", "trafficNotificationCallback", 1036, 0, v7, a4, a5);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdTrafficNotification(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 88))(a2);
  if (AppleBCMWLANCore::getPrimaryInterface(a2))
  {
    PrimaryInterface = AppleBCMWLANCore::getPrimaryInterface(a2);
    TrafficMonitor = IO80211InfraInterface::getTrafficMonitor(PrimaryInterface);
  }

  else
  {
    TrafficMonitor = 0;
  }

  if (a1)
  {
    v7 = *(a1 + 245208);
    v8 = *(a1 + 245200);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 1952))(a2);
  v10 = v9;
  if (v4)
  {
    if (TrafficMonitor)
    {
      if (!a1)
      {
        return 0;
      }

      if (strncmp("traffic-notification report-interval", (a1 + 10), 0x24uLL))
      {
        if (!strncmp("traffic-notification rt-packet-count", (a1 + 10), 0x24uLL))
        {
          v14 = IO80211CoreDbg::parseUInt32FromCMD();
          result = 0;
          v12 = 0;
          AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::realtimePacketLimit = v14;
          goto LABEL_31;
        }

        if (!strncmp("traffic-notification bg-packet-count", (a1 + 10), 0x24uLL))
        {
          v15 = IO80211CoreDbg::parseUInt32FromCMD();
          result = 0;
          v12 = 0;
          AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::backgroundPacketLimit = v15;
          goto LABEL_31;
        }

        if (!strncmp("traffic-notification enable", (a1 + 10), 0x80uLL))
        {
          if (AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification)
          {
            v16 = IO80211Print(v10, 1, -1, 0, v7, 0, v8, "Traffic notification already created\n");
          }

          else
          {
            v22 = AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::reportIntervalMS;
            v23 = AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::realtimePacketLimit;
            TrafficNotification = IO80211TrafficMonitor::createTrafficNotification();
            AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification = TrafficNotification;
            if (TrafficNotification)
            {
              (*(*v4 + 64))(v4, TrafficNotification);
              (*(*AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification + 64))(AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
              v16 = IO80211Print(v10, 1, -1, 0, v7, 0, v8, "Created traffic notification with config reportIntervalMS:%u realTimePacketCount:%u backgroundPackCount:%u\n", v22, v23);
            }

            else
            {
              v16 = IO80211Print(v10, 1, -1, 0, v7, 0, v8, "Failed to create traffic notification\n", v19, v20, v21, a2);
            }
          }
        }

        else
        {
          if (strncmp("traffic-notification disable", (a1 + 10), 0x80uLL))
          {
            result = 0;
            v12 = 0;
LABEL_31:
            *(a1 + 245184) = v12;
            return result;
          }

          if (AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification)
          {
            (*(*AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification + 72))(AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
            (*(*v4 + 72))(v4, AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
            if (AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification)
            {
              (*(*AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification + 16))(AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification);
              AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::trafficNotification = 0;
            }

            v16 = IO80211Print(v10, 1, -1, 0, v7, 0, v8, "Traffic notification destroyed\n");
          }

          else
          {
            v16 = IO80211Print(v10, 1, -1, 0, v7, 0, v8, "Traffic notification not created yet\n");
          }
        }

        v12 = v16;
        result = 0;
        goto LABEL_31;
      }

      v13 = IO80211CoreDbg::parseUInt32FromCMD();
      result = 0;
      v12 = 0;
      AppleBCMWLANCoreDbg::cmdTrafficNotification(apple80211_debug_command *,AppleBCMWLANCore *)::reportIntervalMS = v13;
      goto LABEL_31;
    }

    v18 = IO80211Print(v9, 1, -1, 0, v7, 0, v8, "Failed to get traffic monitor\n");
  }

  else
  {
    v18 = IO80211Print(v9, 1, -1, 0, v7, 0, v8, "Failed to get workQueue\n");
  }

  v12 = v18;
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdQueryBSSInfo(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    *v8 = 1936;
    v21[0] = v8;
    v21[1] = 0x79000880790;
    Commander = AppleBCMWLANCore::getCommander(a2);
    *&__dst[0] = v9;
    *(&__dst[0] + 1) = 4;
    v11 = AppleBCMWLANCommander::runIOCtlGet(Commander, 136, __dst, v21, 0);
    if (v11)
    {
      v12 = (*(*a2 + 112))(a2, v11);
      v13 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Failed to get BSS Info, %s\n", v12);
      if (!a1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = IO80211HexdumpIfKernel();
      v15 = IO80211Print(v7, 1, -1, 0, v5, v14, v6 - v14, "\n", v6) + v14;
      v23 = 0;
      memset(__dst, 0, sizeof(__dst));
      if (*(v9 + 22) >= 0x20u)
      {
        v16 = 32;
      }

      else
      {
        v16 = *(v9 + 22);
      }

      memcpy(__dst, v9 + 23, v16);
      v17 = IO80211Print(v7, 1, -1, 0, v5, v15, v6 - v15, " SSID = %s\n", __dst) + v15;
      v18 = IO80211Print(v7, 1, -1, 0, v5, v17, v6 - v17, " BSSID = %02X:%02X:%02X:%02X:%02X:%02X\n", *(v9 + 12), *(v9 + 13), *(v9 + 14), *(v9 + 15), *(v9 + 16), *(v9 + 17)) + v17;
      v19 = IO80211Print(v7, 1, -1, 0, v5, v18, v6 - v18, " RSSI = %d period %u\n", *(v9 + 41), *(v9 + 9));
      if (!a1)
      {
        goto LABEL_15;
      }

      v13 = v19 + v18;
    }

    *(v4 + 3520) = v13;
LABEL_15:
    IOFreeData();
    return v11;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLDisableAMPDU(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = AppleBCMWLANCore::forceDisableAwdlAmpdu(a2);
  AppleBCMWLANCore::setForceDisableAwdlAmpdu(a2, v8 ^ 1);
  if (AppleBCMWLANCore::forceDisableAwdlAmpdu(a2))
  {
    AppleBCMWLANCore::setForceAwdlAmpdu(a2, 0);
  }

  v9 = AppleBCMWLANCore::forceDisableAwdlAmpdu(a2);
  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "fForceDisableAwdlAmpdu -> %u\n", v9);
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLForceAMPDU(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = AppleBCMWLANCore::forceAwdlAmpdu(a2);
  AppleBCMWLANCore::setForceAwdlAmpdu(a2, v8 ^ 1);
  v9 = AppleBCMWLANCore::forceAwdlAmpdu(a2);
  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " awdl force ampdu -> %u\n", v9);
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLPeerCache(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dumpPeerCache(ProximityInterface, v5, 0, v6);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLPeers(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dumpAwdlPeers(ProximityInterface, v5, 0, v6);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLSNAP(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  LooseSnapHeader = AppleBCMWLANCore::getLooseSnapHeader(a2);
  AppleBCMWLANCore::setLooseSnapHeader(a2, LooseSnapHeader ^ 1);
  v9 = AppleBCMWLANCore::getLooseSnapHeader(a2);
  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " fLooseSnapHeader -> %lu\n", v9);
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLDump(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dump(ProximityInterface, v5, 0, v6);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdAWDLStats(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getProximityInterface(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
  v8 = AppleBCMWLANProximityInterface::dumpAwdlStats(ProximityInterface, v5, 0, v6);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdCommanderDump(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANCore::getCommander(a2))
  {
    v8 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  Commander = AppleBCMWLANCore::getCommander(a2);
  v8 = AppleBCMWLANCommander::dumpState(Commander, v5, 0, v6);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdCaptureDebugInfo(uint64_t a1, IO80211Controller *a2)
{
  v4 = strnstr((a1 + 10), "-msg=", 0x80uLL);
  if (IOMallocZeroData())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *v11 = 0u;
    v12 = 0u;
    if (IO80211ThreadProcessInfo::getProcessName(v11, 0x80, v5))
    {
      IO80211Controller::getProcessName(a2, v11, 0x80uLL);
    }

    FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
    v7 = "";
    if (v4)
    {
      v7 = v4 + 5;
    }

    CCFaultReporter::reportFault(FaultReporter, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCoreDbg.cpp", 0x569u, "cmdCaptureDebugInfo", 0, -469793533, "client=%s,msg=%s,call=cmdCaptureDebugInfo", v11, v7);
    if (strnstr((a1 + 10), "-block", 0x80uLL))
    {
      clock_interval_to_deadline();
      v8 = (*(*a2 + 104))(a2);
      v9 = AppleBCMWLANCore::getFaultReporter(a2);
      (*(*v8 + 80))(v8, v9, 0xAAAAAAAAAAAAAAAALL);
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdChannel(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  CurrentSupportedChannels = AppleBCMWLANCore::getCurrentSupportedChannels(a2, v5, 0, v6);
  if (a1)
  {
    *(v4 + 3520) = CurrentSupportedChannels;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpEventBits(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  v7 = AppleBCMWLANCore::dumpEventBitField(a2, v5, 0, v6);
  if (a1)
  {
    *(v4 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetExtendedDTIM(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = v8;
  v26 = v8;
  if (v8 >= 0x100)
  {
    v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: trying to set extended dtim to %d (max is 255)\n", v8);
    result = 0;
    if (!a1)
    {
      return result;
    }

LABEL_14:
    *(v4 + 3520) = v10;
    return result;
  }

  v25 = 0;
  Commander = AppleBCMWLANCore::getCommander(a2);
  v23 = &v25;
  v24 = 8;
  if (AppleBCMWLANCommander::runIOVarSet(Commander, "bcn_li_bcn", &v23, 0, 0))
  {
    v13 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: cannot set bcn wake up to 1: ret %x\n", v25);
  }

  else
  {
    v13 = 0;
  }

  AppleBCMWLANCore::setExtendedDTIM(a2, v9);
  AppleBCMWLANCore::setDbgExtDtimInSleep(a2, v9);
  DbgExtDtimInSleep = AppleBCMWLANCore::getDbgExtDtimInSleep(a2);
  AppleBCMWLANCore::setCurrentExtendedDTIM(a2, DbgExtDtimInSleep);
  v15 = AppleBCMWLANCore::getCommander(a2);
  v23 = &v26;
  v24 = 4;
  v16 = AppleBCMWLANCommander::runIOVarSet(v15, "bcn_li_dtim", &v23, 0, 0);
  v17 = v13;
  v18 = v26;
  v19 = v6 - v13;
  if (v16)
  {
    v20 = v25;
    v21 = (*(*a2 + 112))(a2, v16);
    v22 = IO80211Print(v7, 1, -1, 0, v5, v17, v19, " Error: cannot set extended dtim to %d: ret %x: %s\n", v18, v20, v21);
    result = 3758097084;
  }

  else
  {
    v22 = IO80211Print(v7, 1, -1, 0, v5, v13, v19, " set extended dtim to %d\n", v26);
    result = 0;
  }

  v10 = v17 + v22;
  if (a1)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdFilterAdd(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (__PAIR64__(*(a1 + 21), *(a1 + 20)) != 0x500000004DLL || *(a1 + 22) != 44)
  {
    v16 = 0;
LABEL_18:
    result = 0;
    *(v4 + 3520) = v16;
    return result;
  }

  v8 = v7;
  v9 = IO80211CoreDbg::parseSInt32FromCMD();
  if (AppleBCMWLANCore::getMPOffetsCount(a2) >= 6)
  {
    IO80211Print(v8, 1, -1, 0, v5, 0, v6, " Error, maximal MP packet filters configured@ %ld\n", v9);
    return 3758097086;
  }

  else
  {
    if (AppleBCMWLANCore::getMPOffetsCount(a2) && AppleBCMWLANCore::getWOMPFilterConfigured(a2))
    {
      if (AppleBCMWLANCore::getMPOffetsCount(a2))
      {
        v21 = v9;
        v10 = 0;
        LODWORD(v11) = 0;
        do
        {
          v23 = v10 + 104;
          v12 = IO80211Print(v8, 1, -1, 0, v5, v11, v6 - v11, " Deleting old custom Magic Packet filter %u (%lu) \n", v10, (v10 + 104));
          Commander = AppleBCMWLANCore::getCommander(a2);
          v22[0] = &v23;
          v22[1] = 4;
          v14 = AppleBCMWLANCommander::runIOVarSet(Commander, "pkt_filter_delete", v22, 0, 0);
          if (v14 && v8)
          {
            v15 = v14;
            if (CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(v8, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdFilterAdd", 1506, v15);
            }
          }

          v11 = (v11 + v12);
          ++v10;
        }

        while (v10 < AppleBCMWLANCore::getMPOffetsCount(a2));
        v9 = v21;
      }

      else
      {
        v11 = 0;
      }

      AppleBCMWLANCore::setWOMPFilterConfigured(a2, 0);
      AppleBCMWLANCore::setMPOffetsCount(a2, 0);
    }

    else
    {
      v11 = 0;
    }

    v18 = *(a2 + 9);
    v19 = *(v18 + 19848);
    *(v18 + 19848) = v19 + 1;
    *(v18 + 4 * v19 + 10312) = v9;
    v20 = IO80211Print(v8, 1, -1, 0, v5, v11, v6 - v11, " Adding Magic Packet filter for offset %ld\n", v9);
    if (a1)
    {
      v16 = (v20 + v11);
      goto LABEL_18;
    }

    return 0;
  }
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpFilters(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Current Magic Packet filters:\n");
  if (AppleBCMWLANCore::getMPOffetsCount(a2) && AppleBCMWLANCore::getMPOffetsCount(a2) >= 1)
  {
    v9 = 2578;
    do
    {
      v8 += IO80211Print(v7, 1, -1, 0, v5, v8, v6 - v8, " Custom Wake on Magic Packet filter at offset %ld \n", *(*(a2 + 9) + 4 * v9));
      MPOffetsCount = AppleBCMWLANCore::getMPOffetsCount(a2);
      v11 = v9 - 2577;
      ++v9;
    }

    while (v11 < MPOffetsCount);
  }

  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdFaultReporter(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (a1)
  {
    if (!strncmp("fr enable", (a1 + 10), 0x80uLL))
    {
      FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
      v15 = 1;
    }

    else
    {
      if (strncmp("fr disable", (a1 + 10), 0x80uLL))
      {
        if (strncmp("fr dump", (a1 + 10), 7uLL))
        {
          if (strncmp("fr trigger", (a1 + 10), 0xAuLL))
          {
            goto LABEL_9;
          }

          v20 = IO80211CoreDbg::parseUInt32FromCMD();
          v21 = (*(*a2 + 112))(a2, v20);
          v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Try to trigger errorcode %d: %s\n", v20, v21);
          v22 = AppleBCMWLANCore::getFaultReporter(a2);
          CCFaultReporter::induceErrorCode(v22, v20, "AppleBCMWLANCoreDbg");
LABEL_37:
          *(v4 + 3520) = v9;
          return 0;
        }

        v19 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::dumpClientListAndHistory(v19);
LABEL_20:
        v9 = 0;
        goto LABEL_37;
      }

      FaultReporter = AppleBCMWLANCore::getFaultReporter(a2);
      v15 = 0;
    }

    CCFaultReporter::setEnable(FaultReporter, v15);
    goto LABEL_20;
  }

LABEL_9:
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v8 > 4)
  {
    if (v8 > 6)
    {
      if (v8 == 7)
      {
        v23 = IO80211CoreDbg::parseUInt32FromCMD();
        v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "set Action %d\n", v23);
        v24 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::setAction(v24, v23);
        goto LABEL_36;
      }

      if (v8 == 8)
      {
        v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "clear all Action\n");
        v18 = AppleBCMWLANCore::getFaultReporter(a2);
        CCFaultReporter::clearAction(v18);
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v8 == 5)
    {
      v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "enable CoreCapture\n");
      v12 = AppleBCMWLANCore::getFaultReporter(a2);
      v13 = 1;
    }

    else
    {
      v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "disable CoreCapture\n");
      v12 = AppleBCMWLANCore::getFaultReporter(a2);
      v13 = 0;
    }

    CCFaultReporter::enableCoreCapture(v12, v13);
  }

  else
  {
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "enable CollectImmediateFaultData\n");
        v10 = AppleBCMWLANCore::getFaultReporter(a2);
        v11 = 1;
        goto LABEL_29;
      }

      if (v8 == 2)
      {
        v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "disable CollectImmediateFaultData\n");
        v10 = AppleBCMWLANCore::getFaultReporter(a2);
        v11 = 0;
LABEL_29:
        CCFaultReporter::enableCollectImmediateFaultData(v10, v11);
        goto LABEL_36;
      }

LABEL_35:
      v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "1: enable CollectImmediateFaultData\n2: disable CollectImmediateFaultData \n3. enable ColllectDeferredFaultData\n4. disable CollectDeferredFaultData\n5. enable CoreCapture\n6. disable CoreCapture\n7. set action flag\n8. clear action flag\n");
      goto LABEL_36;
    }

    if (v8 == 3)
    {
      v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "enable ColllectDeferredFaultData\n");
      v16 = AppleBCMWLANCore::getFaultReporter(a2);
      v17 = 1;
    }

    else
    {
      v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "disable ColllectDeferredFaultData\n");
      v16 = AppleBCMWLANCore::getFaultReporter(a2);
      v17 = 0;
    }

    CCFaultReporter::enableCollectDeferredFaultData(v16, v17);
  }

LABEL_36:
  if (a1)
  {
    goto LABEL_37;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPrintPowerMgmtParams(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  ExtendedDTIM = AppleBCMWLANCore::getExtendedDTIM(a2);
  v9 = *(*(a2 + 9) + 19832);
  v10 = *(*(a2 + 9) + 19844);
  CurrentExtendedDTIM = AppleBCMWLANCore::getCurrentExtendedDTIM(a2);
  v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " --extdtim=%d bcn=%d, inact2extdtiom=%d [%d]\n", ExtendedDTIM, v9, v10, CurrentExtendedDTIM);
  if (a1)
  {
    *(v4 + 3520) = v12;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdHaltDriver(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Halting driver\n");
  AppleBCMWLANCore::halt(a2);
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetInactiveDTIM(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v8 <= 0x2710)
  {
    *(a2[9] + 19844) = v8;
    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set inactivity to extended dtim to %d\n", v8);
  }

  else
  {
    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: trying to set inactivity to extended dtim to %d (max is 10000)\n", v8);
  }

  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdKeepAliveDA(uint64_t a1, void *a2)
{
  v14 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v15 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v15 = 0;
  }

  v5 = (*(*a2 + 1952))(a2);
  memset(v16, 170, sizeof(v16));
  v12 = v5;
  v13 = v4;
  v6 = IO80211Print(v5, 1, -1, 0, v4, 0, v15, " parsing  %s\n", (a1 + 22));
  if (sscanf((a1 + 22), " %x:%x:%x:%x:%x:%x", v16, v16 + 4, &v16[1], &v16[1] + 4, &v16[2], &v16[2] + 4) != 6)
  {
    v9 = 3758097090;
    v10 = IO80211Print(v12, 1, -1, 0, v13, v6, v15 - v6, " Error: bad MAC address %s\n", (a1 + 22));
    if (!a1)
    {
      return v9;
    }

    v6 += v10;
LABEL_11:
    *(v14 + 3520) = v6;
    return v9;
  }

  v7 = 0;
  v8 = 10348;
  do
  {
    *(a2[9] + v8++) = *(v16 + v7);
    v7 += 4;
  }

  while (v7 != 24);
  v9 = 0;
  if (a1)
  {
    goto LABEL_11;
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdKeepAliveIP(uint64_t a1, void *a2)
{
  v15 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (*(*a2 + 1952))(a2);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *(a2[9] + 10356) = 0;
  v7 = (a1 + 28);
  v16 = a1;
  v8 = IO80211Print(v6, 1, -1, 0, v4, 0, v5, " parsing  %s\n", (a1 + 28));
  if (sscanf(v7, " %d.%d.%d.%d", &v17, &v17 + 4, &v18, &v18 + 4) != 4)
  {
    v13 = 3758097090;
    v12 = IO80211Print(v6, 1, -1, 0, v4, v8, v5 - v8, " Error: bad Target IP address %s\n", v7);
    if (!v16)
    {
      return v13;
    }

LABEL_10:
    *(v15 + 3520) = v12 + v8;
    return v13;
  }

  v9 = 0;
  v10 = &v17;
  do
  {
    v11 = *v10;
    v10 = (v10 + 4);
    *(a2[9] + 10356) += v11 << v9;
    v9 += 8;
  }

  while (v9 != 32);
  v12 = IO80211Print(v6, 1, -1, 0, v4, v8, v5 - v8, " Target IP %lx\n", *(a2[9] + 10356));
  v13 = 0;
  if (v16)
  {
    goto LABEL_10;
  }

  return v13;
}

uint64_t AppleBCMWLANCoreDbg::toggleLogFlags(AppleBCMWLANCoreDbg *this, AppleBCMWLANCore *a2)
{
  v4 = (*(*this + 1952))(this);
  shouldLog = CCLogStream::shouldLog(v4, a2);
  v6 = *(*(*this + 1952))(this);
  if (shouldLog)
  {
    (*(v6 + 136))();
    v7 = (*(*this + 1952))(this);
    (*(*v7 + 176))(v7, a2);
  }

  else
  {
    (*(v6 + 128))();
    v8 = (*(*this + 1952))(this);
    (*(*v8 + 168))(v8, a2);
  }

  return shouldLog;
}

uint64_t AppleBCMWLANCoreDbg::setLogFlags(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 1952))(a1);
  (*(*v4 + 128))(v4, a2);
  v5 = *(*(*(*a1 + 1952))(a1) + 168);

  return v5();
}

uint64_t AppleBCMWLANCoreDbg::clearLogFlags(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 1952))(a1);
  (*(*v4 + 136))(v4, a2);
  v5 = *(*(*(*a1 + 1952))(a1) + 176);

  return v5();
}

uint64_t AppleBCMWLANCoreDbg::cmdLogging(uint64_t a1, IO80211Controller *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      v9 = strnlen((a1 + 10), 0x100uLL);
      if (v9 == 15 && !strncasecmp((a1 + 10), "log_bus_failure", 0xFuLL))
      {
        *(*(a2 + 9) + 11329) ^= 1u;
        v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "fLogBusFailure -> %u\n", *(*(a2 + 9) + 11329));
      }

      else
      {
        if (!strncasecmp((a1 + 10), "log-rt=", 7uLL))
        {
          *(*(a2 + 9) + 18324) = strtoul((a1 + 17), 0, 10);
        }

        else
        {
          if (strncasecmp((a1 + 10), "log-rt", 6uLL))
          {
            if (!strncasecmp((a1 + 10), "log-driver=", 0xBuLL))
            {
              v12 = strtoul((a1 + 21), 0, 10);
              IO80211SetBPFLoggerTarget(a2);
              v10 = v12 != 0;
              goto LABEL_22;
            }

            if (v9 == 12)
            {
              if (!strncasecmp((a1 + 10), "log-datapath", 0xCuLL))
              {
                *(*(a2 + 9) + 11328) ^= 1u;
                v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "fDataPathDebug ---> %u\n", *(*(a2 + 9) + 11328));
                goto LABEL_127;
              }

              if (strncasecmp((a1 + 10), "log-datapath=", 0xDuLL))
              {
                goto LABEL_67;
              }
            }

            else
            {
              if (v9 == 11)
              {
                if (!strncasecmp((a1 + 10), "log-credits", 0xBuLL))
                {
                  if (*(a1 + 21) == 61)
                  {
                    *(*(a2 + 9) + 14184) = strtoul((a1 + 22), 0, 10) != 0;
                  }

                  else
                  {
                    *(*(a2 + 9) + 14184) ^= 1u;
                  }

                  v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "fLogCredits ---> %u\n", *(*(a2 + 9) + 14184));
                  goto LABEL_127;
                }
              }

              else if (v9 == 10 && !strncasecmp((a1 + 10), "log-driver", 0xAuLL))
              {
                IO80211SetBPFLoggerTarget(a2);
                v10 = IO80211GetBPFLoggerEnable() ^ 1;
LABEL_22:
                IO80211SetBPFLoggerEnable(v10);
                BPFLoggerEnable = IO80211GetBPFLoggerEnable();
                v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "fBpfLog -> %u\n", BPFLoggerEnable);
                goto LABEL_127;
              }

              if (strncasecmp((a1 + 10), "log-datapath=", 0xDuLL))
              {
                if (v9 > 6)
                {
                  if (v9 != 9)
                  {
                    if (v9 != 8)
                    {
                      if (v9 != 7)
                      {
                        goto LABEL_67;
                      }

                      if (!strncasecmp((a1 + 10), "log-tag", 7uLL))
                      {
                        v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "fDataPathDebug=%u\n", *(*(a2 + 9) + 11328));
                        goto LABEL_127;
                      }

                      if (!strncasecmp((a1 + 10), "log-cmd", 7uLL))
                      {
                        if (*(a1 + 17) == 61)
                        {
                          if (strtoul((a1 + 18), 0, 10))
                          {
                            AppleBCMWLANCoreDbg::setLogFlags(a2, 4);
                          }

                          else
                          {
                            AppleBCMWLANCoreDbg::clearLogFlags(a2, 4);
                          }

                          goto LABEL_109;
                        }

                        v25 = a2;
                        v26 = 4;
                      }

                      else if (!strncasecmp((a1 + 10), "log-pkt", 7uLL))
                      {
                        v25 = a2;
                        v26 = 8;
                      }

                      else
                      {
                        if (strncasecmp((a1 + 10), "log-irq", 7uLL))
                        {
                          if (!strncasecmp((a1 + 10), "log-cmh", 7uLL))
                          {
                            if (*(a1 + 17) == 61)
                            {
                              if (strtoul((a1 + 18), 0, 10))
                              {
                                AppleBCMWLANCoreDbg::setLogFlags(a2, 0x10000000);
                                AppleBCMWLANCoreDbg::setLogFlags(a2, 0x20000000);
                                AppleBCMWLANCoreDbg::setLogFlags(a2, 0x40000000);
                              }

                              else
                              {
                                AppleBCMWLANCoreDbg::clearLogFlags(a2, 0x10000000);
                                AppleBCMWLANCoreDbg::clearLogFlags(a2, 0x20000000);
                                AppleBCMWLANCoreDbg::clearLogFlags(a2, 0x40000000);
                              }
                            }

                            else
                            {
                              AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x10000000);
                              AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x20000000);
                              AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x40000000);
                            }

                            v43 = (*(*v8 + 120))(v8);
                            v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log Cmds Hex -> %llx\n", v43);
                            goto LABEL_127;
                          }

                          goto LABEL_67;
                        }

                        v25 = a2;
                        v26 = 2;
                      }

                      AppleBCMWLANCoreDbg::toggleLogFlags(v25, v26);
LABEL_109:
                      v39 = (*(*v8 + 120))(v8);
                      v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log Cmds -> %llx\n", v39);
                      goto LABEL_127;
                    }

                    if (!strncasecmp((a1 + 10), "log-bc-v", 8uLL))
                    {
                      v18 = *(a2 + 9);
                      v19 = 18312;
                    }

                    else
                    {
                      if (strncasecmp((a1 + 10), "log-bc-i", 8uLL))
                      {
                        if (strncasecmp((a1 + 10), "logl-all", 8uLL))
                        {
                          goto LABEL_67;
                        }

                        v13 = (*(*v8 + 104))(v8);
                        (*(*v8 + 96))(v8, 127);
                        (*(*v8 + 144))(v8, 127);
LABEL_126:
                        v29 = (*(*v8 + 104))(v8);
                        LogLevelName = getLogLevelName(v29);
                        v31 = (*(*v8 + 104))(v8);
                        v44 = getLogLevelName(v13);
                        v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " set Log %s (%u) was %s\n", LogLevelName, v31, v44);
                        goto LABEL_127;
                      }

                      v18 = *(a2 + 9);
                      v19 = 18308;
                    }

                    *(v18 + v19) ^= 1u;
                    v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " fLogBusCompletionVirt -> %x\n", *(*(a2 + 9) + v19));
                    goto LABEL_127;
                  }

                  if (strncasecmp((a1 + 10), "logl-none", 9uLL))
                  {
                    goto LABEL_67;
                  }

                  v13 = (*(*v8 + 104))(v8);
                  (*(*v8 + 96))(v8, 0xFFFFFFFFLL);
                  (*(*v8 + 144))(v8, 0xFFFFFFFFLL);
                  goto LABEL_126;
                }

                if (v9 != 5)
                {
                  if (v9 != 6)
                  {
                    goto LABEL_67;
                  }

                  if (!strncasecmp((a1 + 10), "log-pr", 6uLL))
                  {
                    AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x400);
                    v35 = (*(*v8 + 120))(v8);
                    v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log Proximity -> %llx\n", v35);
                    goto LABEL_127;
                  }

                  if (!strncasecmp((a1 + 10), "log-sc", 6uLL))
                  {
                    if (*(a1 + 16) == 61)
                    {
                      if (strtoul((a1 + 17), 0, 10))
                      {
                        AppleBCMWLANCoreDbg::setLogFlags(a2, 64);
                      }

                      else
                      {
                        AppleBCMWLANCoreDbg::clearLogFlags(a2, 64);
                      }
                    }

                    else
                    {
                      AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x40);
                    }

                    v42 = (*(*v8 + 120))(v8);
                    v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log Scans -> %llx\n", v42);
                    goto LABEL_127;
                  }

                  if (!strncasecmp((a1 + 10), "log-in", 6uLL))
                  {
                    AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x80);
                    v38 = (*(*v8 + 120))(v8);
                    v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log init -> %llx\n", v38);
                    goto LABEL_127;
                  }

                  if (!strncasecmp((a1 + 10), "log-io", 6uLL))
                  {
                    AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x200000);
                    v40 = (*(*v8 + 120))(v8);
                    v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log IO -> %llx\n", v40);
                    goto LABEL_127;
                  }

                  if (!strncasecmp((a1 + 10), "logl-e", 6uLL))
                  {
                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 0);
                    (*(*v8 + 144))(v8, 0);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-a", 6uLL))
                  {
                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 1);
                    (*(*v8 + 144))(v8, 1);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-c", 6uLL))
                  {
                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 2);
                    (*(*v8 + 144))(v8, 2);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-w", 6uLL))
                  {
                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 3);
                    (*(*v8 + 144))(v8, 3);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-n", 6uLL))
                  {
                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 4);
                    (*(*v8 + 144))(v8, 4);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-i", 6uLL))
                  {
                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 5);
                    (*(*v8 + 144))(v8, 5);
                  }

                  else if (!strncasecmp((a1 + 10), "logl-d", 6uLL))
                  {
                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 6);
                    (*(*v8 + 144))(v8, 6);
                  }

                  else
                  {
                    if (strncasecmp((a1 + 10), "logl-s", 6uLL))
                    {
                      goto LABEL_67;
                    }

                    v13 = (*(*v8 + 104))(v8);
                    (*(*v8 + 96))(v8, 7);
                    (*(*v8 + 144))(v8, 7);
                  }

                  goto LABEL_126;
                }

                if (!strncasecmp((a1 + 10), "log-n", 5uLL))
                {
                  AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x200);
                  v34 = (*(*v8 + 120))(v8);
                  v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log Net -> %llx\n", v34);
                  goto LABEL_127;
                }

                if (!strncasecmp((a1 + 10), "log-j", 5uLL))
                {
                  AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x100);
                  v37 = (*(*v8 + 120))(v8);
                  v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " toggle Log Joins -> %llx\n", v37);
                  goto LABEL_127;
                }

                if (!strncasecmp((a1 + 10), "log-r", 5uLL))
                {
                  if ((AppleBCMWLANCoreDbg::toggleLogFlags(a2, 0x4000) & 1) != 0 || (AppleBCMWLANCore::addEventBit(a2), AppleBCMWLANCore::addEventBit(a2), v21 = AppleBCMWLANCore::writeEventBitField(a2), !v21))
                  {
                    v23 = 0;
                    v24 = "OK";
                  }

                  else
                  {
                    v22 = (*(*a2 + 112))(a2, v21);
                    v23 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " Failure to set roam events, %s\n", v22);
                    v24 = "NOK";
                  }

                  v27 = (*(*v8 + 120))(v8);
                  v15 = IO80211Print(v8, 1, -1, 0, v5, v23, v6 - v23, " toggle Log roam -> %llx %s\n", v27, v24) + v23;
                  goto LABEL_128;
                }

LABEL_67:
                if (strncasecmp((a1 + 10), "wlan.log.flags=", 0xFuLL))
                {
                  if (!strncasecmp((a1 + 10), "wlan.log.flags", 0xEuLL))
                  {
                    v16 = (*(*v8 + 160))(v8);
                  }

                  else
                  {
                    if (!strncasecmp((a1 + 10), "wlan.log.level=", 0xFuLL))
                    {
                      v17 = IO80211CoreDbg::parseUInt64FromCMD();
                      v15 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " setting log level 0x%016llx\n", v17);
                      (*(*v8 + 144))(v8, v17);
                      goto LABEL_128;
                    }

                    if (!strncasecmp((a1 + 10), "wlan.log.level", 0xEuLL))
                    {
                      ConsoleLevel = CCLogStream::getConsoleLevel(v8);
                      v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " getting log level value 0x%016x\n", ConsoleLevel);
                      goto LABEL_127;
                    }

                    if (!strncasecmp((a1 + 10), "wlan.log.ccflags=", 0x11uLL))
                    {
                      v20 = IO80211CoreDbg::parseUInt64FromCMD();
                      v15 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " setting log flags 0x%016llx\n", v20);
                      (*(*v8 + 112))(v8, v20);
                      goto LABEL_128;
                    }

                    if (strncasecmp((a1 + 10), "wlan.log.ccflags", 0x10uLL))
                    {
                      if (strncasecmp((a1 + 10), "wlan.log.cclevel=", 0x11uLL))
                      {
                        if (!strncasecmp((a1 + 10), "wlan.log.cclevel", 0x10uLL))
                        {
                          v41 = (*(*v8 + 104))(v8);
                          v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " getting log level 0x%016x\n", v41);
                        }

                        else
                        {
                          v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " unknown log command <%s>\n", a1 + 10);
                        }

                        goto LABEL_127;
                      }

                      v28 = IO80211CoreDbg::parseUInt64FromCMD();
                      v15 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " setting log level 0x%016llx\n", v28);
                      (*(*v8 + 96))(v8, v28);
LABEL_128:
                      *(v4 + 3520) = v15;
                      return 0;
                    }

                    v16 = (*(*v8 + 120))(v8);
                  }

                  v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " getting log flags value 0x%016llx\n", v16);
                  goto LABEL_127;
                }

                v14 = IO80211CoreDbg::parseUInt64FromCMD();
                v15 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, " setting log flags to 64 bit value 0x%016llx\n", v14);
                (*(*v8 + 152))(v8, v14);
                goto LABEL_128;
              }
            }

            *(*(a2 + 9) + 11328) = strtoul((a1 + 23), 0, 10);
            v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "fDataPathDebug -> %u\n", *(*(a2 + 9) + 11328));
            goto LABEL_127;
          }

          *(*(a2 + 9) + 18324) ^= 1u;
        }

        v11 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "fLogRealTime -> %u \n", *(*(a2 + 9) + 18324));
      }

LABEL_127:
      v15 = v11;
      goto LABEL_128;
    }

    IO80211Print(v7, 1, -1, 0, v5, 0, v6, " unknown log command <%s>\n", 0xA);
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLoopbackTest(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = strnstr((a1 + 10), "-f", 0x80uLL);
  v9 = strnstr((a1 + 10), "-i", 0x80uLL);
  v10 = strnstr((a1 + 10), "-l", 0x80uLL);
  v11 = strnstr((a1 + 10), "-r", 0x80uLL);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (v9)
  {
    LODWORD(v27) = strtoul(v9 + 2, 0, 10);
    v9 = v27;
  }

  if (v8)
  {
    LODWORD(v8) = strtoul(v8 + 2, 0, 16);
    HIDWORD(v27) = v8;
  }

  if (v10)
  {
    v10 = strtoul((v10 + 2), 0, 10);
    v28 = v10;
  }

  if (v11)
  {
    v12 = strtoul(v11 + 2, 0, 10);
    v29 = v12;
  }

  else
  {
    v12 = 0;
  }

  v13 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "loopback-test: iterations=%lu flags=0x%08lx transactionsize=%lu rx_repeat=%lu\n", v9, v8, v10, v12);
  LODWORD(v14) = v13;
  if ((v8 & 1) == 0)
  {
    LODWORD(v24) = 1;
    v14 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "Sending bus:loopback command..\n") + v13;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v25 = &v24;
    v26 = 4;
    v16 = AppleBCMWLANCommander::runIOVarSet(Commander, "bus:loopback", &v25, 0, 0);
    if (v16)
    {
      if (v7)
      {
        v17 = v16;
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdLoopbackTest", 2009, v17);
        }
      }
    }
  }

  v24 = 24;
  Bus = AppleBCMWLANCore::getBus(a2);
  (*(*Bus + 248))(Bus, 3, 0, &v27, &v24);
  if ((v27 & 0x100000000) == 0)
  {
    v23 = 0;
    LODWORD(v14) = IO80211Print(v7, 1, -1, 0, v5, v14, v6 - v14, "Disabling bus:loopback command..\n") + v14;
    v19 = AppleBCMWLANCore::getCommander(a2);
    v25 = &v23;
    v26 = 4;
    v20 = AppleBCMWLANCommander::runIOVarSet(v19, "bus:loopback", &v25, 0, 0);
    if (v20)
    {
      if (v7)
      {
        v21 = v20;
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdLoopbackTest", 2021, v21);
          if (!a1)
          {
            return 0;
          }

          goto LABEL_23;
        }
      }
    }
  }

  if (a1)
  {
LABEL_23:
    *(v4 + 3520) = v14;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASExtendedDTIM(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  v15 = v8;
  if (v8 >= 0x100)
  {
    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: trying to set LPAS Extended Dtim to %d (max is 255)\n", v8);
    goto LABEL_10;
  }

  *(*(a2 + 9) + 6700) = v8;
  if (v8)
  {
    goto LABEL_7;
  }

  Commander = AppleBCMWLANCore::getCommander(a2);
  v14[0] = &v15;
  v14[1] = 4;
  v11 = AppleBCMWLANCommander::runIOVarSet(Commander, "bcn_li_dtim", v14, 0, 0);
  v12 = v15;
  if (!v11)
  {
    v8 = v15;
LABEL_7:
    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set LPAS extended dtim to %d\n", v8);
    goto LABEL_10;
  }

  (*(*a2 + 112))(a2, v11);
  v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: cannot set LPAS extended dtim to %d: ret %x: %s\n", v12, 0);
LABEL_10:
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASPercent(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  *(a2[9] + 6636) = IO80211CoreDbg::parseUInt32FromCMD();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set LPAS PM Alert monitoring percent to %u\n", *(a2[9] + 6636));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASPeriod(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  *(a2[9] + 6640) = IO80211CoreDbg::parseUInt32FromCMD();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set LPAS PM Alert monitoring period to %u\n", *(a2[9] + 6640));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLQMThreashold(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  if (!AppleBCMWLANCore::getLQM(a2))
  {
    v11 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set lqmThresh to -%ld\n", v8);
  LQM = AppleBCMWLANCore::getLQM(a2);
  AppleBCMWLANLQM::setGoodLQMRssiThreshold(LQM, -v8);
  v11 = v9;
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v11;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLRL(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v8 <= 0x14)
  {
    if (AppleBCMWLANCore::getNetAdapter(a2))
    {
      NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
      AppleBCMWLANNetAdapter::configureLongRetryLimit(NetAdapter, v8);
    }

    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set srl to to %d\n", v8);
  }

  else
  {
    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: trying to set lrl to %d (max is 20)\n", v8);
  }

  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetMinCreditsToSpend(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  AppleBCMWLANCore::setMinFreeCreditsToSpend(a2, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMinCreditsToSpend(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  MinFreeCreditsToSpend = AppleBCMWLANCore::getMinFreeCreditsToSpend(a2);
  v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " min credits to spend %d\n", MinFreeCreditsToSpend);
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetLastFWInitTime(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " attempt %llu up %llu now %llu, Continuous Time: %llu\n", *(a2[9] + 6520) / 0xF4240uLL, *(a2[9] + 6528) / 0xF4240uLL, 0xB2F4FC07949, 0xB2F4FC07949);
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpBusStatistics(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 320))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLogLowLevelBusState(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 336))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetVoViECWMAX(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
  AppleBCMWLANNetAdapter::setRealTimeVoViEcwmax(NetAdapter, v8);
  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set vo vi ecwmax to %lu\n", v8);
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLPASMaxSleep(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  *(a2[9] + 6720) = IO80211CoreDbg::parseUInt32FromCMD();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set maxWowSleep to %u\n", *(a2[9] + 6720));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdWoWMaxSleep(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  *(a2[9] + 6716) = IO80211CoreDbg::parseUInt32FromCMD();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set maxWowSleep to %lu\n", *(a2[9] + 6716));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMCASTList(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Num addresses %u:\n", *(a2[9] + 564));
  v9 = a2[9];
  if (*(v9 + 564))
  {
    v10 = 0;
    v11 = 573;
    do
    {
      v12 = (v9 + v11);
      v8 += IO80211Print(v7, 1, -1, 0, v5, v8, v6 - v8, "%3u: %02x:%02x:%02x:%02x:%02x:%02x\n", v10++, *(v12 - 5), *(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), *v12);
      v9 = a2[9];
      v11 += 6;
    }

    while (v10 < *(v9 + 564));
  }

  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpNeighborDiscoveryStats(uint64_t a1, AppleBCMWLANCore *a2)
{
  AppleBCMWLANCore::getNeighbourDiscoveryStats(a2);
  AppleBCMWLANCore::getActivePortsFromNetworkStack(a2);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdWhenIsNow(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (*(*a2 + 1952))(a2);
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  IOLog("%llu.%09llu [%s] -+---\n", 0x2DD01FC06, 473034410, (a1 + 10));
  v7 = IO80211Print(v6, 1, -1, 0, v4, 0, v5, "%llu.%09llu [%s]\n", 0x2DD01FC06, 473034410, (a1 + 10));
  if (a1)
  {
    *(v3 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPowerStats(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    v19 = v4;
    AppleBCMWLANCore::featureFlagClearBit(a2, 24);
    v21 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[0] = v10;
    v20[1] = v10;
    BYTE4(v20[0]) = 0;
    LODWORD(v20[0]) = 13;
    PowerStats = AppleBCMWLANCore::getPowerStats(a2, v9, v20);
    v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "rv=%x: ass=%u unass=%u connect_time=%u num_connections =%u ts=%u tx=%u rx=%u\n", PowerStats, v9[1], v9[2], v9[11], v9[10], *v9, v9[12], v9[14]);
    v13 = IO80211Print(v7, 1, -1, 0, v5, v12, v6 - v12, "  bcm drift: last=%u min=%u max=%u avg=%u ct=%u. frts: time=%u cnt=%u\n", v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9]) + v12;
    v14 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "  scan: u=(%u %u) a=(%u %u) r=(%u %u) o=(%u %u) bssid=(%u %u) ssid=(%u %u)\n", v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[29], v9[30], v9[25], v9[26], v9[27], v9[28]) + v13;
    v15 = IO80211Print(v7, 1, -1, 0, v5, v14, v6 - v14, "  bus-pcie: d3=(%u %u) d0=(%u %u) l0=(%u %u) l1=(%u %u) l1_1=(%u %u) l1_2=(%u %u) l2=(%u %u) ds=(%u %u) ltr: act=(%u %u) sl=(%u %u)\n", v9[60], v9[65], v9[61], v9[64], v9[67], v9[68], v9[69], v9[70], v9[71], v9[72], v9[73], v9[74], v9[75], v9[76], v9[77], v9[78], v9[79], v9[80], v9[81], v9[82]) + v14;
    v16 = IO80211Print(v7, 1, -1, 0, v5, v15, v6 - v15, "  awdl: tx=%u rx=%u aw=%u pscans=%u\n", v9[56], v9[57], v9[58], v9[59]) + v15;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 7) = 0u;
    AppleBCMWLANCore::getInactivityPowerStats(a2, v9);
    v17 = IO80211Print(v7, 1, -1, 0, v5, v16, v6 - v16, "   Inactity stats: Duration=%u MPC [ Wake=%u BcnsRx=%u EarlyBcnsTerm=%u BcnsMiss=%u BcnSch=%u ] LPSC [ Wake=%u BcnsRx=%u EarlyBcnsTerm=%u BcnsMiss=%u BcnSch=%u] \n\n", *v9, v9[1], v9[4], v9[3], v9[5], v9[2], v9[6], v9[9], v9[8], v9[10], v9[7]);
    if (a1)
    {
      *(v19 + 3520) = v17 + v16;
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPMPercent(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  *(a2[9] + 6600) = IO80211CoreDbg::parseUInt32FromCMD();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set PM Alert monitoring percent to %lu\n", *(a2[9] + 6600));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPMPeriod(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  *(a2[9] + 6604) = IO80211CoreDbg::parseUInt32FromCMD();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set PM Alert monitoring period to %lu\n", *(a2[9] + 6604));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdPrintRoam(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
  v8 = AppleBCMWLANConfigManager::printRoamParams(ConfigManager, v5, 0, v6);
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRet2Sleep(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  v9 = v8;
  if (v8 < 0x3E9)
  {
    v21 = v8;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v19 = &v21;
    v20 = 8;
    v12 = AppleBCMWLANCommander::runIOVarSet(Commander, "pm2_sleep_ret", &v19, 0, 0);
    if (v12)
    {
      if (v7)
      {
        v13 = v12;
        if (CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", "cmdRet2Sleep", 2400, v13);
        }
      }
    }

    LODWORD(v19) = -1431655766;
    HIDWORD(v19) = v9;
    v20 = v9 | 0x500000000;
    PowerStateAdapter = AppleBCMWLANCore::getPowerStateAdapter(a2);
    v15 = AppleBCMWLANPowerStateAdapter::configureDFRTSLogicAnd(PowerStateAdapter, &v19);
    v16 = v21;
    if (v15)
    {
      v18 = (*(*a2 + 112))(a2, v15);
      v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: cannot set fast return to sleep: ret %x: %s\n", v16, v18);
    }

    else
    {
      v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set fast return to sleep to %d (%x)\n", v9);
    }
  }

  else
  {
    v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: trying to set fast return to sleep to %d (max is 1000)\n", v8);
  }

  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamBoost(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v5 = strncmp((a1 + 19), "2.4GHz,", 7uLL);
  v6 = IO80211CoreDbg::parseSInt32FromCMD();
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) > 0x10)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v4, "[dk] %s@%d:%s WiFiRoam : Not yet supported for the current chipset\n", "cmdRoamBoost", 2445, "cmdRoamBoost");
      if (!a1)
      {
        return 0;
      }
    }

    else if (!a1)
    {
      return 0;
    }

LABEL_10:
    *(a1 + 245184) = 0;
    return 0;
  }

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  AppleBCMWLANCore::applyRoamingCandidateBoost(a2, v7, v6);
  if (a1)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamScan(uint64_t a1, AppleBCMWLANCore *a2)
{
  v46 = a1 + 241664;
  if (a1)
  {
    v47 = *(a1 + 245208);
    v4 = *(a1 + 245200);
  }

  else
  {
    v47 = 0;
    v4 = 0;
  }

  v5 = (*(*a2 + 1952))(a2);
  memset(v58, 0, sizeof(v58));
  v56 = -1;
  v57 = -1;
  v6 = a1 + 10;
  v48 = a1;
  v7 = a1 + 13;
  v8 = 0;
  v9 = 8;
  memset(v55, 0, 142);
  v54 = 0u;
  while (1)
  {
    while (1)
    {
      v10 = *(v6 + v9);
      if (v10 != 32)
      {
        break;
      }

LABEL_25:
      v19 = 1;
LABEL_26:
      v9 += v19;
    }

    if (!*(v6 + v9))
    {
      goto LABEL_36;
    }

    if (*(v6 + v9 + 2) == 58)
    {
      break;
    }

    if ((v10 - 48) > 9)
    {
      goto LABEL_25;
    }

    v20 = v58[v8 + 3];
    do
    {
      v20 = 10 * v20 + v10 - 48;
      v10 = *(v6 + ++v9);
    }

    while ((v10 - 48) < 0xA);
    v58[v8 + 3] = v20;
    if (v20 <= 0xFFu)
    {
      if (v20 >= 0xFu)
      {
        v21 = -16384;
      }

      else
      {
        v21 = 0;
      }

      v45 = v8;
      v22 = v20 | v21 | 0x1000;
      v44 = v7;
      ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(a2);
      v24 = v22;
      v8 = v45;
      BCMChannelSpec = AppleBCMWLANChanSpec::getBCMChannelSpec(ChanSpecHandler, v24);
      v7 = v44;
      v58[v45 + 3] = BCMChannelSpec;
    }

    ++v8;
  }

  v11 = *(v6 + v9);
  if (v11)
  {
    v12 = 0;
    v13 = (v7 + v9);
    while (1)
    {
      v14 = *(v13 - 2);
      if (!*(v13 - 2))
      {
        break;
      }

      if (v11 <= 64)
      {
        v15 = 64;
      }

      else
      {
        v15 = 9;
      }

      v16 = v15 + v11;
      if (v14 <= 64)
      {
        v17 = -48;
      }

      else
      {
        v17 = -55;
      }

      if (v14 > 96)
      {
        v17 = -87;
      }

      *(&v56 + v12) = v14 + 16 * v16 + v17;
      if (v12 == 5)
      {
        v19 = 18;
        goto LABEL_26;
      }

      if (*(v13 - 1) == 58 || !*(v13 - 1))
      {
        ++v12;
        v18 = *v13;
        v13 += 3;
        v11 = v18;
        if (v18)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_36:
  *&v58[1] = v8;
  if (AppleBCMWLANCore::getProximityInterface(a2))
  {
    ProximityInterface = AppleBCMWLANCore::getProximityInterface(a2);
    AppleBCMWLANProximityInterface::enableRoamEvents(ProximityInterface);
  }

  v53 = 0xAAAAAAAAAAAAAAAALL;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v27 = v47;
  v28 = v4;
  v29 = IO80211Print(v5, 1, -1, 0, v47, 0, v4, "[%llu.%09llu] roamscan %02X:%02X:%02X:%02X:%02X:%02X %d", 0x2DD01FC06, 473034410, v56, BYTE1(v56), BYTE2(v56), HIBYTE(v56), v57, HIBYTE(v57), v58[3]);
  v30 = v29;
  if (v8)
  {
    v31 = 0;
    LODWORD(v32) = IO80211Print(v5, 1, -1, 0, v47, v29, v4 - v29, " channels [") + v29;
    do
    {
      v33 = "";
      if (v31 < v8 - 1)
      {
        v33 = " ";
      }

      v32 = IO80211Print(v5, 1, -1, 0, v47, v32, v4 - v32, "0x%x%s", v58[v31++ + 3], v33) + v32;
    }

    while (v8 != v31);
    v30 = IO80211Print(v5, 1, -1, 0, v47, v32, v4 - v32, "]") + v32;
    v27 = v47;
  }

  v34 = IO80211Print(v5, 1, -1, 0, v27, v30, v4 - v30, "\n") + v30;
  v35 = a2;
  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) < 0x11)
  {
    v40 = &v56;
    v41 = 68;
  }

  else
  {
    DWORD1(v54) = v56;
    WORD4(v54) = v57;
    v36 = v58[0];
    if (v58[0] >= 7u)
    {
      v36 = 7;
    }

    WORD5(v54) = v36;
    if (v8 >= 0x32)
    {
      v37 = 50;
    }

    else
    {
      v37 = v8;
    }

    HIDWORD(v54) = v37;
    v38 = (2 * v37);
    v39 = (6 * v36);
    v40 = &v54;
    memcpy(v55, &v58[3], v38 + v39);
    v41 = (v38 + 16) + v39;
  }

  IO80211Hexdump();
  *&v51 = v35;
  *(&v51 + 1) = AppleBCMWLANCore::startRoamScanAsyncCallback;
  v52 = 0;
  Commander = AppleBCMWLANCore::getCommander(v35);
  v50[0] = v40;
  v50[1] = v41;
  v49 = (v41 << 16) | 6;
  if (AppleBCMWLANCommander::sendIOCtlSet(Commander, 53, v50, &v49, &v51, 0))
  {
    LODWORD(v34) = IO80211Print(v5, 1, -1, 0, v27, v34, v28 - v34, "%u Error: Unable to send request to Forced Roam\n", 2539) + v34;
  }

  if (v48)
  {
    *(v46 + 3520) = v34;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRTSThreashold(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v8 <= 0x92B)
  {
    if (AppleBCMWLANCore::getNetAdapter(a2))
    {
      NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
      AppleBCMWLANNetAdapter::configureRTSThreshold(NetAdapter, v8);
    }

    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set rtsthresh to %d\n", v8);
  }

  else
  {
    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: trying to set lrl to %d (max is 2347)\n", v8);
  }

  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetTXWatermark(uint64_t a1, AppleBCMWLANCore *this)
{
  Bus = AppleBCMWLANCore::getBus(this);
  v3 = IO80211CoreDbg::parseUInt32FromCMD();
  (*(*Bus + 248))(Bus, 2, v3, 0, 0);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTXStall(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  *(a2[9] + 19856) = IO80211CoreDbg::parseUInt32FromCMD();
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "watchdog chip after tx q is stalled for %u secs \n", *(a2[9] + 19856));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEventTraceLogs(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = strlen((a1 + 10));
  if (!strncmp((a1 + 10), "et", v8))
  {
    isEventBitSet = AppleBCMWLANCore::isEventBitSet(a2);
    v11 = "off";
    if (isEventBitSet)
    {
      v11 = "on";
    }

    v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Chip Trace Events is %s ", v11);
  }

  else
  {
    if (IO80211CoreDbg::parseUInt32FromCMD())
    {
      v9 = AppleBCMWLANCore::setEventBit(a2);
    }

    else
    {
      v9 = AppleBCMWLANCore::clearEventBit(a2, 0x34u);
    }

    v13 = v9;
    if (AppleBCMWLANCore::isEventBitSet(a2))
    {
      v14 = "on";
    }

    else
    {
      v14 = "off";
    }

    v16 = (*(*a2 + 112))(a2, v13);
    v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Chip Trace Events is %s, return %s", v14, v16);
  }

  if (a1)
  {
    *(v4 + 3520) = v12;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEventEnable(uint64_t a1, AppleBCMWLANCore *a2)
{
  v24 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (*(*a2 + 1952))(a2);
  v7 = v5;
  v8 = (a1 + 12);
  v9 = IO80211Print(v6, 1, -1, 0, v4, 0, v5, " parsing  %s\n", (a1 + 12));
  v10 = convertStringToEvent((a1 + 12));
  v11 = a1;
  if (v10 == -1)
  {
    v23 = a1;
    v15 = IO80211Print(v6, 1, -1, 0, v4, v9, v7 - v9, " Error: event not found %s\n", v8) + v9;
    v16 = *v8;
    if (v16 == 104)
    {
      v17 = 0;
      LODWORD(v15) = IO80211Print(v6, 1, -1, 0, v4, v15, v7 - v15, " Listing possible events: \n") + v15;
      do
      {
        v18 = convertEventToString(v17, 0, 0);
        LODWORD(v15) = IO80211Print(v6, 1, -1, 0, v4, v15, v7 - v15, "%s \n", v18) + v15;
        ++v17;
      }

      while (v17 != 219);
      v16 = *v8;
    }

    if (v16 == 97)
    {
      v19 = *(v11 + 13);
      if (v19 == 108)
      {
        v19 = *(v11 + 14);
      }

      if (108 != v19)
      {
        goto LABEL_20;
      }
    }

    else if (97 != v16)
    {
      goto LABEL_20;
    }

    for (i = 0; i != 219; ++i)
    {
      v21 = convertEventToString(i, 0, 0);
      v15 = v15 + IO80211Print(v6, 1, -1, 0, v4, v15, v7 - v15, "Adding %s \n", v21);
      AppleBCMWLANCore::addEventBit(a2);
    }

    AppleBCMWLANCore::writeEventBitField(a2);
    LODWORD(v15) = v15 + IO80211Print(v6, 1, -1, 0, v4, v15, v7 - v15, " Active events: \n");
    AppleBCMWLANCore::dumpEventBitField(a2, v4, v15, v7 - v15);
    if (!v23)
    {
      return 0;
    }

LABEL_20:
    v14 = v15;
    goto LABEL_21;
  }

  v12 = convertEventToString(v10, 0, 0);
  v13 = IO80211Print(v6, 1, -1, 0, v4, v9, v7 - v9, " Adding event %s\n", v12);
  AppleBCMWLANCore::setEventBit(a2);
  if (a1)
  {
    v14 = (v13 + v9);
LABEL_21:
    *(v24 + 3520) = v14;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEventDisable(uint64_t a1, AppleBCMWLANCore *a2)
{
  v25 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (*(*a2 + 1952))(a2);
  v7 = v5;
  v8 = (a1 + 14);
  v9 = IO80211Print(v6, 1, -1, 0, v4, 0, v5, " parsing  %s\n", (a1 + 14));
  v10 = convertStringToEvent((a1 + 14));
  v11 = a1;
  if (v10 == -1)
  {
    v24 = a1;
    v16 = IO80211Print(v6, 1, -1, 0, v4, v9, v7 - v9, " Error: event not found %s\n", v8) + v9;
    v17 = *v8;
    if (v17 == 104)
    {
      v18 = 0;
      LODWORD(v16) = IO80211Print(v6, 1, -1, 0, v4, v16, v7 - v16, " Listing possible events: \n") + v16;
      do
      {
        v19 = convertEventToString(v18, 0, 0);
        LODWORD(v16) = IO80211Print(v6, 1, -1, 0, v4, v16, v7 - v16, "%s \n", v19) + v16;
        ++v18;
      }

      while (v18 != 219);
      v17 = *v8;
    }

    if (v17 == 97)
    {
      v20 = *(v11 + 15);
      if (v20 == 108)
      {
        v20 = *(v11 + 16);
      }

      if (108 != v20)
      {
        goto LABEL_20;
      }
    }

    else if (97 != v17)
    {
      goto LABEL_20;
    }

    for (i = 0; i != 219; ++i)
    {
      v22 = convertEventToString(i, 0, 0);
      v16 = v16 + IO80211Print(v6, 1, -1, 0, v4, v16, v7 - v16, "Removing %s \n", v22);
      AppleBCMWLANCore::removeEventBit(a2, i);
    }

    AppleBCMWLANCore::writeEventBitField(a2);
    LODWORD(v16) = v16 + IO80211Print(v6, 1, -1, 0, v4, v16, v7 - v16, " Active events: \n");
    AppleBCMWLANCore::dumpEventBitField(a2, v4, v16, v7 - v16);
    if (!v24)
    {
      return 0;
    }

LABEL_20:
    v15 = v16;
    goto LABEL_21;
  }

  v12 = v10;
  v13 = convertEventToString(v10, 0, 0);
  v14 = IO80211Print(v6, 1, -1, 0, v4, v9, v7 - v9, " Removing event %s\n", v13);
  AppleBCMWLANCore::clearEventBit(a2, v12);
  if (a1)
  {
    v15 = (v14 + v9);
LABEL_21:
    *(v25 + 3520) = v15;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLpasRoamQuota(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  *(a2[9] + 6660) = v8;
  v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " set lpas roam quota to %d\n", v8);
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMotionState(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
  MotionProfileState = AppleBCMWLANBGScanAdapter::getMotionProfileState(BGScanAdapter);
  v10 = "Unknown";
  if (MotionProfileState == 3)
  {
    v10 = "Driving";
  }

  if (!MotionProfileState)
  {
    v10 = "Stationary";
  }

  v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Motion State is %s\n", v10);
  if (a1)
  {
    *(v4 + 3520) = v11;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamMode(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (*(*a2 + 1952))(a2);
  v7 = IO80211Print(v6, 1, -1, 0, v4, 0, v5, "Roam mode=%s\n", "roam_profile");
  if (a1)
  {
    *(v3 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdRoamStatus(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = a2[9];
  if ((*(v8 + 13996) & 0x1FFu) > 0xB)
  {
    v9 = "Unknown";
  }

  else
  {
    v9 = off_1003CAF90[*(v8 + 13996) & 0x1FF];
  }

  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Last roam status=%d reason=%s(0x%x)\n", *(v8 + 13992), v9, *(v8 + 13992));
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdBGScanPrivateMac(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  memset(v18, 170, sizeof(v18));
  v17 = 0;
  *v16 = 0;
  memset(v15, 170, 6);
  v8 = sscanf((a1 + 29), "%x:%x:%x:%x:%x:%x", v18, v18 + 4, &v18[1], &v18[1] + 4, &v18[2], &v18[2] + 4);
  if (v8 == -1)
  {
    BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::getBGScanPrivateMac(BGScanAdapter, v15);
    IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Private MAC Address %02x:%02x:%02x:%02x:%02x:%02x\n", v15[0], v15[1], v15[2], v15[3], v15[4], v15[5]);
    return 0;
  }

  if (v8 == 6)
  {
    for (i = 0; i != 6; ++i)
    {
      v16[i] = *(v18 + i);
    }

    v16[0] = v16[0] & 0xFC | 2;
    v10 = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::configureBGScanPrivateMac(v10, v16);
    v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Private MAC Address %02x:%02x:%02x:%02x:%02x:%02x\n", v16[0], v16[1], v16[2], v16[3], v17, HIBYTE(v17));
    if (a1)
    {
      v12 = 0;
LABEL_13:
      *(v4 + 3520) = v11;
      return v12;
    }

    return 0;
  }

  v12 = 3758097090;
  v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: Bad MAC address %s\n", (a1 + 29));
  if (a1)
  {
    goto LABEL_13;
  }

  return v12;
}

uint64_t AppleBCMWLANCoreDbg::cmdBGScanMacRandomMask(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  memset(v18, 170, sizeof(v18));
  v17 = 0;
  *v16 = 0;
  memset(v15, 170, 6);
  v8 = sscanf((a1 + 30), "%x:%x:%x:%x:%x:%x", v18, v18 + 4, &v18[1], &v18[1] + 4, &v18[2], &v18[2] + 4);
  if (v8 == -1)
  {
    BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::getBGScanMacRandomMask(BGScanAdapter, v15);
    IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Scan MAC Random Mask %02x:%02x:%02x:%02x:%02x:%02x\n", v15[0], v15[1], v15[2], v15[3], v15[4], v15[5]);
    return 0;
  }

  if (v8 == 6)
  {
    for (i = 0; i != 6; ++i)
    {
      v16[i] = *(v18 + i);
    }

    v16[0] &= 0xFCu;
    v10 = AppleBCMWLANCore::getBGScanAdapter(a2);
    AppleBCMWLANBGScanAdapter::configureBGScanMacRandomMask(v10, v16);
    v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Scan MAC Random Mask %02x:%02x:%02x:%02x:%02x:%02x\n", v16[0], v16[1], v16[2], v16[3], v17, HIBYTE(v17));
    if (a1)
    {
      v12 = 0;
LABEL_13:
      *(v4 + 3520) = v11;
      return v12;
    }

    return 0;
  }

  v12 = 3758097090;
  v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: Bad MAC Random Mask %s\n", (a1 + 29));
  if (a1)
  {
    goto LABEL_13;
  }

  return v12;
}

uint64_t AppleBCMWLANCoreDbg::cmdBGScanPrivateMacTimeout(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
  AppleBCMWLANBGScanAdapter::configureBGScanPrivateMacTimeout(BGScanAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSd_devreg(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  (*(*a2 + 1952))(a2);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[12] = v5;
  v12 = v5;
  *v13 = v5;
  v11 = v5;
  v9 = -1431655766;
  v10 = -1431655766;
  v8 = -1431655766;
  sscanf((a1 + 10), "%s %x %x %x", &v11, &v10, &v9, &v8);
  v6 = *AppleBCMWLANCore::getBus(a2);
  (*(v6 + 288))();
  if (a1)
  {
    *(v4 + 3520) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSbreg(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  (*(*a2 + 1952))(a2);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v12[12] = v5;
  v11 = v5;
  *v12 = v5;
  v10 = v5;
  v8 = -1431655766;
  v9 = -1431655766;
  sscanf((a1 + 10), "%s %x %x", &v10, &v9, &v8);
  v6 = *AppleBCMWLANCore::getBus(a2);
  (*(v6 + 296))();
  if (a1)
  {
    *(v4 + 3520) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTxPowerCapConfig(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  AppleBCMWLANCore::configTxPowerCapControl(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetTxPowerCapHigh(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD() == 0;
  *(*(a2 + 9) + 19776) = v4;
  *(*(a2 + 9) + 19772) = v4;
  AppleBCMWLANCore::setTxPowerCapState(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapState(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
  v9 = *(AppleBCMWLANConfigManager::getTxPowerCapConfig(ConfigManager) + 12);
  if (v9 == 4)
  {
    memset(v23, 170, 3);
    AppleBCMWLANCore::getTxPowerCapStateV4(a2, v23);
    v13 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Group states %d\n", BYTE2(v23[0]));
  }

  else
  {
    if (v9 == 3)
    {
      memset(v23, 170, 11);
      AppleBCMWLANCore::getTxPowerCapStateV3(a2, v23);
      v10 = BYTE1(v23[0]);
      v11 = BYTE2(v23[0]);
      v21 = BYTE1(v23[1]);
      v22 = BYTE2(v23[1]);
      v19 = HIBYTE(v23[0]);
      v20 = LOBYTE(v23[1]);
      v12 = "SubGroup states [0]:%d [1]:%d [2]:%d [3]:%d [4]:%d [5]:%d [6]:%d [7]:%d [8]:%d [9]:%d\n";
      v17 = BYTE5(v23[0]);
      v18 = BYTE6(v23[0]);
      v15 = BYTE3(v23[0]);
      v16 = BYTE4(v23[0]);
    }

    else
    {
      if (v9 != 2)
      {
        v13 = 0;
        if (!a1)
        {
          return 0;
        }

        goto LABEL_12;
      }

      memset(v23, 170, 6);
      AppleBCMWLANCore::getTxPowerCapState(a2, v23);
      v10 = BYTE1(v23[0]);
      v11 = BYTE2(v23[0]);
      v16 = BYTE4(v23[0]);
      v17 = BYTE5(v23[0]);
      v15 = BYTE3(v23[0]);
      v12 = "Subband states [0]:%d [1]:%d [2]:%d [3]:%d [4]:%d\n";
    }

    v13 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, v12, v10, v11, v15, v16, v17, v18, v19, v20, v21, v22);
  }

  if (a1)
  {
LABEL_12:
    *(v4 + 3520) = v13;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV3(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IOMallocZeroTyped();
  if (v8)
  {
    v9 = v8;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v58[14] = v10;
    v58[15] = v10;
    v58[12] = v10;
    v58[13] = v10;
    v58[10] = v10;
    v58[11] = v10;
    v58[8] = v10;
    v58[9] = v10;
    v58[6] = v10;
    v58[7] = v10;
    v58[4] = v10;
    v58[5] = v10;
    v58[2] = v10;
    v58[3] = v10;
    v58[0] = v10;
    v58[1] = v10;
    AppleBCMWLANCore::getTxPowerCapDebugInfoV3(a2, v8);
    v11 = v9[22] * v9[21];
    v12 = *v9;
    if (v12 == 3)
    {
      v13 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Download present %d, Country %c%c, country group %d, channel %d, num subbands %d, cap_states_per_cc_group %d\n", v9[20], v9[2], v9[3], v9[32], *(v9 + 1), v9[21], v9[33]);
      if (v9[18])
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      v15 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "High_cap_countdown %s, num_antennas %d, num_cc_groups %d, wci2 cell status last %d\n", v14, v9[22], v9[31], v9[19]);
      v16 = IO80211Print(v7, 1, -1, 0, v5, (v15 + v13), v6 - (v15 + v13), "Subband config [0]:%d [1]:%d [2]:%d [3]:%d [4]:%d\n", v9[8], v9[9], v9[10], v9[11], v9[12]) + v15 + v13;
      v17 = IO80211Print(v7, 1, -1, 0, v5, v16, v6 - v16, "Subband state  [0]:%d [1]:%d [2]:%d [3]:%d [4]:%d\n", v9[13], v9[14], v9[15], v9[16], v9[17]) + v16;
      v18 = IO80211Print(v7, 1, -1, 0, v5, v17, v6 - v17, "Antenas per core: %d %d %d %d %d %d %d %d\n", v9[23], v9[24], v9[25], v9[26], v9[27], v9[28], v9[29], v9[30]) + v17;
      if ((v11 - 1) <= 0x3E)
      {
        v56 = v6;
        v57 = v5;
        v52 = v3;
        v54 = v4;
        v19 = 0;
        v20 = (v9 + 34);
        v21 = v11;
        v22 = v11;
        while (1)
        {
          v23 = *v20++;
          v19 += snprintf(v58 + v19, 0x100uLL, "%03d ", v23);
          if (v19 >= 252)
          {
            break;
          }

          if (!--v22)
          {
            goto LABEL_16;
          }
        }

        strcpy(v58, "Print buffer is too small");
LABEL_16:
        v24 = 0;
        v25 = IO80211Print(v7, 1, -1, 0, v57, v18, v56 - v18, "host_low_wci2_low_cap    %s\n", v58) + v18;
        v26 = (v9 + 114);
        v27 = v11;
        while (1)
        {
          v28 = *v26++;
          v24 += snprintf(v58 + v24, 0x100uLL, "%03d ", v28);
          if (v24 >= 252)
          {
            break;
          }

          if (!--v27)
          {
            goto LABEL_21;
          }
        }

        strcpy(v58, "Print buffer is too small");
LABEL_21:
        v29 = 0;
        v30 = IO80211Print(v7, 1, -1, 0, v57, v25, v56 - v25, "host_low_wci2_high_cap   %s\n", v58) + v25;
        v31 = (v9 + 194);
        v32 = v11;
        while (1)
        {
          v33 = *v31++;
          v29 += snprintf(v58 + v29, 0x100uLL, "%03d ", v33);
          if (v29 >= 252)
          {
            break;
          }

          if (!--v32)
          {
            goto LABEL_26;
          }
        }

        strcpy(v58, "Print buffer is too small");
LABEL_26:
        v5 = v57;
        v34 = 0;
        v18 = IO80211Print(v7, 1, -1, 0, v57, v30, v56 - v30, "host_high_wci2_low_cap   %s\n", v58) + v30;
        v35 = (v9 + 274);
        while (1)
        {
          v36 = *v35++;
          v34 += snprintf(v58 + v34, 0x100uLL, "%03d ", v36);
          if (v34 >= 252)
          {
            break;
          }

          if (!--v21)
          {
            goto LABEL_31;
          }
        }

        strcpy(v58, "Print buffer is too small");
LABEL_31:
        v6 = v56;
        LODWORD(v18) = IO80211Print(v7, 1, -1, 0, v57, v18, v56 - v18, "host_high_wci2_high_cap  %s\n", v58) + v18;
        v3 = v52;
        v4 = v54;
      }

      v12 = *v9;
    }

    else
    {
      LODWORD(v18) = 0;
    }

    if (v12 == 2)
    {
      v37 = v18 + IO80211Print(v7, 1, -1, 0, v5, v18, v6 - v18, "Download present %d, Country %c%c, country group %d, channel %d, num subbands %d\n", v9[20], v9[2], v9[3], v9[32], *(v9 + 1), v9[21]);
      v38 = "NO";
      if (v9[18])
      {
        v38 = "YES";
      }

      v39 = v37 + IO80211Print(v7, 1, -1, 0, v5, v37, v6 - v37, "High_cap_countdown %s, num_antennas %d, num_cc_groups %d, wci2 cell status last %d\n", v38, v9[22], v9[31], v9[19]);
      v40 = v39 + IO80211Print(v7, 1, -1, 0, v5, v39, v6 - v39, "Subband config [0]:%d [1]:%d [2]:%d [3]:%d [4]:%d\n", v9[8], v9[9], v9[10], v9[11], v9[12]);
      v41 = v40 + IO80211Print(v7, 1, -1, 0, v5, v40, v6 - v40, "Subband state  [0]:%d [1]:%d [2]:%d [3]:%d [4]:%d\n", v9[13], v9[14], v9[15], v9[16], v9[17]);
      v42 = v41 + IO80211Print(v7, 1, -1, 0, v5, v41, v6 - v41, "Antenas per core: %d %d %d %d %d %d %d %d\n", v9[23], v9[24], v9[25], v9[26], v9[27], v9[28], v9[29], v9[30]);
      LODWORD(v18) = v42;
      if ((v11 - 1) <= 0x3E)
      {
        v18 = v6;
        v53 = v3;
        v55 = v4;
        v43 = 0;
        v44 = (v9 + 33);
        v45 = v11;
        while (1)
        {
          v46 = *v44++;
          v43 += snprintf(v58 + v43, 0x100uLL, "%03d ", v46);
          if (v43 >= 252)
          {
            break;
          }

          if (!--v45)
          {
            goto LABEL_42;
          }
        }

        strcpy(v58, "Print buffer is too small");
LABEL_42:
        v47 = 0;
        v48 = v42 + IO80211Print(v7, 1, -1, 0, v5, v42, v18 - v42, "Low cap    %s\n", v58);
        v49 = (v9 + 113);
        v3 = v53;
        while (1)
        {
          v50 = *v49++;
          v47 += snprintf(v58 + v47, 0x100uLL, "%03d ", v50);
          if (v47 >= 252)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_47;
          }
        }

        strcpy(v58, "Print buffer is too small");
LABEL_47:
        LODWORD(v18) = v48 + IO80211Print(v7, 1, -1, 0, v5, v48, v18 - v48, "High cap   %s\n", v58);
        v4 = v55;
      }
    }

    if (v3)
    {
      *(v4 + 3520) = v18;
    }

    IOFree(v9, 0x164uLL);
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV5(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  Commander = AppleBCMWLANCore::getCommander(a2);
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(Commander);
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    if (AppleBCMWLANCore::getTxPowerCapDebugInfoV5(a2, v10, MaxCmdRxPayload) || *v11 != 5)
    {
      goto LABEL_35;
    }

    v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "country %c%c channel(ctl) %d cell sts %d (%d) ant_tx %d\n", v11[2], v11[3], v11[4], v11[13], v11[13] & 1, v11[12]);
    v13 = IO80211Print(v7, 1, -1, 0, v5, v12, v6 - v12, "num_ants %d \nnum_cc_groups %d \ncc_group_info_index %d\n\n", v11[9], v11[10], v11[11]) + v12;
    if (v11[8])
    {
      v32 = a1;
      v33 = v4;
      v39[0] = "main-2g-nonsdb";
      v39[1] = "main-5g-nonsdb";
      v39[2] = "aux-2g-nonsdb";
      v39[3] = "aux-5g-nonsdb";
      v39[4] = "main-2g-sdb";
      v39[5] = "main-5g-sdb";
      v39[6] = "aux-2g-sdb";
      v39[7] = "aux-5g-sdb";
      if (!v11[1])
      {
        goto LABEL_33;
      }

      v14 = 0;
      v15 = v11 + 14;
      v34 = 1922;
      while (1)
      {
        v31 = v14;
        v16 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "%s: \n", v39[v15[3]]);
        LODWORD(v13) = IO80211Print(v7, 1, -1, 0, v5, (v16 + v13), v6 - (v16 + v13), "==> capability %d num_cap_states %d\n", *v15, v15[1]) + v16 + v13;
        if (!v15[1] || v15[3] > 7u || (v17 = v15[1], v18 = (80 * v17) | 4, v34 < v18))
        {
LABEL_33:
          v4 = v33;
          if (v32)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        v19 = 14;
        v20 = &word_10033D020;
        while (*v20 != *v15)
        {
          v20 += 5;
          if (!--v19)
          {
            goto LABEL_33;
          }
        }

        v30 = (80 * v17) | 4;
        v34 -= v18;
        v21 = 0;
        v35 = v20;
        v22 = v15 + 4;
        v36 = *(v20 + 2);
        do
        {
          v37 = v22;
          v38 = v21;
          if (v15[2])
          {
            v23 = 0;
            v24 = v22;
            do
            {
              if (v11[9])
              {
                v25 = 0;
                do
                {
                  LODWORD(v13) = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "%3d ", v24[v25++]);
                }

                while (v25 < v11[9]);
              }

              LODWORD(v13) = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "\t");
              ++v23;
              v24 += 8;
            }

            while (v23 < v15[2]);
          }

          v26 = (v38 >> 1) & 1;
          v27 = v38 & 1;
          if (v36 == 3)
          {
            LODWORD(v13) = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "#%s-%s-%s\t", off_1003CAE00[*(v35 + ((v38 >> 2) & 1) + 7)], off_1003CAE00[*(v35 + v26 + 5)], off_1003CAE00[*(v35 + v27 + 3)]);
          }

          else
          {
            if (v36 == 2)
            {
              v28 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "#%s-%s\t", off_1003CAE00[*(v35 + v26 + 5)], off_1003CAE00[*(v35 + v27 + 3)]);
            }

            else
            {
              if (v36 != 1)
              {
                goto LABEL_31;
              }

              v28 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "#%s\t", off_1003CAE00[*(v35 + v27 + 3)]);
            }

            LODWORD(v13) = v13 + v28;
          }

LABEL_31:
          v13 = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "\n");
          v21 = v38 + 1;
          v22 = v37 + 80;
        }

        while (v38 + 1 < v15[1]);
        v13 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "\n") + v13;
        v15 += v30;
        v14 = v31 + 1;
        if (v31 + 1 >= v11[1])
        {
          goto LABEL_33;
        }
      }
    }

    LODWORD(v13) = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "txcap download not present\n") + v13;
    if (a1)
    {
LABEL_34:
      *(v4 + 3520) = v13;
    }

LABEL_35:
    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV7(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  Commander = AppleBCMWLANCore::getCommander(a2);
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(Commander);
  v10 = IOMallocZeroData();
  if (v10)
  {
    v11 = v10;
    if (!AppleBCMWLANCore::getTxPowerCapDebugInfoV7(a2, v10, MaxCmdRxPayload) && *v11 == 7)
    {
      v32 = a1;
      v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "country %c%c channel(ctl) %d cell sts %d (%d) ant_tx %d\n", v11[2], v11[3], v11[4], v11[13], v11[13] & 1, v11[12]);
      v13 = IO80211Print(v7, 1, -1, 0, v5, v12, v6 - v12, "num_ants %d \nnum_cc_groups %d \ncc_group_info_index %d\n\n", v11[9], v11[10], v11[11]) + v12;
      v33 = v4;
      if (v11[8])
      {
        if (v11[1])
        {
          v14 = 0;
          v15 = v11 + 38;
          v31 = 1898;
LABEL_10:
          v30 = v14;
          v16 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "%s: \n", off_1003CAE50[v15[3]]);
          LODWORD(v13) = IO80211Print(v7, 1, -1, 0, v5, (v16 + v13), v6 - (v16 + v13), "==> capability %d num_cap_states %d\n", *v15, v15[1]) + v16 + v13;
          if (!v15[1])
          {
            goto LABEL_35;
          }

          if (v15[3] > 0xBu)
          {
            goto LABEL_35;
          }

          v17 = (80 * v15[1]) | 4;
          if (v31 < v17)
          {
            goto LABEL_35;
          }

          v18 = 14;
          v19 = &word_10033D020;
          while (*v19 != *v15)
          {
            v19 += 5;
            if (!--v18)
            {
              goto LABEL_35;
            }
          }

          v29 = (80 * v15[1]) | 4;
          v31 -= v17;
          v20 = 0;
          v34 = v19;
          v21 = v15 + 4;
          v35 = *(v19 + 2);
          while (1)
          {
            v36 = v21;
            v37 = v20;
            if (v15[2])
            {
              v22 = 0;
              v23 = v21;
              do
              {
                if (v11[9])
                {
                  v24 = 0;
                  do
                  {
                    LODWORD(v13) = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "%3d ", v23[v24++]);
                  }

                  while (v24 < v11[9]);
                }

                LODWORD(v13) = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "\t");
                ++v22;
                v23 += 8;
              }

              while (v22 < v15[2]);
            }

            v25 = (v37 >> 1) & 1;
            v26 = v37 & 1;
            if (v35 == 3)
            {
              LODWORD(v13) = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "#%s-%s-%s\t", off_1003CAE00[*(v34 + ((v37 >> 2) & 1) + 7)], off_1003CAE00[*(v34 + v25 + 5)], off_1003CAE00[*(v34 + v26 + 3)]);
              goto LABEL_31;
            }

            if (v35 == 2)
            {
              break;
            }

            if (v35 == 1)
            {
              v27 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "#%s\t", off_1003CAE00[*(v34 + v26 + 3)]);
LABEL_29:
              LODWORD(v13) = v13 + v27;
            }

LABEL_31:
            v13 = v13 + IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "\n");
            v20 = v37 + 1;
            v21 = v36 + 80;
            if (v37 + 1 >= v15[1])
            {
              v13 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "\n") + v13;
              v15 += v29;
              v14 = v30 + 1;
              if (v30 + 1 >= v11[1])
              {
                goto LABEL_35;
              }

              goto LABEL_10;
            }
          }

          v27 = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "#%s-%s\t", off_1003CAE00[*(v34 + v25 + 5)], off_1003CAE00[*(v34 + v26 + 3)]);
          goto LABEL_29;
        }
      }

      else
      {
        LODWORD(v13) = IO80211Print(v7, 1, -1, 0, v5, v13, v6 - v13, "txcap download not present\n") + v13;
      }

LABEL_35:
      if (v32)
      {
        *(v33 + 3520) = v13;
      }
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebug(uint64_t a1, AppleBCMWLANCore *this)
{
  ConfigManager = AppleBCMWLANCore::getConfigManager(this);
  v5 = *(AppleBCMWLANConfigManager::getTxPowerCapConfig(ConfigManager) + 12);
  switch(v5)
  {
    case 4:
      AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV7(a1, this);
      break;
    case 3:
      AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV5(a1, this);
      break;
    case 2:
      AppleBCMWLANCoreDbg::cmdDumpTxPwrCapDebugV3(a1, this);
      break;
    default:
      IOLog("Unsupported TxCap version \n");
      break;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetTxCapHighPowerTimeout(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  AppleBCMWLANCore::setTxHighCapTimeout(a2, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetTxCapHighPowerTimeout(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v10 = -1431655766;
  AppleBCMWLANCore::getTxHighCapTimeout(a2, &v10);
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "High Power Timeout %d\n", v10);
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDecodeError(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v12 = 0;
  sscanf((a1 + 10), "%*s %i", &v12);
  v8 = v12;
  v9 = (*(*a2 + 112))(a2, v12);
  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Return code for 0x%08x is '%s'\n", v8, v9);
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpErrorCodes(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  forEachAppleBCMWLANReturnCodes(printRetCodeName, 0);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdBusState(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (a1 && strnlen((a1 + 10), 0x100uLL) == 3 && !strncasecmp((a1 + 10), "bs2", 3uLL))
  {
    Bus = AppleBCMWLANCore::getBus(a2);
    v8 = (*(*Bus + 256))(Bus, v5, 0, v6, 1);
    goto LABEL_9;
  }

  v7 = AppleBCMWLANCore::getBus(a2);
  (*(*(v7 + 48) + 344))();
  if (a1)
  {
    v8 = 0;
LABEL_9:
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdToggleDeviceWake(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = *AppleBCMWLANCore::getBus(a2);
  (*(v8 + 280))();
  v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "level left at %d\n", 0);
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdLowerWlanRegOn(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 304))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDSEnableDisable(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 312))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPCIeRegisters(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPCIeMMIOLog(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdBusTrap(int a1, AppleBCMWLANCore *this)
{
  Bus = AppleBCMWLANCore::getBus(this);
  (*(*Bus + 216))(Bus, 2);
  v4 = AppleBCMWLANCore::getBus(this);
  (*(*v4 + 200))(v4, 3713);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTxUART(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (*(*a2 + 1952))(a2);
  v7 = IO80211Print(v6, 1, -1, 0, v4, 0, v5, "Will be supported by radar://82272901");
  if (a1)
  {
    *(v3 + 3520) = v7;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdNATKeepAliveIP(uint64_t a1, void *a2)
{
  v15 = a1 + 241664;
  if (a1)
  {
    v4 = *(a1 + 245208);
    v5 = *(a1 + 245200);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (*(*a2 + 1952))(a2);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *(a2[9] + 10360) = 0;
  v7 = (a1 + 20);
  v16 = a1;
  v8 = IO80211Print(v6, 1, -1, 0, v4, 0, v5, " parsing  %s\n", (a1 + 20));
  if (sscanf(v7, " %d.%d.%d.%d", &v17, &v17 + 4, &v18, &v18 + 4) != 4)
  {
    v13 = 3758097090;
    v12 = IO80211Print(v6, 1, -1, 0, v4, v8, v5 - v8, " Error: bad Target IP address %s\n", v7);
    if (!v16)
    {
      return v13;
    }

LABEL_10:
    *(v15 + 3520) = v12 + v8;
    return v13;
  }

  v9 = 0;
  v10 = &v17;
  do
  {
    v11 = *v10;
    v10 = (v10 + 4);
    *(a2[9] + 10360) += v11 << v9;
    v9 += 8;
  }

  while (v9 != 32);
  v12 = IO80211Print(v6, 1, -1, 0, v4, v8, v5 - v8, " NAT Destination IPv4  address %u.%u.%u.%u\n", *(a2[9] + 10360), BYTE1(*(a2[9] + 10360)), BYTE2(*(a2[9] + 10360)), HIBYTE(*(a2[9] + 10360)));
  v13 = 0;
  if (v16)
  {
    goto LABEL_10;
  }

  return v13;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpPrivateMac(uint64_t a1, AppleBCMWLANCore *a2)
{
  *v10 = 0;
  v11 = 0;
  *v8 = 0;
  v9 = 0;
  if (a1)
  {
    v3 = *(a1 + 245208);
    v4 = *(a1 + 245200);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = (*(*a2 + 1952))(a2);
  BGScanAdapter = AppleBCMWLANCore::getBGScanAdapter(a2);
  AppleBCMWLANBGScanAdapter::getPrevAndCurrentBGScanPrivateMac(BGScanAdapter, v10, v8);
  if (AppleBCMWLANCore::isAssociated(a2))
  {
    v11 = 0;
    *v10 = 0;
  }

  IO80211Print(v5, 1, -1, 0, v3, 0, v4, "Private Mac on sleep %02x:%02x:%02x:%02x:%02x:%02x\nCurrent MAC address %02x:%02x:%02x:%02x:%02x:%02x\n", v8[0], v8[1], v8[2], v8[3], v9, HIBYTE(v9));
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdStaticSMPS(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  IO80211CoreDbg::parseUInt32FromCMD();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMIMOMode(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    v10 = IOMallocZeroData();
    if (v10)
    {
      v11 = v10;
      AppleBCMWLANPowerManager::getCurrentRadioChainConfig(*(*(a2 + 9) + 5520), v9);
      AppleBCMWLANCore::featureFlagClearBit(a2, 24);
      v24 = 0xAAAAAAAAAAAAAAAALL;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23[0] = v12;
      v23[1] = v12;
      BYTE4(v23[0]) = 0;
      LODWORD(v23[0]) = 13;
      AppleBCMWLANCore::getPowerStats(a2, v11, v23);
      v13 = v9[3];
      if (v13)
      {
        if (v13 == 1)
        {
          v14 = "DYNAMIC SMPS";
        }

        else if (v13 == 3)
        {
          v14 = "SMPS DISABLED";
        }

        else
        {
          v14 = "SMPS RESERVED";
        }
      }

      else
      {
        v14 = "STATIC SMPS";
      }

      v15 = v9[4];
      if (v15 >= 3)
      {
        if (v15 == 3)
        {
          v16 = "80Mhz";
        }

        else
        {
          v16 = "NONE";
        }
      }

      else
      {
        v16 = off_1003CB048[v15];
      }

      v17 = "DISABLED";
      if (v9[9] == 1)
      {
        v17 = "ENABLED";
      }

      v18 = "NOT In-Progress";
      if (v9[8] == 1)
      {
        v18 = "In-Progress";
      }

      if (v9[10] == 1)
      {
        v19 = "UNLOCKED";
      }

      else
      {
        v19 = "LOCKED";
      }

      if (v9[7] == 1)
      {
        v20 = "Enabled";
      }

      else
      {
        v20 = "Disabled";
      }

      v21 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "MIMO POWER SAVE STATS:\n\tActiveChains = %d\n \tRxChain = %d\n \tTxChain = %d\n \tSMPS = %s\n \tChannelWidth = %s\n \tBattery Saver Mode = %s\n \tFaceTime/WiFiCall = %s\n \tDevice = %s\n \tMRC Threshold = %ddB\n \tMIMO Leak Gaurd = %dms\n \tBcnBasedRadioSwitch = %s\n \tTotal_Idle_Time_MIMO = %u\n \tTotal_Idle_Time_SISO = %u\n \tTotal_Rx_Time_MIMO = %u\n \tTotal_Rx_Time_SISO = %u\n \tTotal_Tx_Time_1_Chain = %u\n \tTotal_Tx_Time_2_Chain = %u\n \tTotal_Tx_Time_3_Chain = %u \n \tTotal_Idle_Time_OCL = %u \n \tTotal_Rx_Time_OCL = %u \n", *v9, v9[1], v9[2], v14, v16, v17, v18, v19, v9[5], v9[6], v20, v11[83], v11[84], v11[86], v11[85], v11[87], v11[88], v11[89], v11[90], v11[91]);
      if (a1)
      {
        *(v4 + 3520) = v21;
      }

      IOFreeData();
    }

    IOFreeData();
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureMIMOPS(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
  if (v8 <= 1)
  {
    AppleBCMWLANConfigManager::configureMIMOPSSupport(ConfigManager, v8 != 0);
    v10 = 0;
    if (!a1)
    {
      return 0;
    }

    goto LABEL_10;
  }

  isMIMOPSSupported = AppleBCMWLANConfigManager::isMIMOPSSupported(ConfigManager);
  v12 = "Disabled";
  if (isMIMOPSSupported)
  {
    v12 = "Enabled";
  }

  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "MIMO Power Save Support = %s\n", v12);
  if (a1)
  {
LABEL_10:
    *(v4 + 3520) = v10;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMIMOPSStatus(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v25 = 2;
  v26 = 0;
  v24[0] = &v25;
  v24[1] = 0x1000100010;
  Commander = AppleBCMWLANCore::getCommander(a2);
  v23[0] = &v25;
  v23[1] = 16;
  v9 = AppleBCMWLANCommander::runIOVarGet(Commander, "mimo_ps_status", v23, v24, 0);
  if (v9)
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to collect MIMO PS Status values \n", "cmdGetMIMOPSStatus", 3897);
    }

    return v9;
  }

  v10 = BYTE1(v25) & 0xF;
  if (BYTE1(v25) >= 0x10u)
  {
    v12 = BYTE1(v25) >> 4;
    switch(v12)
    {
      case 1:
        v11 = "20Mhz";
        break;
      case 2:
        v11 = "40Mhz";
        break;
      case 3:
        v11 = "80Mhz";
        break;
      default:
        v11 = "NONE";
        break;
    }
  }

  else
  {
    v11 = "20/40/80Mhz";
  }

  v13 = "Invalid AP cap/association status";
  v14 = v10 == 3;
  if (v10 >= 3)
  {
    v15 = "LEGACY";
    if (!v14)
    {
      v15 = "Invalid AP cap/association status";
    }
  }

  else
  {
    v15 = off_1003CAFF0[v10];
  }

  if (BYTE2(v25) >= 3u)
  {
    if (BYTE2(v25) == 3)
    {
      v13 = "LEGACY ASSOCIATION";
    }
  }

  else
  {
    v13 = off_1003CB008[BYTE2(v25)];
  }

  if (BYTE3(v25) >= 5u)
  {
    v16 = "NONE";
    if (BYTE3(v25) == 5)
    {
      v16 = "INFORM AP PENDING";
    }
  }

  else
  {
    v16 = off_1003CB020[BYTE3(v25)];
  }

  if (BYTE4(v25) == 1)
  {
    v17 = "ACTIVE";
  }

  else
  {
    v17 = "NOT ACTIVE";
  }

  if (HIBYTE(v25) >= 3u)
  {
    if (HIBYTE(v25) == 3)
    {
      v18 = "80Mhz";
    }

    else
    {
      v18 = "NONE";
    }
  }

  else
  {
    v18 = off_1003CB048[HIBYTE(v25)];
  }

  if (v26 <= 7u)
  {
    if (v26 <= 1u)
    {
      v19 = "NONE";
      if (v26)
      {
        v19 = "LTE CO-EX";
      }

      goto LABEL_58;
    }

    if (v26 == 2)
    {
      v19 = "MIMOPS BSS";
      goto LABEL_58;
    }

    if (v26 == 4)
    {
      v19 = "AWDL BSS";
      goto LABEL_58;
    }

LABEL_56:
    v19 = "AP BSS";
    if (v26 != 256)
    {
      v19 = "NONE";
    }

    goto LABEL_58;
  }

  if (v26 <= 0x1Fu)
  {
    if (v26 == 8)
    {
      v19 = "SCAN";
      goto LABEL_58;
    }

    if (v26 == 16)
    {
      v19 = "TXPRR";
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (v26 == 32)
  {
    v19 = "PWR THROTTLE";
    goto LABEL_58;
  }

  if (v26 == 64)
  {
    v19 = "TEMP SENSE";
    goto LABEL_58;
  }

  if (v26 != 128)
  {
    goto LABEL_56;
  }

  v19 = "IOVAR";
LABEL_58:
  if (BYTE4(v26) >= 3u)
  {
    v20 = "80Mhz";
    if (BYTE4(v26) != 3)
    {
      v20 = "NONE";
    }
  }

  else
  {
    v20 = off_1003CB048[BYTE4(v26)];
  }

  v21 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "MIMO POWER SAVE STATUS:\n\tAP BW = %s\n \tAP CAPABILITY = %s\n \tAssoc State = %s\n \tMIMO PS State = %s\n \tMRC State = %s\n\tBSS RxChain = %d\n \tBSS TxChain = %d\n \tBSS Bandwidth = %s\n \tHW State = %s\n \tHW Rx Chain = %d\n \tHW Tx Chain = %d\n \tHW Bandwidth = %s\n \tBCNRX State = %d\n \tBasic Rates Present = %d\n \tBCMC RX State = %d\n", v11, v15, v13, v16, v17, BYTE5(v25), BYTE6(v25), v18, v19, BYTE2(v26), BYTE3(v26), v20, BYTE5(v26), BYTE6(v26), HIBYTE(v26));
  if (a1)
  {
    *(v4 + 3520) = v21;
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureOCL(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    v8 = strlen((a1 + 10));
    if (!strncmp((a1 + 10), "ocl_enable", v8))
    {
      ConfigManager = AppleBCMWLANCore::getConfigManager(a2);
      isOCLSupportedInDriver = AppleBCMWLANConfigManager::isOCLSupportedInDriver(ConfigManager);
      v26 = 0;
      v25[0] = &v26;
      v25[1] = 0x400040004;
      Commander = AppleBCMWLANCore::getCommander(a2);
      v24[0] = &v26;
      v24[1] = 4;
      v14 = AppleBCMWLANCommander::runIOVarGet(Commander, "ocl_enable", v24, v25, 0);
      if (isOCLSupportedInDriver)
      {
        v18 = "Enabled";
      }

      else
      {
        v18 = "Disabled";
      }

      v19 = IO80211Print(v7, 5, -1, 0, v5, 0, v6, "OCL Support in Host Driver= %s\n", v18);
      if (v26 == 1)
      {
        v20 = "Enabled";
      }

      else
      {
        v20 = "Disabled";
      }

      v21 = IO80211Print(v7, 5, -1, 0, v5, v19, v6 - v19, "OCL Enabled by Host in Firmware = %s\n", v20);
      if (a1)
      {
        v22 = v21 + v19;
LABEL_29:
        *(v4 + 3520) = v22;
      }
    }

    else
    {
      v9 = IO80211CoreDbg::parseUInt32FromCMD();
      if (v9 > 1)
      {
        v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "OCL Support:Invalid Config Value!");
        v14 = 3758097090;
        if (!a1)
        {
          return v14;
        }

        goto LABEL_28;
      }

      v10 = v9;
      v11 = "Disabled";
      if (v9 == 1)
      {
        v11 = "Enabled";
      }

      v12 = IO80211Print(v7, 5, -1, 0, v5, 0, v6, "OCL Support to be Configured by Host = %s\n", v11);
      v13 = *(*(a2 + 9) + 5520);
      if (v10 == 1)
      {
        AppleBCMWLANPowerManager::configureOCLParams(v13);
      }

      else
      {
        AppleBCMWLANPowerManager::configureOCLSetting(v13, 0);
      }

      v14 = 0;
      if (a1)
      {
LABEL_28:
        v22 = v12;
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdConfigureOCL", 3919);
    }

    v14 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v14;
}

uint64_t AppleBCMWLANCoreDbg::cmdOCLRssiThreshold(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    v8 = strlen((a1 + 10));
    if (strncmp((a1 + 10), "ocl_rssi_threshold", v8))
    {
      v9 = IO80211CoreDbg::parseSInt32FromCMD();
      v10 = v9;
      if (v9 < 0xFFFFFF81)
      {
        v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Invalid OCL RSSI Threshold value:%d!!!\n", v9);
        v12 = 3758097090;
        if (!a1)
        {
          return v12;
        }
      }

      else
      {
        AppleBCMWLANPowerManager::configureOCLRssiThreshold(*(*(a2 + 9) + 5520), v9);
        v11 = IO80211Print(v7, 5, -1, 0, v5, 0, v6, "Configured OCL RSSI Threshold value:%d!!!\n", v10);
        v12 = 0;
        if (!a1)
        {
          return v12;
        }
      }

      goto LABEL_15;
    }

    v17 = 0;
    v16[0] = &v17;
    v16[1] = 0x400040004;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v15[0] = &v17;
    v15[1] = 4;
    v12 = AppleBCMWLANCommander::runIOVarGet(Commander, "ocl_rssi_threshold", v15, v16, 0);
    v11 = IO80211Print(v7, 5, -1, 0, v5, 0, v6, "OCL RSSI Threshold = %d dBm\n", v17);
    if (a1)
    {
LABEL_15:
      *(v4 + 3520) = v11;
    }
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdOCLRssiThreshold", 3971);
    }

    v12 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v12;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetOCLStatus(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) >= 0xC)
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) >= 0xE)
      {
        v8 = 56;
      }

      else
      {
        v8 = 52;
      }
    }

    else
    {
      v8 = 6;
    }

    v10 = v8;
    v11 = IOMallocZeroData();
    if (v11)
    {
      v12 = v11;
      v27[0] = v11;
      v27[1] = v10 | ((v10 | (v10 << 16)) << 16);
      Commander = AppleBCMWLANCore::getCommander(a2);
      v9 = AppleBCMWLANCommander::runIOVarGet(Commander, "ocl_status", &kNoTxPayload, v27, 0);
      if (v9)
      {
        if (v7 && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to collect OCL Status values \n", "cmdGetOCLStatus", 4053);
          if (!a1)
          {
            goto LABEL_41;
          }

          goto LABEL_20;
        }

        if (a1)
        {
LABEL_20:
          v14 = 0;
LABEL_40:
          *(v4 + 3520) = v14;
        }

LABEL_41:
        IOFreeData();
        return v9;
      }

      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) > 0xB)
      {
        AppleBCMWLANCore::getFirmwareInterfaceVersion(a2);
        v15 = *(v12 + 4);
        v16 = 3;
        v17 = 2;
      }

      else
      {
        v15 = *(v12 + 2);
        v16 = 5;
        v17 = 4;
      }

      v25 = *(v12 + v17);
      v26 = *(v12 + v16);
      v18 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "OCL STATUS:\n FW_STATUS(0x%08x) :\n", v15);
      v19 = v18;
      if (v15)
      {
        v20 = IO80211Print(v7, 1, -1, 0, v5, v18, v6 - v18, "\t OCL_DISABLED_HOST is SET \n");
      }

      else
      {
        v20 = IO80211Print(v7, 1, -1, 0, v5, v18, v6 - v18, "\t WL_OCL_ENABLED_HOST is SET \n");
      }

      v21 = v20 + v19;
      if ((v15 & 2) != 0)
      {
        v21 += IO80211Print(v7, 1, -1, 0, v5, v21, v6 - v21, "\t OCL_DISABLED_RSSI is SET \n");
        if ((v15 & 4) == 0)
        {
LABEL_30:
          if ((v15 & 8) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_45;
        }
      }

      else if ((v15 & 4) == 0)
      {
        goto LABEL_30;
      }

      v21 += IO80211Print(v7, 1, -1, 0, v5, v21, v6 - v21, "\t OCL_DISABLED_LTEC is SET \n");
      if ((v15 & 8) == 0)
      {
LABEL_31:
        if ((v15 & 0x10) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v21 += IO80211Print(v7, 1, -1, 0, v5, v21, v6 - v21, "\t OCL_DISABLED_SISO is SET \n");
      if ((v15 & 0x10) == 0)
      {
LABEL_32:
        if ((v15 & 0x20) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v21 += IO80211Print(v7, 1, -1, 0, v5, v21, v6 - v21, "\t OCL_DISABLED_CAL is SET \n");
      if ((v15 & 0x20) == 0)
      {
LABEL_33:
        if ((v15 & 0x40) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_47:
      v21 += IO80211Print(v7, 1, -1, 0, v5, v21, v6 - v21, "\t OCL_DISABLED_CHANSWITCH is SET \n");
      if ((v15 & 0x40) == 0)
      {
LABEL_35:
        v22 = IO80211Print(v7, 1, -1, 0, v5, v21, v6 - v21, "\n HW_STATUS(0x%0x) :\n", v25) + v21;
        if (v25)
        {
          v22 += IO80211Print(v7, 1, -1, 0, v5, v22, v6 - v22, "\t OCL_HWCFG is SET \n");
          if ((v25 & 2) == 0)
          {
LABEL_37:
            if ((v25 & 0x80) == 0)
            {
              goto LABEL_38;
            }

LABEL_51:
            LODWORD(v22) = IO80211Print(v7, 1, -1, 0, v5, v22, v6 - v22, "\t OCL_COREDOWN is SET \n") + v22;
LABEL_38:
            v23 = IO80211Print(v7, 1, -1, 0, v5, v22, v6 - v22, "\n CoreMask(0x%0x) :\n", v26);
            if (a1)
            {
              v14 = (v23 + v22);
              goto LABEL_40;
            }

            goto LABEL_41;
          }
        }

        else if ((v25 & 2) == 0)
        {
          goto LABEL_37;
        }

        v22 += IO80211Print(v7, 1, -1, 0, v5, v22, v6 - v22, "\t OCL_HW_MIMO is SET \n");
        if ((v25 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_51;
      }

LABEL_34:
      v21 += IO80211Print(v7, 1, -1, 0, v5, v21, v6 - v21, "\t OCL_DISABLED_ASPEND (Association Suspend) is SET \n");
      goto LABEL_35;
    }

    return 12;
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdGetOCLStatus", 4023);
    }

    v9 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMWSOclCoexChannelMap(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::isOCLEnabled(a2))
  {
    v16 = 0;
    v15 = 1;
    v14[0] = &v15;
    v14[1] = 0xA000A000ALL;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v13[0] = &v15;
    v13[1] = 10;
    v9 = AppleBCMWLANCommander::runIOVarGet(Commander, "mws_ocl_override", v13, v14, 0);
    if (v9)
    {
      if (v7 && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(v7, "[dk] %s@%d:Failed to get MWS OCL Coex Channel Map \n", "cmdGetMWSOclCoexChannelMap", 4153);
        if (!a1)
        {
          return v9;
        }

        goto LABEL_9;
      }

      if (a1)
      {
LABEL_9:
        v10 = 0;
LABEL_17:
        *(v4 + 3520) = v10;
      }
    }

    else
    {
      v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "MWS OCL COEX Channel Map Version:%u. 2GhzMap:0x%0x 5GhzLoMap:0x%0x 5GhzMidMap:0x%0x 5GhzHiMap:0x%0x \n", v15, v16, WORD1(v16), WORD2(v16), HIWORD(v16));
      if (a1)
      {
        v10 = v11;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:OCL Feature is not Enabled on this platform\n", "cmdGetMWSOclCoexChannelMap", 4127);
    }

    v9 = 3758097095;
    if (a1)
    {
      *(v4 + 3520) = 0;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdStopDataPath(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = *AppleBCMWLANCore::getBus(a2);
  (*(v4 + 616))();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnablePacketTimestamping(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  result = (*(*a2 + 296))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdDisablePacketTimestamping(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  result = (*(*a2 + 304))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdTstTimeSync(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (a1)
  {
    v8 = v7;
    if (!strncasecmp((a1 + 10), "tst_timesync=", 0xDuLL))
    {
      v10 = IO80211CoreDbg::parseUInt32FromCMD();
      v11 = *AppleBCMWLANCore::getBus(a2);
      if ((*(v11 + 504))() == -536870201)
      {
        v12 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "TimeSyncEngine Test ID %x can not execute, check capability with timesync_info command\n", v10);
      }

      else
      {
        v12 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "TimeSyncEngine Test ID %x executed.\n", v10);
      }

      v9 = v12;
    }

    else
    {
      v9 = 0;
    }

    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTimeSyncInfo(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  (*(*a2 + 1952))(a2);
  v5 = *AppleBCMWLANCore::getBus(a2);
  v6 = (*(v5 + 512))();
  if (a1)
  {
    *(v4 + 3520) = v6;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdIfCounters(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  result = AppleBCMWLANCore::issueIfCounterIOVar(a2, 0);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetRingSize(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "\n\tSkywalk Enabled \n\tTx Ring Size = %d\n\tRx Ring Size = %d\n ", *(a2[9] + 4436), *(a2[9] + 4440));
  if (a1)
  {
    *(v4 + 3520) = v8;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSkywalkDump(uint64_t a1, void *a2)
{
  v16 = a1 + 241664;
  if (a1)
  {
    v3 = *(a1 + 245208);
    v4 = *(a1 + 245200);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = (*(*a2 + 1952))(a2);
  v6 = IO80211Print(v5, 1, -1, 0, v3, 0, v4, "\tIPC TX Ring Size %d RX Ring Size %d\n", *(a2[9] + 4436), *(a2[9] + 4440));
  v7 = 0;
  do
  {
    v18 = 0;
    v8 = (*(*a2 + 1992))(a2, v7);
    if (v8)
    {
      v9 = v8;
      acquireProperty<OSString>(v8, "IO80211InterfaceRole", &v18, 0, "IOService");
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(v9);
      v11 = v18 ? OSString::getCStringNoCopy(v18) : "Unknown";
      v12 = v6 + IO80211Print(v5, 1, -1, 0, v3, v6, v4 - v6, "\tSkywalk Interface ID %d, Role %s\n", InterfaceId, v11);
      v13 = (*(*v9 + 1136))(v9);
      v14 = (*(*v9 + 1144))(v9);
      v6 = v12 + IO80211Print(v5, 1, -1, 0, v3, v12, v4 - v12, "\tSkywalk TX Queue Depth %d, Skywalk RX Queue Capacity %d\n", v13, v14);
      (*(*v9 + 1112))(v9);
      if (v18)
      {
        (v18->release)(v18);
      }
    }

    v7 = (v7 + 1);
  }

  while (v7 != 12);
  if (a1)
  {
    *(v16 + 3520) = v6;
  }

  return 0;
}

uint64_t acquireProperty<OSString>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
    if (v7)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      result = anObject;
      if (anObject)
      {
        (anObject->release)(anObject);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpColocatedCache(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  IO80211CoreDbg::parseUInt32FromCMD();
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdScanSuppress(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = IO80211CoreDbg::parseUInt32FromCMD();
  if (v8)
  {
    v9 = "Suppressing scans";
  }

  else
  {
    v9 = "Allowing scans";
  }

  v10 = (*(*a2 + 1784))(a2, v8 != 0);
  v11 = "failure\n";
  if (!v10)
  {
    v11 = "success\n";
  }

  v12 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " \n %s %s", v9, v11);
  if (a1)
  {
    *(v4 + 3520) = v12;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMloStatus(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  (*(*a2 + 1952))(a2);
  if (AppleBCMWLANCore::featureFlagIsBitSet(a2, 115))
  {
    v7 = *(*(a2 + 9) + 5592);
    if (v7)
    {
      AppleBCMWLAN11beAdapter::dumpMloStatus(v7, v5, 0, v6);
    }
  }

  if (a1)
  {
    *(v4 + 3520) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdForceLPSCForNDDForActive(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD() != 0;
  NDDAdapter = AppleBCMWLANCore::getNDDAdapter(a2);
  AppleBCMWLANNearbyDeviceDiscoveryAdapter::dbgForceLPSCForNDD(NDDAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetNDDTimeoutForActive(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseSInt32FromCMD();
  NDDAdapter = AppleBCMWLANCore::getNDDAdapter(a2);
  AppleBCMWLANNearbyDeviceDiscoveryAdapter::dbgSetNDDTimeoutMsForActive(NDDAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetNDDNumReports(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseSInt32FromCMD();
  NDDAdapter = AppleBCMWLANCore::getNDDAdapter(a2);
  AppleBCMWLANNearbyDeviceDiscoveryAdapter::dbgSetNDDNumReports(NDDAdapter, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetBTCoexMode(uint64_t a1, void *a2)
{
  (*(*a2 + 1952))(a2);
  v6 = IO80211CoreDbg::parseUInt32FromCMD();
  v5[0] = &v6;
  v5[1] = 4;
  result = AppleBCMWLANCommander::runIOVarSet(*(a2[9] + 5408), "btc_mode", v5, 0, 0);
  if (a1)
  {
    if (!result)
    {
      *(a1 + 245184) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetBTCoexMode(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v25 = 0;
  v24[0] = &v25;
  v24[1] = 0x400040004;
  v8 = *(a2[9] + 5408);
  v23[0] = &v25;
  v23[1] = 4;
  v9 = AppleBCMWLANCommander::runIOVarGet(v8, "btc_mode", v23, v24, 0);
  if (v25 >= 7u)
  {
    IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Unrecognized 2G mode returned %d \n", v25);
    return 0;
  }

  if (BYTE1(v25) >= 7u)
  {
    IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Unrecognized 5G mode returned %d \n", BYTE1(v25));
    return 0;
  }

  v10 = v9;
  v22 = off_1003CB0D0[v25 & 7];
  v11 = off_1003CB060[v25 & 7];
  v12 = (v25 >> 8) & 7;
  v13 = off_1003CB060[v12];
  v19 = off_1003CB098[v12];
  v20 = off_1003CB098[v25 & 7];
  v21 = off_1003CB0D0[v12];
  v14 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "%-10s%-15s%-10s \n", "", "2G", "5G");
  v15 = IO80211Print(v7, 1, -1, 0, v5, v14, v6 - v14, "%-10s%-15s%-10s \n", "Mode:", v11, v13) + v14;
  v16 = v15 + IO80211Print(v7, 1, -1, 0, v5, v15, v6 - v15, "%-10s%-15s%-10s \n", "WiFiTx:", v20, v19);
  v17 = IO80211Print(v7, 1, -1, 0, v5, v16, v6 - v16, "%-10s%-15s%-10s \n", "WiFiRx:", v22, v21);
  if (a1)
  {
    *(v4 + 3520) = v16 + v17;
  }

  return v10;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetMinBTRSSI(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x400040004;
  v8 = *(a2[9] + 5408);
  v12[0] = &v13;
  v12[1] = 4;
  v9 = AppleBCMWLANCommander::runIOVarGet(v8, "btc_btrssi_avg", v12, v14, 0);
  v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "%d dBm", v13);
  if (a1)
  {
    *(v4 + 3520) = v10;
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetScanSuppress(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v14 = 0;
  v13[0] = &v14;
  v13[1] = 0x400040004;
  v8 = *(a2[9] + 5408);
  v12[0] = &v14;
  v12[1] = 4;
  v9 = AppleBCMWLANCommander::runIOCtlGet(v8, 115, v12, v13, 0);
  if (v9)
  {
    if (v7 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v7, "[dk] %s@%d:Unable to get scansuppress state %d: %d\n", "cmdGetScanSuppress", 4589, v14, v9);
    }
  }

  else
  {
    v10 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Scan Suppress : %d", v14);
    if (a1)
    {
      *(v4 + 3520) = v10;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetLimAggPolicy(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x400040004;
  v8 = *(a2[9] + 5408);
  v13[0] = &v14;
  v13[1] = 4;
  v9 = AppleBCMWLANCommander::runIOVarGet(v8, "btc_lim_agg_enab", v13, v15, 0);
  v10 = "Error: Uknown value returned \n";
  if (v14 == 1)
  {
    v10 = "Limited Packet Aggregation \n";
  }

  if (v14)
  {
    v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, v10);
  }

  else
  {
    v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Full Packet Aggregation \n");
  }

  if (a1)
  {
    *(v4 + 3520) = v11;
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdSetLimAggPolicy(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (!AppleBCMWLANNetAdapter::isLimitedAggregationSupported(*(a2[9] + 5600)))
  {
    LODWORD(v9) = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Error: Limited Aggregation not supported on this chipset \n");
    result = 0;
    v9 = v9;
    if (!a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  v11 = IO80211CoreDbg::parseUInt32FromCMD();
  v10[0] = &v11;
  v10[1] = 4;
  result = AppleBCMWLANCommander::runIOVarSet(*(a2[9] + 5408), "btc_lim_agg_enab", v10, 0, 0);
  v9 = 0;
  if (a1)
  {
LABEL_8:
    *(v4 + 3520) = v9;
  }

  return result;
}

uint64_t AppleBCMWLANCoreDbg::htSisoOnly(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  HtSisoOnly = AppleBCMWLANPowerManager::getHtSisoOnly(*(a2[9] + 5520));
  v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "htSisoOnly=<%d> \n ", HtSisoOnly);
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::injectBssTransEvent(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  *(v4 + 8) = 7;
  *(v4 + 20) = 23;
  *(v4 + 51) |= 1u;
  *(v4 + 49) = 7;
  *(v4 + 55) = 3636;
  *(v4 + 68) = IO80211CoreDbg::parseUInt32FromCMD();
  if (AppleBCMWLANCore::getNetAdapter(a2))
  {
    NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
    AppleBCMWLANNetAdapter::handleBssTransEvent(NetAdapter, v5);
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  IOFreeData();
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::injectBeaconMiti(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v12 = 0;
  v13 = &v12;
  v14 = 0x5802000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  DWORD1(v17) = 188;
  HIDWORD(v17) = IO80211CoreDbg::parseUInt32FromCMD();
  NetAdapter = AppleBCMWLANCore::getNetAdapter(a2);
  AppleBCMWLANNetAdapter::getBeaconMuteMitigationVersion(NetAdapter);
  *(v13 + 15) = 8;
  if (AppleBCMWLANCore::getBssManager(a2))
  {
    BssManager = AppleBCMWLANCore::getBssManager(a2);
    if (AppleBCMWLANBssManager::getCurrentBSS(BssManager))
    {
      v6 = AppleBCMWLANCore::getBssManager(a2);
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v6);
      (*(*CurrentBSS + 136))(CurrentBSS, v13 + 8);
    }
  }

  if (AppleBCMWLANCore::getNetAdapter(a2))
  {
    v8 = (*(*a2 + 88))(a2);
    v9 = (*(*v8 + 168))(v8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = ___ZN19AppleBCMWLANCoreDbg16injectBeaconMitiEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke;
    v11[3] = &__block_descriptor_tmp_437;
    v11[4] = &v12;
    v11[5] = a2;
    IODispatchQueue::DispatchAsync(v9, v11);
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  _Block_object_dispose(&v12, 8);
  return 0;
}