@interface SCProcessor
- (SCProcessor)initWithStartPacket:(const void *)packet ofLength:(unint64_t)length delegate:(id)delegate withSignalQualityMetricsEnabled:(BOOL)enabled bypassingAlgorithms:(BOOL)algorithms forWindbreaker:(BOOL)windbreaker bootDate:(id)date hardwareModel:(id)self0;
- (SCProcessorDelegate)delegate;
- (id)dictionaryForAnalytics:(const SCAnalytics *)analytics sessionDuration:(double)duration systemInterface:(id)interface;
- (uint64_t)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:;
- (void)handleAbort:(unsigned __int8)abort withAnalytics:(const void *)analytics;
- (void)handleMotionStatusChange:(BOOL)change;
- (void)handlePostureStatusChange:(BOOL)change;
- (void)handleResult:(const Result *)result withAnalytics:(const void *)analytics;
- (void)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:;
- (void)processPacket:(const void *)packet ofLength:(unint64_t)length;
- (void)windbreakerSessionDidAbortForReason:(unsigned __int8)reason;
- (void)windbreakerSessionDidComplete;
@end

@implementation SCProcessor

- (SCProcessor)initWithStartPacket:(const void *)packet ofLength:(unint64_t)length delegate:(id)delegate withSignalQualityMetricsEnabled:(BOOL)enabled bypassingAlgorithms:(BOOL)algorithms forWindbreaker:(BOOL)windbreaker bootDate:(id)date hardwareModel:(id)self0
{
  windbreakerCopy = windbreaker;
  algorithmsCopy = algorithms;
  v61 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  dateCopy = date;
  modelCopy = model;
  v45.receiver = self;
  v45.super_class = SCProcessor;
  v18 = [(SCProcessor *)&v45 init];
  v19 = v18;
  if (v18)
  {
    v20 = objc_storeWeak(&v18->_delegate, delegateCopy);
    if (length == 112 || length == 115)
    {
      v19->_bypassAlgorithms = algorithmsCopy;
      if (algorithmsCopy)
      {
        v21 = sc_get_log(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2647F6000, v21, OS_LOG_TYPE_DEFAULT, "note that the algorithms are being bypassed", buf, 2u);
        }
      }

      v19->_forWindbreaker = windbreakerCopy;
      if (windbreakerCopy)
      {
        v22 = sc_get_log(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = 1;
          _os_log_impl(&dword_2647F6000, v22, OS_LOG_TYPE_DEFAULT, "processor is for windbreaker (i.e accel only): %u", buf, 8u);
        }

        v23 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:409600];
        rawDataForWindbreaker = v19->_rawDataForWindbreaker;
        v19->_rawDataForWindbreaker = v23;

        LOWORD(v53) = 5;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v53 length:2];
        v25 = [modelCopy dataUsingEncoding:4];
        if (!v25)
        {
          v25 = objc_opt_new();
        }

        LODWORD(v46) = 214;
        WORD1(v46) = [v25 length];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v46 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendData:v25];
        *buf = 0;
        *v60 = 24000000;
        *&v60[8] = 0;
        [dateCopy timeIntervalSinceReferenceDate];
        *&v60[4] = v26;
        LODWORD(v46) = 1310925;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v46 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:buf length:20];
        if (length == 112)
        {
          v27 = 276;
        }

        else
        {
          v27 = 284;
        }

        LOWORD(v46) = v27;
        WORD1(v46) = length;
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:&v46 length:4];
        [(NSMutableData *)v19->_rawDataForWindbreaker appendBytes:packet length:length];
      }

      objc_initWeak(&location, v19);
      objc_copyWeak(&to, &location);
      objc_copyWeak(&v42, &location);
      objc_copyWeak(&v41, &location);
      objc_copyWeak(&v40, &location);
      objc_copyWeak(&v39, &location);
      objc_copyWeak(&v38, &location);
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      memset(v58, 0, 21);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0;
      if (length == 112)
      {
        v28 = *(packet + 59);
        v29 = *(packet + 91);
        v57 = *(packet + 75);
        v58[0] = v29;
        *(v58 + 13) = *(packet + 13);
        v30 = *(packet + 27);
        v53 = *(packet + 11);
        v54 = v30;
        v55 = *(packet + 43);
        v56 = v28;
        v31 = modelCopy;
        [modelCopy UTF8String];
        operator new();
      }

      v33 = *(packet + 59);
      v34 = *(packet + 91);
      v50 = *(packet + 75);
      v51 = v34;
      v52 = *(packet + 107);
      v35 = *(packet + 27);
      v46 = *(packet + 11);
      v47 = v35;
      v48 = *(packet + 43);
      v49 = v33;
      v36 = modelCopy;
      [modelCopy UTF8String];
      operator new();
    }

    v32 = sc_get_log(v20);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [SCProcessor initWithStartPacket:length ofLength:v32 delegate:? withSignalQualityMetricsEnabled:? bypassingAlgorithms:? forWindbreaker:? bootDate:? hardwareModel:?];
    }
  }

  return 0;
}

- (void)handleResult:(const Result *)result withAnalytics:(const void *)analytics
{
  v6 = *result;
  p_var1 = &result->var1;
  v7 = *&v6;
  v11 = v6;
  if (v6.var0 < 70.0)
  {
    *&v7 = 1.0;
  }

  v10 = LODWORD(v7);
  scandium::convert_analytics_to_objc(analytics, 0, p_var1, &v10, 1, &v9, v7);
  delegate = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  [delegate handleResult:&v11 withAnalytics:&v9 atTimestamp:?];

  self->_expended = 1;
  SCAnalytics::~SCAnalytics(&v9);
}

- (void)windbreakerSessionDidComplete
{
  delegate = [(SCProcessor *)self delegate];
  rawDataForWindbreaker = self->_rawDataForWindbreaker;
  [(SCProcessor *)self currentTimestamp];
  [delegate windbreakerSessionDidCompleteWithRawDataRecorded:rawDataForWindbreaker atTimestamp:?];

  self->_expended = 1;
}

- (void)windbreakerSessionDidAbortForReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  delegate = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  if (reasonCopy - 1 >= 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = reasonCopy;
  }

  [delegate handleAbort:v6 withAnalytics:0 atTimestamp:?];

  self->_expended = 1;
}

- (void)handleAbort:(unsigned __int8)abort withAnalytics:(const void *)analytics
{
  if ((abort - 1) >= 0xA)
  {
    abortCopy = 0;
  }

  else
  {
    abortCopy = abort;
  }

  scandium::convert_analytics_to_objc(analytics, abortCopy | 0x100, 0, 0, 0, &v8, v4);
  delegate = [(SCProcessor *)self delegate];
  [(SCProcessor *)self currentTimestamp];
  [delegate handleAbort:abortCopy withAnalytics:&v8 atTimestamp:?];

  self->_expended = 1;
  SCAnalytics::~SCAnalytics(&v8);
}

- (void)handleMotionStatusChange:(BOOL)change
{
  changeCopy = change;
  forBackground = [(SCProcessor *)self forBackground];
  if (forBackground)
  {
    v6 = sc_get_log(forBackground);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCProcessor *)v6 handleMotionStatusChange:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  else
  {
    delegate = [(SCProcessor *)self delegate];
    [(SCProcessor *)self currentTimestamp];
    [delegate handleMotionStatusChange:changeCopy atTimestamp:?];
  }
}

- (void)handlePostureStatusChange:(BOOL)change
{
  changeCopy = change;
  forBackground = [(SCProcessor *)self forBackground];
  if (forBackground)
  {
    v6 = sc_get_log(forBackground);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCProcessor *)v6 handlePostureStatusChange:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  else
  {
    delegate = [(SCProcessor *)self delegate];
    [(SCProcessor *)self currentTimestamp];
    [delegate handlePostureStatusChange:changeCopy atTimestamp:?];
  }
}

- (void)processPacket:(const void *)packet ofLength:(unint64_t)length
{
  v26 = *MEMORY[0x277D85DE8];
  if (length == 247)
  {
    p_processor = &self->_processor;
    if (self->_processor.__ptr_)
    {
      if (self->_forWindbreaker)
      {
        LODWORD(buf.var0) = 16187667;
        [(NSMutableData *)self->_rawDataForWindbreaker appendBytes:&buf length:4];
        [(NSMutableData *)self->_rawDataForWindbreaker appendBytes:packet length:247];
      }

      v7 = *(packet + 13);
      v23[12] = *(packet + 12);
      v23[13] = v7;
      v24[0] = *(packet + 14);
      *(v24 + 15) = *(packet + 239);
      v8 = *(packet + 9);
      v23[8] = *(packet + 8);
      v23[9] = v8;
      v9 = *(packet + 11);
      v23[10] = *(packet + 10);
      v23[11] = v9;
      v10 = *(packet + 5);
      v23[4] = *(packet + 4);
      v23[5] = v10;
      v11 = *(packet + 7);
      v23[6] = *(packet + 6);
      v23[7] = v11;
      v12 = *(packet + 1);
      v23[0] = *packet;
      v23[1] = v12;
      v13 = *(packet + 3);
      v23[2] = *(packet + 2);
      v23[3] = v13;
      if (self->_bypassAlgorithms)
      {
        frameCount = self->_frameCount;
        if (frameCount == scandium::Processor::max_packet_count(self->_processor.__ptr_) - 1)
        {
          v22 = 0x4270000042C80000;
          bzero(&buf, 0x3F8uLL);
          delegate = [(SCProcessor *)self delegate];
          [(SCProcessor *)self currentTimestamp];
          [delegate handleResult:&v22 withAnalytics:&buf atTimestamp:?];

          self->_expended = 1;
          SCAnalytics::~SCAnalytics(&buf);
        }
      }

      else
      {
        scandium::Processor::process(self->_processor.__ptr_, v23);
        v18 = self->_frameCount;
        v19 = scandium::Processor::max_packet_count(self->_processor.__ptr_);
        if (v18 == v19 - 1 && !self->_expended)
        {
          v20 = sc_get_log(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            [[(SCProcessor *)self forBackground] processPacket:&buf ofLength:v20];
          }

          delegate2 = [(SCProcessor *)self delegate];
          [(SCProcessor *)self currentTimestamp];
          [delegate2 handleAbort:8 withAnalytics:0 atTimestamp:?];

          self->_expended = 1;
        }
      }

      ++self->_frameCount;
      if (self->_expended)
      {
        std::unique_ptr<scandium::Processor>::reset[abi:ne200100](p_processor, 0);
      }
    }
  }

  else
  {
    v17 = sc_get_log(self);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SCProcessor processPacket:length ofLength:v17];
    }
  }
}

- (id)dictionaryForAnalytics:(const SCAnalytics *)analytics sessionDuration:(double)duration systemInterface:(id)interface
{
  v342 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if (self->_bypassAlgorithms)
  {
    v9 = MEMORY[0x277CBEC10];
  }

  else
  {
    if ([(SCProcessor *)self forBackground])
    {
      v223 = *&analytics->var12;
      v222[0] = @"agcOpcDuration";
      v222[1] = @"agcOpcGreenSampleRate";
      v222[2] = @"agcOpcNumConverged";
      v222[3] = @"agcOpcNumRetries";
      var14 = analytics->var14;
      var15 = analytics->var15;
      v225 = var14;
      v222[4] = @"bailoutPoint";
      v222[5] = @"droppedSessionWindowCpmsTotalLength";
      var46 = analytics->var46;
      var47 = analytics->var47;
      var19 = analytics->var19;
      var18 = analytics->var18;
      v227 = var46;
      v222[6] = @"droppedSessionWindowCpmsMaxSegmentLength";
      v222[7] = @"droppedSessionWindowSaturationMaxSegmentLength";
      var48 = analytics->var48;
      var49 = analytics->var49;
      v228 = var47;
      v229 = var49;
      v222[8] = @"droppedSessionWindowDownTotalLength";
      v222[9] = @"droppedSessionWindowSaturationTotalLength";
      var57 = analytics->var57;
      var56 = analytics->var56;
      v231 = var48;
      v222[10] = @"droppedWindow0CpmsTotalLength";
      v222[11] = @"droppedWindow0SaturationTotalLength";
      var51 = analytics->var51;
      var50 = analytics->var50;
      v233 = var51;
      v222[12] = @"droppedWindow1CpmsTotalLength";
      v222[13] = @"droppedWindow1SaturationTotalLength";
      var53 = analytics->var53;
      var52 = analytics->var52;
      v235 = var53;
      v222[14] = @"droppedWindow2CpmsTotalLength";
      v222[15] = @"droppedWindow2SaturationTotalLength";
      var55 = analytics->var55;
      var54 = analytics->var54;
      v237 = var55;
      v222[16] = @"earlyBailout";
      v222[17] = @"highFrequencyWindow";
      v238 = var19;
      v239 = var57;
      var58 = analytics->var58;
      v222[18] = @"highFrequencyWindowLength";
      v222[19] = @"iledGreen";
      var121 = analytics->var121;
      v240 = var58;
      v241 = var121;
      var119 = analytics->var119;
      v222[20] = @"iledIr";
      v222[21] = @"iledRed";
      v23 = analytics->var120;
      v242 = var119;
      v243 = v23;
      v222[22] = @"incompleteReason";
      v24 = numberOrNsNull(analytics->var25);
      v244 = v24;
      v222[23] = @"internalTemperature";
      v25 = numberOrNsNull(analytics->var20);
      var33 = analytics->var33;
      v245 = v25;
      v246 = var33;
      v222[24] = @"irWavelength";
      v222[25] = @"mavMax1s";
      var123 = analytics->var123;
      v254 = *&analytics->var35;
      v28 = *&analytics->var124;
      v222[26] = @"mavMean1s";
      v222[27] = @"mavMedian1s";
      var122 = analytics->var122;
      v247 = var123;
      v249 = var122;
      v222[28] = @"mavMin1s";
      v222[29] = @"mavStd1s";
      var83 = analytics->var83;
      var126 = analytics->var126;
      v251 = var83;
      v222[30] = @"maxChannelConfidenceLong";
      v222[31] = @"maxChannelConfidenceShortIR";
      var82 = analytics->var82;
      var81 = analytics->var81;
      v253 = var82;
      v222[32] = @"maxChannelConfidenceShortRed";
      v222[33] = @"meanAccelX";
      v222[34] = @"meanAccelY";
      v222[35] = @"meanAccelZ";
      var45 = analytics->var45;
      var38 = analytics->var38;
      var37 = analytics->var37;
      v256 = var45;
      v222[36] = @"meanPerfusionIndexGreenShort";
      v222[37] = @"meanPerfusionIndexIrLong";
      var42 = analytics->var42;
      var41 = analytics->var41;
      v258 = var42;
      v222[38] = @"meanPerfusionIndexIrShort";
      v222[39] = @"meanPerfusionIndexRedLong";
      var44 = analytics->var44;
      var43 = analytics->var43;
      v260 = var44;
      v222[40] = @"meanPerfusionIndexRedShort";
      v222[41] = @"meanSpO2Long";
      var39 = analytics->var39;
      var40 = analytics->var40;
      v262 = var38;
      v248 = v28;
      v222[42] = @"meanSpO2ShortIR";
      v222[43] = @"meanSpO2ShortRed";
      var80 = analytics->var80;
      v263 = var39;
      v264 = var80;
      v222[44] = @"medianChannelConfidenceLong";
      v222[45] = @"medianChannelConfidenceShortIR";
      var79 = analytics->var79;
      v265 = analytics->var78;
      v266 = var79;
      v222[46] = @"medianChannelConfidenceShortRed";
      v222[47] = @"medianGIRPIR";
      var84 = analytics->var84;
      var86 = analytics->var86;
      v268 = var84;
      v222[48] = @"medianMeasurementConfidence";
      v222[49] = @"medianWeightedStdDev";
      var77 = analytics->var77;
      var85 = analytics->var85;
      v270 = var77;
      v222[50] = @"minChannelConfidenceLong";
      v222[51] = @"minChannelConfidenceShortIR";
      var76 = analytics->var76;
      var75 = analytics->var75;
      v272 = var76;
      v222[52] = @"minChannelConfidenceShortRed";
      v222[53] = @"numChannelsPassingGIRPIRMax";
      var9 = analytics->var9;
      var8 = analytics->var8;
      v274 = var9;
      v222[54] = @"numChannelsPassingGIRPIRMin";
      v222[55] = @"numChannelsPassingSNRMax";
      var60 = analytics->var60;
      var59 = analytics->var59;
      v276 = var60;
      v222[56] = @"numChannelsPassingSNRMaxLong";
      v222[57] = @"numChannelsPassingSNRMaxShortIR";
      var62 = analytics->var62;
      var61 = analytics->var61;
      v278 = var62;
      v222[58] = @"numChannelsPassingSNRMaxShortRed";
      v222[59] = @"numChannelsPassingSNRMin";
      var64 = analytics->var64;
      var63 = analytics->var63;
      v280 = var64;
      v222[60] = @"numChannelsPassingSNRMinLong";
      v222[61] = @"numChannelsPassingSNRMinShortIR";
      var66 = analytics->var66;
      var65 = analytics->var65;
      v282 = var66;
      v222[62] = @"numChannelsPassingSNRMinShortRed";
      v222[63] = @"numFailedWinAggGIRPIR";
      v222[64] = @"numFailedWinStd";
      var29 = analytics->var29;
      var28 = analytics->var28;
      v284 = var29;
      v222[65] = @"numHighConfidenceChannelsMax";
      var67 = analytics->var67;
      v222[66] = @"numHighConfidenceChannelsMaxLong";
      var73 = analytics->var73;
      v222[67] = @"numHighConfidenceChannelsMaxShortIR";
      var69 = analytics->var69;
      v222[68] = @"numHighConfidenceChannelsMaxShortRed";
      var71 = analytics->var71;
      v222[69] = @"numHighConfidenceChannelsMin";
      var68 = analytics->var68;
      v222[70] = @"numHighConfidenceChannelsMinLong";
      var74 = analytics->var74;
      v222[71] = @"numHighConfidenceChannelsMinShortIR";
      v291 = analytics->var70;
      v222[72] = @"numHighConfidenceChannelsMinShortRed";
      var72 = analytics->var72;
      v222[73] = @"numSuccessfulWindows";
      var16 = analytics->var16;
      v222[74] = @"numValidChannelsMax";
      var11 = analytics->var11;
      var10 = analytics->var10;
      v222[75] = @"numValidChannelsMin";
      v295 = var11;
      v222[76] = @"postedHeartRate";
      v49 = numberOrNsNull(analytics->var21);
      v296 = v49;
      v222[77] = @"postedHeartRateRounded";
      v50 = numberOrNsNull(analytics->var21);
      v297 = v50;
      v222[78] = @"postedSpO2Rounded";
      v51 = numberOrNsNull(analytics->var22);
      v222[79] = @"ppgAcPeakToPeakBlank";
      var94 = analytics->var94;
      v222[80] = @"ppgAcPeakToPeakGreen";
      var93 = analytics->var93;
      v222[81] = @"ppgAcPeakToPeakIrLong";
      var87 = analytics->var87;
      v222[82] = @"ppgAcPeakToPeakIrShortIr";
      v222[83] = @"ppgAcPeakToPeakIrShortRed";
      v222[84] = @"ppgAcPeakToPeakRedLong";
      v303 = analytics->var90;
      v222[85] = @"ppgAcPeakToPeakRedShortIr";
      v304 = *&analytics->var91;
      v222[86] = @"ppgAcPeakToPeakRedShortRed";
      v222[87] = @"ppgAcStdBlank";
      var102 = analytics->var102;
      v222[88] = @"ppgAcStdGreen";
      var101 = analytics->var101;
      v222[89] = @"ppgAcStdIrLong";
      var95 = analytics->var95;
      v222[90] = @"ppgAcStdIrShortIr";
      var96 = analytics->var96;
      v222[91] = @"ppgAcStdIrShortRed";
      var97 = analytics->var97;
      v222[92] = @"ppgAcStdRedLong";
      v310 = analytics->var98;
      v222[93] = @"ppgAcStdRedShortIr";
      var99 = analytics->var99;
      v222[94] = @"ppgAcStdRedShortRed";
      v312 = analytics->var100;
      v222[95] = @"ppgMeanBlank";
      v313 = analytics->var110;
      v222[96] = @"ppgMeanGreen";
      var109 = analytics->var109;
      v222[97] = @"ppgMeanIrLong";
      var103 = analytics->var103;
      v222[98] = @"ppgMeanIrShortIr";
      var104 = analytics->var104;
      v222[99] = @"ppgMeanIrShortRed";
      var105 = analytics->var105;
      v222[100] = @"ppgMeanRedLong";
      var106 = analytics->var106;
      v222[101] = @"ppgMeanRedShortIr";
      var107 = analytics->var107;
      v222[102] = @"ppgMeanRedShortRed";
      v320 = analytics->var108;
      v222[103] = @"rawSpO2";
      var1 = analytics->var1;
      var0 = analytics->var0;
      v222[104] = @"rawSpO2NoConfidenceGate";
      var5 = analytics->var5;
      var4 = analytics->var4;
      v222[105] = @"rawSpO2NoConfidenceGateWindow0";
      v323 = var5;
      v222[106] = @"rawSpO2NoConfidenceGateWindow1";
      var7 = analytics->var7;
      var6 = analytics->var6;
      v222[107] = @"rawSpO2NoConfidenceGateWindow2";
      v298 = v51;
      v55 = *&analytics->var88;
      v325 = var7;
      v222[108] = @"rawSpO2Window0";
      v326 = var1;
      v222[109] = @"rawSpO2Window1";
      var3 = analytics->var3;
      var2 = analytics->var2;
      v302 = v55;
      v222[110] = @"rawSpO2Window2";
      v328 = var3;
      v222[111] = @"redWavelength";
      var34 = analytics->var34;
      v222[112] = @"sessionCompleted";
      var26 = analytics->var26;
      v222[113] = @"sessionDuration";
      v57 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
      v222[114] = @"sessionSampleCount";
      var17 = analytics->var17;
      v222[115] = @"sessionSuccessful";
      var27 = analytics->var27;
      v222[116] = @"systemInstanceString";
      v222[117] = @"tiaGainBlank";
      var118 = analytics->var118;
      v222[118] = @"tiaGainGreen";
      var117 = analytics->var117;
      v331 = v57;
      v222[119] = @"tiaGainIrLong";
      var111 = analytics->var111;
      v334 = interfaceCopy;
      v222[120] = @"tiaGainIrShortIr";
      var112 = analytics->var112;
      v222[121] = @"tiaGainIrShortRed";
      var113 = analytics->var113;
      v222[122] = @"tiaGainRedLong";
      v340 = *&analytics->var114;
      v222[123] = @"tiaGainRedShortIr";
      v222[124] = @"tiaGainRedShortRed";
      var116 = analytics->var116;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v223 forKeys:v222 count:125];
    }

    else
    {
      v113 = *&analytics->var12;
      v112[0] = @"agcOpcDuration";
      v112[1] = @"agcOpcGreenSampleRate";
      v112[2] = @"agcOpcNumConverged";
      v112[3] = @"agcOpcNumRetries";
      v58 = analytics->var14;
      v114 = analytics->var15;
      v115 = v58;
      v112[4] = @"droppedSessionWindowCpmsMaxSegmentLength";
      v112[5] = @"droppedSessionWindowCpmsTotalLength";
      v59 = analytics->var46;
      v116 = analytics->var47;
      v117 = v59;
      v60 = analytics->var56;
      v112[6] = @"droppedSessionWindowDownTotalLength";
      v112[7] = @"droppedSessionWindowSaturationMaxSegmentLength";
      v62 = analytics->var48;
      v61 = analytics->var49;
      v118 = v60;
      v119 = v61;
      v112[8] = @"droppedSessionWindowSaturationTotalLength";
      v112[9] = @"highFrequencyWindow";
      v121 = *&analytics->var57;
      v112[10] = @"highFrequencyWindowLength";
      v112[11] = @"iledGreen";
      v63 = analytics->var121;
      v120 = v62;
      v122 = v63;
      v64 = analytics->var119;
      v112[12] = @"iledIr";
      v112[13] = @"iledRed";
      var120 = analytics->var120;
      v123 = v64;
      v124 = var120;
      v112[14] = @"incompleteReason";
      v24 = numberOrNsNull(analytics->var25);
      v125 = v24;
      v112[15] = @"internalTemperature";
      v25 = numberOrNsNull(analytics->var20);
      v66 = analytics->var33;
      v126 = v25;
      v127 = v66;
      v112[16] = @"irWavelength";
      v112[17] = @"mavMax1s";
      v128 = analytics->var123;
      v129 = *&analytics->var124;
      v112[18] = @"mavMean1s";
      v112[19] = @"mavMedian1s";
      v67 = analytics->var122;
      v112[20] = @"mavMin1s";
      v112[21] = @"mavStd1s";
      v68 = analytics->var126;
      v130 = v67;
      v131 = v68;
      v69 = analytics->var83;
      v112[22] = @"maxChannelConfidenceLong";
      v112[23] = @"maxChannelConfidenceShortIR";
      v70 = analytics->var81;
      v132 = v69;
      v133 = v70;
      v71 = analytics->var82;
      v112[24] = @"maxChannelConfidenceShortRed";
      v112[25] = @"meanAccelX";
      v135 = *&analytics->var35;
      v112[26] = @"meanAccelY";
      v112[27] = @"meanAccelZ";
      v72 = analytics->var37;
      v73 = analytics->var38;
      v134 = v71;
      v136 = v72;
      v74 = analytics->var45;
      v112[28] = @"meanPerfusionIndexGreenShort";
      v112[29] = @"meanPerfusionIndexIrLong";
      v75 = analytics->var41;
      v76 = analytics->var42;
      v137 = v74;
      v138 = v75;
      v112[30] = @"meanPerfusionIndexIrShort";
      v112[31] = @"meanPerfusionIndexRedLong";
      v77 = analytics->var43;
      v78 = analytics->var44;
      v139 = v76;
      v140 = v77;
      v112[32] = @"meanPerfusionIndexRedShort";
      v112[33] = @"meanSpO2Long";
      v80 = analytics->var39;
      v79 = analytics->var40;
      v141 = v78;
      v142 = v79;
      v112[34] = @"meanSpO2ShortIR";
      v112[35] = @"meanSpO2ShortRed";
      v143 = v73;
      v144 = v80;
      v81 = analytics->var80;
      v112[36] = @"medianChannelConfidenceLong";
      v112[37] = @"medianChannelConfidenceShortIR";
      var78 = analytics->var78;
      v145 = v81;
      v146 = var78;
      v83 = analytics->var79;
      v112[38] = @"medianChannelConfidenceShortRed";
      v112[39] = @"medianGIRPIR";
      v84 = analytics->var86;
      v147 = v83;
      v148 = v84;
      v85 = analytics->var84;
      v112[40] = @"medianMeasurementConfidence";
      v112[41] = @"medianWeightedStdDev";
      v86 = analytics->var85;
      v149 = v85;
      v150 = v86;
      v87 = analytics->var77;
      v112[42] = @"minChannelConfidenceLong";
      v112[43] = @"minChannelConfidenceShortIR";
      v88 = analytics->var75;
      v151 = v87;
      v152 = v88;
      v89 = analytics->var76;
      v112[44] = @"minChannelConfidenceShortRed";
      v112[45] = @"numChannelsPassingGIRPIR";
      v90 = analytics->var8;
      v153 = v89;
      v154 = v90;
      v112[46] = @"numChannelsPassingSNRMax";
      v112[47] = @"numChannelsPassingSNRMaxLong";
      v91 = analytics->var60;
      v155 = analytics->var59;
      v156 = v91;
      v112[48] = @"numChannelsPassingSNRMaxShortIR";
      v112[49] = @"numChannelsPassingSNRMaxShortRed";
      v92 = analytics->var62;
      v157 = analytics->var61;
      v158 = v92;
      v112[50] = @"numChannelsPassingSNRMin";
      v112[51] = @"numChannelsPassingSNRMinLong";
      v93 = analytics->var64;
      v159 = analytics->var63;
      v160 = v93;
      v94 = analytics->var65;
      v112[52] = @"numChannelsPassingSNRMinShortIR";
      v112[53] = @"numChannelsPassingSNRMinShortRed";
      v95 = analytics->var66;
      v161 = v94;
      v162 = v95;
      v112[54] = @"numFailedWinAggGIRPIR";
      v112[55] = @"numFailedWinStd";
      v96 = analytics->var29;
      v163 = analytics->var28;
      v164 = v96;
      v97 = analytics->var67;
      v112[56] = @"numHighConfidenceChannelsMax";
      v112[57] = @"numHighConfidenceChannelsMaxLong";
      v98 = analytics->var73;
      v165 = v97;
      v166 = v98;
      v99 = analytics->var69;
      v112[58] = @"numHighConfidenceChannelsMaxShortIR";
      v112[59] = @"numHighConfidenceChannelsMaxShortRed";
      v100 = analytics->var71;
      v167 = v99;
      v168 = v100;
      v101 = analytics->var68;
      v112[60] = @"numHighConfidenceChannelsMin";
      v112[61] = @"numHighConfidenceChannelsMinLong";
      v102 = analytics->var74;
      v169 = v101;
      v170 = v102;
      v103 = analytics->var70;
      v112[62] = @"numHighConfidenceChannelsMinShortIR";
      v112[63] = @"numHighConfidenceChannelsMinShortRed";
      v104 = analytics->var72;
      v171 = v103;
      v172 = v104;
      v112[64] = @"numMotionPrompts";
      var24 = analytics->var24;
      var23 = analytics->var23;
      v112[65] = @"numPosturePrompts";
      v174 = var24;
      v112[66] = @"numValidChannels";
      v49 = numberOrNsNull(analytics->var10);
      v175 = v49;
      v112[67] = @"postedHeartRate";
      v50 = numberOrNsNull(analytics->var21);
      v176 = v50;
      v112[68] = @"postedHeartRateRounded";
      v51 = numberOrNsNull(analytics->var21);
      v177 = v51;
      v112[69] = @"postedSpO2Rounded";
      v57 = numberOrNsNull(analytics->var22);
      v112[70] = @"ppgAcPeakToPeakBlank";
      v179 = analytics->var94;
      v112[71] = @"ppgAcPeakToPeakGreen";
      v180 = analytics->var93;
      v112[72] = @"ppgAcPeakToPeakIrLong";
      v181 = analytics->var87;
      v112[73] = @"ppgAcPeakToPeakIrShortIr";
      v182 = *&analytics->var88;
      v112[74] = @"ppgAcPeakToPeakIrShortRed";
      v112[75] = @"ppgAcPeakToPeakRedLong";
      var90 = analytics->var90;
      v112[76] = @"ppgAcPeakToPeakRedShortIr";
      v106 = *&analytics->var91;
      v112[77] = @"ppgAcPeakToPeakRedShortRed";
      v112[78] = @"ppgAcStdBlank";
      v185 = analytics->var102;
      v112[79] = @"ppgAcStdGreen";
      v186 = analytics->var101;
      v112[80] = @"ppgAcStdIrLong";
      v187 = analytics->var95;
      v112[81] = @"ppgAcStdIrShortIr";
      v188 = analytics->var96;
      v112[82] = @"ppgAcStdIrShortRed";
      v189 = analytics->var97;
      v112[83] = @"ppgAcStdRedLong";
      var98 = analytics->var98;
      v112[84] = @"ppgAcStdRedShortIr";
      v191 = analytics->var99;
      v112[85] = @"ppgAcStdRedShortRed";
      v192 = analytics->var100;
      v112[86] = @"ppgMeanBlank";
      v193 = analytics->var110;
      v112[87] = @"ppgMeanGreen";
      v194 = analytics->var109;
      v112[88] = @"ppgMeanIrLong";
      v195 = analytics->var103;
      v112[89] = @"ppgMeanIrShortIr";
      v196 = analytics->var104;
      v112[90] = @"ppgMeanIrShortRed";
      v197 = analytics->var105;
      v112[91] = @"ppgMeanRedLong";
      v198 = analytics->var106;
      v112[92] = @"ppgMeanRedShortIr";
      v199 = analytics->var107;
      v112[93] = @"ppgMeanRedShortRed";
      var108 = analytics->var108;
      v112[94] = @"rawSpO2";
      v201 = analytics->var0;
      v112[95] = @"rawSpO2NoConfidenceGate";
      v107 = analytics->var5;
      v202 = analytics->var4;
      v112[96] = @"rawSpO2NoConfidenceGateWindow0";
      v203 = v107;
      v112[97] = @"rawSpO2NoConfidenceGateWindow1";
      v108 = analytics->var7;
      v204 = analytics->var6;
      v112[98] = @"rawSpO2NoConfidenceGateWindow2";
      v205 = v108;
      v112[99] = @"realTimeMaxMAV";
      var30 = analytics->var30;
      var31 = analytics->var31;
      v112[100] = @"realTimeMedianMAV";
      var32 = analytics->var32;
      v112[101] = @"realTimeMinMAV";
      v178 = v57;
      v184 = v106;
      v208 = var30;
      v112[102] = @"redWavelength";
      v209 = analytics->var34;
      v112[103] = @"sessionCompleted";
      v210 = analytics->var26;
      v112[104] = @"sessionDuration";
      v110 = [MEMORY[0x277CCABB0] numberWithDouble:{duration, @"agcOpcDuration", @"agcOpcGreenSampleRate", @"agcOpcNumConverged", @"agcOpcNumRetries", @"droppedSessionWindowCpmsMaxSegmentLength", @"droppedSessionWindowCpmsTotalLength", @"droppedSessionWindowDownTotalLength", @"droppedSessionWindowSaturationMaxSegmentLength", @"droppedSessionWindowSaturationTotalLength", @"highFrequencyWindow", @"highFrequencyWindowLength", @"iledGreen", @"iledIr", @"iledRed", @"incompleteReason", @"internalTemperature", @"irWavelength", @"mavMax1s", @"mavMean1s", @"mavMedian1s", @"mavMin1s", @"mavStd1s", @"maxChannelConfidenceLong", @"maxChannelConfidenceShortIR", @"maxChannelConfidenceShortRed", @"meanAccelX", @"meanAccelY", @"meanAccelZ", @"meanPerfusionIndexGreenShort", @"meanPerfusionIndexIrLong", @"meanPerfusionIndexIrShort", @"meanPerfusionIndexRedLong", @"meanPerfusionIndexRedShort", @"meanSpO2Long", @"meanSpO2ShortIR", @"meanSpO2ShortRed", @"medianChannelConfidenceLong", @"medianChannelConfidenceShortIR", @"medianChannelConfidenceShortRed", @"medianGIRPIR", @"medianMeasurementConfidence", @"medianWeightedStdDev", @"minChannelConfidenceLong", @"minChannelConfidenceShortIR", @"minChannelConfidenceShortRed", @"numChannelsPassingGIRPIR", @"numChannelsPassingSNRMax", @"numChannelsPassingSNRMaxLong", @"numChannelsPassingSNRMaxShortIR", @"numChannelsPassingSNRMaxShortRed", @"numChannelsPassingSNRMin", @"numChannelsPassingSNRMinLong", @"numChannelsPassingSNRMinShortIR", @"numChannelsPassingSNRMinShortRed", @"numFailedWinAggGIRPIR", @"numFailedWinStd", @"numHighConfidenceChannelsMax", @"numHighConfidenceChannelsMaxLong", @"numHighConfidenceChannelsMaxShortIR", @"numHighConfidenceChannelsMaxShortRed"}];
      v112[105] = @"sessionSampleCount";
      v212 = analytics->var17;
      v112[106] = @"sessionSuccessful";
      v213 = analytics->var27;
      v112[107] = @"systemInstanceString";
      v112[108] = @"tiaGainBlank";
      v215 = analytics->var118;
      v211 = v110;
      v112[109] = @"tiaGainGreen";
      v216 = analytics->var117;
      v214 = interfaceCopy;
      v112[110] = @"tiaGainIrLong";
      v217 = analytics->var111;
      v112[111] = @"tiaGainIrShortIr";
      v218 = analytics->var112;
      v112[112] = @"tiaGainIrShortRed";
      v219 = analytics->var113;
      v112[113] = @"tiaGainRedLong";
      v220 = *&analytics->var114;
      v112[114] = @"tiaGainRedShortIr";
      v112[115] = @"tiaGainRedShortRed";
      v221 = analytics->var116;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:v112 count:116];
    }
  }

  return v9;
}

- (SCProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:
{
  v3 = *a2;
  WeakRetained = objc_loadWeakRetained((self + 8));
  forBackground = [WeakRetained forBackground];

  if ((forBackground & 1) == 0)
  {
    v6 = objc_loadWeakRetained((self + 8));
    [v6 handlePostureStatusChange:v3];
  }
}

- (uint64_t)initWithStartPacket:ofLength:delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithStartPacket:(uint64_t)a1 ofLength:(NSObject *)a2 delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:.cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_fault_impl(&dword_2647F6000, a2, OS_LOG_TYPE_FAULT, "failed to construct algs Processor: %s", &v4, 0xCu);
}

- (void)initWithStartPacket:(uint64_t)a1 ofLength:(NSObject *)a2 delegate:withSignalQualityMetricsEnabled:bypassingAlgorithms:forWindbreaker:bootDate:hardwareModel:.cold.3(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 134218496;
  v3 = 112;
  v4 = 2048;
  v5 = 115;
  v6 = 2048;
  v7 = a1;
  _os_log_fault_impl(&dword_2647F6000, a2, OS_LOG_TYPE_FAULT, "invalid start packet length: expected %zu or %zu, got %zu", &v2, 0x20u);
}

- (void)processPacket:(uint64_t)a1 ofLength:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = 247;
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_2647F6000, a2, OS_LOG_TYPE_ERROR, "invalid input packet length: expected %zu, got %zu", &v2, 0x16u);
}

- (void)processPacket:(uint8_t *)buf ofLength:(os_log_t)log .cold.2(char a1, int *a2, uint8_t *buf, os_log_t log)
{
  v4 = "foreground";
  v5 = *a2;
  if (a1)
  {
    v4 = "background";
  }

  *buf = 136446466;
  *(buf + 4) = v4;
  *(buf + 6) = 1026;
  *(buf + 14) = v5 + 1;
  _os_log_fault_impl(&dword_2647F6000, log, OS_LOG_TYPE_FAULT, "the algorithms layer failed to produce a %{public}s result after %{public}d packets were processed", buf, 0x12u);
}

@end