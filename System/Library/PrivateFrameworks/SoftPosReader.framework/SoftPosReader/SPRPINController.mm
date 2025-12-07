@interface SPRPINController
- (BOOL)addDigitWithCode:(unsigned __int8)code seed:(id)seed error:(id *)error;
- (BOOL)capturePINWithParameters:(id)parameters error:(id *)error;
- (BOOL)captureWithParameters:(id)parameters entropy:(id)entropy digitCodeMap:(char *)map error:(id *)error;
- (BOOL)copyDigitCodeMap:(char *)map;
- (BOOL)removeLastDigitAndReturnError:(id *)error;
- (BOOL)updateParameters:(id)parameters error:(id *)error;
- (BOOL)verifyWithPINToken:(id)token error:(id *)error;
- (id)generatePINBlockAndReturnError:(id *)error;
- (void)cancelPINCapture;
@end

@implementation SPRPINController

- (BOOL)capturePINWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_26A941FD4;
  v29 = sub_26A941FE4;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A941FD4;
  v23 = sub_26A941FE4;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A941FEC;
  v18[3] = &unk_279CA5428;
  v18[4] = &v25;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v18, v8, v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A941FFC;
  v17[3] = &unk_279CA5620;
  v17[4] = self;
  v17[5] = &v19;
  v17[6] = &v25;
  objc_msgSend_capturePINWithParameters_reply_(v10, v11, parametersCopy, v17, v12);

  v13 = v20[5];
  if (v13)
  {
    objc_storeStrong(&self->_pinCrypto, v13);
  }

  if (error)
  {
    v14 = v26[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = v20[5] != 0;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

- (BOOL)captureWithParameters:(id)parameters entropy:(id)entropy digitCodeMap:(char *)map error:(id *)error
{
  parametersCopy = parameters;
  entropyCopy = entropy;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_26A941FD4;
  v39 = sub_26A941FE4;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_26A941FD4;
  v33 = sub_26A941FE4;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_26A942338;
  v28[3] = &unk_279CA5428;
  v28[4] = &v35;
  v15 = objc_msgSend_syncProxyWithErrorHandler_(self, v12, v28, v13, v14);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_26A942348;
  v23[3] = &unk_279CA5648;
  v16 = entropyCopy;
  v24 = v16;
  v25 = &v29;
  v26 = &v35;
  mapCopy = map;
  objc_msgSend_capturePINWithParameters_reply_(v15, v17, parametersCopy, v23, v18);

  v19 = v30[5];
  if (v19)
  {
    objc_storeStrong(&self->_pinCrypto, v19);
  }

  if (error)
  {
    v20 = v36[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = v30[5] != 0;

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v21;
}

- (BOOL)copyDigitCodeMap:(char *)map
{
  pinCrypto = self->_pinCrypto;
  if (pinCrypto)
  {
    objc_msgSend_copyDigitCodeMap_(self->_pinCrypto, a2, map, v3, v4);
  }

  return pinCrypto != 0;
}

- (BOOL)addDigitWithCode:(unsigned __int8)code seed:(id)seed error:(id *)error
{
  codeCopy = code;
  seedCopy = seed;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_26A941FD4;
  v87 = sub_26A941FE4;
  v88 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v13 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v9, v10, v11, v12);
  v14 = os_signpost_id_generate(v13);

  v19 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v15, v16, v17, v18);
  v20 = v19;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26A93A000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v14, "add digit client", "begin add digit client", buf, 2u);
  }

  if (self->_pinCrypto)
  {
    v24 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v21, 32, v22, v23);
    v29 = objc_msgSend_length(v24, v25, v26, v27, v28);
    v30 = v24;
    v35 = objc_msgSend_mutableBytes(v30, v31, v32, v33, v34);
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], v29, v35))
    {
      v40 = objc_msgSend_errorWithCode_reason_(SPRError, v36, 11006, @"seed generation failed", v39);
      v41 = v84[5];
      v84[5] = v40;
    }

    else
    {
      if (seedCopy)
      {
        v74 = codeCopy;
        v43 = objc_msgSend_length(seedCopy, v36, v37, v38, v39);
        if (v43 >= 0x20)
        {
          v44 = 32;
        }

        else
        {
          v44 = v43;
        }

        v45 = v24;
        v50 = objc_msgSend_mutableBytes(v45, v46, v47, v48, v49);
        v51 = seedCopy;
        v56 = objc_msgSend_bytes(v51, v52, v53, v54, v55);
        memcpy(v50, v56, v44);
        codeCopy = v74;
      }

      pinCrypto = self->_pinCrypto;
      v58 = (v84 + 5);
      obj = v84[5];
      v41 = objc_msgSend_encryptCode_seed_error_(pinCrypto, v36, codeCopy, v24, &obj);
      objc_storeStrong(v58, obj);
      if (v41)
      {
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = sub_26A9428D0;
        v76[3] = &unk_279CA5428;
        v76[4] = &v83;
        v62 = objc_msgSend_syncProxyWithErrorHandler_(self, v59, v76, v60, v61);
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = sub_26A9428E0;
        v75[3] = &unk_279CA5670;
        v75[4] = &v79;
        v75[5] = &v83;
        objc_msgSend_addDigitWithCipher_reply_(v62, v63, v41, v75, v64);
      }
    }
  }

  else
  {
    v42 = objc_msgSend_errorWithCode_reason_(SPRError, v21, 11006, @"addDigitWithValue: PIN Capture not in progress", v23);
    v24 = v84[5];
    v84[5] = v42;
  }

  v69 = objc_msgSend_xpcClient(MEMORY[0x277D498B8], v65, v66, v67, v68);
  v70 = v69;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26A93A000, v70, OS_SIGNPOST_INTERVAL_END, v14, "add digit client", "end add digit client", buf, 2u);
  }

  if (error)
  {
    v71 = v84[5];
    if (v71)
    {
      *error = v71;
    }
  }

  v72 = *(v80 + 24);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  return v72;
}

- (BOOL)removeLastDigitAndReturnError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A941FD4;
  v23 = sub_26A941FE4;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26A942A9C;
  v14[3] = &unk_279CA5428;
  v14[4] = &v19;
  v6 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v14, v3, v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26A942AAC;
  v13[3] = &unk_279CA5670;
  v13[4] = &v15;
  v13[5] = &v19;
  objc_msgSend_removeLastDigitWithReply_(v6, v7, v13, v8, v9);

  if (error)
  {
    v10 = v20[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (id)generatePINBlockAndReturnError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_26A941FD4;
  v27 = sub_26A941FE4;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_26A941FD4;
  v21 = sub_26A941FE4;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A942CD0;
  v16[3] = &unk_279CA5428;
  v16[4] = &v23;
  v7 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v16, v3, v4);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A942CE0;
  v15[3] = &unk_279CA5698;
  v15[4] = &v17;
  v15[5] = &v23;
  objc_msgSend_generatePINBlockWithReply_(v7, v8, v15, v9, v10);

  if (v18[5])
  {
    pinCrypto = self->_pinCrypto;
    self->_pinCrypto = 0;
  }

  if (error)
  {
    v12 = v24[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

- (void)cancelPINCapture
{
  pinCrypto = self->_pinCrypto;
  self->_pinCrypto = 0;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26A942E10;
  v11[3] = &unk_279CA5478;
  v11[4] = self;
  v7 = objc_msgSend_syncProxyWithErrorHandler_(self, v4, v11, v5, v6);
  objc_msgSend_cancelPINCaptureWithReply_(v7, v8, &unk_287B2DCA0, v9, v10);
}

- (BOOL)updateParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_26A941FD4;
  v26 = sub_26A941FE4;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A943038;
  v17[3] = &unk_279CA5428;
  v17[4] = &v22;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v17, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A943048;
  v16[3] = &unk_279CA5670;
  v16[4] = &v18;
  v16[5] = &v22;
  objc_msgSend_updateParameters_reply_(v10, v11, parametersCopy, v16, v12);

  if (error)
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (BOOL)verifyWithPINToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_26A941FD4;
  v26 = sub_26A941FE4;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A943224;
  v17[3] = &unk_279CA5428;
  v17[4] = &v22;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v17, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A943234;
  v16[3] = &unk_279CA5670;
  v16[4] = &v18;
  v16[5] = &v22;
  objc_msgSend_verifyWithPINToken_reply_(v10, v11, tokenCopy, v16, v12);

  if (error)
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

@end