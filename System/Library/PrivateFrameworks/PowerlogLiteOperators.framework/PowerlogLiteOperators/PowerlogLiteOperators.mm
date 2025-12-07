id PLLogApplication()
{
  if (qword_2811F6A98 != -1)
  {
    dispatch_once(&qword_2811F6A98, &__block_literal_global_62);
  }

  v1 = _MergedGlobals_1_60;

  return v1;
}

id PLLogLocation()
{
  if (qword_2811F6CD0 != -1)
  {
    dispatch_once(&qword_2811F6CD0, &__block_literal_global_63);
  }

  v1 = _MergedGlobals_1_63;

  return v1;
}

id PLLogDisplay()
{
  if (qword_2811F4928 != -1)
  {
    dispatch_once(&qword_2811F4928, &__block_literal_global_31);
  }

  v1 = qword_2811F4920;

  return v1;
}

uint64_t AWDMETRICSCellularPowerLogReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 806952)
      {
        switch(v13)
        {
          case 0xC0003:
            v14 = objc_alloc_init(AWDMETRICSCellularPerClientProfileTriggerCount);
            [a1 addCellularPerClientProfileTriggerCount:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPerClientProfileTriggerCountReadFrom(v14, a2) & 1) == 0)
            {
LABEL_187:

              return 0;
            }

            break;
          case 0xC5018:
            v14 = objc_alloc_init(AWDMETRICSCellularNrSDMActivation);
            [a1 addCellularNrSDMActivation:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularNrSDMActivationReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 0xC5019:
            v14 = objc_alloc_init(AWDMETRICSCellularNrSdmEndcRelease);
            [a1 addCellularNrSdmEndcRelease:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularNrSdmEndcReleaseReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          default:
LABEL_37:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_183;
        }
      }

      else
      {
        switch(v13)
        {
          case 816640:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogShutdown);
            [a1 addCellularPowerLogXOShutdown:v14];
            goto LABEL_97;
          case 816641:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogAPPSPerfLevels:v14];
            goto LABEL_180;
          case 816642:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogShutdown);
            [a1 addCellularPowerLogAPPSCXOShutdown:v14];
LABEL_97:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogShutdownReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816643:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogAPPSSleepVeto:v14];
            goto LABEL_180;
          case 816644:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogMCPMSleepVeto:v14];
            goto LABEL_180;
          case 816645:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogMPSSPerfLevels:v14];
            goto LABEL_180;
          case 816646:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGPSStates:v14];
            goto LABEL_180;
          case 816647:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogAOPUARTStates:v14];
            goto LABEL_180;
          case 816648:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWLANUARTStates:v14];
            goto LABEL_180;
          case 816649:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogPCIeStates:v14];
            goto LABEL_180;
          case 816650:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogL1SleepStates:v14];
            goto LABEL_180;
          case 816651:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEConfiguredCASCCStates:v14];
            goto LABEL_180;
          case 816652:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEActivatedCASCCStates:v14];
            goto LABEL_180;
          case 816653:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTERxTxActivityStates:v14];
            goto LABEL_180;
          case 816654:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogLTECarrierComponentInfo);
            [a1 addCellularPowerLogLTECarrierComponentInfo:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogLTECarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816655:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEAggregatedDLTBS:v14];
            goto LABEL_180;
          case 816656:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTERSRP:v14];
            goto LABEL_180;
          case 816657:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTESINR:v14];
            goto LABEL_180;
          case 816658:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTETxPower:v14];
            goto LABEL_180;
          case 816659:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTERxDiversity:v14];
            goto LABEL_180;
          case 816660:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogLTEULCAState:v14];
            goto LABEL_180;
          case 816661:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogPowerEstimator:v14];
            goto LABEL_180;
          case 816662:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPagingDRXCycle);
            [a1 addCellularPowerLogLTEPagingDRXCycle:v14];
            goto LABEL_145;
          case 816663:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPagingDRXCycle);
            [a1 addCellularPowerLogNRPagingDRXCycle:v14];
LABEL_145:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogPagingDRXCycleReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816664:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogProtocolState:v14];
            goto LABEL_180;
          case 816665:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogPLMNSearch:v14];
            goto LABEL_180;
          case 816666:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMTxPower:v14];
            goto LABEL_180;
          case 816667:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMRxRSSI:v14];
            goto LABEL_180;
          case 816668:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMRABMode:v14];
            goto LABEL_180;
          case 816669:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogGSMRxDiversity:v14];
            goto LABEL_180;
          case 816670:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMATxPower:v14];
            goto LABEL_180;
          case 816671:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARxRSSI:v14];
            goto LABEL_180;
          case 816672:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRSCGRel);
            [a1 addCellularPowerLogNRSCGRel:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRSCGRelReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816673:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARxDiversity:v14];
            goto LABEL_180;
          case 816674:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARABMode:v14];
            goto LABEL_180;
          case 816675:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogWCDMARABType:v14];
            goto LABEL_180;
          case 816676:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogEVDOTxPower:v14];
            goto LABEL_180;
          case 816677:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogEVDORxRSSI:v14];
            goto LABEL_180;
          case 816678:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogHybridRABMode:v14];
            goto LABEL_180;
          case 816679:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogEVDORxDiversity:v14];
            goto LABEL_180;
          case 816680:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XTxPower:v14];
            goto LABEL_180;
          case 816681:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XRxRSSI:v14];
            goto LABEL_180;
          case 816682:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XRABMode:v14];
            goto LABEL_180;
          case 816683:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogCDMA1XRxDiversity:v14];
            goto LABEL_180;
          case 816684:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogWCDMACDRXConfig);
            [a1 addCellularPowerLogWCDMACDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogWCDMACDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816685:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogLTECDRXConfig);
            [a1 addCellularPowerLogLTECDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogLTECDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816686:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogWCDMARRCStateChange);
            [a1 addCellularPowerLogWCDMARRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogWCDMARRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816687:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogLTERRCStateChange);
            [a1 addCellularPowerLogLTERRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogLTERRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816688:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogSystemEvent);
            [a1 addCellularPowerLogSystemEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogSystemEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816689:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogRATChangeEvent);
            [a1 addCellularPowerLogRATReselectionEvent:v14];
            goto LABEL_85;
          case 816690:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogRATChangeEvent);
            [a1 addCellularPowerLogRATRedirectionEvent:v14];
LABEL_85:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogRATChangeEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816691:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogGSMRRCStateChange);
            [a1 addCellularPowerLogGSMRRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogGSMRRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816692:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLog1xEVDORRCStateChange);
            [a1 addCellularPowerLogCDMA1XRRCStateChange:v14];
            goto LABEL_163;
          case 816693:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLog1xEVDORRCStateChange);
            [a1 addCellularPowerLogHybridRRCStateChange:v14];
LABEL_163:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLog1xEVDORRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816694:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogServiceEvent);
            [a1 addCellularPowerLogServiceStateEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogServiceEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816695:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPLMNScanEvent);
            [a1 addCellularPowerLogPLMNScanEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogPLMNScanEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816696:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogPLMNSearchEvent);
            [a1 addCellularPowerLogPLMNSearchEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogPLMNSearchEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816697:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRSARRCStateChange);
            [a1 addCellularPowerLogNRSARRCStateChange:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRSARRCStateChangeReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816698:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRNSAENDCEvent);
            [a1 addCellularPowerLogNRNSAENDCEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRNSAENDCEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816699:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRCDRXConfig);
            [a1 addCellularPowerLogNRCDRXConfig:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRCDRXConfigReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816700:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6BWP:v14];
            goto LABEL_180;
          case 816701:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogRFTunerStatsHist:v14];
            goto LABEL_180;
          case 816702:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6CASCCConfigured:v14];
            goto LABEL_180;
          case 816703:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6CASCCActivated:v14];
            goto LABEL_180;
          case 816704:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6RxTx:v14];
            goto LABEL_180;
          case 816705:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRCarrierComponentInfo);
            [a1 addCellularPowerLogNRsub6CarrierComponentInfo:v14];
            goto LABEL_115;
          case 816706:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6DLTBS:v14];
            goto LABEL_180;
          case 816707:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6RSRP:v14];
            goto LABEL_180;
          case 816708:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6ULCAState:v14];
            goto LABEL_180;
          case 816709:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6TxPower:v14];
            goto LABEL_180;
          case 816710:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6RxDiversity:v14];
            goto LABEL_180;
          case 816711:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogSPMI:v14];
            goto LABEL_180;
          case 816712:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveBWP:v14];
            goto LABEL_180;
          case 816713:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveAntennaPanel:v14];
            goto LABEL_180;
          case 816714:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRFRCoverage);
            [a1 addCellularPowerLogNRFRCoverage:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRFRCoverageReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816715:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveBeamID:v14];
            goto LABEL_180;
          case 816716:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogSFTStateEvent);
            [a1 addCellularPowerLogSFTState:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogSFTStateEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816717:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveCASCCConfigured:v14];
            goto LABEL_180;
          case 816718:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveCASCCActivated:v14];
            goto LABEL_180;
          case 816719:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveRxTx:v14];
            goto LABEL_180;
          case 816720:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRCarrierComponentInfo);
            [a1 addCellularPowerLogNRmmWaveCarrierComponentInfo:v14];
LABEL_115:
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRCarrierComponentInfoReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816721:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveDLTBS:v14];
            goto LABEL_180;
          case 816722:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRMmWaveRSRP:v14];
            goto LABEL_180;
          case 816723:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogSFTRxTx:v14];
            goto LABEL_180;
          case 816724:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRMmWaveTxPower:v14];
            goto LABEL_180;
          case 816725:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRMmWaveULCAState:v14];
            goto LABEL_180;
          case 816726:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6BWPSCC:v14];
            goto LABEL_180;
          case 816727:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRmmWaveBWPSCC:v14];
            goto LABEL_180;
          case 816728:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogNRDCEvent);
            [a1 addCellularPowerLogNRDCEvent:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogNRDCEventReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816729:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogWUS);
            [a1 addCellularPowerLogWUS:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || (AWDMETRICSCellularPowerLogWUSReadFrom(v14, a2) & 1) == 0)
            {
              goto LABEL_187;
            }

            break;
          case 816730:
            v14 = objc_alloc_init(AWDMETRICSCellularPowerLogHistogram);
            [a1 addCellularPowerLogNRsub6BWPSA:v14];
LABEL_180:
            v17 = 0;
            v18 = 0;
            if (PBReaderPlaceMark() && (AWDMETRICSCellularPowerLogHistogramReadFrom(v14, a2) & 1) != 0)
            {
              break;
            }

            goto LABEL_187;
          default:
            if (v13 == 806953)
            {
              v14 = objc_alloc_init(AWDMETRICSCellularDynamicRatSelection);
              [a1 addCellularDynamicRatSelection:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSCellularDynamicRatSelectionReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_187;
              }
            }

            else
            {
              if (v13 != 816437)
              {
                goto LABEL_37;
              }

              v14 = objc_alloc_init(AWDMETRICSCellularRfTunerHist);
              [a1 addCellularRfTunerHist:v14];
              v17 = 0;
              v18 = 0;
              if (!PBReaderPlaceMark() || (AWDMETRICSCellularRfTunerHistReadFrom(v14, a2) & 1) == 0)
              {
                goto LABEL_187;
              }
            }

            break;
        }
      }

      PBReaderRecallMark();

LABEL_183:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogLTERRCStateChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v61 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v61 & 0x7F) << v34;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v60 & 0x7F) << v47;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 32;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v57 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v57 & 0x7F) << v21;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 16;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 28;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 20;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogPLMNScanEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v57 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v57 & 0x7F) << v34;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 20;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v61 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v61 & 0x7F) << v47;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 16;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v60 & 0x7F) << v21;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 32;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 24;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 28;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLogSystemEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v39 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogPush()
{
  if (qword_2811F6358 != -1)
  {
    dispatch_once(&qword_2811F6358, &__block_literal_global_52);
  }

  v1 = _MergedGlobals_1_50;

  return v1;
}

id PLLogIDS()
{
  if (qword_2811F4888 != -1)
  {
    dispatch_once(&qword_2811F4888, &__block_literal_global_26);
  }

  v1 = _MergedGlobals_1_26;

  return v1;
}

uint64_t AWDMETRICSCellularPowerLogShutdownReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v45 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v45 & 0x7F) << v35;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v37;
          }

LABEL_76:
          v42 = 8;
          goto LABEL_77;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_78;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v47 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47 & 0x7F) << v21;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_67:
        v41 = 28;
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v46 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v46 & 0x7F) << v28;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_72:
          v42 = 16;
LABEL_77:
          *(a1 + v42) = v34;
          goto LABEL_78;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v48 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48 & 0x7F) << v14;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_63:
        v41 = 24;
      }

      *(a1 + v41) = v20;
LABEL_78:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogXPC()
{
  if (qword_2811F6E08 != -1)
  {
    dispatch_once(&qword_2811F6E08, &__block_literal_global_65);
  }

  v1 = qword_2811F6E00;

  return v1;
}

uint64_t AWDMETRICSCellularPowerLogHistogramReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v38[0] & 0x7F) << v22;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_61:
        *(a1 + 8) = v28;
        goto LABEL_67;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(AWDMETRICSMBin);
      [a1 addBin:v14];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSMBinReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v31;
      }

LABEL_65:
      v35 = 28;
      goto LABEL_66;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38[0] & 0x7F) << v15;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_57:
      v35 = 24;
LABEL_66:
      *(a1 + v35) = v21;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSMBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___AWDMETRICSMBin__binId;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDMETRICSMBin__binId;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___AWDMETRICSMBin__duration;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDMETRICSMBin__duration;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id PLLogSMCMetrics()
{
  if (qword_2811F3D40 != -1)
  {
    dispatch_once(&qword_2811F3D40, &__block_literal_global_1);
  }

  v1 = qword_2811F3D38;

  return v1;
}

id PLLogSMC()
{
  if (qword_2811F3FF8 != -1)
  {
    dispatch_once(&qword_2811F3FF8, &__block_literal_global_14);
  }

  v1 = qword_2811F3FF0;

  return v1;
}

void sub_21A4DB77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLLogCoalition()
{
  if (qword_2811F3150 != -1)
  {
    dispatch_once(&qword_2811F3150, &__block_literal_global_43);
  }

  v1 = qword_2811F3148;

  return v1;
}

id PLLogAssertion()
{
  if (qword_2811F4188 != -1)
  {
    dispatch_once(&qword_2811F4188, &__block_literal_global_18);
  }

  v1 = qword_2811F4180;

  return v1;
}

id PLLogIOReport()
{
  if (qword_2811F4778 != -1)
  {
    dispatch_once(&qword_2811F4778, &__block_literal_global_24);
  }

  v1 = qword_2811F4770;

  return v1;
}

id PLLogWifi()
{
  if (qword_2811F66F8 != -1)
  {
    dispatch_once(&qword_2811F66F8, &__block_literal_global_56);
  }

  v1 = qword_2811F66F0;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLLogNfc()
{
  if (qword_2811F6218 != -1)
  {
    dispatch_once(&qword_2811F6218, &__block_literal_global_50);
  }

  v1 = _MergedGlobals_1_48;

  return v1;
}

id PLLogProcessNetwork()
{
  if (qword_2811F3FE0 != -1)
  {
    dispatch_once(&qword_2811F3FE0, &__block_literal_global_13);
  }

  v1 = _MergedGlobals_1_11;

  return v1;
}

id PLLogPerformance()
{
  if (qword_2811F30A0 != -1)
  {
    dispatch_once(&qword_2811F30A0, &__block_literal_global_10);
  }

  v1 = qword_2811F3098;

  return v1;
}

id PLLogAudio()
{
  if (qword_2811F4D80 != -1)
  {
    dispatch_once(&qword_2811F4D80, &__block_literal_global_40);
  }

  v1 = qword_2811F4D78;

  return v1;
}

id PLLogScreenState()
{
  if (qword_2811F3FA0 != -1)
  {
    dispatch_once(&qword_2811F3FA0, &__block_literal_global_12);
  }

  v1 = qword_2811F3F98;

  return v1;
}

id PLLogConfig()
{
  if (qword_2811F42C8 != -1)
  {
    dispatch_once(&qword_2811F42C8, &__block_literal_global_19);
  }

  v1 = _MergedGlobals_1_19;

  return v1;
}

id PLLogCoreDuet()
{
  if (qword_2811F3DF0 != -1)
  {
    dispatch_once(&qword_2811F3DF0, &__block_literal_global_4);
  }

  v1 = _MergedGlobals_1_2;

  return v1;
}

id PLLogThermal()
{
  if (qword_2811F3D28 != -1)
  {
    dispatch_once(&qword_2811F3D28, &__block_literal_global_0);
  }

  v1 = _MergedGlobals_1;

  return v1;
}

void PowerChangedCallback(void *a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__7;
  v71 = __Block_byref_object_dispose__7;
  v6 = a1;
  v72 = v6;
  HIDWORD(v8) = a3 + 536870288;
  LODWORD(v8) = a3 + 536870288;
  v7 = v8 >> 4;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v56 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
      [v68[5] getSleepStatisticsApps];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      obj = v59 = 0u;
      v40 = [obj countByEnumeratingWithState:&v58 objects:v75 count:16];
      if (v40)
      {
        v41 = *v59;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v59 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(*(&v58 + 1) + 8 * i);
            v73[0] = @"PID";
            v44 = [v43 objectForKeyedSubscript:@"PID"];
            v73[1] = @"AppName";
            v74[0] = v44;
            v45 = [v43 objectForKeyedSubscript:@"AppName"];
            v74[1] = v45;
            v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];

            v47 = [v43 objectForKeyedSubscript:@"ResponseType"];
            [v56 setObject:v47 forKeyedSubscript:v46];
          }

          v40 = [obj countByEnumeratingWithState:&v58 objects:v75 count:16];
        }

        while (v40);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v48 = objc_opt_class();
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __PowerChangedCallback_block_invoke_460;
        v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v57[4] = v48;
        if (qword_2811F4750 != -1)
        {
          dispatch_once(&qword_2811F4750, v57);
        }

        if (byte_2811F46EA == 1)
        {
          v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: SystemWillNotSleep dict[kPLSWE_ResponseType] =%lld ", objc_msgSend(v56, "entryID")];
          v50 = MEMORY[0x277D3F178];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
          v52 = [v51 lastPathComponent];
          v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
          [v50 logMessage:v49 fromFile:v52 fromFunction:v53 fromLineNumber:1225];

          v54 = PLLogCommon();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v49;
            _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }
      }

      [v68[5] logEntry:v56];
    }

    else if (v7 == 9)
    {
      [v6 systemPoweredOn];
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      v9 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
      [v68[5] logEntry:v9];
      IOAllowPowerChange([v68[5] rootDomainConnect], a4);
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __PowerChangedCallback_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F4728 != -1)
      {
        dispatch_once(&qword_2811F4728, block);
      }

      if (byte_2811F46E5 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: start listening"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1202];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    v17 = [v68[5] canSleepSemaphore];
    [v17 signalStartListening];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __PowerChangedCallback_block_invoke_438;
      v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v65[4] = v18;
      if (qword_2811F4730 != -1)
      {
        dispatch_once(&qword_2811F4730, v65);
      }

      if (byte_2811F46E6 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: log entry"];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v22 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:1204];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__7;
    v81 = __Block_byref_object_dispose__7;
    v82 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
    [v68[5] logEntry:*(*(&buf + 1) + 40)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v25 = objc_opt_class();
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __PowerChangedCallback_block_invoke_444;
      v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v64[4] = v25;
      if (qword_2811F4738 != -1)
      {
        dispatch_once(&qword_2811F4738, v64);
      }

      if (byte_2811F46E7 == 1)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: begin block entry.id=%lld", objc_msgSend(*(*(&buf + 1) + 40), "entryID")];
        v27 = MEMORY[0x277D3F178];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v29 = [v28 lastPathComponent];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:1207];

        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *v76 = 138412290;
          v77 = v26;
          _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", v76, 0xCu);
        }
      }
    }

    v32 = [v68[5] canSleepSemaphore];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __PowerChangedCallback_block_invoke_448;
    v63[3] = &unk_27825C7C8;
    v63[4] = &v67;
    v63[5] = &buf;
    v63[6] = a4;
    [v32 waitWithBlock:v63];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __PowerChangedCallback_block_invoke_454;
      v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v62[4] = v33;
      if (qword_2811F4748 != -1)
      {
        dispatch_once(&qword_2811F4748, v62);
      }

      if (byte_2811F46E9 == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: after block entry.id=%lld", objc_msgSend(*(*(&buf + 1) + 40), "entryID")];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v37 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:1212];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *v76 = 138412290;
          v77 = v34;
          _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", v76, 0xCu);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v67, 8);
}

void sub_21A4E3D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void serviceInterestCallback(void *a1, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v8 = v3;
    v9 = v4;
    v5 = a1;
    [v5 cancel];
    [v5 setValid:0];

    v6 = PLLogDisplay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEFAULT, "Cancelled AFKInterface", v7, 2u);
    }
  }
}

void networkLinkQualityChangeCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:a2 copyItems:1];
  v6 = objc_autoreleasePoolPush();
  [v7 networkLinkQualityChanged:a1 withChangedKeys:v5];
  objc_autoreleasePoolPop(v6);
}

void *handleIOMFBPowerCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!_os_feature_enabled_impl() || (result = [MEMORY[0x277D3F208] hasAOD], (result & 1) == 0))
  {

    return [a4 logEventPointDisplayBacklightWithState:a3];
  }

  return result;
}

id PLLogSleepWake()
{
  if (qword_2811F46F8 != -1)
  {
    dispatch_once(&qword_2811F46F8, &__block_literal_global_23);
  }

  v1 = qword_2811F46F0;

  return v1;
}

id PLLogNetwork()
{
  if (qword_2811F61B8 != -1)
  {
    dispatch_once(&qword_2811F61B8, &__block_literal_global_49);
  }

  v1 = qword_2811F61B0;

  return v1;
}

id PLLogPMUMetrics()
{
  if (qword_2811F6D48 != -1)
  {
    dispatch_once(&qword_2811F6D48, &__block_literal_global_64);
  }

  v1 = _MergedGlobals_1_65;

  return v1;
}

id PLLogCamera()
{
  if (qword_2811F3F88 != -1)
  {
    dispatch_once(&qword_2811F3F88, &__block_literal_global_11);
  }

  v1 = _MergedGlobals_1_8;

  return v1;
}

uint64_t AWDMETRICSCellularPerClientProfileTriggerCountReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogProcessMonitor()
{
  if (qword_2811F4DC0 != -1)
  {
    dispatch_once(&qword_2811F4DC0, &__block_literal_global_41);
  }

  v1 = qword_2811F4DB8;

  return v1;
}

uint64_t __PLLogProcessMonitor_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "processMonitor");
  qword_2811F4DB8 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t AWDMETRICSCellularPowerLogLTECarrierComponentInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(AWDMETRICSMCarrierComponentInfo);
        [a1 addCarrierInfo:v28];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !AWDMETRICSMCarrierComponentInfoReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_46:
        *(a1 + 24) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSMCarrierComponentInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v48 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v48 & 0x7F) << v38;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__band;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__band;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v47 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v47 & 0x7F) << v23;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__bandwidth;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__bandwidth;
LABEL_75:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_78:
          *(a1 + *v22) = v21;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 28) |= 8u;
            while (1)
            {
              v46 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v28;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__earfcn;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__earfcn;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 28) |= 0x10u;
            while (1)
            {
              v50 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v50 & 0x7F) << v33;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__type;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__type;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 4u;
            while (1)
            {
              v49 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v49 & 0x7F) << v14;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__duplex;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSMCarrierComponentInfo__duplex;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_21A4EB688(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A9ED0CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_21A4EB7B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_21A9ED0CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21A4EB8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21A4EB9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A9ED0CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_21A4EBA78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21A9ED0CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21A4EBB24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21A9ED0CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21A4EBBF0()
{
  MEMORY[0x21CEDE4B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A4EBC38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21A4EBC78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21A4F0AD0()
{
  v1 = (v0 + *(type metadata accessor for UrsaResult(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_21A4F0B1C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F0B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F0BDC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F0C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F0C84@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for UrsaResult(0);
  sub_21A4F1408(v1 + *(v6 + 40), v5, &qword_27CD2E7D0, &qword_21AA20498);
  v7 = type metadata accessor for UrsaAdmissionResult(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_21A4F1470(v5, a1, type metadata accessor for UrsaAdmissionResult);
  }

  sub_21A9ED0BC();
  *(a1 + v7[5]) = 2;
  v9 = a1 + v7[6];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = (a1 + v7[7]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v7[10]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v7[11]);
  *v14 = 0;
  v14[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_21A4FB590(v5, &qword_27CD2E7D0, &qword_21AA20498);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21A4F0EF4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F0F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F0FE4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F108C()
{
  v1 = (v0 + *(type metadata accessor for UrsaAdmissionResult(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21A4F1130(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_21A4F1254()
{
  v1 = (v0 + *(type metadata accessor for UrsaRadarData(0) + 68));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21A4F12A8()
{
  v1 = (v0 + *(type metadata accessor for UrsaRadarData(0) + 72));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

int *sub_21A4F12FC@<X0>(uint64_t a1@<X8>)
{
  sub_21A9ED0BC();
  result = type metadata accessor for UrsaRadarData(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + result[10]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + result[11]) = 2;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + result[13]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + result[14]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + result[15]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + result[16]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + result[17]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + result[18]);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t sub_21A4F1408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A4F1470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A4F14F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A4F1558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A4F15D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

double sub_21A4F169C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21A4F16DC(double a1)
{
  result = type metadata accessor for UrsaPeriodicRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_21A4F174C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_21A4FB590(v2 + v4, &qword_27CD2E7D8, &qword_21AA204A0);
  sub_21A4F1470(a1, v2 + v4, type metadata accessor for UrsaMetadata);
  v5 = type metadata accessor for UrsaMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t sub_21A4F1858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_21A4F18C4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_21A4F1920(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21A4F1958(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_21A4F1998(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F19F4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 56));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1A50(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 60));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1AAC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 64));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21A4F1B08()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F6F8);
  __swift_project_value_buffer(v0, qword_27CD2F6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21AA203C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "cr_key";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "build";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "device";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "platform";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "flag";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "request_id";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21A4F1E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A9ED0FC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          type metadata accessor for UrsaMetadata(0);
          sub_21A9ED13C();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = sub_21A9ED0FC();
    }
  }

  return result;
}

int *sub_21A4F1F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaMetadata(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = sub_21A9ED1DC();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6] + 8))
  {
    sub_21A9ED1DC();
  }

  if (*(v5 + v10[7] + 8))
  {
    sub_21A9ED1DC();
  }

  if (*(v5 + v10[8] + 8))
  {
    sub_21A9ED1DC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaMetadata);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaMetadata);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F20A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_21A4F217C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E968, type metadata accessor for UrsaMetadata, &unk_21AA20520);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F221C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F2288(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F2308()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F710);
  __swift_project_value_buffer(v0, qword_27CD2F710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21AA203C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "success";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "error_code";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "failure_reason";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "payload";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "result";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "radarData";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F25D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A9ED0FC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_16;
          case 5:
            type metadata accessor for UrsaResult(0);
            type metadata accessor for UrsaAdmissionResult(0);
            sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult, &unk_21AA20778);
            sub_21A9ED15C();
            break;
          case 6:
            type metadata accessor for UrsaRadarData(0);
            sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData, &unk_21AA208E0);
            sub_21A9ED14C();
            break;
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for UrsaResult(0);
          sub_21A9ED10C();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

LABEL_16:
          type metadata accessor for UrsaResult(0);
          sub_21A9ED13C();
          goto LABEL_5;
        }

        type metadata accessor for UrsaResult(0);
        sub_21A9ED11C();
      }

LABEL_5:
      result = sub_21A9ED0FC();
    }
  }

  return result;
}

int *sub_21A4F27FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for UrsaResult(0);
  v9 = result;
  if (*(v3 + result[6]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1AC();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v9[7] + 4) & 1) == 0)
  {
    sub_21A9ED1BC();
  }

  if (*(v3 + v9[8] + 8))
  {
    sub_21A9ED1DC();
  }

  if (*(v3 + v9[9] + 8))
  {
    sub_21A9ED1DC();
  }

  sub_21A4F29B8(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for UrsaRadarData(0);
    sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData, &unk_21AA208E0);
    sub_21A9ED1EC();
  }

  return sub_21A9ED0AC();
}

uint64_t sub_21A4F29B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for UrsaAdmissionResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UrsaResult(0);
  sub_21A4F1408(a1 + *(v12 + 40), v7, &qword_27CD2E7D0, &qword_21AA20498);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21A4FB590(v7, &qword_27CD2E7D0, &qword_21AA20498);
  }

  sub_21A4F1470(v7, v11, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult, &unk_21AA20778);
  sub_21A9ED1FC();
  return sub_21A4F1558(v11, type metadata accessor for UrsaAdmissionResult);
}

uint64_t sub_21A4F2BD4@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_21A9ED0BC();
  v4 = a1[7];
  *(a2 + a1[6]) = 2;
  v5 = a2 + v4;
  *v5 = 0;
  v5[4] = 1;
  v6 = a1[9];
  v7 = (a2 + a1[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  v10 = type metadata accessor for UrsaAdmissionResult(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_21A4F2D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E960, type metadata accessor for UrsaResult, &unk_21AA20688);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F2DB4(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E860, type metadata accessor for UrsaResult, &unk_21AA20610);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F2E24(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E860, type metadata accessor for UrsaResult, &unk_21AA20610);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F2EA8()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F728);
  __swift_project_value_buffer(v0, qword_27CD2F728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21AA203D0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "admit";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_21A9ED20C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "impact";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "proc";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "component";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "version";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "component_id";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "payload";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F31A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for UrsaAdmissionResult(0);
          sub_21A9ED10C();
          break;
        case 2:
          type metadata accessor for UrsaAdmissionResult(0);
          sub_21A9ED11C();
          break;
        case 3:
          goto LABEL_2;
      }
    }

    else if (result <= 6 || result == 7)
    {
LABEL_2:
      type metadata accessor for UrsaAdmissionResult(0);
      sub_21A9ED13C();
    }
  }
}

int *sub_21A4F3318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaAdmissionResult(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1AC();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    sub_21A9ED1BC();
  }

  if (*(v5 + v10[7] + 8))
  {
    sub_21A9ED1DC();
  }

  if (*(v5 + v10[8] + 8))
  {
    sub_21A9ED1DC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F3590(v5, a1, a2, a3);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F3498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F3590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UrsaAdmissionResult(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F360C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + a1[11]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_21A4F36D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E958, type metadata accessor for UrsaAdmissionResult, &unk_21AA207F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F3770(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult, &unk_21AA20778);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F37DC(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E878, type metadata accessor for UrsaAdmissionResult, &unk_21AA20778);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F385C()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F740);
  __swift_project_value_buffer(v0, qword_27CD2F740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21AA203E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "radar";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "impact";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "timestamp_start";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp_end";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "hit_in";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "fixed_in";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_critical";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timestamp_invalid";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "custom_title";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "custom_message";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "process";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "domain";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "action";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "payload";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F3D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        type metadata accessor for UrsaRadarData(0);
        sub_21A9ED11C();
        break;
      case 3:
      case 4:
      case 8:
        type metadata accessor for UrsaRadarData(0);
        sub_21A9ED12C();
        break;
      case 5:
      case 6:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        type metadata accessor for UrsaRadarData(0);
        sub_21A9ED13C();
        break;
      case 7:
        type metadata accessor for UrsaRadarData(0);
        sub_21A9ED10C();
        break;
      default:
        continue;
    }
  }
}

int *sub_21A4F3EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaRadarData(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1BC();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    sub_21A9ED1BC();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    sub_21A9ED1CC();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    sub_21A9ED1CC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F7068(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F70E4(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F7160(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F71DC(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F7258(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F72D4(v5, a1, a2, a3, type metadata accessor for UrsaRadarData);
  sub_21A4F4184(v5, a1, a2, a3);
  sub_21A4F41FC(v5, a1, a2, a3);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UrsaRadarData(0);
  if (*(a1 + *(result + 68) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F41FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UrsaRadarData(0);
  if (*(a1 + *(result + 72) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F42CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E950, type metadata accessor for UrsaRadarData, &unk_21AA20958);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F436C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData, &unk_21AA208E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F43D8(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E7E8, type metadata accessor for UrsaRadarData, &unk_21AA208E0);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F44FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E948, type metadata accessor for UrsaAdmissionRequest, &unk_21AA20AC0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F459C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest, &unk_21AA20A48);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F4608(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest, &unk_21AA20A48);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F46B4()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F770);
  __swift_project_value_buffer(v0, qword_27CD2F770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21AA203F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21A9ED20C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "time_window_start";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F48D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A9ED0FC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 6:
          type metadata accessor for UrsaPeriodicRequest(0);
          sub_21A9ED12C();
          break;
        case 2:
          type metadata accessor for UrsaPeriodicRequest(0);
          sub_21A9ED13C();
          break;
        case 1:
          type metadata accessor for UrsaPeriodicRequest(0);
          type metadata accessor for UrsaMetadata(0);
          sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);
          sub_21A9ED15C();
          break;
      }

      result = sub_21A9ED0FC();
    }
  }

  return result;
}

uint64_t sub_21A4F4A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A4F51F8(v3, a1, a2, a3, type metadata accessor for UrsaPeriodicRequest);
  if (!v4)
  {
    v6 = type metadata accessor for UrsaPeriodicRequest(0);
    if (*(v3 + *(v6 + 24) + 8))
    {
      sub_21A9ED1DC();
    }

    if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
    {
      sub_21A9ED1CC();
    }

    return sub_21A9ED0AC();
  }

  return result;
}

uint64_t sub_21A4F4B20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A9ED0BC();
  v4 = a1[5];
  v5 = type metadata accessor for UrsaMetadata(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_21A4F4BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E940, type metadata accessor for UrsaPeriodicRequest, &unk_21AA20C28);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F4C9C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest, &unk_21AA20BB0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F4D08(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest, &unk_21AA20BB0);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F4DA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21AA203F0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "metadata";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_21A9ED20C();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = "payload";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v14();
  v16 = v10 + 2 * v7 + v6[14];
  *(v10 + 2 * v7) = 3;
  *v16 = a3;
  *(v16 + 8) = a4;
  *(v16 + 16) = 2;
  v14();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F4FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_21A9ED0FC();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        a4(0);
        sub_21A9ED13C();
      }

      else if (result == 1)
      {
        a4(0);
        type metadata accessor for UrsaMetadata(0);
        sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);
        sub_21A9ED15C();
      }

      result = sub_21A9ED0FC();
    }
  }

  return result;
}

uint64_t sub_21A4F50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = sub_21A4F51F8(v5, a1, a2, a3, a4);
  if (!v6)
  {
    v9 = a5(0);
    if (*(v5 + *(v9 + 24) + 8))
    {
      sub_21A9ED1DC();
    }

    if (*(v5 + *(v9 + 28) + 8))
    {
      sub_21A9ED1DC();
    }

    return sub_21A9ED0AC();
  }

  return result;
}

uint64_t sub_21A4F51F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for UrsaMetadata(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  sub_21A4F1408(a1 + *(v14 + 20), v9, &qword_27CD2E7D8, &qword_21AA204A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_21A4FB590(v9, &qword_27CD2E7D8, &qword_21AA204A0);
  }

  sub_21A4F1470(v9, v13, type metadata accessor for UrsaMetadata);
  sub_21A4F98E4(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);
  sub_21A9ED1FC();
  return sub_21A4F1558(v13, type metadata accessor for UrsaMetadata);
}

uint64_t sub_21A4F5418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21A9ED0BC();
  v4 = a1[5];
  v5 = type metadata accessor for UrsaMetadata(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_21A4F5528(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E938, type metadata accessor for UrsaTelemetryRequest, &unk_21AA20D90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F55C8(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest, &unk_21AA20D18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F5634(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest, &unk_21AA20D18);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F56E0()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F7A0);
  __swift_project_value_buffer(v0, qword_27CD2F7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21AA203C0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "cr_key";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "build";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "device";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "response_flag";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "request_id";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "fetch_window_start";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F59B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_2:
        type metadata accessor for UrsaRequest(0);
        sub_21A9ED13C();
      }

      else if (result == 6)
      {
        type metadata accessor for UrsaRequest(0);
        sub_21A9ED12C();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

int *sub_21A4F5AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaRequest(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = sub_21A9ED1DC();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6] + 8))
  {
    sub_21A9ED1DC();
  }

  if (*(v5 + v10[7] + 8))
  {
    sub_21A9ED1DC();
  }

  if (*(v5 + v10[8] + 8))
  {
    sub_21A9ED1DC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaRequest);
  sub_21A4F5C40(v5, a1, a2, a3);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UrsaRequest(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_21A9ED1CC();
  }

  return result;
}

uint64_t sub_21A4F5CB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_21A4F5D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E930, type metadata accessor for UrsaRequest, &unk_21AA20EF8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F5E1C(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_2811F2DD8, type metadata accessor for UrsaRequest, &unk_21AA20E80);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F5E88(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_2811F2DD8, type metadata accessor for UrsaRequest, &unk_21AA20E80);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F5F08()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F7B8);
  __swift_project_value_buffer(v0, qword_27CD2F7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21AA20400;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21A9ED20C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failure_reason";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "issues";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "error_code";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F6168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A9ED0FC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for UrsaIssue(0);
          sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue, &unk_21AA21150);
          sub_21A9ED14C();
        }

        else if (result == 4)
        {
          type metadata accessor for UrsaResponse(0);
          sub_21A9ED11C();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for UrsaResponse(0);
        sub_21A9ED10C();
      }

      else if (result == 2)
      {
        type metadata accessor for UrsaResponse(0);
        sub_21A9ED13C();
      }

      result = sub_21A9ED0FC();
    }
  }

  return result;
}

uint64_t sub_21A4F62E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for UrsaResponse(0);
  v6 = result;
  if (*(v3 + *(result + 24)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1AC();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 28) + 8))
  {
    sub_21A9ED1DC();
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for UrsaIssue(0);
    sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue, &unk_21AA21150);
    sub_21A9ED1EC();
  }

  if ((*(v3 + *(v6 + 32) + 4) & 1) == 0)
  {
    sub_21A9ED1BC();
  }

  return sub_21A9ED0AC();
}

uint64_t sub_21A4F6468@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = sub_21A9ED0BC();
  v5 = a1[7];
  *(a2 + a1[6]) = 2;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + a1[8];
  *v7 = 0;
  v7[4] = 1;
  return result;
}

uint64_t sub_21A4F64EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21A9ED0CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21A4F6560(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21A9ED0CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21A4F6604(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E928, type metadata accessor for UrsaResponse, &unk_21AA21060);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F66A4(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E8E8, type metadata accessor for UrsaResponse, &unk_21AA20FE8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F6710(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E8E8, type metadata accessor for UrsaResponse, &unk_21AA20FE8);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F6790()
{
  v0 = sub_21A9ED22C();
  __swift_allocate_value_buffer(v0, qword_27CD2F7D0);
  __swift_project_value_buffer(v0, qword_27CD2F7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E978, &qword_21AA21320);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E980, &qword_21AA21328) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21AA20410;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "radar";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21A9ED20C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "impact";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "timestamp_start";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp_end";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "hit_in";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "fixed_in";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_critical";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timestamp_invalid";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "dri_message";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notification_message";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "process";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "domain";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  return sub_21A9ED21C();
}

uint64_t sub_21A4F6BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_21A9ED0FC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        if (result == 10 || result == 11 || result == 12)
        {
          goto LABEL_2;
        }
      }

      else if (result == 7)
      {
        type metadata accessor for UrsaIssue(0);
        sub_21A9ED10C();
      }

      else
      {
        if (result == 8)
        {
          goto LABEL_25;
        }

LABEL_2:
        type metadata accessor for UrsaIssue(0);
        sub_21A9ED13C();
      }
    }

    else if (result > 3)
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_25:
      type metadata accessor for UrsaIssue(0);
      sub_21A9ED12C();
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for UrsaIssue(0);
      sub_21A9ED11C();
    }

    else if (result == 3)
    {
      goto LABEL_25;
    }
  }
}

int *sub_21A4F6DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for UrsaIssue(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_21A9ED1BC();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    sub_21A9ED1BC();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    sub_21A9ED1CC();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    sub_21A9ED1CC();
  }

  sub_21A4F3498(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F3514(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F7068(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F70E4(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F7160(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F71DC(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F7258(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  sub_21A4F72D4(v5, a1, a2, a3, type metadata accessor for UrsaIssue);
  return sub_21A9ED0AC();
}

uint64_t sub_21A4F7068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_21A9ED1AC();
  }

  return result;
}

uint64_t sub_21A4F70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_21A9ED1CC();
  }

  return result;
}

uint64_t sub_21A4F7160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F71DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 56) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F7258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 60) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F72D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 64) + 8))
  {
    return sub_21A9ED1DC();
  }

  return result;
}

uint64_t sub_21A4F7354@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21A9ED0BC();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  v14 = a1[12];
  *(a2 + a1[11]) = 2;
  v15 = a2 + v14;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1[14];
  v17 = (a2 + a1[13]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a2 + v16);
  *v18 = 0;
  v18[1] = 0;
  v19 = a1[16];
  v20 = (a2 + a1[15]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a2 + v19);
  *v21 = 0;
  v21[1] = 0;
  return result;
}

uint64_t sub_21A4F7428@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A9ED0CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21A4F7490(uint64_t a1)
{
  v3 = sub_21A9ED0CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21A4F7528(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A4F98E4(&qword_27CD2E920, type metadata accessor for UrsaIssue, &unk_21AA211C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21A4F75C8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21A9ED22C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_21A4F7664(uint64_t a1)
{
  v2 = sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue, &unk_21AA21150);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21A4F76D0(uint64_t a1, uint64_t a2)
{
  sub_21A9ED51C();
  sub_21A9ED29C();
  return sub_21A9ED52C();
}

uint64_t sub_21A4F7728(uint64_t a1, uint64_t a2)
{
  sub_21A4F98E4(&qword_27CD2E828, type metadata accessor for UrsaIssue, &unk_21AA21150);

  return sub_21A9ED18C();
}

uint64_t sub_21A4F77A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A9ED51C();
  sub_21A9ED29C();
  return sub_21A9ED52C();
}

uint64_t sub_21A4F77FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaIssue(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_21A4F14F0(v13, v10, type metadata accessor for UrsaIssue);
        sub_21A4F14F0(v14, v7, type metadata accessor for UrsaIssue);
        v16 = sub_21A4F8794(v10, v7);
        sub_21A4F1558(v7, type metadata accessor for UrsaIssue);
        sub_21A4F1558(v10, type metadata accessor for UrsaIssue);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_21A4F79A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaRadarData(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_21A4F14F0(v13, v10, type metadata accessor for UrsaRadarData);
        sub_21A4F14F0(v14, v7, type metadata accessor for UrsaRadarData);
        v16 = sub_21A4F831C(v10, v7);
        sub_21A4F1558(v7, type metadata accessor for UrsaRadarData);
        sub_21A4F1558(v10, type metadata accessor for UrsaRadarData);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_21A4F7B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for UrsaMetadata(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E988, &qword_21AA21330);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v37 = a3(0);
  v38 = a1;
  v16 = *(v37 + 20);
  v17 = *(v13 + 56);
  sub_21A4F1408(a1 + v16, v15, &qword_27CD2E7D8, &qword_21AA204A0);
  sub_21A4F1408(a2 + v16, &v15[v17], &qword_27CD2E7D8, &qword_21AA204A0);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    sub_21A4F1408(v15, v11, &qword_27CD2E7D8, &qword_21AA204A0);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v21 = v36;
      sub_21A4F1470(&v15[v17], v36, type metadata accessor for UrsaMetadata);
      v22 = sub_21A4F9660(v11, v21);
      sub_21A4F1558(v21, type metadata accessor for UrsaMetadata);
      sub_21A4F1558(v11, type metadata accessor for UrsaMetadata);
      sub_21A4FB590(v15, &qword_27CD2E7D8, &qword_21AA204A0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21A4F1558(v11, type metadata accessor for UrsaMetadata);
LABEL_6:
    sub_21A4FB590(v15, &qword_27CD2E988, &qword_21AA21330);
    goto LABEL_7;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_21A4FB590(v15, &qword_27CD2E7D8, &qword_21AA204A0);
LABEL_10:
  v24 = v37;
  v23 = v38;
  v25 = *(v37 + 24);
  v26 = (v38 + v25);
  v27 = *(v38 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_21A9ED4AC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v29)
  {
    goto LABEL_7;
  }

  v30 = *(v24 + 28);
  v31 = (v23 + v30);
  v32 = *(v23 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (v34 && (*v31 == *v33 && v32 == v34 || (sub_21A9ED4AC() & 1) != 0))
    {
      goto LABEL_24;
    }
  }

  else if (!v34)
  {
LABEL_24:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_21A9ED2BC();
    return v19 & 1;
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_21A4F7F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E988, &qword_21AA21330);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v37 = type metadata accessor for UrsaPeriodicRequest(0);
  v38 = a1;
  v14 = *(v37 + 20);
  v15 = *(v11 + 56);
  sub_21A4F1408(a1 + v14, v13, &qword_27CD2E7D8, &qword_21AA204A0);
  v16 = a2 + v14;
  v17 = a2;
  sub_21A4F1408(v16, &v13[v15], &qword_27CD2E7D8, &qword_21AA204A0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_21A4F1408(v13, v9, &qword_27CD2E7D8, &qword_21AA204A0);
    if (v18(&v13[v15], 1, v4) != 1)
    {
      v21 = v36;
      sub_21A4F1470(&v13[v15], v36, type metadata accessor for UrsaMetadata);
      v22 = sub_21A4F9660(v9, v21);
      sub_21A4F1558(v21, type metadata accessor for UrsaMetadata);
      sub_21A4F1558(v9, type metadata accessor for UrsaMetadata);
      sub_21A4FB590(v13, &qword_27CD2E7D8, &qword_21AA204A0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21A4F1558(v9, type metadata accessor for UrsaMetadata);
LABEL_6:
    sub_21A4FB590(v13, &qword_27CD2E988, &qword_21AA21330);
    goto LABEL_7;
  }

  if (v18(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_21A4FB590(v13, &qword_27CD2E7D8, &qword_21AA204A0);
LABEL_10:
  v24 = v37;
  v23 = v38;
  v25 = *(v37 + 24);
  v26 = (v38 + v25);
  v27 = *(v38 + v25 + 8);
  v28 = (v17 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_21A9ED4AC() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v29)
  {
    goto LABEL_7;
  }

  v30 = *(v24 + 28);
  v31 = (v23 + v30);
  v32 = *(v23 + v30 + 8);
  v33 = (v17 + v30);
  v34 = *(v17 + v30 + 8);
  if (v32)
  {
    if (v34)
    {
LABEL_23:
      sub_21A9ED0CC();
      sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_21A9ED2BC();
      return v19 & 1;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_21A4F831C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaRadarData(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    if (*v26 != *v28 || v27 != v29)
    {
      v30 = v4;
      v31 = sub_21A9ED4AC();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = v4[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }

    if (*v33 != *v35 || v34 != v36)
    {
      v37 = v4;
      v38 = sub_21A9ED4AC();
      v4 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = v4[11];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v42 = v4[12];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 8);
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = v4[13];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51)
    {
      return 0;
    }

    if (*v48 != *v50 || v49 != v51)
    {
      v52 = v4;
      v53 = sub_21A9ED4AC();
      v4 = v52;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v51)
  {
    return 0;
  }

  v54 = v4[14];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58)
    {
      return 0;
    }

    if (*v55 != *v57 || v56 != v58)
    {
      v59 = v4;
      v60 = sub_21A9ED4AC();
      v4 = v59;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v58)
  {
    return 0;
  }

  v61 = v4[15];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }

    if (*v62 != *v64 || v63 != v65)
    {
      v66 = v4;
      v67 = sub_21A9ED4AC();
      v4 = v66;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v65)
  {
    return 0;
  }

  v68 = v4[16];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v72 = v71[1];
  if (v70)
  {
    if (!v72)
    {
      return 0;
    }

    if (*v69 != *v71 || v70 != v72)
    {
      v73 = v4;
      v74 = sub_21A9ED4AC();
      v4 = v73;
      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v72)
  {
    return 0;
  }

  v75 = v4[17];
  v76 = (a1 + v75);
  v77 = *(a1 + v75 + 8);
  v78 = (a2 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (!v79)
    {
      return 0;
    }

    if (*v76 != *v78 || v77 != v79)
    {
      v80 = v4;
      v81 = sub_21A9ED4AC();
      v4 = v80;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v79)
  {
    return 0;
  }

  v82 = v4[18];
  v83 = (a1 + v82);
  v84 = *(a1 + v82 + 8);
  v85 = (a2 + v82);
  v86 = v85[1];
  if (v84)
  {
    if (!v86 || (*v83 != *v85 || v84 != v86) && (sub_21A9ED4AC() & 1) == 0)
    {
      return 0;
    }

LABEL_90:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21A9ED2BC() & 1;
  }

  if (!v86)
  {
    goto LABEL_90;
  }

  return 0;
}

uint64_t sub_21A4F8794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaIssue(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    if (*v26 != *v28 || v27 != v29)
    {
      v30 = v4;
      v31 = sub_21A9ED4AC();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v29)
  {
    return 0;
  }

  v32 = v4[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }

    if (*v33 != *v35 || v34 != v36)
    {
      v37 = v4;
      v38 = sub_21A9ED4AC();
      v4 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = v4[11];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v42 = v4[12];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 8);
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v47 = v4[13];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51)
    {
      return 0;
    }

    if (*v48 != *v50 || v49 != v51)
    {
      v52 = v4;
      v53 = sub_21A9ED4AC();
      v4 = v52;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v51)
  {
    return 0;
  }

  v54 = v4[14];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58)
    {
      return 0;
    }

    if (*v55 != *v57 || v56 != v58)
    {
      v59 = v4;
      v60 = sub_21A9ED4AC();
      v4 = v59;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v58)
  {
    return 0;
  }

  v61 = v4[15];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }

    if (*v62 != *v64 || v63 != v65)
    {
      v66 = v4;
      v67 = sub_21A9ED4AC();
      v4 = v66;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v65)
  {
    return 0;
  }

  v68 = v4[16];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v72 = v71[1];
  if (v70)
  {
    if (!v72 || (*v69 != *v71 || v70 != v72) && (sub_21A9ED4AC() & 1) == 0)
    {
      return 0;
    }

LABEL_76:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21A9ED2BC() & 1;
  }

  if (!v72)
  {
    goto LABEL_76;
  }

  return 0;
}

uint64_t sub_21A4F8B5C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UrsaResponse(0);
  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 28);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_21A9ED4AC();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4;
  if ((sub_21A4F77FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v17 = *(v16 + 32);
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 4);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 4);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  sub_21A9ED0CC();
  sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21A9ED2BC() & 1;
}

uint64_t sub_21A4F8CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaRequest(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21A9ED4AC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21A9ED4AC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21A9ED4AC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_21A9ED4AC();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (!v39)
  {
    if (!v41)
    {
      goto LABEL_44;
    }

    return 0;
  }

  if (!v41)
  {
    return 0;
  }

  if (*v38 != *v40 || v39 != v41)
  {
    v42 = v4;
    v43 = sub_21A9ED4AC();
    v4 = v42;
    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_44:
  v44 = v4[10];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 8);
  if (v46)
  {
    if (!v48)
    {
      return 0;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  sub_21A9ED0CC();
  sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21A9ED2BC() & 1;
}

uint64_t sub_21A4F8F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaAdmissionResult(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21A9ED4AC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21A9ED4AC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[9];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v4;
      v35 = sub_21A9ED4AC();
      v4 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v36 = v4[10];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v41 = v4;
      v42 = sub_21A9ED4AC();
      v4 = v41;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v43 = v4[11];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_21A9ED4AC() & 1) == 0)
    {
      return 0;
    }

LABEL_49:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21A9ED2BC() & 1;
  }

  if (!v47)
  {
    goto LABEL_49;
  }

  return 0;
}

uint64_t sub_21A4F91D0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UrsaAdmissionResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D0, &qword_21AA20498);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E990, &qword_21AA21338);
  MEMORY[0x28223BE20](v11);
  v13 = v45 - v12;
  v14 = type metadata accessor for UrsaResult(0);
  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_35;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_35;
  }

  v18 = v14[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_35;
    }
  }

  v23 = v14[8];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_35;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v28 = v14;
      v29 = sub_21A9ED4AC();
      v14 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_35;
  }

  v30 = v14[9];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (!v32)
  {
    if (!v34)
    {
      goto LABEL_26;
    }

LABEL_35:
    v43 = 0;
    return v43 & 1;
  }

  if (!v34)
  {
    goto LABEL_35;
  }

  if (*v31 != *v33 || v32 != v34)
  {
    v35 = v14;
    v36 = sub_21A9ED4AC();
    v14 = v35;
    if ((v36 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  v45[1] = v14;
  v37 = v14[10];
  v38 = *(v11 + 48);
  sub_21A4F1408(a1 + v37, v13, &qword_27CD2E7D0, &qword_21AA20498);
  v39 = a2 + v37;
  v40 = v38;
  sub_21A4F1408(v39, &v13[v38], &qword_27CD2E7D0, &qword_21AA20498);
  v41 = *(v5 + 48);
  if (v41(v13, 1, v4) == 1)
  {
    if (v41(&v13[v40], 1, v4) == 1)
    {
      sub_21A4FB590(v13, &qword_27CD2E7D0, &qword_21AA20498);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_21A4F1408(v13, v10, &qword_27CD2E7D0, &qword_21AA20498);
  if (v41(&v13[v40], 1, v4) == 1)
  {
    sub_21A4F1558(v10, type metadata accessor for UrsaAdmissionResult);
LABEL_31:
    sub_21A4FB590(v13, &qword_27CD2E990, &qword_21AA21338);
    goto LABEL_35;
  }

  sub_21A4F1470(&v13[v40], v7, type metadata accessor for UrsaAdmissionResult);
  v42 = sub_21A4F8F38(v10, v7);
  sub_21A4F1558(v7, type metadata accessor for UrsaAdmissionResult);
  sub_21A4F1558(v10, type metadata accessor for UrsaAdmissionResult);
  sub_21A4FB590(v13, &qword_27CD2E7D0, &qword_21AA20498);
  if ((v42 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  if ((sub_21A4F79A4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_21A9ED0CC();
  sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v43 = sub_21A9ED2BC();
  return v43 & 1;
}

uint64_t sub_21A4F9660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrsaMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21A9ED4AC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21A9ED4AC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21A9ED4AC();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_21A9ED4AC();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_21A9ED4AC();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (v48 && (*v45 == *v47 && v46 == v48 || (sub_21A9ED4AC() & 1) != 0))
    {
      goto LABEL_49;
    }
  }

  else if (!v48)
  {
LABEL_49:
    sub_21A9ED0CC();
    sub_21A4F98E4(&qword_27CD2E970, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21A9ED2BC() & 1;
  }

  return 0;
}

uint64_t sub_21A4F98E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21A4FA494(uint64_t a1)
{
  sub_21A9ED0CC();
  if (v1 <= 0x3F)
  {
    sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A4FA55C(uint64_t a1)
{
  sub_21A4FA6D0(319, &qword_27CD2E908, type metadata accessor for UrsaRadarData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21A9ED0CC();
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_21A4FA9A0(319, &qword_2811F2BC0, MEMORY[0x277D849A8]);
        if (v4 <= 0x3F)
        {
          sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_21A4FA6D0(319, &qword_27CD2E910, type metadata accessor for UrsaAdmissionResult, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21A4FA6D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21A4FA75C(uint64_t a1)
{
  sub_21A9ED0CC();
  if (v1 <= 0x3F)
  {
    sub_21A4FA9A0(319, &qword_2811F2BD8, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BC0, MEMORY[0x277D849A8]);
      if (v3 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21A4FA874(uint64_t a1)
{
  sub_21A9ED0CC();
  if (v1 <= 0x3F)
  {
    sub_21A4FA9A0(319, &qword_2811F2BC0, MEMORY[0x277D849A8]);
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_21A4FA9A0(319, &qword_2811F2BD8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A4FA9A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21A9ED44C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21A4FAA40(uint64_t a1)
{
  sub_21A9ED0CC();
  if (v1 <= 0x3F)
  {
    sub_21A4FA6D0(319, &qword_27CD2E918, type metadata accessor for UrsaMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_21A4FA9A0(319, &qword_2811F2BD0, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t __swift_store_extra_inhabitant_index_70Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21A9ED0CC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E7D8, &qword_21AA204A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_21A4FADAC(uint64_t a1)
{
  sub_21A9ED0CC();
  if (v1 <= 0x3F)
  {
    sub_21A4FA6D0(319, &qword_27CD2E918, type metadata accessor for UrsaMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A9ED0CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_21A4FB038(uint64_t a1)
{
  sub_21A9ED0CC();
  if (v1 <= 0x3F)
  {
    sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A4FB128(uint64_t a1)
{
  sub_21A4FA6D0(319, &qword_2811F2BE0, type metadata accessor for UrsaIssue, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21A9ED0CC();
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD8, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_21A4FA9A0(319, &qword_2811F2BC0, MEMORY[0x277D849A8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A9ED0CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_61Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21A9ED0CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

void sub_21A4FB404(uint64_t a1)
{
  sub_21A9ED0CC();
  if (v1 <= 0x3F)
  {
    sub_21A4FA9A0(319, &qword_2811F2BC0, MEMORY[0x277D849A8]);
    if (v2 <= 0x3F)
    {
      sub_21A4FA9A0(319, &qword_2811F2BD0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_21A4FA9A0(319, qword_2811F2BE8, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_21A4FA9A0(319, &qword_2811F2BD8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21A4FB590(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id UrsaClient.__allocating_init(_:_:_:_:_:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = v9;
  v15 = objc_allocWithZone(v9);
  *&v15[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
  *&v15[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
  *&v15[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
  v16 = v15;
  v17 = sub_21A9ED2CC();
  v18 = [objc_opt_self() containerWithIdentifier_];

  *&v16[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_container] = v18;
  v19 = v18;
  v20 = sub_21A9ED2CC();

  v21 = [v19 codeServiceWithName_];

  v22 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService;
  *&v16[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService] = v21;
  v23 = v21;
  nullsub_1();
  *&v16[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client] = v24;
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v25 = sub_21A9ED25C();
  __swift_project_value_buffer(v25, qword_2811F8528);
  v26 = v16;
  v27 = sub_21A9ED23C();
  v28 = sub_21A9ED43C();

  if (os_log_type_enabled(v27, v28))
  {
    v49 = v10;
    v48 = a8;
    v29 = swift_slowAlloc();
    v47 = a7;
    v30 = swift_slowAlloc();
    v53 = v30;
    *v29 = 136315138;
    v31 = [*&v16[v22] serviceName];
    v32 = sub_21A9ED2DC();
    v33 = a5;
    v34 = a6;
    v36 = v35;

    v37 = sub_21A50AF9C(v32, v36, &v53);
    a6 = v34;
    a5 = v33;

    *(v29 + 4) = v37;
    _os_log_impl(&dword_21A4C6000, v27, v28, "running %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v38 = v30;
    a7 = v47;
    MEMORY[0x21CEDE430](v38, -1, -1);
    v39 = v29;
    a8 = v48;
    v10 = v49;
    MEMORY[0x21CEDE430](v39, -1, -1);
  }

  else
  {
  }

  v40 = &v26[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_crKey];
  *v40 = a2;
  *(v40 + 1) = a3;
  v41 = &v26[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_build];
  *v41 = a4;
  *(v41 + 1) = a5;
  v42 = &v26[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_device];
  *v42 = a6;
  *(v42 + 1) = a7;
  v43 = 1684099177;
  if ((a8 & 1) == 0)
  {
    v43 = 0x656E6F685069;
  }

  v44 = 0xE600000000000000;
  if (a8)
  {
    v44 = 0xE400000000000000;
  }

  v45 = &v26[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_platformName];
  *v45 = v43;
  v45[1] = v44;
  v26[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta] = a9 & 1;
  v54.receiver = v26;
  v54.super_class = v10;
  return objc_msgSendSuper2(&v54, sel_init);
}

id UrsaClient.init(_:_:_:_:_:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *&v9[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask] = 0;
  *&v9[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask] = 0;
  *&v9[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask] = 0;
  v14 = v9;
  v15 = sub_21A9ED2CC();
  v16 = [objc_opt_self() containerWithIdentifier_];

  *&v14[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_container] = v16;
  v17 = v16;
  v18 = sub_21A9ED2CC();

  v19 = [v17 codeServiceWithName_];

  v20 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService;
  *&v14[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_codeService] = v19;
  v21 = v19;
  nullsub_1();
  *&v14[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client] = v22;
  if (qword_2811F2E20 != -1)
  {
    swift_once();
  }

  v23 = a9;
  v24 = sub_21A9ED25C();
  __swift_project_value_buffer(v24, qword_2811F8528);
  v25 = v14;
  v26 = sub_21A9ED23C();
  v27 = sub_21A9ED43C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v47 = a8;
    v46 = swift_slowAlloc();
    v51 = v46;
    *v28 = 136315138;
    v29 = [*&v14[v20] serviceName];
    v30 = sub_21A9ED2DC();
    v31 = a5;
    v32 = a6;
    v33 = a7;
    v35 = v34;

    v36 = sub_21A50AF9C(v30, v35, &v51);
    a7 = v33;
    a6 = v32;
    a5 = v31;

    *(v28 + 4) = v36;
    _os_log_impl(&dword_21A4C6000, v26, v27, "running %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    a8 = v47;
    MEMORY[0x21CEDE430](v46, -1, -1);
    v37 = v28;
    v23 = a9;
    MEMORY[0x21CEDE430](v37, -1, -1);
  }

  else
  {
  }

  v38 = &v25[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_crKey];
  *v38 = a2;
  *(v38 + 1) = a3;
  v39 = &v25[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_build];
  *v39 = a4;
  *(v39 + 1) = a5;
  v40 = &v25[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_device];
  *v40 = a6;
  *(v40 + 1) = a7;
  v41 = 1684099177;
  if ((a8 & 1) == 0)
  {
    v41 = 0x656E6F685069;
  }

  v42 = 0xE600000000000000;
  if (a8)
  {
    v42 = 0xE400000000000000;
  }

  v43 = &v25[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_platformName];
  *v43 = v41;
  v43[1] = v42;
  v25[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta] = v23 & 1;
  v44 = type metadata accessor for UrsaClient();
  v52.receiver = v25;
  v52.super_class = v44;
  return objc_msgSendSuper2(&v52, sel_init);
}

void UrsaClient.shouldAdmit(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, void *), uint64_t a7)
{
  v8 = v7;
  v50 = a3;
  v51 = a2;
  v49 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = sub_21A9ED07C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v53 = sub_21A9ED05C();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  v22 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (a5)
  {
    v52 = a6;
    v23 = a7;
    v24 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask;
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask))
    {

      sub_21A50B8E4(&unk_282B5A220);
      sub_21A4FB590(&unk_282B5A240, &qword_27CD2E9F8, &qword_21AA213E8);
      sub_21A50B9E0();
      v25 = swift_allocError();
      *v26 = xmmword_21AA21370;
      *(v26 + 16) = 1;
      v27 = sub_21A9ED26C();

      v52(v25, v53, v21, v27);

      return;
    }

    v34 = sub_21A9ED39C();
    (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v37 = v53;
    v36[4] = v35;
    v36[5] = v37;
    v38 = v49;
    v36[6] = v21;
    v36[7] = v38;
    v39 = v52;
    v36[8] = v51;
    v36[9] = v22;
    v36[10] = a4;
    v36[11] = a5;
    v36[12] = v39;
    v36[13] = v23;
    v36[14] = v50;

    *(v8 + v24) = sub_21A506898(0, 0, v15, &unk_21AA213F0, v36);
  }

  else
  {
    v28 = *(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta);
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask;
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentAdmissionTask))
    {

      sub_21A50B8E4(&unk_282B5A258);
      sub_21A4FB590(&unk_282B5A278, &qword_27CD2E9F8, &qword_21AA213E8);
      sub_21A50B9E0();
      v31 = swift_allocError();
      *v32 = xmmword_21AA21370;
      *(v32 + 16) = 1;
      v33 = sub_21A9ED26C();

      a6(v31, v53, v21, v33);

      return;
    }

    v52 = a6;
    v40 = a7;
    if (v28)
    {
      v41 = 1635018082;
    }

    else
    {
      v41 = 0x67616C466F6ELL;
    }

    v42 = sub_21A9ED39C();
    (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v45 = v53;
    v44[4] = v43;
    v44[5] = v45;
    v46 = v49;
    v44[6] = v21;
    v44[7] = v46;
    v47 = v52;
    v44[8] = v51;
    v44[9] = v22;
    v44[10] = v41;
    v44[11] = v29;
    v44[12] = v47;
    v44[13] = v40;
    v44[14] = v50;

    *(v8 + v30) = sub_21A506898(0, 0, v15, &unk_21AA213E0, v44);
  }
}

void sub_21A4FC424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = sub_21A9ED01C();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_21A9ED2CC();
  (*(a5 + 16))(a5, v7, v8, a4);
}

void UrsaClient.periodicCheck(_:_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void), uint64_t a4, double a5)
{
  v6 = v5;
  v39 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_21A9ED07C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v18 = sub_21A9ED05C();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v21 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  if (!a2)
  {
    if (*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE600000000000000;
    }

    v28 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask;
    if (!*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
    {
      v31 = 1635018082;
      if (!*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
      {
        v31 = 0x67616C466F6ELL;
      }

      v38 = v31;
      v32 = v21;
      v33 = sub_21A9ED39C();
      (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      *(v35 + 32) = v34;
      *(v35 + 40) = v18;
      *(v35 + 48) = v20;
      *(v35 + 56) = a5;
      v37 = v38;
      v36 = v39;
      *(v35 + 64) = v32;
      *(v35 + 72) = v37;
      *(v35 + 80) = v27;
      *(v35 + 88) = v36;
      *(v35 + 96) = a4;

      *(v6 + v28) = sub_21A506898(0, 0, v13, &unk_21AA21400, v35);
      goto LABEL_13;
    }

LABEL_9:

    sub_21A50B9E0();
    v29 = swift_allocError();
    *v30 = xmmword_21AA21380;
    *(v30 + 16) = 1;
    v39(v29, v18, v20, 0);

    return;
  }

  v22 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask;
  if (*(v6 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
  {
    goto LABEL_9;
  }

  v38 = v21;
  v23 = sub_21A9ED39C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v24;
  *(v25 + 40) = v18;
  *(v25 + 48) = v20;
  *(v25 + 56) = a5;
  v26 = v39;
  *(v25 + 64) = v38;
  *(v25 + 72) = a1;
  *(v25 + 80) = a2;
  *(v25 + 88) = v26;
  *(v25 + 96) = a4;

  *(v6 + v22) = sub_21A506898(0, 0, v13, &unk_21AA21408, v25);
LABEL_13:
}

Swift::Void __swiftcall UrsaClient.cancel()()
{
  if (*(v0 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentPeriodicTask))
  {

    sub_21A9ED3AC();
  }
}

void UrsaClient.reportTTR(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, void), uint64_t a4)
{
  v5 = v4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_21A9ED07C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v16 = sub_21A9ED05C();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA21390;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v20 = sub_21A50B6E4(inited);
  swift_setDeallocating();
  sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
  if (*(v5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE600000000000000;
  }

  v22 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(v5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {

    sub_21A50B9E0();
    v23 = swift_allocError();
    *v24 = xmmword_21AA213A0;
    *(v24 + 16) = 1;
    v31(v23, v16, v18, 0);
  }

  else
  {
    v25 = 1635018082;
    if (!*(v5 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v25 = 0x67616C466F6ELL;
    }

    v30 = v25;
    v26 = sub_21A9ED39C();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v27;
    *(v28 + 40) = v16;
    *(v28 + 48) = v18;
    strcpy((v28 + 56), "tap-to-radar");
    *(v28 + 69) = 0;
    *(v28 + 70) = -5120;
    *(v28 + 72) = v20;
    v29 = v31;
    *(v28 + 80) = v30;
    *(v28 + 88) = v21;
    *(v28 + 96) = v29;
    *(v28 + 104) = a4;

    *(v5 + v22) = sub_21A506898(0, 0, v11, &unk_21AA21428, v28);
  }
}

void UrsaClient.reportPE(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, void), uint64_t a6)
{
  v7 = v6;
  v34 = a5;
  v35 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_21A9ED07C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v33 = sub_21A9ED05C();
  v20 = v19;
  (*(v16 + 8))(v18, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21AA213B0;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0x656372756F73;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = a3;
  *(inited + 88) = a4;

  v22 = sub_21A50B6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA08, &qword_21AA21418);
  swift_arrayDestroy();
  if (*(v7 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE600000000000000;
  }

  v24 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(v7 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {

    sub_21A50B9E0();
    v25 = swift_allocError();
    *v26 = xmmword_21AA213A0;
    *(v26 + 16) = 1;
    v34(v25, v33, v20, 0);
  }

  else
  {
    if (*(v7 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v27 = 1635018082;
    }

    else
    {
      v27 = 0x67616C466F6ELL;
    }

    v28 = sub_21A9ED39C();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v31 = v33;
    *(v30 + 32) = v29;
    *(v30 + 40) = v31;
    *(v30 + 48) = v20;
    strcpy((v30 + 56), "powerException");
    *(v30 + 71) = -18;
    *(v30 + 72) = v22;
    *(v30 + 80) = v27;
    *(v30 + 88) = v23;
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;

    *(v7 + v24) = sub_21A506898(0, 0, v14, &unk_21AA21430, v30);
  }
}

void UrsaClient.reportTelemetry(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, void), uint64_t a7)
{
  v8 = v7;
  v40 = a3;
  v41 = a6;
  v38 = a1;
  v39 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_21A9ED07C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A9ED06C();
  v19 = sub_21A9ED05C();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  if (!a5)
  {
    if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE600000000000000;
    }

    v29 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
    if (!*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
    {
      if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_isBeta))
      {
        v32 = 1635018082;
      }

      else
      {
        v32 = 0x67616C466F6ELL;
      }

      v33 = sub_21A9ED39C();
      (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v34;
      v35[5] = v19;
      v36 = v38;
      v35[6] = v21;
      v35[7] = v36;
      v37 = v40;
      v35[8] = v39;
      v35[9] = v37;
      v35[10] = v32;
      v35[11] = v28;
      v35[12] = v41;
      v35[13] = a7;

      *(v8 + v29) = sub_21A506898(0, 0, v14, &unk_21AA21438, v35);
      goto LABEL_14;
    }

LABEL_9:
    sub_21A50B9E0();
    v30 = swift_allocError();
    *v31 = xmmword_21AA213A0;
    *(v31 + 16) = 1;
    v41(v30, v19, v21, 0);

    return;
  }

  v22 = OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask;
  if (*(v8 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_currentTelemetryTask))
  {
    goto LABEL_9;
  }

  v23 = sub_21A9ED39C();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  v25[5] = v19;
  v26 = v38;
  v25[6] = v21;
  v25[7] = v26;
  v27 = v40;
  v25[8] = v39;
  v25[9] = v27;
  v25[10] = a4;
  v25[11] = a5;
  v25[12] = v41;
  v25[13] = a7;

  *(v8 + v22) = sub_21A506898(0, 0, v14, &unk_21AA21440, v25);
LABEL_14:
}

Swift::Void __swiftcall UrsaClient.stressTest()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2E9F0, &qword_21AA213D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_21A9ED39C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_21A50452C(0, 0, v2, &unk_21AA21450, v5);
}

uint64_t sub_21A4FD918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[20] = type metadata accessor for UrsaTelemetryRequest(0);
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for UrsaPeriodicRequest(0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v5 = sub_21A9ED04C();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for UrsaResult(0);
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for UrsaAdmissionRequest(0);
  v4[37] = swift_task_alloc();
  v4[38] = type metadata accessor for UrsaMetadata(0);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA48, &qword_21AA21658);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v7 = sub_21A9ED07C();
  v4[48] = v7;
  v4[49] = *(v7 - 8);
  v4[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A4FDC24, 0, 0);
}

uint64_t sub_21A4FDC24(uint64_t a1)
{
  v191 = v1;
  v3 = v1[49];
  v2 = v1[50];
  v4 = v1[48];
  sub_21A9ED06C();
  v1[51] = sub_21A9ED05C();
  v1[52] = v5;
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = 0;
  while (1)
  {
    v1[53] = v6;
    v9 = &unk_282B5A290 + 16 * v6;
    v10 = *(v9 + 4);
    v1[54] = v10;
    v11 = *(v9 + 5);
    v1[55] = v11;
    v12 = qword_2811F2E20;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_21A9ED25C();
    v1[56] = __swift_project_value_buffer(v13, qword_2811F8528);

    v14 = sub_21A9ED23C();
    v15 = sub_21A9ED41C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v189 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21A50AF9C(v10, v11, &v189);
      _os_log_impl(&dword_21A4C6000, v14, v15, "stress test for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x21CEDE430](v17, -1, -1);
      MEMORY[0x21CEDE430](v16, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v1[57] = Strong;
    if (Strong)
    {
      v103 = Strong;
      v104 = 0x61636F4C74736574;
      v105 = sub_21A50B6E4(MEMORY[0x277D84F90]);
      if (v10 != 0x61636F4C74736574 || v11 != 0xEE00726F7272456CLL)
      {
        v106 = v105;
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v140 = v1[51];
          v139 = v1[52];
          v141 = v1[41];
          v142 = sub_21A509AA0(v106);
          v180 = v143;
          v182 = v142;

          v144 = swift_task_alloc();
          v144[2] = v103;
          v144[3] = v140;
          v144[4] = v139;
          v144[5] = v10;
          v144[6] = v11;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);
          sub_21A9ED19C();

          v145 = swift_task_alloc();
          v145[2] = v141;
          v145[3] = 0x6554737365727473;
          v145[4] = 0xEB00000000447473;
          v145[5] = v182;
          v145[6] = v180;
          sub_21A50D9F0(&qword_27CD2E8A0, type metadata accessor for UrsaAdmissionRequest, &unk_21AA20A48);
          sub_21A9ED19C();

          v146 = *&v103[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
          v147 = swift_task_alloc();
          v1[58] = v147;
          *v147 = v1;
          v147[1] = sub_21A4FF41C;
          v148 = v1[47];
          v149 = v1[37];

          return sub_21A50E01C(v148, v149, v146);
        }

        v104 = v10;
      }

      v189 = 0;
      v190 = 0xE000000000000000;
      sub_21A9ED46C();

      v189 = 0xD00000000000001CLL;
      v190 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v104, v11);

      v108 = v189;
      v107 = v190;
      sub_21A50B9E0();
      swift_allocError();
      *v109 = v108;
      *(v109 + 8) = v107;
      *(v109 + 16) = 0;
      swift_willThrow();

      goto LABEL_49;
    }

    v19 = *(v1[29] + 56);
    v19(v1[47], 1, 1, v1[28]);
    v1[60] = v19;
    v20 = v1[46];
    v21 = v1[28];
    v22 = v1[29];
    sub_21A4F1408(v1[47], v20, &qword_27CD2EA48, &qword_21AA21658);
    v23 = *(v22 + 48);
    v1[61] = v23;
    v1[62] = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v23(v20, 1, v21) == 1)
    {
      sub_21A4FB590(v1[46], &qword_27CD2EA48, &qword_21AA21658);

      v24 = sub_21A9ED23C();
      v25 = sub_21A9ED42C();

      if (os_log_type_enabled(v24, v25))
      {
        v27 = v1[54];
        v26 = v1[55];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v189 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_21A50AF9C(v27, v26, &v189);
        _os_log_impl(&dword_21A4C6000, v24, v25, "stress test for admission failed for %s empty result", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x21CEDE430](v29, -1, -1);
        MEMORY[0x21CEDE430](v28, -1, -1);
      }
    }

    else
    {
      v31 = v1[34];
      v30 = v1[35];
      sub_21A50DA38(v1[46], v30);
      sub_21A50DAFC(v30, v31, type metadata accessor for UrsaResult);
      v32 = sub_21A9ED23C();
      v33 = sub_21A9ED41C();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v1[34];
      v36 = v1[35];
      if (v34)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v189 = v38;
        *v37 = 136315138;
        v185 = v36;
        v39 = sub_21A50A2A0();
        v41 = v40;
        sub_21A50DA9C(v35, type metadata accessor for UrsaResult);
        v42 = sub_21A50AF9C(v39, v41, &v189);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_21A4C6000, v32, v33, "admission %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x21CEDE430](v38, -1, -1);
        MEMORY[0x21CEDE430](v37, -1, -1);

        v43 = v185;
      }

      else
      {

        sub_21A50DA9C(v35, type metadata accessor for UrsaResult);
        v43 = v36;
      }

      sub_21A50DA9C(v43, type metadata accessor for UrsaResult);
    }

    v44 = swift_unknownObjectWeakLoadStrong();
    v1[63] = v44;
    if (v44)
    {
      break;
    }

    v45 = v1[45];
    v46 = v1[28];
    sub_21A4FB590(v1[47], &qword_27CD2EA48, &qword_21AA21658);
    v19(v45, 1, 1, v46);
    v47 = v1[61];
    v48 = v1[47];
    v49 = v1[44];
    v50 = v1[28];
    sub_21A50D92C(v1[45], v48);
    sub_21A4F1408(v48, v49, &qword_27CD2EA48, &qword_21AA21658);
    if (v47(v49, 1, v50) == 1)
    {
      sub_21A4FB590(v1[44], &qword_27CD2EA48, &qword_21AA21658);

      v51 = sub_21A9ED23C();
      v52 = sub_21A9ED42C();

      if (os_log_type_enabled(v51, v52))
      {
        v54 = v1[54];
        v53 = v1[55];
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v189 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_21A50AF9C(v54, v53, &v189);
        _os_log_impl(&dword_21A4C6000, v51, v52, "stress test for periodic failed for %s empty result", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x21CEDE430](v56, -1, -1);
        MEMORY[0x21CEDE430](v55, -1, -1);
      }
    }

    else
    {
      v58 = v1[32];
      v57 = v1[33];
      sub_21A50DA38(v1[44], v57);
      sub_21A50DAFC(v57, v58, type metadata accessor for UrsaResult);
      v59 = sub_21A9ED23C();
      v60 = sub_21A9ED41C();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v1[32];
      v63 = v1[33];
      if (v61)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v189 = v65;
        *v64 = 136315138;
        v66 = sub_21A50A2A0();
        v68 = v67;
        sub_21A50DA9C(v62, type metadata accessor for UrsaResult);
        v69 = sub_21A50AF9C(v66, v68, &v189);

        *(v64 + 4) = v69;
        _os_log_impl(&dword_21A4C6000, v59, v60, "periodic %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x21CEDE430](v65, -1, -1);
        MEMORY[0x21CEDE430](v64, -1, -1);
      }

      else
      {

        sub_21A50DA9C(v62, type metadata accessor for UrsaResult);
      }

      sub_21A50DA9C(v63, type metadata accessor for UrsaResult);
    }

    v70 = swift_unknownObjectWeakLoadStrong();
    v1[67] = v70;
    if (v70)
    {
      v127 = v70;
      v128 = 0x61636F4C74736574;
      v130 = v1[54];
      v129 = v1[55];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD2EA00, &qword_21AA21410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21AA21390;
      *(inited + 32) = 1734437990;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v130;
      *(inited + 56) = v129;

      v132 = sub_21A50B6E4(inited);
      swift_setDeallocating();
      sub_21A4FB590(inited + 32, &qword_27CD2EA08, &qword_21AA21418);
      if (v130 != 0x61636F4C74736574 || v129 != 0xEE00726F7272456CLL)
      {
        if ((sub_21A9ED4AC() & 1) == 0)
        {
          v165 = v1[54];
          v164 = v1[55];
          v184 = *(v1 + 51);
          v166 = v1[39];
          v187 = sub_21A509AA0(v132);
          v168 = v167;

          v169 = swift_task_alloc();
          *(v169 + 16) = v127;
          *(v169 + 24) = v184;
          *(v169 + 40) = v165;
          *(v169 + 48) = v164;
          sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);
          sub_21A9ED19C();

          v170 = swift_task_alloc();
          v170[2] = v166;
          v170[3] = 0x6554737365727473;
          v170[4] = 0xEA00000000007473;
          v170[5] = v187;
          v170[6] = v168;
          sub_21A50D9F0(&qword_27CD2E8D0, type metadata accessor for UrsaTelemetryRequest, &unk_21AA20D18);
          sub_21A9ED19C();

          v171 = *&v127[OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client];
          v172 = swift_task_alloc();
          v1[68] = v172;
          *v172 = v1;
          v172[1] = sub_21A502A1C;
          v173 = v1[43];
          v174 = v1[21];

          return sub_21A50EC34(v173, v174, v171);
        }

        v128 = v1[54];
      }

      v133 = v1[55];

      v189 = 0;
      v190 = 0xE000000000000000;
      sub_21A9ED46C();

      v189 = 0xD00000000000001CLL;
      v190 = 0x800000021AA23780;
      MEMORY[0x21CEDBCA0](v128, v133);

      v135 = v189;
      v134 = v190;
      sub_21A50B9E0();
      swift_allocError();
      *v136 = v135;
      *(v136 + 8) = v134;
      *(v136 + 16) = 0;
      swift_willThrow();

      v126 = v1[47];
      goto LABEL_48;
    }

    v71 = v1[60];
    v72 = v1[43];
    v73 = v1[28];
    sub_21A4FB590(v1[47], &qword_27CD2EA48, &qword_21AA21658);
    v71(v72, 1, 1, v73);
    v74 = v1[61];
    v75 = v1[47];
    v76 = v1[42];
    v77 = v1[28];
    sub_21A50D92C(v1[43], v75);
    sub_21A4F1408(v75, v76, &qword_27CD2EA48, &qword_21AA21658);
    v78 = v74(v76, 1, v77);
    v79 = v1[42];
    if (v78 == 1)
    {
      sub_21A4FB590(v1[42], &qword_27CD2EA48, &qword_21AA21658);

      v80 = sub_21A9ED23C();
      v81 = sub_21A9ED42C();

      v82 = os_log_type_enabled(v80, v81);
      v83 = v1[55];
      if (v82)
      {
        v84 = v1[54];
        v85 = v1[47];
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v189 = v87;
        *v86 = 136315138;
        v88 = sub_21A50AF9C(v84, v83, &v189);

        *(v86 + 4) = v88;
        _os_log_impl(&dword_21A4C6000, v80, v81, "stress test for telemetry failed for %s empty result", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x21CEDE430](v87, -1, -1);
        MEMORY[0x21CEDE430](v86, -1, -1);

        v8 = v85;
      }

      else
      {
        v7 = v1[47];

        v8 = v7;
      }
    }

    else
    {
      v90 = v1[30];
      v89 = v1[31];

      sub_21A50DA38(v79, v89);
      sub_21A50DAFC(v89, v90, type metadata accessor for UrsaResult);
      v91 = sub_21A9ED23C();
      v92 = sub_21A9ED41C();
      v93 = os_log_type_enabled(v91, v92);
      v94 = v1[47];
      v95 = v1[30];
      v96 = v1[31];
      if (v93)
      {
        v97 = swift_slowAlloc();
        v186 = v94;
        v98 = swift_slowAlloc();
        v189 = v98;
        *v97 = 136315138;
        v99 = sub_21A50A2A0();
        v101 = v100;
        sub_21A50DA9C(v95, type metadata accessor for UrsaResult);
        v102 = sub_21A50AF9C(v99, v101, &v189);

        *(v97 + 4) = v102;
        _os_log_impl(&dword_21A4C6000, v91, v92, "telemetry %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        MEMORY[0x21CEDE430](v98, -1, -1);
        MEMORY[0x21CEDE430](v97, -1, -1);

        sub_21A50DA9C(v96, type metadata accessor for UrsaResult);
        v8 = v186;
      }

      else
      {

        sub_21A50DA9C(v95, type metadata accessor for UrsaResult);
        sub_21A50DA9C(v96, type metadata accessor for UrsaResult);
        v8 = v94;
      }
    }

    sub_21A4FB590(v8, &qword_27CD2EA48, &qword_21AA21658);
    v6 = v1[53] + 1;
    if (v1[53] == 10)
    {

      swift_arrayDestroy();

      v137 = v1[1];
      goto LABEL_51;
    }
  }

  v188 = v44;
  v110 = 0x61636F4C74736574;
  v112 = v1[54];
  v111 = v1[55];
  v114 = v1[26];
  v113 = v1[27];
  v115 = v1[25];
  sub_21A9ED03C();
  sub_21A9ED02C();
  v117 = v116;
  (*(v114 + 8))(v113, v115);
  v118 = sub_21A50B6E4(MEMORY[0x277D84F90]);
  v1[64] = v118;
  if (v112 == 0x61636F4C74736574 && v111 == 0xEE00726F7272456CLL)
  {
LABEL_42:
    v120 = v1[55];
    v189 = 0;
    v190 = 0xE000000000000000;
    sub_21A9ED46C();

    v189 = 0xD00000000000001CLL;
    v190 = 0x800000021AA23780;
    MEMORY[0x21CEDBCA0](v110, v120);
    v122 = v189;
    v121 = v190;
    sub_21A50B9E0();
    swift_allocError();
    *v123 = v122;
    *(v123 + 8) = v121;
    *(v123 + 16) = 0;
    swift_willThrow();
    v124 = v1[63];
    v125 = v1[47];

    v126 = v125;
LABEL_48:
    sub_21A4FB590(v126, &qword_27CD2EA48, &qword_21AA21658);
LABEL_49:

    v137 = v1[1];
LABEL_51:

    return v137();
  }

  v119 = v118;
  if (sub_21A9ED4AC())
  {
    v110 = v1[54];
    goto LABEL_42;
  }

  v150 = v1[55];
  v151 = v1[54];
  v179 = *(v1 + 51);
  v152 = v1[40];
  v181 = v1[24];
  v183 = v1[23];
  v153 = sub_21A509AA0(v119);
  v155 = v154;
  v156 = swift_task_alloc();
  *(v156 + 16) = v188;
  *(v156 + 24) = v179;
  *(v156 + 40) = v151;
  *(v156 + 48) = v150;
  sub_21A50D9F0(&qword_27CD2E848, type metadata accessor for UrsaMetadata, &unk_21AA204A8);
  sub_21A9ED19C();

  v157 = swift_task_alloc();
  v157[2] = v152;
  v157[3] = v117;
  v157[4] = v153;
  v157[5] = v155;
  sub_21A50D9F0(&qword_27CD2E8B8, type metadata accessor for UrsaPeriodicRequest, &unk_21AA20BB0);
  sub_21A9ED19C();

  sub_21A50DAFC(v181, v183, type metadata accessor for UrsaPeriodicRequest);
  v158 = sub_21A9ED23C();
  v159 = sub_21A9ED40C();
  v160 = os_log_type_enabled(v158, v159);
  v161 = v1[23];
  if (v160)
  {
    v162 = swift_slowAlloc();
    *v162 = 134218240;
    *(v162 + 4) = v117;
    *(v162 + 12) = 2048;
    v163 = sub_21A4F1684();
    sub_21A50DA9C(v161, type metadata accessor for UrsaPeriodicRequest);
    *(v162 + 14) = v163;
    _os_log_impl(&dword_21A4C6000, v158, v159, "periodic since %f req %f", v162, 0x16u);
    MEMORY[0x21CEDE430](v162, -1, -1);
  }

  else
  {

    sub_21A50DA9C(v161, type metadata accessor for UrsaPeriodicRequest);
  }

  v175 = *(v188 + OBJC_IVAR____TtC21PowerlogLiteOperators10UrsaClient_client);
  v176 = swift_task_alloc();
  v1[65] = v176;
  *v176 = v1;
  v176[1] = sub_21A500F00;
  v177 = v1[45];
  v178 = v1[24];

  return sub_21A50E6A0(v177, v178, v175);
}