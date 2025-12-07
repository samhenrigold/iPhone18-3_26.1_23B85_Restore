@interface ATXActionValuation
- (ATXActionValuation)init;
- (ATXActionValuation)initWithIntentCache:(id)cache;
- (BOOL)shouldPredictCreateEventIntent:(id)intent;
- (BOOL)shouldPredictIntent:(id)intent;
- (BOOL)shouldPredictRequestRideIntent:(id)intent;
- (BOOL)shouldPredictSendMessageIntent:(id)intent;
- (id)getCurrentLocation;
- (void)scoreActions:(id)actions scoreLogger:(id)logger consumerSubType:(unsigned __int8)type;
- (void)setFeatureValuesAndFilterPredictableActions:(id)actions actionStatistics:(id)statistics;
@end

@implementation ATXActionValuation

- (ATXActionValuation)init
{
  v3 = +[ATXIntentMetadataCache sharedInstance];
  v4 = [(ATXActionValuation *)self initWithIntentCache:v3];

  return v4;
}

- (ATXActionValuation)initWithIntentCache:(id)cache
{
  cacheCopy = cache;
  v9.receiver = self;
  v9.super_class = ATXActionValuation;
  v6 = [(ATXActionValuation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intentCache, cache);
  }

  return v7;
}

- (BOOL)shouldPredictSendMessageIntent:(id)intent
{
  intentCopy = intent;
  v4 = [_ATXActionUtils recipientFromMessageIntent:intentCopy];
  if (v4)
  {
    content = [intentCopy content];
    if (!content)
    {
      v10 = 1;
LABEL_11:

      goto LABEL_12;
    }

    v6 = +[_ATXDataStore sharedInstance];
    v7 = [v6 lastMessageToRecipient:v4];

    v8 = objc_opt_new();
    if ([_ATXActionUtils shouldPredictRecipient:v4 withDate:v8 andRecipientDate:v7])
    {
      v9 = [content isEqualToString:&stru_2839A6058];

      if ((v9 & 1) == 0)
      {
        v10 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)shouldPredictCreateEventIntent:(id)intent
{
  atx_nonNilParametersByName = [intent atx_nonNilParametersByName];
  v4 = [atx_nonNilParametersByName objectForKey:@"startDate"];
  v5 = [atx_nonNilParametersByName objectForKey:@"endDate"];
  v6 = (v4 | v5) == 0;

  return v6;
}

- (id)getCurrentLocation
{
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  getCurrentLocation = [mEMORY[0x277D41BF8] getCurrentLocation];

  return getCurrentLocation;
}

- (BOOL)shouldPredictRequestRideIntent:(id)intent
{
  dropOffLocation = [intent dropOffLocation];
  location = [dropOffLocation location];

  if (location)
  {
    getCurrentLocation = [(ATXActionValuation *)self getCurrentLocation];
    v7 = getCurrentLocation;
    if (getCurrentLocation)
    {
      [getCurrentLocation distanceFromLocation:location];
      v9 = v8;
      v10 = +[_ATXGlobals sharedInstance];
      v11 = v9 >= [v10 minDistanceToDropOffLocationInMetersForRequestRideIntent] && v9 <= objc_msgSend(v10, "maxDistanceToDropOffLocationInMetersForRequestRideIntent");
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)shouldPredictIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ATXActionValuation *)self shouldPredictSendMessageIntent:intentCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ATXActionValuation *)self shouldPredictRequestRideIntent:intentCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = 1;
        goto LABEL_8;
      }

      v5 = [(ATXActionValuation *)self shouldPredictCreateEventIntent:intentCopy];
    }
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (void)setFeatureValuesAndFilterPredictableActions:(id)actions actionStatistics:(id)statistics
{
  MEMORY[0x28223BE20](self);
  v5 = v4;
  v87 = v6;
  buf[418] = *MEMORY[0x277D85DE8];
  v90 = v7;
  v8 = v5;
  v9 = objc_opt_new();
  v10 = 0;
  *&v11 = 138412290;
  v86 = v11;
  while (v10 < [v90 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v90 objectAtIndexedSubscript:v10];
    scoredAction = [v13 scoredAction];
    predictedItem = [scoredAction predictedItem];

    if (!predictedItem)
    {
      v24 = __atxlog_handle_default(v16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionValuation *)&v95 setFeatureValuesAndFilterPredictableActions:v96 actionStatistics:v24];
      }

      goto LABEL_14;
    }

    hasActionTitle = [predictedItem hasActionTitle];
    if ((hasActionTitle & 1) == 0)
    {
      v24 = __atxlog_handle_default(hasActionTitle);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionValuation *)&v93 setFeatureValuesAndFilterPredictableActions:v94 actionStatistics:v24];
      }

LABEL_14:

      [v9 addIndex:v10];
      goto LABEL_45;
    }

    intent = [predictedItem intent];
    if (intent)
    {
      v18 = [v87 shouldPredictIntent:intent];
      if ((v18 & 1) == 0)
      {
        v25 = __atxlog_handle_default(v18);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          _className = [intent _className];
          LODWORD(buf[0]) = v86;
          *(buf + 4) = _className;
          _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_INFO, "Removed intent of class %@ because of special logic for the intent class", buf, 0xCu);
        }

        [v9 addIndex:v10];
        goto LABEL_44;
      }
    }

    v19 = [ATXMinimalSlotResolutionParameters alloc];
    slotSet = [v13 slotSet];
    v88 = [(ATXMinimalSlotResolutionParameters *)v19 initWithAction:predictedItem slots:slotSet];

    v21 = [*(v8 + 1) objectForKeyedSubscript:v88];
    if (!v13)
    {
      bzero(buf, 0xD08uLL);
      if (!v21)
      {
        goto LABEL_20;
      }

LABEL_19:
      ATXProbability(v22, v21[29], *(v8 + 2));
      ATXSetInput(buf, 0x13CuLL, v27);
      ATXProbability(v28, v21[46], *(v8 + 3));
      ATXSetInput(buf, 0x13DuLL, v29);
      ATXProbability(v30, v21[47], *(v8 + 4));
      ATXSetInput(buf, 0x13EuLL, v31);
      ATXProbability(v32, v21[48], *(v8 + 5));
      ATXSetInput(buf, 0x13FuLL, v33);
      ATXProbability(v34, v21[49], *(v8 + 6));
      ATXSetInput(buf, 0x140uLL, v35);
      ATXProbability(v36, v21[50], *(v8 + 7));
      ATXSetInput(buf, 0x141uLL, v37);
      ATXProbability(v38, v21[51], *(v8 + 8));
      ATXSetInput(buf, 0x142uLL, v39);
      ATXProbability(v40, v21[52], *(v8 + 9));
      ATXSetInput(buf, 0x143uLL, v41);
      ATXProbability(v42, v21[53], *(v8 + 21));
      ATXSetInput(buf, 0x144uLL, v43);
      ATXProbability(v44, v21[54], *(v8 + 10));
      ATXSetInput(buf, 0x145uLL, v45);
      ATXProbability(v46, v21[55], *(v8 + 11));
      ATXSetInput(buf, 0x146uLL, v47);
      ATXProbability(v48, v21[56], *(v8 + 12));
      ATXSetInput(buf, 0x147uLL, v49);
      ATXProbability(v50, v21[61], *(v8 + 17));
      ATXSetInput(buf, 0x148uLL, v51);
      ATXProbability(v52, v21[62], *(v8 + 18));
      ATXSetInput(buf, 0x149uLL, v53);
      ATXProbability(v54, v21[63], *(v8 + 19));
      ATXSetInput(buf, 0x14AuLL, v55);
      ATXProbability(v56, v21[64], *(v8 + 20));
      ATXSetInput(buf, 0x14BuLL, v57);
      ATXProbability(v58, v21[58], *(v8 + 14));
      ATXSetInput(buf, 0x14CuLL, v59);
      ATXProbability(v60, v21[57], *(v8 + 13));
      ATXSetInput(buf, 0x14DuLL, v61);
      ATXProbability(v62, v21[59], *(v8 + 15));
      ATXSetInput(buf, 0x14EuLL, v63);
      ATXProbability(v64, v21[60], *(v8 + 16));
      ATXSetInput(buf, 0x14FuLL, v65);
      ATXProbability(v66, v21[65], *(v8 + 22));
      ATXSetInput(buf, 0x150uLL, v67);
      ATXSetInput(buf, 0x151uLL, *(v8 + 23));
      ATXSetInput(buf, 0x152uLL, *(v8 + 24));
      ATXSetInput(buf, 0x153uLL, *(v8 + 25));
      ATXSetInput(buf, 0x154uLL, *(v8 + 26));
      ATXSetInput(buf, 0x155uLL, *(v8 + 27));
      ATXSetInput(buf, 0x156uLL, *(v8 + 28));
      ATXSetInput(buf, 0x15BuLL, *(v8 + 29));
      ATXSetInput(buf, 0x15CuLL, *(v8 + 30));
      ATXSetInput(buf, 0x15DuLL, *(v8 + 31));
      ATXSetInput(buf, 0x15EuLL, *(v8 + 32));
      ATXSetInput(buf, 0x158uLL, *(v8 + 33));
      ATXSetInput(buf, 0x157uLL, *(v8 + 34));
      ATXSetInput(buf, 0x159uLL, *(v8 + 35));
      ATXSetInput(buf, 0x15AuLL, *(v8 + 36));
      ATXSetInput(buf, 0x15FuLL, *(v8 + 37));
      ATXSetInput(buf, 0x160uLL, *(v8 + 38));
      ATXSetInput(buf, 0x163uLL, *(v8 + 39));
      ATXSetInput(buf, 0x164uLL, *(v8 + 40));
      ATXSetInput(buf, 0x165uLL, *(v8 + 41));
      ATXSetInput(buf, 0x134uLL, *(v8 + 42));
      ATXSetInput(buf, 0x135uLL, *(v8 + 43));
      ATXSetInput(buf, 0x136uLL, *(v8 + 47));
      ATXSetInput(buf, 0x137uLL, *(v8 + 48));
      ATXSetInput(buf, 0x138uLL, *(v8 + 49));
      *&v68 = ATXSetInput(buf, 0x139uLL, *(v8 + 50));
      v69 = ATXRatio(*(v8 + 45) + *(v8 + 44), [*(v8 + 46) count]);
      *&v70 = ATXSetInput(buf, 0x13AuLL, v69);
      v71 = ATXRatio(*(v8 + 44), [*(v8 + 46) count]);
      ATXSetInput(buf, 0x13BuLL, v71);
      ATXSetInput(buf, 0x1A6uLL, *(v8 + 51));
      ATXSetInput(buf, 0x1A8uLL, *(v8 + 52));
      ATXSetInput(buf, 0x1AAuLL, *(v8 + 53));
      ATXSetInput(buf, 0x1ACuLL, *(v8 + 54));
      ATXSetInput(buf, 0x1AEuLL, *(v8 + 55));
      ATXSetInput(buf, 0x1B0uLL, *(v8 + 56));
      ATXSetInput(buf, 0x1B2uLL, *(v8 + 57));
      ATXSetInput(buf, 0x1B4uLL, *(v8 + 58));
      ATXSetInput(buf, 0x1B6uLL, *(v8 + 59));
      ATXSetInput(buf, 0x1B8uLL, *(v8 + 60));
      ATXSetInput(buf, 0x1BAuLL, *(v8 + 61));
      ATXSetInput(buf, 0x1BCuLL, *(v8 + 62));
      ATXSetInput(buf, 0x22AuLL, *(v8 + 63));
      ATXSetInput(buf, 0x22DuLL, *(v8 + 64));
      ATXSetInput(buf, 0x230uLL, *(v8 + 65));
      ATXSetInput(buf, 0x233uLL, *(v8 + 66));
      ATXSetInput(buf, 0x236uLL, *(v8 + 67));
      ATXSetInput(buf, 0x239uLL, *(v8 + 68));
      ATXSetInput(buf, 0x23CuLL, *(v8 + 69));
      ATXSetInput(buf, 0x23FuLL, *(v8 + 70));
      ATXSetInput(buf, 0x242uLL, *(v8 + 71));
      ATXSetInput(buf, 0x245uLL, *(v8 + 72));
      ATXSetInput(buf, 0x248uLL, *(v8 + 73));
      ATXSetInput(buf, 0x24BuLL, *(v8 + 74));
      ATXSetInput(buf, 0x303uLL, *(v8 + 75));
      ATXSetInput(buf, 0x306uLL, *(v8 + 77));
      ATXSetInput(buf, 0x309uLL, *(v8 + 79));
      ATXSetInput(buf, 0x30CuLL, *(v8 + 81));
      ATXSetInput(buf, 0x30FuLL, *(v8 + 83));
      ATXSetInput(buf, 0x312uLL, *(v8 + 85));
      ATXSetInput(buf, 0x315uLL, *(v8 + 76));
      ATXSetInput(buf, 0x318uLL, *(v8 + 78));
      ATXSetInput(buf, 0x31BuLL, *(v8 + 80));
      ATXSetInput(buf, 0x31EuLL, *(v8 + 82));
      ATXSetInput(buf, 0x321uLL, *(v8 + 84));
      *&v23 = ATXSetInput(buf, 0x324uLL, *(v8 + 86));
      goto LABEL_20;
    }

    v22 = objc_msgSend_predictionItem(v13);
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_20:
    actionType = [predictedItem actionType];
    if (actionType <= 4)
    {
      if (!actionType)
      {
        v76 = 1.0;
        goto LABEL_32;
      }

      if (actionType != 1)
      {
        if (actionType != 2)
        {
          goto LABEL_35;
        }

LABEL_28:
        v74 = 1.0;
        ATXSetInput(buf, 0x17AuLL, 0.0);
        goto LABEL_33;
      }

LABEL_29:
      ATXSetInput(buf, 0x17AuLL, 0.0);
      v75 = 1.0;
      ATXSetInput(buf, 0x17BuLL, 0.0);
LABEL_34:
      *&v73 = ATXSetInput(buf, 0x17CuLL, v75);
      goto LABEL_35;
    }

    switch(actionType)
    {
      case 5:
        goto LABEL_29;
      case 6:
        v76 = 0.0;
LABEL_32:
        v74 = 0.0;
        ATXSetInput(buf, 0x17AuLL, v76);
LABEL_33:
        v75 = 0.0;
        ATXSetInput(buf, 0x17BuLL, v74);
        goto LABEL_34;
      case 7:
        goto LABEL_28;
    }

LABEL_35:
    *&v77 = ATXSetInput(buf, 0x176uLL, [predictedItem isFutureMedia]);
    intent2 = [predictedItem intent];
    ATXSetInput(buf, 0x87uLL, [intent2 _intentCategory]);

    v79 = objc_autoreleasePoolPush();
    intent3 = [predictedItem intent];
    if (intent3)
    {
      v81 = v87[1];
      intent4 = [predictedItem intent];
      v83 = v81;
      v5 = intent4;
      v84 = [v83 supportsBackgroundExecutionForIntent:?];
    }

    else
    {
      v84 = 0;
    }

    ATXSetInput(buf, 0x177uLL, v84);
    if (intent3)
    {
    }

    objc_autoreleasePoolPop(v79);
    v85 = buf[0];
    v91 = v85;
    memcpy(v92, &buf[1], sizeof(v92));
    if (v13)
    {
      [v13 setPredictionItem:&v91];
    }

    else
    {
    }

LABEL_44:
LABEL_45:

    objc_autoreleasePoolPop(v12);
    ++v10;
  }

  [v90 removeObjectsAtIndexes:v9];
}

- (void)scoreActions:(id)actions scoreLogger:(id)logger consumerSubType:(unsigned __int8)type
{
  MEMORY[0x28223BE20](self);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v50 = v8;
  v11 = +[ATXScoreInterpreterCache sharedInstance];
  v47 = [v11 scoreInterpreterForConsumerSubType:v6];

  v12 = 0;
  memset(v55, 0, 24);
  v45 = *MEMORY[0x277CEBD00];
  v46 = v10;
  while (v12 < [v10 count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [v10 objectAtIndexedSubscript:v12];
    scoredAction = [v14 scoredAction];
    predictedItem = [scoredAction predictedItem];

    v17 = [ATXMinimalSlotResolutionParameters alloc];
    slotSet = [v14 slotSet];
    context = v13;
    v49 = [(ATXMinimalSlotResolutionParameters *)v17 initWithAction:predictedItem slots:slotSet];

    actionKey = [predictedItem actionKey];
    if (!v50)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = MEMORY[0x277CCACA8];
      actionKey2 = [predictedItem actionKey];
      slotSet2 = [v14 slotSet];
      v23 = [slotSet2 description];
      v24 = [predictedItem description];
      v25 = [v20 stringWithFormat:@"ActionKey: %@\nSlotSet: %@\n%@", actionKey2, v23, v24];

      actionKey = v25;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      v26 = MEMORY[0x277CCACA8];
      actionKey2 = [predictedItem actionKey];
      [v26 stringWithFormat:@"%@:%tu", actionKey2, -[ATXMinimalSlotResolutionParameters hash](v49, "hash")];
      actionKey = slotSet2 = actionKey;
    }

LABEL_9:
    if (v14)
    {
      objc_msgSend_predictionItem(v14);
    }

    else
    {
      bzero(&location, 0xD08uLL);
    }

    objc_storeStrong(&location, actionKey);
    v54[0] = [(ATXMinimalSlotResolutionParameters *)v49 hash];
    v27 = +[_ATXAppPredictor sharedInstance];
    [v27 setupScoreLogger:v50 forConsumerSubType:v6];

    v28 = +[_ATXAppPredictor sharedInstance];
    [v28 _predictionScoreAndUpdateConfidenceForItem:&location interpreter:v47 consumerSubType:v6 scoreLogger:v50 intentType:0];
    v30 = v29;

    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v31 = objc_alloc(MEMORY[0x277CCACA8]);
      bundleId = [predictedItem bundleId];
      v33 = [v31 initWithFormat:@"ActionValuationScoreOverride-%@", bundleId];

      v34 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v45];
      v35 = [v34 objectForKey:v33];
      v36 = NSClassFromString(&cfstr_Nsnumber.isa);
      v37 = v35;
      if (v36)
      {
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;

      if (v39)
      {
        [v39 doubleValue];
        v30 = v40;
      }
    }

    v41 = v30;
    *&v54[415] = v41;
    scoredAction2 = [v14 scoredAction];
    *&v43 = v41;
    [scoredAction2 setScore:v43];

    v44 = location;
    v51 = v44;
    memcpy(v52, v54, sizeof(v52));
    if (v14)
    {
      [v14 setPredictionItem:&v51];
    }

    else
    {
    }

    if (v50)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v50 storeMetaDataFromActionContainerForKey:actionKey actionContainer:v14];
      }
    }

    v10 = v46;
    objc_autoreleasePoolPop(context);
    ++v12;
  }

  location = v55;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&location);
}

- (void)setFeatureValuesAndFilterPredictableActions:(os_log_t)log actionStatistics:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Action without title found during Action Valuation", buf, 2u);
}

- (void)setFeatureValuesAndFilterPredictableActions:(os_log_t)log actionStatistics:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Action not found during Action Valuation", buf, 2u);
}

@end