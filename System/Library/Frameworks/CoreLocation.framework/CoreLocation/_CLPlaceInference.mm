@interface _CLPlaceInference
+ (unint64_t)_placeInferencePlaceTypeFromRTPlaceType:(unint64_t)type;
+ (unint64_t)_userSpecificPlaceTypeFromRTUserType:(unint64_t)type;
- (_CLPlaceInference)initWithCoder:(id)coder;
- (_CLPlaceInference)initWithUserType:(unint64_t)type placeType:(unint64_t)placeType placemark:(id)placemark referenceLocation:(id)location confidence:(double)confidence preferredName:(id)name loiIdentifier:(id)identifier;
- (id)_initWithRTPlaceInference:(id)inference;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLPlaceInference

- (id)_initWithRTPlaceInference:(id)inference
{
  v5 = objc_alloc(MEMORY[0x1E6985C40]);
  v9 = objc_msgSend_mapItem(inference, v6, v7, v8);
  v13 = objc_msgSend_location(v9, v10, v11, v12);
  v16 = objc_msgSend__initWithRTLocation_(v5, v14, v13, v15);
  v17 = objc_alloc(MEMORY[0x1E6985C40]);
  v21 = objc_msgSend_referenceLocation(inference, v18, v19, v20);
  v24 = objc_msgSend__initWithRTLocation_(v17, v22, v21, v23);
  v25 = [CLPlacemark alloc];
  v29 = objc_msgSend_mapItem(inference, v26, v27, v28);
  v31 = objc_msgSend__initWithRTMapItem_location_(v25, v30, v29, v16);
  v35 = objc_msgSend_userType(inference, v32, v33, v34);
  v38 = objc_msgSend__userSpecificPlaceTypeFromRTUserType_(_CLPlaceInference, v36, v35, v37);
  v42 = objc_msgSend_placeType(inference, v39, v40, v41);
  v45 = objc_msgSend__placeInferencePlaceTypeFromRTPlaceType_(_CLPlaceInference, v43, v42, v44);
  objc_msgSend_confidence(inference, v46, v47, v48);
  v50 = v49;
  v54 = objc_msgSend_preferredName(inference, v51, v52, v53);
  v59 = objc_msgSend_loiIdentifier(inference, v55, v56, v57);

  return objc_msgSend_initWithUserType_placeType_placemark_referenceLocation_confidence_preferredName_loiIdentifier_(self, v58, v38, v45, v31, v24, v54, v59, v50);
}

+ (unint64_t)_userSpecificPlaceTypeFromRTUserType:(unint64_t)type
{
  v9 = *MEMORY[0x1E69E9840];
  if (type >= 5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "Please update userSpecificPlaceTypeFromRTUserType", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
      }

      v7[0] = 0;
      v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Please update userSpecificPlaceTypeFromRTUserType", v7, 2);
      sub_19B885924("Generic", 1, 0, 0, "+[_CLPlaceInference(_CLRoutineExtensions) _userSpecificPlaceTypeFromRTUserType:]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    return 0;
  }

  return type;
}

+ (unint64_t)_placeInferencePlaceTypeFromRTPlaceType:(unint64_t)type
{
  v9 = *MEMORY[0x1E69E9840];
  if (type < 5)
  {
    return qword_19BA89420[type];
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "Please update placeInferencePlaceTypeFromRTPlaceType", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B800);
    }

    v7[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Please update placeInferencePlaceTypeFromRTPlaceType", v7, 2);
    sub_19B885924("Generic", 1, 0, 0, "+[_CLPlaceInference(_CLRoutineExtensions) _placeInferencePlaceTypeFromRTPlaceType:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return 2;
}

- (_CLPlaceInference)initWithUserType:(unint64_t)type placeType:(unint64_t)placeType placemark:(id)placemark referenceLocation:(id)location confidence:(double)confidence preferredName:(id)name loiIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = _CLPlaceInference;
  v16 = [(_CLPlaceInference *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_userType = type;
    v16->_placeType = placeType;
    v16->_placemark = placemark;
    v17->_referenceLocation = location;
    v17->_confidence = confidence;
    v17->_preferredName = name;
    v17->__loiIdentifier = identifier;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLPlaceInference;
  [(_CLPlaceInference *)&v3 dealloc];
}

- (_CLPlaceInference)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CLPlaceInference.m", 54, @"Invalid parameter not satisfying: %@", @"[decoder allowsKeyedCoding]");
  }

  v10 = objc_opt_class();
  v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCLPlaceInferenceUserType");
  v16 = objc_msgSend_unsignedIntegerValue(v12, v13, v14, v15);
  v17 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"kCLPlaceInferencePlaceType");
  v23 = objc_msgSend_unsignedIntegerValue(v19, v20, v21, v22);
  v24 = objc_opt_class();
  v26 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v25, v24, @"kCLPlaceInferencePlacemark");
  v27 = objc_opt_class();
  v29 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v28, v27, @"kCLPlaceInferenceReferenceLocation");
  objc_msgSend_decodeDoubleForKey_(coder, v30, @"kCLPlaceInferenceConfidence", v31);
  v33 = v32;
  v34 = objc_opt_class();
  v36 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v35, v34, @"kCLPlaceInferencePreferredName");
  v37 = objc_opt_class();
  v40 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v38, v37, @"kCLPlaceInferenceLoiIdentifier");

  return objc_msgSend_initWithUserType_placeType_placemark_referenceLocation_confidence_preferredName_loiIdentifier_(self, v39, v16, v23, v26, v29, v36, v40, v33);
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CLPlaceInference.m", 72, @"Invalid parameter not satisfying: %@", @"[encoder allowsKeyedCoding]");
  }

  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, self->_userType, v9);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"kCLPlaceInferenceUserType");
  v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v12, self->_placeType, v13);
  objc_msgSend_encodeObject_forKey_(coder, v15, v14, @"kCLPlaceInferencePlaceType");
  objc_msgSend_encodeObject_forKey_(coder, v16, self->_placemark, @"kCLPlaceInferencePlacemark");
  objc_msgSend_encodeObject_forKey_(coder, v17, self->_referenceLocation, @"kCLPlaceInferenceReferenceLocation");
  objc_msgSend_encodeDouble_forKey_(coder, v18, @"kCLPlaceInferenceConfidence", v19, self->_confidence);
  objc_msgSend_encodeObject_forKey_(coder, v20, self->_preferredName, @"kCLPlaceInferencePreferredName");
  loiIdentifier = self->__loiIdentifier;

  objc_msgSend_encodeObject_forKey_(coder, v21, loiIdentifier, @"kCLPlaceInferenceLoiIdentifier");
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_referenceLocation(self, a2, v2, v3);
  objc_msgSend_coordinate(v6, v7, v8, v9);
  v11 = v10;
  v15 = objc_msgSend_referenceLocation(self, v12, v13, v14);
  objc_msgSend_coordinate(v15, v16, v17, v18);
  v20 = v19;
  v24 = objc_msgSend_referenceLocation(self, v21, v22, v23);
  objc_msgSend_horizontalAccuracy(v24, v25, v26, v27);
  v29 = v28;
  v33 = objc_msgSend_userType(self, v30, v31, v32);
  v37 = objc_msgSend_placeType(self, v34, v35, v36);
  v41 = objc_msgSend_placemark(self, v38, v39, v40);
  v45 = objc_msgSend_preferredName(self, v42, v43, v44);
  objc_msgSend_confidence(self, v46, v47, v48);
  v50 = v49;
  v54 = objc_msgSend__loiIdentifier(self, v51, v52, v53);
  return objc_msgSend_stringWithFormat_(v5, v55, @"CLPlaceInference, ref, <%f,%f> +/- %f, userType, %lu, placeType, %lu, placemark, %@, preferredName, %@, confidence, %f, related loi identifier, %@", v56, v11, v20, v29, v33, v37, v41, v45, v50, v54);
}

@end