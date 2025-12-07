@interface NCAltitude
+ (NCAltitude)idealizedAltitude;
+ (id)altitudeWithLocation:(id)location error:(id)error;
+ (id)initAltitude:(id)altitude;
+ (id)randomizedAltitude;
- (BOOL)hasAcceptibleAccuracy;
- (BOOL)isBetterThan:(id)than withStaleTimeThreshold:(double)threshold;
- (NCAltitude)initWithAbsoluteAltitude:(id)altitude;
- (NCAltitude)initWithLocation:(id)location error:(id)error;
- (NCAltitude)initWithNCAltitude:(id)altitude;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NCAltitude

+ (id)initAltitude:(id)altitude
{
  altitudeCopy = altitude;
  v5 = [self alloc];
  v7 = objc_msgSend_initWithAbsoluteAltitude_(v5, v6, altitudeCopy);

  return v7;
}

- (NCAltitude)initWithNCAltitude:(id)altitude
{
  altitudeCopy = altitude;
  v47.receiver = self;
  v47.super_class = NCAltitude;
  v7 = [(NCAltitude *)&v47 init];
  if (v7)
  {
    objc_msgSend_altitude(altitudeCopy, v5, v6);
    objc_msgSend_setAltitude_(v7, v8, v9);
    objc_msgSend_altitudeInMeters(altitudeCopy, v10, v11);
    objc_msgSend_setAltitudeInMeters_(v7, v12, v13);
    v16 = objc_msgSend_type(altitudeCopy, v14, v15);
    objc_msgSend_setType_(v7, v17, v16);
    objc_msgSend_accuracy(altitudeCopy, v18, v19);
    objc_msgSend_setAccuracy_(v7, v20, v21);
    v24 = objc_msgSend_timestamp(altitudeCopy, v22, v23);
    objc_msgSend_setTimestamp_(v7, v25, v24);

    v28 = objc_msgSend_reportedTimestamp(altitudeCopy, v26, v27);
    objc_msgSend_setReportedTimestamp_(v7, v29, v28);

    v32 = objc_msgSend_error(altitudeCopy, v30, v31);
    objc_msgSend_setError_(v7, v33, v32);

    hasAltitudeReading = objc_msgSend_hasAltitudeReading(altitudeCopy, v34, v35);
    objc_msgSend_setHasAltitudeReading_(v7, v37, hasAltitudeReading);
    v40 = objc_msgSend_absoluteAltitudeAccuracy(altitudeCopy, v38, v39);
    objc_msgSend_setAbsoluteAltitudeAccuracy_(v7, v41, v40);

    v44 = objc_msgSend_displayTilde(altitudeCopy, v42, v43);
    objc_msgSend_setDisplayTilde_(v7, v45, v44);
  }

  return v7;
}

- (NCAltitude)initWithAbsoluteAltitude:(id)altitude
{
  altitudeCopy = altitude;
  v36.receiver = self;
  v36.super_class = NCAltitude;
  v7 = [(NCAltitude *)&v36 init];
  if (v7)
  {
    objc_msgSend_altitude(altitudeCopy, v5, v6);
    v7->_rawAltitude = v8;
    objc_msgSend_accuracy(altitudeCopy, v9, v10);
    v7->_rawAccuracy = v11;
    objc_msgSend_precision(altitudeCopy, v12, v13);
    v7->_rawPrecision = v14;
    v15 = objc_alloc(MEMORY[0x277CBEAA8]);
    objc_msgSend_timestamp(altitudeCopy, v16, v17);
    v20 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v15, v18, v19);
    objc_msgSend_setTimestamp_(v7, v21, v20);

    v22 = objc_alloc(MEMORY[0x277CBEAA8]);
    objc_msgSend_timestamp(altitudeCopy, v23, v24);
    v27 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v22, v25, v26);
    objc_msgSend_setReportedTimestamp_(v7, v28, v27);

    objc_msgSend_setType_(v7, v29, 4);
    objc_msgSend_altitude(altitudeCopy, v30, v31);
    objc_msgSend_setAltitudeInMeters_(v7, v32, v33);
    objc_msgSend_setHasAltitudeReading_(v7, v34, 1);
  }

  return v7;
}

+ (id)altitudeWithLocation:(id)location error:(id)error
{
  errorCopy = error;
  locationCopy = location;
  v8 = [self alloc];
  v10 = objc_msgSend_initWithLocation_error_(v8, v9, locationCopy, errorCopy);

  return v10;
}

- (NCAltitude)initWithLocation:(id)location error:(id)error
{
  locationCopy = location;
  v60.receiver = self;
  v60.super_class = NCAltitude;
  v6 = [(NCAltitude *)&v60 init];
  v9 = v6;
  if (v6)
  {
    if (locationCopy)
    {
      if (objc_msgSend_type(locationCopy, v7, v8) - 1 > 2)
      {
        v29 = objc_msgSend__groundAltitude(locationCopy, v10, v11);

        if (v29)
        {
          v32 = objc_msgSend__groundAltitude(locationCopy, v30, v31);
          objc_msgSend_estimate(v32, v33, v34);
          v13 = v35;

          v38 = objc_msgSend__groundAltitude(locationCopy, v36, v37);
          objc_msgSend_uncertainty(v38, v39, v40);
          v19 = v41;

          v20 = 2;
        }

        else
        {
          objc_msgSend_altitude(locationCopy, v30, v31);
          v13 = v42;
          objc_msgSend_verticalAccuracy(locationCopy, v43, v44);
          v19 = v45;
          v20 = 1;
        }
      }

      else
      {
        objc_msgSend_altitude(locationCopy, v10, v11);
        v13 = v12;
        objc_msgSend_verticalAccuracy(locationCopy, v14, v15);
        v19 = v18;
        v20 = 3;
      }

      objc_msgSend_setAltitude_(v9, v16, v17, v13);
      objc_msgSend_setAltitudeInMeters_(v9, v46, v47, v13);
      objc_msgSend_setType_(v9, v48, v20);
      objc_msgSend_setAccuracy_(v9, v49, v50, v19);
      v27 = objc_msgSend_timestamp(locationCopy, v51, v52);
    }

    else
    {
      objc_msgSend_setAltitude_(v6, v7, v8, 0.0);
      objc_msgSend_setAltitudeInMeters_(v9, v21, v22, 0.0);
      objc_msgSend_setAccuracy_(v9, v23, v24, -1.0);
      v27 = objc_msgSend_date(MEMORY[0x277CBEAA8], v25, v26);
    }

    v53 = v27;
    objc_msgSend_setTimestamp_(v9, v28, v27);

    objc_msgSend_setHasAltitudeReading_(v9, v54, locationCopy != 0);
    v57 = objc_msgSend_date(MEMORY[0x277CBEAA8], v55, v56);
    objc_msgSend_setReportedTimestamp_(v9, v58, v57);
  }

  return v9;
}

- (BOOL)isBetterThan:(id)than withStaleTimeThreshold:(double)threshold
{
  thanCopy = than;
  if (!thanCopy || objc_msgSend_type(self, v9, v10) == 4 && objc_msgSend_type(thanCopy, v12, v13) != 4)
  {
    goto LABEL_49;
  }

  if (objc_msgSend_type(self, v12, v13) != 4 && objc_msgSend_type(thanCopy, v14, v15) == 4 || (objc_msgSend_timestamp(self, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timestamp(thanCopy, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceDate_(v16, v20, v19), v22 = v21, v19, v16, v22 < 0.0))
  {
    v25 = 0;
    goto LABEL_50;
  }

  v26 = objc_msgSend_error(self, v23, v24);
  if (v26)
  {

    goto LABEL_10;
  }

  v49 = objc_msgSend_error(thanCopy, v27, v28);

  if (v49)
  {
LABEL_49:
    v25 = 1;
    goto LABEL_50;
  }

LABEL_10:
  objc_msgSend_accuracy(self, v29, v30);
  if (v33 >= 0.0)
  {
    objc_msgSend_accuracy(thanCopy, v31, v32);
    if (v34 < 0.0)
    {
      goto LABEL_49;
    }
  }

  objc_msgSend_accuracy(self, v31, v32);
  if (v37 >= 0.0)
  {
    objc_msgSend_accuracy(self, v35, v36);
    v39 = v38;
    objc_msgSend_accuracy(thanCopy, v40, v41);
    if (v39 < v42)
    {
      goto LABEL_49;
    }
  }

  hasAcceptibleAccuracy = objc_msgSend_hasAcceptibleAccuracy(self, v35, v36);
  if (hasAcceptibleAccuracy)
  {
    if (objc_msgSend_type(self, v43, v44) == 2 && objc_msgSend_type(thanCopy, v46, v47) > 2)
    {
      v48 = v22 <= 30.0;
      goto LABEL_23;
    }

    if (objc_msgSend_type(self, v46, v47) < 2 && objc_msgSend_type(thanCopy, v43, v44) >= 2)
    {
      v48 = v22 <= threshold;
LABEL_23:
      v25 = !v48;
      goto LABEL_50;
    }
  }

  objc_msgSend_altitude(self, v43, v44);
  v51 = v50;
  objc_msgSend_altitude(thanCopy, v52, v53);
  v57 = v51 - v56;
  if (v57 >= 0.0)
  {
    v58 = v57;
  }

  else
  {
    v58 = -v57;
  }

  v61 = objc_msgSend_error(self, v54, v55);
  if (v61 || (objc_msgSend_error(thanCopy, v59, v60), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = objc_msgSend_error(self, v59, v60);
    v6 = objc_msgSend_error(thanCopy, v62, v63);
    if (!objc_msgSend_isEqual_(v5, v64, v6))
    {
      v66 = 0;
      goto LABEL_43;
    }

    v65 = 1;
  }

  else
  {
    v65 = 0;
  }

  objc_msgSend_accuracy(self, v59, v60);
  v68 = v67;
  objc_msgSend_accuracy(thanCopy, v69, v70);
  v74 = v68 - v73;
  if (v74 < 0.0)
  {
    v74 = -v74;
  }

  if (v74 >= 0.00000011920929 || (v75 = objc_msgSend_type(self, v71, v72), v75 != objc_msgSend_type(thanCopy, v76, v77)) || v58 >= 0.00000011920929)
  {
    v66 = 0;
    if (!v65)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v66 = v22 > threshold;
  if (v65)
  {
LABEL_43:
  }

LABEL_44:
  if (!v61)
  {
  }

  if (v66 || hasAcceptibleAccuracy && v58 < 0.00000011920929)
  {
    goto LABEL_49;
  }

  objc_msgSend_accuracy(self, v78, v79);
  v25 = v22 > threshold && v81 >= 0.0;
LABEL_50:

  return v25;
}

- (BOOL)hasAcceptibleAccuracy
{
  objc_msgSend_accuracy(self, a2, v2);
  if (v6 < 0.0)
  {
    return 0;
  }

  objc_msgSend_accuracy(self, v4, v5);
  return v8 <= 20.0;
}

- (id)description
{
  v2 = self->_type - 1;
  if (v2 > 3)
  {
    v3 = @"NONE";
  }

  else
  {
    v3 = off_278B93F60[v2];
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<%.2fm> ±%.2fm (%@) @generated %@ @reported %@", *&self->_altitude, *&self->_accuracy, v3, self->_timestamp, self->_reportedTimestamp);
}

+ (NCAltitude)idealizedAltitude
{
  if (qword_27E1C4A88 != -1)
  {
    sub_23BD653E0();
  }

  v3 = qword_27E1C4A80;

  return v3;
}

+ (id)randomizedAltitude
{
  v2 = objc_opt_new();
  v3 = arc4random_uniform(0x2904u);
  objc_msgSend_setAltitude_(v2, v4, v5, (v3 - 500));
  if (arc4random())
  {
    objc_msgSend_setType_(v2, v6, 2);
  }

  else
  {
    objc_msgSend_setType_(v2, v6, 3);
  }

  v7 = arc4random_uniform(0xC8u);
  objc_msgSend_setAccuracy_(v2, v8, v9, v7);
  v12 = objc_msgSend_date(MEMORY[0x277CBEAA8], v10, v11);
  objc_msgSend_setTimestamp_(v2, v13, v12);

  v16 = objc_msgSend_timestamp(v2, v14, v15);
  objc_msgSend_setReportedTimestamp_(v2, v17, v16);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCAltitude alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithNCAltitude_, self);
}

@end