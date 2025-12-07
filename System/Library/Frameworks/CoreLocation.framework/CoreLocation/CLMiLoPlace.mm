@interface CLMiLoPlace
- (CLMiLoPlace)initWithCoder:(id)coder;
- (CLMiLoPlace)initWithPlaceIdentifier:(id)identifier score:(id)score confidence:(unint64_t)confidence placeMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoPlace

- (CLMiLoPlace)initWithPlaceIdentifier:(id)identifier score:(id)score confidence:(unint64_t)confidence placeMetadata:(id)metadata
{
  v18.receiver = self;
  v18.super_class = CLMiLoPlace;
  v13 = [(CLMiLoPlace *)&v18 init];
  if (v13)
  {
    v13->_identifier = objc_msgSend_copy(identifier, v10, v11, v12);
    v13->_score = objc_msgSend_copy(score, v14, v15, v16);
    v13->_confidence = confidence;
    v13->_metadata = metadata;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPlace;
  [(CLMiLoPlace *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  identifier = self->_identifier;
  score = self->_score;

  return MEMORY[0x1EEE66B58](v8, sel_initWithPlaceIdentifier_score_confidence_placeMetadata_, identifier, score);
}

- (CLMiLoPlace)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCLMiLoConnectionCodingKeyMiLoPlaceIdenfifier");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCLMiLoConnectionCodingKeyPlaceScore");
  objc_msgSend_decodeIntegerForKey_(coder, v11, @"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum", v12);
  v13 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"kCLMiLoConnectionCodingKeyPlaceMetadata");

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaceIdentifier_score_confidence_placeMetadata_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_identifier, @"kCLMiLoConnectionCodingKeyMiLoPlaceIdenfifier");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_score, @"kCLMiLoConnectionCodingKeyPlaceScore");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->_confidence, @"kCLMiLoConnectionCodingKeyPlaceConfidenceEnum");
  metadata = self->_metadata;

  objc_msgSend_encodeObject_forKey_(coder, v7, metadata, @"kCLMiLoConnectionCodingKeyPlaceMetadata");
}

@end