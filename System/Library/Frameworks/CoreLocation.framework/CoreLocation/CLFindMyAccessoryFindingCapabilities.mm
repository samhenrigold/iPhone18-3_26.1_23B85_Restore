@interface CLFindMyAccessoryFindingCapabilities
- (CLFindMyAccessoryFindingCapabilities)initWithCoder:(id)coder;
- (CLFindMyAccessoryFindingCapabilities)initWithData:(id)data;
- (CLFindMyAccessoryFindingCapabilities)initWithSupportsFC1ND:(BOOL)d supportsNBAMMS:(BOOL)s supportsUnii5:(BOOL)unii5 capabilities:(unsigned int)capabilities supportsSimultaneousRanging:(BOOL)ranging;
- (id)capabilitiesString;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryFindingCapabilities

- (CLFindMyAccessoryFindingCapabilities)initWithData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(data, a2, data, v3) == 4)
  {
    v9 = *objc_msgSend_bytes(data, v6, v7, v8);

    return MEMORY[0x1EEE66B58](self, sel_initWithSupportsFC1ND_supportsNBAMMS_supportsUnii5_capabilities_supportsSimultaneousRanging_, v9 & 1, (v9 >> 1) & 1);
  }

  else
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6D830);
    }

    v10 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      v20 = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2050;
      v25 = objc_msgSend_length(data, v11, v12, v13);
      v26 = 2114;
      dataCopy2 = data;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian CLFindMyAccessoryFindingCapabilities Unexpected data size, size:%{public}ld, data:%{public, location:escape_only}@}", &v20, 0x26u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6D830);
      }
    }

    v14 = qword_1EAFE4700;
    if (os_signpost_enabled(qword_1EAFE4700))
    {
      v18 = objc_msgSend_length(data, v15, v16, v17);
      v20 = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2050;
      v25 = v18;
      v26 = 2114;
      dataCopy2 = data;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian CLFindMyAccessoryFindingCapabilities Unexpected data size", "{msg%{public}.0s:#durian CLFindMyAccessoryFindingCapabilities Unexpected data size, size:%{public}ld, data:%{public, location:escape_only}@}", &v20, 0x26u);
    }

    return 0;
  }
}

- (CLFindMyAccessoryFindingCapabilities)initWithSupportsFC1ND:(BOOL)d supportsNBAMMS:(BOOL)s supportsUnii5:(BOOL)unii5 capabilities:(unsigned int)capabilities supportsSimultaneousRanging:(BOOL)ranging
{
  v13.receiver = self;
  v13.super_class = CLFindMyAccessoryFindingCapabilities;
  result = [(CLFindMyAccessoryFindingCapabilities *)&v13 init];
  if (result)
  {
    result->_supportsFC1ND = d;
    result->_supportsNBAMMS = s;
    result->_supportsUnii5 = unii5;
    result->_capabilities = capabilities;
    result->_supportsSimultaneousRanging = ranging;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLFindMyAccessoryFindingCapabilities;
  [(CLFindMyAccessoryFindingCapabilities *)&v2 dealloc];
}

- (id)capabilitiesString
{
  v5 = MEMORY[0x1E696AEC0];
  v9 = "NO";
  if (objc_msgSend_supportsFC1ND(self, a2, v2, v3))
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (objc_msgSend_supportsNBAMMS(self, v6, v7, v8))
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  if (objc_msgSend_supportsUnii5(self, v11, v12, v13))
  {
    v18 = "YES";
  }

  else
  {
    v18 = "NO";
  }

  if (objc_msgSend_supportsSimultaneousRanging(self, v15, v16, v17))
  {
    v9 = "YES";
  }

  v22 = objc_msgSend_capabilities(self, v19, v20, v21);
  return objc_msgSend_stringWithFormat_(v5, v23, @"\n supportsFC1ND %s\n supportsNBAMMS %s\n supportsUnii5 %s\n supportsSimultaneousRanging %s\n capabilities %u\n", v24, v10, v14, v18, v9, v22);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeBool_forKey_(coder, a2, self->_supportsFC1ND, @"FC1ND");
  objc_msgSend_encodeBool_forKey_(coder, v5, self->_supportsNBAMMS, @"NBAMMS");
  objc_msgSend_encodeBool_forKey_(coder, v6, self->_supportsUnii5, @"Unii-5");
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_supportsSimultaneousRanging, @"simultaneous_ranging");
  capabilities = self->_capabilities;

  MEMORY[0x1EEE66B58](coder, sel_encodeInt32_forKey_, capabilities, @"capabilities");
}

- (CLFindMyAccessoryFindingCapabilities)initWithCoder:(id)coder
{
  v6 = objc_msgSend_decodeBoolForKey_(coder, a2, @"FC1ND", v3);
  v9 = objc_msgSend_decodeBoolForKey_(coder, v7, @"NBAMMS", v8);
  objc_msgSend_decodeBoolForKey_(coder, v10, @"Unii-5", v11);
  objc_msgSend_decodeInt32ForKey_(coder, v12, @"capabilities", v13);
  objc_msgSend_decodeBoolForKey_(coder, v14, @"simultaneous_ranging", v15);

  return MEMORY[0x1EEE66B58](self, sel_initWithSupportsFC1ND_supportsNBAMMS_supportsUnii5_capabilities_supportsSimultaneousRanging_, v6, v9);
}

@end