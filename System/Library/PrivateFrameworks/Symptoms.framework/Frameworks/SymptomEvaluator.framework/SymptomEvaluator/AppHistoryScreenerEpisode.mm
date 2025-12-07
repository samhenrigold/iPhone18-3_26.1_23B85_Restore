@interface AppHistoryScreenerEpisode
- (AppHistoryScreenerEpisode)initWithLabel:(id)label exportLabel:(id)exportLabel;
- (BOOL)canAcceptEpisodeWithRedactionAndTax;
- (float)computeReward;
- (id)_fetchWithLabel:(id)label exportLabel:(id)exportLabel;
- (id)description;
- (void)accrueReward:(float)reward;
- (void)accrueRewardFromFlow:(id)flow;
- (void)dealloc;
@end

@implementation AppHistoryScreenerEpisode

- (AppHistoryScreenerEpisode)initWithLabel:(id)label exportLabel:(id)exportLabel
{
  v39 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  exportLabelCopy = exportLabel;
  v28.receiver = self;
  v28.super_class = AppHistoryScreenerEpisode;
  v8 = [(AppHistoryScreenerEpisode *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(AppHistoryScreenerEpisode *)v8 _fetchWithLabel:labelCopy exportLabel:exportLabelCopy];
    pvar = v9->pvar;
    v9->pvar = v10;

    v12 = v9->pvar;
    v27 = 0;
    v13 = [(NWPVarBandit *)v12 predictValueGivenContext:0 generationId:&v27];
    v14 = v27;
    v15 = v27;
    objc_storeStrong(&v9->genID, v14);
    v9->_screenIn = [v13 intValue] != 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    partialRewards = v9->partialRewards;
    v9->partialRewards = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    partialCeilingLifts = v9->partialCeilingLifts;
    v9->partialCeilingLifts = v18;

    [FlowSample acquireNominalCeilingValuesForCellDL:&v9->baselineCeilingRx andUL:&v9->baselineCeilingTx];
    v20 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      screenIn = v9->_screenIn;
      baselineCeilingRx = v9->baselineCeilingRx;
      baselineCeilingTx = v9->baselineCeilingTx;
      v25 = v9->pvar;
      genID = v9->genID;
      *buf = 67110146;
      v30 = screenIn;
      v31 = 2112;
      v32 = genID;
      v33 = 2048;
      v34 = baselineCeilingRx;
      v35 = 2048;
      v36 = baselineCeilingTx;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "App episode screenIn: %d, genID: %@, baseRx: %f, baseTx: %f for pvar: %@", buf, 0x30u);
    }
  }

  return v9;
}

- (id)description
{
  if (self->_screenIn)
  {
    v2 = "IN";
  }

  else
  {
    v2 = "OUT";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%p> screenIn: %s, genID: %@, pvar: %@", self, v2, self->genID, self->pvar];
}

- (id)_fetchWithLabel:(id)label exportLabel:(id)exportLabel
{
  v35[5] = *MEMORY[0x277D85DE8];
  v5 = COERCE_DOUBLE(label);
  exportLabelCopy = exportLabel;
  v7 = [objc_alloc(MEMORY[0x277D6B408]) initFromLastCheckpointForLabel:*&v5];
  if (v7)
  {
    v8 = v7;
    v9 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v31 = v5;
    v10 = "App episode gets checkpointed pvar for label: %@";
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277D6B408]);
    LODWORD(v12) = 1.0;
    v8 = [v11 initInNumRangeFrom:&unk_2847EFE50 to:&unk_2847EFE60 stride:*&v5 withLabel:v12];
    [v8 setExportLabel:exportLabelCopy];
    v13 = *MEMORY[0x277D6B4D0];
    v34[0] = *MEMORY[0x277D6B4C8];
    v34[1] = v13;
    v35[0] = MEMORY[0x277CBEC38];
    v35[1] = &unk_2847EFE70;
    v14 = *MEMORY[0x277D6B4E8];
    v34[2] = *MEMORY[0x277D6B4D8];
    v34[3] = v14;
    v35[2] = &unk_2847EFE70;
    v35[3] = &unk_2847EFE50;
    v34[4] = *MEMORY[0x277D6B4F0];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:resetLearningAfterTheseManyEpisodes];
    v35[4] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:5];
    [v8 setHyperParams:v16];

    [v8 setInitialValue:&unk_2847EFE60];
    v9 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v31 = v5;
    v10 = "App episode gets new pvar for label: %@";
  }

  _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
LABEL_7:
  [v8 setTelemetryReporter:&__block_literal_global_45];
  v17 = +[CellThroughputAdviser sharedInstance];
  [v17 exploreExploitLearningRatioForHighTransferSize];
  v19 = v18;

  if (v19 >= 0.0 && v19 <= 1.0)
  {
    v23 = v19;
  }

  else
  {
    v22 = flowScrutinyLogHandle;
    v23 = 0.4;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v31 = v19;
      v32 = 2048;
      v33 = 0.4;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "App episode given invalid ratio %.2f, using default %.2f", buf, 0x16u);
    }
  }

  *&v20 = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:{v20, *MEMORY[0x277D6B4E0]}];
  v29 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v8 setHyperParams:v25];

  v26 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v31 = v5;
    v32 = 2048;
    v33 = v23;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "App episode pvar for label: %@ has ratio: %.2f", buf, 0x16u);
  }

  return v8;
}

void __57__AppHistoryScreenerEpisode__fetchWithLabel_exportLabel___block_invoke(float a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v28[0] = @"label";
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 exportLabel];
  v29[0] = v13;
  v28[1] = @"bandit_model";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "model")}];
  v29[1] = v14;
  v28[2] = @"logical_clock";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "logicalClock")}];
  v29[2] = v15;
  v28[3] = @"pull_count";
  v16 = MEMORY[0x277CCABB0];
  v17 = [v12 pullCount];

  v18 = [v16 numberWithUnsignedInteger:v17];
  v29[3] = v18;
  v28[4] = @"action";
  v19 = [v10 description];

  v29[4] = v19;
  v28[5] = @"action_metadata";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v29[5] = v20;
  v28[6] = @"reward";
  *&v21 = a1;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v28[7] = @"epsilon";
  v29[6] = v22;
  v29[7] = v11;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:8];

  v24 = [MEMORY[0x277D6B400] _backgroundQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__AppHistoryScreenerEpisode__fetchWithLabel_exportLabel___block_invoke_2;
  block[3] = &unk_27898A0C8;
  v27 = v23;
  v25 = v23;
  dispatch_async(v24, block);
}

void __57__AppHistoryScreenerEpisode__fetchWithLabel_exportLabel___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v2 = AnalyticsSendEventLazy();
  v3 = nwPVarLogHandle;
  if (v2)
  {
    if (os_log_type_enabled(nwPVarLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v11 = v4;
      v5 = "posting telemetry for %@";
      v6 = v3;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_23255B000, v6, v7, v5, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(nwPVarLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v11 = v8;
    v5 = "failing to send telemetry for %@";
    v6 = v3;
    v7 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

- (void)dealloc
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(AppHistoryScreenerEpisode *)self canAcceptEpisodeWithRedactionAndTax])
  {
    [(AppHistoryScreenerEpisode *)self computeReward];
    v4 = v3;
    pvar = self->pvar;
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_screenIn];
    *&v7 = v4;
    [(NWPVarBandit *)pvar setReward:v6 onValue:self->genID forPredictionGenerationId:v7];

    checkpoint = [(NWPVarBandit *)self->pvar checkpoint];
    v9 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    [(NWPVarBandit *)self->pvar label];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v11 = self->_screenIn ^ (self->genID == 0);
    pullCount = [(NWPVarBandit *)self->pvar pullCount];
    v13 = self->genID == 0;
    energyTaxBracket = self->energyTaxBracket;
    *buf = 134219266;
    v24 = v4;
    v25 = 2112;
    *v26 = v10;
    *&v26[8] = 1024;
    *&v26[10] = v11;
    v27 = 2048;
    v28 = pullCount;
    v29 = 1024;
    v30 = v13;
    v31 = 2048;
    v32 = energyTaxBracket;
    v15 = "App episode rewarded with: %.6f for label: %@, screenIn: %d, pullCount: %lu, redacted: %d, energy-tax: %.2f";
    v16 = v9;
    v17 = 54;
LABEL_6:
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);

    goto LABEL_7;
  }

  v18 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->pvar;
    v9 = v18;
    [(NWPVarBandit *)v19 label];
    v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    screenIn = self->_screenIn;
    pullCount2 = [(NWPVarBandit *)self->pvar pullCount];
    *buf = 138412802;
    v24 = v10;
    v25 = 1024;
    *v26 = screenIn;
    *&v26[4] = 2048;
    *&v26[6] = pullCount2;
    v15 = "App episode ignored, not learnable, label: %@, screenIn: %d, pullCount: %lu";
    v16 = v9;
    v17 = 28;
    goto LABEL_6;
  }

LABEL_8:
  v22.receiver = self;
  v22.super_class = AppHistoryScreenerEpisode;
  [(AppHistoryScreenerEpisode *)&v22 dealloc];
}

- (BOOL)canAcceptEpisodeWithRedactionAndTax
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->partialCeilingLifts count]&& self->baselineCeilingRx > 0.0 && self->baselineCeilingTx > 0.0)
  {
    v3 = [(NSMutableArray *)self->partialCeilingLifts sortedArrayUsingSelector:sel_compare_];
    lastObject = [v3 lastObject];
    integerValue = [lastObject integerValue];

    if (integerValue)
    {
      if (integerValue < 1)
      {
        v24 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          partialCeilingLifts = self->partialCeilingLifts;
          v26 = v24;
          v27 = [(NSMutableArray *)partialCeilingLifts count];
          baselineCeilingRx = self->baselineCeilingRx;
          baselineCeilingTx = self->baselineCeilingTx;
          *v36 = 134218754;
          *&v36[4] = v27;
          *&v36[12] = 2048;
          *&v36[14] = baselineCeilingRx;
          *&v36[22] = 2048;
          v37 = baselineCeilingTx;
          LOWORD(v38) = 2112;
          *(&v38 + 2) = v3;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "App episode with %lu flows, dropped resources from the start, (%f,%f) vs %@", v36, 0x2Au);
        }

        v13 = 0;
        goto LABEL_27;
      }

      if (![(AppHistoryScreenerEpisode *)self screenIn])
      {
        v6 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v15 = self->baselineCeilingRx;
      screenIn = [(AppHistoryScreenerEpisode *)self screenIn];
      if (v15 == 43.0)
      {
        if (screenIn)
        {
          v17 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            v18 = self->partialCeilingLifts;
            v19 = v17;
            v20 = [(NSMutableArray *)v18 count];
            v21 = self->baselineCeilingRx;
            v22 = self->baselineCeilingTx;
            *v36 = 134218754;
            *&v36[4] = v20;
            *&v36[12] = 2048;
            *&v36[14] = v21;
            *&v36[22] = 2048;
            v37 = v22;
            LOWORD(v38) = 2112;
            *(&v38 + 2) = v3;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "App episode with %lu flows, redacting screenIN to OUT, (%f,%f) vs %@", v36, 0x2Au);
          }

          [(AppHistoryScreenerEpisode *)self setScreenIn:0];
          genID = self->genID;
          self->genID = 0;
        }

        self->energyTaxBracket = findEnergyTaxBracketFor(self->dataVolume);
      }

      else if (!screenIn)
      {
        v6 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
LABEL_25:
          v30 = self->partialCeilingLifts;
          v31 = v6;
          v32 = [(NSMutableArray *)v30 count];
          v33 = self->baselineCeilingRx;
          v34 = self->baselineCeilingTx;
          *v36 = 134218754;
          *&v36[4] = v32;
          *&v36[12] = 2048;
          *&v36[14] = v33;
          *&v36[22] = 2048;
          v37 = v34;
          LOWORD(v38) = 2112;
          *(&v38 + 2) = v3;
          _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_INFO, "App episode with %lu flows, redacting screenOUT to IN, (%f,%f) vs %@", v36, 0x2Au);
        }

LABEL_26:
        v13 = 1;
        [(AppHistoryScreenerEpisode *)self setScreenIn:1, *v36, *&v36[8], *&v37, v38];
        v35 = self->genID;
        self->genID = 0;

        goto LABEL_27;
      }
    }

    v13 = 1;
LABEL_27:

    return v13;
  }

  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v8 = self->partialCeilingLifts;
    v9 = v7;
    v10 = [(NSMutableArray *)v8 count];
    v11 = self->baselineCeilingRx;
    v12 = self->baselineCeilingTx;
    *v36 = 134218496;
    *&v36[4] = v10;
    *&v36[12] = 2048;
    *&v36[14] = v11;
    *&v36[22] = 2048;
    v37 = v12;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "App episode with %lu flows, or no baseline, (%f,%f)", v36, 0x20u);
  }

  return 0;
}

- (float)computeReward
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->partialRewards count];
  if (!v3)
  {
    return NAN;
  }

  v4 = v3;
  v5 = [(NSMutableArray *)self->partialRewards sortedArrayUsingSelector:sel_compare_];
  v6 = [v5 objectAtIndexedSubscript:((v4 + 1) >> 1) - 1];
  [v6 floatValue];
  v8 = v7;

  if (v8 <= 0.0)
  {
    v16 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      partialRewards = self->partialRewards;
      v19 = 138412290;
      v20 = *&partialRewards;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "App episode computed zero median reward given rewards %@", &v19, 0xCu);
    }

    v11 = NAN;
  }

  else
  {
    v9 = log((1.0 - self->energyTaxBracket) * (v8 * v4) + 1.0);
    v10 = v9 / sqrt(v9 * v9 + 1.0);
    if (v10 >= 0.0001)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0.0001;
    }

    v12 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = self->partialRewards;
      dataVolume = self->dataVolume;
      energyTaxBracket = self->energyTaxBracket;
      v19 = 134219266;
      v20 = v8;
      v21 = 2048;
      v22 = v4;
      v23 = 2048;
      v24 = v11;
      v25 = 2112;
      v26 = v13;
      v27 = 2048;
      v28 = energyTaxBracket;
      v29 = 2048;
      v30 = dataVolume;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "App episode computed median reward %.6f numFlows %lu actual %.6f given rewards %@ energy_tax %.2f on volume %llu", &v19, 0x3Eu);
    }
  }

  return v11;
}

- (void)accrueRewardFromFlow:(id)flow
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = COERCE_DOUBLE(flow);
  v51 = 0.0;
  v52 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  v5 = [*&v4 statisticsForSampleCount:&v52 sampleDuration:&v50 minRxTput:0 avgRxTput:&v48 maxRxTput:0 avgCeilingRxTput:&v44 normalizedRxStdDeviation:0 minTxTput:0 avgTxTput:&v46 maxTxTput:0 avgCeilingTxTput:&v42 normalizedTxStdDeviation:0 requiredMinSampleCount:0];
  v6 = [*&v4 statisticsForAccumulatedSamples:&v51 sampleDuration:&v49 avgRxTput:&v47 avgCeilingRxTput:&v43 avgTxTput:&v45 avgCeilingTxTput:&v41];
  if ((v5 & 1) == 0 && !v6)
  {
    v7 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v4;
      v8 = "App episode failed to compute reward for flow: %@";
LABEL_5:
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_34:
      _os_log_impl(&dword_23255B000, v9, v10, v8, buf, v11);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (v49 > v50)
  {
    v12 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134221058;
      v54 = v51;
      v55 = 2048;
      v56 = v52;
      v57 = 2048;
      v58 = v49;
      v59 = 2048;
      v60 = v50;
      v61 = 2048;
      v62 = v47;
      v63 = 2048;
      v64 = v48;
      v65 = 2048;
      v66 = v43;
      v67 = 2048;
      v68 = v44;
      v69 = 2048;
      v70 = v45;
      v71 = 2048;
      v72 = v46;
      v73 = 2048;
      v74 = v41;
      v75 = 2048;
      v76 = v42;
      v77 = 2112;
      v78 = v4;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "App episode switching to accumulated samples: %zu (%zu) elapsed %.2f (%.2f) rx avg %.2f (%.2f) ceil %.2f (%.2f), tx avg %.2f (%.2f) ceil %.2f (%.2f), %@", buf, 0x84u);
    }

    v52 = v51;
    v50 = v49;
    v48 = v47;
    v46 = v45;
    v44 = v43;
    v42 = v41;
  }

  v39 = 0.0;
  v40 = 0.0;
  [FlowSample acquireNominalCeilingValuesForCellDL:&v40 andUL:&v39];
  baselineCeilingTx = self->baselineCeilingTx;
  if (v44 >= (self->baselineCeilingRx + v40) * 0.5)
  {
    v14 = v44;
  }

  else
  {
    v14 = (self->baselineCeilingRx + v40) * 0.5;
  }

  if (v42 >= (baselineCeilingTx + v39) * 0.5)
  {
    v15 = v42;
  }

  else
  {
    v15 = (baselineCeilingTx + v39) * 0.5;
  }

  v16 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218752;
    v54 = v14;
    v55 = 2048;
    v56 = v44;
    v57 = 2048;
    v58 = v15;
    v59 = 2048;
    v60 = v42;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "App episode redacting ceiling rx %f (was %f), tx %f (was %f)", buf, 0x2Au);
  }

  v44 = v14;
  v42 = v15;
  v17 = v48;
  v18 = v46;
  if (v48 > v46)
  {
    v19 = v14 - self->baselineCeilingRx;
    totalObservedCellRxBytes = [*&v4 totalObservedCellRxBytes];
    v21 = 1.0;
    v22 = 43.0;
    if (v44 <= 43.0)
    {
      goto LABEL_25;
    }

    v23 = v48;
    goto LABEL_23;
  }

  v19 = v15 - self->baselineCeilingTx;
  totalObservedCellRxBytes = [*&v4 totalObservedCellTxBytes];
  v21 = 1.0;
  v22 = 9.0;
  if (v42 > 9.0)
  {
    v23 = v46;
    v14 = v15;
    v17 = v18;
LABEL_23:
    v21 = v23 / v22;
    goto LABEL_25;
  }

  v14 = v15;
  v17 = v18;
LABEL_25:
  *&v24 = COERCE_DOUBLE(bytesInIntervalFromThroughput(v50, v17));
  if (v24 <= 0x100000)
  {
    v38 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219520;
      v54 = *&v24;
      v55 = 2048;
      v56 = v50;
      v57 = 2048;
      v58 = v52;
      v59 = 2048;
      v60 = v48;
      v61 = 2048;
      v62 = v44;
      v63 = 2048;
      v64 = v46;
      v65 = 2048;
      v66 = v42;
      v8 = "App episode ignoring flow size %llu duration %.3f cnt %lu tput Mbps rx avg %.6f ceiling %.6f tx avg  %.6f ceiling %.6f";
      v9 = v38;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 72;
      goto LABEL_34;
    }
  }

  else
  {
    if (v14 <= 0.0)
    {
      v7 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 138412290;
      v54 = v4;
      v8 = "App episode failed to compute reward (no avg ceiling) for flow: %@";
      goto LABEL_5;
    }

    v25 = v21 * v17;
    v26 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      pvar = self->pvar;
      v28 = v26;
      [(NWPVarBandit *)pvar label];
      v29 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      baselineCeilingRx = self->baselineCeilingRx;
      v31 = self->baselineCeilingTx;
      *buf = 134220802;
      v54 = v25;
      v55 = 2112;
      v56 = v29;
      v57 = 2048;
      v58 = *&v24;
      v59 = 2048;
      v60 = v50;
      v61 = 2048;
      v62 = v52;
      v63 = 2048;
      v64 = v48;
      v65 = 2048;
      v66 = v44;
      v67 = 2048;
      v68 = baselineCeilingRx;
      v69 = 2048;
      v70 = v46;
      v71 = 2048;
      v72 = v42;
      v73 = 2048;
      v74 = v31;
      v75 = 2048;
      v76 = v21;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "App episode reward=%.6f for label %@ flow size %llu duration %.3f cnt %lu tput Mbps rx avg %.6f ceil %.6f start-ceil %.2f tx avg %.6f ceil %.6f start-ceil %.2f gain-ratio %.2f", buf, 0x7Au);
    }

    v32 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      v54 = v25;
      v55 = 2112;
      v56 = v4;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "App episode reward=%.6f for flow %@", buf, 0x16u);
    }

    partialRewards = self->partialRewards;
    *&v33 = v25;
    v35 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
    [(NSMutableArray *)partialRewards addObject:v35];

    partialCeilingLifts = self->partialCeilingLifts;
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    [(NSMutableArray *)partialCeilingLifts addObject:v37];

    self->dataVolume += totalObservedCellRxBytes;
  }

LABEL_35:
}

- (void)accrueReward:(float)reward
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    partialRewards = self->partialRewards;
    screenIn = self->_screenIn;
    pvar = self->pvar;
    genID = self->genID;
    v13 = 134219010;
    rewardCopy = reward;
    v15 = 2112;
    v16 = partialRewards;
    v17 = 2112;
    v18 = pvar;
    v19 = 1024;
    v20 = screenIn;
    v21 = 2112;
    v22 = genID;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "App episode accrue reward %f, priors: %@, for pvar: %@, screenIn: %d, genID: %@", &v13, 0x30u);
  }

  v11 = self->partialRewards;
  *&v6 = reward;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [(NSMutableArray *)v11 addObject:v12];
}

@end