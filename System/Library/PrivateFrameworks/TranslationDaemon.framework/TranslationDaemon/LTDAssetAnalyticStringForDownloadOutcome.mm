@interface LTDAssetAnalyticStringForDownloadOutcome
@end

@implementation LTDAssetAnalyticStringForDownloadOutcome

void ___LTDAssetAnalyticStringForDownloadOutcome_block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284867E10;
  v2[1] = &unk_284867E28;
  v3[0] = @"Downloaded with no retries";
  v3[1] = @"Downloaded with retries";
  v2[2] = &unk_284867E40;
  v2[3] = &unk_284867E58;
  v3[2] = @"User cancelled";
  v3[3] = @"Asset download error";
  v2[4] = &unk_284867E70;
  v2[5] = &unk_284867E88;
  v3[4] = @"Translation daemon shutdown";
  v3[5] = @"Event timeout";
  v2[6] = &unk_284867EA0;
  v3[6] = @"Status Mismatch";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = _LTDAssetAnalyticStringForDownloadOutcome_downloadOutcomeStringMap;
  _LTDAssetAnalyticStringForDownloadOutcome_downloadOutcomeStringMap = v0;
}

@end