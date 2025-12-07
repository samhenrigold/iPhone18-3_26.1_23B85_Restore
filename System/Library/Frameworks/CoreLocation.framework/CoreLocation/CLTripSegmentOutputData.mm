@interface CLTripSegmentOutputData
- (CLTripSegmentOutputData)initWithCoder:(id)coder;
- (CLTripSegmentOutputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part startDate:(id)date endDate:(id)endDate duration:(double)duration modeOfTransport:(int64_t)transport distance:(double)distance distanceUnc:(double)self0 tripLocations:(id)self1 routeRoads:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentOutputData

- (CLTripSegmentOutputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part startDate:(id)date endDate:(id)endDate duration:(double)duration modeOfTransport:(int64_t)transport distance:(double)distance distanceUnc:(double)self0 tripLocations:(id)self1 routeRoads:(id)self2
{
  v24.receiver = self;
  v24.super_class = CLTripSegmentOutputData;
  v21 = [(CLTripSegmentOutputData *)&v24 init];
  if (v21)
  {
    dCopy = d;
    v21->_isFinalPart = part;
    v21->_tripSegmentID = dCopy;
    v21->_modeOfTransport = transport;
    v21->_startDate = date;
    v21->_endDate = endDate;
    v21->_duration_s = duration;
    v21->_distance_m = distance;
    v21->_distanceUnc_m = unc;
    v21->_tripLocations = locations;
    v21->_routeRoads = roads;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_tripSegmentID(self, v9, v10, v11);
  isFinalPart = objc_msgSend_isFinalPart(self, v13, v14, v15);
  started = objc_msgSend_startDate(self, v17, v18, v19);
  v24 = objc_msgSend_endDate(self, v21, v22, v23);
  objc_msgSend_duration_s(self, v25, v26, v27);
  v29 = v28;
  v33 = objc_msgSend_modeOfTransport(self, v30, v31, v32);
  objc_msgSend_distance_m(self, v34, v35, v36);
  v38 = v37;
  objc_msgSend_distanceUnc_m(self, v39, v40, v41);
  v43 = v42;
  v47 = objc_msgSend_tripLocations(self, v44, v45, v46);
  v51 = objc_msgSend_routeRoads(self, v48, v49, v50);
  return objc_msgSend_initWithTripSegmentID_isFinalPart_startDate_endDate_duration_modeOfTransport_distance_distanceUnc_tripLocations_routeRoads_(v8, v52, v12, isFinalPart, started, v24, v33, v47, v29, v38, v43, v51);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentOutputData;
  [(CLTripSegmentOutputData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_tripSegmentID(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"tripSegmentID");
  isFinalPart = objc_msgSend_isFinalPart(self, v8, v9, v10);
  objc_msgSend_encodeBool_forKey_(coder, v12, isFinalPart, @"isFinalPart");
  v16 = objc_msgSend_modeOfTransport(self, v13, v14, v15);
  objc_msgSend_encodeInteger_forKey_(coder, v17, v16, @"modeOfTransport");
  started = objc_msgSend_startDate(self, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(coder, v22, started, @"startDate");
  v26 = objc_msgSend_endDate(self, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coder, v27, v26, @"endDate");
  objc_msgSend_duration_s(self, v28, v29, v30);
  objc_msgSend_encodeDouble_forKey_(coder, v31, @"duration", v32);
  objc_msgSend_distance_m(self, v33, v34, v35);
  objc_msgSend_encodeDouble_forKey_(coder, v36, @"distance", v37);
  objc_msgSend_distanceUnc_m(self, v38, v39, v40);
  objc_msgSend_encodeDouble_forKey_(coder, v41, @"distanceUnc", v42);
  v46 = objc_msgSend_tripLocations(self, v43, v44, v45);
  objc_msgSend_encodeObject_forKey_(coder, v47, v46, @"tripLocations");
  v52 = objc_msgSend_routeRoads(self, v48, v49, v50);

  objc_msgSend_encodeObject_forKey_(coder, v51, v52, @"routeRoads");
}

- (CLTripSegmentOutputData)initWithCoder:(id)coder
{
  v49 = [CLTripSegmentOutputData alloc];
  v4 = objc_opt_class();
  v6 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v5, v4, @"tripSegmentID");
  v9 = objc_msgSend_decodeBoolForKey_(coder, v7, @"isFinalPart", v8);
  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"startDate");
  v13 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"endDate");
  objc_msgSend_decodeDoubleForKey_(coder, v16, @"duration", v17);
  v19 = v18;
  v22 = objc_msgSend_decodeIntegerForKey_(coder, v20, @"modeOfTransport", v21);
  objc_msgSend_decodeDoubleForKey_(coder, v23, @"distance", v24);
  v26 = v25;
  objc_msgSend_decodeDoubleForKey_(coder, v27, @"distanceUnc", v28);
  v30 = v29;
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v36 = objc_msgSend_setWithObjects_(v31, v34, v32, v35, v33, 0);
  v38 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v37, v36, @"tripLocations");
  v39 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v44 = objc_msgSend_setWithObjects_(v39, v42, v40, v43, v41, 0);
  v46 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v45, v44, @"routeRoads");
  return objc_msgSend_initWithTripSegmentID_isFinalPart_startDate_endDate_duration_modeOfTransport_distance_distanceUnc_tripLocations_routeRoads_(v49, v47, v6, v9, v12, v15, v22, v38, v19, v26, v30, v46);
}

@end