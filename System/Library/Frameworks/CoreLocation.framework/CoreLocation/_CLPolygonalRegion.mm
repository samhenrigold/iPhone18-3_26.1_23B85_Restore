@interface _CLPolygonalRegion
- (BOOL)pointInPolygonWithCoordinate:(CLLocationCoordinate2D)coordinate withDistanceToBorder:(double *)border;
- (_CLPolygonalRegion)initWithCoder:(id)coder;
- (_CLPolygonalRegion)initWithVertices:(id)vertices identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initNearbyAllowedWithVertices:(id)vertices identifier:(id)identifier;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLPolygonalRegion

- (_CLPolygonalRegion)initWithVertices:(id)vertices identifier:(id)identifier
{
  v70 = *MEMORY[0x1E69E9840];
  if (vertices)
  {
    v7 = objc_msgSend_count(vertices, a2, vertices, identifier);
    v11 = v7;
    if (v7 >= 0x66)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v12 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        v67 = v11;
        v68 = 2050;
        v69 = 101;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#polygon,number of vertices (%{public}lu) mustn't exceed %{public}lu", buf, 0x16u);
      }

      v13 = sub_19B87DD40();
      if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v62 = 134349312;
      v63 = v11;
      v64 = 2050;
      v65 = 101;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#polygon,number of vertices (%{public}lu) mustn't exceed %{public}lu", &v62, 22);
LABEL_36:
      v52 = v14;
      sub_19B885924("Generic", 1, 0, 0, "[_CLPolygonalRegion initWithVertices:identifier:]", "CoreLocation: %s\n", v14);
      if (v52 != buf)
      {
        free(v52);
      }

      return 0;
    }

    if (v7 <= 3)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v15 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        v67 = v11;
        v68 = 2050;
        v69 = 4;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "#polygon,number of vertices (%{public}lu) must be greater or equal than %{public}lu", buf, 0x16u);
      }

      v16 = sub_19B87DD40();
      if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v62 = 134349312;
      v63 = v11;
      v64 = 2050;
      v65 = 4;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#polygon,number of vertices (%{public}lu) must be greater or equal than %{public}lu", &v62, 22);
      goto LABEL_36;
    }

    Object = objc_msgSend_lastObject(vertices, v8, v9, v10);
    objc_msgSend_coordinate(Object, v18, v19, v20);
    v22 = v21;
    v26 = objc_msgSend_firstObject(vertices, v23, v24, v25);
    objc_msgSend_coordinate(v26, v27, v28, v29);
    if (v22 != v33 || (v34 = objc_msgSend_lastObject(vertices, v30, v31, v32), objc_msgSend_coordinate(v34, v35, v36, v37), v39 = v38, v43 = objc_msgSend_firstObject(vertices, v40, v41, v42), objc_msgSend_coordinate(v43, v44, v45, v46), v39 != v49))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v50 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_ERROR, "#polygon,monitoring requires a valid connected polygon where first and last coordinates are the same", buf, 2u);
      }

      v51 = sub_19B87DD40();
      if ((*(v51 + 160) & 0x80000000) != 0 && (*(v51 + 164) & 0x80000000) != 0 && (*(v51 + 168) & 0x80000000) != 0 && !*(v51 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      LOWORD(v62) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#polygon,monitoring requires a valid connected polygon where first and last coordinates are the same", &v62, 2);
      goto LABEL_36;
    }

    v54 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v47, vertices, v48);
    if (v11 != objc_msgSend_count(v54, v55, v56, v57) + 1)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      v59 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "#polygon,All vertices, except for the first and last equals, have to be unique", buf, 2u);
      }

      v60 = sub_19B87DD40();
      if ((*(v60 + 160) & 0x80000000) != 0 && (*(v60 + 164) & 0x80000000) != 0 && (*(v60 + 168) & 0x80000000) != 0 && !*(v60 + 152))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
      }

      LOWORD(v62) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#polygon,All vertices, except for the first and last equals, have to be unique", &v62, 2);
      goto LABEL_36;
    }
  }

  v61.receiver = self;
  v61.super_class = _CLPolygonalRegion;
  v53 = [(CLRegion *)&v61 initWithIdentifier:identifier andRegionType:2];
  if (v53)
  {
    v53->_vertices = vertices;
    v53->_allowMonitoringWhileNearby = 0;
  }

  return v53;
}

- (id)initNearbyAllowedWithVertices:(id)vertices identifier:(id)identifier
{
  result = objc_msgSend_initWithVertices_identifier_(self, a2, vertices, identifier);
  if (result)
  {
    *(result + 80) = 1;
  }

  return result;
}

- (void)dealloc
{
  self->_vertices = 0;
  v3.receiver = self;
  v3.super_class = _CLPolygonalRegion;
  [(CLRegion *)&v3 dealloc];
}

- (_CLPolygonalRegion)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CLPolygonalRegion.m", 182, @"Invalid parameter not satisfying: %@", @"[decoder allowsKeyedCoding]");
  }

  v25.receiver = self;
  v25.super_class = _CLPolygonalRegion;
  v10 = [(CLRegion *)&v25 initWithCoder:coder];
  if (v10)
  {
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCLPolygonalRegionCodingKeyVertices");
    if (objc_msgSend_containsValueForKey_(coder, v14, @"kCLPolygonalRegionCodingKeyReferenceFrame", v15))
    {
      v18 = objc_msgSend_decodeIntForKey_(coder, v16, @"kCLPolygonalRegionCodingKeyReferenceFrame", v17);
    }

    else
    {
      v18 = 0;
    }

    if (objc_msgSend_containsValueForKey_(coder, v16, @"kCLPolygonalRegionCodingKeyMonitoringNearby", v17))
    {
      v21 = objc_msgSend_decodeBoolForKey_(coder, v19, @"kCLPolygonalRegionCodingKeyMonitoringNearby", v20);
    }

    else
    {
      v21 = 0;
    }

    objc_msgSend_setType_(v10, v19, 2, v20);
    v10->_vertices = v13;
    v10->_allowMonitoringWhileNearby = v21;
    v10->_geoReferenceFrame = v18;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CLPolygonalRegion.m", 212, @"Invalid parameter not satisfying: %@", @"[encoder allowsKeyedCoding]");
  }

  v27.receiver = self;
  v27.super_class = _CLPolygonalRegion;
  [(CLRegion *)&v27 encodeWithCoder:coder];
  v13 = objc_msgSend_vertices(self, v10, v11, v12);
  v17 = objc_msgSend_geoReferenceFrame(self, v14, v15, v16);
  v21 = objc_msgSend_allowMonitoringWhileNearby(self, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(coder, v22, v13, @"kCLPolygonalRegionCodingKeyVertices");
  objc_msgSend_encodeInt_forKey_(coder, v23, v17, @"kCLPolygonalRegionCodingKeyReferenceFrame");
  objc_msgSend_encodeBool_forKey_(coder, v24, v21, @"kCLPolygonalRegionCodingKeyMonitoringNearby");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19.receiver = self;
  v19.super_class = _CLPolygonalRegion;
  v7 = [(CLRegion *)&v19 copyWithZone:zone];
  if (v7)
  {
    v7[80] = objc_msgSend_allowMonitoringWhileNearby(self, v4, v5, v6);
    *(v7 + 21) = objc_msgSend_geoReferenceFrame(self, v8, v9, v10);
    v14 = objc_msgSend_vertices(self, v11, v12, v13);
    *(v7 + 11) = objc_msgSend_copy(v14, v15, v16, v17);
  }

  return v7;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_identifier(self, a2, v2, v3);
  v10 = objc_msgSend_vertices(self, v7, v8, v9);
  v14 = objc_msgSend_count(v10, v11, v12, v13);
  return objc_msgSend_stringWithFormat_(v5, v15, @"_CLPolygonalRegion (identifier:'%@', count:'%lu')", v16, v6, v14);
}

- (BOOL)pointInPolygonWithCoordinate:(CLLocationCoordinate2D)coordinate withDistanceToBorder:(double *)border
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v75 = *MEMORY[0x1E69E9840];
  if (!CLLocationCoordinate2DIsValid(coordinate))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v53 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_ERROR, "#polygon,#warning invalid coordinate", buf, 2u);
    }

    v54 = sub_19B87DD40();
    if ((*(v54 + 160) & 0x80000000) != 0 && (*(v54 + 164) & 0x80000000) != 0 && (*(v54 + 168) & 0x80000000) != 0 && !*(v54 + 152))
    {
      goto LABEL_73;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    LOWORD(v67) = 0;
    v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#polygon,#warning invalid coordinate", &v67, 2);
    goto LABEL_71;
  }

  vertices = self->_vertices;
  if (!vertices)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v56 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "#polygon,#warning No points data found for polygon", buf, 2u);
    }

    v57 = sub_19B87DD40();
    if ((*(v57 + 160) & 0x80000000) != 0 && (*(v57 + 164) & 0x80000000) != 0 && (*(v57 + 168) & 0x80000000) != 0 && !*(v57 + 152))
    {
      goto LABEL_73;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    LOWORD(v67) = 0;
    v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#polygon,#warning No points data found for polygon", &v67, 2);
    goto LABEL_71;
  }

  if (!border)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v58 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v58, OS_LOG_TYPE_ERROR, "#polygon,#warning distanceToBorder is nil", buf, 2u);
    }

    v59 = sub_19B87DD40();
    if ((*(v59 + 160) & 0x80000000) != 0 && (*(v59 + 164) & 0x80000000) != 0 && (*(v59 + 168) & 0x80000000) != 0 && !*(v59 + 152))
    {
      goto LABEL_73;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    LOWORD(v67) = 0;
    v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#polygon,#warning distanceToBorder is nil", &v67, 2);
LABEL_71:
    v60 = v55;
    sub_19B885924("Generic", 1, 0, 0, "[_CLPolygonalRegion pointInPolygonWithCoordinate:withDistanceToBorder:]", "CoreLocation: %s\n", v55);
    if (v60 != buf)
    {
      free(v60);
    }

LABEL_73:
    LOBYTE(v27) = 0;
    return v27 & 1;
  }

  v11 = objc_msgSend_objectAtIndex_(vertices, v8, 0, v9);
  objc_msgSend_coordinate(v11, v12, v13, v14);
  v16 = v15;
  objc_msgSend_coordinate(v11, v17, v18, v19);
  v21 = v20;
  if (objc_msgSend_count(self->_vertices, v22, v23, v24) >= 2)
  {
    v27 = 0;
    v28 = 1;
    while (1)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(self->_vertices, v25, v28, v26);
      objc_msgSend_coordinate(v29, v30, v31, v32);
      v34 = v33;
      objc_msgSend_coordinate(v29, v35, v36, v37);
      if (v34 != v16 || v41 != v21)
      {
        break;
      }

      v43 = v21;
      v34 = v16;
LABEL_39:
      ++v28;
      v16 = v34;
      v21 = v43;
      if (v28 >= objc_msgSend_count(self->_vertices, v38, v39, v40))
      {
        goto LABEL_76;
      }
    }

    v43 = v41;
    if ((latitude >= v16 || latitude <= v34) && (latitude <= v16 || latitude >= v34) || (v41 <= longitude ? (v44 = v21 <= longitude) : (v44 = 0), v44))
    {
      if (latitude != v16 || (latitude > v34 ? (v45 = v21 <= longitude) : (v45 = 1), v45))
      {
        v46 = latitude > v16;
        if (v41 <= longitude)
        {
          v46 = 0;
        }

        if (latitude != v34)
        {
          v46 = 0;
        }

        v27 ^= v46;
        goto LABEL_32;
      }
    }

    else if (v21 + (v41 - v21) * ((latitude - v16) / (v34 - v16)) <= longitude)
    {
      goto LABEL_32;
    }

    v27 ^= 1u;
LABEL_32:
    v47 = v34 - v16;
    v48 = v41 - v21;
    v49 = ((longitude - v21) * (v43 - v21) + (latitude - v16) * (v34 - v16)) / (v48 * v48 + v47 * v47);
    if (v49 <= 0.0)
    {
      v50 = v16;
      v51 = v21;
    }

    else
    {
      v50 = v34;
      v51 = v43;
      if (v49 < 1.0)
      {
        v50 = v16 + v49 * v47;
        v51 = v21 + v49 * v48;
      }
    }

    v52 = sub_19B87E164(latitude, longitude, v50, v51);
    if (*border < 0.0 || v52 < *border)
    {
      *border = v52;
    }

    goto LABEL_39;
  }

  LOBYTE(v27) = 0;
LABEL_76:
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
  }

  v62 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v63 = *border;
    *buf = 134218240;
    v72 = v63;
    v73 = 1024;
    v74 = v27 & 1;
    _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_DEBUG, "#polygon,distanceToBorder,%.3lf,inRegion %d", buf, 0x12u);
  }

  v64 = sub_19B87DD40();
  if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E728);
    }

    v65 = *border;
    v67 = 134218240;
    v68 = v65;
    v69 = 1024;
    v70 = v27 & 1;
    v66 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#polygon,distanceToBorder,%.3lf,inRegion %d", &v67, 18);
    sub_19B885924("Generic", 1, 0, 2, "[_CLPolygonalRegion pointInPolygonWithCoordinate:withDistanceToBorder:]", "CoreLocation: %s\n", v66);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  return v27 & 1;
}

@end