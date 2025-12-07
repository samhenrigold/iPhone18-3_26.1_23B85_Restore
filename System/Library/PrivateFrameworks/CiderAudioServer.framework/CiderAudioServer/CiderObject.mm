@interface CiderObject
- (CiderObject)init;
- (id).cxx_construct;
- (id)setPropertyDataPrivileged_NSHelper:(id)helper withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data;
- (pair<NSError)getPropertyData_Boolean:(id)boolean withInAddress:(AudioObjectPropertyAddress *)address;
- (pair<NSError)getPropertyData_NSHelper:(id)helper withInAddress:(AudioObjectPropertyAddress *)address withClass:(Class)class;
- (void)connectADSDevice:(id)device withReply:(id)reply;
- (void)connectADSDevices:(id)devices withReply:(id)reply;
- (void)disconnectADSDeviceByAOID:(id)d withReply:(id)reply;
- (void)disconnectADSDeviceByUUID:(id)d withReply:(id)reply;
- (void)disconnectADSDevicesByAOIDs:(id)ds withReply:(id)reply;
- (void)disconnectADSDevicesByUUIDs:(id)ds withReply:(id)reply;
- (void)disconnectAllADSDevices:(id)devices;
- (void)getADSDeviceMap:(id)map;
- (void)getADSPluginAOID:(id)d;
- (void)getAOIDForUUID:(id)d withReply:(id)reply;
- (void)getPropertyDataSize:(id)size withInAddress:(AudioObjectPropertyAddress *)address withInQualifierData:(id)data withReply:(id)reply;
- (void)getPropertyData_Arithmetic:(id)arithmetic withInAddress:(AudioObjectPropertyAddress *)address withInQualifierData:(id)data withReply:(id)reply;
- (void)getPropertyData_Array:(id)array withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply;
- (void)getPropertyData_Boolean:(id)boolean withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply;
- (void)getPropertyData_Dict:(id)dict withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply;
- (void)getPropertyData_String:(id)string withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply;
- (void)getUUIDForAOID:(id)d withReply:(id)reply;
- (void)hasProperty:(id)property withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply;
- (void)isDeviceWithAOIDConnected:(id)connected withReply:(id)reply;
- (void)isDeviceWithUUIDConnected:(id)connected withReply:(id)reply;
- (void)serializeNonADSDevices:(id)devices;
- (void)setPropertyDataPrivileged_Arithmetic:(id)arithmetic withInAddress:(AudioObjectPropertyAddress *)address withInQualifierData:(id)data withInData:(id)inData withReply:(id)reply;
- (void)setPropertyDataPrivileged_Array:(id)array withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data withReply:(id)reply;
- (void)setPropertyDataPrivileged_Dict:(id)dict withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data withReply:(id)reply;
- (void)setPropertyDataPrivileged_String:(id)string withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data withReply:(id)reply;
@end

@implementation CiderObject

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)setPropertyDataPrivileged_String:(id)string withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data withReply:(id)reply
{
  replyCopy = reply;
  v10 = [(CiderObject *)self setPropertyDataPrivileged_NSHelper:string withInAddress:address withInData:data];
  replyCopy[2](replyCopy, v10);
}

- (void)setPropertyDataPrivileged_Dict:(id)dict withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data withReply:(id)reply
{
  replyCopy = reply;
  v10 = [(CiderObject *)self setPropertyDataPrivileged_NSHelper:dict withInAddress:address withInData:data];
  replyCopy[2](replyCopy, v10);
}

- (void)setPropertyDataPrivileged_Array:(id)array withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data withReply:(id)reply
{
  replyCopy = reply;
  v10 = [(CiderObject *)self setPropertyDataPrivileged_NSHelper:array withInAddress:address withInData:data];
  replyCopy[2](replyCopy, v10);
}

- (void)setPropertyDataPrivileged_Arithmetic:(id)arithmetic withInAddress:(AudioObjectPropertyAddress *)address withInQualifierData:(id)data withInData:(id)inData withReply:(id)reply
{
  v72 = *MEMORY[0x277D85DE8];
  arithmeticCopy = arithmetic;
  dataCopy = data;
  inDataCopy = inData;
  replyCopy = reply;
  v17 = replyCopy;
  if (!arithmeticCopy || !inDataCopy || (replyCopy = [inDataCopy bytes]) == 0)
  {
    util::server_log(replyCopy);
    v30 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v61 = 1024;
      v62 = 814;
      v63 = 2112;
      v64 = v31;
      _os_log_impl(&dword_24348C000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = NSStringFromSelector(a2);
    v34 = [v32 errorWithDomain:v33 code:1852797029 userInfo:0];
    (*(v17 + 2))(v17, v34);

    goto LABEL_52;
  }

  unsignedIntValue = [arithmeticCopy unsignedIntValue];
  if (dataCopy && [dataCopy bytes])
  {
    ptr = self->mKernelPtr.__ptr_;
    v20 = [dataCopy length];
    bytes = [dataCopy bytes];
    v22 = [inDataCopy length];
    bytes2 = [inDataCopy bytes];
    v24 = ptr;
    v25 = unsignedIntValue;
    addressCopy2 = address;
    v27 = v20;
    v28 = bytes;
    v29 = v22;
  }

  else
  {
    v35 = self->mKernelPtr.__ptr_;
    v36 = [inDataCopy length];
    bytes2 = [inDataCopy bytes];
    v24 = v35;
    v25 = unsignedIntValue;
    addressCopy2 = address;
    v27 = 0;
    v28 = 0;
    v29 = v36;
  }

  v37 = ads::Kernel::setPropertyDataPrivileged(v24, v25, addressCopy2, v27, v28, v29, bytes2);
  v38 = v37;
  util::server_log(v37);
  v39 = util::server_log(void)::sLogCat;
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    if (v40)
    {
      v41 = bswap32(v38);
      *&buf[1] = v41;
      if ((v41 - 32) > 0x5E || ((v41 >> 8) - 32) > 0x5E || ((v41 << 8 >> 24) - 32) > 0x5E || ((v41 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v59, v38);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v59, buf);
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v59;
      }

      else
      {
        v44 = v59.__r_.__value_.__r.__words[0];
      }

      mSelector = address->mSelector;
      v46 = bswap32(address->mSelector);
      *&buf[1] = v46;
      if ((v46 - 32) > 0x5E || ((v46 >> 8) - 32) > 0x5E || ((v46 << 8 >> 24) - 32) > 0x5E || ((v46 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v58, mSelector);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v58, buf);
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v58;
      }

      else
      {
        v47 = v58.__r_.__value_.__r.__words[0];
      }

      mScope = address->mScope;
      v49 = bswap32(mScope);
      *&buf[1] = v49;
      if ((v49 - 32) > 0x5E || ((v49 >> 8) - 32) > 0x5E || ((v49 << 8 >> 24) - 32) > 0x5E || ((v49 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v57, mScope);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v57, buf);
      }

      v50 = &v57;
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = v57.__r_.__value_.__r.__words[0];
      }

      mElement = address->mElement;
      *buf = 136316674;
      *&buf[4] = "InCider.mm";
      v61 = 1024;
      v62 = 856;
      v63 = 2080;
      v64 = v44;
      v65 = 2080;
      v66 = v47;
      v67 = 2080;
      *v68 = v50;
      *&v68[8] = 1024;
      v69 = mElement;
      v70 = 1024;
      v71 = unsignedIntValue;
      _os_log_impl(&dword_24348C000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s setting property [%s/%s/%u] on device with ID %u with privilege", buf, 0x3Cu);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::setPropertyDataPrivileged" code:v38 userInfo:0];
    (*(v17 + 2))(v17, v33);
LABEL_52:

    goto LABEL_53;
  }

  if (v40)
  {
    v42 = address->mSelector;
    v43 = bswap32(address->mSelector);
    *&buf[1] = v43;
    if ((v43 - 32) > 0x5E || ((v43 >> 8) - 32) > 0x5E || ((v43 << 8 >> 24) - 32) > 0x5E || ((v43 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v59, v42);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v59, buf);
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v59;
    }

    else
    {
      v52 = v59.__r_.__value_.__r.__words[0];
    }

    v53 = address->mScope;
    v54 = bswap32(v53);
    *&buf[1] = v54;
    if ((v54 - 32) > 0x5E || ((v54 >> 8) - 32) > 0x5E || ((v54 << 8 >> 24) - 32) > 0x5E || ((v54 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v58, v53);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v58, buf);
    }

    v55 = &v58;
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v55 = v58.__r_.__value_.__r.__words[0];
    }

    v56 = address->mElement;
    *buf = 136316418;
    *&buf[4] = "InCider.mm";
    v61 = 1024;
    v62 = 845;
    v63 = 2080;
    v64 = v52;
    v65 = 2080;
    v66 = v55;
    v67 = 1024;
    *v68 = v56;
    *&v68[4] = 1024;
    *&v68[6] = unsignedIntValue;
    _os_log_impl(&dword_24348C000, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully set property [%s/%s/%u] on device with ID %u with privilege", buf, 0x32u);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  (*(v17 + 2))(v17, 0);
LABEL_53:
}

- (void)getPropertyData_Boolean:(id)boolean withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply
{
  replyCopy = reply;
  objc_msgSend_getPropertyData_Boolean_withInAddress_(self);
  replyCopy[2](replyCopy, v7, v8);
}

- (pair<NSError)getPropertyData_Boolean:(id)boolean withInAddress:(AudioObjectPropertyAddress *)address
{
  v8 = v4;
  v56 = *MEMORY[0x277D85DE8];
  booleanCopy = boolean;
  v10 = booleanCopy;
  if (booleanCopy)
  {
    unsignedIntValue = [booleanCopy unsignedIntValue];
    v12 = unsignedIntValue;
    ads::Kernel::getPropertyData_TypeRef(&__val, self->mKernelPtr.__ptr_, unsignedIntValue, address);
    if (__val || !BOOLean)
    {
      util::server_log(v13);
      v14 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = bswap32(__val);
        *&buf[1] = v15;
        if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v41, __val);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v41, buf);
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v41;
        }

        else
        {
          v23 = v41.__r_.__value_.__r.__words[0];
        }

        mSelector = address->mSelector;
        v25 = bswap32(address->mSelector);
        *&buf[1] = v25;
        if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v40, mSelector);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v40, buf);
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v40;
        }

        else
        {
          v26 = v40.__r_.__value_.__r.__words[0];
        }

        mScope = address->mScope;
        v28 = bswap32(mScope);
        *&buf[1] = v28;
        if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v39, mScope);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v39, buf);
        }

        v29 = &v39;
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v39.__r_.__value_.__r.__words[0];
        }

        mElement = address->mElement;
        *buf = 136316674;
        *&buf[4] = "InCider.mm";
        v45 = 1024;
        v46 = 792;
        v47 = 2080;
        v48 = v23;
        v49 = 2080;
        v50 = v26;
        v51 = 2080;
        *v52 = v29;
        *&v52[8] = 1024;
        v53 = mElement;
        v54 = 1024;
        v55 = v12;
        _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }
      }

      *v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyData" code:__val userInfo:0];
      *(v8 + 8) = 0;
    }

    else
    {
      util::server_log(v13);
      v20 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = address->mSelector;
        v22 = bswap32(address->mSelector);
        *&buf[1] = v22;
        if ((v22 - 32) > 0x5E || ((v22 >> 8) - 32) > 0x5E || ((v22 << 8 >> 24) - 32) > 0x5E || ((v22 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v41, v21);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v41, buf);
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v41;
        }

        else
        {
          v31 = v41.__r_.__value_.__r.__words[0];
        }

        v32 = address->mScope;
        v33 = bswap32(v32);
        *&buf[1] = v33;
        if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v40, v32);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v40, buf);
        }

        v34 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v40.__r_.__value_.__r.__words[0];
        }

        v35 = address->mElement;
        *buf = 136316418;
        *&buf[4] = "InCider.mm";
        v45 = 1024;
        v46 = 781;
        v47 = 2080;
        v48 = v31;
        v49 = 2080;
        v50 = v34;
        v51 = 1024;
        *v52 = v35;
        *&v52[4] = 1024;
        *&v52[6] = v12;
        _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property [%s/%s/%u] on device with ID %u", buf, 0x32u);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }
      }

      Value = CFBooleanGetValue(BOOLean);
      *v8 = 0;
      *(v8 + 8) = Value != 0;
    }

    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    util::server_log(0);
    v16 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v45 = 1024;
      v46 = 765;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = NSStringFromSelector(a2);
    *v8 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];
    *(v8 + 8) = 0;
  }

  result.var1 = v38;
  result.var0 = v37;
  return result;
}

- (void)getPropertyData_String:(id)string withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply
{
  stringCopy = string;
  replyCopy = reply;
  objc_opt_class();
  objc_msgSend_getPropertyData_NSHelper_withInAddress_withClass_(self);
  replyCopy[2](replyCopy);
}

- (void)getPropertyData_Dict:(id)dict withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply
{
  dictCopy = dict;
  replyCopy = reply;
  objc_opt_class();
  objc_msgSend_getPropertyData_NSHelper_withInAddress_withClass_(self);
  replyCopy[2](replyCopy);
}

- (void)getPropertyData_Array:(id)array withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply
{
  arrayCopy = array;
  replyCopy = reply;
  objc_opt_class();
  objc_msgSend_getPropertyData_NSHelper_withInAddress_withClass_(self);
  replyCopy[2](replyCopy);
}

- (void)getPropertyData_Arithmetic:(id)arithmetic withInAddress:(AudioObjectPropertyAddress *)address withInQualifierData:(id)data withReply:(id)reply
{
  v66 = *MEMORY[0x277D85DE8];
  arithmeticCopy = arithmetic;
  dataCopy = data;
  replyCopy = reply;
  v14 = replyCopy;
  if (arithmeticCopy)
  {
    unsignedIntValue = [arithmeticCopy unsignedIntValue];
    v54 = 0;
    v55 = 0;
    if (dataCopy && [dataCopy bytes])
    {
      ptr = self->mKernelPtr.__ptr_;
      v17 = [dataCopy length];
      bytes = [dataCopy bytes];
      v19 = ptr;
      v20 = unsignedIntValue;
      addressCopy2 = address;
      v22 = v17;
    }

    else
    {
      v19 = self->mKernelPtr.__ptr_;
      v20 = unsignedIntValue;
      addressCopy2 = address;
      v22 = 0;
      bytes = 0;
    }

    ads::Kernel::getPropertyData(buf, v19, v20, addressCopy2, v22, bytes);
    v23 = *buf;
    v54 = *buf;
    v24 = *&buf[8];
    v55 = *&buf[8];
    util::server_log(v25);
    v26 = util::server_log(void)::sLogCat;
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v27)
      {
        v28 = bswap32(v23);
        *&buf[1] = v28;
        if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v53, v23);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v53, buf);
        }

        v36 = &v53;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v53.__r_.__value_.__r.__words[0];
        }

        v50 = v36;
        mSelector = address->mSelector;
        v38 = bswap32(address->mSelector);
        *&buf[1] = v38;
        if ((v38 - 32) > 0x5E || ((v38 >> 8) - 32) > 0x5E || ((v38 << 8 >> 24) - 32) > 0x5E || ((v38 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v52, mSelector);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v52, buf);
        }

        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v52;
        }

        else
        {
          v39 = v52.__r_.__value_.__r.__words[0];
        }

        mScope = address->mScope;
        v41 = bswap32(mScope);
        *&buf[1] = v41;
        if ((v41 - 32) > 0x5E || ((v41 >> 8) - 32) > 0x5E || ((v41 << 8 >> 24) - 32) > 0x5E || ((v41 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v51, mScope);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v51, buf);
        }

        v42 = &v51;
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v51.__r_.__value_.__r.__words[0];
        }

        mElement = address->mElement;
        *buf = 136316674;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 728;
        v57 = 2080;
        v58 = v50;
        v59 = 2080;
        v60 = v39;
        v61 = 2080;
        *v62 = v42;
        *&v62[8] = 1024;
        v63 = mElement;
        v64 = 1024;
        v65 = unsignedIntValue;
        _os_log_impl(&dword_24348C000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyData" code:v23 userInfo:0];
      (*(v14 + 2))(v14, v44, 0);
    }

    else
    {
      if (v27)
      {
        v34 = address->mSelector;
        v35 = bswap32(address->mSelector);
        *&buf[1] = v35;
        if ((v35 - 32) > 0x5E || ((v35 >> 8) - 32) > 0x5E || ((v35 << 8 >> 24) - 32) > 0x5E || ((v35 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v53, v34);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v53, buf);
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v53;
        }

        else
        {
          v45 = v53.__r_.__value_.__r.__words[0];
        }

        v46 = address->mScope;
        v47 = bswap32(v46);
        *&buf[1] = v47;
        if ((v47 - 32) > 0x5E || ((v47 >> 8) - 32) > 0x5E || ((v47 << 8 >> 24) - 32) > 0x5E || ((v47 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v52, v46);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v52, buf);
        }

        v48 = &v52;
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v48 = v52.__r_.__value_.__r.__words[0];
        }

        v49 = address->mElement;
        *buf = 136316418;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 717;
        v57 = 2080;
        v58 = v45;
        v59 = 2080;
        v60 = v48;
        v61 = 1024;
        *v62 = v49;
        *&v62[4] = 1024;
        *&v62[6] = unsignedIntValue;
        _os_log_impl(&dword_24348C000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property [%s/%s/%u] on device with ID %u", buf, 0x32u);
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      (*(v14 + 2))(v14, 0, v24);
    }

    if (v24)
    {
      CFRelease(v24);
    }
  }

  else
  {
    util::server_log(replyCopy);
    v29 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 690;
      v57 = 2112;
      v58 = v30;
      _os_log_impl(&dword_24348C000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = NSStringFromSelector(a2);
    v33 = [v31 errorWithDomain:v32 code:1852797029 userInfo:0];
    (*(v14 + 2))(v14, v33, 0);
  }
}

- (void)getPropertyDataSize:(id)size withInAddress:(AudioObjectPropertyAddress *)address withInQualifierData:(id)data withReply:(id)reply
{
  v62 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  dataCopy = data;
  replyCopy = reply;
  v14 = replyCopy;
  if (!sizeCopy)
  {
    util::server_log(replyCopy);
    v27 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v51 = 1024;
      v52 = 634;
      v53 = 2112;
      v54 = v28;
      _os_log_impl(&dword_24348C000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = NSStringFromSelector(a2);
    v31 = [v29 errorWithDomain:v30 code:1852797029 userInfo:0];
    (*(v14 + 2))(v14, v31, 0);

    goto LABEL_50;
  }

  unsignedIntValue = [sizeCopy unsignedIntValue];
  if (dataCopy && [dataCopy bytes])
  {
    ptr = self->mKernelPtr.__ptr_;
    v17 = [dataCopy length];
    bytes = [dataCopy bytes];
    v19 = ptr;
    v20 = unsignedIntValue;
    addressCopy2 = address;
    v22 = v17;
  }

  else
  {
    v19 = self->mKernelPtr.__ptr_;
    v20 = unsignedIntValue;
    addressCopy2 = address;
    v22 = 0;
    bytes = 0;
  }

  PropertyDataSize = ads::Kernel::getPropertyDataSize(v19, v20, addressCopy2, v22, bytes);
  util::server_log(PropertyDataSize);
  v24 = util::server_log(void)::sLogCat;
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (PropertyDataSize)
  {
    if (v25)
    {
      v26 = bswap32(PropertyDataSize);
      *&buf[1] = v26;
      if ((v26 - 32) > 0x5E || ((v26 >> 8) - 32) > 0x5E || ((v26 << 8 >> 24) - 32) > 0x5E || ((v26 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v49, PropertyDataSize);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v49, buf);
      }

      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v49;
      }

      else
      {
        v34 = v49.__r_.__value_.__r.__words[0];
      }

      mSelector = address->mSelector;
      v36 = bswap32(address->mSelector);
      *&buf[1] = v36;
      if ((v36 - 32) > 0x5E || ((v36 >> 8) - 32) > 0x5E || ((v36 << 8 >> 24) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v48, mSelector);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v48, buf);
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v48;
      }

      else
      {
        v37 = v48.__r_.__value_.__r.__words[0];
      }

      mScope = address->mScope;
      v39 = bswap32(mScope);
      *&buf[1] = v39;
      if ((v39 - 32) > 0x5E || ((v39 >> 8) - 32) > 0x5E || ((v39 << 8 >> 24) - 32) > 0x5E || ((v39 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v47, mScope);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v47, buf);
      }

      v40 = &v47;
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = v47.__r_.__value_.__r.__words[0];
      }

      mElement = address->mElement;
      *buf = 136316674;
      *&buf[4] = "InCider.mm";
      v51 = 1024;
      v52 = 672;
      v53 = 2080;
      v54 = v34;
      v55 = 2080;
      v56 = v37;
      v57 = 2080;
      *v58 = v40;
      *&v58[8] = 1024;
      v59 = mElement;
      v60 = 1024;
      v61 = unsignedIntValue;
      _os_log_impl(&dword_24348C000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property data size for [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyDataSize" code:PropertyDataSize userInfo:0];
    (*(v14 + 2))(v14, v30, 0);
LABEL_50:

    goto LABEL_68;
  }

  if (v25)
  {
    v32 = address->mSelector;
    v33 = bswap32(address->mSelector);
    *&buf[1] = v33;
    if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v49, v32);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v49, buf);
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v49;
    }

    else
    {
      v42 = v49.__r_.__value_.__r.__words[0];
    }

    v43 = address->mScope;
    v44 = bswap32(v43);
    *&buf[1] = v44;
    if ((v44 - 32) > 0x5E || ((v44 >> 8) - 32) > 0x5E || ((v44 << 8 >> 24) - 32) > 0x5E || ((v44 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v48, v43);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v48, buf);
    }

    v45 = &v48;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v45 = v48.__r_.__value_.__r.__words[0];
    }

    v46 = address->mElement;
    *buf = 136316418;
    *&buf[4] = "InCider.mm";
    v51 = 1024;
    v52 = 661;
    v53 = 2080;
    v54 = v42;
    v55 = 2080;
    v56 = v45;
    v57 = 1024;
    *v58 = v46;
    *&v58[4] = 1024;
    *&v58[6] = unsignedIntValue;
    _os_log_impl(&dword_24348C000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property data size for [%s/%s/%u] on device with ID %u", buf, 0x32u);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }

  (*(v14 + 2))(v14, 0, HIDWORD(PropertyDataSize));
LABEL_68:
}

- (void)hasProperty:(id)property withInAddress:(AudioObjectPropertyAddress *)address withReply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  replyCopy = reply;
  v11 = replyCopy;
  if (!propertyCopy)
  {
    util::server_log(replyCopy);
    v21 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromSelector(a2);
      *block = 136315650;
      *&block[4] = "InCider.mm";
      *&block[12] = 1024;
      *&block[14] = 593;
      *&block[18] = 2112;
      *&block[20] = v22;
      _os_log_impl(&dword_24348C000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", block, 0x1Cu);
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = NSStringFromSelector(a2);
    v25 = [v23 errorWithDomain:v24 code:1852797029 userInfo:0];
    (*(v11 + 2))(v11, v25, 0);

    goto LABEL_46;
  }

  unsignedIntValue = [propertyCopy unsignedIntValue];
  ptr = self->mKernelPtr.__ptr_;
  v46 = unsignedIntValue;
  __p.__r_.__value_.__r.__words[0] = address;
  v45.__r_.__value_.__r.__words[0] = ptr;
  v45.__r_.__value_.__l.__size_ = &v46;
  v45.__r_.__value_.__r.__words[2] = &__p;
  v14 = *(ptr + 7);
  v15 = applesauce::dispatch::v1::queue::get(v14);
  LODWORD(v44.__r_.__value_.__l.__data_) = 0;
  WORD2(v44.__r_.__value_.__r.__words[0]) = 0;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel11hasPropertyEjPK26AudioObjectPropertyAddressE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS9_17integral_constantIbLb0EEE_block_invoke;
  *&block[24] = &__block_descriptor_48_e5_v8__0l;
  *&block[32] = &v44;
  *&block[40] = &v45;
  dispatch_sync(v15, block);
  v16 = v44.__r_.__value_.__r.__words[0];

  util::server_log(v17);
  v18 = util::server_log(void)::sLogCat;
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v19)
    {
      v20 = bswap32(v16);
      *&block[1] = v20;
      if ((v20 - 32) > 0x5E || ((v20 >> 8) - 32) > 0x5E || ((v20 << 8 >> 24) - 32) > 0x5E || ((v20 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v45, v16);
      }

      else
      {
        strcpy(&block[5], "'");
        block[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v45, block);
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v45;
      }

      else
      {
        v28 = v45.__r_.__value_.__r.__words[0];
      }

      mSelector = address->mSelector;
      v30 = bswap32(address->mSelector);
      *&block[1] = v30;
      if ((v30 - 32) > 0x5E || ((v30 >> 8) - 32) > 0x5E || ((v30 << 8 >> 24) - 32) > 0x5E || ((v30 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v44, mSelector);
      }

      else
      {
        strcpy(&block[5], "'");
        block[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v44, block);
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v44;
      }

      else
      {
        v31 = v44.__r_.__value_.__r.__words[0];
      }

      mScope = address->mScope;
      v33 = bswap32(mScope);
      *&block[1] = v33;
      if ((v33 - 32) > 0x5E || ((v33 >> 8) - 32) > 0x5E || ((v33 << 8 >> 24) - 32) > 0x5E || ((v33 >> 24) - 32) > 0x5E)
      {
        std::to_string(&__p, mScope);
      }

      else
      {
        strcpy(&block[5], "'");
        block[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&__p, block);
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      mElement = address->mElement;
      *block = 136316674;
      *&block[4] = "InCider.mm";
      *&block[12] = 1024;
      *&block[14] = 622;
      *&block[18] = 2080;
      *&block[20] = v28;
      *&block[28] = 1024;
      *&block[30] = unsignedIntValue;
      *&block[34] = 2080;
      *&block[36] = v31;
      *&block[44] = 2080;
      *&block[46] = p_p;
      *&block[54] = 1024;
      *&block[56] = mElement;
      _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s checking if device with ID %u has property [%s/%s/%u]", block, 0x3Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::hasProperty" code:v16 userInfo:0];
    (*(v11 + 2))(v11, v24, 0);
LABEL_46:

    goto LABEL_67;
  }

  if (v19)
  {
    v26 = address->mSelector;
    v27 = bswap32(address->mSelector);
    *&block[1] = v27;
    if ((v27 - 32) > 0x5E || ((v27 >> 8) - 32) > 0x5E || ((v27 << 8 >> 24) - 32) > 0x5E || ((v27 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v45, v26);
    }

    else
    {
      strcpy(&block[5], "'");
      block[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v45, block);
    }

    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v45;
    }

    else
    {
      v37 = v45.__r_.__value_.__r.__words[0];
    }

    v38 = address->mScope;
    v39 = bswap32(v38);
    *&block[1] = v39;
    if ((v39 - 32) > 0x5E || ((v39 >> 8) - 32) > 0x5E || ((v39 << 8 >> 24) - 32) > 0x5E || ((v39 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v44, v38);
    }

    else
    {
      strcpy(&block[5], "'");
      block[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v44, block);
    }

    v40 = &v44;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v44.__r_.__value_.__r.__words[0];
    }

    v41 = address->mElement;
    v42 = "it does";
    *block = 136316674;
    v36 = v16 & 0x100000000;
    *&block[4] = "InCider.mm";
    if (!v36)
    {
      v42 = "'it doesn't";
    }

    *&block[12] = 1024;
    *&block[14] = 611;
    *&block[18] = 1024;
    *&block[20] = unsignedIntValue;
    *&block[24] = 2080;
    *&block[26] = v37;
    *&block[34] = 2080;
    *&block[36] = v40;
    *&block[44] = 1024;
    *&block[46] = v41;
    *&block[50] = 2080;
    *&block[52] = v42;
    _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully checked if device with ID %u has property [%s/%s/%u] (%s)", block, 0x3Cu);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v36 = v16 & 0x100000000;
  }

  (*(v11 + 2))(v11, 0, v36 != 0);
LABEL_67:
}

- (void)serializeNonADSDevices:(id)devices
{
  devicesCopy = devices;
  util::WriteDevicesExceptionSafe(&v6);
  if (v6)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::serializeNonADSDevices" code:? userInfo:?];
    devicesCopy[2](devicesCopy, v4, 0);
  }

  else
  {
    v5 = applesauce::CF::details::make_CFArrayRef<std::string>(v7);
    v8 = v5;
    (devicesCopy)[2](devicesCopy, 0, v5);
    CFRelease(v5);
  }

  v8 = v7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
}

- (void)isDeviceWithUUIDConnected:(id)connected withReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  replyCopy = reply;
  v9 = replyCopy;
  if (connectedCopy)
  {
    std::string::basic_string[abi:ne200100]<0>(&v24, [connectedCopy UTF8String]);
    ptr = self->mKernelPtr.__ptr_;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v24;
    }

    v25[0] = ptr;
    v25[1] = &__p;
    v16 = *(ptr + 7);
    v17 = applesauce::dispatch::v1::queue::get(v16);
    v26 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25isDeviceWithUUIDConnectedENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    *&buf[24] = &__block_descriptor_48_e5_v8__0l;
    *&buf[32] = &v26;
    v28 = v25;
    dispatch_sync(v17, buf);
    v18 = v26;

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    util::server_log(v19);
    v20 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      v21 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v24.__r_.__value_.__r.__words[0];
      }

      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 571;
      v22 = "it is";
      *buf = 136315906;
      if (!v18)
      {
        v22 = "it isn't";
      }

      *&buf[18] = 2080;
      *&buf[20] = v21;
      *&buf[28] = 2080;
      *&buf[30] = v22;
      _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel checked if device with UUID %s is connected (%s)", buf, 0x26u);
    }

    (*(v9 + 2))(v9, 0, v18);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    util::server_log(replyCopy);
    v11 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 563;
      *&buf[18] = 2112;
      *&buf[20] = v12;
      _os_log_impl(&dword_24348C000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 errorWithDomain:v14 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v15, 0);
  }
}

- (void)isDeviceWithAOIDConnected:(id)connected withReply:(id)reply
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  replyCopy = reply;
  v9 = replyCopy;
  if (connectedCopy)
  {
    unsignedIntValue = [connectedCopy unsignedIntValue];
    isDeviceWithAOIDConnected = ads::Kernel::isDeviceWithAOIDConnected(self->mKernelPtr.__ptr_, unsignedIntValue);
    util::server_log(isDeviceWithAOIDConnected);
    v12 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "it isn't";
      v19 = 136315906;
      v20 = "InCider.mm";
      v22 = 554;
      v21 = 1024;
      if (isDeviceWithAOIDConnected)
      {
        v13 = "it is";
      }

      v23 = 1024;
      v24[0] = unsignedIntValue;
      LOWORD(v24[1]) = 2080;
      *(&v24[1] + 2) = v13;
      _os_log_impl(&dword_24348C000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel checked if device with AOID %u is connected (%s)", &v19, 0x22u);
    }

    (*(v9 + 2))(v9, 0, isDeviceWithAOIDConnected);
  }

  else
  {
    util::server_log(replyCopy);
    v14 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v19 = 136315650;
      v20 = "InCider.mm";
      v21 = 1024;
      v22 = 546;
      v23 = 2112;
      *v24 = v15;
      _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", &v19, 0x1Cu);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = NSStringFromSelector(a2);
    v18 = [v16 errorWithDomain:v17 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v18, 0);
  }
}

- (void)disconnectAllADSDevices:(id)devices
{
  v19 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = ads::Kernel::disconnectAllADSDevices(self->mKernelPtr.__ptr_);
  v6 = v5;
  util::server_log(v5);
  v7 = util::server_log(void)::sLogCat;
  v8 = util::server_log(void)::sLogCat;
  if (v6)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = bswap32(v6);
      *&buf[1] = v10;
      if ((v10 - 32) > 0x5E || ((v10 >> 8) - 32) > 0x5E || ((v10 << 8 >> 24) - 32) > 0x5E || ((v10 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v13, v6);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v13, buf);
      }

      v11 = &v13;
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v13.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v15 = 1024;
      v16 = 535;
      v17 = 2080;
      v18 = v11;
      _os_log_impl(&dword_24348C000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting all ADS devices", buf, 0x1Cu);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectAllADSDevices" code:v6 userInfo:0];
    devicesCopy[2](devicesCopy, v12);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "InCider.mm";
      v15 = 1024;
      v16 = 530;
      _os_log_impl(&dword_24348C000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected all ADS devices without error", buf, 0x12u);
    }

    devicesCopy[2](devicesCopy, 0);
  }
}

- (void)disconnectADSDevicesByUUIDs:(id)ds withReply:(id)reply
{
  v65 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  replyCopy = reply;
  v53 = replyCopy;
  v51 = dsCopy;
  if (dsCopy)
  {
    applesauce::CF::ArrayRef::from_get(cf, dsCopy);
    v7 = cf[0];
    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    TypeID = CFArrayGetTypeID();
    v9 = CFGetTypeID(v7);
    if (TypeID == v9)
    {
      Count = CFArrayGetCount(v7);
      v61[0] = 0;
      v61[1] = 0;
      v62 = 0;
      if (Count << 32)
      {
        if (Count <= 0xAAAAAAAAAAAAAAALL)
        {
          block.__end_cap_.__value_ = v61;
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(Count);
        }

LABEL_69:
        std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
      }

      if (Count < 1)
      {
LABEL_22:
        v55 = *v61;
        v56 = v62;
        v61[1] = 0;
        v62 = 0;
        v61[0] = 0;
        v57 = 1;
      }

      else
      {
        v11 = 0;
        v12 = Count & 0x7FFFFFFF;
        v49 = v57;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
          applesauce::CF::convert_as<std::string,0>(&__p, ValueAtIndex);
          if (v60 != 1)
          {
            break;
          }

          v14 = v61[1];
          if (v61[1] >= v62)
          {
            v16 = 0xAAAAAAAAAAAAAAABLL * ((v61[1] - v61[0]) >> 3);
            v17 = v16 + 1;
            if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              v57 = v49;
              goto LABEL_69;
            }

            if (0x5555555555555556 * ((v62 - v61[0]) >> 3) > v17)
            {
              v17 = 0x5555555555555556 * ((v62 - v61[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v62 - v61[0]) >> 3) >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v17;
            }

            block.__end_cap_.__value_ = v61;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v18);
            }

            v19 = (8 * ((v61[1] - v61[0]) >> 3));
            *v19 = __p;
            memset(&__p, 0, sizeof(__p));
            v15 = (24 * v16 + 24);
            v20 = (24 * v16 - (v61[1] - v61[0]));
            memcpy(v19 - (v61[1] - v61[0]), v61[0], v61[1] - v61[0]);
            v21 = v61[0];
            v22 = v62;
            v61[0] = v20;
            v61[1] = v15;
            v62 = 0;
            block.__end_ = v21;
            block.__end_cap_.__value_ = v22;
            block.__first_ = v21;
            block.__begin_ = v21;
            std::__split_buffer<std::string>::~__split_buffer(&block);
          }

          else
          {
            *v61[1] = *&__p.__r_.__value_.__l.__data_;
            v14[2] = *(&__p.__r_.__value_.__l + 2);
            memset(&__p, 0, sizeof(__p));
            v15 = v14 + 3;
          }

          v61[1] = v15;
          if (v12 == ++v11)
          {
            goto LABEL_22;
          }
        }

        v57 = 0;
        LOBYTE(v55) = 0;
      }

      block.__first_ = v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
      if (v57)
      {
        ptr = self->mKernelPtr.__ptr_;
        memset(v54, 0, sizeof(v54));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v54, v55, *(&v55 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v55 + 1) - v55) >> 3));
        __p.__r_.__value_.__r.__words[0] = v54;
        __p.__r_.__value_.__l.__size_ = ptr;
        v29 = *(ptr + 7);
        v30 = applesauce::dispatch::v1::queue::get(v29);
        LODWORD(v61[0]) = 0;
        block.__first_ = MEMORY[0x277D85DD0];
        block.__begin_ = 3221225472;
        block.__end_ = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel27disconnectADSDevicesByUUIDsENSt3__16vectorINS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENSA_ISC_EEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
        block.__end_cap_.__value_ = &__block_descriptor_48_e5_v8__0l;
        block.__end_cap_.__value_ = v61;
        p_p = &__p;
        dispatch_sync(v30, &block);
        v31 = v61[0];

        block.__first_ = v54;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
        util::server_log(v32);
        v33 = util::server_log(void)::sLogCat;
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (!v31)
        {
          if (v34)
          {
            if (!cf[0])
            {
              v48 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x245D37300](v48, "Could not construct");
              __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v41 = CFCopyDescription(cf[0]);
            v61[0] = v41;
            applesauce::CF::details::CFString_get_value<true>(&__p, v41);
            if (v41)
            {
              CFRelease(v41);
            }

            v42 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v42 = __p.__r_.__value_.__r.__words[0];
            }

            LODWORD(block.__first_) = 136315650;
            *(&block.__first_ + 4) = "InCider.mm";
            WORD2(block.__begin_) = 1024;
            *(&block.__begin_ + 6) = 510;
            WORD1(block.__end_) = 2080;
            *(&block.__end_ + 4) = v42;
            _os_log_impl(&dword_24348C000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS devices with UUIDs %s without error", &block, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          (*(v53 + 2))(v53, 0);
          goto LABEL_40;
        }

        v35 = v31;
        if (v34)
        {
          v36 = bswap32(v31);
          *(v61 + 1) = v36;
          if ((v36 - 32) > 0x5E || ((v36 >> 8) - 32) > 0x5E || ((v36 << 8 >> 24) - 32) > 0x5E || ((v36 >> 24) - 32) > 0x5E)
          {
            std::to_string(&__p, v31);
          }

          else
          {
            *(v61 + 5) = 39;
            LOBYTE(v61[0]) = 39;
            std::string::basic_string[abi:ne200100]<0>(&__p, v61);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &__p;
          }

          else
          {
            v43 = __p.__r_.__value_.__r.__words[0];
          }

          if (!cf[0])
          {
            v47 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v47, "Could not construct");
            __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v44 = CFCopyDescription(cf[0]);
          cf[1] = v44;
          applesauce::CF::details::CFString_get_value<true>(v61, v44);
          if (v44)
          {
            CFRelease(v44);
          }

          v45 = v61;
          if (SHIBYTE(v62) < 0)
          {
            v45 = v61[0];
          }

          LODWORD(block.__first_) = 136315906;
          *(&block.__first_ + 4) = "InCider.mm";
          WORD2(block.__begin_) = 1024;
          *(&block.__begin_ + 6) = 515;
          WORD1(block.__end_) = 2080;
          *(&block.__end_ + 4) = v43;
          WORD2(block.__end_cap_.__value_) = 2080;
          *(&block.__end_cap_.__value_ + 6) = v45;
          _os_log_impl(&dword_24348C000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS devices with UUIDs %s", &block, 0x26u);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v61[0]);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDeviceByUUIDs" code:v35 userInfo:0];
        (*(v53 + 2))(v53, v39);
LABEL_39:

LABEL_40:
        if (v57 == 1)
        {
          block.__first_ = &v55;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_44;
      }
    }

    else
    {
      LOBYTE(v55) = 0;
      v57 = 0;
    }

    util::server_log(v9);
    v37 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block.__first_) = 136315394;
      *(&block.__first_ + 4) = "InCider.mm";
      WORD2(block.__begin_) = 1024;
      *(&block.__begin_ + 6) = 521;
      _os_log_impl(&dword_24348C000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject was unable to parse NSArray input as std::vector<std::string>", &block, 0x12u);
    }

    v38 = MEMORY[0x277CCA9B8];
    v39 = NSStringFromSelector(a2);
    v40 = [v38 errorWithDomain:v39 code:1852797029 userInfo:0];
    (*(v53 + 2))(v53, v40);

    goto LABEL_39;
  }

  util::server_log(replyCopy);
  v23 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = NSStringFromSelector(a2);
    LODWORD(block.__first_) = 136315650;
    *(&block.__first_ + 4) = "InCider.mm";
    WORD2(block.__begin_) = 1024;
    *(&block.__begin_ + 6) = 497;
    WORD1(block.__end_) = 2112;
    *(&block.__end_ + 4) = v24;
    _os_log_impl(&dword_24348C000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", &block, 0x1Cu);
  }

  v25 = MEMORY[0x277CCA9B8];
  v26 = NSStringFromSelector(a2);
  v27 = [v25 errorWithDomain:v26 code:1852797029 userInfo:0];
  (*(v53 + 2))(v53, v27);

LABEL_44:
}

- (void)disconnectADSDeviceByUUID:(id)d withReply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v9 = replyCopy;
  if (dCopy)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [dCopy UTF8String]);
    ptr = self->mKernelPtr.__ptr_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = __p;
    }

    v16 = ads::Kernel::disconnectADSDeviceByUUID(ptr, &v27);
    v17 = v16;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    util::server_log(v16);
    v18 = util::server_log(void)::sLogCat;
    v19 = util::server_log(void)::sLogCat;
    if (v17)
    {
      v20 = v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = bswap32(v17);
        *&buf[1] = v21;
        if ((v21 - 32) > 0x5E || ((v21 >> 8) - 32) > 0x5E || ((v21 << 8 >> 24) - 32) > 0x5E || ((v21 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v26, v17);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v26, buf);
        }

        v23 = &v26;
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "InCider.mm";
        v30 = 1024;
        v31 = 487;
        v32 = 2080;
        v33 = v23;
        v34 = 2080;
        v35 = p_p;
        _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS device with UUID %s", buf, 0x26u);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDeviceByUUID" code:v17 userInfo:0];
      (*(v9 + 2))(v9, v25);
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "InCider.mm";
        v30 = 1024;
        v31 = 482;
        v32 = 2080;
        v33 = v22;
        _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS device with UUID %s without error", buf, 0x1Cu);
      }

      (*(v9 + 2))(v9, 0);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    util::server_log(replyCopy);
    v11 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v30 = 1024;
      v31 = 473;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_24348C000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 errorWithDomain:v14 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v15);
  }
}

- (void)disconnectADSDevicesByAOIDs:(id)ds withReply:(id)reply
{
  v50 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  replyCopy = reply;
  v39 = dsCopy;
  v40 = replyCopy;
  if (dsCopy)
  {
    applesauce::CF::ArrayRef::from_get(cf, dsCopy);
    v8 = cf[0];
    if (!cf[0])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    TypeID = CFArrayGetTypeID();
    v10 = CFGetTypeID(v8);
    if (TypeID == v10)
    {
      Count = CFArrayGetCount(v8);
      if (Count << 32)
      {
        Count = Count;
        if (!(Count >> 62))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(Count);
        }

        std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
      }

      if (Count < 1)
      {
        ptr = self->mKernelPtr.__ptr_;
        v43 = 0;
        v44 = 0;
        __p = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, 0, 0, 0);
        v41.__r_.__value_.__r.__words[0] = &__p;
        v41.__r_.__value_.__l.__size_ = ptr;
        v19 = *(ptr + 7);
        v20 = applesauce::dispatch::v1::queue::get(v19);
        LODWORD(v46[0]) = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel27disconnectADSDevicesByAOIDsENSt3__16vectorIjNS5_9allocatorIjEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
        *&buf[24] = &__block_descriptor_48_e5_v8__0l;
        *&buf[32] = v46;
        v49 = &v41;
        dispatch_sync(v20, buf);
        v21 = SLODWORD(v46[0]);

        v22 = __p;
        if (__p)
        {
          v43 = __p;
          operator delete(__p);
        }

        util::server_log(v22);
        v23 = util::server_log(void)::sLogCat;
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (!v21)
        {
          if (v24)
          {
            if (!cf[0])
            {
              v37 = __cxa_allocate_exception(0x10uLL);
              MEMORY[0x245D37300](v37, "Could not construct");
              __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v30 = CFCopyDescription(cf[0]);
            v46[0] = v30;
            applesauce::CF::details::CFString_get_value<true>(&v41, v30);
            if (v30)
            {
              CFRelease(v30);
            }

            v31 = &v41;
            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v31 = v41.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "InCider.mm";
            *&buf[12] = 1024;
            *&buf[14] = 452;
            *&buf[18] = 2080;
            *&buf[20] = v31;
            _os_log_impl(&dword_24348C000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS devices with AOIDs %s without error", buf, 0x1Cu);
            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
            }
          }

          (*(v40 + 2))(v40, 0);
          goto LABEL_49;
        }

        if (v24)
        {
          v25 = bswap32(v21);
          *(v46 + 1) = v25;
          if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v41, v21);
          }

          else
          {
            *(v46 + 5) = 39;
            LOBYTE(v46[0]) = 39;
            std::string::basic_string[abi:ne200100]<0>(&v41, v46);
          }

          if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = &v41;
          }

          else
          {
            v32 = v41.__r_.__value_.__r.__words[0];
          }

          if (!cf[0])
          {
            v36 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v36, "Could not construct");
            __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v33 = CFCopyDescription(cf[0]);
          cf[1] = v33;
          applesauce::CF::details::CFString_get_value<true>(v46, v33);
          if (v33)
          {
            CFRelease(v33);
          }

          v34 = v46;
          if (v47 < 0)
          {
            v34 = v46[0];
          }

          *buf = 136315906;
          *&buf[4] = "InCider.mm";
          *&buf[12] = 1024;
          *&buf[14] = 457;
          *&buf[18] = 2080;
          *&buf[20] = v32;
          *&buf[28] = 2080;
          *&buf[30] = v34;
          _os_log_impl(&dword_24348C000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS devices with AOIDs %s", buf, 0x26u);
          if (v47 < 0)
          {
            operator delete(v46[0]);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }
        }

        v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDevicesByAOIDs" code:v21 userInfo:0];
        (*(v40 + 2))(v40, v28);
LABEL_48:

LABEL_49:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        goto LABEL_51;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      v10 = applesauce::CF::convert_as<unsigned int,0>(ValueAtIndex);
      if ((v10 & 0x100000000) != 0)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(1uLL);
      }
    }

    util::server_log(v10);
    v26 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 463;
      _os_log_impl(&dword_24348C000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject was unable to parse NSArray input as std::vector<AudioObjectID>", buf, 0x12u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = NSStringFromSelector(a2);
    v29 = [v27 errorWithDomain:v28 code:1852797029 userInfo:0];
    (*(v40 + 2))(v40, v29);

    goto LABEL_48;
  }

  util::server_log(replyCopy);
  v12 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 136315650;
    *&buf[4] = "InCider.mm";
    *&buf[12] = 1024;
    *&buf[14] = 439;
    *&buf[18] = 2112;
    *&buf[20] = v13;
    _os_log_impl(&dword_24348C000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 errorWithDomain:v15 code:1852797029 userInfo:0];
  (*(v40 + 2))(v40, v16);

LABEL_51:
}

- (void)disconnectADSDeviceByAOID:(id)d withReply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v9 = replyCopy;
  if (!dCopy)
  {
    util::server_log(replyCopy);
    v17 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      v25 = 1024;
      v26 = 415;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_24348C000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = NSStringFromSelector(a2);
    v21 = [v19 errorWithDomain:v20 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v21);

    goto LABEL_21;
  }

  unsignedIntValue = [dCopy unsignedIntValue];
  v11 = ads::Kernel::disconnectADSDeviceByAOID(self->mKernelPtr.__ptr_, unsignedIntValue);
  v12 = v11;
  util::server_log(v11);
  v13 = util::server_log(void)::sLogCat;
  v14 = util::server_log(void)::sLogCat;
  if (v12)
  {
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = bswap32(v12);
      *&buf[1] = v16;
      if ((v16 - 32) > 0x5E || ((v16 >> 8) - 32) > 0x5E || ((v16 << 8 >> 24) - 32) > 0x5E || ((v16 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v23, v12);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v23, buf);
      }

      v22 = &v23;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v23.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "InCider.mm";
      v25 = 1024;
      v26 = 429;
      v27 = 2080;
      v28 = v22;
      v29 = 1024;
      v30 = unsignedIntValue;
      _os_log_impl(&dword_24348C000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s disconnecting ADS device with AOID %u", buf, 0x22u);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::disconnectADSDeviceByAOID" code:v12 userInfo:0];
    (*(v9 + 2))(v9, v20);
LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "InCider.mm";
    v25 = 1024;
    v26 = 424;
    v27 = 1024;
    LODWORD(v28) = unsignedIntValue;
    _os_log_impl(&dword_24348C000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel disconnected ADS device with AOID %u without error", buf, 0x18u);
  }

  (*(v9 + 2))(v9, 0);
LABEL_22:
}

- (void)connectADSDevices:(id)devices withReply:(id)reply
{
  v66 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  replyCopy = reply;
  v9 = replyCopy;
  if (devicesCopy)
  {
    applesauce::CF::ArrayRef::from_get(&cf, devicesCopy);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::convert_as<std::vector<applesauce::CF::DictionaryRef>,0>(&v58, cf);
    if (v60 == 1)
    {
      ptr = self->mKernelPtr.__ptr_;
      memset(v53, 0, sizeof(v53));
      std::vector<applesauce::CF::DictionaryRef>::__init_with_size[abi:ne200100]<applesauce::CF::DictionaryRef*,applesauce::CF::DictionaryRef*>(v53, v58, v59, v59 - v58);
      v62.__r_.__value_.__r.__words[0] = ptr;
      v62.__r_.__value_.__l.__size_ = v53;
      v12 = applesauce::dispatch::v1::queue::get(*(ptr + 7));
      __val = 0;
      v56 = 0;
      v57 = 0;
      __p = 0;
      block.__first_ = MEMORY[0x277D85DD0];
      block.__begin_ = 3221225472;
      block.__end_ = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel17connectADSDevicesENSt3__16vectorINS_2CF13DictionaryRefENS5_9allocatorIS8_EEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
      block.__end_cap_.__value_ = &__block_descriptor_48_e5_v8__0l;
      block.__end_cap_.__value_ = &__val;
      v65 = &v62;
      dispatch_sync(v12, &block);

      block.__first_ = v53;
      std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&block);
      if (__val)
      {
        util::server_log(v13);
        v14 = util::server_log(void)::sLogCat;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = bswap32(__val);
          *(&block.__first_ + 1) = v15;
          if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v62, __val);
          }

          else
          {
            *(&block.__first_ + 5) = 39;
            LOBYTE(block.__first_) = 39;
            std::string::basic_string[abi:ne200100]<0>(&v62, &block);
          }

          v40 = &v62;
          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v40 = v62.__r_.__value_.__r.__words[0];
          }

          LODWORD(block.__first_) = 136315906;
          *(&block.__first_ + 4) = "InCider.mm";
          WORD2(block.__begin_) = 1024;
          *(&block.__begin_ + 6) = 398;
          WORD1(block.__end_) = 2080;
          *(&block.__end_ + 4) = v40;
          WORD2(block.__end_cap_.__value_) = 2048;
          *(&block.__end_cap_.__value_ + 6) = (v59 - v58);
          _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s connecting %lu ADS devices", &block, 0x26u);
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v45 = v9;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v50, __p, v56, (v56 - __p) >> 2);
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v25 = v50;
        v26 = v51;
        selfCopy = self;
        for (i = v25; v25 != v26; ++v25)
        {
          ads::Kernel::getUUIDForAOID(&block, self->mKernelPtr.__ptr_, *v25);
          if (LODWORD(block.__first_))
          {
            v42 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v42, "We should never throw here. Successfully connecting a list of ads::Device then failing to get their UUIDs?");
            v42->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v42, off_278DBC6D0, MEMORY[0x277D82610]);
          }

          if (SHIBYTE(block.__end_cap_.__value_) < 0)
          {
            std::string::__init_copy_ctor_external(&v62, block.__begin_, block.__end_);
            if (LOBYTE(block.__end_cap_.__value_) == 1 && SHIBYTE(block.__end_cap_.__value_) < 0)
            {
              operator delete(block.__begin_);
            }
          }

          else
          {
            v62 = *&block.__begin_;
          }

          v27 = v48;
          if (v48 >= v49)
          {
            v29 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
            v30 = v29 + 1;
            if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v49 - v47) >> 3) > v30)
            {
              v30 = 0x5555555555555556 * ((v49 - v47) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v49 - v47) >> 3) >= 0x555555555555555)
            {
              v31 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v31 = v30;
            }

            block.__end_cap_.__value_ = &v47;
            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v31);
            }

            v32 = (8 * ((v48 - v47) >> 3));
            *v32 = v62;
            memset(&v62, 0, sizeof(v62));
            v28 = 24 * v29 + 24;
            v33 = (24 * v29 - (v48 - v47));
            memcpy(v32 - (v48 - v47), v47, v48 - v47);
            v34 = v47;
            v35 = v49;
            v47 = v33;
            v48 = v28;
            v49 = 0;
            block.__end_ = v34;
            block.__end_cap_.__value_ = v35;
            block.__first_ = v34;
            block.__begin_ = v34;
            std::__split_buffer<std::string>::~__split_buffer(&block);
          }

          else
          {
            *v48 = *&v62.__r_.__value_.__l.__data_;
            *(v27 + 2) = *(&v62.__r_.__value_.__l + 2);
            v28 = (v27 + 24);
          }

          v48 = v28;
        }

        v9 = v45;
        v36 = applesauce::CF::details::make_CFArrayRef<std::string>(&v47);
        util::server_log(v36);
        v37 = util::server_log(void)::sLogCat;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = CFCopyDescription(v36);
          v63 = v38;
          applesauce::CF::details::CFString_get_value<true>(&v62, v38);
          if (v38)
          {
            CFRelease(v38);
          }

          v39 = &v62;
          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v39 = v62.__r_.__value_.__r.__words[0];
          }

          LODWORD(block.__first_) = 136315650;
          *(&block.__first_ + 4) = "InCider.mm";
          WORD2(block.__begin_) = 1024;
          *(&block.__begin_ + 6) = 393;
          WORD1(block.__end_) = 2080;
          *(&block.__end_ + 4) = v39;
          _os_log_impl(&dword_24348C000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel connected ADS devices with UUIDs %s without error", &block, 0x1Cu);
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }
        }

        (*(v45 + 2))(v45, 0, v36);
        CFRelease(v36);
        block.__first_ = &v47;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&block);
        if (i)
        {
          operator delete(i);
        }
      }

      v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::connectADSDevices" code:__val userInfo:0];
      (*(v9 + 2))(v9, v41, 0);

      if (__p)
      {
        v56 = __p;
        operator delete(__p);
      }
    }

    else
    {
      util::server_log(v10);
      v21 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(block.__first_) = 136315394;
        *(&block.__first_ + 4) = "InCider.mm";
        WORD2(block.__begin_) = 1024;
        *(&block.__begin_ + 6) = 404;
        _os_log_impl(&dword_24348C000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject was unable to parse NSArray input as std::vector<ascf::DictionaryRef>", &block, 0x12u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = NSStringFromSelector(a2);
      v24 = [v22 errorWithDomain:v23 code:1852797029 userInfo:0];
      (*(v9 + 2))(v9, v24, 0);
    }

    if (v60 == 1)
    {
      block.__first_ = &v58;
      std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&block);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    util::server_log(replyCopy);
    v16 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      LODWORD(block.__first_) = 136315650;
      *(&block.__first_ + 4) = "InCider.mm";
      WORD2(block.__begin_) = 1024;
      *(&block.__begin_ + 6) = 369;
      WORD1(block.__end_) = 2112;
      *(&block.__end_ + 4) = v17;
      _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", &block, 0x1Cu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = NSStringFromSelector(a2);
    v20 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v20, 0);
  }
}

- (void)connectADSDevice:(id)device withReply:(id)reply
{
  v50 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  replyCopy = reply;
  v9 = replyCopy;
  if (deviceCopy)
  {
    applesauce::CF::DictionaryRef::from_get(cf, deviceCopy);
    ptr = self->mKernelPtr.__ptr_;
    v11 = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    v38 = v11;
    v12 = ads::Kernel::connectADSDevice(ptr, &v38);
    v13 = v38;
    if (v38)
    {
      CFRelease(v38);
    }

    if (v12)
    {
      util::server_log(v13);
      v14 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = bswap32(v12);
        *(&__p.__r_.__value_.__l.__data_ + 1) = v15;
        if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
        {
          std::to_string(v41, v12);
        }

        else
        {
          *(__p.__r_.__value_.__r.__words + 5) = 39;
          __p.__r_.__value_.__s.__data_[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(v41, &__p);
        }

        if (v41[23] >= 0)
        {
          v29 = v41;
        }

        else
        {
          v29 = *v41;
        }

        if (!cf[0])
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245D37300](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v30 = CFCopyDescription(cf[0]);
        cf[1] = v30;
        applesauce::CF::details::CFString_get_value<true>(&__p, v30);
        if (v30)
        {
          CFRelease(v30);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *v45 = "InCider.mm";
        *&v45[8] = 1024;
        *&v45[10] = 359;
        v46 = 2080;
        v47 = v29;
        v48 = 2080;
        v49 = p_p;
        _os_log_impl(&dword_24348C000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s connecting ADS device with dictionary %s", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v41[23] & 0x80000000) != 0)
        {
          operator delete(*v41);
        }
      }

      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::connectADSDevice" code:v12 userInfo:0];
      (*(v9 + 2))(v9, v32, 0);
    }

    else
    {
      v21 = self->mKernelPtr.__ptr_;
      v22 = HIDWORD(v12);
      ads::Kernel::getUUIDForAOID(buf, v21, SHIDWORD(v12));
      v23 = *buf;
      util::server_log(v24);
      v25 = util::server_log(void)::sLogCat;
      v26 = util::server_log(void)::sLogCat;
      if (v23)
      {
        v27 = v25;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = bswap32(*buf);
          *&v41[1] = v28;
          if ((v28 - 32) > 0x5E || ((v28 >> 8) - 32) > 0x5E || ((v28 << 8 >> 24) - 32) > 0x5E || ((v28 >> 24) - 32) > 0x5E)
          {
            std::to_string(&__p, *buf);
          }

          else
          {
            strcpy(&v41[5], "'");
            v41[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&__p, v41);
          }

          v36 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v36 = __p.__r_.__value_.__r.__words[0];
          }

          *v41 = 136315906;
          *&v41[4] = "InCider.mm";
          *&v41[12] = 1024;
          *&v41[14] = 353;
          *&v41[18] = 2080;
          *&v41[20] = v36;
          v42 = 1024;
          v43 = v22;
          _os_log_impl(&dword_24348C000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting UUID for newly connected ADS device with AOID %d", v41, 0x22u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getUUIDForAOID" code:*buf userInfo:0];
        (*(v9 + 2))(v9, v35, 0);
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v33 = &v45[4];
          if (SBYTE1(v49) < 0)
          {
            v33 = *&v45[4];
          }

          *v41 = 136315650;
          *&v41[4] = "InCider.mm";
          *&v41[12] = 1024;
          *&v41[14] = 348;
          *&v41[18] = 2080;
          *&v41[20] = v33;
          _os_log_impl(&dword_24348C000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel connected ADS device with UUID %s without error", v41, 0x1Cu);
        }

        if (SBYTE1(v49) >= 0)
        {
          v34 = &v45[4];
        }

        else
        {
          v34 = *&v45[4];
        }

        v35 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:4];
        (*(v9 + 2))(v9, 0, v35);
      }

      if (BYTE2(v49) == 1 && SBYTE1(v49) < 0)
      {
        operator delete(*&v45[4]);
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    util::server_log(replyCopy);
    v16 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 136315650;
      *v45 = "InCider.mm";
      *&v45[8] = 1024;
      *&v45[10] = 336;
      v46 = 2112;
      v47 = v17;
      _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = NSStringFromSelector(a2);
    v20 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v20, 0);
  }
}

- (void)getUUIDForAOID:(id)d withReply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v9 = replyCopy;
  if (dCopy)
  {
    unsignedIntValue = [dCopy unsignedIntValue];
    ads::Kernel::getUUIDForAOID(buf, self->mKernelPtr.__ptr_, unsignedIntValue);
    v11 = *buf;
    util::server_log(v12);
    v13 = util::server_log(void)::sLogCat;
    v14 = util::server_log(void)::sLogCat;
    if (v11)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = bswap32(*buf);
        *&v27[1] = v16;
        if ((v16 - 32) > 0x5E || ((v16 >> 8) - 32) > 0x5E || ((v16 << 8 >> 24) - 32) > 0x5E || ((v16 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v26, *buf);
        }

        else
        {
          strcpy(&v27[5], "'");
          v27[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v26, v27);
        }

        v25 = &v26;
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = v26.__r_.__value_.__r.__words[0];
        }

        *v27 = 136315906;
        *&v27[4] = "InCider.mm";
        v28 = 1024;
        v29 = 325;
        v30 = 2080;
        v31 = v25;
        v32 = 1024;
        v33 = unsignedIntValue;
        _os_log_impl(&dword_24348C000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s retrieving UUID for AOID %u", v27, 0x22u);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getUUIDForAOID" code:*buf userInfo:0];
      (*(v9 + 2))(v9, v24, 0);
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v22 = &__p[4];
        if (v38 < 0)
        {
          v22 = *&__p[4];
        }

        *v27 = 136315906;
        *&v27[4] = "InCider.mm";
        v28 = 1024;
        v29 = 320;
        v30 = 2080;
        v31 = v22;
        v32 = 1024;
        v33 = unsignedIntValue;
        _os_log_impl(&dword_24348C000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved UUID %s for AOID %u without error", v27, 0x22u);
      }

      if (v38 >= 0)
      {
        v23 = &__p[4];
      }

      else
      {
        v23 = *&__p[4];
      }

      v24 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      (*(v9 + 2))(v9, 0, v24);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(*&__p[4]);
    }
  }

  else
  {
    util::server_log(replyCopy);
    v17 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 136315650;
      *__p = "InCider.mm";
      *&__p[8] = 1024;
      *&__p[10] = 311;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_24348C000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = NSStringFromSelector(a2);
    v21 = [v19 errorWithDomain:v20 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v21, 0);
  }
}

- (void)getAOIDForUUID:(id)d withReply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v9 = replyCopy;
  if (dCopy)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [dCopy UTF8String]);
    ptr = self->mKernelPtr.__ptr_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = __p;
    }

    v30.__r_.__value_.__r.__words[0] = ptr;
    v30.__r_.__value_.__l.__size_ = &v31;
    v16 = *(ptr + 7);
    v17 = applesauce::dispatch::v1::queue::get(v16);
    LODWORD(v33) = 0;
    BYTE4(v33) = 0;
    v34 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel14getAOIDForUUIDENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    *&buf[24] = &__block_descriptor_48_e5_v8__0l;
    *&buf[32] = &v33;
    v36 = &v30;
    dispatch_sync(v17, buf);
    v18 = v33;

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    util::server_log(v19);
    v20 = util::server_log(void)::sLogCat;
    v21 = util::server_log(void)::sLogCat;
    if (v18)
    {
      v22 = v20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = bswap32(v18);
        *&buf[1] = v23;
        if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v30, v18);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v30, buf);
        }

        v27 = &v30;
        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = v30.__r_.__value_.__r.__words[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 301;
        *&buf[18] = 2080;
        *&buf[20] = v27;
        *&buf[28] = 2080;
        *&buf[30] = p_p;
        _os_log_impl(&dword_24348C000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s retrieving AOID for UUID %s", buf, 0x26u);
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }

      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getAOIDForUUID" code:v18 userInfo:0];
      (*(v9 + 2))(v9, v29, 0);
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HIDWORD(v18);
        v25 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v25 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "InCider.mm";
        *&buf[12] = 1024;
        *&buf[14] = 296;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        *&buf[24] = 2080;
        *&buf[26] = v25;
        _os_log_impl(&dword_24348C000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved AOID %u for UUID %s without error", buf, 0x22u);
        v26 = v24;
      }

      else
      {
        v26 = HIDWORD(v18);
      }

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
      (*(v9 + 2))(v9, 0, v29);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    util::server_log(replyCopy);
    v11 = util::server_log(void)::sLogCat;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 136315650;
      *&buf[4] = "InCider.mm";
      *&buf[12] = 1024;
      *&buf[14] = 287;
      *&buf[18] = 2112;
      *&buf[20] = v12;
      _os_log_impl(&dword_24348C000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = NSStringFromSelector(a2);
    v15 = [v13 errorWithDomain:v14 code:1852797029 userInfo:0];
    (*(v9 + 2))(v9, v15, 0);
  }
}

- (void)getADSDeviceMap:(id)map
{
  v29 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  ptr = self->mKernelPtr.__ptr_;
  v5 = applesauce::dispatch::v1::queue::get(*(ptr + 7));
  *__p = 0u;
  *v21 = 0u;
  v22 = 1065353216;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel15getADSDeviceMapEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke;
  *&block[24] = &__block_descriptor_48_e5_v8__0l;
  v27 = __p;
  p_ptr = &ptr;
  dispatch_sync(v5, block);

  ptr = 0;
  v25 = 0uLL;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&ptr, v21[1]);
  v6 = v21[0];
  if (v21[0])
  {
    v7 = v25;
    do
    {
      if (v7 >= *(&v25 + 1))
      {
        v8 = (v7 - ptr) >> 4;
        if ((v8 + 1) >> 60)
        {
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        v9 = (*(&v25 + 1) - ptr) >> 3;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (*(&v25 + 1) - ptr >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v27 = &ptr;
        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(v10);
        }

        *block = 0;
        *&block[8] = 16 * v8;
        *&block[16] = (16 * v8);
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,unsigned int const&>((16 * v8), v6 + 16, v6 + 10);
        *&block[16] += 16;
        v11 = ptr + *&block[8] - v25;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&ptr, ptr, v25, v11);
        v12 = ptr;
        v13 = *(&v25 + 1);
        ptr = v11;
        v19 = *&block[16];
        v25 = *&block[16];
        *&block[16] = v12;
        *&block[24] = v13;
        *block = v12;
        *&block[8] = v12;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(block);
        v7 = v19;
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,unsigned int const&>(v7, v6 + 16, v6 + 10);
        v7 += 2;
      }

      *&v25 = v7;
      v6 = *v6;
    }

    while (v6);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&ptr);
  *block = &ptr;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](block);
  v23 = CFDictionaryRef;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v21[0]);
  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  util::server_log(v15);
  v16 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = CFCopyDescription(CFDictionaryRef);
    ptr = v17;
    applesauce::CF::details::CFString_get_value<true>(__p, v17);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = __p;
    if (SHIBYTE(v21[0]) < 0)
    {
      v18 = __p[0];
    }

    *block = 136315650;
    *&block[4] = "InCider.mm";
    *&block[12] = 1024;
    *&block[14] = 278;
    *&block[18] = 2080;
    *&block[20] = v18;
    _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved ADS device map: %s", block, 0x1Cu);
    if (SHIBYTE(v21[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  mapCopy[2](mapCopy, 0, CFDictionaryRef);
  CFRelease(CFDictionaryRef);
}

- (void)getADSPluginAOID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  ADSPluginAOID = ads::Kernel::getADSPluginAOID(dCopy);
  util::server_log(ADSPluginAOID);
  v5 = util::server_log(void)::sLogCat;
  v6 = os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT);
  if (ADSPluginAOID)
  {
    if (v6)
    {
      v8 = 136315650;
      v9 = "InCider.mm";
      v10 = 1024;
      v11 = 271;
      v12 = 1024;
      v13 = ADSPluginAOID;
      _os_log_impl(&dword_24348C000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel retrieved ADS plugin AOID %u without error", &v8, 0x18u);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ADSPluginAOID];
    (*(dCopy + 2))(dCopy, 0, v7);
  }

  else
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = "InCider.mm";
      v10 = 1024;
      v11 = 266;
      _os_log_impl(&dword_24348C000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error retrieving ADS plugin AOID -- ADS is not enabled", &v8, 0x12u);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getADSPluginAOID" code:1852797029 userInfo:0];
    (*(dCopy + 2))(dCopy, v7, 0);
  }
}

- (id)setPropertyDataPrivileged_NSHelper:(id)helper withInAddress:(AudioObjectPropertyAddress *)address withInData:(id)data
{
  v60 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  dataCopy = data;
  v11 = dataCopy;
  if (helperCopy && dataCopy)
  {
    unsignedIntValue = [helperCopy unsignedIntValue];
    v13 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applesauce::CF::ArrayRef::from_get(cf, v13);
      v14 = *cf;
      if (*cf)
      {
        CFRetain(*cf);
        v15 = *cf;
        v47 = v14;
        if (*cf)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        applesauce::CF::DictionaryRef::from_get(cf, v13);
        v21 = *cf;
        if (*cf)
        {
          CFRetain(*cf);
          v15 = *cf;
          v47 = v21;
          if (*cf)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          applesauce::CF::StringRef::from_get(cf, v13);
          v22 = *cf;
          if (*cf)
          {
            CFRetain(*cf);
            v15 = *cf;
            v47 = v22;
            if (*cf)
            {
LABEL_17:
              CFRelease(v15);
            }

LABEL_19:

            v23 = ads::Kernel::setPropertyDataPrivileged_TypeRef(self->mKernelPtr.__ptr_, unsignedIntValue, address, &v47);
            v24 = v23;
            util::server_log(v23);
            v25 = util::server_log(void)::sLogCat;
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            if (v24)
            {
              if (v26)
              {
                v27 = bswap32(v24);
                *&cf[1] = v27;
                if ((v27 - 32) > 0x5E || ((v27 >> 8) - 32) > 0x5E || ((v27 << 8 >> 24) - 32) > 0x5E || ((v27 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v46, v24);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v46, cf);
                }

                if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v30 = &v46;
                }

                else
                {
                  v30 = v46.__r_.__value_.__r.__words[0];
                }

                mSelector = address->mSelector;
                v32 = bswap32(address->mSelector);
                *&cf[1] = v32;
                if ((v32 - 32) > 0x5E || ((v32 >> 8) - 32) > 0x5E || ((v32 << 8 >> 24) - 32) > 0x5E || ((v32 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v45, mSelector);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v45, cf);
                }

                if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v33 = &v45;
                }

                else
                {
                  v33 = v45.__r_.__value_.__r.__words[0];
                }

                mScope = address->mScope;
                v35 = bswap32(mScope);
                *&cf[1] = v35;
                if ((v35 - 32) > 0x5E || ((v35 >> 8) - 32) > 0x5E || ((v35 << 8 >> 24) - 32) > 0x5E || ((v35 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&__p, mScope);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&__p, cf);
                }

                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                mElement = address->mElement;
                *cf = 136316674;
                *&cf[4] = "InCider.mm";
                v49 = 1024;
                v50 = 255;
                v51 = 2080;
                v52 = v30;
                v53 = 2080;
                v54 = v33;
                v55 = 2080;
                *v56 = p_p;
                *&v56[8] = 1024;
                v57 = mElement;
                v58 = 1024;
                v59 = unsignedIntValue;
                _os_log_impl(&dword_24348C000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s setting property [%s/%s/%u] on device with ID %u with privilege", cf, 0x3Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v45.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v46.__r_.__value_.__l.__data_);
                }
              }

              v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::setPropertyDataPrivileged_TypeRef" code:v24 userInfo:0];
            }

            else
            {
              if (v26)
              {
                v28 = address->mSelector;
                v29 = bswap32(address->mSelector);
                *&cf[1] = v29;
                if ((v29 - 32) > 0x5E || ((v29 >> 8) - 32) > 0x5E || ((v29 << 8 >> 24) - 32) > 0x5E || ((v29 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v46, v28);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v46, cf);
                }

                if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v38 = &v46;
                }

                else
                {
                  v38 = v46.__r_.__value_.__r.__words[0];
                }

                v39 = address->mScope;
                v40 = bswap32(v39);
                *&cf[1] = v40;
                if ((v40 - 32) > 0x5E || ((v40 >> 8) - 32) > 0x5E || ((v40 << 8 >> 24) - 32) > 0x5E || ((v40 >> 24) - 32) > 0x5E)
                {
                  std::to_string(&v45, v39);
                }

                else
                {
                  strcpy(&cf[5], "'");
                  cf[0] = 39;
                  std::string::basic_string[abi:ne200100]<0>(&v45, cf);
                }

                v41 = &v45;
                if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v41 = v45.__r_.__value_.__r.__words[0];
                }

                v42 = address->mElement;
                *cf = 136316418;
                *&cf[4] = "InCider.mm";
                v49 = 1024;
                v50 = 244;
                v51 = 2080;
                v52 = v38;
                v53 = 2080;
                v54 = v41;
                v55 = 1024;
                *v56 = v42;
                *&v56[4] = 1024;
                *&v56[6] = unsignedIntValue;
                _os_log_impl(&dword_24348C000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully set property [%s/%s/%u] on device with ID %u with privilege", cf, 0x32u);
                if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v45.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v46.__r_.__value_.__l.__data_);
                }
              }

              v20 = 0;
            }

            if (v47)
            {
              CFRelease(v47);
            }

            goto LABEL_79;
          }
        }
      }
    }

    v47 = 0;
    goto LABEL_19;
  }

  util::server_log(dataCopy);
  v16 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *cf = 136315650;
    *&cf[4] = "InCider.mm";
    v49 = 1024;
    v50 = 225;
    v51 = 2112;
    v52 = v17;
    _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", cf, 0x1Cu);
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = NSStringFromSelector(a2);
  v20 = [v18 errorWithDomain:v19 code:1852797029 userInfo:0];

LABEL_79:

  return v20;
}

- (pair<NSError)getPropertyData_NSHelper:(id)helper withInAddress:(AudioObjectPropertyAddress *)address withClass:(Class)class
{
  v10 = v5;
  v81 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  v12 = helperCopy;
  if (helperCopy)
  {
    unsignedIntValue = [helperCopy unsignedIntValue];
    v14 = unsignedIntValue;
    ads::Kernel::getPropertyData_TypeRef(&__val, self->mKernelPtr.__ptr_, unsignedIntValue, address);
    if (__val)
    {
      util::server_log(v15);
      v16 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = bswap32(__val);
        *&buf[1] = v17;
        if ((v17 - 32) > 0x5E || ((v17 >> 8) - 32) > 0x5E || ((v17 << 8 >> 24) - 32) > 0x5E || ((v17 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v65, __val);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v65, buf);
        }

        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v65;
        }

        else
        {
          v25 = v65.__r_.__value_.__r.__words[0];
        }

        mSelector = address->mSelector;
        v27 = bswap32(address->mSelector);
        *&buf[1] = v27;
        if ((v27 - 32) > 0x5E || ((v27 >> 8) - 32) > 0x5E || ((v27 << 8 >> 24) - 32) > 0x5E || ((v27 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v69, mSelector);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v69, buf);
        }

        if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v69;
        }

        else
        {
          v28 = v69.__r_.__value_.__r.__words[0];
        }

        mScope = address->mScope;
        v30 = bswap32(mScope);
        *&buf[1] = v30;
        if ((v30 - 32) > 0x5E || ((v30 >> 8) - 32) > 0x5E || ((v30 << 8 >> 24) - 32) > 0x5E || ((v30 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v68, mScope);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&v68, buf);
        }

        v31 = &v68;
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v68.__r_.__value_.__r.__words[0];
        }

        mElement = address->mElement;
        *buf = 136316674;
        *&buf[4] = "InCider.mm";
        v71 = 1024;
        v72 = 214;
        v73 = 2080;
        v74 = v25;
        v75 = 2080;
        v76 = v28;
        v77 = 2080;
        *v78 = v31;
        *&v78[8] = 1024;
        *&v78[10] = mElement;
        v79 = 1024;
        v80 = v14;
        _os_log_impl(&dword_24348C000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel encountered error %s getting property [%s/%s/%u] on device with ID %u", buf, 0x3Cu);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v69.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }
      }

      *v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ads::Kernel::getPropertyData_TypeRef" code:__val userInfo:0];
      v10[1] = 0;
LABEL_109:
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_111;
    }

    if (objc_opt_class() == class)
    {
      *buf = 0;
      if (cf)
      {
        v33 = CFGetTypeID(cf);
        if (v33 != CFArrayGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245D37300](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v34 = cf;
      }

      else
      {
        v34 = 0;
      }

      v22 = applesauce::CF::ArrayRef::from_get(&v65, v34);
      *buf = v65.__r_.__value_.__r.__words[0];
      if (!v65.__r_.__value_.__r.__words[0])
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (objc_opt_class() != class)
      {
        v22 = objc_opt_class();
        if (v22 != class)
        {
          goto LABEL_69;
        }

        *buf = 0;
        if (cf)
        {
          v23 = CFGetTypeID(cf);
          if (v23 != CFStringGetTypeID())
          {
            v63 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v63, "Could not construct");
            __cxa_throw(v63, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v24 = cf;
        }

        else
        {
          v24 = 0;
        }

        v22 = applesauce::CF::StringRef::from_get(&v65, v24);
        *buf = v65.__r_.__value_.__r.__words[0];
        if (v65.__r_.__value_.__r.__words[0])
        {
          goto LABEL_60;
        }

LABEL_61:
        v37 = 0;
LABEL_62:
        if (v37)
        {
          util::server_log(v22);
          v38 = util::server_log(void)::sLogCat;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = address->mSelector;
            v40 = bswap32(address->mSelector);
            *&buf[1] = v40;
            if ((v40 - 32) > 0x5E || ((v40 >> 8) - 32) > 0x5E || ((v40 << 8 >> 24) - 32) > 0x5E || ((v40 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v65, v39);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v65, buf);
            }

            if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v65;
            }

            else
            {
              v54 = v65.__r_.__value_.__r.__words[0];
            }

            v55 = address->mScope;
            v56 = bswap32(v55);
            *&buf[1] = v56;
            if ((v56 - 32) > 0x5E || ((v56 >> 8) - 32) > 0x5E || ((v56 << 8 >> 24) - 32) > 0x5E || ((v56 >> 24) - 32) > 0x5E)
            {
              std::to_string(&v69, v55);
            }

            else
            {
              strcpy(&buf[5], "'");
              buf[0] = 39;
              std::string::basic_string[abi:ne200100]<0>(&v69, buf);
            }

            v57 = &v69;
            if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v57 = v69.__r_.__value_.__r.__words[0];
            }

            v58 = address->mElement;
            *buf = 136316418;
            *&buf[4] = "InCider.mm";
            v71 = 1024;
            v72 = 203;
            v73 = 2080;
            v74 = v54;
            v75 = 2080;
            v76 = v57;
            v77 = 1024;
            *v78 = v58;
            *&v78[4] = 1024;
            *&v78[6] = v14;
            _os_log_impl(&dword_24348C000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Kernel successfully got property [%s/%s/%u] on device with ID %u", buf, 0x32u);
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v69.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }
          }

          *v10 = 0;
          v10[1] = v37;
          goto LABEL_109;
        }

LABEL_69:
        util::server_log(v22);
        v41 = util::server_log(void)::sLogCat;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = address->mSelector;
          v43 = bswap32(address->mSelector);
          *(&v69.__r_.__value_.__l.__data_ + 1) = v43;
          if ((v43 - 32) > 0x5E || ((v43 >> 8) - 32) > 0x5E || ((v43 << 8 >> 24) - 32) > 0x5E || ((v43 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v65, v42);
          }

          else
          {
            *(v69.__r_.__value_.__r.__words + 5) = 39;
            v69.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v65, &v69);
          }

          v44 = &v65;
          if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v44 = v65.__r_.__value_.__r.__words[0];
          }

          v64 = v44;
          v45 = address->mScope;
          v46 = bswap32(v45);
          *(&v68.__r_.__value_.__l.__data_ + 1) = v46;
          if ((v46 - 32) > 0x5E || ((v46 >> 8) - 32) > 0x5E || ((v46 << 8 >> 24) - 32) > 0x5E || ((v46 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v69, v45);
          }

          else
          {
            *(v68.__r_.__value_.__r.__words + 5) = 39;
            v68.__r_.__value_.__s.__data_[0] = 39;
            std::string::basic_string[abi:ne200100]<0>(&v69, &v68);
          }

          if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v47 = &v69;
          }

          else
          {
            v47 = v69.__r_.__value_.__r.__words[0];
          }

          v48 = address->mElement;
          v49 = NSStringFromClass(class);
          v50 = v49;
          uTF8String = [v49 UTF8String];
          *buf = 136316674;
          *&buf[4] = "InCider.mm";
          v71 = 1024;
          v72 = 194;
          v73 = 2080;
          v74 = v64;
          v75 = 2080;
          v76 = v47;
          v77 = 1024;
          *v78 = v48;
          *&v78[4] = 2080;
          *&v78[6] = uTF8String;
          v79 = 1024;
          v80 = v14;
          _os_log_impl(&dword_24348C000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error: couldn't convert result for property [%s/%s/%u] to %s on device with ID %u", buf, 0x3Cu);

          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }
        }

        v52 = MEMORY[0x277CCA9B8];
        v53 = NSStringFromSelector(a2);
        *v10 = [v52 errorWithDomain:v53 code:1970171760 userInfo:0];
        v10[1] = 0;

        goto LABEL_109;
      }

      *buf = 0;
      if (cf)
      {
        v35 = CFGetTypeID(cf);
        if (v35 != CFDictionaryGetTypeID())
        {
          v62 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x245D37300](v62, "Could not construct");
          __cxa_throw(v62, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v36 = cf;
      }

      else
      {
        v36 = 0;
      }

      v22 = applesauce::CF::DictionaryRef::from_get(&v65, v36);
      *buf = v65.__r_.__value_.__r.__words[0];
      if (!v65.__r_.__value_.__r.__words[0])
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    v37 = v65.__r_.__value_.__l.__data_;
    CFRelease(v37);
    goto LABEL_62;
  }

  util::server_log(0);
  v18 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    *buf = 136315650;
    *&buf[4] = "InCider.mm";
    v71 = 1024;
    v72 = 158;
    v73 = 2112;
    v74 = v19;
    _os_log_impl(&dword_24348C000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Pre-kernel CiderObject encountered nil parameter in method %@", buf, 0x1Cu);
  }

  v20 = MEMORY[0x277CCA9B8];
  v21 = NSStringFromSelector(a2);
  *v10 = [v20 errorWithDomain:v21 code:1852797029 userInfo:0];
  v10[1] = 0;

LABEL_111:
  result.var1 = v60;
  result.var0 = v59;
  return result;
}

- (CiderObject)init
{
  v7.receiver = self;
  v7.super_class = CiderObject;
  v2 = [(CiderObject *)&v7 init];
  if (v2)
  {
    {
      __cxa_atexit(std::weak_ptr<ads::Kernel>::~weak_ptr, &util::ref_counted_singleton::get_or_create<ads::Kernel>()::sWeakInstanceRef, &dword_24348C000);
    }

    if (!qword_28133BC90 || (v3 = std::__shared_weak_count::lock(qword_28133BC90)) == 0 || !util::ref_counted_singleton::get_or_create<ads::Kernel>()::sWeakInstanceRef)
    {
      operator new();
    }

    *&v4 = util::ref_counted_singleton::get_or_create<ads::Kernel>()::sWeakInstanceRef;
    *(&v4 + 1) = v3;
    v5 = *(v2 + 2);
    *(v2 + 8) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v2;
}

@end