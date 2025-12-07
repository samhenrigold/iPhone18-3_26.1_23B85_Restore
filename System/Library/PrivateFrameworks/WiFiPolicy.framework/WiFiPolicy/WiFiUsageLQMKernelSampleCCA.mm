@interface WiFiUsageLQMKernelSampleCCA
+ (id)sampleWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSampleCCA)initWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMKernelSampleCCA

+ (id)sampleWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  var0 = struct->var0;
  if (var0)
  {
    NSLog(&cfstr_SUnknownVersio.isa, "+[WiFiUsageLQMKernelSampleCCA sampleWithStruct:andTimestamp:]", var0);
    v7 = 0;
  }

  else
  {
    v7 = [[WiFiUsageLQMKernelSampleCCA alloc] initWithStruct:struct andTimestamp:timestampCopy];
  }

  return v7;
}

- (WiFiUsageLQMKernelSampleCCA)initWithStruct:(ccaStats *)struct andTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  objc_msgSend_ccaStatsWithDuration_ccaSelf_ccaOther_interference_(WiFiUsageLQMTransformations);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  objc_msgSend_ccaStatsWithDuration_ccaSelf_ccaOther_interference_(WiFiUsageLQMTransformations);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  objc_msgSend_ccaStatsWithDuration_ccaSelf_ccaOther_interference_(WiFiUsageLQMTransformations);
  v10.receiver = self;
  v10.super_class = WiFiUsageLQMKernelSampleCCA;
  v7 = [(WiFiUsageLQMKernelSampleCCA *)&v10 init];
  objc_storeStrong(&v7->_timestamp, timestamp);
  v7->_selfCca = v17;
  v7->_otherCca = v18;
  v7->_interference = v19;
  v7->_selfCcaSleepPerc = v14;
  v7->_otherCcaSleepPerc = v15;
  v7->_interferenceSleepPerc = v16;
  v7->_selfCcaWakePerc = v11;
  v7->_otherCcaWakePerc = v12;
  v7->_interferenceWakePerc = v13;
  v8 = v7;

  return v8;
}

@end