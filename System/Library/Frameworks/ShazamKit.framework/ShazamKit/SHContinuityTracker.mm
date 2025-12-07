@interface SHContinuityTracker
+ (id)buildSignatureAlignment:(id)alignment;
+ (id)trackQuerySignature:(id)signature inReferenceSignature:(id)referenceSignature usingMergePolicy:(int64_t)policy configuration:(id)configuration error:(id *)error;
@end

@implementation SHContinuityTracker

+ (id)trackQuerySignature:(id)signature inReferenceSignature:(id)referenceSignature usingMergePolicy:(int64_t)policy configuration:(id)configuration error:(id *)error
{
  v55[1] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  referenceSignatureCopy = referenceSignature;
  configurationCopy = configuration;
  [signatureCopy duration];
  if (v15 < 2.0 || ([referenceSignatureCopy duration], v16 < 2.0))
  {
    v17 = MEMORY[0x277CCACA8];
    [signatureCopy duration];
    v19 = v18;
    [referenceSignatureCopy duration];
    0x4000000000000000 = [v17 stringWithFormat:@"Duration of query signature: %f or reference signature: %f is less than the minimum required duration for tracking: %f", v19, v20, 0x4000000000000000];
    v54 = *MEMORY[0x277CCA450];
    v55[0] = 0x4000000000000000;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    [SHError annotateClientError:error code:201 underlyingError:0 keyOverrides:v22];
LABEL_4:
    v23 = 0;
    goto LABEL_5;
  }

  spectralPeaksData = [signatureCopy spectralPeaksData];
  spectralPeaksData2 = [referenceSignatureCopy spectralPeaksData];
  numHistogramBuckets = [configurationCopy numHistogramBuckets];
  [configurationCopy scoreThreshold];
  v27 = v26;
  boundingBox = [configurationCopy boundingBox];
  [configurationCopy frequencyPenaltyMultiplier];
  v29 = v28;
  forwardPassOnly = [configurationCopy forwardPassOnly];
  singlePassOnly = [configurationCopy singlePassOnly];
  refineStartEnd = [configurationCopy refineStartEnd];
  [configurationCopy queryThreshold];
  LODWORD(v34) = v33;
  v52 = 0;
  BYTE1(v43) = refineStartEnd;
  LOBYTE(v43) = singlePassOnly;
  LODWORD(v35) = v27;
  LODWORD(v36) = v29;
  v22 = [SignatureAlignmentTracker compareQuerySignature:spectralPeaksData withReferenceSignature:spectralPeaksData2 mergeMode:policy numHistogramBuckets:numHistogramBuckets scoreThreshold:boundingBox boundingBox:forwardPassOnly frequencyPenaltyMultiplier:v35 forwardPassOnly:v36 singlePassOnly:v34 refineStartEnd:v43 queryThreshold:&v52 error:?];
  0x4000000000000000 = v52;

  if (!v22)
  {
    [SHError annotateClientError:error code:200 underlyingError:0x4000000000000000];
    goto LABEL_4;
  }

  v47 = referenceSignatureCopy;
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = v22;
  v38 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v49;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v49 != v40)
        {
          objc_enumerationMutation(v22);
        }

        v42 = [self buildSignatureAlignment:*(*(&v48 + 1) + 8 * i)];
        [v37 addObject:v42];
      }

      v39 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v39);
  }

  v23 = [v37 copy];
  referenceSignatureCopy = v47;
LABEL_5:

  return v23;
}

+ (id)buildSignatureAlignment:(id)alignment
{
  alignmentCopy = alignment;
  v4 = [SHRange alloc];
  [alignmentCopy queryStart];
  v6 = v5;
  [alignmentCopy queryEnd];
  v8 = [(SHRange *)v4 initWithLowerBound:v6 upperBound:v7];
  v9 = [SHRange alloc];
  [alignmentCopy referenceStart];
  v11 = v10;
  [alignmentCopy referenceEnd];
  v13 = [(SHRange *)v9 initWithLowerBound:v11 upperBound:v12];
  v14 = [SHSignatureAlignment alloc];
  [alignmentCopy confidence];
  LODWORD(v11) = v15;

  LODWORD(v16) = LODWORD(v11);
  v17 = [(SHSignatureAlignment *)v14 initWithQueryRange:v8 referenceRange:v13 alignmentConfidence:v16];

  return v17;
}

@end