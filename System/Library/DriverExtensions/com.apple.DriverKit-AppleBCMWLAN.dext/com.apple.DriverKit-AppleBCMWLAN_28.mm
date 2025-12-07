uint64_t AppleBCMWLANCore::generateChipImage(AppleBCMWLANCore *this, AppleBCMWLANChipImage *a2)
{
  OUTLINED_FUNCTION_35_1();
  if (!(*(v5 + 1952))() || (OUTLINED_FUNCTION_24_1(), v7 = (*(v6 + 1952))(v2), !OUTLINED_FUNCTION_229(v7)))
  {
    if (a2)
    {
      goto LABEL_4;
    }

    return 3758097084;
  }

  OUTLINED_FUNCTION_24_1();
  v26 = (*(v25 + 1952))(v2);
  CCLogStream::logNoticeIf(v26, 0x80uLL, "[dk] %s@%d:\n", "generateChipImage", 5377);
  if (!a2)
  {
    return 3758097084;
  }

LABEL_4:
  OUTLINED_FUNCTION_89_0();
  if ((*(v8 + 144))(a2))
  {
    OUTLINED_FUNCTION_66_0();
    if ((*(v13 + 1952))(v2))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v14 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v16 = (*(v15 + 1952))(v2);
        CCLogStream::logEmergency(v16, "[dk] %s@%d: Failed to normalize NVRAM\n");
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_89_0();
    if ((*(v9 + 144))(a2))
    {
      OUTLINED_FUNCTION_66_0();
      if ((*(v17 + 1952))(v2))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v18 + 1952))(v2);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v20 = (*(v19 + 1952))(v2);
          CCLogStream::logEmergency(v20, "[dk] %s@%d: Failed to generate provisioned NVRAM parameters\n");
        }
      }
    }

    else
    {
      v10 = OUTLINED_FUNCTION_51_0(*(v2 + 72));
      v3 = (*(v11 + 48))(v10, a2);
      if (v3)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v21 + 1952))(v2))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v22 + 1952))(v2);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v24 = (*(v23 + 1952))(v2);
            CCLogStream::logEmergency(v24, "[dk] %s@%d: Failed to generate chip image\n");
          }
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::validateChipImage(AppleBCMWLANCore *this, const AppleBCMWLANChipImage *a2)
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v4 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    v6 = (*(v5 + 1952))(v3);
    if (OUTLINED_FUNCTION_229(v6))
    {
      OUTLINED_FUNCTION_19_1();
      v15 = (*(v14 + 1952))(v3);
      CCLogStream::logNoticeIf(v15, 0x80uLL, "[dk] %s@%d:\n", "validateChipImage", 5517);
    }
  }

  v7 = 3825174278;
  OUTLINED_FUNCTION_24_1();
  if (!(*(v8 + 160))(v2))
  {
    return 3825174294;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v9 + 160))(v2))
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v10 + 160))(v2))
    {
      v11 = OUTLINED_FUNCTION_62_0(*(v3 + 72));
      if ((*(v12 + 96))(v11, v2))
      {
        return 0;
      }

      else
      {
        return 3825174295;
      }
    }

    else
    {
      return 3825174282;
    }
  }

  return v7;
}

AppleBCMWLANCommander *AppleBCMWLANCore::prepareFRCallback(AppleBCMWLANCore *this, const CCFaultReport *a2)
{
  atomic_fetch_add_explicit((*(this + 9) + 8), 1u, memory_order_relaxed);
  if (!a2)
  {
    return OUTLINED_FUNCTION_97();
  }

  OUTLINED_FUNCTION_108();
  v5 = (*(*v4 + 88))(v4);
  OUTLINED_FUNCTION_19_1();
  v7 = (*(v6 + 128))(v3) + 469794029;
  if (v7 > 3 || v7 == 2)
  {
    if (v5)
    {
      v10 = OUTLINED_FUNCTION_137();
      if (v10)
      {
        AppleBCMWLANCommander::delayQueueTimeouts(v10, 20000);
      }
    }

    OUTLINED_FUNCTION_19_1();
    if ((*(v11 + 128))(v3) != -469793503 && *(*(v2 + 9) + 11288))
    {
      bzero(v15, 0x8CuLL);
      OUTLINED_FUNCTION_19_1();
      v13 = (*(v12 + 160))(v3);
      if (v13)
      {
        strlcpy(v16, v13, 0x80uLL);
      }

      OUTLINED_FUNCTION_257();
      if (v14)
      {
        IO80211Controller::postMessage(v2, v14, 0x4Fu, v15, 0x8CuLL, 1);
      }
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_137();
    if (!result)
    {
      return result;
    }

    AppleBCMWLANCommander::delayQueueTimeouts(result, 60000);
  }

  return 0;
}

void AppleBCMWLANCore::handleLinkInactivityCheck(AppleBCMWLANCore *a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  if (*(v3 + 6232) == a2)
  {
    if (IO80211BssManager::isAssociated(*(v3 + 5432)))
    {
      if (*(*(a1 + 9) + 6724))
      {
        AppleBCMWLANCore::timeSinceLastActivity_ms(a1);
        OUTLINED_FUNCTION_256();
        if (!v17 & v6)
        {
          if ((*(v5 + 778) & 1) == 0)
          {
            isAssociatedToAdhoc = IO80211BssManager::isAssociatedToAdhoc(*(v5 + 5432));
            v8 = *(a1 + 9);
            if ((isAssociatedToAdhoc & 1) == 0)
            {
              if (AppleBCMWLANConfigManager::setupBeaconOffload(*(v8 + 5464), 1, 1, *(v8 + 208), 0))
              {
                OUTLINED_FUNCTION_66_0();
                if ((*(v9 + 1952))(a1))
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v10 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_24_1();
                    (*(v37 + 1952))(a1);
                    OUTLINED_FUNCTION_63_0();
                    v38 = OUTLINED_FUNCTION_106();
                    v39(v38);
                    OUTLINED_FUNCTION_6();
                    CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot enable beacon offload with error %s\n", v40, v41, v42);
                  }
                }
              }

              AppleBCMWLANCore::collectBeaconRxCounters(a1, *(a1 + 9) + 19692, 0);
              v8 = *(a1 + 9);
              if (*(v8 + 5504))
              {
                *(*(a1 + 9) + 19048) = getCurrentContinuousTimeMilliSeconds() / 0x3E8 - *(*(a1 + 9) + 19104);
                v11 = *(a1 + 9);
                v12 = *(v11 + 5504);
                v13 = *(v11 + 19064);
                v46[0] = *(v11 + 19048);
                v46[1] = v13;
                v46[2] = *(v11 + 19080);
                v47 = *(v11 + 19096);
                v14 = *(v11 + 19144);
                v45[0] = *(v11 + 19128);
                v45[1] = v14;
                v15 = *(v11 + 35936);
                v43[0] = *(v11 + 35920);
                v43[1] = v15;
                v44 = *(v11 + 35952);
                AppleBCMWLANIOReportingCore::updateScanRoamStats(v12, v46, v45, v43);
                v8 = *(a1 + 9);
              }
            }

            AppleBCMWLANPowerManager::configureBeaconBasedChannelWidthSwitch(*(v8 + 5520), 1);
            OUTLINED_FUNCTION_151();
            v17 = v17 || v16 == 0;
            if (!v17)
            {
              OUTLINED_FUNCTION_66_0();
              if ((*(v18 + 1952))(a1))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v19 + 1952))(a1);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v34 + 1952))(a1);
                  OUTLINED_FUNCTION_63_0();
                  v35 = OUTLINED_FUNCTION_106();
                  v36(v35);
                  OUTLINED_FUNCTION_6();
                  CCLogStream::logAlertIf(1, 0x20uLL, "[dk] %s@%d: Error: cannot configure beacon based Channel Width : %s\n", v40, v41, v42);
                }
              }
            }

            *(*(a1 + 9) + 778) = 1;
            v20 = *(a1 + 9);
            if ((*(v20 + 18195) & 1) == 0)
            {
              *(v20 + 18195) = 1;
              *(*(a1 + 9) + 19900) = 1;
              *(*(a1 + 9) + 19901) = 1;
              AppleBCMWLANCore::setTrafficInactivityStats(a1);
            }

            *&v46[0] = 0;
            mach_continuous_time();
            absolutetime_to_nanoseconds();
            OUTLINED_FUNCTION_169();
            *(*(a1 + 9) + 17712) = v21 / v22;
          }
        }
      }

      AppleBCMWLANCore::timeSinceLastActivity_ms(a1);
      OUTLINED_FUNCTION_256();
      if (!v17 & v6)
      {
        AppleBCMWLANPowerManager::configureTVPMPeriodicity(*(v23 + 5520), 10);
        v23 = *(a1 + 9);
      }

      if (*(v23 + 19840) != *(v23 + 19836))
      {
        isAssociated = IO80211BssManager::isAssociated(*(v23 + 5432));
        v23 = *(a1 + 9);
        if (isAssociated)
        {
          OUTLINED_FUNCTION_5_0();
          (*(v25 + 56))();
          v23 = *(a1 + 9);
        }
      }

      if (*(v23 + 14248))
      {
        if ((*(v23 + 17512) & 1) == 0 || (v26 = OUTLINED_FUNCTION_221(), AppleBCMWLANCore::dumpWmeCounters(v26, v27, 0, 0), v23 = *(a1 + 9), *(v23 + 14248)))
        {
          if ((*(v23 + 17512) & 4) != 0)
          {
            v28 = OUTLINED_FUNCTION_221();
            AppleBCMWLANCore::printDataPathDebug(v28, v29, 0, 0);
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v30 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v31 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v33 = (*(v32 + 1952))(a1);
          CCLogStream::logAlert(v33, "[dk] %s@%d: Error, we're not associated and the inactivity timer went off\n", "handleLinkInactivityCheck", 13606);
        }
      }
    }
  }
}

uint64_t AppleBCMWLANCore::populateRequestedFiles(AppleBCMWLANCore *this)
{
  v2 = OSArray::withCapacity(0x10u);
  if (!v2)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v19 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v20 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v114 = (*(v113 + 1952))(this);
        CCLogStream::logAlert(v114, "[dk] %s@%d: failed to create requested files\n");
      }
    }

    return 12;
  }

  v3 = v2;
  v4 = OUTLINED_FUNCTION_60_0();
  if (!(*(v5 + 376))(v4))
  {
    v6 = OUTLINED_FUNCTION_51_0(*(this + 9));
    v8 = (*(v7 + 496))(v6);
    if (!v8)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v22 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v23 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v25 = (*(v24 + 1952))(this);
          CCLogStream::logAlert(v25, "[dk] %s@%d: No FilesDB property found\n", "populateRequestedFiles", 3124);
        }
      }

      return 0;
    }

    v9 = v8;
    Object = OSDictionary::getObject(v8, "default");
    if (!OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass))
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v26 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v27 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v116 = (*(v115 + 1952))(this);
          CCLogStream::logAlert(v116, "[dk] %s@%d: No default entry is found in FilesDB\n", "populateRequestedFiles", 3130);
        }
      }

      OUTLINED_FUNCTION_89_0();
      (*(v28 + 16))(v9);
      return 0;
    }

    v11 = OUTLINED_FUNCTION_118();
    OSArray::setObject(v11, v12, v13);
    v136 = 0;
    v14 = OUTLINED_FUNCTION_119();
    if ((checkAcquireDataPropertyNotEmpty(v14, "module-instance", &v136, 0, 1uLL, "IOService") & 1) == 0)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v15 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v16 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v118 = (*(v117 + 1952))(this);
          CCLogStream::logNotice(v118, "[dk] %s@%d: No module-instance property defined\n", "populateRequestedFiles", 3138);
        }
      }
    }

    if (v136)
    {
      if (OSData::getBytesNoCopy(v136))
      {
        BytesNoCopy = OSData::getBytesNoCopy(v136);
        v18 = OSString::withCString(BytesNoCopy);
      }

      else
      {
        v18 = 0;
      }

      v29 = OSDictionary::getObject(v9, v18);
      if (OSMetaClassBase::safeMetaCast(v29, gOSDictionaryMetaClass))
      {
        v30 = OUTLINED_FUNCTION_118();
        OSArray::setObject(v30, v31, v32);
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v33 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          v35 = (*(v34 + 1952))(this);
          if (OUTLINED_FUNCTION_229(v35))
          {
            OUTLINED_FUNCTION_24_1();
            v120 = (*(v119 + 1952))(this);
            CCLogStream::logNoticeIf(v120, 0x80uLL, "[dk] %s@%d: No module specific entry is found in FilesDB\n", "populateRequestedFiles", 3148);
          }
        }
      }

      OUTLINED_FUNCTION_1_10();
      (*(v36 + 16))(v18);
      if (v136)
      {
        OUTLINED_FUNCTION_5_0();
        (*(v37 + 16))();
        v136 = 0;
      }
    }

    OUTLINED_FUNCTION_89_0();
    (*(v38 + 16))(v9);
LABEL_32:
    v39 = OUTLINED_FUNCTION_220();
    setPropertyHelper(v39, v40, v41);
    OUTLINED_FUNCTION_19_1();
    (*(v42 + 16))(v3);
    return 0;
  }

  AppleBCMWLANCore::generateFileName(this);
  if (v44)
  {
    v21 = v44;
    OUTLINED_FUNCTION_19_1();
    (*(v45 + 16))(v3);
    return v21;
  }

  v21 = 3758097084;
  v46 = *(this + 9);
  strlen(v46 + 1464);
  OUTLINED_FUNCTION_249();
  if (v48)
  {
    v49 = v47;
    strlen(v46 + 1976);
    OUTLINED_FUNCTION_249();
    if (v48)
    {
      v51 = v50;
      strlen(v46 + 1720);
      OUTLINED_FUNCTION_249();
      if (v48)
      {
        v53 = v52;
        strlen(v46 + 2232);
        OUTLINED_FUNCTION_249();
        if (v48)
        {
          v55 = v54;
          v56 = OSDictionary::withCapacity(3u);
          if (v56)
          {
            v61 = v56;
            v62 = *(this + 9) + v49;
            *(v62 + 1468) = 0;
            *(v62 + 1464) = 0;
            strlcpy((*(this + 9) + v49 + 1464), ".trx", 256 - v49);
            OUTLINED_FUNCTION_132();
            if ((*(v63 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v64 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                (*(v121 + 1952))(this);
                OUTLINED_FUNCTION_9_4();
                CCLogStream::logNotice(v122, "[dk] %s@%d:FW %s\n", v133, v134, v135);
              }
            }

            v65 = OSString::withCString((*(this + 9) + 1464));
            OUTLINED_FUNCTION_192();
            strlcpy((*(this + 9) + 3032), (*(this + 9) + 1464), 0xFFuLL);
            OUTLINED_FUNCTION_187();
            OUTLINED_FUNCTION_185(v67, v68, (v66 + 3032));
            OUTLINED_FUNCTION_9_6();
            (*(v69 + 16))(v65);
            v70 = OUTLINED_FUNCTION_51_0(*(this + 9));
            if ((*(v71 + 520))(v70))
            {
              strlcpy((*(this + 9) + v53 + 1720), ".sig", 256 - v53);
              OUTLINED_FUNCTION_132();
              if ((*(v72 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v73 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v131 + 1952))(this);
                  OUTLINED_FUNCTION_9_4();
                  CCLogStream::logNotice(v132, "[dk] %s@%d:FW Signature %s\n", v133, v134, v135);
                }
              }

              v74 = OSString::withCString((*(this + 9) + 1720));
              OUTLINED_FUNCTION_192();
              strlcpy((*(this + 9) + 3288), (*(this + 9) + 1720), 0xFFuLL);
              OUTLINED_FUNCTION_187();
              OUTLINED_FUNCTION_185(v76, v77, (v75 + 3288));
              OUTLINED_FUNCTION_9_6();
              (*(v78 + 16))(v74);
            }

            v79 = OUTLINED_FUNCTION_60_0();
            v81 = (*(v80 + 368))(v79);
            if (v81 == 4399 || v81 == 4388)
            {
              strlcpy((*(this + 9) + v55 + 2232), ".pcfb", 256 - v55);
              OUTLINED_FUNCTION_132();
              if ((*(v83 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v84 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v129 + 1952))(this);
                  OUTLINED_FUNCTION_9_4();
                  CCLogStream::logNotice(v130, "[dk] %s@%d:FW Platcfg %s\n", v133, v134, v135);
                }
              }

              v85 = OSString::withCString((*(this + 9) + 2232));
              OUTLINED_FUNCTION_192();
              strlcpy((*(this + 9) + 4056), (*(this + 9) + 2232), 0xFFuLL);
              OUTLINED_FUNCTION_187();
              OUTLINED_FUNCTION_185(v87, v88, (v86 + 4056));
              OUTLINED_FUNCTION_9_6();
              (*(v89 + 16))(v85);
            }

            strlcpy((*(this + 9) + v51 + 1976), ".clmb", 256 - v51);
            OUTLINED_FUNCTION_132();
            if ((*(v90 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v91 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                (*(v123 + 1952))(this);
                OUTLINED_FUNCTION_9_4();
                CCLogStream::logNotice(v124, "[dk] %s@%d:CLM %s\n", v133, v134, v135);
              }
            }

            v92 = OSString::withCString((*(this + 9) + 1976));
            OSDictionary::setObject(v61, "Regulatory", v92);
            strlcpy((*(this + 9) + 3544), (*(this + 9) + 1976), 0xFFuLL);
            OUTLINED_FUNCTION_187();
            AppleBCMWLANCore::generateRequestedImages(v94, v95, (v93 + 3544), "Regulatory", 1, 0);
            (v92->release)(v92);
            strlcpy((*(this + 9) + v51 + 1976), ".txcb", 256 - v51);
            OUTLINED_FUNCTION_132();
            if ((*(v96 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v97 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                (*(v125 + 1952))(this);
                OUTLINED_FUNCTION_9_4();
                CCLogStream::logNotice(v126, "[dk] %s@%d:Tx Cap %s\n", v133, v134, v135);
              }
            }

            v98 = OSString::withCString((*(this + 9) + 1976));
            OUTLINED_FUNCTION_192();
            strlcpy((*(this + 9) + 3800), (*(this + 9) + 1976), 0xFFuLL);
            OUTLINED_FUNCTION_187();
            AppleBCMWLANCore::generateRequestedImages(v100, v101, (v99 + 3800), "TxCap", 0, 0);
            OUTLINED_FUNCTION_9_6();
            (*(v102 + 16))(v98);
            v103 = strlen((*(this + 9) + 1208));
            if (v103 - 250 >= 0xFFFFFFFFFFFFFF01)
            {
              v104 = v103;
              strlcpy((*(this + 9) + 1208 + v103), ".txt", 256 - v103);
              OUTLINED_FUNCTION_132();
              if ((*(v105 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v106 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  (*(v127 + 1952))(this);
                  OUTLINED_FUNCTION_9_4();
                  CCLogStream::logNotice(v128, "[dk] %s@%d:NVRAM %s\n", v133, v134, v135);
                }
              }

              v107 = OSString::withCString((*(this + 9) + 1208));
              OSDictionary::setObject(v61, "NVRAM", v107);
              strlcpy((*(this + 9) + 2776), (*(this + 9) + 1208), 0xFFuLL);
              OUTLINED_FUNCTION_187();
              OUTLINED_FUNCTION_185(v109, v110, (v108 + 2776));
              (v107->release)(v107);
              *(*(this + 9) + v104 + 1208) = 0;
              *(*(this + 9) + v49 + 1464) = 0;
              *(*(this + 9) + v53 + 1720) = 0;
              *(*(this + 9) + v55 + 2232) = 0;
              *(*(this + 9) + v51 + 1976) = 0;
              v111 = OUTLINED_FUNCTION_118();
              OSArray::setObject(v111, v112, v61);
              (v61->release)(v61);
              goto LABEL_32;
            }

            return v21;
          }

          OUTLINED_FUNCTION_24_1();
          if ((*(v57 + 1952))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v58 + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v60 = (*(v59 + 1952))(this);
              CCLogStream::logAlert(v60, "[dk] %s@%d:failed to create file name Dict");
            }
          }

          return 12;
        }
      }
    }
  }

  return v21;
}

uint64_t AppleBCMWLANCore::generateRequestedImages(AppleBCMWLANCore *this, OSDictionary *a2, char *a3, const char *a4, const char *a5, unsigned int a6)
{
  v11 = 3758097115;
  v12 = OSDictionary::withCapacity(0x10u);
  v13 = v12;
  if (a2 && a3 && a4)
  {
    if (!v12)
    {
      return 3758097085;
    }

    OSDictionary::setObject(a2, a3, v12);
    Attributes = IOImageLoaderImageDictionary::getAttributes(a2, a3, v14);
    if (Attributes)
    {
      v17 = Attributes;
      if (IOImageLoaderImageDictionary::setAttributeWithString(Attributes, "imagename", a3, v16) && IOImageLoaderImageDictionary::setAttributeWithString(v17, "imagetype", a4, v18) && IOImageLoaderImageDictionary::setAttributeWithBoolean(v17, "required", a5) && (!a6 || IOImageLoaderImageDictionary::setAttributeWithNumber(v17, "imagesize", a6)))
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 3758097086;
    }
  }

  else
  {
    v11 = 3758097090;
    if (!v12)
    {
      return v11;
    }
  }

  OUTLINED_FUNCTION_19_1();
  (*(v19 + 16))(v13);
  return v11;
}

void AppleBCMWLANCore::generateFileName(AppleBCMWLANCore *this)
{
  OUTLINED_FUNCTION_279();
  v158 = v1;
  v159 = v2;
  v4 = v3;
  HIBYTE(v120) = 0;
  anObject = 0;
  v5 = OSDictionary::withCapacity(6u);
  if (!v5)
  {
    goto LABEL_73;
  }

  v6 = v5;
  memset(__b, 170, sizeof(__b));
  v7 = OUTLINED_FUNCTION_51_0(v4[9]);
  if ((*(v8 + 408))(v7, v6, 0))
  {
    goto LABEL_70;
  }

  Object = OSDictionary::getObject(v6, "ChipInfo");
  v10 = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
  if (!v10 || (v11 = v10, v12 = OSDictionary::getObject(v6, "ModuleInfo"), (v13 = OSMetaClassBase::safeMetaCast(v12, gOSStringMetaClass)) == 0))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v103 + 16))(v6);
    goto LABEL_73;
  }

  v14 = v13;
  CStringNoCopy = OSString::getCStringNoCopy(v11);
  OSString::getCStringNoCopy(v14);
  OUTLINED_FUNCTION_52_0();
  if ((*(v16 + 1952))(v4))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v17 + 1952))(v4);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v110 = (*(v109 + 1952))(v4);
      CCLogStream::logInfo(v110, "[dk] %s@%d:Obtained module info from busInterface is %s, %s\n", "generateFileName", 3473, CStringNoCopy, v11);
    }
  }

  bzero((v4[9] + 1208), 0x100uLL);
  bzero((v4[9] + 1464), 0x100uLL);
  bzero((v4[9] + 1720), 0x100uLL);
  bzero((v4[9] + 2232), 0x100uLL);
  bzero((v4[9] + 1976), 0x100uLL);
  v18 = OUTLINED_FUNCTION_245();
  AppleBCMWLANCore::copyKeys(v18, v19, CStringNoCopy, 0xFFuLL, 1);
  v20 = strnstr(CStringNoCopy, "C=", 0xFFuLL);
  if (v20)
  {
    v28 = 0;
    goto LABEL_12;
  }

  v29 = v4[9];
  OUTLINED_FUNCTION_5_0();
  v31 = (*(v30 + 368))();
  snprintf((v29 + 1208), 0x100uLL, "C=%d", v31);
  v20 = strlen((v4[9] + 1208));
  v28 = v20;
  if (__b[0])
  {
    *(v4[9] + 1208 + v20) = 95;
    v28 = v20 + 1;
LABEL_12:
    if (__b[0])
    {
      OUTLINED_FUNCTION_145(v20, v21, v22, v23, v24, v25, v26, v27, v111, v113, v115, v117, anObject, v120, __dst, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *__s, v154, v155, *(&v155 + 1), v156, __b[0]);
      v28 = strlen((v4[9] + 1208));
    }
  }

  v32 = OUTLINED_FUNCTION_245();
  v34 = AppleBCMWLANCore::copyKeys(v32, v33, CStringNoCopy, 0xFFuLL, 0);
  *(v4[9] + v28 + 1208) = 95;
  *(v28 + v4[9] + 1209) = 95;
  OUTLINED_FUNCTION_145(v34, v35, v36, v37, v38, v39, v40, v41, v111, v113, v115, v117, anObject, v120, __dst, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *__s, v154, v155, *(&v155 + 1), v156, __b[0]);
  v42 = strlen((v4[9] + 1208));
  *(v4[9] + 1208 + v42) = 47;
  memcpy((v4[9] + 1464), (v4[9] + 1208), 0x100uLL);
  memcpy((v4[9] + 1720), (v4[9] + 1208), 0x100uLL);
  memcpy((v4[9] + 2232), (v4[9] + 1208), 0x100uLL);
  v43 = OUTLINED_FUNCTION_245();
  AppleBCMWLANCore::copyKeys(v43, v44, v11, 0xFFuLL, 1);
  v45 = strnstr(v11, "P=", 0xFFuLL);
  if (v45)
  {
LABEL_37:
    if (__b[0])
    {
      OUTLINED_FUNCTION_145(v45, v46, v47, v48, v49, v50, v51, v52, v112, v114, v116, v118, anObject, v120, __dst, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *__s, v154, v155, *(&v155 + 1), v156, __b[0]);
    }

    if (!AppleBCMWLANCore::appendRemoteFEMInfo(v4))
    {
      v73 = strlen((v4[9] + 1208));
      v74 = OUTLINED_FUNCTION_245();
      v76 = AppleBCMWLANCore::copyKeys(v74, v75, v11, 0xFFuLL, 0);
      *(v4[9] + v73 + 1208) = 95;
      *(v73 + v4[9] + 1209) = 95;
      OUTLINED_FUNCTION_145(v76, v77, v78, v79, v80, v81, v82, v83, v112, v114, v116, v118, anObject, v120, __dst, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, *__s, v154, v155, *(&v155 + 1), v156, __b[0]);
      v84 = v4[9];
      v85 = v84 + 1208;
      v86 = strlen(v84 + 1208);
      if (v86 <= 0xF8)
      {
        v87 = v86;
        if (strlen(v84 + 1464) <= 0xF8)
        {
          if (v87)
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v89)
              {
                *v85 = v88;
              }

              ++v85;
              --v87;
            }

            while (v87);
            v84 = v4[9];
          }

          v90 = v84 + 1464;
          if (strlen(v84 + 1464))
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v89)
              {
                *v90 = v92;
              }

              ++v90;
            }

            while (v91 != 1);
            v84 = v4[9];
          }

          v93 = v84 + 1720;
          if (strlen(v84 + 1720))
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v89)
              {
                *v93 = v95;
              }

              ++v93;
            }

            while (v94 != 1);
            v84 = v4[9];
          }

          v96 = v84 + 2232;
          if (strlen(v84 + 2232))
          {
            do
            {
              OUTLINED_FUNCTION_244();
              if (v89)
              {
                *v96 = v98;
              }

              ++v96;
            }

            while (v97 != 1);
            v84 = v4[9];
          }

          v99 = v84 + 1976;
          for (i = strlen(v84 + 1976); i; --i)
          {
            if (*v99 == 61)
            {
              *v99 = 45;
            }

            ++v99;
          }
        }
      }
    }

    goto LABEL_70;
  }

  if (acquireProperty<OSObject>(*(v4[9] + 5392), "module-instance", &anObject, 1uLL, "IOService") && (v53 = OSMetaClassBase::safeMetaCast(anObject, gOSDataMetaClass)) != 0)
  {
    v54 = v53;
    v55 = 0;
  }

  else
  {
    v56 = OSMetaClassBase::safeMetaCast(anObject, gOSStringMetaClass);
    if (!v56)
    {
      goto LABEL_70;
    }

    v57 = v56;
    v58 = OSString::getCStringNoCopy(v56);
    Length = OSString::getLength(v57);
    v60 = OSData::withBytes(v58, Length);
    if (!v60)
    {
      goto LABEL_70;
    }

    v54 = v60;
    v55 = 1;
    if (!OSData::appendBytes(v60, &v120 + 7, 1uLL))
    {
      goto LABEL_70;
    }
  }

  if (OSData::getBytesNoCopy(v54))
  {
    *__s = 0;
    v154 = 0;
    *(&v155 + 7) = 0;
    *&v155 = 0;
    if (IOParseBootArgString("wlan.debug.module-instance", __s, 31))
    {
      v61 = strlen(__s);
      v54 = OSData::withBytes(__s, (v61 + 1));
      v55 = 1;
    }

    v62 = v4[9];
    BytesNoCopy = OSData::getBytesNoCopy(v54);
    if (OSData::getLength(v54) <= 0x20)
    {
      v64 = OSData::getLength(v54);
    }

    else
    {
      v64 = 32;
    }

    strlcpy((v62 + 2488), BytesNoCopy, v64);
    v65 = v4[9];
    v66 = OSData::getBytesNoCopy(v54);
    strlcat((v65 + 1464), v66, 0xFFuLL);
    memcpy((v4[9] + 1976), (v4[9] + 1464), 0x100uLL);
    memcpy((v4[9] + 1720), (v4[9] + 1464), 0x100uLL);
    memcpy((v4[9] + 2232), (v4[9] + 1464), 0x100uLL);
    *(v4[9] + v42 + 1 + 1208) = 80;
    *(v42 + v4[9] + 1210) = 61;
    v67 = v4[9];
    v68 = OSData::getBytesNoCopy(v54);
    strlcat((v67 + 1208), v68, 0xFFuLL);
    appended = AppleBCMWLANCore::appendWskuInfo(v4);
    if (appended)
    {
      v104 = appended;
      OUTLINED_FUNCTION_19_1();
      if ((*(v105 + 1952))(v4))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v106 + 1952))(v4);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v108 = (*(v107 + 1952))(v4);
          CCLogStream::logAlert(v108, "[dk] %s@%d:Failed appendWskuInfo(), ret[0x%08x]\n", "generateFileName", 3571, v104);
        }
      }

      goto LABEL_70;
    }

    if (__b[0])
    {
      *(v4[9] + 1208 + strlen((v4[9] + 1208))) = 95;
    }

    bzero(&__dst, 0x100uLL);
    v70 = OSData::getBytesNoCopy(v54);
    if (OSData::getLength(v54) <= 0xFF)
    {
      v71 = OSData::getLength(v54);
    }

    else
    {
      v71 = 255;
    }

    memcpy(&__dst, v70, v71);
    strlcat(&__dst, "-PlatformConfig.plist", 0xFFuLL);
    setPropertyHelper(v4, "PlatformConfigFileName", &__dst);
    LODWORD(v45) = strlcpy((v4[9] + 2520), &__dst, 0xFFuLL);
    v72 = v55 ^ 1;
    if (!v54)
    {
      v72 = 1;
    }

    if ((v72 & 1) == 0)
    {
      LODWORD(v45) = (v54->release)(v54);
    }

    goto LABEL_37;
  }

LABEL_70:
  if (anObject)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v101 + 16))();
    anObject = 0;
  }

  OUTLINED_FUNCTION_24_1();
  (*(v102 + 16))(v6);
LABEL_73:
  OUTLINED_FUNCTION_280();
}

uint64_t AppleBCMWLANCore::appendRemoteFEMInfo(AppleBCMWLANCore *this)
{
  v32 = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 9) + 5392), "wifi-rfem-info", &v32, 0x18uLL, 1uLL, "IOService"))
  {
    v3 = 3825174301;
    v4 = *(this + 9);
    BytesNoCopy = OSData::getBytesNoCopy(v32, 0, 0x18uLL);
    v6 = *BytesNoCopy;
    *(v4 + 4368) = BytesNoCopy[2];
    *(v4 + 4352) = v6;
    v1 = *(this + 9);
    if (*(v1 + 4352) != 1)
    {
      goto LABEL_28;
    }

    if (*(v1 + 4356))
    {
      goto LABEL_28;
    }

    v7 = OUTLINED_FUNCTION_206(BytesNoCopy, &krFemMurata);
    if (v7)
    {
      v7 = OUTLINED_FUNCTION_206(v7, &krFemSky);
      if (v7)
      {
        v7 = OUTLINED_FUNCTION_206(v7, &krFemUsi);
        if (v7)
        {
          v7 = OUTLINED_FUNCTION_206(v7, &krFemBrcm);
          if (v7)
          {
            goto LABEL_28;
          }
        }
      }
    }

    v8 = OUTLINED_FUNCTION_206(v7, &krFemMurata);
    if (v8)
    {
      v9 = OUTLINED_FUNCTION_206(v8, &krFemSky);
      if (v9)
      {
        v10 = OUTLINED_FUNCTION_206(v9, &krFemUsi);
        if (v10)
        {
          if (OUTLINED_FUNCTION_206(v10, &krFemBrcm))
          {
            goto LABEL_28;
          }
        }
      }
    }

    strlcat((v1 + 1208), "_F-", 0x100uLL);
    v11 = *(this + 9);
    v12 = *(v11 + 4360);
    switch(v12)
    {
      case 'B':
        v13 = "b";
        break;
      case 'M':
        v13 = "m";
        break;
      case 'S':
        v13 = "s";
        break;
      default:
        v13 = "u";
        break;
    }

    OUTLINED_FUNCTION_276(v13, v11);
    v14 = *(this + 9);
    v15 = *(v14 + 4368);
    switch(v15)
    {
      case 'B':
        v16 = "b";
        break;
      case 'M':
        v16 = "m";
        break;
      case 'S':
        v16 = "s";
        break;
      default:
        v16 = "u";
        break;
    }

    OUTLINED_FUNCTION_276(v16, v14);
  }

  v3 = 0;
LABEL_28:
  if (v32)
  {
    goto LABEL_45;
  }

  v31 = 0;
  if (AppleBCMWLAN_isDevFusedOrCSRInternal() && IOParseBootArgNumber("wlan.factory", &v31, 8) && (v31 & 0x100) != 0)
  {
    v17 = OUTLINED_FUNCTION_60_0();
    if ((*(v18 + 368))(v17) >> 1 >= 0x88D)
    {
      OUTLINED_FUNCTION_253();
      OUTLINED_FUNCTION_276("_F-", v19);
      if (v1 == 4378)
      {
        v21 = "s";
        v22 = 83;
        v23 = 85;
        v24 = "u";
      }

      else if (v1 == 4399 || v1 == 4388)
      {
        v21 = "m";
        v22 = 77;
        v23 = 83;
        v24 = "s";
      }

      else
      {
        v21 = "s";
        v22 = 83;
        v23 = 77;
        v24 = "m";
      }

      *(*(this + 9) + 4360) = v23;
      OUTLINED_FUNCTION_276(v24, *(this + 9));
      *(*(this + 9) + 4368) = v22;
      strlcat((*(this + 9) + 1208), v21, 0x100uLL);
      OUTLINED_FUNCTION_132();
      if ((*(v25 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v26 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v30 = (*(v29 + 1952))(this);
          CCLogStream::logAlert(v30, "[dk] %s@%d:no rfem info found from device tree, fake it as %c%c\n", "appendRemoteFEMInfo", 3400, *(*(this + 9) + 4360), *(*(this + 9) + 4368));
        }
      }
    }
  }

  if (v32)
  {
LABEL_45:
    OUTLINED_FUNCTION_5_0();
    (*(v27 + 16))();
  }

  return v3;
}

OSMetaClassBase *AppleBCMWLANCore::processRxEvents_WithEventQueue()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  (*(v3 + 56))();
  OUTLINED_FUNCTION_218();
  kdebug_trace();
  OUTLINED_FUNCTION_5_0();
  if ((*(v4 + 56))())
  {
    while (1)
    {
      v5 = AppleBCMWLANObjectQueue::dequeue(*v0);
      result = OSMetaClassBase::safeMetaCast(v5, gIO80211BufferMetaClass);
      if (!result)
      {
        break;
      }

      v7 = result;
      IO80211Buffer::getLength(result);
      v8 = OUTLINED_FUNCTION_77();
      BytesNoCopy = IO80211Buffer::getBytesNoCopy(v8);
      AppleBCMWLANCore::handleRxEventFrame(v1, v2, BytesNoCopy);
      IO80211Buffer::returnBuffer(v7);
      OUTLINED_FUNCTION_5_0();
      if (!(*(v10 + 56))())
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    OUTLINED_FUNCTION_218();

    return kdebug_trace();
  }

  return result;
}

unint64_t AppleBCMWLANCore::handleEventPacket(unint64_t result, uint64_t a2)
{
  v261 = 0;
  v262 = 0;
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = result;
      if (*a2 <= 3uLL)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v5 + 1952))(v4))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v6 + 1952))(v4);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v8 = (*(v7 + 1952))(v4);
            CCLogStream::logAlert(v8, "[dk] %s@%d:DeviceBuffer length %lu shorter than bdc_header %lu !\n");
          }
        }

        return kdebug_trace();
      }

      if (CCLogStream::shouldLog(*(*(result + 72) + 14256), 1uLL))
      {
        LODWORD(v263) = 0;
        CCLogStream::logHeaderAndBuf(*(*(v4 + 72) + 14256), *(a2 + 8), 0, *a2, *a2, &v263, 4uLL);
      }

      v9 = 4 * *(v3 + 3);
      v10 = *a2;
      if (*a2 >= (v9 + 28))
      {
        v15 = *(a2 + 8) + v9;
        if (memcmp((v15 + 23), &unk_1003B0600, 3uLL))
        {
          return kdebug_trace();
        }

        v16 = *(v15 + 26);
        if (v16 != 256)
        {
          if (v16 == 1280)
          {
            AppleBCMWLANCore::handleDongleEventPacket(v4, a2);
          }

          return kdebug_trace();
        }

        v17 = v9 + 76;
        if (v10 >= v9 + 76)
        {
          v20 = (v3 + v9);
          v21 = bswap32(v20[3].u32[0]);
          if ((v17 + v21) >> 32)
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v22 + 1952))(v4))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v23 + 1952))(v4);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v25 = (*(v24 + 1952))(v4);
                CCLogStream::logAlert(v25, "[dk] %s@%d:Event buffer overflow Read Offset: %lu, Event Length: %lu\n");
              }
            }
          }

          else if (v10 >= v17 + v21)
          {
            v20[1].i16[7] = bswap32(v20[1].u16[7]) >> 16;
            v30 = vrev32q_s8(v20[2]);
            v20[2] = v30;
            v20[3].i32[0] = v21;
            v20[1].i16[6] = bswap32(v20[1].u16[6]) >> 16;
            if (v30.i32[0] < 0xDBu)
            {
              v261 = &v20[1].i8[12];
              v262 = v21 + 48;
              v35 = *(v4 + 72);
              v36 = *(v35 + 14248);
              if (v36)
              {
                shouldLog = CCLogStream::shouldLog(v36, 0x10uLL);
                v35 = *(v4 + 72);
                if (shouldLog)
                {
                  if (*(v35 + 18304) || (v40 = v20[2].i32[0] - 75, v40 > 0x17) || ((1 << v40) & 0xE00001) == 0)
                  {
                    v263 = 0xAAAAAAAAAAAAAAAALL;
                    mach_continuous_time();
                    absolutetime_to_nanoseconds();
                    OUTLINED_FUNCTION_132();
                    if ((*(v38 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v39 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        v224 = (*(v223 + 1952))(v4);
                        OUTLINED_FUNCTION_176();
                        OUTLINED_FUNCTION_169();
                        CCLogStream::logNotice(v224, "[dk] %s@%d: wle@<%p> Received event %lu(%s) @ %llu.%09llu: status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x if %s ifidx %u bssidx %u len %lu\n", "handleEventPacket", 15337, &v20[1].u64[1] + 4, v17, v227, v225 / v226, v225 % v226, v20[2].u32[1], v20[2].u32[2], v20[1].u16[7], v20[2].u32[3], v20[3].u8[4], v20[3].u8[5], v20[3].u8[6], v20[3].u8[7], v20[3].u8[8], v20[3].u8[9], &v20[3].i8[10], v20[4].u8[10], v20[4].u8[11], v20[3].u32[0]);
                      }
                    }

                    v35 = *(v4 + 72);
                  }
                }
              }

              if (*(v35 + 11296))
              {
                v41 = OUTLINED_FUNCTION_220();
                isEventForInterface = AppleBCMWLANCore::isEventForInterface(v41, v42, v43);
                v35 = *(v4 + 72);
                if (isEventForInterface)
                {
                  v45 = *(v35 + 11296);
LABEL_47:
                  AppleBCMWLANProximityInterface::handleEvent(v45, &v261);
                  return kdebug_trace();
                }
              }

              if (!*(v35 + 29944))
              {
                goto LABEL_225;
              }

              v46 = OUTLINED_FUNCTION_220();
              v49 = AppleBCMWLANCore::isEventForInterface(v46, v47, v48);
              v35 = *(v4 + 72);
              if (v49)
              {
                v50 = *(v35 + 29944);
LABEL_51:
                AppleBCMWLANNANInterface::handleEvent(v50, &v20[1].i64[1] + 4);
                return kdebug_trace();
              }

              if (!*(v35 + 29952) || (v51 = OUTLINED_FUNCTION_220(), v54 = AppleBCMWLANCore::isEventForInterface(v51, v52, v53), v35 = *(v4 + 72), !v54))
              {
LABEL_225:
                if (*(v35 + 11304) && (v55 = OUTLINED_FUNCTION_220(), AppleBCMWLANCore::isEventForInterface(v55, v56, v57)))
                {
                  AppleBCMWLANIO80211APSTAInterface::handleEvent(*(*(v4 + 72) + 11304), &v20[1].i64[1] + 4);
                }

                else
                {
                  if (v20[4].i8[10] && v20[2].i32[0] != 52)
                  {
                    OUTLINED_FUNCTION_24_1();
                    if ((*(v58 + 1952))(v4))
                    {
                      OUTLINED_FUNCTION_24_1();
                      (*(v59 + 1952))(v4);
                      if (CCLogStream::shouldLog())
                      {
                        OUTLINED_FUNCTION_24_1();
                        v229 = (*(v228 + 1952))(v4);
                        v230 = OUTLINED_FUNCTION_176();
                        CCLogStream::logAlert(v229, "[dk] %s@%d:WARNING: Event %lu(%s) found for missing virtual interface index %u!\n", "handleEventPacket", 15380, v17, v230, v20[4].u8[10]);
                      }
                    }

                    v60 = *(*(v4 + 72) + 5536);
                    v61 = OUTLINED_FUNCTION_176();
                    CCFaultReporter::reportFault(v60, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x3C18u, "handleEventPacket", 0, -469793524, "event=%lu(%s),interface=%u", v17, v61, v20[4].u8[10]);
                  }

                  OUTLINED_FUNCTION_218();
                  kdebug_trace();
                  v70 = v20[2].i32[0];
                  if (!v63 & v62)
                  {
                    v71 = v70 - 167;
                    switch(v71)
                    {
                      case 0:
                      case 1:
                        v72 = OUTLINED_FUNCTION_255();
                        AppleBCMWLANBGScanAdapter::scanBackoffEvent(v72, &v20[1].i64[1] + 4);
                        return kdebug_trace();
                      case 2:
                      case 3:
                      case 6:
                      case 7:
                      case 8:
                      case 9:
                      case 10:
                      case 11:
                      case 12:
                      case 14:
                      case 15:
                      case 18:
                      case 25:
                      case 27:
                      case 28:
                      case 29:
                      case 31:
                      case 32:
                      case 35:
                      case 37:
                      case 38:
                      case 39:
                      case 41:
                      case 43:
                      case 44:
LABEL_84:
                        ++*(*(v4 + 72) + 4460);
                        return kdebug_trace();
                      case 4:
                        v264 = 0xAAAAAAAAAAAAAAAALL;
                        if (v20[3].i32[0] <= 0xBu)
                        {
                          OUTLINED_FUNCTION_24_1();
                          if ((*(v231 + 1952))(v4))
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v232 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              OUTLINED_FUNCTION_24_1();
                              v234 = (*(v233 + 1952))(v4);
                              CCLogStream::logEmergency(v234, "[dk] %s@%d:Malformed WLC_E_TVPM_MITIGATION size %d expected %ld\n");
                            }
                          }
                        }

                        else if (v20[4].i16[6])
                        {
                          v157 = v20[5].u32[0];
                          v158 = v20[5].i16[3];
                          LOBYTE(v264) = v20[5].i8[4];
                          if (v264 >= 2u)
                          {
                            OUTLINED_FUNCTION_24_1();
                            if ((*(v239 + 1952))(v4))
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v240 + 1952))(v4);
                              if (CCLogStream::shouldLog())
                              {
                                OUTLINED_FUNCTION_24_1();
                                (*(v241 + 1952))(v4);
                                OUTLINED_FUNCTION_213();
                                CCLogStream::logEmergency(v242, "[dk] %s@%d:Malformed WLC_E_TVPM_MITIGATION slice %d\n");
                              }
                            }
                          }

                          else
                          {
                            v159 = v158 & 7;
                            BYTE1(v264) = v158 & 7;
                            v263 = v157;
                            OUTLINED_FUNCTION_24_1();
                            if ((*(v160 + 1952))(v4))
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v161 + 1952))(v4);
                              if (CCLogStream::shouldLog())
                              {
                                OUTLINED_FUNCTION_24_1();
                                (*(v245 + 1952))(v4);
                                OUTLINED_FUNCTION_213();
                                CCLogStream::logAlert(v246, "[dk] %s@%d:TVPM Mitigation slice %d, on_off flags %x, timestamp %llu ms\n", v258, v259, v260, v159, v157);
                              }
                            }

                            OUTLINED_FUNCTION_257();
                            if (v162)
                            {
                              IO80211Controller::postMessage(v4, v162, 0x5Du, &v263, 0x10uLL, 1);
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_24_1();
                          if ((*(v235 + 1952))(v4))
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v236 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v237 + 1952))(v4);
                              OUTLINED_FUNCTION_213();
                              CCLogStream::logEmergency(v238, "[dk] %s@%d:Malformed WLC_E_TVPM_MITIGATION version %d\n");
                            }
                          }
                        }

                        return kdebug_trace();
                      case 5:
                        v165 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleScanEvent(v165, v166);
                        return kdebug_trace();
                      case 13:
                        if (v20[3].i32[0] != 1)
                        {
                          OUTLINED_FUNCTION_24_1();
                          if ((*(v210 + 1952))(v4))
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v211 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              OUTLINED_FUNCTION_24_1();
                              v213 = (*(v212 + 1952))(v4);
                              CCLogStream::logAlert(v213, "[dk] %s@%d:Invalid SAR event MSG length=%u\n");
                            }
                          }

                          return kdebug_trace();
                        }

                        v151 = v20[4].u8[12];
                        if (v151 > 1)
                        {
                          OUTLINED_FUNCTION_24_1();
                          if ((*(v217 + 1952))(v4))
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v218 + 1952))(v4);
                            if (CCLogStream::shouldLog())
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v219 + 1952))(v4);
                              OUTLINED_FUNCTION_213();
                              CCLogStream::logAlert(v220, "[dk] %s@%d:Invalid SAR event state %u\n");
                            }
                          }

                          return kdebug_trace();
                        }

                        ++*(*(v4 + 72) + 4 * v151 + 4872);
                        OUTLINED_FUNCTION_24_1();
                        if ((*(v152 + 1952))(v4) && (OUTLINED_FUNCTION_24_1(), (*(v153 + 1952))(v4), CCLogStream::shouldLog()))
                        {
                          OUTLINED_FUNCTION_24_1();
                          v254 = (*(v253 + 1952))(v4);
                          if (v151)
                          {
                            v255 = "ON";
                          }

                          else
                          {
                            v255 = "OFF";
                          }

                          CCLogStream::logAlert(v254, "[dk] %s@%d:SAR event state:%s onbody:%u offbody:%u\n", "handleEventPacket", 15764, v255, *(*(v4 + 72) + 4876), *(*(v4 + 72) + 4872));
                          if (v151)
                          {
                            return kdebug_trace();
                          }
                        }

                        else if (v151)
                        {
                          return kdebug_trace();
                        }

                        v154 = *(v4 + 72);
                        if ((*(v154 + 4880) & 1) == 0)
                        {
                          return kdebug_trace();
                        }

                        v127 = *(v154 + 5536);
                        v128 = -469793492;
                        v129 = 15766;
                        break;
                      case 16:
                        v155 = OUTLINED_FUNCTION_204();
                        AppleBCMWLANNetAdapter::handleBssTransEvent(v155, v156);
                        return kdebug_trace();
                      case 17:
                        v167 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleWeightAvgLQMEvent(v167, v168);
                        return kdebug_trace();
                      case 19:
                        v163 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleWSECEvent(v163, v164);
                        return kdebug_trace();
                      case 20:
                        v140 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleObssDetectEvent(v140, v141);
                        return kdebug_trace();
                      case 21:
                        OUTLINED_FUNCTION_24_1();
                        if ((*(v136 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v137 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            v244 = (*(v243 + 1952))(v4);
                            CCLogStream::logInfo(v244, "[dk] %s@%d:Host: Received WLC_E_AP_BCN_MUTE event\n", "handleEventPacket", 15781);
                          }
                        }

                        v138 = OUTLINED_FUNCTION_204();
                        AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(v138, v139);
                        return kdebug_trace();
                      case 22:
                        v134 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleSCChanQualEvent(v134, v135);
                        return kdebug_trace();
                      case 23:
                        v132 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleDynSAREvent(v132, v133);
                        return kdebug_trace();
                      case 24:
                        return kdebug_trace();
                      case 26:
                        if (OUTLINED_FUNCTION_230())
                        {
                          v142 = *(v4 + 72);
                          if ((*(v142 + 18484) & 1) == 0)
                          {
                            if (*(v142 + 11288))
                            {
                              OUTLINED_FUNCTION_218();
                              IO80211Controller::postMessage(v143, v144, v145, v146, v147, 1);
                              v142 = *(v4 + 72);
                            }

                            AppleBCMWLANBGScanAdapter::parsePFNAllGoneExtEvent(*(v142 + 5496), &v20[1].i64[1] + 4);
                            OUTLINED_FUNCTION_24_1();
                            if ((*(v148 + 1952))(v4))
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v149 + 1952))(v4);
                              if (CCLogStream::shouldLog())
                              {
LABEL_178:
                                OUTLINED_FUNCTION_24_1();
                                v185 = (*(v184 + 1952))(v4);
                                CCLogStream::logAlert(v185, "[dk] %s@%d: LOST ALL PNO networks \n");
                              }
                            }
                          }
                        }

                        return kdebug_trace();
                      case 30:
                        AppleBCMWLANScanAdapter::eventRoamScanResult(*(*(v4 + 72) + 5424), &v20[1].i64[1] + 4);
                        return kdebug_trace();
                      case 33:
                        v221 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleMSCSEvent(v221, v222);
                        return kdebug_trace();
                      case 34:
                        io80211_os_log("RxDMA recovery event status %u (count %u)\n", v20[2].i32[1], v20[2].i32[2]);
                        OUTLINED_FUNCTION_132();
                        if ((*(v172 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v173 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            v175 = (*(v174 + 1952))(v4);
                            CCLogStream::logNotice(v175, "[dk] %s@%d:RxDMA recovery event status %u (count %u)\n", "handleEventPacket", 15792, v20[2].i32[1], v20[2].i32[2]);
                          }
                        }

                        return kdebug_trace();
                      case 36:
                        if (OUTLINED_FUNCTION_278())
                        {
                          v169 = *(*(v4 + 72) + 5592);
                          if (v169)
                          {
                            AppleBCMWLAN11beAdapter::handleMloLinkEvent(v169, &v20[1].i64[1] + 4);
                          }
                        }

                        return kdebug_trace();
                      case 40:
                        v170 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleUlOfdmaDisableEvent(v170, v171);
                        return kdebug_trace();
                      case 42:
                        AppleBCMWLANSensingAdapter::handleSensingEvent(*(*(v4 + 72) + 35976), &v20[1].i64[1] + 4);
                        return kdebug_trace();
                      case 45:
                        v150 = *(*(v4 + 72) + 35992);
                        if (v150)
                        {
                          AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(v150, &v20[1].i64[1] + 4);
                        }

                        return kdebug_trace();
                      default:
                        if (!(!v63 & v62))
                        {
                          switch(v71)
                          {
                            case 'a':
                            case 'b':
                              goto LABEL_82;
                            case 'c':
                            case 'e':
                            case 'f':
                            case 'i':
                            case 'j':
                            case 'k':
                            case 'l':
                              goto LABEL_84;
                            case 'd':
LABEL_76:
                              v50 = *(*(v4 + 72) + 29944);
                              if (!v50)
                              {
                                return kdebug_trace();
                              }

                              goto LABEL_51;
                            case 'g':
                              AppleBCMWLANGASAdapter::handleGAS_FRAGMENT_RX(*(*(v4 + 72) + 5472), &v20[1].i64[1] + 4, v64, v65, v66, v67, v68, v69);
                              return kdebug_trace();
                            case 'h':
                              AppleBCMWLANGASAdapter::handleGAS_COMPLETE(*(*(v4 + 72) + 5472), &v20[1].i64[1] + 4);
                              return kdebug_trace();
                            case 'm':
                              v78 = OUTLINED_FUNCTION_106();
                              AppleBCMWLANCore::handleRangingEvent(v78, v79);
                              return kdebug_trace();
                            default:
LABEL_222:
                              JUMPOUT(0);
                          }
                        }

                        v77 = v71 - 69;
                        switch(v77)
                        {
                          case 0:
                            AppleBCMWLANScanAdapter::eventScanComplete(*(*(v4 + 72) + 5424), &v20[1].i64[1] + 4);
                            return kdebug_trace();
                          case 1:
                          case 2:
                          case 3:
                          case 4:
                          case 5:
                          case 8:
                          case 9:
                          case 10:
                          case 13:
                            goto LABEL_84;
                          case 6:
                            v186 = OUTLINED_FUNCTION_188();
                            if (v186)
                            {
                              AppleBCMWLANProximityInterface::handleActionFrame_rx(v186, &v261);
                            }

                            return kdebug_trace();
                          case 7:
                            v188 = *(*(v4 + 72) + 9480);
                            OUTLINED_FUNCTION_24_1();
                            v190 = (*(v189 + 1952))(v4);
                            if (v188 == 1)
                            {
                              if (v190)
                              {
                                OUTLINED_FUNCTION_24_1();
                                (*(v191 + 1952))(v4);
                                if (CCLogStream::shouldLog())
                                {
                                  OUTLINED_FUNCTION_24_1();
                                  v250 = (*(v249 + 1952))(v4);
                                  CCLogStream::logAlert(v250, "[dk] %s@%d: Received WLC_E_WAKE_EVENT\n", "handleEventPacket", 15394);
                                }
                              }

                              *(*(v4 + 72) + 9480) = 0;
                            }

                            else if (v190)
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v214 + 1952))(v4);
                              if (CCLogStream::shouldLog())
                              {
                                OUTLINED_FUNCTION_24_1();
                                v216 = (*(v215 + 1952))(v4);
                                CCLogStream::logAlert(v216, "[dk] %s@%d: Received WLC_E_WAKE_EVENT, but we're not in WoW Test Mode\n");
                              }
                            }

                            return kdebug_trace();
                          case 11:
                            v187 = OUTLINED_FUNCTION_188();
                            if (v187)
                            {
                              AppleBCMWLANProximityInterface::handleEvent(v187, &v261);
                            }

                            AppleBCMWLANCore::csaReceived(v4);
                            return kdebug_trace();
                          case 12:
                            v192 = OUTLINED_FUNCTION_106();
                            AppleBCMWLANCore::handlePMAlertEvent(v192, v193, a2);
                            return kdebug_trace();
                          case 14:
                            OUTLINED_FUNCTION_257();
                            if (v176)
                            {
                              OUTLINED_FUNCTION_218();
                              IO80211Controller::postMessage(v177, v178, v179, v180, v181, 1);
                            }

                            OUTLINED_FUNCTION_24_1();
                            if ((*(v182 + 1952))(v4))
                            {
                              OUTLINED_FUNCTION_24_1();
                              (*(v183 + 1952))(v4);
                              if (CCLogStream::shouldLog())
                              {
                                goto LABEL_178;
                              }
                            }

                            return kdebug_trace();
                          default:
                            switch(v77)
                            {
                              case 124:
                                v194 = OUTLINED_FUNCTION_106();
                                AppleBCMWLANCore::handleCCAChanQualEvent(v194, v195);
                                return kdebug_trace();
                              case 126:
                                v199 = OUTLINED_FUNCTION_106();
                                AppleBCMWLANCore::handleTxStatusErrEvent(v199, v200);
                                return kdebug_trace();
                              case 151:
                                OUTLINED_FUNCTION_24_1();
                                if ((*(v196 + 1952))(v4))
                                {
                                  OUTLINED_FUNCTION_24_1();
                                  (*(v197 + 1952))(v4);
                                  if (CCLogStream::shouldLog())
                                  {
                                    OUTLINED_FUNCTION_24_1();
                                    v248 = (*(v247 + 1952))(v4);
                                    CCLogStream::logAlert(v248, "[dk] %s@%d:TKO Event woke up\n", "handleEventPacket", 15693);
                                  }
                                }

                                v198 = *(*(v4 + 72) + 5544);
                                if (v198)
                                {
                                  AppleBCMWLANKeepAliveOffload::handleTKOEvent(v198, &v20[1].i64[1] + 4);
                                }

                                return kdebug_trace();
                            }

                            if (v77 != 152)
                            {
                              goto LABEL_84;
                            }

LABEL_82:
                            v45 = OUTLINED_FUNCTION_188();
                            if (!v45)
                            {
                              return kdebug_trace();
                            }

                            goto LABEL_47;
                        }
                    }
                  }

                  else
                  {
                    switch(v70)
                    {
                      case 0:
                        v103 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleSetSSIDEvent(v103, v104);
                        return kdebug_trace();
                      case 1:
                      case 2:
                      case 4:
                      case 5:
                      case 8:
                      case 10:
                      case 11:
                      case 15:
                      case 18:
                      case 20:
                      case 21:
                      case 22:
                      case 24:
                      case 25:
                      case 27:
                      case 28:
                      case 29:
                      case 30:
                      case 31:
                      case 34:
                      case 35:
                      case 36:
                      case 39:
                      case 40:
                      case 42:
                      case 43:
                      case 44:
                      case 45:
                      case 48:
                      case 50:
                      case 51:
                      case 53:
                      case 54:
                      case 55:
                        goto LABEL_84;
                      case 3:
                        v107 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleAuthEvent(v107, v108);
                        return kdebug_trace();
                      case 6:
                      case 12:
                        v73 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::sendDeauthDissasocEvent(v73, v74);
                        v75 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleExtendedEventData(v75, v76);
                        return kdebug_trace();
                      case 7:
                        v95 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleAssocEvent(v95, v96);
                        return kdebug_trace();
                      case 9:
                        v93 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleReassocEvent(v93, v94);
                        return kdebug_trace();
                      case 13:
                        OUTLINED_FUNCTION_24_1();
                        if ((*(v97 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v98 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            v100 = (*(v99 + 1952))(v4);
                            CCLogStream::logAlert(v100, "[dk] %s@%d:ALERT: WiFi infra entering QUIET mode.\n");
                          }
                        }

                        return kdebug_trace();
                      case 14:
                        OUTLINED_FUNCTION_24_1();
                        if ((*(v89 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v90 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            v92 = (*(v91 + 1952))(v4);
                            CCLogStream::logAlert(v92, "[dk] %s@%d:ALERT: WiFi infra exiting QUIET mode.\n");
                          }
                        }

                        return kdebug_trace();
                      case 16:
                        v101 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleLinkEvent(v101, v102);
                        return kdebug_trace();
                      case 17:
                        v114 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleMICErrorEvent(v114, v115);
                        return kdebug_trace();
                      case 19:
                        v85 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleRoamEvent(v85, v86);
                        return kdebug_trace();
                      case 23:
                        v105 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handlePruneEvent(v105, v106);
                        return kdebug_trace();
                      case 26:
                        v82 = OUTLINED_FUNCTION_188();
                        if (v82)
                        {
                          AppleBCMWLANProximityInterface::handleEvent(v82, &v261);
                          v83 = *(v4 + 72);
                        }

                        v84 = *(v83 + 29944);
                        if (v84)
                        {
                          AppleBCMWLANNANInterface::handleEvent(v84, &v20[1].i64[1] + 4);
                          v83 = *(v4 + 72);
                        }

                        AppleBCMWLANScanAdapter::scanComplete(*(v83 + 5424), &v20[1].i64[1] + 4);
                        return kdebug_trace();
                      case 32:
                        v116 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleRoamPrepEvent(v116, v117);
                        return kdebug_trace();
                      case 33:
                        v109 = OUTLINED_FUNCTION_255();
                        AppleBCMWLANBGScanAdapter::parseBGScanEvent(v109, &v20[1].i64[1] + 4);
                        return kdebug_trace();
                      case 37:
                        v118 = *(*(v4 + 72) + 5416);
                        if (!v118 || !AppleBCMWLANJoinAdapter::isJoining(v118))
                        {
                          v201 = OUTLINED_FUNCTION_106();
                          AppleBCMWLANCore::handleRoamScanStartEvent(v201, v202);
                          WORD2(v263) = 0;
                          LODWORD(v263) = 0;
                          v203 = OUTLINED_FUNCTION_117();
                          IO80211BssManager::getCurrentBSSID(v203, &v263);
                          OUTLINED_FUNCTION_214(*(v4 + 72));
                          *(v204 + 14088) = 0;
                          *(v204 + 13992) = 0u;
                          *(v204 + 14008) = 0u;
                          *(v204 + 14024) = 0u;
                          *(v204 + 14040) = 0u;
                          *(v204 + 14056) = 0u;
                          *(v204 + 14072) = 0u;
                          *(*(v4 + 72) + 14000) = getCurrentContinuousTimeMilliSeconds();
                          *(*(v4 + 72) + 14048) = v263;
                          *(*(v4 + 72) + 14050) = BYTE2(v263);
                          v205 = *(v4 + 72) + 14080;
                          *v205 = v263;
                          *(v205 + 4) = WORD2(v263);
                          v206 = OUTLINED_FUNCTION_117();
                          *(*(v4 + 72) + 14056) = IO80211BssManager::getCurrentAuthType(v206);
                          v207 = OUTLINED_FUNCTION_117();
                          *(*(v4 + 72) + 14064) = IO80211BssManager::getCurrentBSSAKMs(v207);
                          *(*(v4 + 72) + 13996) = mapBcmReasonToApple80211IOReturnRoam(v20[2].i32[2]);
                          v208 = OUTLINED_FUNCTION_117();
                          IO80211BssManager::getCurrentRSSI(v208, (v209 + 14024));
                          return kdebug_trace();
                        }

                        OUTLINED_FUNCTION_24_1();
                        if ((*(v119 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v120 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            v252 = (*(v251 + 1952))(v4);
                            CCLogStream::logAlert(v252, "[dk] %s@%d: receive roam start event when joining\n", "handleEventPacket", 15562);
                          }
                        }

                        v121 = OUTLINED_FUNCTION_60_0();
                        v123 = (*(v122 + 368))(v121);
                        if (v123 == 4355 || v123 == 4364)
                        {
                          return kdebug_trace();
                        }

                        OUTLINED_FUNCTION_24_1();
                        if ((*(v125 + 1952))(v4))
                        {
                          OUTLINED_FUNCTION_24_1();
                          (*(v126 + 1952))(v4);
                          if (CCLogStream::shouldLog())
                          {
                            OUTLINED_FUNCTION_24_1();
                            (*(v256 + 1952))(v4);
                            OUTLINED_FUNCTION_213();
                            CCLogStream::logAlert(v257, "[dk] %s@%d: receive unexpected roam start event when joining. chip number %d\n", v258, v259, v260);
                          }
                        }

                        v127 = *(*(v4 + 72) + 5536);
                        v128 = -469792505;
                        v129 = 15574;
                        break;
                      case 38:
                        goto LABEL_76;
                      case 41:
                        v112 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handlePSMWatchdog(v112, v113);
                        return kdebug_trace();
                      case 46:
                        v110 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handlePSKEvent(v110, v111);
                        return kdebug_trace();
                      case 47:
                        v130 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleCountryCodeChangedEvent(v130, v131);
                        return kdebug_trace();
                      case 49:
                        v87 = OUTLINED_FUNCTION_106();
                        AppleBCMWLANCore::handleICVErrorEvent(v87, v88);
                        return kdebug_trace();
                      case 52:
                        if ((*(*(v4 + 72) + 969) & 1) == 0)
                        {
                          v80 = OUTLINED_FUNCTION_106();
                          AppleBCMWLANCore::handleTraceEvent(v80, v81);
                        }

                        return kdebug_trace();
                      case 56:
                        AppleBCMWLANLQM::handleLQMEvent(*(*(v4 + 72) + 5608), &v20[1].i32[3]);
                        return kdebug_trace();
                      case 57:
                        return kdebug_trace();
                      default:
                        goto LABEL_222;
                    }
                  }

                  CCFaultReporter::reportFault(v127, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", v129, "handleEventPacket", 0, v128, 0);
                }

                return kdebug_trace();
              }

              AppleBCMWLANNANDataInterface::handleEvent(*(v35 + 29952), &v20[1].i64[1] + 4);
            }

            else
            {
              OUTLINED_FUNCTION_24_1();
              if ((*(v31 + 1952))(v4))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v32 + 1952))(v4);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  v34 = (*(v33 + 1952))(v4);
                  CCLogStream::logAlert(v34, "[dk] %s@%d: Received garbage event, ignore...\n");
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v26 + 1952))(v4))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v27 + 1952))(v4);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v29 = (*(v28 + 1952))(v4);
                CCLogStream::logAlert(v29, "[dk] %s@%d:DeviceBuffer length %lu shorter than wl_event_msg_t->datalen needs %lu! For event_type: %d\n");
              }
            }
          }

          return kdebug_trace();
        }

        OUTLINED_FUNCTION_24_1();
        if (!(*(v18 + 1952))(v4))
        {
          return kdebug_trace();
        }

        OUTLINED_FUNCTION_24_1();
        (*(v19 + 1952))(v4);
        if (!CCLogStream::shouldLog())
        {
          return kdebug_trace();
        }
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if (!(*(v11 + 1952))(v4))
        {
          return kdebug_trace();
        }

        OUTLINED_FUNCTION_24_1();
        (*(v12 + 1952))(v4);
        if (!CCLogStream::shouldLog())
        {
          return kdebug_trace();
        }
      }

      OUTLINED_FUNCTION_24_1();
      v14 = (*(v13 + 1952))(v4);
      CCLogStream::logAlert(v14, "[dk] %s@%d:DeviceBuffer length %lu shorter than wl_event_msg_t start at %lu! (offset=%d)\n");
      return kdebug_trace();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::fetchAndUpdateRingParameters(AppleBCMWLANCore *this)
{
  v262 = 0;
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  result = OUTLINED_FUNCTION_119();
  if (result)
  {
    v4 = (*(*(result + 48) + 288))();
    v5 = *(this + 9);
    if (*(v5 + 5392))
    {
      *(v5 + 4432) = 256;
      v6 = checkAcquireDataPropertyNotEmpty(v4, "wlan.llw.tx.ring.size", &v262, 4uLL, 1uLL, "IOService");
      if (v6)
      {
        v12 = *(this + 9);
        *(v12 + 4432) = *OSData::getBytesNoCopy(v262, 0, 4uLL);
        v6 = v262;
        if (v262)
        {
          OUTLINED_FUNCTION_5_0();
          v6 = (*(v13 + 16))();
          v262 = 0;
        }
      }

      *(*(this + 9) + 4436) = 256;
      v14 = OUTLINED_FUNCTION_144(v6, "wlan.tx.ring.size", v7, v8, v9, "IOService", v10, v11, v155, v169, v183, v198, v213, v228, v243, 0, v262);
      if (v14)
      {
        MEMORY[0x1254] = *OUTLINED_FUNCTION_143(v14, v15, v16, v17, v18, v19, v20, v21, v156, v170, v184, v199, v214, v229, v244, v258, v262);
        v14 = v262;
        if (v262)
        {
          OUTLINED_FUNCTION_5_0();
          v14 = (*(v22 + 16))();
          v262 = 0;
        }
      }

      *(*(this + 9) + 4440) = 256;
      v23 = OUTLINED_FUNCTION_144(v14, "wlan.rx.ring.size", v16, v17, v18, "IOService", v20, v21, v156, v170, v184, v199, v214, v229, v244, v258, v262);
      if (v23)
      {
        MEMORY[0x1258] = *OUTLINED_FUNCTION_143(v23, v24, v25, v26, v27, v28, v29, v30, v157, v171, v185, v200, v215, v230, v245, v259, v262);
        v23 = v262;
        if (v262)
        {
          OUTLINED_FUNCTION_5_0();
          v23 = (*(v31 + 16))();
          v262 = 0;
        }
      }

      *(*(this + 9) + 4444) = 0;
      v32 = OUTLINED_FUNCTION_144(v23, "wlan.tx.submission-queue.size", v25, v26, v27, "IOService", v29, v30, v157, v171, v185, v200, v215, v230, v245, v259, v262);
      if (v32)
      {
        MEMORY[0x125C] = *OUTLINED_FUNCTION_143(v32, v33, v34, v35, v36, v37, v38, v39, v158, v172, v186, v201, v216, v231, v246, v260, v262);
        v32 = v262;
        if (v262)
        {
          OUTLINED_FUNCTION_5_0();
          v32 = (*(v40 + 16))();
          v262 = 0;
        }
      }

      *(*(this + 9) + 4448) = 0;
      v41 = OUTLINED_FUNCTION_144(v32, "wlan.skywalk.packetpoolsize", v34, v35, v36, "IOService", v38, v39, v158, v172, v186, v201, v216, v231, v246, v260, v262);
      if (v41)
      {
        MEMORY[0x1260] = *OUTLINED_FUNCTION_143(v41, v42, v43, v44, v45, v46, v47, v48, v159, v173, v187, v202, v217, v232, v247, v261, v262);
        v41 = v262;
        if (v262)
        {
          OUTLINED_FUNCTION_5_0();
          v41 = (*(v49 + 16))();
          v262 = 0;
        }
      }

      v50 = OUTLINED_FUNCTION_165(v41, "wlan.llw.tx.ring.size", v43, v44, "IOService", v46, v47, v48, v159, v173, v187, v202, v217, v232, v247);
      if (v50)
      {
        v50 = v261;
        if (v261)
        {
          if (OSNumber::unsigned32BitValue(v261))
          {
            *(*(this + 9) + 4432) = OSNumber::unsigned32BitValue(v261);
          }

          OUTLINED_FUNCTION_5_0();
          v50 = (*(v56 + 16))();
          v261 = 0;
        }
      }

      v57 = OUTLINED_FUNCTION_165(v50, "wlan.tx.ring.size", v51, v52, "IOService", v53, v54, v55, v160, v174, v188, v203, v218, v233, v248);
      if (v57)
      {
        v57 = v261;
        if (v261)
        {
          if (OSNumber::unsigned32BitValue(v261))
          {
            *(*(this + 9) + 4436) = OSNumber::unsigned32BitValue(v261);
          }

          OUTLINED_FUNCTION_5_0();
          v57 = (*(v63 + 16))();
          v261 = 0;
        }
      }

      v64 = OUTLINED_FUNCTION_165(v57, "wlan.rx.ring.size", v58, v59, "IOService", v60, v61, v62, v161, v175, v189, v204, v219, v234, v249);
      if (v64)
      {
        v64 = v261;
        if (v261)
        {
          if (OSNumber::unsigned32BitValue(v261))
          {
            *(*(this + 9) + 4440) = OSNumber::unsigned32BitValue(v261);
          }

          OUTLINED_FUNCTION_5_0();
          v64 = (*(v70 + 16))();
          v261 = 0;
        }
      }

      v71 = OUTLINED_FUNCTION_165(v64, "wlan.tx.submission-queue.size", v65, v66, "IOService", v67, v68, v69, v162, v176, v190, v205, v220, v235, v250);
      if (v71)
      {
        v71 = v261;
        if (v261)
        {
          if (OSNumber::unsigned32BitValue(v261))
          {
            *(*(this + 9) + 4444) = OSNumber::unsigned32BitValue(v261);
          }

          OUTLINED_FUNCTION_5_0();
          v71 = (*(v77 + 16))();
          v261 = 0;
        }
      }

      v78 = OUTLINED_FUNCTION_165(v71, "wlan.skywalk.packetpoolsize", v72, v73, "IOService", v74, v75, v76, v163, v177, v191, v206, v221, v236, v251);
      if (v78)
      {
        v78 = v261;
        if (v261)
        {
          if (OSNumber::unsigned32BitValue(v261))
          {
            *(*(this + 9) + 4448) = OSNumber::unsigned32BitValue(v261);
          }

          OUTLINED_FUNCTION_5_0();
          v78 = (*(v86 + 16))();
        }
      }

      if (isDevFusedOrCSRInternal)
      {
        LODWORD(v87) = OUTLINED_FUNCTION_164(v78, v79, v80, v81, v82, v83, v84, v85, v164, v178, v192, v207, v222, v237, v252, 0);
        if (v87)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v97 == v98)
          {
            v95 = v96;
          }

          *(*(this + 9) + 4440) = v95;
          OUTLINED_FUNCTION_24_1();
          v87 = (*(v99 + 1952))(this);
          if (v87)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v100 + 1952))(this);
            LODWORD(v87) = CCLogStream::shouldLog();
            if (v87)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v145 + 1952))(this);
              OUTLINED_FUNCTION_219();
              OUTLINED_FUNCTION_212();
              LODWORD(v87) = CCLogStream::logAlert(v146, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5321, v193, v208, v223, v238);
            }
          }
        }

        LODWORD(v101) = OUTLINED_FUNCTION_164(v87, v88, v89, v90, v91, v92, v93, v94, v165, v179, v193, v208, v223, v238, *v253, v253[4]);
        if (v101)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v97 == v98)
          {
            v109 = v110;
          }

          *(*(this + 9) + 4436) = v109;
          OUTLINED_FUNCTION_24_1();
          v101 = (*(v111 + 1952))(this);
          if (v101)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v112 + 1952))(this);
            LODWORD(v101) = CCLogStream::shouldLog();
            if (v101)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v147 + 1952))(this);
              OUTLINED_FUNCTION_219();
              OUTLINED_FUNCTION_212();
              LODWORD(v101) = CCLogStream::logAlert(v148, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5327, v194, v209, v224, v239);
            }
          }
        }

        LODWORD(v113) = OUTLINED_FUNCTION_164(v101, v102, v103, v104, v105, v106, v107, v108, v166, v180, v194, v209, v224, v239, *v254, v254[4]);
        if (v113)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v97 == v98)
          {
            v121 = v122;
          }

          *(*(this + 9) + 4444) = v121;
          OUTLINED_FUNCTION_24_1();
          v113 = (*(v123 + 1952))(this);
          if (v113)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v124 + 1952))(this);
            LODWORD(v113) = CCLogStream::shouldLog();
            if (v113)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v149 + 1952))(this);
              OUTLINED_FUNCTION_219();
              OUTLINED_FUNCTION_212();
              LODWORD(v113) = CCLogStream::logAlert(v150, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5333, v195, v210, v225, v240);
            }
          }
        }

        LODWORD(v125) = OUTLINED_FUNCTION_164(v113, v114, v115, v116, v117, v118, v119, v120, v167, v181, v195, v210, v225, v240, *v255, v255[4]);
        if (v125)
        {
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_238();
          if (v97 == v98)
          {
            v133 = v134;
          }

          *(*(this + 9) + 4432) = v133;
          OUTLINED_FUNCTION_24_1();
          v125 = (*(v135 + 1952))(this);
          if (v125)
          {
            OUTLINED_FUNCTION_24_1();
            (*(v136 + 1952))(this);
            LODWORD(v125) = CCLogStream::shouldLog();
            if (v125)
            {
              OUTLINED_FUNCTION_24_1();
              (*(v151 + 1952))(this);
              OUTLINED_FUNCTION_219();
              OUTLINED_FUNCTION_212();
              LODWORD(v125) = CCLogStream::logAlert(v152, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5339, v196, v211, v226, v241);
            }
          }
        }

        if (OUTLINED_FUNCTION_164(v125, v126, v127, v128, v129, v130, v131, v132, v168, v182, v196, v211, v226, v241, *v256, v256[4]))
        {
          v137 = *v257;
          if (*v257 <= 1536)
          {
            v137 = 1536;
          }

          if (v137 >= 12800)
          {
            v137 = 12800;
          }

          *(*(this + 9) + 4448) = v137;
          OUTLINED_FUNCTION_24_1();
          if ((*(v138 + 1952))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v139 + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              (*(v153 + 1952))(this);
              OUTLINED_FUNCTION_219();
              OUTLINED_FUNCTION_212();
              CCLogStream::logAlert(v154, "[dk] %s@%d:%s() boot-args overrides '%s' to %d, bounded value: %d\n", "fetchAndUpdateRingParameters", 5345, v197, v212, v227, v242);
            }
          }
        }
      }

      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_5_0();
      (*(v140 + 632))();
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_5_0();
      (*(v141 + 640))();
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_5_0();
      (*(v142 + 648))();
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_5_0();
      (*(v143 + 656))();
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_5_0();
      (*(v144 + 664))();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::completeChipImage(AppleBCMWLANCore *this, AppleBCMWLANChipImage *a2)
{
  OUTLINED_FUNCTION_16_5();
  if (!(*(v4 + 1952))() || (OUTLINED_FUNCTION_19_1(), v6 = (*(v5 + 1952))(v3), !OUTLINED_FUNCTION_229(v6)))
  {
    if (v2)
    {
      goto LABEL_4;
    }

    return OUTLINED_FUNCTION_97();
  }

  OUTLINED_FUNCTION_19_1();
  v14 = (*(v13 + 1952))(v3);
  CCLogStream::logNoticeIf(v14, 0x80uLL, "[dk] %s@%d:\n", "completeChipImage", 5555);
  if (!v2)
  {
    return OUTLINED_FUNCTION_97();
  }

LABEL_4:
  if (*(*(v3 + 72) + 14248) && CCLogStream::shouldLog())
  {
    v7 = OUTLINED_FUNCTION_130();
    AppleBCMWLANCore::logChipImage(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_51_0(*(v3 + 72));
  v11 = *(v10 + 64);

  return v11(v9, v2);
}

char *AppleBCMWLANCore::findWord(AppleBCMWLANCore *this, const char *a2, const char *a3)
{
  if (!a3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_1();
  v6 = v5;
  v9 = strnlen(v7, v8);
  result = 0;
  if (v6 && v3 >= 1 && v9)
  {
    for (i = v6; ; i = v16 + 1)
    {
      result = strnstr(i, v4, v3);
      if (!result)
      {
        break;
      }

      if (result == v6 || ((v12 = *(result - 1), v13 = v12, v14 = (v12 & 0xFFFFFFDF) - 65, v13 <= 56) ? (v15 = v14 >= 0x1A) : (v15 = 0), v15))
      {
        v16 = &result[v9];
        v17 = result[v9];
        v18 = v17;
        v19 = (v17 & 0xFFFFFFDF) - 65;
        if (v18 <= 56 && v19 > 0x19)
        {
          return result;
        }
      }

      else
      {
        v16 = result;
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANCore::isAdvEcountersSupported(AppleBCMWLANCore *this, const char *a2)
{
  Word = AppleBCMWLANCore::findWord(this, a2, "adv_ecounters");
  if ((*(*this + 1952))(this))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v7 = (*(v6 + 1952))(this);
      CCLogStream::logAlert(v7, "[dk] %s@%d:advance eCounter cap string found? %u\n", "isAdvEcountersSupported", 40590, Word != 0);
    }
  }

  return Word != 0;
}

uint64_t *IO80211TLVIterator<IO80211TLVHeader<unsigned short,unsigned short,0ul,2ul,4ul>>::operator++(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  if (v3 < 4 || !*v2 || (v4 = *(*v2 + 2) + (-*(*v2 + 2) & 3) + 4, v4 > v3))
  {
    v4 = 0;
  }

  result = IO80211BufferCursor::_crop(v7, (a1 + 8), v4, -1);
  if (v2 == v7)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = v7[1];
    *(a1 + 8) = v7[0];
    *(a1 + 16) = v6;
  }

  if (v6 < 4 || !*v2 || *(*v2 + 2) + (-*(*v2 + 2) & 3uLL) + 4 > v6)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureRegionSpecific(AppleBCMWLANCore *this)
{
  RegionInfo = AppleBCMWLANConfigManager::getRegionInfo(*(*(this + 9) + 5464));
  if (RegionInfo)
  {
    CStringNoCopy = OSString::getCStringNoCopy(RegionInfo);
  }

  else
  {
    CStringNoCopy = 0;
  }

  v22 = 0;
  v4 = OUTLINED_FUNCTION_189();
  isNewDevice = AppleBCMWLANConfigManager::isNewDevice(v4);
  if (CStringNoCopy)
  {
    v6 = isNewDevice;
    v20 = *CStringNoCopy;
    v21 = CStringNoCopy[1];
    result = IOParseBootArgNumber("wlan.RegionInfo.override", &v20, 3);
    v22 = 0;
    if (!v6)
    {
      return result;
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v10 = off_1003D09F0[v8];
      if (v20 == *v10 && v21 == v10[1])
      {
        break;
      }

      v9 = v8++ < 0x23;
    }

    while (v8 != 36);
    OUTLINED_FUNCTION_24_1();
    result = (*(v11 + 1952))(this);
    if (result && (OUTLINED_FUNCTION_24_1(), (*(v12 + 1952))(this), result = CCLogStream::shouldLog(), result))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v17 + 1952))(this);
      v18 = OUTLINED_FUNCTION_86();
      v19 = OSString::getCStringNoCopy(v18);
      result = CCLogStream::logAlert(CStringNoCopy, "[dk] %s@%d:Region Info <%s:%s> found=%d \n", "configureRegionSpecific", 40269, &v20, v19, v9);
      if (!v9)
      {
        return result;
      }
    }

    else if (!v9)
    {
      return result;
    }

    result = AppleBCMWLANPowerManager::setHtSisoOnly(*(*(this + 9) + 5520), 1);
    *(*(this + 9) + 36080) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    result = (*(v13 + 1952))(this);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v14 + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        v16 = (*(v15 + 1952))(this);
        return CCLogStream::logAlert(v16, "[dk] %s@%d:pRegionInfo is NULL\n", "configureRegionSpecific", 40247);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setEcountersEnableStateSync(AppleBCMWLANCore *a1, uint64_t a2, int a3)
{
  if (*(*(a1 + 9) + 960) == 1)
  {
    return 0;
  }

  v6 = AppleBCMWLANCore::commandSleepForThreadSafe(a1, 1u, 500);
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_19_1();
    if ((*(v9 + 1952))(a1))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v10 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        (*(v11 + 1952))(a1);
        OUTLINED_FUNCTION_11_3();
        CCLogStream::logAlert(v12, "[dk] %s@%d: setEcountersEnableStateSync fail =(0x%x) from commandSleep\n", v13, v14, v15);
      }
    }
  }

  else
  {
    if (*(*(a1 + 9) + 960) == 2 || (v7 = AppleBCMWLANCore::disableECounters(a1), !v7))
    {
      v7 = (*(a2 + 16))(a2);
    }

    if (a3)
    {
      AppleBCMWLANCore::enableECounters(a1);
    }

    AppleBCMWLANCore::commandWakeupForThreadSafe(a1, 1);
  }

  return v7;
}

uint64_t AppleBCMWLANCore::setACLParams(AppleBCMWLANCore *this, unsigned int *a2)
{
  result = AppleBCMWLANCore::getCommander(this);
  if (result)
  {
    OUTLINED_FUNCTION_154();
    result = AppleBCMWLANCommander::runIOVarSet(v4, v5, v6, v7, v8);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      result = (*(v9 + 1952))(this);
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v10 + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          v12 = (*(v11 + 1952))(this);
          OUTLINED_FUNCTION_24_1();
          v13 = OUTLINED_FUNCTION_157();
          v15 = v14(v13);
          return CCLogStream::logAlert(v12, "[dk] %s@%d: Error: Unable to set btc_low_latency_acl param %s, %s\n", "setACLParams", 54853, "btc_low_latency_acl", v15);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getTXRX_CHAIN_INFO()
{
  OUTLINED_FUNCTION_142();
  if (!v2)
  {
    return (v0 + 6);
  }

  v3 = v2;
  OUTLINED_FUNCTION_36_1();
  (*(v4 + 88))();
  OUTLINED_FUNCTION_5_0();
  if ((*(v5 + 136))())
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v31 + 1952))(v1) && (OUTLINED_FUNCTION_19_1(), (*(v32 + 1952))(v1), CCLogStream::shouldLog()))
    {
      OUTLINED_FUNCTION_19_1();
      v54 = (*(v53 + 1952))(v1);
      CCLogStream::logAlert(v54, "[dk] %s@%d:getTXRX_CHAIN_INFO() not permitted on driver workQueue thread\n", "getTXRX_CHAIN_INFO", 13166);
      return (v0 + 38);
    }

    else
    {
      return (v0 + 38);
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_153();
    if (OUTLINED_FUNCTION_202(v6, "hw_rxchain", &kNoTxPayload, v7, v8, v9, v10, v11, v55, v59, v63))
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v33 + 1952))(v1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v34 + 1952))(v1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v35 + 1952))(v1);
          OUTLINED_FUNCTION_52_0();
          v36 = OUTLINED_FUNCTION_159();
          v37(v36);
          OUTLINED_FUNCTION_6();
          CCLogStream::logAlert(v3, "[dk] %s@%d:hw_rxchain GET Failed, , error %s\n");
        }
      }
    }

    else
    {
      *v3 = -86;
      v12 = OUTLINED_FUNCTION_153();
      if (OUTLINED_FUNCTION_202(v12, "hw_txchain", &kNoTxPayload, v13, v14, v15, v16, v17, v56, v60, v64))
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v38 + 1952))(v1))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v39 + 1952))(v1);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            (*(v40 + 1952))(v1);
            OUTLINED_FUNCTION_52_0();
            v41 = OUTLINED_FUNCTION_159();
            v42(v41);
            OUTLINED_FUNCTION_6();
            CCLogStream::logAlert(v3, "[dk] %s@%d:hw_txchain GET Failed, , error %s\n");
          }
        }
      }

      else
      {
        *(v3 + 1) = -86;
        v18 = OUTLINED_FUNCTION_153();
        if (OUTLINED_FUNCTION_202(v18, "txchain", &kNoTxPayload, v19, v20, v21, v22, v23, v57, v61, v65))
        {
          OUTLINED_FUNCTION_19_1();
          if ((*(v43 + 1952))(v1))
          {
            OUTLINED_FUNCTION_19_1();
            (*(v44 + 1952))(v1);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_19_1();
              (*(v45 + 1952))(v1);
              OUTLINED_FUNCTION_52_0();
              v46 = OUTLINED_FUNCTION_159();
              v47(v46);
              OUTLINED_FUNCTION_6();
              CCLogStream::logAlert(v3, "[dk] %s@%d:bss_txchain GET Failed, , error %s\n");
            }
          }
        }

        else
        {
          *(v3 + 2) = -86;
          v24 = OUTLINED_FUNCTION_153();
          if (OUTLINED_FUNCTION_202(v24, "rxchain", &kNoTxPayload, v25, v26, v27, v28, v29, v58, v62, v66))
          {
            OUTLINED_FUNCTION_19_1();
            if ((*(v48 + 1952))(v1))
            {
              OUTLINED_FUNCTION_19_1();
              (*(v49 + 1952))(v1);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_19_1();
                (*(v50 + 1952))(v1);
                OUTLINED_FUNCTION_52_0();
                v51 = OUTLINED_FUNCTION_159();
                v52(v51);
                OUTLINED_FUNCTION_6();
                CCLogStream::logAlert(v3, "[dk] %s@%d:bss_rxchain GET Failed, , error %s\n");
              }
            }
          }

          else
          {
            v0 = 0;
            *(v3 + 3) = -86;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t AppleBCMWLANCore::isCachedSleepingEventBitFieldSet(AppleBCMWLANCore *this, uint64_t a2)
{
  v3 = *(*(this + 9) + 1184);
  if (!v3)
  {
    return 0;
  }

  IOLockLock(v3);
  OUTLINED_FUNCTION_269(*(this + 9));
  return a2;
}

CCFaultReporter *AppleBCMWLANCore::handleMSCSEvent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v4 = *(a2 + 50);
    OUTLINED_FUNCTION_24_1();
    v6 = (*(v5 + 1952))(a1);
    if (v4 <= 0xF)
    {
      if (!v6 || (OUTLINED_FUNCTION_24_1(), (*(v25 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_182();
          v39 = 1024;
          v40 = 24714;
          v41 = 1024;
          *v42 = v26;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: unexpected event_mscs length = %u\n", buf, 0x1Eu);
        }
      }

      OUTLINED_FUNCTION_24_1();
      if ((*(v27 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v28 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v30 = (*(v29 + 1952))(a1);
          CCLogStream::logAlert(v30, "[dk] %s@%d:unexpected event_mscs length = %u\n");
        }
      }
    }

    else
    {
      if (!v6 || (OUTLINED_FUNCTION_24_1(), (*(v7 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a2 + 60);
          v9 = *(a2 + 61);
          v10 = *(a2 + 62);
          v11 = *(a2 + 52);
          v12 = *(a2 + 56);
          v13 = *(a2 + 57);
          v14 = *(a2 + 58);
          v15 = *(a2 + 59);
          *buf = 67111682;
          v36 = 65;
          v37 = 2080;
          v38 = "handleMSCSEvent";
          v39 = 1024;
          v40 = 24720;
          v41 = 1024;
          *v42 = v8;
          *&v42[4] = 1024;
          *&v42[6] = v9;
          v43 = 1024;
          v44 = v10;
          v45 = 1024;
          v46 = v11;
          v47 = 1024;
          v48 = v12;
          v49 = 1024;
          v50 = v13;
          v51 = 1024;
          v52 = v14;
          v53 = 1024;
          v54 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: req_type=%u status_flags=0x%02x status_code=%u stream_timeout=%u up_bitmap=0x%02x up_limit=%u fc_type=%u fc_mask=0x%02x\n", buf, 0x48u);
        }
      }

      OUTLINED_FUNCTION_24_1();
      if ((*(v16 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v17 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v32 = (*(v31 + 1952))(a1);
          CCLogStream::logAlert(v32, "[dk] %s@%d:WiFi-QoS: req_type=%u status_flags=0x%02x status_code=%u stream_timeout=%u up_bitmap=0x%02x up_limit=%u fc_type=%u fc_mask=0x%02x\n", "handleMSCSEvent", 24720, *(a2 + 60), *(a2 + 61), *(a2 + 62), *(a2 + 52), *(a2 + 56), *(a2 + 57), *(a2 + 58), *(a2 + 59));
        }
      }

      *(*(a1 + 72) + 30082) = (*(a2 + 61) & 0x20) != 0;
      OUTLINED_FUNCTION_24_1();
      if (!(*(v18 + 1952))(a1) || (OUTLINED_FUNCTION_24_1(), (*(v19 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_254();
          OUTLINED_FUNCTION_182();
          v39 = 1024;
          v40 = 24722;
          v41 = v20;
          *v42 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS MSCS is %s\n", buf, 0x22u);
        }
      }

      OUTLINED_FUNCTION_24_1();
      if ((*(v22 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v23 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v33 + 1952))(a1);
          OUTLINED_FUNCTION_254();
          CCLogStream::logAlert(v34, "[dk] %s@%d:WiFi-QoS: QoS MSCS is %s\n");
        }
      }
    }
  }

  result = *(*(a1 + 72) + 5536);
  if (result)
  {
    return CCFaultReporter::reportFault(result, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0x6097u, "handleMSCSEvent", 0, -469793488, 0);
  }

  return result;
}

void AppleBCMWLANCore::reportMicrocodeLockup(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_16_5();
    if ((*(v4 + 1952))())
    {
      OUTLINED_FUNCTION_19_1();
      (*(v5 + 1952))(v3);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        (*(v9 + 1952))(v3);
        OUTLINED_FUNCTION_112();
        CCLogStream::logEmergency(v10, "[dk] %s@%d: Chip uCode Lockup, status = 0x%lx, reason = 0x%lx, auth_type = %lu, datalen = %lu\n", "reportMicrocodeLockup", 45038, v11, v12, v13, v14);
      }
    }

    if (v2[3] == 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    keys = OSString::withCString("FirmwareEvent.bin");
    values = OSData::withBytes(v2, v2[5] + 48);
    v7 = *(*(v3 + 72) + 5536);
    v8 = OSDictionary::withObjects(&values, &keys, 1u, 0);
    CCFaultReporter::reportFault(v7, v6, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xAFFBu, "reportMicrocodeLockup", v8, -469794299, "status=%u,reason=%u", v2[2], v2[3]);
    AppleBCMWLANUtil::releaseOSObjectArray(&keys, &values, 1);
  }
}

uint64_t AppleBCMWLANCore::getBssPhyModde(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4;
  }

  OUTLINED_FUNCTION_4();
  if (IO80211BSSBeacon::isEhtEnabled(v4) && (AppleBCMWLANCore::featureFlagIsBitSet(v3, 116) & 1) != 0)
  {
    return 512;
  }

  OUTLINED_FUNCTION_24_1();
  if (*(v6 + 464))(v2) && (AppleBCMWLANCore::featureFlagIsBitSet(v3, 67))
  {
    return 256;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v7 + 456))(v2))
  {
    OUTLINED_FUNCTION_24_1();
    if (((*(v8 + 264))(v2) & 0xC000) != 0)
    {
      return 128;
    }
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v9 + 456))(v2))
  {
    return 16;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v10 + 448))(v2))
  {
    return 16;
  }

  OUTLINED_FUNCTION_24_1();
  if (((*(v11 + 264))(v2) & 0xC000) != 0)
  {
    return 2;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v12 + 584))(v2) <= 0xB)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

uint64_t AppleBCMWLANCore::monitorModeSetEnabled(AppleBCMWLANCore *this, int a2, int a3)
{
  memcpy(__dst, "<unknown>", sizeof(__dst));
  Pid = 0;
  if (IO80211ThreadProcessInfo::getProcessPid(&Pid, v6) || IO80211ThreadProcessInfo::getProcessName(__dst, 0x80, v7))
  {
    Pid = IO80211Controller::getPid(this);
    IO80211Controller::getProcessName(this, __dst, 0x80uLL);
  }

  if (a3 == 127)
  {
    v8 = OUTLINED_FUNCTION_117();
    if (IO80211BssManager::isAssociated(v8))
    {
      v16 = 6;
    }

    else
    {
      if (a2)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v9 + 1216))(this, v10 + v11);
      }

      v12 = OUTLINED_FUNCTION_106();
      if (AppleBCMWLANCore::configureMonitorModeToFW(v12, v13))
      {
        OUTLINED_FUNCTION_253();
        v18 = v17 + 0x4000;
        if (!*(v18 + 3468) && (a2 & 1) == 0)
        {
          *(v18 + 1914) = 0;
        }

        OUTLINED_FUNCTION_24_1();
        if ((*(v19 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v20 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v31 = (*(v30 + 1952))(this);
            OUTLINED_FUNCTION_24_1();
            v32 = OUTLINED_FUNCTION_157();
            v33(v32);
            OUTLINED_FUNCTION_6();
            CCLogStream::logAlert(v31, "[dk] %s@%d: Error: Unable to enable monitor mode (WLC_SET_MONITOR): %s\n", v34, v35, v36);
          }
        }

        OUTLINED_FUNCTION_24_1();
        v21 = OUTLINED_FUNCTION_157();
        v23 = v22(v21);
        io80211_os_log(" Error: Unable to enable monitor mode (WLC_SET_MONITOR): %s, pid[%d]'%s'\n", v23, Pid, __dst);
        v16 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v14 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v15 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            (*(v28 + 1952))(this);
            v37 = *(*(this + 9) + 35464);
            v38 = *(*(this + 9) + 35468);
            OUTLINED_FUNCTION_66();
            CCLogStream::logAlert(v29, "[dk] %s@%d:Configure Monitor Mode: successful: enabled=%d, (channel[%u] flags[0x%08x])\n", v34, v35, v36, v37, v38);
          }
        }

        v16 = 0;
        *(*(this + 9) + 18298) = a2;
      }
    }
  }

  else
  {
    v16 = 43;
  }

  if (OUTLINED_FUNCTION_119())
  {
    OUTLINED_FUNCTION_5_0();
    v25 = (*(v24 + 752))();
    if (OSMetaClassBase::safeMetaCast(v25, gAppleBCMWLANBusSkywalkMetaClass))
    {
      OUTLINED_FUNCTION_5_0();
      (*(v26 + 88))();
    }
  }

  return v16;
}

uint64_t AppleBCMWLANCore::waitForGasAbortIfNeeded(AppleBCMWLANCore *this)
{
  v2 = OUTLINED_FUNCTION_62_0(*(this + 9));
  result = (*(v3 + 368))(v2);
  if ((result - 4387) > 0xC || ((1 << (result - 35)) & 0x1003) == 0)
  {
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    result = AppleBCMWLANGASAdapter::getLastGasAbortTime(*(*(this + 9) + 5472));
    v6 = -result;
    if (-result <= 0xC7)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v7 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v8 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v12 = (*(v11 + 1952))(this);
          CCLogStream::logAlert(v12, "[dk] %s@%d:TIME to wait due to GAS abort is %llu  \n", "waitForGasAbortIfNeeded", 62458, 200 - v6);
        }
      }

      clock_interval_to_deadline();
      OUTLINED_FUNCTION_24_1();
      (*(v9 + 104))(this);
      OUTLINED_FUNCTION_5_0();
      return (*(v10 + 80))();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setMulticastList(AppleBCMWLANCore *this, const ether_addr *a2, unsigned int a3)
{
  if ((*(*(this + 9) + 10377) & 0x80) != 0)
  {
    return 3766630404;
  }

  if (AppleBCMWLANCore::isRejectingCommands(this))
  {
    return 0;
  }

  if (a3 > 0x20)
  {
    return 3758097084;
  }

  v8 = *(*(this + 9) + 11296);
  if (v8)
  {
    if (a3)
    {
      v9 = memcmp(a2, &awdl_bonjour_addr, 6uLL);
      v10 = v9 == 0;
      LODWORD(v8) = v9 != 0;
    }

    else
    {
      v10 = 0;
      LODWORD(v8) = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = v8 + a3;
  if (v8 + a3 < 0x20)
  {
    v6 = AppleBCMWLANCore::setAllMulticast(this, 0);
    if (!v6)
    {
      memset(__b, 170, sizeof(__b));
      if (a3)
      {
        v14 = 0;
        v15 = a3;
        do
        {
          v16 = *(this + 9) + v14 * 6;
          v17 = *a2[v14].octet;
          *(v16 + 572) = *&a2[v14].octet[4];
          *(v16 + 568) = v17;
          ++v14;
        }

        while (a3 != v14);
        *(*(this + 9) + 564) = a3;
        *__b = v11;
        memcpy(&__b[4], a2, 6 * a3);
      }

      else
      {
        v15 = 0;
        *(*(this + 9) + 564) = 0;
        *__b = v11;
      }

      if (!v10)
      {
        v18 = &__b[6 * v15];
        *(v18 + 1) = awdl_bonjour_addr;
        *(v18 + 4) = word_1003E814C;
      }

      OUTLINED_FUNCTION_137();
      v45 = __b;
      v46 = (6 * v11 + 4);
      OUTLINED_FUNCTION_154();
      v6 = AppleBCMWLANCommander::runIOVarSet(v19, v20, v21, v22, v23);
      if (v6)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v24 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v25 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            (*(v39 + 1952))(this);
            OUTLINED_FUNCTION_63_0();
            v40 = OUTLINED_FUNCTION_106();
            v41(v40);
            OUTLINED_FUNCTION_250();
            CCLogStream::logCrit((6 * v11 + 4), "[dk] %s@%d:ivars->mcast_list() failed, error %s\n", v42, v43, v44);
          }
        }
      }

      v26 = OUTLINED_FUNCTION_188();
      if (v26)
      {
        if (IO80211SkywalkInterface::getInterfaceId(v26) != -1)
        {
          v27 = *(this + 9);
          v28 = *(v27 + 5408);
          InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v27 + 11296));
          v45 = __b;
          v46 = (6 * v11 + 4);
          v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v28, InterfaceId, "mcast_list", &v45, 0, 0);
          if (v6)
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v30 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v31 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v33 = (*(v32 + 1952))(this);
                v34 = OUTLINED_FUNCTION_188();
                v35 = IO80211SkywalkInterface::getInterfaceId(v34);
                OUTLINED_FUNCTION_24_1();
                v36 = OUTLINED_FUNCTION_106();
                v38 = v37(v36);
                CCLogStream::logCrit(v33, "[dk] %s@%d:ivars->mcast_list() failed on virt interface %lu, error %s\n", "setMulticastList", 25428, v35, v38);
              }
            }
          }
        }
      }
    }

    return v6;
  }

  v12 = OUTLINED_FUNCTION_261();

  return AppleBCMWLANCore::setAllMulticast(v12, v13);
}

uint64_t ratespec2rate(uint64_t a1, unsigned int a2)
{
  v2 = a2 & 0x70000;
  switch(HIBYTE(a2) & 7)
  {
    case 0:
      return a2 >> 1;
    case 1:
      if (a2 > 0x4Cu)
      {
        return 0;
      }

      if (v2 == 0x10000)
      {
        v6 = MCS_RATE_TABLE_20MHZ;
      }

      else
      {
        if (v2 != 0x20000)
        {
          return 0;
        }

        v6 = &MCS_RATE_TABLE_40MHZ;
      }

      v7 = &v6[2 * a2];
      goto LABEL_26;
    case 2:
      v4 = a2 >> 4;
      if ((v4 - 4) < 0xFFFFFFFD)
      {
        return 0;
      }

      switch(v2)
      {
        case 0x10000u:
          v5 = &VHT_MCS_RATE_TABLE_20MHZ;
          break;
        case 0x30000u:
          v5 = &VHT_MCS_RATE_TABLE_80MHZ;
          break;
        case 0x20000u:
          v5 = &VHT_MCS_RATE_TABLE_40MHZ;
          break;
        default:
          return 0;
      }

      goto LABEL_23;
    case 3:
      v4 = a2 >> 4;
      if ((v4 - 4) < 0xFFFFFFFD)
      {
        return 0;
      }

      switch(v2)
      {
        case 0x10000u:
          v5 = &AppleBCMWLANUtil80211RateTables::HE_MCS_RATE_TABLE_20MHZ;
          break;
        case 0x30000u:
          v5 = &AppleBCMWLANUtil80211RateTables::HE_MCS_RATE_TABLE_80MHZ;
          break;
        case 0x20000u:
          v5 = &AppleBCMWLANUtil80211RateTables::HE_MCS_RATE_TABLE_40MHZ;
          break;
        default:
          return 0;
      }

LABEL_23:
      if ((a2 & 0xF) > 0xB)
      {
        return 0;
      }

      v7 = &v5[v4 - 1][2 * (a2 & 0xF)];
LABEL_26:
      if ((a2 & 0x800000) != 0)
      {
        ++v7;
      }

      return *v7;
    default:
      return 0;
  }
}

uint64_t AppleBCMWLANCore::getOP_MODE(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  OUTLINED_FUNCTION_4();
  *v4 = 1;
  v6 = *(v5 + 72);
  v7 = *(v6 + 11304);
  if (v7)
  {
    v8 = AppleBCMWLANIO80211APSTAInterface::enabled(v7);
    v6 = *(v3 + 72);
    if (v8)
    {
      OUTLINED_FUNCTION_5_0();
      (*(v9 + 1672))(v10);
      *(v2 + 4) |= 0xAAAAAAAA;
      v6 = *(v3 + 72);
    }
  }

  if (IO80211BssManager::isAssociated(*(v6 + 5432)))
  {
    *(v2 + 4) |= IO80211BssManager::getOPMode(*(*(v3 + 72) + 5432));
  }

  result = 0;
  if (*(*(v3 + 72) + 18297))
  {
    *(v2 + 4) |= 0x10u;
  }

  return result;
}

void AppleBCMWLANCore::getSupportedChannelsMatching()
{
  OUTLINED_FUNCTION_279();
  v63 = v0;
  v64 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v58 = 0;
  v59 = 0;
  bzero(&v61 + 2, 0x5F8uLL);
  v60 = 0;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  LOWORD(v61) = 0;
  v53 = 0;
  v54 = 0;
  *v3 = 0;
  *v5 = 0;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (!v7)
  {
    goto LABEL_50;
  }

  v10 = *(v9 + 9);
  v11 = *(v10 + 17816);
  if (v11 == 97)
  {
    v13 = 0;
    v12 = *(v10 + 17817) == 0;
  }

  else if (v11 == 98)
  {
    v12 = 0;
    v13 = *(v10 + 17817) == 0;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  if (*(v7 + 4817))
  {
    v14 = (v7 + 4818);
    goto LABEL_13;
  }

  if (*(v7 + 4816))
  {
    isRestrictedCountry = AppleBCMWLANCore::isRestrictedCountry(v9);
    v16 = 6732;
    if (isRestrictedCountry)
    {
      v16 = 6740;
    }

    v14 = (v10 + v16);
    goto LABEL_13;
  }

  v58 = &v60;
  v59 = 0x400040004;
  v40 = AppleBCMWLANCommander::runIOCtlGet(*(v10 + 5408), 83, &kNoTxPayload, &v58, 0);
  if (!v40)
  {
    v14 = &v60;
LABEL_13:
    if (strlcpy(&v61 + 2, v14, 4uLL) <= 3)
    {
      *&v62[2] = 380;
      v58 = &v61;
      v59 = 0x5F4000405FALL;
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v17 = OUTLINED_FUNCTION_137();
      v52[0] = &v61;
      v52[1] = 1530;
      v18 = AppleBCMWLANCommander::runIOVarGet(v17, "chanspecs", v52, &v58, 0);
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      *v3 = v53 - v55;
      if (v18)
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v19 + 1952))(v9))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v20 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v22 = (*(v21 + 1952))(v9);
            OUTLINED_FUNCTION_24_1();
            (*(v23 + 112))(v9, v18);
            OUTLINED_FUNCTION_6();
            CCLogStream::logCrit(v22, "[dk] %s@%d: chanspecs failed, error %s\n", v47, v48, v49);
          }
        }
      }

      else
      {
        v50 = v5;
        if (v61)
        {
          v51 = 0;
          if (v61 >= 0x17C)
          {
            v24 = 380;
          }

          else
          {
            v24 = v61;
          }

          v25 = v62;
          do
          {
            v26 = *v25;
            v25 += 2;
            AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(v9 + 9) + 17744), v26);
            ChanSpecConvToApple80211Channel();
            v27 = v57;
            v28 = (v57 >> 2) & 1;
            v29 = BYTE4(v56);
            BandForChanSpec = IO80211_getBandForChanSpec(v57);
            isPassiveChannel = AppleBCMWLANCore::isPassiveChannel(v9, v29, BandForChanSpec, v28, (v27 >> 10) & 1, (v27 >> 11) & 1);
            v32 = v57;
            if (!isPassiveChannel)
            {
              v32 = v57 | 0x80;
              v57 |= 0x80u;
            }

            v33 = BYTE4(v56);
            v34 = IO80211_getBandForChanSpec(v32);
            isDFSChannel = AppleBCMWLANCore::isDFSChannel(v9, v33, v34);
            v36 = v57;
            if (isDFSChannel)
            {
              v36 = v57 | 0x100;
              v57 |= 0x100u;
            }

            if ((v36 & 0x10) != 0 || !v12)
            {
              v38 = (v36 & 8) == 0 && v13;
              if (!v38 && (*(v7 + 4808) & v36) != 0 && (*(v7 + 4812) & v36) == 0)
              {
                v39 = v7 + 8 + 12 * v51;
                *v39 = v56;
                *(v39 + 8) = v36;
                ++v51;
              }
            }

            --v24;
          }

          while (v24);
        }

        else
        {
          v51 = 0;
        }

        *v7 = 1;
        *(v7 + 4) = v51;
        if (*(v7 + 4816) && !*(v7 + 4817))
        {
          AppleBCMWLANCore::appending6GOnlyChannelsWithCurrentCC(v9, v7, v52);
        }

        mach_continuous_time();
        absolutetime_to_nanoseconds();
        *v50 = v53 - v54;
      }
    }

    goto LABEL_50;
  }

  v41 = v40;
  OUTLINED_FUNCTION_24_1();
  if ((*(v42 + 1952))(v9))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v43 + 1952))(v9);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v45 = (*(v44 + 1952))(v9);
      OUTLINED_FUNCTION_24_1();
      (*(v46 + 112))(v9, v41);
      OUTLINED_FUNCTION_6();
      CCLogStream::logAlert(v45, "[dk] %s@%d: Failed to retrieve country code:%s \n", v47, v48, v49);
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_280();
}

void AppleBCMWLANCore::getSUPPORTED_CHANNELS(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_4();
    if (!*(v4 + 4808) && !*(v2 + 4812))
    {
      *(v2 + 4808) = 2;
    }

    OUTLINED_FUNCTION_130();
    AppleBCMWLANCore::getSupportedChannelsMatching();
    if (!v5)
    {
      LOWORD(v19) = *(v2 + 4818);
      BYTE2(v19) = *(v2 + 4820);
      OUTLINED_FUNCTION_19_1();
      if ((*(v6 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v7 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v8 + 1952))(v3);
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_207();
          CCLogStream::logAlert(v9, "[dk] %s@%d: call time[%06llu.%06llu], ioctl time[%06llu.%06llu], channels[%3u], flags In[0x%08x] Ex[0x%08x] cc['%s'], def[%u]/sp[%u]", "getSUPPORTED_CHANNELS", 28157, v12, v10, v14, v11, v15, v13, v16, &v19, v17, v18);
        }
      }
    }
  }
}

void AppleBCMWLANCore::getHW_SUPPORTED_CHANNELS(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  if (a2)
  {
    OUTLINED_FUNCTION_4();
    *(v4 + 4816) = 1;
    *(v4 + 4808) = 2;
    AppleBCMWLANCore::getSupportedChannelsMatching();
    if (!v5)
    {
      LOWORD(v19) = *(v2 + 4818);
      BYTE2(v19) = *(v2 + 4820);
      OUTLINED_FUNCTION_19_1();
      if ((*(v6 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v7 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v8 + 1952))(v3);
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_207();
          CCLogStream::logAlert(v9, "[dk] %s@%d: call time[%06llu.%06llu], ioctl time[%06llu.%06llu], channels[%3u], flags In[0x%08x] Ex[0x%08x] cc['%s'], def[%u]/sp[%u]", "getHW_SUPPORTED_CHANNELS", 28192, v12, v10, v14, v11, v15, v13, v16, &v19, v17, v18);
        }
      }
    }
  }
}

void AppleBCMWLANCore::getCOUNTRY_CHANNELS()
{
  OUTLINED_FUNCTION_108();
  bzero(&v14, 0x12D8uLL);
  v13 = 0;
  if (v1)
  {
    v18 = 1;
    v20 = *(v1 + 10);
    v19 = *(v1 + 8);
    v16 = 2;
    AppleBCMWLANCore::getSupportedChannelsMatching();
    if (!v2)
    {
      *v1 = v14;
      memcpy((v1 + 12), v15, 0x12C0uLL);
      LOWORD(v13) = v19;
      BYTE2(v13) = v20;
      if ((*(*v0 + 1952))(v0))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v3 + 1952))(v0);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          (*(v4 + 1952))(v0);
          OUTLINED_FUNCTION_61_0();
          CCLogStream::logAlert(v7, "[dk] %s@%d: call time[%06llu.%06llu], ioctl time[%06llu.%06llu], channels[%3u], flags In[0x%08x] Ex[0x%08x] cc['%s'], def[%u]/sp[%u]", "getCOUNTRY_CHANNELS", 28238, v9, v8, v11, v5 / v6, HIDWORD(v14), v16, v17, &v13, v10, v12);
        }
      }
    }
  }
}

uint64_t AppleBCMWLANCore::getOFFLOAD_TCPKA_ENABLE(AppleBCMWLANCore *this, uint64_t a2)
{
  v2 = 3758097095;
  if (!a2 || !*(this + 9))
  {
    return 3758097090;
  }

  if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(this))
  {
    v5 = *(*(this + 9) + 5544);
    if (v5)
    {
      AppleBCMWLANKeepAliveOffload::getTCPAliveEnable(v5, a2);
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v7 + 1952))(this))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v8 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v10 = (*(v9 + 1952))(this);
        CCLogStream::logAlert(v10, "[dk] %s@%d:TCP keep alive offload not supported, ignoring\n", "getOFFLOAD_TCPKA_ENABLE", 28375);
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setOFFLOAD_TCPKA_ENABLE(AppleBCMWLANCore *this, uint64_t a2)
{
  v2 = 3758097095;
  if (a2 && *(this + 9))
  {
    if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(this))
    {
      v5 = *(*(this + 9) + 5544);
      if (v5)
      {
        AppleBCMWLANKeepAliveOffload::setTCPAliveEnable(v5, a2);
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v7 + 1952))(this))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v8 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v10 = (*(v9 + 1952))(this);
          CCLogStream::logAlert(v10, "[dk] %s@%d:TCP keep alive offload not supported, ignoring\n", "setOFFLOAD_TCPKA_ENABLE", 28393);
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getDYNSAR_DETAIL(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  if (*(a2 + 8) > 3u)
  {
    return 22;
  }

  *a2 = 1;
  *(a2 + 12) = AppleBCMWLANTxPowerManager::getDynSARDetailCurId(*(*(a1 + 72) + 5528), *(a2 + 4));
  *(a2 + 16) = AppleBCMWLANTxPowerManager::getDynSARDetailCircled(*(*(a1 + 72) + 5528), *(a2 + 4));
  DynSARDetailReportPerSlicePerAnt = AppleBCMWLANTxPowerManager::getDynSARDetailReportPerSlicePerAnt(*(*(a1 + 72) + 5528), *(a2 + 4), *(a2 + 8));
  memcpy((a2 + 24), DynSARDetailReportPerSlicePerAnt, 0x2D00uLL);
  return 0;
}

uint64_t AppleBCMWLANCore::getCOLOCATED_NETWORK_SCOPE_ID(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 1;
  result = *(*(a1 + 72) + 5432);
  if (result)
  {
    return OUTLINED_FUNCTION_147(result, a2);
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getCOLOCATED_NETWORK_SCOPE_ID(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 1;
  result = *(*(a1 + 8) + 5432);
  if (result)
  {
    return OUTLINED_FUNCTION_147(result, a2);
  }

  return result;
}

uint64_t AppleBCMWLANCore::set6G_MODE(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  OUTLINED_FUNCTION_108();
  result = AppleBCMWLANCore::featureFlagIsBitSet(v3, 93);
  if (result)
  {
    v5 = *(v2 + 4);
    v6 = OUTLINED_FUNCTION_117();
    if (v5 != IO80211BssManager::get6GMode(v6))
    {
      v7 = OUTLINED_FUNCTION_117();
      IO80211BssManager::set6GMode(v7, *(v2 + 4));
      v8 = OUTLINED_FUNCTION_117();
      IO80211BssManager::isAssociated(v8);
    }

    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::powerOn(AppleBCMWLANCore *this)
{
  v207 = 0;
  HIBYTE(v206) = 0;
  IOParseBootArgNumber("wlan.check-wake-type", &v206 + 7, 1);
  v205 = 0xAAAAAAAAAAAAAAAALL;
  AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(&v205, 0x40, 0, 1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v2);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v205, mach_continuous_nanoseconds, 65553, 38938, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOn()", 38938);
  OUTLINED_FUNCTION_132();
  if ((*(v4 + 1952))(this))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v5 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v132 + 1952))(this);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_217();
      CCLogStream::logAlert(v133, "[dk] %s@%d: stateFlags(%lx) userPower(%s), fCaptureWoWPacket[%u] fCaptureBGScanPacket[%u], checkWakeType[%u], fWoWSetup[%u], WiFiWakeType[0x%08x]\n", "powerOn", 38940, v134, v137, v138, v139, v140, v136, v135);
    }
  }

  OUTLINED_FUNCTION_214(*(this + 9));
  OUTLINED_FUNCTION_214(v6);
  v8 = *(v7 + 10376);
  if ((v8 & 0x10000000) != 0)
  {
    OUTLINED_FUNCTION_24_1();
    v15 = (*(v14 + 1952))(this);
    if ((v8 & 4) != 0)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v19 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v21 = (*(v20 + 1952))(this);
          CCLogStream::logAlert(v21, "[dk] %s@%d: alreedy powering on\n", "powerOn", 38949);
        }
      }

      goto LABEL_109;
    }

    v8 = 3758097109;
    if (v15)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v16 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v18 = (*(v17 + 1952))(this);
        CCLogStream::logAlert(v18, "[dk] %s@%d:Conflicting power transitions.\n", "powerOn", 38952);
      }
    }

    goto LABEL_110;
  }

  if (!*(v7 + 5392))
  {
    goto LABEL_109;
  }

  if ((*(v7 + 10376) & 0x8080) == 0x8000)
  {
    v9 = *(v7 + 5388);
    if (v9 <= 4)
    {
      *(v7 + 5388) = v9 + 1;
      OUTLINED_FUNCTION_24_1();
      if ((*(v10 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v11 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v142 = (*(v141 + 1952))(this);
          CCLogStream::logAlert(v142, "[dk] %s@%d:WD Failed detected, trying WD now. No %d\n", "powerOn", 38965, *(*(this + 9) + 5388));
        }
      }

      v12 = OUTLINED_FUNCTION_221();
      v8 = AppleBCMWLANCore::watchdog(v12, v13);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  atomic_fetch_or((v7 + 10376), 0x10000004u);
  *(*(this + 9) + 6580) = 0;
  OUTLINED_FUNCTION_24_1();
  if ((*(v22 + 1952))(this))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v23 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v144 + 1952))(this);
      OUTLINED_FUNCTION_73_0();
      if (!v113 & v148)
      {
        v149 = "UNKNOWN";
      }

      else
      {
        v149 = off_1003D0E30[v147];
      }

      CCLogStream::logInfo(v145, "[dk] %s@%d:Wakeup commander fStateFlags(%lx) userPower(%s)\n", "powerOn", 38977, v146, v149);
    }
  }

  v24 = OUTLINED_FUNCTION_137();
  AppleBCMWLANCommander::wakeup(v24);
  AppleBCMWLANCore::enableWorkQueueSources(this);
  AppleBCMWLANCore::syncChipTimer(this);
  v25 = *(this + 9);
  if ((*(v25 + 10377) & 0x10) != 0 && (v26 = *(v25 + 11304)) != 0 && (v27 = AppleBCMWLANIO80211APSTAInterface::enabled(v26), v25 = *(this + 9), v27))
  {
    AppleBCMWLANIO80211APSTAInterface::hostAPPowerOn(*(v25 + 11304));
    OUTLINED_FUNCTION_253();
  }

  else
  {
    v8 = 0;
  }

  if (*(v25 + 11288) && (*(v25 + 10376) & 0x80) == 0)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v28 + 1232))();
    OUTLINED_FUNCTION_15_5();
    (*(v29 + 1120))();
  }

  AppleBCMWLANCore::allowLinkup(this);
  AppleBCMWLANCore::resetPorts(this);
  AppleBCMWLANCore::collectScanForwardStats(this);
  v30 = OUTLINED_FUNCTION_261();
  AppleBCMWLANCore::processPowerStatsChangesInSleep(v30, v31);
  AppleBCMWLANCore::unconfigureEventBitMaskForUnAssociatedSleep(this);
  AppleBCMWLANCore::setEcountersEnableStateSync(this, &__block_literal_global_2306, 1);
  if (OUTLINED_FUNCTION_230())
  {
    if ((*(*(this + 9) + 18484) & 1) == 0)
    {
      v32 = AppleBCMWLANCore::dumpEventLogReportedStats(this, 6);
      if (v32)
      {
        v33 = v32;
        OUTLINED_FUNCTION_24_1();
        if ((*(v34 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v35 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v169 = (*(v168 + 1952))(this);
            OUTLINED_FUNCTION_24_1();
            (*(v170 + 112))(this, v33);
            OUTLINED_FUNCTION_216();
            CCLogStream::logAlert(v169, "[dk] %s@%d: Failed to flush log set 6 : %s\n", v190, v191, v192);
          }
        }
      }
    }
  }

  v36 = OUTLINED_FUNCTION_255();
  if (v36)
  {
    v8 = AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(v36);
    if (v8)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v37 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v38 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v165 = (*(v164 + 1952))(this);
          CCLogStream::logAlert(v165, "[dk] %s@%d:Failed to configure Private MAC Address for Scans \n", "powerOn", 39071);
        }
      }
    }
  }

  if (*(*(this + 9) + 8819) == 1)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v39 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v40 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v153 = (*(v152 + 1952))(this);
        CCLogStream::logAlert(v153, "[dk] %s@%d: Tearing down WoW mode\n", "powerOn", 39083);
      }
    }

    v41 = *(this + 9);
    if (*(v41 + 776))
    {
      if (IO80211BssManager::isAssociated(*(v41 + 5432)) && *(*(this + 9) + 6232))
      {
        OUTLINED_FUNCTION_5_0();
        (*(v42 + 56))();
      }

      AppleBCMWLANCore::configureAssociatedSleepExit(this);
      v41 = *(this + 9);
    }

    *(v41 + 8819) = 0;
  }

  v43 = AppleBCMWLANCore::systemWokenByWiFi(this);
  OUTLINED_FUNCTION_24_1();
  if ((*(v44 + 1952))(this))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v45 + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v143 + 1952))(this);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_217();
      CCLogStream::logAlert(v156, "[dk] %s@%d: stateFlags(%lx) userPower(%s), fCaptureWoWPacket[%u] fCaptureBGScanPacket[%u], checkWakeType[%u], fWoWSetup[%u], WiFiWakeType[0x%08x] wokenByWiFi[%u]\n", "powerOn", 39111, v157, v160, v161, v162, v163, v159, v158, v43);
    }
  }

  v46 = OUTLINED_FUNCTION_60_0();
  v48 = (*(v47 + 208))(v46);
  v49 = *(this + 9);
  if ((v48 & 1) == 0 && (*(v49 + 10376) & 0x80) == 0)
  {
    if (*(v49 + 8817))
    {
      if (v43)
      {
        goto LABEL_61;
      }
    }

    else if (v43 & *(v49 + 8818))
    {
LABEL_61:
      v202 = 0;
      if (acquireProperty<OSDictionary>(*(v49 + 5392), "IO80211InterfaceWoWWakeUpParams", &v202, 0, "IOService"))
      {
        OUTLINED_FUNCTION_24_1();
        if ((*(v50 + 1952))(this))
        {
          OUTLINED_FUNCTION_24_1();
          (*(v51 + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_24_1();
            v172 = (*(v171 + 1952))(this);
            CCLogStream::logAlert(v172, "[dk] %s@%d: APPLE80211_REGKEY_WOW_WAKEUP_PARAMS already present, populate wakeup parameters\n", "powerOn", 39126);
          }
        }

        setPropertyHelper(this, "IO80211InterfaceWoWWakeUpParams", v202);
        if (v202)
        {
          OUTLINED_FUNCTION_5_0();
          (*(v52 + 16))();
        }
      }

      else
      {
        v53 = *(this + 9);
        if ((*(v53 + 8817) & 1) != 0 || (*(v53 + 8818) & 1) != 0 || HIBYTE(v206) == 1 && *(v53 + 8824))
        {
          MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(v53 + 5408));
          v55 = IOMallocZeroData();
          if (v55)
          {
            v56 = (MaxCmdRxPayload << 32) | MaxCmdRxPayload;
            if (MaxCmdRxPayload)
            {
              v57 = v55;
            }

            else
            {
              v56 = 0;
              v57 = 0;
            }

            *&v208 = v57;
            *(&v208 + 1) = v56;
            v58 = OUTLINED_FUNCTION_137();
            v59 = AppleBCMWLANCommander::runIOVarGet(v58, "bus:wakeup_data", &kNoTxPayload, &v208, 0);
            AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(this, v59, &v208);
            OUTLINED_FUNCTION_132();
            if ((*(v60 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v61 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v178 = (*(v177 + 1952))(this);
                CCLogStream::logAlert(v178, "[dk] %s@%d: Log adjusted/claimed wake reason\n", "powerOn", 39156);
              }
            }

            AppleBCMWLANCore::systemWokenByWiFi(this);
            OUTLINED_FUNCTION_24_1();
            if ((*(v62 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v63 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v180 = (*(v179 + 1952))(this);
                v181 = *(this + 9);
                if (v181)
                {
                  LODWORD(v181) = *(v181 + 8824);
                }

                CCLogStream::logAlert(v180, "[dk] %s@%d:Queried WiFi bus wakeup data, WiFiWakeType[0x%08x]\n", "powerOn", 39163, v181);
              }
            }

            IOFreeData();
          }
        }

        else
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v127 + 1952))(this))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v128 + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v130 = (*(v129 + 1952))(this);
              v131 = *(this + 9);
              if (v131)
              {
                LODWORD(v131) = *(v131 + 8824);
              }

              CCLogStream::logAlert(v130, "[dk] %s@%d:Unable to process WiFi wake reason, WiFiWakeType[0x%08x]\n", "powerOn", 39167, v131);
            }
          }
        }
      }

      v49 = *(this + 9);
      goto LABEL_82;
    }

    if (HIBYTE(v206) == 1 && *(v49 + 8824))
    {
      goto LABEL_61;
    }
  }

LABEL_82:
  OUTLINED_FUNCTION_214(v49);
  OUTLINED_FUNCTION_214(v64);
  *(v65 + 8820) = 0;
  AppleBCMWLANCore::setWiFiWakeType(this, 0);
  v66 = OUTLINED_FUNCTION_117();
  if (IO80211BssManager::isAssociated(v66))
  {
    HIDWORD(v204) = -1431655766;
    *&v208 = this;
    *(&v208 + 1) = AppleBCMWLANCore::getRssiAsyncCallback;
    v209 = 0;
    v67 = OUTLINED_FUNCTION_137();
    v202 = (&v204 + 4);
    v203 = 4;
    HIDWORD(v201) = 262148;
    if (AppleBCMWLANCommander::sendIOCtlGet(v67, 127, &v202, &v201 + 2, &v208, 0))
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v68 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v69 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v167 = (*(v166 + 1952))(this);
          CCLogStream::logAlert(v167, "[dk] %s@%d:%u Error: Unable to get the rssi from firmware using WLC_GET_RSSI\n", "powerOn", 39189, 39189);
        }
      }
    }
  }

  v70 = OUTLINED_FUNCTION_117();
  if (IO80211BssManager::isAssociated(v70))
  {
    AppleBCMWLANCore::enableTxQueues(this);
  }

  v71 = *(this + 9);
  if (*(v71 + 11296) || *(v71 + 29944))
  {
    AppleBCMWLANCore::addEventBit(this);
    v8 = AppleBCMWLANCore::writeEventBitField(this);
    if (v8)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v109 + 1952))(this))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v110 + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v174 = (*(v173 + 1952))(this);
          OUTLINED_FUNCTION_24_1();
          v175 = OUTLINED_FUNCTION_157();
          v176(v175);
          OUTLINED_FUNCTION_216();
          CCLogStream::logAlert(v174, "[dk] %s@%d: Failed to set event WLC_E_COUNTRY_CODE_CHANGED : %s\n", v190, v191, v192);
        }
      }
    }

    AppleBCMWLANCore::updateCurrentFWCountryCode(this);
    v111 = *(this + 9);
    if (*(v111 + 10376))
    {
      v112 = *(v111 + 19852);
      v113 = v112 == 4 || v112 == 1;
      if (v113)
      {
        v114 = *(v111 + 11296);
        if (v114)
        {
          v8 = AppleBCMWLANProximityInterface::bringupLink(v114);
          if (v8)
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v115 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v116 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v183 = (*(v182 + 1952))(this);
                OUTLINED_FUNCTION_24_1();
                v184 = OUTLINED_FUNCTION_157();
                v185(v184);
                OUTLINED_FUNCTION_216();
                CCLogStream::logAlert(v183, "[dk] %s@%d: Failed to resume AWDL link: %s\n", v190, v191, v192);
              }
            }
          }
        }

        v117 = *(*(this + 9) + 29944);
        if (v117)
        {
          v8 = AppleBCMWLANNANInterface::bringupLink(v117);
          if (v8)
          {
            OUTLINED_FUNCTION_24_1();
            if ((*(v118 + 1952))(this))
            {
              OUTLINED_FUNCTION_24_1();
              (*(v119 + 1952))(this);
              if (CCLogStream::shouldLog())
              {
                OUTLINED_FUNCTION_24_1();
                v187 = (*(v186 + 1952))(this);
                OUTLINED_FUNCTION_24_1();
                v188 = OUTLINED_FUNCTION_157();
                v189(v188);
                OUTLINED_FUNCTION_216();
                CCLogStream::logAlert(v187, "[dk] %s@%d: Failed to resume NAN link: %s\n", v190, v191, v192);
              }
            }
          }

          v120 = *(*(this + 9) + 29952);
          if (v120)
          {
            v8 = AppleBCMWLANNANDataInterface::bringupLink(v120);
            if (v8)
            {
              OUTLINED_FUNCTION_24_1();
              if ((*(v121 + 1952))(this))
              {
                OUTLINED_FUNCTION_24_1();
                (*(v122 + 1952))(this);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_24_1();
                  v124 = (*(v123 + 1952))(this);
                  OUTLINED_FUNCTION_24_1();
                  v125 = OUTLINED_FUNCTION_157();
                  v126(v125);
                  OUTLINED_FUNCTION_216();
                  CCLogStream::logAlert(v124, "[dk] %s@%d: Failed to resume NDI link: %s\n", v190, v191, v192);
                }
              }
            }
          }
        }
      }
    }
  }

  bzero(&v208, 0xF8uLL);
  LODWORD(v208) = 3;
  DWORD2(v208) = 1;
  LODWORD(v209) = -528345085;
  v79 = *(this + 9);
  if (v79[1411])
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v80 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v81 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v150 + 1952))(this);
        OUTLINED_FUNCTION_112();
        CCLogStream::logAlert(v151, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "powerOn", 39258, v192, v193, v194, v195);
      }
    }

    OUTLINED_FUNCTION_257();
    v72 = OUTLINED_FUNCTION_155(v82, v83, v84, v85, v86, v87, v88, v89, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
    v79 = *(this + 9);
  }

  v90 = v79[1412];
  if (v90)
  {
    v72 = OUTLINED_FUNCTION_155(v72, v90, v73, v74, v75, v76, v77, v78, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
    v79 = *(this + 9);
  }

  v91 = v79[3743];
  if (v91)
  {
    OUTLINED_FUNCTION_155(v72, v91, v73, v74, v75, v76, v77, v78, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  v92 = *(this + 9);
  if ((v207 / 0xF4240 - *(v92 + 19792)) >> 4 <= 0x752)
  {
    AppleBCMWLANCore::sendTxPowerCapValueToFirmware(this, *(v92 + 19776), *(v92 + 19772));
    v92 = *(this + 9);
  }

  atomic_fetch_and((v92 + 10376), 0xEFFFFFFF);
  v93 = *(this + 9);
  if ((*(v93 + 10376) & 0x8080) == 0x8000)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v94 + 1952))(this))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v95 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v155 = (*(v154 + 1952))(this);
        CCLogStream::logAlert(v155, "[dk] %s@%d:WD Failed while in powerOn. Save me!\n", "powerOn", 39289);
      }
    }

    v96 = *(this + 9);
    v97 = *(v96 + 5388);
    if (v97 > 4)
    {
LABEL_108:
      AppleBCMWLANCore::watchdogFailed(this);
      goto LABEL_109;
    }

    *(v96 + 5388) = v97 + 1;
    v98 = OUTLINED_FUNCTION_221();
    AppleBCMWLANCore::watchdog(v98, v99);
LABEL_109:
    v8 = 0;
    goto LABEL_110;
  }

  v102 = v93 + 0x4000;
  if (*(v102 + 3468) == 1 && *(v102 + 1914) == 1 && (*(v102 + 1913) & 1) == 0)
  {
    v103 = OUTLINED_FUNCTION_261();
    AppleBCMWLANCore::configureMonitorModeToFW(v103, v104);
  }

  v105 = OUTLINED_FUNCTION_261();
  AppleBCMWLANCore::setSPMICommonConfig(v105, v106);
  v108 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v107);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v205, (v108 - mach_continuous_nanoseconds), 65553, 39310, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOn()", 39310);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v205, v108, 65553, 39311, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOn()", 39311);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(&v205, 0, 0);
LABEL_110:
  if (v205)
  {
    OUTLINED_FUNCTION_5_0();
    (*(v100 + 16))();
  }

  return v8;
}

uint64_t AppleBCMWLANCore::isCachedEventBitFieldSet(AppleBCMWLANCore *this, uint64_t a2)
{
  v3 = *(*(this + 9) + 1184);
  if (!v3)
  {
    return 0;
  }

  IOLockLock(v3);
  OUTLINED_FUNCTION_269(*(this + 9));
  return a2;
}

void AppleBCMWLANCore::addEventBit(AppleBCMWLANCore *this)
{
  v3 = *(*(this + 9) + 1184);
  if (v3)
  {
    OUTLINED_FUNCTION_273();
    *(v2 + 1096) |= 1 << (v1 & 7);

    IOLockUnlock(v3);
  }
}

uint64_t AppleBCMWLANCore::isEventBitSet(AppleBCMWLANCore *this)
{
  v3 = *(*(this + 9) + 1184);
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_273();
  v4 = (*(v2 + 1096) >> (v1 & 7)) & 1;
  IOLockUnlock(v3);
  return v4;
}

uint64_t AppleBCMWLANCore::setEventBit(AppleBCMWLANCore *this)
{
  AppleBCMWLANCore::addEventBit(this);

  return AppleBCMWLANCore::writeEventBitField(this);
}

uint64_t AppleBCMWLANCore::setCHANNEL()
{
  OUTLINED_FUNCTION_171();
  v34 = 0;
  if (!v3)
  {
    return (v0 - 6);
  }

  OUTLINED_FUNCTION_101_0();
  v5 = *(v4 + 8);
  if (v5 < 0x100)
  {
    *(v1[9] + 35456) = *v2;
    ChanSpec = AppleBCMWLANCore::getChanSpec(v1, v2 + 4, &v34);
    v35 = v34;
    if (ChanSpec || !v34)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v18 + 1952))(v1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v19 + 1952))(v1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v21 = (*(v20 + 1952))(v1);
          OUTLINED_FUNCTION_19_1();
          (*(v22 + 112))(v1, ChanSpec);
          CCLogStream::logAlert(v21, "[dk] %s@%d: Failed to set channel %d/%s/%s flags[0x%08x] chanspecs 0x%x, failed to convert to chanspec (error=%s)  \n", "setCHANNEL", 35342);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_154();
      v0 = AppleBCMWLANCommander::runIOVarSet(v9, v10, v11, v12, v13);
      v14 = (*(*v1 + 1952))(v1);
      if (v0)
      {
        if (v14)
        {
          OUTLINED_FUNCTION_19_1();
          (*(v15 + 1952))(v1);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v17 = (*(v16 + 1952))(v1);
            OUTLINED_FUNCTION_19_1();
            v32 = OUTLINED_FUNCTION_130();
            v33(v32);
            CCLogStream::logAlert(v17, "[dk] %s@%d: Failed to set channel %d/%s/%s flags[0x%08x] chanspecs 0x%x, failed to set iovar (error=%s)  \n", "setCHANNEL", 35349);
          }
        }
      }

      else
      {
        if (v14)
        {
          OUTLINED_FUNCTION_19_1();
          (*(v23 + 1952))(v1);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v28 = (*(v27 + 1952))(v1);
            v29 = *(v2 + 12);
            v30 = "5GHz";
            if ((v29 & 0x10) == 0)
            {
              v30 = "2GHz";
            }

            if ((v29 & 0x2000) != 0)
            {
              v30 = "6GHz";
            }

            if ((v29 & 0x800) != 0)
            {
              v31 = "160MHz";
            }

            else
            {
              v31 = "40MHz";
              if ((v29 & 4) == 0)
              {
                v31 = "20MHz";
              }

              if ((v29 & 0x400) != 0)
              {
                v31 = "80MHz";
              }
            }

            CCLogStream::logAlert(v28, "[dk] %s@%d: Setting channel %d/%s/%s flags[0x%08x] chanspecs 0x%x \n", "setCHANNEL", 35353, v5, v30, v31, *(v2 + 12), v35);
          }
        }

        return 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v6 + 1952))(v1))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v7 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v26 = (*(v25 + 1952))(v1);
        CCLogStream::logAlert(v26, "[dk] %s@%d: Setting channel Failed to set chanspecs, channel %d is out range \n", "setCHANNEL", 35331, v5);
      }
    }

    return 22;
  }

  return v0;
}

void AppleBCMWLANCore::setHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_150(a2, *(a1 + 72));
  }
}

void non-virtual thunk toAppleBCMWLANCore::setHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_150(a2, *(a1 + 8));
  }
}

uint64_t AppleBCMWLANCore::setVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a1 + 72);
  if (*(v2 + 1024) >= 128)
  {
    return OUTLINED_FUNCTION_140(a2, v2);
  }

  else
  {
    return 45;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::setVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v2 = *(a1 + 8);
  if (*(v2 + 1024) >= 128)
  {
    return OUTLINED_FUNCTION_140(a2, v2);
  }

  else
  {
    return 45;
  }
}

uint64_t AppleBCMWLANCore::setCOUNTRY_CODE(AppleBCMWLANCore *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v5 = *(*(a1 + 9) + 780);
  OUTLINED_FUNCTION_5_0();
  if ((*(v6 + 1952))())
  {
    OUTLINED_FUNCTION_24_1();
    (*(v7 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v70 = (*(v69 + 1952))(a1);
      CCLogStream::logAlert(v70, "[dk] %s@%d:WiFiCC : Incoming country code : [%s]. Current host country code : [%s]. Current FW country code : [%s]. RestrictedCountryCode : [%s], DefaultCountryCode : [%s]\n", "setCOUNTRY_CODE", 35976, (a3 + 4), (*(a1 + 9) + 6736), (*(a1 + 9) + 6744), (*(a1 + 9) + 6740), (*(a1 + 9) + 6732));
    }
  }

  v8 = 0;
  v9 = (a3 + 4);
  do
  {
    v10 = v9[v8];
    if ((v10 - 97) < 0x1A)
    {
      LOBYTE(v10) = v10 - 32;
    }

    v9[v8++] = v10;
  }

  while (v8 != 3);
  isRestrictedCountry = AppleBCMWLANCore::isRestrictedCountry(a1);
  if (v5 < 0x11)
  {
    goto LABEL_68;
  }

  isAssociatedOn6G = strncmp((*(a1 + 9) + 6736), v9, 4uLL);
  if (isAssociatedOn6G)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v13 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v14 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v102 = (*(v101 + 1952))(a1);
        CCLogStream::logAlert(v102, "[dk] %s@%d:WiFiCC : Country code changed\n", "setCOUNTRY_CODE", 36000);
      }
    }
  }

  v15 = *(a1 + 9);
  if (*(v15 + 6756))
  {
    v16 = AppleBCMWLANCore::is6ESupportedInCountry(a1, (v15 + 6736));
    OUTLINED_FUNCTION_24_1();
    if ((*(v17 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v18 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v20 = (*(v19 + 1952))(a1);
        CCLogStream::logAlert(v20, "[dk] %s@%d:WiFiCC : currentCountrySupports6E [%hhu] fHostCountryEnabled : [%hhu]. fCurrentHostCountryCode : [%s]\n", "setCOUNTRY_CODE", 36010, v16, *(*(a1 + 9) + 6756), (*(a1 + 9) + 6736));
      }
    }
  }

  else
  {
    if (!strncmp((v15 + 6736), (v15 + 6732), 4uLL) || !strncmp((v15 + 6736), (v15 + 6740), 4uLL))
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v21 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v22 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v170 = (*(v169 + 1952))(a1);
          CCLogStream::logAlert(v170, "[dk] %s@%d:WiFiCC : Country code currently unavaiialble at host. CurrentHostCountryCode : [%s]. RestricedCountryCode : [%s]. DefaultCountryCode : [%s]\n", "setCOUNTRY_CODE", 36006, (*(a1 + 9) + 6736), (*(a1 + 9) + 6740), (*(a1 + 9) + 6732));
        }
      }
    }

    v16 = 0;
  }

  v23 = 0;
  v24 = *v9;
  if (*v9 && v24 != 88 && v24 != 120)
  {
    v23 = AppleBCMWLANCore::is6ESupportedInCountry(a1, v9);
  }

  OUTLINED_FUNCTION_24_1();
  if (!(*(v25 + 1952))(a1) || (OUTLINED_FUNCTION_24_1(), (*(v26 + 1952))(a1), !CCLogStream::shouldLog()))
  {
    if (isAssociatedOn6G)
    {
      goto LABEL_31;
    }

LABEL_68:
    isAssociatedOn6G = 1;
    v68 = 1;
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_24_1();
  v72 = (*(v71 + 1952))(a1);
  CCLogStream::logAlert(v72, "[dk] %s@%d:WiFiCC : newCountrySupports6E [%hhu], incomingCountryCode : [%s] \n", "setCOUNTRY_CODE", 36018, v23, v9);
  if (!isAssociatedOn6G)
  {
    goto LABEL_68;
  }

LABEL_31:
  if (!(v16 | v23 ^ 1))
  {
    v33 = OUTLINED_FUNCTION_117();
    if ((IO80211BssManager::isAssociatedOn2G(v33) & 1) != 0 || (v34 = OUTLINED_FUNCTION_117(), IO80211BssManager::isAssociatedOn5G(v34)))
    {
      OUTLINED_FUNCTION_24_1();
      if (!(*(v35 + 1952))(a1))
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_24_1();
      v37 = (*(v36 + 1952))(a1);
      if (OUTLINED_FUNCTION_222(v37))
      {
        OUTLINED_FUNCTION_24_1();
        v39 = (*(v38 + 1952))(a1);
        isAssociatedOn6G = 1;
        CCLogStream::logAlert(v39, "[dk] %s@%d:WiFiCC : Currently associated on legacy. disconnected Needed : [%hhu] enable6ENeeded : [%hhu]\n", "setCOUNTRY_CODE", 36025, 0, 1);
      }

      goto LABEL_64;
    }

    v51 = OUTLINED_FUNCTION_117();
    isAssociatedOn6G = IO80211BssManager::isAssociatedOn6G(v51);
    OUTLINED_FUNCTION_24_1();
    v53 = (*(v52 + 1952))(a1);
    if (isAssociatedOn6G)
    {
      if (!v53)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_24_1();
      v55 = (*(v54 + 1952))(a1);
      if (OUTLINED_FUNCTION_222(v55))
      {
        OUTLINED_FUNCTION_24_1();
        v57 = (*(v56 + 1952))(a1);
        CCLogStream::logAlert(v57, "[dk] %s@%d:WiFiCC : Currently associated on 6GHz but current country is not supposed to support 6E!\n");
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (!v53)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_24_1();
    v63 = (*(v62 + 1952))(a1);
    if (!OUTLINED_FUNCTION_222(v63))
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_24_1();
    v65 = (*(v64 + 1952))(a1);
    isAssociatedOn6G = 1;
    v179 = 0;
    v181 = 1;
    goto LABEL_134;
  }

  if (v23 | v16 ^ 1)
  {
    isAssociatedOn6G = !v16 || !v23;
    OUTLINED_FUNCTION_24_1();
    v28 = (*(v27 + 1952))(a1);
    if (isAssociatedOn6G)
    {
      if (!v28)
      {
LABEL_65:
        v68 = 0;
        isAssociatedOn6G = 1;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_24_1();
      v30 = (*(v29 + 1952))(a1);
      if (OUTLINED_FUNCTION_222(v30))
      {
        OUTLINED_FUNCTION_24_1();
        v32 = (*(v31 + 1952))(a1);
        v179 = v16;
        v181 = v23;
        CCLogStream::logAlert(v32, "[dk] %s@%d:WiFiCC : No action needed. currentCountrySupports6E : [%hhu] and newCountrySupports6E : [%hhu] \n");
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (!v28)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_24_1();
    v48 = (*(v47 + 1952))(a1);
    if (!OUTLINED_FUNCTION_222(v48))
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_24_1();
    v50 = (*(v49 + 1952))(a1);
    isAssociatedOn6G = 1;
    v179 = 1;
    v181 = 1;
    CCLogStream::logAlert(v50, "[dk] %s@%d:WiFiCC : Country code change will be attempted. currentCountrySupports6E : [%hhu] and newCountrySupports6E : [%hhu] \n");
LABEL_135:
    v68 = 0;
    goto LABEL_69;
  }

  v40 = OUTLINED_FUNCTION_117();
  if ((IO80211BssManager::isAssociatedOn2G(v40) & 1) != 0 || (v41 = OUTLINED_FUNCTION_117(), IO80211BssManager::isAssociatedOn5G(v41)))
  {
    OUTLINED_FUNCTION_24_1();
    if (!(*(v42 + 1952))(a1))
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_24_1();
    v44 = (*(v43 + 1952))(a1);
    if (!OUTLINED_FUNCTION_222(v44))
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_24_1();
    v46 = (*(v45 + 1952))(a1);
    isAssociatedOn6G = 1;
    v179 = 0;
    v181 = 1;
    CCLogStream::logAlert(v46, "[dk] %s@%d:WiFiCC : Currently associated on legacy. disconnected Needed : [%hhu] disable6ENeeded : [%hhu]\n");
    goto LABEL_135;
  }

  v58 = OUTLINED_FUNCTION_117();
  isAssociatedOn6G = IO80211BssManager::isAssociatedOn6G(v58);
  OUTLINED_FUNCTION_24_1();
  v60 = (*(v59 + 1952))(a1);
  if (isAssociatedOn6G)
  {
    if (v60)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v61 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v174 = (*(v173 + 1952))(a1);
        CCLogStream::logAlert(v174, "[dk] %s@%d:WiFiCC : Currently associated on 6GHz. disconnected Needed : [%hhu] disable6ENeeded : [%hhu]\n", "setCOUNTRY_CODE", 36043, 1, 1);
      }
    }

    isAssociatedOn6G = 0;
    goto LABEL_64;
  }

  if (!v60)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_24_1();
  v67 = (*(v66 + 1952))(a1);
  if (OUTLINED_FUNCTION_222(v67))
  {
    OUTLINED_FUNCTION_24_1();
    v65 = (*(v175 + 1952))(a1);
    isAssociatedOn6G = 1;
    v179 = 1;
    v181 = 0;
LABEL_134:
    CCLogStream::logAlert(v65, "[dk] %s@%d:WiFiCC : Not associated. No action needed. currentCountrySupports6E : [%hhu] and newCountrySupports6E : [%hhu] \n");
    goto LABEL_135;
  }

LABEL_64:
  v68 = 0;
LABEL_69:
  v73 = *v9;
  if (*v9 && v73 != 120 && v73 != 88)
  {
    OUTLINED_FUNCTION_24_1();
    (*(v82 + 88))(a1);
    OUTLINED_FUNCTION_5_0();
    if ((*(v83 + 136))())
    {
      isRestrictedCountry = 3766626305;
      OUTLINED_FUNCTION_24_1();
      if ((*(v84 + 1952))(a1))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v85 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_24_1();
          v87 = (*(v86 + 1952))(a1);
          CCLogStream::logAlert(v87, "[dk] %s@%d: Setting country code from workQueue thread is not supported. Rejecting.\n");
        }
      }

      return isRestrictedCountry;
    }

    v89 = (*(a1 + 9) + 6736);
    v90 = v9[2];
    *v89 = *v9;
    v89[1] = v90;
    v88 = 1;
LABEL_90:
    *(*(a1 + 9) + 6756) = v88;
    AppleBCMWLANCore::isRestrictedCountry(a1);
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_5_0();
    (*(v91 + 72))();
    if (isRestrictedCountry != v9)
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v92 + 1952))(a1) && (OUTLINED_FUNCTION_24_1(), (*(v93 + 1952))(a1), CCLogStream::shouldLog()))
      {
        OUTLINED_FUNCTION_24_1();
        v104 = (*(v103 + 1952))(a1);
        v105 = "Leaving";
        if (v9)
        {
          v105 = "Entering";
        }

        v106 = "Enabling";
        if (v9)
        {
          v106 = "Disabling";
        }

        CCLogStream::logAlert(v104, "[dk] %s@%d: %s restricted regulatory domain. %s autocountry settings\n", "setCOUNTRY_CODE", 36097, v105, v106);
        if (v9)
        {
          goto LABEL_94;
        }
      }

      else if (v9)
      {
LABEL_94:
        v94 = OUTLINED_FUNCTION_117();
        if (IO80211BssManager::isAssociated(v94))
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v95 + 1952))(a1))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v96 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v98 = (*(v97 + 1952))(a1);
              CCLogStream::logAlert(v98, "[dk] %s@%d: Disassociating before performing country settings\n", "setCOUNTRY_CODE", 36143);
            }
          }
        }

        goto LABEL_120;
      }

      v190 = 0xAAAAAAAAAAAAAAAALL;
      v191 = 0xAAAAAAAAAAAAAAAALL;
      v107 = OUTLINED_FUNCTION_117();
      isAssociated = IO80211BssManager::isAssociated(v107);
      if ((isAssociated & 1) == 0)
      {
        v116 = OUTLINED_FUNCTION_189();
        isEnhancedLocaleEnabled = AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(v116);
        if (isEnhancedLocaleEnabled)
        {
          OUTLINED_FUNCTION_124(isEnhancedLocaleEnabled, v118, v119, v120, v121, v122, v123, v124, v176, v177, v179, v181, v183, v184, v185, v186, v187, 1, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);
          OUTLINED_FUNCTION_154();
          if (AppleBCMWLANCommander::runIOVarSet(v125, v126, v127, v128, v129))
          {
            OUTLINED_FUNCTION_66_0();
            if (!(*(v130 + 1952))(a1))
            {
              return isRestrictedCountry;
            }

            OUTLINED_FUNCTION_24_1();
            (*(v131 + 1952))(a1);
            if (!CCLogStream::shouldLog())
            {
              return isRestrictedCountry;
            }

            OUTLINED_FUNCTION_24_1();
            (*(v132 + 1952))(a1);
            OUTLINED_FUNCTION_63_0();
            v133 = OUTLINED_FUNCTION_106();
            v180 = v188;
            v182 = v134(v133);
            v178 = 36114;
            v135 = "[dk] %s@%d: Error: Unable to enable ccode_pr_2g %d : %s\n";
            goto LABEL_119;
          }
        }

        v136 = OUTLINED_FUNCTION_189();
        isAssociated = AppleBCMWLANConfigManager::isAutoCountryEnabled(v136);
        if (isAssociated)
        {
          OUTLINED_FUNCTION_124(isAssociated, v109, v110, v111, v112, v113, v114, v115, v176, v177, v179, v181, v183, v184, v185, v186, v187, 1, v190, v191);
          OUTLINED_FUNCTION_154();
          isAssociated = AppleBCMWLANCommander::runIOVarSet(v137, v138, v139, v140, v141);
          if (isAssociated)
          {
            OUTLINED_FUNCTION_137();
            OUTLINED_FUNCTION_154();
            isAssociated = AppleBCMWLANCommander::runIOCtlSet(v142, v143, v144, v145, v146);
            if (isAssociated)
            {
              OUTLINED_FUNCTION_66_0();
              if (!(*(v147 + 1952))(a1))
              {
                return isRestrictedCountry;
              }

              OUTLINED_FUNCTION_24_1();
              (*(v148 + 1952))(a1);
              if (!CCLogStream::shouldLog())
              {
                return isRestrictedCountry;
              }

              OUTLINED_FUNCTION_24_1();
              (*(v149 + 1952))(a1);
              OUTLINED_FUNCTION_63_0();
              v150 = OUTLINED_FUNCTION_106();
              v180 = v189;
              v182 = v151(v150);
              v178 = 36126;
              v135 = "[dk] %s@%d: Error: Unable to enable autocountry %d : %s\n";
              goto LABEL_119;
            }
          }
        }
      }

      OUTLINED_FUNCTION_124(isAssociated, v109, v110, v111, v112, v113, v114, v115, v176, v177, v179, v181, v183, v184, v185, v186, v187, 0, v190, v191);
      OUTLINED_FUNCTION_154();
      if (AppleBCMWLANCommander::runIOVarSet(v152, v153, v154, v155, v156))
      {
        OUTLINED_FUNCTION_66_0();
        if (!(*(v157 + 1952))(a1))
        {
          return isRestrictedCountry;
        }

        OUTLINED_FUNCTION_24_1();
        (*(v158 + 1952))(a1);
        if (!CCLogStream::shouldLog())
        {
          return isRestrictedCountry;
        }

        OUTLINED_FUNCTION_24_1();
        (*(v159 + 1952))(a1);
        OUTLINED_FUNCTION_63_0();
        v160 = OUTLINED_FUNCTION_106();
        v178 = 36137;
        v180 = v161(v160);
        v135 = "[dk] %s@%d: iovar set passive_on_restricted command failed: %s\n";
LABEL_119:
        CCLogStream::logAlert(v9, v135, "setCOUNTRY_CODE", v178, v180, v182);
        return isRestrictedCountry;
      }
    }

LABEL_120:
    if (AppleBCMWLANCore::isRestrictedCountry(a1))
    {
      OUTLINED_FUNCTION_24_1();
      return (*(v162 + 544))(a1);
    }

    else
    {
      if (v5 < 0x11)
      {
        v164 = 1;
      }

      else
      {
        v164 = v68;
      }

      if (((isAssociatedOn6G | v164) & 1) == 0)
      {
        v165 = OUTLINED_FUNCTION_117();
        if (IO80211BssManager::isAssociated(v165))
        {
          OUTLINED_FUNCTION_24_1();
          if ((*(v166 + 1952))(a1))
          {
            OUTLINED_FUNCTION_24_1();
            (*(v167 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_24_1();
              v172 = (*(v171 + 1952))(a1);
              CCLogStream::logAlert(v172, "[dk] %s@%d:WiFiCC : Country code changed. For 4388, Disassociating before performing country settings\n", "setCOUNTRY_CODE", 36163);
            }
          }
        }
      }

      OUTLINED_FUNCTION_24_1();
      return (*(v168 + 552))(a1);
    }
  }

  OUTLINED_FUNCTION_24_1();
  (*(v74 + 88))(a1);
  OUTLINED_FUNCTION_5_0();
  if (!(*(v75 + 136))())
  {
    v80 = *(a1 + 9);
    if (*v9)
    {
      v81 = v80 + 1683;
    }

    else if (*(v80 + 6740))
    {
      v81 = v80 + 1685;
    }

    else
    {
      v81 = v80 + 1683;
    }

    v88 = 0;
    v80[1684] = *v81;
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v76 + 1952))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v77 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v100 = (*(v99 + 1952))(a1);
      CCLogStream::logAlert(v100, "[dk] %s@%d: Disabling host country code from workQueue thread. Deferring to timer context.\n", "setCOUNTRY_CODE", 36064);
    }
  }

  v78 = *(**(*(a1 + 9) + 6280) + 56);

  return v78();
}

uint64_t AppleBCMWLANCore::setBTCOEX_PROFILE_ACTIVE(AppleBCMWLANCore *a1, uint64_t a2)
{
  if (a2)
  {
    AppleBCMWLANCore::getCommander(a1);
    OUTLINED_FUNCTION_154();
    v2 = AppleBCMWLANCommander::runIOVarSet(v5, v6, v7, v8, v9);
    if (v2)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v10 + 1952))(a1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v11 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v13 + 1952))(a1);
          OUTLINED_FUNCTION_52_0();
          v14 = OUTLINED_FUNCTION_130();
          v15(v14);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v3, "[dk] %s@%d:BTC_PROFILE_ACTIVE failed, error %s\n", v16, v17, v18);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setBTCOEX_2G_CHAIN_DISABLE(uint64_t a1, uint64_t a2)
{
  v2 = 3758097085;
  if (!a2)
  {
    return 3758097090;
  }

  v4 = *(a2 + 4);
  v5 = IOMallocZeroData();
  *v5 = 393217;
  *(v5 + 2) = v4;
  v25[0] = v5;
  v25[1] = 6;
  v6 = OUTLINED_FUNCTION_153();
  AppleBCMWLANCommander::getMaxCmdRxPayload(v6);
  v7 = IOMallocZeroData();
  if (v7)
  {
    v8 = v7;
    v9 = OUTLINED_FUNCTION_153();
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v9);
    v11 = OUTLINED_FUNCTION_153();
    v12 = (AppleBCMWLANCommander::getMaxCmdRxPayload(v11) << 32) | MaxCmdRxPayload;
    if (MaxCmdRxPayload)
    {
      v13 = v8;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v24[0] = v13;
    v24[1] = v12;
    v14 = OUTLINED_FUNCTION_153();
    v2 = AppleBCMWLANCommander::runIOVarSet(v14, "btc_2g_shchain_disable", v25, v24, 0);
    IOFreeData();
    IOFreeData();
    if (v2)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v15 + 1952))(a1))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v16 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v17 + 1952))(a1);
          OUTLINED_FUNCTION_52_0();
          v18 = OUTLINED_FUNCTION_130();
          v19(v18);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v5, "[dk] %s@%d:btc_2g_schain_disable failed, error %s\n", v21, v22, v23);
        }
      }
    }
  }

  else
  {
    IOFreeData();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::unconfigureEventBitMaskForUnAssociatedSleep(AppleBCMWLANCore *this)
{
  OUTLINED_FUNCTION_35_1();
  if ((*(v4 + 1952))())
  {
    OUTLINED_FUNCTION_24_1();
    v6 = (*(v5 + 1952))(v1);
    if (OUTLINED_FUNCTION_227(v6))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v31 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v32, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v35, v36, v37);
    }
  }

  if (OUTLINED_FUNCTION_197())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 33))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197() && OUTLINED_FUNCTION_230())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 71))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 79))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 92))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 97))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 97))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_278())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v7 = OUTLINED_FUNCTION_264();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_264();
    AppleBCMWLANCore::addEventBit(v9);
  }

  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_177();
  v10 = OUTLINED_FUNCTION_263();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_263();
    AppleBCMWLANCore::addEventBit(v12);
  }

  v13 = OUTLINED_FUNCTION_262();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_262();
    AppleBCMWLANCore::addEventBit(v15);
  }

  v16 = OUTLINED_FUNCTION_260();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_260();
    AppleBCMWLANCore::addEventBit(v18);
  }

  v19 = OUTLINED_FUNCTION_259();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_259();
    AppleBCMWLANCore::addEventBit(v21);
  }

  AppleBCMWLANCore::addEventBit(v1);
  if (OUTLINED_FUNCTION_277())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 93))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 101))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::writeEventBitField(v1);
  OUTLINED_FUNCTION_66_0();
  v23 = (*(v22 + 1952))(v1);
  if (v2)
  {
    if (v23)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v24 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v25 + 1952))(v1);
        OUTLINED_FUNCTION_63_0();
        v26 = OUTLINED_FUNCTION_106();
        v27(v26);
        OUTLINED_FUNCTION_250();
        CCLogStream::logAlert(v3, "[dk] %s@%d:Failure to Add WLC_E_CCA_CHAN_QUAL/WLC_E_SCAN_COMPLETE  events from the event mask, %s\n", v35, v36, v37);
      }
    }
  }

  else if (v23)
  {
    OUTLINED_FUNCTION_24_1();
    v29 = (*(v28 + 1952))(v1);
    if (OUTLINED_FUNCTION_227(v29))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v33 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v34, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v35, v36, v37);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::configureEventBitMaskForAssociatedSleep(AppleBCMWLANCore *this)
{
  OUTLINED_FUNCTION_35_1();
  if ((*(v4 + 1952))())
  {
    OUTLINED_FUNCTION_24_1();
    v6 = (*(v5 + 1952))(v1);
    if (OUTLINED_FUNCTION_227(v6))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v24 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v25, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v28, v29, v30);
    }
  }

  if (OUTLINED_FUNCTION_197())
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1118) &= ~0x10u;
    IOLockUnlock(v2);
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1117) &= ~0x10u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1102) &= ~0x10u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1117) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1096) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1103) &= ~1u;
  IOLockUnlock(v2);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 71))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xFE);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 79))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xBF);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 92))
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1120) &= ~0x80u;
    IOLockUnlock(v2);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 33))
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1111) &= ~0x10u;
    IOLockUnlock(v2);
  }

  if (OUTLINED_FUNCTION_197() && OUTLINED_FUNCTION_230())
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xDF);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1102) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1122) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1122) &= ~0x10u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_272();
  if (OUTLINED_FUNCTION_278())
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1121) &= ~8u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1100) &= ~0x20u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_15_5();
  v8 = (*(v7 + 368))() - 4377;
  if (v8 <= 0x16 && ((1 << v8) & 0x400C03) != 0)
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1120) &= ~0x20u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1100) &= ~1u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1098) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1097) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1098) &= ~0x80u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1114) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1109) &= ~0x20u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1097) &= ~0x20u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1097) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1106) &= ~1u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1115) &= ~1u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1105) &= ~8u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1103) &= ~0x10u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1104) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1102) &= ~0x40u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1111) &= ~0x40u;
  IOLockUnlock(v2);
  if (OUTLINED_FUNCTION_197())
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0x7F);
  }

  AppleBCMWLANCore::addEventBit(v1);
  if (OUTLINED_FUNCTION_197() && AppleBCMWLANCore::featureFlagIsBitSet(v1, 82))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xEF);
  }

  v9 = OUTLINED_FUNCTION_255();
  if (AppleBCMWLANBGScanAdapter::isBGScanCacheRollOverEnabled(v9))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_177();
  }

  else
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v10 = OUTLINED_FUNCTION_60_0();
  v12 = (*(v11 + 368))(v10) - 4357;
  if (v12 <= 0x2A && ((1 << v12) & 0x400C0300001) != 0)
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1118) &= ~0x80u;
    IOLockUnlock(v2);
  }

  OUTLINED_FUNCTION_91_0();
  *(v3 + 1104) &= ~0x20u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_271();
  if (OUTLINED_FUNCTION_277())
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1121) &= ~1u;
    IOLockUnlock(v2);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 93))
  {
    OUTLINED_FUNCTION_91_0();
    *(v3 + 1121) &= ~0x80u;
    IOLockUnlock(v2);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 101))
  {
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_226(*(v3 + 1119) & 0xF7);
  }

  IOLockLock(*(*(v1 + 9) + 1184));
  v13 = *(v1 + 9);
  v13[72] = *(v13 + 1096);
  *(v13 + 1164) = *(v13 + 1108);
  IOLockUnlock(*(*(v1 + 9) + 1184));
  v14 = AppleBCMWLANCore::writeEventBitField(v1);
  if (v14)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v15 + 1952))(v1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v16 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v17 + 1952))(v1);
        OUTLINED_FUNCTION_63_0();
        v18 = OUTLINED_FUNCTION_106();
        v19(v18);
        OUTLINED_FUNCTION_250();
        CCLogStream::logAlert(v3, "[dk] %s@%d:Failure to clear events from the event mask, %s\n", v28, v29, v30);
      }
    }
  }

  else
  {
    if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(v1))
    {
      AppleBCMWLANCore::setExtendedEventBit(v1, 0x97u);
    }

    OUTLINED_FUNCTION_24_1();
    if ((*(v20 + 1952))(v1))
    {
      OUTLINED_FUNCTION_24_1();
      v22 = (*(v21 + 1952))(v1);
      if (OUTLINED_FUNCTION_227(v22))
      {
        OUTLINED_FUNCTION_24_1();
        (*(v26 + 1952))(v1);
        OUTLINED_FUNCTION_8_3();
        CCLogStream::logNoticeIf(v27, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v28, v29, v30);
      }
    }
  }

  return v14;
}

IOLock *AppleBCMWLANCore::unconfigureEventBitMaskForAssociatedSleep(AppleBCMWLANCore *this)
{
  OUTLINED_FUNCTION_35_1();
  if ((*(v4 + 1952))())
  {
    OUTLINED_FUNCTION_24_1();
    v6 = (*(v5 + 1952))(v1);
    if (OUTLINED_FUNCTION_227(v6))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v31 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v32, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v35, v36, v37);
    }
  }

  if (AppleBCMWLANCore::checkForTCPKAOffloadSupport(v1))
  {
    AppleBCMWLANCore::resetExtendedEventBit(v1, 0x97u);
  }

  if (OUTLINED_FUNCTION_197())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 71))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 79))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 92))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 33))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197() && OUTLINED_FUNCTION_230())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  OUTLINED_FUNCTION_91_0();
  *(v3 + 1106) &= ~2u;
  IOLockUnlock(v2);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_177();
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  AppleBCMWLANCore::addEventBit(v1);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 97))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 119))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_278())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 46))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v7 = OUTLINED_FUNCTION_263();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_263();
    AppleBCMWLANCore::addEventBit(v9);
  }

  v10 = OUTLINED_FUNCTION_262();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_262();
    AppleBCMWLANCore::addEventBit(v12);
  }

  v13 = OUTLINED_FUNCTION_264();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_264();
    AppleBCMWLANCore::addEventBit(v15);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 37))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 197))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 19))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 32))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 9))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 49))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  v16 = OUTLINED_FUNCTION_260();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_260();
    AppleBCMWLANCore::addEventBit(v18);
  }

  v19 = OUTLINED_FUNCTION_259();
  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_259();
    AppleBCMWLANCore::addEventBit(v21);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 150))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 109))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::isCachedEventBitFieldSet(v1, 183))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197() && AppleBCMWLANCore::featureFlagIsBitSet(v1, 82))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (OUTLINED_FUNCTION_197())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::addEventBit(v1);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_271();
  if (OUTLINED_FUNCTION_277())
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 93))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(v1, 101))
  {
    AppleBCMWLANCore::addEventBit(v1);
  }

  AppleBCMWLANCore::writeEventBitField(v1);
  OUTLINED_FUNCTION_66_0();
  v23 = (*(v22 + 1952))(v1);
  if (v2)
  {
    if (v23)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v24 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v25 + 1952))(v1);
        OUTLINED_FUNCTION_63_0();
        v26 = OUTLINED_FUNCTION_106();
        v27(v26);
        OUTLINED_FUNCTION_250();
        CCLogStream::logAlert(v3, "[dk] %s@%d:Failure to clear events from the event mask, %s\n", v35, v36, v37);
      }
    }
  }

  else if (v23)
  {
    OUTLINED_FUNCTION_24_1();
    v29 = (*(v28 + 1952))(v1);
    if (OUTLINED_FUNCTION_227(v29))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v33 + 1952))(v1);
      OUTLINED_FUNCTION_8_3();
      CCLogStream::logNoticeIf(v34, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v35, v36, v37);
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getBTCOEX_PROFILE(AppleBCMWLANCore *a1, uint64_t a2)
{
  v2 = 3758097090;
  if (!a2)
  {
    return 3758097090;
  }

  Commander = AppleBCMWLANCore::getCommander(a1);
  AppleBCMWLANCommander::getMaxCmdRxPayload(Commander);
  v6 = IOMallocZeroData();
  v7 = OUTLINED_FUNCTION_158();
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v7);
  v9 = OUTLINED_FUNCTION_158();
  v10 = AppleBCMWLANCommander::getMaxCmdRxPayload(v9);
  if (MaxCmdRxPayload)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  if (MaxCmdRxPayload)
  {
    v12 = v6 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = (v10 << 32) | MaxCmdRxPayload;
  if (v12)
  {
    v13 = 0;
  }

  v32[0] = v11;
  v32[1] = v13;
  v31 = *(a2 + 4);
  v30[0] = &v31;
  v30[1] = 4;
  v14 = OUTLINED_FUNCTION_158();
  v15 = AppleBCMWLANCommander::runIOVarGet(v14, "btc_profile", v30, v32, 0);
  OUTLINED_FUNCTION_151();
  if (v12 || v16 == 0)
  {
    v18 = *v6;
    if (v18 == 3 || v18 == 2 || v18 == 1)
    {
      OUTLINED_FUNCTION_89_0();
      v21 = OUTLINED_FUNCTION_203();
      v22(v21);
      v2 = v15;
    }

    v15 = v2;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_89_0();
  if ((*(v19 + 1952))(a1))
  {
    OUTLINED_FUNCTION_89_0();
    (*(v20 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_89_0();
      v25 = (*(v24 + 1952))(a1);
      OUTLINED_FUNCTION_89_0();
      (*(v26 + 112))(a1, v15);
      OUTLINED_FUNCTION_6();
      CCLogStream::logCrit(v25, "[dk] %s@%d:btc_profile failed, error %s\n", v27, v28, v29);
    }
  }

  if (v6)
  {
LABEL_27:
    OUTLINED_FUNCTION_130();
    IOFreeData();
  }

  return v15;
}

uint64_t AppleBCMWLANCore::getBTCOEX_PROFILE_ACTIVE(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "btc_profile_active", &kNoTxPayload, v7, v8, v9, v10, v11, v20, v22, v24);
    OUTLINED_FUNCTION_75_0();
    v13 = v13 || v12 == 0;
    if (v13)
    {
      *(v4 + 1) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v14 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v15 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v17 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v18 = OUTLINED_FUNCTION_130();
          v19(v18);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:btc_profile_active failed, error %s\n", v21, v23, v25);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getMCS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "nrate", &kNoTxPayload, v7, v8, v9, v10, v11, v20, v22, v24);
    OUTLINED_FUNCTION_75_0();
    v13 = v13 || v12 == 0;
    if (!v13)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v14 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v15 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v16 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v17 = OUTLINED_FUNCTION_130();
          v18(v17);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:nrate failed, error %s\n", v21, v23, v25);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getMCS_VHT(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "nrate", &kNoTxPayload, v7, v8, v9, v10, v11, v20, v22, v24);
    OUTLINED_FUNCTION_75_0();
    v13 = v13 || v12 == 0;
    if (!v13)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v14 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v15 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v16 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v17 = OUTLINED_FUNCTION_130();
          v18(v17);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:nrate failed, error %s\n", v21, v23, v25);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getNSS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "nrate", &kNoTxPayload, v7, v8, v9, v10, v11, v24, v26, v28);
    OUTLINED_FUNCTION_75_0();
    v13 = v13 || v12 == 0;
    if (v13)
    {
      *(v4 + 1) = 0;
      OUTLINED_FUNCTION_19_1();
      if ((*(v19 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v20 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v23 = (*(v22 + 1952))(v3);
          CCLogStream::logAlert(v23, "[dk] %s@%d: Zero NSS streams, rspec[0x%08x]\n", "getNSS", 47187, 0);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v14 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v15 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v16 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v17 = OUTLINED_FUNCTION_130();
          v18(v17);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:nrate failed, error %s\n", v25, v27, v29);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::getRADIO_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_191(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getRADIO_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_191(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t AppleBCMWLANCore::getMAX_NSS_FOR_AP(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v6 = OUTLINED_FUNCTION_54_0(v5);
    OUTLINED_FUNCTION_202(v6, "btc_nss", &kNoTxPayload, v7, v8, v9, v10, v11, v20, v22, v24);
    OUTLINED_FUNCTION_75_0();
    v13 = v13 || v12 == 0;
    if (v13)
    {
      *(v4 + 1) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v14 + 1952))(v3))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v15 + 1952))(v3);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          (*(v17 + 1952))(v3);
          OUTLINED_FUNCTION_52_0();
          v18 = OUTLINED_FUNCTION_130();
          v19(v18);
          OUTLINED_FUNCTION_6();
          CCLogStream::logCrit(v4, "[dk] %s@%d:btc_nss failed, error %s\n", v21, v23, v25);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_171();
  }

  return v2;
}

void AppleBCMWLANCore::getPowerStatsPerSliceIndex()
{
  OUTLINED_FUNCTION_279();
  v194 = v0;
  v195 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (AppleBCMWLANCore::featureFlagIsBitSet(v6, 46))
  {
    v8 = "wlc:pwrstats";
  }

  else
  {
    v8 = "pwrstats";
  }

  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(v7, 76);
  if (v3 == 2)
  {
    if (IsBitSet)
    {
      OUTLINED_FUNCTION_205();
      if (!v10)
      {
        v8 = "sc:pwrstats";
      }
    }
  }

  if (v5)
  {
    if ((AppleBCMWLANCore::featureFlagIsBitSet(v7, 24) & 1) == 0)
    {
      HIDWORD(v188) = 0;
      v189 = v3;
      v11 = OUTLINED_FUNCTION_158();
      AppleBCMWLANCommander::getMaxCmdRxPayload(v11);
      v12 = IOMallocZeroData();
      if (v12)
      {
        v13 = v12;
        v14 = AppleBCMWLANCore::featureFlagIsBitSet(v7, 76);
        if (v3 == 2)
        {
          if (v14)
          {
            OUTLINED_FUNCTION_205();
            if ((v15 & 1) == 0)
            {
              LODWORD(v189) = 0;
            }
          }
        }

        v16 = AppleBCMWLANCore::featureFlagIsBitSet(v7, 46);
        v17 = 4;
        if (v16)
        {
          v17 = 8;
        }

        v18 = (&v188 + 4);
        if (v16)
        {
          v18 = &v189;
        }

        v186 = v18;
        v187 = v17;
        v19 = OUTLINED_FUNCTION_158();
        MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(v19);
        v21 = MaxCmdRxPayload + ~strlen(v8);
        v22 = v21 | (v21 << 32) | 0x40000;
        if (v21)
        {
          v23 = v13;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        v184 = v23;
        v185 = v22;
        v24 = OUTLINED_FUNCTION_158();
        v25 = AppleBCMWLANCommander::runIOVarGet(v24, v8, &v186, &v184, 0);
        if (v25 == -469794537)
        {
          goto LABEL_25;
        }

        v26 = v25;
        if (v25)
        {
          OUTLINED_FUNCTION_89_0();
          if ((*(v27 + 1952))(v7))
          {
            OUTLINED_FUNCTION_89_0();
            (*(v28 + 1952))(v7);
            if (CCLogStream::shouldLog())
            {
              OUTLINED_FUNCTION_89_0();
              (*(v118 + 1952))(v7);
              OUTLINED_FUNCTION_59_0();
              v120 = (*(v119 + 112))(v7, v26);
              CCLogStream::logInfo(v3, "[dk] %s@%d:pwrstats failed, error %s\n", "getPowerStatsPerSliceIndex", 47656, v120);
            }
          }

          goto LABEL_30;
        }

        if (*v13 <= 1u)
        {
LABEL_25:
          AppleBCMWLANCore::featureFlagSetBit(v7, 24);
LABEL_30:
          OUTLINED_FUNCTION_130();
          IOFreeData();
          goto LABEL_31;
        }

        v29 = v13[1];
        if (v21 < v29)
        {
          v29 = v21;
        }

        v179 = v29;
        if (v29 < 9)
        {
LABEL_111:
          OUTLINED_FUNCTION_130();
          IOFreeData();
          goto LABEL_31;
        }

        v171 = v193;
        v175 = v5 + 308;
        v159 = v5 + 384;
        v163 = v5 + 388;
        v151 = v5 + 400;
        v155 = v5 + 396;
        v30 = 4;
        v31 = 4;
        while (1)
        {
          v32 = (v13 + v31);
          v33 = *(v13 + v31 + 2);
          if (!*(v13 + v31 + 2))
          {
            goto LABEL_111;
          }

          v34 = *v32;
          switch(*v32)
          {
            case 0:
              OUTLINED_FUNCTION_240();
              if (!v47)
              {
                v110 = v33;
              }

              OUTLINED_FUNCTION_115(v110, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              v111 = __dst[2];
              *(v5 + 48) += __dst[1];
              *(v5 + 56) += v111;
              if (AppleBCMWLANCore::is4387C2Up(v7))
              {
                AppleBCMWLANLQM::updateInfraMuticastBroadcastDuration(*(*(v7 + 9) + 5608), v5);
              }

              goto LABEL_103;
            case 1:
              memset(&__dst[4], 0, 84);
              if (v33 >= 0x60)
              {
                v35 = 96;
              }

              else
              {
                v35 = v33;
              }

              *__dst = 0uLL;
              v36 = memcpy(__dst, v13 + v31, (v35 + 4));
              *&v44 = OUTLINED_FUNCTION_243(*(v5 + 76), v36, v37, v38, v39, v40, v41, v42, v43, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v5 + 76) = v44;
              *(v5 + 92) = vaddq_s32(*&__dst[5], *(v5 + 92));
              OUTLINED_FUNCTION_242(*&__dst[9], *&__dst[23]);
              goto LABEL_103;
            case 3:
              bzero(__dst, 0x1A5uLL);
              if (v33 >= 0x1A1)
              {
                v48 = 417;
              }

              else
              {
                v48 = v33;
              }

              OUTLINED_FUNCTION_115(v48, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              v49.i64[0] = __PAIR64__(__dst[4], __dst[1]);
              v49.i64[1] = *&__dst[5];
              *v5 = vaddq_s32(v49, *v5);
              *(v5 + 16) = vrev64_s32(vadd_s32(*&__dst[8], *(v5 + 20)));
              *(v5 + 28) = vadd_s32(*v171, *(v5 + 28));
              *(v5 + 36) += v171[1].i32[0];
              goto LABEL_103;
            case 4:
              OUTLINED_FUNCTION_240();
              if (!v47)
              {
                v51 = v33;
              }

              OUTLINED_FUNCTION_115(v51, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              *(v5 + 40) = vadd_s32(*&__dst[1], *(v5 + 40));
              goto LABEL_103;
            case 5:
              memset(__dst, 0, 20);
              if (v33 >= 0x10)
              {
                v52 = 16;
              }

              else
              {
                v52 = v33;
              }

              v53 = OUTLINED_FUNCTION_115(v52, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              *&v61 = OUTLINED_FUNCTION_243(*(v5 + 224), v53, v54, v55, v56, v57, v58, v59, v60, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v176, v180, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v5 + 224) = v61;
              goto LABEL_103;
            case 6:
              bzero(__dst, 0x84uLL);
              if (v33 >= 0x80)
              {
                v78 = 128;
              }

              else
              {
                v78 = v33;
              }

              OUTLINED_FUNCTION_115(v78, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              v79 = *(*(v7 + 9) + 5504);
              if (v79)
              {
                AppleBCMWLANIOReportingCore::report(v79, __dst);
              }

              v80 = *&__dst[5];
              *(v5 + 240) = *&__dst[1];
              *(v5 + 256) = v80;
              v81 = *&__dst[13];
              *(v5 + 272) = *&__dst[9];
              *(v5 + 288) = v81;
              *(v5 + 304) = __dst[17];
              *v175 = *&__dst[27];
              *(v175 + 16) = v191;
              goto LABEL_103;
            case 7:
              memset(__dst, 0, 64);
              if (v33 >= 0x3C)
              {
                v67 = 60;
              }

              else
              {
                v67 = v33;
              }

              OUTLINED_FUNCTION_115(v67, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, &__dst[12], v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              v68.i64[0] = __PAIR64__(__dst[4], __dst[1]);
              v69.i64[0] = *&__dst[7];
              v68.i64[1] = *&__dst[5];
              v69.i32[2] = __dst[9];
              v69.i32[3] = *v167;
              v70 = vaddq_s32(v69, *(v5 + 16));
              *v5 = vaddq_s32(v68, *v5);
              *(v5 + 16) = v70;
              *(v5 + 32) = vadd_s32(*&__dst[14], *(v5 + 32));
              v71 = AppleBCMWLANCore::featureFlagIsBitSet(v7, 76);
              if (v3 == 2)
              {
                if (v71)
                {
                  OUTLINED_FUNCTION_205();
                  if ((v72 & 1) == 0)
                  {
                    *(v5 + 472) = *&__dst[4];
                  }
                }
              }

              goto LABEL_103;
            case 9:
              memset(__dst, 0, 48);
              if (v33 >= 0x2C)
              {
                v82 = 44;
              }

              else
              {
                v82 = v33;
              }

              v83 = OUTLINED_FUNCTION_115(v82, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              *&v91 = OUTLINED_FUNCTION_243(*(v177 + 24), v83, v84, v85, v86, v87, v88, v89, v90, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169, v173, v177, v181, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v92 + 24) = v91;
              *(v92 + 40) = vadd_s32(*&__dst[5], *(v92 + 40));
              *(v5 + 356) += __dst[7];
              if (AppleBCMWLANCore::isOCLEnabled(v7))
              {
                *(v5 + 360) = vadd_s32(*&__dst[8], *(v5 + 360));
              }

              if (!AppleBCMWLANCore::checkForOppPowerSaveSupport(v7))
              {
                goto LABEL_101;
              }

              v93 = *(v7 + 9);
              v94 = *(v93 + 56);
              if (v94 == 2)
              {
                *(v5 + 388) = *(v93 + 80);
                *(v5 + 384) = *(*(v7 + 9) + 76);
                *(v5 + 392) = *(*(v7 + 9) + 140);
                v95 = (*(v7 + 9) + 144);
                v97 = v151;
                v96 = v155;
                v98 = 148;
              }

              else
              {
                if (v94 != 1)
                {
                  goto LABEL_101;
                }

                v95 = (v93 + 80);
                v97 = v159;
                v96 = v163;
                v98 = 76;
              }

              *v96 = *v95;
              *v97 = *(*(v7 + 9) + v98);
LABEL_101:
              if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(v7))
              {
                *(v5 + 368) = *(*(v7 + 9) + 168);
                *(v5 + 376) = *(*(v7 + 9) + 172);
                *(v5 + 372) = *(*(v7 + 9) + 176);
                *(v5 + 380) = *(*(v7 + 9) + 192);
              }

LABEL_103:
              v183 = 0;
              if (AppleBCMWLANCore::safe_align_up(v7, v31 + v33, 4, &v183))
              {
                OUTLINED_FUNCTION_89_0();
                if ((*(v112 + 1952))(v7))
                {
                  OUTLINED_FUNCTION_89_0();
                  (*(v113 + 1952))(v7);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_89_0();
                    v115 = (*(v114 + 1952))(v7);
                    CCLogStream::logAlert(v115, "[dk] %s@%d:safe_align_up failed\n");
                  }
                }

                goto LABEL_118;
              }

              v31 = v183;
              if (v183 >= 0xFFFF)
              {
                OUTLINED_FUNCTION_89_0();
                if ((*(v116 + 1952))(v7))
                {
                  OUTLINED_FUNCTION_89_0();
                  (*(v117 + 1952))(v7);
                  if (CCLogStream::shouldLog())
                  {
                    OUTLINED_FUNCTION_89_0();
                    v122 = (*(v121 + 1952))(v7);
                    CCLogStream::logAlert(v122, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n");
                  }
                }

LABEL_118:
                OUTLINED_FUNCTION_130();
                IOFreeData();
                goto LABEL_31;
              }

              v30 = v183;
              if (v183 + 4 >= v179)
              {
                goto LABEL_111;
              }

              break;
            case 0xA:
              OUTLINED_FUNCTION_200();
              if (!v47)
              {
                v46 = v33;
              }

              OUTLINED_FUNCTION_115(v46, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              goto LABEL_103;
            case 0xB:
              OUTLINED_FUNCTION_200();
              if (!v47)
              {
                v50 = v33;
              }

              OUTLINED_FUNCTION_115(v50, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              *(v5 + 416) = __dst[1];
              goto LABEL_103;
            case 0xC:
            case 0xD:
              goto LABEL_103;
            case 0xE:
              OUTLINED_FUNCTION_200();
              if (!v47)
              {
                v73 = v33;
              }

              OUTLINED_FUNCTION_115(v73, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              *(v5 + 404) = __dst[1];
              goto LABEL_103;
            case 0xF:
              *__dst = 0uLL;
              if (v33 >= 0xC)
              {
                v45 = 12;
              }

              else
              {
                v45 = v33;
              }

              OUTLINED_FUNCTION_115(v45, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              *(v5 + 408) += __dst[2];
              goto LABEL_103;
            case 0x11:
              memset(__dst, 0, 24);
              if (v33 >= 0x14)
              {
                v99 = 20;
              }

              else
              {
                v99 = v33;
              }

              v100 = OUTLINED_FUNCTION_115(v99, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              *&v108 = OUTLINED_FUNCTION_243(v178[11], v100, v101, v102, v103, v104, v105, v106, v107, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v174, v178, v182, v183, v184, v185, v186, v187, v188, v189, *__dst, *&__dst[2], __dst[4]);
              *(v109 + 176) = v108;
              *(v5 + 500) += __dst[5];
              goto LABEL_103;
            case 0x12:
              bzero(__dst, 0x94uLL);
              if (v33 >= 0x90)
              {
                v62 = 144;
              }

              else
              {
                v62 = v33;
              }

              OUTLINED_FUNCTION_115(v62, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v175, v179, v183, v184, v185, v186, v187, v188, v189);
              v63.i64[0] = *&__dst[1];
              v64.i32[0] = __dst[3];
              v63.i64[1] = *&__dst[4];
              *(v5 + 76) = vaddq_s32(v63, *(v5 + 76));
              v63.i64[0] = *&__dst[7];
              v63.i64[1] = *&__dst[10];
              *(v5 + 92) = vaddq_s32(v63, *(v5 + 92));
              v64.i32[1] = __dst[6];
              v64.i64[1] = __PAIR64__(__dst[12], __dst[9]);
              *(v175 + 244) = vaddq_s32(v64, *(v175 + 244));
              v65 = *&__dst[13];
              *(v5 + 568) += __dst[15];
              OUTLINED_FUNCTION_242(v65, v192);
              *(v5 + 572) += v66;
              *(v5 + 516) |= 4u;
              goto LABEL_103;
            default:
              OUTLINED_FUNCTION_89_0();
              if ((*(v74 + 1952))(v7))
              {
                OUTLINED_FUNCTION_89_0();
                (*(v75 + 1952))(v7);
                if (CCLogStream::shouldLog())
                {
                  OUTLINED_FUNCTION_89_0();
                  v77 = (*(v76 + 1952))(v7);
                  CCLogStream::logAlert(v77, "[dk] %s@%d:Unknown TLV with pwrstats command. i=%d total_len=%d type=%d len=%d\n", "getPowerStatsPerSliceIndex", 48071, v30, v13[1], v34, v33);
                }
              }

              goto LABEL_103;
          }
        }
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_280();
}

uint64_t AppleBCMWLANCore::getEcountersConfigSlice0Container(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (!v10 || !v9)
  {
    return v4;
  }

  if (OUTLINED_FUNCTION_270(v8))
  {
    v11 = 16;
  }

  else
  {
    v11 = 12;
  }

  if (v11 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v17 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v18 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v19 + 1952))(v5);
    v21 = 51988;
    goto LABEL_65;
  }

  *v6 = 1;
  *(v6 + 4) = 1;
  if (AppleBCMWLANCore::featureFlagIsBitSet(v5, 120))
  {
    *(v6 + 8) = 0x30600000304;
    v12 = 16;
  }

  else
  {
    *(v6 + 8) = 774;
    v12 = 12;
  }

  v13 = (v6 + v12);
  if (AppleBCMWLANCore::featureFlagIsBitSet(v5, 59))
  {
    OUTLINED_FUNCTION_129();
    if (!(!v15 & v14))
    {
      *v13++ = 779;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_19_1();
    if (!(*(v22 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v23 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v24 + 1952))(v5);
    v21 = 52006;
LABEL_65:
    CCLogStream::logAlert(v20, "[dk] %s@%d:Error cannot create EcountersConfigSlice0Container buffer too short\n", "getEcountersConfigSlice0Container", v21);
    return v4;
  }

LABEL_13:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 4))
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v25 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v26 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v27 + 1952))(v5);
    v21 = 52014;
    goto LABEL_65;
  }

  *v13++ = 780;
LABEL_16:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 69))
  {
    goto LABEL_19;
  }

  v11 += 8;
  if (v11 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v28 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v29 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v30 + 1952))(v5);
    v21 = 52022;
    goto LABEL_65;
  }

  *v13 = 0x31100000310;
  v13 += 2;
LABEL_19:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 74))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v31 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v32 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v33 + 1952))(v5);
    v21 = 52030;
    goto LABEL_65;
  }

  *v13++ = 776;
LABEL_22:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 93))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v34 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v35 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v36 + 1952))(v5);
    v21 = 52038;
    goto LABEL_65;
  }

  *v13++ = 798;
LABEL_25:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 85))
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_129();
  if (!v15 & v14)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v37 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v38 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v39 + 1952))(v5);
    v21 = 52045;
    goto LABEL_65;
  }

  *v13++ = 789;
LABEL_28:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 89))
  {
LABEL_33:
    OUTLINED_FUNCTION_246();
    return v4;
  }

  if (v11 + 4 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v40 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v41 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v42 + 1952))(v5);
    v21 = 52053;
    goto LABEL_65;
  }

  *v13 = 794;
  if (v11 + 8 > v7)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v43 + 1952))(v5))
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v44 + 1952))(v5);
    if (!CCLogStream::shouldLog())
    {
      return v4;
    }

    OUTLINED_FUNCTION_19_1();
    v20 = (*(v45 + 1952))(v5);
    v21 = 52058;
    goto LABEL_65;
  }

  v13[1] = 795;
  if (v11 + 12 <= v7)
  {
    v13[2] = 796;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_19_1();
  if ((*(v46 + 1952))(v5))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v47 + 1952))(v5);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v20 = (*(v48 + 1952))(v5);
      v21 = 52063;
      goto LABEL_65;
    }
  }

  return v4;
}

void AppleBCMWLANCore::getEcountersConfigSlice1Container(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_142();
  if (!v5 || !v7)
  {
    goto LABEL_35;
  }

  v8 = v6;
  v9 = v4;
  if (v6 <= 0xF)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v15 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v16 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  v10 = v5;
  *v5 = 1;
  *(v5 + 4) = 2;
  *(v5 + 8) = 0x30600000304;
  if (AppleBCMWLANCore::featureFlagIsBitSet(v4, 73))
  {
    if (v8 > 0x13)
    {
      *(v10 + 16) = 778;
      v11 = (v10 + 20);
      v12 = 20;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_19_1();
    if (!(*(v17 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v18 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

LABEL_62:
    OUTLINED_FUNCTION_19_1();
    v34 = (*(v33 + 1952))(v9);
    CCLogStream::logAlert(v34, "[dk] %s@%d:Error cannot create EcountersConfigSlice1Container buffer too short\n");
    goto LABEL_35;
  }

  v11 = (v10 + 16);
  v12 = 16;
LABEL_8:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 59))
  {
    goto LABEL_11;
  }

  if (v12 + 4 > v8)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v19 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v20 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *(v10 + v12) = 779;
  ++v11;
  v12 += 4;
LABEL_11:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 4))
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v21 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v22 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 780;
LABEL_14:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 69))
  {
    goto LABEL_17;
  }

  v12 += 8;
  if (v12 > v8)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v23 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v24 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11 = 0x31100000310;
  v11 += 2;
LABEL_17:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 74))
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v25 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v26 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 776;
LABEL_20:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 93))
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v27 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v28 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 798;
LABEL_23:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 84))
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v29 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v30 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 793;
LABEL_26:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 111))
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_129();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_19_1();
    if (!(*(v31 + 1952))(v9))
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v32 + 1952))(v9);
    if (!CCLogStream::shouldLog())
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

  *v11++ = 793;
LABEL_29:
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v9, 89))
  {
LABEL_34:
    OUTLINED_FUNCTION_246();
    goto LABEL_35;
  }

  if (v12 + 4 > v8)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v35 + 1952))(v9))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v36 + 1952))(v9);
      if (CCLogStream::shouldLog())
      {
        goto LABEL_71;
      }
    }
  }

  else
  {
    *v11 = 794;
    if (v12 + 8 > v8)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v37 + 1952))(v9))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v38 + 1952))(v9);
        if (CCLogStream::shouldLog())
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v11[1] = 795;
      if (v12 + 12 <= v8)
      {
        v11[2] = 796;
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_19_1();
      if ((*(v39 + 1952))(v9))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v40 + 1952))(v9);
        if (CCLogStream::shouldLog())
        {
LABEL_71:
          OUTLINED_FUNCTION_19_1();
          v42 = (*(v41 + 1952))(v9);
          CCLogStream::logAlert(v42, "[dk] %s@%d:Error cannot create EcountersConfigSlice0Container buffer too short\n");
        }
      }
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_280();
}

void AppleBCMWLANCore::getEcountersConfigSlice2Container(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_142();
  if (v9 && v8)
  {
    if (OUTLINED_FUNCTION_270(v7))
    {
      v10 = 16;
    }

    else
    {
      v10 = 12;
    }

    if (v10 > v6)
    {
      OUTLINED_FUNCTION_19_1();
      if ((*(v12 + 1952))(v4))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v13 + 1952))(v4);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v15 = (*(v14 + 1952))(v4);
          v16 = 52219;
LABEL_21:
          CCLogStream::logAlert(v15, "[dk] %s@%d:Error cannot create EcountersConfigSlice2Container buffer too short\n", "getEcountersConfigSlice2Container", v16);
        }
      }
    }

    else
    {
      *v5 = 1;
      *(v5 + 4) = 4;
      if (AppleBCMWLANCore::featureFlagIsBitSet(v4, 120))
      {
        *(v5 + 8) = 0x30600000304;
        v11 = 16;
      }

      else
      {
        *(v5 + 8) = 774;
        v11 = 12;
      }

      if (!AppleBCMWLANCore::featureFlagIsBitSet(v4, 74))
      {
        goto LABEL_13;
      }

      if (v10 + 4 <= v6)
      {
        *(v5 + v11) = 776;
LABEL_13:
        OUTLINED_FUNCTION_246();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_19_1();
      if ((*(v17 + 1952))(v4))
      {
        OUTLINED_FUNCTION_19_1();
        (*(v18 + 1952))(v4);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v15 = (*(v19 + 1952))(v4);
          v16 = 52236;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_280();
}

uint64_t AppleBCMWLANCore::getEcountersConfigInfraContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (!v6)
  {
    return v4;
  }

  v9 = v8;
  if (!v8)
  {
    return v4;
  }

  v10 = v7;
  v11 = v5;
  if (v7 <= 0x13)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v12 + 1952))(v11))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v13 + 1952))(v11);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v15 = (*(v14 + 1952))(v11);
        v16 = 52261;
LABEL_7:
        CCLogStream::logAlert(v15, "[dk] %s@%d:Error cannot create EcountersConfigInfraContainer buffer too short\n", "getEcountersConfigInfraContainer", v16);
        return v4;
      }
    }

    return v4;
  }

  v17 = v6;
  *v6 = 2;
  *(v6 + 4) = 0;
  *(v6 + 8) = 0x50300000502;
  *(v6 + 16) = 1284;
  v18 = 20;
  *v8 = 20;
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v5, 67))
  {
LABEL_11:
    v4 = 0;
    *v9 = v18;
    return v4;
  }

  if (v10 > 0x17)
  {
    *(v17 + 20) = 1291;
    v18 = 24;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_19_1();
  if ((*(v20 + 1952))(v11))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v21 + 1952))(v11);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v15 = (*(v22 + 1952))(v11);
      v16 = 52281;
      goto LABEL_7;
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getEcountersConfigPeerStatsContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (v6 && v8)
  {
    if (v7 > 0xB)
    {
      v4 = 0;
      *v6 = 2;
      *(v6 + 2) = v9;
      *(v6 + 4) = 0;
      *(v6 + 8) = 1294;
      *v8 = 12;
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
      if ((*(v10 + 1952))())
      {
        OUTLINED_FUNCTION_19_1();
        (*(v11 + 1952))(v5);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v13 = (*(v12 + 1952))(v5);
          CCLogStream::logAlert(v13, "[dk] %s@%d:Error cannot create EcountersConfigInfraContainer buffer too short\n", "getEcountersConfigPeerStatsContainer", 52308);
        }
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getEcountersConfigSoftAPContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_142();
  if (v6 && v8)
  {
    if (v7 > 0xF)
    {
      v4 = 0;
      *v6 = 65538;
      *(v6 + 4) = 0;
      *(v6 + 8) = 0x50400000502;
      *v8 = 16;
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
      if ((*(v9 + 1952))())
      {
        OUTLINED_FUNCTION_19_1();
        (*(v10 + 1952))(v5);
        if (CCLogStream::shouldLog())
        {
          OUTLINED_FUNCTION_19_1();
          v12 = (*(v11 + 1952))(v5);
          CCLogStream::logAlert(v12, "[dk] %s@%d:Error cannot create EcountersConfigInfraContainer buffer too short\n", "getEcountersConfigSoftAPContainer", 52340);
        }
      }
    }
  }

  return v4;
}

void AppleBCMWLANCore::getEcountersConfigGlobalContainer(AppleBCMWLANCore *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_142();
  if (!v5 || !v7)
  {
    goto LABEL_25;
  }

  v8 = v6;
  v9 = v4;
  if (v6 <= 0xF)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v10 + 1952))(v9))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v11 + 1952))(v9);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v13 = (*(v12 + 1952))(v9);
        v14 = 52373;
LABEL_7:
        CCLogStream::logAlert(v13, "[dk] %s@%d:Error cannot create EcountersConfigGlobalContainer buffer too short\n", "getEcountersConfigGlobalContainer", v14);
        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  v15 = v5;
  *v5 = 4;
  *(v5 + 4) = 0;
  *(v5 + 8) = 0x10200000101;
  if (!AppleBCMWLANCore::featureFlagIsBitSet(v4, 69))
  {
    v16 = (v15 + 16);
    v17 = 16;
LABEL_12:
    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 90))
    {
      if ((v17 | 4uLL) > v8)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v23 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v24 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v25 + 1952))(v9);
            v14 = 52397;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *(v15 + v17) = 267;
      ++v16;
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 99))
    {
      OUTLINED_FUNCTION_129();
      if (!v19 & v18)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v26 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v27 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v28 + 1952))(v9);
            v14 = 52404;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *v16++ = 268;
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 103))
    {
      OUTLINED_FUNCTION_129();
      if (!v19 & v18)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v29 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v30 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v31 + 1952))(v9);
            v14 = 52411;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *v16++ = 261;
    }

    if (AppleBCMWLANCore::featureFlagIsBitSet(v9, 110))
    {
      OUTLINED_FUNCTION_129();
      if (!v19 & v18)
      {
        OUTLINED_FUNCTION_19_1();
        if ((*(v32 + 1952))(v9))
        {
          OUTLINED_FUNCTION_19_1();
          (*(v33 + 1952))(v9);
          if (CCLogStream::shouldLog())
          {
            OUTLINED_FUNCTION_19_1();
            v13 = (*(v34 + 1952))(v9);
            v14 = 52417;
            goto LABEL_7;
          }
        }

        goto LABEL_25;
      }

      *v16 = 269;
    }

    OUTLINED_FUNCTION_246();
    goto LABEL_25;
  }

  if (v8 > 0x17)
  {
    *(v15 + 16) = 0x700000006;
    v16 = (v15 + 24);
    v17 = 24;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19_1();
  if ((*(v20 + 1952))(v9))
  {
    OUTLINED_FUNCTION_19_1();
    (*(v21 + 1952))(v9);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v13 = (*(v22 + 1952))(v9);
      v14 = 52390;
      goto LABEL_7;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_280();
}

uint64_t AppleBCMWLANCore::disableECountersV2(AppleBCMWLANCore *this, uint64_t a2, uint64_t a3, uint64_t a4, CCLogStream *a5)
{
  v28 = -21846;
  v26 = 2;
  v27 = 0;
  v6 = AppleBCMWLANCommandWithXTLV::withLengthAndHeader(0xC, &v26, 12, *(*(this + 9) + 14248), a5);
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(v6);
  AppleBCMWLANCommandWithXTLV::complete(v7);
  AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v7);
  AppleBCMWLANCommandWithXTLV::getCommandLength(v7);
  OUTLINED_FUNCTION_154();
  v13 = AppleBCMWLANCommander::runIOVarSet(v8, v9, v10, v11, v12);
  v14 = v13;
  if (v13 != -469794537 && v13 != 0)
  {
    OUTLINED_FUNCTION_19_1();
    if ((*(v16 + 1952))(this))
    {
      OUTLINED_FUNCTION_19_1();
      (*(v17 + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v21 = (*(v20 + 1952))(this);
        OUTLINED_FUNCTION_19_1();
        (*(v22 + 112))(this, v14);
        OUTLINED_FUNCTION_6();
        CCLogStream::logAlert(v21, "[dk] %s@%d: Error: Unable to set ecounters V2: %s\n", v23, v24, v25);
      }
    }
  }

  OUTLINED_FUNCTION_24_1();
  (*(v18 + 16))(v7);
  return v14;
}

OSStringPtr AppleBCMWLANCore::newVendorString(AppleBCMWLANCore *this)
{
  v2 = OSDictionary::withCapacity(6u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = OUTLINED_FUNCTION_51_0(*(this + 9));
  if ((*(v5 + 408))(v4, v3, 0) || (Object = OSDictionary::getObject(v3, "subsystem-vendor-id"), (v7 = OSMetaClassBase::safeMetaCast(Object, gOSNumberMetaClass)) == 0))
  {
    v9 = 0;
  }

  else
  {
    if (OSNumber::unsigned16BitValue(v7) == 4203)
    {
      v8 = "Apple";
    }

    else
    {
      v8 = "Unknown";
    }

    v9 = OSString::withCString(v8);
  }

  OUTLINED_FUNCTION_24_1();
  (*(v10 + 16))(v3);
  return v9;
}

uint64_t AppleBCMWLANCore::createSkywalkInterface(IOService *a1, IOService **a2, uint64_t a3, IO80211VirtualInterface *a4)
{
  if (!a3)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v10 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v11 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        v30 = (*(v29 + 1952))(a1);
        CCLogStream::logAlert(v30, "[dk] %s@%d:ERROR: Skywalk interface creation failed, invalid sifParams\n");
      }
    }

    return 3758096385;
  }

  if (*(a3 + 16) >= 0xCu)
  {
    OUTLINED_FUNCTION_24_1();
    if ((*(v6 + 1952))(a1))
    {
      OUTLINED_FUNCTION_24_1();
      (*(v7 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_24_1();
        (*(v8 + 1952))(a1);
        OUTLINED_FUNCTION_113();
        CCLogStream::logAlert(v9, "[dk] %s@%d:ERROR: Skywalk interface %s%d creation failed, invalid interface id %d\n");
      }
    }

    return 3758096385;
  }

  if (*(a3 + 24) != 2)
  {
    v23 = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_24_1();
  if ((*(v15 + 1952))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v16 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      (*(v31 + 1952))(a1);
      OUTLINED_FUNCTION_112();
      CCLogStream::logAlert(v32, "[dk] %s@%d:Creating low latency skywalk interface %s%d id:%d role:%d\n", "createSkywalkInterface", 55035, v39, v40, v41, v42);
    }
  }

  v17 = OUTLINED_FUNCTION_189();
  if (!AppleBCMWLANConfigManager::isLowLatencyWiFiEnabled(v17))
  {
    return 3758096385;
  }

  v12 = 3758097090;
  if (!a4)
  {
    return v12;
  }

  LOBYTE(a1[1].OSObject::OSObjectInterface::__vftable[2223].free) = 1;
  HIDWORD(a1[1].OSObject::OSObjectInterface::__vftable[2223].free) = *(a3 + 16);
  LODWORD(a1[1].OSObject::OSObjectInterface::__vftable[2224].init) = 2;
  a1[1].OSObject::OSObjectInterface::__vftable[2224].free = a4;
  v18 = a1[1].OSObject::OSObjectInterface::__vftable + 2225;
  v19 = *(a3 + 8);
  WORD2(v18->init) = *(a3 + 12);
  LODWORD(v18->init) = v19;
  result = 0;
  if ((a1->OSObject::OSMetaClassBase::__vftable[34].free)(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v20 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v34 = (*(v33 + 1952))(a1);
      CCLogStream::logAlert(v34, "[dk] %s@%d:Creating low latency skywalk, ifid %d, %02X:%02X:%02X:%02X:%02X:%02X\n", "createSkywalkInterface", 55048, *(a3 + 16), LOBYTE(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE1(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE2(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE3(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE4(a1[1].OSObject::OSObjectInterface::__vftable[2225].init), BYTE5(a1[1].OSObject::OSObjectInterface::__vftable[2225].init));
    }
  }

  v21 = a1[1].OSObject::OSObjectInterface::__vftable;
  if (v21[706].init == a4)
  {
    v22 = "DriverKit_IO80211AWDLLLW";
    goto LABEL_25;
  }

  if (v21[1871].free == a4)
  {
    v22 = "DriverKit_IO80211NANLLW";
LABEL_25:
    v12 = IOService::Create(a1, a1, v22, &result, 0);
    if (v12)
    {
      goto LABEL_26;
    }

    if (!result)
    {
      return 3758096385;
    }

    *a2 = result;
    *(&a1[1].OSObject::OSObjectInterface::__vftable[699].free + *(a3 + 16)) = a2;
    IO80211SkywalkInterface::setInterfaceRole(result, 2u);
    (a1->OSObject::OSMetaClassBase::__vftable[8].isEqualTo)(a1, result, a1);
    IO80211SkywalkInterface::setParentInterface(result, a4);
    IO80211VirtualInterface::setCompanionLowLatencySkywalkInterface(a4, result);
    OUTLINED_FUNCTION_15_5();
    (*(v27 + 536))();
    v23 = result;
    v28 = a1[1].OSObject::OSObjectInterface::__vftable;
    if (v28[706].init == a4)
    {
      v28[707].init = result;
    }

LABEL_23:
    v12 = 0;
    *a2 = v23;
    return v12;
  }

LABEL_26:
  OUTLINED_FUNCTION_24_1();
  if ((*(v24 + 1952))(a1))
  {
    OUTLINED_FUNCTION_24_1();
    (*(v25 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_24_1();
      v36 = (*(v35 + 1952))(a1);
      OUTLINED_FUNCTION_19_1();
      v38 = (*(v37 + 160))(a4);
      CCLogStream::logAlert(v36, "[dk] %s@%d:ERROR: Could not create skywalk interface with primary %s (%d)", "createSkywalkInterface", 55058, v38, v12);
    }
  }

  return v12;
}

uint64_t AppleBCMWLANCore::setREALTIME_QOS_MSCS()
{
  OUTLINED_FUNCTION_108();
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(*(v2 + 72) + 5432));
  if (OUTLINED_FUNCTION_277() && (*(*(v0 + 9) + 30081) & 1) != 0)
  {
    OUTLINED_FUNCTION_89_0();
    if ((*(v4 + 656))(CurrentBSS))
    {
      if (v1)
      {
        v5 = *(v1 + 4);
        *(*(v0 + 9) + 30083) = v5 != 0;
        AppleBCMWLANCore::sendQoSMgmtMSCSReq(v0, v5);
        return 0;
      }

      return 22;
    }

    else
    {
      OUTLINED_FUNCTION_24_1();
      if (!(*(v16 + 1952))(v0) || (OUTLINED_FUNCTION_24_1(), (*(v17 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v18, "%c [dk] %s@%d: WiFi-QoS: AP does not support QoS MSCS\n", v19, v20, v21, v22, v29, v30);
        }
      }

      OUTLINED_FUNCTION_24_1();
      result = (*(v23 + 1952))(v0);
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        (*(v24 + 1952))(v0);
        result = CCLogStream::shouldLog();
        if (result)
        {
          OUTLINED_FUNCTION_24_1();
          v26 = (*(v25 + 1952))(v0);
          CCLogStream::logAlert(v26, "[dk] %s@%d:WiFi-QoS: AP does not support QoS MSCS\n");
          return 0;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    if (!(*(v7 + 1952))(v0) || (OUTLINED_FUNCTION_24_1(), (*(v8 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v9, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", v10, v11, v12, v13, v29, v30);
      }
    }

    OUTLINED_FUNCTION_24_1();
    result = (*(v14 + 1952))(v0);
    if (result)
    {
      OUTLINED_FUNCTION_24_1();
      (*(v15 + 1952))(v0);
      result = CCLogStream::shouldLog();
      if (result)
      {
        OUTLINED_FUNCTION_24_1();
        v28 = (*(v27 + 1952))(v0);
        CCLogStream::logAlert(v28, "[dk] %s@%d:WiFi-QoS: QoS Management is disabled\n");
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::init(AppleBCMWLANCore *this)
{
  result = IO80211Controller::init(this);
  if (result)
  {
    OUTLINED_FUNCTION_24_1();
    v3 = OUTLINED_FUNCTION_221();
    result = v4(v3);
    if (result)
    {
      if (*(this + 9))
      {
        io80211_os_log("Core Init complete");
        mach_continuous_time();
        absolutetime_to_nanoseconds();
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = IOService::Create(v2, v2, "FirmwareLoader", &v2[1].OSObject::OSObjectInterface::__vftable[892], 0);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = (v2->OSObject::OSMetaClassBase::__vftable[34].free)(v2);
  if (v3)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v6 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v8 = (*(v7 + 1952))(v2);
        CCLogStream::logEmergency(v8, "[dk] %s@%d:core driverkit framework create firmwareLoader fail 0x%x\n", "setAndBootInfraInterface_block_invoke_3", 58964, *(*(*(a1 + 32) + 8) + 24));
      }
    }
  }

  else
  {
    if (v4)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v9 + 1952))(v2);
      if (CCLogStream::shouldLog())
      {
        OUTLINED_FUNCTION_19_1();
        v14 = (*(v13 + 1952))(v2);
        CCLogStream::logEmergency(v14, "[dk] %s@%d:Using legacy wifiFirmwareLoader\n", "setAndBootInfraInterface_block_invoke_3", 58959);
      }
    }

    mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v5);
    v11 = v2[1].OSObject::OSObjectInterface::__vftable;
    if (v11)
    {
      v11[892].free = mach_continuous_nanoseconds;
    }
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t AppleBCMWLANCore::setWCL_ARP_MODE(void *a1)
{
  result = OUTLINED_FUNCTION_97();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(a1[9] + 5544);
        if (*(v3 + 16))
        {
          result = AppleBCMWLANKeepAliveOffload::programGARP(v6, *(v3 + 12));
        }

        else
        {
          result = AppleBCMWLANKeepAliveOffload::stopGARP(v6);
        }
      }
    }

    else if (*(v3 + 16))
    {
      result = AppleBCMWLANCore::programARPKeepAlive(a1, *(v3 + 12));
    }

    else
    {
      result = AppleBCMWLANCore::stopARPKeepAlive(a1);
    }

    if (*(v4 + 4) && *(v4 + 5))
    {
      v7 = *(a1[9] + 5552);
      v8 = *v4;
      v9 = *(v4 + 2);

      return AppleBCMWLANWnmAdapter::configureWNMKeepAlives(v7, v8, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWCL_QOS_PARAMS(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_101_0();
    v2 = AppleBCMWLANNetAdapter::setQosParams();
    if (AppleBCMWLANCore::featureFlagIsBitSet(v3, 115))
    {
      v5 = *(*(v3 + 9) + 5592);
      if (v5)
      {
        if ((v4[23] & 0x40) != 0)
        {
          AppleBCMWLAN11beAdapter::configureMloFeatures(v5, v4[21] != 0);
        }
      }
    }

    if ((v4[23] & 0x20) != 0)
    {
      AppleBCMWLANCore::setReatimeAppPoliciesInternal(v3, v4[20]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_142();
  }

  return v2;
}

uint64_t AppleBCMWLANCore::setWCL_REASSOC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  OUTLINED_FUNCTION_108();
  AppleBCMWLANRoamAdapter::setReassocParams(*(*(v4 + 72) + 5568), *(v5 + 153), (*(v3 + 152) >> 2) & 1);
  v6 = OUTLINED_FUNCTION_204();
  v8 = AppleBCMWLANNetAdapter::sendReassocCommand(v6, v7);
  if (v8)
  {
    AppleBCMWLANRoamAdapter::restoreReassocParams(*(*(v2 + 72) + 5568));
  }

  return v8;
}

IO80211Controller *AppleBCMWLANCore::scanForwardStatsAsyncCallBack(IO80211Controller *result, uint64_t a2, int a3, uint64_t *a4)
{
  if (!a3)
  {
    return AppleBCMWLANCore::processScanForwardStats(result, *a4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::safe_align_up()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:os_add_overflow %zu\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_211();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:os_sub_overflow on alignment %zu\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_211();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:os_sub_overflow on alignment %zu\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

BOOL AppleBCMWLANCore::is4387C0()
{
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(v0, v1, 3uLL);
  OUTLINED_FUNCTION_122();
  v5 = memcmp(v2, v3, v4);
  return OUTLINED_FUNCTION_123(v5);
}

BOOL AppleBCMWLANCore::is4399B0()
{
  OUTLINED_FUNCTION_95_0();
  AppleBCMWLANCore::getChipRevString(v0, v1, 3uLL);
  OUTLINED_FUNCTION_122();
  v5 = memcmp(v2, v3, v4);
  return OUTLINED_FUNCTION_123(v5);
}

uint64_t AppleBCMWLANCore::dumpCurTxDCSummary()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:|| [Tx DC Stats] ------------------------------------------||\n", "dumpCurTxDCSummary", 1215);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   [Slice 0 Ant0] ---------------------------------------||\n", "dumpCurTxDCSummary", 1216);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [0 - 10]                     | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [10 - 20]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [20 - 30]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [30 - 40]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [40 - 50]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [50 - 60]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [60 - 70]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [70 - 80]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [80 - 90]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [90 - 100]                   | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   [Slice 1 Ant0] ---------------------------------------||\n", "dumpCurTxDCSummary", 1227);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [0 - 10]                     | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [10 - 20]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [20 - 30]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [30 - 40]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [40 - 50]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [50 - 60]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [60 - 70]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [70 - 80]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [80 - 90]                    | %20llu ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||     [90 - 100]                   | %20llu ||\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::updateSCTxBlankingSummary()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Invalid Tx blanking percentage \n", "updateSCTxBlankingSummary", 1284);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Invalid channel number \n", "updateSCTxBlankingSummary", 1287);
}

uint64_t AppleBCMWLANCore::init()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:wlan.ranging.disableOutlierDiscarding %d\n", "init", 1710, *(*v0 + 976));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:wlan.ranging.applyRangingoffsetsVsAVP %d\n", "init", 1719, *(*v0 + 977));
}

uint64_t AppleBCMWLANCore::reportInitFailure()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:AppleBCMWLANCore::%s/%u: AdjustBusy(-1)! busystate %u, fAdjustBusyCnt %u, kAdjustBusyTimeout_ms %u\n", "reportInitFailure", 1821, "reportInitFailure", 1821, *v1, *(*v0 + 4400), 40000);
}

uint64_t AppleBCMWLANCore::signalDriverEvent()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  v3 = AppleBCMWDriverEventToString[v0];
  v4 = current_thread();
  v5 = thread_tid(v4);
  return CCLogStream::logNoticeIf(v2, 0x200000uLL, "[dk] %s@%d: Signalling (%s) event from tid: %llx\n", "signalDriverEvent", 4554, v3, v5);
}

uint64_t AppleBCMWLANCore::initAfterIORegUpdated()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Limiting HW platform, disabling: '%s' band locked, AWDL/LLW, Tethering/SoftAP\n", "initAfterIORegUpdated", 1931, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", "initAfterIORegUpdated", 2210, v3, v4);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_169();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Init Delay time is is %06llu.%06llu seconds\n", "initAfterIORegUpdated", 2226, v1 / v2, (v1 % v2) / 0x3E8);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create PowerState Adapter object!\n", "initAfterIORegUpdated", 2176);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create 11be Adapter object!\n", "initAfterIORegUpdated", 2120);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create gcr Adapter object!\n", "initAfterIORegUpdated", 2110);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create 11ax Adapter object!\n", "initAfterIORegUpdated", 2100);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create Roam Adapter object!\n", "initAfterIORegUpdated", 2090);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create Keep Alive Offload object!\n", "initAfterIORegUpdated", 2068);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create WNM Agent object!\n", "initAfterIORegUpdated", 2047);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create BGScan Adapter object!\n", "initAfterIORegUpdated", 2026);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create LQM object!\n", "initAfterIORegUpdated", 2005);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create Net Adapter object!\n", "initAfterIORegUpdated", 1995);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ivars->fTxPowerManager Manager object!\n", "initAfterIORegUpdated", 1985);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create join adapter\n", "initAfterIORegUpdated", 1976);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create Bss manager object!\n", "initAfterIORegUpdated", 1950);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ivars->fPowerManager Manager object!\n", "initAfterIORegUpdated", 1940);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ConfigManager object!\n", "initAfterIORegUpdated", 1899);
}

uint64_t AppleBCMWLANCore::start()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:core common start\n", "start", 2245);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Will reset power state upon system wake\n", "start", 2264);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: super::start(provider) failed\n", "start", 2279);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disable IE filtering boot-arg override: %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LPSC debug flag: %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Found 'wlan.debug.band-locked' boot-arg override: '%s'\n", "start", 2375, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Found 'wlan.debug.band-locked' boot-arg override: Invalid '%s'\n", "start", 2382, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to process provisioning data. %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create Audio Protector object!\n", "start", 2603);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid remote FEM information in IO registry\n", "start", 2752);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:driverkitAllocSkywalkBusResources() failed\n", "start", 2725);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AdjustBusy(+1) busystate %u, fAdjustBusyCnt %u\n", "start", 2741, v3, v4);
}

{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1952))();
  checkPropertyTrue(v0, "FirmwareLoaded", 0, "IOService");
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Checking firmware loaded[%d]\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WiFi driver started\n", "start", 2801);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create adjust busy timer\n", "start", 2733);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:failed to populate requested files\n", "start", 2756);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create GAS Adapter object!\n", "start", 2666);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create TimeKeeper object!\n", "start", 2657);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create LeakyApParser object!\n", "start", 2649);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create fNDDAdapter\n", "start", 2643);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create fSensingAdapter\n", "start", 2637);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create scanAdapter\n", "start", 2631);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ivars->fDynSARDetailSlice1Timer timer\n", "start", 2581);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ivars->fDynSARDetailSlice0Timer timer\n", "start", 2572);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ivars->fTxDutyCycleReportTimer timer\n", "start", 2562);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ivars->fStatsReportTimer timer\n", "start", 2552);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create Cmd manager object!\n", "start", 2527);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create disableHostCountryCode timer\n", "start", 2518);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create ChanInfoTimer timer\n", "start", 2509);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get link inactivity timer\n", "start", 2497);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: callback allocation failure\n", "start", 2481);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to create a provisioning manager\n", "start", 2462);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:%s::%s(): Unable to create Fault Reporter!\n", "start", 2411, ClassNameHelper, "start");
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get command gate from superclass\n", "start", 2301);
}

uint64_t AppleBCMWLANCore::start(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1952))();
  v6 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v6);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s::%s(): Found 'wlan.debug.linkdebug' arg[0x%08x]\n", "start", 2318, ClassNameHelper, "start", *(*a3 + 17512));
}

uint64_t AppleBCMWLANCore::start(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1952))();
  v6 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v6);
  return CCLogStream::logInfo(v3, "[dk] %s@%d:%s::%s(): Found 'wlan.debug.single-boot-only' arg[0x%08x]\n", "start", 2322, ClassNameHelper, "start", *a3);
}

uint64_t AppleBCMWLANCore::signalDriverReady()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create key/value pair signaling state of Core WiFi driver\n", "signalDriverReady", 60626);
}

uint64_t AppleBCMWLANCore::watchdog()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:firmware trap, do not reset commander pool\n", "watchdog", 45125);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:report cannot be identified, do not reset commander pool\n", "watchdog", 45116);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  v3 = current_thread();
  v4 = thread_tid(v3);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: <%llx> state 0x%lX\n", "watchdog", 45164, v4, *(*v0 + 10376));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Driver Uninitialized\n", "watchdog", 45169);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Chip initializing, ivars->fStateFlags 0x%lX: watchdog bail\n", "watchdog", 45174, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Watchdogged from watchdog, call halt then bail. It is possible other WD is stuck waiting on commander\n", "watchdog", 45179);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_125();
  v3 = *(v2 + 10376);
  v4 = OUTLINED_FUNCTION_51_0(v2);
  v6 = (*(v5 + 192))(v4);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: WATCHDOG abort: Shutdown pending or Power Change In Progress. state 0x%lX Bus Power On %d \n", "watchdog", 45190, v3, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'Bus low power' detected: APPLE80211_M_DRIVER_AVAILABLE, adjusting reason[0x%08x] -> [0x%08x], errorCode[0x%08x] isNonFatalFlag[0x%08x]\n", "watchdog", 45245, -528336895, -528336891, -469794008, 2);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v0, "[dk] %s@%d: WATCHDOG FAILED: Unable to bootChipImage %s.\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: watchdog succeeded - sending driver available event\n", "watchdog", 45385);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logInfo(v3, "[dk] %s@%d: PC: %llx, LR: %llx\n", "watchdog", 45386, *v1, *v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_125();
  AppleBCMWLANJoinAdapter::getJoinTimeoutSequenceNum(*(v2 + 5416));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:fJoinTimeoutSequenceNum %d\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_15_5();
  (*(v2 + 568))();
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:ivars->fProvider->getTrapInfoSequenceNum %d\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Succeeded\n", "watchdog", 45468);
}

uint64_t AppleBCMWLANCore::watchdog(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_5();
  v7 = (*(v6 + 1952))();
  v8 = current_thread();
  v9 = thread_tid(v8);
  v10 = *(*a3 + 10376);
  OUTLINED_FUNCTION_19_1();
  v12 = (*(v11 + 56))(a4);
  OSString::getCStringNoCopy(v12);
  OUTLINED_FUNCTION_52_0();
  (*(v13 + 72))(a4);
  OUTLINED_FUNCTION_19_1();
  v16 = v15 / 0x3B9ACA00;
  v17 = (*(v14 + 72))(a4);
  return CCLogStream::logAlert(v7, "[dk] %s@%d: <%llx> state 0x%lX %s %llu.%llu\n", "watchdog", 45162, v9, v10, a3, v16, v17 % 0x3B9ACA00 / 0x3E8);
}

uint64_t AppleBCMWLANCore::watchdog(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_0_8();
  v5 = (*(v4 + 1952))();
  LODWORD(a3) = *a3;
  OUTLINED_FUNCTION_81_0();
  v6 = OUTLINED_FUNCTION_16_2();
  v8 = v7(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Driver avail message reason shouldn't be vendor specific - 0x%08x/%s\n", "watchdog", 45437, a3, v8);
}

uint64_t AppleBCMWLANCore::collectImmediateFaultDataCallback()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skip WDT logging\n", "collectImmediateFaultDataCallback", 53705);
}

uint64_t AppleBCMWLANCore::induceFaultCallback()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Simulate Scan Return scan failure\n", "induceFaultCallback", 53856);
}