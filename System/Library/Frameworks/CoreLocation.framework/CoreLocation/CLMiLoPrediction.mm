@interface CLMiLoPrediction
- (CLMiLoPrediction)initWithCoder:(id)coder;
- (CLMiLoPrediction)initWithPlacePredictions:(id)predictions locationSimilarityList:(id)list closeDeviceList:(id)deviceList error:(id)error requestIdentifier:(id)identifier predictionTime:(id)time confidence:(unint64_t)confidence placeConfidenceReasons:(id)self0 localizationFingerprintMetaInfo:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPrediction

- (CLMiLoPrediction)initWithPlacePredictions:(id)predictions locationSimilarityList:(id)list closeDeviceList:(id)deviceList error:(id)error requestIdentifier:(id)identifier predictionTime:(id)time confidence:(unint64_t)confidence placeConfidenceReasons:(id)self0 localizationFingerprintMetaInfo:(id)self1
{
  v19.receiver = self;
  v19.super_class = CLMiLoPrediction;
  v17 = [(CLMiLoPrediction *)&v19 init];
  if (v17)
  {
    v17->_placePredictions = predictions;
    v17->_locationSimilarityList = list;
    v17->_closeDeviceList = deviceList;
    v17->_error = error;
    v17->_requestIdentifier = identifier;
    v17->_predictionTime = time;
    v17->_confidence = confidence;
    v17->_placeConfidenceReasons = reasons;
    v17->_localizationFingerprintMetaInfo = info;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPrediction;
  [(CLMiLoPrediction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  return objc_msgSend_initWithPlacePredictions_locationSimilarityList_closeDeviceList_error_requestIdentifier_predictionTime_confidence_placeConfidenceReasons_localizationFingerprintMetaInfo_(v8, v9, self->_placePredictions, self->_locationSimilarityList, self->_closeDeviceList, self->_error, self->_requestIdentifier, self->_predictionTime, self->_confidence, self->_placeConfidenceReasons, self->_localizationFingerprintMetaInfo);
}

- (CLMiLoPrediction)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v7, v5, v8, v6, 0);
  v11 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v10, v9, @"kCLMiLoConnectionCodingKeyPredictionPlacePredictions");
  v12 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"kCLMiLoConnectionCodingKeyPredictionLocationSimilarityList");
  v15 = objc_opt_class();
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"kCLMiLoConnectionCodingKeyPredictionCloseDeviceList");
  v18 = objc_opt_class();
  v20 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"kCLMiLoConnectionCodingKeyPredictionError");
  v21 = objc_opt_class();
  v23 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v22, v21, @"kCLMiLoConnectionCodingKeyPredictionRequestIdentifier");
  v24 = objc_opt_class();
  v26 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v25, v24, @"kCLMiLoConnectionCodingKeyPredictionTime");
  v29 = objc_msgSend_decodeIntegerForKey_(coder, v27, @"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum", v28);
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v35 = objc_msgSend_setWithObjects_(v30, v33, v31, v34, v32, 0);
  v37 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v36, v35, @"kCLMiLoConnectionCodingKeyPlaceConfidenceReasons");
  v38 = objc_opt_class();
  v40 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v39, v38, @"kCLMiLoConnectionCodingKeyLocalizationFingerprintMetaInfo");
  return objc_msgSend_initWithPlacePredictions_locationSimilarityList_closeDeviceList_error_requestIdentifier_predictionTime_confidence_placeConfidenceReasons_localizationFingerprintMetaInfo_(self, v41, v11, v14, v17, v20, v23, v26, v29, v37, v40);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_placePredictions, @"kCLMiLoConnectionCodingKeyPredictionPlacePredictions");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_locationSimilarityList, @"kCLMiLoConnectionCodingKeyPredictionLocationSimilarityList");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_closeDeviceList, @"kCLMiLoConnectionCodingKeyPredictionCloseDeviceList");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->_error, @"kCLMiLoConnectionCodingKeyPredictionError");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_requestIdentifier, @"kCLMiLoConnectionCodingKeyPredictionRequestIdentifier");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_predictionTime, @"kCLMiLoConnectionCodingKeyPredictionTime");
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_confidence, @"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum");
  objc_msgSend_encodeObject_forKey_(coder, v11, self->_placeConfidenceReasons, @"kCLMiLoConnectionCodingKeyPlaceConfidenceReasons");
  localizationFingerprintMetaInfo = self->_localizationFingerprintMetaInfo;

  objc_msgSend_encodeObject_forKey_(coder, v12, localizationFingerprintMetaInfo, @"kCLMiLoConnectionCodingKeyLocalizationFingerprintMetaInfo");
}

@end