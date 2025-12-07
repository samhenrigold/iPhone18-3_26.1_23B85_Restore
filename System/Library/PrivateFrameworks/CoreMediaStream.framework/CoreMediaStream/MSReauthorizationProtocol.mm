@interface MSReauthorizationProtocol
- (MSReauthorizationProtocol)initWithPersonID:(id)d baseURL:(id)l;
- (id)delegate;
- (void)_coreProtocolDidFailAuthenticationError:(id)error;
- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error;
- (void)abort;
- (void)dealloc;
- (void)requestReauthorizationForAssets:(id)assets;
- (void)setDelegate:(id)delegate;
@end

@implementation MSReauthorizationProtocol

- (void)_coreProtocolDidFailAuthenticationError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = personID;
    v15 = 2114;
    v16 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed authentication. Error: %{public}@", &v11, 0x20u);
  }

  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = 0;

  delegate = [(MSReauthorizationProtocol *)self delegate];
  [delegate reauthorizationProtocol:self didReceiveAuthenticationError:errorCopy];
}

- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error
{
  v57 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = v30;
      personID = [(MSStreamsProtocol *)self personID];
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      *buf = 138543874;
      v52 = v30;
      v53 = 2112;
      v54 = personID;
      v55 = 2114;
      v56 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Reauthorization has failed. Error: %{public}@", buf, 0x20u);
    }

    assetsInFlight = self->_assetsInFlight;
    self->_assetsInFlight = 0;
    v9 = assetsInFlight;

    delegate = [(MSReauthorizationProtocol *)self delegate];
    [delegate reauthorizationProtocol:self reauthorizedAssets:0 rejectedAssets:v9 error:errorCopy];
  }

  else
  {
    delegate = [(NSArray *)self->_assetsInFlight mutableCopy];
    v11 = self->_assetsInFlight;
    self->_assetsInFlight = 0;

    v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(responseCopy, "count")}];
    selfCopy = self;
    personID2 = [(MSStreamsProtocol *)self personID];
    v35 = responseCopy;
    v13 = [responseCopy objectForKey:personID2];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = v13;
    v40 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v40)
    {
      v38 = delegate;
      v39 = *v46;
      v37 = v14;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(v14);
        }

        v16 = *(*(&v45 + 1) + 8 * v15);
        mSHexData = [v16 MSHexData];
        if (!mSHexData)
        {
          break;
        }

        v18 = mSHexData;
        v19 = [v14 objectForKey:v16];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v20 = delegate;
        v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v42;
LABEL_13:
          v24 = 0;
          while (1)
          {
            if (*v42 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v41 + 1) + 8 * v24);
            fileHash = [v25 fileHash];
            v27 = [fileHash isEqualToData:v18];

            if (v27)
            {
              break;
            }

            if (v22 == ++v24)
            {
              v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v22)
              {
                goto LABEL_13;
              }

              v14 = v37;
              delegate = v38;
              goto LABEL_22;
            }
          }

          v28 = v25;

          v14 = v37;
          delegate = v38;
          if (!v28)
          {
            goto LABEL_23;
          }

          [v28 setMMCSAccessHeader:v19];
          [(NSArray *)v36 addObject:v28];
          [v20 MSRemoveOneObject:v28];
          v20 = v28;
        }

LABEL_22:

LABEL_23:
        if (++v15 == v40)
        {
          v40 = [v14 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v40)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    delegate2 = [(MSReauthorizationProtocol *)selfCopy delegate];
    v9 = v36;
    [delegate2 reauthorizationProtocol:selfCopy reauthorizedAssets:v36 rejectedAssets:delegate error:0];

    errorCopy = 0;
    responseCopy = v35;
  }
}

- (void)abort
{
  MSSPCCancelHTTPTransaction(&self->_context);
  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = 0;
}

- (void)requestReauthorizationForAssets:(id)assets
{
  v32 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    *buf = 138543874;
    v27 = v5;
    v28 = 2112;
    v29 = personID;
    v30 = 2048;
    v31 = [assetsCopy count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Reauthorizing %ld items", buf, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = assetsCopy;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        fileHash = [v14 fileHash];

        if (fileHash)
        {
          fileHash2 = [v14 fileHash];
          mSHexString = [fileHash2 MSHexString];
          [v8 addObject:mSHexString];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  assetsInFlight = self->_assetsInFlight;
  self->_assetsInFlight = v9;

  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  reauthorizeURL = [(MSStreamsProtocol *)self reauthorizeURL];
  v20 = MSPURLConnectionProperties();
  MSRPCReauthorizeAsync(&self->_context._super.owner, reauthorizeURL, v20, [(MSStreamsProtocol *)self personID], v8);
}

- (void)dealloc
{
  p_context = &self->_context;

  v4.receiver = self;
  v4.super_class = MSReauthorizationProtocol;
  [(MSReauthorizationProtocol *)&v4 dealloc];
}

- (MSReauthorizationProtocol)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = MSReauthorizationProtocol;
  v7 = [(MSStreamsProtocol *)&v10 initWithPersonID:dCopy baseURL:l];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = dCopy;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context._super.connectionTimeout = 0.0;
    v8->_context.finishedCallback = _protocolDidFinish_2707;
    v8->_context.authFailedCallback = _protocolDidFailAuthentication_2706;
    v8->_context.didReceiveRetryAfterCallback = _protocolDidReceiveRetryAfterDate_2705;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersion_2704;
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = MSReauthorizationProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:delegate];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSReauthorizationProtocol;
  delegate = [(MSStreamsProtocol *)&v4 delegate];

  return delegate;
}

@end