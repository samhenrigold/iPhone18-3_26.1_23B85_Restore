@interface VFXIESProfile
+ (VFXIESProfile)profileWithURL:(id)l;
- (VFXIESProfile)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VFXIESProfile

- (void)dealloc
{
  objc_msgSend_setName_(self, a2, 0);

  sub_1AF195DF4(&self->_iesInfo);
  v3.receiver = self;
  v3.super_class = VFXIESProfile;
  [(VFXIESProfile *)&v3 dealloc];
}

+ (VFXIESProfile)profileWithURL:(id)l
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = sub_1AF195430(l, v4 + 8);
  if (v5)
  {
    v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v6, v7);
    *(v4 + 14) = objc_msgSend_UUIDString(v8, v9, v10);

    return v4;
  }

  else
  {
    v12 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF586C();
    }

    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  anglesHCount = self->_iesInfo.anglesHCount;
  if (anglesHCount >= 1)
  {
    v6 = 4 * anglesHCount;
    v7 = malloc_type_malloc(4 * anglesHCount, 0xBD3B7BCBuLL);
    v4[10] = v7;
    memcpy(v7, self->_iesInfo.anglesH, v6);
  }

  anglesVCount = self->_iesInfo.anglesVCount;
  if (anglesVCount >= 1)
  {
    v9 = 4 * anglesVCount;
    v10 = malloc_type_malloc(4 * anglesVCount, 0x599CFD2uLL);
    v4[11] = v10;
    memcpy(v10, self->_iesInfo.anglesV, v9);
  }

  candalaValuesCount = self->_iesInfo.candalaValuesCount;
  if (candalaValuesCount >= 1)
  {
    v12 = 4 * candalaValuesCount;
    v13 = malloc_type_malloc(4 * candalaValuesCount, 0xA2CEF8CAuLL);
    v4[12] = v13;
    memcpy(v13, self->_iesInfo.candalaValues, v12);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  anglesHCount = self->_iesInfo.anglesHCount;
  anglesVCount = self->_iesInfo.anglesVCount;
  v7 = 4 * self->_iesInfo.candalaValuesCount;
  v8 = 4 * anglesHCount + 4 * anglesVCount + v7;
  v9 = malloc_type_malloc(v8 + 72, 0x42A7C9ADuLL);
  *v9 = *&self->_iesInfo.totalLights;
  v10 = *&self->_iesInfo.anglesHCount;
  v11 = *&self->_iesInfo.length;
  v12 = *&self->_iesInfo.maxHAngle;
  v9[8] = *&self->_iesInfo.inputWatts;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v9 + 1) = v12;
  memcpy(v9 + 9, self->_iesInfo.anglesH, 4 * anglesHCount);
  memcpy(v9 + 4 * anglesHCount + 72, self->_iesInfo.anglesV, 4 * anglesVCount);
  memcpy(v9 + 4 * anglesHCount + 4 * anglesVCount + 72, self->_iesInfo.candalaValues, v7);
  v14 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v13, v9, v8 + 72, 1);
  objc_msgSend_encodeObject_forKey_(coder, v15, v14, @"iesData");
  objc_msgSend_encodeObject_forKey_(coder, v16, self->_name, @"name");
  identifier = self->_identifier;

  objc_msgSend_encodeObject_forKey_(coder, v17, identifier, @"identifier");
}

- (VFXIESProfile)initWithCoder:(id)coder
{
  v38.receiver = self;
  v38.super_class = VFXIESProfile;
  v4 = [(VFXIESProfile *)&v38 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"name");
    objc_msgSend_setName_(v4, v8, v7);
    v9 = objc_opt_class();
    *(v4 + 14) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"name");
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"iesData");
    v16 = objc_msgSend_bytes(v13, v14, v15);
    v19 = objc_msgSend_length(v13, v17, v18);
    if (v19 > 0x47)
    {
      v23 = *(v16 + 48);
      v24 = *(v16 + 64);
      v25 = *(v16 + 16);
      *(v4 + 40) = *(v16 + 32);
      *(v4 + 8) = *v16;
      *(v4 + 9) = v24;
      *(v4 + 56) = v23;
      *(v4 + 24) = v25;
      v26 = *(v4 + 11);
      v27 = 4 * *(v4 + 10);
      v28 = *(v4 + 12);
      v29 = objc_msgSend_length(v13, v20, v21);
      if (v27 + 4 * v26 + 4 * v28 + 72 == v29)
      {
        v31 = (v16 + 72);
        v32 = malloc_type_malloc(v27, 0x5A8C0D9CuLL);
        *(v4 + 10) = v32;
        memcpy(v32, v31, v27);
        v33 = &v31[v27];
        v34 = malloc_type_malloc(4 * v26, 0xBEE9F575uLL);
        *(v4 + 11) = v34;
        memcpy(v34, v33, 4 * v26);
        v35 = malloc_type_malloc(4 * v28, 0xE102D019uLL);
        *(v4 + 12) = v35;
        memcpy(v35, &v33[4 * v26], 4 * v28);
      }

      else
      {
        v36 = sub_1AF0D5194(v29, v30);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF58DC();
        }
      }
    }

    else
    {
      v22 = sub_1AF0D5194(v19, v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF591C();
      }

      return 0;
    }
  }

  return v4;
}

@end