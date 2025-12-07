@interface CLFindMyAccessoryFirmwareVersion
- (CLFindMyAccessoryFirmwareVersion)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (CLFindMyAccessoryFirmwareVersion)initWithData:(id)data;
- (id)description;
- (void)dealloc;
@end

@implementation CLFindMyAccessoryFirmwareVersion

- (CLFindMyAccessoryFirmwareVersion)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  v11.receiver = self;
  v11.super_class = CLFindMyAccessoryFirmwareVersion;
  v6 = [(CLFindMyAccessoryFirmwareVersion *)&v11 init];
  v7 = v6;
  if (length >= 0x13 && v6)
  {
    v8 = malloc_type_malloc(0x13uLL, 0x1000040DD5176B5uLL);
    v7->_version = v8;
    v9 = *(bytes + 15);
    *v8 = *bytes;
    *(v8 + 15) = v9;
  }

  return v7;
}

- (CLFindMyAccessoryFirmwareVersion)initWithData:(id)data
{
  v6 = objc_msgSend_bytes(data, a2, data, v3);
  v11 = objc_msgSend_length(data, v7, v8, v9);

  return objc_msgSend_initWithBytes_length_(self, v10, v6, v11);
}

- (void)dealloc
{
  free(self->_version);
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryFirmwareVersion;
  [(CLFindMyAccessoryFirmwareVersion *)&v3 dealloc];
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_vanBurenVersion(self, a2, v2, v3);
  v10 = objc_msgSend_rtKitVersion(self, v7, v8, v9);
  v14 = objc_msgSend_roseAPVersion(self, v11, v12, v13);
  v18 = objc_msgSend_roseDSPVersion(self, v15, v16, v17);
  v22 = objc_msgSend_calibrationDataVersion(self, v19, v20, v21);
  if (objc_msgSend_debugVariant(self, v23, v24, v25))
  {
    return objc_msgSend_stringWithFormat_(v5, v26, @"CLFindMyAccessoryFirmwareVersion <%p> VanBurenVersion: %@, RTKitVersion: %@, RoseAPVersion: %lu, RoseDSPVersion: %lu, CalibrationDataVersion: %lu, DebugVariant: %s", v27, self, v6, v10, v14, v18, v22, "YES");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v5, v26, @"CLFindMyAccessoryFirmwareVersion <%p> VanBurenVersion: %@, RTKitVersion: %@, RoseAPVersion: %lu, RoseDSPVersion: %lu, CalibrationDataVersion: %lu, DebugVariant: %s", v27, self, v6, v10, v14, v18, v22, "NO");
  }
}

@end