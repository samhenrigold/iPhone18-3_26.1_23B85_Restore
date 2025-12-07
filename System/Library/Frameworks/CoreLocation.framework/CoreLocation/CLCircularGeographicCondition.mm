@interface CLCircularGeographicCondition
- (BOOL)isEqual:(id)equal;
- (CLCircularGeographicCondition)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius;
- (CLCircularGeographicCondition)initWithCoder:(id)coder;
- (CLLocationCoordinate2D)center;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLCircularGeographicCondition

- (CLCircularGeographicCondition)initWithCenter:(CLLocationCoordinate2D)center radius:(CLLocationDistance)radius
{
  longitude = center.longitude;
  latitude = center.latitude;
  v8.receiver = self;
  v8.super_class = CLCircularGeographicCondition;
  result = [(CLCondition *)&v8 initCondition];
  if (result)
  {
    result->_center.latitude = latitude;
    result->_center.longitude = longitude;
    result->_radius = radius;
  }

  return result;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  objc_msgSend_center(self, a2, v2, v3);
  v7 = v6;
  objc_msgSend_center(self, v8, v9, v10);
  v12 = v11;
  objc_msgSend_radius(self, v13, v14, v15);
  return objc_msgSend_stringWithFormat_(v5, v16, @"CLCircularGeographicCondition(center:<%+.8f, %+.8f>, radius: %.2fm)", v17, v7, v12, v18);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_msgSend_center(equal, v5, v6, v7);
  v9 = round(v8 * 1000000.0);
  objc_msgSend_center(self, v10, v11, v12);
  if (vabdd_f64(v9, round(v16 * 1000000.0)) > 2.22044605e-16)
  {
    return 0;
  }

  objc_msgSend_center(equal, v13, v14, v15);
  v18 = round(v17 * 1000000.0);
  objc_msgSend_center(self, v19, v20, v21);
  if (vabdd_f64(v18, round(v25 * 1000000.0)) > 2.22044605e-16)
  {
    return 0;
  }

  objc_msgSend_radius(equal, v22, v23, v24);
  v28 = round(v27 * 1000000.0);
  objc_msgSend_radius(self, v29, v30, v31);
  return vabdd_f64(v28, round(v32 * 1000000.0)) <= 2.22044605e-16;
}

- (unint64_t)hash
{
  objc_msgSend_center(self, a2, v2, v3);
  v6 = vcvtad_u64_f64(v5 * 1000000.0);
  objc_msgSend_center(self, v7, v8, v9);
  v11 = vcvtad_u64_f64(v10 * 1000000.0) ^ v6;
  objc_msgSend_radius(self, v12, v13, v14);
  return v11 ^ vcvtad_u64_f64(v15 * 1000000.0);
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CLCircularGeographicCondition.mm", 64, @"Invalid parameter not satisfying: %@", @"coder.allowsKeyedCoding");
  }

  objc_msgSend_center(self, v7, v8, v9);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCircularGeographicConditionCodingKeyCenterLatitude", v11);
  objc_msgSend_center(self, v12, v13, v14);
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCircularGeographicConditionCodingKeyCenterLongitude", v16, v17);
  objc_msgSend_radius(self, v18, v19, v20);

  objc_msgSend_encodeDouble_forKey_(coder, v21, @"kCircularGeographicConditionCodingKeyRadius", v22);
}

- (CLCircularGeographicCondition)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLCircularGeographicCondition.mm", 72, @"Invalid parameter not satisfying: %@", @"decoder.allowsKeyedCoding");
  }

  objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCircularGeographicConditionCodingKeyCenterLatitude", v9);
  objc_msgSend_decodeDoubleForKey_(coder, v10, @"kCircularGeographicConditionCodingKeyCenterLongitude", v11);
  objc_msgSend_decodeDoubleForKey_(coder, v12, @"kCircularGeographicConditionCodingKeyRadius", v13);

  return MEMORY[0x1EEE66B58](self, sel_initWithCenter_radius_, v14, v15);
}

- (CLLocationCoordinate2D)center
{
  objc_copyStruct(v4, &self->_center, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

@end