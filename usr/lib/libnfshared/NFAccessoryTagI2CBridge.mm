@interface NFAccessoryTagI2CBridge
- (BOOL)_bridgeType0WritePollForSystemReadyWithTimeout:(double)timeout beforeWrite:(BOOL)write outError:(id *)error;
- (NFAccessoryTagI2CBridge)initWithType:(int64_t)type delegate:(id)delegate;
- (id)_bridgeType0ReadMultipleSRAMPagesWithBuffer:(id)buffer;
- (id)_bridgeType0WriteOneSRAMPage:(id)page fragmentationSupport:(BOOL)support isLastPage:(BOOL)lastPage;
- (id)_bridgeType0WritePollForCompletionWithTimeout:(double)timeout;
- (id)_readFromBridgeType0:(id *)type0 fragmentationSupport:(BOOL)support;
- (id)_selectTagType0;
- (id)_type0GetSystemInfo:(id *)info;
- (id)_type0ReadConfigRange:(_NSRange)range data:(id *)data;
- (id)_type0ReadSRAM:(unsigned __int8)m numOfBlocks:(unsigned __int8)blocks data:(id *)data;
- (id)_type0WriteConfigReg:(unsigned __int8)reg data:(id)data;
- (id)_type0WriteSRAM:(unsigned __int8)m data:(id)data;
- (id)_writeToBridgeType0:(id)type0 fragmentationSupport:(BOOL)support;
- (id)readFromBridge:(id)bridge fragmentationSupport:(BOOL)support response:(id *)response;
- (id)selectTag;
- (id)writeToBridge:(id)bridge fragmentationSupport:(BOOL)support response:(id *)response;
- (void)_bridgeType0CreateAccessoryHeaderWithBuffer:(id)buffer pageLength:(unint64_t)length isLastPage:(BOOL)page;
@end

@implementation NFAccessoryTagI2CBridge

- (NFAccessoryTagI2CBridge)initWithType:(int64_t)type delegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = NFAccessoryTagI2CBridge;
  result = [(NFAccessoryTag *)&v6 initWithDelegate:delegate];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (id)selectTag
{
  if (self->_type)
  {
    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    v5 = objc_msgSend_initWithDomain_code_userInfo_(v3, v4, NFAccessoryTagI2CBridgeErrorDomain, 0, 0);
  }

  else
  {
    v5 = objc_msgSend__selectTagType0(self, a2, v2);
  }

  return v5;
}

- (id)writeToBridge:(id)bridge fragmentationSupport:(BOOL)support response:(id *)response
{
  if (self->_type)
  {
    v5 = objc_alloc(MEMORY[0x277CCA9B8]);
    v7 = objc_msgSend_initWithDomain_code_userInfo_(v5, v6, NFAccessoryTagI2CBridgeErrorDomain, 0, 0);
  }

  else
  {
    *response = 0;
    v7 = objc_msgSend__writeToBridgeType0_fragmentationSupport_(self, a2, bridge, support);
  }

  return v7;
}

- (id)readFromBridge:(id)bridge fragmentationSupport:(BOOL)support response:(id *)response
{
  if (self->_type)
  {
    v5 = objc_alloc(MEMORY[0x277CCA9B8]);
    v7 = objc_msgSend_initWithDomain_code_userInfo_(v5, v6, NFAccessoryTagI2CBridgeErrorDomain, 0, 0);
  }

  else
  {
    v7 = objc_msgSend__readFromBridgeType0_fragmentationSupport_(self, a2, response, support);
  }

  return v7;
}

- (id)_selectTagType0
{
  v4 = objc_msgSend_tagUUID(self, a2, v2);
  if (v4 && (v7 = v4, objc_msgSend_tagUUID(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_length(v8, v9, v10), v8, v7, v11 != 8))
  {
    v31 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v31, v32, NFAccessoryTagI2CBridgeErrorDomain, 1, 0);
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CBEB28]);
    v38 = 9506;
    v14 = objc_msgSend_initWithBytes_length_(v12, v13, &v38, 2);
    v17 = objc_msgSend_tagUUID(self, v15, v16);
    objc_msgSend_appendData_(v14, v18, v17);

    v19 = NFSharedSignpostLog();
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22EEC4000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_select", &unk_22EEECD33, buf, 2u);
    }

    v22 = objc_msgSend_delegate(self, v20, v21);
    v36 = 0;
    v24 = objc_msgSend_transceive_response_maxTimeout_(v22, v23, v14, &v36, 2.0);
    v25 = v36;

    if (!v24)
    {
      v26 = v25;
      if (*objc_msgSend_bytes(v26, v27, v28))
      {
        v33 = objc_alloc(MEMORY[0x277CCA9B8]);
        v24 = objc_msgSend_initWithDomain_code_userInfo_(v33, v34, NFAccessoryTagI2CBridgeErrorDomain, 4, 0);
      }

      else
      {
        objc_msgSend_setSelected_(self, v29, 1);
        objc_msgSend_setTransactionCounter_(self, v30, 1);
        v24 = 0;
      }
    }
  }

  return v24;
}

- (BOOL)_bridgeType0WritePollForSystemReadyWithTimeout:(double)timeout beforeWrite:(BOOL)write outError:(id *)error
{
  writeCopy = write;
  v44 = *MEMORY[0x277D85DE8];
  v40 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, write);
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 67240192;
    v43 = writeCopy;
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_pollForSystemReady", "beforeWrite=%{public,signpost.description:attribute}d", buf, 8u);
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (v10)
    {
      v10 = 1;
LABEL_18:
      v36 = NFSharedSignpostLog();
      if (os_signpost_enabled(v36))
      {
        *buf = 67240192;
        v43 = v9 & 1;
        _os_signpost_emit_with_name_impl(&dword_22EEC4000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_pollForSystemReady", "timeout=%{public,signpost.description:attribute}d", buf, 8u);
      }

      v13 = 0;
      goto LABEL_24;
    }

    v11 = objc_autoreleasePoolPush();
    v41 = 0;
    v13 = objc_msgSend__type0ReadConfigRange_data_(self, v12, 160, 2, &v41);
    v14 = v41;
    v16 = v14;
    if (v13)
    {
      break;
    }

    v17 = objc_msgSend_subdataWithRange_(v14, v15, 0, 4);
    v19 = objc_msgSend_subdataWithRange_(v16, v18, 4, 4);
    v20 = v19;
    v23 = objc_msgSend_bytes(v20, v21, v22);
    v24 = v17;
    v27 = objc_msgSend_bytes(v24, v25, v26);
    v30 = *(v23 + 1) & 0xE;
    if (writeCopy)
    {
      if (v30 != 10 || (~*v27 & 7) != 0)
      {
        goto LABEL_14;
      }
    }

    else if (v30 != 10 || (*v27 & 0x27) != 0x23 || (v27[1] & 2) != 0)
    {
LABEL_14:
      v32 = objc_msgSend_now(MEMORY[0x277CBEAA8], v28, v29);
      objc_msgSend_timeIntervalSinceDate_(v40, v33, v32);
      v31 = v34 <= timeout;
      v35 = v34 > timeout;

      v10 = 0;
      v9 |= v35;
      goto LABEL_15;
    }

    v10 = 1;
    v31 = 1;
LABEL_15:

    objc_autoreleasePoolPop(v11);
    if (!v31)
    {
      goto LABEL_18;
    }
  }

  objc_autoreleasePoolPop(v11);
  v36 = NFSharedSignpostLog();
  if (os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_pollForSystemReady", "ReadConfigError", buf, 2u);
  }

  v10 = 0;
LABEL_24:

  if (error)
  {
    v37 = v13;
    *error = v13;
  }

  return v10;
}

- (void)_bridgeType0CreateAccessoryHeaderWithBuffer:(id)buffer pageLength:(unint64_t)length isLastPage:(BOOL)page
{
  lengthCopy = length;
  bufferCopy = buffer;
  v15 = objc_msgSend_transactionCounter(self, v8, v9);
  pageCopy = page;
  v10 = objc_alloc(MEMORY[0x277CBEA90]);
  v12 = objc_msgSend_initWithBytes_length_(v10, v11, &lengthCopy, 4);
  objc_msgSend_appendData_(bufferCopy, v13, v12);
}

- (id)_bridgeType0WritePollForCompletionWithTimeout:(double)timeout
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, v3);
  v7 = NFSharedSignpostLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_pollForWriteComplete", &unk_22EEECD33, buf, 2u);
  }

  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v31 = 0;
    v10 = objc_msgSend__type0ReadConfigReg_data_(self, v9, 160, &v31);
    v11 = v31;
    v12 = v11;
    if (v10)
    {

      objc_autoreleasePoolPop(v8);
      v26 = NFSharedSignpostLog();
      if (!os_signpost_enabled(v26))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v27 = "error";
      v28 = v26;
      v29 = 2;
      goto LABEL_14;
    }

    v13 = v11;
    v16 = objc_msgSend_bytes(v13, v14, v15);
    if ((*v16 & 0x20) == 0 && (v16[1] & 2) == 0)
    {
      break;
    }

    v19 = objc_msgSend_now(MEMORY[0x277CBEAA8], v17, v18);
    objc_msgSend_timeIntervalSinceDate_(v6, v20, v19);
    v22 = v21;

    objc_autoreleasePoolPop(v8);
    if (v22 > timeout)
    {
      v23 = objc_alloc(MEMORY[0x277CCA9B8]);
      v10 = objc_msgSend_initWithDomain_code_userInfo_(v23, v24, NFAccessoryTagI2CBridgeErrorDomain, 5, 0);
      v25 = 0;
      goto LABEL_12;
    }
  }

  objc_autoreleasePoolPop(v8);
  v10 = 0;
  v25 = 1;
LABEL_12:
  v26 = NFSharedSignpostLog();
  if (!os_signpost_enabled(v26))
  {
    goto LABEL_15;
  }

  *buf = 67240192;
  v33 = v25;
  v27 = "systemReady=%{public,signpost.description:attribute}d";
  v28 = v26;
  v29 = 8;
LABEL_14:
  _os_signpost_emit_with_name_impl(&dword_22EEC4000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_pollForWriteComplete", v27, buf, v29);
LABEL_15:

  return v10;
}

- (id)_bridgeType0WriteOneSRAMPage:(id)page fragmentationSupport:(BOOL)support isLastPage:(BOOL)lastPage
{
  lastPageCopy = lastPage;
  supportCopy = support;
  v48 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  v11 = objc_opt_new();
  if (supportCopy)
  {
    v12 = objc_msgSend_length(pageCopy, v9, v10);
    objc_msgSend__bridgeType0CreateAccessoryHeaderWithBuffer_pageLength_isLastPage_(self, v13, v11, v12, lastPageCopy);
  }

  objc_msgSend_appendData_(v11, v9, pageCopy);
  v16 = objc_msgSend_length(v11, v14, v15) & 3;
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CBEB28]);
    v19 = objc_msgSend_initWithLength_(v17, v18, 4 - v16);
    objc_msgSend_appendData_(v11, v20, v19);
  }

  v21 = NFSharedSignpostLog();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_write1SRAMPage", &unk_22EEECD33, buf, 2u);
  }

  v24 = objc_msgSend_length(v11, v22, v23);
  if (v24 < 0xFC)
  {
    v32 = objc_msgSend__type0WriteSRAM_data_(self, v25, 1, v11);
    if (v32)
    {
      v29 = v32;
      v31 = NFSharedSignpostLog();
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        goto LABEL_21;
      }

LABEL_22:

      goto LABEL_23;
    }
  }

  else
  {
    v26 = v24;
    v27 = objc_msgSend_subdataWithRange_(v11, v25, 0, 248);
    v29 = objc_msgSend__type0WriteSRAM_data_(self, v28, 1, v27);

    if (v29)
    {
      v31 = NFSharedSignpostLog();
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
LABEL_21:
        _os_signpost_emit_with_name_impl(&dword_22EEC4000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_write1SRAMPage", "error", buf, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v35 = objc_msgSend_subdataWithRange_(v11, v30, 248, (v26 & 0xFFFFFFFFFFFFFFFCLL) - 248);
    v29 = objc_msgSend__type0WriteSRAM_data_(self, v36, 63, v35);

    if (v29)
    {
      v31 = NFSharedSignpostLog();
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  if (objc_msgSend_length(v11, v33, v34) <= 0xFC)
  {
    v37 = objc_alloc(MEMORY[0x277CBEA90]);
    v45 = -272716322;
    v39 = objc_msgSend_initWithBytes_length_(v37, v38, &v45, 4);
    v29 = objc_msgSend__type0WriteSRAM_data_(self, v40, 63, v39);

    if (v29)
    {
      v31 = NFSharedSignpostLog();
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  v42 = NFSharedSignpostLog();
  if (os_signpost_enabled(v42))
  {
    *buf = 67240192;
    v47 = lastPageCopy;
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v42, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_write1SRAMPage", "isLastPage=%{public,signpost.description:attribute}d", buf, 8u);
  }

  v29 = objc_msgSend__bridgeType0WritePollForCompletionWithTimeout_(self, v43, v44, 0.5);
LABEL_23:

  return v29;
}

- (id)_writeToBridgeType0:(id)type0 fragmentationSupport:(BOOL)support
{
  supportCopy = support;
  v59 = *MEMORY[0x277D85DE8];
  type0Copy = type0;
  v9 = objc_msgSend_length(type0Copy, v7, v8);
  v10 = v9;
  if (supportCopy)
  {
    v11 = 248;
  }

  else
  {
    v11 = 256;
  }

  if (v9 % v11)
  {
    v12 = v9 / v11 + 1;
  }

  else
  {
    v12 = v9 / v11;
  }

  v13 = NFSharedSignpostLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_write", &unk_22EEECD33, buf, 2u);
  }

  if (v12)
  {
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v52 = 0;
      v17 = objc_msgSend__bridgeType0WritePollForSystemReadyWithTimeout_beforeWrite_outError_(self, v14, 1, &v52, 0.5);
      v18 = v52;
      if (v18)
      {
        v23 = v18;
        v32 = NFSharedSignpostLog();
        if (os_signpost_enabled(v32))
        {
          *buf = 0;
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_43;
      }

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (v10 >= v11)
      {
        v20 = v11;
      }

      else
      {
        v20 = v10;
      }

      v21 = objc_msgSend_subdataWithRange_(type0Copy, v19, v15, v20);
      v23 = objc_msgSend__bridgeType0WriteOneSRAMPage_fragmentationSupport_isLastPage_(self, v22, v21, supportCopy, v10 <= v11);

      if (v23)
      {
        v32 = NFSharedSignpostLog();
        if (os_signpost_enabled(v32))
        {
          *buf = 0;
LABEL_41:
          _os_signpost_emit_with_name_impl(&dword_22EEC4000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_write", "error", buf, 2u);
        }

        goto LABEL_42;
      }

      if (v10 >= v11)
      {
        v10 -= v11;
      }

      else
      {
        v10 = 0;
      }

      ++v16;
      v15 += v11;
      if (v12 <= v16)
      {
        goto LABEL_21;
      }
    }

    v33 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v35 = off_27DA9DE50[specific];
    if (v35)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v39 = 45;
      if (isMetaClass)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i System not ready.  Abort", v39, ClassName, Name, 297);
      v33 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v40 = dispatch_get_specific(v33);
    v41 = NFSharedLogGetLogger(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      *v54 = v43;
      *&v54[4] = 2082;
      *&v54[6] = v44;
      v55 = 2082;
      v56 = v45;
      v57 = 1024;
      v58 = 297;
      _os_log_impl(&dword_22EEC4000, v41, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i System not ready.  Abort", buf, 0x22u);
    }

    v46 = NFSharedSignpostLog();
    if (os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22EEC4000, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_write", "systemNotReady", buf, 2u);
    }

    v47 = objc_alloc(MEMORY[0x277CCA9B8]);
    v23 = objc_msgSend_initWithDomain_code_userInfo_(v47, v48, NFAccessoryTagI2CBridgeErrorDomain, 5, 0);
  }

  else
  {
LABEL_21:
    v24 = NFSharedSignpostLog();
    if (os_signpost_enabled(v24))
    {
      v27 = objc_msgSend_length(type0Copy, v25, v26);
      *buf = 134349056;
      *v54 = v27;
      _os_signpost_emit_with_name_impl(&dword_22EEC4000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_write", "totalLen=%{public,signpost.description:attribute}lu", buf, 0xCu);
    }

    v30 = objc_msgSend_transactionCounter(self, v28, v29);
    objc_msgSend_setTransactionCounter_(self, v31, (v30 + 1));
    v23 = 0;
  }

LABEL_43:

  return v23;
}

- (id)_bridgeType0ReadMultipleSRAMPagesWithBuffer:(id)buffer
{
  v70 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v6 = 0;
  while (1)
  {
    v61 = v6;
    v7 = objc_msgSend__bridgeType0WritePollForSystemReadyWithTimeout_beforeWrite_outError_(self, v4, 0, &v61, 0.5);
    v8 = v61;

    if (v8)
    {
      goto LABEL_39;
    }

    if ((v7 & 1) == 0)
    {
      break;
    }

    v9 = NFSharedSignpostLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22EEC4000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read1SRAMPage", &unk_22EEECD33, buf, 2u);
    }

    v60 = 0;
    v8 = objc_msgSend__type0ReadSRAM_numOfBlocks_data_(self, v10, 1, 4, &v60);
    v11 = v60;
    v12 = v11;
    if (v8)
    {
      v50 = NFSharedSignpostLog();
      if (os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22EEC4000, v50, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read1SRAMPage", "error", buf, 2u);
      }

      goto LABEL_38;
    }

    v13 = v11;
    v16 = objc_msgSend_bytes(v13, v14, v15);
    v18 = *v16;
    if (v18 >= 0xF9)
    {
      v51 = NFSharedSignpostLog();
      if (os_signpost_enabled(v51))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22EEC4000, v51, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read1SRAMPage", "error", buf, 2u);
      }

      v52 = objc_alloc(MEMORY[0x277CCA9B8]);
      v8 = objc_msgSend_initWithDomain_code_userInfo_(v52, v53, NFAccessoryTagI2CBridgeErrorDomain, 4, 0);
      goto LABEL_38;
    }

    v19 = v16[3];
    if (v18 < 0xD)
    {
      v30 = objc_msgSend_subdataWithRange_(v12, v17, 4);
      objc_msgSend_appendData_(bufferCopy, v31, v30);

      v25 = v12;
LABEL_13:
      v58 = v25;
      v6 = objc_msgSend__type0ReadSRAM_numOfBlocks_data_(self, v29, 63, 1, &v58);
      v32 = v58;

      v25 = v32;
      goto LABEL_14;
    }

    v20 = v18 - 12;
    v21 = objc_msgSend_subdataWithRange_(v12, v17, 4, 12);
    objc_msgSend_appendData_(bufferCopy, v22, v21);

    v23 = vcvtpd_s64_f64(vcvtd_n_f64_u32(v20, 2uLL));
    v59 = v12;
    v8 = objc_msgSend__type0ReadSRAM_numOfBlocks_data_(self, v24, 5, v23, &v59);
    v25 = v59;

    if (v8)
    {
      v54 = NFSharedSignpostLog();
      if (os_signpost_enabled(v54))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22EEC4000, v54, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read1SRAMPage", "error", buf, 2u);
      }

      v12 = v25;
LABEL_38:

      goto LABEL_39;
    }

    v27 = objc_msgSend_subdataWithRange_(v25, v26, 0, v20);
    objc_msgSend_appendData_(bufferCopy, v28, v27);

    v6 = 0;
    if ((v23 & 0xFFFFFFFE) != 0x3A)
    {
      goto LABEL_13;
    }

LABEL_14:
    v33 = v19 & 1;
    v34 = NFSharedSignpostLog();
    if (os_signpost_enabled(v34))
    {
      *buf = 67240192;
      v63 = v33;
      _os_signpost_emit_with_name_impl(&dword_22EEC4000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read1SRAMPage", "isLastPage=%{public,signpost.description:attribute}d", buf, 8u);
    }

    if (v33)
    {

      v8 = 0;
      goto LABEL_39;
    }
  }

  v35 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (specific >= 5)
  {
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v37 = off_27DA9DE50[specific];
  if (v37)
  {
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v41 = 45;
    if (isMetaClass)
    {
      v41 = 43;
    }

    v37(3, "%c[%{public}s %{public}s]:%i System not ready.  Abort", v41, ClassName, Name, 341);
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
    v63 = v45;
    v64 = 2082;
    v65 = v46;
    v66 = 2082;
    v67 = v47;
    v68 = 1024;
    v69 = 341;
    _os_log_impl(&dword_22EEC4000, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i System not ready.  Abort", buf, 0x22u);
  }

  v48 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = objc_msgSend_initWithDomain_code_userInfo_(v48, v49, NFAccessoryTagI2CBridgeErrorDomain, 5, 0);
LABEL_39:

  return v8;
}

- (id)_readFromBridgeType0:(id *)type0 fragmentationSupport:(BOOL)support
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = NFSharedSignpostLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read", &unk_22EEECD33, buf, 2u);
  }

  if (support)
  {
    v10 = objc_opt_new();
    v12 = objc_msgSend__bridgeType0ReadMultipleSRAMPagesWithBuffer_(self, v11, v10);
    if (v12)
    {
      v13 = NFSharedSignpostLog();
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        v14 = "error";
        v15 = v13;
        v16 = 2;
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_22EEC4000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read", v14, buf, v16);
      }
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x277CBEA90]);
      *type0 = objc_msgSend_initWithData_(v23, v24, v10);
      v13 = NFSharedSignpostLog();
      if (os_signpost_enabled(v13))
      {
        v27 = objc_msgSend_length(v10, v25, v26);
        *buf = 134349056;
        *v57 = v27;
        v14 = "totalLen=%{public,signpost.description:attribute}lu";
        v15 = v13;
        v16 = 12;
        goto LABEL_13;
      }
    }

    v28 = v12;
    goto LABEL_35;
  }

  v55 = 0;
  v17 = objc_msgSend__bridgeType0WritePollForSystemReadyWithTimeout_beforeWrite_outError_(self, v9, 0, &v55, 0.5);
  v18 = v55;
  if (v18)
  {
    v20 = v18;
    v21 = NFSharedSignpostLog();
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22EEC4000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read", "error", buf, 2u);
    }

    v22 = v20;
    goto LABEL_34;
  }

  if ((v17 & 1) == 0)
  {
    v35 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v37 = off_27DA9DE50[specific];
    if (v37)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v41 = 45;
      if (isMetaClass)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i System not ready.  Abort", v41, ClassName, Name, 425);
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
      *v57 = v45;
      *&v57[4] = 2082;
      *&v57[6] = v46;
      v58 = 2082;
      v59 = v47;
      v60 = 1024;
      v61 = 425;
      _os_log_impl(&dword_22EEC4000, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i System not ready.  Abort", buf, 0x22u);
    }

    v48 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = objc_msgSend_initWithDomain_code_userInfo_(v48, v49, NFAccessoryTagI2CBridgeErrorDomain, 5, 0);
    v30 = NFSharedSignpostLog();
    if (!os_signpost_enabled(v30))
    {
      goto LABEL_33;
    }

    *buf = 0;
    v34 = "systemNotReady";
    goto LABEL_31;
  }

  v29 = objc_msgSend__type0ReadSRAM_numOfBlocks_data_(self, v19, 0, 64, type0);
  v30 = NFSharedSignpostLog();
  v31 = os_signpost_enabled(v30);
  if (!v29)
  {
    if (!v31)
    {
      goto LABEL_33;
    }

    v53 = objc_msgSend_length(*type0, v32, v33);
    *buf = 134349056;
    *v57 = v53;
    v34 = "totalLen=%{public,signpost.description:attribute}lu";
    v50 = v30;
    v51 = 12;
    goto LABEL_32;
  }

  if (v31)
  {
    *buf = 0;
    v34 = "error";
LABEL_31:
    v50 = v30;
    v51 = 2;
LABEL_32:
    _os_signpost_emit_with_name_impl(&dword_22EEC4000, v50, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "transceiveToI2c_read", v34, buf, v51);
  }

LABEL_33:

  v22 = v29;
LABEL_34:
  v28 = v22;
LABEL_35:

  return v28;
}

- (id)_type0ReadConfigRange:(_NSRange)range data:(id *)data
{
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_tagUUID(self, a2, range.location);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_tagUUID(self, v9, v10);
    v15 = objc_msgSend_length(v12, v13, v14);

    if (v15 != 8)
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = objc_msgSend_initWithDomain_code_userInfo_(v22, v23, NFAccessoryTagI2CBridgeErrorDomain, 1, 0);
      goto LABEL_9;
    }
  }

  if (location > 0xFF || length - 257 <= 0xFFFFFFFFFFFFFEFFLL)
  {
    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = objc_msgSend_initWithDomain_code_userInfo_(v19, v20, NFAccessoryTagI2CBridgeErrorDomain, 2, 0);
LABEL_9:
    v24 = v21;
    goto LABEL_21;
  }

  v57 = 4;
  v56 = -16382;
  if (objc_msgSend_selected(self, v9, v10))
  {
    v18 = 18;
  }

  else
  {
    v25 = objc_msgSend_tagUUID(self, v16, v17);

    if (!v25)
    {
      goto LABEL_13;
    }

    v18 = 34;
  }

  LOBYTE(v56) = v18;
LABEL_13:
  v55[0] = location;
  v55[1] = length - 1;
  v26 = objc_alloc(MEMORY[0x277CBEB28]);
  v28 = objc_msgSend_initWithBytes_length_(v26, v27, &v56, 3);
  v31 = objc_msgSend_tagUUID(self, v29, v30);
  if (v31)
  {
    v34 = v31;
    v35 = objc_msgSend_selected(self, v32, v33);

    if ((v35 & 1) == 0)
    {
      v37 = objc_msgSend_tagUUID(self, v32, v36);
      objc_msgSend_appendData_(v28, v38, v37);
    }
  }

  objc_msgSend_appendBytes_length_(v28, v32, v55, 2);
  v41 = objc_msgSend_delegate(self, v39, v40);
  v54 = 0;
  v24 = objc_msgSend_transceive_response_maxTimeout_(v41, v42, v28, &v54, 2.0);
  v43 = v54;

  if (!v24)
  {
    v44 = v43;
    if (*objc_msgSend_bytes(v44, v45, v46))
    {
      v51 = objc_alloc(MEMORY[0x277CCA9B8]);
      v24 = objc_msgSend_initWithDomain_code_userInfo_(v51, v52, NFAccessoryTagI2CBridgeErrorDomain, 4, 0);
    }

    else
    {
      v49 = objc_msgSend_length(v43, v47, v48);
      objc_msgSend_subdataWithRange_(v43, v50, 1, v49 - 1);
      *data = v24 = 0;
    }
  }

LABEL_21:

  return v24;
}

- (id)_type0WriteConfigReg:(unsigned __int8)reg data:(id)data
{
  dataCopy = data;
  v9 = objc_msgSend_tagUUID(self, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_tagUUID(self, v10, v11);
    v16 = objc_msgSend_length(v13, v14, v15);

    if (v16 != 8)
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v24 = objc_msgSend_initWithDomain_code_userInfo_(v25, v26, NFAccessoryTagI2CBridgeErrorDomain, 1, 0);
      goto LABEL_8;
    }
  }

  if (objc_msgSend_length(dataCopy, v10, v11) != 4)
  {
    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = objc_msgSend_initWithDomain_code_userInfo_(v22, v23, NFAccessoryTagI2CBridgeErrorDomain, 2, 0);
LABEL_8:
    v27 = v24;
    goto LABEL_20;
  }

  v57 = 4;
  v56 = -16126;
  if (objc_msgSend_selected(self, v17, v18))
  {
    v21 = 18;
  }

  else
  {
    v28 = objc_msgSend_tagUUID(self, v19, v20);

    if (!v28)
    {
      goto LABEL_12;
    }

    v21 = 34;
  }

  LOBYTE(v56) = v21;
LABEL_12:
  v29 = objc_alloc(MEMORY[0x277CBEB28]);
  v31 = objc_msgSend_initWithBytes_length_(v29, v30, &v56, 3);
  v34 = objc_msgSend_tagUUID(self, v32, v33);
  if (v34)
  {
    v37 = v34;
    v38 = objc_msgSend_selected(self, v35, v36);

    if ((v38 & 1) == 0)
    {
      v40 = objc_msgSend_tagUUID(self, v35, v39);
      objc_msgSend_appendData_(v31, v41, v40);
    }
  }

  regCopy = reg;
  objc_msgSend_appendBytes_length_(v31, v35, &regCopy, 1);
  objc_msgSend_appendData_(v31, v42, dataCopy);
  v45 = objc_msgSend_delegate(self, v43, v44);
  v54 = 0;
  v27 = objc_msgSend_transceive_response_maxTimeout_(v45, v46, v31, &v54, 2.0);
  v47 = v54;

  if (!v27)
  {
    v48 = v47;
    if (*objc_msgSend_bytes(v48, v49, v50))
    {
      v51 = objc_alloc(MEMORY[0x277CCA9B8]);
      v27 = objc_msgSend_initWithDomain_code_userInfo_(v51, v52, NFAccessoryTagI2CBridgeErrorDomain, 4, 0);
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_20:

  return v27;
}

- (id)_type0ReadSRAM:(unsigned __int8)m numOfBlocks:(unsigned __int8)blocks data:(id *)data
{
  blocksCopy = blocks;
  v9 = objc_msgSend_tagUUID(self, a2, m);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_tagUUID(self, v10, v11);
    v16 = objc_msgSend_length(v13, v14, v15);

    if (v16 != 8)
    {
      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = objc_msgSend_initWithDomain_code_userInfo_(v20, v21, NFAccessoryTagI2CBridgeErrorDomain, 1, 0);
LABEL_8:
      v25 = v22;
      goto LABEL_20;
    }
  }

  if (!blocksCopy)
  {
    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = objc_msgSend_initWithDomain_code_userInfo_(v23, v24, NFAccessoryTagI2CBridgeErrorDomain, 2, 0);
    goto LABEL_8;
  }

  v58 = 4;
  v57 = -11774;
  if (objc_msgSend_selected(self, v10, v11))
  {
    v19 = 18;
  }

  else
  {
    v26 = objc_msgSend_tagUUID(self, v17, v18);

    if (!v26)
    {
      goto LABEL_12;
    }

    v19 = 34;
  }

  LOBYTE(v57) = v19;
LABEL_12:
  v56[0] = m;
  v56[1] = blocksCopy - 1;
  v27 = objc_alloc(MEMORY[0x277CBEB28]);
  v29 = objc_msgSend_initWithBytes_length_(v27, v28, &v57, 3);
  v32 = objc_msgSend_tagUUID(self, v30, v31);
  if (v32)
  {
    v35 = v32;
    v36 = objc_msgSend_selected(self, v33, v34);

    if ((v36 & 1) == 0)
    {
      v38 = objc_msgSend_tagUUID(self, v33, v37);
      objc_msgSend_appendData_(v29, v39, v38);
    }
  }

  objc_msgSend_appendBytes_length_(v29, v33, v56, 2);
  v42 = objc_msgSend_delegate(self, v40, v41);
  v55 = 0;
  v25 = objc_msgSend_transceive_response_maxTimeout_(v42, v43, v29, &v55, 2.0);
  v44 = v55;

  if (!v25)
  {
    v45 = v44;
    if (*objc_msgSend_bytes(v45, v46, v47))
    {
      v52 = objc_alloc(MEMORY[0x277CCA9B8]);
      v25 = objc_msgSend_initWithDomain_code_userInfo_(v52, v53, NFAccessoryTagI2CBridgeErrorDomain, 4, 0);
    }

    else
    {
      v50 = objc_msgSend_length(v44, v48, v49);
      objc_msgSend_subdataWithRange_(v44, v51, 1, v50 - 1);
      *data = v25 = 0;
    }
  }

LABEL_20:

  return v25;
}

- (id)_type0WriteSRAM:(unsigned __int8)m data:(id)data
{
  dataCopy = data;
  v9 = objc_msgSend_tagUUID(self, v7, v8);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_tagUUID(self, v10, v11);
    v16 = objc_msgSend_length(v13, v14, v15);

    if (v16 != 8)
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = objc_msgSend_initWithDomain_code_userInfo_(v22, v23, NFAccessoryTagI2CBridgeErrorDomain, 1, 0);
      goto LABEL_6;
    }
  }

  if ((objc_msgSend_length(dataCopy, v10, v11) & 3) != 0 || !objc_msgSend_length(dataCopy, v17, v18))
  {
    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v21 = objc_msgSend_initWithDomain_code_userInfo_(v19, v20, NFAccessoryTagI2CBridgeErrorDomain, 2, 0);
LABEL_6:
    v24 = v21;
    goto LABEL_7;
  }

  v28 = objc_msgSend_length(dataCopy, v26, v27) >> 2;
  v63 = 4;
  v62 = -11518;
  if (objc_msgSend_selected(self, v29, v30))
  {
    v33 = 18;
  }

  else
  {
    v34 = objc_msgSend_tagUUID(self, v31, v32);

    if (!v34)
    {
      goto LABEL_16;
    }

    v33 = 34;
  }

  LOBYTE(v62) = v33;
LABEL_16:
  v35 = v28 - 1;
  v36 = objc_alloc(MEMORY[0x277CBEB28]);
  v38 = objc_msgSend_initWithBytes_length_(v36, v37, &v62, 3);
  v41 = objc_msgSend_tagUUID(self, v39, v40);
  if (v41)
  {
    v44 = v41;
    v45 = objc_msgSend_selected(self, v42, v43);

    if ((v45 & 1) == 0)
    {
      v47 = objc_msgSend_tagUUID(self, v42, v46);
      objc_msgSend_appendData_(v38, v48, v47);
    }
  }

  v61[0] = m;
  v61[1] = v35;
  objc_msgSend_appendBytes_length_(v38, v42, v61, 2);
  objc_msgSend_appendData_(v38, v49, dataCopy);
  v52 = objc_msgSend_delegate(self, v50, v51);
  v60 = 0;
  v24 = objc_msgSend_transceive_response_maxTimeout_(v52, v53, v38, &v60, 2.0);
  v54 = v60;

  if (!v24)
  {
    v55 = v54;
    if (*objc_msgSend_bytes(v55, v56, v57))
    {
      v58 = objc_alloc(MEMORY[0x277CCA9B8]);
      v24 = objc_msgSend_initWithDomain_code_userInfo_(v58, v59, NFAccessoryTagI2CBridgeErrorDomain, 4, 0);
    }

    else
    {
      v24 = 0;
    }
  }

LABEL_7:

  return v24;
}

- (id)_type0GetSystemInfo:(id *)info
{
  v5 = objc_msgSend_tagUUID(self, a2, info);
  if (v5)
  {
    v8 = v5;
    v9 = objc_msgSend_tagUUID(self, v6, v7);
    v12 = objc_msgSend_length(v9, v10, v11);

    if (v12 != 8)
    {
      v40 = objc_alloc(MEMORY[0x277CCA9B8]);
      v31 = objc_msgSend_initWithDomain_code_userInfo_(v40, v41, NFAccessoryTagI2CBridgeErrorDomain, 1, 0);
      goto LABEL_17;
    }
  }

  v47 = 4;
  v46 = -21758;
  if (objc_msgSend_selected(self, v6, v7))
  {
    v15 = 18;
  }

  else
  {
    v16 = objc_msgSend_tagUUID(self, v13, v14);

    if (!v16)
    {
      goto LABEL_8;
    }

    v15 = 34;
  }

  LOBYTE(v46) = v15;
LABEL_8:
  v17 = objc_alloc(MEMORY[0x277CBEB28]);
  v19 = objc_msgSend_initWithBytes_length_(v17, v18, &v46, 3);
  v22 = objc_msgSend_tagUUID(self, v20, v21);
  if (v22)
  {
    v25 = v22;
    v26 = objc_msgSend_selected(self, v23, v24);

    if ((v26 & 1) == 0)
    {
      v27 = objc_msgSend_tagUUID(self, v23, v24);
      objc_msgSend_appendData_(v19, v28, v27);
    }
  }

  v29 = objc_msgSend_delegate(self, v23, v24);
  v45 = 0;
  v31 = objc_msgSend_transceive_response_maxTimeout_(v29, v30, v19, &v45, 2.0);
  v32 = v45;

  if (!v31)
  {
    v33 = v32;
    if (*objc_msgSend_bytes(v33, v34, v35))
    {
      v42 = objc_alloc(MEMORY[0x277CCA9B8]);
      v31 = objc_msgSend_initWithDomain_code_userInfo_(v42, v43, NFAccessoryTagI2CBridgeErrorDomain, 4, 0);
    }

    else
    {
      v38 = objc_msgSend_length(v32, v36, v37);
      objc_msgSend_subdataWithRange_(v32, v39, 1, v38 - 1);
      *info = v31 = 0;
    }
  }

LABEL_17:

  return v31;
}

@end