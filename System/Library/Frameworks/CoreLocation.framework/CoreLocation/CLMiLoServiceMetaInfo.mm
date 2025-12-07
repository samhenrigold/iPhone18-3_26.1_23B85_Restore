@interface CLMiLoServiceMetaInfo
- (CLMiLoServiceMetaInfo)initWithCoder:(id)coder;
- (CLMiLoServiceMetaInfo)initWithNumClustersLearnedInModel:(id)model numRecordingTriggersAtCurrentLOI:(id)i numInputValidFingerprints:(id)fingerprints numInputValidFingerprintsLabeled:(id)labeled numInputValidFingerprintsUnlabeled:(id)unlabeled numFingerprintsBeforePruning:(id)pruning numFingerprintsAfterPruning:(id)afterPruning numWiFiAccessPoints:(id)self0 numBLESources:(id)self1 numUWBSources:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceMetaInfo

- (CLMiLoServiceMetaInfo)initWithNumClustersLearnedInModel:(id)model numRecordingTriggersAtCurrentLOI:(id)i numInputValidFingerprints:(id)fingerprints numInputValidFingerprintsLabeled:(id)labeled numInputValidFingerprintsUnlabeled:(id)unlabeled numFingerprintsBeforePruning:(id)pruning numFingerprintsAfterPruning:(id)afterPruning numWiFiAccessPoints:(id)self0 numBLESources:(id)self1 numUWBSources:(id)self2
{
  v50.receiver = self;
  v50.super_class = CLMiLoServiceMetaInfo;
  v21 = [(CLMiLoServiceMetaInfo *)&v50 init];
  if (v21)
  {
    v21->_numberOfClustersLearnedInModel = objc_msgSend_copy(model, v18, v19, v20);
    v21->_numberOfRecordingTriggersAtCurrentLocationOfInterest = objc_msgSend_copy(i, v22, v23, v24);
    v21->_numberOfInputValidFingerprints = objc_msgSend_copy(fingerprints, v25, v26, v27);
    v21->_numberOfInputValidFingerprintsLabeled = objc_msgSend_copy(labeled, v28, v29, v30);
    v21->_numberOfInputValidFingerprintsUnLabeled = objc_msgSend_copy(unlabeled, v31, v32, v33);
    v21->_numberOfFingerprintsBeforePruning = objc_msgSend_copy(pruning, v34, v35, v36);
    v21->_numberOfFingerprintsAfterPruning = objc_msgSend_copy(afterPruning, v37, v38, v39);
    v21->_numberOfWiFiAccessPoints = objc_msgSend_copy(points, v40, v41, v42);
    v21->_numberOfBLESources = objc_msgSend_copy(sources, v43, v44, v45);
    v21->_numberOfUWBSources = objc_msgSend_copy(bSources, v46, v47, v48);
  }

  return v21;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceMetaInfo;
  [(CLMiLoServiceMetaInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  return objc_msgSend_initWithNumClustersLearnedInModel_numRecordingTriggersAtCurrentLOI_numInputValidFingerprints_numInputValidFingerprintsLabeled_numInputValidFingerprintsUnlabeled_numFingerprintsBeforePruning_numFingerprintsAfterPruning_numWiFiAccessPoints_numBLESources_numUWBSources_(v8, v9, self->_numberOfClustersLearnedInModel, self->_numberOfRecordingTriggersAtCurrentLocationOfInterest, self->_numberOfInputValidFingerprints, self->_numberOfInputValidFingerprintsLabeled, self->_numberOfInputValidFingerprintsUnLabeled, self->_numberOfFingerprintsBeforePruning, self->_numberOfFingerprintsAfterPruning, self->_numberOfWiFiAccessPoints, self->_numberOfBLESources, self->_numberOfUWBSources);
}

- (CLMiLoServiceMetaInfo)initWithCoder:(id)coder
{
  v4 = objc_opt_class();
  v35 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v5, v4, @"kCLMiLoConnectionCodingKeyNumberOfClustersInModel");
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCLMiLoConnectionCodingKeyNumberOfRecordingTriggersAtCurrentLocationOfInterest");
  v9 = objc_opt_class();
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprints");
  v12 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsLabeled");
  v15 = objc_opt_class();
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsUnLabeled");
  v18 = objc_opt_class();
  v20 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"kCLMiLoConnectionCodingKeyNumberOfFingerprintsBeforePruning");
  v21 = objc_opt_class();
  v23 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v22, v21, @"kCLMiLoConnectionCodingKeyNumberOfFingerprintsAfterPruning");
  v24 = objc_opt_class();
  v26 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v25, v24, @"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints");
  v27 = objc_opt_class();
  v29 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v28, v27, @"kCLMiLoConnectionCodingKeyNumberOfBLESources");
  v30 = objc_opt_class();
  v32 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v31, v30, @"kCLMiLoConnectionCodingKeyNumberOfUWBSources");
  return objc_msgSend_initWithNumClustersLearnedInModel_numRecordingTriggersAtCurrentLOI_numInputValidFingerprints_numInputValidFingerprintsLabeled_numInputValidFingerprintsUnlabeled_numFingerprintsBeforePruning_numFingerprintsAfterPruning_numWiFiAccessPoints_numBLESources_numUWBSources_(self, v33, v35, v8, v11, v14, v17, v20, v23, v26, v29, v32);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_numberOfClustersLearnedInModel, @"kCLMiLoConnectionCodingKeyNumberOfClustersInModel");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_numberOfRecordingTriggersAtCurrentLocationOfInterest, @"kCLMiLoConnectionCodingKeyNumberOfRecordingTriggersAtCurrentLocationOfInterest");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_numberOfInputValidFingerprints, @"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprints");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->_numberOfInputValidFingerprintsLabeled, @"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsLabeled");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_numberOfInputValidFingerprintsUnLabeled, @"kCLMiLoConnectionCodingKeyNumberOfInputValidFingerprintsUnLabeled");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_numberOfFingerprintsBeforePruning, @"kCLMiLoConnectionCodingKeyNumberOfFingerprintsBeforePruning");
  objc_msgSend_encodeObject_forKey_(coder, v10, self->_numberOfFingerprintsAfterPruning, @"kCLMiLoConnectionCodingKeyNumberOfFingerprintsAfterPruning");
  objc_msgSend_encodeObject_forKey_(coder, v11, self->_numberOfWiFiAccessPoints, @"kCLMiLoConnectionCodingKeyNumberOfWiFiAccessPoints");
  objc_msgSend_encodeObject_forKey_(coder, v12, self->_numberOfBLESources, @"kCLMiLoConnectionCodingKeyNumberOfBLESources");
  numberOfUWBSources = self->_numberOfUWBSources;

  objc_msgSend_encodeObject_forKey_(coder, v13, numberOfUWBSources, @"kCLMiLoConnectionCodingKeyNumberOfUWBSources");
}

@end