@interface CSSESWrapper
- (BOOL)validatePassphrasePresentOrPending;
- (CSSESWrapper)initWithDSID:(id)d escrowRecordContents:(id)contents passcodeStashSecret:(id)secret recoveryPassphrase:(id)passphrase recordID:(id)iD recordLabel:(id)label useAppleIDPassword:(BOOL)password appleIDPasswordMetadata:(id)self0 reqVersion:(int)self1;
- (CSSESWrapper)initWithRequest:(id)request validate:(BOOL)validate reqVersion:(int)version;
- (id)decodedEscrowRecordFromData:(id)data stingray:(BOOL)stingray env:(id)env duplicate:(BOOL)duplicate error:(id *)error;
- (id)derivePassword;
- (id)derivePasswordGuitarfish;
- (id)encodedEscrowRecordWithPublicKey:(__SecKey *)key certificateData:(id)data error:(id *)error;
- (id)encodedEscrowRecordWithPublicKeyBytes:(id)bytes certificateData:(id)data error:(id *)error;
- (id)recoveryResponseForBlob:(id)blob;
- (id)srpInitBlob;
- (id)srpRecoveryBlobFromData:(id)data error:(id *)error;
- (id)srpResponseForEscrowBlob:(id)blob withFullCCKey:(ccrsa_full_ctx *)key;
- (unint64_t)srpKeySize;
- (unint64_t)srpPublicKeySize;
- (void)dealloc;
- (void)setReqVersion:(int)version;
- (void)srpRecoveryUpdateDSID:(id)d recoveryPassphrase:(id)passphrase;
@end

@implementation CSSESWrapper

- (CSSESWrapper)initWithRequest:(id)request validate:(BOOL)validate reqVersion:(int)version
{
  validateCopy = validate;
  requestCopy = request;
  v11 = requestCopy;
  if (validateCopy && (objc_msgSend_validateInput(requestCopy, v9, v10), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5208();
    }

    selfCopy = 0;
  }

  else
  {
    versionCopy = version;
    v16 = objc_msgSend_dsid(v11, v9, v10);
    v19 = objc_msgSend_escrowRecord(v11, v17, v18);
    v22 = objc_msgSend_passcodeStashSecret(v11, v20, v21);
    v25 = objc_msgSend_recoveryPassphrase(v11, v23, v24);
    v28 = objc_msgSend_recordID(v11, v26, v27);
    v31 = objc_msgSend_recordLabel(v11, v29, v30);
    if (objc_msgSend_guitarfish(v11, v32, v33))
    {
      v36 = objc_msgSend_guitarfishToken(v11, v34, v35) ^ 1;
    }

    else
    {
      v36 = 0;
    }

    v37 = objc_msgSend_appleIDPasswordMetadata(v11, v34, v35);
    v41 = versionCopy;
    v40 = v36;
    self = objc_msgSend_initWithDSID_escrowRecordContents_passcodeStashSecret_recoveryPassphrase_recordID_recordLabel_useAppleIDPassword_appleIDPasswordMetadata_reqVersion_(self, v38, v16, v19, v22, v25, v28, v31, v40, v37, v41);

    selfCopy = self;
  }

  return selfCopy;
}

- (CSSESWrapper)initWithDSID:(id)d escrowRecordContents:(id)contents passcodeStashSecret:(id)secret recoveryPassphrase:(id)passphrase recordID:(id)iD recordLabel:(id)label useAppleIDPassword:(BOOL)password appleIDPasswordMetadata:(id)self0 reqVersion:(int)self1
{
  dCopy = d;
  contentsCopy = contents;
  secretCopy = secret;
  passphraseCopy = passphrase;
  iDCopy = iD;
  obj = label;
  labelCopy = label;
  metadataCopy = metadata;
  if (((objc_msgSend_isEqualToString_(labelCopy, v22, @"com.apple.protectedcloudstorage.record") & 1) != 0 || objc_msgSend_isEqualToString_(labelCopy, v23, @"com.apple.protectedcloudstorage.record.double")) && (objc_msgSend_isEqualToString_(passphraseCopy, v23, dCopy) & 1) == 0)
  {
    sub_22E9F511C();
  }

  v34.receiver = self;
  v34.super_class = CSSESWrapper;
  v24 = [(CSSESWrapper *)&v34 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_dsid, d);
    objc_storeStrong(&v25->_escrowRecord, contents);
    objc_storeStrong(&v25->_passcodeStashSecret, secret);
    objc_storeStrong(&v25->_recoveryPassphrase, passphrase);
    objc_storeStrong(&v25->_recordID, iD);
    objc_storeStrong(&v25->_label, obj);
    if (!v25->_dsid && !v25->_recoveryPassphrase)
    {
      v25->_recoveryPassphraseMutable = 1;
    }

    v25->_reqVersion = version;
    v26 = malloc_type_malloc(0x38uLL, 0x6004031944618uLL);
    v25->_ckvr = v26;
    sub_22E9E763C(v26);
    objc_msgSend_setReqVersion_(v25, v27, version);
    v25->_useAppleIDPassword = password;
    objc_storeStrong(&v25->_appleIDPasswordMetadata, metadata);
    v28 = v25;
  }

  return v25;
}

- (id)derivePasswordGuitarfish
{
  v4 = objc_msgSend_appleIDPasswordMetadata(self, a2, v2);

  if (v4)
  {
    ccsha256_di();
    v7 = objc_msgSend_appleIDPasswordMetadata(self, v5, v6);
    v10 = objc_msgSend_proto(v7, v8, v9);
    objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277CED198]);

    v14 = objc_msgSend_recoveryPassphrase(self, v12, v13);
    v17 = objc_msgSend_appleIDPasswordMetadata(self, v15, v16);
    v20 = objc_msgSend_salt(v17, v18, v19);
    v21 = MEMORY[0x277CCABB0];
    v24 = objc_msgSend_appleIDPasswordMetadata(self, v22, v23);
    v27 = objc_msgSend_iterations(v24, v25, v26);
    objc_msgSend_numberWithInt_(v21, v28, v27);
    v29 = AppleIDAuthSupportPBKDF2SRP();

    if (!v29)
    {
      v30 = CloudServicesLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F5278();
      }
    }
  }

  else
  {
    v31 = CloudServicesLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F52E8();
    }

    v29 = 0;
  }

  return v29;
}

- (id)derivePassword
{
  if (objc_msgSend_useAppleIDPassword(self, a2, v2))
  {
    v6 = objc_msgSend_derivePasswordGuitarfish(self, v4, v5);
  }

  else
  {
    v7 = objc_msgSend_recoveryPassphrase(self, v4, v5);
    v6 = objc_msgSend_dataUsingEncoding_(v7, v8, 4);
  }

  return v6;
}

- (void)setReqVersion:(int)version
{
  self->_reqVersion = version;
  if (version >= 3)
  {
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5324();
    }

    abort();
  }
}

- (id)srpInitBlob
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_ckvr(self, a2, v2);
  v7 = sub_22E9E77E8(v4);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v14 - v8;
  if (v7)
  {
    memset(v14 - v8, 170, v7);
  }

  v10 = objc_msgSend_ckvr(self, v5, v6);
  sub_22E9E7818(v10, v9, v7);
  v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v11, v9, v7);

  return v12;
}

- (unint64_t)srpKeySize
{
  v3 = objc_msgSend_ckvr(self, a2, v2);

  return sub_22E9E7888(v3);
}

- (unint64_t)srpPublicKeySize
{
  v3 = objc_msgSend_ckvr(self, a2, v2);

  return sub_22E9E77E8(v3);
}

- (void)srpRecoveryUpdateDSID:(id)d recoveryPassphrase:(id)passphrase
{
  dCopy = d;
  passphraseCopy = passphrase;
  if (!self->_recoveryPassphraseMutable)
  {
    abort();
  }

  v8 = passphraseCopy;
  self->_recoveryPassphraseMutable = 0;
  dsid = self->_dsid;
  self->_dsid = dCopy;
  v11 = dCopy;

  recoveryPassphrase = self->_recoveryPassphrase;
  self->_recoveryPassphrase = v8;
}

- (BOOL)validatePassphrasePresentOrPending
{
  if (objc_msgSend_recoveryPassphraseMutable(self, a2, v2))
  {
    return 1;
  }

  v7 = objc_msgSend_recoveryPassphrase(self, v4, v5);
  v6 = v7 != 0;

  return v6;
}

- (id)srpRecoveryBlobFromData:(id)data error:(id *)error
{
  v154 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  self->_recoveryPassphraseMutable = 0;
  if (objc_msgSend_length(dataCopy, v7, v8) >> 32)
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F55D4(dataCopy, v11, v12);
    }

    if (error)
    {
      v15 = objc_msgSend_length(dataCopy, v13, v14);
      objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v16, @"EscrowServiceErrorDomain", 102, @"srp recovery blob too large: %lu bytes", v15);
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_72;
  }

  v18 = objc_msgSend_length(dataCopy, v9, v10);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v144 - v19;
  if (v18)
  {
    memset(&v144 - v19, 170, v18);
  }

  v21 = dataCopy;
  v24 = objc_msgSend_bytes(v21, v22, v23);
  v27 = objc_msgSend_length(dataCopy, v25, v26);
  memcpy(v20, v24, v27);
  v30 = objc_msgSend_length(dataCopy, v28, v29);
  if (sub_22E9EB7E4(v30, v20))
  {
    v33 = MEMORY[0x277CBEA90];
    v34 = objc_msgSend_length(dataCopy, v31, v32);
    v36 = objc_msgSend_dataWithBytes_length_(v33, v35, v20, v34);
    v39 = v36;
    if (v36)
    {
      v40 = objc_msgSend_length(v36, v37, v38);
      v41 = v39;
      v44 = objc_msgSend_bytes(v39, v42, v43);
      v152 = -1;
      v47 = objc_msgSend_ckvr(self, v45, v46);
      v152 = sub_22E9EB158(v47, v44);
      v147 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v48, v152);
      if (objc_msgSend_useAppleIDPassword(self, v49, v50))
      {
        v53 = &unk_22E9FB10B;
LABEL_21:
        v60 = objc_msgSend_recoveryPassphrase(self, v51, v52);
        v61 = v60 == 0;

        if (!v61)
        {
          if (objc_msgSend_useAppleIDPassword(self, v62, v63))
          {
            v66 = sub_22E9E7F1C(v40, v44);
            if ((v66 & 0x8000000000000000) != 0)
            {
              v83 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v67, @"EscrowServiceErrorDomain", 102, @"Failed to get salt from SRP response");
              v84 = CloudServicesLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                sub_22E9F5414();
              }

              if (error)
              {
                v85 = v83;
                *error = v83;
              }

              goto LABEL_49;
            }

            v149 = v66;
            v68 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v67, v66);
            v69 = v68;
            v72 = objc_msgSend_mutableBytes(v68, v70, v71);
            if (sub_22E9E7FA4(v40, v44, &v149, v72))
            {
              v74 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v73, @"EscrowServiceErrorDomain", 102, @"Failed to copy from SRP response");
              v75 = CloudServicesLog();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                sub_22E9F5414();
              }

              if (error)
              {
                v76 = v74;
                *error = v74;
              }

              goto LABEL_49;
            }

            v86 = [AppleIDPasswordMetadata alloc];
            v146 = objc_msgSend_appleIDPasswordMetadata(self, v87, v88);
            v145 = objc_msgSend_proto(v146, v89, v90);
            v93 = objc_msgSend_appleIDPasswordMetadata(self, v91, v92);
            v96 = objc_msgSend_iterations(v93, v94, v95);
            v98 = objc_msgSend_initWithProto_salt_iterations_(v86, v97, v145, v68, v96);

            objc_msgSend_setAppleIDPasswordMetadata_(self, v99, v98);
          }

          v100 = objc_msgSend_derivePassword(self, v64, v65);
          v103 = v100;
          if (v100)
          {
            v146 = objc_msgSend_length(v100, v101, v102);
            v104 = v103;
            v145 = objc_msgSend_bytes(v103, v105, v106);
            v149 = 0;
            v150[0] = &v149;
            v150[1] = 0x3032000000;
            v150[2] = sub_22E9F0430;
            v150[3] = sub_22E9F0440;
            v151 = 0;
            v148[0] = MEMORY[0x277D85DD0];
            v148[1] = 3221225472;
            v148[2] = sub_22E9F0448;
            v148[3] = &unk_27885A0D8;
            v148[4] = &v149;
            v107 = MEMORY[0x2318F0BD0](v148);
            v110 = objc_msgSend_reqVersion(self, v108, v109);
            if (v110)
            {
              if (v110 == 1)
              {
                v120 = objc_msgSend_ckvr(self, v111, v112);
                v121 = v147;
                v124 = objc_msgSend_mutableBytes(v147, v122, v123);
                v118 = sub_22E9E7EC4(v120, v53, v146, v145, v44, &v152, v124, sub_22E9F0358, v107);
              }

              else
              {
                if (v110 != 2)
                {
                  v140 = CloudServicesLog();
                  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    v143 = objc_msgSend_reqVersion(self, v141, v142);
                    sub_22E9F5514(buf, v143, v140);
                  }

                  abort();
                }

                v113 = objc_msgSend_ckvr(self, v111, v112);
                v114 = v147;
                v117 = objc_msgSend_mutableBytes(v147, v115, v116);
                v118 = sub_22E9E7EF0(v113, v53, v146, v145, v44, &v152, v117, sub_22E9F0358, v107);
              }
            }

            else
            {
              v125 = objc_msgSend_ckvr(self, v111, v112);
              v126 = v147;
              v129 = objc_msgSend_mutableBytes(v147, v127, v128);
              v118 = sub_22E9E78CC(v125, v53, v146, v145, v44, &v152, v129, sub_22E9F0358, v107);
            }

            v130 = v118;
            if (error)
            {
              v131 = *(v150[0] + 40);
              if (v131)
              {
                *error = v131;
              }
            }

            if (v130)
            {
              v132 = CloudServicesLog();
              if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
              {
                sub_22E9F5484(v150, v130, v132);
              }

              v17 = 0;
            }

            else
            {
              v133 = objc_alloc(MEMORY[0x277CBEA90]);
              v134 = v147;
              v137 = objc_msgSend_bytes(v147, v135, v136);
              v17 = objc_msgSend_initWithBytes_length_(v133, v138, v137, v152);
            }

            _Block_object_dispose(&v149, 8);
          }

          else
          {
            v119 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v101, @"EscrowServiceErrorDomain", 102, @"fail to derive password");
            if (error)
            {
              v119 = v119;
              *error = v119;
            }

            v17 = 0;
          }

          goto LABEL_71;
        }

        v77 = CloudServicesLog();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F555C();
        }

        if (error)
        {
          objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v78, @"EscrowServiceErrorDomain", 128, @"recoveryPassphrase not provided");
          *error = v17 = 0;
LABEL_71:

          goto LABEL_72;
        }

LABEL_49:
        v17 = 0;
        goto LABEL_71;
      }

      v56 = objc_msgSend_dsid(self, v51, v52);
      v57 = v56;
      if (v56)
      {
        v58 = v56;
        v53 = objc_msgSend_cStringUsingEncoding_(v57, v59, 4);
        if (v53)
        {

          goto LABEL_21;
        }

        v81 = CloudServicesLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F539C();
        }

        if (!error)
        {
LABEL_43:

          goto LABEL_49;
        }

        objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v82, @"EscrowServiceErrorDomain", 102, @"username could not be converted to cstring");
      }

      else
      {
        v79 = CloudServicesLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F53D8();
        }

        if (!error)
        {
          goto LABEL_43;
        }

        objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v80, @"EscrowServiceErrorDomain", 102, @"can't process recovery blob with no username");
      }
      *error = ;
      goto LABEL_43;
    }
  }

  v54 = CloudServicesLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F5598();
  }

  if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v55, @"EscrowServiceErrorDomain", 102, @"failed to convert srp init response");
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_72:

  return v17;
}

- (id)encodedEscrowRecordWithPublicKey:(__SecKey *)key certificateData:(id)data error:(id *)error
{
  dataCopy = data;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (SecKeyCopyPublicBytes())
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22E9CA000, v9, OS_LOG_TYPE_DEFAULT, "SecKeyCopyPublicBytes failed", v12, 2u);
    }

    v10 = 0;
  }

  else
  {
    v9 = v13;
    v10 = objc_msgSend_encodedEscrowRecordWithPublicKeyBytes_certificateData_error_(self, v8, v13, dataCopy, error);
  }

  return v10;
}

- (id)encodedEscrowRecordWithPublicKeyBytes:(id)bytes certificateData:(id)data error:(id *)error
{
  v313 = *MEMORY[0x277D85DE8];
  bytesCopy = bytes;
  dataCopy = data;
  v10 = MEMORY[0x277CCAC58];
  v13 = objc_msgSend_escrowRecord(self, v11, v12);
  v308 = 0;
  v15 = objc_msgSend_dataWithPropertyList_format_options_error_(v10, v14, v13, 200, 0, &v308);
  v16 = v308;

  if (!v15)
  {
    v19 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v117, v16, *MEMORY[0x277CCA7E8]);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v118, @"failed to serialize escrow data", *MEMORY[0x277CCA450]);
    v120 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v119, @"EscrowServiceErrorDomain", 5, v19);
    v121 = CloudServicesLog();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v310 = v120;
      _os_log_impl(&dword_22E9CA000, v121, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (error)
    {
      v122 = v120;
      *error = v120;
    }

    goto LABEL_24;
  }

  v19 = objc_msgSend_dsid(self, v17, v18);
  v20 = v19;
  v22 = objc_msgSend_cStringUsingEncoding_(v20, v21, 4);
  if (!v22)
  {
    v123 = CloudServicesLog();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v126 = objc_msgSend_label(self, v124, v125);
      v129 = objc_msgSend_dsid(self, v127, v128);
      *buf = 138412546;
      v310 = v126;
      v311 = 2112;
      v312 = v129;
      _os_log_impl(&dword_22E9CA000, v123, OS_LOG_TYPE_DEFAULT, "username missing for %@ (dsid %@)", buf, 0x16u);
    }

    if (error)
    {
      objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v130, @"EscrowServiceErrorDomain", 4, @"Username missing");
      *error = v116 = 0;
      goto LABEL_43;
    }

    goto LABEL_24;
  }

  v23 = v22;
  errorCopy = error;
  v305 = v16;
  v303 = strlen(v22);
  v26 = objc_msgSend_label(self, v24, v25);
  v27 = v26;
  v29 = objc_msgSend_cStringUsingEncoding_(v27, v28, 4);

  v32 = objc_msgSend_recordID(self, v30, v31);

  if (v32)
  {
    v35 = MEMORY[0x277CCACA8];
    v36 = objc_msgSend_label(self, v33, v34);
    v39 = objc_msgSend_recordID(self, v37, v38);
    v41 = objc_msgSend_stringWithFormat_(v35, v40, @"%@.%@", v36, v39);
    v42 = v41;
    v29 = objc_msgSend_cStringUsingEncoding_(v42, v43, 4);
  }

  if (!v29)
  {
    v131 = CloudServicesLog();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v134 = objc_msgSend_label(self, v132, v133);
      v137 = objc_msgSend_dsid(self, v135, v136);
      *buf = 138412546;
      v310 = v134;
      v311 = 2112;
      v312 = v137;
      _os_log_impl(&dword_22E9CA000, v131, OS_LOG_TYPE_DEFAULT, "label missing for %@ (dsid %@)", buf, 0x16u);
    }

    v16 = v305;
    if (errorCopy)
    {
      objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v138, @"EscrowServiceErrorDomain", 4, @"label missing");
      *errorCopy = v116 = 0;
      goto LABEL_43;
    }

LABEL_24:
    v116 = 0;
    goto LABEL_43;
  }

  v44 = strlen(v29);
  v47 = 128;
  if (v44 < 0x80)
  {
    v47 = v44;
  }

  v299 = v47;
  v48 = objc_msgSend_date(MEMORY[0x277CBEAA8], v45, v46);
  v301 = objc_msgSend_posixDateFormatter(CSDateUtilities, v49, v50);
  v302 = v48;
  v300 = objc_msgSend_stringFromDate_(v301, v51, v48);
  v53 = objc_msgSend_cStringUsingEncoding_(v300, v52, 4);
  v298 = strlen(v53);
  objc_msgSend_length(bytesCopy, v54, v55);
  v56 = bytesCopy;
  objc_msgSend_bytes(v56, v57, v58);
  v59 = ccrsa_import_pub_n();
  if (v59)
  {
    v62 = v59;
    if (objc_msgSend_useAppleIDPassword(self, v60, v61))
    {
      v65 = objc_msgSend_appleIDPasswordMetadata(self, v63, v64);

      if (!v65)
      {
        v66 = objc_alloc(MEMORY[0x277CBEB28]);
        v68 = objc_msgSend_initWithLength_(v66, v67, 32);
        v69 = v68;
        *(&v294 + 1) = v53;
        v72 = objc_msgSend_mutableBytes(v69, v70, v71);
        v75 = objc_msgSend_length(v68, v73, v74);
        v76 = v72;
        v53 = *(&v294 + 1);
        CCRandomGenerateBytes(v76, v75);
        v77 = [AppleIDPasswordMetadata alloc];
        v79 = objc_msgSend_initWithProto_salt_iterations_(v77, v78, *MEMORY[0x277CED190], v68, 43690);
        appleIDPasswordMetadata = self->_appleIDPasswordMetadata;
        self->_appleIDPasswordMetadata = v79;
      }
    }

    v81 = objc_msgSend_passcodeStashSecret(self, v63, v64);

    v295 = dataCopy;
    v296 = bytesCopy;
    v297 = v15;
    if (v81)
    {
      v306 = 0;
      v307 = 0;
      v84 = objc_msgSend_passcodeStashSecret(self, v82, v83);
      v85 = v84;
      *(&v294 + 1) = objc_msgSend_bytes(v85, v86, v87);
      v90 = objc_msgSend_passcodeStashSecret(self, v88, v89);
      *&v294 = objc_msgSend_length(v90, v91, v92);
      v93 = v15;
      v96 = objc_msgSend_bytes(v93, v94, v95);
      v99 = objc_msgSend_length(v15, v97, v98);
      v100 = dataCopy;
      v103 = v29;
      v104 = objc_msgSend_bytes(v100, v101, v102);
      v107 = objc_msgSend_length(dataCopy, v105, v106);
      sub_22E9F48FC(4294967293, *(&v294 + 1), v294, v23, v303 + 1, v103, v299, v96, v99, v53, v298, v104, v107, &v307, &v306, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297);
      v109 = v108;

      if (v109)
      {
        v111 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v110, *MEMORY[0x277CCA590], v109, 0);
        v113 = objc_msgSend_errorWithDomain_code_underlyingError_format_(CloudServicesError, v112, @"EscrowServiceErrorDomain", 125, v111, @"Escrow error encrypting data (%x)", v109);

        v114 = CloudServicesLog();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v310 = v113;
          _os_log_impl(&dword_22E9CA000, v114, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        dataCopy = v295;
        bytesCopy = v296;
        v15 = v297;
        v16 = v305;
        if (errorCopy)
        {
          v115 = v113;
          *errorCopy = v113;
        }

        v116 = 0;
        goto LABEL_42;
      }

      v172 = objc_alloc(MEMORY[0x277CBEA90]);
      v116 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v172, v173, v307, v306, 1);
      dataCopy = v295;
      bytesCopy = v296;
      v15 = v297;
      goto LABEL_41;
    }

    *(&v294 + 1) = v53;
    v147 = v29;
    if (objc_msgSend_useAppleIDPassword(self, v82, v83))
    {
      v148 = objc_msgSend_appleIDPasswordMetadata(self, v145, v146);
      *&v294 = objc_msgSend_ckvr(self, v149, v150);
      v153 = objc_msgSend_length(v297, v151, v152);
      v156 = objc_msgSend_salt(v148, v154, v155);
      v159 = objc_msgSend_length(v156, v157, v158);
      v160 = bytesCopy;
      v163 = objc_msgSend_bytes(v160, v161, v162);
      v164 = bytesCopy;
      v165 = v163;
      v168 = objc_msgSend_length(v164, v166, v167);
      v169 = sub_22E9EA0B8(v294, 0, v153, v299, v298, v159, v165, v168);
    }

    else
    {
      v175 = bytesCopy;
      v176 = objc_msgSend_ckvr(self, v145, v146);
      v179 = objc_msgSend_length(v297, v177, v178);
      v180 = v175;
      v183 = objc_msgSend_bytes(v180, v181, v182);
      v186 = objc_msgSend_length(v175, v184, v185);
      v170 = sub_22E9EA294(v176, v303, v179, v299, v298, v183, v186);
      v169 = v170;
    }

    v16 = v305;
    if (v169 > 0x1000)
    {
      v187 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v171, @"EscrowServiceErrorDomain", 3, @"Escrow data too long (%zu)", v169);
      v188 = v187;
      bytesCopy = v296;
      if (errorCopy)
      {
        v189 = v187;
        *errorCopy = v188;
      }

      v190 = CloudServicesLog();
      if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v310 = v188;
        _os_log_impl(&dword_22E9CA000, v190, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v116 = 0;
      dataCopy = v295;
      v15 = v297;
      goto LABEL_42;
    }

    *&v294 = &v289;
    MEMORY[0x28223BE20](v170);
    v191 = v296;
    if (v169)
    {
      memset(&v289 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v169);
    }

    *(&v293 + 1) = &v289 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v293 = v169;
    v192 = malloc_type_malloc(24 * v62 + 40, 0x10600407F0B3959uLL);
    *v192 = v62;
    v193 = v192;
    objc_msgSend_length(v191, v194, v195);
    v196 = v191;
    objc_msgSend_bytes(v196, v197, v198);
    ccrsa_import_pub();
    if (objc_msgSend_useAppleIDPassword(self, v199, v200))
    {
      v303 = v193;
      v203 = objc_msgSend_appleIDPasswordMetadata(self, v201, v202);
      v307 = 0;
      v206 = objc_msgSend_proto(v203, v204, v205);
      v209 = objc_msgSend_salt(v203, v207, v208);
      v210 = MEMORY[0x277CCABB0];
      v213 = objc_msgSend_iterations(v203, v211, v212);
      objc_msgSend_numberWithInt_(v210, v214, v213);
      v217 = objc_msgSend_recoveryPassphrase(self, v215, v216);
      Verifier = AppleIDAuthSupportCreateVerifier();

      if (!Verifier)
      {
        v250 = 0;
        v253 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v219, v220);
        v280 = v307;
        objc_msgSend_setObject_forKeyedSubscript_(v253, v281, v307, *MEMORY[0x277CCA7E8]);

        objc_msgSend_setObject_forKeyedSubscript_(v253, v282, @"could not create verifier", *MEMORY[0x277CCA450]);
        v284 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v283, @"EscrowServiceErrorDomain", 6, v253);
        v285 = CloudServicesLog();
        if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F5414();
        }

        dataCopy = v295;
        bytesCopy = v296;
        v286 = errorCopy;
        v16 = v305;
        if (errorCopy)
        {
          v287 = v284;
          *v286 = v284;
        }

        v15 = v297;
        v193 = v303;
        goto LABEL_73;
      }

      v292 = v147;
      v291 = objc_msgSend_ckvr(self, v219, v220);
      v221 = v297;
      v290 = objc_msgSend_length(v297, v222, v223);
      v224 = v221;
      v289 = objc_msgSend_bytes(v224, v225, v226);
      v229 = objc_msgSend_salt(v203, v227, v228);
      v232 = objc_msgSend_length(v229, v230, v231);
      v235 = objc_msgSend_salt(v203, v233, v234);
      v236 = v235;
      v239 = objc_msgSend_bytes(v236, v237, v238);
      v242 = objc_msgSend_length(Verifier, v240, v241);
      v243 = Verifier;
      v246 = objc_msgSend_bytes(v243, v244, v245);
      v249 = objc_msgSend_iterations(v203, v247, v248);
      v250 = Verifier;
      v251 = *(&v293 + 1);
      LODWORD(v232) = sub_22E9EA2D0(v291, 0, &unk_22E9FB10B, v290, v289, v299, v292, v298, *(&v294 + 1), v232, v239, v242, v246, v303, v249, *(&v293 + 1), sub_22E9F0358);

      if (v232)
      {
        v253 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v252, @"EscrowServiceErrorDomain", 125, @"Escrow error encrypting data");
        v254 = CloudServicesLog();
        v255 = os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT);
        dataCopy = v295;
        v16 = v305;
        if (v255)
        {
          *buf = 138412290;
          v310 = v253;
          _os_log_impl(&dword_22E9CA000, v254, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v15 = v297;
        v193 = v303;
        v256 = errorCopy;
        if (errorCopy)
        {
          v257 = v253;
          *v256 = v253;
        }

        bytesCopy = v296;
LABEL_73:

LABEL_74:
        v116 = 0;
LABEL_77:
        free(v193);
        goto LABEL_42;
      }

      dataCopy = v295;
      v16 = v305;
      v193 = v303;
    }

    else
    {
      v258 = objc_msgSend_recoveryPassphrase(self, v201, v202);
      v259 = v258;
      v261 = objc_msgSend_cStringUsingEncoding_(v259, v260, 4);

      v262 = strlen(v261);
      v265 = objc_msgSend_ckvr(self, v263, v264);
      v266 = v297;
      v269 = objc_msgSend_length(v297, v267, v268);
      v270 = v266;
      v273 = objc_msgSend_bytes(v270, v271, v272);
      v251 = *(&v293 + 1);
      v274 = sub_22E9EAC84(v265, v303, v23, v262, v261, v269, v273, v299, v147, v298, *(&v294 + 1), v193, *(&v293 + 1), sub_22E9F0358);
      dataCopy = v295;
      v16 = v305;
      if (v274)
      {
        v203 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v275, @"EscrowServiceErrorDomain", 125, @"Escrow error encrypting data");
        v276 = CloudServicesLog();
        v277 = os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT);
        bytesCopy = v296;
        if (v277)
        {
          *buf = 138412290;
          v310 = v203;
          _os_log_impl(&dword_22E9CA000, v276, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v15 = v297;
        v278 = errorCopy;
        if (errorCopy)
        {
          v279 = v203;
          *v278 = v203;
        }

        goto LABEL_74;
      }
    }

    v116 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v275, v251, v293);
    bytesCopy = v296;
    v15 = v297;
    goto LABEL_77;
  }

  v139 = v15;
  v140 = dataCopy;
  v141 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v60, @"EscrowServiceErrorDomain", 120, @"Fail to parse certificate");
  v142 = v141;
  if (errorCopy)
  {
    v143 = v141;
    *errorCopy = v142;
  }

  v144 = CloudServicesLog();
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v310 = v142;
    _os_log_impl(&dword_22E9CA000, v144, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v116 = 0;
  dataCopy = v140;
  v15 = v139;
LABEL_41:
  v16 = v305;
LABEL_42:

LABEL_43:

  return v116;
}

- (id)decodedEscrowRecordFromData:(id)data stingray:(BOOL)stingray env:(id)env duplicate:(BOOL)duplicate error:(id *)error
{
  stingrayCopy = stingray;
  v159[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  envCopy = env;
  if (!(objc_msgSend_length(dataCopy, v14, v15) >> 32))
  {
    v24 = objc_msgSend_length(dataCopy, v16, v17);
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
    v26 = &v142 - v25;
    if (v24)
    {
      memset(&v142 - v25, 170, v24);
    }

    v27 = dataCopy;
    v30 = objc_msgSend_bytes(v27, v28, v29);
    v33 = objc_msgSend_length(dataCopy, v31, v32);
    memcpy(v26, v30, v33);
    v36 = objc_msgSend_length(dataCopy, v34, v35);
    v37 = sub_22E9EBCF0(v36, v26);
    if (!v37)
    {
      v44 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v38, @"EscrowServiceErrorDomain", 7, @"decodedEscrowRecordFromData: failed to parse packet header");
      v45 = CloudServicesLog();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

LABEL_27:
      sub_22E9F5414();
LABEL_28:

      if (error)
      {
        v74 = v44;
        v23 = 0;
        *error = v44;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_73;
    }

    v40 = v37;
    v41 = objc_msgSend_reqVersion(self, v38, v39);
    if (v41)
    {
      if (v41 == 2)
      {
        v42 = v40;
        if (!sub_22E9EBBE0(v40, v26))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v41 != 1)
        {
          v135 = CloudServicesLog();
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            sub_22E9F56C4(self, v135, v136);
          }

          goto LABEL_81;
        }

        v42 = v40;
        if (!sub_22E9EBABC(v40, v26))
        {
LABEL_26:
          v44 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v43, @"EscrowServiceErrorDomain", 9, @"decodedEscrowRecordFromData: failed to convert recover_resp");
          v45 = CloudServicesLog();
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      v42 = v40;
      if (!sub_22E9EB7E4(v40, v26))
      {
        goto LABEL_26;
      }
    }

    v152 = &v142;
    v44 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v43, v26, v42);
    v46 = v44;
    v150 = objc_msgSend_bytes(v46, v47, v48);
    v149 = objc_msgSend_length(v44, v49, v50);
    v159[0] = 4096;
    memset(&v142 - 512, 170, 0x1000uLL);
    v158 = 128;
    *&v51 = 0xAAAAAAAAAAAAAAAALL;
    *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v140 = v51;
    v141 = v51;
    v138 = v51;
    v139 = v51;
    *(&v142 - 6) = v51;
    *(&v142 - 5) = v51;
    *(&v142 - 8) = v51;
    *(&v142 - 7) = v51;
    v54 = objc_msgSend_derivePassword(self, v52, v53);
    v151 = v54;
    if (!v54)
    {
      v75 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v55, @"EscrowServiceErrorDomain", 102, @"fail to derive password");
      if (error)
      {
        v75 = v75;
        *error = v75;
      }

      v23 = 0;
      goto LABEL_72;
    }

    v148 = &v142 - 16;
    v57 = v54;
    v147 = objc_msgSend_length(v54, v55, v56);
    v58 = v57;
    v146 = objc_msgSend_bytes(v58, v59, v60);
    v157 = 64;
    *&v61 = 0xAAAAAAAAAAAAAAAALL;
    *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v140 = v61;
    v141 = v61;
    v138 = v61;
    v139 = v61;
    v64 = objc_msgSend_reqVersion(self, v62, v63);
    if (v64)
    {
      v145 = &v138;
      if (v64 != 1)
      {
        v67 = v148;
        if (v64 == 2)
        {
          v68 = objc_msgSend_ckvr(self, v65, v66);
          *(&v141 + 1) = sub_22E9F0358;
          v69 = v145;
          if (sub_22E9E9B18(v68, v147, v146, v149, v150, v159, &v142 - 512, &v158, v67, &v157, v145))
          {
            v71 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v70, @"EscrowServiceErrorDomain", 10, @"fail to decode masterkey_v1");
            v72 = v71;
            if (error)
            {
              v73 = v71;
              v23 = 0;
              *error = v72;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_71;
          }

LABEL_64:
          v116 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v70, (&v142 - 512), v159[0]);
          v153 = 0;
          v150 = v116;
          v23 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v117, v116, 0, 0, &v153);
          v72 = v153;
          if (v23)
          {
            v119 = objc_alloc(MEMORY[0x277CCACA8]);
            v121 = v67;
            v122 = objc_msgSend_initWithBytes_length_encoding_(v119, v120, v69, v157, 4);
            v124 = objc_msgSend_secureBackupDateFromString_(CSDateUtilities, v123, v122);
            objc_msgSend_setEscrowDate_(self, v125, v124);

            v126 = objc_alloc(MEMORY[0x277CCACA8]);
            v128 = objc_msgSend_initWithBytes_length_encoding_(v126, v127, v121, v158, 4);
            objc_msgSend_setDecodedLabel_(self, v129, v128);

            v130 = v23;
          }

          else
          {
            v122 = objc_msgSend_errorWithDomain_code_underlyingError_format_(CloudServicesError, v118, @"EscrowServiceErrorDomain", 12, v72, @"fail to decode plist");
            v131 = CloudServicesLog();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              sub_22E9F5414();
            }

            if (error)
            {
              v132 = v122;
              *error = v122;
            }
          }

          v133 = v150;

          goto LABEL_71;
        }

        v135 = CloudServicesLog();
        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F56C4(self, v135, v137);
        }

LABEL_81:

        abort();
      }

      v149 = MEMORY[0x277CBEA90];
      v76 = dataCopy;
      v79 = objc_msgSend_bytes(v76, v77, v78);
      v82 = objc_msgSend_length(dataCopy, v80, v81);
      v84 = objc_msgSend_dataWithBytes_length_(v149, v83, v79 + v42, v82 - v42);
      v155 = 0;
      v156 = 0;
      BYTE9(v140) = 1;
      BYTE8(v140) = duplicate;
      v149 = v84;
      v86 = objc_msgSend_verifyCertData_withCert_withPubKey_stingray_enroll_altDSID_env_duplicate_sigVerification_error_(CSCertOperations, v85, v84, 0, &v156, stingrayCopy, 0, 0, envCopy, *(&v140 + 1), &v155);
      v87 = v155;
      if (v86)
      {
        v154 = 0;
        v90 = SecKeyCopyPublicBytes();
        if (v156)
        {
          CFRelease(v156);
        }

        if (!v90)
        {
          v144 = v87;
          v100 = v154;
          v143 = objc_msgSend_ckvr(self, v88, v89);
          v101 = dataCopy;
          v142 = objc_msgSend_bytes(v101, v102, v103);
          v106 = objc_msgSend_length(v100, v104, v105);
          v107 = v100;
          v110 = objc_msgSend_bytes(v107, v108, v109);
          *(&v141 + 1) = sub_22E9F0358;
          *(&v140 + 1) = v106;
          v69 = v145;
          v67 = v148;
          if (!sub_22E9E94AC(v143, v147, v146, v42, v150, v42, v142, v159, &v142 - 512, &v158, v148, &v157, v145, *(&v140 + 1), v110))
          {

            goto LABEL_64;
          }

          v112 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v111, @"EscrowServiceErrorDomain", 10, @"fail to decode masterkey_v1");
          v113 = CloudServicesLog();
          v114 = os_log_type_enabled(v113, OS_LOG_TYPE_ERROR);
          v72 = v149;
          if (v114)
          {
            sub_22E9F5414();
          }

          if (error)
          {
            v115 = v112;
            *error = v112;
          }

          goto LABEL_55;
        }

        v91 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v88, @"EscrowServiceErrorDomain", 11, @"SecKeyCopyPublicBytes: %d", v90);
        v92 = CloudServicesLog();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F5414();
        }

        v72 = v149;
        if (error)
        {
          v93 = v91;
          *error = v91;
        }
      }

      else
      {
        if (v156)
        {
          CFRelease(v156);
        }

        v97 = CloudServicesLog();
        v98 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
        v72 = v149;
        if (v98)
        {
          sub_22E9F5654();
        }

        if (error)
        {
          v99 = v87;
          *error = v87;
        }
      }
    }

    else
    {
      v94 = objc_msgSend_ckvr(self, v65, v66);
      *(&v141 + 1) = sub_22E9F0358;
      v69 = &v138;
      v67 = v148;
      if (!sub_22E9E8D90(v94, v147, v146, v149, v150, v159, &v142 - 512, &v158, v148, &v157, &v138))
      {
        goto LABEL_64;
      }

      v72 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v70, @"EscrowServiceErrorDomain", 10, @"fail to decode masterkey_v0");
      v95 = CloudServicesLog();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F5414();
      }

      if (error)
      {
        v96 = v72;
        v23 = 0;
        *error = v72;
LABEL_71:

LABEL_72:
LABEL_73:

        goto LABEL_74;
      }
    }

LABEL_55:
    v23 = 0;
    goto LABEL_71;
  }

  v18 = objc_msgSend_length(dataCopy, v16, v17);
  v20 = objc_msgSend_errorWithDomain_code_format_(CloudServicesError, v19, @"EscrowServiceErrorDomain", 7, @"srp recovery blob too large: %lu bytes", v18);
  v21 = CloudServicesLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_22E9F5414();
  }

  if (error)
  {
    v22 = v20;
    *error = v20;
  }

  v23 = 0;
LABEL_74:

  return v23;
}

- (id)srpResponseForEscrowBlob:(id)blob withFullCCKey:(ccrsa_full_ctx *)key
{
  v4 = MEMORY[0x28223BE20](self);
  v6 = v5;
  v7 = v4;
  v83 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v77 = 4096;
  memset(v78, 170, sizeof(v78));
  v12 = objc_msgSend_ckvr(v7, v10, v11);
  v15 = objc_msgSend_recoveryBlob(v7, v13, v14);
  v16 = v15;
  v19 = objc_msgSend_bytes(v16, v17, v18);
  LODWORD(v6) = sub_22E9EB1B0(v12, v19, &v77, v78, v6);

  if (v6)
  {
    v20 = CloudServicesLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5748();
    }

LABEL_4:

LABEL_24:
    v60 = 0;
    goto LABEL_25;
  }

  v21 = objc_alloc(MEMORY[0x277CBEA90]);
  v23 = objc_msgSend_initWithBytes_length_(v21, v22, v78, v77);
  objc_msgSend_setEscrowBlob_(v7, v24, v23);

  v25 = sub_22E9E9294(v77, v78);
  if (!v25)
  {
    goto LABEL_24;
  }

  v68 = &v68;
  v26 = *(v78[3].u32 + v78[1].u32[1]);
  v27 = *(v78[3].u32 + v78[2].u32[1]);
  v75 = v27;
  v76 = v26;
  v28 = *(v78[3].u32 + v78[2].u32[2]);
  v29 = *(v78[3].u32 + v78[1].u32[2]);
  v73 = v29;
  v74 = v28;
  v30 = *(v78[3].u32 + v78[1].u32[3]);
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v72 = v30;
  v31 = *(v78[3].u32 + v78[2].u32[0]);
  v70 = v31;
  MEMORY[0x28223BE20](v25);
  v33 = &v68 - v32;
  v35 = memset(&v68 - v32, 170, v34 + 1);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v68 - v37;
  if (v27)
  {
    v36 = memset(&v68 - v37, 170, v27);
  }

  v39 = MEMORY[0x28223BE20](v36);
  v40 = &v68 - ((v28 + 15) & 0x1FFFFFFF0);
  if (v28)
  {
    v39 = memset(&v68 - ((v28 + 15) & 0x1FFFFFFF0), 170, v28);
  }

  v41 = MEMORY[0x28223BE20](v39);
  v42 = &v68 - ((v29 + 15) & 0x1FFFFFFF0);
  if (v29)
  {
    v41 = memset(&v68 - ((v29 + 15) & 0x1FFFFFFF0), 170, v29);
  }

  v43 = MEMORY[0x28223BE20](v41);
  v44 = &v68 - ((v30 + 15) & 0x1FFFFFFF0);
  if (v30)
  {
    v43 = memset(&v68 - ((v30 + 15) & 0x1FFFFFFF0), 170, v30);
  }

  MEMORY[0x28223BE20](v43);
  if (v31)
  {
    memset(&v68 - ((v31 + 15) & 0x1FFFFFFF0), 170, v31);
  }

  if (!sub_22E9EB488(v78, &v76, v33, &v75, v38, &v74, v40, &v73, v42, &v72, v44, &v71, &v70, &v68 - ((v31 + 15) & 0x1FFFFFFF0)))
  {
LABEL_23:
    v60 = 0;
    goto LABEL_25;
  }

  v33[v76] = 0;
  v47 = objc_msgSend_srpPublicKeySize(v7, v45, v46);
  v48 = MEMORY[0x28223BE20](v47);
  v52 = &v68 - v51;
  if (v48)
  {
    memset(&v68 - v51, 170, v47);
  }

  v53 = objc_msgSend_ckvr(v7, v49, v50);
  v54 = v73;
  v55 = v9;
  v58 = objc_msgSend_bytes(v55, v56, v57);
  if (sub_22E9EAE54(v53, v33, v54, v42, v44, v58, v52))
  {
    v59 = CloudServicesLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F5784();
    }

    goto LABEL_23;
  }

  v82 = xmmword_22E9F9500;
  v79 = 0x706050403020100;
  v80 = 185207048;
  v81 = 3340;
  v69 = sub_22E9EB7AC(0xEuLL, v73, v47);
  v62 = MEMORY[0x28223BE20](v69);
  v65 = &v68 - v64;
  if (v62)
  {
    memset(&v68 - v64, 170, v63);
  }

  if ((sub_22E9EB5E8(16, &v82, 0xEu, &v79, v73, v42, v47, v52, &v69, v65) & 1) == 0)
  {
    v20 = CloudServicesLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F57C0();
    }

    goto LABEL_4;
  }

  v66 = objc_alloc(MEMORY[0x277CBEA90]);
  v60 = objc_msgSend_initWithBytes_length_(v66, v67, v65, v69);
LABEL_25:

  return v60;
}

- (id)recoveryResponseForBlob:(id)blob
{
  v82[1] = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  v9 = objc_msgSend_srpKeySize(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_length(blobCopy, v7, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v14 = (&v76 - v13);
    if (v11)
    {
      memset(&v76 - v13, 170, v12);
    }

    v15 = blobCopy;
    v18 = objc_msgSend_bytes(v15, v16, v17);
    v21 = objc_msgSend_length(blobCopy, v19, v20);
    memcpy(v14, v18, v21);
    v24 = objc_msgSend_length(blobCopy, v22, v23);
    if (!sub_22E9EB8E8(v24, v14) || (v27 = MEMORY[0x277CBEA90], v28 = objc_msgSend_length(blobCopy, v25, v26), objc_msgSend_dataWithBytes_length_(v27, v29, v14, v28), (v30 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = 0;
      goto LABEL_22;
    }

    v31 = v30;
    v78 = &v76;
    v32 = v30;
    v35 = objc_msgSend_bytes(v32, v33, v34);
    v82[0] = 16;
    v36 = *(v35 + 32);
    v81 = *(v35 + 40 + *(v35 + 28));
    v37 = *(v35 + 40 + v36);
    v80 = v37;
    v38 = MEMORY[0x28223BE20](v35);
    *&v75 = 0xAAAAAAAAAAAAAAAALL;
    *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = MEMORY[0x28223BE20](v38);
    v42 = &v76 - v41;
    if (v40)
    {
      v39 = memset(&v76 - v41, 170, v40);
    }

    MEMORY[0x28223BE20](v39);
    v43 = memset(&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v9);
    MEMORY[0x28223BE20](v43);
    if (v37)
    {
      memset(&v76 - ((v37 + 15) & 0x1FFFFFFF0), 170, v37);
    }

    if (sub_22E9EBA00(v35, &v81, v42, v82, &v75, &v80, &v76 - ((v37 + 15) & 0x1FFFFFFF0)))
    {
      v46 = objc_msgSend_ckvr(self, v44, v45);
      v47 = sub_22E9EAE7C(v46);
      if (v47)
      {
        v79 = 4096;
        MEMORY[0x28223BE20](v47);
        memset(&v76 - 512, 170, 0x1000uLL);
        v77 = objc_msgSend_ckvr(self, v48, v49);
        v52 = objc_msgSend_srpKeySize(self, v50, v51);
        v55 = objc_msgSend_ckvr(self, v53, v54);
        v56 = sub_22E9E7890(v55);
        v59 = objc_msgSend_escrowBlob(self, v57, v58);
        v62 = objc_msgSend_length(v59, v60, v61);
        v65 = objc_msgSend_escrowBlob(self, v63, v64);
        v66 = v65;
        v69 = objc_msgSend_bytes(v66, v67, v68);
        *(&v75 + 1) = sub_22E9F0358;
        v70 = sub_22E9EAE98(v77, v52, v56, v9, &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v69, &v79, (&v76 - 512));

        if (!v70)
        {
          v71 = objc_alloc(MEMORY[0x277CBEA90]);
          v9 = objc_msgSend_initWithBytes_length_(v71, v72, (&v76 - 512), v79);
LABEL_21:

          goto LABEL_22;
        }

LABEL_20:
        v9 = 0;
        goto LABEL_21;
      }

      v73 = CloudServicesLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F5838();
      }
    }

    else
    {
      v73 = CloudServicesLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_22E9F57FC();
      }
    }

    goto LABEL_20;
  }

LABEL_22:

  return v9;
}

- (void)dealloc
{
  ckvr = self->_ckvr;
  if (ckvr)
  {
    sub_22E9E7724(ckvr);
    free(self->_ckvr);
  }

  v4.receiver = self;
  v4.super_class = CSSESWrapper;
  [(CSSESWrapper *)&v4 dealloc];
}

@end