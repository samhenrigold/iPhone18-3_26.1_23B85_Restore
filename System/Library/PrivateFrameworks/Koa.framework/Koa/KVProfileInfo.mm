@interface KVProfileInfo
+ (id)capturedWithDatasetCount:(unsigned int)count error:(id *)error;
+ (id)syntheticWithDatasetCount:(unsigned int)count error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProfileInfo:(id)info;
- (KVProfileInfo)init;
- (KVProfileInfo)initWithBuffer:(id)buffer error:(id *)error;
- (KVProfileInfo)initWithDatasetCount:(unsigned int)count capturedTime:(id)time deviceType:(id)type buildVersion:(id)version error:(id *)error;
- (id)JSONWithIndent:(unsigned __int8)indent;
- (id)buildVersion;
- (id)capturedTime;
- (id)deviceType;
- (id)initFromDictionary:(id)dictionary error:(id *)error;
- (unsigned)datasetCount;
@end

@implementation KVProfileInfo

- (BOOL)isEqualToProfileInfo:(id)info
{
  buffer = self->_buffer;
  v7 = objc_msgSend_buffer(info, a2, info, v3, v4, v5);
  LOBYTE(buffer) = objc_msgSend_isEqual_(buffer, v8, v7, v9, v10, v11);

  return buffer;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToProfileInfo = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToProfileInfo = objc_msgSend_isEqualToProfileInfo_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToProfileInfo = 0;
  }

  return isEqualToProfileInfo;
}

- (id)initFromDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v11 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"datasetCount", v8, v9, v10);
  v17 = objc_msgSend_unsignedIntValue(v11, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_objectForKey_(dictionaryCopy, v18, @"capturedTime", v19, v20, v21);
  v23 = sub_2559A6CD4(v22);
  v28 = objc_msgSend_objectForKey_(dictionaryCopy, v24, @"deviceType", v25, v26, v27);
  v33 = objc_msgSend_objectForKey_(dictionaryCopy, v29, @"buildVersion", v30, v31, v32);
  v35 = objc_msgSend_initWithDatasetCount_capturedTime_deviceType_buildVersion_error_(self, v34, v17, v23, v28, v33, error);

  return v35;
}

- (id)JSONWithIndent:(unsigned __int8)indent
{
  v5 = sub_2559C2C40(indent);
  v6 = sub_2559C2C40(indent + 1);
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v7, v8, @"%@{\n", v9, v10, v11, v5);
  v17 = objc_msgSend_capturedTime(self, v12, v13, v14, v15, v16);
  v23 = v17;
  if (v17)
  {
    v24 = objc_msgSend_ISO8601String(v17, v18, v19, v20, v21, v22);
    objc_msgSend_appendFormat_(v7, v25, @"%@%@: %@,\n", v26, v27, v28, v6, @"capturedTime", v24);
  }

  v29 = objc_msgSend_deviceType(self, v18, v19, v20, v21, v22);
  v35 = v29;
  if (v29)
  {
    v36 = sub_2559C2CC8(v29, v30, v31, v32, v33, v34);
    objc_msgSend_appendFormat_(v7, v37, @"%@%@: %@,\n", v38, v39, v40, v6, @"deviceType", v36);
  }

  v41 = objc_msgSend_buildVersion(self, v30, v31, v32, v33, v34);
  v47 = v41;
  if (v41)
  {
    v48 = sub_2559C2CC8(v41, v42, v43, v44, v45, v46);
    objc_msgSend_appendFormat_(v7, v49, @"%@%@: %@,\n", v50, v51, v52, v6, @"buildVersion", v48);
  }

  v53 = objc_msgSend_datasetCount(self, v42, v43, v44, v45, v46);
  objc_msgSend_appendFormat_(v7, v54, @"%@%@: %u,\n", v55, v56, v57, v6, @"datasetCount", v53);
  objc_msgSend_appendFormat_(v7, v58, @"%@}", v59, v60, v61, v5);

  return v7;
}

- (id)buildVersion
{
  v3 = &self->_profileInfo[-*self->_profileInfo];
  if (*v3->var0 >= 9u && *v3[8].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_profileInfo[*self->_profileInfo[-*self->_profileInfo + 8].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)deviceType
{
  v3 = &self->_profileInfo[-*self->_profileInfo];
  if (*v3->var0 >= 7u && *v3[6].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_profileInfo[*self->_profileInfo[-*self->_profileInfo + 6].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)capturedTime
{
  profileInfo = self->_profileInfo;
  v3 = &profileInfo[-*profileInfo->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    v5 = sub_2559A7178(profileInfo[v4 + *profileInfo[v4].var0].var0);
    v6 = sub_2559A6CD4(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)datasetCount
{
  profileInfo = self->_profileInfo;
  v3 = &profileInfo[-*profileInfo->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *profileInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (KVProfileInfo)initWithBuffer:(id)buffer error:(id *)error
{
  v69[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v65.receiver = self;
  v65.super_class = KVProfileInfo;
  v8 = [(KVProfileInfo *)&v65 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buffer, buffer);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v9->_buffer, v11, v12, v13, v14, v15))
    {
      v17 = objc_msgSend_bytes(v9->_buffer, v11, v16, v13, v14, v15);
      v10->_profileInfo = v17 + *v17;
      v23 = objc_msgSend_bytes(v10->_buffer, v18, v19, v20, v21, v22);
      v29 = objc_msgSend_length(v9->_buffer, v24, v25, v26, v27, v28);
      v60 = v23;
      v61 = v29;
      v62 = xmmword_2559D02B0;
      v63 = 0;
      v64 = 1;
      if (v29 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      if (v29 >= 5)
      {
        v32 = *v23;
        if (v32 >= 1 && v29 - 1 >= v32)
        {
          v33 = &v23[v32];
          if (sub_2559A7668(&v60, &v23[v32]) && sub_2559A7720(v33, &v60, 4u))
          {
            v34 = (v33 - *v33);
            if (*v34 >= 5u && (v35 = v34[2]) != 0)
            {
              v36 = (v33 + v35 + *(v33 + v35));
            }

            else
            {
              v36 = 0;
            }

            if (sub_2559A777C(&v60, v36) && sub_2559A7720(v33, &v60, 6u))
            {
              v45 = (v33 - *v33);
              if (*v45 >= 7u && (v46 = v45[3]) != 0)
              {
                v47 = (v33 + v46 + *(v33 + v46));
              }

              else
              {
                v47 = 0;
              }

              if (sub_2559A777C(&v60, v47) && sub_2559A7720(v33, &v60, 8u))
              {
                v48 = (v33 - *v33);
                if (*v48 >= 9u && (v49 = v48[4]) != 0)
                {
                  v50 = (v33 + v49 + *(v33 + v49));
                }

                else
                {
                  v50 = 0;
                }

                if (sub_2559A777C(&v60, v50))
                {
                  v51 = (v33 - *v33);
                  if (*v51 < 0xBu)
                  {
                    goto LABEL_35;
                  }

                  v52 = v51[5];
                  if (!v52 || v61 >= 3 && v61 - 2 >= v33 + v52 - v60)
                  {
                    goto LABEL_35;
                  }
                }
              }
            }
          }
        }
      }

      v54 = MEMORY[0x277CCA9B8];
      v66 = *MEMORY[0x277CCA450];
      v67 = @"ProfileInfo failed verification";
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v67, &v66, 1, v31);
      v58 = objc_msgSend_errorWithDomain_code_userInfo_(v54, v56, @"com.apple.koa.profile", 5, v55, v57);
      if (error && v58)
      {
        v58 = v58;
        *error = v58;
      }
    }

    else
    {
      v37 = MEMORY[0x277CCA9B8];
      v68 = *MEMORY[0x277CCA450];
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"Unexpected ProfileInfo buffer: %@", v13, v14, v15, v9->_buffer);
      v69[0] = v38;
      v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v69, &v68, 1, v40);
      v44 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v42, @"com.apple.koa.profile", 5, v41, v43);
      if (error && v44)
      {
        v44 = v44;
        *error = v44;
      }
    }

    v53 = 0;
    goto LABEL_41;
  }

LABEL_35:
  v53 = v10;
LABEL_41:

  return v53;
}

- (KVProfileInfo)initWithDatasetCount:(unsigned int)count capturedTime:(id)time deviceType:(id)type buildVersion:(id)version error:(id *)error
{
  countCopy = count;
  timeCopy = time;
  typeCopy = type;
  versionCopy = version;
  v75 = 0;
  v76 = 0;
  v77 = xmmword_2559D02C0;
  v78 = 0u;
  v79 = 0u;
  v80 = 0;
  v81 = 1;
  v82 = 256;
  v83 = 0;
  if (objc_msgSend_length(typeCopy, v13, v14, v15, v16, v17))
  {
    v23 = typeCopy;
    v29 = objc_msgSend_UTF8String(v23, v24, v25, v26, v27, v28);
    v30 = strlen(v29);
    v31 = sub_2559A7B04(&v75, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  if (!objc_msgSend_length(versionCopy, v18, v19, v20, v21, v22, error, self))
  {
    v45 = 0;
    if (timeCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v55 = 0;
    goto LABEL_9;
  }

  v37 = versionCopy;
  v43 = objc_msgSend_UTF8String(v37, v38, v39, v40, v41, v42);
  v44 = strlen(v43);
  v45 = sub_2559A7B04(&v75, v43, v44);
  if (!timeCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v46 = objc_msgSend_ISO8601String(timeCopy, v32, v33, v34, v35, v36);
  v47 = v46;
  v53 = objc_msgSend_UTF8String(v47, v48, v49, v50, v51, v52);
  v54 = strlen(v53);
  LODWORD(v53) = sub_2559A7B04(&v75, v53, v54);

  v55 = v53;
LABEL_9:
  sub_2559A7BAC(&v75);
  BYTE6(v80) = 1;
  v56 = v79;
  v57 = v78;
  v58 = DWORD2(v78);
  sub_2559A7C14(&v75, 4, v55);
  sub_2559A7C14(&v75, 6, v31);
  sub_2559A7C14(&v75, 8, v45);
  sub_2559A7C64(&v75, 10, countCopy);
  v59 = sub_2559A7D18(&v75, v57 - v56 + v58);
  sub_2559A7FB4(&v75, v59, 0, 0);
  v60 = objc_alloc(MEMORY[0x277CBEA90]);
  v61 = sub_2559A80B8(&v75);
  v65 = objc_msgSend_initWithBytes_length_(v60, v62, v61, (v78 - v79 + DWORD2(v78)), v63, v64);
  v69 = objc_msgSend_initWithBuffer_error_(v74, v66, v65, v72, v67, v68);

  sub_2559A811C(&v75);
  return v69;
}

- (KVProfileInfo)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (id)capturedWithDatasetCount:(unsigned int)count error:(id *)error
{
  v5 = *&count;
  v6 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_now(MEMORY[0x277CBEAA8], v7, v8, v9, v10, v11);
  v13 = MGCopyAnswer();
  v14 = MGCopyAnswer();
  v16 = objc_msgSend_initWithDatasetCount_capturedTime_deviceType_buildVersion_error_(v6, v15, v5, v12, v13, v14, error);

  return v16;
}

+ (id)syntheticWithDatasetCount:(unsigned int)count error:(id *)error
{
  v5 = *&count;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithDatasetCount_capturedTime_deviceType_buildVersion_error_(v6, v7, v5, 0, 0, 0, error);

  return v8;
}

@end