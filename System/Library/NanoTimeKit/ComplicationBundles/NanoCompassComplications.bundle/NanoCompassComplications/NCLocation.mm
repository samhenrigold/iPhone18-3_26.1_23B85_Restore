@interface NCLocation
+ (NCLocation)idealizedLocation;
+ (NCLocation)locationWithLocation:(id)location error:(id)error;
+ (id)randomizedLocation;
- (BOOL)hasAcceptableAccuracy;
- (BOOL)isBetterThan:(id)than withStaleTimeThreshold:(double)threshold;
- (CLLocationCoordinate2D)coordinate;
- (NCLocation)initWithLocation:(id)location;
- (NCLocation)initWithLocation:(id)location error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NCLocation

+ (NCLocation)locationWithLocation:(id)location error:(id)error
{
  errorCopy = error;
  locationCopy = location;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithLocation_error_(v8, v9, locationCopy, errorCopy);

  return v10;
}

- (NCLocation)initWithLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  v33.receiver = self;
  v33.super_class = NCLocation;
  v8 = [(NCLocation *)&v33 init];
  v11 = v8;
  if (v8)
  {
    if (locationCopy)
    {
      objc_msgSend_coordinate(locationCopy, v9, v10);
      objc_msgSend_setCoordinate_(v11, v12, v13);
      objc_msgSend_horizontalAccuracy(locationCopy, v14, v15);
      objc_msgSend_setAccuracy_(v11, v16, v17);
      objc_msgSend_timestamp(locationCopy, v18, v19);
    }

    else
    {
      objc_msgSend_setCoordinate_(v8, v9, v10, *MEMORY[0x277CE4278], *(MEMORY[0x277CE4278] + 8));
      objc_msgSend_setAccuracy_(v11, v20, v21, -1.0);
      objc_msgSend_date(MEMORY[0x277CBEAA8], v22, v23);
    }
    v24 = ;
    objc_msgSend_setTimestamp_(v11, v25, v24);

    v28 = objc_msgSend_date(MEMORY[0x277CBEAA8], v26, v27);
    objc_msgSend_setReportedTimestamp_(v11, v29, v28);

    objc_msgSend_setError_(v11, v30, errorCopy);
    objc_msgSend_setRawLocation_(v11, v31, locationCopy);
  }

  return v11;
}

- (NCLocation)initWithLocation:(id)location
{
  locationCopy = location;
  v30.receiver = self;
  v30.super_class = NCLocation;
  v7 = [(NCLocation *)&v30 init];
  if (v7)
  {
    objc_msgSend_coordinate(locationCopy, v5, v6);
    v7->_coordinate.latitude = v8;
    v7->_coordinate.longitude = v9;
    objc_msgSend_accuracy(locationCopy, v10, v11);
    v7->_accuracy = v12;
    v15 = objc_msgSend_timestamp(locationCopy, v13, v14);
    timestamp = v7->_timestamp;
    v7->_timestamp = v15;

    v19 = objc_msgSend_reportedTimestamp(locationCopy, v17, v18);
    reportedTimestamp = v7->_reportedTimestamp;
    v7->_reportedTimestamp = v19;

    v23 = objc_msgSend_error(locationCopy, v21, v22);
    error = v7->_error;
    v7->_error = v23;

    v27 = objc_msgSend_rawLocation(locationCopy, v25, v26);
    rawLocation = v7->_rawLocation;
    v7->_rawLocation = v27;
  }

  return v7;
}

- (BOOL)isBetterThan:(id)than withStaleTimeThreshold:(double)threshold
{
  thanCopy = than;
  objc_msgSend_coordinate(self, v10, v11);
  if (!CLLocationCoordinate2DIsValid(v88))
  {
    goto LABEL_4;
  }

  if (!thanCopy)
  {
    goto LABEL_25;
  }

  v14 = objc_msgSend_timestamp(self, v12, v13);
  v17 = objc_msgSend_timestamp(thanCopy, v15, v16);
  objc_msgSend_timeIntervalSinceDate_(v14, v18, v17);
  v20 = v19;

  if (v20 < 0.0)
  {
LABEL_4:
    v23 = 0;
    goto LABEL_26;
  }

  v24 = objc_msgSend_error(self, v21, v22);
  if (v24)
  {

    goto LABEL_7;
  }

  v75 = objc_msgSend_error(thanCopy, v25, v26);

  if (v75)
  {
LABEL_25:
    v23 = 1;
    goto LABEL_26;
  }

LABEL_7:
  objc_msgSend_coordinate(thanCopy, v27, v28);
  if (!CLLocationCoordinate2DIsValid(v89))
  {
    goto LABEL_25;
  }

  objc_msgSend_accuracy(self, v29, v30);
  if (v33 >= 0.0)
  {
    objc_msgSend_accuracy(thanCopy, v31, v32);
    if (v34 < 0.0)
    {
      goto LABEL_25;
    }
  }

  hasAcceptableAccuracy = objc_msgSend_hasAcceptableAccuracy(self, v31, v32);
  if (hasAcceptableAccuracy)
  {
    if (!objc_msgSend_hasAcceptableAccuracy(thanCopy, v35, v36))
    {
      goto LABEL_25;
    }
  }

  objc_msgSend_accuracy(thanCopy, v35, v36);
  v39 = v38;
  objc_msgSend_accuracy(self, v40, v41);
  v43 = v42;
  objc_msgSend_accuracy(self, v44, v45);
  if (v48 >= 0.0 && v39 - v43 > 2.22044605e-16)
  {
    goto LABEL_25;
  }

  objc_msgSend_coordinate(self, v46, v47);
  v50 = v49;
  objc_msgSend_coordinate(thanCopy, v51, v52);
  v56 = v50 - v55;
  if (v56 >= 0.0)
  {
    v57 = v56;
  }

  else
  {
    v57 = -v56;
  }

  objc_msgSend_coordinate(self, v53, v54);
  v59 = v58;
  objc_msgSend_coordinate(thanCopy, v60, v61);
  v65 = v59 - v64;
  v66 = -(v59 - v64);
  if (v65 >= 0.0)
  {
    v67 = v65;
  }

  else
  {
    v67 = v66;
  }

  v70 = objc_msgSend_error(self, v62, v63);
  if (v70 || (objc_msgSend_error(thanCopy, v68, v69), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = objc_msgSend_error(self, v68, v69);
    v6 = objc_msgSend_error(thanCopy, v71, v72);
    if (!objc_msgSend_isEqual_(v5, v73, v6))
    {
      v77 = 0;
      goto LABEL_37;
    }

    v74 = 1;
  }

  else
  {
    v74 = 0;
  }

  objc_msgSend_accuracy(self, v68, v69);
  v79 = v78;
  objc_msgSend_accuracy(thanCopy, v80, v81);
  v83 = v79 - v82;
  if (v83 < 0.0)
  {
    v83 = -v83;
  }

  if (v83 >= 2.22044605e-16 || v57 > 2.22044605e-16 || v67 > 2.22044605e-16)
  {
    v77 = 0;
    if (!v74)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v77 = v20 > threshold;
  if (v74)
  {
LABEL_37:
  }

LABEL_38:
  if (!v70)
  {
  }

  if (v77)
  {
    goto LABEL_25;
  }

  v86 = fmax(v57, v67) > 2.22044605e-16 ? hasAcceptableAccuracy : 0;
  if (v86)
  {
    goto LABEL_25;
  }

  objc_msgSend_accuracy(self, v84, v85);
  v23 = v20 > threshold && v87 >= 0.0;
LABEL_26:

  return v23;
}

- (BOOL)hasAcceptableAccuracy
{
  objc_msgSend_accuracy(self, a2, v2);
  if (v6 < 0.0)
  {
    return 0;
  }

  objc_msgSend_accuracy(self, v4, v5);
  return v8 < 300.0;
}

+ (NCLocation)idealizedLocation
{
  if (qword_27E1C5218 != -1)
  {
    sub_23BD66C94();
  }

  v3 = qword_27E1C5210;

  return v3;
}

+ (id)randomizedLocation
{
  v2 = objc_opt_new();
  v3 = (arc4random_uniform(0xB4u) - 90);
  v4 = arc4random_uniform(0x168u);
  v5 = CLLocationCoordinate2DMake(v3, (v4 - 180));
  objc_msgSend_setCoordinate_(v2, v6, v7, v5.latitude, v5.longitude);
  v8 = arc4random_uniform(0xFA0u);
  objc_msgSend_setAccuracy_(v2, v9, v10, v8);
  v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v11, v12);
  objc_msgSend_setTimestamp_(v2, v14, v13);

  v17 = objc_msgSend_timestamp(v2, v15, v16);
  objc_msgSend_setReportedTimestamp_(v2, v18, v17);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCLocation alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithLocation_, self);
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