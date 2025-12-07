@interface SHCustomCatalogTrackerMatcher
- (SHCustomCatalogTrackerMatcher)initWithCustomCatalogConfiguration:(id)configuration container:(id)container;
- (SHMatcherDelegate)delegate;
- (id)matchFromMREResults:(id)results signature:(id)signature signatureAlignments:(id)alignments;
- (id)trackQuerySignature:(id)signature inReferenceSignature:(id)referenceSignature;
- (void)startRecognitionForRequest:(id)request;
@end

@implementation SHCustomCatalogTrackerMatcher

- (SHCustomCatalogTrackerMatcher)initWithCustomCatalogConfiguration:(id)configuration container:(id)container
{
  configurationCopy = configuration;
  containerCopy = container;
  v16.receiver = self;
  v16.super_class = SHCustomCatalogTrackerMatcher;
  v9 = [(SHCustomCatalogTrackerMatcher *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_customCatalogConfiguration, configuration);
    objc_storeStrong(&v10->_container, container);
    container = [(SHCustomCatalogTrackerMatcher *)v10 container];
    referenceSignatures = [container referenceSignatures];
    v13 = [referenceSignatures count];

    if (v13 != 1)
    {
      v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Tracking only supports one reference signature" userInfo:0];
      objc_exception_throw(v15);
    }
  }

  return v10;
}

- (void)startRecognitionForRequest:(id)request
{
  v28[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  signature = [requestCopy signature];
  [signature duration];
  v7 = v6;
  +[SHCustomCatalogConfiguration minimumQuerySignatureDurationForTracking];
  v9 = v8;

  if (v7 >= v9)
  {
    container = [(SHCustomCatalogTrackerMatcher *)self container];
    referenceSignatures = [container referenceSignatures];
    firstObject = [referenceSignatures firstObject];

    delegate = [(SHCustomCatalogTrackerMatcher *)self delegate];
    signature2 = [requestCopy signature];

    v25 = [(SHCustomCatalogTrackerMatcher *)self trackQuerySignature:signature2 inReferenceSignature:firstObject];
    [delegate matcher:self didProduceResponse:v25];
  }

  else
  {
    delegate2 = [(SHCustomCatalogTrackerMatcher *)self delegate];
    signature3 = [requestCopy signature];
    v27 = *MEMORY[0x277CCA068];
    v12 = MEMORY[0x277CCACA8];
    signature4 = [requestCopy signature];

    [signature4 duration];
    v15 = v14;
    +[SHCustomCatalogConfiguration minimumQuerySignatureDurationForTracking];
    v17 = [v12 stringWithFormat:@"Signature cannot be tracked with duration of %.2f secs it must be at least %.2f secs in duration", v15, v16];
    v28[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v19 = [SHError errorWithCode:202 underlyingError:0 keyOverrides:v18];
    v20 = [SHMatcherResponse errorResponseForSignature:signature3 error:v19];
    [delegate2 matcher:self didProduceResponse:v20];
  }
}

- (id)trackQuerySignature:(id)signature inReferenceSignature:(id)referenceSignature
{
  v18[1] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  referenceSignatureCopy = referenceSignature;
  signature = [referenceSignatureCopy signature];
  customCatalogConfiguration = [(SHCustomCatalogTrackerMatcher *)self customCatalogConfiguration];
  v17 = 0;
  v10 = [SHContinuityTracker trackQuerySignature:signatureCopy inReferenceSignature:signature configuration:customCatalogConfiguration error:&v17];
  v11 = v17;

  if ([v10 count])
  {
    v12 = -[MREResult initWithTrackId:offset:timeSkew:freqSkew:score:]([MREResult alloc], "initWithTrackId:offset:timeSkew:freqSkew:score:", [referenceSignatureCopy trackID], &unk_2845D1518, &unk_2845D1518, &unk_2845D1518, 0.0);
    v18[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

    v14 = [(SHCustomCatalogTrackerMatcher *)self matchFromMREResults:v13 signature:signatureCopy signatureAlignments:v10];
    v15 = [SHMatcherResponse matchWithRecordingIntermission:v14 recordingSignatureOffset:0.0 retrySeconds:0.0 match:0.0];
  }

  else
  {
    if (v11)
    {
      [SHMatcherResponse errorResponseForSignature:signatureCopy error:v11];
    }

    else
    {
      [SHMatcherResponse noMatchWithRecordingIntermission:signatureCopy recordingSignatureOffset:0.0 retrySeconds:0.0 signature:0.0];
    }
    v15 = ;
  }

  return v15;
}

- (id)matchFromMREResults:(id)results signature:(id)signature signatureAlignments:(id)alignments
{
  v33 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  signatureCopy = signature;
  alignmentsCopy = alignments;
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = resultsCopy;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        container = [(SHCustomCatalogTrackerMatcher *)self container];
        v17 = [container matchReferenceForTrackID:{objc_msgSend(v15, "trackID")}];

        if (v17)
        {
          v18 = [SHMREMatch alloc];
          mediaItems = [v17 mediaItems];
          v20 = [(SHMREMatch *)v18 initWithResult:v15 mediaItems:mediaItems signatureAlignments:alignmentsCopy querySignature:signatureCopy];

          toMatchedMediaItems = [(SHMREMatch *)v20 toMatchedMediaItems];
          [array addObjectsFromArray:toMatchedMediaItems];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v22 = [SHMatch alloc];
  v23 = [array copy];
  v24 = [(SHMatch *)v22 initWithMediaItems:v23 forSignature:signatureCopy];

  return v24;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end