@interface CLMiLoServicePredictionLocationSimilarityList
- (CLMiLoServicePredictionLocationSimilarityList)initWithCoder:(id)coder;
- (CLMiLoServicePredictionLocationSimilarityList)initWithPlaces:(id)places;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CLMiLoServicePredictionLocationSimilarityList

- (CLMiLoServicePredictionLocationSimilarityList)initWithPlaces:(id)places
{
  v6.receiver = self;
  v6.super_class = CLMiLoServicePredictionLocationSimilarityList;
  v4 = [(CLMiLoServicePredictionLocationSimilarityList *)&v6 init];
  if (v4)
  {
    v4->_places = places;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServicePredictionLocationSimilarityList;
  [(CLMiLoServicePredictionLocationSimilarityList *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  places = self->_places;

  return MEMORY[0x1EEE66B58](v8, sel_initWithPlaces_, places, v9);
}

- (CLMiLoServicePredictionLocationSimilarityList)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v8, v6, v9, v7, 0);
  v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v11, v10, @"kCLMiLoConnectionCodingKeySimilarityListPlaces");

  return MEMORY[0x1EEE66B58](self, sel_initWithPlaces_, v12, v13);
}

@end