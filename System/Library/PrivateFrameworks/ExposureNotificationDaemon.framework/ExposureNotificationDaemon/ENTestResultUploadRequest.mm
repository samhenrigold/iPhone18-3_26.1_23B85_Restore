@interface ENTestResultUploadRequest
+ (id)uploadRequestWithCertificate:(id)certificate healthAuthorityID:(id)d revisionToken:(id)token symmetricKey:(id)key temporaryExposureKeys:(id)keys userMetadata:(id)metadata requestURL:(id)l URLSession:(id)self0 queue:(id)self1 error:(id *)self2;
- (id)bodyJSON;
- (id)handleResponse:(id)response body:(id)body;
@end

@implementation ENTestResultUploadRequest

+ (id)uploadRequestWithCertificate:(id)certificate healthAuthorityID:(id)d revisionToken:(id)token symmetricKey:(id)key temporaryExposureKeys:(id)keys userMetadata:(id)metadata requestURL:(id)l URLSession:(id)self0 queue:(id)self1 error:(id *)self2
{
  metadataCopy = metadata;
  queueCopy = queue;
  sessionCopy = session;
  lCopy = l;
  keysCopy = keys;
  keyCopy = key;
  tokenCopy = token;
  dCopy = d;
  certificateCopy = certificate;
  CFDateGetTypeID();
  v47 = metadataCopy;
  v25 = CFDictionaryGetTypedValue();
  v26 = [[self alloc] initWithRequestURL:lCopy URLSession:sessionCopy queue:queueCopy];

  v27 = [certificateCopy copy];
  v28 = *(v26 + 80);
  *(v26 + 80) = v27;

  v29 = [dCopy copy];
  v30 = *(v26 + 88);
  *(v26 + 88) = v29;

  v31 = [tokenCopy copy];
  v32 = *(v26 + 96);
  *(v26 + 96) = v31;

  v33 = [keyCopy copy];
  v34 = *(v26 + 104);
  *(v26 + 104) = v33;

  v35 = [keysCopy copy];
  v36 = *(v26 + 112);
  *(v26 + 112) = v35;

  if (v25)
  {
    v37 = MEMORY[0x277CCABA8];
    [v25 timeIntervalSinceReferenceDate];
    v39 = [v37 numberWithUnsignedInt:144 * (((v38 + *MEMORY[0x277CBECD8]) / 600.0) / 0x90)];
    v40 = *(v26 + 120);
    *(v26 + 120) = v39;
  }

  *(v26 + 128) = CFDictionaryGetInt64() != 0;
  v41 = [v47 objectForKeyedSubscript:*MEMORY[0x277CC5BA0]];

  if (v41)
  {
    v42 = [MEMORY[0x277CCABA8] numberWithBool:CFDictionaryGetInt64() != 0];
    v43 = *(v26 + 136);
    *(v26 + 136) = v42;
  }

  return v26;
}

- (id)bodyJSON
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = objc_alloc_init(MEMORY[0x277CBEB10]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_temporaryExposureKeys;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v27[0] = @"key";
        keyData = [v7 keyData];
        v9 = [keyData base64EncodedStringWithOptions:0];
        v28[0] = v9;
        v27[1] = @"rollingStartNumber";
        v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v7, "rollingStartNumber")}];
        v28[1] = v10;
        v27[2] = @"rollingPeriod";
        v11 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(v7, "rollingPeriod")}];
        v28[2] = v11;
        v12 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v28 forKeys:v27 count:3];
        [v22 addObject:v12];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v4);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB30]);
  [v13 setObject:self->_healthAuthorityID forKeyedSubscript:@"healthAuthorityID"];
  v14 = [(NSData *)self->_symmetricKey base64EncodedStringWithOptions:0];
  [v13 setObject:v14 forKeyedSubscript:@"hmackey"];

  [v13 setObject:v22 forKeyedSubscript:@"temporaryExposureKeys"];
  v15 = [MEMORY[0x277CCABA8] numberWithBool:self->_userDidTravel];
  [v13 setObject:v15 forKeyedSubscript:@"traveler"];

  [v13 setObject:self->_certificate forKeyedSubscript:@"verificationPayload"];
  requestRevisionToken = self->_requestRevisionToken;
  if (requestRevisionToken)
  {
    [v13 setObject:requestRevisionToken forKeyedSubscript:@"revisionToken"];
  }

  symptomOnsetInterval = self->_symptomOnsetInterval;
  if (symptomOnsetInterval)
  {
    [v13 setObject:symptomOnsetInterval forKeyedSubscript:@"symptomOnsetInterval"];
  }

  isUserVaccinated = self->_isUserVaccinated;
  if (isUserVaccinated)
  {
    [v13 setObject:isUserVaccinated forKeyedSubscript:@"vaccinated"];
  }

  v19 = [v13 copy];

  return v19;
}

- (id)handleResponse:(id)response body:(id)body
{
  bodyCopy = body;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  responseRevisionToken = self->_responseRevisionToken;
  self->_responseRevisionToken = v6;

  v8 = NSDictionaryGetNSNumber();

  insertedExposures = self->_insertedExposures;
  self->_insertedExposures = v8;

  return 0;
}

@end