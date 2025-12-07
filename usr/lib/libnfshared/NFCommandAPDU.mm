@interface NFCommandAPDU
+ (id)appendExpectedLength:(unsigned __int16)length usingExtendedLength:(BOOL)extendedLength toAPDU:(id)u;
+ (id)buildAPDUHeaderWithClass:(unsigned __int8)class instruction:(unsigned __int8)instruction p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 len:(unsigned int)len useExtendedLength:(BOOL)length;
- (BOOL)isSecureMessaging;
- (NFCommandAPDU)initWithBytes:(const char *)bytes length:(unint64_t)length;
- (NFCommandAPDU)initWithData:(id)data uniformLengthCheck:(BOOL)check;
- (id)description;
@end

@implementation NFCommandAPDU

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v11.receiver = self;
  v11.super_class = NFCommandAPDU;
  v4 = [(NFCommandAPDU *)&v11 description];
  v7 = objc_msgSend_NF_asHexString(self->_data, v5, v6);
  v9 = objc_msgSend_initWithFormat_(v3, v8, @"%@ { %@ }", v4, v7);

  return v9;
}

- (NFCommandAPDU)initWithBytes:(const char *)bytes length:(unint64_t)length
{
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = objc_msgSend_initWithBytes_length_(v7, v8, bytes, length);
  v11 = objc_msgSend_initWithData_(self, v10, v9);

  return v11;
}

- (NFCommandAPDU)initWithData:(id)data uniformLengthCheck:(BOOL)check
{
  checkCopy = check;
  dataCopy = data;
  v38.receiver = self;
  v38.super_class = NFCommandAPDU;
  v8 = [(NFCommandAPDU *)&v38 init];
  if (!v8)
  {
    goto LABEL_36;
  }

  v9 = dataCopy;
  v12 = objc_msgSend_bytes(v9, v10, v11);
  v13 = dataCopy;
  v16 = objc_msgSend_bytes(v13, v14, v15);
  v19 = objc_msgSend_length(dataCopy, v17, v18);
  if (objc_msgSend_length(dataCopy, v20, v21) >= 4)
  {
    v23 = (v16 + v19);
    v8->_class = *v12;
    v8->_instruction = *(v12 + 1);
    v8->_p1 = *(v12 + 2);
    v24 = (v12 + 4);
    v8->_p2 = *(v12 + 3);
    if ((v12 + 4) == v23)
    {
      goto LABEL_36;
    }

    v25 = *v24;
    v26 = *v24 == 0;
    if (*v24)
    {
      v27 = (v12 + 5);
      v28 = *v24;
      goto LABEL_7;
    }

    v30 = v23 - v24;
    if (v30 == 1)
    {
      v26 = 0;
      v28 = 0;
      v27 = (v12 + 5);
      v29 = 1;
    }

    else
    {
      if (v30 <= 2)
      {
        goto LABEL_3;
      }

      v27 = (v12 + 7);
      v28 = __rev16(*(v12 + 5));
      if (v28)
      {
LABEL_7:
        v29 = v25 != 0;
        if (v23 - v27 >= v28)
        {
          v31 = dataCopy;
          v8->_payloadRange.location = &v27[-objc_msgSend_bytes(v31, v32, v33)];
          v8->_payloadRange.length = v28;
          objc_storeStrong(&v8->_data, data);
          v27 += v28;
        }

        else if (v23 - v27 > 0)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      v29 = 0;
      v26 = 1;
    }

LABEL_13:
    if (v27 == v23)
    {
      if (!v8->_data)
      {
        if (v26)
        {
          v35 = 0x10000;
        }

        else
        {
          v35 = 256;
        }

        if (v28)
        {
          v35 = v28;
        }

        v8->_lengthExpected = v35;
      }
    }

    else
    {
      if (v23 - v27 == 2)
      {
        if (v29 && checkCopy)
        {
          goto LABEL_3;
        }

        v36 = *v27;
        v8->_lengthExpected = v36 << 8;
        if (v27[1] | (v36 << 8))
        {
          v34 = v27[1] | (v36 << 8);
        }

        else
        {
          v34 = 0x10000;
        }
      }

      else
      {
        if (v23 - v27 != 1 || v26 && checkCopy)
        {
          goto LABEL_3;
        }

        v34 = *v27;
        if (!*v27)
        {
          v34 = 256;
        }
      }

      v8->_lengthExpected = v34;
      if (v8->_payloadRange.length && !v8->_data)
      {
        goto LABEL_3;
      }
    }

LABEL_36:
    v22 = v8;
    goto LABEL_37;
  }

LABEL_3:
  v22 = 0;
LABEL_37:

  return v22;
}

- (BOOL)isSecureMessaging
{
  v4 = objc_msgSend_clss(self, a2, v2);
  v7 = objc_msgSend_clss(self, v5, v6);
  if ((v4 & 0x40) != 0)
  {
    v8 = 32;
  }

  else
  {
    v8 = 12;
  }

  return (v8 & v7) != 0;
}

+ (id)buildAPDUHeaderWithClass:(unsigned __int8)class instruction:(unsigned __int8)instruction p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 len:(unsigned int)len useExtendedLength:(BOOL)length
{
  lengthCopy = length;
  v9 = *&len;
  v65 = *MEMORY[0x277D85DE8];
  classCopy = class;
  instructionCopy = instruction;
  p1Copy = p1;
  p2Copy = p2;
  v12 = objc_alloc(MEMORY[0x277CBEB28]);
  v14 = objc_msgSend_initWithCapacity_(v12, v13, (v9 + 9));
  objc_msgSend_appendBytes_length_(v14, v15, &classCopy, 1);
  objc_msgSend_appendBytes_length_(v14, v16, &instructionCopy, 1);
  objc_msgSend_appendBytes_length_(v14, v17, &p1Copy, 1);
  objc_msgSend_appendBytes_length_(v14, v18, &p2Copy, 1);
  if (!v9 && !lengthCopy)
  {
    goto LABEL_10;
  }

  if (v9 <= 0xFF && !lengthCopy)
  {
LABEL_9:
    buf[0] = v9;
    objc_msgSend_appendBytes_length_(v14, v19, buf, 1);
LABEL_10:
    v14 = v14;
    v21 = v14;
    goto LABEL_11;
  }

  if (!WORD1(v9) && !lengthCopy)
  {
    buf[0] = 0;
LABEL_8:
    objc_msgSend_appendBytes_length_(v14, v19, buf, 1);
    buf[0] = BYTE1(v9);
    objc_msgSend_appendBytes_length_(v14, v20, buf, 1);
    goto LABEL_9;
  }

  if (BYTE3(v9))
  {
    v23 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v25 = off_27DA9DE50[specific];
      if (v25)
      {
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v28 = 45;
        if (isMetaClass)
        {
          v28 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Unsupported length 0x%X", v28, ClassName, Name, 287, v9);
        v23 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v29 = dispatch_get_specific(v23);
      v30 = NFSharedLogGetLogger(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(self);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(self);
        v34 = sel_getName(a2);
        *buf = 67110146;
        v56 = v32;
        v57 = 2082;
        v58 = v33;
        v59 = 2082;
        v60 = v34;
        v61 = 1024;
        v62 = 287;
        v63 = 1024;
        v64 = v9;
        _os_log_impl(&dword_22EEC4000, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unsupported length 0x%X", buf, 0x28u);
      }

      v14 = 0;
      goto LABEL_10;
    }

    goto LABEL_39;
  }

  if (lengthCopy)
  {
    buf[0] = BYTE2(v9);
    goto LABEL_8;
  }

  v35 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v36 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v36 >= 5)
  {
LABEL_39:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v37 = off_27DA9DE50[v36];
  if (v37)
  {
    v38 = object_getClass(self);
    v39 = class_isMetaClass(v38);
    v40 = object_getClassName(self);
    v50 = sel_getName(a2);
    v41 = 45;
    if (v39)
    {
      v41 = 43;
    }

    v37(3, "%c[%{public}s %{public}s]:%i Unexpected length did you mean to use extended length ?", v41, v40, v50, 275);
    v35 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v42 = dispatch_get_specific(v35);
  v43 = NFSharedLogGetLogger(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = object_getClass(self);
    if (class_isMetaClass(v44))
    {
      v45 = 43;
    }

    else
    {
      v45 = 45;
    }

    v46 = object_getClassName(self);
    v47 = sel_getName(a2);
    *buf = 67109890;
    v56 = v45;
    v57 = 2082;
    v58 = v46;
    v59 = 2082;
    v60 = v47;
    v61 = 1024;
    v62 = 275;
    _os_log_impl(&dword_22EEC4000, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected length did you mean to use extended length ?", buf, 0x22u);
  }

  v21 = 0;
LABEL_11:

  return v21;
}

+ (id)appendExpectedLength:(unsigned __int16)length usingExtendedLength:(BOOL)extendedLength toAPDU:(id)u
{
  lengthCopy = length;
  v52 = *MEMORY[0x277D85DE8];
  uCopy = u;
  v11 = uCopy;
  if (lengthCopy < 0x100 || extendedLength)
  {
    if (extendedLength)
    {
      buf[0] = BYTE1(lengthCopy);
      objc_msgSend_appendBytes_length_(uCopy, v10, buf, 1);
    }

    buf[0] = lengthCopy;
    objc_msgSend_appendBytes_length_(v11, v10, buf, 1);
    v39 = 0;
  }

  else
  {
    v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v14 = off_27DA9DE50[specific];
    if (v14)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Expected length is too large.", v18, ClassName, Name, 299);
      v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v19 = dispatch_get_specific(v12);
    v20 = NFSharedLogGetLogger(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
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
      v45 = v22;
      v46 = 2082;
      v47 = object_getClassName(self);
      v48 = 2082;
      v49 = sel_getName(a2);
      v50 = 1024;
      v51 = 299;
      _os_log_impl(&dword_22EEC4000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Expected length is too large.", buf, 0x22u);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "nfcd");
    v42[0] = *MEMORY[0x277CCA450];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "Invalid Parameter");
    v43[0] = v27;
    v43[1] = &unk_2843B4C20;
    v42[1] = @"Line";
    v42[2] = @"Method";
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = sel_getName(a2);
    v31 = objc_msgSend_initWithFormat_(v28, v30, @"%s", v29);
    v43[2] = v31;
    v42[3] = *MEMORY[0x277CCA068];
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = sel_getName(a2);
    v35 = objc_msgSend_initWithFormat_(v32, v34, @"%s:%d", v33, 300);
    v43[3] = v35;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v43, v42, 4);
    v39 = objc_msgSend_initWithDomain_code_userInfo_(v23, v38, v25, 10, v37);
  }

  return v39;
}

@end