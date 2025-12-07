@interface CLTripSegmentRoadData
- (BOOL)isEqualStartLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endlongitude:(double)endlongitude;
- (CLTripSegmentRoadData)initWithCoder:(id)coder;
- (CLTripSegmentRoadData)initWithRoadID:(unint64_t)d clRoadID:(unint64_t)iD roadClass:(int)class formOfWay:(int)way coordinates:(id)coordinates;
- (double)getLength;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLTripSegmentRoadData

- (CLTripSegmentRoadData)initWithRoadID:(unint64_t)d clRoadID:(unint64_t)iD roadClass:(int)class formOfWay:(int)way coordinates:(id)coordinates
{
  v15.receiver = self;
  v15.super_class = CLTripSegmentRoadData;
  v12 = [(CLTripSegmentRoadData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_roadID = d;
    v12->_clRoadID = iD;
    v12->_roadClass = class;
    v12->_formOfWay = way;
    v12->_coordinates = coordinates;
    *&v13->_connectingCLRoadID = 0u;
    *&v13->_connectingRoadEndCoordinate = 0u;
    v13->_sequenceNumber = 0.0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_roadID(self, v9, v10, v11);
  v16 = objc_msgSend_clRoadID(self, v13, v14, v15);
  v20 = objc_msgSend_roadClass(self, v17, v18, v19);
  v24 = objc_msgSend_formOfWay(self, v21, v22, v23);
  v28 = objc_msgSend_coordinates(self, v25, v26, v27);
  v30 = objc_msgSend_initWithRoadID_clRoadID_roadClass_formOfWay_coordinates_(v8, v29, v12, v16, v20, v24, v28);
  v34 = objc_msgSend_clRoadID(self, v31, v32, v33);
  objc_msgSend_setConnectingCLRoadID_(v30, v35, v34, v36);
  started = objc_msgSend_connectingRoadStartCoordinate(self, v37, v38, v39);
  v44 = objc_msgSend_connectingRoadEndCoordinate(self, v41, v42, v43);
  objc_msgSend_setConnectingRoadStartCoordinate_endCoordinate_(v30, v45, started, v44);
  objc_msgSend_familiarityIndex(self, v46, v47, v48);
  objc_msgSend_setFamiliarityIndex_(v30, v49, v50, v51);
  objc_msgSend_sequenceNumber(self, v52, v53, v54);
  objc_msgSend_setSequenceNumber_(v30, v55, v56, v57);
  return v30;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTripSegmentRoadData;
  [(CLTripSegmentRoadData *)&v3 dealloc];
}

- (id)description
{
  v57 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  coordinates = self->_coordinates;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(coordinates, a2, &v52, v56, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v53;
    v10 = &stru_1F0E6F140;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(coordinates);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = MEMORY[0x1E696AEC0];
        objc_msgSend_latitude(v12, v5, v6, v7);
        v15 = v14;
        objc_msgSend_longitude(v12, v16, v17, v18);
        v10 = objc_msgSend_stringWithFormat_(v13, v19, @"%@,%.7lf,%.7lf", v20, v10, v15, v21);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(coordinates, v5, &v52, v56, 16);
    }

    while (v8);
  }

  else
  {
    v10 = &stru_1F0E6F140;
  }

  v22 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  roadID = self->_roadID;
  clRoadID = self->_clRoadID;
  connectingCLRoadID = self->_connectingCLRoadID;
  roadClass = self->_roadClass;
  formOfWay = self->_formOfWay;
  objc_msgSend_latitude(self->_connectingRoadStartCoordinate, v30, v31, v32);
  v34 = v33;
  objc_msgSend_longitude(self->_connectingRoadStartCoordinate, v35, v36, v37);
  v39 = v38;
  objc_msgSend_latitude(self->_connectingRoadEndCoordinate, v40, v41, v42);
  v44 = v43;
  objc_msgSend_longitude(self->_connectingRoadEndCoordinate, v45, v46, v47);
  return objc_msgSend_stringWithFormat_(v22, v48, @"%@,roadID,%llu,clRoadID,%llu,roadClass,%d,formOfWay,%d,connectingCLRoadID,%llu,connectingStartCoord,%.7lf,%.7lf,connectingEndCoord,%.7lf,%.7lf,familiarityIndex,%.5lf,sequenceNumber,%.5lf,coordinates%@", v49, v24, roadID, clRoadID, roadClass, formOfWay, connectingCLRoadID, v34, v39, v44, v50, *&self->_familiarityIndex, *&self->_sequenceNumber, v10);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_roadID(self, a2, coder, v3);
  objc_msgSend_encodeInt64_forKey_(coder, v7, v6, @"roadID");
  v11 = objc_msgSend_clRoadID(self, v8, v9, v10);
  objc_msgSend_encodeInt64_forKey_(coder, v12, v11, @"clRoadID");
  v16 = objc_msgSend_roadClass(self, v13, v14, v15);
  objc_msgSend_encodeInt_forKey_(coder, v17, v16, @"roadClass");
  v21 = objc_msgSend_formOfWay(self, v18, v19, v20);
  objc_msgSend_encodeInt_forKey_(coder, v22, v21, @"formOfWay");
  v26 = objc_msgSend_coordinates(self, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coder, v27, v26, @"coordinates");
  v31 = objc_msgSend_connectingCLRoadID(self, v28, v29, v30);
  objc_msgSend_encodeInt64_forKey_(coder, v32, v31, @"connectingCLRoadID");
  started = objc_msgSend_connectingRoadStartCoordinate(self, v33, v34, v35);
  objc_msgSend_encodeObject_forKey_(coder, v37, started, @"connectingRoadStartCoordinate");
  v41 = objc_msgSend_connectingRoadEndCoordinate(self, v38, v39, v40);
  objc_msgSend_encodeObject_forKey_(coder, v42, v41, @"connectingRoadEndCoordinate");
  objc_msgSend_familiarityIndex(self, v43, v44, v45);
  objc_msgSend_encodeDouble_forKey_(coder, v46, @"familiarityIndex", v47);
  objc_msgSend_sequenceNumber(self, v48, v49, v50);

  objc_msgSend_encodeDouble_forKey_(coder, v51, @"sequenceNumber", v52);
}

- (CLTripSegmentRoadData)initWithCoder:(id)coder
{
  v4 = [CLTripSegmentRoadData alloc];
  v7 = objc_msgSend_decodeInt64ForKey_(coder, v5, @"roadID", v6);
  v10 = objc_msgSend_decodeInt64ForKey_(coder, v8, @"clRoadID", v9);
  v13 = objc_msgSend_decodeIntForKey_(coder, v11, @"roadClass", v12);
  v16 = objc_msgSend_decodeIntForKey_(coder, v14, @"formOfWay", v15);
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v22 = objc_msgSend_setWithObjects_(v17, v20, v18, v21, v19, 0);
  v24 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v23, v22, @"coordinates");
  v26 = objc_msgSend_initWithRoadID_clRoadID_roadClass_formOfWay_coordinates_(v4, v25, v7, v10, v13, v16, v24);
  v29 = objc_msgSend_decodeInt64ForKey_(coder, v27, @"connectingCLRoadID", v28);
  objc_msgSend_setConnectingCLRoadID_(v26, v30, v29, v31);
  v32 = objc_opt_class();
  v34 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v33, v32, @"connectingRoadStartCoordinate");
  v35 = objc_opt_class();
  v37 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v36, v35, @"connectingRoadEndCoordinate");
  objc_msgSend_setConnectingRoadStartCoordinate_endCoordinate_(v26, v38, v34, v37);
  objc_msgSend_decodeDoubleForKey_(coder, v39, @"familiarityIndex", v40);
  objc_msgSend_setFamiliarityIndex_(v26, v41, v42, v43);
  objc_msgSend_decodeDoubleForKey_(coder, v44, @"sequenceNumber", v45);
  objc_msgSend_setSequenceNumber_(v26, v46, v47, v48);
  return v26;
}

- (double)getLength
{
  v7 = 0.0;
  if (objc_msgSend_count(self->_coordinates, a2, v2, v3) != 1)
  {
    v8 = 0;
    do
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(self->_coordinates, v5, v8++, v6);
      v12 = objc_msgSend_objectAtIndexedSubscript_(self->_coordinates, v10, v8, v11);
      objc_msgSend_distanceFrom_(v9, v13, v12, v14);
      v7 = v7 + v15;
    }

    while (objc_msgSend_count(self->_coordinates, v16, v17, v18) - 1 > v8);
  }

  return v7;
}

- (BOOL)isEqualStartLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endlongitude:(double)endlongitude
{
  coordinates = self->_coordinates;
  if (coordinates)
  {
    coordinates = objc_msgSend_count(coordinates, a2, v6, v7);
    if (coordinates)
    {
      Object = objc_msgSend_firstObject(self->_coordinates, v14, v15, v16);
      v21 = objc_msgSend_lastObject(self->_coordinates, v18, v19, v20);
      objc_msgSend_latitude(Object, v22, v23, v24);
      if (vabdd_f64(latitude, v28) >= 0.0000001 || (objc_msgSend_longitude(Object, v25, v26, v27), vabdd_f64(longitude, v32) >= 0.0000001) || (objc_msgSend_latitude(v21, v29, v30, v31), vabdd_f64(endLatitude, v36) >= 0.0000001))
      {
        LOBYTE(coordinates) = 0;
      }

      else
      {
        objc_msgSend_longitude(v21, v33, v34, v35);
        LOBYTE(coordinates) = vabdd_f64(endlongitude, v37) < 0.0000001;
      }
    }
  }

  return coordinates;
}

@end