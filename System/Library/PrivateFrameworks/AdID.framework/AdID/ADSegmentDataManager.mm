@interface ADSegmentDataManager
+ (id)sharedInstance;
- (BOOL)isEligibleForSensitiveContent:(int64_t)content;
- (BOOL)isSegmentReductionEnabled;
- (BOOL)shouldSendSegmentDataToAdPlatforms:(id)platforms;
- (BOOL)shouldSendSegmentRequest:(id)request ignoreTimestamps:(BOOL)timestamps;
- (BOOL)verifyGenderInSegmentData:(id)data;
- (id)_ageDistributionOverrides;
- (id)checkTokenAndDSID:(id)d;
- (id)noiseAppliedBirthYearFromActual:(id)actual;
- (id)parseBirthYearFromSegmentData:(id)data;
- (id)parseISO3166CodeFromSegmentData:(id)data;
- (void)handleJingleSegmentResponse:(id)response activeRecord:(id)record completionHandler:(id)handler;
- (void)handleSegmentUpdateResponse:(id)response error:(id)error completionHandler:(id)handler;
- (void)handleSuccessfulJingleSegmentResponse:(id)response dsidRecord:(id)record completionHandler:(id)handler;
- (void)populateAccountTypeFields:(id)fields;
- (void)retrieveSegmentData:(id)data forceSegments:(BOOL)segments ignoreTimestamps:(BOOL)timestamps completionHandler:(id)handler;
- (void)sendSegmentDataToAdPlatforms:(id)platforms completionHandler:(id)handler;
@end

@implementation ADSegmentDataManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ADSegmentDataManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_3, block);
  }

  v2 = sharedInstance__instance_3;

  return v2;
}

uint64_t __38__ADSegmentDataManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance__instance_3 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (BOOL)shouldSendSegmentRequest:(id)request ignoreTimestamps:(BOOL)timestamps
{
  requestCopy = request;
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];

  if (![(ADSegmentDataManager *)self segmentRetrievalInProgress])
  {
    if ([activeDSIDRecord isPlaceholderAccount])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping segment retrieval request. DSID %@ is not logged into iTunes.", objc_opt_class(), requestCopy];
      goto LABEL_5;
    }

    dSID = [activeDSIDRecord DSID];
    v13 = [dSID isEqualToString:requestCopy];

    if ((v13 & 1) == 0)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = objc_opt_class();
      dSID2 = [activeDSIDRecord DSID];
      requestCopy = [v17 stringWithFormat:@"[%@]: Skipping segment retrieval request. Current active record DSID %@ does not match request DSID %@.", v18, dSID2, requestCopy];
      _ADLog();

      goto LABEL_6;
    }

    mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
    reconcileOperations = [mEMORY[0x277CE9658]2 reconcileOperations];
    v16 = [reconcileOperations isSet:1];

    if (v16)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Forcing segment retrieval request for DSID %@ because ADReconcileOp_RetrieveSegments flag is set", objc_opt_class(), requestCopy];
    }

    else if (timestamps)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Forcing segment retrieval request for DSID %@ because 'ignoreTimestamps' was specified.", objc_opt_class(), requestCopy];
    }

    else
    {
      segmentDataTimestamp = [activeDSIDRecord segmentDataTimestamp];
      mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
      v22 = [mEMORY[0x277CE9638] segmentRetrievalInterval] + segmentDataTimestamp;
      date = [MEMORY[0x277CBEAA8] date];
      v24 = v22 - [date AD_toServerTime];

      if (v24 >= 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping segment retrieval request. Segment data for DSID %@ has not expired.", objc_opt_class(), requestCopy];
        goto LABEL_5;
      }

      if ([activeDSIDRecord segmentDataTimestamp] || (objc_msgSend(activeDSIDRecord, "segmentData"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = objc_opt_class();
        dSID2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v24];
        aD_doubleDateTimeAsString = [dSID2 AD_doubleDateTimeAsString];
        v29 = [v26 stringWithFormat:@"[%@]: Segments for DSID %@ expired %d seconds ago (%@). Asking Jingle for new segments.", v27, requestCopy, v24, aD_doubleDateTimeAsString];
        _ADLog();

        goto LABEL_15;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Retrieving segment data for DSID %@ because we don't have any.", objc_opt_class(), requestCopy];
    }
    dSID2 = ;
    _ADLog();
LABEL_15:
    v10 = 1;
    goto LABEL_7;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping segment retrieval request. Request for %@ already in-flight.", objc_opt_class(), requestCopy];
  dSID2 = LABEL_5:;
  _ADLog();
LABEL_6:
  v10 = 0;
LABEL_7:

  return v10;
}

- (id)checkTokenAndDSID:(id)d
{
  dCopy = d;
  token = [dCopy token];
  v6 = [token isEqual:self->_pendingJingleRequestToken];

  if (v6)
  {
    dSID = [dCopy DSID];
    mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
    activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];
    dSID2 = [activeDSIDRecord DSID];
    v11 = [dSID isEqualToString:dSID2];

    if (v11)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    dSID3 = [dCopy DSID];
    mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
    activeDSIDRecord2 = [mEMORY[0x277CE9658]2 activeDSIDRecord];
    dSID4 = [activeDSIDRecord2 DSID];
    v23 = [v19 stringWithFormat:@"[%@]: Segment update response has DSID %@, but current DSID is %@. Ignoring.", v20, dSID3, dSID4];
    v12 = [v18 initWithAdCode:5 andDescription:v23];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    dSID3 = [dCopy token];
    mEMORY[0x277CE9658]2 = [v14 stringWithFormat:@"[%@]: Segment update response has token %@, but was expecting token %@.", v15, dSID3, self->_pendingJingleRequestToken];
    v12 = [v13 initWithAdCode:4 andDescription:mEMORY[0x277CE9658]2];
  }

  [v12 AD_Log:@"iAdIDLogging"];
LABEL_7:

  return v12;
}

- (void)retrieveSegmentData:(id)data forceSegments:(BOOL)segments ignoreTimestamps:(BOOL)timestamps completionHandler:(id)handler
{
  timestampsCopy = timestamps;
  dataCopy = data;
  handlerCopy = handler;
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];

  mEMORY[0x277CE9630] = [MEMORY[0x277CE9630] sharedInstance];
  if ([mEMORY[0x277CE9630] BOOLForKey:@"ForceSegmentDataRetrieval"])
  {
    v14 = [dataCopy isEqualToString:@"0"];

    if ((v14 & 1) == 0)
    {
      v15 = @"[%@]: The Force Segment Data Retrieval switch is enabled - overriding forceSegments parameter.";
LABEL_7:
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:v15, objc_opt_class()];
      _ADLog();

      v17 = +[ADJingleRequestManager sharedInstance];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __93__ADSegmentDataManager_retrieveSegmentData_forceSegments_ignoreTimestamps_completionHandler___block_invoke;
      v29[3] = &unk_278C58700;
      v29[4] = self;
      v30 = activeDSIDRecord;
      v31 = handlerCopy;
      v18 = [v17 makeSegmentRequest:dataCopy forceSegments:1 withCompletion:v29];
      pendingJingleRequestToken = self->_pendingJingleRequestToken;
      self->_pendingJingleRequestToken = v18;

      goto LABEL_17;
    }
  }

  else
  {
  }

  if ([(ADSegmentDataManager *)self shouldSendSegmentRequest:dataCopy ignoreTimestamps:timestampsCopy])
  {
    v15 = @"[%@ retrieveSegmentData]: Forcing 'ioflag = 1'.";
    goto LABEL_7;
  }

  v27 = dataCopy;
  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  isRestrictedByApple = [activeDSIDRecord isRestrictedByApple];
  accountAgeUnknown = [activeDSIDRecord accountAgeUnknown];
  [activeDSIDRecord setIsProtoU13:{objc_msgSend(mEMORY[0x277CE9638], "isProtoU13state")}];
  [activeDSIDRecord setIsProtoTeen:{objc_msgSend(mEMORY[0x277CE9638], "isProtoTeenState")}];
  v26 = accountAgeUnknown;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: The current account is: EDU: %d. Managed: %d. U13: %d. T13: %d. U18: %d. Unknown Age: %d. Proto U13: %d. Proto Teen: %d", objc_opt_class(), objc_msgSend(mEMORY[0x277CE9638], "educationModeEnabled"), objc_msgSend(mEMORY[0x277CE9638], "isManagedAppleID"), objc_msgSend(activeDSIDRecord, "accountIsU13"), objc_msgSend(activeDSIDRecord, "accountIsT13"), objc_msgSend(activeDSIDRecord, "accountIsU18"), accountAgeUnknown, objc_msgSend(activeDSIDRecord, "isProtoU13"), objc_msgSend(activeDSIDRecord, "isProtoTeen")];
  _ADLog();

  mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
  saveAndNotifyIfNecessary = [mEMORY[0x277CE9658]2 saveAndNotifyIfNecessary];

  v25 = 0;
  if (isRestrictedByApple)
  {
    dataCopy = v27;
  }

  else
  {
    dataCopy = v27;
    if ((v26 & 1) == 0)
    {
      if ([activeDSIDRecord isProtoU13])
      {
        v25 = 0;
      }

      else
      {
        v25 = [activeDSIDRecord isProtoTeen] ^ 1;
      }
    }
  }

  [mEMORY[0x277CE9638] setIdentifierForAdvertisingAllowed:v25];
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_17:
}

- (void)handleJingleSegmentResponse:(id)response activeRecord:(id)record completionHandler:(id)handler
{
  responseCopy = response;
  recordCopy = record;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  if (responseCopy)
  {
    error = [responseCopy error];

    if (error)
    {
      if (handlerCopy)
      {
        error2 = [responseCopy error];
        handlerCopy[2](handlerCopy, error2, 1);
      }

      [(ADSegmentDataManager *)self setPendingJingleRequestToken:0];
      v14 = 0;
      goto LABEL_11;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    dSID = [responseCopy DSID];
    v20 = [v17 stringWithFormat:@"[%@ retrieveSegmentData]: Received segment update response for DSID %@", v18, dSID];
    _ADLog();

    v14 = [(ADSegmentDataManager *)self checkTokenAndDSID:responseCopy];
    [(ADSegmentDataManager *)self setPendingJingleRequestToken:0];
    if (v14)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData] Error making segment request: %@", objc_opt_class(), v14];
      _ADLog();

      if (!handlerCopy)
      {
        goto LABEL_11;
      }

LABEL_10:
      handlerCopy[2](handlerCopy, v14, 1);
      goto LABEL_11;
    }

    responseBody = [responseCopy responseBody];

    if (!responseBody)
    {
      v31 = objc_alloc(MEMORY[0x277CCA9B8]);
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: Segment update returned empty response body. Segments not updated.", objc_opt_class()];
      v14 = [v31 initWithAdCode:3 andDescription:v32];

      [v14 AD_Log:@"iAdIDLogging"];
      if (!handlerCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v23 = MEMORY[0x277CCAAA0];
    responseBody2 = [responseCopy responseBody];
    v49 = 0;
    v25 = [v23 JSONObjectWithData:responseBody2 options:0 error:&v49];
    v14 = v49;

    v26 = MEMORY[0x277CCACA8];
    v27 = objc_opt_class();
    if (v14)
    {
      code = [v14 code];
      localizedDescription = [v14 localizedDescription];
      v30 = [v26 stringWithFormat:@"[%@ retrieveSegmentData]: Error %ld decoding segment update response: %@", v27, code, localizedDescription];
      _ADLog();

      if (!handlerCopy)
      {
LABEL_31:

        goto LABEL_11;
      }

LABEL_15:
      handlerCopy[2](handlerCopy, v14, 1);
      goto LABEL_31;
    }

    dSID2 = [responseCopy DSID];
    aD_jsonString = [v25 AD_jsonString];
    v35 = [v26 stringWithFormat:@"[%@ retrieveSegmentData]: Successfully decoded segment update response for DSID %@:\n%@", v27, dSID2, aD_jsonString];
    _ADLog();

    if (!recordCopy)
    {
      v38 = objc_alloc(MEMORY[0x277CCA9B8]);
      v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"activeRecord == nil. Please file a Radar!"];
      v14 = [v38 initWithAdCode:13 andDescription:v39];

      v40 = MEMORY[0x277CCACA8];
      v41 = objc_opt_class();
      localizedDescription2 = [v14 localizedDescription];
      v43 = [v40 stringWithFormat:@"[%@ retrieveSegmentData]: %@", v41, localizedDescription2];
      _ADLog();

      if (!handlerCopy)
      {
        goto LABEL_31;
      }

      goto LABEL_15;
    }

    v36 = [v25 objectForKeyedSubscript:@"status"];
    intValue = [v36 intValue];

    if (intValue != 1602)
    {
      if (intValue == 1601)
      {
        if ([recordCopy lastJingleAccountStatus] == 1 && objc_msgSend(recordCopy, "accountAgeUnknown"))
        {
          [recordCopy setAccountAgeUnknown:0];
        }

        [recordCopy setLastJingleAccountStatus:1];
        date = [MEMORY[0x277CBEAA8] date];
        [recordCopy setSegmentDataTimestamp:{objc_msgSend(date, "AD_toServerTime")}];

        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: The Jingle Weak Token for this user has expired. No action is possible by iAd, the user must log into the account.", objc_opt_class()];
        _ADLog();

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0, 1);
        }

        goto LABEL_30;
      }

      if (intValue)
      {
        if ((intValue & 0x80000000) != 0)
        {
          v46 = @"[%@ retrieveSegmentData]: Jingle response code %d indicates a malformed request. Please file a Radar!";
        }

        else
        {
          [recordCopy setLastJingleAccountStatus:-1];
          v46 = @"[%@ retrieveSegmentData]: Unhandled Jingle response code %d. Please file a Radar!";
        }

        v47 = objc_alloc(MEMORY[0x277CCA9B8]);
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:v46, objc_opt_class(), intValue];
        v14 = [v47 initWithAdCode:3 andDescription:v48];

        [v14 AD_Log:@"iAdIDLogging"];
        if (!handlerCopy)
        {
          goto LABEL_31;
        }

        goto LABEL_15;
      }
    }

    [recordCopy setLastJingleAccountStatus:0];
    [(ADSegmentDataManager *)self handleSuccessfulJingleSegmentResponse:v25 dsidRecord:recordCopy completionHandler:handlerCopy];
LABEL_30:
    v14 = 0;
    goto LABEL_31;
  }

  v15 = objc_alloc(MEMORY[0x277CCA9B8]);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: Segment update returned nil request. An update was not even attempted.", objc_opt_class()];
  v14 = [v15 initWithAdCode:11 andDescription:v16];

  [v14 AD_Log:@"iAdIDLogging"];
  [(ADSegmentDataManager *)self setPendingJingleRequestToken:0];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v14, 0);
  }

LABEL_11:

  objc_autoreleasePoolPop(v11);
}

- (BOOL)verifyGenderInSegmentData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"it"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"dm"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 objectForKeyedSubscript:@"14"];
        v7 = [v5 objectForKeyedSubscript:@"17"];
        v8 = [v5 objectForKeyedSubscript:@"18"];
        v9 = v8;
        if (v6 || v7 || v8)
        {
          if (v6 || !(v7 | v8))
          {
            v11 = MEMORY[0x277CCACA8];
            v12 = objc_opt_class();
            if (!v6 || v7 || v9)
            {
              v15 = [v11 stringWithFormat:@"[%@]: Both old and new gender data is present in segmentData. This is an error.", v12];
              _ADLog();

              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Demographic data is: %@", objc_opt_class(), v5];
              _ADLog();
              v10 = 0;
              goto LABEL_20;
            }

            [v11 stringWithFormat:@"[%@]: Only old gender data present.", v12];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Only new gender data present.", objc_opt_class()];
          }
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: No gender data present.", objc_opt_class()];
        }
        v13 = ;
        _ADLog();
        v10 = 1;
LABEL_20:

        goto LABEL_21;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: demographicData returned is not a dictionary!", objc_opt_class(), v16];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: %@ key not present in segmentData", objc_opt_class(), @"dm"];
    }
    v6 = ;
    _ADLog();
    v10 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: %@ key not present in segmentData", objc_opt_class(), @"it"];
  _ADLog();
  v10 = 1;
LABEL_22:

  return v10;
}

- (void)handleSuccessfulJingleSegmentResponse:(id)response dsidRecord:(id)record completionHandler:(id)handler
{
  v107[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  recordCopy = record;
  handlerCopy = handler;
  context = objc_autoreleasePoolPush();
  v11 = [responseCopy objectForKeyedSubscript:@"last-served"];
  if (MGGetBoolAnswer() && ([MEMORY[0x277CE9630] sharedInstance], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLForKey:", @"adForceConsumerStatus"), v12, (v13 & 1) != 0))
  {
    v14 = 1;
    v15 = 1;
  }

  else
  {
    v14 = 0;
    v15 = [recordCopy isRestrictedByApple] ^ 1;
  }

  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  v17 = mEMORY[0x277CE9638];
  selfCopy = self;
  v98 = v15;
  v100 = handlerCopy;
  if ((v15 & 1) == 0)
  {
    if (([mEMORY[0x277CE9638] isManagedAppleID] & 1) == 0)
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = objc_opt_class();
      dSID = [recordCopy DSID];
      v26 = [v23 stringWithFormat:@"[%@ retrieveSegmentData]: %@ is a restricted account, ignoring segments from Jingle.", v24, dSID];
      _ADLog();

      goto LABEL_24;
    }

LABEL_10:
    date = [MEMORY[0x277CBEAA8] date];
    [recordCopy setSegmentDataTimestamp:{objc_msgSend(date, "AD_toServerTime")}];

    v95 = v17;
    if ([v17 isPersonalizedAdsEnabled])
    {
      [recordCopy setLastSegmentServedTimestamp:{objc_msgSend(recordCopy, "segmentDataTimestamp")}];
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Segments have changed for opted-in user. Updating lastSegmentServedTimestamp to %d", objc_opt_class(), objc_msgSend(recordCopy, "lastSegmentServedTimestamp")];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Ignoring segment change for opted-out user.", objc_opt_class(), v94];
    }
    v27 = ;
    v28 = v11;
    _ADLog();

    v29 = [responseCopy objectForKeyedSubscript:@"payload"];
    if (v29)
    {
      if ([(ADSegmentDataManager *)self verifyGenderInSegmentData:v29])
      {
        v103 = 0;
        v30 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v29 options:0 error:&v103];
        v31 = v103;
        v32 = MEMORY[0x277CCACA8];
        if (v31)
        {
          v33 = objc_opt_class();
          code = [v31 code];
          [v31 localizedDescription];
          v35 = v96 = v30;
          v36 = [v32 stringWithFormat:@"[%@ retrieveSegmentData]: Error %ld decoding segment dictionary %@: %@", v33, code, v29, v35];
          _ADLog();

          v37 = MEMORY[0x277CCACA8];
          v38 = objc_opt_class();
          code2 = [v31 code];
          localizedDescription = [v31 localizedDescription];
          v41 = [v37 stringWithFormat:@"[%@ retrieveSegmentData]: Error %ld decoding segment dictionary %@: %@", v38, code2, v29, localizedDescription];

          v42 = v96;
          ADSimulateCrash();
        }

        else
        {
          v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v30 encoding:4];
          [recordCopy setSegmentData:v41];
          v50 = [(ADSegmentDataManager *)self parseISO3166CodeFromSegmentData:v41];
          [recordCopy setIso3166Code:v50];

          v42 = v30;
        }

        v11 = v28;

        goto LABEL_23;
      }

      v47 = MEMORY[0x277CCACA8];
      dSID2 = [recordCopy DSID];
      v49 = [v47 stringWithFormat:@"For DSID: %@ both old and new gender data is present in segmentData: %@. This is an error.", dSID2, v29];

      ADSimulateCrash();
    }

    else
    {
      v43 = MEMORY[0x277CCACA8];
      v44 = objc_opt_class();
      dSID3 = [recordCopy DSID];
      v46 = [v43 stringWithFormat:@"[%@ retrieveSegmentData]: Jingle did not return segment payload for DSID %@", v44, dSID3];
      _ADLog();
    }

    v11 = v28;
LABEL_23:
    v17 = v95;

    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  [recordCopy setLastSegmentServedTimestamp:{objc_msgSend(v11, "intValue")}];
  segmentDataTimestamp = [recordCopy segmentDataTimestamp];
  if (segmentDataTimestamp < [recordCopy lastSegmentServedTimestamp])
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ retrieveSegmentData]: Overriding unchanged segments - local segment timestamp (%d) is older than last-served timestamp (%d)", objc_opt_class(), objc_msgSend(recordCopy, "segmentDataTimestamp"), objc_msgSend(recordCopy, "lastSegmentServedTimestamp")];
    _ADLog();

    dSID4 = [recordCopy DSID];
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __91__ADSegmentDataManager_handleSuccessfulJingleSegmentResponse_dsidRecord_completionHandler___block_invoke;
    v104[3] = &unk_278C58728;
    v105 = handlerCopy;
    [(ADSegmentDataManager *)self retrieveSegmentData:dSID4 forceSegments:1 completionHandler:v104];

    v21 = v105;
    goto LABEL_51;
  }

LABEL_24:
  v97 = v11;
  if (v14)
  {
    [recordCopy setAccountIsU13:0];
    v51 = [responseCopy objectForKeyedSubscript:@"t13flag"];
    [recordCopy setAccountIsT13:{objc_msgSend(v51, "intValue") > 0}];

    [recordCopy setAccountIsU18:0];
    [recordCopy setAccountAgeUnknown:0];
  }

  else
  {
    v52 = [responseCopy objectForKeyedSubscript:@"u13flag"];
    [recordCopy setAccountIsU13:{objc_msgSend(v52, "intValue") > 0}];

    v53 = [responseCopy objectForKeyedSubscript:@"t13flag"];
    [recordCopy setAccountIsT13:{objc_msgSend(v53, "intValue") > 0}];

    v54 = [responseCopy objectForKeyedSubscript:@"u18flag"];
    [recordCopy setAccountIsU18:{objc_msgSend(v54, "intValue") > 0}];

    v55 = [responseCopy objectForKeyedSubscript:@"no-segment"];
    [recordCopy setAccountAgeUnknown:{objc_msgSend(v55, "BOOLValue")}];
  }

  [recordCopy setIsProtoU13:{objc_msgSend(v17, "isProtoU13state")}];
  [recordCopy setIsProtoTeen:{objc_msgSend(v17, "isProtoTeenState")}];
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: The current account is: EDU: %d. Managed: %d. U13: %d. T13: %d. U18: %d. Unknown Age: %d. Proto U13: %d. Proto Teen: %d", objc_opt_class(), objc_msgSend(v17, "educationModeEnabled"), objc_msgSend(v17, "isManagedAppleID"), objc_msgSend(recordCopy, "accountIsU13"), objc_msgSend(recordCopy, "accountIsT13"), objc_msgSend(recordCopy, "accountIsU18"), objc_msgSend(recordCopy, "accountAgeUnknown"), objc_msgSend(v17, "isProtoU13state"), objc_msgSend(v17, "isProtoTeenState")];
  _ADLog();

  if (v98)
  {
    v57 = selfCopy;
    v58 = 0x277CBE000;
    if ([recordCopy accountIsU13] & 1) != 0 || (objc_msgSend(recordCopy, "accountIsU18") & 1) != 0 || (objc_msgSend(recordCopy, "accountAgeUnknown") & 1) != 0 || (objc_msgSend(recordCopy, "isProtoU13"))
    {
      v59 = 0;
    }

    else
    {
      v59 = [recordCopy isProtoTeen] ^ 1;
    }
  }

  else
  {
    v59 = 0;
    v57 = selfCopy;
    v58 = 0x277CBE000uLL;
  }

  [v17 setIdentifierForAdvertisingAllowed:v59];
  v21 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  date2 = [*(v58 + 2728) date];
  v61 = [v21 component:4 fromDate:date2];

  segmentData = [recordCopy segmentData];
  v63 = [(ADSegmentDataManager *)v57 parseBirthYearFromSegmentData:segmentData];

  if ([recordCopy isPlaceholderAccount] & 1) != 0 || (objc_msgSend(recordCopy, "accountAgeUnknown"))
  {
    v64 = 0;
    if (!v63)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v64 = [recordCopy isRestrictedByApple] ^ 1;
    if (!v63)
    {
LABEL_45:
      v68 = 0;
      goto LABEL_46;
    }
  }

  [recordCopy setActualBirthYear:{objc_msgSend(v63, "intValue")}];
  if (!v64)
  {
    goto LABEL_45;
  }

  mEMORY[0x277CE9638]2 = [MEMORY[0x277CE9638] sharedInstance];
  isPersonalizedAdsEnabled = [mEMORY[0x277CE9638]2 isPersonalizedAdsEnabled];

  if (isPersonalizedAdsEnabled)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Personalized Ads is ON. We must use actual birth year.", objc_opt_class()];
  }

  else
  {
    if ([recordCopy noiseAppliedVersion] == 10)
    {
      v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Personalized Ads is OFF and we have already applied noise before. Checking if basel year is younger than noised.", objc_opt_class()];
      _ADLog();

      LODWORD(v74) = [v63 intValue];
      if (v74 <= [recordCopy effectiveBirthYear])
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    noiseAppliedVersion = [recordCopy noiseAppliedVersion];
    v76 = MEMORY[0x277CCACA8];
    v77 = objc_opt_class();
    if (noiseAppliedVersion != 20)
    {
      v78 = [v76 stringWithFormat:@"[%@]: Personalized Ads is OFF and we have not applied noise before. Running noise calculation now.", v77];
      _ADLog();

      if (v61 - [v63 integerValue] < 21)
      {
        v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: User INELIGIBLE to be treated with noise.", objc_opt_class()];
        _ADLog();

        [recordCopy setEffectiveBirthYear:{objc_msgSend(v63, "intValue")}];
        [recordCopy setNoiseAppliedVersion:20];
      }

      else
      {
        v79 = [(ADSegmentDataManager *)v57 noiseAppliedBirthYearFromActual:v63];
        v80 = [v63 isEqualToNumber:v79];
        v81 = MEMORY[0x277CCACA8];
        v82 = objc_opt_class();
        if (v80)
        {
          v83 = [v81 stringWithFormat:@"[%@]: User IS NOT being treated with noise.", v82];
          _ADLog();

          intValue = [v63 intValue];
          v85 = 20;
        }

        else
        {
          v87 = [v81 stringWithFormat:@"[%@]: User IS being treated with noise.", v82];
          _ADLog();

          intValue = [v79 intValue];
          v85 = 10;
        }

        [recordCopy setEffectiveBirthYear:intValue];
        [recordCopy setNoiseAppliedVersion:v85];
        mEMORY[0x277CE9638]3 = [MEMORY[0x277CE9638] sharedInstance];
        iTunesStorefront = [mEMORY[0x277CE9638]3 iTunesStorefront];

        v99 = v79;
        if (iTunesStorefront && [iTunesStorefront length] >= 6)
        {
          v90 = [iTunesStorefront substringToIndex:6];

          iTunesStorefront = v90;
        }

        effectiveBirthYear = [recordCopy effectiveBirthYear];
        v106[0] = @"EffectiveAge";
        v92 = [MEMORY[0x277CCABB0] numberWithInteger:v61 + ~effectiveBirthYear];
        v106[1] = @"Storefront";
        v107[0] = v92;
        v107[1] = iTunesStorefront;
        v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
        AnalyticsSendEvent();
      }

      goto LABEL_44;
    }

    [v76 stringWithFormat:@"[%@]: Personalized Ads is OFF and we have already calculated noise before. No noise applied and basel year is honored.", v77];
  }
  v67 = ;
  _ADLog();

LABEL_43:
  [recordCopy setEffectiveBirthYear:{objc_msgSend(v63, "intValue")}];
LABEL_44:
  v68 = -[ADSegmentDataManager isEligibleForSensitiveContent:](v57, "isEligibleForSensitiveContent:", [recordCopy effectiveBirthYear]);
LABEL_46:
  handlerCopy = v100;
  [recordCopy setSensitiveContentEligible:v68];
  v69 = MEMORY[0x277CCACA8];
  v70 = objc_opt_class();
  sensitiveContentEligible = [recordCopy sensitiveContentEligible];
  v72 = @"NOT eligible";
  if (sensitiveContentEligible)
  {
    v72 = @"eligible";
  }

  v73 = [v69 stringWithFormat:@"[%@]: This user is %@ for sensitive content.", v70, v72];
  _ADLog();

  if (v100)
  {
    (*(v100 + 2))(v100, 0, 1);
  }

  v11 = v97;
LABEL_51:

  objc_autoreleasePoolPop(context);
}

uint64_t __91__ADSegmentDataManager_handleSuccessfulJingleSegmentResponse_dsidRecord_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)parseISO3166CodeFromSegmentData:(id)data
{
  v3 = MEMORY[0x277CCAAA0];
  v4 = [data dataUsingEncoding:4];
  v11 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"segmentData is not in JSON format. Unable to parse segmentData."];
    _ADLog();
    v8 = 0;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"it"];
    v9 = [v7 objectForKeyedSubscript:@"xa"];
    v8 = [v9 objectForKeyedSubscript:@"93"];
  }

  return v8;
}

- (id)parseBirthYearFromSegmentData:(id)data
{
  v3 = MEMORY[0x277CCAAA0];
  v4 = [data dataUsingEncoding:4];
  v12 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"segmentData is not in JSON format. Unable to parse segmentData."];
    _ADLog();
    v8 = 0;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"it"];
    v9 = [v7 objectForKeyedSubscript:@"dm"];
    v10 = [v9 objectForKeyedSubscript:@"13"];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "intValue")}];
  }

  return v8;
}

- (id)noiseAppliedBirthYearFromActual:(id)actual
{
  actualCopy = actual;
  if (MGGetBoolAnswer())
  {
    mEMORY[0x277CE9630] = [MEMORY[0x277CE9630] sharedInstance];
    v6 = [mEMORY[0x277CE9630] BOOLForKey:@"EnableCustomPayload"];

    if (v6)
    {
      mEMORY[0x277CE9630]2 = [MEMORY[0x277CE9630] sharedInstance];
      v8 = [mEMORY[0x277CE9630]2 stringForKey:@"SegmentAge"];

      integerValue = [v8 integerValue];
      if (integerValue)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];

        actualCopy = v10;
      }
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v11 = actualCopy;
  v35 = v11;
  v12 = objc_autoreleasePoolPush();
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = MEMORY[0x277D42D10];
  v15 = objc_opt_class();
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __56__ADSegmentDataManager_noiseAppliedBirthYearFromActual___block_invoke;
  v25 = &unk_278C58750;
  v16 = v11;
  v26 = v16;
  selfCopy = self;
  v29 = &v30;
  v17 = v13;
  v28 = v17;
  [v14 fetchConfigurationForClass:v15 completion:&v22];
  v18 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v17, v18))
  {
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] We failed to fetch the noise config in time.", v22, v23, v24, v25, v26, selfCopy];
    _ADLog();
  }

  objc_autoreleasePoolPop(v12);
  v20 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v20;
}

void __56__ADSegmentDataManager_noiseAppliedBirthYearFromActual___block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = [a2 lowerAgeLimits];
  if (!v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] There is an issue with the config payload."];
    _ADLog();

    v5 = [@"{noiseRange:{startAge:18 endAge:{adolescentNoise:0, noise:[{age:18, percentage:0.78}, {age:19, percentage:0.97}, {age:20, percentage:1.15}]}", "dataUsingEncoding:", 4}20}];
    v76 = 0;
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v76];
  }

  v6 = [v3 objectForKey:@"noiseRange"];
  v7 = [v6 objectForKey:@"startAge"];
  v8 = [v6 objectForKey:@"endAge"];
  v61 = v6;
  if ([v7 intValue] <= 12)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:13];

    v7 = v9;
  }

  if ([v7 intValue] >= 19)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:18];

    v7 = v10;
  }

  v64 = a1;
  if ([v8 intValue] <= 19)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:20];

    v8 = v11;
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v63 = v7;
  v13 = [v7 intValue];
  if (v13 <= [v8 intValue])
  {
    do
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
      [v12 addObject:v14];

      v15 = v13 < [v8 intValue];
      v13 = (v13 + 1);
    }

    while (v15);
  }

  v62 = v8;
  v65 = v3;
  v16 = [v3 objectForKey:@"noise"];
  v17 = [v16 mutableCopy];

  v66 = v17;
  v18 = [v17 valueForKey:@"age"];
  v19 = [v18 mutableCopy];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v12;
  v20 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v73;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v73 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v72 + 1) + 8 * i);
        if (([v19 containsObject:v24] & 1) == 0)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is a broken config for age noise where (%d) is missing.", objc_msgSend(v24, "intValue")];
          _ADLog();

          v80[0] = @"age";
          v80[1] = @"percentage";
          v81[0] = v24;
          v81[1] = &unk_28510BE40;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
          [v66 addObject:v26];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v21);
  }

  v27 = [v65 objectForKey:@"adolescentNoise"];
  [v27 floatValue];
  v28 = v63;
  if (v29 > 0.0)
  {
    v30 = [v63 intValue];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:(v30 - 1)];
    v78[0] = @"age";
    v78[1] = @"percentage";
    v79[0] = v31;
    v79[1] = v27;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
    [v66 addObject:v32];
  }

  v33 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v34 = [MEMORY[0x277CBEAA8] date];
  v35 = [v33 component:4 fromDate:v34];

  v36 = v64;
  v37 = v35 + ~[*(v64 + 32) integerValue];
  if (v37 <= [v8 integerValue])
  {
    v44 = v37;
  }

  else
  {
    v59 = v35;
    if (MGGetBoolAnswer())
    {
      v38 = v37;
      v39 = [*(v64 + 40) _ageDistributionOverrides];
      v40 = v39;
      if (v39)
      {
        v41 = v39;

        v66 = v41;
      }

      v37 = v38;
    }

    v42 = arc4random_uniform(0x2710u);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v66 = v66;
    v43 = [v66 countByEnumeratingWithState:&v68 objects:v77 count:16];
    v60 = v37;
    v44 = v37;
    if (v43)
    {
      v45 = v43;
      v58 = v33;
      v46 = 0;
      v47 = *v69;
      while (2)
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v69 != v47)
          {
            objc_enumerationMutation(v66);
          }

          v49 = *(*(&v68 + 1) + 8 * j);
          v50 = [v49 objectForKey:@"percentage"];
          v51 = [v49 objectForKey:@"age"];
          [v50 floatValue];
          v53 = (v52 * 100.0);
          if (v53 <= 50)
          {
            v53 = 50;
          }

          v46 += v53;
          if (v42 < v46)
          {
            v44 = [v51 integerValue];

            goto LABEL_40;
          }
        }

        v45 = [v66 countByEnumeratingWithState:&v68 objects:v77 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }

      v44 = v60;
LABEL_40:
      v28 = v63;
      v36 = v64;
      v8 = v62;
      v33 = v58;
    }

    v35 = v59;
    v37 = v60;
  }

  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"User with age %ld being treated with effective age of %ld.", v37, v44];
  _ADLog();

  if (v37 != v44)
  {
    v55 = [MEMORY[0x277CCABB0] numberWithInteger:v35 + ~v44];
    v56 = *(*(v36 + 56) + 8);
    v57 = *(v56 + 40);
    *(v56 + 40) = v55;
  }

  dispatch_group_leave(*(v36 + 48));
}

- (BOOL)isEligibleForSensitiveContent:(int64_t)content
{
  if (content)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v4 = objc_autoreleasePoolPush();
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = MEMORY[0x277D42D10];
    v7 = objc_opt_class();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__ADSegmentDataManager_isEligibleForSensitiveContent___block_invoke;
    v13[3] = &unk_278C58778;
    v15 = &v17;
    contentCopy = content;
    v8 = v5;
    v14 = v8;
    [v6 fetchConfigurationForClass:v7 completion:v13];
    v9 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v8, v9))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] We failed to fetch the storefront threshold config in time."];
      _ADLog();
    }

    objc_autoreleasePoolPop(v4);
    v11 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __54__ADSegmentDataManager_isEligibleForSensitiveContent___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 enabled];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v19 sensitiveContentEligibilityThreshold];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKey:@"default"];
      v8 = [MEMORY[0x277CE9638] sharedInstance];
      v9 = [v8 iTunesStorefront];

      if (v9 && [v9 length] >= 6)
      {
        v10 = [v9 substringToIndex:6];

        v9 = v10;
      }

      v11 = v6;
      v12 = [v11 objectForKey:v9];

      if (v12)
      {
        v13 = [v11 objectForKey:v9];

        v7 = v13;
      }

      v14 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = [v14 component:4 fromDate:v15];

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v16 + ~*(a1 + 48)];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"The storefront: %@ has a threshold of: %d. The user's age is: %d", v9, objc_msgSend(v7, "intValue"), objc_msgSend(v17, "intValue")];
      _ADLog();

      LODWORD(v18) = [v17 intValue];
      if (v18 >= [v7 intValue])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_ageDistributionOverrides
{
  v28[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CE95C8]];
  v4 = [v3 objectForKey:@"enableAgeDistributionOverrides"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  if ([v5 BOOLValue])
  {
    array = [MEMORY[0x277CBEB18] array];
    v22 = [v3 objectForKey:@"ageDistribution18"];
    v7 = [v3 objectForKey:@"ageDistribution19"];
    v21 = [v3 objectForKey:@"ageDistribution20"];
    v27[0] = @"age";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v27[1] = @"percentage";
    v28[0] = v8;
    v9 = MEMORY[0x277CCABB0];
    [v22 floatValue];
    v10 = [v9 numberWithFloat:?];
    v28[1] = v10;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

    [array addObject:v20];
    v25[0] = @"age";
    v11 = [MEMORY[0x277CCABB0] numberWithInt:19];
    v25[1] = @"percentage";
    v26[0] = v11;
    v12 = MEMORY[0x277CCABB0];
    [v7 floatValue];
    v13 = [v12 numberWithFloat:?];
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

    [array addObject:v14];
    v23[0] = @"age";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:20];
    v23[1] = @"percentage";
    v24[0] = v15;
    v16 = MEMORY[0x277CCABB0];
    [v21 floatValue];
    v17 = [v16 numberWithFloat:?];
    v24[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

    [array addObject:v18];
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)populateAccountTypeFields:(id)fields
{
  fieldsCopy = fields;
  mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];

  iTunesStoreAccount = [mEMORY[0x277CE9638] iTunesStoreAccount];

  if (!iTunesStoreAccount)
  {
    v7 = 0;
    goto LABEL_6;
  }

  if (([activeDSIDRecord accountAgeUnknown] & 1) != 0 || objc_msgSend(activeDSIDRecord, "lastJingleAccountStatus") == 1)
  {
    v7 = 6;
LABEL_6:
    [fieldsCopy addAccountType:v7];
    goto LABEL_7;
  }

  isManagedAppleID = [mEMORY[0x277CE9638] isManagedAppleID];
  if (isManagedAppleID)
  {
    [fieldsCopy addAccountType:2];
  }

  if ([activeDSIDRecord accountIsU13])
  {
    [fieldsCopy addAccountType:3];
    v9 = 0;
  }

  else
  {
    v9 = isManagedAppleID ^ 1;
  }

  [activeDSIDRecord accountIsT13];
  accountIsU18 = [activeDSIDRecord accountIsU18];
  if (accountIsU18)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  if ((accountIsU18 & 1) != 0 || v9)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (BOOL)isSegmentReductionEnabled
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = MEMORY[0x277D42D10];
  v4 = objc_opt_class();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __49__ADSegmentDataManager_isSegmentReductionEnabled__block_invoke;
  v13 = &unk_278C587A0;
  v15 = &v16;
  v5 = v2;
  v14 = v5;
  [v3 fetchConfigurationForClass:v4 completion:&v10];
  v6 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v5, v6))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[FILE A RADAR] We failed to fetch the segments config in time.", v10, v11, v12, v13];
    _ADLog();
  }

  v8 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __49__ADSegmentDataManager_isSegmentReductionEnabled__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 segmentReductionEnabled];

  if (v3)
  {
    v4 = [v5 segmentReductionEnabled];
    *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)shouldSendSegmentDataToAdPlatforms:(id)platforms
{
  platformsCopy = platforms;
  mEMORY[0x277CE9630] = [MEMORY[0x277CE9630] sharedInstance];
  v6 = [mEMORY[0x277CE9630] BOOLForKey:@"EnableCustomPayload"];

  if (!v6)
  {
    mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
    activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];

    if ([(ADSegmentDataManager *)self isSegmentReductionEnabled])
    {
      if ([activeDSIDRecord isRestrictedByApple])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Account %@ is a restricted account (U13, U18, MAID, EDU or Proto U13).", objc_opt_class(), platformsCopy];
        v15 = LABEL_19:;
        _ADLog();

        mEMORY[0x277CE9638]4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Segment update request should NOT be sent.", objc_opt_class()];
LABEL_20:
        _ADLog();
LABEL_21:
        v8 = 0;
LABEL_22:

        goto LABEL_23;
      }

      mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
      isPersonalizedAdsEnabled = [mEMORY[0x277CE9638] isPersonalizedAdsEnabled];

      if ((isPersonalizedAdsEnabled & 1) == 0)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. PA is set to OFF", objc_opt_class(), v47];
        goto LABEL_19;
      }

LABEL_16:
      if ([(ADSegmentDataManager *)self segmentUpdateInProgress])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Segment update for %@ is in-flight.", objc_opt_class(), platformsCopy, v48];
        mEMORY[0x277CE9638]4 = LABEL_26:;
        goto LABEL_20;
      }

      if ([(ADSegmentDataManager *)self segmentRetrievalInProgress])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Segment retrieval request to Jingle for %@ is in-flight.", objc_opt_class(), platformsCopy, v48];
        goto LABEL_26;
      }

      dSID = [activeDSIDRecord DSID];
      v19 = [dSID isEqualToString:platformsCopy];

      if (v19)
      {
        mEMORY[0x277CE9638]2 = [MEMORY[0x277CE9638] sharedInstance];
        if (![mEMORY[0x277CE9638]2 isPersonalizedAdsEnabled])
        {
LABEL_31:

          goto LABEL_32;
        }

        v21 = [activeDSIDRecord encryptedIDForClientType:5];
        if (v21)
        {

          goto LABEL_31;
        }

        isPlaceholderAccount = [activeDSIDRecord isPlaceholderAccount];

        if (isPlaceholderAccount)
        {
LABEL_32:
          date = [MEMORY[0x277CBEAA8] date];
          aD_toServerTime = [date AD_toServerTime];
          v24 = aD_toServerTime - [activeDSIDRecord lastSentSegmentDataTimestamp];
          mEMORY[0x277CE9638]3 = [MEMORY[0x277CE9638] sharedInstance];
          maxSegmentSendInterval = [mEMORY[0x277CE9638]3 maxSegmentSendInterval];

          if (v24 > maxSegmentSendInterval)
          {
            lastSentSegmentDataTimestamp = [activeDSIDRecord lastSentSegmentDataTimestamp];
            v28 = MEMORY[0x277CCACA8];
            v29 = objc_opt_class();
            if (lastSentSegmentDataTimestamp)
            {
              mEMORY[0x277CE9638]4 = [MEMORY[0x277CE9638] sharedInstance];
              [v28 stringWithFormat:@"[%@]: Sending segment data to AdPlatforms - maximum update interval of %d seconds exceeded.", v29, objc_msgSend(mEMORY[0x277CE9638]4, "maxSegmentSendInterval")];
            }

            else
            {
              mEMORY[0x277CE9638]4 = [activeDSIDRecord DSID];
              [v28 stringWithFormat:@"[%@]: Sending segment data to AdPlatforms - we have not sent segments before for DSID %@.", v29, mEMORY[0x277CE9638]4];
            }
            v43 = ;
            _ADLog();

            goto LABEL_56;
          }

          mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
          reconcileOperations = [mEMORY[0x277CE9658]2 reconcileOperations];
          if ([reconcileOperations isSet:4])
          {
            mEMORY[0x277CE9638]5 = [MEMORY[0x277CE9638] sharedInstance];
            isPersonalizedAdsEnabled2 = [mEMORY[0x277CE9638]5 isPersonalizedAdsEnabled];

            if (isPersonalizedAdsEnabled2)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because ADReconcileOp_SendSegmentUpdate is set.", objc_opt_class(), v47, v48];
              mEMORY[0x277CE9638]4 = LABEL_55:;
              _ADLog();
LABEL_56:
              v8 = 1;
              goto LABEL_22;
            }
          }

          else
          {
          }

          lastSegmentServedTimestamp = [activeDSIDRecord lastSegmentServedTimestamp];
          if (lastSegmentServedTimestamp < [activeDSIDRecord lastSentSegmentDataTimestamp])
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Segment data has not changed (lastSegmentServedTimestamp = %d < lastSentSegmentDataTimestamp %d).", objc_opt_class(), objc_msgSend(activeDSIDRecord, "lastSegmentServedTimestamp"), objc_msgSend(activeDSIDRecord, "lastSentSegmentDataTimestamp")];
            goto LABEL_26;
          }

          segmentDataTimestamp = [activeDSIDRecord segmentDataTimestamp];
          if (segmentDataTimestamp <= [activeDSIDRecord lastSentSegmentDataTimestamp])
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms, it was previously sent at %d and hasn't changed since %d.", objc_opt_class(), objc_msgSend(activeDSIDRecord, "lastSentSegmentDataTimestamp"), objc_msgSend(activeDSIDRecord, "segmentDataTimestamp")];
            goto LABEL_26;
          }

          lastSegmentServedTimestamp2 = [activeDSIDRecord lastSegmentServedTimestamp];
          if (lastSegmentServedTimestamp2 <= [activeDSIDRecord lastSentSegmentDataTimestamp])
          {
            segmentDataTimestamp2 = [activeDSIDRecord segmentDataTimestamp];
            if (segmentDataTimestamp2 <= [activeDSIDRecord lastSentSegmentDataTimestamp])
            {
              goto LABEL_3;
            }

            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because segment data changed (segmentDataTimestamp = %d > lastSentSegmentDataTimestamp %d).", objc_opt_class(), objc_msgSend(activeDSIDRecord, "segmentDataTimestamp"), objc_msgSend(activeDSIDRecord, "lastSentSegmentDataTimestamp")];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because segment data changed (lastSegmentServedTimestamp = %d > lastSentSegmentDataTimestamp %d).", objc_opt_class(), objc_msgSend(activeDSIDRecord, "lastSegmentServedTimestamp"), objc_msgSend(activeDSIDRecord, "lastSentSegmentDataTimestamp")];
          }

          goto LABEL_55;
        }

        v41 = MEMORY[0x277CCACA8];
        v42 = objc_opt_class();
        mEMORY[0x277CE9638]4 = [activeDSIDRecord DSID];
        [v41 stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Device is opted-in but DPID for %@ is NULL.", v42, mEMORY[0x277CE9638]4, v48];
      }

      else
      {
        v32 = MEMORY[0x277CCACA8];
        v33 = objc_opt_class();
        mEMORY[0x277CE9638]4 = [activeDSIDRecord DSID];
        [v32 stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Current active record DSID %@ does not match request DSID %@.", v33, mEMORY[0x277CE9638]4, platformsCopy];
      }
      v34 = ;
      _ADLog();

      goto LABEL_21;
    }

    if (([activeDSIDRecord accountIsU13] & 1) == 0)
    {
      mEMORY[0x277CE9638]6 = [MEMORY[0x277CE9638] sharedInstance];
      if ([mEMORY[0x277CE9638]6 isManagedAppleID])
      {
LABEL_13:

        goto LABEL_14;
      }

      mEMORY[0x277CE9638]7 = [MEMORY[0x277CE9638] sharedInstance];
      if ([mEMORY[0x277CE9638]7 educationModeEnabled])
      {
LABEL_12:

        goto LABEL_13;
      }

      mEMORY[0x277CE9638]8 = [MEMORY[0x277CE9638] sharedInstance];
      if ([mEMORY[0x277CE9638]8 isProtoU13state])
      {

        goto LABEL_12;
      }

      mEMORY[0x277CE9638]9 = [MEMORY[0x277CE9638] sharedInstance];
      isProtoTeenState = [mEMORY[0x277CE9638]9 isProtoTeenState];

      if ((isProtoTeenState & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_14:
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Skipping sending segment data to AdPlatforms. Account %@ is a U13 or MAID or EDU or Proto U13/Teen account.", objc_opt_class(), platformsCopy];
    goto LABEL_19;
  }

  activeDSIDRecord = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Sending segment data to AdPlatforms because AD_ENABLE_CUSTOM_SEGMENT_PAYLOAD is enabled.", objc_opt_class()];
  _ADLog();
LABEL_3:
  v8 = 1;
LABEL_23:

  return v8;
}

- (void)sendSegmentDataToAdPlatforms:(id)platforms completionHandler:(id)handler
{
  platformsCopy = platforms;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  if ([(ADSegmentDataManager *)self shouldSendSegmentDataToAdPlatforms:platformsCopy])
  {
    self->_segmentUpdateInProgress = 1;
    workQueue = [MEMORY[0x277CE96B8] workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke;
    v10[3] = &unk_278C57E60;
    v10[4] = self;
    v11 = handlerCopy;
    [workQueue addOperationWithBlock:v10];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  objc_autoreleasePoolPop(v8);
}

void __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  v47 = [MEMORY[0x277CE96B8] sharedInstance];
  v3 = [MEMORY[0x277CE9658] sharedInstance];
  v4 = objc_alloc_init(MEMORY[0x277CE96A8]);
  v5 = [v3 activeDSIDRecord];
  v45 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v6 = [v45 UUIDString];
  [v4 setAdvertisingIdentifier:v6];

  v46 = v3;
  v7 = [v3 monthlyResetArray];
  [v4 setAdvertisingIdentifierMonthResetCount:{objc_msgSend(v7, "count")}];

  v8 = [v5 encryptedIDForClientType:0];
  [v4 setIAdID:v8];

  v9 = [v5 encryptedIDForClientType:5];
  [v4 setDPID:v9];

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v44 = [v10 initWithSuiteName:*MEMORY[0x277CE95C8]];
  v11 = [v44 objectForKey:@"acknowledgedPersonalizedAdsVersion"];

  if (([v5 isRestrictedByApple] & 1) != 0 || !objc_msgSend(v2, "isPersonalizedAdsEnabled"))
  {
    v12 = 1;
  }

  else
  {
    v12 = [v5 isPlaceholderAccount];
    if ((v12 & 1) == 0 && v11)
    {
      if ([v5 lastJingleAccountStatus] != 1)
      {
LABEL_24:
        v20 = [v5 segmentData];
        [v4 setSegmentInfo:v20];
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  v43 = v12;
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  if ([v5 isRestrictedByApple])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([v2 isPersonalizedAdsEnabled])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if ([v5 isPlaceholderAccount])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (v11)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [v13 stringWithFormat:@"[%@ sendSegmentDataToAdPlatforms]: NOT including segment data in ADSegmentUpdateRequest because -\nisRestrictedByApple: %@\npersonalizedAdsEnabled: %@\nisPlaceholderAccount: %@\nconsentedToPA: %@", v14, v15, v16, v17, v18];
  _ADLog();

  if ([v5 lastJingleAccountStatus] != 1)
  {
    if (v43)
    {
      [v4 setSegmentInfo:0];
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_21:
  [v4 setSegmentInfo:{@"{t:6, o:0}"}];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ sendSegmentDataToAdPlatforms]: Forcing segment data to %@", objc_opt_class(), @"{t:6, o:0}"];
  _ADLog();
LABEL_25:

LABEL_26:
  v21 = [MEMORY[0x277CE9630] sharedInstance];
  v22 = [v21 BOOLForKey:@"EnableCustomPayload"];

  if (v22)
  {
    v23 = [v2 customJinglePayload];
    v24 = [v2 isPersonalizedAdsEnabled];
    v25 = MEMORY[0x277CCACA8];
    v26 = objc_opt_class();
    v27 = @"nil (LAT Enabled)";
    if (v24)
    {
      v27 = v23;
      v28 = v23;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v25 stringWithFormat:@"[%@] Using Custom Segment Payload from Internal Settings: %@", v26, v27];
    _ADLog();

    [v4 setSegmentInfo:v28];
    [v5 setSegmentData:v23];
    v30 = MEMORY[0x277CCACA8];
    v31 = [v5 segmentData];
    v32 = [v30 stringWithFormat:@"Active DSID record segments set to: %@", v31];
    _ADLog();
  }

  [v4 setIsFirstPartyIdentifier:0];
  [v4 setITunesRefreshTime:{objc_msgSend(v5, "segmentDataTimestamp")}];
  v33 = [MEMORY[0x277CBEAA8] date];
  [v4 setUpdateSentTime:{objc_msgSend(v33, "AD_toServerTime")}];

  [v2 timezone];
  [v4 setTimezone:?];
  v34 = [v2 osVersionAndBuild];
  [v4 setOsVersionAndBuild:v34];

  v35 = [v2 localeIdentifier];
  [v4 setLocaleIdentifier:v35];

  [v4 addDeviceMode:{objc_msgSend(v2, "educationModeEnabled")}];
  [*(a1 + 32) populateAccountTypeFields:v4];
  v36 = [v2 iCloudDSID];

  if (v36)
  {
    v37 = [v2 iCloudDSID];
    v38 = [v2 iTunesAccountDSID];
    v39 = [v37 isEqualToString:v38];

    if (v39)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }
  }

  else
  {
    v40 = 0;
  }

  [v4 addAccountState:v40];
  v41 = [v2 defaultServerURL];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke_2;
  v48[3] = &unk_278C587C8;
  v42 = *(a1 + 40);
  v48[4] = *(a1 + 32);
  v49 = v42;
  [v47 handleRequest:v4 serverURL:v41 responseHandler:v48];
}

void __71__ADSegmentDataManager_sendSegmentDataToAdPlatforms_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x277CE96B0];
  v7 = a4;
  v8 = a2;
  v9 = [[v6 alloc] initWithData:v8];

  [*(a1 + 32) handleSegmentUpdateResponse:v9 error:v7 completionHandler:*(a1 + 40)];
}

- (void)handleSegmentUpdateResponse:(id)response error:(id)error completionHandler:(id)handler
{
  responseCopy = response;
  errorCopy = error;
  handlerCopy = handler;
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  if (errorCopy)
  {
    dSID = [activeDSIDRecord DSID];
    v15 = ClientTypeToString();
    code = [errorCopy code];
    localizedDescription = [errorCopy localizedDescription];
    v18 = [v12 stringWithFormat:@"[%@] Error sending segments to AdPlatforms for %@ %@. Error %ld - %@", v13, dSID, v15, code, localizedDescription];
    _ADLog();

LABEL_3:
    goto LABEL_10;
  }

  aD_jsonString = [responseCopy AD_jsonString];
  v20 = [v12 stringWithFormat:@"[%@] Received segment update response: %@", v13, aD_jsonString];
  _ADLog();

  date = [MEMORY[0x277CBEAA8] date];
  [activeDSIDRecord setLastSentSegmentDataTimestamp:{objc_msgSend(date, "AD_toServerTime")}];

  if ([responseCopy hasSegmentRefreshIntervalInSeconds])
  {
    [responseCopy segmentRefreshIntervalInSeconds];
    if (v22 > 0.0)
    {
      [responseCopy segmentRefreshIntervalInSeconds];
      v24 = v23;
      mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
      [mEMORY[0x277CE9638] setSegmentRetrievalInterval:v24];
    }
  }

  if ([responseCopy hasMaxSegmentUpdateIntervalInSeconds])
  {
    [responseCopy maxSegmentUpdateIntervalInSeconds];
    if (v26 > 0.0)
    {
      [responseCopy maxSegmentUpdateIntervalInSeconds];
      v28 = v27;
      dSID = [MEMORY[0x277CE9638] sharedInstance];
      [dSID setMaxSegmentSendInterval:v28];
      goto LABEL_3;
    }
  }

LABEL_10:
  self->_segmentUpdateInProgress = 0;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, errorCopy, 1);
  }
}

@end