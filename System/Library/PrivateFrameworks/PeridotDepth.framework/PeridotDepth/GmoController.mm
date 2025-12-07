@interface GmoController
- (BOOL)homographyRunConditionsWithTimestamp:(double)timestamp;
- (GmoController)initWithUnitInfo:(PeridotUnitInfo *)info;
- (SessionState)sessionCalcState;
- (id).cxx_construct;
- (int)processFrameWithBank:(const GmoProcessBankInputs *)bank gmoResult:(GmoResult *)result;
- (vector<common::PeridotSpotValues<CGPoint>,)localSpotsLocRefDist;
- (vector<common::PeridotSpotValues<float>,)localNa;
- (vector<std::vector<SpecsResults>,)specsOut;
- (void)setGmoCfgBits:(GmoCfgBits)bits;
- (void)setSessionPersistentData:(SessionStatePersistentData *)data;
@end

@implementation GmoController

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 110) = 0;
  *(self + 104) = 0u;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  return self;
}

- (vector<std::vector<SpecsResults>,)specsOut
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self[6].__end_;
  cap = self[6].__cap_;
  if (cap != end)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((cap - end) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (vector<common::PeridotSpotValues<float>,)localNa
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self[5].__end_;
  cap = self[5].__cap_;
  if (cap != end)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((cap - end) >> 6)) < 0x92492492492493)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (vector<common::PeridotSpotValues<CGPoint>,)localSpotsLocRefDist
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self[4].__end_;
  cap = self[4].__cap_;
  if (cap != end)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((cap - end) >> 8)) < 0x24924924924925)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (SessionState)sessionCalcState
{
  v4 = retstr;
  if (self->_hCtrlLast.hOk && self->_solutionOKLast)
  {
    gmoCoreAnalyticsTelemetry::reportLongTermStats(&self->_ca);
    p_coreAnalyticsPersistentData = &self->_sessionState.persistent.coreAnalyticsPersistentData;
    v7 = *&self->_ca._longTermEventPersistentData.lastEventYear;
    if (self->_ca._isFireLongTermEvent)
    {
      self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[29] = 0.0;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[21] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[25] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[13] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[17] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[5] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[9] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[27] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[1] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[19] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[23] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[11] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[15] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[3] = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[7] = 0u;
      *&p_coreAnalyticsPersistentData->coreAnalyticsLongTermData.sessionCount = 0u;
      *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.homogDoneCount = 0u;
      self->_ca._isFireLongTermEvent = 0;
    }

    else
    {
      memcpy(p_coreAnalyticsPersistentData, &self->_ca._longTermEventPersistentData, sizeof(CoreAnalyticsPersistentData));
      ++self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.sessionCount;
    }

    *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.lastEventYear = v7;
    v4 = retstr;
  }

  return memcpy(v4, &self->_sessionState, sizeof(SessionState));
}

- (void)setSessionPersistentData:(SessionStatePersistentData *)data
{
  if (data)
  {
    memcpy(&self->_sessionState, data, sizeof(self->_sessionState));
    self->_ca._longTermEventPersistentData.homogDoneCount = self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.homogDoneCount;
    *&self->_ca._longTermEventPersistentData.sessionCount = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.sessionCount;
    v4 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[20];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[16] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[16];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[20] = v4;
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[24] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[24];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[28] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[28];
    v5 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[4];
    *self->_ca._longTermEventPersistentData.calibErrP95Arr = *self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr;
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[4] = v5;
    v6 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[12];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[8] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP95Arr[8];
    *&self->_ca._longTermEventPersistentData.calibErrP95Arr[12] = v6;
    v7 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[12];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[8] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[8];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[12] = v7;
    v8 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[4];
    *self->_ca._longTermEventPersistentData.calibErrP50Arr = *self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr;
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[4] = v8;
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[28] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[28];
    v9 = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[24];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[20] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[20];
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[24] = v9;
    *&self->_ca._longTermEventPersistentData.calibErrP50Arr[16] = *&self->_sessionState.persistent.coreAnalyticsPersistentData.coreAnalyticsLongTermData.calibErrP50Arr[16];
  }
}

- (BOOL)homographyRunConditionsWithTimestamp:(double)timestamp
{
  bankCounter = self->_bankCounter;
  if (timestamp - self->_lastHomographyAttemptTimeSec >= self->_timeBetweenHomographyAttemps && (self->_bankCounter & 7) == 0)
  {
    if (self->_minFramesBetweenHomogCycle > bankCounter >> 3 && bankCounter <= 0x1DF)
    {
      return 0;
    }
  }

  else if (bankCounter < 0x1E0)
  {
    return 0;
  }

  self->_lastHomographyAttemptTimeSec = timestamp;
  return 1;
}

- (int)processFrameWithBank:(const GmoProcessBankInputs *)bank gmoResult:(GmoResult *)result
{
  v4 = MEMORY[0x28223BE20](self, a2, bank);
  __p[315] = *MEMORY[0x277D85DE8];
  if (*(v4 + 64) <= 0x1DFuLL)
  {
    v7 = v6;
    v8 = v5;
    v9 = v4;
    [*(v4 + 40) addDbgDataFor_gmoBankInput:?];
    *v7 = 0;
    if (![*(v9 + 40) bankNumInHomogCycle])
    {
      v10 = (*(v9 + 32) + 36444);
      __p[1] = 64;
      __p[0] = v10;
      [*(v9 + 40) startOfHomogCycle];
      [*(v9 + 40) addDbgDataFor_gmoInit:__p];
      [*(v9 + 40) addDbgDataFor_gmoConfig:v9 + 12];
      [*(v9 + 40) addDbgDataFor_operationalSpotLocation10m:v9 + 1148];
      [*(v9 + 40) addDbgDataFor_factorySpotLocation10m:v9 + 2052];
      [*(v9 + 40) addDbgDataFor_operationalSpotLocation70cm:*(v9 + 32) + 344396];
      [*(v9 + 40) addDbgDataFor_factorySpotLocation70cm:*(v9 + 32) + 342588];
    }

    if (*(v9 + 8) == 1)
    {
      if ([*(v9 + 48) configureEngineWithSpecConfig:v8 + 8966])
      {
        return 1;
      }

      *(v9 + 8) = 0;
    }

    if (![*(v9 + 48) calculateSpecQs:v8 pulsesPerphase:10134 specsOut:*(*(v9 + 152) + 24 * (*(v9 + 64) >> 3)) + 756 * *v8])
    {
      v11 = *(v9 + 64) >> 3;
      v12 = *v8;
      v13 = (*(v9 + 128) + 448 * v11 + 56 * *v8);
      *v13 = v8[21] * 100.0;
      v13[1] = v8[27] * 100.0;
      v13[2] = v8[33] * 100.0;
      v13[3] = v8[39] * 100.0;
      v13[4] = v8[45] * 100.0;
      v13[5] = v8[51] * 100.0;
      v13[6] = v8[57] * 100.0;
      v13[7] = v8[63] * 100.0;
      v13[8] = v8[69] * 100.0;
      v13[9] = v8[75] * 100.0;
      v13[10] = v8[81] * 100.0;
      v13[11] = v8[87] * 100.0;
      v13[12] = v8[93] * 100.0;
      v13[13] = v8[99] * 100.0;
      if (![*(v9 + 48) findSpotLocation:*(*(v9 + 152) + 24 * v11) + 756 * v12 withAnchors:v8 + 2231 spotLocationEstimation:&v16 outBound:&v15])
      {
        operator new();
      }
    }
  }

  return 1;
}

- (void)setGmoCfgBits:(GmoCfgBits)bits
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[GmoController setGmoCfgBits:]";
    v9 = 1024;
    v10.all = bits.all;
    _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Setting GMO Config to: 0x%X", &v7, 0x12u);
  }

  self->_gmoCfgBits = bits;
  if ((bits.all & 0x80000000) != 0)
  {
    v5 = objc_alloc_init(GmoDbgServices);
    dbgSrvc = self->_dbgSrvc;
    self->_dbgSrvc = v5;
  }
}

- (GmoController)initWithUnitInfo:(PeridotUnitInfo *)info
{
  v60 = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = GmoController;
  v4 = [(GmoController *)&v57 init];
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v59 = "[GmoController initWithUnitInfo:]";
      _os_log_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "GMO: %s: Init ...", buf, 0xCu);
    }

    *(v4 + 44) = [&unk_283811050 intValue];
    *(v4 + 45) = [&unk_283811068 intValue];
    *(v4 + 3) = 0;
    *(v4 + 4) = info;
    *(v4 + 12) = 10000;
    v4[10] = info->var0.operationalSpotLocations.normalRange.isSphere;
    *(v4 + 2) = 0x40C000003EC28F5CLL;
    v5 = [GmoEngine alloc];
    LODWORD(v6) = *(v4 + 4);
    v7 = [(GmoEngine *)v5 initWithPulseShape:*(v4 + 4) + 36444 pulseShapeSize:64 spotSizeSigma:v6 unitInfo:?];
    v8 = *(v4 + 6);
    *(v4 + 6) = v7;

    v4[8] = 1;
    v10 = *(v4 + 13);
    v11 = *(v4 + 14);
    v12 = v11 - v10;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 8);
    if (v13 > 0x3B)
    {
      if (v12 == 107520)
      {
        goto LABEL_17;
      }

      v19 = v10 + 107520;
    }

    else
    {
      v14 = 60 - v13;
      v15 = *(v4 + 15);
      if (0x6DB6DB6DB6DB6DB7 * ((v15 - v11) >> 8) < v14)
      {
        v16 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v10) >> 8);
        v17 = 2 * v16;
        if (2 * v16 <= 0x3C)
        {
          v17 = 60;
        }

        if (v16 >= 0x12492492492492)
        {
          v18 = 0x24924924924924;
        }

        else
        {
          v18 = v17;
        }

        if (v18 <= 0x24924924924924)
        {
          operator new();
        }

        goto LABEL_65;
      }

      bzero(*(v4 + 14), 1792 * ((((105728 - v12) >> 8) * 0x2492492492492493uLL) >> 64) + 1792);
      v19 = v11 + 1792 * ((((105728 - v12) >> 8) * 0x2492492492492493uLL) >> 64) + 1792;
    }

    *(v4 + 14) = v19;
LABEL_17:
    v20 = *(v4 + 16);
    v21 = *(v4 + 17);
    v22 = v21 - v20;
    v23 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v20) >> 6);
    if (v23 > 0x3B)
    {
      if (v22 == 26880)
      {
LABEL_30:
        v30 = *(v4 + 19);
        v31 = *(v4 + 20);
        v32 = v31 - v30;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
        if (v33 > 0x3B)
        {
          if (v32 != 1440)
          {
            v39 = (v30 + 1440);
            if (v31 != (v30 + 1440))
            {
              v40 = *(v4 + 20);
              do
              {
                v42 = *(v40 - 3);
                v40 -= 24;
                v41 = v42;
                if (v42)
                {
                  *(v31 - 2) = v41;
                  operator delete(v41);
                }

                v31 = v40;
              }

              while (v40 != v39);
            }

            *(v4 + 20) = v39;
          }
        }

        else
        {
          v34 = 60 - v33;
          v35 = *(v4 + 21);
          if (0xAAAAAAAAAAAAAAABLL * ((v35 - v31) >> 3) < v34)
          {
            v36 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v30) >> 3);
            v37 = 2 * v36;
            if (2 * v36 <= 0x3C)
            {
              v37 = 60;
            }

            if (v36 >= 0x555555555555555)
            {
              v38 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v38 = v37;
            }

            if (v38 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_65:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          bzero(v31, 24 * ((1416 - v32) / 0x18uLL) + 24);
          *(v4 + 20) = &v31[3 * ((1416 - v32) / 0x18uLL) + 3];
        }

        v43 = 0;
        while (1)
        {
          v45 = (*(v4 + 19) + v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v47 - *v45;
          v49 = 0xA53FA94FEA53FA95 * (v48 >> 2);
          if (v49 > 7)
          {
            if (v48 == 6048)
            {
              goto LABEL_50;
            }

            v44 = v46 + 6048;
          }

          else
          {
            v50 = 8 - v49;
            v51 = v45[2];
            if (0xA53FA94FEA53FA95 * ((v51 - v47) >> 2) < v50)
            {
              v52 = 0xA53FA94FEA53FA95 * ((v51 - v46) >> 2);
              v53 = 2 * v52;
              if (2 * v52 <= 8)
              {
                v53 = 8;
              }

              if (v52 >= 0x2B580AD602B580)
              {
                v54 = 0x56B015AC056B01;
              }

              else
              {
                v54 = v53;
              }

              if (v54 <= 0x56B015AC056B01)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            bzero(v45[1], 756 * ((5292 - v48) / 0x2F4uLL) + 756);
            v44 = v47 + 756 * ((5292 - v48) / 0x2F4uLL) + 756;
          }

          v45[1] = v44;
LABEL_50:
          v43 += 24;
          if (v43 == 1440)
          {
            *v9.i32 = *(v4 + 12);
            peridot::compensateForParallax(*(*(v4 + 4) + 402528), (*(v4 + 4) + 344396), 0, (v4 + 1148), v9);
          }
        }
      }

      v29 = v20 + 26880;
    }

    else
    {
      v24 = 60 - v23;
      v25 = *(v4 + 18);
      if (0x6DB6DB6DB6DB6DB7 * ((v25 - v21) >> 6) < v24)
      {
        v26 = 0x6DB6DB6DB6DB6DB7 * ((v25 - v20) >> 6);
        v27 = 2 * v26;
        if (2 * v26 <= 0x3C)
        {
          v27 = 60;
        }

        if (v26 >= 0x49249249249249)
        {
          v28 = 0x92492492492492;
        }

        else
        {
          v28 = v27;
        }

        if (v28 <= 0x92492492492492)
        {
          operator new();
        }

        goto LABEL_65;
      }

      bzero(*(v4 + 17), 448 * ((((26432 - v22) >> 6) * 0x2492492492492493uLL) >> 64) + 448);
      v29 = v21 + 448 * ((((26432 - v22) >> 6) * 0x2492492492492493uLL) >> 64) + 448;
    }

    *(v4 + 17) = v29;
    goto LABEL_30;
  }

  v55 = 0;

  return v55;
}

@end