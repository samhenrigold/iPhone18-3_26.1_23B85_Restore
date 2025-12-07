@interface CLGatheringBleAdvertisement
- (BOOL)isEqual:(id)equal;
- (CLGatheringBleAdvertisement)initWithAddress:(id)address contactId:(id)id flags:(int64_t)flags eFlags:(int64_t)eFlags authTag:(id)tag iTag:(id)iTag rssi:(int64_t)rssi count:(int64_t)self0 unixTime:(double)self1;
- (CLGatheringBleAdvertisement)initWithAddress:(id)address withAuthTag:(id)tag withRssi:(int64_t)rssi withCount:(int64_t)count withTime:(double)time;
- (CLGatheringBleAdvertisement)initWithCoder:(id)coder;
- (CLGatheringBleAdvertisement)initWithData:(id)data;
- (CLGatheringBleAdvertisement)initWithPersistenceBytes:(id *)bytes;
- (id)description;
- (id)encodedBytes;
- (id)getDateString:(double)string;
- (id)hexString:(id)string;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLGatheringBleAdvertisement

- (CLGatheringBleAdvertisement)initWithAddress:(id)address withAuthTag:(id)tag withRssi:(int64_t)rssi withCount:(int64_t)count withTime:(double)time
{
  v32 = *MEMORY[0x1E69E9840];
  if (address && tag)
  {
    if ((rssi & 0x80000000) == 0)
    {
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      v13 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        rssiCopy = rssi;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLGatheringBleAdvertisement has RSSI %d!", buf, 8u);
      }

      v14 = sub_19B87DD40();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
        }

        v29[0] = 67109120;
        v29[1] = rssi;
        v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 2, "CLGatheringBleAdvertisement has RSSI %d!", v29, 8);
        sub_19B885924("Generic", 1, 0, 2, "[CLGatheringBleAdvertisement initWithAddress:withAuthTag:withRssi:withCount:withTime:]", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    v28.receiver = self;
    v28.super_class = CLGatheringBleAdvertisement;
    v19 = [(CLGatheringBleAdvertisement *)&v28 init];
    if (v19)
    {
      v19->_address = objc_msgSend_copy(address, v16, v17, v18);
      v19->_authTag = objc_msgSend_copy(tag, v20, v21, v22);
      rssiCopy2 = -80;
      if (rssi < 0)
      {
        rssiCopy2 = rssi;
      }

      v19->_rssi = rssiCopy2;
      v19->_count = count;
      v19->_unixTime = time;
    }
  }

  else
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
    }

    v24 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLGatheringBleAdvertisement cannot init if address is NULL!", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      LOWORD(v29[0]) = 0;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 16, "CLGatheringBleAdvertisement cannot init if address is NULL!", v29, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLGatheringBleAdvertisement initWithAddress:withAuthTag:withRssi:withCount:withTime:]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    return 0;
  }

  return v19;
}

- (CLGatheringBleAdvertisement)initWithAddress:(id)address contactId:(id)id flags:(int64_t)flags eFlags:(int64_t)eFlags authTag:(id)tag iTag:(id)iTag rssi:(int64_t)rssi count:(int64_t)self0 unixTime:(double)self1
{
  v41 = *MEMORY[0x1E69E9840];
  if (address)
  {
    if ((rssi & 0x80000000) == 0)
    {
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      v19 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        rssiCopy = rssi;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "CLGatheringBleAdvertisement has RSSI %d!", buf, 8u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
        }

        v38[0] = 67109120;
        v38[1] = rssi;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 2, "CLGatheringBleAdvertisement has RSSI %d!", v38, 8);
        sub_19B885924("Generic", 1, 0, 2, "[CLGatheringBleAdvertisement initWithAddress:contactId:flags:eFlags:authTag:iTag:rssi:count:unixTime:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    v37.receiver = self;
    v37.super_class = CLGatheringBleAdvertisement;
    v25 = [(CLGatheringBleAdvertisement *)&v37 init];
    if (v25)
    {
      v25->_address = objc_msgSend_copy(address, v22, v23, v24);
      if (id)
      {
        v29 = objc_msgSend_copy(id, v26, v27, v28);
      }

      else
      {
        v29 = 0;
      }

      v25->_contactId = v29;
      v25->_flags = flags;
      v25->_eFlags = eFlags;
      if (tag)
      {
        v33 = objc_msgSend_copy(tag, v26, v27, v28);
      }

      else
      {
        v33 = 0;
      }

      v25->_authTag = v33;
      if (iTag)
      {
        v34 = objc_msgSend_copy(iTag, v26, v27, v28);
      }

      else
      {
        v34 = 0;
      }

      rssiCopy2 = -80;
      if (rssi < 0)
      {
        rssiCopy2 = rssi;
      }

      v25->_iTag = v34;
      v25->_rssi = rssiCopy2;
      v25->_count = count;
      v25->_unixTime = time;
    }
  }

  else
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
    }

    v30 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLGatheringBleAdvertisement cannot init if address is NULL!", buf, 2u);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6D4C0);
      }

      LOWORD(v38[0]) = 0;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 16, "CLGatheringBleAdvertisement cannot init if address is NULL!", v38, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLGatheringBleAdvertisement initWithAddress:contactId:flags:eFlags:authTag:iTag:rssi:count:unixTime:]", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    return 0;
  }

  return v25;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLGatheringBleAdvertisement;
  [(CLGatheringBleAdvertisement *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  address = self->_address;
  v10 = objc_msgSend_address(equal, v5, v6, v7);

  return objc_msgSend_isEqualToData_(address, v9, v10, v11);
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  DateString = objc_msgSend_getDateString_(self, a2, v2, v3, self->_unixTime);
  v9 = objc_msgSend_hexString_(self, v7, self->_address, v8);
  return objc_msgSend_stringWithFormat_(v5, v10, @"%@,%@,%@,%d,%d", v11, DateString, v9, self->_contactId, self->_rssi, self->_count);
}

- (id)hexString:(id)string
{
  if (!string || !objc_msgSend_length(string, a2, string, v3) || !objc_msgSend_bytes(string, v5, v6, v7))
  {
    return &stru_1F0E6F140;
  }

  v11 = 2 * objc_msgSend_length(string, v8, v9, v10);
  v12 = malloc_type_malloc(v11 | 1, 0x100004077774924uLL);
  v12[v11] = 0;
  v16 = objc_msgSend_bytes(string, v13, v14, v15);
  if (objc_msgSend_length(string, v17, v18, v19))
  {
    v20 = 0;
    v21 = v12;
    do
    {
      sprintf(v21, "%02X", *(v16 + v20++));
      v21 += 2;
    }

    while (objc_msgSend_length(string, v22, v23, v24) > v20);
  }

  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
  v27 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v25, v26, v12, v11, 1, 1);

  return v27;
}

- (id)getDateString:(double)string
{
  if (qword_1ED519298 != -1)
  {
    dispatch_once(&qword_1ED519298, &unk_1F0E6D4A0);
  }

  v6 = qword_1ED519290;
  v8 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], a2, v3, v4, string);

  return objc_msgSend_stringFromDate_(v6, v7, v8, v9);
}

- (CLGatheringBleAdvertisement)initWithData:(id)data
{
  if (objc_msgSend_length(data, a2, data, v3) != 84)
  {
    return 0;
  }

  v9 = objc_msgSend_bytes(data, v6, v7, v8);

  return MEMORY[0x1EEE66B58](self, sel_initWithPersistenceBytes_, v9, v10);
}

- (CLGatheringBleAdvertisement)initWithPersistenceBytes:(id *)bytes
{
  v23.receiver = self;
  v23.super_class = CLGatheringBleAdvertisement;
  v4 = [(CLGatheringBleAdvertisement *)&v23 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DEF0]);
    *(v4 + 1) = objc_msgSend_initWithBytes_length_(v5, v6, bytes->var1, 6);
    if (bytes->var2[0])
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = objc_msgSend_initWithUTF8String_(v7, v8, bytes->var2, v9);
    }

    else
    {
      v10 = 0;
    }

    *(v4 + 2) = v10;
    var5 = bytes->var5;
    v12 = *&bytes->var3;
    *&v13 = v12;
    *(&v13 + 1) = SHIDWORD(v12);
    *(v4 + 24) = v13;
    if (var5)
    {
      v14 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = objc_msgSend_initWithBytes_length_(v14, v15, &bytes->var5, 3);
    }

    else
    {
      v16 = 0;
    }

    *(v4 + 5) = v16;
    if (bytes->var6)
    {
      v17 = objc_alloc(MEMORY[0x1E695DEF0]);
      v19 = objc_msgSend_initWithBytes_length_(v17, v18, &bytes->var6, 3);
    }

    else
    {
      v19 = 0;
    }

    *(v4 + 6) = v19;
    var8 = bytes->var8;
    if (var8 >= 0)
    {
      var8 = -80;
    }

    var7 = bytes->var7;
    *(v4 + 7) = var8;
    *(v4 + 8) = var7;
    *(v4 + 9) = *&bytes->var0;
  }

  return v4;
}

- (id)encodedBytes
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  objc_msgSend_getBytes_length_(self->_address, a2, v8 + 8, 6, 0);
  objc_msgSend_getCString_maxLength_encoding_(self->_contactId, v3, v8 | 0xE, 50, 4);
  *&v9 = vand_s8(vmovn_s64(*&self->_flags), 0xFF000000FFLL);
  objc_msgSend_getBytes_length_(self->_authTag, v4, &v9 + 8, 3);
  objc_msgSend_getBytes_length_(self->_iTag, v5, &v9 + 12, 3);
  HIWORD(v10) = SLOBYTE(self->_rssi);
  LOWORD(v10) = self->_count;
  *v8 = self->_unixTime;
  return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v6, v8, 84);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_address, @"Address");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_contactId, @"ContactId");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->_flags, @"Flags");
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_eFlags, @"EncryptedFlags");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_authTag, @"AuthTag");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_iTag, @"IntegrityTag");
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_rssi, @"RSSI");
  objc_msgSend_encodeInteger_forKey_(coder, v11, self->_count, @"Count");
  unixTime = self->_unixTime;

  objc_msgSend_encodeDouble_forKey_(coder, v12, @"Date", v13, unixTime);
}

- (CLGatheringBleAdvertisement)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"Address");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"ContactId");
  v13 = objc_msgSend_decodeIntegerForKey_(coder, v11, @"Flags", v12);
  v16 = objc_msgSend_decodeIntegerForKey_(coder, v14, @"EncryptedFlags", v15);
  v17 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"AuthTag");
  v20 = objc_opt_class();
  v22 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v21, v20, @"IntegrityTag");
  v25 = objc_msgSend_decodeIntegerForKey_(coder, v23, @"RSSI", v24);
  v28 = objc_msgSend_decodeIntegerForKey_(coder, v26, @"Count", v27);
  objc_msgSend_decodeDoubleForKey_(coder, v29, @"Date", v30);
  return objc_msgSend_initWithAddress_contactId_flags_eFlags_authTag_iTag_rssi_count_unixTime_(self, v31, v7, v10, v13, v16, v19, v22, v25, v28);
}

@end