@interface _CLSignificantRegion
- (_CLSignificantRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius referenceFrame:(int)frame lowPower:(BOOL)power identifier:(id)identifier onBehalfOfBundleId:(id)id notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)self0 conservativeEntry:(BOOL)self1 emergency:(BOOL)self2 deviceId:(id)self3 handoffTag:(id)self4;
- (_CLSignificantRegion)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLSignificantRegion

- (_CLSignificantRegion)initWithCenter:(CLLocationCoordinate2D)center radius:(double)radius referenceFrame:(int)frame lowPower:(BOOL)power identifier:(id)identifier onBehalfOfBundleId:(id)id notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)self0 conservativeEntry:(BOOL)self1 emergency:(BOOL)self2 deviceId:(id)self3 handoffTag:(id)self4
{
  v29 = *MEMORY[0x1E69E9840];
  if (power)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6EAD0);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "LowPower not supported for this object/platform", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6EAD0);
    }

    v27[0] = 0;
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "LowPower not supported for this object/platform", v27, 2);
LABEL_23:
    v19 = v16;
    sub_19B885924("Generic", 1, 0, 0, "[_CLSignificantRegion initWithCenter:radius:referenceFrame:lowPower:identifier:onBehalfOfBundleId:notifyOnEntry:notifyOnExit:conservativeEntry:emergency:deviceId:handoffTag:]", "CoreLocation: %s\n", v16);
    if (v19 != buf)
    {
      free(v19);
    }

    return 0;
  }

  if (conservativeEntry)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6EAD0);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "Conservative not supported for this object/platform", buf, 2u);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6EAD0);
    }

    v27[0] = 0;
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Conservative not supported for this object/platform", v27, 2);
    goto LABEL_23;
  }

  v26.receiver = self;
  v26.super_class = _CLSignificantRegion;
  BYTE2(v25) = emergency;
  LOWORD(v25) = exit;
  v22 = [(CLCircularRegion *)&v26 initWithCenter:*&frame radius:0 referenceFrame:0 allowMonitoringWhenNearby:identifier lowPower:id identifier:entry onBehalfOfBundleId:center.latitude notifyOnEntry:center.longitude notifyOnExit:radius conservativeEntry:v25 emergency:deviceId deviceId:tag handoffTag:?];
  v20 = v22;
  if (v22)
  {
    objc_msgSend_setType_(v22, v23, 3, v24);
  }

  return v20;
}

- (_CLSignificantRegion)initWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CLSignificantRegion.m", 115, @"Invalid parameter not satisfying: %@", @"[decoder allowsKeyedCoding]");
  }

  v17.receiver = self;
  v17.super_class = _CLSignificantRegion;
  v10 = [(CLCircularRegion *)&v17 initWithCoder:coder];
  v13 = v10;
  if (v10)
  {
    objc_msgSend_setType_(v10, v11, 3, v12);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3) & 1) == 0)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CLSignificantRegion.m", 125, @"Invalid parameter not satisfying: %@", @"[encoder allowsKeyedCoding]");
  }

  v17.receiver = self;
  v17.super_class = _CLSignificantRegion;
  [(CLCircularRegion *)&v17 encodeWithCoder:coder];
  v13 = objc_msgSend_type(self, v10, v11, v12);
  objc_msgSend_encodeInt_forKey_(coder, v14, v13, @"kCLSignificantRegionCodingKeyType");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = _CLSignificantRegion;
  v7 = [(CLCircularRegion *)&v12 copyWithZone:zone];
  if (v7)
  {
    v8 = objc_msgSend_type(self, v4, v5, v6);
    objc_msgSend_setType_(v7, v9, v8, v10);
  }

  return v7;
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_identifier(self, a2, v2, v3);
  objc_msgSend_geoCenter(self, v7, v8, v9);
  v11 = v10;
  objc_msgSend_geoCenter(self, v12, v13, v14);
  v16 = v15;
  objc_msgSend_geoRadius(self, v17, v18, v19);
  v21 = v20;
  v25 = objc_msgSend_geoReferenceFrame(self, v22, v23, v24);
  return objc_msgSend_stringWithFormat_(v5, v26, @"CLSignificantRegion (identifier:'%@', center:<%+.8f,%+.8f>, radius:%.2fm, frame:%d)", v27, v6, v11, v16, v21, v25);
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = _CLSignificantRegion;
  v3 = [(CLCircularRegion *)&v8 hash];
  return v3 ^ objc_msgSend_type(self, v4, v5, v6);
}

@end