@interface CLVisitCondition
- (CLVisitCondition)initWithCoder:(id)coder;
- (CLVisitCondition)initWithPOICategory:(int64_t)category;
- (id)_initWithPoiCategory:(int64_t)category latitude:(double)latitude longitude:(double)longitude radius:(double)radius;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVisitCondition

- (CLVisitCondition)initWithPOICategory:(int64_t)category
{
  v7.receiver = self;
  v7.super_class = CLVisitCondition;
  result = [(CLCondition *)&v7 initCondition];
  if (result)
  {
    return objc_msgSend__initWithPoiCategory_latitude_longitude_radius_(result, v5, category, v6, 1.79769313e308, 1.79769313e308, 0.0);
  }

  return result;
}

- (id)_initWithPoiCategory:(int64_t)category latitude:(double)latitude longitude:(double)longitude radius:(double)radius
{
  v11.receiver = self;
  v11.super_class = CLVisitCondition;
  result = [(CLCondition *)&v11 initCondition];
  if (result)
  {
    *(result + 9) = category;
    *(result + 10) = latitude;
    *(result + 11) = longitude;
    *(result + 12) = radius;
  }

  return result;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_poiCategory(self, a2, v2, v3);
  objc_msgSend_radius(self, v7, v8, v9);
  return objc_msgSend_stringWithFormat_(v5, v10, @"CLVisitCondition(poiCategory:%d, lat:(private), lon:(private), radius:%f)", v11, v6, v12);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_poiCategory(self, a2, coder, v3);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCLVisitConditionPoi", v8, v6);
  objc_msgSend_latitude(self, v9, v10, v11);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"kCLVisitConditionLatitude", v13);
  objc_msgSend_longitude(self, v14, v15, v16);
  objc_msgSend_encodeDouble_forKey_(coder, v17, @"kCLVisitConditionLongitude", v18);
  objc_msgSend_radius(self, v19, v20, v21);

  objc_msgSend_encodeDouble_forKey_(coder, v22, @"kCLVisitConditionRadius", v23);
}

- (CLVisitCondition)initWithCoder:(id)coder
{
  v6 = objc_msgSend_decodeIntForKey_(coder, a2, @"kCLVisitConditionPoi", v3);
  objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCLVisitConditionLatitude", v8);
  v10 = v9;
  objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCLVisitConditionLongitude", v12);
  v14 = v13;
  objc_msgSend_decodeDoubleForKey_(coder, v15, @"kCLVisitConditionRadius", v16);

  return objc_msgSend__initWithPoiCategory_latitude_longitude_radius_(self, v17, v6, v18, v10, v14, v19);
}

@end