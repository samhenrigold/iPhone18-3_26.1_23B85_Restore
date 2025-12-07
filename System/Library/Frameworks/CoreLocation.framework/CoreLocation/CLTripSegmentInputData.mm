@interface CLTripSegmentInputData
- (CLTripSegmentInputData)initWithCoder:(id)coder;
- (CLTripSegmentInputData)initWithCommuteID:(id)d tripSegmentID:(id)iD isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)self0;
- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialData:(id)data;
- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentInputData

- (CLTripSegmentInputData)initWithCommuteID:(id)d tripSegmentID:(id)iD isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)self0
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v16 = [(CLTripSegmentInputData *)&v19 init];
  if (v16)
  {
    v16->_commuteID = d;
    iDCopy = iD;
    v16->_isFinalPart = part;
    v16->_tripSegmentID = iDCopy;
    v16->_modeOfTransport = transport;
    v16->_tripLocations = locations;
    v16->_startTripLocation = location;
    v16->_stopTripLocation = tripLocation;
    v16->_inertialData = 0;
    v16->_inertialOdometryData = data;
  }

  return v16;
}

- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialData:(id)data
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v15 = [(CLTripSegmentInputData *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_commuteID = 0;
    dCopy = d;
    v16->_isFinalPart = part;
    v16->_tripSegmentID = dCopy;
    v16->_modeOfTransport = transport;
    v16->_tripLocations = locations;
    v16->_startTripLocation = location;
    v16->_stopTripLocation = tripLocation;
    v16->_inertialData = data;
    v16->_inertialOdometryData = 0;
  }

  return v16;
}

- (CLTripSegmentInputData)initWithTripSegmentID:(id)d isFinalPart:(BOOL)part modeOfTransport:(int64_t)transport tripLocations:(id)locations startTripLocation:(id)location stopTripLocation:(id)tripLocation inertialOdometryData:(id)data
{
  v19.receiver = self;
  v19.super_class = CLTripSegmentInputData;
  v15 = [(CLTripSegmentInputData *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_commuteID = 0;
    dCopy = d;
    v16->_isFinalPart = part;
    v16->_tripSegmentID = dCopy;
    v16->_modeOfTransport = transport;
    v16->_tripLocations = locations;
    v16->_startTripLocation = location;
    v16->_stopTripLocation = tripLocation;
    v16->_inertialData = 0;
    v16->_inertialOdometryData = data;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_commuteID(self, v9, v10, v11);
  v16 = objc_msgSend_tripSegmentID(self, v13, v14, v15);
  isFinalPart = objc_msgSend_isFinalPart(self, v17, v18, v19);
  v24 = objc_msgSend_modeOfTransport(self, v21, v22, v23);
  v28 = objc_msgSend_tripLocations(self, v25, v26, v27);
  started = objc_msgSend_startTripLocation(self, v29, v30, v31);
  v36 = objc_msgSend_stopTripLocation(self, v33, v34, v35);
  v40 = objc_msgSend_inertialOdometryData(self, v37, v38, v39);
  isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialOdometryData = objc_msgSend_initWithCommuteID_tripSegmentID_isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialOdometryData_(v8, v41, v12, v16, isFinalPart, v24, v28, started, v36, v40);
  isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialOdometryData[5] = objc_msgSend_inertialData(self, v43, v44, v45);
  return isFinalPart_modeOfTransport_tripLocations_startTripLocation_stopTripLocation_inertialOdometryData;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentInputData;
  [(CLTripSegmentInputData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_commuteID(self, a2, coder, v3);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"commuteID");
  v11 = objc_msgSend_tripSegmentID(self, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coder, v12, v11, @"tripSegmentID");
  isFinalPart = objc_msgSend_isFinalPart(self, v13, v14, v15);
  objc_msgSend_encodeBool_forKey_(coder, v17, isFinalPart, @"isFinalPart");
  v21 = objc_msgSend_modeOfTransport(self, v18, v19, v20);
  objc_msgSend_encodeInteger_forKey_(coder, v22, v21, @"modeOfTransport");
  v26 = objc_msgSend_inertialData(self, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coder, v27, v26, @"inertialData");
  v31 = objc_msgSend_tripLocations(self, v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(coder, v32, v31, @"tripLocations");
  started = objc_msgSend_startTripLocation(self, v33, v34, v35);
  objc_msgSend_encodeObject_forKey_(coder, v37, started, @"tripStartLocation");
  v41 = objc_msgSend_stopTripLocation(self, v38, v39, v40);
  objc_msgSend_encodeObject_forKey_(coder, v42, v41, @"tripStopLocation");
  v47 = objc_msgSend_inertialOdometryData(self, v43, v44, v45);

  objc_msgSend_encodeObject_forKey_(coder, v46, v47, @"inertialOdometryData");
}

- (CLTripSegmentInputData)initWithCoder:(id)coder
{
  v39.receiver = self;
  v39.super_class = CLTripSegmentInputData;
  v4 = [(CLTripSegmentInputData *)&v39 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_commuteID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"commuteID");
    v7 = objc_opt_class();
    v4->_tripSegmentID = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"tripSegmentID");
    v4->_isFinalPart = objc_msgSend_decodeBoolForKey_(coder, v9, @"isFinalPart", v10);
    v4->_modeOfTransport = objc_msgSend_decodeIntegerForKey_(coder, v11, @"modeOfTransport", v12);
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v18 = objc_msgSend_setWithObjects_(v13, v16, v14, v17, v15, 0);
    v4->_tripLocations = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v19, v18, @"tripLocations");
    v20 = objc_opt_class();
    v4->_startTripLocation = objc_msgSend_decodeObjectOfClass_forKey_(coder, v21, v20, @"tripStartLocation");
    v22 = objc_opt_class();
    v4->_stopTripLocation = objc_msgSend_decodeObjectOfClass_forKey_(coder, v23, v22, @"tripStopLocation");
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v29 = objc_msgSend_setWithObjects_(v24, v27, v25, v28, v26, 0);
    v4->_inertialData = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v30, v29, @"inertialData");
    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v36 = objc_msgSend_setWithObjects_(v31, v34, v32, v35, v33, 0);
    v4->_inertialOdometryData = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v37, v36, @"inertialOdometryData");
  }

  return v4;
}

@end