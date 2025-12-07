@interface NFTLV
+ (id)TLVSsWithBytes:(const void *)bytes length:(unint64_t)length requireDefiniteEncoding:(BOOL)encoding;
+ (id)TLVWithData:(id)data;
+ (id)TLVWithTag:(unsigned int)tag children:(id)children;
+ (id)TLVWithTag:(unsigned int)tag fromData:(id)data;
+ (id)TLVWithTag:(unsigned int)tag unsignedChar:(unsigned __int8)char;
+ (id)TLVWithTag:(unsigned int)tag unsignedLongValue:(unsigned int)value;
+ (id)TLVWithTag:(unsigned int)tag unsignedShort:(unsigned __int16)short;
+ (id)TLVWithTag:(unsigned int)tag value:(id)value;
+ (id)TLVsWithData:(id)data;
+ (id)TLVsWithData:(id)data requireDefiniteEncoding:(BOOL)encoding;
+ (id)_intToData:(unsigned int)data;
+ (id)_parseTLVs:(const char *)vs end:(const char *)end simple:(BOOL)simple definite:(BOOL)definite;
+ (id)simpleTLVsWithData:(id)data;
+ (id)simpleTLVsWithTag:(unsigned int)tag fromData:(id)data;
- (id)asMutableData;
- (id)childWithTag:(unsigned int)tag;
- (id)childrenWithTag:(unsigned int)tag;
- (id)description;
- (id)valueAsString;
- (unint64_t)valueAsUnsignedLongLong;
- (unsigned)valueAsUnsignedLong;
- (unsigned)valueAsUnsignedShort;
@end

@implementation NFTLV

+ (id)TLVsWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  v15 = objc_msgSend_bytes(dataCopy2, v7, v8);
  v11 = objc_msgSend_length(dataCopy2, v9, v10);

  v13 = objc_msgSend__parseTLVs_end_simple_definite_(self, v12, &v15, v15 + v11, 0, 0);

  return v13;
}

+ (id)TLVsWithData:(id)data requireDefiniteEncoding:(BOOL)encoding
{
  encodingCopy = encoding;
  dataCopy = data;
  dataCopy2 = data;
  v17 = objc_msgSend_bytes(dataCopy2, v9, v10);
  v13 = objc_msgSend_length(dataCopy2, v11, v12);

  v15 = objc_msgSend__parseTLVs_end_simple_definite_(self, v14, &v17, v17 + v13, 0, encodingCopy);

  return v15;
}

+ (id)simpleTLVsWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  v15 = objc_msgSend_bytes(dataCopy2, v7, v8);
  v11 = objc_msgSend_length(dataCopy2, v9, v10);

  v13 = objc_msgSend__parseTLVs_end_simple_definite_(self, v12, &v15, v15 + v11, 1, 0);

  return v13;
}

+ (id)TLVSsWithBytes:(const void *)bytes length:(unint64_t)length requireDefiniteEncoding:(BOOL)encoding
{
  bytesCopy = bytes;
  v5 = objc_msgSend__parseTLVs_end_simple_definite_(self, a2, &bytesCopy, bytes + length, 0, encoding);

  return v5;
}

+ (id)TLVWithData:(id)data
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_TLVsWithData_(self, a2, data);
  if (!objc_msgSend_count(v5, v6, v7))
  {
    v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v26 = off_27DA9DE50[specific];
      if (v26)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v26(3, "%c[%{public}s %{public}s]:%i No TLV detected", v30, ClassName, Name, 58);
        v24 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v31 = dispatch_get_specific(v24);
      v20 = NFSharedLogGetLogger(v31);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v32 = object_getClass(self);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      *buf = 67109890;
      v39 = v33;
      v40 = 2082;
      v41 = object_getClassName(self);
      v42 = 2082;
      v43 = sel_getName(a2);
      v44 = 1024;
      v45 = 58;
      v23 = "%c[%{public}s %{public}s]:%i No TLV detected";
      goto LABEL_23;
    }

LABEL_29:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  if (objc_msgSend_count(v5, v8, v9) >= 2)
  {
    v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v13 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v13 < 5)
    {
      v14 = off_27DA9DE50[v13];
      if (v14)
      {
        v15 = object_getClass(self);
        v16 = class_isMetaClass(v15);
        v17 = object_getClassName(self);
        v36 = sel_getName(a2);
        v18 = 45;
        if (v16)
        {
          v18 = 43;
        }

        v14(3, "%c[%{public}s %{public}s]:%i More than one TLV detected", v18, v17, v36, 63);
        v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v19 = dispatch_get_specific(v12);
      v20 = NFSharedLogGetLogger(v19);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v39 = v22;
      v40 = 2082;
      v41 = object_getClassName(self);
      v42 = 2082;
      v43 = sel_getName(a2);
      v44 = 1024;
      v45 = 63;
      v23 = "%c[%{public}s %{public}s]:%i More than one TLV detected";
LABEL_23:
      _os_log_impl(&dword_22EEC4000, v20, OS_LOG_TYPE_ERROR, v23, buf, 0x22u);
LABEL_24:

      v34 = 0;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v34 = objc_msgSend_lastObject(v5, v10, v11);
LABEL_26:

  return v34;
}

+ (id)TLVWithTag:(unsigned int)tag fromData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_TLVsWithData_(NFTLV, a2, data, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_tag(v13, v8, v9) == tag)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (id)simpleTLVsWithTag:(unsigned int)tag fromData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = objc_msgSend_simpleTLVsWithData_(NFTLV, v7, dataCopy, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_tag(v16, v11, v12) == tag)
        {
          objc_msgSend_addObject_(v6, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v18, v22, 16);
    }

    while (v13);
  }

  return v6;
}

+ (id)TLVWithTag:(unsigned int)tag children:(id)children
{
  v21 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  v7 = objc_opt_new();
  *(v7 + 8) = tag;
  objc_storeStrong((v7 + 24), children);
  *(v7 + 32) = 8;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = childrenCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        *(v7 + 32) += *(*(*(&v16 + 1) + 8 * i) + 32);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  return v7;
}

+ (id)TLVWithTag:(unsigned int)tag value:(id)value
{
  valueCopy = value;
  v6 = objc_opt_new();
  *(v6 + 8) = tag;
  v7 = *(v6 + 16);
  *(v6 + 16) = valueCopy;
  v8 = valueCopy;

  v11 = objc_msgSend_length(v8, v9, v10);
  *(v6 + 32) = v11 + 8;

  return v6;
}

+ (id)TLVWithTag:(unsigned int)tag unsignedChar:(unsigned __int8)char
{
  v4 = *&tag;
  charCopy = char;
  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = objc_msgSend_initWithBytes_length_(v5, v6, &charCopy, 1);
  v9 = objc_msgSend_TLVWithTag_value_(NFTLV, v8, v4, v7);

  return v9;
}

+ (id)TLVWithTag:(unsigned int)tag unsignedShort:(unsigned __int16)short
{
  v4 = *&tag;
  shortCopy = short;
  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = objc_msgSend_initWithBytes_length_(v5, v6, &shortCopy, 2);
  v9 = objc_msgSend_TLVWithTag_value_(NFTLV, v8, v4, v7);

  return v9;
}

+ (id)TLVWithTag:(unsigned int)tag unsignedLongValue:(unsigned int)value
{
  v4 = *&tag;
  valueCopy = value;
  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = objc_msgSend_initWithBytes_length_(v5, v6, &valueCopy, 4);
  v9 = objc_msgSend_TLVWithTag_value_(NFTLV, v8, v4, v7);

  return v9;
}

- (id)description
{
  children = self->_children;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = v4;
  if (children)
  {
    v21.receiver = self;
    v21.super_class = NFTLV;
    v7 = [(NFTLV *)&v21 description];
    tag = self->_tag;
    v11 = objc_msgSend_children(self, v9, v10);
    v13 = objc_msgSend_initWithFormat_(v6, v12, @"%@ %02x : %@", v7, tag, v11);
  }

  else
  {
    v7 = objc_msgSend_initWithData_encoding_(v4, v5, self->_value, 1);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    if (v7)
    {
      v20.receiver = self;
      v20.super_class = NFTLV;
      v11 = [(NFTLV *)&v20 description];
      v13 = objc_msgSend_initWithFormat_(v14, v15, @"%@ %02x = %@ %@", v11, self->_tag, self->_value, v7);
    }

    else
    {
      v19.receiver = self;
      v19.super_class = NFTLV;
      v11 = [(NFTLV *)&v19 description];
      v13 = objc_msgSend_initWithFormat_(v14, v16, @"%@ %02x = %@", v11, self->_tag, self->_value);
    }
  }

  v17 = v13;

  return v17;
}

- (id)valueAsString
{
  if (self->_value)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_initWithData_encoding_(v4, v5, self->_value, 1);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)valueAsUnsignedLong
{
  v41 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  if (objc_msgSend_length(value, a2, v2) >= 5)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = off_27DA9DE50[specific];
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", v15, ClassName, Name, 166, self->_value);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v16 = dispatch_get_specific(v8);
    v17 = NFSharedLogGetLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      v22 = self->_value;
      *buf = 67110146;
      v32 = v19;
      v33 = 2082;
      v34 = v20;
      v35 = 2082;
      v36 = v21;
      v37 = 1024;
      v38 = 166;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", buf, 0x2Cu);
    }

    return 0;
  }

  v23 = objc_msgSend_bytes(self->_value, v6, v7);
  if (!objc_msgSend_length(self->_value, v24, v25))
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v29 = *(v23 + v28++) | (v29 << 8);
  }

  while (objc_msgSend_length(self->_value, v26, v27) > v28);
  return v29;
}

- (unsigned)valueAsUnsignedShort
{
  v41 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  if (objc_msgSend_length(value, a2, v2) >= 3)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = off_27DA9DE50[specific];
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", v15, ClassName, Name, 183, self->_value);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v16 = dispatch_get_specific(v8);
    v17 = NFSharedLogGetLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      v22 = self->_value;
      *buf = 67110146;
      v32 = v19;
      v33 = 2082;
      v34 = v20;
      v35 = 2082;
      v36 = v21;
      v37 = 1024;
      v38 = 183;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", buf, 0x2Cu);
    }

    return 0;
  }

  v23 = objc_msgSend_bytes(self->_value, v6, v7);
  if (!objc_msgSend_length(self->_value, v24, v25))
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v29 = *(v23 + v28++) | (v29 << 8);
  }

  while (objc_msgSend_length(self->_value, v26, v27) > v28);
  return v29;
}

- (unint64_t)valueAsUnsignedLongLong
{
  v41 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  if (objc_msgSend_length(value, a2, v2) >= 9)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = off_27DA9DE50[specific];
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", v15, ClassName, Name, 201, self->_value);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v16 = dispatch_get_specific(v8);
    v17 = NFSharedLogGetLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(self);
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(self);
      v21 = sel_getName(a2);
      v22 = self->_value;
      *buf = 67110146;
      v32 = v19;
      v33 = 2082;
      v34 = v20;
      v35 = 2082;
      v36 = v21;
      v37 = 1024;
      v38 = 201;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Value too large: %{public}@", buf, 0x2Cu);
    }

    return 0;
  }

  v23 = objc_msgSend_bytes(self->_value, v6, v7);
  if (!objc_msgSend_length(self->_value, v24, v25))
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v29 = *(v23 + v28++) | (v29 << 8);
  }

  while (objc_msgSend_length(self->_value, v26, v27) > v28);
  return v29;
}

- (id)childrenWithTag:(unsigned int)tag
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = objc_msgSend_children(self, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_tag(v16, v11, v12) == tag)
        {
          objc_msgSend_addObject_(v5, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v18, v22, 16);
    }

    while (v13);
  }

  return v5;
}

- (id)childWithTag:(unsigned int)tag
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_children(self, a2, *&tag, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_tag(v12, v7, v8) == tag)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)_intToData:(unsigned int)data
{
  v4 = objc_alloc(MEMORY[0x277CBEB28]);
  v6 = objc_msgSend_initWithCapacity_(v4, v5, 4);
  v8 = v6;
  v12 = 0;
  if (data)
  {
    v9 = 4;
    if (HIBYTE(data))
    {
      goto LABEL_14;
    }

    do
    {
      v10 = HIWORD(data);
      data <<= 8;
      --v9;
    }

    while (!v10 && v9);
    if (v9)
    {
LABEL_14:
      do
      {
        v12 = HIBYTE(data);
        objc_msgSend_appendBytes_length_(v8, v7, &v12, 1);
        data <<= 8;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    objc_msgSend_appendBytes_length_(v6, v7, &v12, 1);
  }

  return v8;
}

- (id)asMutableData
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB28]);
  v5 = objc_msgSend_initWithCapacity_(v3, v4, self->_worseCaseSizeAsData);
  v7 = objc_msgSend__intToData_(NFTLV, v6, self->_tag);
  objc_msgSend_appendData_(v5, v8, v7);

  v11 = self->_value;
  if (!v11)
  {
    if (self->_children)
    {
      v12 = objc_alloc(MEMORY[0x277CBEB28]);
      v11 = objc_msgSend_initWithCapacity_(v12, v13, self->_worseCaseSizeAsData);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = self->_children;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v38, 16);
      if (v16)
      {
        v19 = v16;
        v20 = *v35;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v14);
            }

            v22 = objc_msgSend_asData(*(*(&v34 + 1) + 8 * i), v17, v18);
            objc_msgSend_appendData_(v11, v23, v22);
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v34, v38, 16);
        }

        while (v19);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v24 = objc_msgSend_length(v11, v9, v10);
  v26 = objc_msgSend__intToData_(NFTLV, v25, v24);
  v29 = v26;
  if (v24 >= 0x80)
  {
    v33 = objc_msgSend_length(v26, v27, v28) | 0x80;
    objc_msgSend_appendBytes_length_(v5, v30, &v33, 1);
  }

  objc_msgSend_appendData_(v5, v27, v29);
  if (v11)
  {
    objc_msgSend_appendData_(v5, v31, v11);
  }

  return v5;
}

+ (id)_parseTLVs:(const char *)vs end:(const char *)end simple:(BOOL)simple definite:(BOOL)definite
{
  definiteCopy = definite;
  simpleCopy = simple;
  v221 = *MEMORY[0x277D85DE8];
  v201 = *vs;
  v9 = objc_opt_new();
  v10 = *vs;
  if (*vs < end)
  {
    while (1)
    {
      v11 = v10 + 1;
      *vs = v10 + 1;
      v12 = *v10;
      if (simpleCopy)
      {
        if (v11 >= end)
        {
          v134 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (specific >= 5)
          {
            goto LABEL_164;
          }

          v136 = off_27DA9DE50[specific];
          if (v136)
          {
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            v139 = 45;
            if (isMetaClass)
            {
              v139 = 43;
            }

            v136(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v139, ClassName, Name, 321, v12);
            v134 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v140 = dispatch_get_specific(v134);
          v88 = NFSharedLogGetLogger(v140);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v141 = object_getClass(self);
            if (class_isMetaClass(v141))
            {
              v142 = 43;
            }

            else
            {
              v142 = 45;
            }

            v143 = object_getClassName(self);
            v144 = sel_getName(a2);
            *buf = 67110146;
            v206 = v142;
            v207 = 2082;
            v208 = v143;
            v209 = 2082;
            v210 = v144;
            v211 = 1024;
            v212 = 321;
            v213 = 1024;
            v214 = v12;
            v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
            goto LABEL_134;
          }

          goto LABEL_136;
        }

        v13 = v10 + 2;
        *vs = v10 + 2;
        v14 = *(v10 + 1);
        if (v14 != 255)
        {
          goto LABEL_9;
        }

        LODWORD(v14) = 0;
        v15 = 1;
        do
        {
          if (v13 >= end)
          {
            v96 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v97 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v97 >= 5)
            {
              goto LABEL_164;
            }

            v98 = off_27DA9DE50[v97];
            if (v98)
            {
              v99 = object_getClass(self);
              v100 = class_isMetaClass(v99);
              v186 = object_getClassName(self);
              v192 = sel_getName(a2);
              v101 = 45;
              if (v100)
              {
                v101 = 43;
              }

              v98(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v101, v186, v192, 327, v12);
              v96 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v102 = dispatch_get_specific(v96);
            v88 = NFSharedLogGetLogger(v102);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              v103 = object_getClass(self);
              if (class_isMetaClass(v103))
              {
                v104 = 43;
              }

              else
              {
                v104 = 45;
              }

              v105 = object_getClassName(self);
              v106 = sel_getName(a2);
              *buf = 67110146;
              v206 = v104;
              v207 = 2082;
              v208 = v105;
              v209 = 2082;
              v210 = v106;
              v211 = 1024;
              v212 = 327;
              v213 = 1024;
              v214 = v12;
              v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
              goto LABEL_134;
            }

            goto LABEL_136;
          }

          v16 = v15;
          v15 = 0;
          v17 = v13 + 1;
          *vs = v13 + 1;
          v14 = *v13++ | (v14 << 8);
        }

        while ((v16 & 1) != 0);
        v13 = v17;
LABEL_9:
        v18 = v12;
        if (v12)
        {
          goto LABEL_44;
        }

LABEL_32:
        if (v14)
        {
          v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v38 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v38 < 5)
          {
            v39 = off_27DA9DE50[v38];
            if (v39)
            {
              v40 = object_getClass(self);
              v41 = class_isMetaClass(v40);
              v184 = object_getClassName(self);
              v189 = sel_getName(a2);
              v42 = 45;
              if (v41)
              {
                v42 = 43;
              }

              v39(4, "%c[%{public}s %{public}s]:%i Unexpected %u len on tag 0", v42, v184, v189, 385, v14);
              v37 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v43 = dispatch_get_specific(v37);
            v44 = NFSharedLogGetLogger(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = object_getClass(self);
              if (class_isMetaClass(v45))
              {
                v46 = 43;
              }

              else
              {
                v46 = 45;
              }

              v47 = object_getClassName(self);
              v48 = sel_getName(a2);
              *buf = 67110146;
              v206 = v46;
              v207 = 2082;
              v208 = v47;
              v209 = 2082;
              v210 = v48;
              v211 = 1024;
              v212 = 385;
              v213 = 1024;
              v214 = v14;
              _os_log_impl(&dword_22EEC4000, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected %u len on tag 0", buf, 0x28u);
            }

            v18 = 0;
            v13 = *vs;
            goto LABEL_44;
          }

LABEL_164:
          __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
        }

        goto LABEL_138;
      }

      if ((~v12 & 0x1F) == 0)
      {
        v19 = 1;
        v20 = *v10;
        while (1)
        {
          if (v19 >= 5)
          {
            v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v22 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v22 >= 5)
            {
              goto LABEL_164;
            }

            v23 = off_27DA9DE50[v22];
            if (v23)
            {
              v24 = object_getClass(self);
              v25 = class_isMetaClass(v24);
              v26 = object_getClassName(self);
              v188 = sel_getName(a2);
              v27 = 45;
              if (v25)
              {
                v27 = 43;
              }

              v23(3, "%c[%{public}s %{public}s]:%i Tag value overflows", v27, v26, v188, 342);
              v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v28 = dispatch_get_specific(v21);
            v29 = NFSharedLogGetLogger(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = object_getClass(self);
              if (class_isMetaClass(v30))
              {
                v31 = 43;
              }

              else
              {
                v31 = 45;
              }

              v32 = object_getClassName(self);
              v33 = sel_getName(a2);
              *buf = 67109890;
              v206 = v31;
              v207 = 2082;
              v208 = v32;
              v209 = 2082;
              v210 = v33;
              v211 = 1024;
              v212 = 342;
              _os_log_impl(&dword_22EEC4000, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag value overflows", buf, 0x22u);
            }

            v11 = *vs;
          }

          if (v11 >= end)
          {
            break;
          }

          v34 = v11 + 1;
          *vs = v11 + 1;
          v35 = *v11;
          v18 = *v11 | (v20 << 8);
          ++v19;
          ++v11;
          v20 = v18;
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }
        }

        v80 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v81 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v81 >= 5)
        {
          goto LABEL_164;
        }

        v82 = off_27DA9DE50[v81];
        if (v82)
        {
          v83 = object_getClass(self);
          v84 = class_isMetaClass(v83);
          v85 = object_getClassName(self);
          v191 = sel_getName(a2);
          v86 = 45;
          if (v84)
          {
            v86 = 43;
          }

          v82(3, "%c[%{public}s %{public}s]:%i Underflow", v86, v85, v191, 344);
          v80 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v87 = dispatch_get_specific(v80);
        v88 = NFSharedLogGetLogger(v87);
        if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_136;
        }

        v89 = object_getClass(self);
        if (class_isMetaClass(v89))
        {
          v90 = 43;
        }

        else
        {
          v90 = 45;
        }

        v91 = object_getClassName(self);
        v92 = sel_getName(a2);
        *buf = 67109890;
        v206 = v90;
        v207 = 2082;
        v208 = v91;
        v209 = 2082;
        v210 = v92;
        v211 = 1024;
        v212 = 344;
        v93 = "%c[%{public}s %{public}s]:%i Underflow";
LABEL_82:
        v94 = v88;
        v95 = 34;
        goto LABEL_135;
      }

      v34 = v10 + 1;
      v18 = v12;
LABEL_29:
      if (v34 >= end)
      {
        break;
      }

      v13 = v34 + 1;
      *vs = v34 + 1;
      v36 = *v34;
      v14 = v36;
      if (v36 < 0)
      {
        v63 = v36 & 0x7F;
        if ((v14 & 0x7F) != 0)
        {
          LODWORD(v14) = 0;
          while (v13 < end)
          {
            v64 = v13 + 1;
            *vs = v13 + 1;
            v14 = *v13++ | (v14 << 8);
            if (!--v63)
            {
              v13 = v64;
              if (!v18)
              {
                goto LABEL_32;
              }

              goto LABEL_44;
            }
          }

          v107 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v108 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v108 >= 5)
          {
            goto LABEL_164;
          }

          v109 = off_27DA9DE50[v108];
          if (v109)
          {
            v110 = object_getClass(self);
            v111 = class_isMetaClass(v110);
            v112 = object_getClassName(self);
            v193 = sel_getName(a2);
            v113 = 45;
            if (v111)
            {
              v113 = 43;
            }

            v109(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v113, v112, v193, 367, v18);
            v107 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v114 = dispatch_get_specific(v107);
          v88 = NFSharedLogGetLogger(v114);
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v115 = object_getClass(self);
            if (class_isMetaClass(v115))
            {
              v116 = 43;
            }

            else
            {
              v116 = 45;
            }

            v117 = object_getClassName(self);
            v118 = sel_getName(a2);
            *buf = 67110146;
            v206 = v116;
            v207 = 2082;
            v208 = v117;
            v209 = 2082;
            v210 = v118;
            v211 = 1024;
            v212 = 367;
            v213 = 1024;
            v214 = v18;
            v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
            goto LABEL_134;
          }

          goto LABEL_136;
        }

        if (v18)
        {
          v14 = 0;
          goto LABEL_44;
        }

        goto LABEL_138;
      }

      if (!v18)
      {
        goto LABEL_32;
      }

LABEL_44:
      if (end - v13 < v14)
      {
        v119 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v120 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v120 >= 5)
        {
          goto LABEL_164;
        }

        v121 = off_27DA9DE50[v120];
        if (v121)
        {
          v122 = object_getClass(self);
          v123 = class_isMetaClass(v122);
          v124 = object_getClassName(self);
          v125 = sel_getName(a2);
          v126 = 43;
          if (!v123)
          {
            v126 = 45;
          }

          v121(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x len=%u have=%lu offset=%lu", v126, v124, v125, 390, v18, v14, end - *vs, *vs - v201);
          v119 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v127 = dispatch_get_specific(v119);
        v88 = NFSharedLogGetLogger(v127);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          v128 = object_getClass(self);
          if (class_isMetaClass(v128))
          {
            v129 = 43;
          }

          else
          {
            v129 = 45;
          }

          v130 = object_getClassName(self);
          v131 = sel_getName(a2);
          v132 = end - *vs;
          v133 = (*vs - v201);
          *buf = 67110914;
          v206 = v129;
          v207 = 2082;
          v208 = v130;
          v209 = 2082;
          v210 = v131;
          v211 = 1024;
          v212 = 390;
          v213 = 1024;
          v214 = v18;
          v215 = 1024;
          v216 = v14;
          v217 = 2048;
          v218 = v132;
          v219 = 2048;
          v220 = v133;
          v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x len=%u have=%lu offset=%lu";
          v94 = v88;
          v95 = 66;
          goto LABEL_135;
        }

        goto LABEL_136;
      }

      v49 = v14;
      v50 = objc_alloc(MEMORY[0x277CBEA90]);
      v53 = objc_msgSend_initWithBytes_length_(v50, v51, *vs, v14);
      if ((v12 & 0x20) != 0)
      {
        v56 = objc_msgSend__parseTLVs_end_simple_definite_(self, v52, vs, &(*vs)[v49], simpleCopy, definiteCopy);
        if (objc_msgSend_count(v56, v57, v58))
        {
          v60 = objc_msgSend_TLVWithTag_children_(NFTLV, v59, v18, v56);
          if (!v60)
          {
            v171 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            v172 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (v172 >= 5)
            {
              goto LABEL_164;
            }

            v173 = off_27DA9DE50[v172];
            if (v173)
            {
              v174 = object_getClass(self);
              v175 = class_isMetaClass(v174);
              v176 = object_getClassName(self);
              v197 = sel_getName(a2);
              v177 = 45;
              if (v175)
              {
                v177 = 43;
              }

              v173(3, "%c[%{public}s %{public}s]:%i [NFTLV TLVWithTag:children:] failed!", v177, v176, v197, 410);
              v171 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v178 = dispatch_get_specific(v171);
            v179 = NFSharedLogGetLogger(v178);
            if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
            {
              v180 = object_getClass(self);
              if (class_isMetaClass(v180))
              {
                v181 = 43;
              }

              else
              {
                v181 = 45;
              }

              v182 = object_getClassName(self);
              v183 = sel_getName(a2);
              *buf = 67109890;
              v206 = v181;
              v207 = 2082;
              v208 = v182;
              v209 = 2082;
              v210 = v183;
              v211 = 1024;
              v212 = 410;
              _os_log_impl(&dword_22EEC4000, v179, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i [NFTLV TLVWithTag:children:] failed!", buf, 0x22u);
            }

            goto LABEL_137;
          }

          v61 = v60;
          objc_storeStrong((v60 + 16), v53);
          objc_msgSend_addObject_(v9, v62, v61);
        }

        else
        {
          v200 = v56;
          v65 = v9;
          v66 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v67 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v67 >= 5)
          {
            goto LABEL_164;
          }

          v68 = off_27DA9DE50[v67];
          if (v68)
          {
            v69 = object_getClass(self);
            v198 = class_isMetaClass(v69);
            v185 = object_getClassName(self);
            v190 = sel_getName(a2);
            v70 = 45;
            if (v198)
            {
              v70 = 43;
            }

            v68(4, "%c[%{public}s %{public}s]:%i Failed to recurse children of constructed (?) tag 0x%x, returning as simple", v70, v185, v190, 404, v18);
            v66 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v9 = v65;
          v71 = dispatch_get_specific(v66);
          v72 = NFSharedLogGetLogger(v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v73 = object_getClass(self);
            if (class_isMetaClass(v73))
            {
              v74 = 43;
            }

            else
            {
              v74 = 45;
            }

            v199 = v74;
            v75 = object_getClassName(self);
            v76 = sel_getName(a2);
            *buf = 67110146;
            v206 = v199;
            v207 = 2082;
            v208 = v75;
            v9 = v65;
            v209 = 2082;
            v210 = v76;
            v211 = 1024;
            v212 = 404;
            v213 = 1024;
            v214 = v18;
            _os_log_impl(&dword_22EEC4000, v72, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to recurse children of constructed (?) tag 0x%x, returning as simple", buf, 0x28u);
          }

          v78 = objc_msgSend_TLVWithTag_value_(NFTLV, v77, v18, v53);
          objc_msgSend_addObject_(v9, v79, v78);

          *vs = &v13[v49];
          v56 = v200;
        }
      }

      else
      {
        v54 = objc_msgSend_TLVWithTag_value_(NFTLV, v52, v18, v53);
        objc_msgSend_addObject_(v9, v55, v54);

        *vs += v49;
      }

      v10 = *vs;
      if (*vs >= end)
      {
        goto LABEL_149;
      }
    }

    if (v18)
    {
      v145 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v146 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v146 >= 5)
      {
        goto LABEL_164;
      }

      v147 = off_27DA9DE50[v146];
      if (v147)
      {
        v148 = object_getClass(self);
        v149 = class_isMetaClass(v148);
        v150 = object_getClassName(self);
        v195 = sel_getName(a2);
        v151 = 45;
        if (v149)
        {
          v151 = 43;
        }

        v147(3, "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x", v151, v150, v195, 356, v18);
        v145 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v152 = dispatch_get_specific(v145);
      v88 = NFSharedLogGetLogger(v152);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v153 = object_getClass(self);
        if (class_isMetaClass(v153))
        {
          v154 = 43;
        }

        else
        {
          v154 = 45;
        }

        v155 = object_getClassName(self);
        v156 = sel_getName(a2);
        *buf = 67110146;
        v206 = v154;
        v207 = 2082;
        v208 = v155;
        v209 = 2082;
        v210 = v156;
        v211 = 1024;
        v212 = 356;
        v213 = 1024;
        v214 = v18;
        v93 = "%c[%{public}s %{public}s]:%i Underflow: tag=0x%x";
LABEL_134:
        v94 = v88;
        v95 = 40;
LABEL_135:
        _os_log_impl(&dword_22EEC4000, v94, OS_LOG_TYPE_ERROR, v93, buf, v95);
      }

LABEL_136:

LABEL_137:
      v157 = 0;
      goto LABEL_150;
    }

LABEL_138:
    if (definiteCopy)
    {
      v158 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v159 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v159 >= 5)
      {
        goto LABEL_164;
      }

      v160 = off_27DA9DE50[v159];
      if (v160)
      {
        v161 = object_getClass(self);
        v162 = class_isMetaClass(v161);
        v163 = object_getClassName(self);
        v196 = sel_getName(a2);
        v164 = 45;
        if (v162)
        {
          v164 = 43;
        }

        v160(3, "%c[%{public}s %{public}s]:%i Require definite encoding, but got zero tag and len", v164, v163, v196, 380);
        v158 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v165 = dispatch_get_specific(v158);
      v88 = NFSharedLogGetLogger(v165);
      if (!os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_136;
      }

      v166 = object_getClass(self);
      if (class_isMetaClass(v166))
      {
        v167 = 43;
      }

      else
      {
        v167 = 45;
      }

      v168 = object_getClassName(self);
      v169 = sel_getName(a2);
      *buf = 67109890;
      v206 = v167;
      v207 = 2082;
      v208 = v168;
      v209 = 2082;
      v210 = v169;
      v211 = 1024;
      v212 = 380;
      v93 = "%c[%{public}s %{public}s]:%i Require definite encoding, but got zero tag and len";
      goto LABEL_82;
    }
  }

LABEL_149:
  v157 = v9;
LABEL_150:

  return v157;
}

@end