@interface NEIKEv2EAP
+ (uint64_t)codeForPayload:(uint64_t)payload;
+ (uint64_t)loadModuleForType:(uint64_t)type;
+ (uint64_t)typeForPayload:(uint64_t)payload;
- (CFDataRef)sessionKey;
- (NEIKEv2EAP)init;
- (uint64_t)createPayloadResponseForRequest:(void *)request ikeSA:(BOOL *)a success:(BOOL *)success reportEAPError:;
- (void)createPayloadResponseForRequest:(void *)request type:(char)type typeData:(void *)data typeString:(void *)string;
- (void)dealloc;
@end

@implementation NEIKEv2EAP

- (NEIKEv2EAP)init
{
  if (!MEMORY[0x1EEE86C70])
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  v7.receiver = self;
  v7.super_class = NEIKEv2EAP;
  v2 = [(NEIKEv2EAP *)&v7 init];
  if (!v2)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "[super init] failed", v6, 2u);
    }

    self = 0;
    goto LABEL_7;
  }

  *(v2 + 19) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  self = v2;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)dealloc
{
  if (self && self->_module)
  {
    EAPClientModulePluginFree();
    self->_module = 0;
  }

  properties = self->_pluginData.properties;
  if (properties)
  {
    CFRelease(properties);
    self->_pluginData.properties = 0;
  }

  sec_identity = self->_pluginData.sec_identity;
  if (sec_identity)
  {
    CFRelease(sec_identity);
    self->_pluginData.sec_identity = 0;
  }

  encryptedEAPIdentity = self->_pluginData.encryptedEAPIdentity;
  if (encryptedEAPIdentity)
  {
    CFRelease(encryptedEAPIdentity);
    self->_pluginData.encryptedEAPIdentity = 0;
  }

  username = self->_pluginData.username;
  if (username)
  {
    free(username);
    self->_pluginData.username = 0;
  }

  password = self->_pluginData.password;
  if (password)
  {
    memset_s(password, self->_pluginData.password_length, 0, self->_pluginData.password_length);
    free(self->_pluginData.password);
    self->_pluginData.password = 0;
  }

  v8.receiver = self;
  v8.super_class = NEIKEv2EAP;
  [(NEIKEv2EAP *)&v8 dealloc];
}

uint64_t __27__NEIKEv2EAP_getPEAPModule__block_invoke()
{
  result = EAPClientModuleAddBuiltinModule();
  if (!result)
  {

    return EAPClientModuleAddBuiltinModule();
  }

  return result;
}

+ (uint64_t)codeForPayload:(uint64_t)payload
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if ([v2 length] <= 3)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "+[NEIKEv2EAP codeForPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null (payload.length >= sizeof(EAPPacket))", &v6, 0xCu);
    }

    v3 = 0;
  }

  else
  {
    v3 = *[v2 bytes];
  }

  return v3;
}

+ (uint64_t)typeForPayload:(uint64_t)payload
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    if ([v2 length] >= 5 && +[NEIKEv2EAP codeForPayload:](NEIKEv2EAP, v2) - 3 >= 0xFFFFFFFE)
    {
      v3 = *([v2 bytes] + 4);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "+[NEIKEv2EAP typeForPayload:]";
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null payload", &v6, 0xCu);
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

- (void)createPayloadResponseForRequest:(void *)request type:(char)type typeData:(void *)data typeString:(void *)string
{
  requestCopy = request;
  dataCopy = data;
  stringCopy = string;
  bytes = [requestCopy bytes];
  if (!dataCopy && stringCopy)
  {
    dataCopy = [stringCopy dataUsingEncoding:4];
  }

  v11 = [dataCopy length] + 5;
  v14[0] = 2;
  v15 = bswap32(v11) >> 16;
  v14[1] = *(bytes + 1);
  typeCopy = type;
  v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v11];
  [v12 appendBytes:v14 length:5];
  if ([dataCopy length])
  {
    [v12 appendData:dataCopy];
  }

  return v12;
}

+ (uint64_t)loadModuleForType:(uint64_t)type
{
  v2 = a2;
  objc_opt_self();
  if (v2 <= 22)
  {
    if (v2 == 6)
    {
      objc_opt_self();
      if (!MEMORY[0x1EEE86C80])
      {
        return 0;
      }

      if (getGTCModule_onceToken == -1)
      {
        goto LABEL_26;
      }

      v4 = &getGTCModule_onceToken;
      v5 = &__block_literal_global_6;
    }

    else
    {
      if (v2 != 13)
      {
        if (v2 == 18)
        {
          objc_opt_self();
          if (MEMORY[0x1EEE86C90])
          {
            if (getSIMModule_onceToken == -1)
            {
              goto LABEL_26;
            }

            v4 = &getSIMModule_onceToken;
            v5 = &__block_literal_global_2;
            goto LABEL_36;
          }
        }

        return 0;
      }

      objc_opt_self();
      if (!MEMORY[0x1EEE86C98])
      {
        return 0;
      }

      if (getTLSModule_onceToken == -1)
      {
        goto LABEL_26;
      }

      v4 = &getTLSModule_onceToken;
      v5 = &__block_literal_global_8;
    }

LABEL_36:
    dispatch_once(v4, v5);
    goto LABEL_26;
  }

  if (v2 == 26)
  {
    objc_opt_self();
    if (!MEMORY[0x1EEE86C88])
    {
      return 0;
    }

    if (getMSCHAPv2Module_onceToken == -1)
    {
      goto LABEL_26;
    }

    v4 = &getMSCHAPv2Module_onceToken;
    v5 = &__block_literal_global_4;
    goto LABEL_36;
  }

  if (v2 != 25)
  {
    if (v2 != 23)
    {
      return 0;
    }

    objc_opt_self();
    if (!MEMORY[0x1EEE86C78])
    {
      return 0;
    }

    if (getAKAModule_onceToken == -1)
    {
      goto LABEL_26;
    }

    v4 = &getAKAModule_onceToken;
    v5 = &__block_literal_global_9083;
    goto LABEL_36;
  }

  objc_opt_self();
  if (!MEMORY[0x1EEE86C88] || !MEMORY[0x1EEE86CA0])
  {
    return 0;
  }

  if (getPEAPModule_onceToken != -1)
  {
    v4 = &getPEAPModule_onceToken;
    v5 = &__block_literal_global_10_9085;
    goto LABEL_36;
  }

LABEL_26:

  return EAPClientModuleLookup();
}

- (uint64_t)createPayloadResponseForRequest:(void *)request ikeSA:(BOOL *)a success:(BOOL *)success reportEAPError:
{
  v215 = *MEMORY[0x1E69E9840];
  v9 = a2;
  requestCopy = request;
  if (!self)
  {
    goto LABEL_165;
  }

  if (a)
  {
    *a = 0;
  }

  if (!v9)
  {
    v173 = ne_log_obj();
    if (os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2EAP createPayloadResponseForRequest:ikeSA:success:reportEAPError:]";
      _os_log_fault_impl(&dword_1BA83C000, v173, OS_LOG_TYPE_FAULT, "%s called with null request", buf, 0xCu);
    }

    goto LABEL_165;
  }

  v11 = 0x1E7F04000uLL;
  if (*(self + 168))
  {
    v12 = 0;
    goto LABEL_7;
  }

  username = v9;
  v29 = requestCopy;
  self = v29;
  if (v29)
  {
    v30 = v29;
    aCopy = a;
    v206 = 0;
    v31 = [NEIKEv2EAP codeForPayload:username];
    if (v31 != 1)
    {
      v52 = v31;
      v53 = ne_log_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v52;
        v37 = v53;
        _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, "error: received EAP packet with code %u", buf, 8u);
        v12 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v12 = MEMORY[0x1E695E0F0];
        v37 = v53;
      }

      goto LABEL_160;
    }

    v194 = username;
    v32 = [NEIKEv2EAP typeForPayload:username];
    v33 = v30;
    v34 = v32;
    v36 = objc_getProperty(v33, v35, 96, 1);
    v37 = v36;
    if (v34 != 1)
    {
      [v36 eapProtocols];
      v39 = v38 = v37;
      username = [v39 count];

      v37 = v38;
      if (username)
      {
        successCopy = success;
        v191 = requestCopy;
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        eapProtocols = [v38 eapProtocols];
        v41 = [eapProtocols countByEnumeratingWithState:&v202 objects:v208 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v203;
          username = dword_1BAA4F728;
          while (2)
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v203 != v43)
              {
                objc_enumerationMutation(eapProtocols);
              }

              v45 = *(*(&v202 + 1) + 8 * i);
              if (v45)
              {
                v47 = [*(*(&v202 + 1) + 8 * i) method] - 2;
                if (v47 <= 5 && dword_1BAA4F728[v47] == v34)
                {
                  objc_setProperty_atomic(self, v46, v45, 160);
                  goto LABEL_75;
                }
              }
            }

            v42 = [eapProtocols countByEnumeratingWithState:&v202 objects:v208 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }
        }

LABEL_75:

        success = successCopy;
        requestCopy = v191;
        v11 = 0x1E7F04000uLL;
        v37 = v38;
        if (!objc_getProperty(self, v63, 160, 1))
        {
          eapProtocols2 = [v38 eapProtocols];
          v12 = [eapProtocols2 copy];
          goto LABEL_91;
        }
      }
    }

    v64 = [NEIKEv2EAP loadModuleForType:v34];
    *(self + 168) = v64;
    if (v34 != 1 && !v64)
    {
      eapProtocols2 = ne_log_obj();
      if (os_log_type_enabled(eapProtocols2, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v34;
        _os_log_error_impl(&dword_1BA83C000, eapProtocols2, OS_LOG_TYPE_ERROR, "error: module is null for type %u", buf, 8u);
      }

      v12 = MEMORY[0x1E695E0F0];
      goto LABEL_91;
    }

    if (v34 > 0x16u)
    {
      switch(v34)
      {
        case 0x17u:
          v67 = v37;
          username = @"EAPAKAProperties";
          break;
        case 0x19u:
          v67 = v37;
          username = @"EAPPEAPProperties";
          break;
        case 0x1Au:
          v67 = v37;
          username = @"EAPMSCHAPv2Properties";
          break;
        default:
LABEL_94:
          if (v64)
          {
            *(self + 8) = 0u;
            *(self + 152) = 0;
            *(self + 120) = 0u;
            *(self + 136) = 0u;
            *(self + 88) = 0u;
            *(self + 104) = 0u;
            *(self + 56) = 0u;
            *(self + 72) = 0u;
            *(self + 24) = 0u;
            *(self + 40) = 0u;
            goto LABEL_102;
          }

          eapProtocols2 = 0;
          v12 = 0;
LABEL_91:
          username = v194;
LABEL_159:

LABEL_160:
          a = aCopy;
          goto LABEL_161;
      }
    }

    else
    {
      switch(v34)
      {
        case 6u:
          v67 = v37;
          username = @"EAPGTCProperties";
          break;
        case 0xDu:
          v67 = v37;
          username = @"EAPTLSProperties";
          break;
        case 0x12u:
          v67 = v37;
          username = @"EAPSIMProperties";
          break;
        default:
          goto LABEL_94;
      }
    }

    v68 = [objc_getProperty(self v65];
    eapProtocols2 = [v68 objectForKeyedSubscript:username];

    if (!*(self + 168))
    {
      v12 = 0;
      username = v194;
      v37 = v67;
      goto LABEL_159;
    }

    *(self + 8) = 0u;
    *(self + 152) = 0;
    *(self + 120) = 0u;
    *(self + 136) = 0u;
    *(self + 88) = 0u;
    *(self + 104) = 0u;
    *(self + 56) = 0u;
    *(self + 72) = 0u;
    *(self + 24) = 0u;
    *(self + 40) = 0u;
    v37 = v67;
    if (eapProtocols2)
    {
      v192 = requestCopy;
      v188 = [eapProtocols2 mutableCopy];
LABEL_103:
      v70 = objc_getProperty(self, v69, 160, 1);
      v72 = v70;
      successCopy2 = success;
      v185 = eapProtocols2;
      v186 = v37;
      if (v70 && ([v70 method] == 4 || objc_msgSend(v72, "method") == 5 || objc_msgSend(v72, "method") == 7))
      {
        v73 = 1;
      }

      else
      {
        v73 = 0;
        if (v34 != 23 && v34 != 18)
        {
          goto LABEL_112;
        }
      }

      success = objc_getProperty(self, v71, 88, 1);
      username = [success username];
      v74 = [(__CFString *)username length];
      if (v73)
      {
        v75 = v74;

        selfCopy3 = self;
        if (v75)
        {
LABEL_110:
          v78 = objc_getProperty(selfCopy3, v76, 88, 1);
          username2 = [v78 username];
          requestCopy = v192;
          goto LABEL_123;
        }

LABEL_119:
        v80 = objc_getProperty(selfCopy3, v76, 88, 1);
        localPrivateEAPIdentity = [v80 localPrivateEAPIdentity];

        v83 = objc_getProperty(selfCopy3, v82, 88, 1);
        v78 = v83;
        requestCopy = v192;
        if (localPrivateEAPIdentity)
        {
          username2 = [v83 localPrivateEAPIdentity];
        }

        else
        {
          localIdentifier = [v83 localIdentifier];
          username2 = [localIdentifier stringValue];
        }

LABEL_123:
        v11 = 0x1E7F04000;

        success = successCopy2;
        if (username2)
        {
          v86 = [username2 maximumLengthOfBytesUsingEncoding:4];
          v87 = malloc_type_malloc(v86, 0xAAFC57D3uLL);
          *(self + 48) = v87;
          [username2 getCString:v87 maxLength:v86 encoding:4];
          *(self + 56) = strnlen(*(self + 48), v86);
        }

        v187 = username2;
        v88 = objc_getProperty(selfCopy3, v85, 88, 1);
        localEncryptedEAPIdentity = [v88 localEncryptedEAPIdentity];

        if (localEncryptedEAPIdentity)
        {
          v91 = objc_getProperty(selfCopy3, v90, 88, 1);
          *(self + 64) = [v91 localEncryptedEAPIdentity];
        }

        v92 = objc_getProperty(self, v90, 160, 1);
        if (v92)
        {
          v94 = v92;
          if ([v92 method] == 4 || objc_msgSend(v94, "method") == 5)
          {

            goto LABEL_131;
          }

          method = [v94 method];

          if (method == 7)
          {
LABEL_131:
            if (!objc_getProperty(selfCopy3, v93, 88, 1))
            {
              successCopy5 = successCopy2;
              v117 = ne_log_obj();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[NEIKEv2IKESA password]";
                _os_log_fault_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_FAULT, "%s called with null self.sessionConfiguration", buf, 0xCu);
              }

              goto LABEL_154;
            }

            if (!objc_getProperty(selfCopy3, v95, 520, 1))
            {
              v97 = [objc_getProperty(selfCopy3 v96];

              if (v97)
              {
                v99 = [objc_getProperty(selfCopy3 v98];
                v100 = [NEIKEv2Crypto copyDataFromPersistentReference:v99];
                objc_setProperty_atomic(selfCopy3, v101, v100, 520);

                if (!objc_getProperty(selfCopy3, v102, 520, 1))
                {
                  v103 = ne_log_obj();
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = selfCopy3;
                    _os_log_error_impl(&dword_1BA83C000, v103, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve password by reference", buf, 0xCu);
                  }
                }
              }

              v105 = objc_getProperty(selfCopy3, v98, 520, 1);
              if (v105)
              {
                goto LABEL_141;
              }

              v104 = [objc_getProperty(selfCopy3 v104];

              if (v104)
              {
                v107 = MEMORY[0x1E695DEF0];
                v105 = [objc_getProperty(selfCopy3 v96];
                v108 = [v105 dataUsingEncoding:4];
                v109 = [(NSData *)v107 sensitiveDataWithData:v108];
                objc_setProperty_atomic(selfCopy3, v110, v109, 520);

                success = successCopy2;
LABEL_141:
              }
            }

            v111 = objc_getProperty(selfCopy3, v96, 520, 1);
            if (v111)
            {
              v112 = v111;
              v113 = malloc_type_malloc([v111 length]+ 1, 0x1929D726uLL);
              v114 = v112;
              if (!v113)
              {
                successCopy5 = success;
                v122 = ne_log_obj();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
                {
                  v174 = [v112 length];
                  *buf = 134217984;
                  *&buf[4] = v174 + 1;
                  _os_log_fault_impl(&dword_1BA83C000, v122, OS_LOG_TYPE_FAULT, "malloc(%zu) failed", buf, 0xCu);
                }

                username = v194;
                goto LABEL_156;
              }

              v115 = v113;
              memcpy(v113, [v112 bytes], [v112 length]);
              v115[[v112 length]] = 0;
              *(self + 72) = v115;
              *(self + 80) = [v112 length];
              if (v187)
              {

                goto LABEL_150;
              }

              successCopy5 = success;
LABEL_155:
              username = v194;
              v122 = ne_log_obj();
              if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
              {
                v137 = "password";
                if (!v187)
                {
                  v137 = "username";
                }

                *buf = 136315138;
                *&buf[4] = v137;
                _os_log_error_impl(&dword_1BA83C000, v122, OS_LOG_TYPE_ERROR, "EAP plugin data initialization failed, missing %s", buf, 0xCu);
              }

LABEL_156:
              v37 = v186;

              success = successCopy5;
LABEL_157:

              v12 = MEMORY[0x1E695E0F0];
LABEL_158:

              eapProtocols2 = v185;
              goto LABEL_159;
            }

            successCopy5 = success;
LABEL_154:
            v114 = 0;
            goto LABEL_155;
          }
        }

LABEL_150:
        v119 = objc_getProperty(self, v93, 160, 1);
        username = v194;
        if (!v119)
        {
          goto LABEL_226;
        }

        v120 = v119;
        if ([v119 method] == 6)
        {
        }

        else
        {
          method2 = [v120 method];

          v125 = method2 == 7;
          username = v194;
          if (!v125)
          {
            goto LABEL_226;
          }
        }

        copyLocalSecIdentity = [(NEIKEv2IKESA *)selfCopy3 copyLocalSecIdentity];
        *(self + 104) = copyLocalSecIdentity;
        if (!copyLocalSecIdentity)
        {
          v114 = ne_log_obj();
          v37 = v186;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1BA83C000, v114, OS_LOG_TYPE_ERROR, "EAP plugin data initialization failed, missing identity certificate", buf, 2u);
          }

          goto LABEL_157;
        }

        [v188 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:@"TLSCertificateIsRequired"];
        v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v193 = requestCopy;
        if (v127)
        {
          copyRemoteCertificateAuthorityArray = [(NEIKEv2IKESA *)self copyRemoteCertificateAuthorityArray];
          if (copyRemoteCertificateAuthorityArray)
          {
            v213 = 0u;
            v214 = 0u;
            v211 = 0u;
            v212 = 0u;
            v129 = copyRemoteCertificateAuthorityArray;
            v130 = [v129 countByEnumeratingWithState:&v211 objects:buf count:16];
            if (v130)
            {
              v131 = v130;
              v132 = *v212;
              do
              {
                for (j = 0; j != v131; ++j)
                {
                  if (*v212 != v132)
                  {
                    objc_enumerationMutation(v129);
                  }

                  v134 = SecCertificateCopyData(*(*(&v211 + 1) + 8 * j));
                  if (v134)
                  {
                    [v127 addObject:v134];
                  }

                  else
                  {
                    v135 = ne_log_obj();
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
                    {
                      *v201 = 0;
                      _os_log_fault_impl(&dword_1BA83C000, v135, OS_LOG_TYPE_FAULT, "SecCertificateCopyData failed", v201, 2u);
                    }
                  }
                }

                v131 = [v129 countByEnumeratingWithState:&v211 objects:buf count:16];
              }

              while (v131);
            }

            v136 = v127;
            success = successCopy2;
            v11 = 0x1E7F04000;
LABEL_206:

            if ([v136 count])
            {
              [v188 setObject:v136 forKeyedSubscript:@"TLSTrustedCertificates"];
              remoteCertificateHostname = 0;
              requestCopy = v193;
              goto LABEL_216;
            }

            v141 = objc_getProperty(self, v139, 88, 1);
            remoteCertificateHostname = [v141 remoteCertificateHostname];

            requestCopy = v193;
            if (remoteCertificateHostname)
            {
LABEL_215:
              *&v211 = remoteCertificateHostname;
              v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
              [v188 setObject:v154 forKeyedSubscript:@"TLSTrustedServerNames"];

              goto LABEL_216;
            }

            v143 = objc_getProperty(self, v142, 88, 1);
            remoteIdentifier = [v143 remoteIdentifier];
            if ([remoteIdentifier identifierType] != 2)
            {
              v146 = objc_getProperty(self, v145, 88, 1);
              remoteIdentifier2 = [v146 remoteIdentifier];
              if ([remoteIdentifier2 identifierType] != 1)
              {
                v149 = v136;
                v176 = objc_getProperty(self, v148, 88, 1);
                remoteIdentifier3 = [v176 remoteIdentifier];
                identifierType = [remoteIdentifier3 identifierType];

                requestCopy = v193;
                if (identifierType != 5)
                {
                  v178 = objc_getProperty(self, v150, 80, 1);
                  remoteEndpoint = [v178 remoteEndpoint];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if ((isKindOfClass & 1) == 0)
                  {
                    remoteCertificateHostname = 0;
                    success = successCopy2;
                    v11 = 0x1E7F04000;
                    v136 = v149;
LABEL_216:
                    v114 = v136;
                    v155 = [v136 count];
                    if (!remoteCertificateHostname && !v155)
                    {
                      v157 = ne_log_obj();
                      v37 = v186;
                      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v157, OS_LOG_TYPE_ERROR, "EAP plugin data initialization failed, missing server certificate validation info", buf, 2u);
                      }

                      username = v194;
                      goto LABEL_157;
                    }

                    v158 = objc_getProperty(self, v156, 88, 1);
                    tlsMinimumVersion = [v158 tlsMinimumVersion];

                    if (tlsMinimumVersion)
                    {
                      v161 = objc_getProperty(self, v160, 88, 1);
                      tlsMinimumVersion2 = [v161 tlsMinimumVersion];
                      [v188 setObject:tlsMinimumVersion2 forKeyedSubscript:@"TLSMinimumVersion"];
                    }

                    v163 = objc_getProperty(self, v160, 88, 1);
                    tlsMaximumVersion = [v163 tlsMaximumVersion];

                    if (tlsMaximumVersion)
                    {
                      v166 = objc_getProperty(self, v165, 88, 1);
                      tlsMaximumVersion2 = [v166 tlsMaximumVersion];
                      [v188 setObject:tlsMaximumVersion2 forKeyedSubscript:@"TLSMaximumVersion"];
                    }

LABEL_226:
                    *(self + 24) = 1024;
                    *(self + 88) = v188;
                    *v201 = 0;
                    v168 = EAPClientModulePluginInit();
                    if (*v201)
                    {
                      CFRelease(*v201);
                      *v201 = 0;
                    }

                    v37 = v186;
                    if (v168)
                    {
                      successCopy6 = success;
                      v170 = ne_log_obj();
                      if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                      {
                        Property = objc_getProperty(self, v171, 160, 1);
                        *buf = 138412546;
                        *&buf[4] = Property;
                        *&buf[12] = 1024;
                        v210 = v168;
                        _os_log_error_impl(&dword_1BA83C000, v170, OS_LOG_TYPE_ERROR, "%@ EAP client module init failed with status %u", buf, 0x12u);
                      }

                      objc_setProperty_atomic(self, v172, 0, 160);
                      *(self + 168) = 0;
                      v12 = MEMORY[0x1E695E0F0];
                      success = successCopy6;
                    }

                    else
                    {
                      v12 = 0;
                    }

                    username = v194;
                    goto LABEL_158;
                  }

                  v151 = objc_getProperty(self, v181, 80, 1);
                  remoteEndpoint2 = [v151 remoteEndpoint];
                  hostname = [remoteEndpoint2 hostname];
                  goto LABEL_214;
                }

LABEL_213:
                v151 = objc_getProperty(self, v150, 88, 1);
                remoteEndpoint2 = [v151 remoteIdentifier];
                hostname = [remoteEndpoint2 stringValue];
LABEL_214:
                remoteCertificateHostname = hostname;

                success = successCopy2;
                v11 = 0x1E7F04000;
                v136 = v149;
                if (!remoteCertificateHostname)
                {
                  goto LABEL_216;
                }

                goto LABEL_215;
              }

              requestCopy = v193;
            }

            v149 = v136;

            goto LABEL_213;
          }

          v138 = ne_log_obj();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v138, OS_LOG_TYPE_FAULT, "[self copyRemoteCertificateAuthorityArray] failed", buf, 2u);
          }

          v129 = 0;
        }

        else
        {
          v129 = ne_log_obj();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v129, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", buf, 2u);
          }
        }

        v136 = 0;
        goto LABEL_206;
      }

      v73 = v74 != 0;
LABEL_112:
      if ((v34 == 23 || v34 == 18) && ((username, v34 == 23) || v34 == 18))
      {

        selfCopy3 = self;
        if (v73)
        {
          goto LABEL_110;
        }
      }

      else
      {

        selfCopy3 = self;
        if (v73)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_119;
    }

LABEL_102:
    v192 = requestCopy;
    v188 = objc_alloc_init(MEMORY[0x1E695DF90]);
    eapProtocols2 = 0;
    goto LABEL_103;
  }

  v182 = username;
  v183 = ne_log_obj();
  if (os_log_type_enabled(v183, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2EAP selectModuleForPayload:ikeSA:]";
    _os_log_fault_impl(&dword_1BA83C000, v183, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
  }

  v12 = MEMORY[0x1E695E0F0];
  username = v182;
LABEL_161:

  if (v12 && ![v12 count])
  {
    v48 = ne_log_obj();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v49 = "Failed to select EAP module";
      v50 = v48;
      v51 = 2;
      goto LABEL_192;
    }

    goto LABEL_164;
  }

LABEL_7:
  v13 = [(NEIKEv2EAP *)*(v11 + 2456) codeForPayload:v9];
  if (v13 != 1)
  {
    v26 = 0;
LABEL_23:
    if (*(self + 168))
    {
      [v9 bytes];
      [v9 length];
      if (EAPPacketIsValid())
      {
        *buf = 0;
        v208[0] = 0;
        LODWORD(v211) = 0;
        [v9 bytes];
        v27 = EAPClientModulePluginProcess();
        if (*buf)
        {
          v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:? length:?];
          if (!success)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v25 = 0;
          if (!success)
          {
            goto LABEL_61;
          }
        }

        if (v211)
        {
          *success = v211 == 19;
        }

LABEL_61:
        if (v27 == 1)
        {
          if (requestCopy)
          {
            requestCopy[18] = 1;
            requestCopy[20] = 1;
          }

          if (!a)
          {
            goto LABEL_73;
          }

          v62 = 1;
          goto LABEL_72;
        }

        if (v27 || v208[0])
        {
          if (a)
          {
            v62 = 0;
LABEL_72:
            *a = v62;
          }
        }

        else if (a)
        {
          v62 = *buf != 0;
          goto LABEL_72;
        }

LABEL_73:
        EAPClientModulePluginFreePacket();

        goto LABEL_166;
      }

      v48 = ne_log_obj();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_164;
      }

      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      v49 = "Failed to validate EAP payload (code %d type %d)\n";
      goto LABEL_45;
    }

    v48 = ne_log_obj();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      v49 = "EAP payload could not be processed (code %d type %d)\n";
LABEL_45:
      v50 = v48;
      v51 = 14;
LABEL_192:
      _os_log_error_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
    }

LABEL_164:

LABEL_165:
    v25 = 0;
    goto LABEL_166;
  }

  v14 = [(NEIKEv2EAP *)*(v11 + 2456) typeForPayload:v9];
  if (v12)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v197 objects:v207 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v198;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v198 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v197 + 1) + 8 * k);
          if (v22)
          {
            v23 = [v22 method] - 2;
            if (v23 <= 5)
            {
              buf[0] = dword_1BAA4F728[v23];
              [v16 appendBytes:buf length:1];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v197 objects:v207 count:16];
      }

      while (v19);
    }

    v24 = [NEIKEv2EAP createPayloadResponseForRequest:v9 type:3 typeData:v16 typeString:0];
    v25 = v24;
    if (a)
    {
      *a = v24 != 0;
    }

    goto LABEL_166;
  }

  v26 = v14;
  if (v14 != 1)
  {
    goto LABEL_23;
  }

  if (requestCopy)
  {
    v54 = objc_getProperty(requestCopy, v15, 88, 1);
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;
  username3 = [v55 username];

  if (!username3)
  {
    if (requestCopy)
    {
      v58 = objc_getProperty(requestCopy, v57, 88, 1);
    }

    else
    {
      v58 = 0;
    }

    v59 = v58;
    localIdentifier2 = [v59 localIdentifier];
    username3 = [localIdentifier2 stringValue];
  }

  v61 = [NEIKEv2EAP createPayloadResponseForRequest:v9 type:1 typeData:0 typeString:username3];
  v25 = v61;
  if (a)
  {
    *a = v61 != 0;
  }

LABEL_166:
  return v25;
}

- (CFDataRef)sessionKey
{
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 168))
    {
      v1 = EAPClientModulePluginMasterSessionKeyCopyBytes();
      if (v1 >= 1)
      {
        v2 = v1;
        objc_opt_self();
        v3 = SecCFAllocatorZeroize();
        v4 = CFDataCreate(v3, &v7, v2);
        memset_s(&v7, 0x40uLL, 0, v2);
        goto LABEL_9;
      }
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v7 = 136315138;
        v8 = "[NEIKEv2EAP sessionKey]";
        _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null self.module", &v7, 0xCu);
      }
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

@end