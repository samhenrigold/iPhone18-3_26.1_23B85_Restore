@interface NEIKEv2IKESA
+ (NSObject)copyPPKFromConfig:(uint64_t)config;
+ (NSObject)copySharedSecretFromConfig:(uint64_t)config;
- (BOOL)checkSharedKeyAuthData:(const char *)data usingPrimeKey:;
- (NEIKEv2AuthPayload)copyAuthenticationPayloadUsingPrimeKey:(id *)self;
- (NEIKEv2AuthenticationProtocol)selectSecurePasswordMethod:(void *)method;
- (NEIKEv2IKESPI)copyForRekeyAsInitiator:(uint64_t)initiator;
- (NEIKEv2IKESPI)initIKESACommonWithConfiguration:(void *)configuration sessionConfiguration:(void *)sessionConfiguration queue:(void *)queue transportDelegate:(void *)delegate socketGetBlock:(void *)block packetDelegate:(void *)packetDelegate configurationDelegate:(unint64_t)configurationDelegate ikeSessionUniqueIndex:(char)self0 isInitiator:;
- (NSObject)copyLocalCertificateData;
- (NSObject)copyRemoteCertificateAuthorityHashData;
- (NSObject)createAuthenticationDataForSharedSecret:(void *)secret octetVector:;
- (NSObject)createInitiatorEAPAuthenticationDataUsingPrimeKey:(NSObject *)self;
- (NSObject)createInitiatorGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self;
- (NSObject)createInitiatorSignedOctetVectorUsingPrimeKey:(id *)key;
- (NSObject)createResponderGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self;
- (NSObject)createResponderSignedOctetVectorUsingPrimeKey:(void *)key;
- (SecKeyRef)checkValidityOfCertificates:(_BYTE *)certificates;
- (_BYTE)hasTransport;
- (_BYTE)headerOverhead;
- (_BYTE)initiatorSPI;
- (_BYTE)responderSPI;
- (__CFData)deriveKeyFromPrimeKey:(const void *)key hmacContext:;
- (id)authenticationProtocol;
- (id)copyRemoteCertificateAuthorityArray;
- (id)copyTransport;
- (id)description;
- (id)initiatorFirstMessage;
- (id)initiatorNonce;
- (id)localIdentifier;
- (id)ppk;
- (id)preferredKEMProtocol;
- (id)remoteAuthentication;
- (id)remoteIdentifier;
- (id)responderFirstMessage;
- (id)responderNonce;
- (id)sharedSecret;
- (uint64_t)assignRemoteSPI:(void *)i;
- (uint64_t)copyAddressFrom:(unsigned __int8 *)from with:(unsigned int)with;
- (uint64_t)copyDeviceIdentityNotifyPayload;
- (uint64_t)copyLocalSecIdentity;
- (uint64_t)createIntAuthOctetVector;
- (uint64_t)generateAllValuesForSAInit;
- (uint64_t)generateAllValuesUsingSA:(_BYTE *)a;
- (uint64_t)generateDerivativesFromPPK:(uint64_t)k;
- (uint64_t)generateInitialValues;
- (uint64_t)generateLocalValuesForKEMProtocol:(void *)protocol;
- (uint64_t)generateLocalValuesForKEMProtocol:(void *)protocol peerPayload:;
- (uint64_t)maximumPacketSize;
- (uint64_t)processCurrentKeyExchange;
- (uint64_t)processPrimaryKeyExchange;
- (uint64_t)updateIntAuthWithPacket:(void *)packet;
- (uint64_t)usesEAPOnlyAuthentication;
- (void)clearPostAuthenticationData;
- (void)createConcatedNoncesAndReturnError:(_BYTE *)error;
- (void)createConcatenatedSPIsAndReturnError:(_BYTE *)error;
- (void)createRemoteSignedOctetVectorUsingPrimeKey:(void *)key;
- (void)dealloc;
- (void)detachTransportWithShouldInvalidate:(void *)invalidate;
- (void)restorePrimeKeys;
- (void)resyncAddress;
- (void)setAuthProtocolFromPacket:(uint64_t)packet;
- (void)setLocalAuthProtocolUsed:(uint64_t)used;
- (void)setPpkIDFromPacket:(uint64_t)packet;
- (void)setPrimeAuthenticationDataFromPacket:(uint64_t)packet;
- (void)setRemoteAuthProtocolUsed:(uint64_t)used;
- (void)setResponderIdentifierPayload:(uint64_t)payload;
- (void)setState:(void *)state error:;
- (void)switchToNATTraversalPorts;
@end

@implementation NEIKEv2IKESA

- (uint64_t)generateLocalValuesForKEMProtocol:(void *)protocol
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (protocol)
  {
    v5 = objc_getProperty(protocol, v3, 160, 1);

    if (v5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v13 = 136315138;
        v14 = "[NEIKEv2IKESA(Crypto) generateLocalValuesForKEMProtocol:]";
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null !self.currentKEHandler", &v13, 0xCu);
      }
    }

    else
    {
      v8 = +[NEIKEv2KeyExchangeHandler handlerForMethod:](NEIKEv2KeyExchangeHandler, [v4 method]);
      objc_setProperty_atomic(protocol, v9, v8, 160);

      v7 = 1;
      v11 = objc_getProperty(protocol, v10, 160, 1);

      if (v11)
      {
        goto LABEL_8;
      }

      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to get handler for KE method %@", &v13, 0xCu);
      }
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (uint64_t)generateLocalValuesForKEMProtocol:(void *)protocol peerPayload:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  protocolCopy = protocol;
  if (self)
  {
    v8 = objc_getProperty(self, v6, 160, 1);

    if (v8)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v16 = 136315138;
        v17 = "[NEIKEv2IKESA(Crypto) generateLocalValuesForKEMProtocol:peerPayload:]";
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null !self.currentKEHandler", &v16, 0xCu);
      }
    }

    else
    {
      v11 = +[NEIKEv2KeyExchangeHandler handlerForMethod:peerPayload:](NEIKEv2KeyExchangeHandler, [v5 method], protocolCopy);
      objc_setProperty_atomic(self, v12, v11, 160);

      v10 = 1;
      v14 = objc_getProperty(self, v13, 160, 1);

      if (v14)
      {
        goto LABEL_8;
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v5;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to get handler for KE method %@", &v16, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (uint64_t)generateInitialValues
{
  v59 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  preferredKEMProtocol = [(NEIKEv2IKESA *)self preferredKEMProtocol];
  v4 = preferredKEMProtocol;
  if (!preferredKEMProtocol || [preferredKEMProtocol method] == 36 || objc_msgSend(v4, "method") == 37)
  {
    v45 = ne_log_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      *v58 = v4;
      _os_log_fault_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_FAULT, "KE method %@ is not Diffie-Hellman", buf, 0xCu);
    }

    return 0;
  }

  v5 = [(NEIKEv2IKESA *)selfCopy generateLocalValuesForKEMProtocol:v4];

  if (v5)
  {
    v7 = objc_getProperty(selfCopy, v6, 80, 1);
    nonceSize = [v7 nonceSize];

    if (nonceSize - 257 <= 0xFFFFFF0E)
    {
      v32 = ne_log_obj();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      *buf = 67109120;
      *v58 = nonceSize;
      v42 = "Invalid nonce size %u";
      v43 = v32;
      v44 = 8;
      goto LABEL_36;
    }

    v10 = objc_getProperty(selfCopy, v9, 80, 1);
    strictNonceSizeChecks = [v10 strictNonceSizeChecks];

    if (strictNonceSizeChecks)
    {
      v13 = objc_getProperty(selfCopy, v12, 96, 1);

      if (v13)
      {
        v15 = objc_getProperty(selfCopy, v14, 96, 1);
        prfProtocol = [(NEIKEv2IKESAProposal *)v15 prfProtocol];
        nonceSize2 = [prfProtocol nonceSize];
      }

      else
      {
        v46 = nonceSize;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v47 = selfCopy;
        v19 = objc_getProperty(selfCopy, v14, 80, 1);
        proposals = [v19 proposals];

        nonceSize2 = 16;
        v21 = [proposals countByEnumeratingWithState:&v52 objects:buf count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v53;
          nonceSize2 = 16;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v53 != v23)
              {
                objc_enumerationMutation(proposals);
              }

              v25 = *(*(&v52 + 1) + 8 * i);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              prfProtocols = [v25 prfProtocols];
              v27 = [prfProtocols countByEnumeratingWithState:&v48 objects:v56 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v49;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v49 != v29)
                    {
                      objc_enumerationMutation(prfProtocols);
                    }

                    v31 = *(*(&v48 + 1) + 8 * j);
                    if ([v31 nonceSize] > nonceSize2)
                    {
                      nonceSize2 = [v31 nonceSize];
                    }
                  }

                  v28 = [prfProtocols countByEnumeratingWithState:&v48 objects:v56 count:16];
                }

                while (v28);
              }
            }

            v22 = [proposals countByEnumeratingWithState:&v52 objects:buf count:16];
          }

          while (v22);
        }

        selfCopy = v47;
        nonceSize = v46;
      }

      if (nonceSize < nonceSize2)
      {
        v32 = ne_log_obj();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
LABEL_29:

          return 0;
        }

        *buf = 67109376;
        *v58 = nonceSize;
        *&v58[4] = 1024;
        *&v58[6] = nonceSize2;
        v42 = "Nonce size %u < minimum %u";
        v43 = v32;
        v44 = 14;
LABEL_36:
        _os_log_fault_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_FAULT, v42, buf, v44);
        goto LABEL_29;
      }
    }

    v33 = objc_getProperty(selfCopy, v12, 280, 1);
    if (!v33 || (v35 = v33, v5 = 1, v36 = objc_getProperty(selfCopy, v34, 128, 1), v36, v35, !v36))
    {
      v37 = [NEIKEv2Crypto createRandomWithSize:nonceSize];
      objc_setProperty_atomic(selfCopy, v38, v37, 128);

      v40 = objc_getProperty(selfCopy, v39, 128, 1);
      v5 = v40 != 0;
    }
  }

  return v5;
}

- (uint64_t)processCurrentKeyExchange
{
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 160, 1);
  }

  selfCopy2 = self;

  if (!selfCopy2)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_11:

      return 0;
    }

    v16 = 136315138;
    v17 = "[NEIKEv2IKESA(Crypto) processCurrentKeyExchange]";
    v15 = "%s called with null self.currentKEHandler";
LABEL_14:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_11;
  }

  v5 = objc_getProperty(selfCopy, v4, 152, 1);

  if (!v5)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v16 = 136315138;
    v17 = "[NEIKEv2IKESA(Crypto) processCurrentKeyExchange]";
    v15 = "%s called with null self.remoteKeyExchangeData";
    goto LABEL_14;
  }

  v8 = objc_getProperty(selfCopy, v6, 152, 1);
  if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v7, 0, 152);
    Property = objc_getProperty(selfCopy, v9, 160, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 processPeerPayload:v8];

  return v12;
}

- (uint64_t)processPrimaryKeyExchange
{
  if (result)
  {
    v2 = result;
    result = [(NEIKEv2IKESA *)result processCurrentKeyExchange];
    if (result)
    {
      v4 = objc_getProperty(v2, v3, 160, 1);
      v6 = v4;
      if (v4)
      {
        v7 = *(v4 + 3);
      }

      else
      {
        v7 = 0;
      }

      objc_setProperty_atomic(v2, v5, v7, 168);

      objc_setProperty_atomic(v2, v8, 0, 160);
      return 1;
    }
  }

  return result;
}

- (uint64_t)generateAllValuesForSAInit
{
  if (!self)
  {
    return 0;
  }

  if (([(NEIKEv2IKESA *)self processPrimaryKeyExchange]& 1) == 0)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to process KE data", v5, 2u);
    }

    return 0;
  }

  return [(NEIKEv2IKESA *)self generateAllValuesUsingSA:?];
}

- (uint64_t)generateAllValuesUsingSA:(_BYTE *)a
{
  v223 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a)
  {
    Property = objc_getProperty(a, v3, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  if (!v6)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v218 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.chosenProposal";
LABEL_110:
    _os_log_fault_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_FAULT, v30, buf, 0xCu);
    goto LABEL_111;
  }

  initiatorNonce = [(NEIKEv2IKESA *)a initiatorNonce];

  if (!initiatorNonce)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v218 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.initiatorNonce";
    goto LABEL_110;
  }

  responderNonce = [(NEIKEv2IKESA *)a responderNonce];

  if (!responderNonce)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v218 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.responderNonce";
    goto LABEL_110;
  }

  v12 = objc_getProperty(a, v11, 168, 1);

  if (!v12)
  {
    v29 = ne_log_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_111;
    }

    *buf = 136315138;
    v218 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null self.primarySharedSecret";
    goto LABEL_110;
  }

  v14 = v4 != a;
  if (!v4)
  {
    v14 = 0;
  }

  v201 = v14;
  v15 = v4 == a || v4 != 0;
  v198 = v4;
  if (!v15)
  {
    v32 = objc_getProperty(a, v13, 168, 1);
    if (a)
    {
      objc_setProperty_atomic(a, v31, 0, 168);
    }

    initiatorNonce2 = [(NEIKEv2IKESA *)a initiatorNonce];
    v34 = [initiatorNonce2 length];
    responderNonce2 = [(NEIKEv2IKESA *)a responderNonce];
    v37 = [responderNonce2 length] + v34;

    v38 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v37];
    if (!v38)
    {
      v179 = ne_log_obj();
      if (os_log_type_enabled(v179, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v218 = v37;
        _os_log_fault_impl(&dword_1BA83C000, v179, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed", buf, 0xCu);
      }

      v40 = 0;
      v45 = 0;
      v215 = 0;
      goto LABEL_159;
    }

    v40 = v38;
    initiatorNonce3 = [(NEIKEv2IKESA *)a initiatorNonce];
    [(__CFData *)v40 appendData:initiatorNonce3];

    responderNonce3 = [(NEIKEv2IKESA *)a responderNonce];
    [(__CFData *)v40 appendData:responderNonce3];

    v32 = v32;
    v45 = v32;
    goto LABEL_38;
  }

  if (v4)
  {
    v16 = objc_getProperty(v4, v13, 216, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v20 = objc_getProperty(a, v18, 168, 1);
    if (a)
    {
      objc_setProperty_atomic(a, v19, 0, 168);
      v214 = 0u;
      v212 = 0u;
      v213 = 0u;
      v211 = 0u;
      v22 = objc_getProperty(a, v21, 184, 1);
    }

    else
    {
      v22 = 0;
      v214 = 0u;
      v212 = 0u;
      v213 = 0u;
      v211 = 0u;
    }

    v195 = v20;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v211 objects:v222 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v212;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v212 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v26 += [*(*(&v211 + 1) + 8 * i) length];
        }

        v25 = [v23 countByEnumeratingWithState:&v211 objects:v222 count:16];
      }

      while (v25);
    }

    else
    {
      v26 = 0;
    }

    v150 = [v195 length];
    initiatorNonce4 = [(NEIKEv2IKESA *)a initiatorNonce];
    v153 = [initiatorNonce4 length];
    responderNonce4 = [(NEIKEv2IKESA *)a responderNonce];
    v156 = v150 + v153 + [responderNonce4 length] + v26;

    v157 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v156];
    if (!v157)
    {
      v185 = ne_log_obj();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v218 = v156;
        _os_log_fault_impl(&dword_1BA83C000, v185, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed", buf, 0xCu);
      }

      v40 = 0;
      v45 = 0;
      v215 = 0;
      v32 = v195;
      goto LABEL_159;
    }

    v45 = v157;
    [(__CFData *)v157 appendData:v195];
    initiatorNonce5 = [(NEIKEv2IKESA *)a initiatorNonce];
    [(__CFData *)v45 appendData:initiatorNonce5];

    responderNonce5 = [(NEIKEv2IKESA *)a responderNonce];
    [(__CFData *)v45 appendData:responderNonce5];

    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v32 = v195;
    if (a)
    {
      v163 = objc_getProperty(a, v162, 184, 1);
    }

    else
    {
      v163 = 0;
    }

    v164 = v163;
    v165 = [v164 countByEnumeratingWithState:&v207 objects:v221 count:16];
    if (v165)
    {
      v166 = v165;
      v167 = *v208;
      do
      {
        for (j = 0; j != v166; ++j)
        {
          if (*v208 != v167)
          {
            objc_enumerationMutation(v164);
          }

          [(__CFData *)v45 appendData:*(*(&v207 + 1) + 8 * j)];
        }

        v166 = [v164 countByEnumeratingWithState:&v207 objects:v221 count:16];
      }

      while (v166);
    }

    if (a)
    {
      objc_setProperty_atomic(a, v169, 0, 184);
    }

    if (v4)
    {
      v170 = objc_getProperty(v4, v169, 216, 1);
    }

    else
    {
      v170 = 0;
    }

    v40 = v170;
LABEL_38:
    initiatorNonce6 = [(NEIKEv2IKESA *)a initiatorNonce];
    v47 = [initiatorNonce6 length];
    responderNonce6 = [(NEIKEv2IKESA *)a responderNonce];
    v50 = v47 + [responderNonce6 length] + 16;

    v51 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v50];
    if (v51)
    {
      v53 = v51;
      initiatorSPI = [(NEIKEv2IKESA *)a initiatorSPI];
      value = [initiatorSPI value];

      v206 = value;
      responderSPI = [(NEIKEv2IKESA *)a responderSPI];
      value2 = [responderSPI value];

      v205 = value2;
      initiatorNonce7 = [(NEIKEv2IKESA *)a initiatorNonce];
      [(__CFData *)v53 appendData:initiatorNonce7];

      responderNonce7 = [(NEIKEv2IKESA *)a responderNonce];
      [(__CFData *)v53 appendData:responderNonce7];

      [(__CFData *)v53 appendBytes:&v206 length:8];
      [(__CFData *)v53 appendBytes:&v205 length:8];
      [(__CFData *)v40 bytes];
      [(__CFData *)v40 length];
      [(__CFData *)v53 bytes];
      [(__CFData *)v53 length];
      Hkdf = CCKDFParametersCreateHkdf();
      if (!Hkdf)
      {
        v196 = v32;
        if (a)
        {
          v65 = objc_getProperty(a, v64, 96, 1);
        }

        else
        {
          v65 = 0;
        }

        v66 = v65;
        prfProtocol = [(NEIKEv2IKESAProposal *)v66 prfProtocol];

        v203 = v40;
        if (a)
        {
          v70 = objc_getProperty(a, v69, 96, 1);
          v72 = v70;
          if (v70)
          {
            if (objc_getProperty(v70, v71, 104, 1))
            {
              firstObject = objc_getProperty(v72, v73, 104, 1);
            }

            else
            {
              encryptionProtocols = [v72 encryptionProtocols];
              firstObject = [encryptionProtocols firstObject];
            }
          }

          else
          {
            firstObject = 0;
          }

          v77 = objc_getProperty(a, v76, 96, 1);
          v79 = v77;
          if (v77)
          {
            if (objc_getProperty(v77, v78, 112, 1))
            {
              firstObject2 = objc_getProperty(v79, v80, 112, 1);
            }

            else
            {
              integrityProtocols = [v79 integrityProtocols];
              firstObject2 = [integrityProtocols firstObject];
            }

LABEL_51:

            v83 = [(NEIKEv2PRFProtocol *)prfProtocol length];
            if (firstObject && (v84 = firstObject[2], v84 <= 0x1F) && ((0xD0100000 >> v84) & 1) != 0)
            {
              keyLength = 0;
            }

            else
            {
              keyLength = [(NEIKEv2IntegrityProtocol *)firstObject2 keyLength];
            }

            v200 = firstObject2;
            keyMaterialLength = [(NEIKEv2EncryptionProtocol *)firstObject keyMaterialLength];
            if (v201)
            {
              v87 = 1;
            }

            else
            {
              v87 = 3;
            }

            v193 = v83;
            v190 = keyMaterialLength;
            v88 = v83 * v87 + 2 * (keyLength + keyMaterialLength);
            v89 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v88];
            v191 = v89;
            v192 = prfProtocol;
            if (!v89)
            {
              v177 = ne_log_obj();
              if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v218) = v88;
                _os_log_fault_impl(&dword_1BA83C000, v177, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%u] failed", buf, 8u);
              }

              v215 = 0;
              v32 = v196;
              v4 = v198;
              goto LABEL_157;
            }

            v90 = v89;
            obj = firstObject;
            [(NEIKEv2PRFProtocol *)prfProtocol ccDigest];
            [(__CFData *)v45 bytes];
            [(__CFData *)v45 length];
            [(__CFData *)v90 mutableBytes];
            [(__CFData *)v90 length];
            v91 = CCDeriveKey();
            CCKDFParametersDestroy();
            if (v91)
            {
              v178 = ne_log_obj();
              if (os_log_type_enabled(v178, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v218) = v91;
                _os_log_fault_impl(&dword_1BA83C000, v178, OS_LOG_TYPE_FAULT, "CCDeriveKey failed %d", buf, 8u);
              }

              v215 = 0;
              v4 = v198;
              v32 = v196;
              goto LABEL_157;
            }

            bytes = [(__CFData *)v90 bytes];
            v93 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:bytes length:v193];
            objc_setProperty_atomic(a, v94, v93, 216);

            v4 = v198;
            if (a)
            {
              v96 = objc_getProperty(a, v95, 216, 1);
            }

            else
            {
              v96 = 0;
            }

            v97 = v96;

            if (!v97)
            {
              v101 = ne_log_obj();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v218) = v193;
                _os_log_fault_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%u] failed", buf, 8u);
              }

              v53 = 0;
              v203 = 0;
              v45 = 0;
              v32 = 0;
              v215 = 0;
              goto LABEL_157;
            }

            v98 = &bytes[v193];
            if (keyLength)
            {
              v99 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v98 length:keyLength freeWhenDone:0];
              v197 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v98[keyLength] length:keyLength freeWhenDone:0];
              v98 += keyLength + keyLength;
              v100 = v99;
            }

            else
            {
              v197 = 0;
              v100 = 0;
            }

            v204 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v98 length:v190 freeWhenDone:0];
            v102 = &v98[v190];
            v103 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v102 length:v190 freeWhenDone:0];
            if (v201)
            {
LABEL_73:
              v113 = ne_log_obj();
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
              {
                v171 = "SA Init";
                if (v198)
                {
                  v171 = "SA Rekey";
                }

                if (v198 == a)
                {
                  v171 = "Intermediate";
                }

                *buf = 136315138;
                v218 = v171;
                _os_log_debug_impl(&dword_1BA83C000, v113, OS_LOG_TYPE_DEBUG, "Calculated sKeySeed derivatives for %s", buf, 0xCu);
              }

              if (a)
              {
                v114 = a[9];
                if (v114)
                {
                  v115 = v204;
                }

                else
                {
                  v115 = v103;
                }

                if (a[9])
                {
                  v116 = v103;
                }

                else
                {
                  v116 = v204;
                }
              }

              else
              {
                v114 = 0;
                v115 = v103;
                v116 = v204;
              }

              v117 = v115;
              v118 = v116;
              if (firstObject)
              {
                v119 = firstObject[2];
                if (v119 <= 0x1F && ((0xD0100000 >> v119) & 1) != 0)
                {
                  if (v119 == 30 || v119 == 20)
                  {
                    v120 = [[NEIKEv2SecurityContextAESGCM alloc] initWithEncryptionProtocol:firstObject outgoingEncryptionKey:v117 incomingEncryptionKey:v118];
                  }

                  else
                  {
                    v120 = [[NEIKEv2SecurityContextChaCha20Poly1305 alloc] initWithEncryptionProtocol:firstObject outgoingEncryptionKey:v117 incomingEncryptionKey:v118];
                  }

                  v149 = v120;
                  if (!v120)
                  {
                    v186 = ne_log_obj();
                    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v218 = firstObject;
                      _os_log_error_impl(&dword_1BA83C000, v186, OS_LOG_TYPE_ERROR, "Failed to create security context for %@", buf, 0xCu);
                    }

                    v215 = 0;
                    v4 = v198;
                    goto LABEL_155;
                  }

LABEL_154:
                  objc_setProperty_atomic(a, v121, v149, 208);
                  v215 = 1;

LABEL_155:
                  goto LABEL_156;
                }
              }

              v189 = v103;
              if (v114)
              {
                v122 = v100;
              }

              else
              {
                v122 = v197;
              }

              if (v114)
              {
                v123 = v197;
              }

              else
              {
                v123 = v100;
              }

              v124 = v122;
              v125 = v123;
              v126 = [NEIKEv2SecurityContextCBCPlusHMAC alloc];
              v194 = firstObject;
              v188 = v117;
              v127 = v117;
              v187 = v118;
              v128 = v118;
              v202 = v200;
              v129 = v124;
              v130 = v125;
              v131 = v130;
              if (!v126)
              {
                goto LABEL_207;
              }

              if (obj)
              {
                v132 = v194;
                v133 = v202;
                if (v127)
                {
                  if (v128)
                  {
                    if (v202)
                    {
                      if (v129)
                      {
                        if (v130)
                        {
                          v134 = v194[2];
                          if (v134 <= 0x1F && ((0xD0100000 >> v134) & 1) != 0 || (v135 = [NEIKEv2SecurityContextCBCPlusHMAC overheadForPlaintextLength:v194 encryptionProtocol:v202 integrityProtocol:?], v136 = [(NEIKEv2SecurityContext *)v126 initWithMinimumEncryptedPayloadSize:v135], (v126 = v136) == 0))
                          {
                            v149 = 0;
                            goto LABEL_132;
                          }

                          objc_storeStrong(&v136->_encryptionProtocol, obj);
                          encryptionProtocol = v126->_encryptionProtocol;
                          if (encryptionProtocol)
                          {
                            wireType = encryptionProtocol->_wireType;
                            if (wireType == 2)
                            {
                              v139 = 1;
                              goto LABEL_120;
                            }

                            if (wireType != 12)
                            {
                              if (wireType == 3)
                              {
                                v139 = 2;
                                goto LABEL_120;
                              }

                              v143 = ne_log_obj();
                              if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
                              {
                                String = NEIKEv2EncryptionWireTypeCreateString(encryptionProtocol->_wireType);
                                *buf = 138412290;
                                v218 = String;
                                _os_log_fault_impl(&dword_1BA83C000, v143, OS_LOG_TYPE_FAULT, "No CCAlgorithm for encryption wire type %@", buf, 0xCu);
                              }
                            }
                          }

                          v139 = 0;
LABEL_120:
                          cryptorRef = 0;
                          v144 = CCCryptorCreate(0, v139, 0, [v127 bytes], objc_msgSend(v127, "length"), 0, &cryptorRef);
                          if (!v144 && cryptorRef)
                          {
                            v126->_outgoingEncryptionContext = cryptorRef;
                            cryptorRef = 0;
                            v145 = CCCryptorCreate(1u, v139, 0, [v128 bytes], objc_msgSend(v128, "length"), 0, &cryptorRef);
                            if (!v145 && cryptorRef)
                            {
                              v126->_incomingEncryptionContext = cryptorRef;
                              objc_storeStrong(&v126->_integrityProtocol, v200);
                              v146 = [v202 type] - 1;
                              if (v146 < 0xE && ((0x3863u >> v146) & 1) != 0)
                              {
                                v147 = dword_1BAA4F608[v146];
                              }

                              else
                              {
                                v148 = ne_log_obj();
                                if (os_log_type_enabled(v148, OS_LOG_TYPE_FAULT))
                                {
                                  type = [v202 type];
                                  *buf = 67109120;
                                  LODWORD(v218) = type;
                                  _os_log_fault_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_FAULT, "Unknown PRF type %u", buf, 8u);
                                }

                                v147 = 0;
                              }

                              CCHmacInit((&v126->super._minimumEncryptedPayloadSize + 1), v147, [v129 bytes], objc_msgSend(v129, "length"));
                              CCHmacInit(&v126->outgoingHMACBaseContext.ctx[95], v147, [v131 bytes], objc_msgSend(v131, "length"));
                              v149 = v126;
                              goto LABEL_131;
                            }

                            v181 = ne_log_obj();
                            if (!os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_206;
                            }

                            *buf = 67109120;
                            LODWORD(v218) = v145;
                            v182 = "CCCryptorCreate(kCCDecrypt) failed: %d";
                            goto LABEL_204;
                          }

                          v181 = ne_log_obj();
                          if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 67109120;
                            LODWORD(v218) = v144;
                            v182 = "CCCryptorCreate(kCCEncrypt) failed: %d";
LABEL_204:
                            v183 = v181;
                            v184 = 8;
                            goto LABEL_205;
                          }

LABEL_206:

LABEL_207:
                          v149 = 0;
LABEL_131:
                          v132 = v194;
                          v133 = v202;
LABEL_132:

                          if (!v149)
                          {
                            v180 = ne_log_obj();
                            if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412546;
                              v218 = v194;
                              v219 = 2112;
                              v220 = v202;
                              _os_log_error_impl(&dword_1BA83C000, v180, OS_LOG_TYPE_ERROR, "Failed to create security context for %@, %@", buf, 0x16u);
                            }

                            v215 = 0;
                            v4 = v198;
                            firstObject = obj;
                            v103 = v189;
                            v118 = v187;
                            v117 = v188;
                            goto LABEL_155;
                          }

                          v4 = v198;
                          firstObject = obj;
                          v117 = v188;
                          v103 = v189;
                          v118 = v187;
                          goto LABEL_154;
                        }

                        v181 = ne_log_obj();
                        if (!os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_206;
                        }

                        *buf = 136315138;
                        v218 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                        v182 = "%s called with null incomingIntegrityKey";
                      }

                      else
                      {
                        v181 = ne_log_obj();
                        if (!os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                        {
                          goto LABEL_206;
                        }

                        *buf = 136315138;
                        v218 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                        v182 = "%s called with null outgoingIntegrityKey";
                      }
                    }

                    else
                    {
                      v181 = ne_log_obj();
                      if (!os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                      {
                        goto LABEL_206;
                      }

                      *buf = 136315138;
                      v218 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                      v182 = "%s called with null integrityProtocol";
                    }
                  }

                  else
                  {
                    v181 = ne_log_obj();
                    if (!os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_206;
                    }

                    *buf = 136315138;
                    v218 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                    v182 = "%s called with null incomingEncryptionKey";
                  }
                }

                else
                {
                  v181 = ne_log_obj();
                  if (!os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_206;
                  }

                  *buf = 136315138;
                  v218 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                  v182 = "%s called with null outgoingEncryptionKey";
                }
              }

              else
              {
                v181 = ne_log_obj();
                if (!os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_206;
                }

                *buf = 136315138;
                v218 = "[NEIKEv2SecurityContextCBCPlusHMAC initWithEncryptionProtocol:outgoingEncryptionKey:incomingEncryptionKey:integrityProtocol:outgoingIntegrityKey:incomingIntegrityKey:]";
                v182 = "%s called with null encryptionProtocol";
              }

              v183 = v181;
              v184 = 12;
LABEL_205:
              _os_log_fault_impl(&dword_1BA83C000, v183, OS_LOG_TYPE_FAULT, v182, buf, v184);
              goto LABEL_206;
            }

            v104 = &v102[v190];
            v105 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v104 length:v193];
            objc_setProperty_atomic(a, v106, v105, 232);

            v108 = objc_getProperty(a, v107, 232, 1);

            if (v108)
            {
              v109 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v193 length:?];
              objc_setProperty_atomic(a, v110, v109, 248);

              v112 = objc_getProperty(a, v111, 248, 1);

              if (v112)
              {
                goto LABEL_73;
              }

              v142 = ne_log_obj();
              if (!os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
              {
LABEL_135:

                v215 = 0;
LABEL_156:

                v53 = 0;
                v203 = 0;
                v45 = 0;
                v32 = 0;
LABEL_157:

                v40 = v203;
LABEL_158:

LABEL_159:
                v140 = v215;
                goto LABEL_112;
              }

              *buf = 67109120;
              LODWORD(v218) = v193;
            }

            else
            {
              v142 = ne_log_obj();
              if (!os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_135;
              }

              *buf = 67109120;
              LODWORD(v218) = v193;
            }

            _os_log_fault_impl(&dword_1BA83C000, v142, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%u] failed", buf, 8u);
            goto LABEL_135;
          }
        }

        else
        {
          v79 = 0;
          firstObject = 0;
        }

        firstObject2 = 0;
        goto LABEL_51;
      }

      v175 = Hkdf;
      v176 = ne_log_obj();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        LODWORD(v218) = v175;
        _os_log_fault_impl(&dword_1BA83C000, v176, OS_LOG_TYPE_FAULT, "CCKDFParametersCreateHkdf failed %d", buf, 8u);
      }
    }

    else
    {
      v174 = ne_log_obj();
      if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v218 = v50;
        _os_log_fault_impl(&dword_1BA83C000, v174, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed", buf, 0xCu);
      }

      v53 = 0;
    }

    v215 = 0;
    goto LABEL_158;
  }

  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v218 = "[NEIKEv2IKESA(Crypto) generateAllValuesUsingSA:]";
    v30 = "%s called with null ikeSA.skD";
    goto LABEL_110;
  }

LABEL_111:

  v140 = 0;
LABEL_112:

  return v140;
}

- (__CFData)deriveKeyFromPrimeKey:(const void *)key hmacContext:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (self)
  {
    Property = objc_getProperty(self, v5, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  prfProtocol = [(NEIKEv2IKESAProposal *)v8 prfProtocol];
  v11 = [(NEIKEv2PRFProtocol *)prfProtocol length];

  v12 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v11];
  if (v12)
  {
    memcpy(&__dst, key, sizeof(__dst));
    data = 1;
    CCHmacUpdate(&__dst, [v6 bytes], objc_msgSend(v6, "length"));
    CCHmacUpdate(&__dst, &data, 1uLL);
    CCHmacFinal(&__dst, [(__CFData *)v12 mutableBytes]);
    memset_s(&__dst, 0x180uLL, 0, 0x180uLL);
    v13 = v12;
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __dst.ctx[0] = 67109120;
      __dst.ctx[1] = v11;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%u] failed", &__dst, 8u);
    }
  }

  return v12;
}

- (uint64_t)generateDerivativesFromPPK:(uint64_t)k
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (!k)
  {
    goto LABEL_22;
  }

  if (!v3)
  {
    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
    v45 = "%s called with null ppk";
    goto LABEL_19;
  }

  v6 = objc_getProperty(k, v4, 216, 1);

  if (!v6)
  {
    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
    v45 = "%s called with null self.skD";
LABEL_19:
    _os_log_fault_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_FAULT, v45, &ctx, 0xCu);
    goto LABEL_20;
  }

  v8 = objc_getProperty(k, v7, 232, 1);

  if (!v8)
  {
    v44 = ne_log_obj();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
    v45 = "%s called with null self.skPi";
    goto LABEL_19;
  }

  v10 = objc_getProperty(k, v9, 248, 1);

  if (!v10)
  {
    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      ctx.ctx[0] = 136315138;
      *&ctx.ctx[1] = "[NEIKEv2IKESA(Crypto) generateDerivativesFromPPK:]";
      v45 = "%s called with null self.skPr";
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  memset(&ctx, 0, sizeof(ctx));
  v12 = objc_getProperty(k, v11, 96, 1);
  prfProtocol = [(NEIKEv2IKESAProposal *)v12 prfProtocol];
  ccHMAC = [(NEIKEv2PRFProtocol *)prfProtocol ccHMAC];
  CCHmacInit(&ctx, ccHMAC, [v5 bytes], objc_msgSend(v5, "length"));

  v17 = objc_getProperty(k, v16, 216, 1);
  objc_setProperty_atomic(k, v18, v17, 224);

  v20 = objc_getProperty(k, v19, 224, 1);
  v21 = [(NEIKEv2IKESA *)k deriveKeyFromPrimeKey:v20 hmacContext:&ctx];
  objc_setProperty_atomic(k, v22, v21, 216);

  v24 = objc_getProperty(k, v23, 216, 1);
  if (!v24 || (objc_getProperty(k, v25, 232, 1), v26 = objc_claimAutoreleasedReturnValue(), objc_setProperty_atomic(k, v27, v26, 240), v26, objc_getProperty(k, v28, 240, 1), v29 = objc_claimAutoreleasedReturnValue(), v30 = [(NEIKEv2IKESA *)k deriveKeyFromPrimeKey:v29 hmacContext:&ctx], objc_setProperty_atomic(k, v31, v30, 232), v30, v29, objc_getProperty(k, v32, 232, 1), v33 = objc_claimAutoreleasedReturnValue(), v33, !v33) || (objc_getProperty(k, v34, 248, 1), v35 = objc_claimAutoreleasedReturnValue(), objc_setProperty_atomic(k, v36, v35, 256), v35, objc_getProperty(k, v37, 256, 1), v38 = objc_claimAutoreleasedReturnValue(), v39 = [(NEIKEv2IKESA *)k deriveKeyFromPrimeKey:v38 hmacContext:&ctx], objc_setProperty_atomic(k, v40, v39, 248), v39, v38, objc_getProperty(k, v41, 248, 1), v42 = objc_claimAutoreleasedReturnValue(), v42, !v42))
  {
    memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
    [(NEIKEv2IKESA *)k restorePrimeKeys];
LABEL_21:
    k = 0;
    goto LABEL_22;
  }

  v43 = ne_log_obj();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *v48 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_DEBUG, "Calculated PPK derivatives", v48, 2u);
  }

  memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
  k = 1;
LABEL_22:

  return k;
}

- (void)restorePrimeKeys
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 224, 1);

    if (v3)
    {
      v5 = objc_getProperty(self, v4, 224, 1);
      objc_setProperty_atomic(self, v6, v5, 216);

      objc_setProperty_atomic(self, v7, 0, 224);
    }

    v8 = objc_getProperty(self, v4, 240, 1);

    if (v8)
    {
      v10 = objc_getProperty(self, v9, 240, 1);
      objc_setProperty_atomic(self, v11, v10, 232);

      objc_setProperty_atomic(self, v12, 0, 240);
    }

    v13 = objc_getProperty(self, v9, 256, 1);

    if (v13)
    {
      v15 = objc_getProperty(self, v14, 256, 1);
      objc_setProperty_atomic(self, v16, v15, 248);

      objc_setProperty_atomic(self, v17, 0, 256);
    }

    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v19 = 0;
      _os_log_debug_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEBUG, "Restored prime keys", v19, 2u);
    }
  }
}

- (id)copyRemoteCertificateAuthorityArray
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v3)
  {
    remoteCertificateAuthorityReferences = ne_log_obj();
    if (os_log_type_enabled(remoteCertificateAuthorityReferences, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_1BA83C000, remoteCertificateAuthorityReferences, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", &buf, 2u);
    }

    goto LABEL_55;
  }

  if (self)
  {
    Property = objc_getProperty(self, v2, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  remoteCertificateAuthorityReferences = [v5 remoteCertificateAuthorityReferences];

  if (remoteCertificateAuthorityReferences)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v8 = remoteCertificateAuthorityReferences;
    v9 = [v8 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v76;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v76 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [NEIKEv2Crypto copyCertificateFromPersistentData:0 isModernSystem:?];
          if (v13)
          {
            v14 = v13;
            [v3 addObject:v13];
            CFRelease(v14);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v10);
    }

    if (![v3 count] && -[NSObject count](v8, "count"))
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "failed to retrieve remote CA cert data by references", &buf, 2u);
      }

      goto LABEL_53;
    }

    goto LABEL_54;
  }

  if (self)
  {
    v16 = objc_getProperty(self, v7, 88, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  remoteCertificateAuthorityName = [v17 remoteCertificateAuthorityName];

  if (self)
  {
    v20 = objc_getProperty(self, v19, 88, 1);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  remoteCertificateAuthorityHash = [v21 remoteCertificateAuthorityHash];

  v23 = remoteCertificateAuthorityName;
  v24 = remoteCertificateAuthorityHash;
  v25 = v23;
  v26 = v24;
  objc_opt_self();
  v74 = v23;
  if (!v23)
  {
    v38 = 0;
    goto LABEL_38;
  }

  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v66)
  {
    v37 = ne_log_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", &buf, 2u);
    }

    goto LABEL_36;
  }

  objc_opt_self();
  v27 = *MEMORY[0x1E697B000];
  v28 = *MEMORY[0x1E697B328];
  v72 = *MEMORY[0x1E697AFF8];
  *&v89 = *MEMORY[0x1E697AFF8];
  *(&v89 + 1) = v28;
  v29 = *MEMORY[0x1E695E4D0];
  v71 = v27;
  *&buf = v27;
  *(&buf + 1) = v29;
  v30 = *MEMORY[0x1E697B268];
  v31 = *MEMORY[0x1E697B3A8];
  *&v90 = *MEMORY[0x1E697B260];
  *(&v90 + 1) = v31;
  v69 = v31;
  v70 = v29;
  v87 = v30;
  v88 = v29;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v89 count:4];
  *&result = 0;
  v33 = SecItemCopyMatching(v32, &result);
  v34 = result;
  v73 = v26;
  if (v33 || ![result count])
  {
    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v93 = 67109120;
      *&v93[4] = v33;
      _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "failed to retrieve all certificate (%d)", v93, 8u);
    }

    v26 = v73;
    goto LABEL_30;
  }

  v49 = v34;

  if (!v49)
  {
LABEL_30:
    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "[NEIKEv2Crypto copyAllCertificates]", &buf, 2u);
    }

    v37 = 0;
LABEL_36:
    v38 = 0;
    goto LABEL_37;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v37 = v49;
  v50 = [v37 countByEnumeratingWithState:&v89 objects:&buf count:16];
  if (!v50)
  {
    goto LABEL_84;
  }

  v51 = v50;
  v52 = *v90;
  v68 = *MEMORY[0x1E697B320];
  v67 = *MEMORY[0x1E697B3D0];
  do
  {
    v53 = 0;
    do
    {
      if (*v90 != v52)
      {
        objc_enumerationMutation(v37);
      }

      v54 = *(*(&v89 + 1) + 8 * v53);
      v55 = SecCertificateCopyCommonNames();
      v56 = v55;
      if (v55 && [v55 containsObject:v25])
      {
        if (v73 && (v57 = SecCertificateCopySHA256Digest(), v58 = [v57 isEqualToData:v73], v57, !v58))
        {
          v63 = ne_log_obj();
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_76;
          }

          LODWORD(result) = 138412290;
          v25 = v74;
          *(&result + 4) = v74;
          _os_log_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_DEFAULT, "certificate hash did not match for CN (%@)", &result, 0xCu);
        }

        else
        {
          objc_opt_self();
          if (v54)
          {
            *v93 = v68;
            v94 = v67;
            *&result = v70;
            *(&result + 1) = v54;
            v95 = v72;
            v96 = v69;
            v98 = v71;
            v99 = v70;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&result forKeys:v93 count:4];
            *v100 = 0;
            v60 = SecItemCopyMatching(v59, v100);
            v61 = *v100;
            if (v60)
            {
              v62 = ne_log_obj();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
              {
                *v83 = 0;
                _os_log_fault_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_FAULT, "SecItemCopyMatching failed", v83, 2u);
              }

              v63 = 0;
            }

            else
            {
              v63 = *v100;

              if (v63)
              {
                [v66 addObject:v63];
              }
            }

LABEL_76:
            v25 = v74;
          }

          else
          {
            v64 = ne_log_obj();
            v25 = v74;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
            {
              *v100 = 136315138;
              *&v100[4] = "+[NEIKEv2Crypto copyPersistentDataForCertificate:]";
              _os_log_fault_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_FAULT, "%s called with null certificate", v100, 0xCu);
            }

            v63 = 0;
          }
        }
      }

      ++v53;
    }

    while (v51 != v53);
    v65 = [v37 countByEnumeratingWithState:&v89 objects:&buf count:16];
    v51 = v65;
  }

  while (v65);
LABEL_84:

  v38 = v66;
  remoteCertificateAuthorityReferences = 0;
  v26 = v73;
LABEL_37:

LABEL_38:
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v80;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v80 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [NEIKEv2Crypto copyCertificateFromPersistentData:0 isModernSystem:?];
        if (v44)
        {
          v45 = v44;
          [v3 addObject:v44];
          CFRelease(v45);
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v41);
  }

  if (![v3 count] && v74)
  {
    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v74;
      _os_log_fault_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_FAULT, "failed to retrieve remote CA cert data by CN (%@)", &buf, 0xCu);
    }
  }

  v15 = v74;
LABEL_53:

LABEL_54:
  v47 = v3;
LABEL_55:

  return v3;
}

- (NSObject)copyRemoteCertificateAuthorityHashData
{
  v24 = *MEMORY[0x1E69E9840];
  copyRemoteCertificateAuthorityArray = [(NEIKEv2IKESA *)self copyRemoteCertificateAuthorityArray];
  if (!copyRemoteCertificateAuthorityArray)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "[self copyRemoteCertificateAuthorityArray] failed", buf, 2u);
    }

    goto LABEL_26;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{20 * objc_msgSend(copyRemoteCertificateAuthorityArray, "count")}];
  if (!v2)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "[[NSMutableData alloc] init] failed", buf, 2u);
    }

    v3 = 0;
    goto LABEL_26;
  }

  v3 = v2;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = copyRemoteCertificateAuthorityArray;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = *v18;
  do
  {
    v8 = 0;
    do
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      objc_opt_self();
      if (v9)
      {
        v10 = SecCertificateCopySubjectPublicKeyInfoSHA1Digest();
        if (v10)
        {
          v11 = v10;
          [v3 appendData:v10];
          goto LABEL_17;
        }
      }

      else
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v23 = "+[NEIKEv2Crypto createCertificateAuthorityPublicKeyHash:]";
          _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "%s called with null certificate", buf, 0xCu);
        }
      }

      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createCertificateAuthorityPublicKeyHash:] failed", buf, 2u);
      }

      v11 = 0;
LABEL_17:

      ++v8;
    }

    while (v6 != v8);
    v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v6);
LABEL_19:

  if (![v3 length])
  {
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  v3 = v3;
  v14 = v3;
LABEL_27:

  return v14;
}

- (uint64_t)copyLocalSecIdentity
{
  v3 = objc_getProperty(self, a2, 264, 1);
  v5 = objc_getProperty(self, v4, 272, 1);
  if (v3)
  {
    v6 = [NEIKEv2Crypto copySecIdentity:v3 keyData:v5 isModernSystem:self[22] & 1];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "No configured local certificate identity", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (NSObject)copyLocalCertificateData
{
  copyLocalSecIdentity = [(NEIKEv2IKESA *)self copyLocalSecIdentity];
  if (copyLocalSecIdentity)
  {
    v3 = copyLocalSecIdentity;
    certificateRef = 0;
    v4 = SecIdentityCopyCertificate(copyLocalSecIdentity, &certificateRef);
    CFRelease(v3);
    if (!certificateRef || v4)
    {
      if (certificateRef)
      {
        CFRelease(certificateRef);
        certificateRef = 0;
      }

      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "SecIdentityCopyCertificate failed", buf, 2u);
      }
    }

    else
    {
      v5 = SecCertificateCopyData(certificateRef);
      if (certificateRef)
      {
        CFRelease(certificateRef);
        certificateRef = 0;
      }

      if (v5)
      {
        v6 = v5;
        v7 = v6;
LABEL_19:

        return v7;
      }

      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v11[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "SecCertificateCopyData failed", v11, 2u);
      }

      v6 = 0;
    }

    v7 = 0;
    goto LABEL_19;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "[self copyLocalSecIdentity]", v14, 2u);
  }

  return 0;
}

- (uint64_t)updateIntAuthWithPacket:(void *)packet
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (packet)
  {
    v5 = objc_getProperty(packet, v3, 96, 1);
    prfProtocol = [(NEIKEv2IKESAProposal *)v5 prfProtocol];

    if (prfProtocol)
    {
      if (v4)
      {
        Property = objc_getProperty(v4, v8, 88, 1);
      }

      else
      {
        Property = 0;
      }

      v10 = Property;

      if (v10)
      {
        if (v4)
        {
          v12 = objc_getProperty(v4, v11, 88, 1);
          v13 = *(v4 + 11);
          *(v4 + 11) = 0;

          if (*(v4 + 11))
          {
            v14 = objc_getProperty(packet, v11, 232, 1);

            if (v14)
            {
              v12 = v12;
              v16 = objc_getProperty(packet, v15, 192, 1);

              v18 = v12;
              if (v16)
              {
                v19 = objc_getProperty(packet, v17, 192, 1);
                v51 = v19;
                v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
                v18 = [v20 arrayByAddingObjectsFromArray:v12];
              }

              v21 = 1;
              v22 = objc_getProperty(packet, v17, 232, 1);
              v24 = objc_getProperty(packet, v23, 96, 1);
              prfProtocol2 = [(NEIKEv2IKESAProposal *)v24 prfProtocol];
              v27 = [NEIKEv2Crypto createHMACFromDataVector:v18 key:v22 prfProtocol:prfProtocol2];
              objc_setProperty_atomic(packet, v28, v27, 192);

              v30 = objc_getProperty(packet, v29, 192, 1);

              if (v30)
              {
                goto LABEL_33;
              }

              v31 = ne_log_obj();
              if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_30;
              }

              *buf = 0;
              goto LABEL_39;
            }

            v18 = ne_log_obj();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
            {
LABEL_32:
              v21 = 0;
LABEL_33:

              goto LABEL_34;
            }

            *buf = 136315138;
            v53 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
            v33 = "%s called with null self.skPi";
            goto LABEL_37;
          }
        }

        else
        {
          v12 = 0;
        }

        v34 = objc_getProperty(packet, v11, 248, 1);

        if (v34)
        {
          v12 = v12;
          v36 = objc_getProperty(packet, v35, 200, 1);

          v18 = v12;
          if (v36)
          {
            v38 = objc_getProperty(packet, v37, 200, 1);
            v50 = v38;
            v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
            v18 = [v39 arrayByAddingObjectsFromArray:v12];
          }

          v21 = 1;
          v40 = objc_getProperty(packet, v37, 248, 1);
          v42 = objc_getProperty(packet, v41, 96, 1);
          prfProtocol3 = [(NEIKEv2IKESAProposal *)v42 prfProtocol];
          v45 = [NEIKEv2Crypto createHMACFromDataVector:v18 key:v40 prfProtocol:prfProtocol3];
          objc_setProperty_atomic(packet, v46, v45, 200);

          v48 = objc_getProperty(packet, v47, 200, 1);

          if (v48)
          {
            goto LABEL_33;
          }

          v31 = ne_log_obj();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_30;
          }

          *buf = 0;
LABEL_39:
          _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromDataVector:key:prfProtocol:] failed", buf, 2u);
LABEL_30:

          goto LABEL_32;
        }

        v18 = ne_log_obj();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_32;
        }

        *buf = 136315138;
        v53 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
        v33 = "%s called with null self.skPr";
LABEL_37:
        _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, v33, buf, 0xCu);
        goto LABEL_32;
      }

      v12 = ne_log_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
LABEL_17:
        v21 = 0;
LABEL_34:

        goto LABEL_35;
      }

      *buf = 136315138;
      v53 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
      v32 = "%s called with null packet.authenticatedDataVector";
    }

    else
    {
      v12 = ne_log_obj();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }

      *buf = 136315138;
      v53 = "[NEIKEv2IKESA(Crypto) updateIntAuthWithPacket:]";
      v32 = "%s called with null self.chosenProposal.prfProtocol";
    }

    _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v32, buf, 0xCu);
    goto LABEL_17;
  }

  v21 = 0;
LABEL_35:

  return v21;
}

- (uint64_t)createIntAuthOctetVector
{
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    Property = objc_getProperty(self, a2, 96, 1);
    v5 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 136, 1);
    }
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6 = Property;

  if (!v6)
  {
    return MEMORY[0x1E695E0F0];
  }

  v8 = objc_getProperty(self, v7, 192, 1);

  if (!v8)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_12:

      return 0;
    }

    *buf = 136315138;
    v22 = "[NEIKEv2IKESA(Crypto) createIntAuthOctetVector]";
    v18 = "%s called with null self.intAuthI";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_12;
  }

  v10 = objc_getProperty(self, v9, 200, 1);

  if (!v10)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v22 = "[NEIKEv2IKESA(Crypto) createIntAuthOctetVector]";
    v18 = "%s called with null self.intAuthR";
    goto LABEL_15;
  }

  *buf = bswap32(self[7]);
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:4];
  v13 = objc_getProperty(self, v12, 192, 1);
  v20[0] = v13;
  v15 = objc_getProperty(self, v14, 200, 1);
  v20[1] = v15;
  v20[2] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];

  return v16;
}

- (NSObject)createAuthenticationDataForSharedSecret:(void *)secret octetVector:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  secretCopy = secret;
  if (!v5)
  {
    prfProtocol2 = ne_log_obj();
    if (!os_log_type_enabled(prfProtocol2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2IKESA(Crypto) createAuthenticationDataForSharedSecret:octetVector:]";
    v23 = "%s called with null sharedSecretData";
    goto LABEL_19;
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;

  if (!v9)
  {
    prfProtocol2 = ne_log_obj();
    if (!os_log_type_enabled(prfProtocol2, OS_LOG_TYPE_FAULT))
    {
LABEL_16:
      v22 = 0;
      goto LABEL_17;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2IKESA(Crypto) createAuthenticationDataForSharedSecret:octetVector:]";
    v23 = "%s called with null self.chosenProposal";
LABEL_19:
    _os_log_fault_impl(&dword_1BA83C000, prfProtocol2, OS_LOG_TYPE_FAULT, v23, &v26, 0xCu);
    goto LABEL_16;
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 96, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  prfProtocol = [(NEIKEv2IKESAProposal *)v12 prfProtocol];

  if (!prfProtocol)
  {
    prfProtocol2 = ne_log_obj();
    if (!os_log_type_enabled(prfProtocol2, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2IKESA(Crypto) createAuthenticationDataForSharedSecret:octetVector:]";
    v23 = "%s called with null self.chosenProposal.prfProtocol";
    goto LABEL_19;
  }

  if (self)
  {
    v16 = objc_getProperty(self, v15, 96, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  prfProtocol2 = [(NEIKEv2IKESAProposal *)v17 prfProtocol];

  v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"Key Pad for IKEv2" length:17 freeWhenDone:0];
  v21 = [NEIKEv2Crypto createHMACFromData:v20 key:v5 prfProtocol:prfProtocol2];
  if (v21)
  {
    v22 = [NEIKEv2Crypto createHMACFromDataVector:secretCopy key:v21 prfProtocol:prfProtocol2];
  }

  else
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v26) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed", &v26, 2u);
    }

    v22 = 0;
  }

LABEL_17:
  return v22;
}

- (NSObject)createInitiatorSignedOctetVectorUsingPrimeKey:(id *)key
{
  v2 = a2;
  v36 = *MEMORY[0x1E69E9840];
  initiatorFirstMessage = [(NEIKEv2IKESA *)key initiatorFirstMessage];

  if (!initiatorFirstMessage)
  {
    copyPayloadData = ne_log_obj();
    if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v35 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.initiatorFirstMessage";
      goto LABEL_30;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  responderNonce = [(NEIKEv2IKESA *)key responderNonce];

  if (!responderNonce)
  {
    copyPayloadData = ne_log_obj();
    if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v35 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.responderNonce";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v2)
  {
    v8 = objc_getProperty(key, v7, 240, 1);

    if (!v8)
    {
      copyPayloadData = ne_log_obj();
      if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v35 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPiPrime";
LABEL_30:
        _os_log_fault_impl(&dword_1BA83C000, copyPayloadData, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v12 = objc_getProperty(key, v7, 232, 1);

    if (!v12)
    {
      copyPayloadData = ne_log_obj();
      if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v35 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPi";
        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  if (key)
  {
    Property = objc_getProperty(key, v9, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property;

  if (!v14)
  {
    copyPayloadData = ne_log_obj();
    if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v35 = "[NEIKEv2IKESA(Crypto) createInitiatorSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.chosenProposal";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v15 = key[41];
  copyPayloadData = [(NEIKEv2IdentifierPayload *)v15 copyPayloadData];

  if (!copyPayloadData)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "[idPayload copyPayloadData] failed", buf, 2u);
    }

    v30 = 0;
    goto LABEL_25;
  }

  if (v2)
  {
    v17 = 240;
  }

  else
  {
    v17 = 232;
  }

  v18 = objc_getProperty(key, v16, v17, 1);
  v20 = objc_getProperty(key, v19, 96, 1);
  prfProtocol = [(NEIKEv2IKESAProposal *)v20 prfProtocol];
  v23 = [NEIKEv2Crypto createHMACFromData:copyPayloadData key:v18 prfProtocol:prfProtocol];

  if (!v23)
  {
    createIntAuthOctetVector = ne_log_obj();
    if (os_log_type_enabled(createIntAuthOctetVector, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, createIntAuthOctetVector, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed", buf, 2u);
    }

    v30 = 0;
    goto LABEL_24;
  }

  createIntAuthOctetVector = [(NEIKEv2IKESA *)key createIntAuthOctetVector];
  if (!createIntAuthOctetVector)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createIntAuthOctetVector] failed", buf, 2u);
    }

    v31 = 0;
    goto LABEL_23;
  }

  initiatorFirstMessage2 = [(NEIKEv2IKESA *)key initiatorFirstMessage];
  v33[0] = initiatorFirstMessage2;
  responderNonce2 = [(NEIKEv2IKESA *)key responderNonce];
  v33[1] = responderNonce2;
  v33[2] = v23;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];

  if ([createIntAuthOctetVector count])
  {
    v31 = [v30 arrayByAddingObjectsFromArray:createIntAuthOctetVector];
LABEL_23:

    v30 = v31;
  }

LABEL_24:

LABEL_25:
LABEL_32:

  return v30;
}

- (NSObject)createResponderSignedOctetVectorUsingPrimeKey:(void *)key
{
  v2 = a2;
  v38 = *MEMORY[0x1E69E9840];
  responderFirstMessage = [(NEIKEv2IKESA *)key responderFirstMessage];

  if (!responderFirstMessage)
  {
    copyPayloadData = ne_log_obj();
    if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v37 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.responderFirstMessage";
      goto LABEL_34;
    }

LABEL_35:
    v32 = 0;
    goto LABEL_36;
  }

  initiatorNonce = [(NEIKEv2IKESA *)key initiatorNonce];

  if (!initiatorNonce)
  {
    copyPayloadData = ne_log_obj();
    if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v37 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.initiatorNonce";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v2)
  {
    v8 = objc_getProperty(key, v7, 256, 1);

    if (!v8)
    {
      copyPayloadData = ne_log_obj();
      if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v37 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPrPrime";
LABEL_34:
        _os_log_fault_impl(&dword_1BA83C000, copyPayloadData, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
        goto LABEL_35;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v12 = objc_getProperty(key, v7, 248, 1);

    if (!v12)
    {
      copyPayloadData = ne_log_obj();
      if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v37 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
        v11 = "%s called with null self.skPr";
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  if (key)
  {
    Property = objc_getProperty(key, v9, 96, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property;

  if (!v14)
  {
    copyPayloadData = ne_log_obj();
    if (os_log_type_enabled(copyPayloadData, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v37 = "[NEIKEv2IKESA(Crypto) createResponderSignedOctetVectorUsingPrimeKey:]";
      v11 = "%s called with null self.chosenProposal";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (key)
  {
    v15 = key[42];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  copyPayloadData = [(NEIKEv2IdentifierPayload *)v16 copyPayloadData];

  if (!copyPayloadData)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "[idPayload copyPayloadData] failed", buf, 2u);
    }

    v32 = 0;
    goto LABEL_29;
  }

  if (v2)
  {
    v18 = 256;
  }

  else
  {
    v18 = 248;
  }

  v20 = objc_getProperty(key, v17, v18, 1);
  if (key)
  {
    v21 = objc_getProperty(key, v19, 96, 1);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  prfProtocol = [(NEIKEv2IKESAProposal *)v22 prfProtocol];
  v25 = [NEIKEv2Crypto createHMACFromData:copyPayloadData key:v20 prfProtocol:prfProtocol];

  if (!v25)
  {
    createIntAuthOctetVector = ne_log_obj();
    if (os_log_type_enabled(createIntAuthOctetVector, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, createIntAuthOctetVector, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed", buf, 2u);
    }

    v32 = 0;
    goto LABEL_28;
  }

  createIntAuthOctetVector = [(NEIKEv2IKESA *)key createIntAuthOctetVector];
  if (!createIntAuthOctetVector)
  {
    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_FAULT, "[NEIKEv2Crypto createIntAuthOctetVector] failed", buf, 2u);
    }

    v33 = 0;
    goto LABEL_27;
  }

  responderFirstMessage2 = [(NEIKEv2IKESA *)key responderFirstMessage];
  v35[0] = responderFirstMessage2;
  initiatorNonce2 = [(NEIKEv2IKESA *)key initiatorNonce];
  v35[1] = initiatorNonce2;
  v35[2] = v25;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];

  if ([createIntAuthOctetVector count])
  {
    v33 = [v32 arrayByAddingObjectsFromArray:createIntAuthOctetVector];
LABEL_27:

    v32 = v33;
  }

LABEL_28:

LABEL_29:
LABEL_36:

  return v32;
}

- (void)createRemoteSignedOctetVectorUsingPrimeKey:(void *)key
{
  if (key)
  {
    if (*(key + 9))
    {
      return [(NEIKEv2IKESA *)key createResponderSignedOctetVectorUsingPrimeKey:a2];
    }

    else
    {
      return [(NEIKEv2IKESA *)key createInitiatorSignedOctetVectorUsingPrimeKey:a2];
    }
  }

  return key;
}

- (SecKeyRef)checkValidityOfCertificates:(_BYTE *)certificates
{
  v113 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!certificates)
  {
    v48 = 0;
    goto LABEL_51;
  }

  if (![(__CFArray *)v3 count])
  {
    remoteCertificateHostname = ne_log_obj();
    if (os_log_type_enabled(remoteCertificateHostname, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v112 = "[NEIKEv2IKESA(Crypto) checkValidityOfCertificates:]";
      _os_log_fault_impl(&dword_1BA83C000, remoteCertificateHostname, OS_LOG_TYPE_FAULT, "%s called with null certificateDataArray.count", buf, 0xCu);
    }

    v48 = 0;
    goto LABEL_50;
  }

  v6 = objc_getProperty(certificates, v5, 88, 1);
  remoteCertificateHostname = [v6 remoteCertificateHostname];

  if (![remoteCertificateHostname length])
  {
    v9 = objc_getProperty(certificates, v8, 88, 1);
    remoteIdentifier = [v9 remoteIdentifier];
    stringValue = [remoteIdentifier stringValue];

    if ([stringValue length])
    {
      remoteCertificateHostname = stringValue;
    }

    else
    {
      v12 = 328;
      if (certificates[9])
      {
        v12 = 336;
      }

      Property = *&certificates[v12];
      v15 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v14, 32, 1);
      }

      v16 = Property;
      remoteCertificateHostname = [v16 stringValue];
    }
  }

  if (![remoteCertificateHostname length])
  {

    remoteCertificateHostname = 0;
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v51 = @"<not set>";
    if (remoteCertificateHostname)
    {
      v51 = remoteCertificateHostname;
    }

    *buf = 138412290;
    v112 = v51;
    _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "Matching remote hostname %@ with remote certificate", buf, 0xCu);
  }

  IPSec = SecPolicyCreateIPSec();
  if (IPSec)
  {
    v19 = IPSec;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v20)
    {
      v21 = v20;
      cf = v19;
      v101 = remoteCertificateHostname;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      theArray = v4;
      v22 = v4;
      v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v104 objects:v110 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v105;
        v26 = *MEMORY[0x1E695E480];
        while (2)
        {
          v27 = 0;
          do
          {
            if (*v105 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = SecCertificateCreateWithData(v26, *(*(&v104 + 1) + 8 * v27));
            if (!v28)
            {
              v47 = ne_log_obj();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_FAULT, "SecCertificateCreateWithData failed", buf, 2u);
              }

              CFRelease(cf);
              v48 = 0;
              remoteCertificateHostname = v101;
              v4 = theArray;
              goto LABEL_49;
            }

            v29 = v28;
            if (nelog_is_debug_logging_enabled())
            {
              CFAbsoluteTimeGetCurrent();
              v30 = SecCertificateCopySummaryProperties();
              v31 = ne_log_large_obj();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v112 = v30;
                _os_log_debug_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_DEBUG, "Certificate Properties:\n%@", buf, 0xCu);
              }

              if (v30)
              {
                CFRelease(v30);
              }
            }

            NECertificateDateIsValid(v29);
            [v21 addObject:v29];
            CFRelease(v29);
            ++v27;
          }

          while (v24 != v27);
          v24 = [(__CFArray *)v22 countByEnumeratingWithState:&v104 objects:v110 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      if (![v21 count])
      {
        v52 = ne_log_obj();
        remoteCertificateHostname = v101;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "No valid remote certificate", buf, 2u);
        }

        CFRelease(cf);
        v48 = 0;
        v4 = theArray;
        goto LABEL_49;
      }

      copyRemoteCertificateAuthorityArray = [(NEIKEv2IKESA *)certificates copyRemoteCertificateAuthorityArray];
      if ([copyRemoteCertificateAuthorityArray count])
      {
LABEL_31:
        v34 = objc_getProperty(certificates, v33, 88, 1);
        enableCertificateRevocationCheck = [v34 enableCertificateRevocationCheck];
        v37 = objc_getProperty(certificates, v36, 88, 1);
        strictCertificateRevocationCheck = [v37 strictCertificateRevocationCheck];
        v39 = v21;
        v98 = copyRemoteCertificateAuthorityArray;
        objc_opt_self();
        trust = 0;
        certificates = v39;
        if (enableCertificateRevocationCheck)
        {
          v40 = ne_log_obj();
          v4 = theArray;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_DEBUG, "Request certificate revocation check", buf, 2u);
          }

          if (strictCertificateRevocationCheck)
          {
            v41 = 11;
          }

          else
          {
            v41 = 3;
          }

          Revocation = SecPolicyCreateRevocation(v41);
          if (!Revocation)
          {
            v60 = ne_log_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              v61 = "SecPolicyCreateRevocation failed";
              goto LABEL_88;
            }

LABEL_89:

            v48 = 0;
            v56 = v98;
            goto LABEL_90;
          }

          v43 = Revocation;
          v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v44)
          {
            CFRelease(v43);
            v60 = ne_log_obj();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              v61 = "[[NSMutableArray alloc] init] failed";
              goto LABEL_88;
            }

            goto LABEL_89;
          }

          v45 = v44;
          [v44 addObject:cf];
          [v45 addObject:v43];
          CFRelease(v43);
          v46 = SecTrustCreateWithCertificates(certificates, v45, &trust);
        }

        else
        {
          v46 = SecTrustCreateWithCertificates(v39, cf, &trust);
          v4 = theArray;
        }

        if (!v46 && trust)
        {
          v56 = v98;
          if ([(__CFArray *)v98 count])
          {
            v57 = SecTrustSetAnchorCertificates(trust, v98);
            if (v57)
            {
              v58 = v57;
              if (trust)
              {
                CFRelease(trust);
                trust = 0;
              }

              v59 = ne_log_obj();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109120;
                LODWORD(v112) = v58;
                _os_log_fault_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_FAULT, "Failed to set anchor CA certificates for remote certificate validation (%d)", buf, 8u);
              }

LABEL_78:

LABEL_79:
              v48 = 0;
              goto LABEL_90;
            }
          }

          v108 = 0;
          v62 = MEMORY[0x1BFAFA1B0](trust, &v108);
          if (v62)
          {
            v63 = v62;
            if (trust)
            {
              CFRelease(trust);
              trust = 0;
            }

            v59 = ne_log_obj();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v112) = v63;
              _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, "Remote certificate evaluation error (%d)", buf, 8u);
            }

            goto LABEL_78;
          }

          if (v108 <= 3)
          {
            switch(v108)
            {
              case 0:
                v69 = ne_log_obj();
                if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_126;
                }

                *buf = 0;
                v70 = "Certificate evaluation error = kSecTrustResultInvalid";
                goto LABEL_124;
              case 1:
                goto LABEL_112;
              case 3:
                v69 = ne_log_obj();
                if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_126;
                }

                *buf = 0;
                v70 = "Certificate evaluation error = kSecTrustResultDeny";
                goto LABEL_124;
            }
          }

          else
          {
            if (v108 <= 5)
            {
              if (v108 != 4)
              {
                v69 = ne_log_obj();
                if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_126;
                }

                *buf = 0;
                v70 = "Certificate evaluation error = kSecTrustResultRecoverableTrustFailure";
LABEL_124:
                v72 = v69;
                v73 = 2;
LABEL_125:
                _os_log_error_impl(&dword_1BA83C000, v72, OS_LOG_TYPE_ERROR, v70, buf, v73);
LABEL_126:

                if (nelog_is_debug_logging_enabled())
                {
                  theArraya = SecTrustCopyProperties(trust);
                  if (theArraya)
                  {
                    v74 = ne_log_obj();
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_1BA83C000, v74, OS_LOG_TYPE_DEBUG, "---------------Returned error strings: ---------------", buf, 2u);
                    }

                    Count = CFArrayGetCount(theArraya);
                    if (Count >= 1)
                    {
                      v76 = Count;
                      v77 = 0;
                      key = *MEMORY[0x1E697B2E0];
                      v95 = *MEMORY[0x1E697B2E8];
                      v97 = Count;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v77);
                        if (ValueAtIndex)
                        {
                          v79 = ValueAtIndex;
                          v80 = CFGetTypeID(ValueAtIndex);
                          if (v80 == CFDictionaryGetTypeID())
                          {
                            Value = CFDictionaryGetValue(v79, key);
                            if (Value)
                            {
                              v82 = Value;
                              v83 = CFGetTypeID(Value);
                              v84 = v83 == CFStringGetTypeID();
                              v76 = v97;
                              if (v84)
                              {
                                CStringPtr = CFStringGetCStringPtr(v82, 0);
                                if (CStringPtr)
                                {
                                  v86 = CStringPtr;
                                  v87 = ne_log_obj();
                                  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
                                  {
                                    *buf = 136315138;
                                    v112 = v86;
                                    _os_log_debug_impl(&dword_1BA83C000, v87, OS_LOG_TYPE_DEBUG, "type = %s", buf, 0xCu);
                                  }

                                  v76 = v97;
                                }
                              }
                            }

                            v88 = CFDictionaryGetValue(v79, v95);
                            if (v88)
                            {
                              v89 = v88;
                              v90 = CFGetTypeID(v88);
                              v84 = v90 == CFStringGetTypeID();
                              v76 = v97;
                              if (v84)
                              {
                                v91 = CFStringGetCStringPtr(v89, 0);
                                if (v91)
                                {
                                  v92 = v91;
                                  v93 = ne_log_obj();
                                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                                  {
                                    *buf = 136315138;
                                    v112 = v92;
                                    _os_log_debug_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_DEBUG, "value = %s", buf, 0xCu);
                                  }

                                  v76 = v97;
                                }
                              }
                            }
                          }
                        }

                        ++v77;
                      }

                      while (v76 != v77);
                    }

                    v94 = ne_log_obj();
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_DEBUG, "-----------------------------------------------------", buf, 2u);
                    }

                    CFRelease(theArraya);
                    v56 = v98;
                  }
                }

                if (!trust)
                {
                  goto LABEL_79;
                }

                CFRelease(trust);
                v48 = 0;
                goto LABEL_154;
              }

LABEL_112:
              if ((enableCertificateRevocationCheck & strictCertificateRevocationCheck) == 1)
              {
                v71 = ne_log_obj();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_INFO, "Strict Certificate Revocation Check is not supported", buf, 2u);
                }
              }

              v48 = SecTrustCopyKey(trust);
              if (!trust)
              {
                goto LABEL_90;
              }

              CFRelease(trust);
LABEL_154:
              trust = 0;
LABEL_90:

              CFRelease(cf);
              v67 = ne_log_obj();
              v68 = v67;
              if (v48)
              {
                remoteCertificateHostname = v101;
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v112 = v48;
                  _os_log_debug_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_DEBUG, "Certificate public key: %@", buf, 0xCu);
                }
              }

              else
              {
                remoteCertificateHostname = v101;
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_ERROR, "Certificate is not trusted", buf, 2u);
                }

                v48 = 0;
              }

LABEL_97:

              goto LABEL_49;
            }

            if (v108 == 6)
            {
              v69 = ne_log_obj();
              if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_126;
              }

              *buf = 0;
              v70 = "Certificate evaluation error = kSecTrustResultFatalTrustFailure";
              goto LABEL_124;
            }

            if (v108 == 7)
            {
              v69 = ne_log_obj();
              if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_126;
              }

              *buf = 0;
              v70 = "Certificate evaluation error = kSecTrustResultOtherError";
              goto LABEL_124;
            }
          }

          v69 = ne_log_obj();
          if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_126;
          }

          *buf = 67109120;
          LODWORD(v112) = v108;
          v70 = "Certificate evaluation error = Unknown (%d)";
          v72 = v69;
          v73 = 8;
          goto LABEL_125;
        }

        if (trust)
        {
          CFRelease(trust);
          trust = 0;
        }

        v60 = ne_log_obj();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v61 = "SecTrustCreateWithCertificates failed";
LABEL_88:
          _os_log_fault_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_FAULT, v61, buf, 2u);
          goto LABEL_89;
        }

        goto LABEL_89;
      }

      v53 = objc_getProperty(certificates, v33, 88, 1);
      remoteCertificateAuthorityReferences = [v53 remoteCertificateAuthorityReferences];
      if (remoteCertificateAuthorityReferences)
      {
      }

      else
      {
        v64 = objc_getProperty(certificates, v55, 88, 1);
        remoteCertificateAuthorityName = [v64 remoteCertificateAuthorityName];

        if (!remoteCertificateAuthorityName)
        {
          goto LABEL_31;
        }
      }

      v66 = ne_log_obj();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_ERROR, "remoteCertAuthorityArray missing from config", buf, 2u);
      }

      CFRelease(cf);
      v48 = 0;
      remoteCertificateHostname = v101;
      v4 = theArray;
      goto LABEL_97;
    }

    CFRelease(v19);
    v49 = ne_log_obj();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v49, OS_LOG_TYPE_FAULT, "[[NSMutableArray alloc] init] failed", buf, 2u);
    }

    v21 = 0;
  }

  else
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v112 = remoteCertificateHostname;
      _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, "Could not create secure policy with hostname %@", buf, 0xCu);
    }
  }

  v48 = 0;
LABEL_49:

LABEL_50:
LABEL_51:

  return v48;
}

- (NEIKEv2AuthPayload)copyAuthenticationPayloadUsingPrimeKey:(id *)self
{
  selfCopy = self;
  v106 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
  }

  selfCopy2 = self;

  if (selfCopy2)
  {
    if (selfCopy && (*(selfCopy + 9) & 1) != 0)
    {
      v5 = [(NEIKEv2IKESA *)selfCopy createInitiatorSignedOctetVectorUsingPrimeKey:a2];
    }

    else
    {
      v5 = [(NEIKEv2IKESA *)selfCopy createResponderSignedOctetVectorUsingPrimeKey:a2];
    }

    v7 = v5;
    if (!v5)
    {
      authenticationProtocol = ne_log_obj();
      if (os_log_type_enabled(authenticationProtocol, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, authenticationProtocol, OS_LOG_TYPE_FAULT, "[self createLocalSignedOctetVectorUsingPrimeKey:] failed", buf, 2u);
      }

      goto LABEL_68;
    }

    authenticationProtocol = [(NEIKEv2IKESA *)selfCopy authenticationProtocol];
    if (![authenticationProtocol isSignature])
    {
      if ([authenticationProtocol method]== 2)
      {
        sharedSecret = [(NEIKEv2IKESA *)selfCopy sharedSecret];
        v16 = [(NEIKEv2IKESA *)selfCopy createAuthenticationDataForSharedSecret:sharedSecret octetVector:v7];

        if (!v16)
        {
          v17 = ne_log_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_67;
          }

          *buf = 0;
          v18 = "createAuthenticationDataForSharedSecret: failed";
LABEL_88:
          v23 = v17;
          v24 = 2;
          goto LABEL_89;
        }
      }

      else
      {
        if ([authenticationProtocol method]!= 13)
        {
          v17 = ne_log_obj();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_67;
          }

          *buf = 138412290;
          *&buf[4] = authenticationProtocol;
          v18 = "Unknown auth protocol %@";
          v23 = v17;
          v24 = 12;
LABEL_89:
          _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v18, buf, v24);
          goto LABEL_67;
        }

        if (selfCopy && (*(selfCopy + 9) & 1) != 0)
        {
          v20 = a2 == 0;
          v21 = 232;
          v22 = 240;
        }

        else
        {
          v20 = a2 == 0;
          v21 = 248;
          v22 = 256;
        }

        if (v20)
        {
          v25 = v21;
        }

        else
        {
          v25 = v22;
        }

        v17 = objc_getProperty(selfCopy, v19, v25, 1);
        v26 = [(NEIKEv2IKESA *)selfCopy createAuthenticationDataForSharedSecret:v17 octetVector:v7];
        if (!v26)
        {
          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, "createAuthenticationDataForSharedSecret: failed", buf, 2u);
          }

          goto LABEL_67;
        }

        v16 = v26;
      }

LABEL_74:
      localPrivateKeyRef = objc_alloc_init(NEIKEv2AuthPayload);
      [(NEIKEv2AuthPayload *)localPrivateKeyRef setAuthProtocol:authenticationProtocol];
      [(NEIKEv2AuthPayload *)localPrivateKeyRef setAuthenticationData:v16];

      goto LABEL_75;
    }

    if (selfCopy)
    {
      v11 = objc_getProperty(selfCopy, v10, 88, 1);
      v12 = v11;
      if (v11 && [v11 localPrivateKeyRef])
      {
        localPrivateKeyRef = [v12 localPrivateKeyRef];
        CFRetain(localPrivateKeyRef);

        if (localPrivateKeyRef)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_41:
    copyLocalSecIdentity = [(NEIKEv2IKESA *)selfCopy copyLocalSecIdentity];
    if (copyLocalSecIdentity)
    {
      v29 = copyLocalSecIdentity;
      *buf = 0;
      v30 = SecIdentityCopyPrivateKey(copyLocalSecIdentity, buf);
      CFRelease(v29);
      localPrivateKeyRef = *buf;
      if (*buf && !v30)
      {
LABEL_44:
        authenticationProtocol2 = [(NEIKEv2IKESA *)selfCopy authenticationProtocol];
        if ([authenticationProtocol2 method] == 1 || (objc_msgSend(authenticationProtocol2, "isSignature") & 1) == 0)
        {
          v35 = authenticationProtocol2;
          goto LABEL_50;
        }

        if ([authenticationProtocol2 isDigitalSignature])
        {
          v32 = [NEIKEv2Crypto copySignHashProtocolForAuth:authenticationProtocol2];
          v33 = selfCopy[14];
          v34 = [v33 containsObject:v32];

          if (v34)
          {
            v35 = authenticationProtocol2;
          }

          else
          {
            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v84 = selfCopy[14];
              *buf = 138412546;
              *&buf[4] = v32;
              v100 = 2112;
              v101 = v84;
              _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "Digital signature hash protocol %@ is not supported by peer, supports %@", buf, 0x16u);
            }

            v35 = 0;
          }

LABEL_50:
          if (!v35)
          {
            v85 = ne_log_obj();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_FAULT, "Failed to select auth protocol for signature generation", buf, 2u);
            }

            if (!localPrivateKeyRef)
            {
              authenticationProtocol = 0;
              goto LABEL_75;
            }

            CFRelease(localPrivateKeyRef);
            authenticationProtocol = 0;
            goto LABEL_68;
          }

          v36 = v7;
          authenticationProtocol = v35;
          objc_opt_self();
          signatureAlgorithm = [(NEIKEv2AuthenticationProtocol *)authenticationProtocol signatureAlgorithm];
          if (signatureAlgorithm)
          {
            v38 = signatureAlgorithm;
            v39 = [(NEIKEv2AuthenticationProtocol *)authenticationProtocol copyHashForDataVector:v36];
            if (v39)
            {
              v40 = v39;
              error[0] = 0;
              Signature = SecKeyCreateSignature(localPrivateKeyRef, v38, v39, error);
              v42 = Signature;
              if (!Signature || error[0])
              {
                v43 = ne_log_obj();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = authenticationProtocol;
                  v100 = 2112;
                  v101 = error[0];
                  _os_log_fault_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_FAULT, "Failed to sign for %@ with private key: %@", buf, 0x16u);
                }

                if (error[0])
                {
                  CFRelease(error[0]);
                  v16 = 0;
                  error[0] = 0;
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v16 = Signature;
              }

LABEL_71:
              if (localPrivateKeyRef)
              {
                CFRelease(localPrivateKeyRef);
              }

              if (v16)
              {
                goto LABEL_74;
              }

LABEL_68:
              localPrivateKeyRef = 0;
LABEL_75:

              goto LABEL_76;
            }

            v86 = ne_log_obj();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *&buf[4] = authenticationProtocol;
              _os_log_fault_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_FAULT, "Failed to copy hashed data for %@", buf, 0xCu);
            }

            v40 = 0;
          }

          else
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              *&buf[4] = authenticationProtocol;
              _os_log_fault_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_FAULT, "Invalid signature protcol %@", buf, 0xCu);
            }
          }

          v16 = 0;
          goto LABEL_71;
        }

        v46 = objc_alloc(MEMORY[0x1E695DFA8]);
        v47 = selfCopy[14];
        v48 = [v46 initWithSet:v47];

        v91 = authenticationProtocol2;
        v49 = authenticationProtocol2;
        objc_opt_self();
        v50 = [NEIKEv2Crypto copySignHashSetForAuthMethod:v49];
        if (v49 && ((v51 = [v49 method], v51 == 245) || v51 == 14 && (objc_msgSend(v49, "digitalSignatureAlgorithm") - 9) <= 2) && (BlockSize = SecKeyGetBlockSize(localPrivateKeyRef), BlockSize <= 0x81))
        {
          v55 = BlockSize;
          v88 = v49;
          v89 = v48;
          v87 = v50;
          v56 = [v50 mutableCopy];
          *error = 0u;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v92 = v56;
          obj = [v56 copy];
          v57 = [obj countByEnumeratingWithState:error objects:buf count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v103;
            v90 = 8 * v55;
            while (2)
            {
              for (i = 0; i != v58; ++i)
              {
                if (*v103 != v59)
                {
                  objc_enumerationMutation(obj);
                }

                v61 = *(error[1] + i);
                v62 = [v61 hashType] - 2;
                if (v62 >= 3)
                {
                  v66 = ne_log_obj();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
                  {
                    *v95 = 138412290;
                    v96 = v61;
                    _os_log_fault_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_FAULT, "Unexpected hash protocol %@ in RSA-PSS set", v95, 0xCu);
                  }

                  v53 = 0;
                  v50 = v87;
                  v65 = v92;
                  goto LABEL_106;
                }

                if (v55 < 32 * v62 + 66)
                {
                  v63 = v55;
                  v64 = ne_log_obj();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                  {
                    *v95 = 138412546;
                    v96 = v61;
                    v97 = 2048;
                    v98 = v90;
                    _os_log_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_INFO, "Removing too large hash protocol %@ from set for RSA key size %zu", v95, 0x16u);
                  }

                  [v92 removeObject:v61];
                  v55 = v63;
                }
              }

              v58 = [obj countByEnumeratingWithState:error objects:buf count:16];
              if (v58)
              {
                continue;
              }

              break;
            }
          }

          v65 = v92;
          v53 = v92;
          v50 = v87;
LABEL_106:

          v49 = v88;
          v48 = v89;
        }

        else
        {
          v53 = v50;
        }

        v67 = v49;
        v68 = ne_log_obj();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v82 = v48;
          v83 = selfCopy[14];
          *buf = 138412290;
          *&buf[4] = v83;
          _os_log_debug_impl(&dword_1BA83C000, v68, OS_LOG_TYPE_DEBUG, "Peer hashes: %@", buf, 0xCu);

          v48 = v82;
        }

        v69 = ne_log_obj();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v53;
          _os_log_debug_impl(&dword_1BA83C000, v69, OS_LOG_TYPE_DEBUG, "Protocol hashes: %@", buf, 0xCu);
        }

        obja = v53;
        [v48 intersectSet:v53];
        allObjects = [v48 allObjects];
        v71 = [allObjects sortedArrayUsingSelector:sel_compare_];

        lastObject = [v71 lastObject];
        if ([v67 method] == 245)
        {
          if (!lastObject)
          {
            v77 = ne_log_obj();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_ERROR, "Unable to find acceptable hash algorithm for generating RSA-PSS signature", buf, 2u);
            }

            goto LABEL_139;
          }

          hashType = [lastObject hashType];
          switch(hashType)
          {
            case 4:
              v74 = [NEIKEv2AuthenticationProtocol alloc];
              v75 = 11;
              goto LABEL_136;
            case 3:
              v74 = [NEIKEv2AuthenticationProtocol alloc];
              v75 = 10;
              goto LABEL_136;
            case 2:
              v74 = [NEIKEv2AuthenticationProtocol alloc];
              v75 = 9;
LABEL_136:
              v80 = [(NEIKEv2AuthenticationProtocol *)v74 initWithDigitalSignature:v75];
LABEL_137:
              v35 = v80;
LABEL_140:

              authenticationProtocol2 = v91;
              goto LABEL_50;
          }

          v77 = ne_log_obj();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = lastObject;
            v81 = "Unexpected hash protocol %@ when selecting RSA-PSS protocol";
LABEL_152:
            _os_log_fault_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_FAULT, v81, buf, 0xCu);
          }
        }

        else
        {
          if (![(NEIKEv2AuthenticationProtocol *)v67 isECDSA])
          {
            v77 = ne_log_obj();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
            {
              v78 = selfCopy[14];
              *buf = 138412546;
              *&buf[4] = v67;
              v100 = 2112;
              v101 = v78;
              _os_log_fault_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_FAULT, "Unable to determine authentication protocol to use, configured %@ hashes %@", buf, 0x16u);
            }

            goto LABEL_139;
          }

          if (!lastObject)
          {
            v79 = ne_log_obj();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BA83C000, v79, OS_LOG_TYPE_INFO, "Unable to find acceptable hash algorithm for generating ECDSA signature", buf, 2u);
            }

            v80 = v67;
            goto LABEL_137;
          }

          hashType2 = [lastObject hashType];
          switch(hashType2)
          {
            case 4:
              v74 = [NEIKEv2AuthenticationProtocol alloc];
              v75 = 8;
              goto LABEL_136;
            case 3:
              v74 = [NEIKEv2AuthenticationProtocol alloc];
              v75 = 7;
              goto LABEL_136;
            case 2:
              v74 = [NEIKEv2AuthenticationProtocol alloc];
              v75 = 2;
              goto LABEL_136;
          }

          v77 = ne_log_obj();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = lastObject;
            v81 = "Unexpected hash protocol %@ when selecting ECDSA protocol";
            goto LABEL_152;
          }
        }

LABEL_139:

        v35 = 0;
        goto LABEL_140;
      }

      if (*buf)
      {
        CFRelease(*buf);
        *buf = 0;
      }

      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        LODWORD(error[0]) = 67109120;
        HIDWORD(error[0]) = v30;
        _os_log_fault_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_FAULT, "SecIdentityCopyPrivateKey (%d) failed", error, 8u);
      }
    }

    else
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "[self copyLocalSecIdentity]", buf, 2u);
      }
    }

    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_67:

      goto LABEL_68;
    }

    *buf = 0;
    v18 = "[self copyCertSigningKey] failed";
    goto LABEL_88;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2IKESA(Crypto) copyAuthenticationPayloadUsingPrimeKey:]";
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null self.chosenProposal", buf, 0xCu);
  }

  localPrivateKeyRef = 0;
LABEL_76:

  return localPrivateKeyRef;
}

- (BOOL)checkSharedKeyAuthData:(const char *)data usingPrimeKey:
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = v5;
  if (self)
  {
    if (v5)
    {
      v8 = objc_getProperty(self, v6, 96, 1);

      if (v8)
      {
        remoteAuthentication = [(NEIKEv2IKESA *)self remoteAuthentication];
        v11 = remoteAuthentication;
        if (remoteAuthentication)
        {
          if (([remoteAuthentication isSignature]& 1) == 0 && ![v11 isSecurePassword])
          {
            v16 = [(NEIKEv2IKESA *)self createRemoteSignedOctetVectorUsingPrimeKey:data];
            if (!v16)
            {
              v19 = ne_log_obj();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
              {
                LOWORD(v29) = 0;
                _os_log_fault_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_FAULT, "[self createRemoteSignedOctetVectorUsingPrimeKey:] failed", &v29, 2u);
              }

              v12 = 0;
              goto LABEL_39;
            }

            v12 = v16;
            if ([v11 method]== 2)
            {
              sharedSecret = [(NEIKEv2IKESA *)self sharedSecret];
            }

            else
            {
              if ([v11 method]!= 13)
              {
LABEL_36:
                v27 = ne_log_obj();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  v29 = 136315138;
                  v30 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
                  _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, "%s called with null sharedSecret", &v29, 0xCu);
                }

                goto LABEL_39;
              }

              if (*(self + 9))
              {
                selfCopy2 = self;
                if (data)
                {
                  v22 = 256;
                }

                else
                {
                  v22 = 248;
                }
              }

              else
              {
                selfCopy2 = self;
                if (data)
                {
                  v22 = 240;
                }

                else
                {
                  v22 = 232;
                }
              }

              sharedSecret = objc_getProperty(selfCopy2, v20, v22, 1);
            }

            v24 = sharedSecret;
            if (sharedSecret)
            {
              v25 = [(NEIKEv2IKESA *)self createAuthenticationDataForSharedSecret:sharedSecret octetVector:v12];
              if (v25)
              {
                self = [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:v25 remoteAuthData:v7];
              }

              else
              {
                v26 = ne_log_obj();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
                {
                  LOWORD(v29) = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "createAuthenticationDataForSharedSecret: failed", &v29, 2u);
                }

                self = 0;
              }

              goto LABEL_40;
            }

            goto LABEL_36;
          }

          v12 = ne_log_obj();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
LABEL_39:
            self = 0;
LABEL_40:

            goto LABEL_41;
          }

          LOWORD(v29) = 0;
          v13 = "Do not call checkSharedKeyAuthData with signature/GSPM auth";
          v14 = v12;
          v15 = 2;
        }

        else
        {
          v12 = ne_log_obj();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_39;
          }

          v29 = 136315138;
          v30 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
          v13 = "%s called with null authentication";
          v14 = v12;
          v15 = 12;
        }

        _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v13, &v29, v15);
        goto LABEL_39;
      }

      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_10:
        self = 0;
LABEL_41:

        goto LABEL_42;
      }

      v29 = 136315138;
      v30 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
      v23 = "%s called with null self.chosenProposal";
    }

    else
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      v29 = 136315138;
      v30 = "[NEIKEv2IKESA(Crypto) checkSharedKeyAuthData:usingPrimeKey:]";
      v23 = "%s called with null authenticationData";
    }

    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v23, &v29, 0xCu);
    goto LABEL_10;
  }

LABEL_42:

  return self;
}

uint64_t __45__NEIKEv2IKESA_Crypto__copyValidateAuthBlock__block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  v6 = v5;
  if (!WeakRetained)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v7 = [v5 remoteAuthentication];

  if (!v7)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v56 = 136315138;
      v57 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null authCheckConfig.remoteAuthentication", &v56, 0xCu);
    }

    goto LABEL_11;
  }

  v8 = WeakRetained[47];
  if (!v8)
  {
    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      v56 = 136315138;
      v57 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
      _os_log_fault_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_FAULT, "%s called with null packetAuthentication", &v56, 0xCu);
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v6 remoteAuthentication];
  v11 = [NEIKEv2Crypto isRemoteAuthenticationPacketProtocol:v9 compatibleWithConfiguredProtocol:v10];

  if ((v11 & 1) == 0)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }

    v18 = [v6 remoteAuthentication];
    v56 = 138412546;
    v57 = v18;
    v58 = 2112;
    v59 = v9;
    v24 = "Auth protocols are not compatible between config %@ and packet %@";
    v25 = v13;
    v26 = 22;
    goto LABEL_52;
  }

  if (([v9 isSecurePassword]& 1) == 0)
  {
    v15 = WeakRetained[48];
    if (!v15)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v56 = 136315138;
        v57 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
        _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null authenticationData", &v56, 0xCu);
      }

      goto LABEL_10;
    }

    v13 = v15;
    if ((WeakRetained[3] & 1) == 0)
    {
      goto LABEL_28;
    }

    if (WeakRetained[53])
    {
      if ([v6 ppkIDType] == 2)
      {
        v16 = [v6 ppkID];

        if (!v16)
        {
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            v56 = 136315138;
            v57 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
            _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "%s called with null authCheckConfig.ppkID", &v56, 0xCu);
          }

          goto LABEL_70;
        }
      }

      v17 = [v6 ppkIDType];
      v18 = [v6 ppkID];
      if (WeakRetained[53] == v17)
      {
        v19 = WeakRetained[54];
        if ([v19 length] || -[NSObject length](v18, "length"))
        {
          v20 = WeakRetained[54];
          v21 = [v20 isEqualToData:v18];

          if ((v21 & 1) == 0)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = WeakRetained[54];
              v56 = 138412546;
              v57 = v23;
              v58 = 2112;
              v59 = v18;
              _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "PPK ID %@ != Expected %@", &v56, 0x16u);
            }

LABEL_48:

            if ([v6 ppkMandatory])
            {
              v41 = ne_log_obj();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v56) = 0;
                v42 = "Wrong PPK ID received with mandatory PPK auth";
LABEL_77:
                _os_log_error_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_ERROR, v42, &v56, 2u);
                goto LABEL_69;
              }

              goto LABEL_69;
            }

            v43 = WeakRetained[49];

            v44 = ne_log_obj();
            v41 = v44;
            if (!v43)
            {
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v56) = 0;
                v42 = "Wrong PPK ID received and no non-PPK AUTH data received";
                goto LABEL_77;
              }

LABEL_69:

              goto LABEL_70;
            }

            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v56) = 0;
              _os_log_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_DEFAULT, "Wrong PPK ID received, falling back to non-PPK AUTH data", &v56, 2u);
            }

            v45 = WeakRetained[49];
            v27 = 0;
            v13 = v45;
            goto LABEL_75;
          }
        }

        else
        {
        }

        v41 = [NEIKEv2IKESA copyPPKFromConfig:v6];
        if (v41)
        {
          if (([(NEIKEv2IKESA *)WeakRetained generateDerivativesFromPPK:v41]& 1) != 0)
          {

            v27 = 1;
LABEL_75:

LABEL_29:
            v28 = [(NEIKEv2IKESA *)WeakRetained createRemoteSignedOctetVectorUsingPrimeKey:?];
            if (!v28)
            {
              v52 = ne_log_obj();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
              {
                v56 = 136315138;
                v57 = "[NEIKEv2IKESA(Crypto) validateAuthenticationForDelegateWithConfiguration:]";
                _os_log_fault_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_FAULT, "%s called with null remoteSignedOctetVector", &v56, 0xCu);
              }

              [(NEIKEv2IKESA *)WeakRetained restorePrimeKeys];
              LOBYTE(v56) = 0;
              goto LABEL_65;
            }

            v29 = v9;
            v30 = [v6 remoteAuthentication];
            v31 = [v30 isNonStandard];

            if (v31)
            {
              v32 = [v6 remoteAuthentication];

              v29 = v32;
            }

            if ([v29 isSignature])
            {
              v33 = [(NEIKEv2SessionConfiguration *)v6 copyRemoteAuthKey];
              if (v33)
              {
                v34 = v33;
                v35 = [NEIKEv2Crypto validateSignature:v13 signedDataVector:v28 authProtocol:v29 publicKey:v33];
                CFRelease(v34);
                if (v35)
                {
                  v37 = 1;
                  *(WeakRetained + 18) = 1;
                  if (v27)
                  {
                    *(WeakRetained + 19) = 1;
                  }

                  goto LABEL_45;
                }

                if (!v27)
                {
LABEL_44:
                  v37 = 0;
LABEL_45:
                  LOBYTE(v56) = v37;
LABEL_64:

LABEL_65:
                  v12 = v56;
                  goto LABEL_12;
                }
              }

              else
              {
                v54 = ne_log_obj();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
                {
                  LOWORD(v56) = 0;
                  _os_log_fault_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_FAULT, "Responder configuration is missing remote public key", &v56, 2u);
                }
              }

              [(NEIKEv2IKESA *)WeakRetained restorePrimeKeys];
              goto LABEL_44;
            }

            if ([v29 method]== 2)
            {
              v38 = [NEIKEv2IKESA copySharedSecretFromConfig:v6];
            }

            else
            {
              if ([v29 method]!= 13)
              {
                v40 = 0;
                goto LABEL_58;
              }

              v38 = objc_getProperty(WeakRetained, v39, 232, 1);
            }

            v40 = v38;
LABEL_58:
            v46 = [(NEIKEv2IKESA *)WeakRetained createAuthenticationDataForSharedSecret:v40 octetVector:v28];
            v47 = [NEIKEv2Crypto validateCalculatedSharedKeyAuthData:v46 remoteAuthData:v13];
            v49 = v47;
            if (v47)
            {
              *(WeakRetained + 18) = 1;
              if (v27)
              {
                *(WeakRetained + 19) = 1;
              }
            }

            else if (v27)
            {
              [(NEIKEv2IKESA *)WeakRetained restorePrimeKeys];
            }

            LOBYTE(v56) = v49;

            goto LABEL_64;
          }

          v55 = ne_log_obj();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = 138412290;
            v57 = WeakRetained;
            _os_log_error_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_ERROR, "%@ Failed to generate PPK-derived keys", &v56, 0xCu);
          }
        }

        else
        {
          v55 = ne_log_obj();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v56) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_FAULT, "PPK use negotiated but PPK not present in configuration", &v56, 2u);
          }
        }

        goto LABEL_69;
      }

      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v50 = WeakRetained[53];
        v56 = 134218240;
        v57 = v50;
        v58 = 2048;
        v59 = v17;
        _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "PPK Type %zu != Expected Type %zu", &v56, 0x16u);
      }

      goto LABEL_48;
    }

    if (![v6 ppkMandatory])
    {
LABEL_28:
      v27 = 0;
      goto LABEL_29;
    }

    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_70:

      goto LABEL_10;
    }

    LOWORD(v56) = 0;
    v24 = "No PPK ID received with mandatory PPK auth";
    v25 = v18;
    v26 = 2;
LABEL_52:
    _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, v24, &v56, v26);
    goto LABEL_70;
  }

  v12 = 1;
LABEL_12:

LABEL_13:
  return v12;
}

- (NSObject)createInitiatorEAPAuthenticationDataUsingPrimeKey:(NSObject *)self
{
  selfCopy = self;
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = objc_getProperty(self, a2, 456, 1);

    if (v4)
    {
      v6 = objc_getProperty(selfCopy, v5, 96, 1);

      if (v6)
      {
        v8 = [(NEIKEv2IKESA *)&selfCopy->isa createInitiatorSignedOctetVectorUsingPrimeKey:a2];
        if (v8)
        {
          v9 = objc_getProperty(selfCopy, v7, 456, 1);
          sessionKey = [(NEIKEv2EAP *)v9 sessionKey];

          if (sessionKey)
          {
LABEL_11:
            v14 = [(NEIKEv2IKESA *)selfCopy createAuthenticationDataForSharedSecret:sessionKey octetVector:v8];
            if (v14)
            {
              selfCopy = v14;
LABEL_25:

              goto LABEL_26;
            }

            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              LOWORD(v19) = 0;
              _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "createAuthenticationDataForSharedSecret failed", &v19, 2u);
            }

LABEL_24:
            selfCopy = 0;
            goto LABEL_25;
          }

          if (a2)
          {
            v12 = 240;
          }

          else
          {
            v12 = 232;
          }

          v13 = objc_getProperty(selfCopy, v11, v12, 1);
          if (v13)
          {
            sessionKey = v13;
            goto LABEL_11;
          }

          sessionKey = ne_log_obj();
          if (!os_log_type_enabled(sessionKey, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_24;
          }

          LOWORD(v19) = 0;
          v16 = "skPi failed";
        }

        else
        {
          sessionKey = ne_log_obj();
          if (!os_log_type_enabled(sessionKey, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_24;
          }

          LOWORD(v19) = 0;
          v16 = "createInitiatorSignedOctetVectorUsingPrimeKey: failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, sessionKey, OS_LOG_TYPE_FAULT, v16, &v19, 2u);
        goto LABEL_24;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_16:
        selfCopy = 0;
LABEL_26:

        return selfCopy;
      }

      v19 = 136315138;
      v20 = "[NEIKEv2IKESA(Crypto) createInitiatorEAPAuthenticationDataUsingPrimeKey:]";
      v15 = "%s called with null self.chosenProposal";
    }

    else
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_16;
      }

      v19 = 136315138;
      v20 = "[NEIKEv2IKESA(Crypto) createInitiatorEAPAuthenticationDataUsingPrimeKey:]";
      v15 = "%s called with null self.eapClient";
    }

    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v15, &v19, 0xCu);
    goto LABEL_16;
  }

  return selfCopy;
}

- (NSObject)createInitiatorGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self
{
  selfCopy = self;
  v41 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = objc_getProperty(self, a2, 464, 1);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v9 = objc_getProperty(selfCopy, v8, 96, 1);

      if (v9)
      {
        v11 = [(NEIKEv2IKESA *)&selfCopy->isa createInitiatorSignedOctetVectorUsingPrimeKey:a2];
        if (!v11)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v39) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "createInitiatorSignedOctetVectorUsingPrimeKey failed", &v39, 2u);
          }

          selfCopy = 0;
          goto LABEL_23;
        }

        v12 = BYTE1(selfCopy[1].isa);
        v13 = objc_getProperty(selfCopy, v10, 464, 1);
        v14 = v13;
        if (v12)
        {
          createLocalSignedOctetVector = [(NEIKEv2GSPM *)v13 createLocalSignedOctetVector];
        }

        else
        {
          createLocalSignedOctetVector = [(NEIKEv2GSPM *)v13 createRemoteSignedOctetVector];
        }

        v17 = createLocalSignedOctetVector;

        if (!v17)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v39) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "createInitiatorSignedOctetVector(GSPM) failed", &v39, 2u);
          }

          goto LABEL_37;
        }

        if (a2)
        {
          v19 = 240;
        }

        else
        {
          v19 = 232;
        }

        v20 = objc_getProperty(selfCopy, v18, v19, 1);
        v22 = objc_getProperty(selfCopy, v21, 96, 1);
        prfProtocol = [(NEIKEv2IKESAProposal *)v22 prfProtocol];
        v25 = [NEIKEv2Crypto createHMACFromDataVector:v17 key:v20 prfProtocol:prfProtocol];

        if (v25)
        {
          v26 = [v11 arrayByAddingObject:v25];
          v28 = objc_getProperty(selfCopy, v27, 464, 1);
          v29 = v28;
          if (v28)
          {
            v30 = *(v28 + 1);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          v33 = objc_getProperty(selfCopy, v32, 96, 1);
          prfProtocol2 = [(NEIKEv2IKESAProposal *)v33 prfProtocol];
          selfCopy = [NEIKEv2Crypto createHMACFromDataVector:v26 key:v31 prfProtocol:prfProtocol2];

          if (selfCopy)
          {
            goto LABEL_22;
          }

          v37 = ne_log_obj();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_36;
          }

          LOWORD(v39) = 0;
          v38 = "createAuthenticationDataForSharedSecret failed";
        }

        else
        {
          v37 = ne_log_obj();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
LABEL_36:

LABEL_37:
            selfCopy = 0;
LABEL_22:

LABEL_23:
            goto LABEL_24;
          }

          LOWORD(v39) = 0;
          v38 = "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_FAULT, v38, &v39, 2u);
        goto LABEL_36;
      }

      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_12:
        selfCopy = 0;
LABEL_24:

        return selfCopy;
      }

      v39 = 136315138;
      v40 = "[NEIKEv2IKESA(Crypto) createInitiatorGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.chosenProposal";
    }

    else
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v39 = 136315138;
      v40 = "[NEIKEv2IKESA(Crypto) createInitiatorGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.gspmHandler.sessionKey";
    }

    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v16, &v39, 0xCu);
    goto LABEL_12;
  }

  return selfCopy;
}

- (NSObject)createResponderGSPMAuthenticationDataUsingPrimeKey:(NSObject *)self
{
  selfCopy = self;
  v41 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = objc_getProperty(self, a2, 464, 1);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v9 = objc_getProperty(selfCopy, v8, 96, 1);

      if (v9)
      {
        v11 = [(NEIKEv2IKESA *)selfCopy createResponderSignedOctetVectorUsingPrimeKey:a2];
        if (!v11)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v39) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "createResponderSignedOctetVectorUsingPrimeKey failed", &v39, 2u);
          }

          selfCopy = 0;
          goto LABEL_23;
        }

        v12 = BYTE1(selfCopy[1].isa);
        v13 = objc_getProperty(selfCopy, v10, 464, 1);
        v14 = v13;
        if (v12)
        {
          createRemoteSignedOctetVector = [(NEIKEv2GSPM *)v13 createRemoteSignedOctetVector];
        }

        else
        {
          createRemoteSignedOctetVector = [(NEIKEv2GSPM *)v13 createLocalSignedOctetVector];
        }

        v17 = createRemoteSignedOctetVector;

        if (!v17)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v39) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "createResponderSignedOctetVector(GSPM) failed", &v39, 2u);
          }

          goto LABEL_37;
        }

        if (a2)
        {
          v19 = 256;
        }

        else
        {
          v19 = 248;
        }

        v20 = objc_getProperty(selfCopy, v18, v19, 1);
        v22 = objc_getProperty(selfCopy, v21, 96, 1);
        prfProtocol = [(NEIKEv2IKESAProposal *)v22 prfProtocol];
        v25 = [NEIKEv2Crypto createHMACFromDataVector:v17 key:v20 prfProtocol:prfProtocol];

        if (v25)
        {
          v26 = [v11 arrayByAddingObject:v25];
          v28 = objc_getProperty(selfCopy, v27, 464, 1);
          v29 = v28;
          if (v28)
          {
            v30 = *(v28 + 1);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          v33 = objc_getProperty(selfCopy, v32, 96, 1);
          prfProtocol2 = [(NEIKEv2IKESAProposal *)v33 prfProtocol];
          selfCopy = [NEIKEv2Crypto createHMACFromDataVector:v26 key:v31 prfProtocol:prfProtocol2];

          if (selfCopy)
          {
            goto LABEL_22;
          }

          v37 = ne_log_obj();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_36;
          }

          LOWORD(v39) = 0;
          v38 = "createAuthenticationDataForSharedSecret failed";
        }

        else
        {
          v37 = ne_log_obj();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
LABEL_36:

LABEL_37:
            selfCopy = 0;
LABEL_22:

LABEL_23:
            goto LABEL_24;
          }

          LOWORD(v39) = 0;
          v38 = "[NEIKEv2Crypto createHMACFromData:key:prfProtocol:] failed";
        }

        _os_log_fault_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_FAULT, v38, &v39, 2u);
        goto LABEL_36;
      }

      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_12:
        selfCopy = 0;
LABEL_24:

        return selfCopy;
      }

      v39 = 136315138;
      v40 = "[NEIKEv2IKESA(Crypto) createResponderGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.chosenProposal";
    }

    else
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v39 = 136315138;
      v40 = "[NEIKEv2IKESA(Crypto) createResponderGSPMAuthenticationDataUsingPrimeKey:]";
      v16 = "%s called with null self.gspmHandler.sessionKey";
    }

    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v16, &v39, 0xCu);
    goto LABEL_12;
  }

  return selfCopy;
}

- (void)createConcatenatedSPIsAndReturnError:(_BYTE *)error
{
  initiatorSPI = [(NEIKEv2IKESA *)error initiatorSPI];
  value = [initiatorSPI value];

  v22 = value;
  responderSPI = [(NEIKEv2IKESA *)error responderSPI];
  value2 = [responderSPI value];

  v21 = value2;
  if (!value)
  {
    v18 = @"Missing initiator SPI";
LABEL_7:
    ErrorInternal = NEIKEv2CreateErrorInternal(v18, v9, v10, v11, v12, v13, v14, v15, v21);
    v20 = *a2;
    *a2 = ErrorInternal;

    return 0;
  }

  if (!value2)
  {
    v18 = @"Missing responder SPI";
    goto LABEL_7;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{16, v21, v22}];
  [v16 appendBytes:&v22 length:8];
  [v16 appendBytes:&v21 length:8];
  return v16;
}

- (void)createConcatedNoncesAndReturnError:(_BYTE *)error
{
  initiatorNonce = [(NEIKEv2IKESA *)error initiatorNonce];
  responderNonce = [(NEIKEv2IKESA *)error responderNonce];
  if (![initiatorNonce length])
  {
    v16 = @"Missing initiator nonce";
LABEL_7:
    ErrorInternal = NEIKEv2CreateErrorInternal(v16, v7, v8, v9, v10, v11, v12, v13, v19);
    v18 = *a2;
    *a2 = ErrorInternal;

    v14 = 0;
    goto LABEL_4;
  }

  if (![responderNonce length])
  {
    v16 = @"Missing responder nonce";
    goto LABEL_7;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{objc_msgSend(responderNonce, "length") + objc_msgSend(initiatorNonce, "length")}];
  [v14 appendData:initiatorNonce];
  [v14 appendData:responderNonce];
LABEL_4:

  return v14;
}

- (NEIKEv2AuthenticationProtocol)selectSecurePasswordMethod:(void *)method
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (method)
  {
    Property = objc_getProperty(method, v3, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  supportedSecurePasswordMethods = [v6 supportedSecurePasswordMethods];

  if ([supportedSecurePasswordMethods count])
  {
    if (v4)
    {
      v9 = objc_getProperty(v4, v8, 40, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [v10 length];
    v12 = v11;
    if (v11)
    {
      if (v11)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = 134217984;
          v19 = v12;
          _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Secure password methods data length %zu is not divisible by sizeof(uint16_t)", &v18, 0xCu);
        }

        v12 = 0;
      }

      else
      {
        v13 = v11 >> 1;
        bytes = [v10 bytes];
        while (1)
        {
          v15 = *bytes++;
          v12 = [[NEIKEv2AuthenticationProtocol alloc] initWithSecurePassword:bswap32(v15) >> 16];
          if ([supportedSecurePasswordMethods containsObject:v12])
          {
            break;
          }

          if (!--v13)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v12;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "Found supported %@ in notify", &v18, 0xCu);
        }
      }
    }

LABEL_16:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_large_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        Property = objc_getProperty(self, v5, 32, 1);
      }

      else
      {
        Property = 0;
      }

      *buf = 138412290;
      v20 = Property;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "Deallocating ikeSA %@", buf, 0xCu);
    }
  }

  if (self)
  {
    v6 = objc_getProperty(self, v3, 472, 1);
    v8 = objc_getProperty(self, v7, 32, 1);
    [(NEIKEv2Transport *)v6 cancelClient:v8 shouldInvalidate:0];

    v10 = objc_getProperty(self, v9, 480, 1);
    v12 = objc_getProperty(self, v11, 32, 1);
  }

  else
  {
    [(NEIKEv2Transport *)0 cancelClient:0 shouldInvalidate:?];
    v10 = 0;
    v12 = 0;
  }

  [(NEIKEv2Transport *)v10 cancelClient:v12 shouldInvalidate:0];

  if (self)
  {
    v14 = objc_getProperty(self, v13, 488, 1);
    v16 = objc_getProperty(self, v15, 32, 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  [(NEIKEv2Transport *)v14 cancelClient:v16 shouldInvalidate:0];

  v18.receiver = self;
  v18.super_class = NEIKEv2IKESA;
  [(NEIKEv2IKESA *)&v18 dealloc];
}

- (id)description
{
  initiatorSPI = [(NEIKEv2IKESA *)self initiatorSPI];
  responderSPI = [(NEIKEv2IKESA *)self responderSPI];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    ikeSAUniqueIndex = self->_ikeSAUniqueIndex;
    ikeSessionUniqueIndex = self->_ikeSessionUniqueIndex;
  }

  else
  {
    ikeSAUniqueIndex = 0;
    ikeSessionUniqueIndex = 0;
  }

  v9 = @"0000000000000000";
  if (initiatorSPI)
  {
    v10 = initiatorSPI;
  }

  else
  {
    v10 = @"0000000000000000";
  }

  if (responderSPI)
  {
    v9 = responderSPI;
  }

  v11 = [v6 initWithFormat:@"IKEv2IKESA[%llu.%llu, %@-%@]", ikeSAUniqueIndex, ikeSessionUniqueIndex, v10, v9];

  return v11;
}

- (_BYTE)initiatorSPI
{
  if (self)
  {
    if (self[9])
    {
      v3 = 32;
    }

    else
    {
      v3 = 40;
    }

    self = objc_getProperty(self, a2, v3, 1);
    v2 = vars8;
  }

  return self;
}

- (_BYTE)responderSPI
{
  if (self)
  {
    if (self[9])
    {
      v3 = 40;
    }

    else
    {
      v3 = 32;
    }

    self = objc_getProperty(self, a2, v3, 1);
    v2 = vars8;
  }

  return self;
}

- (NEIKEv2IKESPI)initIKESACommonWithConfiguration:(void *)configuration sessionConfiguration:(void *)sessionConfiguration queue:(void *)queue transportDelegate:(void *)delegate socketGetBlock:(void *)block packetDelegate:(void *)packetDelegate configurationDelegate:(unint64_t)configurationDelegate ikeSessionUniqueIndex:(char)self0 isInitiator:
{
  v39 = *MEMORY[0x1E69E9840];
  v17 = a2;
  configurationCopy = configuration;
  newValue = sessionConfiguration;
  queueCopy = queue;
  delegateCopy = delegate;
  blockCopy = block;
  packetDelegateCopy = packetDelegate;
  if (!self)
  {
    v25 = 0;
    goto LABEL_8;
  }

  if (v17)
  {
    v36.receiver = self;
    v36.super_class = NEIKEv2IKESA;
    v23 = [(NEIKEv2SPI *)&v36 init];
    if (v23)
    {
      v25 = v23;
      objc_setProperty_atomic(v23, v24, newValue, 544);
      v25[37].super.super.isa = atomic_fetch_add_explicit(&sNEIKEv2IKESAIndex, 1uLL, memory_order_relaxed);
      v25[36]._value = configurationDelegate;
      objc_setProperty_atomic(v25, v26, v17, 80);
      objc_setProperty_atomic(v25, v27, configurationCopy, 88);
      objc_storeWeak(&v25[34]._value, queueCopy);
      objc_setProperty_atomic_copy(v25, v28, delegateCopy, 560);
      objc_storeWeak(&v25[35]._value, blockCopy);
      if (blockCopy)
      {
        BYTE1(v25[1]._value) = 1;
      }

      objc_storeWeak(&v25[36].super.super.isa, packetDelegateCopy);
      outgoingInterfaceName = [v17 outgoingInterfaceName];
      objc_setProperty_atomic(v25, v30, outgoingInterfaceName, 304);

      v25[3].super.super.isa = 3;
      objc_setProperty_atomic(v25, v31, 0, 56);
      BYTE1(v25->_value) = index;
      self = objc_alloc_init(NEIKEv2IKESPI);
      objc_setProperty_atomic(v25, v32, self, 32);
      goto LABEL_7;
    }

    self = ne_log_obj();
    if (os_log_type_enabled(&self->super.super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, &self->super.super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  else
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "[NEIKEv2IKESA initIKESACommonWithConfiguration:sessionConfiguration:queue:transportDelegate:socketGetBlock:packetDelegate:configurationDelegate:ikeSessionUniqueIndex:isInitiator:]";
      _os_log_fault_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_FAULT, "%s called with null configuration", buf, 0xCu);
    }
  }

  v25 = 0;
LABEL_7:

LABEL_8:
  return v25;
}

- (uint64_t)copyAddressFrom:(unsigned __int8 *)from with:(unsigned int)with
{
  v19 = *MEMORY[0x1E69E9840];
  if (!from)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2IKESA copyAddressFrom:with:]";
      v8 = "%s called with null address";
      goto LABEL_15;
    }

LABEL_13:

    return 0;
  }

  v3 = *from;
  if (v3 <= 0xF)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2IKESA copyAddressFrom:with:]";
      v8 = "%s called with null (address->sa_len >= sizeof(struct sockaddr_in))";
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v3 >= 0x81)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 136315138;
    *&buf[4] = "[NEIKEv2IKESA copyAddressFrom:with:]";
    v8 = "%s called with null (address->sa_len <= sizeof(struct sockaddr_storage))";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, v8, buf, 0xCu);
    goto LABEL_13;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *buf = 0u;
  v12 = 0u;
  __memcpy_chk();
  *&buf[2] = __rev16(with);
  v4 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "copyAddressFrom created %@", &v9, 0xCu);
  }

  return v4;
}

- (id)preferredKEMProtocol
{
  if (objc_getProperty(self, a2, 144, 1))
  {
    kemProtocol2 = objc_getProperty(self, v3, 144, 1);
LABEL_3:
    kemProtocol3 = kemProtocol2;
    goto LABEL_8;
  }

  v6 = objc_getProperty(self, v3, 96, 1);
  if (v6)
  {
    v8 = v6;
    Property = objc_getProperty(self, v7, 96, 1);
    kemProtocol = [(NEIKEv2IKESAProposal *)Property kemProtocol];

    if (kemProtocol)
    {
      v12 = objc_getProperty(self, v7, 96, 1);
      kemProtocol2 = [(NEIKEv2IKESAProposal *)v12 kemProtocol];
      goto LABEL_3;
    }
  }

  v14 = [objc_getProperty(self v7];
  firstObject = [v14 firstObject];
  kemProtocol3 = [(NEIKEv2IKESAProposal *)firstObject kemProtocol];

LABEL_8:

  return kemProtocol3;
}

- (NEIKEv2IKESPI)copyForRekeyAsInitiator:(uint64_t)initiator
{
  v67 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((initiator + 568));
  v5 = objc_loadWeakRetained((initiator + 552));
  v6 = [NEIKEv2IKESA alloc];
  v8 = objc_getProperty(initiator, v7, 80, 1);
  v10 = objc_getProperty(initiator, v9, 88, 1);
  v12 = objc_getProperty(initiator, v11, 544, 1);
  v14 = objc_getProperty(initiator, v13, 560, 1);
  v15 = objc_loadWeakRetained((initiator + 576));
  v16 = [(NEIKEv2IKESA *)v6 initIKESACommonWithConfiguration:v8 sessionConfiguration:v10 queue:v12 transportDelegate:v5 socketGetBlock:v14 packetDelegate:WeakRetained configurationDelegate:v15 ikeSessionUniqueIndex:*(initiator + 584) isInitiator:a2];

  if (v16)
  {
    Property = objc_getProperty(initiator, v17, 472, 1);
    objc_setProperty_atomic(v16, v19, Property, 472);
    v21 = objc_getProperty(initiator, v20, 480, 1);
    objc_setProperty_atomic(v16, v22, v21, 480);
    v24 = objc_getProperty(initiator, v23, 488, 1);
    objc_setProperty_atomic(v16, v25, v24, 488);
    v27 = objc_getProperty(v16, v26, 472, 1);
    v29 = objc_getProperty(v16, v28, 32, 1);
    [(NEIKEv2Transport *)v27 addClient:v29 delegate:v5];

    v31 = objc_getProperty(v16, v30, 480, 1);
    v33 = objc_getProperty(v16, v32, 32, 1);
    [(NEIKEv2Transport *)v31 addClient:v33 delegate:v5];

    v35 = objc_getProperty(v16, v34, 488, 1);
    v37 = objc_getProperty(v16, v36, 32, 1);
    [(NEIKEv2Transport *)v35 addClient:v37 delegate:v5];

    v39 = objc_getProperty(initiator, v38, 304, 1);
    objc_setProperty_atomic(v16, v40, v39, 304);
    v42 = objc_getProperty(initiator, v41, 64, 1);
    objc_setProperty_atomic(v16, v43, v42, 64);
    v45 = objc_getProperty(initiator, v44, 72, 1);
    objc_setProperty_atomic(v16, v46, v45, 72);
    BYTE2(v16->_value) = *(initiator + 10) & 1;
    BYTE3(v16->_value) = *(initiator + 11) & 1;
    BYTE4(v16->_value) = *(initiator + 12) & 1;
    BYTE5(v16->_value) = *(initiator + 13) & 1;
    HIBYTE(v16->_value) = *(initiator + 15) & 1;
    BYTE6(v16->_value) = *(initiator + 14) & 1;
    v48 = objc_getProperty(initiator, v47, 496, 1);
    objc_setProperty_atomic(v16, v49, v48, 496);
    BYTE2(v16[1].super.super.isa) = *(initiator + 18) & 1;
    BYTE3(v16[1].super.super.isa) = *(initiator + 19) & 1;
    BYTE4(v16[1].super.super.isa) = *(initiator + 20) & 1;
    v51 = objc_getProperty(initiator, v50, 96, 1);
    objc_setProperty_atomic(v16, v52, v51, 96);
    v54 = objc_getProperty(initiator, v53, 144, 1);
    objc_setProperty_atomic(v16, v55, v54, 144);
    v57 = objc_getProperty(initiator, v56, 504, 1);
    objc_setProperty_atomic(v16, v58, v57, 504);
    v59 = ne_log_large_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v64 = v16;
      v65 = 2112;
      initiatorCopy = initiator;
      _os_log_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_INFO, "Created %@ for rekey from %@", buf, 0x16u);
    }

    v60 = v16;
  }

  else
  {
    v62 = ne_log_obj();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "[[NEIKEv2IKESA alloc] initIKESAWithConfiguration]", buf, 2u);
    }
  }

  return v16;
}

- (void)detachTransportWithShouldInvalidate:(void *)invalidate
{
  v23 = *MEMORY[0x1E69E9840];
  if (invalidate)
  {
    v2 = a2;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      invalidateCopy = invalidate;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating transports for %@", &v21, 0xCu);
    }

    v6 = objc_getProperty(invalidate, v5, 472, 1);
    Property = objc_getProperty(invalidate, v7, 32, 1);
    [(NEIKEv2Transport *)v6 cancelClient:v2 shouldInvalidate:?];

    v10 = objc_getProperty(invalidate, v9, 480, 1);
    v12 = objc_getProperty(invalidate, v11, 32, 1);
    [(NEIKEv2Transport *)v10 cancelClient:v12 shouldInvalidate:v2];

    v14 = objc_getProperty(invalidate, v13, 488, 1);
    v16 = objc_getProperty(invalidate, v15, 32, 1);
    [(NEIKEv2Transport *)v14 cancelClient:v16 shouldInvalidate:v2];

    objc_setProperty_atomic(invalidate, v17, 0, 472);
    objc_setProperty_atomic(invalidate, v18, 0, 480);
    objc_setProperty_atomic(invalidate, v19, 0, 488);
    objc_setProperty_atomic(invalidate, v20, 0, 64);
  }
}

- (void)clearPostAuthenticationData
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 312);
    objc_setProperty_atomic(self, v3, 0, 320);
    objc_storeStrong(self + 41, 0);
    objc_storeStrong(self + 42, 0);
    objc_setProperty_atomic(self, v4, 0, 512);
    objc_setProperty_atomic(self, v5, 0, 192);
    objc_setProperty_atomic(self, v6, 0, 200);
    objc_setProperty_atomic(self, v7, 0, 232);
    objc_setProperty_atomic(self, v8, 0, 248);
    objc_setProperty_atomic(self, v9, 0, 224);
    objc_setProperty_atomic(self, v10, 0, 240);
    objc_setProperty_atomic(self, v11, 0, 256);
    objc_setProperty_atomic(self, v12, 0, 264);
    objc_setProperty_atomic(self, v13, 0, 520);
    objc_setProperty_atomic(self, v14, 0, 528);
    objc_setProperty_atomic(self, v15, 0, 536);
    objc_setProperty_atomic(self, v16, 0, 456);
    objc_setProperty_atomic(self, v17, 0, 464);
    objc_storeStrong(self + 43, 0);
    objc_storeStrong(self + 44, 0);
    objc_storeStrong(self + 46, 0);
    objc_storeStrong(self + 47, 0);
    objc_storeStrong(self + 48, 0);
    objc_storeStrong(self + 49, 0);
    objc_storeStrong(self + 50, 0);
    objc_storeStrong(self + 51, 0);
    objc_storeStrong(self + 52, 0);

    objc_storeStrong(self + 54, 0);
  }
}

- (void)setResponderIdentifierPayload:(uint64_t)payload
{
  if (payload)
  {
    objc_storeStrong((payload + 336), a2);
  }
}

- (void)setAuthProtocolFromPacket:(uint64_t)packet
{
  if (packet)
  {
    objc_storeStrong((packet + 376), a2);
  }
}

- (void)setPrimeAuthenticationDataFromPacket:(uint64_t)packet
{
  if (packet)
  {
    objc_storeStrong((packet + 392), a2);
  }
}

- (void)setPpkIDFromPacket:(uint64_t)packet
{
  if (packet)
  {
    objc_storeStrong((packet + 432), a2);
  }
}

- (void)setState:(void *)state error:
{
  v32 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!self)
  {
    goto LABEL_18;
  }

  v7 = *(self + 48);
  Property = objc_getProperty(self, v5, 56, 1);
  v9 = ne_log_obj();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7 != a2)
  {
    if (stateCopy | Property)
    {
      if (v10)
      {
        SessionStateString = NEIKEv2CreateSessionStateString(*(self + 48));
        v14 = NEIKEv2CreateSessionStateString(a2);
        v22 = 138413314;
        selfCopy4 = self;
        v24 = 2112;
        v25 = SessionStateString;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = objc_getProperty(self, v15, 56, 1);
        v30 = 2112;
        v31 = stateCopy;
        v16 = "%@ state %@ -> %@ error %@ -> %@";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, v16, &v22, v18);
      }
    }

    else if (v10)
    {
      SessionStateString = NEIKEv2CreateSessionStateString(*(self + 48));
      v14 = NEIKEv2CreateSessionStateString(a2);
      v22 = 138412802;
      selfCopy4 = self;
      v24 = 2112;
      v25 = SessionStateString;
      v26 = 2112;
      v27 = v14;
      v16 = "%@ state %@ -> %@";
      v17 = v9;
      v18 = 32;
      goto LABEL_16;
    }

    *(self + 48) = a2;
    objc_setProperty_atomic(self, v21, stateCopy, 56);
    *(self + 8) = 1;
    goto LABEL_18;
  }

  if (!stateCopy || Property)
  {
    if (v10)
    {
      v19 = NEIKEv2CreateSessionStateString(a2);
      v22 = 138413058;
      selfCopy4 = self;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = objc_getProperty(self, v20, 56, 1);
      v28 = 2112;
      v29 = stateCopy;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@ not changing state %@ nor error %@ -> %@", &v22, 0x2Au);
    }
  }

  else
  {
    if (v10)
    {
      v11 = NEIKEv2CreateSessionStateString(a2);
      v22 = 138412802;
      selfCopy4 = self;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = stateCopy;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@ not changing state %@ but new error %@", &v22, 0x20u);
    }

    objc_setProperty_atomic(self, v12, stateCopy, 56);
  }

LABEL_18:
}

- (uint64_t)assignRemoteSPI:(void *)i
{
  _cmd = a2;
  objc_setProperty_atomic(i, v3, _cmd, 40);
  if (objc_getProperty(i, v4, 472, 1))
  {
    v6 = objc_getProperty(i, v5, 472, 1);
    Property = objc_getProperty(i, v7, 32, 1);
    [(NEIKEv2Transport *)v6 setRemoteSPI:Property forClient:?];
  }

  if (objc_getProperty(i, v5, 480, 1))
  {
    v10 = objc_getProperty(i, v9, 480, 1);
    v12 = objc_getProperty(i, v11, 32, 1);
    [(NEIKEv2Transport *)v10 setRemoteSPI:v12 forClient:?];
  }

  v13 = objc_getProperty(i, v9, 488, 1);
  v14 = _cmd;
  if (v13)
  {
    v15 = objc_getProperty(i, _cmd, 488, 1);
    v17 = objc_getProperty(i, v16, 32, 1);
    [(NEIKEv2Transport *)v15 setRemoteSPI:v17 forClient:?];

    v14 = _cmd;
  }

  return MEMORY[0x1EEE66BB8](v13, v14);
}

- (void)switchToNATTraversalPorts
{
  v42 = *MEMORY[0x1E69E9840];
  if ((*(self + 13) & 1) == 0)
  {
    *(self + 12) = 1;
    v3 = [objc_getProperty(self a2];
    if (v3)
    {
      v5 = v3;
      if (*v3 <= 0xFu)
      {
        v13 = ne_log_obj();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_27;
        }

        *buf = 136315138;
        v41 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
        v38 = "%s called with null (remoteAddress->sa_len >= sizeof(struct sockaddr_in))";
      }

      else
      {
        if ([objc_getProperty(self v4])
        {
          v7 = 0;
        }

        else
        {
          v7 = 4500;
        }

        v8 = [objc_getProperty(self v6];
        if (v8)
        {
          v9 = v8;
          if (*v8 > 0xFu)
          {
            v10 = *(v5 + 1);
            v11 = __rev16(v10);
            if (v10 == 62465)
            {
              v12 = 4500;
            }

            else
            {
              v12 = v11;
            }

            v13 = [NEIKEv2IKESA copyAddressFrom:v5 with:v12];
            v14 = *(v9 + 1);
            v15 = __rev16(v14);
            if (v14 == 62465)
            {
              v16 = 4500;
            }

            else
            {
              v16 = v15;
            }

            if (v14 == 62465)
            {
              v17 = v7;
            }

            else
            {
              v17 = v15;
            }

            v18 = [NEIKEv2IKESA copyAddressFrom:v9 with:v16];
            if (!objc_getProperty(self, v19, 480, 1))
            {
              WeakRetained = objc_loadWeakRetained((self + 568));
              v23 = objc_loadWeakRetained((self + 552));
              if ((*(self + 25) & 1) != 0 && !WeakRetained)
              {
                v24 = ne_log_obj();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "Cannot create transport for packet delegate, delegate no longer valid", buf, 2u);
                }

                goto LABEL_26;
              }

              v25 = objc_getProperty(self, v22, 304, 1);
              v27 = objc_getProperty(self, v26, 544, 1);
              Property = objc_getProperty(self, v28, 560, 1);
              v30 = [NEIKEv2Transport createTransport:v13 remote:v18 local:v17 localPort:v25 boundInterface:v27 queue:Property socketGetBlock:WeakRetained packetDelegate:?];

              objc_setProperty_atomic(self, v31, v30, 480);
              v33 = objc_getProperty(self, v32, 480, 1);
              v35 = objc_getProperty(self, v34, 32, 1);
              [(NEIKEv2Transport *)v33 addClient:v35 delegate:v23];

              v37 = objc_getProperty(self, v36, 480, 1);
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __41__NEIKEv2IKESA_switchToNATTraversalPorts__block_invoke;
              v39[3] = &unk_1E7F0B0E8;
              v39[4] = self;
              [(NEIKEv2Transport *)v37 waitForTransport:v39];
            }

            objc_getProperty(self, v20, 480, 1);
LABEL_26:

LABEL_27:
            return;
          }

          v13 = ne_log_obj();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_27;
          }

          *buf = 136315138;
          v41 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
          v38 = "%s called with null (localAddress->sa_len >= sizeof(struct sockaddr_in))";
        }

        else
        {
          v13 = ne_log_obj();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_27;
          }

          *buf = 136315138;
          v41 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
          v38 = "%s called with null localAddress";
        }
      }
    }

    else
    {
      v13 = ne_log_obj();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_27;
      }

      *buf = 136315138;
      v41 = "[NEIKEv2IKESA switchToNATTraversalPorts]";
      v38 = "%s called with null remoteAddress";
    }

    _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, v38, buf, 0xCu);
    goto LABEL_27;
  }
}

uint64_t __41__NEIKEv2IKESA_switchToNATTraversalPorts__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 480, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 24, 1);
    }
  }

  v6 = Property;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v5, v6, 72);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = objc_getProperty(v9, v8, 480, 1);
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 16, 1);
    }
  }

  v11 = v9;
  v12 = *(a1 + 32);
  if (v12)
  {
    v14 = v11;
    objc_setProperty_atomic(v12, v11, v11, 64);
    v11 = v14;
  }

  return MEMORY[0x1EEE66BB8](v12, v11);
}

uint64_t __40__NEIKEv2IKESA_switchToTCPEncapsulation__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 488, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 24, 1);
    }
  }

  v6 = Property;
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v5, v6, 72);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = objc_getProperty(v9, v8, 488, 1);
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 16, 1);
    }
  }

  v11 = v9;
  v12 = *(a1 + 32);
  if (v12)
  {
    v14 = v11;
    objc_setProperty_atomic(v12, v11, v11, 64);
    v11 = v14;
  }

  return MEMORY[0x1EEE66BB8](v12, v11);
}

- (_BYTE)hasTransport
{
  if (result)
  {
    if (result[13])
    {
      v2 = 488;
    }

    else if (result[12])
    {
      v2 = 480;
    }

    else
    {
      v2 = 472;
    }

    return (objc_getProperty(result, a2, v2, 1) != 0);
  }

  return result;
}

- (void)resyncAddress
{
  if (self)
  {
    self = [(NEIKEv2IKESA *)self copyTransport];
    WeakRetained = objc_loadWeakRetained(self + 71);

    selfCopy2 = self;
    if (!WeakRetained)
    {
      if (self)
      {
        v6 = objc_getProperty(self, v4, 16, 1);
        objc_setProperty_atomic(self, v7, v6, 64);

        Property = objc_getProperty(self, v8, 24, 1);
      }

      else
      {
        objc_setProperty_atomic(self, v4, 0, 64);
        Property = 0;
      }

      v10 = Property;
      objc_setProperty_atomic(self, v11, v10, 72);

      selfCopy2 = self;
    }
  }
}

- (id)copyTransport
{
  if (!self)
  {
    return 0;
  }

  if ((*(self + 13) & 1) == 0)
  {
    if (*(self + 12))
    {
      if (!objc_getProperty(self, a2, 480, 1))
      {
        WeakRetained = objc_loadWeakRetained(self + 71);
        v7 = objc_loadWeakRetained(self + 69);
        if ((*(self + 25) & 1) != 0 && !WeakRetained)
        {
          v8 = ne_log_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v51 = 0;
            v9 = &v51;
LABEL_30:
            _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Cannot create transport for packet delegate, delegate no longer valid", v9, 2u);
            goto LABEL_14;
          }

          goto LABEL_14;
        }

        v14 = [objc_getProperty(self v6];
        v16 = objc_getProperty(self, v15, 72, 1);
        v18 = objc_getProperty(self, v17, 64, 1);
        v20 = objc_getProperty(self, v19, 304, 1);
        v22 = objc_getProperty(self, v21, 544, 1);
        Property = objc_getProperty(self, v23, 560, 1);
        if (v14)
        {
          v25 = 0;
        }

        else
        {
          v25 = 4500;
        }

        v26 = [NEIKEv2Transport createTransport:v16 remote:v18 local:v25 localPort:v20 boundInterface:v22 queue:Property socketGetBlock:WeakRetained packetDelegate:?];

        objc_setProperty_atomic(self, v27, v26, 480);
        v29 = objc_getProperty(self, v28, 480, 1);
        v31 = objc_getProperty(self, v30, 32, 1);
        [(NEIKEv2Transport *)v29 addClient:v31 delegate:v7];
      }

      v3 = objc_getProperty(self, v4, 480, 1);
      goto LABEL_26;
    }

    if (!objc_getProperty(self, a2, 472, 1))
    {
      v11 = objc_loadWeakRetained(self + 71);
      v7 = objc_loadWeakRetained(self + 69);
      if ((*(self + 25) & 1) != 0 && !v11)
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v9 = buf;
          goto LABEL_30;
        }

LABEL_14:

        return 0;
      }

      v32 = [objc_getProperty(self v12];
      v34 = objc_getProperty(self, v33, 72, 1);
      v36 = objc_getProperty(self, v35, 64, 1);
      v38 = objc_getProperty(self, v37, 304, 1);
      v40 = objc_getProperty(self, v39, 544, 1);
      v42 = objc_getProperty(self, v41, 560, 1);
      if (v32)
      {
        v43 = 0;
      }

      else
      {
        v43 = 500;
      }

      v44 = [NEIKEv2Transport createTransport:v34 remote:v36 local:v43 localPort:v38 boundInterface:v40 queue:v42 socketGetBlock:v11 packetDelegate:?];

      objc_setProperty_atomic(self, v45, v44, 472);
      v47 = objc_getProperty(self, v46, 472, 1);
      v49 = objc_getProperty(self, v48, 32, 1);
      [(NEIKEv2Transport *)v47 addClient:v49 delegate:v7];
    }

    v3 = objc_getProperty(self, v10, 472, 1);
    goto LABEL_26;
  }

  v3 = objc_getProperty(self, a2, 488, 1);
LABEL_26:

  return v3;
}

- (id)initiatorFirstMessage
{
  if (self[9])
  {
    v2 = 312;
  }

  else
  {
    v2 = 320;
  }

  v3 = objc_getProperty(self, a2, v2, 1);

  return v3;
}

- (id)responderFirstMessage
{
  if (self[9])
  {
    v2 = 320;
  }

  else
  {
    v2 = 312;
  }

  v3 = objc_getProperty(self, a2, v2, 1);

  return v3;
}

- (id)sharedSecret
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_getProperty(self, a2, 88, 1))
  {
    if (!objc_getProperty(self, v3, 528, 1))
    {
      Property = objc_getProperty(self, v4, 88, 1);
      v6 = [NEIKEv2IKESA copySharedSecretFromConfig:?];
      objc_setProperty_atomic(self, v7, v6, 528);
    }

    v8 = objc_getProperty(self, v4, 528, 1);
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[NEIKEv2IKESA sharedSecret]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null self.sessionConfiguration", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (NSObject)copySharedSecretFromConfig:(uint64_t)config
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    sharedSecret2 = ne_log_obj();
    if (os_log_type_enabled(sharedSecret2, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "+[NEIKEv2IKESA copySharedSecretFromConfig:]";
      _os_log_fault_impl(&dword_1BA83C000, sharedSecret2, OS_LOG_TYPE_FAULT, "%s called with null sessionConfiguration", &v13, 0xCu);
    }

    v7 = 0;
LABEL_9:

    goto LABEL_11;
  }

  v4 = v3;
  sharedSecretReference = [v2 sharedSecretReference];

  if (!sharedSecretReference)
  {
LABEL_7:
    sharedSecret = [v2 sharedSecret];

    if (!sharedSecret)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E695DEF0];
    sharedSecret2 = [v2 sharedSecret];
    v7 = [(NSData *)v10 sensitiveDataWithData:sharedSecret2];
    goto LABEL_9;
  }

  sharedSecretReference2 = [v2 sharedSecretReference];
  v7 = [NEIKEv2Crypto copyDataFromPersistentReference:sharedSecretReference2];

  if (!v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve shared secret by reference", &v13, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_11:

  return v7;
}

- (id)ppk
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    if (objc_getProperty(self, a2, 88, 1))
    {
      if (!objc_getProperty(selfCopy, v3, 536, 1))
      {
        Property = objc_getProperty(selfCopy, v4, 88, 1);
        v6 = [NEIKEv2IKESA copyPPKFromConfig:?];
        objc_setProperty_atomic(selfCopy, v7, v6, 536);
      }

      self = objc_getProperty(selfCopy, v4, 536, 1);
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = 136315138;
        v11 = "[NEIKEv2IKESA ppk]";
        _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null self.sessionConfiguration", &v10, 0xCu);
      }

      self = 0;
    }
  }

  return self;
}

+ (NSObject)copyPPKFromConfig:(uint64_t)config
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315138;
      v14 = "+[NEIKEv2IKESA copyPPKFromConfig:]";
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null sessionConfiguration", &v13, 0xCu);
    }

    v7 = 0;
LABEL_9:

    goto LABEL_11;
  }

  v4 = v3;
  ppkReference = [v2 ppkReference];

  if (!ppkReference)
  {
LABEL_7:
    v9 = [v2 ppk];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v10 = MEMORY[0x1E695DEF0];
    v11 = [v2 ppk];
    v7 = [(NSData *)v10 sensitiveDataWithData:v11];
    goto LABEL_9;
  }

  ppkReference2 = [v2 ppkReference];
  v7 = [NEIKEv2Crypto copyDataFromPersistentReference:ppkReference2];

  if (!v7)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to retrieve PPK by reference", &v13, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_11:

  return v7;
}

- (id)localIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v3 = [objc_getProperty(self a2];

    if (v3)
    {
      self = [objc_getProperty(selfCopy v4];
    }

    else
    {
      if (!objc_getProperty(selfCopy, v4, 512, 1))
      {
        v6 = [NEIKEv2AddressIdentifier alloc];
        v8 = [(NEIKEv2AddressIdentifier *)v6 initWithAddress:objc_getProperty(selfCopy, v7, 64, 1)];
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          copyShortDescription = [(NEIKEv2Identifier *)v8 copyShortDescription];
          v13 = 138412546;
          v14 = selfCopy;
          v15 = 2112;
          v16 = copyShortDescription;
          _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@ Using fallback local identifier %@", &v13, 0x16u);
        }

        objc_setProperty_atomic(selfCopy, v11, v8, 512);
      }

      self = objc_getProperty(selfCopy, v5, 512, 1);
    }
  }

  return self;
}

- (id)remoteIdentifier
{
  if (self)
  {
    self = [objc_getProperty(self a2];
    v2 = vars8;
  }

  return self;
}

- (id)initiatorNonce
{
  if (self[9])
  {
    v2 = 128;
  }

  else
  {
    v2 = 136;
  }

  v3 = objc_getProperty(self, a2, v2, 1);

  return v3;
}

- (id)responderNonce
{
  if (self[9])
  {
    v2 = 136;
  }

  else
  {
    v2 = 128;
  }

  v3 = objc_getProperty(self, a2, v2, 1);

  return v3;
}

- (uint64_t)copyDeviceIdentityNotifyPayload
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v3 = [objc_getProperty(self a2];
  v5 = [objc_getProperty(self v4];
  if ([v3 length] != 16)
  {
    if ([v5 length] != 15)
    {
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

    v6 = [v5 dataUsingEncoding:1];
    if ([v6 length] == 15)
    {
      [v6 getBytes:&v16 length:15];
      HIBYTE(v17) = -1;
      v7 = 1;
      goto LABEL_8;
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = "Invalid IMEI string!";
      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

  v6 = [v3 dataUsingEncoding:1];
  if ([v6 length] != 16)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v11 = "Invalid IMEISV string!";
LABEL_17:
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v11, &v13, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  [v6 getBytes:&v16 length:16];
  v7 = 2;
LABEL_8:

  v8 = &v16;
  v19 = vld2_s8(v8);
  v13 = 2304;
  v14 = v7;
  v15 = vsli_n_s8(v19.val[0], v19.val[1], 4uLL);
  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v13 length:11];
LABEL_14:

  return v9;
}

- (uint64_t)maximumPacketSize
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (!result)
    {
      if ([objc_getProperty(v2 v3] == 30)
      {
        return 1280;
      }

      else
      {
        return 576;
      }
    }
  }

  return result;
}

- (_BYTE)headerOverhead
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (result == -1)
    {
      if (v2[12])
      {
        v4 = 12;
      }

      else
      {
        v4 = 8;
      }

      if ([objc_getProperty(v2 v3] == 30)
      {
        v5 = 40;
      }

      else
      {
        v5 = 20;
      }

      return (v5 + v4);
    }
  }

  return result;
}

- (id)authenticationProtocol
{
  if (self)
  {
    selfCopy = self;
    v4 = [objc_getProperty(self a2];

    if (v4)
    {
      self = [objc_getProperty(selfCopy v5];
    }

    else
    {
      Property = objc_getProperty(selfCopy, v5, 96, 1);
      if (Property)
      {
        v7 = Property[18];
      }

      else
      {
        v7 = 0;
      }

      self = v7;
    }

    v2 = vars8;
  }

  return self;
}

- (id)remoteAuthentication
{
  if (self)
  {
    selfCopy = self;
    v4 = [objc_getProperty(self a2];

    if (v4)
    {
      self = [objc_getProperty(selfCopy v5];
    }

    else
    {
      Property = objc_getProperty(selfCopy, v5, 96, 1);
      if (Property)
      {
        v7 = Property[18];
      }

      else
      {
        v7 = 0;
      }

      self = v7;
    }

    v2 = vars8;
  }

  return self;
}

- (uint64_t)usesEAPOnlyAuthentication
{
  remoteAuthentication = [(NEIKEv2IKESA *)self remoteAuthentication];
  if ([remoteAuthentication method])
  {

    return 0;
  }

  v5 = 1;
  Property = objc_getProperty(self, v4, 96, 1);
  hasEAPMethods = [(NEIKEv2IKESAProposal *)Property hasEAPMethods];

  if ((hasEAPMethods & 1) == 0)
  {
    return 0;
  }

  return v5;
}

- (void)setLocalAuthProtocolUsed:(uint64_t)used
{
  if (used)
  {
    objc_storeStrong((used + 440), a2);
  }
}

- (void)setRemoteAuthProtocolUsed:(uint64_t)used
{
  if (used)
  {
    objc_storeStrong((used + 448), a2);
  }
}

@end