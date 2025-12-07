@interface CLHeading
- (CLHeading)initWithClientHeading:(id *)heading;
- (CLHeading)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shortDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLHeading

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHeading;
  [(CLHeading *)&v3 dealloc];
}

- (CLHeading)initWithClientHeading:(id *)heading
{
  v13.receiver = self;
  v13.super_class = CLHeading;
  v4 = [(CLHeading *)&v13 init];
  if (v4)
  {
    v5 = [CLHeadingInternal alloc];
    v6 = *&heading->var6;
    v11[2] = *&heading->var4;
    v11[3] = v6;
    v11[4] = *&heading->var8;
    v12 = *&heading->var10;
    v7 = *&heading->var2;
    v11[0] = *&heading->var0;
    v11[1] = v7;
    v4->_internal = objc_msgSend_initWithClientHeading_(v5, v8, v11, v9);
  }

  return v4;
}

- (CLHeading)initWithCoder:(id)coder
{
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCLHeadingCodingKeyMagneticHeading", v7);
    *(&v42 + 1) = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCLHeadingCodingKeyTrueHeading", v10);
    *&v43 = v11;
    objc_msgSend_decodeDoubleForKey_(coder, v12, @"kCLHeadingCodingKeyAccuracy", v13);
    *(&v43 + 1) = v14;
    HIDWORD(v46) = objc_msgSend_decodeIntForKey_(coder, v15, @"kCLHeadingCodingKeyHeadingMode", v16);
    objc_msgSend_decodeDoubleForKey_(coder, v17, @"kCLHeadingCodingKeyX", v18);
    *&v41 = v19;
    objc_msgSend_decodeDoubleForKey_(coder, v20, @"kCLHeadingCodingKeyY", v21);
    *(&v41 + 1) = v22;
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"kCLHeadingCodingKeyZ", v24);
    *&v42 = v25;
    objc_msgSend_decodeDoubleForKey_(coder, v26, @"kCLHeadingCodingKeyTimestamp", v27);
    *&v44 = v30;
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v6, "d", &v42 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v31, "d", &v43);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v32, "d", &v43 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v33, "i", &v46 + 4);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v34, "d", &v41);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v35, "d", &v41 + 8);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v36, "d", &v42);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v37, "d", &v44);
  }

  v39[2] = v43;
  v39[3] = v44;
  v39[4] = v45;
  v40 = v46;
  v39[0] = v41;
  v39[1] = v42;
  return objc_msgSend_initWithClientHeading_(self, v28, v39, v29);
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder, v3))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCLHeadingCodingKeyMagneticHeading", v7, internal[4]);
    objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCLHeadingCodingKeyTrueHeading", v9, internal[5]);
    objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCLHeadingCodingKeyAccuracy", v11, internal[6]);
    objc_msgSend_encodeInt_forKey_(coder, v12, *(internal + 23), @"kCLHeadingCodingKeyHeadingMode");
    objc_msgSend_encodeDouble_forKey_(coder, v13, @"kCLHeadingCodingKeyX", v14, internal[1]);
    objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCLHeadingCodingKeyY", v16, internal[2]);
    objc_msgSend_encodeDouble_forKey_(coder, v17, @"kCLHeadingCodingKeyZ", v18, internal[3]);
    v21 = internal[7];

    objc_msgSend_encodeDouble_forKey_(coder, v19, @"kCLHeadingCodingKeyTimestamp", v20, v21);
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v6, "d", (internal + 4));
    objc_msgSend_encodeValueOfObjCType_at_(coder, v22, "d", (internal + 5));
    objc_msgSend_encodeValueOfObjCType_at_(coder, v23, "d", (internal + 6));
    objc_msgSend_encodeValueOfObjCType_at_(coder, v24, "i", internal + 92);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v25, "d", (internal + 1));
    objc_msgSend_encodeValueOfObjCType_at_(coder, v26, "d", (internal + 2));
    objc_msgSend_encodeValueOfObjCType_at_(coder, v27, "d", (internal + 3));

    objc_msgSend_encodeValueOfObjCType_at_(coder, v28, "d", (internal + 7));
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v8[1] = objc_msgSend_copyWithZone_(self->_internal, v9, zone, v10);
  return v8;
}

- (id)description
{
  internal = self->_internal;
  v5 = MEMORY[0x1E696AEC0];
  v14 = internal[2];
  v6 = *(internal + 6);
  v13 = *(internal + 8);
  v7 = *(internal + 3);
  v8 = *(internal + 23);
  v9 = objc_msgSend_timestamp(self, a2, v2, v3);
  return objc_msgSend_stringWithFormat_(v5, v10, @"magneticHeading %.2f trueHeading %.2f accuracy %.2f headingMode %d x %+.3f y %+.3f z %+.3f @ %@", v11, v14, v6, v8, v13, v7, v9);
}

- (id)shortDescription
{
  internal = self->_internal;
  v4 = internal[5];
  if (v4 >= 0.0)
  {
    v5 = 116;
  }

  else
  {
    v4 = internal[4];
    v5 = 109;
  }

  v6 = internal[6];
  v7 = @"±";
  if (v6 < 0.0)
  {
    v7 = &stru_1F0E6F140;
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%.2f%c %@%.2f° %d %d (%.1f,%.1f,%.1f) %.1fµT %.1f°", v2, *&v4, v5, v7, *&v6, *(internal + 23), *(internal + 22), *(internal + 1), *(internal + 2), *(internal + 3), *(internal + 9), *(internal + 10));
}

@end