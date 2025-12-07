@interface NFCISO7816APDU
- (NFCISO7816APDU)initWithData:(NSData *)data;
- (NFCISO7816APDU)initWithInstructionClass:(uint8_t)instructionClass instructionCode:(uint8_t)instructionCode p1Parameter:(uint8_t)p1Parameter p2Parameter:(uint8_t)p2Parameter data:(NSData *)data expectedResponseLength:(NSInteger)expectedResponseLength;
- (NSData)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NFCISO7816APDU

- (NFCISO7816APDU)initWithInstructionClass:(uint8_t)instructionClass instructionCode:(uint8_t)instructionCode p1Parameter:(uint8_t)p1Parameter p2Parameter:(uint8_t)p2Parameter data:(NSData *)data expectedResponseLength:(NSInteger)expectedResponseLength
{
  v52 = *MEMORY[0x277D85DE8];
  v15 = data;
  if (!expectedResponseLength || (expectedResponseLength - 65537) <= 0xFFFFFFFFFFFEFFFDLL)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Invalid expectedResponseLength value; should be from 1 to 65536 or -1", v27, ClassName, Name, 33);
    }

    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = object_getClass(self);
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      *buf = 67109890;
      v45 = v30;
      v46 = 2082;
      v47 = object_getClassName(self);
      v48 = 2082;
      v49 = sel_getName(a2);
      v50 = 1024;
      v51 = 33;
      _os_log_impl(&dword_23728C000, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid expectedResponseLength value; should be from 1 to 65536 or -1", buf, 0x22u);
    }

    selfCopy = 0;
    goto LABEL_32;
  }

  v43.receiver = self;
  v43.super_class = NFCISO7816APDU;
  v16 = [(NFCISO7816APDU *)&v43 init];
  if (v16)
  {
    v17 = v16;
    v18 = objc_opt_new();
    buf[0] = instructionClass;
    buf[1] = instructionCode;
    buf[2] = p1Parameter;
    buf[3] = p2Parameter;
    [(NSData *)v18 appendBytes:buf length:4];
    v19 = [(NSData *)v15 length];
    if ([(NSData *)v15 length])
    {
      if (expectedResponseLength > 256 || v19 >= 0x100)
      {
        LOBYTE(v41) = 0;
        HIBYTE(v41) = [(NSData *)v15 length]>> 8;
        v42 = [(NSData *)v15 length];
        v20 = v18;
        v21 = 3;
      }

      else
      {
        LOBYTE(v41) = [(NSData *)v15 length];
        v20 = v18;
        v21 = 1;
      }

      [(NSData *)v20 appendBytes:&v41 length:v21];
      v33 = [(NSData *)v18 length];
      v34 = [(NSData *)v15 length];
      v17->_payloadOffset.location = v33;
      v17->_payloadOffset.length = v34;
      [(NSData *)v18 appendData:v15];
    }

    else
    {
      v32.f64[0] = NAN;
      v32.f64[1] = NAN;
      v17->_payloadOffset = vnegq_f64(v32);
    }

    v17->_le = expectedResponseLength;
    if (expectedResponseLength >= 1)
    {
      v35 = [(NSData *)v15 length];
      if (expectedResponseLength < 257 || v35)
      {
        if (expectedResponseLength > 256 || v19 >= 0x100)
        {
          v41 = bswap32(expectedResponseLength) >> 16;
          v36 = v18;
          v37 = 2;
        }

        else
        {
          LOBYTE(v41) = expectedResponseLength;
          v36 = v18;
          v37 = 1;
        }
      }

      else
      {
        LOBYTE(v41) = 0;
        HIBYTE(v41) = BYTE1(expectedResponseLength);
        v42 = expectedResponseLength;
        v36 = v18;
        v37 = 3;
      }

      [(NSData *)v36 appendBytes:&v41 length:v37];
    }

    fullPacket = v17->_fullPacket;
    v17->_fullPacket = v18;

    self = v17;
    selfCopy = self;
LABEL_32:

    goto LABEL_33;
  }

  selfCopy = 0;
LABEL_33:

  return selfCopy;
}

- (NFCISO7816APDU)initWithData:(NSData *)data
{
  v116 = *MEMORY[0x277D85DE8];
  v5 = data;
  v107.receiver = self;
  v107.super_class = NFCISO7816APDU;
  v6 = [(NFCISO7816APDU *)&v107 init];
  if (!v6)
  {
    goto LABEL_14;
  }

  bytes = [(NSData *)v5 bytes];
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(v6 + 8) = vnegq_f64(v8);
  *(v6 + 3) = -1;
  if ([(NSData *)v5 length]> 3)
  {
    if ([(NSData *)v5 length]== 4)
    {
      goto LABEL_16;
    }

    v25 = (bytes + 4);
    v26 = [(NSData *)v5 length];
    v27 = (bytes + v26);
    if (v26 < 5)
    {
      v42 = 0;
      v29 = 0;
      v31 = 0;
      v30 = -1;
    }

    else
    {
      v28 = *v25;
      v29 = *v25 == 0;
      if (*v25)
      {
        v25 = (bytes + 5);
        v30 = v28;
LABEL_22:
        v31 = v28 != 0;
        if (v27 - v25 >= v30)
        {
          *(v6 + 1) = &v25[-bytes];
          *(v6 + 2) = v30;
          v25 += v30;
        }

        else if (v27 - v25 >= 1)
        {
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v33 = Logger;
            Class = object_getClass(v6);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v6);
            Name = sel_getName(a2);
            v37 = 45;
            if (isMetaClass)
            {
              v37 = 43;
            }

            v33(3, "%c[%{public}s %{public}s]:%i Missing data specified by Lc", v37, ClassName, Name, 148);
          }

          v15 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v38 = object_getClass(v6);
          if (class_isMetaClass(v38))
          {
            v39 = 43;
          }

          else
          {
            v39 = 45;
          }

          v40 = object_getClassName(v6);
          v41 = sel_getName(a2);
          *buf = 67109890;
          v109 = v39;
          v110 = 2082;
          v111 = v40;
          v112 = 2082;
          v113 = v41;
          v114 = 1024;
          v115 = 148;
          v20 = "%c[%{public}s %{public}s]:%i Missing data specified by Lc";
          goto LABEL_12;
        }

        v42 = 1;
        goto LABEL_38;
      }

      if (v26 == 5)
      {
        v42 = 0;
        v30 = 0;
        v29 = 0;
        v25 = (bytes + 5);
        v31 = 1;
      }

      else
      {
        if (v26 <= 6)
        {
          v90 = NFLogGetLogger();
          if (v90)
          {
            v91 = v90;
            v92 = object_getClass(v6);
            v93 = class_isMetaClass(v92);
            v94 = object_getClassName(v6);
            v106 = sel_getName(a2);
            v95 = 45;
            if (v93)
            {
              v95 = 43;
            }

            v91(3, "%c[%{public}s %{public}s]:%i Unexpected Lc & Le field combination", v95, v94, v106, 133);
          }

          v15 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v96 = object_getClass(v6);
          if (class_isMetaClass(v96))
          {
            v97 = 43;
          }

          else
          {
            v97 = 45;
          }

          v98 = object_getClassName(v6);
          v99 = sel_getName(a2);
          *buf = 67109890;
          v109 = v97;
          v110 = 2082;
          v111 = v98;
          v112 = 2082;
          v113 = v99;
          v114 = 1024;
          v115 = 133;
          v20 = "%c[%{public}s %{public}s]:%i Unexpected Lc & Le field combination";
          goto LABEL_12;
        }

        v25 = (bytes + 7);
        v30 = __rev16(*(bytes + 5));
        if (v30)
        {
          goto LABEL_22;
        }

        v42 = 0;
        v31 = 0;
        v29 = 1;
      }
    }

LABEL_38:
    if (v25 == v27)
    {
      v54 = [(NSData *)v5 copy];
      v55 = *(v6 + 4);
      *(v6 + 4) = v54;

      if ((v29 || v31) && *(v6 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v31)
        {
          v56 = 256;
        }

        else
        {
          v56 = 0x10000;
        }

        if (v30)
        {
          v56 = v30;
        }

        *(v6 + 3) = v56;
      }

      goto LABEL_17;
    }

    v43 = v27 - v25;
    if (v43 == 2)
    {
      if (v31)
      {
        v57 = NFLogGetLogger();
        if (v57)
        {
          v58 = v57;
          v59 = object_getClass(v6);
          v60 = class_isMetaClass(v59);
          v61 = object_getClassName(v6);
          v103 = sel_getName(a2);
          v62 = 45;
          if (v60)
          {
            v62 = 43;
          }

          v58(3, "%c[%{public}s %{public}s]:%i Unexpected short Lc & extended Le combination", v62, v61, v103, 176);
        }

        v15 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v63 = object_getClass(v6);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(v6);
        v66 = sel_getName(a2);
        *buf = 67109890;
        v109 = v64;
        v110 = 2082;
        v111 = v65;
        v112 = 2082;
        v113 = v66;
        v114 = 1024;
        v115 = 176;
        v20 = "%c[%{public}s %{public}s]:%i Unexpected short Lc & extended Le combination";
        goto LABEL_12;
      }

      v78 = *v25;
      *(v6 + 3) = v78 << 8;
      v79 = v25[1] | (v78 << 8);
      v77 = 0x10000;
      if (v79)
      {
        v77 = v79;
      }
    }

    else
    {
      if (v43 != 1)
      {
        v67 = NFLogGetLogger();
        if (v67)
        {
          v68 = v67;
          v69 = object_getClass(v6);
          v70 = class_isMetaClass(v69);
          v71 = object_getClassName(v6);
          v104 = sel_getName(a2);
          v72 = 45;
          if (v70)
          {
            v72 = 43;
          }

          v68(3, "%c[%{public}s %{public}s]:%i Unexpected lc & le field combination", v72, v71, v104, 184);
        }

        v15 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v73 = object_getClass(v6);
        if (class_isMetaClass(v73))
        {
          v74 = 43;
        }

        else
        {
          v74 = 45;
        }

        v75 = object_getClassName(v6);
        v76 = sel_getName(a2);
        *buf = 67109890;
        v109 = v74;
        v110 = 2082;
        v111 = v75;
        v112 = 2082;
        v113 = v76;
        v114 = 1024;
        v115 = 184;
        v20 = "%c[%{public}s %{public}s]:%i Unexpected lc & le field combination";
        goto LABEL_12;
      }

      if (v29)
      {
        v44 = NFLogGetLogger();
        if (v44)
        {
          v45 = v44;
          v46 = object_getClass(v6);
          v47 = class_isMetaClass(v46);
          v48 = object_getClassName(v6);
          v102 = sel_getName(a2);
          v49 = 45;
          if (v47)
          {
            v49 = 43;
          }

          v45(3, "%c[%{public}s %{public}s]:%i Unexpected extended Lc & short Le combination", v49, v48, v102, 170);
        }

        v15 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v50 = object_getClass(v6);
        if (class_isMetaClass(v50))
        {
          v51 = 43;
        }

        else
        {
          v51 = 45;
        }

        v52 = object_getClassName(v6);
        v53 = sel_getName(a2);
        *buf = 67109890;
        v109 = v51;
        v110 = 2082;
        v111 = v52;
        v112 = 2082;
        v113 = v53;
        v114 = 1024;
        v115 = 170;
        v20 = "%c[%{public}s %{public}s]:%i Unexpected extended Lc & short Le combination";
        goto LABEL_12;
      }

      v77 = *v25;
    }

    *(v6 + 3) = v77;
    if (v42 && *(v6 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v80 = NFLogGetLogger();
      if (v80)
      {
        v81 = v80;
        v82 = object_getClass(v6);
        v83 = class_isMetaClass(v82);
        v84 = object_getClassName(v6);
        v105 = sel_getName(a2);
        v85 = 45;
        if (v83)
        {
          v85 = 43;
        }

        v81(3, "%c[%{public}s %{public}s]:%i Missing data when Lc is > 0", v85, v84, v105, 189);
      }

      v15 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v86 = object_getClass(v6);
      if (class_isMetaClass(v86))
      {
        v87 = 43;
      }

      else
      {
        v87 = 45;
      }

      v88 = object_getClassName(v6);
      v89 = sel_getName(a2);
      *buf = 67109890;
      v109 = v87;
      v110 = 2082;
      v111 = v88;
      v112 = 2082;
      v113 = v89;
      v114 = 1024;
      v115 = 189;
      v20 = "%c[%{public}s %{public}s]:%i Missing data when Lc is > 0";
      goto LABEL_12;
    }

LABEL_16:
    v22 = [(NSData *)v5 copy];
    v23 = *(v6 + 4);
    *(v6 + 4) = v22;

LABEL_17:
    v21 = v6;
    goto LABEL_18;
  }

  v9 = NFLogGetLogger();
  if (v9)
  {
    v10 = v9;
    v11 = object_getClass(v6);
    v12 = class_isMetaClass(v11);
    v13 = object_getClassName(v6);
    v100 = sel_getName(a2);
    v14 = 45;
    if (v12)
    {
      v14 = 43;
    }

    v10(3, "%c[%{public}s %{public}s]:%i Invalid APDU format", v14, v13, v100, 106);
  }

  v15 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_13;
  }

  v16 = object_getClass(v6);
  if (class_isMetaClass(v16))
  {
    v17 = 43;
  }

  else
  {
    v17 = 45;
  }

  v18 = object_getClassName(v6);
  v19 = sel_getName(a2);
  *buf = 67109890;
  v109 = v17;
  v110 = 2082;
  v111 = v18;
  v112 = 2082;
  v113 = v19;
  v114 = 1024;
  v115 = 106;
  v20 = "%c[%{public}s %{public}s]:%i Invalid APDU format";
LABEL_12:
  _os_log_impl(&dword_23728C000, v15, OS_LOG_TYPE_ERROR, v20, buf, 0x22u);
LABEL_13:

LABEL_14:
  v21 = 0;
LABEL_18:

  return v21;
}

- (NSData)data
{
  location = self->_payloadOffset.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSData *)self->_fullPacket subdataWithRange:location, self->_payloadOffset.length, v2];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_payloadOffset;
    *(v5 + 24) = self->_le;
    v7 = [(NSData *)self->_fullPacket copyWithZone:zone];
    v8 = v6[4];
    v6[4] = v7;
  }

  return v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"["];
  bytes = [(NSData *)self->_fullPacket bytes];
  if ([(NSData *)self->_fullPacket length])
  {
    v5 = 0;
    do
    {
      if ([(NSData *)self->_fullPacket length]- 1 <= v5)
      {
        v6 = @"0x%02X";
      }

      else
      {
        v6 = @"0x%02X, ";
      }

      [v3 appendFormat:v6, bytes[v5++]];
    }

    while ([(NSData *)self->_fullPacket length]> v5);
  }

  [v3 appendString:@"]"];
  v7 = [v3 copy];

  return v7;
}

@end