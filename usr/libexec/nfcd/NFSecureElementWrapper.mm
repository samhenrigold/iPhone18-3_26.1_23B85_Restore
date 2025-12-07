@interface NFSecureElementWrapper
- (BOOL)hasMultiOS;
- (BOOL)isOperational;
- (BOOL)isProd;
- (NFSecureElementWrapper)initWithHandle:(id)handle;
- (NFSecureElementWrapperDelegate)delegate;
- (NSData)serialNumberAsData;
- (NSData)systemOSSerialNumberAsData;
- (NSString)eccCertificate;
- (NSString)eckaCertificate;
- (NSString)rsaCertificate;
- (NSString)serialNumber;
- (NSString)systemOSSerialNumber;
- (id)_crsGetSharingRequest:(id *)request signature:(id *)signature;
- (id)_crsSetSharingResult:(id)result signature:(id)signature;
- (id)allocateSlot:(unsigned __int8)slot authorizingUser:(unsigned __int8)user authorizingUserToken:(id)token outToken:(id *)outToken outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result;
- (id)authorizeUpdate:(BOOL)update slotIndex:(unsigned __int8)index userToken:(id)token outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result;
- (id)checkPairing;
- (id)checkPerBootAuthKeysAreStillPresent;
- (id)deleteSlot:(unsigned __int8)slot outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result;
- (id)derive:(unsigned __int8)derive userHash:(id)hash outData:(id *)data outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result;
- (id)getData:(id *)data updateKUD:(char *)d outWriteLimit:(unsigned int *)limit outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result;
- (id)getHash:(id *)hash appletResult:(unsigned __int16 *)result;
- (id)negotiatePerBootAuthKeys;
- (id)performSharing;
- (id)recoverSLAM;
- (id)resetCounter:(unsigned __int8)counter userToken:(id)token outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result;
- (id)upgradeKey:(unsigned __int8)key inputData:(id)data outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result;
- (unint64_t)_crsGetPersoState:(id *)state;
- (unint64_t)getPairingVersion;
- (unint64_t)supportedTechnologies;
@end

@implementation NFSecureElementWrapper

- (id)allocateSlot:(unsigned __int8)slot authorizingUser:(unsigned __int8)user authorizingUserToken:(id)token outToken:(id *)outToken outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result
{
  userCopy = user;
  slotCopy = slot;
  tokenCopy = token;
  v15 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
  v112 = 0;
  v16 = sub_100158A6C(&self->super.isa, v15, &v112);
  v17 = v112;

  if (v16)
  {
    if ([v16 status] == 36864)
    {
      v111 = v17;
      v18 = sub_100158334(&self->super.isa, 128, 0, slotCopy, userCopy, tokenCopy, &v111);
      v19 = v111;

      if (!v18)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v62 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v66 = 45;
          if (isMetaClass)
          {
            v66 = 43;
          }

          v62(3, "%c[%{public}s %{public}s]:%i Nil response", v66, ClassName, Name, 47);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v68 = object_getClass(self);
          if (class_isMetaClass(v68))
          {
            v69 = 43;
          }

          else
          {
            v69 = 45;
          }

          v70 = object_getClassName(self);
          v71 = sel_getName(a2);
          *buf = 67109890;
          v126 = v69;
          v127 = 2082;
          v128 = v70;
          v129 = 2082;
          v130 = v71;
          v131 = 1024;
          v132 = 47;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
        }

        if (v19 && [v19 code])
        {
          v72 = [NSError alloc];
          v18 = [NSString stringWithUTF8String:"nfcd"];
          code = [v19 code];
          v117[0] = NSLocalizedDescriptionKey;
          if ([v19 code] > 75)
          {
            code2 = 76;
          }

          else
          {
            code2 = [v19 code];
          }

          response3 = [NSString stringWithUTF8String:off_1003158C8[code2]];
          v118[0] = response3;
          v118[1] = v19;
          v117[1] = NSUnderlyingErrorKey;
          v117[2] = @"Line";
          v118[2] = &off_10032FCD0;
          v117[3] = @"Method";
          v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v118[3] = v101;
          v117[4] = NSDebugDescriptionErrorKey;
          v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 48];
          v118[4] = v102;
          v103 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:5];
          v60 = [v72 initWithDomain:v18 code:code userInfo:v103];
        }

        else
        {
          v97 = [NSError alloc];
          v18 = [NSString stringWithUTF8String:"nfcd"];
          v115[0] = NSLocalizedDescriptionKey;
          response3 = [NSString stringWithUTF8String:"Unknown Error"];
          v116[0] = response3;
          v116[1] = &off_10032FCD0;
          v115[1] = @"Line";
          v115[2] = @"Method";
          v98 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v116[2] = v98;
          v115[3] = NSDebugDescriptionErrorKey;
          v99 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 48];
          v116[3] = v99;
          v100 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:4];
          v60 = [v97 initWithDomain:v18 code:6 userInfo:v100];
        }

        goto LABEL_60;
      }

      *result = [v18 status];
      response = [v18 response];
      if ([response length] >= 0x14)
      {
        status = [v18 status];

        if (status == 36864)
        {
          response2 = [v18 response];
          *count = *[response2 bytes];

          *count = bswap32(*count);
          response3 = [v18 response];
          [response3 subdataWithRange:{4, 16}];
          *outToken = v60 = 0;
LABEL_60:
          v17 = v19;
          goto LABEL_61;
        }
      }

      else
      {
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v77 = NFLogGetLogger();
      if (v77)
      {
        v78 = v77;
        v79 = object_getClass(self);
        v80 = class_isMetaClass(v79);
        v81 = object_getClassName(self);
        v82 = sel_getName(a2);
        response4 = [v18 response];
        v109 = [response4 length];
        v84 = 45;
        if (v80)
        {
          v84 = 43;
        }

        v78(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", v84, v81, v82, 55, v109);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = object_getClass(self);
        if (class_isMetaClass(v86))
        {
          v87 = 43;
        }

        else
        {
          v87 = 45;
        }

        v88 = object_getClassName(self);
        v89 = sel_getName(a2);
        response5 = [v18 response];
        v91 = [response5 length];
        *buf = 67110146;
        v126 = v87;
        v127 = 2082;
        v128 = v88;
        v129 = 2082;
        v130 = v89;
        v131 = 1024;
        v132 = 55;
        v133 = 2048;
        v134 = v91;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", buf, 0x2Cu);
      }

      v92 = [NSError alloc];
      response3 = [NSString stringWithUTF8String:"nfcd"];
      v113[0] = NSLocalizedDescriptionKey;
      v93 = [NSString stringWithUTF8String:"Unexpected Result"];
      v114[0] = v93;
      v114[1] = &off_10032FCE8;
      v113[1] = @"Line";
      v113[2] = @"Method";
      v94 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v114[2] = v94;
      v113[3] = NSDebugDescriptionErrorKey;
      v95 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 56];
      v114[3] = v95;
      v96 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];
      v60 = [v92 initWithDomain:response3 code:13 userInfo:v96];

      goto LABEL_60;
    }

    *result = [v16 status];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(self);
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(self);
      v39 = sel_getName(a2);
      status2 = [v16 status];
      v40 = 45;
      if (v37)
      {
        v40 = 43;
      }

      v35(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v40, v38, v39, 33, status2, tokenCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = object_getClass(self);
      if (class_isMetaClass(v42))
      {
        v43 = 43;
      }

      else
      {
        v43 = 45;
      }

      v44 = object_getClassName(self);
      v45 = sel_getName(a2);
      status3 = [v16 status];
      *buf = 67110146;
      v126 = v43;
      v127 = 2082;
      v128 = v44;
      v129 = 2082;
      v130 = v45;
      v131 = 1024;
      v132 = 33;
      v133 = 1024;
      LODWORD(v134) = status3;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
    }

    status4 = [v16 status];
    v48 = [NSError alloc];
    response3 = [NSString stringWithUTF8String:"nfcd"];
    if (status4 == 26277)
    {
      v121[0] = NSLocalizedDescriptionKey;
      v50 = [NSString stringWithUTF8String:"Restricted Mode"];
      v122[0] = v50;
      v122[1] = &off_10032FCA0;
      v121[1] = @"Line";
      v121[2] = @"Method";
      v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v122[2] = v51;
      v121[3] = NSDebugDescriptionErrorKey;
      v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 35];
      v122[3] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:4];
      v54 = v48;
      v55 = response3;
      v56 = 24;
    }

    else
    {
      v119[0] = NSLocalizedDescriptionKey;
      v50 = [NSString stringWithUTF8String:"Command Error"];
      v120[0] = v50;
      v120[1] = &off_10032FCB8;
      v119[1] = @"Line";
      v119[2] = @"Method";
      v51 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v120[2] = v51;
      v119[3] = NSDebugDescriptionErrorKey;
      v52 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 37];
      v120[3] = v52;
      v53 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:4];
      v54 = v48;
      v55 = response3;
      v56 = 16;
    }

    v60 = [v54 initWithDomain:v55 code:v56 userInfo:v53];

    v18 = v16;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v105 = object_getClassName(self);
      v106 = sel_getName(a2);
      v25 = 45;
      if (v24)
      {
        v25 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v25, v105, v106, 28, v17, tokenCopy);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = object_getClass(self);
      if (class_isMetaClass(v27))
      {
        v28 = 43;
      }

      else
      {
        v28 = 45;
      }

      v29 = object_getClassName(self);
      v30 = sel_getName(a2);
      *buf = 67110146;
      v126 = v28;
      v127 = 2082;
      v128 = v29;
      v129 = 2082;
      v130 = v30;
      v131 = 1024;
      v132 = 28;
      v133 = 2114;
      v134 = v17;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
    }

    v31 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v17 code];
    v123[0] = NSLocalizedDescriptionKey;
    if ([v17 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v17 code];
    }

    response3 = [NSString stringWithUTF8String:off_1003158C8[code4]];
    v124[0] = response3;
    v124[1] = v17;
    v123[1] = NSUnderlyingErrorKey;
    v123[2] = @"Line";
    v124[2] = &off_10032FC88;
    v123[3] = @"Method";
    v57 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v124[3] = v57;
    v123[4] = NSDebugDescriptionErrorKey;
    v58 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 29];
    v124[4] = v58;
    v59 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:5];
    v60 = [v31 initWithDomain:v18 code:code3 userInfo:v59];
  }

LABEL_61:

  return v60;
}

- (id)derive:(unsigned __int8)derive userHash:(id)hash outData:(id *)data outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result
{
  deriveCopy = derive;
  hashCopy = hash;
  v14 = hashCopy;
  if (hashCopy && [hashCopy length] != 32)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v22 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v123 = [v14 length];
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Invalid user hash length : %u bytes", v27, ClassName, Name, 77, v123);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
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

      v31 = object_getClassName(self);
      v32 = sel_getName(a2);
      v33 = [v14 length];
      *buf = 67110146;
      v142 = v30;
      v143 = 2082;
      v144 = v31;
      v145 = 2082;
      v146 = v32;
      v147 = 1024;
      v148 = 77;
      v149 = 1024;
      LODWORD(v150) = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid user hash length : %u bytes", buf, 0x28u);
    }

    *result = 0;
    v34 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v151[0] = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v152[0] = v18;
    v152[1] = &off_10032FD00;
    v151[1] = @"Line";
    v151[2] = @"Method";
    response5 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v152[2] = response5;
    v151[3] = NSDebugDescriptionErrorKey;
    v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 79];
    v152[3] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v152 forKeys:v151 count:4];
    v38 = [v34 initWithDomain:v17 code:10 userInfo:v37];
  }

  else
  {
    v15 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
    v128 = 0;
    v16 = sub_100158A6C(&self->super.isa, v15, &v128);
    v17 = v128;

    if (v16)
    {
      if ([v16 status] == 36864)
      {
        v127 = v17;
        v18 = sub_100158334(&self->super.isa, 128, 1, deriveCopy, 0, v14, &v127);
        v19 = v127;

        if (v18)
        {
          *result = [v18 status];
          response = [v18 response];
          if ([response length] < 0x14)
          {

LABEL_58:
            v126 = v19;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v94 = NFLogGetLogger();
            if (v94)
            {
              v95 = v94;
              v96 = object_getClass(self);
              v97 = class_isMetaClass(v96);
              v98 = object_getClassName(self);
              v99 = sel_getName(a2);
              response2 = [v18 response];
              v125 = [response2 length];
              v101 = 45;
              if (v97)
              {
                v101 = 43;
              }

              v95(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", v101, v98, v99, 113, v125);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v102 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
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
              response3 = [v18 response];
              v108 = [response3 length];
              *buf = 67110146;
              v142 = v104;
              v143 = 2082;
              v144 = v105;
              v145 = 2082;
              v146 = v106;
              v147 = 1024;
              v148 = 113;
              v149 = 2048;
              v150 = v108;
              _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", buf, 0x2Cu);
            }

            v109 = [NSError alloc];
            response5 = [NSString stringWithUTF8String:"nfcd"];
            v129[0] = NSLocalizedDescriptionKey;
            v110 = [NSString stringWithUTF8String:"Unexpected Result"];
            v130[0] = v110;
            v130[1] = &off_10032FD78;
            v129[1] = @"Line";
            v129[2] = @"Method";
            v111 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
            v130[2] = v111;
            v129[3] = NSDebugDescriptionErrorKey;
            v112 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 114];
            v130[3] = v112;
            v113 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:4];
            v38 = [v109 initWithDomain:response5 code:13 userInfo:v113];

            v17 = v126;
            goto LABEL_72;
          }

          status = [v18 status];

          if (status != 36864)
          {
            goto LABEL_58;
          }

          response4 = [v18 response];
          *count = *[response4 bytes];

          *count = bswap32(*count);
          response5 = [v18 response];
          [response5 subdataWithRange:{4, 16}];
          *data = v38 = 0;
        }

        else
        {
          v77 = v19;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v78 = NFLogGetLogger();
          if (v78)
          {
            v79 = v78;
            v80 = object_getClass(self);
            v81 = class_isMetaClass(v80);
            v82 = object_getClassName(self);
            v122 = sel_getName(a2);
            v83 = 45;
            if (v81)
            {
              v83 = 43;
            }

            v79(3, "%c[%{public}s %{public}s]:%i Nil response", v83, v82, v122, 105);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v84 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            v85 = object_getClass(self);
            if (class_isMetaClass(v85))
            {
              v86 = 43;
            }

            else
            {
              v86 = 45;
            }

            v87 = object_getClassName(self);
            v88 = sel_getName(a2);
            *buf = 67109890;
            v142 = v86;
            v143 = 2082;
            v144 = v87;
            v145 = 2082;
            v146 = v88;
            v147 = 1024;
            v148 = 105;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
          }

          v89 = [NSError alloc];
          v17 = [NSString stringWithUTF8String:"nfcd"];
          if (!v77)
          {
            v131[0] = NSLocalizedDescriptionKey;
            v18 = [NSString stringWithUTF8String:"Unknown Error"];
            v132[0] = v18;
            v132[1] = &off_10032FD60;
            v131[1] = @"Line";
            v131[2] = @"Method";
            response5 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
            v132[2] = response5;
            v131[3] = NSDebugDescriptionErrorKey;
            v114 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 106];
            v132[3] = v114;
            v115 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:4];
            v38 = [v89 initWithDomain:v17 code:6 userInfo:v115];

            goto LABEL_72;
          }

          v19 = v77;
          code = [v77 code];
          v133[0] = NSLocalizedDescriptionKey;
          if ([v77 code] > 75)
          {
            code2 = 76;
          }

          else
          {
            code2 = [v77 code];
          }

          response5 = [NSString stringWithUTF8String:off_1003158C8[code2]];
          v134[0] = response5;
          v134[1] = v77;
          v133[1] = NSUnderlyingErrorKey;
          v133[2] = @"Line";
          v134[2] = &off_10032FD60;
          v133[3] = @"Method";
          v116 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v134[3] = v116;
          v133[4] = NSDebugDescriptionErrorKey;
          v117 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 106];
          v134[4] = v117;
          v118 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:5];
          v38 = [v89 initWithDomain:v17 code:code userInfo:v118];

          v18 = v17;
        }

        v17 = v19;
        goto LABEL_72;
      }

      *result = [v16 status];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(self);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(self);
        v57 = sel_getName(a2);
        status2 = [v16 status];
        v58 = 45;
        if (v55)
        {
          v58 = 43;
        }

        v53(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v58, v56, v57, 91, status2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = object_getClass(self);
        if (class_isMetaClass(v60))
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v62 = object_getClassName(self);
        v63 = sel_getName(a2);
        status3 = [v16 status];
        *buf = 67110146;
        v142 = v61;
        v143 = 2082;
        v144 = v62;
        v145 = 2082;
        v146 = v63;
        v147 = 1024;
        v148 = 91;
        v149 = 1024;
        LODWORD(v150) = status3;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
      }

      status4 = [v16 status];
      v66 = [NSError alloc];
      response5 = [NSString stringWithUTF8String:"nfcd"];
      if (status4 == 26277)
      {
        v137[0] = NSLocalizedDescriptionKey;
        v67 = [NSString stringWithUTF8String:"Restricted Mode"];
        v138[0] = v67;
        v138[1] = &off_10032FD30;
        v137[1] = @"Line";
        v137[2] = @"Method";
        v68 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v138[2] = v68;
        v137[3] = NSDebugDescriptionErrorKey;
        v69 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 93];
        v138[3] = v69;
        v70 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:4];
        v71 = v66;
        v72 = response5;
        v73 = 24;
      }

      else
      {
        v135[0] = NSLocalizedDescriptionKey;
        v67 = [NSString stringWithUTF8String:"Command Error"];
        v136[0] = v67;
        v136[1] = &off_10032FD48;
        v135[1] = @"Line";
        v135[2] = @"Method";
        v68 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v136[2] = v68;
        v135[3] = NSDebugDescriptionErrorKey;
        v69 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 95];
        v136[3] = v69;
        v70 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:4];
        v71 = v66;
        v72 = response5;
        v73 = 16;
      }

      v38 = [v71 initWithDomain:v72 code:v73 userInfo:v70];

      v18 = v16;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v40 = v39;
        v41 = object_getClass(self);
        v42 = class_isMetaClass(v41);
        v120 = object_getClassName(self);
        v121 = sel_getName(a2);
        v43 = 45;
        if (v42)
        {
          v43 = 43;
        }

        v40(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v43, v120, v121, 86, v17);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v44 = NFSharedLogGetLogger();
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
        v142 = v46;
        v143 = 2082;
        v144 = v47;
        v145 = 2082;
        v146 = v48;
        v147 = 1024;
        v148 = 86;
        v149 = 2114;
        v150 = v17;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
      }

      v49 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      code3 = [v17 code];
      v139[0] = NSLocalizedDescriptionKey;
      if ([v17 code] > 75)
      {
        code4 = 76;
      }

      else
      {
        code4 = [v17 code];
      }

      response5 = [NSString stringWithUTF8String:off_1003158C8[code4]];
      v140[0] = response5;
      v140[1] = v17;
      v139[1] = NSUnderlyingErrorKey;
      v139[2] = @"Line";
      v140[2] = &off_10032FD18;
      v139[3] = @"Method";
      v74 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v140[3] = v74;
      v139[4] = NSDebugDescriptionErrorKey;
      v75 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 87];
      v140[4] = v75;
      v76 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:5];
      v38 = [v49 initWithDomain:v18 code:code3 userInfo:v76];
    }
  }

LABEL_72:

  return v38;
}

- (id)resetCounter:(unsigned __int8)counter userToken:(id)token outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result
{
  counterCopy = counter;
  tokenCopy = token;
  v12 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
  v118 = 0;
  v13 = sub_100158A6C(&self->super.isa, v12, &v118);
  v14 = v118;

  if (v13)
  {
    if ([v13 status] == 36864)
    {
      v117 = v14;
      v15 = sub_100158334(&self->super.isa, 128, 2, counterCopy, 0, tokenCopy, &v117);
      v16 = v117;

      if (v15)
      {
        *result = [v15 status];
        response = [v15 response];
        v18 = [response length];

        if (v18 > 3)
        {
          response2 = [v15 response];
          *count = *[response2 bytes];

          v40 = 0;
          *count = bswap32(*count);
          v14 = v16;
        }

        else
        {
          v114 = v16;
          v115 = tokenCopy;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v20 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            response3 = [v15 response];
            v112 = [response3 length];
            v26 = 45;
            if (isMetaClass)
            {
              v26 = 43;
            }

            v20(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", v26, ClassName, Name, 165, v112);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v27 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = object_getClass(self);
            if (class_isMetaClass(v28))
            {
              v29 = 43;
            }

            else
            {
              v29 = 45;
            }

            v30 = object_getClassName(self);
            v31 = sel_getName(a2);
            response4 = [v15 response];
            v33 = [response4 length];
            *buf = 67110146;
            v132 = v29;
            v133 = 2082;
            v134 = v30;
            v135 = 2082;
            v136 = v31;
            v137 = 1024;
            v138 = 165;
            v139 = 2048;
            v140 = v33;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", buf, 0x2Cu);
          }

          v34 = [NSError alloc];
          v35 = [NSString stringWithUTF8String:"nfcd"];
          v119[0] = NSLocalizedDescriptionKey;
          v36 = [NSString stringWithUTF8String:"Unexpected Result"];
          v120[0] = v36;
          v120[1] = &off_10032FDF0;
          v119[1] = @"Line";
          v119[2] = @"Method";
          v37 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v120[2] = v37;
          v119[3] = NSDebugDescriptionErrorKey;
          v38 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 166];
          v120[3] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:4];
          v40 = [v34 initWithDomain:v35 code:13 userInfo:v39];

          v14 = v114;
          tokenCopy = v115;
        }

        goto LABEL_56;
      }

      v83 = v16;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v84 = NFLogGetLogger();
      if (v84)
      {
        v85 = v84;
        v86 = object_getClass(self);
        v87 = class_isMetaClass(v86);
        v88 = object_getClassName(self);
        v111 = sel_getName(a2);
        v89 = 45;
        if (v87)
        {
          v89 = 43;
        }

        v85(3, "%c[%{public}s %{public}s]:%i Nil response", v89, v88, v111, 157);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v90 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        v91 = object_getClass(self);
        if (class_isMetaClass(v91))
        {
          v92 = 43;
        }

        else
        {
          v92 = 45;
        }

        v93 = object_getClassName(self);
        v94 = sel_getName(a2);
        *buf = 67109890;
        v132 = v92;
        v133 = 2082;
        v134 = v93;
        v135 = 2082;
        v136 = v94;
        v137 = 1024;
        v138 = 157;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
      }

      v95 = [NSError alloc];
      v14 = [NSString stringWithUTF8String:"nfcd"];
      if (!v83)
      {
        v121[0] = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithUTF8String:"Unknown Error"];
        v122[0] = v15;
        v122[1] = &off_10032FDD8;
        v121[1] = @"Line";
        v121[2] = @"Method";
        v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v122[2] = v101;
        v121[3] = NSDebugDescriptionErrorKey;
        v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 158];
        v122[3] = v102;
        v103 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:4];
        v40 = [v95 initWithDomain:v14 code:6 userInfo:v103];

        goto LABEL_56;
      }

      v96 = v83;
      code = [v83 code];
      v123[0] = NSLocalizedDescriptionKey;
      v116 = tokenCopy;
      v98 = v95;
      if ([v83 code] > 75)
      {
        code2 = 76;
      }

      else
      {
        code2 = [v83 code];
      }

      v105 = [NSString stringWithUTF8String:off_1003158C8[code2]];
      v124[0] = v105;
      v124[1] = v83;
      v123[1] = NSUnderlyingErrorKey;
      v123[2] = @"Line";
      v124[2] = &off_10032FDD8;
      v123[3] = @"Method";
      v106 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v124[3] = v106;
      v123[4] = NSDebugDescriptionErrorKey;
      v107 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 158];
      v124[4] = v107;
      v108 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:5];
      v40 = [v98 initWithDomain:v14 code:code userInfo:v108];

      v15 = v14;
      v14 = v96;
    }

    else
    {
      v116 = tokenCopy;
      *result = [v13 status];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v57 = v56;
        v58 = object_getClass(self);
        v59 = class_isMetaClass(v58);
        v60 = object_getClassName(self);
        v61 = sel_getName(a2);
        status = [v13 status];
        v62 = 45;
        if (v59)
        {
          v62 = 43;
        }

        v57(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v62, v60, v61, 143, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = object_getClass(self);
        if (class_isMetaClass(v64))
        {
          v65 = 43;
        }

        else
        {
          v65 = 45;
        }

        v66 = object_getClassName(self);
        v67 = sel_getName(a2);
        status2 = [v13 status];
        *buf = 67110146;
        v132 = v65;
        v133 = 2082;
        v134 = v66;
        v135 = 2082;
        v136 = v67;
        v137 = 1024;
        v138 = 143;
        v139 = 1024;
        LODWORD(v140) = status2;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
      }

      status3 = [v13 status];
      v70 = [NSError alloc];
      v71 = [NSString stringWithUTF8String:"nfcd"];
      if (status3 == 26277)
      {
        v127[0] = NSLocalizedDescriptionKey;
        v72 = [NSString stringWithUTF8String:"Restricted Mode"];
        v128[0] = v72;
        v128[1] = &off_10032FDA8;
        v127[1] = @"Line";
        v127[2] = @"Method";
        v73 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v128[2] = v73;
        v127[3] = NSDebugDescriptionErrorKey;
        v74 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 145];
        v128[3] = v74;
        v75 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:4];
        v76 = v70;
        v77 = v71;
        v78 = 24;
      }

      else
      {
        v125[0] = NSLocalizedDescriptionKey;
        v72 = [NSString stringWithUTF8String:"Command Error"];
        v126[0] = v72;
        v126[1] = &off_10032FDC0;
        v125[1] = @"Line";
        v125[2] = @"Method";
        v73 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v126[2] = v73;
        v125[3] = NSDebugDescriptionErrorKey;
        v74 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 147];
        v126[3] = v74;
        v75 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:4];
        v76 = v70;
        v77 = v71;
        v78 = 16;
      }

      v40 = [v76 initWithDomain:v77 code:v78 userInfo:v75];

      v15 = v13;
    }

    tokenCopy = v116;
    goto LABEL_56;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v41 = NFLogGetLogger();
  if (v41)
  {
    v42 = v41;
    v43 = object_getClass(self);
    v44 = class_isMetaClass(v43);
    v109 = object_getClassName(self);
    v110 = sel_getName(a2);
    v45 = 45;
    if (v44)
    {
      v45 = 43;
    }

    v42(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v45, v109, v110, 138, v14);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v46 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v47 = object_getClass(self);
    if (class_isMetaClass(v47))
    {
      v48 = 43;
    }

    else
    {
      v48 = 45;
    }

    v49 = object_getClassName(self);
    v50 = sel_getName(a2);
    *buf = 67110146;
    v132 = v48;
    v133 = 2082;
    v134 = v49;
    v135 = 2082;
    v136 = v50;
    v137 = 1024;
    v138 = 138;
    v139 = 2114;
    v140 = v14;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
  }

  v51 = a2;

  v52 = [NSError alloc];
  v15 = [NSString stringWithUTF8String:"nfcd"];
  code3 = [v14 code];
  v129[0] = NSLocalizedDescriptionKey;
  v54 = tokenCopy;
  if ([v14 code] > 75)
  {
    code4 = 76;
  }

  else
  {
    code4 = [v14 code];
  }

  v79 = [NSString stringWithUTF8String:off_1003158C8[code4]];
  v130[0] = v79;
  v130[1] = v14;
  v129[1] = NSUnderlyingErrorKey;
  v129[2] = @"Line";
  v130[2] = &off_10032FD90;
  v129[3] = @"Method";
  v80 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v51)];
  v130[3] = v80;
  v129[4] = NSDebugDescriptionErrorKey;
  v81 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v51), 139];
  v130[4] = v81;
  v82 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:5];
  v40 = [v52 initWithDomain:v15 code:code3 userInfo:v82];

  tokenCopy = v54;
LABEL_56:

  return v40;
}

- (id)authorizeUpdate:(BOOL)update slotIndex:(unsigned __int8)index userToken:(id)token outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result
{
  indexCopy = index;
  updateCopy = update;
  tokenCopy = token;
  v13 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
  v114 = 0;
  v14 = sub_100158A6C(&self->super.isa, v13, &v114);
  v15 = v114;

  if (v14)
  {
    if ([v14 status] == 36864)
    {
      v113 = v15;
      v16 = sub_100158334(&self->super.isa, 128, 3, indexCopy, updateCopy, tokenCopy, &v113);
      v17 = v113;

      if (v16)
      {
        *result = [v16 status];
        response = [v16 response];
        v19 = [response length];

        if (v19 > 3)
        {
          response2 = [v16 response];
          *count = *[response2 bytes];

          v41 = 0;
          *count = bswap32(*count);
          v15 = v17;
        }

        else
        {
          v111 = v17;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v21 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            response3 = [v16 response];
            v109 = [response3 length];
            v27 = 45;
            if (isMetaClass)
            {
              v27 = 43;
            }

            v21(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", v27, ClassName, Name, 215, v109);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
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

            v31 = object_getClassName(self);
            v32 = sel_getName(a2);
            response4 = [v16 response];
            v34 = [response4 length];
            *buf = 67110146;
            v128 = v30;
            v129 = 2082;
            v130 = v31;
            v131 = 2082;
            v132 = v32;
            v133 = 1024;
            v134 = 215;
            v135 = 2048;
            v136 = v34;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", buf, 0x2Cu);
          }

          v35 = [NSError alloc];
          v36 = [NSString stringWithUTF8String:"nfcd"];
          v115[0] = NSLocalizedDescriptionKey;
          v37 = [NSString stringWithUTF8String:"Unexpected Result"];
          v116[0] = v37;
          v116[1] = &off_10032FE68;
          v115[1] = @"Line";
          v115[2] = @"Method";
          v38 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v116[2] = v38;
          v115[3] = NSDebugDescriptionErrorKey;
          v39 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 216];
          v116[3] = v39;
          v40 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:4];
          v41 = [v35 initWithDomain:v36 code:13 userInfo:v40];

          v15 = v111;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v82 = NFLogGetLogger();
        if (v82)
        {
          v83 = v82;
          v84 = object_getClass(self);
          v85 = class_isMetaClass(v84);
          v86 = object_getClassName(self);
          v108 = sel_getName(a2);
          v87 = 45;
          if (v85)
          {
            v87 = 43;
          }

          v83(3, "%c[%{public}s %{public}s]:%i Nil response", v87, v86, v108, 207);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v88 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
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
          v128 = v90;
          v129 = 2082;
          v130 = v91;
          v131 = 2082;
          v132 = v92;
          v133 = 1024;
          v134 = 207;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
        }

        v93 = [NSError alloc];
        v15 = [NSString stringWithUTF8String:"nfcd"];
        if (v17)
        {
          code = [v17 code];
          v119[0] = NSLocalizedDescriptionKey;
          if ([v17 code] > 75)
          {
            code2 = 76;
          }

          else
          {
            code2 = [v17 code];
          }

          v100 = [NSString stringWithUTF8String:off_1003158C8[code2]];
          v120[0] = v100;
          v120[1] = v17;
          v119[1] = NSUnderlyingErrorKey;
          v119[2] = @"Line";
          v120[2] = &off_10032FE50;
          v119[3] = @"Method";
          v101 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v120[3] = v101;
          v119[4] = NSDebugDescriptionErrorKey;
          v102 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 208];
          v120[4] = v102;
          [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:5];
          v104 = v103 = v17;
          v41 = [v93 initWithDomain:v15 code:code userInfo:v104];

          v16 = v15;
          v15 = v103;
        }

        else
        {
          v117[0] = NSLocalizedDescriptionKey;
          v16 = [NSString stringWithUTF8String:"Unknown Error"];
          v118[0] = v16;
          v118[1] = &off_10032FE50;
          v117[1] = @"Line";
          v117[2] = @"Method";
          v97 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v118[2] = v97;
          v117[3] = NSDebugDescriptionErrorKey;
          v98 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 208];
          v118[3] = v98;
          v99 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:4];
          v41 = [v93 initWithDomain:v15 code:6 userInfo:v99];
        }
      }
    }

    else
    {
      *result = [v14 status];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFLogGetLogger();
      if (v55)
      {
        v56 = v55;
        v57 = object_getClass(self);
        v58 = class_isMetaClass(v57);
        v59 = object_getClassName(self);
        v60 = sel_getName(a2);
        status = [v14 status];
        v61 = 45;
        if (v58)
        {
          v61 = 43;
        }

        v56(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v61, v59, v60, 193, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = object_getClass(self);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(self);
        v66 = sel_getName(a2);
        status2 = [v14 status];
        *buf = 67110146;
        v128 = v64;
        v129 = 2082;
        v130 = v65;
        v131 = 2082;
        v132 = v66;
        v133 = 1024;
        v134 = 193;
        v135 = 1024;
        LODWORD(v136) = status2;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
      }

      status3 = [v14 status];
      v69 = [NSError alloc];
      v70 = [NSString stringWithUTF8String:"nfcd"];
      if (status3 == 26277)
      {
        v123[0] = NSLocalizedDescriptionKey;
        v71 = [NSString stringWithUTF8String:"Restricted Mode"];
        v124[0] = v71;
        v124[1] = &off_10032FE20;
        v123[1] = @"Line";
        v123[2] = @"Method";
        v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v124[2] = v72;
        v123[3] = NSDebugDescriptionErrorKey;
        v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 195];
        v124[3] = v73;
        v74 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:4];
        v75 = v69;
        v76 = v70;
        v77 = 24;
      }

      else
      {
        v121[0] = NSLocalizedDescriptionKey;
        v71 = [NSString stringWithUTF8String:"Command Error"];
        v122[0] = v71;
        v122[1] = &off_10032FE38;
        v121[1] = @"Line";
        v121[2] = @"Method";
        v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v122[2] = v72;
        v121[3] = NSDebugDescriptionErrorKey;
        v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 197];
        v122[3] = v73;
        v74 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:4];
        v75 = v69;
        v76 = v70;
        v77 = 16;
      }

      v41 = [v75 initWithDomain:v76 code:v77 userInfo:v74];

      v16 = v14;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = object_getClass(self);
      v45 = class_isMetaClass(v44);
      v106 = object_getClassName(self);
      v107 = sel_getName(a2);
      v46 = 45;
      if (v45)
      {
        v46 = 43;
      }

      v43(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v46, v106, v107, 188, v15);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v47 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = object_getClass(self);
      if (class_isMetaClass(v48))
      {
        v49 = 43;
      }

      else
      {
        v49 = 45;
      }

      v50 = object_getClassName(self);
      v51 = sel_getName(a2);
      *buf = 67110146;
      v128 = v49;
      v129 = 2082;
      v130 = v50;
      v131 = 2082;
      v132 = v51;
      v133 = 1024;
      v134 = 188;
      v135 = 2114;
      v136 = v15;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
    }

    v52 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v15 code];
    v125[0] = NSLocalizedDescriptionKey;
    if ([v15 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v15 code];
    }

    v78 = [NSString stringWithUTF8String:off_1003158C8[code4]];
    v126[0] = v78;
    v126[1] = v15;
    v125[1] = NSUnderlyingErrorKey;
    v125[2] = @"Line";
    v126[2] = &off_10032FE08;
    v125[3] = @"Method";
    v79 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v126[3] = v79;
    v125[4] = NSDebugDescriptionErrorKey;
    v80 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 189];
    v126[4] = v80;
    v81 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:5];
    v41 = [v52 initWithDomain:v16 code:code3 userInfo:v81];
  }

  return v41;
}

- (id)deleteSlot:(unsigned __int8)slot outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result
{
  slotCopy = slot;
  v10 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
  v110 = 0;
  v11 = sub_100158A6C(&self->super.isa, v10, &v110);
  v12 = v110;

  if (v11)
  {
    if ([v11 status] == 36864)
    {
      v109 = v12;
      v13 = sub_100158334(&self->super.isa, 128, 4, slotCopy, 0, 0, &v109);
      v14 = v109;

      if (v13)
      {
        *result = [v13 status];
        response = [v13 response];
        v16 = [response length];

        if (v16 > 3)
        {
          response2 = [v13 response];
          *count = *[response2 bytes];

          v38 = 0;
          *count = bswap32(*count);
          v12 = v14;
        }

        else
        {
          v108 = v14;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v18 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            response3 = [v13 response];
            v106 = [response3 length];
            v24 = 45;
            if (isMetaClass)
            {
              v24 = 43;
            }

            v18(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", v24, ClassName, Name, 263, v106);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v25 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = object_getClass(self);
            if (class_isMetaClass(v26))
            {
              v27 = 43;
            }

            else
            {
              v27 = 45;
            }

            v28 = object_getClassName(self);
            v29 = sel_getName(a2);
            response4 = [v13 response];
            v31 = [response4 length];
            *buf = 67110146;
            v124 = v27;
            v125 = 2082;
            v126 = v28;
            v127 = 2082;
            v128 = v29;
            v129 = 1024;
            v130 = 263;
            v131 = 2048;
            v132 = v31;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", buf, 0x2Cu);
          }

          v32 = [NSError alloc];
          v33 = [NSString stringWithUTF8String:"nfcd"];
          v111[0] = NSLocalizedDescriptionKey;
          v34 = [NSString stringWithUTF8String:"Unexpected Result"];
          v112[0] = v34;
          v112[1] = &off_10032FEE0;
          v111[1] = @"Line";
          v111[2] = @"Method";
          v35 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v112[2] = v35;
          v111[3] = NSDebugDescriptionErrorKey;
          v36 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 264];
          v112[3] = v36;
          v37 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
          v38 = [v32 initWithDomain:v33 code:13 userInfo:v37];

          v12 = v108;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v79 = NFLogGetLogger();
        if (v79)
        {
          v80 = v79;
          v81 = object_getClass(self);
          v82 = class_isMetaClass(v81);
          v83 = object_getClassName(self);
          v105 = sel_getName(a2);
          v84 = 45;
          if (v82)
          {
            v84 = 43;
          }

          v80(3, "%c[%{public}s %{public}s]:%i Nil response", v84, v83, v105, 255);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v85 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = object_getClass(self);
          if (class_isMetaClass(v86))
          {
            v87 = 43;
          }

          else
          {
            v87 = 45;
          }

          v88 = object_getClassName(self);
          v89 = sel_getName(a2);
          *buf = 67109890;
          v124 = v87;
          v125 = 2082;
          v126 = v88;
          v127 = 2082;
          v128 = v89;
          v129 = 1024;
          v130 = 255;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
        }

        v90 = [NSError alloc];
        v12 = [NSString stringWithUTF8String:"nfcd"];
        if (v14)
        {
          code = [v14 code];
          v115[0] = NSLocalizedDescriptionKey;
          if ([v14 code] > 75)
          {
            code2 = 76;
          }

          else
          {
            code2 = [v14 code];
          }

          v97 = [NSString stringWithUTF8String:off_1003158C8[code2]];
          v116[0] = v97;
          v116[1] = v14;
          v115[1] = NSUnderlyingErrorKey;
          v115[2] = @"Line";
          v116[2] = &off_10032FEC8;
          v115[3] = @"Method";
          v98 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v116[3] = v98;
          v115[4] = NSDebugDescriptionErrorKey;
          v99 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 256];
          v116[4] = v99;
          [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:5];
          v101 = v100 = v14;
          v38 = [v90 initWithDomain:v12 code:code userInfo:v101];

          v13 = v12;
          v12 = v100;
        }

        else
        {
          v113[0] = NSLocalizedDescriptionKey;
          v13 = [NSString stringWithUTF8String:"Unknown Error"];
          v114[0] = v13;
          v114[1] = &off_10032FEC8;
          v113[1] = @"Line";
          v113[2] = @"Method";
          v94 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v114[2] = v94;
          v113[3] = NSDebugDescriptionErrorKey;
          v95 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 256];
          v114[3] = v95;
          v96 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];
          v38 = [v90 initWithDomain:v12 code:6 userInfo:v96];
        }
      }
    }

    else
    {
      *result = [v11 status];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(self);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(self);
        v57 = sel_getName(a2);
        status = [v11 status];
        v58 = 45;
        if (v55)
        {
          v58 = 43;
        }

        v53(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v58, v56, v57, 241, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = object_getClass(self);
        if (class_isMetaClass(v60))
        {
          v61 = 43;
        }

        else
        {
          v61 = 45;
        }

        v62 = object_getClassName(self);
        v63 = sel_getName(a2);
        status2 = [v11 status];
        *buf = 67110146;
        v124 = v61;
        v125 = 2082;
        v126 = v62;
        v127 = 2082;
        v128 = v63;
        v129 = 1024;
        v130 = 241;
        v131 = 1024;
        LODWORD(v132) = status2;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
      }

      status3 = [v11 status];
      v66 = [NSError alloc];
      v67 = [NSString stringWithUTF8String:"nfcd"];
      if (status3 == 26277)
      {
        v119[0] = NSLocalizedDescriptionKey;
        v68 = [NSString stringWithUTF8String:"Restricted Mode"];
        v120[0] = v68;
        v120[1] = &off_10032FE98;
        v119[1] = @"Line";
        v119[2] = @"Method";
        v69 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v120[2] = v69;
        v119[3] = NSDebugDescriptionErrorKey;
        v70 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 243];
        v120[3] = v70;
        v71 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:4];
        v72 = v66;
        v73 = v67;
        v74 = 24;
      }

      else
      {
        v117[0] = NSLocalizedDescriptionKey;
        v68 = [NSString stringWithUTF8String:"Command Error"];
        v118[0] = v68;
        v118[1] = &off_10032FEB0;
        v117[1] = @"Line";
        v117[2] = @"Method";
        v69 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v118[2] = v69;
        v117[3] = NSDebugDescriptionErrorKey;
        v70 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 245];
        v118[3] = v70;
        v71 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:4];
        v72 = v66;
        v73 = v67;
        v74 = 16;
      }

      v38 = [v72 initWithDomain:v73 code:v74 userInfo:v71];

      v13 = v11;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v39 = NFLogGetLogger();
    if (v39)
    {
      v40 = v39;
      v41 = object_getClass(self);
      v42 = class_isMetaClass(v41);
      v103 = object_getClassName(self);
      v104 = sel_getName(a2);
      v43 = 45;
      if (v42)
      {
        v43 = 43;
      }

      v40(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v43, v103, v104, 236, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFSharedLogGetLogger();
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
      v124 = v46;
      v125 = 2082;
      v126 = v47;
      v127 = 2082;
      v128 = v48;
      v129 = 1024;
      v130 = 236;
      v131 = 2114;
      v132 = v12;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
    }

    v49 = [NSError alloc];
    v13 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v12 code];
    v121[0] = NSLocalizedDescriptionKey;
    if ([v12 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v12 code];
    }

    v75 = [NSString stringWithUTF8String:off_1003158C8[code4]];
    v122[0] = v75;
    v122[1] = v12;
    v121[1] = NSUnderlyingErrorKey;
    v121[2] = @"Line";
    v122[2] = &off_10032FE80;
    v121[3] = @"Method";
    v76 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v122[3] = v76;
    v121[4] = NSDebugDescriptionErrorKey;
    v77 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 237];
    v122[4] = v77;
    v78 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:5];
    v38 = [v49 initWithDomain:v13 code:code3 userInfo:v78];
  }

  return v38;
}

- (id)getData:(id *)data updateKUD:(char *)d outWriteLimit:(unsigned int *)limit outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result
{
  v13 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
  v120 = 0;
  v14 = sub_100158A6C(&self->super.isa, v13, &v120);
  v15 = v120;

  if (v14)
  {
    if ([v14 status] == 36864)
    {
      v119 = v15;
      v16 = sub_100158334(&self->super.isa, 128, 5, 0, 0, 0, &v119);
      v117 = v119;

      if (v16)
      {
        *result = [v16 status];
        response = [v16 response];
        if ([response length] >= 0x15)
        {
          status = [v16 status];

          if (status == 36864)
          {
            response2 = [v16 response];
            *count = *[response2 bytes];

            response3 = [v16 response];
            *limit = *([response3 bytes] + 1);

            response4 = [v16 response];
            *d = *([response4 bytes] + 8);

            response5 = [v16 response];
            v78 = [response5 length];

            if (v78 < 0xA)
            {
              *data = +[NSData data];
            }

            else
            {
              response6 = [v16 response];
              response7 = [v16 response];
              *data = [response6 subdataWithRange:{9, objc_msgSend(response7, "length") - 9}];
            }

            v58 = 0;
            *count = bswap32(*count);
            *limit = bswap32(*limit);
LABEL_62:
            v15 = v117;
            goto LABEL_63;
          }
        }

        else
        {
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v82 = Logger;
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          response8 = [v16 response];
          v115 = [response8 length];
          status2 = [v16 status];
          v88 = 45;
          if (isMetaClass)
          {
            v88 = 43;
          }

          v82(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu or status 0x%x", v88, ClassName, Name, 313, v115, status2);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v89 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          v90 = object_getClass(self);
          if (class_isMetaClass(v90))
          {
            v91 = 43;
          }

          else
          {
            v91 = 45;
          }

          v92 = object_getClassName(self);
          v93 = sel_getName(a2);
          response9 = [v16 response];
          v95 = [response9 length];
          status3 = [v16 status];
          *buf = 67110402;
          v124 = v91;
          v125 = 2082;
          v126 = v92;
          v127 = 2082;
          v128 = v93;
          v129 = 1024;
          v130 = 313;
          v131 = 2048;
          v132 = v95;
          v133 = 1024;
          v134 = status3;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu or status 0x%x", buf, 0x32u);
        }

        v97 = [NSError alloc];
        v98 = [NSString stringWithUTF8String:"nfcd"];
        v121[0] = NSLocalizedDescriptionKey;
        v99 = [NSString stringWithUTF8String:"Unexpected Result"];
        v122[0] = v99;
        v122[1] = &off_10032FF58;
        v121[1] = @"Line";
        v121[2] = @"Method";
        v100 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v122[2] = v100;
        v121[3] = NSDebugDescriptionErrorKey;
        v101 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 314];
        v122[3] = v101;
        v102 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:4];
        v58 = [v97 initWithDomain:v98 code:13 userInfo:v102];

        goto LABEL_62;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v59 = NFLogGetLogger();
      if (v59)
      {
        v60 = v59;
        v61 = object_getClass(self);
        v62 = class_isMetaClass(v61);
        v63 = object_getClassName(self);
        v113 = sel_getName(a2);
        v64 = 45;
        if (v62)
        {
          v64 = 43;
        }

        v60(3, "%c[%{public}s %{public}s]:%i Nil response", v64, v63, v113, 305);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v65 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = object_getClass(self);
        if (class_isMetaClass(v66))
        {
          v67 = 43;
        }

        else
        {
          v67 = 45;
        }

        v68 = object_getClassName(self);
        v69 = sel_getName(a2);
        *buf = 67109890;
        v124 = v67;
        v125 = 2082;
        v126 = v68;
        v127 = 2082;
        v128 = v69;
        v129 = 1024;
        v130 = 305;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
      }

      v70 = [NSError alloc];
      v15 = [NSString stringWithUTF8String:"nfcd"];
      if (v117)
      {
        code = [v117 code];
        v137[0] = NSLocalizedDescriptionKey;
        if ([v117 code] > 75)
        {
          code2 = 76;
        }

        else
        {
          code2 = [v117 code];
        }

        v106 = [NSString stringWithUTF8String:off_1003158C8[code2]];
        v138[0] = v106;
        v138[1] = v117;
        v137[1] = NSUnderlyingErrorKey;
        v137[2] = @"Line";
        v138[2] = &off_10032FF40;
        v137[3] = @"Method";
        v107 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v138[3] = v107;
        v137[4] = NSDebugDescriptionErrorKey;
        v108 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 306];
        v138[4] = v108;
        v109 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:5];
        v58 = [v70 initWithDomain:v15 code:code userInfo:v109];

        v16 = v15;
        v15 = v117;
      }

      else
      {
        v135[0] = NSLocalizedDescriptionKey;
        v16 = [NSString stringWithUTF8String:"Unknown Error"];
        v136[0] = v16;
        v136[1] = &off_10032FF40;
        v135[1] = @"Line";
        v135[2] = @"Method";
        v103 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v136[2] = v103;
        v135[3] = NSDebugDescriptionErrorKey;
        v104 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 306];
        v136[3] = v104;
        v105 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:4];
        v58 = [v70 initWithDomain:v15 code:6 userInfo:v105];
      }
    }

    else
    {
      *result = [v14 status];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v32 = v31;
        v33 = object_getClass(self);
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(self);
        v36 = sel_getName(a2);
        status4 = [v14 status];
        v37 = 45;
        if (v34)
        {
          v37 = 43;
        }

        v32(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v37, v35, v36, 291, status4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = object_getClass(self);
        if (class_isMetaClass(v39))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        v41 = object_getClassName(self);
        v42 = sel_getName(a2);
        status5 = [v14 status];
        *buf = 67110146;
        v124 = v40;
        v125 = 2082;
        v126 = v41;
        v127 = 2082;
        v128 = v42;
        v129 = 1024;
        v130 = 291;
        v131 = 1024;
        LODWORD(v132) = status5;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
      }

      status6 = [v14 status];
      v45 = [NSError alloc];
      v46 = [NSString stringWithUTF8String:"nfcd"];
      if (status6 == 26277)
      {
        v141[0] = NSLocalizedDescriptionKey;
        v47 = [NSString stringWithUTF8String:"Restricted Mode"];
        v142[0] = v47;
        v142[1] = &off_10032FF10;
        v141[1] = @"Line";
        v141[2] = @"Method";
        v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v142[2] = v48;
        v141[3] = NSDebugDescriptionErrorKey;
        v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 293];
        v142[3] = v49;
        v50 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:4];
        v51 = v45;
        v52 = v46;
        v53 = 24;
      }

      else
      {
        v139[0] = NSLocalizedDescriptionKey;
        v47 = [NSString stringWithUTF8String:"Command Error"];
        v140[0] = v47;
        v140[1] = &off_10032FF28;
        v139[1] = @"Line";
        v139[2] = @"Method";
        v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v140[2] = v48;
        v139[3] = NSDebugDescriptionErrorKey;
        v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 295];
        v140[3] = v49;
        v50 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:4];
        v51 = v45;
        v52 = v46;
        v53 = 16;
      }

      v58 = [v51 initWithDomain:v52 code:v53 userInfo:v50];

      v16 = v14;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(self);
      v21 = class_isMetaClass(v20);
      v111 = object_getClassName(self);
      v112 = sel_getName(a2);
      v22 = 45;
      if (v21)
      {
        v22 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v22, v111, v112, 286, v15);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(self);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(self);
      v27 = sel_getName(a2);
      *buf = 67110146;
      v124 = v25;
      v125 = 2082;
      v126 = v26;
      v127 = 2082;
      v128 = v27;
      v129 = 1024;
      v130 = 286;
      v131 = 2114;
      v132 = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
    }

    v28 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v15 code];
    v143[0] = NSLocalizedDescriptionKey;
    if ([v15 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v15 code];
    }

    v54 = [NSString stringWithUTF8String:off_1003158C8[code4]];
    v144[0] = v54;
    v144[1] = v15;
    v143[1] = NSUnderlyingErrorKey;
    v143[2] = @"Line";
    v144[2] = &off_10032FEF8;
    v143[3] = @"Method";
    v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v144[3] = v55;
    v143[4] = NSDebugDescriptionErrorKey;
    v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 287];
    v144[4] = v56;
    v57 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:5];
    v58 = [v28 initWithDomain:v16 code:code3 userInfo:v57];
  }

LABEL_63:

  return v58;
}

- (id)getHash:(id *)hash appletResult:(unsigned __int16 *)result
{
  v8 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
  v103 = 0;
  v9 = sub_100158A6C(&self->super.isa, v8, &v103);
  v10 = v103;

  if (v9)
  {
    if ([v9 status] == 36864)
    {
      v102 = v10;
      v11 = sub_100158334(&self->super.isa, 128, 6, 0, 0, 0, &v102);
      v12 = v102;

      if (v11)
      {
        *result = [v11 status];
        response = [v11 response];
        v14 = [response length];

        if (v14 > 0x1F)
        {
          response2 = [v11 response];
          [response2 subdataWithRange:{0, 32}];
          *hash = v36 = 0;
          v10 = v12;
        }

        else
        {
          v101 = v12;
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v16 = Logger;
            Class = object_getClass(self);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(self);
            Name = sel_getName(a2);
            response3 = [v11 response];
            v99 = [response3 length];
            v22 = 45;
            if (isMetaClass)
            {
              v22 = 43;
            }

            v16(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", v22, ClassName, Name, 371, v99);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = object_getClass(self);
            if (class_isMetaClass(v24))
            {
              v25 = 43;
            }

            else
            {
              v25 = 45;
            }

            v26 = object_getClassName(self);
            v27 = sel_getName(a2);
            response4 = [v11 response];
            v29 = [response4 length];
            *buf = 67110146;
            v117 = v25;
            v118 = 2082;
            v119 = v26;
            v120 = 2082;
            v121 = v27;
            v122 = 1024;
            v123 = 371;
            v124 = 2048;
            v125 = v29;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", buf, 0x2Cu);
          }

          v30 = [NSError alloc];
          response2 = [NSString stringWithUTF8String:"nfcd"];
          v104[0] = NSLocalizedDescriptionKey;
          v32 = [NSString stringWithUTF8String:"Unexpected Result"];
          v105[0] = v32;
          v105[1] = &off_10032FFD0;
          v104[1] = @"Line";
          v104[2] = @"Method";
          v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v105[2] = v33;
          v104[3] = NSDebugDescriptionErrorKey;
          v34 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 372];
          v105[3] = v34;
          v35 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:4];
          v36 = [v30 initWithDomain:response2 code:13 userInfo:v35];

          v10 = v101;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v75 = NFLogGetLogger();
        if (v75)
        {
          v76 = v75;
          v77 = object_getClass(self);
          v78 = class_isMetaClass(v77);
          v79 = object_getClassName(self);
          v98 = sel_getName(a2);
          v80 = 45;
          if (v78)
          {
            v80 = 43;
          }

          v76(3, "%c[%{public}s %{public}s]:%i Nil response", v80, v79, v98, 363);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v81 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          v82 = object_getClass(self);
          if (class_isMetaClass(v82))
          {
            v83 = 43;
          }

          else
          {
            v83 = 45;
          }

          v84 = object_getClassName(self);
          v85 = sel_getName(a2);
          *buf = 67109890;
          v117 = v83;
          v118 = 2082;
          v119 = v84;
          v120 = 2082;
          v121 = v85;
          v122 = 1024;
          v123 = 363;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
        }

        v86 = [NSError alloc];
        v10 = [NSString stringWithUTF8String:"nfcd"];
        if (v12)
        {
          code = [v12 code];
          v108[0] = NSLocalizedDescriptionKey;
          if ([v12 code] > 75)
          {
            code2 = 76;
          }

          else
          {
            code2 = [v12 code];
          }

          response2 = [NSString stringWithUTF8String:off_1003158C8[code2]];
          v109[0] = response2;
          v109[1] = v12;
          v108[1] = NSUnderlyingErrorKey;
          v108[2] = @"Line";
          v109[2] = &off_10032FFB8;
          v108[3] = @"Method";
          v91 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v109[3] = v91;
          v108[4] = NSDebugDescriptionErrorKey;
          v92 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 364];
          v109[4] = v92;
          [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:5];
          v94 = v93 = v12;
          v36 = [v86 initWithDomain:v10 code:code userInfo:v94];

          v11 = v10;
          v10 = v93;
        }

        else
        {
          v106[0] = NSLocalizedDescriptionKey;
          v11 = [NSString stringWithUTF8String:"Unknown Error"];
          v107[0] = v11;
          v107[1] = &off_10032FFB8;
          v106[1] = @"Line";
          v106[2] = @"Method";
          response2 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
          v107[2] = response2;
          v106[3] = NSDebugDescriptionErrorKey;
          v89 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 364];
          v107[3] = v89;
          v90 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:4];
          v36 = [v86 initWithDomain:v10 code:6 userInfo:v90];
        }
      }
    }

    else
    {
      *result = [v9 status];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(self);
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(self);
        v55 = sel_getName(a2);
        status = [v9 status];
        v56 = 45;
        if (v53)
        {
          v56 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v56, v54, v55, 349, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = object_getClass(self);
        if (class_isMetaClass(v58))
        {
          v59 = 43;
        }

        else
        {
          v59 = 45;
        }

        v60 = object_getClassName(self);
        v61 = sel_getName(a2);
        status2 = [v9 status];
        *buf = 67110146;
        v117 = v59;
        v118 = 2082;
        v119 = v60;
        v120 = 2082;
        v121 = v61;
        v122 = 1024;
        v123 = 349;
        v124 = 1024;
        LODWORD(v125) = status2;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
      }

      status3 = [v9 status];
      v64 = [NSError alloc];
      response2 = [NSString stringWithUTF8String:"nfcd"];
      if (status3 == 26277)
      {
        v112[0] = NSLocalizedDescriptionKey;
        v65 = [NSString stringWithUTF8String:"Restricted Mode"];
        v113[0] = v65;
        v113[1] = &off_10032FF88;
        v112[1] = @"Line";
        v112[2] = @"Method";
        v66 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v113[2] = v66;
        v112[3] = NSDebugDescriptionErrorKey;
        v67 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 351];
        v113[3] = v67;
        v68 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:4];
        v69 = v64;
        v70 = response2;
        v71 = 24;
      }

      else
      {
        v110[0] = NSLocalizedDescriptionKey;
        v65 = [NSString stringWithUTF8String:"Command Error"];
        v111[0] = v65;
        v111[1] = &off_10032FFA0;
        v110[1] = @"Line";
        v110[2] = @"Method";
        v66 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v111[2] = v66;
        v110[3] = NSDebugDescriptionErrorKey;
        v67 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 353];
        v111[3] = v67;
        v68 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:4];
        v69 = v64;
        v70 = response2;
        v71 = 16;
      }

      v36 = [v69 initWithDomain:v70 code:v71 userInfo:v68];

      v11 = v9;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(self);
      v40 = class_isMetaClass(v39);
      v96 = object_getClassName(self);
      v97 = sel_getName(a2);
      v41 = 45;
      if (v40)
      {
        v41 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v41, v96, v97, 344, v10);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(self);
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(self);
      v46 = sel_getName(a2);
      *buf = 67110146;
      v117 = v44;
      v118 = 2082;
      v119 = v45;
      v120 = 2082;
      v121 = v46;
      v122 = 1024;
      v123 = 344;
      v124 = 2114;
      v125 = v10;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
    }

    v47 = [NSError alloc];
    v11 = [NSString stringWithUTF8String:"nfcd"];
    code3 = [v10 code];
    v114[0] = NSLocalizedDescriptionKey;
    if ([v10 code] > 75)
    {
      code4 = 76;
    }

    else
    {
      code4 = [v10 code];
    }

    response2 = [NSString stringWithUTF8String:off_1003158C8[code4]];
    v115[0] = response2;
    v115[1] = v10;
    v114[1] = NSUnderlyingErrorKey;
    v114[2] = @"Line";
    v115[2] = &off_10032FF70;
    v114[3] = @"Method";
    v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v115[3] = v72;
    v114[4] = NSDebugDescriptionErrorKey;
    v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 345];
    v115[4] = v73;
    v74 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:5];
    v36 = [v47 initWithDomain:v11 code:code3 userInfo:v74];
  }

  return v36;
}

- (id)upgradeKey:(unsigned __int8)key inputData:(id)data outWriteCount:(unsigned int *)count appletResult:(unsigned __int16 *)result
{
  keyCopy = key;
  dataCopy = data;
  v12 = [[NSData alloc] initWithBytes:&unk_100296BE0 length:8];
  v107 = 0;
  v13 = sub_100158A6C(&self->super.isa, v12, &v107);
  v14 = v107;

  if (!v13)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v41 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v44 = 45;
      if (isMetaClass)
      {
        v44 = 43;
      }

      v41(3, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", v44, ClassName, Name, 389, v14);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = object_getClass(self);
      if (class_isMetaClass(v46))
      {
        v47 = 43;
      }

      else
      {
        v47 = 45;
      }

      v48 = object_getClassName(self);
      v49 = sel_getName(a2);
      *buf = 67110146;
      v119 = v47;
      v120 = 2082;
      v121 = v48;
      v122 = 2082;
      v123 = v49;
      v124 = 1024;
      v125 = 389;
      v126 = 2114;
      v127 = v14;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: %{public}@", buf, 0x2Cu);
    }

    v50 = a2;

    v51 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    code = [v14 code];
    v116[0] = NSLocalizedDescriptionKey;
    v53 = dataCopy;
    if ([v14 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [v14 code];
    }

    v78 = [NSString stringWithUTF8String:off_1003158C8[code2]];
    v117[0] = v78;
    v117[1] = v14;
    v116[1] = NSUnderlyingErrorKey;
    v116[2] = @"Line";
    v117[2] = &off_10032FFE8;
    v116[3] = @"Method";
    v79 = [[NSString alloc] initWithFormat:@"%s", sel_getName(v50)];
    v117[3] = v79;
    v116[4] = NSDebugDescriptionErrorKey;
    v80 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(v50), 390];
    v117[4] = v80;
    v81 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:5];
    v82 = v51;
    goto LABEL_55;
  }

  if ([v13 status] == 36864)
  {
    v106 = v14;
    v15 = sub_100158334(&self->super.isa, 128, 7, keyCopy, 0, dataCopy, &v106);
    v102 = v106;

    if (v15)
    {
      *result = [v15 status];
      response = [v15 response];
      v17 = [response length];

      if (v17 > 3)
      {
        response2 = [v15 response];
        *count = *[response2 bytes];

        v39 = 0;
        *count = bswap32(*count);
        v14 = v102;
      }

      else
      {
        v103 = dataCopy;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v19 = v18;
          v20 = object_getClass(self);
          v21 = class_isMetaClass(v20);
          v22 = object_getClassName(self);
          v23 = sel_getName(a2);
          response3 = [v15 response];
          v100 = [response3 length];
          v25 = 45;
          if (v21)
          {
            v25 = 43;
          }

          v19(3, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", v25, v22, v23, 416, v100);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = object_getClass(self);
          if (class_isMetaClass(v27))
          {
            v28 = 43;
          }

          else
          {
            v28 = 45;
          }

          v29 = object_getClassName(self);
          v30 = sel_getName(a2);
          response4 = [v15 response];
          v32 = [response4 length];
          *buf = 67110146;
          v119 = v28;
          v120 = 2082;
          v121 = v29;
          v122 = 2082;
          v123 = v30;
          v124 = 1024;
          v125 = 416;
          v126 = 2048;
          v127 = v32;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid response length: %lu", buf, 0x2Cu);
        }

        v33 = [NSError alloc];
        v34 = [NSString stringWithUTF8String:"nfcd"];
        v108[0] = NSLocalizedDescriptionKey;
        v35 = [NSString stringWithUTF8String:"Unexpected Result"];
        v109[0] = v35;
        v109[1] = &off_100330048;
        v108[1] = @"Line";
        v108[2] = @"Method";
        v36 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
        v109[2] = v36;
        v108[3] = NSDebugDescriptionErrorKey;
        v37 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 417];
        v109[3] = v37;
        v38 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:4];
        v39 = [v33 initWithDomain:v34 code:13 userInfo:v38];

        v14 = v102;
        dataCopy = v103;
      }

      goto LABEL_56;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v83 = NFLogGetLogger();
    if (v83)
    {
      v84 = v83;
      v85 = object_getClass(self);
      v86 = class_isMetaClass(v85);
      v87 = object_getClassName(self);
      v99 = sel_getName(a2);
      v88 = 45;
      if (v86)
      {
        v88 = 43;
      }

      v84(3, "%c[%{public}s %{public}s]:%i Nil response", v88, v87, v99, 408);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v89 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v90 = object_getClass(self);
      if (class_isMetaClass(v90))
      {
        v91 = 43;
      }

      else
      {
        v91 = 45;
      }

      v92 = object_getClassName(self);
      v93 = sel_getName(a2);
      *buf = 67109890;
      v119 = v91;
      v120 = 2082;
      v121 = v92;
      v122 = 2082;
      v123 = v93;
      v124 = 1024;
      v125 = 408;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Nil response", buf, 0x22u);
    }

    v105 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    code = [v102 code];
    v110[0] = NSLocalizedDescriptionKey;
    v53 = dataCopy;
    if ([v102 code] > 75)
    {
      code3 = 76;
    }

    else
    {
      code3 = [v102 code];
    }

    v78 = [NSString stringWithUTF8String:off_1003158C8[code3]];
    v111[0] = v78;
    v111[1] = v102;
    v110[1] = NSUnderlyingErrorKey;
    v110[2] = @"Line";
    v111[2] = &off_100330030;
    v110[3] = @"Method";
    v14 = v102;
    v79 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v111[3] = v79;
    v110[4] = NSDebugDescriptionErrorKey;
    v80 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 409];
    v111[4] = v80;
    v81 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:5];
    v82 = v105;
LABEL_55:
    v39 = [v82 initWithDomain:v15 code:code userInfo:v81];

    dataCopy = v53;
    goto LABEL_56;
  }

  v104 = dataCopy;
  *result = [v13 status];
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v55 = NFLogGetLogger();
  if (v55)
  {
    v56 = v55;
    v57 = object_getClass(self);
    v58 = class_isMetaClass(v57);
    v59 = object_getClassName(self);
    v60 = sel_getName(a2);
    status = [v13 status];
    v61 = 45;
    if (v58)
    {
      v61 = 43;
    }

    v56(3, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", v61, v59, v60, 394, status);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v62 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v63 = object_getClass(self);
    if (class_isMetaClass(v63))
    {
      v64 = 43;
    }

    else
    {
      v64 = 45;
    }

    v65 = object_getClassName(self);
    v66 = sel_getName(a2);
    status2 = [v13 status];
    *buf = 67110146;
    v119 = v64;
    v120 = 2082;
    v121 = v65;
    v122 = 2082;
    v123 = v66;
    v124 = 1024;
    v125 = 394;
    v126 = 1024;
    LODWORD(v127) = status2;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select applet: 0x%04x", buf, 0x28u);
  }

  status3 = [v13 status];
  v69 = [NSError alloc];
  v70 = [NSString stringWithUTF8String:"nfcd"];
  if (status3 == 26277)
  {
    v114[0] = NSLocalizedDescriptionKey;
    v71 = [NSString stringWithUTF8String:"Restricted Mode"];
    v115[0] = v71;
    v115[1] = &off_100330000;
    v114[1] = @"Line";
    v114[2] = @"Method";
    v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v115[2] = v72;
    v114[3] = NSDebugDescriptionErrorKey;
    v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 396];
    v115[3] = v73;
    v74 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:4];
    v75 = v69;
    v76 = v70;
    v77 = 24;
  }

  else
  {
    v112[0] = NSLocalizedDescriptionKey;
    v71 = [NSString stringWithUTF8String:"Command Error"];
    v113[0] = v71;
    v113[1] = &off_100330018;
    v112[1] = @"Line";
    v112[2] = @"Method";
    v72 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v113[2] = v72;
    v112[3] = NSDebugDescriptionErrorKey;
    v73 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 398];
    v113[3] = v73;
    v74 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:4];
    v75 = v69;
    v76 = v70;
    v77 = 16;
  }

  v39 = [v75 initWithDomain:v76 code:v77 userInfo:v74];

  v15 = v13;
  dataCopy = v104;
LABEL_56:

  return v39;
}

- (id)recoverSLAM
{
  selfCopy = self;
  objc_opt_self();
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self);
  }

  v6 = [SLAMObjC PerformRecovery:v5 logSink:v5];

  return v6;
}

- (NFSecureElementWrapper)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = NFSecureElementWrapper;
  v6 = [(NFSecureElementWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (BOOL)isProd
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  v3 = [info signingKeyType] == 2;

  return v3;
}

- (BOOL)hasMultiOS
{
  if ([(NFSecureElementHandleInterface *)self->_handle identifier]!= 1)
  {
    return 0;
  }

  info = [(NFSecureElementHandleInterface *)self->_handle info];
  v4 = [info seType] == 6;

  return v4;
}

- (BOOL)isOperational
{
  handle = self->_handle;
  if (!handle)
  {
    return 1;
  }

  info = [(NFSecureElementHandleInterface *)handle info];
  if ([info OSMode] == 2)
  {
    info2 = [(NFSecureElementHandleInterface *)self->_handle info];
    migrationState = [info2 migrationState];

    if (migrationState == 1)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (NSString)serialNumber
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  serialNumber = [info serialNumber];

  return serialNumber;
}

- (NSData)serialNumberAsData
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  serialNumber = [info serialNumber];
  v4 = [NSData NF_dataWithHexString:serialNumber];

  return v4;
}

- (NSString)systemOSSerialNumber
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  systemOSSerialNumber = [info systemOSSerialNumber];

  return systemOSSerialNumber;
}

- (NSData)systemOSSerialNumberAsData
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  systemOSSerialNumber = [info systemOSSerialNumber];
  v4 = [NSData NF_dataWithHexString:systemOSSerialNumber];

  return v4;
}

- (NSString)rsaCertificate
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  rsaCertificate = [info rsaCertificate];

  return rsaCertificate;
}

- (NSString)eccCertificate
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  ecdsaCertificate = [info ecdsaCertificate];

  return ecdsaCertificate;
}

- (NSString)eckaCertificate
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  eckaCertificate = [info eckaCertificate];

  return eckaCertificate;
}

- (unint64_t)supportedTechnologies
{
  info = [(NFSecureElementHandleInterface *)self->_handle info];
  supportedTechnologies = [info supportedTechnologies];

  return supportedTechnologies;
}

- (NFSecureElementWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (unint64_t)_crsGetPersoState:(id *)state
{
  *state = 0;
  v6 = sub_100158A28(&self->super.isa, 128, 211, 0, state);
  v7 = v6;
  if (*state)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to get data: %{public}@", v14, ClassName, Name, 58, *state);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(self);
      v19 = sel_getName(a2);
      v20 = *state;
      *buf = 67110146;
      v118 = v17;
      v119 = 2082;
      v120 = v18;
      v121 = 2082;
      v122 = v19;
      v123 = 1024;
      v124 = 58;
      v125 = 2114;
      v126 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get data: %{public}@", buf, 0x2Cu);
    }

    goto LABEL_52;
  }

  if (!v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v44 = NFLogGetLogger();
    if (v44)
    {
      v45 = v44;
      v46 = object_getClass(self);
      v47 = class_isMetaClass(v46);
      v48 = object_getClassName(self);
      v102 = sel_getName(a2);
      v49 = 45;
      if (v47)
      {
        v49 = 43;
      }

      v45(3, "%c[%{public}s %{public}s]:%i Failed to get data, expecting RAPDU", v49, v48, v102, 62);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = object_getClass(self);
      if (class_isMetaClass(v51))
      {
        v52 = 43;
      }

      else
      {
        v52 = 45;
      }

      *buf = 67109890;
      v118 = v52;
      v119 = 2082;
      v120 = object_getClassName(self);
      v121 = 2082;
      v122 = sel_getName(a2);
      v123 = 1024;
      v124 = 62;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get data, expecting RAPDU", buf, 0x22u);
    }

    v53 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v115[0] = NSLocalizedDescriptionKey;
    v54 = [NSString stringWithUTF8String:"Command Error"];
    v116[0] = v54;
    v116[1] = &off_100336390;
    v115[1] = @"Line";
    v115[2] = @"Method";
    v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v116[2] = v55;
    v115[3] = NSDebugDescriptionErrorKey;
    v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 63];
    v116[3] = v56;
    v57 = v116;
    v58 = v115;
    goto LABEL_50;
  }

  if ([v6 status] != 36864)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v59 = NFLogGetLogger();
    if (v59)
    {
      v60 = v59;
      v61 = object_getClass(self);
      v62 = class_isMetaClass(v61);
      v63 = object_getClassName(self);
      v64 = sel_getName(a2);
      status = [v7 status];
      v65 = 45;
      if (v62)
      {
        v65 = 43;
      }

      v60(3, "%c[%{public}s %{public}s]:%i Failed to get perso request, expecting 0x9000, got 0x%x", v65, v63, v64, 67, status);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v66 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = object_getClass(self);
      if (class_isMetaClass(v67))
      {
        v68 = 43;
      }

      else
      {
        v68 = 45;
      }

      *buf = 67110146;
      v118 = v68;
      v119 = 2082;
      v120 = object_getClassName(self);
      v121 = 2082;
      v122 = sel_getName(a2);
      v123 = 1024;
      v124 = 67;
      v125 = 1024;
      LODWORD(v126) = [v7 status];
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get perso request, expecting 0x9000, got 0x%x", buf, 0x28u);
    }

    v53 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v113[0] = NSLocalizedDescriptionKey;
    v54 = [NSString stringWithUTF8String:"Command Error"];
    v114[0] = v54;
    v114[1] = &off_1003363A8;
    v113[1] = @"Line";
    v113[2] = @"Method";
    v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v114[2] = v55;
    v113[3] = NSDebugDescriptionErrorKey;
    v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 68];
    v114[3] = v56;
    v57 = v114;
    v58 = v113;
LABEL_50:
    v69 = [NSDictionary dictionaryWithObjects:v57 forKeys:v58 count:4];
    v70 = v53;
    v71 = v15;
    v72 = 16;
LABEL_51:
    *state = [v70 initWithDomain:v71 code:v72 userInfo:v69];

LABEL_52:
    v22 = 0;
LABEL_53:
    v43 = 3;
    goto LABEL_54;
  }

  response = [v7 response];
  v22 = [NFTLV TLVWithData:response];

  if (!v22)
  {
    v74 = [NSError alloc];
    v15 = [NSString stringWithUTF8String:"nfcd"];
    v111[0] = NSLocalizedDescriptionKey;
    v54 = [NSString stringWithUTF8String:"Unexpected Result"];
    v112[0] = v54;
    v112[1] = &off_1003363C0;
    v111[1] = @"Line";
    v111[2] = @"Method";
    v55 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v112[2] = v55;
    v111[3] = NSDebugDescriptionErrorKey;
    v56 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 74];
    v112[3] = v56;
    v69 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
    v70 = v74;
    v71 = v15;
    v72 = 13;
    goto LABEL_51;
  }

  if ([v22 tag] != 211)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v75 = NFLogGetLogger();
    if (v75)
    {
      v76 = v75;
      v77 = object_getClass(self);
      v78 = class_isMetaClass(v77);
      v79 = object_getClassName(self);
      v80 = sel_getName(a2);
      v106 = [v22 tag];
      v81 = 45;
      if (v78)
      {
        v81 = 43;
      }

      v76(3, "%c[%{public}s %{public}s]:%i Unexpeted tag 0x%x", v81, v79, v80, 79, v106);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v82 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = object_getClass(self);
      if (class_isMetaClass(v83))
      {
        v84 = 43;
      }

      else
      {
        v84 = 45;
      }

      *buf = 67110146;
      v118 = v84;
      v119 = 2082;
      v120 = object_getClassName(self);
      v121 = 2082;
      v122 = sel_getName(a2);
      v123 = 1024;
      v124 = 79;
      v125 = 1024;
      LODWORD(v126) = [v22 tag];
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpeted tag 0x%x", buf, 0x28u);
    }

    v85 = [NSError alloc];
    v86 = [NSString stringWithUTF8String:"nfcd"];
    v109[0] = NSLocalizedDescriptionKey;
    v87 = [NSString stringWithUTF8String:"Unexpected Result"];
    v110[0] = v87;
    v110[1] = &off_1003363D8;
    v109[1] = @"Line";
    v109[2] = @"Method";
    v88 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v110[2] = v88;
    v109[3] = NSDebugDescriptionErrorKey;
    v89 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 80];
    v110[3] = v89;
    v90 = v110;
    v91 = v109;
    goto LABEL_77;
  }

  value = [v22 value];
  if (![value length])
  {

    goto LABEL_67;
  }

  value2 = [v22 value];
  bytes = [value2 bytes];

  if (!bytes)
  {
LABEL_67:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v92 = NFLogGetLogger();
    if (v92)
    {
      v93 = v92;
      v94 = object_getClass(self);
      v95 = class_isMetaClass(v94);
      v96 = object_getClassName(self);
      v103 = sel_getName(a2);
      v97 = 45;
      if (v95)
      {
        v97 = 43;
      }

      v93(3, "%c[%{public}s %{public}s]:%i Unexpeted zero tag length", v97, v96, v103, 84);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v98 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = object_getClass(self);
      if (class_isMetaClass(v99))
      {
        v100 = 43;
      }

      else
      {
        v100 = 45;
      }

      *buf = 67109890;
      v118 = v100;
      v119 = 2082;
      v120 = object_getClassName(self);
      v121 = 2082;
      v122 = sel_getName(a2);
      v123 = 1024;
      v124 = 84;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpeted zero tag length", buf, 0x22u);
    }

    v85 = [NSError alloc];
    v86 = [NSString stringWithUTF8String:"nfcd"];
    v107[0] = NSLocalizedDescriptionKey;
    v87 = [NSString stringWithUTF8String:"Unexpected Result"];
    v108[0] = v87;
    v108[1] = &off_1003363F0;
    v107[1] = @"Line";
    v107[2] = @"Method";
    v88 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v108[2] = v88;
    v107[3] = NSDebugDescriptionErrorKey;
    v89 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 85];
    v108[3] = v89;
    v90 = v108;
    v91 = v107;
LABEL_77:
    v101 = [NSDictionary dictionaryWithObjects:v90 forKeys:v91 count:4];
    *state = [v85 initWithDomain:v86 code:13 userInfo:v101];

    goto LABEL_53;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v27 = v26;
    v28 = object_getClass(self);
    v29 = class_isMetaClass(v28);
    v30 = object_getClassName(self);
    v31 = sel_getName(a2);
    value3 = [v22 value];
    v104 = *[value3 bytes];
    v33 = 45;
    if (v29)
    {
      v33 = 43;
    }

    v27(6, "%c[%{public}s %{public}s]:%i Perso state is %x", v33, v30, v31, 89, v104);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v34 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = object_getClass(self);
    if (class_isMetaClass(v35))
    {
      v36 = 43;
    }

    else
    {
      v36 = 45;
    }

    v37 = object_getClassName(self);
    v38 = sel_getName(a2);
    value4 = [v22 value];
    v40 = *[value4 bytes];
    *buf = 67110146;
    v118 = v36;
    v119 = 2082;
    v120 = v37;
    v121 = 2082;
    v122 = v38;
    v123 = 1024;
    v124 = 89;
    v125 = 1024;
    LODWORD(v126) = v40;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Perso state is %x", buf, 0x28u);
  }

  value5 = [v22 value];
  v42 = *[value5 bytes];

  if (v42 == 90)
  {
    v43 = 0;
    goto LABEL_54;
  }

  if (v42 == 197)
  {
    v43 = 2;
    goto LABEL_54;
  }

  if (v42 != 195)
  {
    goto LABEL_53;
  }

  v43 = 1;
LABEL_54:

  return v43;
}

- (id)_crsGetSharingRequest:(id *)request signature:(id *)signature
{
  v76 = 0;
  v8 = sub_10015837C(&self->super.isa, 128, 229, 0, 0, 0, 0, 0, &v76);
  v9 = v76;
  if (!v9)
  {
    if ([v8 status] == 36864)
    {
      response = [v8 response];
      v25 = [response length];

      if (v25 > 0x41)
      {
        response2 = [v8 response];
        v69 = [response2 length] - 65;

        response3 = [v8 response];
        *request = [response3 subdataWithRange:{0, 65}];

        response4 = [v8 response];
        [response4 subdataWithRange:{65, v69}];
        *signature = v53 = 0;
        goto LABEL_39;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v27 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        response5 = [v8 response];
        v74 = [response5 length];
        v33 = 45;
        if (isMetaClass)
        {
          v33 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i Invalid length %lu", v33, ClassName, Name, 130, v74);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = object_getClass(self);
        if (class_isMetaClass(v35))
        {
          v36 = 43;
        }

        else
        {
          v36 = 45;
        }

        v37 = object_getClassName(self);
        v38 = sel_getName(a2);
        response6 = [v8 response];
        v40 = [response6 length];
        *buf = 67110146;
        v84 = v36;
        v85 = 2082;
        v86 = v37;
        v87 = 2082;
        v88 = v38;
        v89 = 1024;
        v90 = 130;
        v91 = 2048;
        v92 = v40;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalid length %lu", buf, 0x2Cu);
      }

      v41 = [NSError alloc];
      response4 = [NSString stringWithUTF8String:"nfcd"];
      v77[0] = NSLocalizedDescriptionKey;
      v42 = [NSString stringWithUTF8String:"Unexpected Result"];
      v78[0] = v42;
      v78[1] = &off_100336438;
      v77[1] = @"Line";
      v77[2] = @"Method";
      v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v78[2] = v43;
      v77[3] = NSDebugDescriptionErrorKey;
      v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 131];
      v78[3] = v44;
      v45 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:4];
      v46 = v41;
      v47 = response4;
      v48 = 13;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(self);
        v57 = class_isMetaClass(v56);
        v58 = object_getClassName(self);
        v59 = sel_getName(a2);
        status = [v8 status];
        v60 = 45;
        if (v57)
        {
          v60 = 43;
        }

        v55(3, "%c[%{public}s %{public}s]:%i Failed to get sharing request, expecting 0x9000, got 0x%x", v60, v58, v59, 124, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = object_getClass(self);
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        v64 = object_getClassName(self);
        v65 = sel_getName(a2);
        status2 = [v8 status];
        *buf = 67110146;
        v84 = v63;
        v85 = 2082;
        v86 = v64;
        v87 = 2082;
        v88 = v65;
        v89 = 1024;
        v90 = 124;
        v91 = 1024;
        LODWORD(v92) = status2;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get sharing request, expecting 0x9000, got 0x%x", buf, 0x28u);
      }

      v67 = [NSError alloc];
      response4 = [NSString stringWithUTF8String:"nfcd"];
      v79[0] = NSLocalizedDescriptionKey;
      v42 = [NSString stringWithUTF8String:"Command Error"];
      v80[0] = v42;
      v80[1] = &off_100336420;
      v79[1] = @"Line";
      v79[2] = @"Method";
      v43 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v80[2] = v43;
      v79[3] = NSDebugDescriptionErrorKey;
      v44 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 125];
      v80[3] = v44;
      v45 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
      v46 = v67;
      v47 = response4;
      v48 = 16;
    }

    v53 = [v46 initWithDomain:v47 code:v48 userInfo:v45];

    goto LABEL_39;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v11 = v10;
    v12 = object_getClass(self);
    v13 = class_isMetaClass(v12);
    v72 = object_getClassName(self);
    v73 = sel_getName(a2);
    v14 = 45;
    if (v13)
    {
      v14 = 43;
    }

    v11(3, "%c[%{public}s %{public}s]:%i Failed to get sharing request: %{public}@", v14, v72, v73, 119, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(self);
    v19 = sel_getName(a2);
    *buf = 67110146;
    v84 = v17;
    v85 = 2082;
    v86 = v18;
    v87 = 2082;
    v88 = v19;
    v89 = 1024;
    v90 = 119;
    v91 = 2114;
    v92 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get sharing request: %{public}@", buf, 0x2Cu);
  }

  v20 = [NSError alloc];
  response4 = [NSString stringWithUTF8String:"nfcd"];
  code = [v9 code];
  v81[0] = NSLocalizedDescriptionKey;
  if ([v9 code] > 75)
  {
    code2 = 76;
  }

  else
  {
    code2 = [v9 code];
  }

  v49 = [NSString stringWithUTF8String:(&off_10031C5D0)[code2]];
  v82[0] = v49;
  v82[1] = v9;
  v81[1] = NSUnderlyingErrorKey;
  v81[2] = @"Line";
  v82[2] = &off_100336408;
  v81[3] = @"Method";
  v50 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
  v82[3] = v50;
  v81[4] = NSDebugDescriptionErrorKey;
  v51 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 120];
  v82[4] = v51;
  v52 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:5];
  v53 = [v20 initWithDomain:response4 code:code userInfo:v52];

LABEL_39:

  return v53;
}

- (id)_crsSetSharingResult:(id)result signature:(id)signature
{
  signatureCopy = signature;
  resultCopy = result;
  v9 = +[NSMutableData data];
  [v9 appendData:resultCopy];

  [v9 appendData:signatureCopy];
  v66 = 0;
  v10 = sub_10015837C(&self->super.isa, 128, 230, 0, 0, v9, 0, 0, &v66);
  v11 = v66;
  if (v11)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i Failed to set sharing result: %{public}@", v16, ClassName, Name, 159, v11);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFSharedLogGetLogger();
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
      *buf = 67110146;
      v74 = v19;
      v75 = 2082;
      v76 = v20;
      v77 = 2082;
      v78 = v21;
      v79 = 1024;
      v80 = 159;
      v81 = 2114;
      v82 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set sharing result: %{public}@", buf, 0x2Cu);
    }

    v22 = [NSError alloc];
    v23 = [NSString stringWithUTF8String:"nfcd"];
    code = [v11 code];
    v71[0] = NSLocalizedDescriptionKey;
    if ([v11 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [v11 code];
    }

    v27 = [NSString stringWithUTF8String:(&off_10031C5D0)[code2]];
    v72[0] = v27;
    v72[1] = v11;
    v71[1] = NSUnderlyingErrorKey;
    v71[2] = @"Line";
    v72[2] = &off_100336450;
    v71[3] = @"Method";
    v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v72[3] = v28;
    v71[4] = NSDebugDescriptionErrorKey;
    v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 160];
    v72[4] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:5];
    v31 = v22;
    v32 = v23;
    v33 = code;
  }

  else
  {
    if (v10)
    {
      if ([v10 status] == 36864)
      {
        v26 = 0;
        goto LABEL_40;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFLogGetLogger();
      if (v48)
      {
        v49 = v48;
        v50 = object_getClass(self);
        v51 = class_isMetaClass(v50);
        v52 = object_getClassName(self);
        v53 = sel_getName(a2);
        status = [v10 status];
        v54 = 45;
        if (v51)
        {
          v54 = 43;
        }

        v49(3, "%c[%{public}s %{public}s]:%i Failed to set sharing result, expecting 0x9000, got 0x%x", v54, v52, v53, 167, status);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = object_getClass(self);
        if (class_isMetaClass(v56))
        {
          v57 = 43;
        }

        else
        {
          v57 = 45;
        }

        v58 = object_getClassName(self);
        v59 = sel_getName(a2);
        status2 = [v10 status];
        *buf = 67110146;
        v74 = v57;
        v75 = 2082;
        v76 = v58;
        v77 = 2082;
        v78 = v59;
        v79 = 1024;
        v80 = 167;
        v81 = 1024;
        LODWORD(v82) = status2;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set sharing result, expecting 0x9000, got 0x%x", buf, 0x28u);
      }

      v45 = [NSError alloc];
      v23 = [NSString stringWithUTF8String:"nfcd"];
      v67[0] = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Command Error"];
      v68[0] = v27;
      v68[1] = &off_100336480;
      v67[1] = @"Line";
      v67[2] = @"Method";
      v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v68[2] = v28;
      v67[3] = NSDebugDescriptionErrorKey;
      v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 168];
      v68[3] = v29;
      v46 = v68;
      v47 = v67;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFLogGetLogger();
      if (v34)
      {
        v35 = v34;
        v36 = object_getClass(self);
        v37 = class_isMetaClass(v36);
        v38 = object_getClassName(self);
        v64 = sel_getName(a2);
        v39 = 45;
        if (v37)
        {
          v39 = 43;
        }

        v35(3, "%c[%{public}s %{public}s]:%i Failed to set sharing result, expecting RAPDU", v39, v38, v64, 163);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v40 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = object_getClass(self);
        if (class_isMetaClass(v41))
        {
          v42 = 43;
        }

        else
        {
          v42 = 45;
        }

        v43 = object_getClassName(self);
        v44 = sel_getName(a2);
        *buf = 67109890;
        v74 = v42;
        v75 = 2082;
        v76 = v43;
        v77 = 2082;
        v78 = v44;
        v79 = 1024;
        v80 = 163;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set sharing result, expecting RAPDU", buf, 0x22u);
      }

      v45 = [NSError alloc];
      v23 = [NSString stringWithUTF8String:"nfcd"];
      v69[0] = NSLocalizedDescriptionKey;
      v27 = [NSString stringWithUTF8String:"Command Error"];
      v70[0] = v27;
      v70[1] = &off_100336468;
      v69[1] = @"Line";
      v69[2] = @"Method";
      v28 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v70[2] = v28;
      v69[3] = NSDebugDescriptionErrorKey;
      v29 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 164];
      v70[3] = v29;
      v46 = v70;
      v47 = v69;
    }

    v30 = [NSDictionary dictionaryWithObjects:v46 forKeys:v47 count:4];
    v31 = v45;
    v32 = v23;
    v33 = 16;
  }

  v26 = [v31 initWithDomain:v32 code:v33 userInfo:v30];

LABEL_40:

  return v26;
}

- (id)performSharing
{
  v31 = 0;
  v32 = 0;
  v4 = [(NFSecureElementWrapper *)self _crsGetSharingRequest:&v32 signature:&v31];
  v5 = v32;
  v6 = v31;
  v28 = v6;
  if (v4)
  {
    v7 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    code = [v4 code];
    v37[0] = NSLocalizedDescriptionKey;
    v10 = v5;
    if ([v4 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [v4 code];
    }

    v17 = [NSString stringWithUTF8String:(&off_10031C5D0)[code2]];
    v38[0] = v17;
    v38[1] = v4;
    v37[1] = NSUnderlyingErrorKey;
    v37[2] = @"Line";
    v38[2] = &off_100336498;
    v37[3] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v38[3] = v18;
    v37[4] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 184];
    v38[4] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:5];
    v21 = [v7 initWithDomain:v8 code:code userInfo:v20];
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v12 = v6;
    serialNumberAsData = [(NFSecureElementWrapper *)self serialNumberAsData];
    v29 = 0;
    v30 = 0;
    v4 = sub_10022E394(NFSSEWrapper, v5, v12, serialNumberAsData, &v30, &v29);
    v14 = v30;
    v15 = v29;

    if (v4)
    {
      v27 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      code3 = [v4 code];
      v35[0] = NSLocalizedDescriptionKey;
      v10 = v5;
      if ([v4 code] > 75)
      {
        code4 = 76;
      }

      else
      {
        code4 = [v4 code];
      }

      v17 = [NSString stringWithUTF8String:(&off_10031C5D0)[code4]];
      v36[0] = v17;
      v36[1] = v4;
      v35[1] = NSUnderlyingErrorKey;
      v35[2] = @"Line";
      v36[2] = &off_1003364B0;
      v35[3] = @"Method";
      v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v36[3] = v18;
      v35[4] = NSDebugDescriptionErrorKey;
      v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 193];
      v36[4] = v19;
      v23 = v36;
      v24 = v35;
    }

    else
    {
      v4 = [(NFSecureElementWrapper *)self _crsSetSharingResult:v14 signature:v15];
      if (!v4)
      {
        v21 = 0;
        goto LABEL_19;
      }

      v27 = [NSError alloc];
      v8 = [NSString stringWithUTF8String:"nfcd"];
      code3 = [v4 code];
      v33[0] = NSLocalizedDescriptionKey;
      v10 = v5;
      if ([v4 code] > 75)
      {
        code5 = 76;
      }

      else
      {
        code5 = [v4 code];
      }

      v17 = [NSString stringWithUTF8String:(&off_10031C5D0)[code5]];
      v34[0] = v17;
      v34[1] = v4;
      v33[1] = NSUnderlyingErrorKey;
      v33[2] = @"Line";
      v34[2] = &off_1003364C8;
      v33[3] = @"Method";
      v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v34[3] = v18;
      v33[4] = NSDebugDescriptionErrorKey;
      v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 198];
      v34[4] = v19;
      v23 = v34;
      v24 = v33;
    }

    v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:5];
    v21 = [v27 initWithDomain:v8 code:code3 userInfo:v20];
  }

  v5 = v10;
  v12 = v28;
LABEL_19:

  return v21;
}

- (id)checkPairing
{
  v4 = sub_1001FF7BC(self, 0xFFFFFFFFLL);
  if (v4)
  {
    v5 = v4;
    v6 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v8 = v5;
    v16[0] = NSLocalizedDescriptionKey;
    if (v5 >= 0x4C)
    {
      v9 = 76;
    }

    else
    {
      v9 = v5;
    }

    v10 = [NSString stringWithUTF8String:(&off_10031C5D0)[v9]];
    v17[0] = v10;
    v17[1] = &off_1003364E0;
    v16[1] = @"Line";
    v16[2] = @"Method";
    v11 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v17[2] = v11;
    v16[3] = NSDebugDescriptionErrorKey;
    v12 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 217];
    v17[3] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
    v14 = [v6 initWithDomain:v7 code:v8 userInfo:v13];

    [(NFSecureElementWrapper *)self setUnpairedState];
  }

  else
  {
    [(NFSecureElementWrapper *)self storePairedState];
    v14 = 0;
  }

  return v14;
}

- (id)checkPerBootAuthKeysAreStillPresent
{
  if (!sub_10015CAD8(self))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v22 = 45;
      if (isMetaClass)
      {
        v22 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i JCOP doesn't support per boot auth keys", v22, ClassName, Name, 229);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    serialNumberAsData = NFSharedLogGetLogger();
    if (!os_log_type_enabled(serialNumberAsData, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v23 = object_getClass(self);
    if (class_isMetaClass(v23))
    {
      v24 = 43;
    }

    else
    {
      v24 = 45;
    }

    *buf = 67109890;
    v64 = v24;
    v65 = 2082;
    v66 = object_getClassName(self);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 229;
    v25 = "%c[%{public}s %{public}s]:%i JCOP doesn't support per boot auth keys";
LABEL_33:
    v34 = serialNumberAsData;
    v35 = 34;
    goto LABEL_34;
  }

  if (!sub_10022D900(NFSSEWrapper))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v27 = v26;
      v28 = object_getClass(self);
      v29 = class_isMetaClass(v28);
      v30 = object_getClassName(self);
      v58 = sel_getName(a2);
      v31 = 45;
      if (v29)
      {
        v31 = 43;
      }

      v27(6, "%c[%{public}s %{public}s]:%i SSE does not support pairing V2", v31, v30, v58, 234);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    serialNumberAsData = NFSharedLogGetLogger();
    if (!os_log_type_enabled(serialNumberAsData, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
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
    v64 = v33;
    v65 = 2082;
    v66 = object_getClassName(self);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 234;
    v25 = "%c[%{public}s %{public}s]:%i SSE does not support pairing V2";
    goto LABEL_33;
  }

  pairedState = [(NFSecureElementWrapper *)self pairedState];
  if (pairedState != 2)
  {
    v37 = pairedState;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(self);
      v41 = class_isMetaClass(v40);
      v55 = object_getClassName(self);
      v59 = sel_getName(a2);
      v42 = 45;
      if (v41)
      {
        v42 = 43;
      }

      v39(6, "%c[%{public}s %{public}s]:%i Pairing state is %lu, not re-negotiating", v42, v55, v59, 240, v37);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    serialNumberAsData = NFSharedLogGetLogger();
    if (!os_log_type_enabled(serialNumberAsData, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v43 = object_getClass(self);
    if (class_isMetaClass(v43))
    {
      v44 = 43;
    }

    else
    {
      v44 = 45;
    }

    *buf = 67110146;
    v64 = v44;
    v65 = 2082;
    v66 = object_getClassName(self);
    v67 = 2082;
    v68 = sel_getName(a2);
    v69 = 1024;
    v70 = 240;
    v71 = 2048;
    v72 = v37;
    v25 = "%c[%{public}s %{public}s]:%i Pairing state is %lu, not re-negotiating";
    v34 = serialNumberAsData;
    v35 = 44;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v25, buf, v35);
LABEL_35:
    v16 = 0;
    goto LABEL_36;
  }

  serialNumberAsData = [(NFSecureElementWrapper *)self serialNumberAsData];
  v6 = sub_10022D948(NFSSEWrapper, serialNumberAsData);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v7 = NFLogGetLogger();
  v8 = v7;
  if (v6 == 3)
  {
    if (v7)
    {
      v9 = object_getClass(self);
      v10 = class_isMetaClass(v9);
      v11 = object_getClassName(self);
      v56 = sel_getName(a2);
      v12 = 45;
      if (v10)
      {
        v12 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i sharingState is %hhu", v12, v11, v56, 251, 3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(self);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67110146;
      v64 = v15;
      v65 = 2082;
      v66 = object_getClassName(self);
      v67 = 2082;
      v68 = sel_getName(a2);
      v69 = 1024;
      v70 = 251;
      v71 = 1024;
      LODWORD(v72) = 3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sharingState is %hhu", buf, 0x28u);
    }

    v16 = 0;
  }

  else
  {
    if (v7)
    {
      v45 = object_getClass(self);
      v46 = class_isMetaClass(v45);
      v47 = object_getClassName(self);
      v60 = sel_getName(a2);
      v48 = 45;
      if (v46)
      {
        v48 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Error : SEP lost it again...", v48, v47, v60, 247);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v49 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = object_getClass(self);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      *buf = 67109890;
      v64 = v51;
      v65 = 2082;
      v66 = object_getClassName(self);
      v67 = 2082;
      v68 = sel_getName(a2);
      v69 = 1024;
      v70 = 247;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : SEP lost it again...", buf, 0x22u);
    }

    qword_10035DB18 = 0;
    v52 = [NSError alloc];
    v13 = [NSString stringWithUTF8String:"nfcd"];
    v61 = NSLocalizedDescriptionKey;
    v53 = [NSString stringWithUTF8String:"Invalid State"];
    v62 = v53;
    v54 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v16 = [v52 initWithDomain:v13 code:12 userInfo:v54];
  }

LABEL_36:

  return v16;
}

- (id)negotiatePerBootAuthKeys
{
  if (qword_10035DB18)
  {
    goto LABEL_36;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 267);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(self);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    *buf = 67109890;
    *v178 = v12;
    *&v178[4] = 2082;
    *&v178[6] = object_getClassName(self);
    v179 = 2082;
    v180 = sel_getName(a2);
    v181 = 1024;
    v182 = 267;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
  }

  if (!sub_10015CAD8(self))
  {
    checkPairing = [(NFSecureElementWrapper *)self checkPairing];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(self);
      v158 = sel_getName(a2);
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Failed to validate pairing", v26, v25, v158, 271);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v28 = object_getClass(self);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    v30 = object_getClassName(self);
    v31 = sel_getName(a2);
    *buf = 67109890;
    *v178 = v29;
    *&v178[4] = 2082;
    *&v178[6] = v30;
    v179 = 2082;
    v180 = v31;
    v181 = 1024;
    v182 = 271;
    v32 = "%c[%{public}s %{public}s]:%i Failed to validate pairing";
    v33 = v27;
    v34 = OS_LOG_TYPE_ERROR;
    v35 = 34;
    goto LABEL_34;
  }

  if (!sub_10022D900(NFSSEWrapper))
  {
    sub_10015C944(NFSecureElementWrapper);
    checkPairing = [(NFSecureElementWrapper *)self checkPairing];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v36 = NFLogGetLogger();
    if (v36)
    {
      v37 = v36;
      v38 = object_getClass(self);
      v39 = class_isMetaClass(v38);
      v152 = object_getClassName(self);
      v159 = sel_getName(a2);
      v40 = 45;
      if (v39)
      {
        v40 = 43;
      }

      v37(6, "%c[%{public}s %{public}s]:%i V2 pairing not supported per SEP. Forcing entanglement. Pairing check failed : %@", v40, v152, v159, 278, checkPairing);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v41 = object_getClass(self);
    if (class_isMetaClass(v41))
    {
      v42 = 43;
    }

    else
    {
      v42 = 45;
    }

    v43 = object_getClassName(self);
    v44 = sel_getName(a2);
    *buf = 67110146;
    *v178 = v42;
    *&v178[4] = 2082;
    *&v178[6] = v43;
    v179 = 2082;
    v180 = v44;
    v181 = 1024;
    v182 = 278;
    v183 = 2112;
    v184 = checkPairing;
    v32 = "%c[%{public}s %{public}s]:%i V2 pairing not supported per SEP. Forcing entanglement. Pairing check failed : %@";
    v33 = v27;
    v34 = OS_LOG_TYPE_DEFAULT;
    v35 = 44;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v33, v34, v32, buf, v35);
LABEL_35:

LABEL_36:
    checkPairing2 = 0;
    goto LABEL_37;
  }

  v170 = 0;
  v13 = sub_1001599F4(&self->super.isa, &v170);
  v14 = v170;
  if (v14)
  {
    v15 = v14;
    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    code = [v15 code];
    v175[0] = NSLocalizedDescriptionKey;
    if ([v15 code] > 75)
    {
      code2 = 76;
    }

    else
    {
      code2 = [v15 code];
    }

    v59 = [NSString stringWithUTF8String:(&off_10031C5D0)[code2]];
    v176[0] = v59;
    v176[1] = v15;
    v175[1] = NSUnderlyingErrorKey;
    v175[2] = @"Line";
    v176[2] = &off_1003364F8;
    v175[3] = @"Method";
    v60 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v176[3] = v60;
    v175[4] = NSDebugDescriptionErrorKey;
    v61 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 284];
    v176[4] = v61;
    v62 = [NSDictionary dictionaryWithObjects:v176 forKeys:v175 count:5];
    checkPairing2 = [v16 initWithDomain:v17 code:code userInfo:v62];

LABEL_53:
    goto LABEL_37;
  }

  v169 = 0;
  v47 = [(NFSecureElementWrapper *)self _crsGetPersoState:&v169];
  v15 = v169;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v48 = NFLogGetLogger();
  v49 = v48;
  if (v15)
  {
    if (v48)
    {
      v50 = object_getClass(self);
      v51 = class_isMetaClass(v50);
      v52 = object_getClassName(self);
      v160 = sel_getName(a2);
      v53 = 45;
      if (v51)
      {
        v53 = 43;
      }

      v49(6, "%c[%{public}s %{public}s]:%i V2 pairing not supported. Forcing entanglement.", v53, v52, v160, 290);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v54 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = object_getClass(self);
      if (class_isMetaClass(v55))
      {
        v56 = 43;
      }

      else
      {
        v56 = 45;
      }

      v57 = object_getClassName(self);
      v58 = sel_getName(a2);
      *buf = 67109890;
      *v178 = v56;
      *&v178[4] = 2082;
      *&v178[6] = v57;
      v179 = 2082;
      v180 = v58;
      v181 = 1024;
      v182 = 290;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i V2 pairing not supported. Forcing entanglement.", buf, 0x22u);
    }

    sub_10015C944(NFSecureElementWrapper);
    checkPairing2 = [(NFSecureElementWrapper *)self checkPairing];
    goto LABEL_53;
  }

  if (v48)
  {
    v63 = object_getClass(self);
    v64 = class_isMetaClass(v63);
    v153 = object_getClassName(self);
    v161 = sel_getName(a2);
    v65 = 45;
    if (v64)
    {
      v65 = 43;
    }

    v49(6, "%c[%{public}s %{public}s]:%i CRS Perso state is %lu", v65, v153, v161, 294, v47);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v66 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v67 = object_getClass(self);
    if (class_isMetaClass(v67))
    {
      v68 = 43;
    }

    else
    {
      v68 = 45;
    }

    v69 = object_getClassName(self);
    v70 = sel_getName(a2);
    *buf = 67110146;
    *v178 = v68;
    *&v178[4] = 2082;
    *&v178[6] = v69;
    v179 = 2082;
    v180 = v70;
    v181 = 1024;
    v182 = 294;
    v183 = 2048;
    v184 = v47;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CRS Perso state is %lu", buf, 0x2Cu);
  }

  if (v47 - 1 < 2)
  {
    serialNumberAsData = [(NFSecureElementWrapper *)self serialNumberAsData];
    v71 = sub_10022D948(NFSSEWrapper, serialNumberAsData);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v72 = NFLogGetLogger();
    v73 = v72;
    if (!v71)
    {
      if (v72)
      {
        v112 = object_getClass(self);
        v113 = class_isMetaClass(v112);
        v114 = object_getClassName(self);
        v165 = sel_getName(a2);
        v115 = 45;
        if (v113)
        {
          v115 = 43;
        }

        v73(3, "%c[%{public}s %{public}s]:%i Unknown SSE sharing state", v115, v114, v165, 313);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFSharedLogGetLogger();
      v100 = serialNumberAsData;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        v117 = object_getClass(self);
        if (class_isMetaClass(v117))
        {
          v118 = 43;
        }

        else
        {
          v118 = 45;
        }

        v119 = object_getClassName(self);
        v120 = sel_getName(a2);
        *buf = 67109890;
        *v178 = v118;
        *&v178[4] = 2082;
        *&v178[6] = v119;
        v179 = 2082;
        v180 = v120;
        v181 = 1024;
        v182 = 313;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unknown SSE sharing state", buf, 0x22u);
      }

      [(NFSecureElementWrapper *)self setUnpairedState];
      v121 = [NSError alloc];
      v122 = [NSString stringWithUTF8String:"nfcd"];
      v171[0] = NSLocalizedDescriptionKey;
      v123 = [NSString stringWithUTF8String:"Invalid State"];
      v172[0] = v123;
      v172[1] = &off_100336528;
      v171[1] = @"Line";
      v171[2] = @"Method";
      v124 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
      v172[2] = v124;
      v171[3] = NSDebugDescriptionErrorKey;
      v125 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 315];
      v172[3] = v125;
      v126 = [NSDictionary dictionaryWithObjects:v172 forKeys:v171 count:4];
      checkPairing2 = [v121 initWithDomain:v122 code:12 userInfo:v126];

      goto LABEL_135;
    }

    if (v72)
    {
      v74 = object_getClass(self);
      v75 = class_isMetaClass(v74);
      v154 = object_getClassName(self);
      v162 = sel_getName(a2);
      v76 = 45;
      if (v75)
      {
        v76 = 43;
      }

      v73(6, "%c[%{public}s %{public}s]:%i SSE sharing state is %d", v76, v154, v162, 318, v71);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v77 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = object_getClass(self);
      if (class_isMetaClass(v78))
      {
        v79 = 43;
      }

      else
      {
        v79 = 45;
      }

      v80 = object_getClassName(self);
      v81 = sel_getName(a2);
      *buf = 67110146;
      *v178 = v79;
      *&v178[4] = 2082;
      *&v178[6] = v80;
      v179 = 2082;
      v180 = v81;
      v181 = 1024;
      v182 = 318;
      v183 = 1024;
      LODWORD(v184) = v71;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SSE sharing state is %d", buf, 0x28u);
    }

    if (v71 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v82 = NFLogGetLogger();
      if (v82)
      {
        v83 = v82;
        v84 = object_getClass(self);
        v85 = class_isMetaClass(v84);
        v86 = object_getClassName(self);
        v163 = sel_getName(a2);
        v87 = 45;
        if (v85)
        {
          v87 = 43;
        }

        v83(6, "%c[%{public}s %{public}s]:%i Setting key", v87, v86, v163, 320);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
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
        *v178 = v90;
        *&v178[4] = 2082;
        *&v178[6] = v91;
        v179 = 2082;
        v180 = v92;
        v181 = 1024;
        v182 = 320;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting key", buf, 0x22u);
      }

      v93 = sub_10022DB28(NFSSEWrapper, serialNumberAsData);
      if (v93)
      {
        checkPairing2 = v93;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v94 = NFLogGetLogger();
        if (v94)
        {
          v95 = v94;
          v96 = object_getClass(self);
          v97 = class_isMetaClass(v96);
          v155 = object_getClassName(self);
          v164 = sel_getName(a2);
          v98 = 45;
          if (v97)
          {
            v98 = 43;
          }

          v95(3, "%c[%{public}s %{public}s]:%i Failed to set SE public key : %{public}@", v98, v155, v164, 324, checkPairing2);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v99 = NFSharedLogGetLogger();
        v100 = serialNumberAsData;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v101 = object_getClass(self);
          if (class_isMetaClass(v101))
          {
            v102 = 43;
          }

          else
          {
            v102 = 45;
          }

          v103 = object_getClassName(self);
          v104 = sel_getName(a2);
          *buf = 67110146;
          *v178 = v102;
          *&v178[4] = 2082;
          *&v178[6] = v103;
          v179 = 2082;
          v180 = v104;
          v181 = 1024;
          v182 = 324;
          v183 = 2114;
          v184 = checkPairing2;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set SE public key : %{public}@", buf, 0x2Cu);
        }

        [(NFSecureElementWrapper *)self setUnpairedState];
LABEL_135:

        goto LABEL_37;
      }

      LODWORD(v71) = sub_10022D948(NFSSEWrapper, serialNumberAsData);
    }

    if (v71 != 2 && v47 == 2)
    {
      goto LABEL_134;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v127 = NFLogGetLogger();
    if (v127)
    {
      v128 = v127;
      v129 = object_getClass(self);
      v130 = class_isMetaClass(v129);
      v131 = object_getClassName(self);
      v166 = sel_getName(a2);
      v132 = 45;
      if (v130)
      {
        v132 = 43;
      }

      v128(6, "%c[%{public}s %{public}s]:%i Performing sharing", v132, v131, v166, 333);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v133 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      v134 = object_getClass(self);
      if (class_isMetaClass(v134))
      {
        v135 = 43;
      }

      else
      {
        v135 = 45;
      }

      v136 = object_getClassName(self);
      v137 = sel_getName(a2);
      *buf = 67109890;
      *v178 = v135;
      *&v178[4] = 2082;
      *&v178[6] = v136;
      v179 = 2082;
      v180 = v137;
      v181 = 1024;
      v182 = 333;
      _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Performing sharing", buf, 0x22u);
    }

    performSharing = [(NFSecureElementWrapper *)self performSharing];
    if (performSharing)
    {
      v139 = performSharing;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v140 = NFLogGetLogger();
      if (v140)
      {
        v141 = v140;
        v142 = object_getClass(self);
        v143 = class_isMetaClass(v142);
        v156 = object_getClassName(self);
        v167 = sel_getName(a2);
        v144 = 45;
        if (v143)
        {
          v144 = 43;
        }

        v141(3, "%c[%{public}s %{public}s]:%i Perform sharing failed : %{public}@", v144, v156, v167, 336, v139);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v145 = NFSharedLogGetLogger();
      v100 = serialNumberAsData;
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        v146 = object_getClass(self);
        if (class_isMetaClass(v146))
        {
          v147 = 43;
        }

        else
        {
          v147 = 45;
        }

        v148 = object_getClassName(self);
        v149 = sel_getName(a2);
        *buf = 67110146;
        *v178 = v147;
        *&v178[4] = 2082;
        *&v178[6] = v148;
        v179 = 2082;
        v180 = v149;
        v181 = 1024;
        v182 = 336;
        v183 = 2114;
        v184 = v139;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Perform sharing failed : %{public}@", buf, 0x2Cu);
      }

      localizedDescription = [v139 localizedDescription];
      v151 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Error: %@, Code: %ld", localizedDescription, [v139 code]);

      sub_100199974(NFBugCapture, @"SSE Sharing failed", v151, 0);
      [(NFSecureElementWrapper *)self setUnpairedState];
      checkPairing2 = v139;
    }

    else
    {
LABEL_134:
      [(NFSecureElementWrapper *)self storePairedState];
      checkPairing2 = 0;
      v100 = serialNumberAsData;
    }

    goto LABEL_135;
  }

  if (v47 != 3 && v47)
  {
    v105 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      *v178 = v47;
      _os_log_fault_impl(&_mh_execute_header, v105, OS_LOG_TYPE_FAULT, "Unknown crsPersoState %lu", buf, 0xCu);
    }

    v106 = [NSError alloc];
    v107 = [NSString stringWithUTF8String:"nfcd"];
    v173[0] = NSLocalizedDescriptionKey;
    v108 = [NSString stringWithUTF8String:"Invalid Parameter"];
    v174[0] = v108;
    v174[1] = &off_100336510;
    v173[1] = @"Line";
    v173[2] = @"Method";
    v109 = [[NSString alloc] initWithFormat:@"%s", sel_getName(a2)];
    v174[2] = v109;
    v173[3] = NSDebugDescriptionErrorKey;
    v110 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(a2), 306];
    v174[3] = v110;
    v111 = [NSDictionary dictionaryWithObjects:v174 forKeys:v173 count:4];
    checkPairing2 = [v106 initWithDomain:v107 code:10 userInfo:v111];
  }

  else
  {
    checkPairing2 = [(NFSecureElementWrapper *)self checkPairing];
  }

LABEL_37:

  return checkPairing2;
}

- (unint64_t)getPairingVersion
{
  v9 = 0;
  v3 = sub_1001599F4(&self->super.isa, &v9);
  v4 = v9;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v8 = 0;
    v6 = [(NFSecureElementWrapper *)self _crsGetPersoState:&v8];
    v4 = v8;
    if (v6 - 1 >= 2)
    {
      v5 = v6 == 0;
    }

    else
    {
      v5 = 2;
    }
  }

  return v5;
}

@end