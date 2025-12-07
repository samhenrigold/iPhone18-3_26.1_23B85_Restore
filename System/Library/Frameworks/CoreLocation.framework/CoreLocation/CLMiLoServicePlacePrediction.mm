@interface CLMiLoServicePlacePrediction
- (CLMiLoServicePlacePrediction)initWithCoder:(id)coder;
- (CLMiLoServicePlacePrediction)initWithPlaces:(id)places serviceType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServicePlacePrediction

- (CLMiLoServicePlacePrediction)initWithPlaces:(id)places serviceType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = CLMiLoServicePlacePrediction;
  v6 = [(CLMiLoServicePlacePrediction *)&v8 init];
  if (v6)
  {
    v6->_places = places;
    v6->_serviceType = type;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServicePlacePrediction;
  [(CLMiLoServicePlacePrediction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  places = self->_places;
  serviceType = self->_serviceType;

  return MEMORY[0x1EEE66B58](v8, sel_initWithPlaces_serviceType_, places, serviceType);
}

- (CLMiLoServicePlacePrediction)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v8, v6, v9, v7, 0);
  v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v11, v10, @"kCLMiLoConnectionCodingKeyPlacePredictionPlaces");
  v15 = objc_msgSend_decodeIntegerForKey_(coder, v13, @"kCLMiLoConnectionCodingKeyPlacePredictionServiceType", v14);

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaces_serviceType_, v12, v15);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_places, @"kCLMiLoConnectionCodingKeyPlacePredictionPlaces");
  serviceType = self->_serviceType;

  objc_msgSend_encodeInteger_forKey_(coder, v5, serviceType, @"kCLMiLoConnectionCodingKeyPlacePredictionServiceType");
}

@end