@interface _DPDediscoSubmissionManagerV2
- (_DPDediscoSubmissionManagerV2)init;
- (id)payloadEncoderForDonation:(id)donation keys:(id)keys error:(id *)error;
- (id)payloadForDonation:(id)donation keys:(id)keys error:(id *)error;
- (id)uploadDAPPayload:(id)payload withEncoder:(id)encoder withKeys:(id)keys useOHTTP:(BOOL)p telemetryAllowed:(BOOL)allowed;
@end

@implementation _DPDediscoSubmissionManagerV2

- (_DPDediscoSubmissionManagerV2)init
{
  v3 = [NSURL URLWithString:@"https://unlinkability.apple.com/config/global-dap-ppm-config.plist"];
  v4 = [[_DPDediscoNetworkingService alloc] initWithDomain:@"https://unlinkability.apple.com" configurationURL:v3];
  v5 = [(_DPDediscoSubmissionManager *)self initWithNetworkingService:v4];

  return v5;
}

- (id)payloadEncoderForDonation:(id)donation keys:(id)keys error:(id *)error
{
  donationCopy = donation;
  keysCopy = keys;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Expected v2 key configurations." userInfo:0];
    objc_exception_throw(v14);
  }

  v9 = [_DPDAPPayloadEncoder encoderForDonation:donationCopy keys:keysCopy error:error];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [donationCopy key];
    LOBYTE(v15) = [donationCopy isTelemetryAllowed];
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:v12 eventPhase:4 uuid:0 succeeded:0 errorCode:405 errorMessage:@"Failed to create payload encoder for Dedisco V2" aggregateFunction:0x100000001 count:v15 telemetryAllowed:?];
  }

  return v10;
}

- (id)payloadForDonation:(id)donation keys:(id)keys error:(id *)error
{
  donationCopy = donation;
  v9 = [(_DPDediscoSubmissionManagerV2 *)self payloadEncoderForDonation:donationCopy keys:keys error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 dediscoPayloadWithError:error];
    if (v11)
    {
      goto LABEL_6;
    }

    v12 = @"Failed to create payload for Dedisco V2";
  }

  else
  {
    v11 = 0;
    v12 = @"Failed to create DAP payload encoder";
  }

  v13 = [donationCopy key];
  LOBYTE(v15) = [donationCopy isTelemetryAllowed];
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:v13 eventPhase:4 uuid:0 succeeded:0 errorCode:406 errorMessage:v12 aggregateFunction:0x100000001 count:v15 telemetryAllowed:?];

LABEL_6:

  return v11;
}

- (id)uploadDAPPayload:(id)payload withEncoder:(id)encoder withKeys:(id)keys useOHTTP:(BOOL)p telemetryAllowed:(BOOL)allowed
{
  pCopy = p;
  payloadCopy = payload;
  encoderCopy = encoder;
  leaderURL = [keys leaderURL];
  v14 = [leaderURL length];
  v15 = +[_DPLog service];
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = "OFF";
      if (pCopy)
      {
        v17 = "ON";
      }

      *buf = 138412546;
      v37 = leaderURL;
      v38 = 2080;
      v39 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Uploading DAP payload to %@, OHTTP:%s", buf, 0x16u);
    }

    getCollectionId = [payloadCopy getCollectionId];
    LOBYTE(v31) = allowed;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:getCollectionId eventPhase:4 uuid:0 succeeded:1 errorCode:400 errorMessage:0 aggregateFunction:0x100000001 count:v31 telemetryAllowed:?];

    v19 = [[_DPDediscoPayloadUploader alloc] initWithBaseURL:leaderURL useOHTTP:pCopy];
    v20 = [(_DPDediscoPayloadUploader *)v19 uploadPayload:payloadCopy withEncoder:encoderCopy];
    v21 = v20;
    if (v20)
    {
      code = [v20 code];
      getCollectionId2 = [payloadCopy getCollectionId];
      localizedDescription = [v21 localizedDescription];
      LOBYTE(v32) = allowed;
      if (code == 801)
      {
        [_DPLHBitacoraLogger donateEventToBitacoraForKey:getCollectionId2 eventPhase:5 uuid:0 succeeded:0 errorCode:410 errorMessage:localizedDescription aggregateFunction:0x100000001 count:v32 telemetryAllowed:?];
      }

      else
      {
        [_DPLHBitacoraLogger donateEventToBitacoraForKey:getCollectionId2 eventPhase:5 uuid:0 succeeded:0 errorCode:503 errorMessage:localizedDescription aggregateFunction:0x100000001 count:v32 telemetryAllowed:?];
      }
    }

    else
    {
      v26 = +[_DPCoreAnalyticsCollector sharedInstance];
      v33 = _DPCoreAnalyticsEvent_PhaseCount;
      v35[0] = &off_1000759A8;
      v34[0] = _DPCoreAnalyticsField_Phase;
      v34[1] = _DPCoreAnalyticsField_TaskName;
      getCollectionId3 = [payloadCopy getCollectionId];
      v35[1] = getCollectionId3;
      v35[2] = &__kCFBooleanTrue;
      v34[2] = _DPCoreAnalyticsField_Status;
      v34[3] = _DPCoreAnalyticsField_Counts;
      v35[3] = &off_1000759C0;
      v28 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
      [v26 reportMetricsForEvent:v33 withMetrics:v28];

      getCollectionId2 = [payloadCopy getCollectionId];
      if (pCopy)
      {
        v29 = 501;
      }

      else
      {
        v29 = 500;
      }

      LOBYTE(v32) = allowed;
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:getCollectionId2 eventPhase:5 uuid:0 succeeded:1 errorCode:v29 errorMessage:0 aggregateFunction:0x100000001 count:v32 telemetryAllowed:?];
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004E378(v16);
    }

    getCollectionId4 = [payloadCopy getCollectionId];
    LOBYTE(v31) = allowed;
    [_DPLHBitacoraLogger donateEventToBitacoraForKey:getCollectionId4 eventPhase:4 uuid:0 succeeded:0 errorCode:414 errorMessage:@"Failed to upload DAP payload: leader URL is empty" aggregateFunction:0x100000001 count:v31 telemetryAllowed:?];

    v21 = [_DPDediscoError errorWithCode:202 description:@"Failed to upload DAP payload: leader URL is empty"];
  }

  return v21;
}

@end