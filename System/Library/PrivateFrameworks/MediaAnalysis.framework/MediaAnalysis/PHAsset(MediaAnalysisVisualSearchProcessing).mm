@interface PHAsset(MediaAnalysisVisualSearchProcessing)
- (BOOL)vcp_needsStickerGatingProcessing;
- (uint64_t)vcp_needsPECProcessing;
- (uint64_t)vcp_needsVisualSearchProcessing;
@end

@implementation PHAsset(MediaAnalysisVisualSearchProcessing)

- (uint64_t)vcp_needsVisualSearchProcessing
{
  visualSearchProperties = [self visualSearchProperties];
  algorithmVersion = [visualSearchProperties algorithmVersion];
  if (algorithmVersion >= VCPPhotosVisualSearchAlgorithmVersion(algorithmVersion, v4))
  {
    adjustmentVersion = [visualSearchProperties adjustmentVersion];
    if (adjustmentVersion)
    {
      adjustmentVersion2 = [visualSearchProperties adjustmentVersion];
      adjustmentVersion3 = [self adjustmentVersion];
      v5 = [adjustmentVersion2 isEqualToDate:adjustmentVersion3] ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)vcp_needsStickerGatingProcessing
{
  if (![MEMORY[0x1E6978628] enableStickerScore])
  {
    return 0;
  }

  visualSearchProperties = [self visualSearchProperties];
  v3 = [visualSearchProperties stickerAlgorithmVersion] < 1;

  return v3;
}

- (uint64_t)vcp_needsPECProcessing
{
  sceneAnalysisProperties = [self sceneAnalysisProperties];
  if ([sceneAnalysisProperties privateEncryptedComputeAnalysisVersion] == 5)
  {
    privateEncryptedComputeAnalysisTimestamp = [sceneAnalysisProperties privateEncryptedComputeAnalysisTimestamp];
    adjustmentVersion = [self adjustmentVersion];
    v5 = [privateEncryptedComputeAnalysisTimestamp isEqualToDate:adjustmentVersion];

    v6 = v5 ^ 1u;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end