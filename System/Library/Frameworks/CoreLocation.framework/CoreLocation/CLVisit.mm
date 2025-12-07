@interface CLVisit
- (BOOL)hasArrivalDate;
- (BOOL)hasDepartureDate;
- (CLLocationCoordinate2D)coordinate;
- (CLVisit)initWithCoder:(id)coder;
- (CLVisit)initWithCoordinate:(CLLocationCoordinate2D)coordinate horizontalAccuracy:(double)accuracy arrivalDate:(id)date departureDate:(id)departureDate detectionDate:(id)detectionDate placeInference:(id)inference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLVisit

- (CLVisit)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CLVisit.m", 32, @"Invalid parameter not satisfying: %@", @"[decoder allowsKeyedCoding]");
  }

  objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCLVisitCodingKeyLatitude", v9);
  objc_msgSend_decodeDoubleForKey_(coder, v10, @"kCLVisitCodingKeyLongitude", v11);
  objc_msgSend_decodeDoubleForKey_(coder, v12, @"kCLVisitCodingKeyHorizontalAccuracy", v13);
  v14 = objc_opt_class();
  v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"kCLVisitCodingKeyArrivalDate");
  v17 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"kCLVisitCodingKeyDepartureDate");
  v20 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v21, v20, @"kCLVisitCodingKeyDetectionDate");
  v22 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v23, v22, @"kCLVisitCodingKeyPlaceInference");

  return MEMORY[0x1EEE66B58](self, sel_initWithCoordinate_horizontalAccuracy_arrivalDate_departureDate_detectionDate_placeInference_, v16, v19);
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v43 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v44, a2, self, @"CLVisit.m", 48, @"Invalid parameter not satisfying: %@", @"[encoder allowsKeyedCoding]");
  }

  objc_msgSend_coordinate(self, v7, v8, v9);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCLVisitCodingKeyLatitude", v11);
  objc_msgSend_coordinate(self, v12, v13, v14);
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCLVisitCodingKeyLongitude", v16, v17);
  objc_msgSend_horizontalAccuracy(self, v18, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coder, v21, @"kCLVisitCodingKeyHorizontalAccuracy", v22);
  v26 = objc_msgSend_arrivalDate(self, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coder, v27, v26, @"kCLVisitCodingKeyArrivalDate");
  v31 = objc_msgSend_departureDate(self, v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(coder, v32, v31, @"kCLVisitCodingKeyDepartureDate");
  v36 = objc_msgSend_detectionDate(self, v33, v34, v35);
  objc_msgSend_encodeObject_forKey_(coder, v37, v36, @"kCLVisitCodingKeyDetectionDate");
  v42 = objc_msgSend__placeInference(self, v38, v39, v40);

  objc_msgSend_encodeObject_forKey_(coder, v41, v42, @"kCLVisitCodingKeyPlaceInference");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(CLVisit, a2, zone, v3);
  objc_msgSend_coordinate(self, v6, v7, v8);
  objc_msgSend_horizontalAccuracy(self, v9, v10, v11);
  v15 = objc_msgSend_arrivalDate(self, v12, v13, v14);
  v19 = objc_msgSend_departureDate(self, v16, v17, v18);
  objc_msgSend_detectionDate(self, v20, v21, v22);
  objc_msgSend__placeInference(self, v23, v24, v25);

  return MEMORY[0x1EEE66B58](v5, sel_initWithCoordinate_horizontalAccuracy_arrivalDate_departureDate_detectionDate_placeInference_, v15, v19);
}

- (CLVisit)initWithCoordinate:(CLLocationCoordinate2D)coordinate horizontalAccuracy:(double)accuracy arrivalDate:(id)date departureDate:(id)departureDate detectionDate:(id)detectionDate placeInference:(id)inference
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v20.receiver = self;
  v20.super_class = CLVisit;
  v18 = [(CLVisit *)&v20 init];
  if (v18)
  {
    if (departureDate)
    {
      if (date)
      {
LABEL_4:
        v18->_coordinate.latitude = latitude;
        v18->_coordinate.longitude = longitude;
        v18->_horizontalAccuracy = accuracy;
        v18->_arrivalDate = date;
        v18->_departureDate = departureDate;
        v18->_detectionDate = detectionDate;
        v18->__placeInference = inference;
        return v18;
      }
    }

    else
    {
      departureDate = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v15, v16, v17);
      if (date)
      {
        goto LABEL_4;
      }
    }

    date = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v15, v16, v17);
    goto LABEL_4;
  }

  return v18;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLVisit;
  [(CLVisit *)&v3 dealloc];
}

- (id)description
{
  if (objc_msgSend_hasArrivalDate(self, a2, v2, v3))
  {
    v8 = objc_msgSend_arrivalDate(self, v5, v6, v7);
    v12 = objc_msgSend_description(v8, v9, v10, v11);
  }

  else
  {
    v12 = @"-";
  }

  if (objc_msgSend_hasDepartureDate(self, v5, v6, v7))
  {
    v16 = objc_msgSend_departureDate(self, v13, v14, v15);
    v20 = objc_msgSend_description(v16, v17, v18, v19);
  }

  else
  {
    v20 = @"-";
  }

  v21 = MEMORY[0x1E696AEC0];
  objc_msgSend_coordinate(self, v13, v14, v15);
  v23 = v22;
  objc_msgSend_coordinate(self, v24, v25, v26);
  v28 = v27;
  objc_msgSend_horizontalAccuracy(self, v29, v30, v31);
  v33 = v32;
  v37 = objc_msgSend__placeInference(self, v34, v35, v36);
  return objc_msgSend_stringWithFormat_(v21, v38, @"<%+.8f,%+.8f> +/- %.2fm (%@ to %@) %@", v39, v23, v28, v33, v12, v20, v37);
}

- (BOOL)hasArrivalDate
{
  v4 = objc_msgSend_arrivalDate(self, a2, v2, v3);
  v8 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v5, v6, v7);
  return objc_msgSend_isEqual_(v4, v9, v8, v10) ^ 1;
}

- (BOOL)hasDepartureDate
{
  v4 = objc_msgSend_departureDate(self, a2, v2, v3);
  v8 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v5, v6, v7);
  return objc_msgSend_isEqual_(v4, v9, v8, v10) ^ 1;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end