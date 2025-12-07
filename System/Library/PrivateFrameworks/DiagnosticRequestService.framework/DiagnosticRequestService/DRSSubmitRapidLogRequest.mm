@interface DRSSubmitRapidLogRequest
- (BOOL)isEqualToRequest:(id)request;
- (DRSSubmitRapidLogRequest)initWithXPCDict:(id)dict;
- (id)_initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:(id)e;
- (id)debugDescription;
- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose;
- (void)_configureRequestMO:(id)o;
@end

@implementation DRSSubmitRapidLogRequest

- (id)_initWithSubmitRapidLogRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v13.receiver = self;
  v13.super_class = DRSSubmitRapidLogRequest;
  v5 = [(DRSSubmitLogRequest *)&v13 _initWithSubmitLogRequestMO_ON_MOC_QUEUE:eCopy];
  if (v5)
  {
    cfDidSucceed = [eCopy cfDidSucceed];
    v7 = v5[18];
    v5[18] = cfDidSucceed;

    cfFailureReason = [eCopy cfFailureReason];
    v9 = v5[19];
    v5[19] = cfFailureReason;

    cfReplyPayload = [eCopy cfReplyPayload];
    v11 = v5[20];
    v5[20] = cfReplyPayload;
  }

  return v5;
}

- (DRSSubmitRapidLogRequest)initWithXPCDict:(id)dict
{
  v6.receiver = self;
  v6.super_class = DRSSubmitRapidLogRequest;
  v3 = [(DRSRequest *)&v6 initWithXPCDict:dict];
  v4 = v3;
  if (v3)
  {
    [(DRSRequest *)v3 setDecisionServerDecision:2];
  }

  return v4;
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v31.receiver = self;
  v31.super_class = DRSSubmitRapidLogRequest;
  if ([(DRSSubmitLogRequest *)&v31 isEqualToRequest:requestCopy])
  {
    v5 = requestCopy;
    cfDidSucceed = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
    cfDidSucceed2 = [v5 cfDidSucceed];
    IsNil = _oneIsNil(cfDidSucceed, cfDidSucceed2);

    if (IsNil & 1) != 0 || (-[DRSSubmitRapidLogRequest cfDidSucceed](self, "cfDidSucceed"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, -[DRSSubmitRapidLogRequest cfDidSucceed](self, "cfDidSucceed"), v11 = objc_claimAutoreleasedReturnValue(), [v5 cfDidSucceed], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToNumber:", v12), v12, v11, v10, !v13) || (-[DRSSubmitRapidLogRequest cfFailureReason](self, "cfFailureReason"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "cfFailureReason"), v15 = objc_claimAutoreleasedReturnValue(), v16 = _oneIsNil(v14, v15), v15, v14, (v16) || (-[DRSSubmitRapidLogRequest cfFailureReason](self, "cfFailureReason"), (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, -[DRSSubmitRapidLogRequest cfFailureReason](self, "cfFailureReason"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "cfFailureReason"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, v19, v18, !v21) || (-[DRSSubmitRapidLogRequest cfReplyPayload](self, "cfReplyPayload"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "cfReplyPayload"), v23 = objc_claimAutoreleasedReturnValue(), v24 = _oneIsNil(v22, v23), v23, v22, (v24))
    {
      v25 = 0;
    }

    else
    {
      cfReplyPayload = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
      if (cfReplyPayload)
      {
        v28 = cfReplyPayload;
        cfReplyPayload2 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
        cfReplyPayload3 = [v5 cfReplyPayload];
        v25 = [cfReplyPayload2 isEqualToData:cfReplyPayload3];
      }

      else
      {
        v25 = 1;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (id)jsonCompatibleDictionaryRepresentationVerbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v5 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = DRSSubmitRapidLogRequest;
  v6 = [(DRSRequest *)&v15 jsonCompatibleDictionaryRepresentationVerbose:verboseCopy];
  cfDidSucceed = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];

  if (cfDidSucceed)
  {
    cfDidSucceed2 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
    [v6 setObject:cfDidSucceed2 forKeyedSubscript:@"cfDidSucceed"];

    cfFailureReason = [(DRSSubmitRapidLogRequest *)self cfFailureReason];

    if (cfFailureReason)
    {
      cfFailureReason2 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
      [v6 setObject:cfFailureReason2 forKeyedSubscript:@"cfFailureReason"];
    }

    cfReplyPayload = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];

    if (cfReplyPayload)
    {
      cfReplyPayload2 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
      v13 = [cfReplyPayload2 base64EncodedStringWithOptions:0];
      [v6 setObject:v13 forKeyedSubscript:@"cfReplyPayload"];
    }
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = DRSSubmitRapidLogRequest;
  v4 = [(DRSRequest *)&v13 debugDescription];
  cfDidSucceed = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  if (cfDidSucceed)
  {
    cfDidSucceed2 = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  }

  else
  {
    cfDidSucceed2 = @"-";
  }

  cfFailureReason = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  if (cfFailureReason)
  {
    cfFailureReason2 = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  }

  else
  {
    cfFailureReason2 = @"-";
  }

  cfReplyPayload = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
  if (cfReplyPayload)
  {
    cfReplyPayload2 = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
    v11 = [v3 stringWithFormat:@"%@ %@ %@ %@", v4, cfDidSucceed2, cfFailureReason2, cfReplyPayload2];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"%@ %@ %@ %@", v4, cfDidSucceed2, cfFailureReason2, @"-"];
  }

  if (cfFailureReason)
  {
  }

  if (cfDidSucceed)
  {
  }

  return v11;
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  v9.receiver = self;
  v9.super_class = DRSSubmitRapidLogRequest;
  [(DRSSubmitLogRequest *)&v9 _configureRequestMO:oCopy];
  v5 = oCopy;
  cfDidSucceed = [(DRSSubmitRapidLogRequest *)self cfDidSucceed];
  [v5 setCfDidSucceed:cfDidSucceed];

  cfFailureReason = [(DRSSubmitRapidLogRequest *)self cfFailureReason];
  [v5 setCfFailureReason:cfFailureReason];

  cfReplyPayload = [(DRSSubmitRapidLogRequest *)self cfReplyPayload];
  [v5 setCfReplyPayload:cfReplyPayload];
}

@end