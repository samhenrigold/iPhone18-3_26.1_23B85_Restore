@interface HMDFamiliarFacesBulletinLogEvent
- (HMDFamiliarFacesBulletinLogEvent)initWithContainsFaceClassification:(BOOL)classification numberOfKnownPersons:(int64_t)persons numberOfUnknownPersons:(int64_t)unknownPersons bulletinReason:(id)reason doorbellPressed:(BOOL)pressed secondsFromDoorbellToFaceClassification:(double)faceClassification;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDFamiliarFacesBulletinLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v18[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"containsFaceClassification_BOOL";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDFamiliarFacesBulletinLogEvent containsFaceClassification](self, "containsFaceClassification")}];
  v18[0] = v3;
  v17[1] = @"containsFaceClassification_INT";
  containsFaceClassification = [(HMDFamiliarFacesBulletinLogEvent *)self containsFaceClassification];
  v5 = &unk_283E71858;
  if (containsFaceClassification)
  {
    v5 = &unk_283E71840;
  }

  v18[1] = v5;
  v17[2] = @"numberOfKnownPersons";
  v6 = +[HMDLogEventHistograms lowVolumeHistogram];
  v7 = [v6 intervalIndexForValue:{-[HMDFamiliarFacesBulletinLogEvent numberOfKnownPersons](self, "numberOfKnownPersons")}];
  v18[2] = v7;
  v17[3] = @"numberOfUnknownPersons";
  v8 = +[HMDLogEventHistograms lowVolumeHistogram];
  v9 = [v8 intervalIndexForValue:{-[HMDFamiliarFacesBulletinLogEvent numberOfUnknownPersons](self, "numberOfUnknownPersons")}];
  v18[3] = v9;
  v17[4] = @"bulletinReason";
  bulletinReason = [(HMDFamiliarFacesBulletinLogEvent *)self bulletinReason];
  v18[4] = bulletinReason;
  v17[5] = @"doorbellPressed";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDFamiliarFacesBulletinLogEvent doorbellPressed](self, "doorbellPressed")}];
  v18[5] = v11;
  v17[6] = @"secondsFromDoorbellToFaceClassification";
  v12 = +[HMDLogEventHistograms lowVolumeHistogram];
  [(HMDFamiliarFacesBulletinLogEvent *)self secondsFromDoorbellToFaceClassification];
  v14 = [v12 intervalIndexForValue:v13];
  v18[6] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v15;
}

- (HMDFamiliarFacesBulletinLogEvent)initWithContainsFaceClassification:(BOOL)classification numberOfKnownPersons:(int64_t)persons numberOfUnknownPersons:(int64_t)unknownPersons bulletinReason:(id)reason doorbellPressed:(BOOL)pressed secondsFromDoorbellToFaceClassification:(double)faceClassification
{
  reasonCopy = reason;
  v20.receiver = self;
  v20.super_class = HMDFamiliarFacesBulletinLogEvent;
  v15 = [(HMMLogEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_containsFaceClassification = classification;
    v15->_numberOfKnownPersons = persons;
    v15->_numberOfUnknownPersons = unknownPersons;
    v17 = objc_msgSend_copy(reasonCopy);
    bulletinReason = v16->_bulletinReason;
    v16->_bulletinReason = v17;

    v16->_doorbellPressed = pressed;
    v16->_secondsFromDoorbellToFaceClassification = faceClassification;
  }

  return v16;
}

@end