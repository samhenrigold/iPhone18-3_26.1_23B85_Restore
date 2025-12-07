@interface CMFallStats
- (CMFallStats)initWithBufferAndLength:(char *)length length:(unint64_t)a4;
- (CMFallStats)initWithCoder:(id)coder;
- (CMFallStats)initWithData:(id)data;
- (NSString)description;
- (id)itemsIterator;
- (void)_decodeMeta;
- (void)dealloc;
@end

@implementation CMFallStats

- (CMFallStats)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CMFallStats;
  v4 = [(CMFallStats *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_data = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMFallStatsCodingKeyData");
    objc_msgSend__decodeMeta(v4, v7, v8);
  }

  return v4;
}

- (CMFallStats)initWithData:(id)data
{
  if (!objc_msgSend_length(data, a2, data))
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = CMFallStats;
  v7 = [(CMFallStats *)&v11 init];
  if (v7)
  {
    v7->_data = objc_msgSend_copy(data, v5, v6);
    objc_msgSend__decodeMeta(v7, v8, v9);
  }

  return v7;
}

- (CMFallStats)initWithBufferAndLength:(char *)length length:(unint64_t)a4
{
  if (!length)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = CMFallStats;
  v7 = [(CMFallStats *)&v11 init];
  if (v7)
  {
    v7->_data = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v6, length, a4);
    objc_msgSend__decodeMeta(v7, v8, v9);
  }

  return v7;
}

- (id)itemsIterator
{
  v3 = [CMFallStatsItemsIterator alloc];
  v5 = objc_msgSend_initWithData_(v3, v4, self->_data);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMFallStats;
  [(CMFallStats *)&v3 dealloc];
}

- (void)_decodeMeta
{
  v39 = *MEMORY[0x1E69E9840];
  self->_iOStime = 0.0;
  self->_fallType = 0;
  self->_isNearFall = 0;
  if (self->_data)
  {
    sub_19B508C1C(v34);
    v5 = objc_msgSend_bytes(self->_data, v3, v4);
    v8 = objc_msgSend_length(self->_data, v6, v7);
    v33[0] = &unk_1F0E2B6E0;
    v33[1] = v5;
    v33[2] = v8;
    if (sub_19B508D38(v34, v33))
    {
      sub_19B508B88(&v30, v34);
      if (v30 && self->_iOStime == 0.0)
      {
        v9 = *(v31 + 1112);
        if (v9)
        {
          v10 = *(v9 + 88);
          if (v10)
          {
            v11 = *(v31 + 696);
            self->_iOStime = v11;
            self->_fallType = *(v10 + 12);
            self->_isNearFall = *(v10 + 70);
            if (v11 != 0.0)
            {
              if (qword_1EAFE29A8 != -1)
              {
                dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
              }

              v12 = qword_1EAFE29B0;
              if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
              {
                v15 = objc_msgSend_description(self, v13, v14);
                v18 = objc_msgSend_UTF8String(v15, v16, v17);
                *buf = 136315138;
                v38 = v18;
                _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "Decoded CMFallStats meta and found fall snippet metadata item [%s]", buf, 0xCu);
              }

              v19 = sub_19B420058();
              if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE29A8 != -1)
                {
                  dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
                }

                v22 = qword_1EAFE29B0;
                v23 = objc_msgSend_description(self, v20, v21);
                v26 = objc_msgSend_UTF8String(v23, v24, v25);
                v35 = 136315138;
                v36 = v26;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v22, 2, "Decoded CMFallStats meta and found fall snippet metadata item [%s]", &v35);
                v28 = v27;
                sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFallStats _decodeMeta]", "CoreLocation: %s\n", v27);
                if (v28 != buf)
                {
                  free(v28);
                }
              }
            }
          }
        }

        sub_19B5F7BB4(v29, &v30);
      }

      sub_19B508C64(v34);
      if (v32)
      {
        sub_19B41FFEC(v32);
      }
    }

    sub_19B508C60(v34);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@, Time,%.3lf,Type,CMFallStats,fallType,%d,isNearFall,%d", v5, *&self->_iOStime, self->_fallType, self->_isNearFall);
}

@end